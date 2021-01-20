import numpy
import time
import multem
import multem.crystalline_materials

from math import log


def run():

    Z = 79
    occ = 1
    region = 0
    charge = 0

    rmin = 1e-02
    rmax = 5.0
    nr = 512
    dlnr = log(rmax / rmin) / (nr - 1)
    r = rmin * numpy.exp(numpy.arange(0, (nr - 1), 1) * dlnr)

    st = time.perf_counter()
    [f1, df1] = multem.vr(1, Z, charge, r)
    [f2, df2] = multem.vr(2, Z, charge, r)
    [f3, df3] = multem.vr(3, Z, charge, r)
    [f4, df4] = multem.vr(4, Z, charge, r)
    [f5, df5] = multem.vr(5, Z, charge, r)
    [f6, df6] = multem.vr(6, Z, charge, r)
    print("Time: %.4f seconds" % (time.perf_counter() - st))


if __name__ == "__main__":
    run()
