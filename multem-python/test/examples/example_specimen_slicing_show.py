import time
import multem
import multem.crystalline_materials


def run():

    system_conf = multem.System_Configuration()
    system_conf.precision = "float"
    system_conf.device = "device"
    system_conf.cpu_nthread = 1
    system_conf.gpu_device = 0

    input_multem = multem.Input_Multislice(system_conf)

    input_multem.pn_model = "Still_Atom"
    input_multem.interaction_model = "Multislice"
    input_multem.potential_slicing = "Planes"
    input_multem.pn_dim = (1, 1, 1)
    input_multem.pn_seed = 300183
    input_multem.pn_nconf = 1

    input_multem.spec_rot_theta = 0
    input_multem.spec_rot_u0 = (1, 0, 0)
    input_multem.spec_rot_center_type = "geometric_center"
    input_multem.spec_rot_center_p = (0, 0, 0)

    na = 4
    nb = 4
    nc = 10
    ncu = 4
    rmsd_3d = 0.08

    [
        input_multem.spec_atoms,
        input_multem.spec_lx,
        input_multem.spec_ly,
        input_multem.spec_lz,
        a,
        b,
        c,
        input_multem.spec_dz,
    ] = multem.crystalline_materials.GaAs001_xtl(na, nb, nc, ncu, rmsd_3d)

    input_multem.spec_dz = 5

    st = time.perf_counter()
    input_multem.pn_model = "Still_Atom"
    [atoms0, Slice0] = multem.spec_slicing(input_multem)
    print("Time: %.4f seconds" % (time.perf_counter() - st))

    st = time.perf_counter()
    input_multem.pn_model = "Frozen_Phonon"
    [atoms, Slice] = multem.spec_slicing(input_multem)
    print("Time: %.4f seconds" % (time.perf_counter() - st))


if __name__ == "__main__":
    run()
