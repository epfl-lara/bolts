; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123618 () Bool)

(assert start!123618)

(declare-fun b!1432905 () Bool)

(declare-fun res!966885 () Bool)

(declare-fun e!808822 () Bool)

(assert (=> b!1432905 (=> (not res!966885) (not e!808822))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97508 0))(
  ( (array!97509 (arr!47057 (Array (_ BitVec 32) (_ BitVec 64))) (size!47608 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97508)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432905 (= res!966885 (and (= (size!47608 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47608 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47608 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432906 () Bool)

(declare-fun e!808820 () Bool)

(assert (=> b!1432906 (= e!808822 e!808820)))

(declare-fun res!966881 () Bool)

(assert (=> b!1432906 (=> (not res!966881) (not e!808820))))

(declare-datatypes ((SeekEntryResult!11358 0))(
  ( (MissingZero!11358 (index!47823 (_ BitVec 32))) (Found!11358 (index!47824 (_ BitVec 32))) (Intermediate!11358 (undefined!12170 Bool) (index!47825 (_ BitVec 32)) (x!129467 (_ BitVec 32))) (Undefined!11358) (MissingVacant!11358 (index!47826 (_ BitVec 32))) )
))
(declare-fun lt!630770 () SeekEntryResult!11358)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97508 (_ BitVec 32)) SeekEntryResult!11358)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432906 (= res!966881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) (select (arr!47057 a!2831) j!81) a!2831 mask!2608) lt!630770))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432906 (= lt!630770 (Intermediate!11358 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432907 () Bool)

(declare-fun res!966884 () Bool)

(declare-fun e!808821 () Bool)

(assert (=> b!1432907 (=> (not res!966884) (not e!808821))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432907 (= res!966884 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47057 a!2831) j!81) a!2831 mask!2608) lt!630770))))

(declare-fun b!1432908 () Bool)

(assert (=> b!1432908 (= e!808820 e!808821)))

(declare-fun res!966890 () Bool)

(assert (=> b!1432908 (=> (not res!966890) (not e!808821))))

(declare-fun lt!630768 () (_ BitVec 64))

(declare-fun lt!630769 () SeekEntryResult!11358)

(declare-fun lt!630772 () array!97508)

