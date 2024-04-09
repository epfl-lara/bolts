; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86850 () Bool)

(assert start!86850)

(declare-fun b!1006654 () Bool)

(declare-fun res!675907 () Bool)

(declare-fun e!566608 () Bool)

(assert (=> b!1006654 (=> (not res!675907) (not e!566608))))

(declare-datatypes ((array!63501 0))(
  ( (array!63502 (arr!30569 (Array (_ BitVec 32) (_ BitVec 64))) (size!31072 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63501)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006654 (= res!675907 (and (= (size!31072 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31072 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31072 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006655 () Bool)

(declare-fun e!566612 () Bool)

(assert (=> b!1006655 (= e!566608 e!566612)))

(declare-fun res!675908 () Bool)

(assert (=> b!1006655 (=> (not res!675908) (not e!566612))))

(declare-datatypes ((SeekEntryResult!9501 0))(
  ( (MissingZero!9501 (index!40374 (_ BitVec 32))) (Found!9501 (index!40375 (_ BitVec 32))) (Intermediate!9501 (undefined!10313 Bool) (index!40376 (_ BitVec 32)) (x!87798 (_ BitVec 32))) (Undefined!9501) (MissingVacant!9501 (index!40377 (_ BitVec 32))) )
))
(declare-fun lt!444866 () SeekEntryResult!9501)

(assert (=> b!1006655 (= res!675908 (or (= lt!444866 (MissingVacant!9501 i!1194)) (= lt!444866 (MissingZero!9501 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63501 (_ BitVec 32)) SeekEntryResult!9501)

(assert (=> b!1006655 (= lt!444866 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006656 () Bool)

(declare-fun res!675910 () Bool)

(assert (=> b!1006656 (=> (not res!675910) (not e!566608))))

(declare-fun arrayContainsKey!0 (array!63501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006656 (= res!675910 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006657 () Bool)

(declare-fun res!675902 () Bool)

(assert (=> b!1006657 (=> (not res!675902) (not e!566608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006657 (= res!675902 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006658 () Bool)

(declare-fun res!675909 () Bool)

(assert (=> b!1006658 (=> (not res!675909) (not e!566612))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006658 (= res!675909 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31072 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31072 a!3219))))))

(declare-fun b!1006659 () Bool)

(declare-fun e!566610 () Bool)

(assert (=> b!1006659 (= e!566612 e!566610)))

(declare-fun res!675903 () Bool)

(assert (=> b!1006659 (=> (not res!675903) (not e!566610))))

(declare-fun lt!444865 () SeekEntryResult!9501)

(declare-fun lt!444864 () SeekEntryResult!9501)

(assert (=> b!1006659 (= res!675903 (= lt!444865 lt!444864))))

(assert (=> b!1006659 (= lt!444864 (Intermediate!9501 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63501 (_ BitVec 32)) SeekEntryResult!9501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006659 (= lt!444865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) (select (arr!30569 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!675905 () Bool)

(assert (=> start!86850 (=> (not res!675905) (not e!566608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86850 (= res!675905 (validMask!0 mask!3464))))

(assert (=> start!86850 e!566608))

(declare-fun array_inv!23559 (array!63501) Bool)

(assert (=> start!86850 (array_inv!23559 a!3219)))

(assert (=> start!86850 true))

(declare-fun b!1006660 () Bool)

(declare-fun res!675901 () Bool)

(assert (=> b!1006660 (=> (not res!675901) (not e!566608))))

(assert (=> b!1006660 (= res!675901 (validKeyInArray!0 (select (arr!30569 a!3219) j!170)))))

(declare-fun b!1006661 () Bool)

(declare-fun e!566609 () Bool)

(assert (=> b!1006661 (= e!566610 e!566609)))

(declare-fun res!675900 () Bool)

(assert (=> b!1006661 (=> (not res!675900) (not e!566609))))

(declare-fun lt!444862 () SeekEntryResult!9501)

(assert (=> b!1006661 (= res!675900 (= lt!444862 lt!444864))))

(assert (=> b!1006661 (= lt!444862 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30569 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006662 () Bool)

(declare-fun e!566607 () Bool)

(assert (=> b!1006662 (= e!566609 e!566607)))

(declare-fun res!675898 () Bool)

(assert (=> b!1006662 (=> (not res!675898) (not e!566607))))

(declare-fun lt!444863 () array!63501)

(declare-fun lt!444867 () (_ BitVec 64))

(assert (=> b!1006662 (= res!675898 (not (= lt!444865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444867 mask!3464) lt!444867 lt!444863 mask!3464))))))

(assert (=> b!1006662 (= lt!444867 (select (store (arr!30569 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1006662 (= lt!444863 (array!63502 (store (arr!30569 a!3219) i!1194 k0!2224) (size!31072 a!3219)))))

(declare-fun b!1006663 () Bool)

(assert (=> b!1006663 (= e!566607 (and (= index!1507 resIndex!38) (= x!1245 resX!38) (not (= resIndex!38 i!1194))))))

(declare-fun b!1006664 () Bool)

(declare-fun res!675904 () Bool)

(assert (=> b!1006664 (=> (not res!675904) (not e!566612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63501 (_ BitVec 32)) Bool)

(assert (=> b!1006664 (= res!675904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006665 () Bool)

(declare-fun res!675906 () Bool)

(assert (=> b!1006665 (=> (not res!675906) (not e!566607))))

(assert (=> b!1006665 (= res!675906 (not (= lt!444862 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444867 lt!444863 mask!3464))))))

(declare-fun b!1006666 () Bool)

(declare-fun res!675899 () Bool)

(assert (=> b!1006666 (=> (not res!675899) (not e!566612))))

(declare-datatypes ((List!21371 0))(
  ( (Nil!21368) (Cons!21367 (h!22550 (_ BitVec 64)) (t!30380 List!21371)) )
))
(declare-fun arrayNoDuplicates!0 (array!63501 (_ BitVec 32) List!21371) Bool)

(assert (=> b!1006666 (= res!675899 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21368))))

(assert (= (and start!86850 res!675905) b!1006654))

(assert (= (and b!1006654 res!675907) b!1006660))

(assert (= (and b!1006660 res!675901) b!1006657))

(assert (= (and b!1006657 res!675902) b!1006656))

(assert (= (and b!1006656 res!675910) b!1006655))

(assert (= (and b!1006655 res!675908) b!1006664))

(assert (= (and b!1006664 res!675904) b!1006666))

(assert (= (and b!1006666 res!675899) b!1006658))

(assert (= (and b!1006658 res!675909) b!1006659))

(assert (= (and b!1006659 res!675903) b!1006661))

(assert (= (and b!1006661 res!675900) b!1006662))

(assert (= (and b!1006662 res!675898) b!1006665))

(assert (= (and b!1006665 res!675906) b!1006663))

(declare-fun m!931837 () Bool)

(assert (=> b!1006665 m!931837))

(declare-fun m!931839 () Bool)

(assert (=> b!1006656 m!931839))

(declare-fun m!931841 () Bool)

(assert (=> b!1006666 m!931841))

(declare-fun m!931843 () Bool)

(assert (=> b!1006655 m!931843))

(declare-fun m!931845 () Bool)

(assert (=> b!1006659 m!931845))

(assert (=> b!1006659 m!931845))

(declare-fun m!931847 () Bool)

(assert (=> b!1006659 m!931847))

(assert (=> b!1006659 m!931847))

(assert (=> b!1006659 m!931845))

(declare-fun m!931849 () Bool)

(assert (=> b!1006659 m!931849))

(declare-fun m!931851 () Bool)

(assert (=> b!1006657 m!931851))

(declare-fun m!931853 () Bool)

(assert (=> start!86850 m!931853))

(declare-fun m!931855 () Bool)

(assert (=> start!86850 m!931855))

(assert (=> b!1006661 m!931845))

(assert (=> b!1006661 m!931845))

(declare-fun m!931857 () Bool)

(assert (=> b!1006661 m!931857))

(declare-fun m!931859 () Bool)

(assert (=> b!1006662 m!931859))

(assert (=> b!1006662 m!931859))

(declare-fun m!931861 () Bool)

(assert (=> b!1006662 m!931861))

(declare-fun m!931863 () Bool)

(assert (=> b!1006662 m!931863))

(declare-fun m!931865 () Bool)

(assert (=> b!1006662 m!931865))

(assert (=> b!1006660 m!931845))

(assert (=> b!1006660 m!931845))

(declare-fun m!931867 () Bool)

(assert (=> b!1006660 m!931867))

(declare-fun m!931869 () Bool)

(assert (=> b!1006664 m!931869))

(check-sat (not b!1006664) (not b!1006666) (not b!1006661) (not b!1006655) (not b!1006662) (not b!1006659) (not start!86850) (not b!1006660) (not b!1006665) (not b!1006657) (not b!1006656))
(check-sat)
(get-model)

(declare-fun b!1006724 () Bool)

(declare-fun e!566641 () SeekEntryResult!9501)

(declare-fun e!566642 () SeekEntryResult!9501)

(assert (=> b!1006724 (= e!566641 e!566642)))

(declare-fun c!101536 () Bool)

(declare-fun lt!444891 () (_ BitVec 64))

(assert (=> b!1006724 (= c!101536 (or (= lt!444891 lt!444867) (= (bvadd lt!444891 lt!444891) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006725 () Bool)

(declare-fun lt!444890 () SeekEntryResult!9501)

(assert (=> b!1006725 (and (bvsge (index!40376 lt!444890) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444890) (size!31072 lt!444863)))))

(declare-fun res!675957 () Bool)

(assert (=> b!1006725 (= res!675957 (= (select (arr!30569 lt!444863) (index!40376 lt!444890)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566645 () Bool)

(assert (=> b!1006725 (=> res!675957 e!566645)))

(declare-fun b!1006726 () Bool)

(assert (=> b!1006726 (= e!566642 (Intermediate!9501 false (toIndex!0 lt!444867 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006728 () Bool)

(assert (=> b!1006728 (= e!566641 (Intermediate!9501 true (toIndex!0 lt!444867 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006729 () Bool)

(declare-fun e!566643 () Bool)

(declare-fun e!566644 () Bool)

(assert (=> b!1006729 (= e!566643 e!566644)))

(declare-fun res!675956 () Bool)

(get-info :version)

(assert (=> b!1006729 (= res!675956 (and ((_ is Intermediate!9501) lt!444890) (not (undefined!10313 lt!444890)) (bvslt (x!87798 lt!444890) #b01111111111111111111111111111110) (bvsge (x!87798 lt!444890) #b00000000000000000000000000000000) (bvsge (x!87798 lt!444890) #b00000000000000000000000000000000)))))

(assert (=> b!1006729 (=> (not res!675956) (not e!566644))))

(declare-fun b!1006730 () Bool)

(assert (=> b!1006730 (and (bvsge (index!40376 lt!444890) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444890) (size!31072 lt!444863)))))

(declare-fun res!675958 () Bool)

(assert (=> b!1006730 (= res!675958 (= (select (arr!30569 lt!444863) (index!40376 lt!444890)) lt!444867))))

(assert (=> b!1006730 (=> res!675958 e!566645)))

(assert (=> b!1006730 (= e!566644 e!566645)))

(declare-fun b!1006731 () Bool)

(assert (=> b!1006731 (= e!566643 (bvsge (x!87798 lt!444890) #b01111111111111111111111111111110))))

(declare-fun b!1006732 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006732 (= e!566642 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444867 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444867 lt!444863 mask!3464))))

(declare-fun b!1006727 () Bool)

(assert (=> b!1006727 (and (bvsge (index!40376 lt!444890) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444890) (size!31072 lt!444863)))))

(assert (=> b!1006727 (= e!566645 (= (select (arr!30569 lt!444863) (index!40376 lt!444890)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119549 () Bool)

(assert (=> d!119549 e!566643))

(declare-fun c!101537 () Bool)

(assert (=> d!119549 (= c!101537 (and ((_ is Intermediate!9501) lt!444890) (undefined!10313 lt!444890)))))

(assert (=> d!119549 (= lt!444890 e!566641)))

(declare-fun c!101538 () Bool)

(assert (=> d!119549 (= c!101538 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119549 (= lt!444891 (select (arr!30569 lt!444863) (toIndex!0 lt!444867 mask!3464)))))

(assert (=> d!119549 (validMask!0 mask!3464)))

(assert (=> d!119549 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444867 mask!3464) lt!444867 lt!444863 mask!3464) lt!444890)))

(assert (= (and d!119549 c!101538) b!1006728))

(assert (= (and d!119549 (not c!101538)) b!1006724))

(assert (= (and b!1006724 c!101536) b!1006726))

(assert (= (and b!1006724 (not c!101536)) b!1006732))

(assert (= (and d!119549 c!101537) b!1006731))

(assert (= (and d!119549 (not c!101537)) b!1006729))

(assert (= (and b!1006729 res!675956) b!1006730))

(assert (= (and b!1006730 (not res!675958)) b!1006725))

(assert (= (and b!1006725 (not res!675957)) b!1006727))

(declare-fun m!931905 () Bool)

(assert (=> b!1006730 m!931905))

(assert (=> b!1006732 m!931859))

(declare-fun m!931907 () Bool)

(assert (=> b!1006732 m!931907))

(assert (=> b!1006732 m!931907))

(declare-fun m!931909 () Bool)

(assert (=> b!1006732 m!931909))

(assert (=> b!1006725 m!931905))

(assert (=> d!119549 m!931859))

(declare-fun m!931911 () Bool)

(assert (=> d!119549 m!931911))

(assert (=> d!119549 m!931853))

(assert (=> b!1006727 m!931905))

(assert (=> b!1006662 d!119549))

(declare-fun d!119551 () Bool)

(declare-fun lt!444897 () (_ BitVec 32))

(declare-fun lt!444896 () (_ BitVec 32))

(assert (=> d!119551 (= lt!444897 (bvmul (bvxor lt!444896 (bvlshr lt!444896 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119551 (= lt!444896 ((_ extract 31 0) (bvand (bvxor lt!444867 (bvlshr lt!444867 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119551 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!675959 (let ((h!22552 ((_ extract 31 0) (bvand (bvxor lt!444867 (bvlshr lt!444867 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87801 (bvmul (bvxor h!22552 (bvlshr h!22552 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87801 (bvlshr x!87801 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!675959 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!675959 #b00000000000000000000000000000000))))))

(assert (=> d!119551 (= (toIndex!0 lt!444867 mask!3464) (bvand (bvxor lt!444897 (bvlshr lt!444897 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006662 d!119551))

(declare-fun b!1006733 () Bool)

(declare-fun e!566646 () SeekEntryResult!9501)

(declare-fun e!566647 () SeekEntryResult!9501)

(assert (=> b!1006733 (= e!566646 e!566647)))

(declare-fun lt!444899 () (_ BitVec 64))

(declare-fun c!101539 () Bool)

(assert (=> b!1006733 (= c!101539 (or (= lt!444899 (select (arr!30569 a!3219) j!170)) (= (bvadd lt!444899 lt!444899) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006734 () Bool)

(declare-fun lt!444898 () SeekEntryResult!9501)

(assert (=> b!1006734 (and (bvsge (index!40376 lt!444898) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444898) (size!31072 a!3219)))))

(declare-fun res!675961 () Bool)

(assert (=> b!1006734 (= res!675961 (= (select (arr!30569 a!3219) (index!40376 lt!444898)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566650 () Bool)

(assert (=> b!1006734 (=> res!675961 e!566650)))

(declare-fun b!1006735 () Bool)

(assert (=> b!1006735 (= e!566647 (Intermediate!9501 false index!1507 x!1245))))

(declare-fun b!1006737 () Bool)

(assert (=> b!1006737 (= e!566646 (Intermediate!9501 true index!1507 x!1245))))

(declare-fun b!1006738 () Bool)

(declare-fun e!566648 () Bool)

(declare-fun e!566649 () Bool)

(assert (=> b!1006738 (= e!566648 e!566649)))

(declare-fun res!675960 () Bool)

(assert (=> b!1006738 (= res!675960 (and ((_ is Intermediate!9501) lt!444898) (not (undefined!10313 lt!444898)) (bvslt (x!87798 lt!444898) #b01111111111111111111111111111110) (bvsge (x!87798 lt!444898) #b00000000000000000000000000000000) (bvsge (x!87798 lt!444898) x!1245)))))

(assert (=> b!1006738 (=> (not res!675960) (not e!566649))))

(declare-fun b!1006739 () Bool)

(assert (=> b!1006739 (and (bvsge (index!40376 lt!444898) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444898) (size!31072 a!3219)))))

(declare-fun res!675962 () Bool)

(assert (=> b!1006739 (= res!675962 (= (select (arr!30569 a!3219) (index!40376 lt!444898)) (select (arr!30569 a!3219) j!170)))))

(assert (=> b!1006739 (=> res!675962 e!566650)))

(assert (=> b!1006739 (= e!566649 e!566650)))

(declare-fun b!1006740 () Bool)

(assert (=> b!1006740 (= e!566648 (bvsge (x!87798 lt!444898) #b01111111111111111111111111111110))))

(declare-fun b!1006741 () Bool)

(assert (=> b!1006741 (= e!566647 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30569 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006736 () Bool)

(assert (=> b!1006736 (and (bvsge (index!40376 lt!444898) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444898) (size!31072 a!3219)))))

(assert (=> b!1006736 (= e!566650 (= (select (arr!30569 a!3219) (index!40376 lt!444898)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119553 () Bool)

(assert (=> d!119553 e!566648))

(declare-fun c!101540 () Bool)

(assert (=> d!119553 (= c!101540 (and ((_ is Intermediate!9501) lt!444898) (undefined!10313 lt!444898)))))

(assert (=> d!119553 (= lt!444898 e!566646)))

(declare-fun c!101541 () Bool)

(assert (=> d!119553 (= c!101541 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119553 (= lt!444899 (select (arr!30569 a!3219) index!1507))))

(assert (=> d!119553 (validMask!0 mask!3464)))

(assert (=> d!119553 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30569 a!3219) j!170) a!3219 mask!3464) lt!444898)))

(assert (= (and d!119553 c!101541) b!1006737))

(assert (= (and d!119553 (not c!101541)) b!1006733))

(assert (= (and b!1006733 c!101539) b!1006735))

(assert (= (and b!1006733 (not c!101539)) b!1006741))

(assert (= (and d!119553 c!101540) b!1006740))

(assert (= (and d!119553 (not c!101540)) b!1006738))

(assert (= (and b!1006738 res!675960) b!1006739))

(assert (= (and b!1006739 (not res!675962)) b!1006734))

(assert (= (and b!1006734 (not res!675961)) b!1006736))

(declare-fun m!931913 () Bool)

(assert (=> b!1006739 m!931913))

(declare-fun m!931915 () Bool)

(assert (=> b!1006741 m!931915))

(assert (=> b!1006741 m!931915))

(assert (=> b!1006741 m!931845))

(declare-fun m!931917 () Bool)

(assert (=> b!1006741 m!931917))

(assert (=> b!1006734 m!931913))

(declare-fun m!931919 () Bool)

(assert (=> d!119553 m!931919))

(assert (=> d!119553 m!931853))

(assert (=> b!1006736 m!931913))

(assert (=> b!1006661 d!119553))

(declare-fun d!119555 () Bool)

(assert (=> d!119555 (= (validKeyInArray!0 (select (arr!30569 a!3219) j!170)) (and (not (= (select (arr!30569 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30569 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006660 d!119555))

(declare-fun b!1006742 () Bool)

(declare-fun e!566651 () SeekEntryResult!9501)

(declare-fun e!566652 () SeekEntryResult!9501)

(assert (=> b!1006742 (= e!566651 e!566652)))

(declare-fun c!101542 () Bool)

(declare-fun lt!444901 () (_ BitVec 64))

(assert (=> b!1006742 (= c!101542 (or (= lt!444901 lt!444867) (= (bvadd lt!444901 lt!444901) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006743 () Bool)

(declare-fun lt!444900 () SeekEntryResult!9501)

(assert (=> b!1006743 (and (bvsge (index!40376 lt!444900) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444900) (size!31072 lt!444863)))))

(declare-fun res!675964 () Bool)

(assert (=> b!1006743 (= res!675964 (= (select (arr!30569 lt!444863) (index!40376 lt!444900)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566655 () Bool)

(assert (=> b!1006743 (=> res!675964 e!566655)))

(declare-fun b!1006744 () Bool)

(assert (=> b!1006744 (= e!566652 (Intermediate!9501 false index!1507 x!1245))))

(declare-fun b!1006746 () Bool)

(assert (=> b!1006746 (= e!566651 (Intermediate!9501 true index!1507 x!1245))))

(declare-fun b!1006747 () Bool)

(declare-fun e!566653 () Bool)

(declare-fun e!566654 () Bool)

(assert (=> b!1006747 (= e!566653 e!566654)))

(declare-fun res!675963 () Bool)

(assert (=> b!1006747 (= res!675963 (and ((_ is Intermediate!9501) lt!444900) (not (undefined!10313 lt!444900)) (bvslt (x!87798 lt!444900) #b01111111111111111111111111111110) (bvsge (x!87798 lt!444900) #b00000000000000000000000000000000) (bvsge (x!87798 lt!444900) x!1245)))))

(assert (=> b!1006747 (=> (not res!675963) (not e!566654))))

(declare-fun b!1006748 () Bool)

(assert (=> b!1006748 (and (bvsge (index!40376 lt!444900) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444900) (size!31072 lt!444863)))))

(declare-fun res!675965 () Bool)

(assert (=> b!1006748 (= res!675965 (= (select (arr!30569 lt!444863) (index!40376 lt!444900)) lt!444867))))

(assert (=> b!1006748 (=> res!675965 e!566655)))

(assert (=> b!1006748 (= e!566654 e!566655)))

(declare-fun b!1006749 () Bool)

(assert (=> b!1006749 (= e!566653 (bvsge (x!87798 lt!444900) #b01111111111111111111111111111110))))

(declare-fun b!1006750 () Bool)

(assert (=> b!1006750 (= e!566652 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444867 lt!444863 mask!3464))))

(declare-fun b!1006745 () Bool)

(assert (=> b!1006745 (and (bvsge (index!40376 lt!444900) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444900) (size!31072 lt!444863)))))

(assert (=> b!1006745 (= e!566655 (= (select (arr!30569 lt!444863) (index!40376 lt!444900)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119557 () Bool)

(assert (=> d!119557 e!566653))

(declare-fun c!101543 () Bool)

(assert (=> d!119557 (= c!101543 (and ((_ is Intermediate!9501) lt!444900) (undefined!10313 lt!444900)))))

(assert (=> d!119557 (= lt!444900 e!566651)))

(declare-fun c!101544 () Bool)

(assert (=> d!119557 (= c!101544 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119557 (= lt!444901 (select (arr!30569 lt!444863) index!1507))))

(assert (=> d!119557 (validMask!0 mask!3464)))

(assert (=> d!119557 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444867 lt!444863 mask!3464) lt!444900)))

(assert (= (and d!119557 c!101544) b!1006746))

(assert (= (and d!119557 (not c!101544)) b!1006742))

(assert (= (and b!1006742 c!101542) b!1006744))

(assert (= (and b!1006742 (not c!101542)) b!1006750))

(assert (= (and d!119557 c!101543) b!1006749))

(assert (= (and d!119557 (not c!101543)) b!1006747))

(assert (= (and b!1006747 res!675963) b!1006748))

(assert (= (and b!1006748 (not res!675965)) b!1006743))

(assert (= (and b!1006743 (not res!675964)) b!1006745))

(declare-fun m!931921 () Bool)

(assert (=> b!1006748 m!931921))

(assert (=> b!1006750 m!931915))

(assert (=> b!1006750 m!931915))

(declare-fun m!931923 () Bool)

(assert (=> b!1006750 m!931923))

(assert (=> b!1006743 m!931921))

(declare-fun m!931925 () Bool)

(assert (=> d!119557 m!931925))

(assert (=> d!119557 m!931853))

(assert (=> b!1006745 m!931921))

(assert (=> b!1006665 d!119557))

(declare-fun d!119561 () Bool)

(declare-fun res!675971 () Bool)

(declare-fun e!566662 () Bool)

(assert (=> d!119561 (=> res!675971 e!566662)))

(assert (=> d!119561 (= res!675971 (bvsge #b00000000000000000000000000000000 (size!31072 a!3219)))))

(assert (=> d!119561 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!566662)))

(declare-fun b!1006759 () Bool)

(declare-fun e!566663 () Bool)

(declare-fun call!42352 () Bool)

(assert (=> b!1006759 (= e!566663 call!42352)))

(declare-fun b!1006760 () Bool)

(declare-fun e!566664 () Bool)

(assert (=> b!1006760 (= e!566664 call!42352)))

(declare-fun b!1006761 () Bool)

(assert (=> b!1006761 (= e!566663 e!566664)))

(declare-fun lt!444908 () (_ BitVec 64))

(assert (=> b!1006761 (= lt!444908 (select (arr!30569 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32954 0))(
  ( (Unit!32955) )
))
(declare-fun lt!444910 () Unit!32954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63501 (_ BitVec 64) (_ BitVec 32)) Unit!32954)

(assert (=> b!1006761 (= lt!444910 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444908 #b00000000000000000000000000000000))))

(assert (=> b!1006761 (arrayContainsKey!0 a!3219 lt!444908 #b00000000000000000000000000000000)))

(declare-fun lt!444909 () Unit!32954)

(assert (=> b!1006761 (= lt!444909 lt!444910)))

(declare-fun res!675970 () Bool)

(assert (=> b!1006761 (= res!675970 (= (seekEntryOrOpen!0 (select (arr!30569 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9501 #b00000000000000000000000000000000)))))

(assert (=> b!1006761 (=> (not res!675970) (not e!566664))))

(declare-fun bm!42349 () Bool)

(assert (=> bm!42349 (= call!42352 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1006762 () Bool)

(assert (=> b!1006762 (= e!566662 e!566663)))

(declare-fun c!101547 () Bool)

(assert (=> b!1006762 (= c!101547 (validKeyInArray!0 (select (arr!30569 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119561 (not res!675971)) b!1006762))

(assert (= (and b!1006762 c!101547) b!1006761))

(assert (= (and b!1006762 (not c!101547)) b!1006759))

(assert (= (and b!1006761 res!675970) b!1006760))

(assert (= (or b!1006760 b!1006759) bm!42349))

(declare-fun m!931927 () Bool)

(assert (=> b!1006761 m!931927))

(declare-fun m!931929 () Bool)

(assert (=> b!1006761 m!931929))

(declare-fun m!931931 () Bool)

(assert (=> b!1006761 m!931931))

(assert (=> b!1006761 m!931927))

(declare-fun m!931933 () Bool)

(assert (=> b!1006761 m!931933))

(declare-fun m!931935 () Bool)

(assert (=> bm!42349 m!931935))

(assert (=> b!1006762 m!931927))

(assert (=> b!1006762 m!931927))

(declare-fun m!931937 () Bool)

(assert (=> b!1006762 m!931937))

(assert (=> b!1006664 d!119561))

(declare-fun d!119565 () Bool)

(assert (=> d!119565 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006657 d!119565))

(declare-fun d!119567 () Bool)

(declare-fun res!675976 () Bool)

(declare-fun e!566669 () Bool)

(assert (=> d!119567 (=> res!675976 e!566669)))

(assert (=> d!119567 (= res!675976 (= (select (arr!30569 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119567 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!566669)))

(declare-fun b!1006767 () Bool)

(declare-fun e!566670 () Bool)

(assert (=> b!1006767 (= e!566669 e!566670)))

(declare-fun res!675977 () Bool)

(assert (=> b!1006767 (=> (not res!675977) (not e!566670))))

(assert (=> b!1006767 (= res!675977 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31072 a!3219)))))

(declare-fun b!1006768 () Bool)

(assert (=> b!1006768 (= e!566670 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119567 (not res!675976)) b!1006767))

(assert (= (and b!1006767 res!675977) b!1006768))

(assert (=> d!119567 m!931927))

(declare-fun m!931939 () Bool)

(assert (=> b!1006768 m!931939))

(assert (=> b!1006656 d!119567))

(declare-fun b!1006803 () Bool)

(declare-fun e!566693 () Bool)

(declare-fun e!566695 () Bool)

(assert (=> b!1006803 (= e!566693 e!566695)))

(declare-fun res!675992 () Bool)

(assert (=> b!1006803 (=> (not res!675992) (not e!566695))))

(declare-fun e!566696 () Bool)

(assert (=> b!1006803 (= res!675992 (not e!566696))))

(declare-fun res!675990 () Bool)

(assert (=> b!1006803 (=> (not res!675990) (not e!566696))))

(assert (=> b!1006803 (= res!675990 (validKeyInArray!0 (select (arr!30569 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1006804 () Bool)

(declare-fun e!566694 () Bool)

(declare-fun call!42355 () Bool)

(assert (=> b!1006804 (= e!566694 call!42355)))

(declare-fun b!1006805 () Bool)

(assert (=> b!1006805 (= e!566694 call!42355)))

(declare-fun b!1006806 () Bool)

(assert (=> b!1006806 (= e!566695 e!566694)))

(declare-fun c!101560 () Bool)

(assert (=> b!1006806 (= c!101560 (validKeyInArray!0 (select (arr!30569 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42352 () Bool)

(assert (=> bm!42352 (= call!42355 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101560 (Cons!21367 (select (arr!30569 a!3219) #b00000000000000000000000000000000) Nil!21368) Nil!21368)))))

(declare-fun b!1006807 () Bool)

(declare-fun contains!5894 (List!21371 (_ BitVec 64)) Bool)

(assert (=> b!1006807 (= e!566696 (contains!5894 Nil!21368 (select (arr!30569 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119569 () Bool)

(declare-fun res!675991 () Bool)

(assert (=> d!119569 (=> res!675991 e!566693)))

(assert (=> d!119569 (= res!675991 (bvsge #b00000000000000000000000000000000 (size!31072 a!3219)))))

(assert (=> d!119569 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21368) e!566693)))

(assert (= (and d!119569 (not res!675991)) b!1006803))

(assert (= (and b!1006803 res!675990) b!1006807))

(assert (= (and b!1006803 res!675992) b!1006806))

(assert (= (and b!1006806 c!101560) b!1006805))

(assert (= (and b!1006806 (not c!101560)) b!1006804))

(assert (= (or b!1006805 b!1006804) bm!42352))

(assert (=> b!1006803 m!931927))

(assert (=> b!1006803 m!931927))

(assert (=> b!1006803 m!931937))

(assert (=> b!1006806 m!931927))

(assert (=> b!1006806 m!931927))

(assert (=> b!1006806 m!931937))

(assert (=> bm!42352 m!931927))

(declare-fun m!931941 () Bool)

(assert (=> bm!42352 m!931941))

(assert (=> b!1006807 m!931927))

(assert (=> b!1006807 m!931927))

(declare-fun m!931943 () Bool)

(assert (=> b!1006807 m!931943))

(assert (=> b!1006666 d!119569))

(declare-fun b!1006877 () Bool)

(declare-fun lt!444943 () SeekEntryResult!9501)

(declare-fun e!566737 () SeekEntryResult!9501)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63501 (_ BitVec 32)) SeekEntryResult!9501)

(assert (=> b!1006877 (= e!566737 (seekKeyOrZeroReturnVacant!0 (x!87798 lt!444943) (index!40376 lt!444943) (index!40376 lt!444943) k0!2224 a!3219 mask!3464))))

(declare-fun b!1006878 () Bool)

(declare-fun c!101584 () Bool)

(declare-fun lt!444941 () (_ BitVec 64))

(assert (=> b!1006878 (= c!101584 (= lt!444941 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566738 () SeekEntryResult!9501)

(assert (=> b!1006878 (= e!566738 e!566737)))

(declare-fun b!1006880 () Bool)

(declare-fun e!566739 () SeekEntryResult!9501)

(assert (=> b!1006880 (= e!566739 e!566738)))

(assert (=> b!1006880 (= lt!444941 (select (arr!30569 a!3219) (index!40376 lt!444943)))))

(declare-fun c!101585 () Bool)

(assert (=> b!1006880 (= c!101585 (= lt!444941 k0!2224))))

(declare-fun b!1006881 () Bool)

(assert (=> b!1006881 (= e!566738 (Found!9501 (index!40376 lt!444943)))))

(declare-fun b!1006882 () Bool)

(assert (=> b!1006882 (= e!566739 Undefined!9501)))

(declare-fun d!119571 () Bool)

(declare-fun lt!444942 () SeekEntryResult!9501)

(assert (=> d!119571 (and (or ((_ is Undefined!9501) lt!444942) (not ((_ is Found!9501) lt!444942)) (and (bvsge (index!40375 lt!444942) #b00000000000000000000000000000000) (bvslt (index!40375 lt!444942) (size!31072 a!3219)))) (or ((_ is Undefined!9501) lt!444942) ((_ is Found!9501) lt!444942) (not ((_ is MissingZero!9501) lt!444942)) (and (bvsge (index!40374 lt!444942) #b00000000000000000000000000000000) (bvslt (index!40374 lt!444942) (size!31072 a!3219)))) (or ((_ is Undefined!9501) lt!444942) ((_ is Found!9501) lt!444942) ((_ is MissingZero!9501) lt!444942) (not ((_ is MissingVacant!9501) lt!444942)) (and (bvsge (index!40377 lt!444942) #b00000000000000000000000000000000) (bvslt (index!40377 lt!444942) (size!31072 a!3219)))) (or ((_ is Undefined!9501) lt!444942) (ite ((_ is Found!9501) lt!444942) (= (select (arr!30569 a!3219) (index!40375 lt!444942)) k0!2224) (ite ((_ is MissingZero!9501) lt!444942) (= (select (arr!30569 a!3219) (index!40374 lt!444942)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9501) lt!444942) (= (select (arr!30569 a!3219) (index!40377 lt!444942)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119571 (= lt!444942 e!566739)))

(declare-fun c!101586 () Bool)

(assert (=> d!119571 (= c!101586 (and ((_ is Intermediate!9501) lt!444943) (undefined!10313 lt!444943)))))

(assert (=> d!119571 (= lt!444943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119571 (validMask!0 mask!3464)))

(assert (=> d!119571 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!444942)))

(declare-fun b!1006879 () Bool)

(assert (=> b!1006879 (= e!566737 (MissingZero!9501 (index!40376 lt!444943)))))

(assert (= (and d!119571 c!101586) b!1006882))

(assert (= (and d!119571 (not c!101586)) b!1006880))

(assert (= (and b!1006880 c!101585) b!1006881))

(assert (= (and b!1006880 (not c!101585)) b!1006878))

(assert (= (and b!1006878 c!101584) b!1006879))

(assert (= (and b!1006878 (not c!101584)) b!1006877))

(declare-fun m!931969 () Bool)

(assert (=> b!1006877 m!931969))

(declare-fun m!931971 () Bool)

(assert (=> b!1006880 m!931971))

(declare-fun m!931973 () Bool)

(assert (=> d!119571 m!931973))

(declare-fun m!931975 () Bool)

(assert (=> d!119571 m!931975))

(assert (=> d!119571 m!931853))

(declare-fun m!931977 () Bool)

(assert (=> d!119571 m!931977))

(declare-fun m!931979 () Bool)

(assert (=> d!119571 m!931979))

(declare-fun m!931981 () Bool)

(assert (=> d!119571 m!931981))

(assert (=> d!119571 m!931973))

(assert (=> b!1006655 d!119571))

(declare-fun d!119581 () Bool)

(assert (=> d!119581 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86850 d!119581))

(declare-fun d!119597 () Bool)

(assert (=> d!119597 (= (array_inv!23559 a!3219) (bvsge (size!31072 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86850 d!119597))

(declare-fun b!1006932 () Bool)

(declare-fun e!566772 () SeekEntryResult!9501)

(declare-fun e!566773 () SeekEntryResult!9501)

(assert (=> b!1006932 (= e!566772 e!566773)))

(declare-fun lt!444956 () (_ BitVec 64))

(declare-fun c!101601 () Bool)

(assert (=> b!1006932 (= c!101601 (or (= lt!444956 (select (arr!30569 a!3219) j!170)) (= (bvadd lt!444956 lt!444956) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006933 () Bool)

(declare-fun lt!444955 () SeekEntryResult!9501)

(assert (=> b!1006933 (and (bvsge (index!40376 lt!444955) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444955) (size!31072 a!3219)))))

(declare-fun res!676037 () Bool)

(assert (=> b!1006933 (= res!676037 (= (select (arr!30569 a!3219) (index!40376 lt!444955)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566776 () Bool)

(assert (=> b!1006933 (=> res!676037 e!566776)))

(declare-fun b!1006934 () Bool)

(assert (=> b!1006934 (= e!566773 (Intermediate!9501 false (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006936 () Bool)

(assert (=> b!1006936 (= e!566772 (Intermediate!9501 true (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006937 () Bool)

(declare-fun e!566774 () Bool)

(declare-fun e!566775 () Bool)

(assert (=> b!1006937 (= e!566774 e!566775)))

(declare-fun res!676036 () Bool)

(assert (=> b!1006937 (= res!676036 (and ((_ is Intermediate!9501) lt!444955) (not (undefined!10313 lt!444955)) (bvslt (x!87798 lt!444955) #b01111111111111111111111111111110) (bvsge (x!87798 lt!444955) #b00000000000000000000000000000000) (bvsge (x!87798 lt!444955) #b00000000000000000000000000000000)))))

(assert (=> b!1006937 (=> (not res!676036) (not e!566775))))

(declare-fun b!1006938 () Bool)

(assert (=> b!1006938 (and (bvsge (index!40376 lt!444955) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444955) (size!31072 a!3219)))))

(declare-fun res!676038 () Bool)

(assert (=> b!1006938 (= res!676038 (= (select (arr!30569 a!3219) (index!40376 lt!444955)) (select (arr!30569 a!3219) j!170)))))

(assert (=> b!1006938 (=> res!676038 e!566776)))

(assert (=> b!1006938 (= e!566775 e!566776)))

(declare-fun b!1006939 () Bool)

(assert (=> b!1006939 (= e!566774 (bvsge (x!87798 lt!444955) #b01111111111111111111111111111110))))

(declare-fun b!1006940 () Bool)

(assert (=> b!1006940 (= e!566773 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30569 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006935 () Bool)

(assert (=> b!1006935 (and (bvsge (index!40376 lt!444955) #b00000000000000000000000000000000) (bvslt (index!40376 lt!444955) (size!31072 a!3219)))))

(assert (=> b!1006935 (= e!566776 (= (select (arr!30569 a!3219) (index!40376 lt!444955)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119599 () Bool)

(assert (=> d!119599 e!566774))

(declare-fun c!101602 () Bool)

(assert (=> d!119599 (= c!101602 (and ((_ is Intermediate!9501) lt!444955) (undefined!10313 lt!444955)))))

(assert (=> d!119599 (= lt!444955 e!566772)))

(declare-fun c!101603 () Bool)

(assert (=> d!119599 (= c!101603 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119599 (= lt!444956 (select (arr!30569 a!3219) (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464)))))

(assert (=> d!119599 (validMask!0 mask!3464)))

(assert (=> d!119599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) (select (arr!30569 a!3219) j!170) a!3219 mask!3464) lt!444955)))

(assert (= (and d!119599 c!101603) b!1006936))

(assert (= (and d!119599 (not c!101603)) b!1006932))

(assert (= (and b!1006932 c!101601) b!1006934))

(assert (= (and b!1006932 (not c!101601)) b!1006940))

(assert (= (and d!119599 c!101602) b!1006939))

(assert (= (and d!119599 (not c!101602)) b!1006937))

(assert (= (and b!1006937 res!676036) b!1006938))

(assert (= (and b!1006938 (not res!676038)) b!1006933))

(assert (= (and b!1006933 (not res!676037)) b!1006935))

(declare-fun m!932023 () Bool)

(assert (=> b!1006938 m!932023))

(assert (=> b!1006940 m!931847))

(declare-fun m!932025 () Bool)

(assert (=> b!1006940 m!932025))

(assert (=> b!1006940 m!932025))

(assert (=> b!1006940 m!931845))

(declare-fun m!932027 () Bool)

(assert (=> b!1006940 m!932027))

(assert (=> b!1006933 m!932023))

(assert (=> d!119599 m!931847))

(declare-fun m!932029 () Bool)

(assert (=> d!119599 m!932029))

(assert (=> d!119599 m!931853))

(assert (=> b!1006935 m!932023))

(assert (=> b!1006659 d!119599))

(declare-fun d!119605 () Bool)

(declare-fun lt!444958 () (_ BitVec 32))

(declare-fun lt!444957 () (_ BitVec 32))

(assert (=> d!119605 (= lt!444958 (bvmul (bvxor lt!444957 (bvlshr lt!444957 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119605 (= lt!444957 ((_ extract 31 0) (bvand (bvxor (select (arr!30569 a!3219) j!170) (bvlshr (select (arr!30569 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119605 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!675959 (let ((h!22552 ((_ extract 31 0) (bvand (bvxor (select (arr!30569 a!3219) j!170) (bvlshr (select (arr!30569 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87801 (bvmul (bvxor h!22552 (bvlshr h!22552 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87801 (bvlshr x!87801 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!675959 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!675959 #b00000000000000000000000000000000))))))

(assert (=> d!119605 (= (toIndex!0 (select (arr!30569 a!3219) j!170) mask!3464) (bvand (bvxor lt!444958 (bvlshr lt!444958 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006659 d!119605))

(check-sat (not b!1006877) (not b!1006940) (not d!119571) (not b!1006803) (not d!119553) (not b!1006732) (not d!119549) (not b!1006761) (not b!1006807) (not d!119599) (not b!1006750) (not d!119557) (not b!1006806) (not b!1006741) (not bm!42349) (not b!1006762) (not b!1006768) (not bm!42352))
(check-sat)
