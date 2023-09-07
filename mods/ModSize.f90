
module ModSizeGitm

!\
! Jared's Notes to Steve: 12-15-2006
! For 1-D Runs, set nLons, nLats to 1
! For 3-D Runs, the settings here specify
! how many lon and lat grid cells are in each 
! computational block.
! The UAM.in file, on the other hand specify how
! many computational blocks the super computer will use
! 
! (e.g., suppose we set nLons = 9, nLats = 9 here.
! furthermore, in UAM.in we set nBlockslat = 6
! and nBlockslon = 8.  Then in total we would have
!
! ----------------------------------------------
! 1-D simulation
! ---------------------------------------------
! UAM.in:
! ==  nBlockslon = 1
! ==  nBlockslat = 1
! ==  #PROC  = 1
! ==  #NODES = 1
! ModSize: nAlts = 60 (5 km); 120 (2.5 km); 136 (stretched)
!  integer, parameter :: nLons = 1
!  integer, parameter :: nLats = 1
!  integer, parameter :: nAlts = 120
!  integer, parameter :: nBlocksMax = 1
!  integer, parameter :: nBlocksMax = 4
! ----------------------------------------------
! ----------------------------------------------
! 3-D simulation  (5x5 Full Resolution Production)
! * Can use as default ModSize parameters, and merely modify
! * UAM.in to increase resolution in 3-D simulations
! UAM.in:  5x5
! ==  nBlockslon = 8
! ==  nBlockslat = 4
! ==  #PROC  = 32
! ==  #NODES = 16
! UAM.in:  2.5x5
! ==  nBlockslon = 8
! ==  nBlockslat = 8
! ==  #PROC  = 64
! ==  #NODES = 16
! ----------------------------------------------
! ModSize
! Total Grid Cells Lon => 9*8 = 72
! TotalGridCells Lat => 9*4 = 36
   integer, parameter :: nLons = 9
   integer, parameter :: nLats = 9 
!  integer, parameter :: nAlts = 60
   integer, parameter :: nAlts = 120
!  integer, parameter :: nAlts = 136
!  integer, parameter :: nBlocksMax = 1
   integer, parameter :: nBlocksMax = 4
! ----------------------------------------------

! ----------------------------------------------
! 3-D simulation  (2.5x5 HI Resolution Production)
! UAM.in:
! ==  nBlockslon = 8
! ==  nBlockslat = 8
! ==  #PROC  = 64
! ==  #NODES = 32
! ----------------------------------------------
! ModSize
! Total Grid Cells Lon => 9*8 = 72
! TotalGridCells Lat => 9*8 = 72
!  integer, parameter :: nLons = 9
!  integer, parameter :: nLats = 9 
!  integer, parameter :: nAlts = 60
!  integer, parameter :: nAlts = 120
!  integer, parameter :: nAlts = 136
!  integer, parameter :: nBlocksMax = 1
! ----------------------------------------------

! ----------------------------------------------
! 3-D simulation  (7.5x10 Test Resolution Production)
! UAM.in:
! ==  nBlockslon = 6
! ==  nBlockslat = 4
! ==  #PROC  = 24
! ==  #NODES = 12
! ----------------------------------------------
! ModSize
! Total Grid Cells Lon => 6*6 = 36
! TotalGridCells Lat => 6*4 = 24
!   integer, parameter :: nLons = 6
!   integer, parameter :: nLats = 6 
!   integer, parameter :: nAlts = 60
!   integer, parameter :: nAlts = 120
!   integer, parameter :: nAlts = 136
!   integer, parameter :: nBlocksMax = 1
! ----------------------------------------------


! ----------------------------------------------
! 3-D simulation  (10x10 Half-Resolution Production)
! UAM.in:
! ==  nBlockslon = 4
! ==  nBlockslat = 2
! ==  #PROC  = 8
! ==  #NODES = 4
! ----------------------------------------------
! ModSize
! Total Grid Cells Lon => 9*4 = 36
! TotalGridCells Lat => 9*2 = 18
!   integer, parameter :: nLons = 6
!   integer, parameter :: nLats = 6 
!   integer, parameter :: nAlts = 60
!   integer, parameter :: nAlts = 120
!   integer, parameter :: nAlts = 136
!   integer, parameter :: nBlocksMax = 1
! ----------------------------------------------


! ----------------------------------------------
! 3-D simulation  (20x20 Testing/Debug)
! UAM.in:
! ==  nBlockslon = 2
! ==  nBlockslat = 1
! ==  #PROC  = 2
! ==  #NODES = 1
! ----------------------------------------------
! ModSize
! Total Grid Cells Lon => 9*2 = 18
! TotalGridCells Lat => 9*1 = 9
! integer, parameter :: nLons = 6
! integer, parameter :: nLats = 6 
! integer, parameter :: nAlts = 60
! integer, parameter :: nAlts = 120
! integer, parameter :: nAlts = 136
! integer, parameter :: nBlocksMax = 1
! ----------------------------------------------

  integer :: nBlocks

end module ModSizeGitm