(assert (=> b!1432908 (= res!966890 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630768 mask!2608) lt!630768 lt!630772 mask!2608) lt!630769))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1432908 (= lt!630769 (Intermediate!11358 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432908 (= lt!630768 (select (store (arr!47057 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432908 (= lt!630772 (array!97509 (store (arr!47057 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47608 a!2831)))))

(declare-fun b!1432909 () Bool)

(declare-fun e!808823 () Bool)

(assert (=> b!1432909 (= e!808823 (and (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110)))))

(declare-fun lt!630767 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432909 (= lt!630767 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432910 () Bool)

(declare-fun res!966882 () Bool)

(assert (=> b!1432910 (=> (not res!966882) (not e!808822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432910 (= res!966882 (validKeyInArray!0 (select (arr!47057 a!2831) i!982)))))

(declare-fun b!1432911 () Bool)

(declare-fun res!966891 () Bool)

(assert (=> b!1432911 (=> (not res!966891) (not e!808822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97508 (_ BitVec 32)) Bool)

(assert (=> b!1432911 (= res!966891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432912 () Bool)

(declare-fun res!966886 () Bool)

(assert (=> b!1432912 (=> (not res!966886) (not e!808821))))

(assert (=> b!1432912 (= res!966886 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432913 () Bool)

(declare-fun res!966888 () Bool)

(assert (=> b!1432913 (=> (not res!966888) (not e!808822))))

(assert (=> b!1432913 (= res!966888 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47608 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47608 a!2831))))))

(declare-fun b!1432914 () Bool)

(declare-fun res!966887 () Bool)

(assert (=> b!1432914 (=> (not res!966887) (not e!808822))))

(declare-datatypes ((List!33747 0))(
  ( (Nil!33744) (Cons!33743 (h!35066 (_ BitVec 64)) (t!48448 List!33747)) )
))
(declare-fun arrayNoDuplicates!0 (array!97508 (_ BitVec 32) List!33747) Bool)

(assert (=> b!1432914 (= res!966887 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33744))))

(declare-fun b!1432915 () Bool)

(assert (=> b!1432915 (= e!808821 (not e!808823))))

(declare-fun res!966879 () Bool)

(assert (=> b!1432915 (=> res!966879 e!808823)))

(assert (=> b!1432915 (= res!966879 (or (= (select (arr!47057 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47057 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47057 a!2831) index!585) (select (arr!47057 a!2831) j!81)) (= (select (store (arr!47057 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808819 () Bool)

(assert (=> b!1432915 e!808819))

(declare-fun res!966880 () Bool)

(assert (=> b!1432915 (=> (not res!966880) (not e!808819))))

(assert (=> b!1432915 (= res!966880 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48410 0))(
  ( (Unit!48411) )
))
(declare-fun lt!630771 () Unit!48410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48410)

(assert (=> b!1432915 (= lt!630771 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432916 () Bool)

(declare-fun res!966883 () Bool)

(assert (=> b!1432916 (=> (not res!966883) (not e!808822))))

(assert (=> b!1432916 (= res!966883 (validKeyInArray!0 (select (arr!47057 a!2831) j!81)))))

(declare-fun b!1432917 () Bool)

(declare-fun res!966878 () Bool)

(assert (=> b!1432917 (=> (not res!966878) (not e!808821))))

(assert (=> b!1432917 (= res!966878 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630768 lt!630772 mask!2608) lt!630769))))

(declare-fun b!1432918 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97508 (_ BitVec 32)) SeekEntryResult!11358)

(assert (=> b!1432918 (= e!808819 (= (seekEntryOrOpen!0 (select (arr!47057 a!2831) j!81) a!2831 mask!2608) (Found!11358 j!81)))))

(declare-fun res!966889 () Bool)

(assert (=> start!123618 (=> (not res!966889) (not e!808822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123618 (= res!966889 (validMask!0 mask!2608))))

(assert (=> start!123618 e!808822))

(assert (=> start!123618 true))

(declare-fun array_inv!36002 (array!97508) Bool)

(assert (=> start!123618 (array_inv!36002 a!2831)))

(assert (= (and start!123618 res!966889) b!1432905))

(assert (= (and b!1432905 res!966885) b!1432910))

(assert (= (and b!1432910 res!966882) b!1432916))

(assert (= (and b!1432916 res!966883) b!1432911))

(assert (= (and b!1432911 res!966891) b!1432914))

(assert (= (and b!1432914 res!966887) b!1432913))

(assert (= (and b!1432913 res!966888) b!1432906))

(assert (= (and b!1432906 res!966881) b!1432908))

(assert (= (and b!1432908 res!966890) b!1432907))

(assert (= (and b!1432907 res!966884) b!1432917))

(assert (= (and b!1432917 res!966878) b!1432912))

(assert (= (and b!1432912 res!966886) b!1432915))

(assert (= (and b!1432915 res!966880) b!1432918))

(assert (= (and b!1432915 (not res!966879)) b!1432909))

(declare-fun m!1322797 () Bool)

(assert (=> b!1432908 m!1322797))

(assert (=> b!1432908 m!1322797))

(declare-fun m!1322799 () Bool)

(assert (=> b!1432908 m!1322799))

(declare-fun m!1322801 () Bool)

(assert (=> b!1432908 m!1322801))

(declare-fun m!1322803 () Bool)

(assert (=> b!1432908 m!1322803))

(declare-fun m!1322805 () Bool)

(assert (=> b!1432917 m!1322805))

(declare-fun m!1322807 () Bool)

(assert (=> start!123618 m!1322807))

(declare-fun m!1322809 () Bool)

(assert (=> start!123618 m!1322809))

(declare-fun m!1322811 () Bool)

(assert (=> b!1432918 m!1322811))

(assert (=> b!1432918 m!1322811))

(declare-fun m!1322813 () Bool)

(assert (=> b!1432918 m!1322813))

(declare-fun m!1322815 () Bool)

(assert (=> b!1432910 m!1322815))

(assert (=> b!1432910 m!1322815))

(declare-fun m!1322817 () Bool)

(assert (=> b!1432910 m!1322817))

(assert (=> b!1432907 m!1322811))

(assert (=> b!1432907 m!1322811))

(declare-fun m!1322819 () Bool)

(assert (=> b!1432907 m!1322819))

(assert (=> b!1432915 m!1322801))

(declare-fun m!1322821 () Bool)

(assert (=> b!1432915 m!1322821))

(declare-fun m!1322823 () Bool)

(assert (=> b!1432915 m!1322823))

(declare-fun m!1322825 () Bool)

(assert (=> b!1432915 m!1322825))

(assert (=> b!1432915 m!1322811))

(declare-fun m!1322827 () Bool)

(assert (=> b!1432915 m!1322827))

(declare-fun m!1322829 () Bool)

(assert (=> b!1432911 m!1322829))

(declare-fun m!1322831 () Bool)

(assert (=> b!1432909 m!1322831))

(assert (=> b!1432906 m!1322811))

(assert (=> b!1432906 m!1322811))

(declare-fun m!1322833 () Bool)

(assert (=> b!1432906 m!1322833))

(assert (=> b!1432906 m!1322833))

(assert (=> b!1432906 m!1322811))

(declare-fun m!1322835 () Bool)

(assert (=> b!1432906 m!1322835))

(declare-fun m!1322837 () Bool)

(assert (=> b!1432914 m!1322837))

(assert (=> b!1432916 m!1322811))

(assert (=> b!1432916 m!1322811))

(declare-fun m!1322839 () Bool)

(assert (=> b!1432916 m!1322839))

(check-sat (not start!123618) (not b!1432908) (not b!1432906) (not b!1432907) (not b!1432914) (not b!1432911) (not b!1432916) (not b!1432918) (not b!1432909) (not b!1432915) (not b!1432917) (not b!1432910))
(check-sat)
(get-model)

(declare-fun b!1432969 () Bool)

(declare-fun e!808848 () Bool)

(declare-fun e!808850 () Bool)

(assert (=> b!1432969 (= e!808848 e!808850)))

(declare-fun c!132515 () Bool)

(assert (=> b!1432969 (= c!132515 (validKeyInArray!0 (select (arr!47057 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1432970 () Bool)

(declare-fun e!808849 () Bool)

(assert (=> b!1432970 (= e!808850 e!808849)))

(declare-fun lt!630798 () (_ BitVec 64))

(assert (=> b!1432970 (= lt!630798 (select (arr!47057 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!630797 () Unit!48410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97508 (_ BitVec 64) (_ BitVec 32)) Unit!48410)

(assert (=> b!1432970 (= lt!630797 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630798 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1432970 (arrayContainsKey!0 a!2831 lt!630798 #b00000000000000000000000000000000)))

(declare-fun lt!630799 () Unit!48410)

(assert (=> b!1432970 (= lt!630799 lt!630797)))

(declare-fun res!966939 () Bool)

(assert (=> b!1432970 (= res!966939 (= (seekEntryOrOpen!0 (select (arr!47057 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11358 #b00000000000000000000000000000000)))))

(assert (=> b!1432970 (=> (not res!966939) (not e!808849))))

(declare-fun d!153915 () Bool)

(declare-fun res!966938 () Bool)

(assert (=> d!153915 (=> res!966938 e!808848)))

(assert (=> d!153915 (= res!966938 (bvsge #b00000000000000000000000000000000 (size!47608 a!2831)))))

(assert (=> d!153915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!808848)))

(declare-fun b!1432971 () Bool)

(declare-fun call!67479 () Bool)

(assert (=> b!1432971 (= e!808849 call!67479)))

(declare-fun bm!67476 () Bool)

(assert (=> bm!67476 (= call!67479 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1432972 () Bool)

(assert (=> b!1432972 (= e!808850 call!67479)))

(assert (= (and d!153915 (not res!966938)) b!1432969))

(assert (= (and b!1432969 c!132515) b!1432970))

(assert (= (and b!1432969 (not c!132515)) b!1432972))

(assert (= (and b!1432970 res!966939) b!1432971))

(assert (= (or b!1432971 b!1432972) bm!67476))

(declare-fun m!1322885 () Bool)

(assert (=> b!1432969 m!1322885))

(assert (=> b!1432969 m!1322885))

(declare-fun m!1322887 () Bool)

(assert (=> b!1432969 m!1322887))

(assert (=> b!1432970 m!1322885))

(declare-fun m!1322889 () Bool)

(assert (=> b!1432970 m!1322889))

(declare-fun m!1322891 () Bool)

(assert (=> b!1432970 m!1322891))

(assert (=> b!1432970 m!1322885))

(declare-fun m!1322893 () Bool)

(assert (=> b!1432970 m!1322893))

(declare-fun m!1322895 () Bool)

(assert (=> bm!67476 m!1322895))

(assert (=> b!1432911 d!153915))

(declare-fun d!153917 () Bool)

(assert (=> d!153917 (= (validKeyInArray!0 (select (arr!47057 a!2831) i!982)) (and (not (= (select (arr!47057 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47057 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432910 d!153917))

(declare-fun b!1432983 () Bool)

(declare-fun e!808860 () Bool)

(declare-fun call!67482 () Bool)

(assert (=> b!1432983 (= e!808860 call!67482)))

(declare-fun bm!67479 () Bool)

(declare-fun c!132518 () Bool)

(assert (=> bm!67479 (= call!67482 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132518 (Cons!33743 (select (arr!47057 a!2831) #b00000000000000000000000000000000) Nil!33744) Nil!33744)))))

(declare-fun d!153919 () Bool)

(declare-fun res!966947 () Bool)

(declare-fun e!808861 () Bool)

(assert (=> d!153919 (=> res!966947 e!808861)))

(assert (=> d!153919 (= res!966947 (bvsge #b00000000000000000000000000000000 (size!47608 a!2831)))))

(assert (=> d!153919 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33744) e!808861)))

(declare-fun b!1432984 () Bool)

(assert (=> b!1432984 (= e!808860 call!67482)))

(declare-fun b!1432985 () Bool)

(declare-fun e!808862 () Bool)

(assert (=> b!1432985 (= e!808862 e!808860)))

(assert (=> b!1432985 (= c!132518 (validKeyInArray!0 (select (arr!47057 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1432986 () Bool)

(declare-fun e!808859 () Bool)

(declare-fun contains!9877 (List!33747 (_ BitVec 64)) Bool)

(assert (=> b!1432986 (= e!808859 (contains!9877 Nil!33744 (select (arr!47057 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1432987 () Bool)

(assert (=> b!1432987 (= e!808861 e!808862)))

(declare-fun res!966946 () Bool)

(assert (=> b!1432987 (=> (not res!966946) (not e!808862))))

(assert (=> b!1432987 (= res!966946 (not e!808859))))

(declare-fun res!966948 () Bool)

(assert (=> b!1432987 (=> (not res!966948) (not e!808859))))

(assert (=> b!1432987 (= res!966948 (validKeyInArray!0 (select (arr!47057 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153919 (not res!966947)) b!1432987))

(assert (= (and b!1432987 res!966948) b!1432986))

(assert (= (and b!1432987 res!966946) b!1432985))

(assert (= (and b!1432985 c!132518) b!1432984))

(assert (= (and b!1432985 (not c!132518)) b!1432983))

(assert (= (or b!1432984 b!1432983) bm!67479))

(assert (=> bm!67479 m!1322885))

(declare-fun m!1322897 () Bool)

(assert (=> bm!67479 m!1322897))

(assert (=> b!1432985 m!1322885))

(assert (=> b!1432985 m!1322885))

(assert (=> b!1432985 m!1322887))

(assert (=> b!1432986 m!1322885))

(assert (=> b!1432986 m!1322885))

(declare-fun m!1322899 () Bool)

(assert (=> b!1432986 m!1322899))

(assert (=> b!1432987 m!1322885))

(assert (=> b!1432987 m!1322885))

(assert (=> b!1432987 m!1322887))

(assert (=> b!1432914 d!153919))

(declare-fun d!153921 () Bool)

(assert (=> d!153921 (= (validKeyInArray!0 (select (arr!47057 a!2831) j!81)) (and (not (= (select (arr!47057 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47057 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432916 d!153921))

(declare-fun b!1433006 () Bool)

(declare-fun lt!630804 () SeekEntryResult!11358)

(assert (=> b!1433006 (and (bvsge (index!47825 lt!630804) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630804) (size!47608 lt!630772)))))

(declare-fun e!808875 () Bool)

(assert (=> b!1433006 (= e!808875 (= (select (arr!47057 lt!630772) (index!47825 lt!630804)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808874 () SeekEntryResult!11358)

(declare-fun b!1433007 () Bool)

(assert (=> b!1433007 (= e!808874 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!630768 lt!630772 mask!2608))))

(declare-fun b!1433008 () Bool)

(assert (=> b!1433008 (and (bvsge (index!47825 lt!630804) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630804) (size!47608 lt!630772)))))

(declare-fun res!966956 () Bool)

(assert (=> b!1433008 (= res!966956 (= (select (arr!47057 lt!630772) (index!47825 lt!630804)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433008 (=> res!966956 e!808875)))

(declare-fun b!1433009 () Bool)

(declare-fun e!808877 () SeekEntryResult!11358)

(assert (=> b!1433009 (= e!808877 (Intermediate!11358 true index!585 x!605))))

(declare-fun d!153923 () Bool)

(declare-fun e!808873 () Bool)

(assert (=> d!153923 e!808873))

(declare-fun c!132527 () Bool)

(get-info :version)

(assert (=> d!153923 (= c!132527 (and ((_ is Intermediate!11358) lt!630804) (undefined!12170 lt!630804)))))

(assert (=> d!153923 (= lt!630804 e!808877)))

(declare-fun c!132526 () Bool)

(assert (=> d!153923 (= c!132526 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!630805 () (_ BitVec 64))

(assert (=> d!153923 (= lt!630805 (select (arr!47057 lt!630772) index!585))))

(assert (=> d!153923 (validMask!0 mask!2608)))

(assert (=> d!153923 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630768 lt!630772 mask!2608) lt!630804)))

(declare-fun b!1433010 () Bool)

(assert (=> b!1433010 (and (bvsge (index!47825 lt!630804) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630804) (size!47608 lt!630772)))))

(declare-fun res!966957 () Bool)

(assert (=> b!1433010 (= res!966957 (= (select (arr!47057 lt!630772) (index!47825 lt!630804)) lt!630768))))

(assert (=> b!1433010 (=> res!966957 e!808875)))

(declare-fun e!808876 () Bool)

(assert (=> b!1433010 (= e!808876 e!808875)))

(declare-fun b!1433011 () Bool)

(assert (=> b!1433011 (= e!808877 e!808874)))

(declare-fun c!132525 () Bool)

(assert (=> b!1433011 (= c!132525 (or (= lt!630805 lt!630768) (= (bvadd lt!630805 lt!630805) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433012 () Bool)

(assert (=> b!1433012 (= e!808873 e!808876)))

(declare-fun res!966955 () Bool)

(assert (=> b!1433012 (= res!966955 (and ((_ is Intermediate!11358) lt!630804) (not (undefined!12170 lt!630804)) (bvslt (x!129467 lt!630804) #b01111111111111111111111111111110) (bvsge (x!129467 lt!630804) #b00000000000000000000000000000000) (bvsge (x!129467 lt!630804) x!605)))))

(assert (=> b!1433012 (=> (not res!966955) (not e!808876))))

(declare-fun b!1433013 () Bool)

(assert (=> b!1433013 (= e!808874 (Intermediate!11358 false index!585 x!605))))

(declare-fun b!1433014 () Bool)

(assert (=> b!1433014 (= e!808873 (bvsge (x!129467 lt!630804) #b01111111111111111111111111111110))))

(assert (= (and d!153923 c!132526) b!1433009))

(assert (= (and d!153923 (not c!132526)) b!1433011))

(assert (= (and b!1433011 c!132525) b!1433013))

(assert (= (and b!1433011 (not c!132525)) b!1433007))

(assert (= (and d!153923 c!132527) b!1433014))

(assert (= (and d!153923 (not c!132527)) b!1433012))

(assert (= (and b!1433012 res!966955) b!1433010))

(assert (= (and b!1433010 (not res!966957)) b!1433008))

(assert (= (and b!1433008 (not res!966956)) b!1433006))

(assert (=> b!1433007 m!1322831))

(assert (=> b!1433007 m!1322831))

(declare-fun m!1322901 () Bool)

(assert (=> b!1433007 m!1322901))

(declare-fun m!1322903 () Bool)

(assert (=> b!1433010 m!1322903))

(assert (=> b!1433008 m!1322903))

(assert (=> b!1433006 m!1322903))

(declare-fun m!1322905 () Bool)

(assert (=> d!153923 m!1322905))

(assert (=> d!153923 m!1322807))

(assert (=> b!1432917 d!153923))

(declare-fun b!1433015 () Bool)

(declare-fun lt!630806 () SeekEntryResult!11358)

(assert (=> b!1433015 (and (bvsge (index!47825 lt!630806) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630806) (size!47608 a!2831)))))

(declare-fun e!808880 () Bool)

(assert (=> b!1433015 (= e!808880 (= (select (arr!47057 a!2831) (index!47825 lt!630806)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808879 () SeekEntryResult!11358)

(declare-fun b!1433016 () Bool)

(assert (=> b!1433016 (= e!808879 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47057 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433017 () Bool)

(assert (=> b!1433017 (and (bvsge (index!47825 lt!630806) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630806) (size!47608 a!2831)))))

(declare-fun res!966959 () Bool)

(assert (=> b!1433017 (= res!966959 (= (select (arr!47057 a!2831) (index!47825 lt!630806)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433017 (=> res!966959 e!808880)))

(declare-fun b!1433018 () Bool)

(declare-fun e!808882 () SeekEntryResult!11358)

(assert (=> b!1433018 (= e!808882 (Intermediate!11358 true (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153925 () Bool)

(declare-fun e!808878 () Bool)

(assert (=> d!153925 e!808878))

(declare-fun c!132530 () Bool)

(assert (=> d!153925 (= c!132530 (and ((_ is Intermediate!11358) lt!630806) (undefined!12170 lt!630806)))))

(assert (=> d!153925 (= lt!630806 e!808882)))

(declare-fun c!132529 () Bool)

(assert (=> d!153925 (= c!132529 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630807 () (_ BitVec 64))

(assert (=> d!153925 (= lt!630807 (select (arr!47057 a!2831) (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608)))))

(assert (=> d!153925 (validMask!0 mask!2608)))

(assert (=> d!153925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) (select (arr!47057 a!2831) j!81) a!2831 mask!2608) lt!630806)))

(declare-fun b!1433019 () Bool)

(assert (=> b!1433019 (and (bvsge (index!47825 lt!630806) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630806) (size!47608 a!2831)))))

(declare-fun res!966960 () Bool)

(assert (=> b!1433019 (= res!966960 (= (select (arr!47057 a!2831) (index!47825 lt!630806)) (select (arr!47057 a!2831) j!81)))))

(assert (=> b!1433019 (=> res!966960 e!808880)))

(declare-fun e!808881 () Bool)

(assert (=> b!1433019 (= e!808881 e!808880)))

(declare-fun b!1433020 () Bool)

(assert (=> b!1433020 (= e!808882 e!808879)))

(declare-fun c!132528 () Bool)

(assert (=> b!1433020 (= c!132528 (or (= lt!630807 (select (arr!47057 a!2831) j!81)) (= (bvadd lt!630807 lt!630807) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433021 () Bool)

(assert (=> b!1433021 (= e!808878 e!808881)))

(declare-fun res!966958 () Bool)

(assert (=> b!1433021 (= res!966958 (and ((_ is Intermediate!11358) lt!630806) (not (undefined!12170 lt!630806)) (bvslt (x!129467 lt!630806) #b01111111111111111111111111111110) (bvsge (x!129467 lt!630806) #b00000000000000000000000000000000) (bvsge (x!129467 lt!630806) #b00000000000000000000000000000000)))))

(assert (=> b!1433021 (=> (not res!966958) (not e!808881))))

(declare-fun b!1433022 () Bool)

(assert (=> b!1433022 (= e!808879 (Intermediate!11358 false (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433023 () Bool)

(assert (=> b!1433023 (= e!808878 (bvsge (x!129467 lt!630806) #b01111111111111111111111111111110))))

(assert (= (and d!153925 c!132529) b!1433018))

(assert (= (and d!153925 (not c!132529)) b!1433020))

(assert (= (and b!1433020 c!132528) b!1433022))

(assert (= (and b!1433020 (not c!132528)) b!1433016))

(assert (= (and d!153925 c!132530) b!1433023))

(assert (= (and d!153925 (not c!132530)) b!1433021))

(assert (= (and b!1433021 res!966958) b!1433019))

(assert (= (and b!1433019 (not res!966960)) b!1433017))

(assert (= (and b!1433017 (not res!966959)) b!1433015))

(assert (=> b!1433016 m!1322833))

(declare-fun m!1322907 () Bool)

(assert (=> b!1433016 m!1322907))

(assert (=> b!1433016 m!1322907))

(assert (=> b!1433016 m!1322811))

(declare-fun m!1322909 () Bool)

(assert (=> b!1433016 m!1322909))

(declare-fun m!1322911 () Bool)

(assert (=> b!1433019 m!1322911))

(assert (=> b!1433017 m!1322911))

(assert (=> b!1433015 m!1322911))

(assert (=> d!153925 m!1322833))

(declare-fun m!1322913 () Bool)

(assert (=> d!153925 m!1322913))

(assert (=> d!153925 m!1322807))

(assert (=> b!1432906 d!153925))

(declare-fun d!153927 () Bool)

(declare-fun lt!630813 () (_ BitVec 32))

(declare-fun lt!630812 () (_ BitVec 32))

(assert (=> d!153927 (= lt!630813 (bvmul (bvxor lt!630812 (bvlshr lt!630812 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153927 (= lt!630812 ((_ extract 31 0) (bvand (bvxor (select (arr!47057 a!2831) j!81) (bvlshr (select (arr!47057 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153927 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!966961 (let ((h!35068 ((_ extract 31 0) (bvand (bvxor (select (arr!47057 a!2831) j!81) (bvlshr (select (arr!47057 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129470 (bvmul (bvxor h!35068 (bvlshr h!35068 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129470 (bvlshr x!129470 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!966961 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!966961 #b00000000000000000000000000000000))))))

(assert (=> d!153927 (= (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) (bvand (bvxor lt!630813 (bvlshr lt!630813 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1432906 d!153927))

(declare-fun b!1433024 () Bool)

(declare-fun e!808883 () Bool)

(declare-fun e!808885 () Bool)

(assert (=> b!1433024 (= e!808883 e!808885)))

(declare-fun c!132531 () Bool)

(assert (=> b!1433024 (= c!132531 (validKeyInArray!0 (select (arr!47057 a!2831) j!81)))))

(declare-fun b!1433025 () Bool)

(declare-fun e!808884 () Bool)

(assert (=> b!1433025 (= e!808885 e!808884)))

(declare-fun lt!630815 () (_ BitVec 64))

(assert (=> b!1433025 (= lt!630815 (select (arr!47057 a!2831) j!81))))

(declare-fun lt!630814 () Unit!48410)

(assert (=> b!1433025 (= lt!630814 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630815 j!81))))

(assert (=> b!1433025 (arrayContainsKey!0 a!2831 lt!630815 #b00000000000000000000000000000000)))

(declare-fun lt!630816 () Unit!48410)

(assert (=> b!1433025 (= lt!630816 lt!630814)))

(declare-fun res!966963 () Bool)

(assert (=> b!1433025 (= res!966963 (= (seekEntryOrOpen!0 (select (arr!47057 a!2831) j!81) a!2831 mask!2608) (Found!11358 j!81)))))

(assert (=> b!1433025 (=> (not res!966963) (not e!808884))))

(declare-fun d!153931 () Bool)

(declare-fun res!966962 () Bool)

(assert (=> d!153931 (=> res!966962 e!808883)))

(assert (=> d!153931 (= res!966962 (bvsge j!81 (size!47608 a!2831)))))

(assert (=> d!153931 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!808883)))

(declare-fun b!1433026 () Bool)

(declare-fun call!67483 () Bool)

(assert (=> b!1433026 (= e!808884 call!67483)))

(declare-fun bm!67480 () Bool)

(assert (=> bm!67480 (= call!67483 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433027 () Bool)

(assert (=> b!1433027 (= e!808885 call!67483)))

(assert (= (and d!153931 (not res!966962)) b!1433024))

(assert (= (and b!1433024 c!132531) b!1433025))

(assert (= (and b!1433024 (not c!132531)) b!1433027))

(assert (= (and b!1433025 res!966963) b!1433026))

(assert (= (or b!1433026 b!1433027) bm!67480))

(assert (=> b!1433024 m!1322811))

(assert (=> b!1433024 m!1322811))

(assert (=> b!1433024 m!1322839))

(assert (=> b!1433025 m!1322811))

(declare-fun m!1322915 () Bool)

(assert (=> b!1433025 m!1322915))

(declare-fun m!1322917 () Bool)

(assert (=> b!1433025 m!1322917))

(assert (=> b!1433025 m!1322811))

(assert (=> b!1433025 m!1322813))

(declare-fun m!1322919 () Bool)

(assert (=> bm!67480 m!1322919))

(assert (=> b!1432915 d!153931))

(declare-fun d!153933 () Bool)

(assert (=> d!153933 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630819 () Unit!48410)

(declare-fun choose!38 (array!97508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48410)

(assert (=> d!153933 (= lt!630819 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153933 (validMask!0 mask!2608)))

(assert (=> d!153933 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630819)))

(declare-fun bs!41726 () Bool)

(assert (= bs!41726 d!153933))

(assert (=> bs!41726 m!1322825))

(declare-fun m!1322921 () Bool)

(assert (=> bs!41726 m!1322921))

(assert (=> bs!41726 m!1322807))

(assert (=> b!1432915 d!153933))

(declare-fun d!153937 () Bool)

(assert (=> d!153937 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123618 d!153937))

(declare-fun d!153945 () Bool)

(assert (=> d!153945 (= (array_inv!36002 a!2831) (bvsge (size!47608 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123618 d!153945))

(declare-fun b!1433067 () Bool)

(declare-fun lt!630838 () SeekEntryResult!11358)

(assert (=> b!1433067 (and (bvsge (index!47825 lt!630838) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630838) (size!47608 lt!630772)))))

(declare-fun e!808912 () Bool)

(assert (=> b!1433067 (= e!808912 (= (select (arr!47057 lt!630772) (index!47825 lt!630838)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433068 () Bool)

(declare-fun e!808911 () SeekEntryResult!11358)

(assert (=> b!1433068 (= e!808911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!630768 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!630768 lt!630772 mask!2608))))

(declare-fun b!1433069 () Bool)

(assert (=> b!1433069 (and (bvsge (index!47825 lt!630838) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630838) (size!47608 lt!630772)))))

(declare-fun res!966980 () Bool)

(assert (=> b!1433069 (= res!966980 (= (select (arr!47057 lt!630772) (index!47825 lt!630838)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433069 (=> res!966980 e!808912)))

(declare-fun b!1433070 () Bool)

(declare-fun e!808914 () SeekEntryResult!11358)

(assert (=> b!1433070 (= e!808914 (Intermediate!11358 true (toIndex!0 lt!630768 mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153947 () Bool)

(declare-fun e!808910 () Bool)

(assert (=> d!153947 e!808910))

(declare-fun c!132546 () Bool)

(assert (=> d!153947 (= c!132546 (and ((_ is Intermediate!11358) lt!630838) (undefined!12170 lt!630838)))))

(assert (=> d!153947 (= lt!630838 e!808914)))

(declare-fun c!132545 () Bool)

(assert (=> d!153947 (= c!132545 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630839 () (_ BitVec 64))

(assert (=> d!153947 (= lt!630839 (select (arr!47057 lt!630772) (toIndex!0 lt!630768 mask!2608)))))

(assert (=> d!153947 (validMask!0 mask!2608)))

(assert (=> d!153947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630768 mask!2608) lt!630768 lt!630772 mask!2608) lt!630838)))

(declare-fun b!1433071 () Bool)

(assert (=> b!1433071 (and (bvsge (index!47825 lt!630838) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630838) (size!47608 lt!630772)))))

(declare-fun res!966981 () Bool)

(assert (=> b!1433071 (= res!966981 (= (select (arr!47057 lt!630772) (index!47825 lt!630838)) lt!630768))))

(assert (=> b!1433071 (=> res!966981 e!808912)))

(declare-fun e!808913 () Bool)

(assert (=> b!1433071 (= e!808913 e!808912)))

(declare-fun b!1433072 () Bool)

(assert (=> b!1433072 (= e!808914 e!808911)))

(declare-fun c!132544 () Bool)

(assert (=> b!1433072 (= c!132544 (or (= lt!630839 lt!630768) (= (bvadd lt!630839 lt!630839) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433073 () Bool)

(assert (=> b!1433073 (= e!808910 e!808913)))

(declare-fun res!966979 () Bool)

(assert (=> b!1433073 (= res!966979 (and ((_ is Intermediate!11358) lt!630838) (not (undefined!12170 lt!630838)) (bvslt (x!129467 lt!630838) #b01111111111111111111111111111110) (bvsge (x!129467 lt!630838) #b00000000000000000000000000000000) (bvsge (x!129467 lt!630838) #b00000000000000000000000000000000)))))

(assert (=> b!1433073 (=> (not res!966979) (not e!808913))))

(declare-fun b!1433074 () Bool)

(assert (=> b!1433074 (= e!808911 (Intermediate!11358 false (toIndex!0 lt!630768 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433075 () Bool)

(assert (=> b!1433075 (= e!808910 (bvsge (x!129467 lt!630838) #b01111111111111111111111111111110))))

(assert (= (and d!153947 c!132545) b!1433070))

(assert (= (and d!153947 (not c!132545)) b!1433072))

(assert (= (and b!1433072 c!132544) b!1433074))

(assert (= (and b!1433072 (not c!132544)) b!1433068))

(assert (= (and d!153947 c!132546) b!1433075))

(assert (= (and d!153947 (not c!132546)) b!1433073))

(assert (= (and b!1433073 res!966979) b!1433071))

(assert (= (and b!1433071 (not res!966981)) b!1433069))

(assert (= (and b!1433069 (not res!966980)) b!1433067))

(assert (=> b!1433068 m!1322797))

(declare-fun m!1322941 () Bool)

(assert (=> b!1433068 m!1322941))

(assert (=> b!1433068 m!1322941))

(declare-fun m!1322943 () Bool)

(assert (=> b!1433068 m!1322943))

(declare-fun m!1322945 () Bool)

(assert (=> b!1433071 m!1322945))

(assert (=> b!1433069 m!1322945))

(assert (=> b!1433067 m!1322945))

(assert (=> d!153947 m!1322797))

(declare-fun m!1322947 () Bool)

(assert (=> d!153947 m!1322947))

(assert (=> d!153947 m!1322807))

(assert (=> b!1432908 d!153947))

(declare-fun d!153951 () Bool)

(declare-fun lt!630843 () (_ BitVec 32))

(declare-fun lt!630842 () (_ BitVec 32))

(assert (=> d!153951 (= lt!630843 (bvmul (bvxor lt!630842 (bvlshr lt!630842 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153951 (= lt!630842 ((_ extract 31 0) (bvand (bvxor lt!630768 (bvlshr lt!630768 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153951 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!966961 (let ((h!35068 ((_ extract 31 0) (bvand (bvxor lt!630768 (bvlshr lt!630768 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129470 (bvmul (bvxor h!35068 (bvlshr h!35068 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129470 (bvlshr x!129470 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!966961 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!966961 #b00000000000000000000000000000000))))))

(assert (=> d!153951 (= (toIndex!0 lt!630768 mask!2608) (bvand (bvxor lt!630843 (bvlshr lt!630843 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1432908 d!153951))

(declare-fun d!153953 () Bool)

(declare-fun lt!630846 () (_ BitVec 32))

(assert (=> d!153953 (and (bvsge lt!630846 #b00000000000000000000000000000000) (bvslt lt!630846 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!153953 (= lt!630846 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!153953 (validMask!0 mask!2608)))

(assert (=> d!153953 (= (nextIndex!0 index!585 x!605 mask!2608) lt!630846)))

(declare-fun bs!41728 () Bool)

(assert (= bs!41728 d!153953))

(declare-fun m!1322957 () Bool)

(assert (=> bs!41728 m!1322957))

(assert (=> bs!41728 m!1322807))

(assert (=> b!1432909 d!153953))

(declare-fun b!1433085 () Bool)

(declare-fun lt!630847 () SeekEntryResult!11358)

(assert (=> b!1433085 (and (bvsge (index!47825 lt!630847) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630847) (size!47608 a!2831)))))

(declare-fun e!808922 () Bool)

(assert (=> b!1433085 (= e!808922 (= (select (arr!47057 a!2831) (index!47825 lt!630847)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808921 () SeekEntryResult!11358)

(declare-fun b!1433086 () Bool)

(assert (=> b!1433086 (= e!808921 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47057 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433087 () Bool)

(assert (=> b!1433087 (and (bvsge (index!47825 lt!630847) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630847) (size!47608 a!2831)))))

(declare-fun res!966987 () Bool)

(assert (=> b!1433087 (= res!966987 (= (select (arr!47057 a!2831) (index!47825 lt!630847)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433087 (=> res!966987 e!808922)))

(declare-fun b!1433088 () Bool)

(declare-fun e!808924 () SeekEntryResult!11358)

(assert (=> b!1433088 (= e!808924 (Intermediate!11358 true index!585 x!605))))

(declare-fun d!153957 () Bool)

(declare-fun e!808920 () Bool)

(assert (=> d!153957 e!808920))

(declare-fun c!132552 () Bool)

(assert (=> d!153957 (= c!132552 (and ((_ is Intermediate!11358) lt!630847) (undefined!12170 lt!630847)))))

(assert (=> d!153957 (= lt!630847 e!808924)))

(declare-fun c!132551 () Bool)

(assert (=> d!153957 (= c!132551 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!630848 () (_ BitVec 64))

(assert (=> d!153957 (= lt!630848 (select (arr!47057 a!2831) index!585))))

(assert (=> d!153957 (validMask!0 mask!2608)))

(assert (=> d!153957 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47057 a!2831) j!81) a!2831 mask!2608) lt!630847)))

(declare-fun b!1433089 () Bool)

(assert (=> b!1433089 (and (bvsge (index!47825 lt!630847) #b00000000000000000000000000000000) (bvslt (index!47825 lt!630847) (size!47608 a!2831)))))

(declare-fun res!966988 () Bool)

(assert (=> b!1433089 (= res!966988 (= (select (arr!47057 a!2831) (index!47825 lt!630847)) (select (arr!47057 a!2831) j!81)))))

(assert (=> b!1433089 (=> res!966988 e!808922)))

(declare-fun e!808923 () Bool)

(assert (=> b!1433089 (= e!808923 e!808922)))

(declare-fun b!1433090 () Bool)

(assert (=> b!1433090 (= e!808924 e!808921)))

(declare-fun c!132550 () Bool)

(assert (=> b!1433090 (= c!132550 (or (= lt!630848 (select (arr!47057 a!2831) j!81)) (= (bvadd lt!630848 lt!630848) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433091 () Bool)

(assert (=> b!1433091 (= e!808920 e!808923)))

(declare-fun res!966986 () Bool)

(assert (=> b!1433091 (= res!966986 (and ((_ is Intermediate!11358) lt!630847) (not (undefined!12170 lt!630847)) (bvslt (x!129467 lt!630847) #b01111111111111111111111111111110) (bvsge (x!129467 lt!630847) #b00000000000000000000000000000000) (bvsge (x!129467 lt!630847) x!605)))))

(assert (=> b!1433091 (=> (not res!966986) (not e!808923))))

(declare-fun b!1433092 () Bool)

(assert (=> b!1433092 (= e!808921 (Intermediate!11358 false index!585 x!605))))

(declare-fun b!1433093 () Bool)

(assert (=> b!1433093 (= e!808920 (bvsge (x!129467 lt!630847) #b01111111111111111111111111111110))))

(assert (= (and d!153957 c!132551) b!1433088))

(assert (= (and d!153957 (not c!132551)) b!1433090))

(assert (= (and b!1433090 c!132550) b!1433092))

(assert (= (and b!1433090 (not c!132550)) b!1433086))

(assert (= (and d!153957 c!132552) b!1433093))

(assert (= (and d!153957 (not c!132552)) b!1433091))

(assert (= (and b!1433091 res!966986) b!1433089))

(assert (= (and b!1433089 (not res!966988)) b!1433087))

(assert (= (and b!1433087 (not res!966987)) b!1433085))

(assert (=> b!1433086 m!1322831))

(assert (=> b!1433086 m!1322831))

(assert (=> b!1433086 m!1322811))

(declare-fun m!1322959 () Bool)

(assert (=> b!1433086 m!1322959))

(declare-fun m!1322961 () Bool)

(assert (=> b!1433089 m!1322961))

(assert (=> b!1433087 m!1322961))

(assert (=> b!1433085 m!1322961))

(assert (=> d!153957 m!1322823))

(assert (=> d!153957 m!1322807))

(assert (=> b!1432907 d!153957))

(declare-fun b!1433145 () Bool)

(declare-fun e!808956 () SeekEntryResult!11358)

(declare-fun lt!630885 () SeekEntryResult!11358)

(assert (=> b!1433145 (= e!808956 (MissingZero!11358 (index!47825 lt!630885)))))

(declare-fun b!1433146 () Bool)

(declare-fun c!132571 () Bool)

(declare-fun lt!630887 () (_ BitVec 64))

(assert (=> b!1433146 (= c!132571 (= lt!630887 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808955 () SeekEntryResult!11358)

(assert (=> b!1433146 (= e!808955 e!808956)))

(declare-fun b!1433147 () Bool)

(assert (=> b!1433147 (= e!808955 (Found!11358 (index!47825 lt!630885)))))

(declare-fun b!1433148 () Bool)

(declare-fun e!808957 () SeekEntryResult!11358)

(assert (=> b!1433148 (= e!808957 e!808955)))

(assert (=> b!1433148 (= lt!630887 (select (arr!47057 a!2831) (index!47825 lt!630885)))))

(declare-fun c!132572 () Bool)

(assert (=> b!1433148 (= c!132572 (= lt!630887 (select (arr!47057 a!2831) j!81)))))

(declare-fun d!153959 () Bool)

(declare-fun lt!630886 () SeekEntryResult!11358)

(assert (=> d!153959 (and (or ((_ is Undefined!11358) lt!630886) (not ((_ is Found!11358) lt!630886)) (and (bvsge (index!47824 lt!630886) #b00000000000000000000000000000000) (bvslt (index!47824 lt!630886) (size!47608 a!2831)))) (or ((_ is Undefined!11358) lt!630886) ((_ is Found!11358) lt!630886) (not ((_ is MissingZero!11358) lt!630886)) (and (bvsge (index!47823 lt!630886) #b00000000000000000000000000000000) (bvslt (index!47823 lt!630886) (size!47608 a!2831)))) (or ((_ is Undefined!11358) lt!630886) ((_ is Found!11358) lt!630886) ((_ is MissingZero!11358) lt!630886) (not ((_ is MissingVacant!11358) lt!630886)) (and (bvsge (index!47826 lt!630886) #b00000000000000000000000000000000) (bvslt (index!47826 lt!630886) (size!47608 a!2831)))) (or ((_ is Undefined!11358) lt!630886) (ite ((_ is Found!11358) lt!630886) (= (select (arr!47057 a!2831) (index!47824 lt!630886)) (select (arr!47057 a!2831) j!81)) (ite ((_ is MissingZero!11358) lt!630886) (= (select (arr!47057 a!2831) (index!47823 lt!630886)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11358) lt!630886) (= (select (arr!47057 a!2831) (index!47826 lt!630886)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153959 (= lt!630886 e!808957)))

(declare-fun c!132573 () Bool)

(assert (=> d!153959 (= c!132573 (and ((_ is Intermediate!11358) lt!630885) (undefined!12170 lt!630885)))))

(assert (=> d!153959 (= lt!630885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47057 a!2831) j!81) mask!2608) (select (arr!47057 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153959 (validMask!0 mask!2608)))

(assert (=> d!153959 (= (seekEntryOrOpen!0 (select (arr!47057 a!2831) j!81) a!2831 mask!2608) lt!630886)))

(declare-fun b!1433149 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97508 (_ BitVec 32)) SeekEntryResult!11358)

(assert (=> b!1433149 (= e!808956 (seekKeyOrZeroReturnVacant!0 (x!129467 lt!630885) (index!47825 lt!630885) (index!47825 lt!630885) (select (arr!47057 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433150 () Bool)

(assert (=> b!1433150 (= e!808957 Undefined!11358)))

(assert (= (and d!153959 c!132573) b!1433150))

(assert (= (and d!153959 (not c!132573)) b!1433148))

(assert (= (and b!1433148 c!132572) b!1433147))

(assert (= (and b!1433148 (not c!132572)) b!1433146))

(assert (= (and b!1433146 c!132571) b!1433145))

(assert (= (and b!1433146 (not c!132571)) b!1433149))

(declare-fun m!1322979 () Bool)

(assert (=> b!1433148 m!1322979))

(declare-fun m!1322981 () Bool)

(assert (=> d!153959 m!1322981))

(declare-fun m!1322983 () Bool)

(assert (=> d!153959 m!1322983))

(assert (=> d!153959 m!1322833))

(assert (=> d!153959 m!1322811))

(assert (=> d!153959 m!1322835))

(assert (=> d!153959 m!1322811))

(assert (=> d!153959 m!1322833))

(assert (=> d!153959 m!1322807))

(declare-fun m!1322985 () Bool)

(assert (=> d!153959 m!1322985))

(assert (=> b!1433149 m!1322811))

(declare-fun m!1322987 () Bool)

(assert (=> b!1433149 m!1322987))

(assert (=> b!1432918 d!153959))

(check-sat (not bm!67479) (not bm!67476) (not b!1433024) (not d!153959) (not d!153957) (not d!153947) (not b!1432985) (not d!153953) (not d!153923) (not b!1432970) (not d!153933) (not b!1433149) (not b!1432969) (not b!1433007) (not d!153925) (not b!1433086) (not b!1433025) (not b!1432987) (not bm!67480) (not b!1433016) (not b!1433068) (not b!1432986))
(check-sat)
