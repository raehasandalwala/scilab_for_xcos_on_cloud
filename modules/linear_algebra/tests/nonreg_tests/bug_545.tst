// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- JVM NOT MANDATORY -->

// <-- Non-regression test for bug 545 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=545
//
// <-- Short Description -->
//    Bug Report Id: 031202003109134720
//    This is obviously a conflict between a local variable ndims and the new function ndims().
//    I expect the same problem also in:
//
//    macros/percent/%b_i_hm.sci
//    macros/percent/%hm_i_hm.sc
//    macros/percent/%p_i_hm.sci
//
//    Wasn't this an already solved issue??
//    On Scilab CVS with " %i_i_hm   " function
//    The Error Messages are:
//     Warning :redefining function: ndims
//             inside function: %i_i_hm
//
//    Commands:
//    a=int8(hypermat([3 2 2]));b=hypermat([1 2 2]);
//    a(1,:,:)=b
//    Enrico SEGRE on Linux version RH9 distribution  with   as window manager
//    Israel
//    November 9, 2003 at 13:47:20

a        = int8(hypermat([3 2 2]));
b        = hypermat([1 2 2]);
a(1,:,:) = b;

// Just check if there is no "Warning :redefining function: ndims" displayed in .dia.ref
