addpath([ pwd '/General_Functions_MATLAB'])

dirfiles = { {'2D_Radial_Distribution_CPU',     'Mex_2DRadDist_CPU'}, ...
             {'Atom_Radius_CPU',                'Mex_AtomRadius_CPU'}, ...
             {'Atom_Types_CPU',                 'Mex_AtomTyp_CPU'}, ...
             {'Build_Crystal_CPU',              'Mex_CrystalbyLayers_CPU'}, ...
             {'feg_CPU',                        'Mex_feg_CPU'}, ...
             {'FFT_Information_Limit_2D_CPU',   'Mex_FFT_InformationLimit_2D_CPU'}, ...
             {'Filters_2D_CPU',                 'Mex_Butterworth_Filter_2D_CPU'}, ...
             {'Filters_2D_CPU',                 'Mex_Gaussian_Filter_2D_CPU'}, ...
             {'Filters_2D_CPU',                 'Mex_Hanning_Filter_2D_CPU'}, ...
             {'fxeg_Tabulated_Data_CPU',        'Mex_fxegTabData_CPU'}, ...
             {'fxg_CPU',                        'Mex_fxg_CPU'}, ...
             {'Identify_Planes_CPU',            'Mex_Identify_Planes_CPU'}, ...
             {'Microscope_aberrations_TEM_GPU', 'Mex_PCBFTEM_CPU'}, ...
             {'Multislice_Code_CPU',            'Mex_MULTEM_CPU'}, ...
             {'Multislice_Code_GPU',            'Mex_MULTEM_GPU'}, ...
             {'Potential_CPU',                  'Mex_Potential_CPU'} ...
             {'Probe_GPU',                      'Mex_Probe_GPU'}, ...
             {'Projected_Potential_GPU',        'Mex_ProjPotential_GPU'}, ...
             {'Propagate_GPU',                  'Mex_Propagate_GPU'}, ...
             {'Quadratures_CPU',                'Mex_Quadrature_CPU'}, ...
             {'QuickSort_CPU',                  'Mex_QuickSort_CPU'}, ... 
             {'Random_Generator_CPU',           'Mex_RandomGenerator_CPU'}, ...
             {'rho_CPU',                        'Mex_rho_CPU'}, ...
             {'Slice_Specimen_CPU',             'Mex_SliceSpecimen_CPU'}, ...
             {'Transmission_GPU',               'Mex_Transmission_GPU'} };

for dirfile=dirfiles
  dir  = dirfile{1}{1};
  file = dirfile{1}{2};
  disp(['Compiling ' dir '/' file])
  run([dir '/' file])
end;