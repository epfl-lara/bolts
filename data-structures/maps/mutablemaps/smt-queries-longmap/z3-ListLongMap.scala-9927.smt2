; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117394 () Bool)

(assert start!117394)

(declare-fun res!922227 () Bool)

(declare-fun e!781717 () Bool)

(assert (=> start!117394 (=> (not res!922227) (not e!781717))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93891 0))(
  ( (array!93892 (arr!45338 (Array (_ BitVec 32) (_ BitVec 64))) (size!45889 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93891)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117394 (= res!922227 (and (bvslt (size!45889 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45889 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117394 e!781717))

(declare-fun array_inv!34283 (array!93891) Bool)

(assert (=> start!117394 (array_inv!34283 a!4010)))

(assert (=> start!117394 true))

(declare-fun b!1379727 () Bool)

(declare-fun res!922226 () Bool)

(assert (=> b!1379727 (=> (not res!922226) (not e!781717))))

(declare-fun isPivot!0 (array!93891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379727 (= res!922226 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379728 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93891 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379728 (= e!781717 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (=> b!1379728 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45865 0))(
  ( (Unit!45866) )
))
(declare-fun lt!607699 () Unit!45865)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45865)

(assert (=> b!1379728 (= lt!607699 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117394 res!922227) b!1379727))

(assert (= (and b!1379727 res!922226) b!1379728))

(declare-fun m!1265003 () Bool)

(assert (=> start!117394 m!1265003))

(declare-fun m!1265005 () Bool)

(assert (=> b!1379727 m!1265005))

(declare-fun m!1265007 () Bool)

(assert (=> b!1379728 m!1265007))

(declare-fun m!1265009 () Bool)

(assert (=> b!1379728 m!1265009))

(declare-fun m!1265011 () Bool)

(assert (=> b!1379728 m!1265011))

(declare-fun m!1265013 () Bool)

(assert (=> b!1379728 m!1265013))

(declare-fun m!1265015 () Bool)

(assert (=> b!1379728 m!1265015))

(check-sat (not b!1379728) (not start!117394) (not b!1379727))
(check-sat)
(get-model)

(declare-fun d!148579 () Bool)

(assert (=> d!148579 (= (isPivot!0 a!4010 from!3388 to!184 pivot!64) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39782 () Bool)

(assert (= bs!39782 d!148579))

(assert (=> bs!39782 m!1265009))

(assert (=> bs!39782 m!1265011))

(assert (=> bs!39782 m!1265007))

(assert (=> b!1379728 d!148579))

(declare-fun d!148581 () Bool)

(assert (=> d!148581 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-fun lt!607705 () Unit!45865)

(declare-fun choose!124 (array!93891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45865)

(assert (=> d!148581 (= lt!607705 (choose!124 a!4010 from!3388 to!184 pivot!64 from!3388))))

(declare-fun e!781727 () Bool)

(assert (=> d!148581 e!781727))

(declare-fun res!922236 () Bool)

(assert (=> d!148581 (=> (not res!922236) (not e!781727))))

(assert (=> d!148581 (= res!922236 (and (bvslt (size!45889 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45889 a!4010)) (bvsge pivot!64 from!3388) (bvslt pivot!64 to!184) (bvsle from!3388 pivot!64) (bvsge from!3388 from!3388)))))

(assert (=> d!148581 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388) lt!607705)))

(declare-fun b!1379737 () Bool)

(assert (=> b!1379737 (= e!781727 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and d!148581 res!922236) b!1379737))

(assert (=> d!148581 m!1265015))

(declare-fun m!1265033 () Bool)

(assert (=> d!148581 m!1265033))

(assert (=> b!1379737 m!1265005))

(assert (=> b!1379728 d!148581))

(declare-fun b!1379774 () Bool)

(declare-fun e!781748 () (_ BitVec 32))

(assert (=> b!1379774 (= e!781748 #b00000000000000000000000000000000)))

(declare-fun d!148593 () Bool)

(declare-fun lt!607721 () (_ BitVec 32))

(assert (=> d!148593 (and (bvsge lt!607721 #b00000000000000000000000000000000) (bvsle lt!607721 (bvsub (size!45889 a!4010) pivot!64)))))

(assert (=> d!148593 (= lt!607721 e!781748)))

(declare-fun c!128207 () Bool)

(assert (=> d!148593 (= c!128207 (bvsge pivot!64 to!184))))

(assert (=> d!148593 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45889 a!4010)))))

(assert (=> d!148593 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607721)))

(declare-fun bm!66101 () Bool)

(declare-fun call!66104 () (_ BitVec 32))

(assert (=> bm!66101 (= call!66104 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379775 () Bool)

(declare-fun e!781749 () (_ BitVec 32))

(assert (=> b!1379775 (= e!781748 e!781749)))

(declare-fun c!128208 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379775 (= c!128208 (validKeyInArray!0 (select (arr!45338 a!4010) pivot!64)))))

(declare-fun b!1379776 () Bool)

(assert (=> b!1379776 (= e!781749 (bvadd #b00000000000000000000000000000001 call!66104))))

(declare-fun b!1379777 () Bool)

(assert (=> b!1379777 (= e!781749 call!66104)))

(assert (= (and d!148593 c!128207) b!1379774))

(assert (= (and d!148593 (not c!128207)) b!1379775))

(assert (= (and b!1379775 c!128208) b!1379776))

(assert (= (and b!1379775 (not c!128208)) b!1379777))

(assert (= (or b!1379776 b!1379777) bm!66101))

(declare-fun m!1265053 () Bool)

(assert (=> bm!66101 m!1265053))

(declare-fun m!1265055 () Bool)

(assert (=> b!1379775 m!1265055))

(assert (=> b!1379775 m!1265055))

(declare-fun m!1265057 () Bool)

(assert (=> b!1379775 m!1265057))

(assert (=> b!1379728 d!148593))

(declare-fun b!1379784 () Bool)

(declare-fun e!781754 () (_ BitVec 32))

(assert (=> b!1379784 (= e!781754 #b00000000000000000000000000000000)))

(declare-fun d!148605 () Bool)

(declare-fun lt!607722 () (_ BitVec 32))

(assert (=> d!148605 (and (bvsge lt!607722 #b00000000000000000000000000000000) (bvsle lt!607722 (bvsub (size!45889 a!4010) from!3388)))))

(assert (=> d!148605 (= lt!607722 e!781754)))

(declare-fun c!128213 () Bool)

(assert (=> d!148605 (= c!128213 (bvsge from!3388 to!184))))

(assert (=> d!148605 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45889 a!4010)))))

(assert (=> d!148605 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607722)))

(declare-fun call!66107 () (_ BitVec 32))

(declare-fun bm!66104 () Bool)

(assert (=> bm!66104 (= call!66107 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379785 () Bool)

(declare-fun e!781755 () (_ BitVec 32))

(assert (=> b!1379785 (= e!781754 e!781755)))

(declare-fun c!128214 () Bool)

(assert (=> b!1379785 (= c!128214 (validKeyInArray!0 (select (arr!45338 a!4010) from!3388)))))

(declare-fun b!1379786 () Bool)

(assert (=> b!1379786 (= e!781755 (bvadd #b00000000000000000000000000000001 call!66107))))

(declare-fun b!1379787 () Bool)

(assert (=> b!1379787 (= e!781755 call!66107)))

(assert (= (and d!148605 c!128213) b!1379784))

(assert (= (and d!148605 (not c!128213)) b!1379785))

(assert (= (and b!1379785 c!128214) b!1379786))

(assert (= (and b!1379785 (not c!128214)) b!1379787))

(assert (= (or b!1379786 b!1379787) bm!66104))

(declare-fun m!1265059 () Bool)

(assert (=> bm!66104 m!1265059))

(declare-fun m!1265061 () Bool)

(assert (=> b!1379785 m!1265061))

(assert (=> b!1379785 m!1265061))

(declare-fun m!1265063 () Bool)

(assert (=> b!1379785 m!1265063))

(assert (=> b!1379728 d!148605))

(declare-fun b!1379788 () Bool)

(declare-fun e!781756 () (_ BitVec 32))

(assert (=> b!1379788 (= e!781756 #b00000000000000000000000000000000)))

(declare-fun d!148607 () Bool)

(declare-fun lt!607723 () (_ BitVec 32))

(assert (=> d!148607 (and (bvsge lt!607723 #b00000000000000000000000000000000) (bvsle lt!607723 (bvsub (size!45889 a!4010) from!3388)))))

(assert (=> d!148607 (= lt!607723 e!781756)))

(declare-fun c!128215 () Bool)

(assert (=> d!148607 (= c!128215 (bvsge from!3388 pivot!64))))

(assert (=> d!148607 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45889 a!4010)))))

(assert (=> d!148607 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607723)))

(declare-fun bm!66105 () Bool)

(declare-fun call!66108 () (_ BitVec 32))

(assert (=> bm!66105 (= call!66108 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun b!1379789 () Bool)

(declare-fun e!781757 () (_ BitVec 32))

(assert (=> b!1379789 (= e!781756 e!781757)))

(declare-fun c!128216 () Bool)

(assert (=> b!1379789 (= c!128216 (validKeyInArray!0 (select (arr!45338 a!4010) from!3388)))))

(declare-fun b!1379790 () Bool)

(assert (=> b!1379790 (= e!781757 (bvadd #b00000000000000000000000000000001 call!66108))))

(declare-fun b!1379791 () Bool)

(assert (=> b!1379791 (= e!781757 call!66108)))

(assert (= (and d!148607 c!128215) b!1379788))

(assert (= (and d!148607 (not c!128215)) b!1379789))

(assert (= (and b!1379789 c!128216) b!1379790))

(assert (= (and b!1379789 (not c!128216)) b!1379791))

(assert (= (or b!1379790 b!1379791) bm!66105))

(declare-fun m!1265065 () Bool)

(assert (=> bm!66105 m!1265065))

(assert (=> b!1379789 m!1265061))

(assert (=> b!1379789 m!1265061))

(assert (=> b!1379789 m!1265063))

(assert (=> b!1379728 d!148607))

(declare-fun d!148609 () Bool)

(assert (=> d!148609 (= (array_inv!34283 a!4010) (bvsge (size!45889 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117394 d!148609))

(declare-fun d!148611 () Bool)

(assert (=> d!148611 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39786 () Bool)

(assert (= bs!39786 d!148611))

(declare-fun m!1265067 () Bool)

(assert (=> bs!39786 m!1265067))

(assert (=> bs!39786 m!1265007))

(assert (=> bs!39786 m!1265007))

(assert (=> b!1379727 d!148611))

(check-sat (not b!1379737) (not d!148611) (not bm!66105) (not bm!66104) (not b!1379789) (not b!1379785) (not bm!66101) (not b!1379775) (not d!148579) (not d!148581))
(check-sat)
