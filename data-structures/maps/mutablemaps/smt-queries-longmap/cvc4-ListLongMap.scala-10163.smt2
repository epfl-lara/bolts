; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119786 () Bool)

(assert start!119786)

(declare-fun b!1394903 () Bool)

(declare-fun e!789737 () Bool)

(declare-fun e!789736 () Bool)

(assert (=> b!1394903 (= e!789737 (not e!789736))))

(declare-fun res!934425 () Bool)

(assert (=> b!1394903 (=> res!934425 e!789736)))

(declare-datatypes ((SeekEntryResult!10386 0))(
  ( (MissingZero!10386 (index!43914 (_ BitVec 32))) (Found!10386 (index!43915 (_ BitVec 32))) (Intermediate!10386 (undefined!11198 Bool) (index!43916 (_ BitVec 32)) (x!125577 (_ BitVec 32))) (Undefined!10386) (MissingVacant!10386 (index!43917 (_ BitVec 32))) )
))
(declare-fun lt!612744 () SeekEntryResult!10386)

(assert (=> b!1394903 (= res!934425 (or (not (is-Intermediate!10386 lt!612744)) (undefined!11198 lt!612744)))))

(declare-fun e!789735 () Bool)

(assert (=> b!1394903 e!789735))

(declare-fun res!934420 () Bool)

