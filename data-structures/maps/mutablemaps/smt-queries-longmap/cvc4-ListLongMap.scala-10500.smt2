; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123620 () Bool)

(assert start!123620)

(declare-fun b!1432947 () Bool)

(declare-fun e!808840 () Bool)

(declare-fun e!808838 () Bool)

(assert (=> b!1432947 (= e!808840 (not e!808838))))

(declare-fun res!966928 () Bool)

(assert (=> b!1432947 (=> res!966928 e!808838)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97510 0))(
  ( (array!97511 (arr!47058 (Array (_ BitVec 32) (_ BitVec 64))) (size!47609 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97510)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432947 (= res!966928 (or (= (select (arr!47058 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47058 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47058 a!2831) index!585) (select (arr!47058 a!2831) j!81)) (= (select (store (arr!47058 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808836 () Bool)

(assert (=> b!1432947 e!808836))

(declare-fun res!966933 () Bool)

(assert (=> b!1432947 (=> (not res!966933) (not e!808836))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97510 (_ BitVec 32)) Bool)

(assert (=> b!1432947 (= res!966933 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48412 0))(
  ( (Unit!48413) )
))
(declare-fun lt!630788 () Unit!48412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48412)

(assert (=> b!1432947 (= lt!630788 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432948 () Bool)

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1432948 (= e!808838 (and (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110)))))

(declare-fun lt!630790 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432948 (= lt!630790 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432950 () Bool)

(declare-fun res!966920 () Bool)

(declare-fun e!808839 () Bool)

(assert (=> b!1432950 (=> (not res!966920) (not e!808839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432950 (= res!966920 (validKeyInArray!0 (select (arr!47058 a!2831) i!982)))))

(declare-fun b!1432951 () Bool)

(declare-fun res!966932 () Bool)

(assert (=> b!1432951 (=> (not res!966932) (not e!808839))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432951 (= res!966932 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47609 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47609 a!2831))))))

(declare-fun b!1432952 () Bool)

(declare-fun e!808837 () Bool)

(assert (=> b!1432952 (= e!808839 e!808837)))

(declare-fun res!966922 () Bool)

(assert (=> b!1432952 (=> (not res!966922) (not e!808837))))

(declare-datatypes ((SeekEntryResult!11359 0))(
  ( (MissingZero!11359 (index!47827 (_ BitVec 32))) (Found!11359 (index!47828 (_ BitVec 32))) (Intermediate!11359 (undefined!12171 Bool) (index!47829 (_ BitVec 32)) (x!129468 (_ BitVec 32))) (Undefined!11359) (MissingVacant!11359 (index!47830 (_ BitVec 32))) )
))
(declare-fun lt!630787 () SeekEntryResult!11359)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97510 (_ BitVec 32)) SeekEntryResult!11359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432952 (= res!966922 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47058 a!2831) j!81) mask!2608) (select (arr!47058 a!2831) j!81) a!2831 mask!2608) lt!630787))))

