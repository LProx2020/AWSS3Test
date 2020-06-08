program S3URLTest
    implicit none
    !This code tests to see if Fortran can hand the AWS S3 URLs
    !S3 URLs are annotated with extra, significant information
    !Declaration of Variables
        character(LEN=10000) :: initialurl  !Max. Line Length
        integer*4 :: truelength

    !Body of Program
        !Prompting and Inputing of URL
        print*, 'Enter a S3 URL to test'
        read(*, '(a)') initialurl
        !Testing of URL
        truelength=len_trim(initialurl)
                if (truelength>9999) then
                    print*, 'Length of URL exceeds 10,000'
                else
                    !Show Trimmed URL
                    write(*,*) 'Given URL=', trim(initialurl)
                    !Test for Using Zarr
                    !nc_open(trim(initialurl))
                    print*, 'nc_open function launched'
                endif

end program S3URLTest