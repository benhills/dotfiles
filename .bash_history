git commit
git push origin master
ks
ls
vim AnalyticSolution.py 
vim AnalyticSolution.py 
git add Analytic
git add AnalyticSolution.py 
ls
vim Enthalpy.py
vim VariableSpaceGrid.py 
git add VariableSpaceGrid.py 
vim LevelSet.py 
git add LevelSet.py 
vim Enthalpy.p
vim Enthalpy.py
git add Enthalpy.py
git commit
git push origin master
ls
cd ..
ls
cd Regularization/
ls
cd TikhonovPractice/
ls
ls
cd ..
ls
ipython
ls
cd Writeup/
ls
open MIT_Project2_Regularization.pdf 
ls
cd ../../../
ls
cd ../Physics/
ls
cd ContinuumMechanics/
ls
cd FDTD/
ls
ls
ls
ls
cd ../../../Math/
ls
cd Strang_NumMethods/
ls
cd Stefan/
ls
cd Paper/
ls
vim Stefan_Paper.tex 
ls
cd ..
ls
cd Paper/
ls
pdflatex Stefan_Paper.tex
cd ..
ls
git status
git add Paper/
ls
git status
git commit
git push origin master
git status
ls
cd ../../../Physics/
ls
cd ContinuumMechanics/
ls
cd FDTD/
ls
git log
git checkout d5c968a16f9f12010051f9709da10a0843520b96
ls
git add Paper/
git status
git commit
git checkout d5c968a16f9f12010051f9709da10a0843520b96
ls
vim 2d_model.py 
pyton 2d_model.py 
python 2d_model.py 
vim 2d_model.py 
tmux
exit
ls
exit
exit
ls
exit
nco
brew install homebrew/science/nco
brew cask install java
ls
brew cask install java
brew install homebrew/science/nco
nco
ncks
ls
cd Documents/Research/UW/Antarctica/DownloadedData/
ls
ncdump -v
ncdump -h
ncdump -v Velocity_Rignot\(2011\).nc 
ncdump -h Velocity_Rignot\(2011\).nc 
ncea -d lat,-85,-83 -d lon,200,220 Velocity_Rignot\(2011\).nc Whillans_Vel.nc
ls
ncks -d lat,-85,-83 -d lon,200,220 Velocity_Rignot\(2011\).nc Whillans_Vel.nc
ncks -d lat,-85.,-83. -d lon,200.,220. Velocity_Rignot\(2011\).nc Whillans_Vel.nc
ncks -H -d lat,-85.,-83. -d lon,200.,220. Velocity_Rignot\(2011\).nc Whillans_Vel.nc
ls
ncks -v VX Velocity_Rignot\(2011\).nc test.nc
ls
ncdump test.nc 
ncdump -h test.nc 
rm test.nc 
ls
ncks -v lon -d lat,-85.,-83. -d lon,200.,220. Velocity_Rignot\(2011\).nc -O lon_out.nc
ncdump -h Velocity_Rignot\(2011\).nc 
ncks -v lon -d lat,-85.,-83. -d lon,200.,220. Velocity_Rignot\(2011\).nc -O lon_out.nc
ncap2
ncl
ncdump -h Velocity_Rignot\(2011\).nc 
ls
rm lon.txt lat.txt vx.txt vy.txt 
ls
ncdump -v VX Velocity_Rignot\(2011\).nc 
ncdump -h -v VX Velocity_Rignot\(2011\).nc 
ncks -v test -d x,100,200 -d lon,100.,200. Velocity_Rignot\(2011\).nc -O test.nc
ncks -d x,100,200 -d lon,100.,200. Velocity_Rignot\(2011\).nc -O test.nc
ncks -d x,100,200 -d lon,100,200 Velocity_Rignot\(2011\).nc -O test.nc
ncks -d x,100,200 -d y,100,200 Velocity_Rignot\(2011\).nc -O test.nc
ls
ncdump -h test
ncdump -h test.nc 
ncks -d lon,1 test.nc 
ncks -v lon,1 test.nc 
ncks -v lon test.nc 
ls
rm test.nc 
ls
du Velocity_Rignot\(2011\).nc 
du -h Velocity_Rignot\(2011\).nc 
ncks -d x,100,200 -d y,100,200 Velocity_Rignot\(2011\).nc -O test.nc
ls
ncap2 lon.min() test.nc 
ncra -y min test.nc 
ncra -y min -v lon test.nc 
ncap2 -s "maxLon=lon.max()" text.nc maxtest.nc
ncap2 -s "maxLon=lon.max()" test.nc maxtest.nc
ls
ncdump maxtest.nc 
ncdump -h test.nc 
ncdump -h Velocity_Rignot\(2011\).nc 
ncks -d x,-200000,-100000 -d y,-700000,-300000 Velocity_Rignot\(2011\).nc -O test.nc
ls
ncdump -v x test.nc 
ncdump -v x Velocity_Rignot\(2011\).nc 
ncks -d x,-200000,-100000 -d y,-700000,-300000 Velocity_Rignot\(2011\).nc test.nc
ls
rm test.nc 
rm maxtest.nc 
ls
ncap2 -s 'mask_var= (lat >= lat_min && lat <= lat_max) && \
 (lon >= 200. && lon <= 220.);' Ve out.nc
ncap2 -s 'mask_var= (lat >= 85. && lat <= -83.) && (lon >= 200. && lon <= 220.);' Velocity_Rignot\(2011\).nc out.nc
ls
ssh -p 27777 bhills@icehouse.ess.washington.edu
ssh -Y -p 27777 bhills@icehouse.ess.washington.edu
ssh -Y -p 27777 bhills@icehouse.ess.washington.edu
ls
ssh -Y -p 27777 bhills@icehouse.ess.washington.edu
exit
ls
scp -p 27777 Velocity_Rignot\(2011\).nc bhills@icehouse.ess.washington.edu
scp -p 27777 Velocity_Rignot\(2011\).nc bhills@icehouse.ess.washington.edu:/home/bhills/
scp -P 27777 Velocity_Rignot\(2011\).nc bhills@icehouse.ess.washington.edu:/home/bhills/
ls
cd ../Whillans/
ls
cd ../../NEGIS/
ls
mv Figures/ OldFigures
scp -P 27777 bhills@icehouse.ess.washington.edu:/home/bhills/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills2017/Figures/ ./
scp -P 27777 bhills@icehouse.ess.washington.edu:/home/bhills/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills_2017/Figures/ ./
scp -P 27777 bhills@icehouse.ess.washington.edu:/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills_2017/Figures/ ./
scp -r -P 27777 bhills@icehouse.ess.washington.edu:/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills_2017/Figures/ ./
ls
cd Figures/
ls
scp -r -P 27777 bhills@icehouse.ess.washington.edu:/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills_2017/xlinew_ext_Power.png ./
scp -r -P 27777 bhills@icehouse.ess.washington.edu:/data/rd00/Projects/NEGIS/storadar/migtk/Picks_Hills_2017/xlinew_ext_Bed.png ./
exit
ls