(assert (=> b!1432952 (= lt!630787 (Intermediate!11359 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432953 () Bool)

(declare-fun res!966923 () Bool)

(assert (=> b!1432953 (=> (not res!966923) (not e!808840))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432953 (= res!966923 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432954 () Bool)

(assert (=> b!1432954 (= e!808837 e!808840)))

(declare-fun res!966921 () Bool)

(assert (=> b!1432954 (=> (not res!966921) (not e!808840))))

(declare-fun lt!630786 () array!97510)

(declare-fun lt!630785 () SeekEntryResult!11359)

(declare-fun lt!630789 () (_ BitVec 64))

(assert (=> b!1432954 (= res!966921 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630789 mask!2608) lt!630789 lt!630786 mask!2608) lt!630785))))

(assert (=> b!1432954 (= lt!630785 (Intermediate!11359 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432954 (= lt!630789 (select (store (arr!47058 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432954 (= lt!630786 (array!97511 (store (arr!47058 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47609 a!2831)))))

(declare-fun b!1432955 () Bool)

(declare-fun res!966929 () Bool)

(assert (=> b!1432955 (=> (not res!966929) (not e!808840))))

(assert (=> b!1432955 (= res!966929 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47058 a!2831) j!81) a!2831 mask!2608) lt!630787))))

(declare-fun b!1432956 () Bool)

(declare-fun res!966927 () Bool)

(assert (=> b!1432956 (=> (not res!966927) (not e!808839))))

(assert (=> b!1432956 (= res!966927 (validKeyInArray!0 (select (arr!47058 a!2831) j!81)))))

(declare-fun b!1432957 () Bool)

(declare-fun res!966925 () Bool)

(assert (=> b!1432957 (=> (not res!966925) (not e!808839))))

(assert (=> b!1432957 (= res!966925 (and (= (size!47609 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47609 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47609 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432958 () Bool)

(declare-fun res!966924 () Bool)

(assert (=> b!1432958 (=> (not res!966924) (not e!808840))))

(assert (=> b!1432958 (= res!966924 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630789 lt!630786 mask!2608) lt!630785))))

(declare-fun res!966931 () Bool)

(assert (=> start!123620 (=> (not res!966931) (not e!808839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123620 (= res!966931 (validMask!0 mask!2608))))

(assert (=> start!123620 e!808839))

(assert (=> start!123620 true))

(declare-fun array_inv!36003 (array!97510) Bool)

(assert (=> start!123620 (array_inv!36003 a!2831)))

(declare-fun b!1432949 () Bool)

(declare-fun res!966926 () Bool)

(assert (=> b!1432949 (=> (not res!966926) (not e!808839))))

(assert (=> b!1432949 (= res!966926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432959 () Bool)

(declare-fun res!966930 () Bool)

(assert (=> b!1432959 (=> (not res!966930) (not e!808839))))

(declare-datatypes ((List!33748 0))(
  ( (Nil!33745) (Cons!33744 (h!35067 (_ BitVec 64)) (t!48449 List!33748)) )
))
(declare-fun arrayNoDuplicates!0 (array!97510 (_ BitVec 32) List!33748) Bool)

(assert (=> b!1432959 (= res!966930 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33745))))

(declare-fun b!1432960 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97510 (_ BitVec 32)) SeekEntryResult!11359)

(assert (=> b!1432960 (= e!808836 (= (seekEntryOrOpen!0 (select (arr!47058 a!2831) j!81) a!2831 mask!2608) (Found!11359 j!81)))))

(assert (= (and start!123620 res!966931) b!1432957))

(assert (= (and b!1432957 res!966925) b!1432950))

(assert (= (and b!1432950 res!966920) b!1432956))

(assert (= (and b!1432956 res!966927) b!1432949))

(assert (= (and b!1432949 res!966926) b!1432959))

(assert (= (and b!1432959 res!966930) b!1432951))

(assert (= (and b!1432951 res!966932) b!1432952))

(assert (= (and b!1432952 res!966922) b!1432954))

(assert (= (and b!1432954 res!966921) b!1432955))

(assert (= (and b!1432955 res!966929) b!1432958))

(assert (= (and b!1432958 res!966924) b!1432953))

(assert (= (and b!1432953 res!966923) b!1432947))

(assert (= (and b!1432947 res!966933) b!1432960))

(assert (= (and b!1432947 (not res!966928)) b!1432948))

(declare-fun m!1322841 () Bool)

(assert (=> b!1432950 m!1322841))

(assert (=> b!1432950 m!1322841))

(declare-fun m!1322843 () Bool)

(assert (=> b!1432950 m!1322843))

(declare-fun m!1322845 () Bool)

(assert (=> b!1432959 m!1322845))

(declare-fun m!1322847 () Bool)

(assert (=> b!1432949 m!1322847))

(declare-fun m!1322849 () Bool)

(assert (=> b!1432960 m!1322849))

(assert (=> b!1432960 m!1322849))

(declare-fun m!1322851 () Bool)

(assert (=> b!1432960 m!1322851))

(declare-fun m!1322853 () Bool)

(assert (=> b!1432954 m!1322853))

(assert (=> b!1432954 m!1322853))

(declare-fun m!1322855 () Bool)

(assert (=> b!1432954 m!1322855))

(declare-fun m!1322857 () Bool)

(assert (=> b!1432954 m!1322857))

(declare-fun m!1322859 () Bool)

(assert (=> b!1432954 m!1322859))

(assert (=> b!1432952 m!1322849))

(assert (=> b!1432952 m!1322849))

(declare-fun m!1322861 () Bool)

(assert (=> b!1432952 m!1322861))

(assert (=> b!1432952 m!1322861))

(assert (=> b!1432952 m!1322849))

(declare-fun m!1322863 () Bool)

(assert (=> b!1432952 m!1322863))

(assert (=> b!1432947 m!1322857))

(declare-fun m!1322865 () Bool)

(assert (=> b!1432947 m!1322865))

(declare-fun m!1322867 () Bool)

(assert (=> b!1432947 m!1322867))

(declare-fun m!1322869 () Bool)

(assert (=> b!1432947 m!1322869))

(assert (=> b!1432947 m!1322849))

(declare-fun m!1322871 () Bool)

(assert (=> b!1432947 m!1322871))

(declare-fun m!1322873 () Bool)

(assert (=> b!1432948 m!1322873))

(assert (=> b!1432955 m!1322849))

(assert (=> b!1432955 m!1322849))

(declare-fun m!1322875 () Bool)

(assert (=> b!1432955 m!1322875))

(declare-fun m!1322877 () Bool)

(assert (=> b!1432958 m!1322877))

(assert (=> b!1432956 m!1322849))

(assert (=> b!1432956 m!1322849))

(declare-fun m!1322879 () Bool)

(assert (=> b!1432956 m!1322879))

(declare-fun m!1322881 () Bool)

(assert (=> start!123620 m!1322881))

(declare-fun m!1322883 () Bool)

(assert (=> start!123620 m!1322883))

(push 1)

(assert (not b!1432956))

(assert (not start!123620))

(assert (not b!1432960))

(assert (not b!1432952))

(assert (not b!1432948))

(assert (not b!1432954))

(assert (not b!1432950))

(assert (not b!1432959))

(assert (not b!1432955))

(assert (not b!1432958))

(assert (not b!1432949))

(assert (not b!1432947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1433058 () Bool)

(declare-fun e!808906 () SeekEntryResult!11359)

(declare-fun e!808909 () SeekEntryResult!11359)

(assert (=> b!1433058 (= e!808906 e!808909)))

(declare-fun lt!630837 () (_ BitVec 64))

(declare-fun c!132542 () Bool)

(assert (=> b!1433058 (= c!132542 (or (= lt!630837 (select (arr!47058 a!2831) j!81)) (= (bvadd lt!630837 lt!630837) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433059 () Bool)

(declare-fun lt!630836 () SeekEntryResult!11359)

(assert (=> b!1433059 (and (bvsge (index!47829 lt!630836) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630836) (size!47609 a!2831)))))

(declare-fun res!966978 () Bool)

(assert (=> b!1433059 (= res!966978 (= (select (arr!47058 a!2831) (index!47829 lt!630836)) (select (arr!47058 a!2831) j!81)))))

(declare-fun e!808905 () Bool)

(assert (=> b!1433059 (=> res!966978 e!808905)))

(declare-fun e!808908 () Bool)

(assert (=> b!1433059 (= e!808908 e!808905)))

(declare-fun b!1433060 () Bool)

(assert (=> b!1433060 (and (bvsge (index!47829 lt!630836) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630836) (size!47609 a!2831)))))

(declare-fun res!966976 () Bool)

(assert (=> b!1433060 (= res!966976 (= (select (arr!47058 a!2831) (index!47829 lt!630836)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433060 (=> res!966976 e!808905)))

(declare-fun b!1433061 () Bool)

(assert (=> b!1433061 (= e!808906 (Intermediate!11359 true index!585 x!605))))

(declare-fun b!1433062 () Bool)

(declare-fun e!808907 () Bool)

(assert (=> b!1433062 (= e!808907 e!808908)))

(declare-fun res!966977 () Bool)

(assert (=> b!1433062 (= res!966977 (and (is-Intermediate!11359 lt!630836) (not (undefined!12171 lt!630836)) (bvslt (x!129468 lt!630836) #b01111111111111111111111111111110) (bvsge (x!129468 lt!630836) #b00000000000000000000000000000000) (bvsge (x!129468 lt!630836) x!605)))))

(assert (=> b!1433062 (=> (not res!966977) (not e!808908))))

(declare-fun b!1433063 () Bool)

(assert (=> b!1433063 (and (bvsge (index!47829 lt!630836) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630836) (size!47609 a!2831)))))

(assert (=> b!1433063 (= e!808905 (= (select (arr!47058 a!2831) (index!47829 lt!630836)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153929 () Bool)

(assert (=> d!153929 e!808907))

(declare-fun c!132543 () Bool)

(assert (=> d!153929 (= c!132543 (and (is-Intermediate!11359 lt!630836) (undefined!12171 lt!630836)))))

(assert (=> d!153929 (= lt!630836 e!808906)))

(declare-fun c!132541 () Bool)

(assert (=> d!153929 (= c!132541 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153929 (= lt!630837 (select (arr!47058 a!2831) index!585))))

(assert (=> d!153929 (validMask!0 mask!2608)))

(assert (=> d!153929 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47058 a!2831) j!81) a!2831 mask!2608) lt!630836)))

(declare-fun b!1433064 () Bool)

(assert (=> b!1433064 (= e!808909 (Intermediate!11359 false index!585 x!605))))

(declare-fun b!1433065 () Bool)

(assert (=> b!1433065 (= e!808907 (bvsge (x!129468 lt!630836) #b01111111111111111111111111111110))))

(declare-fun b!1433066 () Bool)

(assert (=> b!1433066 (= e!808909 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47058 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153929 c!132541) b!1433061))

(assert (= (and d!153929 (not c!132541)) b!1433058))

(assert (= (and b!1433058 c!132542) b!1433064))

(assert (= (and b!1433058 (not c!132542)) b!1433066))

(assert (= (and d!153929 c!132543) b!1433065))

(assert (= (and d!153929 (not c!132543)) b!1433062))

(assert (= (and b!1433062 res!966977) b!1433059))

(assert (= (and b!1433059 (not res!966978)) b!1433060))

(assert (= (and b!1433060 (not res!966976)) b!1433063))

(declare-fun m!1322937 () Bool)

(assert (=> b!1433063 m!1322937))

(assert (=> b!1433059 m!1322937))

(assert (=> b!1433060 m!1322937))

(assert (=> b!1433066 m!1322873))

(assert (=> b!1433066 m!1322873))

(assert (=> b!1433066 m!1322849))

(declare-fun m!1322939 () Bool)

(assert (=> b!1433066 m!1322939))

(assert (=> d!153929 m!1322867))

(assert (=> d!153929 m!1322881))

(assert (=> b!1432955 d!153929))

(declare-fun b!1433076 () Bool)

(declare-fun e!808916 () SeekEntryResult!11359)

(declare-fun e!808919 () SeekEntryResult!11359)

(assert (=> b!1433076 (= e!808916 e!808919)))

(declare-fun c!132548 () Bool)

(declare-fun lt!630841 () (_ BitVec 64))

(assert (=> b!1433076 (= c!132548 (or (= lt!630841 lt!630789) (= (bvadd lt!630841 lt!630841) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433077 () Bool)

(declare-fun lt!630840 () SeekEntryResult!11359)

(assert (=> b!1433077 (and (bvsge (index!47829 lt!630840) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630840) (size!47609 lt!630786)))))

(declare-fun res!966984 () Bool)

(assert (=> b!1433077 (= res!966984 (= (select (arr!47058 lt!630786) (index!47829 lt!630840)) lt!630789))))

(declare-fun e!808915 () Bool)

(assert (=> b!1433077 (=> res!966984 e!808915)))

(declare-fun e!808918 () Bool)

(assert (=> b!1433077 (= e!808918 e!808915)))

(declare-fun b!1433078 () Bool)

(assert (=> b!1433078 (and (bvsge (index!47829 lt!630840) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630840) (size!47609 lt!630786)))))

(declare-fun res!966982 () Bool)

(assert (=> b!1433078 (= res!966982 (= (select (arr!47058 lt!630786) (index!47829 lt!630840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433078 (=> res!966982 e!808915)))

(declare-fun b!1433079 () Bool)

(assert (=> b!1433079 (= e!808916 (Intermediate!11359 true (toIndex!0 lt!630789 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433080 () Bool)

(declare-fun e!808917 () Bool)

(assert (=> b!1433080 (= e!808917 e!808918)))

(declare-fun res!966983 () Bool)

(assert (=> b!1433080 (= res!966983 (and (is-Intermediate!11359 lt!630840) (not (undefined!12171 lt!630840)) (bvslt (x!129468 lt!630840) #b01111111111111111111111111111110) (bvsge (x!129468 lt!630840) #b00000000000000000000000000000000) (bvsge (x!129468 lt!630840) #b00000000000000000000000000000000)))))

(assert (=> b!1433080 (=> (not res!966983) (not e!808918))))

(declare-fun b!1433081 () Bool)

(assert (=> b!1433081 (and (bvsge (index!47829 lt!630840) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630840) (size!47609 lt!630786)))))

(assert (=> b!1433081 (= e!808915 (= (select (arr!47058 lt!630786) (index!47829 lt!630840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153949 () Bool)

(assert (=> d!153949 e!808917))

(declare-fun c!132549 () Bool)

(assert (=> d!153949 (= c!132549 (and (is-Intermediate!11359 lt!630840) (undefined!12171 lt!630840)))))

(assert (=> d!153949 (= lt!630840 e!808916)))

(declare-fun c!132547 () Bool)

(assert (=> d!153949 (= c!132547 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153949 (= lt!630841 (select (arr!47058 lt!630786) (toIndex!0 lt!630789 mask!2608)))))

(assert (=> d!153949 (validMask!0 mask!2608)))

(assert (=> d!153949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630789 mask!2608) lt!630789 lt!630786 mask!2608) lt!630840)))

(declare-fun b!1433082 () Bool)

(assert (=> b!1433082 (= e!808919 (Intermediate!11359 false (toIndex!0 lt!630789 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433083 () Bool)

(assert (=> b!1433083 (= e!808917 (bvsge (x!129468 lt!630840) #b01111111111111111111111111111110))))

(declare-fun b!1433084 () Bool)

(assert (=> b!1433084 (= e!808919 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!630789 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!630789 lt!630786 mask!2608))))

(assert (= (and d!153949 c!132547) b!1433079))

(assert (= (and d!153949 (not c!132547)) b!1433076))

(assert (= (and b!1433076 c!132548) b!1433082))

(assert (= (and b!1433076 (not c!132548)) b!1433084))

(assert (= (and d!153949 c!132549) b!1433083))

(assert (= (and d!153949 (not c!132549)) b!1433080))

(assert (= (and b!1433080 res!966983) b!1433077))

(assert (= (and b!1433077 (not res!966984)) b!1433078))

(assert (= (and b!1433078 (not res!966982)) b!1433081))

(declare-fun m!1322949 () Bool)

(assert (=> b!1433081 m!1322949))

(assert (=> b!1433077 m!1322949))

(assert (=> b!1433078 m!1322949))

(assert (=> b!1433084 m!1322853))

(declare-fun m!1322951 () Bool)

(assert (=> b!1433084 m!1322951))

(assert (=> b!1433084 m!1322951))

(declare-fun m!1322953 () Bool)

(assert (=> b!1433084 m!1322953))

(assert (=> d!153949 m!1322853))

(declare-fun m!1322955 () Bool)

(assert (=> d!153949 m!1322955))

(assert (=> d!153949 m!1322881))

(assert (=> b!1432954 d!153949))

(declare-fun d!153955 () Bool)

(declare-fun lt!630854 () (_ BitVec 32))

(declare-fun lt!630853 () (_ BitVec 32))

(assert (=> d!153955 (= lt!630854 (bvmul (bvxor lt!630853 (bvlshr lt!630853 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153955 (= lt!630853 ((_ extract 31 0) (bvand (bvxor lt!630789 (bvlshr lt!630789 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153955 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!966985 (let ((h!35069 ((_ extract 31 0) (bvand (bvxor lt!630789 (bvlshr lt!630789 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129473 (bvmul (bvxor h!35069 (bvlshr h!35069 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129473 (bvlshr x!129473 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!966985 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!966985 #b00000000000000000000000000000000))))))

(assert (=> d!153955 (= (toIndex!0 lt!630789 mask!2608) (bvand (bvxor lt!630854 (bvlshr lt!630854 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1432954 d!153955))

(declare-fun bm!67486 () Bool)

(declare-fun call!67489 () Bool)

(assert (=> bm!67486 (= call!67489 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433120 () Bool)

(declare-fun e!808943 () Bool)

(declare-fun e!808942 () Bool)

(assert (=> b!1433120 (= e!808943 e!808942)))

(declare-fun c!132561 () Bool)

(assert (=> b!1433120 (= c!132561 (validKeyInArray!0 (select (arr!47058 a!2831) j!81)))))

(declare-fun b!1433121 () Bool)

(declare-fun e!808941 () Bool)

(assert (=> b!1433121 (= e!808942 e!808941)))

(declare-fun lt!630867 () (_ BitVec 64))

(assert (=> b!1433121 (= lt!630867 (select (arr!47058 a!2831) j!81))))

(declare-fun lt!630866 () Unit!48412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97510 (_ BitVec 64) (_ BitVec 32)) Unit!48412)

(assert (=> b!1433121 (= lt!630866 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630867 j!81))))

(declare-fun arrayContainsKey!0 (array!97510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1433121 (arrayContainsKey!0 a!2831 lt!630867 #b00000000000000000000000000000000)))

(declare-fun lt!630865 () Unit!48412)

(assert (=> b!1433121 (= lt!630865 lt!630866)))

(declare-fun res!966999 () Bool)

(assert (=> b!1433121 (= res!966999 (= (seekEntryOrOpen!0 (select (arr!47058 a!2831) j!81) a!2831 mask!2608) (Found!11359 j!81)))))

(assert (=> b!1433121 (=> (not res!966999) (not e!808941))))

(declare-fun d!153961 () Bool)

(declare-fun res!967000 () Bool)

(assert (=> d!153961 (=> res!967000 e!808943)))

(assert (=> d!153961 (= res!967000 (bvsge j!81 (size!47609 a!2831)))))

(assert (=> d!153961 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!808943)))

(declare-fun b!1433122 () Bool)

(assert (=> b!1433122 (= e!808942 call!67489)))

(declare-fun b!1433123 () Bool)

(assert (=> b!1433123 (= e!808941 call!67489)))

(assert (= (and d!153961 (not res!967000)) b!1433120))

(assert (= (and b!1433120 c!132561) b!1433121))

(assert (= (and b!1433120 (not c!132561)) b!1433122))

(assert (= (and b!1433121 res!966999) b!1433123))

(assert (= (or b!1433123 b!1433122) bm!67486))

(declare-fun m!1322963 () Bool)

(assert (=> bm!67486 m!1322963))

(assert (=> b!1433120 m!1322849))

(assert (=> b!1433120 m!1322849))

(assert (=> b!1433120 m!1322879))

(assert (=> b!1433121 m!1322849))

(declare-fun m!1322965 () Bool)

(assert (=> b!1433121 m!1322965))

(declare-fun m!1322967 () Bool)

(assert (=> b!1433121 m!1322967))

(assert (=> b!1433121 m!1322849))

(assert (=> b!1433121 m!1322851))

(assert (=> b!1432947 d!153961))

(declare-fun d!153963 () Bool)

(assert (=> d!153963 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630876 () Unit!48412)

(declare-fun choose!38 (array!97510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48412)

(assert (=> d!153963 (= lt!630876 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153963 (validMask!0 mask!2608)))

(assert (=> d!153963 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630876)))

(declare-fun bs!41729 () Bool)

(assert (= bs!41729 d!153963))

(assert (=> bs!41729 m!1322869))

(declare-fun m!1322977 () Bool)

(assert (=> bs!41729 m!1322977))

(assert (=> bs!41729 m!1322881))

(assert (=> b!1432947 d!153963))

(declare-fun d!153967 () Bool)

(assert (=> d!153967 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123620 d!153967))

(declare-fun d!153971 () Bool)

(assert (=> d!153971 (= (array_inv!36003 a!2831) (bvsge (size!47609 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123620 d!153971))

(declare-fun b!1433151 () Bool)

(declare-fun e!808959 () SeekEntryResult!11359)

(declare-fun e!808962 () SeekEntryResult!11359)

(assert (=> b!1433151 (= e!808959 e!808962)))

(declare-fun c!132575 () Bool)

(declare-fun lt!630889 () (_ BitVec 64))

(assert (=> b!1433151 (= c!132575 (or (= lt!630889 lt!630789) (= (bvadd lt!630889 lt!630889) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433152 () Bool)

(declare-fun lt!630888 () SeekEntryResult!11359)

(assert (=> b!1433152 (and (bvsge (index!47829 lt!630888) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630888) (size!47609 lt!630786)))))

(declare-fun res!967007 () Bool)

(assert (=> b!1433152 (= res!967007 (= (select (arr!47058 lt!630786) (index!47829 lt!630888)) lt!630789))))

(declare-fun e!808958 () Bool)

(assert (=> b!1433152 (=> res!967007 e!808958)))

(declare-fun e!808961 () Bool)

(assert (=> b!1433152 (= e!808961 e!808958)))

(declare-fun b!1433153 () Bool)

(assert (=> b!1433153 (and (bvsge (index!47829 lt!630888) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630888) (size!47609 lt!630786)))))

(declare-fun res!967005 () Bool)

(assert (=> b!1433153 (= res!967005 (= (select (arr!47058 lt!630786) (index!47829 lt!630888)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433153 (=> res!967005 e!808958)))

(declare-fun b!1433154 () Bool)

(assert (=> b!1433154 (= e!808959 (Intermediate!11359 true index!585 x!605))))

(declare-fun b!1433155 () Bool)

(declare-fun e!808960 () Bool)

(assert (=> b!1433155 (= e!808960 e!808961)))

(declare-fun res!967006 () Bool)

(assert (=> b!1433155 (= res!967006 (and (is-Intermediate!11359 lt!630888) (not (undefined!12171 lt!630888)) (bvslt (x!129468 lt!630888) #b01111111111111111111111111111110) (bvsge (x!129468 lt!630888) #b00000000000000000000000000000000) (bvsge (x!129468 lt!630888) x!605)))))

(assert (=> b!1433155 (=> (not res!967006) (not e!808961))))

(declare-fun b!1433156 () Bool)

(assert (=> b!1433156 (and (bvsge (index!47829 lt!630888) #b00000000000000000000000000000000) (bvslt (index!47829 lt!630888) (size!47609 lt!630786)))))

(assert (=> b!1433156 (= e!808958 (= (select (arr!47058 lt!630786) (index!47829 lt!630888)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153973 () Bool)

(assert (=> d!153973 e!808960))

(declare-fun c!132576 () Bool)

(assert (=> d!153973 (= c!132576 (and (is-Intermediate!11359 lt!630888) (undefined!12171 lt!630888)))))

(assert (=> d!153973 (= lt!630888 e!808959)))

(declare-fun c!132574 () Bool)

(assert (=> d!153973 (= c!132574 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153973 (= lt!630889 (select (arr!47058 lt!630786) index!585))))

(assert (=> d!153973 (validMask!0 mask!2608)))

(assert (=> d!153973 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630789 lt!630786 mask!2608) lt!630888)))

(declare-fun b!1433157 () Bool)

(assert (=> b!1433157 (= e!808962 (Intermediate!11359 false index!585 x!605))))

(declare-fun b!1433158 () Bool)

(assert (=> b!1433158 (= e!808960 (bvsge (x!129468 lt!630888) #b01111111111111111111111111111110))))

(declare-fun b!1433159 () Bool)

(assert (=> b!1433159 (= e!808962 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!630789 lt!630786 mask!2608))))

(assert (= (and d!153973 c!132574) b!1433154))

(assert (= (and d!153973 (not c!132574)) b!1433151))

(assert (= (and b!1433151 c!132575) b!1433157))

(assert (= (and b!1433151 (not c!132575)) b!1433159))

(assert (= (and d!153973 c!132576) b!1433158))

(assert (= (and d!153973 (not c!132576)) b!1433155))

(assert (= (and b!1433155 res!967006) b!1433152))

(assert (= (and b!1433152 (not res!967007)) b!1433153))

(assert (= (and b!1433153 (not res!967005)) b!1433156))

(declare-fun m!1322989 () Bool)

(assert (=> b!1433156 m!1322989))

(assert (=> b!1433152 m!1322989))

(assert (=> b!1433153 m!1322989))

(assert (=> b!1433159 m!1322873))

(assert (=> b!1433159 m!1322873))

(declare-fun m!1322991 () Bool)

(assert (=> b!1433159 m!1322991))

(declare-fun m!1322993 () Bool)

(assert (=> d!153973 m!1322993))

(assert (=> d!153973 m!1322881))

(assert (=> b!1432958 d!153973))

(declare-fun d!153975 () Bool)

(assert (=> d!153975 (= (validKeyInArray!0 (select (arr!47058 a!2831) j!81)) (and (not (= (select (arr!47058 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47058 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432956 d!153975))

(declare-fun b!1433219 () Bool)

(declare-fun e!808998 () SeekEntryResult!11359)

(assert (=> b!1433219 (= e!808998 Undefined!11359)))

(declare-fun b!1433220 () Bool)

(declare-fun e!808997 () SeekEntryResult!11359)

(assert (=> b!1433220 (= e!808998 e!808997)))

(declare-fun lt!630913 () (_ BitVec 64))

(declare-fun lt!630911 () SeekEntryResult!11359)

(assert (=> b!1433220 (= lt!630913 (select (arr!47058 a!2831) (index!47829 lt!630911)))))

(declare-fun c!132602 () Bool)

(assert (=> b!1433220 (= c!132602 (= lt!630913 (select (arr!47058 a!2831) j!81)))))

(declare-fun b!1433221 () Bool)

(declare-fun c!132601 () Bool)

(assert (=> b!1433221 (= c!132601 (= lt!630913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808996 () SeekEntryResult!11359)

(assert (=> b!1433221 (= e!808997 e!808996)))

(declare-fun b!1433222 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97510 (_ BitVec 32)) SeekEntryResult!11359)

(assert (=> b!1433222 (= e!808996 (seekKeyOrZeroReturnVacant!0 (x!129468 lt!630911) (index!47829 lt!630911) (index!47829 lt!630911) (select (arr!47058 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433223 () Bool)

(assert (=> b!1433223 (= e!808996 (MissingZero!11359 (index!47829 lt!630911)))))

(declare-fun b!1433218 () Bool)

(assert (=> b!1433218 (= e!808997 (Found!11359 (index!47829 lt!630911)))))

(declare-fun d!153977 () Bool)

(declare-fun lt!630912 () SeekEntryResult!11359)

(assert (=> d!153977 (and (or (is-Undefined!11359 lt!630912) (not (is-Found!11359 lt!630912)) (and (bvsge (index!47828 lt!630912) #b00000000000000000000000000000000) (bvslt (index!47828 lt!630912) (size!47609 a!2831)))) (or (is-Undefined!11359 lt!630912) (is-Found!11359 lt!630912) (not (is-MissingZero!11359 lt!630912)) (and (bvsge (index!47827 lt!630912) #b00000000000000000000000000000000) (bvslt (index!47827 lt!630912) (size!47609 a!2831)))) (or (is-Undefined!11359 lt!630912) (is-Found!11359 lt!630912) (is-MissingZero!11359 lt!630912) (not (is-MissingVacant!11359 lt!630912)) (and (bvsge (index!47830 lt!630912) #b00000000000000000000000000000000) (bvslt (index!47830 lt!630912) (size!47609 a!2831)))) (or (is-Undefined!11359 lt!630912) (ite (is-Found!11359 lt!630912) (= (select (arr!47058 a!2831) (index!47828 lt!630912)) (select (arr!47058 a!2831) j!81)) (ite (is-MissingZero!11359 lt!630912) (= (select (arr!47058 a!2831) (index!47827 lt!630912)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11359 lt!630912) (= (select (arr!47058 a!2831) (index!47830 lt!630912)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153977 (= lt!630912 e!808998)))

(declare-fun c!132600 () Bool)

(assert (=> d!153977 (= c!132600 (and (is-Intermediate!11359 lt!630911) (undefined!12171 lt!630911)))))

(assert (=> d!153977 (= lt!630911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47058 a!2831) j!81) mask!2608) (select (arr!47058 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153977 (validMask!0 mask!2608)))

(assert (=> d!153977 (= (seekEntryOrOpen!0 (select (arr!47058 a!2831) j!81) a!2831 mask!2608) lt!630912)))

(assert (= (and d!153977 c!132600) b!1433219))

(assert (= (and d!153977 (not c!132600)) b!1433220))

(assert (= (and b!1433220 c!132602) b!1433218))

(assert (= (and b!1433220 (not c!132602)) b!1433221))

(assert (= (and b!1433221 c!132601) b!1433223))

(assert (= (and b!1433221 (not c!132601)) b!1433222))

(declare-fun m!1323017 () Bool)

(assert (=> b!1433220 m!1323017))

(assert (=> b!1433222 m!1322849))

(declare-fun m!1323019 () Bool)

(assert (=> b!1433222 m!1323019))

(declare-fun m!1323021 () Bool)

(assert (=> d!153977 m!1323021))

(assert (=> d!153977 m!1322881))

(declare-fun m!1323023 () Bool)

(assert (=> d!153977 m!1323023))

(assert (=> d!153977 m!1322849))

(assert (=> d!153977 m!1322861))

(declare-fun m!1323025 () Bool)

(assert (=> d!153977 m!1323025))

(assert (=> d!153977 m!1322861))

(assert (=> d!153977 m!1322849))

(assert (=> d!153977 m!1322863))

(assert (=> b!1432960 d!153977))

(declare-fun d!153989 () Bool)

(assert (=> d!153989 (= (validKeyInArray!0 (select (arr!47058 a!2831) i!982)) (and (not (= (select (arr!47058 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47058 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432950 d!153989))

(declare-fun b!1433243 () Bool)

(declare-fun e!809014 () Bool)

(declare-fun e!809016 () Bool)

(assert (=> b!1433243 (= e!809014 e!809016)))

(declare-fun res!967031 () Bool)

(assert (=> b!1433243 (=> (not res!967031) (not e!809016))))

(declare-fun e!809017 () Bool)

(assert (=> b!1433243 (= res!967031 (not e!809017))))

(declare-fun res!967032 () Bool)

(assert (=> b!1433243 (=> (not res!967032) (not e!809017))))

(assert (=> b!1433243 (= res!967032 (validKeyInArray!0 (select (arr!47058 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433244 () Bool)

(declare-fun e!809015 () Bool)

(assert (=> b!1433244 (= e!809016 e!809015)))

(declare-fun c!132607 () Bool)

(assert (=> b!1433244 (= c!132607 (validKeyInArray!0 (select (arr!47058 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433245 () Bool)

(declare-fun call!67496 () Bool)

(assert (=> b!1433245 (= e!809015 call!67496)))

(declare-fun b!1433246 () Bool)

(declare-fun contains!9879 (List!33748 (_ BitVec 64)) Bool)

(assert (=> b!1433246 (= e!809017 (contains!9879 Nil!33745 (select (arr!47058 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153991 () Bool)

(declare-fun res!967033 () Bool)

(assert (=> d!153991 (=> res!967033 e!809014)))

(assert (=> d!153991 (= res!967033 (bvsge #b00000000000000000000000000000000 (size!47609 a!2831)))))

(assert (=> d!153991 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33745) e!809014)))

(declare-fun bm!67493 () Bool)

(assert (=> bm!67493 (= call!67496 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132607 (Cons!33744 (select (arr!47058 a!2831) #b00000000000000000000000000000000) Nil!33745) Nil!33745)))))

