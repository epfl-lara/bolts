; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93110 () Bool)

(assert start!93110)

(declare-fun b!1055936 () Bool)

(declare-fun e!600265 () Bool)

(declare-fun e!600266 () Bool)

(assert (=> b!1055936 (= e!600265 (not e!600266))))

(declare-fun res!704865 () Bool)

(assert (=> b!1055936 (=> res!704865 e!600266)))

(declare-fun lt!465990 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055936 (= res!704865 (or (bvsgt lt!465990 i!1381) (bvsle i!1381 lt!465990)))))

(declare-datatypes ((array!66583 0))(
  ( (array!66584 (arr!32015 (Array (_ BitVec 32) (_ BitVec 64))) (size!32552 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66583)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1055936 (= (select (store (arr!32015 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465990) k0!2747)))

(declare-fun res!704860 () Bool)

(declare-fun e!600264 () Bool)

(assert (=> start!93110 (=> (not res!704860) (not e!600264))))

(assert (=> start!93110 (= res!704860 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32552 a!3488)) (bvslt (size!32552 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93110 e!600264))

(assert (=> start!93110 true))

(declare-fun array_inv!24637 (array!66583) Bool)

(assert (=> start!93110 (array_inv!24637 a!3488)))

(declare-fun b!1055937 () Bool)

(declare-fun arrayContainsKey!0 (array!66583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055937 (= e!600266 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1055938 () Bool)

(declare-fun e!600263 () Bool)

(assert (=> b!1055938 (= e!600264 e!600263)))

(declare-fun res!704863 () Bool)

(assert (=> b!1055938 (=> (not res!704863) (not e!600263))))

(declare-fun lt!465991 () array!66583)

(assert (=> b!1055938 (= res!704863 (arrayContainsKey!0 lt!465991 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055938 (= lt!465991 (array!66584 (store (arr!32015 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32552 a!3488)))))

(declare-fun b!1055939 () Bool)

(declare-fun res!704859 () Bool)

(assert (=> b!1055939 (=> (not res!704859) (not e!600264))))

(assert (=> b!1055939 (= res!704859 (= (select (arr!32015 a!3488) i!1381) k0!2747))))

(declare-fun b!1055940 () Bool)

(assert (=> b!1055940 (= e!600263 e!600265)))

(declare-fun res!704861 () Bool)

(assert (=> b!1055940 (=> (not res!704861) (not e!600265))))

(assert (=> b!1055940 (= res!704861 (not (= lt!465990 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66583 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055940 (= lt!465990 (arrayScanForKey!0 lt!465991 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055941 () Bool)

(declare-fun res!704864 () Bool)

(assert (=> b!1055941 (=> (not res!704864) (not e!600264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055941 (= res!704864 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055942 () Bool)

(declare-fun res!704862 () Bool)

(assert (=> b!1055942 (=> (not res!704862) (not e!600264))))

(declare-datatypes ((List!22458 0))(
  ( (Nil!22455) (Cons!22454 (h!23663 (_ BitVec 64)) (t!31772 List!22458)) )
))
(declare-fun arrayNoDuplicates!0 (array!66583 (_ BitVec 32) List!22458) Bool)

(assert (=> b!1055942 (= res!704862 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22455))))

(assert (= (and start!93110 res!704860) b!1055942))

(assert (= (and b!1055942 res!704862) b!1055941))

(assert (= (and b!1055941 res!704864) b!1055939))

(assert (= (and b!1055939 res!704859) b!1055938))

(assert (= (and b!1055938 res!704863) b!1055940))

(assert (= (and b!1055940 res!704861) b!1055936))

(assert (= (and b!1055936 (not res!704865)) b!1055937))

(declare-fun m!976059 () Bool)

(assert (=> b!1055939 m!976059))

(declare-fun m!976061 () Bool)

(assert (=> start!93110 m!976061))

(declare-fun m!976063 () Bool)

(assert (=> b!1055938 m!976063))

(declare-fun m!976065 () Bool)

(assert (=> b!1055938 m!976065))

(declare-fun m!976067 () Bool)

(assert (=> b!1055941 m!976067))

(declare-fun m!976069 () Bool)

(assert (=> b!1055937 m!976069))

(assert (=> b!1055936 m!976065))

(declare-fun m!976071 () Bool)

(assert (=> b!1055936 m!976071))

(declare-fun m!976073 () Bool)

(assert (=> b!1055942 m!976073))

(declare-fun m!976075 () Bool)

(assert (=> b!1055940 m!976075))

(check-sat (not b!1055940) (not b!1055938) (not start!93110) (not b!1055942) (not b!1055941) (not b!1055937))
(check-sat)
(get-model)

(declare-fun d!128193 () Bool)

(declare-fun res!704891 () Bool)

(declare-fun e!600286 () Bool)

(assert (=> d!128193 (=> res!704891 e!600286)))

(assert (=> d!128193 (= res!704891 (= (select (arr!32015 a!3488) i!1381) k0!2747))))

(assert (=> d!128193 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!600286)))

(declare-fun b!1055968 () Bool)

(declare-fun e!600287 () Bool)

(assert (=> b!1055968 (= e!600286 e!600287)))

(declare-fun res!704892 () Bool)

(assert (=> b!1055968 (=> (not res!704892) (not e!600287))))

(assert (=> b!1055968 (= res!704892 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32552 a!3488)))))

(declare-fun b!1055969 () Bool)

(assert (=> b!1055969 (= e!600287 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128193 (not res!704891)) b!1055968))

(assert (= (and b!1055968 res!704892) b!1055969))

(assert (=> d!128193 m!976059))

(declare-fun m!976095 () Bool)

(assert (=> b!1055969 m!976095))

(assert (=> b!1055937 d!128193))

(declare-fun d!128195 () Bool)

(assert (=> d!128195 (= (array_inv!24637 a!3488) (bvsge (size!32552 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93110 d!128195))

(declare-fun d!128197 () Bool)

(declare-fun res!704893 () Bool)

(declare-fun e!600288 () Bool)

(assert (=> d!128197 (=> res!704893 e!600288)))

(assert (=> d!128197 (= res!704893 (= (select (arr!32015 lt!465991) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128197 (= (arrayContainsKey!0 lt!465991 k0!2747 #b00000000000000000000000000000000) e!600288)))

(declare-fun b!1055970 () Bool)

(declare-fun e!600289 () Bool)

(assert (=> b!1055970 (= e!600288 e!600289)))

(declare-fun res!704894 () Bool)

(assert (=> b!1055970 (=> (not res!704894) (not e!600289))))

(assert (=> b!1055970 (= res!704894 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32552 lt!465991)))))

(declare-fun b!1055971 () Bool)

(assert (=> b!1055971 (= e!600289 (arrayContainsKey!0 lt!465991 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128197 (not res!704893)) b!1055970))

(assert (= (and b!1055970 res!704894) b!1055971))

(declare-fun m!976097 () Bool)

(assert (=> d!128197 m!976097))

(declare-fun m!976099 () Bool)

(assert (=> b!1055971 m!976099))

(assert (=> b!1055938 d!128197))

(declare-fun d!128199 () Bool)

(assert (=> d!128199 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055941 d!128199))

(declare-fun b!1055986 () Bool)

(declare-fun e!600303 () Bool)

(declare-fun call!44810 () Bool)

(assert (=> b!1055986 (= e!600303 call!44810)))

(declare-fun b!1055987 () Bool)

(declare-fun e!600305 () Bool)

(assert (=> b!1055987 (= e!600305 e!600303)))

(declare-fun c!107003 () Bool)

(assert (=> b!1055987 (= c!107003 (validKeyInArray!0 (select (arr!32015 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055988 () Bool)

(declare-fun e!600304 () Bool)

(assert (=> b!1055988 (= e!600304 e!600305)))

(declare-fun res!704905 () Bool)

(assert (=> b!1055988 (=> (not res!704905) (not e!600305))))

(declare-fun e!600302 () Bool)

(assert (=> b!1055988 (= res!704905 (not e!600302))))

(declare-fun res!704907 () Bool)

(assert (=> b!1055988 (=> (not res!704907) (not e!600302))))

(assert (=> b!1055988 (= res!704907 (validKeyInArray!0 (select (arr!32015 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055989 () Bool)

(assert (=> b!1055989 (= e!600303 call!44810)))

(declare-fun d!128201 () Bool)

(declare-fun res!704906 () Bool)

(assert (=> d!128201 (=> res!704906 e!600304)))

(assert (=> d!128201 (= res!704906 (bvsge #b00000000000000000000000000000000 (size!32552 a!3488)))))

(assert (=> d!128201 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22455) e!600304)))

(declare-fun b!1055990 () Bool)

(declare-fun contains!6206 (List!22458 (_ BitVec 64)) Bool)

(assert (=> b!1055990 (= e!600302 (contains!6206 Nil!22455 (select (arr!32015 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44807 () Bool)

(assert (=> bm!44807 (= call!44810 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107003 (Cons!22454 (select (arr!32015 a!3488) #b00000000000000000000000000000000) Nil!22455) Nil!22455)))))

(assert (= (and d!128201 (not res!704906)) b!1055988))

(assert (= (and b!1055988 res!704907) b!1055990))

(assert (= (and b!1055988 res!704905) b!1055987))

(assert (= (and b!1055987 c!107003) b!1055986))

(assert (= (and b!1055987 (not c!107003)) b!1055989))

(assert (= (or b!1055986 b!1055989) bm!44807))

(declare-fun m!976103 () Bool)

(assert (=> b!1055987 m!976103))

(assert (=> b!1055987 m!976103))

(declare-fun m!976105 () Bool)

(assert (=> b!1055987 m!976105))

(assert (=> b!1055988 m!976103))

(assert (=> b!1055988 m!976103))

(assert (=> b!1055988 m!976105))

(assert (=> b!1055990 m!976103))

(assert (=> b!1055990 m!976103))

(declare-fun m!976107 () Bool)

(assert (=> b!1055990 m!976107))

(assert (=> bm!44807 m!976103))

(declare-fun m!976109 () Bool)

(assert (=> bm!44807 m!976109))

(assert (=> b!1055942 d!128201))

(declare-fun d!128209 () Bool)

(declare-fun lt!466000 () (_ BitVec 32))

(assert (=> d!128209 (and (or (bvslt lt!466000 #b00000000000000000000000000000000) (bvsge lt!466000 (size!32552 lt!465991)) (and (bvsge lt!466000 #b00000000000000000000000000000000) (bvslt lt!466000 (size!32552 lt!465991)))) (bvsge lt!466000 #b00000000000000000000000000000000) (bvslt lt!466000 (size!32552 lt!465991)) (= (select (arr!32015 lt!465991) lt!466000) k0!2747))))

(declare-fun e!600326 () (_ BitVec 32))

(assert (=> d!128209 (= lt!466000 e!600326)))

(declare-fun c!107009 () Bool)

(assert (=> d!128209 (= c!107009 (= (select (arr!32015 lt!465991) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128209 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32552 lt!465991)) (bvslt (size!32552 lt!465991) #b01111111111111111111111111111111))))

(assert (=> d!128209 (= (arrayScanForKey!0 lt!465991 k0!2747 #b00000000000000000000000000000000) lt!466000)))

(declare-fun b!1056016 () Bool)

(assert (=> b!1056016 (= e!600326 #b00000000000000000000000000000000)))

(declare-fun b!1056017 () Bool)

(assert (=> b!1056017 (= e!600326 (arrayScanForKey!0 lt!465991 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128209 c!107009) b!1056016))

(assert (= (and d!128209 (not c!107009)) b!1056017))

(declare-fun m!976119 () Bool)

(assert (=> d!128209 m!976119))

(assert (=> d!128209 m!976097))

(declare-fun m!976121 () Bool)

(assert (=> b!1056017 m!976121))

(assert (=> b!1055940 d!128209))

(check-sat (not b!1055990) (not b!1055988) (not b!1055971) (not b!1055969) (not b!1055987) (not bm!44807) (not b!1056017))
(check-sat)
