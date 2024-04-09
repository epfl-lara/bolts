; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119326 () Bool)

(assert start!119326)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95130 0))(
  ( (array!95131 (arr!45925 (Array (_ BitVec 32) (_ BitVec 64))) (size!46476 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95130)

(declare-fun b!1390954 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!787704 () Bool)

(declare-datatypes ((SeekEntryResult!10264 0))(
  ( (MissingZero!10264 (index!43426 (_ BitVec 32))) (Found!10264 (index!43427 (_ BitVec 32))) (Intermediate!10264 (undefined!11076 Bool) (index!43428 (_ BitVec 32)) (x!125111 (_ BitVec 32))) (Undefined!10264) (MissingVacant!10264 (index!43429 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95130 (_ BitVec 32)) SeekEntryResult!10264)

(assert (=> b!1390954 (= e!787704 (= (seekEntryOrOpen!0 (select (arr!45925 a!2901) j!112) a!2901 mask!2840) (Found!10264 j!112)))))

(declare-fun res!931082 () Bool)

(declare-fun e!787706 () Bool)

(assert (=> start!119326 (=> (not res!931082) (not e!787706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119326 (= res!931082 (validMask!0 mask!2840))))

(assert (=> start!119326 e!787706))

(assert (=> start!119326 true))

(declare-fun array_inv!34870 (array!95130) Bool)

(assert (=> start!119326 (array_inv!34870 a!2901)))

(declare-fun lt!610979 () (_ BitVec 32))

(declare-fun b!1390955 () Bool)

(declare-fun lt!610980 () SeekEntryResult!10264)

(assert (=> b!1390955 (= e!787706 (not (or (not (is-Intermediate!10264 lt!610980)) (undefined!11076 lt!610980) (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!610979 #b00000000000000000000000000000000) (bvslt lt!610979 (bvadd #b00000000000000000000000000000001 mask!2840))))))))

(assert (=> b!1390955 e!787704))

(declare-fun res!931080 () Bool)

(assert (=> b!1390955 (=> (not res!931080) (not e!787704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95130 (_ BitVec 32)) Bool)

(assert (=> b!1390955 (= res!931080 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46482 0))(
  ( (Unit!46483) )
))
(declare-fun lt!610981 () Unit!46482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46482)

(assert (=> b!1390955 (= lt!610981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95130 (_ BitVec 32)) SeekEntryResult!10264)

(assert (=> b!1390955 (= lt!610980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610979 (select (arr!45925 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390955 (= lt!610979 (toIndex!0 (select (arr!45925 a!2901) j!112) mask!2840))))

(declare-fun b!1390956 () Bool)

(declare-fun res!931083 () Bool)

(assert (=> b!1390956 (=> (not res!931083) (not e!787706))))

(declare-datatypes ((List!32624 0))(
  ( (Nil!32621) (Cons!32620 (h!33841 (_ BitVec 64)) (t!47325 List!32624)) )
))
(declare-fun arrayNoDuplicates!0 (array!95130 (_ BitVec 32) List!32624) Bool)

(assert (=> b!1390956 (= res!931083 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32621))))

(declare-fun b!1390957 () Bool)

(declare-fun res!931081 () Bool)

(assert (=> b!1390957 (=> (not res!931081) (not e!787706))))

(assert (=> b!1390957 (= res!931081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390958 () Bool)

(declare-fun res!931078 () Bool)

(assert (=> b!1390958 (=> (not res!931078) (not e!787706))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390958 (= res!931078 (validKeyInArray!0 (select (arr!45925 a!2901) i!1037)))))

(declare-fun b!1390959 () Bool)

(declare-fun res!931077 () Bool)

(assert (=> b!1390959 (=> (not res!931077) (not e!787706))))

(assert (=> b!1390959 (= res!931077 (and (= (size!46476 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46476 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46476 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390960 () Bool)

(declare-fun res!931079 () Bool)

(assert (=> b!1390960 (=> (not res!931079) (not e!787706))))

(assert (=> b!1390960 (= res!931079 (validKeyInArray!0 (select (arr!45925 a!2901) j!112)))))

(assert (= (and start!119326 res!931082) b!1390959))

(assert (= (and b!1390959 res!931077) b!1390958))

(assert (= (and b!1390958 res!931078) b!1390960))

(assert (= (and b!1390960 res!931079) b!1390957))

(assert (= (and b!1390957 res!931081) b!1390956))

(assert (= (and b!1390956 res!931083) b!1390955))

(assert (= (and b!1390955 res!931080) b!1390954))

(declare-fun m!1276847 () Bool)

(assert (=> b!1390958 m!1276847))

(assert (=> b!1390958 m!1276847))

(declare-fun m!1276849 () Bool)

(assert (=> b!1390958 m!1276849))

(declare-fun m!1276851 () Bool)

(assert (=> b!1390956 m!1276851))

(declare-fun m!1276853 () Bool)

(assert (=> b!1390955 m!1276853))

(declare-fun m!1276855 () Bool)

(assert (=> b!1390955 m!1276855))

(assert (=> b!1390955 m!1276853))

(declare-fun m!1276857 () Bool)

(assert (=> b!1390955 m!1276857))

(assert (=> b!1390955 m!1276853))

(declare-fun m!1276859 () Bool)

(assert (=> b!1390955 m!1276859))

(declare-fun m!1276861 () Bool)

(assert (=> b!1390955 m!1276861))

(declare-fun m!1276863 () Bool)

(assert (=> start!119326 m!1276863))

(declare-fun m!1276865 () Bool)

(assert (=> start!119326 m!1276865))

(assert (=> b!1390954 m!1276853))

(assert (=> b!1390954 m!1276853))

(declare-fun m!1276867 () Bool)

(assert (=> b!1390954 m!1276867))

(assert (=> b!1390960 m!1276853))

(assert (=> b!1390960 m!1276853))

(declare-fun m!1276869 () Bool)

(assert (=> b!1390960 m!1276869))

(declare-fun m!1276871 () Bool)

(assert (=> b!1390957 m!1276871))

(push 1)

(assert (not b!1390954))

(assert (not start!119326))

(assert (not b!1390958))

(assert (not b!1390960))

(assert (not b!1390956))

(assert (not b!1390957))

(assert (not b!1390955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1391048 () Bool)

(declare-fun e!787760 () Bool)

(declare-fun call!66728 () Bool)

(assert (=> b!1391048 (= e!787760 call!66728)))

(declare-fun b!1391049 () Bool)

(declare-fun e!787761 () Bool)

(declare-fun e!787762 () Bool)

(assert (=> b!1391049 (= e!787761 e!787762)))

(declare-fun c!129397 () Bool)

(assert (=> b!1391049 (= c!129397 (validKeyInArray!0 (select (arr!45925 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391050 () Bool)

(assert (=> b!1391050 (= e!787762 call!66728)))

(declare-fun bm!66725 () Bool)

(assert (=> bm!66725 (= call!66728 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391051 () Bool)

(assert (=> b!1391051 (= e!787762 e!787760)))

(declare-fun lt!611015 () (_ BitVec 64))

(assert (=> b!1391051 (= lt!611015 (select (arr!45925 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611017 () Unit!46482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95130 (_ BitVec 64) (_ BitVec 32)) Unit!46482)

(assert (=> b!1391051 (= lt!611017 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611015 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391051 (arrayContainsKey!0 a!2901 lt!611015 #b00000000000000000000000000000000)))

(declare-fun lt!611016 () Unit!46482)

(assert (=> b!1391051 (= lt!611016 lt!611017)))

(declare-fun res!931151 () Bool)

(assert (=> b!1391051 (= res!931151 (= (seekEntryOrOpen!0 (select (arr!45925 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10264 #b00000000000000000000000000000000)))))

(assert (=> b!1391051 (=> (not res!931151) (not e!787760))))

(declare-fun d!150205 () Bool)

(declare-fun res!931152 () Bool)

(assert (=> d!150205 (=> res!931152 e!787761)))

(assert (=> d!150205 (= res!931152 (bvsge #b00000000000000000000000000000000 (size!46476 a!2901)))))

(assert (=> d!150205 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787761)))

(assert (= (and d!150205 (not res!931152)) b!1391049))

(assert (= (and b!1391049 c!129397) b!1391051))

(assert (= (and b!1391049 (not c!129397)) b!1391050))

(assert (= (and b!1391051 res!931151) b!1391048))

(assert (= (or b!1391048 b!1391050) bm!66725))

(declare-fun m!1276945 () Bool)

(assert (=> b!1391049 m!1276945))

(assert (=> b!1391049 m!1276945))

(declare-fun m!1276947 () Bool)

(assert (=> b!1391049 m!1276947))

(declare-fun m!1276949 () Bool)

(assert (=> bm!66725 m!1276949))

(assert (=> b!1391051 m!1276945))

(declare-fun m!1276951 () Bool)

(assert (=> b!1391051 m!1276951))

(declare-fun m!1276953 () Bool)

(assert (=> b!1391051 m!1276953))

(assert (=> b!1391051 m!1276945))

(declare-fun m!1276955 () Bool)

(assert (=> b!1391051 m!1276955))

(assert (=> b!1390957 d!150205))

(declare-fun d!150217 () Bool)

(assert (=> d!150217 (= (validKeyInArray!0 (select (arr!45925 a!2901) i!1037)) (and (not (= (select (arr!45925 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45925 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390958 d!150217))

(declare-fun d!150219 () Bool)

(assert (=> d!150219 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119326 d!150219))

(declare-fun d!150227 () Bool)

(assert (=> d!150227 (= (array_inv!34870 a!2901) (bvsge (size!46476 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119326 d!150227))

(declare-fun b!1391107 () Bool)

(declare-fun c!129419 () Bool)

(declare-fun lt!611056 () (_ BitVec 64))

(assert (=> b!1391107 (= c!129419 (= lt!611056 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!787798 () SeekEntryResult!10264)

(declare-fun e!787799 () SeekEntryResult!10264)

(assert (=> b!1391107 (= e!787798 e!787799)))

(declare-fun b!1391108 () Bool)

(declare-fun lt!611054 () SeekEntryResult!10264)

(assert (=> b!1391108 (= e!787799 (MissingZero!10264 (index!43428 lt!611054)))))

(declare-fun b!1391109 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95130 (_ BitVec 32)) SeekEntryResult!10264)

(assert (=> b!1391109 (= e!787799 (seekKeyOrZeroReturnVacant!0 (x!125111 lt!611054) (index!43428 lt!611054) (index!43428 lt!611054) (select (arr!45925 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391111 () Bool)

(declare-fun e!787797 () SeekEntryResult!10264)

(assert (=> b!1391111 (= e!787797 Undefined!10264)))

(declare-fun b!1391112 () Bool)

(assert (=> b!1391112 (= e!787797 e!787798)))

(assert (=> b!1391112 (= lt!611056 (select (arr!45925 a!2901) (index!43428 lt!611054)))))

(declare-fun c!129420 () Bool)

(assert (=> b!1391112 (= c!129420 (= lt!611056 (select (arr!45925 a!2901) j!112)))))

(declare-fun b!1391110 () Bool)

(assert (=> b!1391110 (= e!787798 (Found!10264 (index!43428 lt!611054)))))

(declare-fun d!150229 () Bool)

(declare-fun lt!611055 () SeekEntryResult!10264)

(assert (=> d!150229 (and (or (is-Undefined!10264 lt!611055) (not (is-Found!10264 lt!611055)) (and (bvsge (index!43427 lt!611055) #b00000000000000000000000000000000) (bvslt (index!43427 lt!611055) (size!46476 a!2901)))) (or (is-Undefined!10264 lt!611055) (is-Found!10264 lt!611055) (not (is-MissingZero!10264 lt!611055)) (and (bvsge (index!43426 lt!611055) #b00000000000000000000000000000000) (bvslt (index!43426 lt!611055) (size!46476 a!2901)))) (or (is-Undefined!10264 lt!611055) (is-Found!10264 lt!611055) (is-MissingZero!10264 lt!611055) (not (is-MissingVacant!10264 lt!611055)) (and (bvsge (index!43429 lt!611055) #b00000000000000000000000000000000) (bvslt (index!43429 lt!611055) (size!46476 a!2901)))) (or (is-Undefined!10264 lt!611055) (ite (is-Found!10264 lt!611055) (= (select (arr!45925 a!2901) (index!43427 lt!611055)) (select (arr!45925 a!2901) j!112)) (ite (is-MissingZero!10264 lt!611055) (= (select (arr!45925 a!2901) (index!43426 lt!611055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10264 lt!611055) (= (select (arr!45925 a!2901) (index!43429 lt!611055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150229 (= lt!611055 e!787797)))

(declare-fun c!129421 () Bool)

(assert (=> d!150229 (= c!129421 (and (is-Intermediate!10264 lt!611054) (undefined!11076 lt!611054)))))

(assert (=> d!150229 (= lt!611054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45925 a!2901) j!112) mask!2840) (select (arr!45925 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150229 (validMask!0 mask!2840)))

(assert (=> d!150229 (= (seekEntryOrOpen!0 (select (arr!45925 a!2901) j!112) a!2901 mask!2840) lt!611055)))

(assert (= (and d!150229 c!129421) b!1391111))

(assert (= (and d!150229 (not c!129421)) b!1391112))

(assert (= (and b!1391112 c!129420) b!1391110))

(assert (= (and b!1391112 (not c!129420)) b!1391107))

(assert (= (and b!1391107 c!129419) b!1391108))

(assert (= (and b!1391107 (not c!129419)) b!1391109))

(assert (=> b!1391109 m!1276853))

(declare-fun m!1276997 () Bool)

(assert (=> b!1391109 m!1276997))

(declare-fun m!1276999 () Bool)

(assert (=> b!1391112 m!1276999))

(declare-fun m!1277001 () Bool)

(assert (=> d!150229 m!1277001))

(declare-fun m!1277003 () Bool)

(assert (=> d!150229 m!1277003))

(declare-fun m!1277005 () Bool)

(assert (=> d!150229 m!1277005))

(assert (=> d!150229 m!1276853))

(assert (=> d!150229 m!1276855))

(assert (=> d!150229 m!1276863))

(assert (=> d!150229 m!1276855))

(assert (=> d!150229 m!1276853))

(declare-fun m!1277007 () Bool)

(assert (=> d!150229 m!1277007))

(assert (=> b!1390954 d!150229))

(declare-fun d!150249 () Bool)

(assert (=> d!150249 (= (validKeyInArray!0 (select (arr!45925 a!2901) j!112)) (and (not (= (select (arr!45925 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45925 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390960 d!150249))

(declare-fun b!1391115 () Bool)

(declare-fun e!787800 () Bool)

(declare-fun call!66735 () Bool)

(assert (=> b!1391115 (= e!787800 call!66735)))

(declare-fun b!1391116 () Bool)

(declare-fun e!787801 () Bool)

(declare-fun e!787802 () Bool)

(assert (=> b!1391116 (= e!787801 e!787802)))

(declare-fun c!129422 () Bool)

(assert (=> b!1391116 (= c!129422 (validKeyInArray!0 (select (arr!45925 a!2901) j!112)))))

(declare-fun b!1391117 () Bool)

(assert (=> b!1391117 (= e!787802 call!66735)))

(declare-fun bm!66732 () Bool)

(assert (=> bm!66732 (= call!66735 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1391118 () Bool)

(assert (=> b!1391118 (= e!787802 e!787800)))

(declare-fun lt!611061 () (_ BitVec 64))

(assert (=> b!1391118 (= lt!611061 (select (arr!45925 a!2901) j!112))))

(declare-fun lt!611063 () Unit!46482)

(assert (=> b!1391118 (= lt!611063 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611061 j!112))))

(assert (=> b!1391118 (arrayContainsKey!0 a!2901 lt!611061 #b00000000000000000000000000000000)))

(declare-fun lt!611062 () Unit!46482)

(assert (=> b!1391118 (= lt!611062 lt!611063)))

(declare-fun res!931166 () Bool)

(assert (=> b!1391118 (= res!931166 (= (seekEntryOrOpen!0 (select (arr!45925 a!2901) j!112) a!2901 mask!2840) (Found!10264 j!112)))))

(assert (=> b!1391118 (=> (not res!931166) (not e!787800))))

(declare-fun d!150251 () Bool)

(declare-fun res!931167 () Bool)

(assert (=> d!150251 (=> res!931167 e!787801)))

(assert (=> d!150251 (= res!931167 (bvsge j!112 (size!46476 a!2901)))))

(assert (=> d!150251 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787801)))

(assert (= (and d!150251 (not res!931167)) b!1391116))

(assert (= (and b!1391116 c!129422) b!1391118))

(assert (= (and b!1391116 (not c!129422)) b!1391117))

(assert (= (and b!1391118 res!931166) b!1391115))

(assert (= (or b!1391115 b!1391117) bm!66732))

(assert (=> b!1391116 m!1276853))

(assert (=> b!1391116 m!1276853))

(assert (=> b!1391116 m!1276869))

(declare-fun m!1277009 () Bool)

(assert (=> bm!66732 m!1277009))

(assert (=> b!1391118 m!1276853))

(declare-fun m!1277011 () Bool)

(assert (=> b!1391118 m!1277011))

(declare-fun m!1277013 () Bool)

(assert (=> b!1391118 m!1277013))

(assert (=> b!1391118 m!1276853))

(assert (=> b!1391118 m!1276867))

(assert (=> b!1390955 d!150251))

(declare-fun d!150253 () Bool)

(assert (=> d!150253 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611070 () Unit!46482)

(declare-fun choose!38 (array!95130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46482)

(assert (=> d!150253 (= lt!611070 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150253 (validMask!0 mask!2840)))

(assert (=> d!150253 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611070)))

(declare-fun bs!40465 () Bool)

(assert (= bs!40465 d!150253))

(assert (=> bs!40465 m!1276861))

(declare-fun m!1277015 () Bool)

(assert (=> bs!40465 m!1277015))

(assert (=> bs!40465 m!1276863))

(assert (=> b!1390955 d!150253))

(declare-fun b!1391189 () Bool)

(declare-fun e!787845 () Bool)

(declare-fun e!787843 () Bool)

(assert (=> b!1391189 (= e!787845 e!787843)))

(declare-fun res!931194 () Bool)

(declare-fun lt!611092 () SeekEntryResult!10264)

(assert (=> b!1391189 (= res!931194 (and (is-Intermediate!10264 lt!611092) (not (undefined!11076 lt!611092)) (bvslt (x!125111 lt!611092) #b01111111111111111111111111111110) (bvsge (x!125111 lt!611092) #b00000000000000000000000000000000) (bvsge (x!125111 lt!611092) #b00000000000000000000000000000000)))))

(assert (=> b!1391189 (=> (not res!931194) (not e!787843))))

(declare-fun b!1391190 () Bool)

(assert (=> b!1391190 (and (bvsge (index!43428 lt!611092) #b00000000000000000000000000000000) (bvslt (index!43428 lt!611092) (size!46476 a!2901)))))

(declare-fun res!931196 () Bool)

(assert (=> b!1391190 (= res!931196 (= (select (arr!45925 a!2901) (index!43428 lt!611092)) (select (arr!45925 a!2901) j!112)))))

(declare-fun e!787847 () Bool)

(assert (=> b!1391190 (=> res!931196 e!787847)))

(assert (=> b!1391190 (= e!787843 e!787847)))

(declare-fun e!787846 () SeekEntryResult!10264)

(declare-fun b!1391191 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391191 (= e!787846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!610979 #b00000000000000000000000000000000 mask!2840) (select (arr!45925 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391192 () Bool)

(assert (=> b!1391192 (and (bvsge (index!43428 lt!611092) #b00000000000000000000000000000000) (bvslt (index!43428 lt!611092) (size!46476 a!2901)))))

(declare-fun res!931195 () Bool)

(assert (=> b!1391192 (= res!931195 (= (select (arr!45925 a!2901) (index!43428 lt!611092)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391192 (=> res!931195 e!787847)))

(declare-fun b!1391193 () Bool)

(declare-fun e!787844 () SeekEntryResult!10264)

(assert (=> b!1391193 (= e!787844 e!787846)))

(declare-fun c!129449 () Bool)

(declare-fun lt!611091 () (_ BitVec 64))

(assert (=> b!1391193 (= c!129449 (or (= lt!611091 (select (arr!45925 a!2901) j!112)) (= (bvadd lt!611091 lt!611091) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1391194 () Bool)

(assert (=> b!1391194 (= e!787844 (Intermediate!10264 true lt!610979 #b00000000000000000000000000000000))))

(declare-fun b!1391195 () Bool)

(assert (=> b!1391195 (= e!787846 (Intermediate!10264 false lt!610979 #b00000000000000000000000000000000))))

(declare-fun b!1391196 () Bool)

(assert (=> b!1391196 (and (bvsge (index!43428 lt!611092) #b00000000000000000000000000000000) (bvslt (index!43428 lt!611092) (size!46476 a!2901)))))

(assert (=> b!1391196 (= e!787847 (= (select (arr!45925 a!2901) (index!43428 lt!611092)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1391197 () Bool)

(assert (=> b!1391197 (= e!787845 (bvsge (x!125111 lt!611092) #b01111111111111111111111111111110))))

(declare-fun d!150255 () Bool)

(assert (=> d!150255 e!787845))

(declare-fun c!129447 () Bool)

(assert (=> d!150255 (= c!129447 (and (is-Intermediate!10264 lt!611092) (undefined!11076 lt!611092)))))

(assert (=> d!150255 (= lt!611092 e!787844)))

(declare-fun c!129448 () Bool)

(assert (=> d!150255 (= c!129448 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150255 (= lt!611091 (select (arr!45925 a!2901) lt!610979))))

(assert (=> d!150255 (validMask!0 mask!2840)))

(assert (=> d!150255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610979 (select (arr!45925 a!2901) j!112) a!2901 mask!2840) lt!611092)))

(assert (= (and d!150255 c!129448) b!1391194))

(assert (= (and d!150255 (not c!129448)) b!1391193))

(assert (= (and b!1391193 c!129449) b!1391195))

(assert (= (and b!1391193 (not c!129449)) b!1391191))

(assert (= (and d!150255 c!129447) b!1391197))

(assert (= (and d!150255 (not c!129447)) b!1391189))

(assert (= (and b!1391189 res!931194) b!1391190))

(assert (= (and b!1391190 (not res!931196)) b!1391192))

(assert (= (and b!1391192 (not res!931195)) b!1391196))

(declare-fun m!1277033 () Bool)

(assert (=> b!1391191 m!1277033))

(assert (=> b!1391191 m!1277033))

(assert (=> b!1391191 m!1276853))

(declare-fun m!1277035 () Bool)

(assert (=> b!1391191 m!1277035))

(declare-fun m!1277037 () Bool)

(assert (=> b!1391190 m!1277037))

(declare-fun m!1277039 () Bool)

(assert (=> d!150255 m!1277039))

(assert (=> d!150255 m!1276863))

(assert (=> b!1391192 m!1277037))

(assert (=> b!1391196 m!1277037))

(assert (=> b!1390955 d!150255))

(declare-fun d!150263 () Bool)

(declare-fun lt!611104 () (_ BitVec 32))

(declare-fun lt!611103 () (_ BitVec 32))

(assert (=> d!150263 (= lt!611104 (bvmul (bvxor lt!611103 (bvlshr lt!611103 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150263 (= lt!611103 ((_ extract 31 0) (bvand (bvxor (select (arr!45925 a!2901) j!112) (bvlshr (select (arr!45925 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150263 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931197 (let ((h!33846 ((_ extract 31 0) (bvand (bvxor (select (arr!45925 a!2901) j!112) (bvlshr (select (arr!45925 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125119 (bvmul (bvxor h!33846 (bvlshr h!33846 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125119 (bvlshr x!125119 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931197 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931197 #b00000000000000000000000000000000))))))

(assert (=> d!150263 (= (toIndex!0 (select (arr!45925 a!2901) j!112) mask!2840) (bvand (bvxor lt!611104 (bvlshr lt!611104 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1390955 d!150263))

(declare-fun b!1391226 () Bool)

(declare-fun e!787867 () Bool)

(declare-fun call!66738 () Bool)

(assert (=> b!1391226 (= e!787867 call!66738)))

(declare-fun bm!66735 () Bool)

(declare-fun c!129461 () Bool)

(assert (=> bm!66735 (= call!66738 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129461 (Cons!32620 (select (arr!45925 a!2901) #b00000000000000000000000000000000) Nil!32621) Nil!32621)))))

(declare-fun b!1391227 () Bool)

(assert (=> b!1391227 (= e!787867 call!66738)))

(declare-fun b!1391228 () Bool)

(declare-fun e!787866 () Bool)

(declare-fun contains!9778 (List!32624 (_ BitVec 64)) Bool)

(assert (=> b!1391228 (= e!787866 (contains!9778 Nil!32621 (select (arr!45925 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150265 () Bool)

(declare-fun res!931204 () Bool)

(declare-fun e!787868 () Bool)

(assert (=> d!150265 (=> res!931204 e!787868)))

(assert (=> d!150265 (= res!931204 (bvsge #b00000000000000000000000000000000 (size!46476 a!2901)))))

(assert (=> d!150265 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32621) e!787868)))

(declare-fun b!1391229 () Bool)

(declare-fun e!787865 () Bool)

(assert (=> b!1391229 (= e!787865 e!787867)))

(assert (=> b!1391229 (= c!129461 (validKeyInArray!0 (select (arr!45925 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391230 () Bool)

(assert (=> b!1391230 (= e!787868 e!787865)))

(declare-fun res!931206 () Bool)

(assert (=> b!1391230 (=> (not res!931206) (not e!787865))))

(assert (=> b!1391230 (= res!931206 (not e!787866))))

(declare-fun res!931205 () Bool)

(assert (=> b!1391230 (=> (not res!931205) (not e!787866))))

(assert (=> b!1391230 (= res!931205 (validKeyInArray!0 (select (arr!45925 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150265 (not res!931204)) b!1391230))

(assert (= (and b!1391230 res!931205) b!1391228))

(assert (= (and b!1391230 res!931206) b!1391229))

(assert (= (and b!1391229 c!129461) b!1391226))

(assert (= (and b!1391229 (not c!129461)) b!1391227))

(assert (= (or b!1391226 b!1391227) bm!66735))

(assert (=> bm!66735 m!1276945))

(declare-fun m!1277053 () Bool)

(assert (=> bm!66735 m!1277053))

(assert (=> b!1391228 m!1276945))

(assert (=> b!1391228 m!1276945))

(declare-fun m!1277055 () Bool)

(assert (=> b!1391228 m!1277055))

(assert (=> b!1391229 m!1276945))

(assert (=> b!1391229 m!1276945))

(assert (=> b!1391229 m!1276947))

(assert (=> b!1391230 m!1276945))

(assert (=> b!1391230 m!1276945))

(assert (=> b!1391230 m!1276947))

(assert (=> b!1390956 d!150265))

(push 1)

(assert (not b!1391230))

(assert (not bm!66725))

(assert (not d!150253))

(assert (not d!150255))

(assert (not bm!66735))

(assert (not b!1391229))

(assert (not b!1391228))

(assert (not b!1391049))

(assert (not b!1391051))

(assert (not b!1391118))

(assert (not bm!66732))

(assert (not b!1391109))

(assert (not d!150229))

(assert (not b!1391116))

(assert (not b!1391191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

