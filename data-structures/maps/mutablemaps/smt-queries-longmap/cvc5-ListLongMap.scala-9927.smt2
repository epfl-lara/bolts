; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117392 () Bool)

(assert start!117392)

(declare-fun res!922220 () Bool)

(declare-fun e!781711 () Bool)

(assert (=> start!117392 (=> (not res!922220) (not e!781711))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93889 0))(
  ( (array!93890 (arr!45337 (Array (_ BitVec 32) (_ BitVec 64))) (size!45888 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93889)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117392 (= res!922220 (and (bvslt (size!45888 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45888 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117392 e!781711))

(declare-fun array_inv!34282 (array!93889) Bool)

(assert (=> start!117392 (array_inv!34282 a!4010)))

(assert (=> start!117392 true))

(declare-fun b!1379721 () Bool)

(declare-fun res!922221 () Bool)

(assert (=> b!1379721 (=> (not res!922221) (not e!781711))))

(declare-fun isPivot!0 (array!93889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379721 (= res!922221 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379722 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93889 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379722 (= e!781711 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (=> b!1379722 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45863 0))(
  ( (Unit!45864) )
))
(declare-fun lt!607696 () Unit!45863)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45863)

(assert (=> b!1379722 (= lt!607696 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117392 res!922220) b!1379721))

(assert (= (and b!1379721 res!922221) b!1379722))

(declare-fun m!1264989 () Bool)

(assert (=> start!117392 m!1264989))

(declare-fun m!1264991 () Bool)

(assert (=> b!1379721 m!1264991))

(declare-fun m!1264993 () Bool)

(assert (=> b!1379722 m!1264993))

(declare-fun m!1264995 () Bool)

(assert (=> b!1379722 m!1264995))

(declare-fun m!1264997 () Bool)

(assert (=> b!1379722 m!1264997))

(declare-fun m!1264999 () Bool)

(assert (=> b!1379722 m!1264999))

(declare-fun m!1265001 () Bool)

(assert (=> b!1379722 m!1265001))

(push 1)

(assert (not b!1379722))

(assert (not start!117392))

(assert (not b!1379721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148583 () Bool)

(assert (=> d!148583 (= (isPivot!0 a!4010 from!3388 to!184 pivot!64) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39783 () Bool)

(assert (= bs!39783 d!148583))

(assert (=> bs!39783 m!1264995))

(assert (=> bs!39783 m!1264997))

(assert (=> bs!39783 m!1264993))

(assert (=> b!1379722 d!148583))

(declare-fun d!148587 () Bool)

(assert (=> d!148587 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-fun lt!607711 () Unit!45863)

(declare-fun choose!124 (array!93889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45863)

(assert (=> d!148587 (= lt!607711 (choose!124 a!4010 from!3388 to!184 pivot!64 from!3388))))

(declare-fun e!781733 () Bool)

(assert (=> d!148587 e!781733))

(declare-fun res!922242 () Bool)

(assert (=> d!148587 (=> (not res!922242) (not e!781733))))

(assert (=> d!148587 (= res!922242 (and (bvslt (size!45888 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45888 a!4010)) (bvsge pivot!64 from!3388) (bvslt pivot!64 to!184) (bvsle from!3388 pivot!64) (bvsge from!3388 from!3388)))))

(assert (=> d!148587 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388) lt!607711)))

(declare-fun b!1379743 () Bool)

(assert (=> b!1379743 (= e!781733 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and d!148587 res!922242) b!1379743))

(assert (=> d!148587 m!1265001))

(declare-fun m!1265037 () Bool)

(assert (=> d!148587 m!1265037))

(assert (=> b!1379743 m!1264991))

(assert (=> b!1379722 d!148587))

(declare-fun b!1379792 () Bool)

(declare-fun e!781759 () (_ BitVec 32))

(declare-fun call!66109 () (_ BitVec 32))

(assert (=> b!1379792 (= e!781759 call!66109)))

(declare-fun d!148597 () Bool)

(declare-fun lt!607724 () (_ BitVec 32))

(assert (=> d!148597 (and (bvsge lt!607724 #b00000000000000000000000000000000) (bvsle lt!607724 (bvsub (size!45888 a!4010) pivot!64)))))

(declare-fun e!781758 () (_ BitVec 32))

(assert (=> d!148597 (= lt!607724 e!781758)))

(declare-fun c!128218 () Bool)

(assert (=> d!148597 (= c!128218 (bvsge pivot!64 to!184))))

(assert (=> d!148597 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45888 a!4010)))))

(assert (=> d!148597 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607724)))

(declare-fun bm!66106 () Bool)

(assert (=> bm!66106 (= call!66109 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379793 () Bool)

(assert (=> b!1379793 (= e!781758 #b00000000000000000000000000000000)))

(declare-fun b!1379794 () Bool)

(assert (=> b!1379794 (= e!781759 (bvadd #b00000000000000000000000000000001 call!66109))))

(declare-fun b!1379795 () Bool)

(assert (=> b!1379795 (= e!781758 e!781759)))

(declare-fun c!128217 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379795 (= c!128217 (validKeyInArray!0 (select (arr!45337 a!4010) pivot!64)))))

(assert (= (and d!148597 c!128218) b!1379793))

(assert (= (and d!148597 (not c!128218)) b!1379795))

(assert (= (and b!1379795 c!128217) b!1379794))

(assert (= (and b!1379795 (not c!128217)) b!1379792))

(assert (= (or b!1379794 b!1379792) bm!66106))

(declare-fun m!1265069 () Bool)

(assert (=> bm!66106 m!1265069))

(declare-fun m!1265071 () Bool)

(assert (=> b!1379795 m!1265071))

(assert (=> b!1379795 m!1265071))

(declare-fun m!1265073 () Bool)

(assert (=> b!1379795 m!1265073))

(assert (=> b!1379722 d!148597))

(declare-fun b!1379796 () Bool)

(declare-fun e!781761 () (_ BitVec 32))

(declare-fun call!66110 () (_ BitVec 32))

(assert (=> b!1379796 (= e!781761 call!66110)))

(declare-fun d!148613 () Bool)

(declare-fun lt!607725 () (_ BitVec 32))

(assert (=> d!148613 (and (bvsge lt!607725 #b00000000000000000000000000000000) (bvsle lt!607725 (bvsub (size!45888 a!4010) from!3388)))))

(declare-fun e!781760 () (_ BitVec 32))

(assert (=> d!148613 (= lt!607725 e!781760)))

(declare-fun c!128220 () Bool)

(assert (=> d!148613 (= c!128220 (bvsge from!3388 to!184))))

(assert (=> d!148613 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45888 a!4010)))))

(assert (=> d!148613 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607725)))

(declare-fun bm!66107 () Bool)

(assert (=> bm!66107 (= call!66110 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379797 () Bool)

(assert (=> b!1379797 (= e!781760 #b00000000000000000000000000000000)))

(declare-fun b!1379798 () Bool)

(assert (=> b!1379798 (= e!781761 (bvadd #b00000000000000000000000000000001 call!66110))))

(declare-fun b!1379799 () Bool)

(assert (=> b!1379799 (= e!781760 e!781761)))

(declare-fun c!128219 () Bool)

(assert (=> b!1379799 (= c!128219 (validKeyInArray!0 (select (arr!45337 a!4010) from!3388)))))

(assert (= (and d!148613 c!128220) b!1379797))

(assert (= (and d!148613 (not c!128220)) b!1379799))

(assert (= (and b!1379799 c!128219) b!1379798))

(assert (= (and b!1379799 (not c!128219)) b!1379796))

(assert (= (or b!1379798 b!1379796) bm!66107))

(declare-fun m!1265075 () Bool)

(assert (=> bm!66107 m!1265075))

(declare-fun m!1265077 () Bool)

(assert (=> b!1379799 m!1265077))

(assert (=> b!1379799 m!1265077))

(declare-fun m!1265079 () Bool)

(assert (=> b!1379799 m!1265079))

(assert (=> b!1379722 d!148613))

(declare-fun b!1379800 () Bool)

(declare-fun e!781763 () (_ BitVec 32))

(declare-fun call!66111 () (_ BitVec 32))

(assert (=> b!1379800 (= e!781763 call!66111)))

(declare-fun d!148615 () Bool)

(declare-fun lt!607726 () (_ BitVec 32))

(assert (=> d!148615 (and (bvsge lt!607726 #b00000000000000000000000000000000) (bvsle lt!607726 (bvsub (size!45888 a!4010) from!3388)))))

(declare-fun e!781762 () (_ BitVec 32))

(assert (=> d!148615 (= lt!607726 e!781762)))

(declare-fun c!128222 () Bool)

(assert (=> d!148615 (= c!128222 (bvsge from!3388 pivot!64))))

(assert (=> d!148615 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45888 a!4010)))))

(assert (=> d!148615 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607726)))

(declare-fun bm!66108 () Bool)

(assert (=> bm!66108 (= call!66111 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun b!1379801 () Bool)

(assert (=> b!1379801 (= e!781762 #b00000000000000000000000000000000)))

(declare-fun b!1379802 () Bool)

(assert (=> b!1379802 (= e!781763 (bvadd #b00000000000000000000000000000001 call!66111))))

(declare-fun b!1379803 () Bool)

(assert (=> b!1379803 (= e!781762 e!781763)))

(declare-fun c!128221 () Bool)

(assert (=> b!1379803 (= c!128221 (validKeyInArray!0 (select (arr!45337 a!4010) from!3388)))))

(assert (= (and d!148615 c!128222) b!1379801))

(assert (= (and d!148615 (not c!128222)) b!1379803))

(assert (= (and b!1379803 c!128221) b!1379802))

(assert (= (and b!1379803 (not c!128221)) b!1379800))

(assert (= (or b!1379802 b!1379800) bm!66108))

(declare-fun m!1265081 () Bool)

(assert (=> bm!66108 m!1265081))

(assert (=> b!1379803 m!1265077))

(assert (=> b!1379803 m!1265077))

(assert (=> b!1379803 m!1265079))

(assert (=> b!1379722 d!148615))

(declare-fun d!148617 () Bool)

(assert (=> d!148617 (= (array_inv!34282 a!4010) (bvsge (size!45888 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117392 d!148617))

(declare-fun d!148619 () Bool)

(assert (=> d!148619 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39787 () Bool)

(assert (= bs!39787 d!148619))

(declare-fun m!1265083 () Bool)

(assert (=> bs!39787 m!1265083))

(assert (=> bs!39787 m!1264993))

(assert (=> bs!39787 m!1264993))

(assert (=> b!1379721 d!148619))

(push 1)

