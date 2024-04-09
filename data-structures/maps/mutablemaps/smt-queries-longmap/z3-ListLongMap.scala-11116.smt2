; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129834 () Bool)

(assert start!129834)

(declare-fun b!1523588 () Bool)

(declare-fun res!1042644 () Bool)

(declare-fun e!849400 () Bool)

(assert (=> b!1523588 (=> (not res!1042644) (not e!849400))))

(declare-datatypes ((array!101357 0))(
  ( (array!101358 (arr!48905 (Array (_ BitVec 32) (_ BitVec 64))) (size!49456 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101357)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523588 (= res!1042644 (validKeyInArray!0 (select (arr!48905 a!2804) j!70)))))

(declare-fun b!1523589 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!659959 () array!101357)

(declare-fun e!849404 () Bool)

(declare-fun lt!659962 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13091 0))(
  ( (MissingZero!13091 (index!54758 (_ BitVec 32))) (Found!13091 (index!54759 (_ BitVec 32))) (Intermediate!13091 (undefined!13903 Bool) (index!54760 (_ BitVec 32)) (x!136452 (_ BitVec 32))) (Undefined!13091) (MissingVacant!13091 (index!54761 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101357 (_ BitVec 32)) SeekEntryResult!13091)

(assert (=> b!1523589 (= e!849404 (= (seekEntryOrOpen!0 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!659962 lt!659959 mask!2512)))))

(declare-fun b!1523590 () Bool)

(declare-fun res!1042637 () Bool)

(assert (=> b!1523590 (=> (not res!1042637) (not e!849400))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1523590 (= res!1042637 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49456 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49456 a!2804))))))

(declare-fun b!1523591 () Bool)

(declare-fun res!1042636 () Bool)

