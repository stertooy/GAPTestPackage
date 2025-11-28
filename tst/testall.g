LoadPackage( "GAPTestPackage" );

pass := TestDirectory(
    DirectoriesPackageLibrary( "GAPTestPackage", "tst" ),
    rec(
        exitGAP := false,
        showProgress := true,
        testOptions := rec( compareFunction := "uptowhitespace" )
    )
);

FORCE_QUIT_GAP( pass );
