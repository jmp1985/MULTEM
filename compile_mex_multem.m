addpath([ pwd '/matlab_functions'])

files = {'mex_lambda',...
        'mex_sigma',...
        'mex_gamma',...
        'mex_fxeg_tabulated_data',...
        'mex_feg',...
        'mex_fxg',...
        'mex_Pr',...
        'mex_Vz',...
        'mex_Vr',...
        'mex_Vp',...
        'mex_gmax',...
        'mex_min_spl',...
        'mex_mrad_2_rAngs',...
        'mex_mrad_2_sigma',...
        'mex_fwhm_2_sigma',...
        'mex_hwhm_2_sigma',...        
        'mex_iehwgd_2_sigma',...        
        'mex_scherzer_defocus',...
        'mex_scherzer_aperture',...
        'mex_crystal_by_lays',...
        'mex_rdf_3d',...
        'mex_amorp_spec',...
        'mex_add_amorp_lay',...
        'mex_spec_rot',...
        'mex_spec_planes',...
        'mex_spec_slicing',...
        'mex_incident_wave',...
        'mex_propagate',...
        'mex_microscope_aberrations',...
        'mex_projected_potential',...
        'mex_transmission_function',...
        'mex_wave_function',...
        'mex_MULTEM'};
    
for file=files
  disp(['Compiling ' file{1}])
  run(['mex_files_multem/',file{1}])
end
