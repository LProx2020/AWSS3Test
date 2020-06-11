program S3URLTest
    implicit none
    !This code tests to see if Fortran/NCZarr can handle the AWS S3 URLs
    !S3 URLs are annotated with extra, significant information forming long URls
    !Declaration of Variables
        character(LEN=1030) :: initialurl  !Max. Line Length for NCZarr is 1024 Per Dennis's Guide
        integer*2 :: truelength

    !Body of Program
        !Prompting and Inputing of URL
        print*, 'Enter a S3 URL to test'
        read(*, '(a)') initialurl
        !Testing of URL
        truelength=len_trim(initialurl)
                if (truelength>1024) then
                    print*, 'Length of URL exceeds 1024 Characters'
                else
                    !Show Trimmed URL
                    write(*,*) 'Given URL=', trim(initialurl)
                    !Test for Using Zarr
                    !nc_open(trim(initialurl))
                    print*, 'nc_open function launched'
                endif

end program S3URLTest