(assert (=> b!1394903 (=> (not res!934420) (not e!789735))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95386 0))(
  ( (array!95387 (arr!46047 (Array (_ BitVec 32) (_ BitVec 64))) (size!46598 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95386)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95386 (_ BitVec 32)) Bool)

(assert (=> b!1394903 (= res!934420 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46726 0))(
  ( (Unit!46727) )
))
(declare-fun lt!612745 () Unit!46726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46726)

(assert (=> b!1394903 (= lt!612745 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95386 (_ BitVec 32)) SeekEntryResult!10386)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394903 (= lt!612744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) (select (arr!46047 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394904 () Bool)

(declare-fun res!934422 () Bool)

(assert (=> b!1394904 (=> (not res!934422) (not e!789737))))

(declare-datatypes ((List!32746 0))(
  ( (Nil!32743) (Cons!32742 (h!33975 (_ BitVec 64)) (t!47447 List!32746)) )
))
(declare-fun arrayNoDuplicates!0 (array!95386 (_ BitVec 32) List!32746) Bool)

(assert (=> b!1394904 (= res!934422 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32743))))

(declare-fun b!1394905 () Bool)

(declare-fun res!934423 () Bool)

(assert (=> b!1394905 (=> (not res!934423) (not e!789737))))

(assert (=> b!1394905 (= res!934423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394906 () Bool)

(declare-fun res!934427 () Bool)

(assert (=> b!1394906 (=> (not res!934427) (not e!789737))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394906 (= res!934427 (validKeyInArray!0 (select (arr!46047 a!2901) i!1037)))))

(declare-fun b!1394907 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95386 (_ BitVec 32)) SeekEntryResult!10386)

(assert (=> b!1394907 (= e!789735 (= (seekEntryOrOpen!0 (select (arr!46047 a!2901) j!112) a!2901 mask!2840) (Found!10386 j!112)))))

(declare-fun res!934421 () Bool)

(assert (=> start!119786 (=> (not res!934421) (not e!789737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119786 (= res!934421 (validMask!0 mask!2840))))

(assert (=> start!119786 e!789737))

(assert (=> start!119786 true))

(declare-fun array_inv!34992 (array!95386) Bool)

(assert (=> start!119786 (array_inv!34992 a!2901)))

(declare-fun b!1394908 () Bool)

(assert (=> b!1394908 (= e!789736 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1394909 () Bool)

(declare-fun res!934428 () Bool)

(assert (=> b!1394909 (=> (not res!934428) (not e!789737))))

(assert (=> b!1394909 (= res!934428 (and (= (size!46598 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46598 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46598 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394910 () Bool)

(declare-fun res!934424 () Bool)

(assert (=> b!1394910 (=> res!934424 e!789736)))

(assert (=> b!1394910 (= res!934424 (= lt!612744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)) mask!2840)))))

(declare-fun b!1394911 () Bool)

(declare-fun res!934426 () Bool)

(assert (=> b!1394911 (=> (not res!934426) (not e!789737))))

(assert (=> b!1394911 (= res!934426 (validKeyInArray!0 (select (arr!46047 a!2901) j!112)))))

(assert (= (and start!119786 res!934421) b!1394909))

(assert (= (and b!1394909 res!934428) b!1394906))

(assert (= (and b!1394906 res!934427) b!1394911))

(assert (= (and b!1394911 res!934426) b!1394905))

(assert (= (and b!1394905 res!934423) b!1394904))

(assert (= (and b!1394904 res!934422) b!1394903))

(assert (= (and b!1394903 res!934420) b!1394907))

(assert (= (and b!1394903 (not res!934425)) b!1394910))

(assert (= (and b!1394910 (not res!934424)) b!1394908))

(declare-fun m!1281481 () Bool)

(assert (=> b!1394904 m!1281481))

(declare-fun m!1281483 () Bool)

(assert (=> b!1394910 m!1281483))

(declare-fun m!1281485 () Bool)

(assert (=> b!1394910 m!1281485))

(assert (=> b!1394910 m!1281485))

(declare-fun m!1281487 () Bool)

(assert (=> b!1394910 m!1281487))

(assert (=> b!1394910 m!1281487))

(assert (=> b!1394910 m!1281485))

(declare-fun m!1281489 () Bool)

(assert (=> b!1394910 m!1281489))

(declare-fun m!1281491 () Bool)

(assert (=> b!1394906 m!1281491))

(assert (=> b!1394906 m!1281491))

(declare-fun m!1281493 () Bool)

(assert (=> b!1394906 m!1281493))

(declare-fun m!1281495 () Bool)

(assert (=> b!1394903 m!1281495))

(declare-fun m!1281497 () Bool)

(assert (=> b!1394903 m!1281497))

(assert (=> b!1394903 m!1281495))

(declare-fun m!1281499 () Bool)

(assert (=> b!1394903 m!1281499))

(assert (=> b!1394903 m!1281497))

(assert (=> b!1394903 m!1281495))

(declare-fun m!1281501 () Bool)

(assert (=> b!1394903 m!1281501))

(declare-fun m!1281503 () Bool)

(assert (=> b!1394903 m!1281503))

(assert (=> b!1394911 m!1281495))

(assert (=> b!1394911 m!1281495))

(declare-fun m!1281505 () Bool)

(assert (=> b!1394911 m!1281505))

(declare-fun m!1281507 () Bool)

(assert (=> b!1394905 m!1281507))

(declare-fun m!1281509 () Bool)

(assert (=> start!119786 m!1281509))

(declare-fun m!1281511 () Bool)

(assert (=> start!119786 m!1281511))

(assert (=> b!1394907 m!1281495))

(assert (=> b!1394907 m!1281495))

(declare-fun m!1281513 () Bool)

(assert (=> b!1394907 m!1281513))

(push 1)

(assert (not b!1394910))

(assert (not b!1394907))

(assert (not b!1394904))

(assert (not b!1394905))

(assert (not start!119786))

(assert (not b!1394903))

(assert (not b!1394906))

(assert (not b!1394911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1394922 () Bool)

(declare-fun e!789746 () Bool)

(declare-fun call!66804 () Bool)

(assert (=> b!1394922 (= e!789746 call!66804)))

(declare-fun d!150567 () Bool)

(declare-fun res!934437 () Bool)

(declare-fun e!789749 () Bool)

(assert (=> d!150567 (=> res!934437 e!789749)))

(assert (=> d!150567 (= res!934437 (bvsge #b00000000000000000000000000000000 (size!46598 a!2901)))))

(assert (=> d!150567 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32743) e!789749)))

(declare-fun bm!66801 () Bool)

(declare-fun c!129698 () Bool)

(assert (=> bm!66801 (= call!66804 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129698 (Cons!32742 (select (arr!46047 a!2901) #b00000000000000000000000000000000) Nil!32743) Nil!32743)))))

(declare-fun b!1394923 () Bool)

(declare-fun e!789748 () Bool)

(declare-fun contains!9787 (List!32746 (_ BitVec 64)) Bool)

(assert (=> b!1394923 (= e!789748 (contains!9787 Nil!32743 (select (arr!46047 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1394924 () Bool)

(assert (=> b!1394924 (= e!789746 call!66804)))

(declare-fun b!1394925 () Bool)

(declare-fun e!789747 () Bool)

(assert (=> b!1394925 (= e!789749 e!789747)))

(declare-fun res!934435 () Bool)

(assert (=> b!1394925 (=> (not res!934435) (not e!789747))))

(assert (=> b!1394925 (= res!934435 (not e!789748))))

(declare-fun res!934436 () Bool)

(assert (=> b!1394925 (=> (not res!934436) (not e!789748))))

(assert (=> b!1394925 (= res!934436 (validKeyInArray!0 (select (arr!46047 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1394926 () Bool)

(assert (=> b!1394926 (= e!789747 e!789746)))

(assert (=> b!1394926 (= c!129698 (validKeyInArray!0 (select (arr!46047 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150567 (not res!934437)) b!1394925))

(assert (= (and b!1394925 res!934436) b!1394923))

(assert (= (and b!1394925 res!934435) b!1394926))

(assert (= (and b!1394926 c!129698) b!1394922))

(assert (= (and b!1394926 (not c!129698)) b!1394924))

(assert (= (or b!1394922 b!1394924) bm!66801))

(declare-fun m!1281515 () Bool)

(assert (=> bm!66801 m!1281515))

(declare-fun m!1281517 () Bool)

(assert (=> bm!66801 m!1281517))

(assert (=> b!1394923 m!1281515))

(assert (=> b!1394923 m!1281515))

(declare-fun m!1281519 () Bool)

(assert (=> b!1394923 m!1281519))

(assert (=> b!1394925 m!1281515))

(assert (=> b!1394925 m!1281515))

(declare-fun m!1281521 () Bool)

(assert (=> b!1394925 m!1281521))

(assert (=> b!1394926 m!1281515))

(assert (=> b!1394926 m!1281515))

(assert (=> b!1394926 m!1281521))

(assert (=> b!1394904 d!150567))

(declare-fun b!1394935 () Bool)

(declare-fun e!789758 () Bool)

(declare-fun e!789756 () Bool)

(assert (=> b!1394935 (= e!789758 e!789756)))

(declare-fun c!129701 () Bool)

(assert (=> b!1394935 (= c!129701 (validKeyInArray!0 (select (arr!46047 a!2901) j!112)))))

(declare-fun d!150575 () Bool)

(declare-fun res!934443 () Bool)

(assert (=> d!150575 (=> res!934443 e!789758)))

(assert (=> d!150575 (= res!934443 (bvsge j!112 (size!46598 a!2901)))))

(assert (=> d!150575 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!789758)))

(declare-fun call!66807 () Bool)

(declare-fun bm!66804 () Bool)

(assert (=> bm!66804 (= call!66807 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1394936 () Bool)

(declare-fun e!789757 () Bool)

(assert (=> b!1394936 (= e!789756 e!789757)))

(declare-fun lt!612753 () (_ BitVec 64))

(assert (=> b!1394936 (= lt!612753 (select (arr!46047 a!2901) j!112))))

(declare-fun lt!612754 () Unit!46726)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95386 (_ BitVec 64) (_ BitVec 32)) Unit!46726)

(assert (=> b!1394936 (= lt!612754 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612753 j!112))))

(declare-fun arrayContainsKey!0 (array!95386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1394936 (arrayContainsKey!0 a!2901 lt!612753 #b00000000000000000000000000000000)))

(declare-fun lt!612752 () Unit!46726)

(assert (=> b!1394936 (= lt!612752 lt!612754)))

(declare-fun res!934442 () Bool)

(assert (=> b!1394936 (= res!934442 (= (seekEntryOrOpen!0 (select (arr!46047 a!2901) j!112) a!2901 mask!2840) (Found!10386 j!112)))))

(assert (=> b!1394936 (=> (not res!934442) (not e!789757))))

(declare-fun b!1394937 () Bool)

(assert (=> b!1394937 (= e!789756 call!66807)))

(declare-fun b!1394938 () Bool)

(assert (=> b!1394938 (= e!789757 call!66807)))

(assert (= (and d!150575 (not res!934443)) b!1394935))

(assert (= (and b!1394935 c!129701) b!1394936))

(assert (= (and b!1394935 (not c!129701)) b!1394937))

(assert (= (and b!1394936 res!934442) b!1394938))

(assert (= (or b!1394938 b!1394937) bm!66804))

(assert (=> b!1394935 m!1281495))

(assert (=> b!1394935 m!1281495))

(assert (=> b!1394935 m!1281505))

(declare-fun m!1281523 () Bool)

(assert (=> bm!66804 m!1281523))

(assert (=> b!1394936 m!1281495))

(declare-fun m!1281525 () Bool)

(assert (=> b!1394936 m!1281525))

(declare-fun m!1281527 () Bool)

(assert (=> b!1394936 m!1281527))

(assert (=> b!1394936 m!1281495))

(assert (=> b!1394936 m!1281513))

(assert (=> b!1394903 d!150575))

(declare-fun d!150577 () Bool)

(assert (=> d!150577 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612763 () Unit!46726)

(declare-fun choose!38 (array!95386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46726)

(assert (=> d!150577 (= lt!612763 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150577 (validMask!0 mask!2840)))

(assert (=> d!150577 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!612763)))

(declare-fun bs!40595 () Bool)

(assert (= bs!40595 d!150577))

(assert (=> bs!40595 m!1281503))

(declare-fun m!1281529 () Bool)

(assert (=> bs!40595 m!1281529))

(assert (=> bs!40595 m!1281509))

(assert (=> b!1394903 d!150577))

(declare-fun b!1395005 () Bool)

(declare-fun lt!612793 () SeekEntryResult!10386)

(assert (=> b!1395005 (and (bvsge (index!43916 lt!612793) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612793) (size!46598 a!2901)))))

(declare-fun res!934456 () Bool)

(assert (=> b!1395005 (= res!934456 (= (select (arr!46047 a!2901) (index!43916 lt!612793)) (select (arr!46047 a!2901) j!112)))))

(declare-fun e!789799 () Bool)

(assert (=> b!1395005 (=> res!934456 e!789799)))

(declare-fun e!789796 () Bool)

(assert (=> b!1395005 (= e!789796 e!789799)))

(declare-fun d!150579 () Bool)

(declare-fun e!789798 () Bool)

(assert (=> d!150579 e!789798))

(declare-fun c!129729 () Bool)

(assert (=> d!150579 (= c!129729 (and (is-Intermediate!10386 lt!612793) (undefined!11198 lt!612793)))))

(declare-fun e!789797 () SeekEntryResult!10386)

(assert (=> d!150579 (= lt!612793 e!789797)))

(declare-fun c!129731 () Bool)

(assert (=> d!150579 (= c!129731 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!612792 () (_ BitVec 64))

(assert (=> d!150579 (= lt!612792 (select (arr!46047 a!2901) (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840)))))

(assert (=> d!150579 (validMask!0 mask!2840)))

(assert (=> d!150579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) (select (arr!46047 a!2901) j!112) a!2901 mask!2840) lt!612793)))

(declare-fun b!1395006 () Bool)

(assert (=> b!1395006 (and (bvsge (index!43916 lt!612793) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612793) (size!46598 a!2901)))))

(assert (=> b!1395006 (= e!789799 (= (select (arr!46047 a!2901) (index!43916 lt!612793)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395007 () Bool)

(declare-fun e!789800 () SeekEntryResult!10386)

(assert (=> b!1395007 (= e!789797 e!789800)))

(declare-fun c!129730 () Bool)

(assert (=> b!1395007 (= c!129730 (or (= lt!612792 (select (arr!46047 a!2901) j!112)) (= (bvadd lt!612792 lt!612792) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395008 () Bool)

(assert (=> b!1395008 (= e!789800 (Intermediate!10386 false (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395009 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395009 (= e!789800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46047 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395010 () Bool)

(assert (=> b!1395010 (and (bvsge (index!43916 lt!612793) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612793) (size!46598 a!2901)))))

(declare-fun res!934458 () Bool)

(assert (=> b!1395010 (= res!934458 (= (select (arr!46047 a!2901) (index!43916 lt!612793)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395010 (=> res!934458 e!789799)))

(declare-fun b!1395011 () Bool)

(assert (=> b!1395011 (= e!789797 (Intermediate!10386 true (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395012 () Bool)

(assert (=> b!1395012 (= e!789798 (bvsge (x!125577 lt!612793) #b01111111111111111111111111111110))))

(declare-fun b!1395013 () Bool)

(assert (=> b!1395013 (= e!789798 e!789796)))

(declare-fun res!934457 () Bool)

(assert (=> b!1395013 (= res!934457 (and (is-Intermediate!10386 lt!612793) (not (undefined!11198 lt!612793)) (bvslt (x!125577 lt!612793) #b01111111111111111111111111111110) (bvsge (x!125577 lt!612793) #b00000000000000000000000000000000) (bvsge (x!125577 lt!612793) #b00000000000000000000000000000000)))))

(assert (=> b!1395013 (=> (not res!934457) (not e!789796))))

(assert (= (and d!150579 c!129731) b!1395011))

(assert (= (and d!150579 (not c!129731)) b!1395007))

(assert (= (and b!1395007 c!129730) b!1395008))

(assert (= (and b!1395007 (not c!129730)) b!1395009))

(assert (= (and d!150579 c!129729) b!1395012))

(assert (= (and d!150579 (not c!129729)) b!1395013))

(assert (= (and b!1395013 res!934457) b!1395005))

(assert (= (and b!1395005 (not res!934456)) b!1395010))

(assert (= (and b!1395010 (not res!934458)) b!1395006))

(assert (=> d!150579 m!1281497))

(declare-fun m!1281559 () Bool)

(assert (=> d!150579 m!1281559))

(assert (=> d!150579 m!1281509))

(assert (=> b!1395009 m!1281497))

(declare-fun m!1281561 () Bool)

(assert (=> b!1395009 m!1281561))

(assert (=> b!1395009 m!1281561))

(assert (=> b!1395009 m!1281495))

(declare-fun m!1281563 () Bool)

(assert (=> b!1395009 m!1281563))

(declare-fun m!1281565 () Bool)

(assert (=> b!1395006 m!1281565))

(assert (=> b!1395005 m!1281565))

(assert (=> b!1395010 m!1281565))

(assert (=> b!1394903 d!150579))

(declare-fun d!150595 () Bool)

(declare-fun lt!612808 () (_ BitVec 32))

(declare-fun lt!612807 () (_ BitVec 32))

(assert (=> d!150595 (= lt!612808 (bvmul (bvxor lt!612807 (bvlshr lt!612807 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150595 (= lt!612807 ((_ extract 31 0) (bvand (bvxor (select (arr!46047 a!2901) j!112) (bvlshr (select (arr!46047 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150595 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934459 (let ((h!33976 ((_ extract 31 0) (bvand (bvxor (select (arr!46047 a!2901) j!112) (bvlshr (select (arr!46047 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125579 (bvmul (bvxor h!33976 (bvlshr h!33976 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125579 (bvlshr x!125579 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934459 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934459 #b00000000000000000000000000000000))))))

(assert (=> d!150595 (= (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) (bvand (bvxor lt!612808 (bvlshr lt!612808 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394903 d!150595))

(declare-fun b!1395073 () Bool)

(declare-fun c!129755 () Bool)

(declare-fun lt!612835 () (_ BitVec 64))

(assert (=> b!1395073 (= c!129755 (= lt!612835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!789835 () SeekEntryResult!10386)

(declare-fun e!789837 () SeekEntryResult!10386)

(assert (=> b!1395073 (= e!789835 e!789837)))

(declare-fun b!1395074 () Bool)

(declare-fun e!789836 () SeekEntryResult!10386)

(assert (=> b!1395074 (= e!789836 e!789835)))

(declare-fun lt!612836 () SeekEntryResult!10386)

(assert (=> b!1395074 (= lt!612835 (select (arr!46047 a!2901) (index!43916 lt!612836)))))

(declare-fun c!129756 () Bool)

(assert (=> b!1395074 (= c!129756 (= lt!612835 (select (arr!46047 a!2901) j!112)))))

(declare-fun d!150599 () Bool)

(declare-fun lt!612834 () SeekEntryResult!10386)

(assert (=> d!150599 (and (or (is-Undefined!10386 lt!612834) (not (is-Found!10386 lt!612834)) (and (bvsge (index!43915 lt!612834) #b00000000000000000000000000000000) (bvslt (index!43915 lt!612834) (size!46598 a!2901)))) (or (is-Undefined!10386 lt!612834) (is-Found!10386 lt!612834) (not (is-MissingZero!10386 lt!612834)) (and (bvsge (index!43914 lt!612834) #b00000000000000000000000000000000) (bvslt (index!43914 lt!612834) (size!46598 a!2901)))) (or (is-Undefined!10386 lt!612834) (is-Found!10386 lt!612834) (is-MissingZero!10386 lt!612834) (not (is-MissingVacant!10386 lt!612834)) (and (bvsge (index!43917 lt!612834) #b00000000000000000000000000000000) (bvslt (index!43917 lt!612834) (size!46598 a!2901)))) (or (is-Undefined!10386 lt!612834) (ite (is-Found!10386 lt!612834) (= (select (arr!46047 a!2901) (index!43915 lt!612834)) (select (arr!46047 a!2901) j!112)) (ite (is-MissingZero!10386 lt!612834) (= (select (arr!46047 a!2901) (index!43914 lt!612834)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10386 lt!612834) (= (select (arr!46047 a!2901) (index!43917 lt!612834)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150599 (= lt!612834 e!789836)))

(declare-fun c!129754 () Bool)

(assert (=> d!150599 (= c!129754 (and (is-Intermediate!10386 lt!612836) (undefined!11198 lt!612836)))))

(assert (=> d!150599 (= lt!612836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46047 a!2901) j!112) mask!2840) (select (arr!46047 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150599 (validMask!0 mask!2840)))

(assert (=> d!150599 (= (seekEntryOrOpen!0 (select (arr!46047 a!2901) j!112) a!2901 mask!2840) lt!612834)))

(declare-fun b!1395075 () Bool)

(assert (=> b!1395075 (= e!789837 (MissingZero!10386 (index!43916 lt!612836)))))

(declare-fun b!1395076 () Bool)

(assert (=> b!1395076 (= e!789836 Undefined!10386)))

(declare-fun b!1395077 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95386 (_ BitVec 32)) SeekEntryResult!10386)

(assert (=> b!1395077 (= e!789837 (seekKeyOrZeroReturnVacant!0 (x!125577 lt!612836) (index!43916 lt!612836) (index!43916 lt!612836) (select (arr!46047 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395078 () Bool)

(assert (=> b!1395078 (= e!789835 (Found!10386 (index!43916 lt!612836)))))

(assert (= (and d!150599 c!129754) b!1395076))

(assert (= (and d!150599 (not c!129754)) b!1395074))

(assert (= (and b!1395074 c!129756) b!1395078))

(assert (= (and b!1395074 (not c!129756)) b!1395073))

(assert (= (and b!1395073 c!129755) b!1395075))

(assert (= (and b!1395073 (not c!129755)) b!1395077))

(declare-fun m!1281583 () Bool)

(assert (=> b!1395074 m!1281583))

(assert (=> d!150599 m!1281509))

(assert (=> d!150599 m!1281495))

(assert (=> d!150599 m!1281497))

(declare-fun m!1281585 () Bool)

(assert (=> d!150599 m!1281585))

(declare-fun m!1281587 () Bool)

(assert (=> d!150599 m!1281587))

(assert (=> d!150599 m!1281497))

(assert (=> d!150599 m!1281495))

(assert (=> d!150599 m!1281501))

(declare-fun m!1281589 () Bool)

(assert (=> d!150599 m!1281589))

(assert (=> b!1395077 m!1281495))

(declare-fun m!1281591 () Bool)

(assert (=> b!1395077 m!1281591))

(assert (=> b!1394907 d!150599))

(declare-fun d!150609 () Bool)

(assert (=> d!150609 (= (validKeyInArray!0 (select (arr!46047 a!2901) i!1037)) (and (not (= (select (arr!46047 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46047 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394906 d!150609))

(declare-fun d!150611 () Bool)

(assert (=> d!150611 (= (validKeyInArray!0 (select (arr!46047 a!2901) j!112)) (and (not (= (select (arr!46047 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46047 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394911 d!150611))

(declare-fun d!150613 () Bool)

(assert (=> d!150613 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119786 d!150613))

(declare-fun d!150625 () Bool)

(assert (=> d!150625 (= (array_inv!34992 a!2901) (bvsge (size!46598 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119786 d!150625))

(declare-fun b!1395135 () Bool)

(declare-fun e!789876 () Bool)

(declare-fun e!789874 () Bool)

(assert (=> b!1395135 (= e!789876 e!789874)))

(declare-fun c!129772 () Bool)

(assert (=> b!1395135 (= c!129772 (validKeyInArray!0 (select (arr!46047 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150631 () Bool)

(declare-fun res!934504 () Bool)

(assert (=> d!150631 (=> res!934504 e!789876)))

(assert (=> d!150631 (= res!934504 (bvsge #b00000000000000000000000000000000 (size!46598 a!2901)))))

(assert (=> d!150631 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!789876)))

(declare-fun bm!66815 () Bool)

(declare-fun call!66818 () Bool)

(assert (=> bm!66815 (= call!66818 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395136 () Bool)

(declare-fun e!789875 () Bool)

(assert (=> b!1395136 (= e!789874 e!789875)))

(declare-fun lt!612857 () (_ BitVec 64))

(assert (=> b!1395136 (= lt!612857 (select (arr!46047 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!612858 () Unit!46726)

(assert (=> b!1395136 (= lt!612858 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612857 #b00000000000000000000000000000000))))

(assert (=> b!1395136 (arrayContainsKey!0 a!2901 lt!612857 #b00000000000000000000000000000000)))

(declare-fun lt!612856 () Unit!46726)

(assert (=> b!1395136 (= lt!612856 lt!612858)))

(declare-fun res!934503 () Bool)

(assert (=> b!1395136 (= res!934503 (= (seekEntryOrOpen!0 (select (arr!46047 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10386 #b00000000000000000000000000000000)))))

(assert (=> b!1395136 (=> (not res!934503) (not e!789875))))

(declare-fun b!1395137 () Bool)

(assert (=> b!1395137 (= e!789874 call!66818)))

(declare-fun b!1395138 () Bool)

(assert (=> b!1395138 (= e!789875 call!66818)))

(assert (= (and d!150631 (not res!934504)) b!1395135))

(assert (= (and b!1395135 c!129772) b!1395136))

(assert (= (and b!1395135 (not c!129772)) b!1395137))

(assert (= (and b!1395136 res!934503) b!1395138))

(assert (= (or b!1395138 b!1395137) bm!66815))

(assert (=> b!1395135 m!1281515))

(assert (=> b!1395135 m!1281515))

(assert (=> b!1395135 m!1281521))

(declare-fun m!1281633 () Bool)

(assert (=> bm!66815 m!1281633))

(assert (=> b!1395136 m!1281515))

(declare-fun m!1281635 () Bool)

(assert (=> b!1395136 m!1281635))

(declare-fun m!1281637 () Bool)

(assert (=> b!1395136 m!1281637))

(assert (=> b!1395136 m!1281515))

(declare-fun m!1281639 () Bool)

(assert (=> b!1395136 m!1281639))

(assert (=> b!1394905 d!150631))

(declare-fun b!1395143 () Bool)

(declare-fun lt!612863 () SeekEntryResult!10386)

(assert (=> b!1395143 (and (bvsge (index!43916 lt!612863) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612863) (size!46598 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)))))))

(declare-fun res!934507 () Bool)

(assert (=> b!1395143 (= res!934507 (= (select (arr!46047 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901))) (index!43916 lt!612863)) (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!789883 () Bool)

(assert (=> b!1395143 (=> res!934507 e!789883)))

(declare-fun e!789880 () Bool)

(assert (=> b!1395143 (= e!789880 e!789883)))

(declare-fun d!150635 () Bool)

(declare-fun e!789882 () Bool)

(assert (=> d!150635 e!789882))

(declare-fun c!129774 () Bool)

(assert (=> d!150635 (= c!129774 (and (is-Intermediate!10386 lt!612863) (undefined!11198 lt!612863)))))

(declare-fun e!789881 () SeekEntryResult!10386)

(assert (=> d!150635 (= lt!612863 e!789881)))

(declare-fun c!129776 () Bool)

(assert (=> d!150635 (= c!129776 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!612862 () (_ BitVec 64))

(assert (=> d!150635 (= lt!612862 (select (arr!46047 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901))) (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150635 (validMask!0 mask!2840)))

(assert (=> d!150635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)) mask!2840) lt!612863)))

(declare-fun b!1395144 () Bool)

(assert (=> b!1395144 (and (bvsge (index!43916 lt!612863) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612863) (size!46598 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)))))))

(assert (=> b!1395144 (= e!789883 (= (select (arr!46047 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901))) (index!43916 lt!612863)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395145 () Bool)

(declare-fun e!789884 () SeekEntryResult!10386)

(assert (=> b!1395145 (= e!789881 e!789884)))

(declare-fun c!129775 () Bool)

(assert (=> b!1395145 (= c!129775 (or (= lt!612862 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!612862 lt!612862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395146 () Bool)

(assert (=> b!1395146 (= e!789884 (Intermediate!10386 false (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395147 () Bool)

(assert (=> b!1395147 (= e!789884 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)) mask!2840))))

(declare-fun b!1395148 () Bool)

(assert (=> b!1395148 (and (bvsge (index!43916 lt!612863) #b00000000000000000000000000000000) (bvslt (index!43916 lt!612863) (size!46598 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901)))))))

(declare-fun res!934509 () Bool)

(assert (=> b!1395148 (= res!934509 (= (select (arr!46047 (array!95387 (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46598 a!2901))) (index!43916 lt!612863)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395148 (=> res!934509 e!789883)))

(declare-fun b!1395149 () Bool)

(assert (=> b!1395149 (= e!789881 (Intermediate!10386 true (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395150 () Bool)

(assert (=> b!1395150 (= e!789882 (bvsge (x!125577 lt!612863) #b01111111111111111111111111111110))))

(declare-fun b!1395151 () Bool)

(assert (=> b!1395151 (= e!789882 e!789880)))

(declare-fun res!934508 () Bool)

(assert (=> b!1395151 (= res!934508 (and (is-Intermediate!10386 lt!612863) (not (undefined!11198 lt!612863)) (bvslt (x!125577 lt!612863) #b01111111111111111111111111111110) (bvsge (x!125577 lt!612863) #b00000000000000000000000000000000) (bvsge (x!125577 lt!612863) #b00000000000000000000000000000000)))))

(assert (=> b!1395151 (=> (not res!934508) (not e!789880))))

(assert (= (and d!150635 c!129776) b!1395149))

(assert (= (and d!150635 (not c!129776)) b!1395145))

(assert (= (and b!1395145 c!129775) b!1395146))

(assert (= (and b!1395145 (not c!129775)) b!1395147))

(assert (= (and d!150635 c!129774) b!1395150))

(assert (= (and d!150635 (not c!129774)) b!1395151))

(assert (= (and b!1395151 res!934508) b!1395143))

(assert (= (and b!1395143 (not res!934507)) b!1395148))

(assert (= (and b!1395148 (not res!934509)) b!1395144))

(assert (=> d!150635 m!1281487))

(declare-fun m!1281653 () Bool)

(assert (=> d!150635 m!1281653))

(assert (=> d!150635 m!1281509))

(assert (=> b!1395147 m!1281487))

(declare-fun m!1281655 () Bool)

(assert (=> b!1395147 m!1281655))

(assert (=> b!1395147 m!1281655))

(assert (=> b!1395147 m!1281485))

(declare-fun m!1281657 () Bool)

(assert (=> b!1395147 m!1281657))

(declare-fun m!1281659 () Bool)

(assert (=> b!1395144 m!1281659))

(assert (=> b!1395143 m!1281659))

(assert (=> b!1395148 m!1281659))

(assert (=> b!1394910 d!150635))

(declare-fun d!150641 () Bool)

(declare-fun lt!612865 () (_ BitVec 32))

(declare-fun lt!612864 () (_ BitVec 32))

(assert (=> d!150641 (= lt!612865 (bvmul (bvxor lt!612864 (bvlshr lt!612864 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150641 (= lt!612864 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150641 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934459 (let ((h!33976 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125579 (bvmul (bvxor h!33976 (bvlshr h!33976 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125579 (bvlshr x!125579 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934459 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934459 #b00000000000000000000000000000000))))))

(assert (=> d!150641 (= (toIndex!0 (select (store (arr!46047 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!612865 (bvlshr lt!612865 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394910 d!150641))

(push 1)