(assert (=> b!1523591 (=> (not res!1042636) (not e!849400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101357 (_ BitVec 32)) Bool)

(assert (=> b!1523591 (= res!1042636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1042635 () Bool)

(assert (=> start!129834 (=> (not res!1042635) (not e!849400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129834 (= res!1042635 (validMask!0 mask!2512))))

(assert (=> start!129834 e!849400))

(assert (=> start!129834 true))

(declare-fun array_inv!37850 (array!101357) Bool)

(assert (=> start!129834 (array_inv!37850 a!2804)))

(declare-fun b!1523592 () Bool)

(declare-fun res!1042633 () Bool)

(declare-fun e!849402 () Bool)

(assert (=> b!1523592 (=> (not res!1042633) (not e!849402))))

(declare-fun lt!659960 () SeekEntryResult!13091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101357 (_ BitVec 32)) SeekEntryResult!13091)

(assert (=> b!1523592 (= res!1042633 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) lt!659960))))

(declare-fun b!1523593 () Bool)

(declare-fun res!1042639 () Bool)

(assert (=> b!1523593 (=> (not res!1042639) (not e!849400))))

(declare-datatypes ((List!35568 0))(
  ( (Nil!35565) (Cons!35564 (h!36989 (_ BitVec 64)) (t!50269 List!35568)) )
))
(declare-fun arrayNoDuplicates!0 (array!101357 (_ BitVec 32) List!35568) Bool)

(assert (=> b!1523593 (= res!1042639 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35565))))

(declare-fun b!1523594 () Bool)

(declare-fun e!849401 () Bool)

(assert (=> b!1523594 (= e!849402 e!849401)))

(declare-fun res!1042634 () Bool)

(assert (=> b!1523594 (=> (not res!1042634) (not e!849401))))

(declare-fun lt!659961 () SeekEntryResult!13091)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523594 (= res!1042634 (= lt!659961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659962 mask!2512) lt!659962 lt!659959 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523594 (= lt!659962 (select (store (arr!48905 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1523594 (= lt!659959 (array!101358 (store (arr!48905 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49456 a!2804)))))

(declare-fun b!1523595 () Bool)

(declare-fun e!849399 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101357 (_ BitVec 32)) SeekEntryResult!13091)

(assert (=> b!1523595 (= e!849399 (= (seekEntry!0 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) (Found!13091 j!70)))))

(declare-fun b!1523596 () Bool)

(assert (=> b!1523596 (= e!849400 e!849402)))

(declare-fun res!1042640 () Bool)

(assert (=> b!1523596 (=> (not res!1042640) (not e!849402))))

(assert (=> b!1523596 (= res!1042640 (= lt!659961 lt!659960))))

(assert (=> b!1523596 (= lt!659960 (Intermediate!13091 false resIndex!21 resX!21))))

(assert (=> b!1523596 (= lt!659961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523597 () Bool)

(assert (=> b!1523597 (= e!849401 (not e!849404))))

(declare-fun res!1042641 () Bool)

(assert (=> b!1523597 (=> res!1042641 e!849404)))

(assert (=> b!1523597 (= res!1042641 (or (not (= (select (arr!48905 a!2804) j!70) lt!659962)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48905 a!2804) index!487) (select (arr!48905 a!2804) j!70))) (not (= j!70 index!487))))))

(assert (=> b!1523597 e!849399))

(declare-fun res!1042643 () Bool)

(assert (=> b!1523597 (=> (not res!1042643) (not e!849399))))

(assert (=> b!1523597 (= res!1042643 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50922 0))(
  ( (Unit!50923) )
))
(declare-fun lt!659958 () Unit!50922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50922)

(assert (=> b!1523597 (= lt!659958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523598 () Bool)

(declare-fun res!1042638 () Bool)

(assert (=> b!1523598 (=> (not res!1042638) (not e!849400))))

(assert (=> b!1523598 (= res!1042638 (validKeyInArray!0 (select (arr!48905 a!2804) i!961)))))

(declare-fun b!1523599 () Bool)

(declare-fun res!1042642 () Bool)

(assert (=> b!1523599 (=> (not res!1042642) (not e!849400))))

(assert (=> b!1523599 (= res!1042642 (and (= (size!49456 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49456 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49456 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129834 res!1042635) b!1523599))

(assert (= (and b!1523599 res!1042642) b!1523598))

(assert (= (and b!1523598 res!1042638) b!1523588))

(assert (= (and b!1523588 res!1042644) b!1523591))

(assert (= (and b!1523591 res!1042636) b!1523593))

(assert (= (and b!1523593 res!1042639) b!1523590))

(assert (= (and b!1523590 res!1042637) b!1523596))

(assert (= (and b!1523596 res!1042640) b!1523592))

(assert (= (and b!1523592 res!1042633) b!1523594))

(assert (= (and b!1523594 res!1042634) b!1523597))

(assert (= (and b!1523597 res!1042643) b!1523595))

(assert (= (and b!1523597 (not res!1042641)) b!1523589))

(declare-fun m!1406781 () Bool)

(assert (=> b!1523598 m!1406781))

(assert (=> b!1523598 m!1406781))

(declare-fun m!1406783 () Bool)

(assert (=> b!1523598 m!1406783))

(declare-fun m!1406785 () Bool)

(assert (=> b!1523595 m!1406785))

(assert (=> b!1523595 m!1406785))

(declare-fun m!1406787 () Bool)

(assert (=> b!1523595 m!1406787))

(declare-fun m!1406789 () Bool)

(assert (=> b!1523594 m!1406789))

(assert (=> b!1523594 m!1406789))

(declare-fun m!1406791 () Bool)

(assert (=> b!1523594 m!1406791))

(declare-fun m!1406793 () Bool)

(assert (=> b!1523594 m!1406793))

(declare-fun m!1406795 () Bool)

(assert (=> b!1523594 m!1406795))

(assert (=> b!1523597 m!1406785))

(declare-fun m!1406797 () Bool)

(assert (=> b!1523597 m!1406797))

(declare-fun m!1406799 () Bool)

(assert (=> b!1523597 m!1406799))

(declare-fun m!1406801 () Bool)

(assert (=> b!1523597 m!1406801))

(declare-fun m!1406803 () Bool)

(assert (=> b!1523591 m!1406803))

(assert (=> b!1523589 m!1406785))

(assert (=> b!1523589 m!1406785))

(declare-fun m!1406805 () Bool)

(assert (=> b!1523589 m!1406805))

(declare-fun m!1406807 () Bool)

(assert (=> b!1523589 m!1406807))

(declare-fun m!1406809 () Bool)

(assert (=> start!129834 m!1406809))

(declare-fun m!1406811 () Bool)

(assert (=> start!129834 m!1406811))

(assert (=> b!1523596 m!1406785))

(assert (=> b!1523596 m!1406785))

(declare-fun m!1406813 () Bool)

(assert (=> b!1523596 m!1406813))

(assert (=> b!1523596 m!1406813))

(assert (=> b!1523596 m!1406785))

(declare-fun m!1406815 () Bool)

(assert (=> b!1523596 m!1406815))

(declare-fun m!1406817 () Bool)

(assert (=> b!1523593 m!1406817))

(assert (=> b!1523592 m!1406785))

(assert (=> b!1523592 m!1406785))

(declare-fun m!1406819 () Bool)

(assert (=> b!1523592 m!1406819))

(assert (=> b!1523588 m!1406785))

(assert (=> b!1523588 m!1406785))

(declare-fun m!1406821 () Bool)

(assert (=> b!1523588 m!1406821))

(check-sat (not b!1523591) (not start!129834) (not b!1523589) (not b!1523588) (not b!1523592) (not b!1523598) (not b!1523597) (not b!1523594) (not b!1523596) (not b!1523595) (not b!1523593))
(check-sat)
(get-model)

(declare-fun b!1523654 () Bool)

(declare-fun e!849433 () SeekEntryResult!13091)

(declare-fun e!849437 () SeekEntryResult!13091)

(assert (=> b!1523654 (= e!849433 e!849437)))

(declare-fun lt!659982 () (_ BitVec 64))

(declare-fun c!140034 () Bool)

(assert (=> b!1523654 (= c!140034 (or (= lt!659982 (select (arr!48905 a!2804) j!70)) (= (bvadd lt!659982 lt!659982) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523656 () Bool)

(declare-fun e!849436 () Bool)

(declare-fun e!849435 () Bool)

(assert (=> b!1523656 (= e!849436 e!849435)))

(declare-fun res!1042689 () Bool)

(declare-fun lt!659983 () SeekEntryResult!13091)

(get-info :version)

(assert (=> b!1523656 (= res!1042689 (and ((_ is Intermediate!13091) lt!659983) (not (undefined!13903 lt!659983)) (bvslt (x!136452 lt!659983) #b01111111111111111111111111111110) (bvsge (x!136452 lt!659983) #b00000000000000000000000000000000) (bvsge (x!136452 lt!659983) #b00000000000000000000000000000000)))))

(assert (=> b!1523656 (=> (not res!1042689) (not e!849435))))

(declare-fun b!1523657 () Bool)

(assert (=> b!1523657 (= e!849437 (Intermediate!13091 false (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523658 () Bool)

(assert (=> b!1523658 (and (bvsge (index!54760 lt!659983) #b00000000000000000000000000000000) (bvslt (index!54760 lt!659983) (size!49456 a!2804)))))

(declare-fun res!1042687 () Bool)

(assert (=> b!1523658 (= res!1042687 (= (select (arr!48905 a!2804) (index!54760 lt!659983)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849434 () Bool)

(assert (=> b!1523658 (=> res!1042687 e!849434)))

(declare-fun b!1523659 () Bool)

(assert (=> b!1523659 (= e!849433 (Intermediate!13091 true (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523660 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523660 (= e!849437 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523661 () Bool)

(assert (=> b!1523661 (and (bvsge (index!54760 lt!659983) #b00000000000000000000000000000000) (bvslt (index!54760 lt!659983) (size!49456 a!2804)))))

(assert (=> b!1523661 (= e!849434 (= (select (arr!48905 a!2804) (index!54760 lt!659983)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523662 () Bool)

(assert (=> b!1523662 (and (bvsge (index!54760 lt!659983) #b00000000000000000000000000000000) (bvslt (index!54760 lt!659983) (size!49456 a!2804)))))

(declare-fun res!1042688 () Bool)

(assert (=> b!1523662 (= res!1042688 (= (select (arr!48905 a!2804) (index!54760 lt!659983)) (select (arr!48905 a!2804) j!70)))))

(assert (=> b!1523662 (=> res!1042688 e!849434)))

(assert (=> b!1523662 (= e!849435 e!849434)))

(declare-fun b!1523655 () Bool)

(assert (=> b!1523655 (= e!849436 (bvsge (x!136452 lt!659983) #b01111111111111111111111111111110))))

(declare-fun d!159167 () Bool)

(assert (=> d!159167 e!849436))

(declare-fun c!140036 () Bool)

(assert (=> d!159167 (= c!140036 (and ((_ is Intermediate!13091) lt!659983) (undefined!13903 lt!659983)))))

(assert (=> d!159167 (= lt!659983 e!849433)))

(declare-fun c!140035 () Bool)

(assert (=> d!159167 (= c!140035 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159167 (= lt!659982 (select (arr!48905 a!2804) (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512)))))

(assert (=> d!159167 (validMask!0 mask!2512)))

(assert (=> d!159167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512) lt!659983)))

(assert (= (and d!159167 c!140035) b!1523659))

(assert (= (and d!159167 (not c!140035)) b!1523654))

(assert (= (and b!1523654 c!140034) b!1523657))

(assert (= (and b!1523654 (not c!140034)) b!1523660))

(assert (= (and d!159167 c!140036) b!1523655))

(assert (= (and d!159167 (not c!140036)) b!1523656))

(assert (= (and b!1523656 res!1042689) b!1523662))

(assert (= (and b!1523662 (not res!1042688)) b!1523658))

(assert (= (and b!1523658 (not res!1042687)) b!1523661))

(declare-fun m!1406865 () Bool)

(assert (=> b!1523658 m!1406865))

(assert (=> d!159167 m!1406813))

(declare-fun m!1406867 () Bool)

(assert (=> d!159167 m!1406867))

(assert (=> d!159167 m!1406809))

(assert (=> b!1523662 m!1406865))

(assert (=> b!1523661 m!1406865))

(assert (=> b!1523660 m!1406813))

(declare-fun m!1406869 () Bool)

(assert (=> b!1523660 m!1406869))

(assert (=> b!1523660 m!1406869))

(assert (=> b!1523660 m!1406785))

(declare-fun m!1406871 () Bool)

(assert (=> b!1523660 m!1406871))

(assert (=> b!1523596 d!159167))

(declare-fun d!159169 () Bool)

(declare-fun lt!659989 () (_ BitVec 32))

(declare-fun lt!659988 () (_ BitVec 32))

(assert (=> d!159169 (= lt!659989 (bvmul (bvxor lt!659988 (bvlshr lt!659988 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159169 (= lt!659988 ((_ extract 31 0) (bvand (bvxor (select (arr!48905 a!2804) j!70) (bvlshr (select (arr!48905 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159169 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1042690 (let ((h!36991 ((_ extract 31 0) (bvand (bvxor (select (arr!48905 a!2804) j!70) (bvlshr (select (arr!48905 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136455 (bvmul (bvxor h!36991 (bvlshr h!36991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136455 (bvlshr x!136455 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1042690 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1042690 #b00000000000000000000000000000000))))))

(assert (=> d!159169 (= (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) (bvand (bvxor lt!659989 (bvlshr lt!659989 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1523596 d!159169))

(declare-fun b!1523671 () Bool)

(declare-fun e!849446 () Bool)

(declare-fun e!849444 () Bool)

(assert (=> b!1523671 (= e!849446 e!849444)))

(declare-fun c!140039 () Bool)

(assert (=> b!1523671 (= c!140039 (validKeyInArray!0 (select (arr!48905 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1523672 () Bool)

(declare-fun e!849445 () Bool)

(assert (=> b!1523672 (= e!849444 e!849445)))

(declare-fun lt!659997 () (_ BitVec 64))

(assert (=> b!1523672 (= lt!659997 (select (arr!48905 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659996 () Unit!50922)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101357 (_ BitVec 64) (_ BitVec 32)) Unit!50922)

(assert (=> b!1523672 (= lt!659996 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659997 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1523672 (arrayContainsKey!0 a!2804 lt!659997 #b00000000000000000000000000000000)))

(declare-fun lt!659998 () Unit!50922)

(assert (=> b!1523672 (= lt!659998 lt!659996)))

(declare-fun res!1042695 () Bool)

(assert (=> b!1523672 (= res!1042695 (= (seekEntryOrOpen!0 (select (arr!48905 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13091 #b00000000000000000000000000000000)))))

(assert (=> b!1523672 (=> (not res!1042695) (not e!849445))))

(declare-fun d!159171 () Bool)

(declare-fun res!1042696 () Bool)

(assert (=> d!159171 (=> res!1042696 e!849446)))

(assert (=> d!159171 (= res!1042696 (bvsge #b00000000000000000000000000000000 (size!49456 a!2804)))))

(assert (=> d!159171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849446)))

(declare-fun bm!68403 () Bool)

(declare-fun call!68406 () Bool)

(assert (=> bm!68403 (= call!68406 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523673 () Bool)

(assert (=> b!1523673 (= e!849445 call!68406)))

(declare-fun b!1523674 () Bool)

(assert (=> b!1523674 (= e!849444 call!68406)))

(assert (= (and d!159171 (not res!1042696)) b!1523671))

(assert (= (and b!1523671 c!140039) b!1523672))

(assert (= (and b!1523671 (not c!140039)) b!1523674))

(assert (= (and b!1523672 res!1042695) b!1523673))

(assert (= (or b!1523673 b!1523674) bm!68403))

(declare-fun m!1406873 () Bool)

(assert (=> b!1523671 m!1406873))

(assert (=> b!1523671 m!1406873))

(declare-fun m!1406875 () Bool)

(assert (=> b!1523671 m!1406875))

(assert (=> b!1523672 m!1406873))

(declare-fun m!1406877 () Bool)

(assert (=> b!1523672 m!1406877))

(declare-fun m!1406879 () Bool)

(assert (=> b!1523672 m!1406879))

(assert (=> b!1523672 m!1406873))

(declare-fun m!1406881 () Bool)

(assert (=> b!1523672 m!1406881))

(declare-fun m!1406883 () Bool)

(assert (=> bm!68403 m!1406883))

(assert (=> b!1523591 d!159171))

(declare-fun b!1523675 () Bool)

(declare-fun e!849449 () Bool)

(declare-fun e!849447 () Bool)

(assert (=> b!1523675 (= e!849449 e!849447)))

(declare-fun c!140040 () Bool)

(assert (=> b!1523675 (= c!140040 (validKeyInArray!0 (select (arr!48905 a!2804) j!70)))))

(declare-fun b!1523676 () Bool)

(declare-fun e!849448 () Bool)

(assert (=> b!1523676 (= e!849447 e!849448)))

(declare-fun lt!660000 () (_ BitVec 64))

(assert (=> b!1523676 (= lt!660000 (select (arr!48905 a!2804) j!70))))

(declare-fun lt!659999 () Unit!50922)

(assert (=> b!1523676 (= lt!659999 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660000 j!70))))

(assert (=> b!1523676 (arrayContainsKey!0 a!2804 lt!660000 #b00000000000000000000000000000000)))

(declare-fun lt!660001 () Unit!50922)

(assert (=> b!1523676 (= lt!660001 lt!659999)))

(declare-fun res!1042697 () Bool)

(assert (=> b!1523676 (= res!1042697 (= (seekEntryOrOpen!0 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) (Found!13091 j!70)))))

(assert (=> b!1523676 (=> (not res!1042697) (not e!849448))))

(declare-fun d!159177 () Bool)

(declare-fun res!1042698 () Bool)

(assert (=> d!159177 (=> res!1042698 e!849449)))

(assert (=> d!159177 (= res!1042698 (bvsge j!70 (size!49456 a!2804)))))

(assert (=> d!159177 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!849449)))

(declare-fun bm!68404 () Bool)

(declare-fun call!68407 () Bool)

(assert (=> bm!68404 (= call!68407 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523677 () Bool)

(assert (=> b!1523677 (= e!849448 call!68407)))

(declare-fun b!1523678 () Bool)

(assert (=> b!1523678 (= e!849447 call!68407)))

(assert (= (and d!159177 (not res!1042698)) b!1523675))

(assert (= (and b!1523675 c!140040) b!1523676))

(assert (= (and b!1523675 (not c!140040)) b!1523678))

(assert (= (and b!1523676 res!1042697) b!1523677))

(assert (= (or b!1523677 b!1523678) bm!68404))

(assert (=> b!1523675 m!1406785))

(assert (=> b!1523675 m!1406785))

(assert (=> b!1523675 m!1406821))

(assert (=> b!1523676 m!1406785))

(declare-fun m!1406885 () Bool)

(assert (=> b!1523676 m!1406885))

(declare-fun m!1406887 () Bool)

(assert (=> b!1523676 m!1406887))

(assert (=> b!1523676 m!1406785))

(assert (=> b!1523676 m!1406805))

(declare-fun m!1406889 () Bool)

(assert (=> bm!68404 m!1406889))

(assert (=> b!1523597 d!159177))

(declare-fun d!159179 () Bool)

(assert (=> d!159179 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660004 () Unit!50922)

(declare-fun choose!38 (array!101357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50922)

(assert (=> d!159179 (= lt!660004 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159179 (validMask!0 mask!2512)))

(assert (=> d!159179 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660004)))

(declare-fun bs!43730 () Bool)

(assert (= bs!43730 d!159179))

(assert (=> bs!43730 m!1406799))

(declare-fun m!1406891 () Bool)

(assert (=> bs!43730 m!1406891))

(assert (=> bs!43730 m!1406809))

(assert (=> b!1523597 d!159179))

(declare-fun b!1523733 () Bool)

(declare-fun c!140060 () Bool)

(declare-fun lt!660020 () (_ BitVec 64))

(assert (=> b!1523733 (= c!140060 (= lt!660020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849483 () SeekEntryResult!13091)

(declare-fun e!849485 () SeekEntryResult!13091)

(assert (=> b!1523733 (= e!849483 e!849485)))

(declare-fun b!1523734 () Bool)

(declare-fun lt!660019 () SeekEntryResult!13091)

(assert (=> b!1523734 (= e!849483 (Found!13091 (index!54760 lt!660019)))))

(declare-fun b!1523735 () Bool)

(declare-fun e!849484 () SeekEntryResult!13091)

(assert (=> b!1523735 (= e!849484 e!849483)))

(assert (=> b!1523735 (= lt!660020 (select (arr!48905 a!2804) (index!54760 lt!660019)))))

(declare-fun c!140061 () Bool)

(assert (=> b!1523735 (= c!140061 (= lt!660020 (select (arr!48905 a!2804) j!70)))))

(declare-fun d!159181 () Bool)

(declare-fun lt!660022 () SeekEntryResult!13091)

(assert (=> d!159181 (and (or ((_ is MissingVacant!13091) lt!660022) (not ((_ is Found!13091) lt!660022)) (and (bvsge (index!54759 lt!660022) #b00000000000000000000000000000000) (bvslt (index!54759 lt!660022) (size!49456 a!2804)))) (not ((_ is MissingVacant!13091) lt!660022)) (or (not ((_ is Found!13091) lt!660022)) (= (select (arr!48905 a!2804) (index!54759 lt!660022)) (select (arr!48905 a!2804) j!70))))))

(assert (=> d!159181 (= lt!660022 e!849484)))

(declare-fun c!140059 () Bool)

(assert (=> d!159181 (= c!140059 (and ((_ is Intermediate!13091) lt!660019) (undefined!13903 lt!660019)))))

(assert (=> d!159181 (= lt!660019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159181 (validMask!0 mask!2512)))

(assert (=> d!159181 (= (seekEntry!0 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) lt!660022)))

(declare-fun b!1523736 () Bool)

(assert (=> b!1523736 (= e!849484 Undefined!13091)))

(declare-fun b!1523737 () Bool)

(assert (=> b!1523737 (= e!849485 (MissingZero!13091 (index!54760 lt!660019)))))

(declare-fun b!1523738 () Bool)

(declare-fun lt!660021 () SeekEntryResult!13091)

(assert (=> b!1523738 (= e!849485 (ite ((_ is MissingVacant!13091) lt!660021) (MissingZero!13091 (index!54761 lt!660021)) lt!660021))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101357 (_ BitVec 32)) SeekEntryResult!13091)

(assert (=> b!1523738 (= lt!660021 (seekKeyOrZeroReturnVacant!0 (x!136452 lt!660019) (index!54760 lt!660019) (index!54760 lt!660019) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!159181 c!140059) b!1523736))

(assert (= (and d!159181 (not c!140059)) b!1523735))

(assert (= (and b!1523735 c!140061) b!1523734))

(assert (= (and b!1523735 (not c!140061)) b!1523733))

(assert (= (and b!1523733 c!140060) b!1523737))

(assert (= (and b!1523733 (not c!140060)) b!1523738))

(declare-fun m!1406907 () Bool)

(assert (=> b!1523735 m!1406907))

(declare-fun m!1406909 () Bool)

(assert (=> d!159181 m!1406909))

(assert (=> d!159181 m!1406785))

(assert (=> d!159181 m!1406813))

(assert (=> d!159181 m!1406813))

(assert (=> d!159181 m!1406785))

(assert (=> d!159181 m!1406815))

(assert (=> d!159181 m!1406809))

(assert (=> b!1523738 m!1406785))

(declare-fun m!1406911 () Bool)

(assert (=> b!1523738 m!1406911))

(assert (=> b!1523595 d!159181))

(declare-fun d!159187 () Bool)

(assert (=> d!159187 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129834 d!159187))

(declare-fun d!159195 () Bool)

(assert (=> d!159195 (= (array_inv!37850 a!2804) (bvsge (size!49456 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129834 d!159195))

(declare-fun d!159197 () Bool)

(assert (=> d!159197 (= (validKeyInArray!0 (select (arr!48905 a!2804) j!70)) (and (not (= (select (arr!48905 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48905 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1523588 d!159197))

(declare-fun b!1523778 () Bool)

(declare-fun e!849510 () SeekEntryResult!13091)

(declare-fun e!849514 () SeekEntryResult!13091)

(assert (=> b!1523778 (= e!849510 e!849514)))

(declare-fun c!140074 () Bool)

(declare-fun lt!660045 () (_ BitVec 64))

(assert (=> b!1523778 (= c!140074 (or (= lt!660045 lt!659962) (= (bvadd lt!660045 lt!660045) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523780 () Bool)

(declare-fun e!849513 () Bool)

(declare-fun e!849512 () Bool)

(assert (=> b!1523780 (= e!849513 e!849512)))

(declare-fun res!1042735 () Bool)

(declare-fun lt!660046 () SeekEntryResult!13091)

(assert (=> b!1523780 (= res!1042735 (and ((_ is Intermediate!13091) lt!660046) (not (undefined!13903 lt!660046)) (bvslt (x!136452 lt!660046) #b01111111111111111111111111111110) (bvsge (x!136452 lt!660046) #b00000000000000000000000000000000) (bvsge (x!136452 lt!660046) #b00000000000000000000000000000000)))))

(assert (=> b!1523780 (=> (not res!1042735) (not e!849512))))

(declare-fun b!1523781 () Bool)

(assert (=> b!1523781 (= e!849514 (Intermediate!13091 false (toIndex!0 lt!659962 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523782 () Bool)

(assert (=> b!1523782 (and (bvsge (index!54760 lt!660046) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660046) (size!49456 lt!659959)))))

(declare-fun res!1042733 () Bool)

(assert (=> b!1523782 (= res!1042733 (= (select (arr!48905 lt!659959) (index!54760 lt!660046)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849511 () Bool)

(assert (=> b!1523782 (=> res!1042733 e!849511)))

(declare-fun b!1523783 () Bool)

(assert (=> b!1523783 (= e!849510 (Intermediate!13091 true (toIndex!0 lt!659962 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523784 () Bool)

(assert (=> b!1523784 (= e!849514 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!659962 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659962 lt!659959 mask!2512))))

(declare-fun b!1523785 () Bool)

(assert (=> b!1523785 (and (bvsge (index!54760 lt!660046) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660046) (size!49456 lt!659959)))))

(assert (=> b!1523785 (= e!849511 (= (select (arr!48905 lt!659959) (index!54760 lt!660046)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523786 () Bool)

(assert (=> b!1523786 (and (bvsge (index!54760 lt!660046) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660046) (size!49456 lt!659959)))))

(declare-fun res!1042734 () Bool)

(assert (=> b!1523786 (= res!1042734 (= (select (arr!48905 lt!659959) (index!54760 lt!660046)) lt!659962))))

(assert (=> b!1523786 (=> res!1042734 e!849511)))

(assert (=> b!1523786 (= e!849512 e!849511)))

(declare-fun b!1523779 () Bool)

(assert (=> b!1523779 (= e!849513 (bvsge (x!136452 lt!660046) #b01111111111111111111111111111110))))

(declare-fun d!159199 () Bool)

(assert (=> d!159199 e!849513))

(declare-fun c!140076 () Bool)

(assert (=> d!159199 (= c!140076 (and ((_ is Intermediate!13091) lt!660046) (undefined!13903 lt!660046)))))

(assert (=> d!159199 (= lt!660046 e!849510)))

(declare-fun c!140075 () Bool)

(assert (=> d!159199 (= c!140075 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159199 (= lt!660045 (select (arr!48905 lt!659959) (toIndex!0 lt!659962 mask!2512)))))

(assert (=> d!159199 (validMask!0 mask!2512)))

(assert (=> d!159199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659962 mask!2512) lt!659962 lt!659959 mask!2512) lt!660046)))

(assert (= (and d!159199 c!140075) b!1523783))

(assert (= (and d!159199 (not c!140075)) b!1523778))

(assert (= (and b!1523778 c!140074) b!1523781))

(assert (= (and b!1523778 (not c!140074)) b!1523784))

(assert (= (and d!159199 c!140076) b!1523779))

(assert (= (and d!159199 (not c!140076)) b!1523780))

(assert (= (and b!1523780 res!1042735) b!1523786))

(assert (= (and b!1523786 (not res!1042734)) b!1523782))

(assert (= (and b!1523782 (not res!1042733)) b!1523785))

(declare-fun m!1406929 () Bool)

(assert (=> b!1523782 m!1406929))

(assert (=> d!159199 m!1406789))

(declare-fun m!1406931 () Bool)

(assert (=> d!159199 m!1406931))

(assert (=> d!159199 m!1406809))

(assert (=> b!1523786 m!1406929))

(assert (=> b!1523785 m!1406929))

(assert (=> b!1523784 m!1406789))

(declare-fun m!1406933 () Bool)

(assert (=> b!1523784 m!1406933))

(assert (=> b!1523784 m!1406933))

(declare-fun m!1406935 () Bool)

(assert (=> b!1523784 m!1406935))

(assert (=> b!1523594 d!159199))

(declare-fun d!159203 () Bool)

(declare-fun lt!660050 () (_ BitVec 32))

(declare-fun lt!660049 () (_ BitVec 32))

(assert (=> d!159203 (= lt!660050 (bvmul (bvxor lt!660049 (bvlshr lt!660049 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159203 (= lt!660049 ((_ extract 31 0) (bvand (bvxor lt!659962 (bvlshr lt!659962 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159203 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1042690 (let ((h!36991 ((_ extract 31 0) (bvand (bvxor lt!659962 (bvlshr lt!659962 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136455 (bvmul (bvxor h!36991 (bvlshr h!36991 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136455 (bvlshr x!136455 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1042690 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1042690 #b00000000000000000000000000000000))))))

(assert (=> d!159203 (= (toIndex!0 lt!659962 mask!2512) (bvand (bvxor lt!660050 (bvlshr lt!660050 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1523594 d!159203))

(declare-fun d!159205 () Bool)

(declare-fun lt!660089 () SeekEntryResult!13091)

(assert (=> d!159205 (and (or ((_ is Undefined!13091) lt!660089) (not ((_ is Found!13091) lt!660089)) (and (bvsge (index!54759 lt!660089) #b00000000000000000000000000000000) (bvslt (index!54759 lt!660089) (size!49456 a!2804)))) (or ((_ is Undefined!13091) lt!660089) ((_ is Found!13091) lt!660089) (not ((_ is MissingZero!13091) lt!660089)) (and (bvsge (index!54758 lt!660089) #b00000000000000000000000000000000) (bvslt (index!54758 lt!660089) (size!49456 a!2804)))) (or ((_ is Undefined!13091) lt!660089) ((_ is Found!13091) lt!660089) ((_ is MissingZero!13091) lt!660089) (not ((_ is MissingVacant!13091) lt!660089)) (and (bvsge (index!54761 lt!660089) #b00000000000000000000000000000000) (bvslt (index!54761 lt!660089) (size!49456 a!2804)))) (or ((_ is Undefined!13091) lt!660089) (ite ((_ is Found!13091) lt!660089) (= (select (arr!48905 a!2804) (index!54759 lt!660089)) (select (arr!48905 a!2804) j!70)) (ite ((_ is MissingZero!13091) lt!660089) (= (select (arr!48905 a!2804) (index!54758 lt!660089)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13091) lt!660089) (= (select (arr!48905 a!2804) (index!54761 lt!660089)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!849546 () SeekEntryResult!13091)

(assert (=> d!159205 (= lt!660089 e!849546)))

(declare-fun c!140106 () Bool)

(declare-fun lt!660090 () SeekEntryResult!13091)

(assert (=> d!159205 (= c!140106 (and ((_ is Intermediate!13091) lt!660090) (undefined!13903 lt!660090)))))

(assert (=> d!159205 (= lt!660090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48905 a!2804) j!70) mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159205 (validMask!0 mask!2512)))

(assert (=> d!159205 (= (seekEntryOrOpen!0 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) lt!660089)))

(declare-fun b!1523844 () Bool)

(declare-fun e!849544 () SeekEntryResult!13091)

(assert (=> b!1523844 (= e!849546 e!849544)))

(declare-fun lt!660091 () (_ BitVec 64))

(assert (=> b!1523844 (= lt!660091 (select (arr!48905 a!2804) (index!54760 lt!660090)))))

(declare-fun c!140104 () Bool)

(assert (=> b!1523844 (= c!140104 (= lt!660091 (select (arr!48905 a!2804) j!70)))))

(declare-fun b!1523845 () Bool)

(declare-fun e!849545 () SeekEntryResult!13091)

(assert (=> b!1523845 (= e!849545 (seekKeyOrZeroReturnVacant!0 (x!136452 lt!660090) (index!54760 lt!660090) (index!54760 lt!660090) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523846 () Bool)

(assert (=> b!1523846 (= e!849544 (Found!13091 (index!54760 lt!660090)))))

(declare-fun b!1523847 () Bool)

(assert (=> b!1523847 (= e!849545 (MissingZero!13091 (index!54760 lt!660090)))))

(declare-fun b!1523848 () Bool)

(declare-fun c!140105 () Bool)

(assert (=> b!1523848 (= c!140105 (= lt!660091 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523848 (= e!849544 e!849545)))

(declare-fun b!1523849 () Bool)

(assert (=> b!1523849 (= e!849546 Undefined!13091)))

(assert (= (and d!159205 c!140106) b!1523849))

(assert (= (and d!159205 (not c!140106)) b!1523844))

(assert (= (and b!1523844 c!140104) b!1523846))

(assert (= (and b!1523844 (not c!140104)) b!1523848))

(assert (= (and b!1523848 c!140105) b!1523847))

(assert (= (and b!1523848 (not c!140105)) b!1523845))

(assert (=> d!159205 m!1406813))

(assert (=> d!159205 m!1406785))

(assert (=> d!159205 m!1406815))

(declare-fun m!1406957 () Bool)

(assert (=> d!159205 m!1406957))

(declare-fun m!1406959 () Bool)

(assert (=> d!159205 m!1406959))

(assert (=> d!159205 m!1406809))

(assert (=> d!159205 m!1406785))

(assert (=> d!159205 m!1406813))

(declare-fun m!1406961 () Bool)

(assert (=> d!159205 m!1406961))

(declare-fun m!1406963 () Bool)

(assert (=> b!1523844 m!1406963))

(assert (=> b!1523845 m!1406785))

(declare-fun m!1406965 () Bool)

(assert (=> b!1523845 m!1406965))

(assert (=> b!1523589 d!159205))

(declare-fun d!159217 () Bool)

(declare-fun lt!660092 () SeekEntryResult!13091)

(assert (=> d!159217 (and (or ((_ is Undefined!13091) lt!660092) (not ((_ is Found!13091) lt!660092)) (and (bvsge (index!54759 lt!660092) #b00000000000000000000000000000000) (bvslt (index!54759 lt!660092) (size!49456 lt!659959)))) (or ((_ is Undefined!13091) lt!660092) ((_ is Found!13091) lt!660092) (not ((_ is MissingZero!13091) lt!660092)) (and (bvsge (index!54758 lt!660092) #b00000000000000000000000000000000) (bvslt (index!54758 lt!660092) (size!49456 lt!659959)))) (or ((_ is Undefined!13091) lt!660092) ((_ is Found!13091) lt!660092) ((_ is MissingZero!13091) lt!660092) (not ((_ is MissingVacant!13091) lt!660092)) (and (bvsge (index!54761 lt!660092) #b00000000000000000000000000000000) (bvslt (index!54761 lt!660092) (size!49456 lt!659959)))) (or ((_ is Undefined!13091) lt!660092) (ite ((_ is Found!13091) lt!660092) (= (select (arr!48905 lt!659959) (index!54759 lt!660092)) lt!659962) (ite ((_ is MissingZero!13091) lt!660092) (= (select (arr!48905 lt!659959) (index!54758 lt!660092)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13091) lt!660092) (= (select (arr!48905 lt!659959) (index!54761 lt!660092)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!849551 () SeekEntryResult!13091)

(assert (=> d!159217 (= lt!660092 e!849551)))

(declare-fun c!140109 () Bool)

(declare-fun lt!660093 () SeekEntryResult!13091)

(assert (=> d!159217 (= c!140109 (and ((_ is Intermediate!13091) lt!660093) (undefined!13903 lt!660093)))))

(assert (=> d!159217 (= lt!660093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659962 mask!2512) lt!659962 lt!659959 mask!2512))))

(assert (=> d!159217 (validMask!0 mask!2512)))

(assert (=> d!159217 (= (seekEntryOrOpen!0 lt!659962 lt!659959 mask!2512) lt!660092)))

(declare-fun b!1523854 () Bool)

(declare-fun e!849549 () SeekEntryResult!13091)

(assert (=> b!1523854 (= e!849551 e!849549)))

(declare-fun lt!660094 () (_ BitVec 64))

(assert (=> b!1523854 (= lt!660094 (select (arr!48905 lt!659959) (index!54760 lt!660093)))))

(declare-fun c!140107 () Bool)

(assert (=> b!1523854 (= c!140107 (= lt!660094 lt!659962))))

(declare-fun b!1523855 () Bool)

(declare-fun e!849550 () SeekEntryResult!13091)

(assert (=> b!1523855 (= e!849550 (seekKeyOrZeroReturnVacant!0 (x!136452 lt!660093) (index!54760 lt!660093) (index!54760 lt!660093) lt!659962 lt!659959 mask!2512))))

(declare-fun b!1523856 () Bool)

(assert (=> b!1523856 (= e!849549 (Found!13091 (index!54760 lt!660093)))))

(declare-fun b!1523857 () Bool)

(assert (=> b!1523857 (= e!849550 (MissingZero!13091 (index!54760 lt!660093)))))

(declare-fun b!1523858 () Bool)

(declare-fun c!140108 () Bool)

(assert (=> b!1523858 (= c!140108 (= lt!660094 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523858 (= e!849549 e!849550)))

(declare-fun b!1523859 () Bool)

(assert (=> b!1523859 (= e!849551 Undefined!13091)))

(assert (= (and d!159217 c!140109) b!1523859))

(assert (= (and d!159217 (not c!140109)) b!1523854))

(assert (= (and b!1523854 c!140107) b!1523856))

(assert (= (and b!1523854 (not c!140107)) b!1523858))

(assert (= (and b!1523858 c!140108) b!1523857))

(assert (= (and b!1523858 (not c!140108)) b!1523855))

(assert (=> d!159217 m!1406789))

(assert (=> d!159217 m!1406791))

(declare-fun m!1406967 () Bool)

(assert (=> d!159217 m!1406967))

(declare-fun m!1406969 () Bool)

(assert (=> d!159217 m!1406969))

(assert (=> d!159217 m!1406809))

(assert (=> d!159217 m!1406789))

(declare-fun m!1406971 () Bool)

(assert (=> d!159217 m!1406971))

(declare-fun m!1406973 () Bool)

(assert (=> b!1523854 m!1406973))

(declare-fun m!1406975 () Bool)

(assert (=> b!1523855 m!1406975))

(assert (=> b!1523589 d!159217))

(declare-fun b!1523864 () Bool)

(declare-fun e!849556 () SeekEntryResult!13091)

(declare-fun e!849560 () SeekEntryResult!13091)

(assert (=> b!1523864 (= e!849556 e!849560)))

(declare-fun c!140112 () Bool)

(declare-fun lt!660101 () (_ BitVec 64))

(assert (=> b!1523864 (= c!140112 (or (= lt!660101 (select (arr!48905 a!2804) j!70)) (= (bvadd lt!660101 lt!660101) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523866 () Bool)

(declare-fun e!849559 () Bool)

(declare-fun e!849558 () Bool)

(assert (=> b!1523866 (= e!849559 e!849558)))

(declare-fun res!1042746 () Bool)

(declare-fun lt!660102 () SeekEntryResult!13091)

(assert (=> b!1523866 (= res!1042746 (and ((_ is Intermediate!13091) lt!660102) (not (undefined!13903 lt!660102)) (bvslt (x!136452 lt!660102) #b01111111111111111111111111111110) (bvsge (x!136452 lt!660102) #b00000000000000000000000000000000) (bvsge (x!136452 lt!660102) x!534)))))

(assert (=> b!1523866 (=> (not res!1042746) (not e!849558))))

(declare-fun b!1523867 () Bool)

(assert (=> b!1523867 (= e!849560 (Intermediate!13091 false index!487 x!534))))

(declare-fun b!1523868 () Bool)

(assert (=> b!1523868 (and (bvsge (index!54760 lt!660102) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660102) (size!49456 a!2804)))))

(declare-fun res!1042744 () Bool)

(assert (=> b!1523868 (= res!1042744 (= (select (arr!48905 a!2804) (index!54760 lt!660102)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849557 () Bool)

(assert (=> b!1523868 (=> res!1042744 e!849557)))

(declare-fun b!1523869 () Bool)

(assert (=> b!1523869 (= e!849556 (Intermediate!13091 true index!487 x!534))))

(declare-fun b!1523870 () Bool)

(assert (=> b!1523870 (= e!849560 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48905 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523871 () Bool)

(assert (=> b!1523871 (and (bvsge (index!54760 lt!660102) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660102) (size!49456 a!2804)))))

(assert (=> b!1523871 (= e!849557 (= (select (arr!48905 a!2804) (index!54760 lt!660102)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523872 () Bool)

(assert (=> b!1523872 (and (bvsge (index!54760 lt!660102) #b00000000000000000000000000000000) (bvslt (index!54760 lt!660102) (size!49456 a!2804)))))

(declare-fun res!1042745 () Bool)

(assert (=> b!1523872 (= res!1042745 (= (select (arr!48905 a!2804) (index!54760 lt!660102)) (select (arr!48905 a!2804) j!70)))))

(assert (=> b!1523872 (=> res!1042745 e!849557)))

(assert (=> b!1523872 (= e!849558 e!849557)))

(declare-fun b!1523865 () Bool)

(assert (=> b!1523865 (= e!849559 (bvsge (x!136452 lt!660102) #b01111111111111111111111111111110))))

(declare-fun d!159219 () Bool)

(assert (=> d!159219 e!849559))

(declare-fun c!140114 () Bool)

(assert (=> d!159219 (= c!140114 (and ((_ is Intermediate!13091) lt!660102) (undefined!13903 lt!660102)))))

(assert (=> d!159219 (= lt!660102 e!849556)))

(declare-fun c!140113 () Bool)

(assert (=> d!159219 (= c!140113 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159219 (= lt!660101 (select (arr!48905 a!2804) index!487))))

(assert (=> d!159219 (validMask!0 mask!2512)))

(assert (=> d!159219 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48905 a!2804) j!70) a!2804 mask!2512) lt!660102)))

(assert (= (and d!159219 c!140113) b!1523869))

(assert (= (and d!159219 (not c!140113)) b!1523864))

(assert (= (and b!1523864 c!140112) b!1523867))

(assert (= (and b!1523864 (not c!140112)) b!1523870))

(assert (= (and d!159219 c!140114) b!1523865))

(assert (= (and d!159219 (not c!140114)) b!1523866))

(assert (= (and b!1523866 res!1042746) b!1523872))

(assert (= (and b!1523872 (not res!1042745)) b!1523868))

(assert (= (and b!1523868 (not res!1042744)) b!1523871))

(declare-fun m!1406977 () Bool)

(assert (=> b!1523868 m!1406977))

(assert (=> d!159219 m!1406797))

(assert (=> d!159219 m!1406809))

(assert (=> b!1523872 m!1406977))

(assert (=> b!1523871 m!1406977))

(declare-fun m!1406979 () Bool)

(assert (=> b!1523870 m!1406979))

(assert (=> b!1523870 m!1406979))

(assert (=> b!1523870 m!1406785))

(declare-fun m!1406981 () Bool)

(assert (=> b!1523870 m!1406981))

(assert (=> b!1523592 d!159219))

(declare-fun d!159221 () Bool)

(assert (=> d!159221 (= (validKeyInArray!0 (select (arr!48905 a!2804) i!961)) (and (not (= (select (arr!48905 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48905 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1523598 d!159221))

(declare-fun b!1523891 () Bool)

(declare-fun e!849578 () Bool)

(declare-fun call!68420 () Bool)

(assert (=> b!1523891 (= e!849578 call!68420)))

(declare-fun d!159223 () Bool)

(declare-fun res!1042758 () Bool)

(declare-fun e!849575 () Bool)

(assert (=> d!159223 (=> res!1042758 e!849575)))

(assert (=> d!159223 (= res!1042758 (bvsge #b00000000000000000000000000000000 (size!49456 a!2804)))))

(assert (=> d!159223 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35565) e!849575)))

(declare-fun b!1523892 () Bool)

(assert (=> b!1523892 (= e!849578 call!68420)))

(declare-fun b!1523893 () Bool)

(declare-fun e!849576 () Bool)

(assert (=> b!1523893 (= e!849576 e!849578)))

(declare-fun c!140119 () Bool)

(assert (=> b!1523893 (= c!140119 (validKeyInArray!0 (select (arr!48905 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1523894 () Bool)

(declare-fun e!849577 () Bool)

(declare-fun contains!9999 (List!35568 (_ BitVec 64)) Bool)

(assert (=> b!1523894 (= e!849577 (contains!9999 Nil!35565 (select (arr!48905 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1523895 () Bool)

(assert (=> b!1523895 (= e!849575 e!849576)))

(declare-fun res!1042759 () Bool)

(assert (=> b!1523895 (=> (not res!1042759) (not e!849576))))

(assert (=> b!1523895 (= res!1042759 (not e!849577))))

(declare-fun res!1042757 () Bool)

(assert (=> b!1523895 (=> (not res!1042757) (not e!849577))))

(assert (=> b!1523895 (= res!1042757 (validKeyInArray!0 (select (arr!48905 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68417 () Bool)

(assert (=> bm!68417 (= call!68420 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140119 (Cons!35564 (select (arr!48905 a!2804) #b00000000000000000000000000000000) Nil!35565) Nil!35565)))))

(assert (= (and d!159223 (not res!1042758)) b!1523895))

(assert (= (and b!1523895 res!1042757) b!1523894))

(assert (= (and b!1523895 res!1042759) b!1523893))

(assert (= (and b!1523893 c!140119) b!1523892))

(assert (= (and b!1523893 (not c!140119)) b!1523891))

(assert (= (or b!1523892 b!1523891) bm!68417))

(assert (=> b!1523893 m!1406873))

(assert (=> b!1523893 m!1406873))

(assert (=> b!1523893 m!1406875))

(assert (=> b!1523894 m!1406873))

(assert (=> b!1523894 m!1406873))

(declare-fun m!1406999 () Bool)

(assert (=> b!1523894 m!1406999))

(assert (=> b!1523895 m!1406873))

(assert (=> b!1523895 m!1406873))

(assert (=> b!1523895 m!1406875))

(assert (=> bm!68417 m!1406873))

(declare-fun m!1407001 () Bool)

(assert (=> bm!68417 m!1407001))

(assert (=> b!1523593 d!159223))

(check-sat (not b!1523660) (not bm!68403) (not b!1523784) (not b!1523671) (not b!1523676) (not b!1523672) (not b!1523893) (not b!1523845) (not b!1523894) (not b!1523895) (not d!159181) (not bm!68417) (not d!159205) (not bm!68404) (not d!159219) (not b!1523855) (not b!1523675) (not d!159179) (not b!1523870) (not b!1523738) (not d!159167) (not d!159199) (not d!159217))
(check-sat)
