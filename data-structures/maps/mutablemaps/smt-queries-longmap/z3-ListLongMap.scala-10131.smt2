; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119484 () Bool)

(assert start!119484)

(declare-fun res!931798 () Bool)

(declare-fun e!788251 () Bool)

(assert (=> start!119484 (=> (not res!931798) (not e!788251))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119484 (= res!931798 (validMask!0 mask!2840))))

(assert (=> start!119484 e!788251))

(assert (=> start!119484 true))

(declare-datatypes ((array!95186 0))(
  ( (array!95187 (arr!45950 (Array (_ BitVec 32) (_ BitVec 64))) (size!46501 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95186)

(declare-fun array_inv!34895 (array!95186) Bool)

(assert (=> start!119484 (array_inv!34895 a!2901)))

(declare-fun b!1391967 () Bool)

(declare-fun e!788252 () Bool)

(declare-fun lt!611386 () (_ BitVec 32))

(assert (=> b!1391967 (= e!788252 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!611386 #b00000000000000000000000000000000) (bvslt lt!611386 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391967 (= lt!611386 (toIndex!0 (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391968 () Bool)

(declare-fun res!931797 () Bool)

(assert (=> b!1391968 (=> (not res!931797) (not e!788251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391968 (= res!931797 (validKeyInArray!0 (select (arr!45950 a!2901) j!112)))))

(declare-fun b!1391969 () Bool)

(assert (=> b!1391969 (= e!788251 (not e!788252))))

(declare-fun res!931801 () Bool)

(assert (=> b!1391969 (=> res!931801 e!788252)))

(declare-datatypes ((SeekEntryResult!10289 0))(
  ( (MissingZero!10289 (index!43526 (_ BitVec 32))) (Found!10289 (index!43527 (_ BitVec 32))) (Intermediate!10289 (undefined!11101 Bool) (index!43528 (_ BitVec 32)) (x!125212 (_ BitVec 32))) (Undefined!10289) (MissingVacant!10289 (index!43529 (_ BitVec 32))) )
))
(declare-fun lt!611384 () SeekEntryResult!10289)

(get-info :version)

(assert (=> b!1391969 (= res!931801 (or (not ((_ is Intermediate!10289) lt!611384)) (undefined!11101 lt!611384)))))

(declare-fun e!788250 () Bool)

(assert (=> b!1391969 e!788250))

(declare-fun res!931796 () Bool)

(assert (=> b!1391969 (=> (not res!931796) (not e!788250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95186 (_ BitVec 32)) Bool)

(assert (=> b!1391969 (= res!931796 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46532 0))(
  ( (Unit!46533) )
))
(declare-fun lt!611385 () Unit!46532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46532)

(assert (=> b!1391969 (= lt!611385 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95186 (_ BitVec 32)) SeekEntryResult!10289)

(assert (=> b!1391969 (= lt!611384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) (select (arr!45950 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391970 () Bool)

(declare-fun res!931799 () Bool)

(assert (=> b!1391970 (=> (not res!931799) (not e!788251))))

(assert (=> b!1391970 (= res!931799 (and (= (size!46501 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46501 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46501 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391971 () Bool)

(declare-fun res!931802 () Bool)

(assert (=> b!1391971 (=> (not res!931802) (not e!788251))))

(assert (=> b!1391971 (= res!931802 (validKeyInArray!0 (select (arr!45950 a!2901) i!1037)))))

(declare-fun b!1391972 () Bool)

(declare-fun res!931800 () Bool)

(assert (=> b!1391972 (=> (not res!931800) (not e!788251))))

(assert (=> b!1391972 (= res!931800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391973 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95186 (_ BitVec 32)) SeekEntryResult!10289)

(assert (=> b!1391973 (= e!788250 (= (seekEntryOrOpen!0 (select (arr!45950 a!2901) j!112) a!2901 mask!2840) (Found!10289 j!112)))))

(declare-fun b!1391974 () Bool)

(declare-fun res!931803 () Bool)

(assert (=> b!1391974 (=> (not res!931803) (not e!788251))))

(declare-datatypes ((List!32649 0))(
  ( (Nil!32646) (Cons!32645 (h!33872 (_ BitVec 64)) (t!47350 List!32649)) )
))
(declare-fun arrayNoDuplicates!0 (array!95186 (_ BitVec 32) List!32649) Bool)

(assert (=> b!1391974 (= res!931803 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32646))))

(assert (= (and start!119484 res!931798) b!1391970))

(assert (= (and b!1391970 res!931799) b!1391971))

(assert (= (and b!1391971 res!931802) b!1391968))

(assert (= (and b!1391968 res!931797) b!1391972))

(assert (= (and b!1391972 res!931800) b!1391974))

(assert (= (and b!1391974 res!931803) b!1391969))

(assert (= (and b!1391969 res!931796) b!1391973))

(assert (= (and b!1391969 (not res!931801)) b!1391967))

(declare-fun m!1277815 () Bool)

(assert (=> b!1391968 m!1277815))

(assert (=> b!1391968 m!1277815))

(declare-fun m!1277817 () Bool)

(assert (=> b!1391968 m!1277817))

(assert (=> b!1391969 m!1277815))

(declare-fun m!1277819 () Bool)

(assert (=> b!1391969 m!1277819))

(assert (=> b!1391969 m!1277815))

(declare-fun m!1277821 () Bool)

(assert (=> b!1391969 m!1277821))

(assert (=> b!1391969 m!1277819))

(assert (=> b!1391969 m!1277815))

(declare-fun m!1277823 () Bool)

(assert (=> b!1391969 m!1277823))

(declare-fun m!1277825 () Bool)

(assert (=> b!1391969 m!1277825))

(declare-fun m!1277827 () Bool)

(assert (=> b!1391971 m!1277827))

(assert (=> b!1391971 m!1277827))

(declare-fun m!1277829 () Bool)

(assert (=> b!1391971 m!1277829))

(declare-fun m!1277831 () Bool)

(assert (=> b!1391967 m!1277831))

(declare-fun m!1277833 () Bool)

(assert (=> b!1391967 m!1277833))

(assert (=> b!1391967 m!1277833))

(declare-fun m!1277835 () Bool)

(assert (=> b!1391967 m!1277835))

(declare-fun m!1277837 () Bool)

(assert (=> b!1391974 m!1277837))

(assert (=> b!1391973 m!1277815))

(assert (=> b!1391973 m!1277815))

(declare-fun m!1277839 () Bool)

(assert (=> b!1391973 m!1277839))

(declare-fun m!1277841 () Bool)

(assert (=> b!1391972 m!1277841))

(declare-fun m!1277843 () Bool)

(assert (=> start!119484 m!1277843))

(declare-fun m!1277845 () Bool)

(assert (=> start!119484 m!1277845))

(check-sat (not b!1391973) (not b!1391968) (not start!119484) (not b!1391972) (not b!1391967) (not b!1391969) (not b!1391974) (not b!1391971))
(check-sat)
(get-model)

(declare-fun b!1392009 () Bool)

(declare-fun e!788274 () Bool)

(declare-fun e!788275 () Bool)

(assert (=> b!1392009 (= e!788274 e!788275)))

(declare-fun c!129539 () Bool)

(assert (=> b!1392009 (= c!129539 (validKeyInArray!0 (select (arr!45950 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150351 () Bool)

(declare-fun res!931834 () Bool)

(declare-fun e!788273 () Bool)

(assert (=> d!150351 (=> res!931834 e!788273)))

(assert (=> d!150351 (= res!931834 (bvsge #b00000000000000000000000000000000 (size!46501 a!2901)))))

(assert (=> d!150351 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32646) e!788273)))

(declare-fun bm!66759 () Bool)

(declare-fun call!66762 () Bool)

(assert (=> bm!66759 (= call!66762 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129539 (Cons!32645 (select (arr!45950 a!2901) #b00000000000000000000000000000000) Nil!32646) Nil!32646)))))

(declare-fun b!1392010 () Bool)

(assert (=> b!1392010 (= e!788275 call!66762)))

(declare-fun b!1392011 () Bool)

(assert (=> b!1392011 (= e!788273 e!788274)))

(declare-fun res!931835 () Bool)

(assert (=> b!1392011 (=> (not res!931835) (not e!788274))))

(declare-fun e!788276 () Bool)

(assert (=> b!1392011 (= res!931835 (not e!788276))))

(declare-fun res!931836 () Bool)

(assert (=> b!1392011 (=> (not res!931836) (not e!788276))))

(assert (=> b!1392011 (= res!931836 (validKeyInArray!0 (select (arr!45950 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392012 () Bool)

(declare-fun contains!9781 (List!32649 (_ BitVec 64)) Bool)

(assert (=> b!1392012 (= e!788276 (contains!9781 Nil!32646 (select (arr!45950 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392013 () Bool)

(assert (=> b!1392013 (= e!788275 call!66762)))

(assert (= (and d!150351 (not res!931834)) b!1392011))

(assert (= (and b!1392011 res!931836) b!1392012))

(assert (= (and b!1392011 res!931835) b!1392009))

(assert (= (and b!1392009 c!129539) b!1392010))

(assert (= (and b!1392009 (not c!129539)) b!1392013))

(assert (= (or b!1392010 b!1392013) bm!66759))

(declare-fun m!1277879 () Bool)

(assert (=> b!1392009 m!1277879))

(assert (=> b!1392009 m!1277879))

(declare-fun m!1277881 () Bool)

(assert (=> b!1392009 m!1277881))

(assert (=> bm!66759 m!1277879))

(declare-fun m!1277883 () Bool)

(assert (=> bm!66759 m!1277883))

(assert (=> b!1392011 m!1277879))

(assert (=> b!1392011 m!1277879))

(assert (=> b!1392011 m!1277881))

(assert (=> b!1392012 m!1277879))

(assert (=> b!1392012 m!1277879))

(declare-fun m!1277885 () Bool)

(assert (=> b!1392012 m!1277885))

(assert (=> b!1391974 d!150351))

(declare-fun d!150353 () Bool)

(assert (=> d!150353 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119484 d!150353))

(declare-fun d!150357 () Bool)

(assert (=> d!150357 (= (array_inv!34895 a!2901) (bvsge (size!46501 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119484 d!150357))

(declare-fun b!1392030 () Bool)

(declare-fun e!788291 () Bool)

(declare-fun call!66767 () Bool)

(assert (=> b!1392030 (= e!788291 call!66767)))

(declare-fun bm!66764 () Bool)

(assert (=> bm!66764 (= call!66767 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392032 () Bool)

(declare-fun e!788290 () Bool)

(assert (=> b!1392032 (= e!788290 call!66767)))

(declare-fun b!1392033 () Bool)

(assert (=> b!1392033 (= e!788291 e!788290)))

(declare-fun lt!611415 () (_ BitVec 64))

(assert (=> b!1392033 (= lt!611415 (select (arr!45950 a!2901) j!112))))

(declare-fun lt!611416 () Unit!46532)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95186 (_ BitVec 64) (_ BitVec 32)) Unit!46532)

(assert (=> b!1392033 (= lt!611416 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611415 j!112))))

(declare-fun arrayContainsKey!0 (array!95186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392033 (arrayContainsKey!0 a!2901 lt!611415 #b00000000000000000000000000000000)))

(declare-fun lt!611414 () Unit!46532)

(assert (=> b!1392033 (= lt!611414 lt!611416)))

(declare-fun res!931847 () Bool)

(assert (=> b!1392033 (= res!931847 (= (seekEntryOrOpen!0 (select (arr!45950 a!2901) j!112) a!2901 mask!2840) (Found!10289 j!112)))))

(assert (=> b!1392033 (=> (not res!931847) (not e!788290))))

(declare-fun b!1392031 () Bool)

(declare-fun e!788289 () Bool)

(assert (=> b!1392031 (= e!788289 e!788291)))

(declare-fun c!129544 () Bool)

(assert (=> b!1392031 (= c!129544 (validKeyInArray!0 (select (arr!45950 a!2901) j!112)))))

(declare-fun d!150359 () Bool)

(declare-fun res!931846 () Bool)

(assert (=> d!150359 (=> res!931846 e!788289)))

(assert (=> d!150359 (= res!931846 (bvsge j!112 (size!46501 a!2901)))))

(assert (=> d!150359 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788289)))

(assert (= (and d!150359 (not res!931846)) b!1392031))

(assert (= (and b!1392031 c!129544) b!1392033))

(assert (= (and b!1392031 (not c!129544)) b!1392030))

(assert (= (and b!1392033 res!931847) b!1392032))

(assert (= (or b!1392032 b!1392030) bm!66764))

(declare-fun m!1277887 () Bool)

(assert (=> bm!66764 m!1277887))

(assert (=> b!1392033 m!1277815))

(declare-fun m!1277889 () Bool)

(assert (=> b!1392033 m!1277889))

(declare-fun m!1277891 () Bool)

(assert (=> b!1392033 m!1277891))

(assert (=> b!1392033 m!1277815))

(assert (=> b!1392033 m!1277839))

(assert (=> b!1392031 m!1277815))

(assert (=> b!1392031 m!1277815))

(assert (=> b!1392031 m!1277817))

(assert (=> b!1391969 d!150359))

(declare-fun d!150365 () Bool)

(assert (=> d!150365 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611422 () Unit!46532)

(declare-fun choose!38 (array!95186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46532)

(assert (=> d!150365 (= lt!611422 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150365 (validMask!0 mask!2840)))

(assert (=> d!150365 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611422)))

(declare-fun bs!40493 () Bool)

(assert (= bs!40493 d!150365))

(assert (=> bs!40493 m!1277825))

(declare-fun m!1277899 () Bool)

(assert (=> bs!40493 m!1277899))

(assert (=> bs!40493 m!1277843))

(assert (=> b!1391969 d!150365))

(declare-fun b!1392092 () Bool)

(declare-fun e!788327 () Bool)

(declare-fun lt!611443 () SeekEntryResult!10289)

(assert (=> b!1392092 (= e!788327 (bvsge (x!125212 lt!611443) #b01111111111111111111111111111110))))

(declare-fun b!1392093 () Bool)

(assert (=> b!1392093 (and (bvsge (index!43528 lt!611443) #b00000000000000000000000000000000) (bvslt (index!43528 lt!611443) (size!46501 a!2901)))))

(declare-fun res!931862 () Bool)

(assert (=> b!1392093 (= res!931862 (= (select (arr!45950 a!2901) (index!43528 lt!611443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788328 () Bool)

(assert (=> b!1392093 (=> res!931862 e!788328)))

(declare-fun b!1392094 () Bool)

(declare-fun e!788325 () SeekEntryResult!10289)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392094 (= e!788325 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45950 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392095 () Bool)

(assert (=> b!1392095 (and (bvsge (index!43528 lt!611443) #b00000000000000000000000000000000) (bvslt (index!43528 lt!611443) (size!46501 a!2901)))))

(declare-fun res!931863 () Bool)

(assert (=> b!1392095 (= res!931863 (= (select (arr!45950 a!2901) (index!43528 lt!611443)) (select (arr!45950 a!2901) j!112)))))

(assert (=> b!1392095 (=> res!931863 e!788328)))

(declare-fun e!788324 () Bool)

(assert (=> b!1392095 (= e!788324 e!788328)))

(declare-fun b!1392096 () Bool)

(declare-fun e!788326 () SeekEntryResult!10289)

(assert (=> b!1392096 (= e!788326 e!788325)))

(declare-fun lt!611444 () (_ BitVec 64))

(declare-fun c!129569 () Bool)

(assert (=> b!1392096 (= c!129569 (or (= lt!611444 (select (arr!45950 a!2901) j!112)) (= (bvadd lt!611444 lt!611444) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392097 () Bool)

(assert (=> b!1392097 (= e!788326 (Intermediate!10289 true (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392098 () Bool)

(assert (=> b!1392098 (= e!788325 (Intermediate!10289 false (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!150369 () Bool)

(assert (=> d!150369 e!788327))

(declare-fun c!129568 () Bool)

(assert (=> d!150369 (= c!129568 (and ((_ is Intermediate!10289) lt!611443) (undefined!11101 lt!611443)))))

(assert (=> d!150369 (= lt!611443 e!788326)))

(declare-fun c!129567 () Bool)

(assert (=> d!150369 (= c!129567 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150369 (= lt!611444 (select (arr!45950 a!2901) (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840)))))

(assert (=> d!150369 (validMask!0 mask!2840)))

(assert (=> d!150369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) (select (arr!45950 a!2901) j!112) a!2901 mask!2840) lt!611443)))

(declare-fun b!1392099 () Bool)

(assert (=> b!1392099 (and (bvsge (index!43528 lt!611443) #b00000000000000000000000000000000) (bvslt (index!43528 lt!611443) (size!46501 a!2901)))))

(assert (=> b!1392099 (= e!788328 (= (select (arr!45950 a!2901) (index!43528 lt!611443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392100 () Bool)

(assert (=> b!1392100 (= e!788327 e!788324)))

(declare-fun res!931864 () Bool)

(assert (=> b!1392100 (= res!931864 (and ((_ is Intermediate!10289) lt!611443) (not (undefined!11101 lt!611443)) (bvslt (x!125212 lt!611443) #b01111111111111111111111111111110) (bvsge (x!125212 lt!611443) #b00000000000000000000000000000000) (bvsge (x!125212 lt!611443) #b00000000000000000000000000000000)))))

(assert (=> b!1392100 (=> (not res!931864) (not e!788324))))

(assert (= (and d!150369 c!129567) b!1392097))

(assert (= (and d!150369 (not c!129567)) b!1392096))

(assert (= (and b!1392096 c!129569) b!1392098))

(assert (= (and b!1392096 (not c!129569)) b!1392094))

(assert (= (and d!150369 c!129568) b!1392092))

(assert (= (and d!150369 (not c!129568)) b!1392100))

(assert (= (and b!1392100 res!931864) b!1392095))

(assert (= (and b!1392095 (not res!931863)) b!1392093))

(assert (= (and b!1392093 (not res!931862)) b!1392099))

(assert (=> d!150369 m!1277819))

(declare-fun m!1277913 () Bool)

(assert (=> d!150369 m!1277913))

(assert (=> d!150369 m!1277843))

(assert (=> b!1392094 m!1277819))

(declare-fun m!1277915 () Bool)

(assert (=> b!1392094 m!1277915))

(assert (=> b!1392094 m!1277915))

(assert (=> b!1392094 m!1277815))

(declare-fun m!1277917 () Bool)

(assert (=> b!1392094 m!1277917))

(declare-fun m!1277919 () Bool)

(assert (=> b!1392093 m!1277919))

(assert (=> b!1392095 m!1277919))

(assert (=> b!1392099 m!1277919))

(assert (=> b!1391969 d!150369))

(declare-fun d!150381 () Bool)

(declare-fun lt!611460 () (_ BitVec 32))

(declare-fun lt!611459 () (_ BitVec 32))

(assert (=> d!150381 (= lt!611460 (bvmul (bvxor lt!611459 (bvlshr lt!611459 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150381 (= lt!611459 ((_ extract 31 0) (bvand (bvxor (select (arr!45950 a!2901) j!112) (bvlshr (select (arr!45950 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150381 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931868 (let ((h!33875 ((_ extract 31 0) (bvand (bvxor (select (arr!45950 a!2901) j!112) (bvlshr (select (arr!45950 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125217 (bvmul (bvxor h!33875 (bvlshr h!33875 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125217 (bvlshr x!125217 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931868 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931868 #b00000000000000000000000000000000))))))

(assert (=> d!150381 (= (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) (bvand (bvxor lt!611460 (bvlshr lt!611460 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391969 d!150381))

(declare-fun d!150387 () Bool)

(assert (=> d!150387 (= (validKeyInArray!0 (select (arr!45950 a!2901) j!112)) (and (not (= (select (arr!45950 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45950 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391968 d!150387))

(declare-fun d!150389 () Bool)

(assert (=> d!150389 (= (validKeyInArray!0 (select (arr!45950 a!2901) i!1037)) (and (not (= (select (arr!45950 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45950 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391971 d!150389))

(declare-fun b!1392156 () Bool)

(declare-fun e!788363 () SeekEntryResult!10289)

(declare-fun lt!611491 () SeekEntryResult!10289)

(assert (=> b!1392156 (= e!788363 (MissingZero!10289 (index!43528 lt!611491)))))

(declare-fun b!1392157 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95186 (_ BitVec 32)) SeekEntryResult!10289)

(assert (=> b!1392157 (= e!788363 (seekKeyOrZeroReturnVacant!0 (x!125212 lt!611491) (index!43528 lt!611491) (index!43528 lt!611491) (select (arr!45950 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392158 () Bool)

(declare-fun e!788362 () SeekEntryResult!10289)

(declare-fun e!788361 () SeekEntryResult!10289)

(assert (=> b!1392158 (= e!788362 e!788361)))

(declare-fun lt!611493 () (_ BitVec 64))

(assert (=> b!1392158 (= lt!611493 (select (arr!45950 a!2901) (index!43528 lt!611491)))))

(declare-fun c!129592 () Bool)

(assert (=> b!1392158 (= c!129592 (= lt!611493 (select (arr!45950 a!2901) j!112)))))

(declare-fun d!150391 () Bool)

(declare-fun lt!611492 () SeekEntryResult!10289)

(assert (=> d!150391 (and (or ((_ is Undefined!10289) lt!611492) (not ((_ is Found!10289) lt!611492)) (and (bvsge (index!43527 lt!611492) #b00000000000000000000000000000000) (bvslt (index!43527 lt!611492) (size!46501 a!2901)))) (or ((_ is Undefined!10289) lt!611492) ((_ is Found!10289) lt!611492) (not ((_ is MissingZero!10289) lt!611492)) (and (bvsge (index!43526 lt!611492) #b00000000000000000000000000000000) (bvslt (index!43526 lt!611492) (size!46501 a!2901)))) (or ((_ is Undefined!10289) lt!611492) ((_ is Found!10289) lt!611492) ((_ is MissingZero!10289) lt!611492) (not ((_ is MissingVacant!10289) lt!611492)) (and (bvsge (index!43529 lt!611492) #b00000000000000000000000000000000) (bvslt (index!43529 lt!611492) (size!46501 a!2901)))) (or ((_ is Undefined!10289) lt!611492) (ite ((_ is Found!10289) lt!611492) (= (select (arr!45950 a!2901) (index!43527 lt!611492)) (select (arr!45950 a!2901) j!112)) (ite ((_ is MissingZero!10289) lt!611492) (= (select (arr!45950 a!2901) (index!43526 lt!611492)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10289) lt!611492) (= (select (arr!45950 a!2901) (index!43529 lt!611492)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150391 (= lt!611492 e!788362)))

(declare-fun c!129594 () Bool)

(assert (=> d!150391 (= c!129594 (and ((_ is Intermediate!10289) lt!611491) (undefined!11101 lt!611491)))))

(assert (=> d!150391 (= lt!611491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45950 a!2901) j!112) mask!2840) (select (arr!45950 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150391 (validMask!0 mask!2840)))

(assert (=> d!150391 (= (seekEntryOrOpen!0 (select (arr!45950 a!2901) j!112) a!2901 mask!2840) lt!611492)))

(declare-fun b!1392159 () Bool)

(assert (=> b!1392159 (= e!788361 (Found!10289 (index!43528 lt!611491)))))

(declare-fun b!1392160 () Bool)

(declare-fun c!129593 () Bool)

(assert (=> b!1392160 (= c!129593 (= lt!611493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392160 (= e!788361 e!788363)))

(declare-fun b!1392161 () Bool)

(assert (=> b!1392161 (= e!788362 Undefined!10289)))

(assert (= (and d!150391 c!129594) b!1392161))

(assert (= (and d!150391 (not c!129594)) b!1392158))

(assert (= (and b!1392158 c!129592) b!1392159))

(assert (= (and b!1392158 (not c!129592)) b!1392160))

(assert (= (and b!1392160 c!129593) b!1392156))

(assert (= (and b!1392160 (not c!129593)) b!1392157))

(assert (=> b!1392157 m!1277815))

(declare-fun m!1277959 () Bool)

(assert (=> b!1392157 m!1277959))

(declare-fun m!1277961 () Bool)

(assert (=> b!1392158 m!1277961))

(assert (=> d!150391 m!1277843))

(assert (=> d!150391 m!1277819))

(assert (=> d!150391 m!1277815))

(assert (=> d!150391 m!1277823))

(declare-fun m!1277963 () Bool)

(assert (=> d!150391 m!1277963))

(assert (=> d!150391 m!1277815))

(assert (=> d!150391 m!1277819))

(declare-fun m!1277965 () Bool)

(assert (=> d!150391 m!1277965))

(declare-fun m!1277967 () Bool)

(assert (=> d!150391 m!1277967))

(assert (=> b!1391973 d!150391))

(declare-fun b!1392162 () Bool)

(declare-fun e!788366 () Bool)

(declare-fun call!66773 () Bool)

(assert (=> b!1392162 (= e!788366 call!66773)))

(declare-fun bm!66770 () Bool)

(assert (=> bm!66770 (= call!66773 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392164 () Bool)

(declare-fun e!788365 () Bool)

(assert (=> b!1392164 (= e!788365 call!66773)))

(declare-fun b!1392165 () Bool)

(assert (=> b!1392165 (= e!788366 e!788365)))

(declare-fun lt!611495 () (_ BitVec 64))

(assert (=> b!1392165 (= lt!611495 (select (arr!45950 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611496 () Unit!46532)

(assert (=> b!1392165 (= lt!611496 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611495 #b00000000000000000000000000000000))))

(assert (=> b!1392165 (arrayContainsKey!0 a!2901 lt!611495 #b00000000000000000000000000000000)))

(declare-fun lt!611494 () Unit!46532)

(assert (=> b!1392165 (= lt!611494 lt!611496)))

(declare-fun res!931879 () Bool)

(assert (=> b!1392165 (= res!931879 (= (seekEntryOrOpen!0 (select (arr!45950 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10289 #b00000000000000000000000000000000)))))

(assert (=> b!1392165 (=> (not res!931879) (not e!788365))))

(declare-fun b!1392163 () Bool)

(declare-fun e!788364 () Bool)

(assert (=> b!1392163 (= e!788364 e!788366)))

(declare-fun c!129595 () Bool)

(assert (=> b!1392163 (= c!129595 (validKeyInArray!0 (select (arr!45950 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150403 () Bool)

(declare-fun res!931878 () Bool)

(assert (=> d!150403 (=> res!931878 e!788364)))

(assert (=> d!150403 (= res!931878 (bvsge #b00000000000000000000000000000000 (size!46501 a!2901)))))

(assert (=> d!150403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788364)))

(assert (= (and d!150403 (not res!931878)) b!1392163))

(assert (= (and b!1392163 c!129595) b!1392165))

(assert (= (and b!1392163 (not c!129595)) b!1392162))

(assert (= (and b!1392165 res!931879) b!1392164))

(assert (= (or b!1392164 b!1392162) bm!66770))

(declare-fun m!1277969 () Bool)

(assert (=> bm!66770 m!1277969))

(assert (=> b!1392165 m!1277879))

(declare-fun m!1277971 () Bool)

(assert (=> b!1392165 m!1277971))

(declare-fun m!1277973 () Bool)

(assert (=> b!1392165 m!1277973))

(assert (=> b!1392165 m!1277879))

(declare-fun m!1277975 () Bool)

(assert (=> b!1392165 m!1277975))

(assert (=> b!1392163 m!1277879))

(assert (=> b!1392163 m!1277879))

(assert (=> b!1392163 m!1277881))

(assert (=> b!1391972 d!150403))

(declare-fun d!150405 () Bool)

(declare-fun lt!611498 () (_ BitVec 32))

(declare-fun lt!611497 () (_ BitVec 32))

(assert (=> d!150405 (= lt!611498 (bvmul (bvxor lt!611497 (bvlshr lt!611497 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150405 (= lt!611497 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150405 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931868 (let ((h!33875 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125217 (bvmul (bvxor h!33875 (bvlshr h!33875 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125217 (bvlshr x!125217 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931868 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931868 #b00000000000000000000000000000000))))))

(assert (=> d!150405 (= (toIndex!0 (select (store (arr!45950 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611498 (bvlshr lt!611498 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391967 d!150405))

(check-sat (not b!1392094) (not bm!66770) (not b!1392011) (not d!150391) (not bm!66764) (not b!1392031) (not b!1392009) (not b!1392165) (not d!150365) (not b!1392033) (not b!1392012) (not d!150369) (not bm!66759) (not b!1392163) (not b!1392157))
(check-sat)
