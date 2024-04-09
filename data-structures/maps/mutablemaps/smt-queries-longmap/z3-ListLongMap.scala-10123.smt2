; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119328 () Bool)

(assert start!119328)

(declare-fun res!931100 () Bool)

(declare-fun e!787715 () Bool)

(assert (=> start!119328 (=> (not res!931100) (not e!787715))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119328 (= res!931100 (validMask!0 mask!2840))))

(assert (=> start!119328 e!787715))

(assert (=> start!119328 true))

(declare-datatypes ((array!95132 0))(
  ( (array!95133 (arr!45926 (Array (_ BitVec 32) (_ BitVec 64))) (size!46477 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95132)

(declare-fun array_inv!34871 (array!95132) Bool)

(assert (=> start!119328 (array_inv!34871 a!2901)))

(declare-datatypes ((SeekEntryResult!10265 0))(
  ( (MissingZero!10265 (index!43430 (_ BitVec 32))) (Found!10265 (index!43431 (_ BitVec 32))) (Intermediate!10265 (undefined!11077 Bool) (index!43432 (_ BitVec 32)) (x!125112 (_ BitVec 32))) (Undefined!10265) (MissingVacant!10265 (index!43433 (_ BitVec 32))) )
))
(declare-fun lt!610988 () SeekEntryResult!10265)

(declare-fun b!1390975 () Bool)

(declare-fun lt!610989 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1390975 (= e!787715 (not (or (not ((_ is Intermediate!10265) lt!610988)) (undefined!11077 lt!610988) (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!610989 #b00000000000000000000000000000000) (bvslt lt!610989 (bvadd #b00000000000000000000000000000001 mask!2840))))))))

(declare-fun e!787714 () Bool)

(assert (=> b!1390975 e!787714))

(declare-fun res!931103 () Bool)

(assert (=> b!1390975 (=> (not res!931103) (not e!787714))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95132 (_ BitVec 32)) Bool)

(assert (=> b!1390975 (= res!931103 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46484 0))(
  ( (Unit!46485) )
))
(declare-fun lt!610990 () Unit!46484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46484)

(assert (=> b!1390975 (= lt!610990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95132 (_ BitVec 32)) SeekEntryResult!10265)

(assert (=> b!1390975 (= lt!610988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610989 (select (arr!45926 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390975 (= lt!610989 (toIndex!0 (select (arr!45926 a!2901) j!112) mask!2840))))

(declare-fun b!1390976 () Bool)

(declare-fun res!931101 () Bool)

(assert (=> b!1390976 (=> (not res!931101) (not e!787715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390976 (= res!931101 (validKeyInArray!0 (select (arr!45926 a!2901) j!112)))))

(declare-fun b!1390977 () Bool)

(declare-fun res!931099 () Bool)

(assert (=> b!1390977 (=> (not res!931099) (not e!787715))))

(assert (=> b!1390977 (= res!931099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390978 () Bool)

(declare-fun res!931104 () Bool)

(assert (=> b!1390978 (=> (not res!931104) (not e!787715))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390978 (= res!931104 (and (= (size!46477 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46477 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46477 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390979 () Bool)

(declare-fun res!931102 () Bool)

(assert (=> b!1390979 (=> (not res!931102) (not e!787715))))

(assert (=> b!1390979 (= res!931102 (validKeyInArray!0 (select (arr!45926 a!2901) i!1037)))))

(declare-fun b!1390980 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95132 (_ BitVec 32)) SeekEntryResult!10265)

(assert (=> b!1390980 (= e!787714 (= (seekEntryOrOpen!0 (select (arr!45926 a!2901) j!112) a!2901 mask!2840) (Found!10265 j!112)))))

(declare-fun b!1390981 () Bool)

(declare-fun res!931098 () Bool)

(assert (=> b!1390981 (=> (not res!931098) (not e!787715))))

(declare-datatypes ((List!32625 0))(
  ( (Nil!32622) (Cons!32621 (h!33842 (_ BitVec 64)) (t!47326 List!32625)) )
))
(declare-fun arrayNoDuplicates!0 (array!95132 (_ BitVec 32) List!32625) Bool)

(assert (=> b!1390981 (= res!931098 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32622))))

(assert (= (and start!119328 res!931100) b!1390978))

(assert (= (and b!1390978 res!931104) b!1390979))

(assert (= (and b!1390979 res!931102) b!1390976))

(assert (= (and b!1390976 res!931101) b!1390977))

(assert (= (and b!1390977 res!931099) b!1390981))

(assert (= (and b!1390981 res!931098) b!1390975))

(assert (= (and b!1390975 res!931103) b!1390980))

(declare-fun m!1276873 () Bool)

(assert (=> b!1390975 m!1276873))

(declare-fun m!1276875 () Bool)

(assert (=> b!1390975 m!1276875))

(assert (=> b!1390975 m!1276873))

(assert (=> b!1390975 m!1276873))

(declare-fun m!1276877 () Bool)

(assert (=> b!1390975 m!1276877))

(declare-fun m!1276879 () Bool)

(assert (=> b!1390975 m!1276879))

(declare-fun m!1276881 () Bool)

(assert (=> b!1390975 m!1276881))

(declare-fun m!1276883 () Bool)

(assert (=> b!1390979 m!1276883))

(assert (=> b!1390979 m!1276883))

(declare-fun m!1276885 () Bool)

(assert (=> b!1390979 m!1276885))

(assert (=> b!1390980 m!1276873))

(assert (=> b!1390980 m!1276873))

(declare-fun m!1276887 () Bool)

(assert (=> b!1390980 m!1276887))

(declare-fun m!1276889 () Bool)

(assert (=> start!119328 m!1276889))

(declare-fun m!1276891 () Bool)

(assert (=> start!119328 m!1276891))

(declare-fun m!1276893 () Bool)

(assert (=> b!1390981 m!1276893))

(assert (=> b!1390976 m!1276873))

(assert (=> b!1390976 m!1276873))

(declare-fun m!1276895 () Bool)

(assert (=> b!1390976 m!1276895))

(declare-fun m!1276897 () Bool)

(assert (=> b!1390977 m!1276897))

(check-sat (not b!1390980) (not b!1390977) (not b!1390981) (not b!1390976) (not b!1390975) (not b!1390979) (not start!119328))
(check-sat)
(get-model)

(declare-fun b!1391011 () Bool)

(declare-fun e!787733 () Bool)

(declare-fun call!66720 () Bool)

(assert (=> b!1391011 (= e!787733 call!66720)))

(declare-fun d!150203 () Bool)

(declare-fun res!931130 () Bool)

(declare-fun e!787731 () Bool)

(assert (=> d!150203 (=> res!931130 e!787731)))

(assert (=> d!150203 (= res!931130 (bvsge #b00000000000000000000000000000000 (size!46477 a!2901)))))

(assert (=> d!150203 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787731)))

(declare-fun b!1391012 () Bool)

(declare-fun e!787732 () Bool)

(assert (=> b!1391012 (= e!787732 call!66720)))

(declare-fun b!1391013 () Bool)

(assert (=> b!1391013 (= e!787731 e!787732)))

(declare-fun c!129389 () Bool)

(assert (=> b!1391013 (= c!129389 (validKeyInArray!0 (select (arr!45926 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66717 () Bool)

(assert (=> bm!66717 (= call!66720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391014 () Bool)

(assert (=> b!1391014 (= e!787732 e!787733)))

(declare-fun lt!611006 () (_ BitVec 64))

(assert (=> b!1391014 (= lt!611006 (select (arr!45926 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611008 () Unit!46484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95132 (_ BitVec 64) (_ BitVec 32)) Unit!46484)

(assert (=> b!1391014 (= lt!611008 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611006 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391014 (arrayContainsKey!0 a!2901 lt!611006 #b00000000000000000000000000000000)))

(declare-fun lt!611007 () Unit!46484)

(assert (=> b!1391014 (= lt!611007 lt!611008)))

(declare-fun res!931131 () Bool)

(assert (=> b!1391014 (= res!931131 (= (seekEntryOrOpen!0 (select (arr!45926 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10265 #b00000000000000000000000000000000)))))

(assert (=> b!1391014 (=> (not res!931131) (not e!787733))))

(assert (= (and d!150203 (not res!931130)) b!1391013))

(assert (= (and b!1391013 c!129389) b!1391014))

(assert (= (and b!1391013 (not c!129389)) b!1391012))

(assert (= (and b!1391014 res!931131) b!1391011))

(assert (= (or b!1391011 b!1391012) bm!66717))

(declare-fun m!1276925 () Bool)

(assert (=> b!1391013 m!1276925))

(assert (=> b!1391013 m!1276925))

(declare-fun m!1276927 () Bool)

(assert (=> b!1391013 m!1276927))

(declare-fun m!1276929 () Bool)

(assert (=> bm!66717 m!1276929))

(assert (=> b!1391014 m!1276925))

(declare-fun m!1276931 () Bool)

(assert (=> b!1391014 m!1276931))

(declare-fun m!1276933 () Bool)

(assert (=> b!1391014 m!1276933))

(assert (=> b!1391014 m!1276925))

(declare-fun m!1276935 () Bool)

(assert (=> b!1391014 m!1276935))

(assert (=> b!1390977 d!150203))

(declare-fun d!150211 () Bool)

(assert (=> d!150211 (= (validKeyInArray!0 (select (arr!45926 a!2901) j!112)) (and (not (= (select (arr!45926 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45926 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390976 d!150211))

(declare-fun b!1391052 () Bool)

(declare-fun e!787766 () Bool)

(declare-fun e!787765 () Bool)

(assert (=> b!1391052 (= e!787766 e!787765)))

(declare-fun res!931154 () Bool)

(assert (=> b!1391052 (=> (not res!931154) (not e!787765))))

(declare-fun e!787764 () Bool)

(assert (=> b!1391052 (= res!931154 (not e!787764))))

(declare-fun res!931153 () Bool)

(assert (=> b!1391052 (=> (not res!931153) (not e!787764))))

(assert (=> b!1391052 (= res!931153 (validKeyInArray!0 (select (arr!45926 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391053 () Bool)

(declare-fun e!787763 () Bool)

(declare-fun call!66729 () Bool)

(assert (=> b!1391053 (= e!787763 call!66729)))

(declare-fun b!1391054 () Bool)

(assert (=> b!1391054 (= e!787765 e!787763)))

(declare-fun c!129398 () Bool)

(assert (=> b!1391054 (= c!129398 (validKeyInArray!0 (select (arr!45926 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66726 () Bool)

(assert (=> bm!66726 (= call!66729 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129398 (Cons!32621 (select (arr!45926 a!2901) #b00000000000000000000000000000000) Nil!32622) Nil!32622)))))

(declare-fun b!1391055 () Bool)

(assert (=> b!1391055 (= e!787763 call!66729)))

(declare-fun d!150213 () Bool)

(declare-fun res!931155 () Bool)

(assert (=> d!150213 (=> res!931155 e!787766)))

(assert (=> d!150213 (= res!931155 (bvsge #b00000000000000000000000000000000 (size!46477 a!2901)))))

(assert (=> d!150213 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32622) e!787766)))

(declare-fun b!1391056 () Bool)

(declare-fun contains!9777 (List!32625 (_ BitVec 64)) Bool)

(assert (=> b!1391056 (= e!787764 (contains!9777 Nil!32622 (select (arr!45926 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150213 (not res!931155)) b!1391052))

(assert (= (and b!1391052 res!931153) b!1391056))

(assert (= (and b!1391052 res!931154) b!1391054))

(assert (= (and b!1391054 c!129398) b!1391053))

(assert (= (and b!1391054 (not c!129398)) b!1391055))

(assert (= (or b!1391053 b!1391055) bm!66726))

(assert (=> b!1391052 m!1276925))

(assert (=> b!1391052 m!1276925))

(assert (=> b!1391052 m!1276927))

(assert (=> b!1391054 m!1276925))

(assert (=> b!1391054 m!1276925))

(assert (=> b!1391054 m!1276927))

(assert (=> bm!66726 m!1276925))

(declare-fun m!1276957 () Bool)

(assert (=> bm!66726 m!1276957))

(assert (=> b!1391056 m!1276925))

(assert (=> b!1391056 m!1276925))

(declare-fun m!1276959 () Bool)

(assert (=> b!1391056 m!1276959))

(assert (=> b!1390981 d!150213))

(declare-fun d!150221 () Bool)

(assert (=> d!150221 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119328 d!150221))

(declare-fun d!150231 () Bool)

(assert (=> d!150231 (= (array_inv!34871 a!2901) (bvsge (size!46477 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119328 d!150231))

(declare-fun b!1391075 () Bool)

(declare-fun e!787778 () Bool)

(declare-fun call!66730 () Bool)

(assert (=> b!1391075 (= e!787778 call!66730)))

(declare-fun d!150233 () Bool)

(declare-fun res!931156 () Bool)

(declare-fun e!787776 () Bool)

(assert (=> d!150233 (=> res!931156 e!787776)))

(assert (=> d!150233 (= res!931156 (bvsge j!112 (size!46477 a!2901)))))

(assert (=> d!150233 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787776)))

(declare-fun b!1391076 () Bool)

(declare-fun e!787777 () Bool)

(assert (=> b!1391076 (= e!787777 call!66730)))

(declare-fun b!1391077 () Bool)

(assert (=> b!1391077 (= e!787776 e!787777)))

(declare-fun c!129408 () Bool)

(assert (=> b!1391077 (= c!129408 (validKeyInArray!0 (select (arr!45926 a!2901) j!112)))))

(declare-fun bm!66727 () Bool)

(assert (=> bm!66727 (= call!66730 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391078 () Bool)

(assert (=> b!1391078 (= e!787777 e!787778)))

(declare-fun lt!611027 () (_ BitVec 64))

(assert (=> b!1391078 (= lt!611027 (select (arr!45926 a!2901) j!112))))

(declare-fun lt!611029 () Unit!46484)

(assert (=> b!1391078 (= lt!611029 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611027 j!112))))

(assert (=> b!1391078 (arrayContainsKey!0 a!2901 lt!611027 #b00000000000000000000000000000000)))

(declare-fun lt!611028 () Unit!46484)

(assert (=> b!1391078 (= lt!611028 lt!611029)))

(declare-fun res!931157 () Bool)

(assert (=> b!1391078 (= res!931157 (= (seekEntryOrOpen!0 (select (arr!45926 a!2901) j!112) a!2901 mask!2840) (Found!10265 j!112)))))

(assert (=> b!1391078 (=> (not res!931157) (not e!787778))))

(assert (= (and d!150233 (not res!931156)) b!1391077))

(assert (= (and b!1391077 c!129408) b!1391078))

(assert (= (and b!1391077 (not c!129408)) b!1391076))

(assert (= (and b!1391078 res!931157) b!1391075))

(assert (= (or b!1391075 b!1391076) bm!66727))

(assert (=> b!1391077 m!1276873))

(assert (=> b!1391077 m!1276873))

(assert (=> b!1391077 m!1276895))

(declare-fun m!1276973 () Bool)

(assert (=> bm!66727 m!1276973))

(assert (=> b!1391078 m!1276873))

(declare-fun m!1276975 () Bool)

(assert (=> b!1391078 m!1276975))

(declare-fun m!1276977 () Bool)

(assert (=> b!1391078 m!1276977))

(assert (=> b!1391078 m!1276873))

(assert (=> b!1391078 m!1276887))

(assert (=> b!1390975 d!150233))

(declare-fun d!150235 () Bool)

(assert (=> d!150235 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611041 () Unit!46484)

(declare-fun choose!38 (array!95132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46484)

(assert (=> d!150235 (= lt!611041 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150235 (validMask!0 mask!2840)))

(assert (=> d!150235 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611041)))

(declare-fun bs!40463 () Bool)

(assert (= bs!40463 d!150235))

(assert (=> bs!40463 m!1276881))

(declare-fun m!1276987 () Bool)

(assert (=> bs!40463 m!1276987))

(assert (=> bs!40463 m!1276889))

(assert (=> b!1390975 d!150235))

(declare-fun b!1391162 () Bool)

(declare-fun e!787831 () Bool)

(declare-fun e!787828 () Bool)

(assert (=> b!1391162 (= e!787831 e!787828)))

(declare-fun res!931184 () Bool)

(declare-fun lt!611074 () SeekEntryResult!10265)

(assert (=> b!1391162 (= res!931184 (and ((_ is Intermediate!10265) lt!611074) (not (undefined!11077 lt!611074)) (bvslt (x!125112 lt!611074) #b01111111111111111111111111111110) (bvsge (x!125112 lt!611074) #b00000000000000000000000000000000) (bvsge (x!125112 lt!611074) #b00000000000000000000000000000000)))))

(assert (=> b!1391162 (=> (not res!931184) (not e!787828))))

(declare-fun d!150239 () Bool)

(assert (=> d!150239 e!787831))

(declare-fun c!129438 () Bool)

(assert (=> d!150239 (= c!129438 (and ((_ is Intermediate!10265) lt!611074) (undefined!11077 lt!611074)))))

(declare-fun e!787832 () SeekEntryResult!10265)

(assert (=> d!150239 (= lt!611074 e!787832)))

(declare-fun c!129439 () Bool)

(assert (=> d!150239 (= c!129439 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611073 () (_ BitVec 64))

(assert (=> d!150239 (= lt!611073 (select (arr!45926 a!2901) lt!610989))))

(assert (=> d!150239 (validMask!0 mask!2840)))

(assert (=> d!150239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610989 (select (arr!45926 a!2901) j!112) a!2901 mask!2840) lt!611074)))

(declare-fun b!1391163 () Bool)

(assert (=> b!1391163 (and (bvsge (index!43432 lt!611074) #b00000000000000000000000000000000) (bvslt (index!43432 lt!611074) (size!46477 a!2901)))))

(declare-fun res!931183 () Bool)

(assert (=> b!1391163 (= res!931183 (= (select (arr!45926 a!2901) (index!43432 lt!611074)) (select (arr!45926 a!2901) j!112)))))

(declare-fun e!787829 () Bool)

(assert (=> b!1391163 (=> res!931183 e!787829)))

(assert (=> b!1391163 (= e!787828 e!787829)))

(declare-fun b!1391164 () Bool)

(assert (=> b!1391164 (and (bvsge (index!43432 lt!611074) #b00000000000000000000000000000000) (bvslt (index!43432 lt!611074) (size!46477 a!2901)))))

(assert (=> b!1391164 (= e!787829 (= (select (arr!45926 a!2901) (index!43432 lt!611074)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!787830 () SeekEntryResult!10265)

(declare-fun b!1391165 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391165 (= e!787830 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!610989 #b00000000000000000000000000000000 mask!2840) (select (arr!45926 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391166 () Bool)

(assert (=> b!1391166 (= e!787831 (bvsge (x!125112 lt!611074) #b01111111111111111111111111111110))))

(declare-fun b!1391167 () Bool)

(assert (=> b!1391167 (= e!787832 (Intermediate!10265 true lt!610989 #b00000000000000000000000000000000))))

(declare-fun b!1391168 () Bool)

(assert (=> b!1391168 (= e!787830 (Intermediate!10265 false lt!610989 #b00000000000000000000000000000000))))

(declare-fun b!1391169 () Bool)

(assert (=> b!1391169 (and (bvsge (index!43432 lt!611074) #b00000000000000000000000000000000) (bvslt (index!43432 lt!611074) (size!46477 a!2901)))))

(declare-fun res!931185 () Bool)

(assert (=> b!1391169 (= res!931185 (= (select (arr!45926 a!2901) (index!43432 lt!611074)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391169 (=> res!931185 e!787829)))

(declare-fun b!1391170 () Bool)

(assert (=> b!1391170 (= e!787832 e!787830)))

(declare-fun c!129440 () Bool)

(assert (=> b!1391170 (= c!129440 (or (= lt!611073 (select (arr!45926 a!2901) j!112)) (= (bvadd lt!611073 lt!611073) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150239 c!129439) b!1391167))

(assert (= (and d!150239 (not c!129439)) b!1391170))

(assert (= (and b!1391170 c!129440) b!1391168))

(assert (= (and b!1391170 (not c!129440)) b!1391165))

(assert (= (and d!150239 c!129438) b!1391166))

(assert (= (and d!150239 (not c!129438)) b!1391162))

(assert (= (and b!1391162 res!931184) b!1391163))

(assert (= (and b!1391163 (not res!931183)) b!1391169))

(assert (= (and b!1391169 (not res!931185)) b!1391164))

(declare-fun m!1277025 () Bool)

(assert (=> d!150239 m!1277025))

(assert (=> d!150239 m!1276889))

(declare-fun m!1277027 () Bool)

(assert (=> b!1391169 m!1277027))

(assert (=> b!1391164 m!1277027))

(declare-fun m!1277029 () Bool)

(assert (=> b!1391165 m!1277029))

(assert (=> b!1391165 m!1277029))

(assert (=> b!1391165 m!1276873))

(declare-fun m!1277031 () Bool)

(assert (=> b!1391165 m!1277031))

(assert (=> b!1391163 m!1277027))

(assert (=> b!1390975 d!150239))

(declare-fun d!150259 () Bool)

(declare-fun lt!611086 () (_ BitVec 32))

(declare-fun lt!611085 () (_ BitVec 32))

(assert (=> d!150259 (= lt!611086 (bvmul (bvxor lt!611085 (bvlshr lt!611085 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150259 (= lt!611085 ((_ extract 31 0) (bvand (bvxor (select (arr!45926 a!2901) j!112) (bvlshr (select (arr!45926 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150259 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931187 (let ((h!33845 ((_ extract 31 0) (bvand (bvxor (select (arr!45926 a!2901) j!112) (bvlshr (select (arr!45926 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125117 (bvmul (bvxor h!33845 (bvlshr h!33845 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125117 (bvlshr x!125117 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931187 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931187 #b00000000000000000000000000000000))))))

(assert (=> d!150259 (= (toIndex!0 (select (arr!45926 a!2901) j!112) mask!2840) (bvand (bvxor lt!611086 (bvlshr lt!611086 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1390975 d!150259))

(declare-fun b!1391210 () Bool)

(declare-fun e!787855 () SeekEntryResult!10265)

(assert (=> b!1391210 (= e!787855 Undefined!10265)))

(declare-fun b!1391211 () Bool)

(declare-fun e!787854 () SeekEntryResult!10265)

(assert (=> b!1391211 (= e!787855 e!787854)))

(declare-fun lt!611106 () (_ BitVec 64))

(declare-fun lt!611107 () SeekEntryResult!10265)

(assert (=> b!1391211 (= lt!611106 (select (arr!45926 a!2901) (index!43432 lt!611107)))))

(declare-fun c!129456 () Bool)

(assert (=> b!1391211 (= c!129456 (= lt!611106 (select (arr!45926 a!2901) j!112)))))

(declare-fun b!1391212 () Bool)

(assert (=> b!1391212 (= e!787854 (Found!10265 (index!43432 lt!611107)))))

(declare-fun b!1391213 () Bool)

(declare-fun e!787856 () SeekEntryResult!10265)

(assert (=> b!1391213 (= e!787856 (MissingZero!10265 (index!43432 lt!611107)))))

(declare-fun b!1391214 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95132 (_ BitVec 32)) SeekEntryResult!10265)

(assert (=> b!1391214 (= e!787856 (seekKeyOrZeroReturnVacant!0 (x!125112 lt!611107) (index!43432 lt!611107) (index!43432 lt!611107) (select (arr!45926 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391215 () Bool)

(declare-fun c!129458 () Bool)

(assert (=> b!1391215 (= c!129458 (= lt!611106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391215 (= e!787854 e!787856)))

(declare-fun d!150261 () Bool)

(declare-fun lt!611105 () SeekEntryResult!10265)

(assert (=> d!150261 (and (or ((_ is Undefined!10265) lt!611105) (not ((_ is Found!10265) lt!611105)) (and (bvsge (index!43431 lt!611105) #b00000000000000000000000000000000) (bvslt (index!43431 lt!611105) (size!46477 a!2901)))) (or ((_ is Undefined!10265) lt!611105) ((_ is Found!10265) lt!611105) (not ((_ is MissingZero!10265) lt!611105)) (and (bvsge (index!43430 lt!611105) #b00000000000000000000000000000000) (bvslt (index!43430 lt!611105) (size!46477 a!2901)))) (or ((_ is Undefined!10265) lt!611105) ((_ is Found!10265) lt!611105) ((_ is MissingZero!10265) lt!611105) (not ((_ is MissingVacant!10265) lt!611105)) (and (bvsge (index!43433 lt!611105) #b00000000000000000000000000000000) (bvslt (index!43433 lt!611105) (size!46477 a!2901)))) (or ((_ is Undefined!10265) lt!611105) (ite ((_ is Found!10265) lt!611105) (= (select (arr!45926 a!2901) (index!43431 lt!611105)) (select (arr!45926 a!2901) j!112)) (ite ((_ is MissingZero!10265) lt!611105) (= (select (arr!45926 a!2901) (index!43430 lt!611105)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10265) lt!611105) (= (select (arr!45926 a!2901) (index!43433 lt!611105)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150261 (= lt!611105 e!787855)))

(declare-fun c!129457 () Bool)

(assert (=> d!150261 (= c!129457 (and ((_ is Intermediate!10265) lt!611107) (undefined!11077 lt!611107)))))

(assert (=> d!150261 (= lt!611107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45926 a!2901) j!112) mask!2840) (select (arr!45926 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150261 (validMask!0 mask!2840)))

(assert (=> d!150261 (= (seekEntryOrOpen!0 (select (arr!45926 a!2901) j!112) a!2901 mask!2840) lt!611105)))

(assert (= (and d!150261 c!129457) b!1391210))

(assert (= (and d!150261 (not c!129457)) b!1391211))

(assert (= (and b!1391211 c!129456) b!1391212))

(assert (= (and b!1391211 (not c!129456)) b!1391215))

(assert (= (and b!1391215 c!129458) b!1391213))

(assert (= (and b!1391215 (not c!129458)) b!1391214))

(declare-fun m!1277041 () Bool)

(assert (=> b!1391211 m!1277041))

(assert (=> b!1391214 m!1276873))

(declare-fun m!1277043 () Bool)

(assert (=> b!1391214 m!1277043))

(assert (=> d!150261 m!1276889))

(declare-fun m!1277045 () Bool)

(assert (=> d!150261 m!1277045))

(assert (=> d!150261 m!1276873))

(assert (=> d!150261 m!1276875))

(declare-fun m!1277047 () Bool)

(assert (=> d!150261 m!1277047))

(assert (=> d!150261 m!1276875))

(assert (=> d!150261 m!1276873))

(declare-fun m!1277049 () Bool)

(assert (=> d!150261 m!1277049))

(declare-fun m!1277051 () Bool)

(assert (=> d!150261 m!1277051))

(assert (=> b!1390980 d!150261))

(declare-fun d!150267 () Bool)

(assert (=> d!150267 (= (validKeyInArray!0 (select (arr!45926 a!2901) i!1037)) (and (not (= (select (arr!45926 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45926 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390979 d!150267))

(check-sat (not b!1391052) (not bm!66726) (not b!1391077) (not b!1391078) (not d!150239) (not b!1391054) (not b!1391214) (not b!1391056) (not d!150235) (not d!150261) (not b!1391013) (not bm!66717) (not b!1391014) (not b!1391165) (not bm!66727))
(check-sat)
