; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117422 () Bool)

(assert start!117422)

(declare-fun res!922245 () Bool)

(declare-fun e!781768 () Bool)

(assert (=> start!117422 (=> (not res!922245) (not e!781768))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93898 0))(
  ( (array!93899 (arr!45340 (Array (_ BitVec 32) (_ BitVec 64))) (size!45891 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93898)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117422 (= res!922245 (and (bvslt (size!45891 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45891 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184)))))

(assert (=> start!117422 e!781768))

(declare-fun array_inv!34285 (array!93898) Bool)

(assert (=> start!117422 (array_inv!34285 a!4010)))

(assert (=> start!117422 true))

(declare-fun b!1379806 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93898 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379806 (= e!781768 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (= (and start!117422 res!922245) b!1379806))

(declare-fun m!1265085 () Bool)

(assert (=> start!117422 m!1265085))

(declare-fun m!1265087 () Bool)

(assert (=> b!1379806 m!1265087))

(declare-fun m!1265089 () Bool)

(assert (=> b!1379806 m!1265089))

(declare-fun m!1265091 () Bool)

(assert (=> b!1379806 m!1265091))

(push 1)

(assert (not start!117422))

(assert (not b!1379806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148627 () Bool)

(assert (=> d!148627 (= (array_inv!34285 a!4010) (bvsge (size!45891 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117422 d!148627))

(declare-fun bm!66115 () Bool)

(declare-fun call!66118 () (_ BitVec 32))

(assert (=> bm!66115 (= call!66118 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun d!148629 () Bool)

(declare-fun lt!607735 () (_ BitVec 32))

(assert (=> d!148629 (and (bvsge lt!607735 #b00000000000000000000000000000000) (bvsle lt!607735 (bvsub (size!45891 a!4010) from!3388)))))

(declare-fun e!781798 () (_ BitVec 32))

(assert (=> d!148629 (= lt!607735 e!781798)))

(declare-fun c!128239 () Bool)

(assert (=> d!148629 (= c!128239 (bvsge from!3388 pivot!64))))

(assert (=> d!148629 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45891 a!4010)))))

(assert (=> d!148629 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607735)))

(declare-fun b!1379845 () Bool)

(assert (=> b!1379845 (= e!781798 #b00000000000000000000000000000000)))

(declare-fun b!1379846 () Bool)

(declare-fun e!781799 () (_ BitVec 32))

(assert (=> b!1379846 (= e!781799 (bvadd #b00000000000000000000000000000001 call!66118))))

(declare-fun b!1379847 () Bool)

(assert (=> b!1379847 (= e!781799 call!66118)))

(declare-fun b!1379848 () Bool)

(assert (=> b!1379848 (= e!781798 e!781799)))

(declare-fun c!128240 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379848 (= c!128240 (validKeyInArray!0 (select (arr!45340 a!4010) from!3388)))))

(assert (= (and d!148629 c!128239) b!1379845))

(assert (= (and d!148629 (not c!128239)) b!1379848))

(assert (= (and b!1379848 c!128240) b!1379846))

(assert (= (and b!1379848 (not c!128240)) b!1379847))

(assert (= (or b!1379846 b!1379847) bm!66115))

(declare-fun m!1265121 () Bool)

(assert (=> bm!66115 m!1265121))

(declare-fun m!1265123 () Bool)

(assert (=> b!1379848 m!1265123))

(assert (=> b!1379848 m!1265123))

(declare-fun m!1265125 () Bool)

(assert (=> b!1379848 m!1265125))

(assert (=> b!1379806 d!148629))

(declare-fun bm!66119 () Bool)

(declare-fun call!66122 () (_ BitVec 32))

(assert (=> bm!66119 (= call!66122 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun d!148637 () Bool)

(declare-fun lt!607737 () (_ BitVec 32))

(assert (=> d!148637 (and (bvsge lt!607737 #b00000000000000000000000000000000) (bvsle lt!607737 (bvsub (size!45891 a!4010) pivot!64)))))

(declare-fun e!781802 () (_ BitVec 32))

(assert (=> d!148637 (= lt!607737 e!781802)))

(declare-fun c!128243 () Bool)

(assert (=> d!148637 (= c!128243 (bvsge pivot!64 to!184))))

(assert (=> d!148637 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45891 a!4010)))))

(assert (=> d!148637 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607737)))

(declare-fun b!1379853 () Bool)

(assert (=> b!1379853 (= e!781802 #b00000000000000000000000000000000)))

(declare-fun b!1379854 () Bool)

(declare-fun e!781803 () (_ BitVec 32))

(assert (=> b!1379854 (= e!781803 (bvadd #b00000000000000000000000000000001 call!66122))))

(declare-fun b!1379855 () Bool)

(assert (=> b!1379855 (= e!781803 call!66122)))

(declare-fun b!1379856 () Bool)

(assert (=> b!1379856 (= e!781802 e!781803)))

(declare-fun c!128244 () Bool)

(assert (=> b!1379856 (= c!128244 (validKeyInArray!0 (select (arr!45340 a!4010) pivot!64)))))

(assert (= (and d!148637 c!128243) b!1379853))

(assert (= (and d!148637 (not c!128243)) b!1379856))

(assert (= (and b!1379856 c!128244) b!1379854))

(assert (= (and b!1379856 (not c!128244)) b!1379855))

(assert (= (or b!1379854 b!1379855) bm!66119))

(declare-fun m!1265129 () Bool)

(assert (=> bm!66119 m!1265129))

(declare-fun m!1265131 () Bool)

(assert (=> b!1379856 m!1265131))

(assert (=> b!1379856 m!1265131))

(declare-fun m!1265133 () Bool)

(assert (=> b!1379856 m!1265133))

(assert (=> b!1379806 d!148637))

(declare-fun bm!66120 () Bool)

(declare-fun call!66123 () (_ BitVec 32))

(assert (=> bm!66120 (= call!66123 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun d!148639 () Bool)

(declare-fun lt!607738 () (_ BitVec 32))

(assert (=> d!148639 (and (bvsge lt!607738 #b00000000000000000000000000000000) (bvsle lt!607738 (bvsub (size!45891 a!4010) from!3388)))))

(declare-fun e!781804 () (_ BitVec 32))

(assert (=> d!148639 (= lt!607738 e!781804)))

(declare-fun c!128245 () Bool)

(assert (=> d!148639 (= c!128245 (bvsge from!3388 to!184))))

(assert (=> d!148639 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45891 a!4010)))))

(assert (=> d!148639 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607738)))

(declare-fun b!1379857 () Bool)

(assert (=> b!1379857 (= e!781804 #b00000000000000000000000000000000)))

(declare-fun b!1379858 () Bool)

(declare-fun e!781805 () (_ BitVec 32))

(assert (=> b!1379858 (= e!781805 (bvadd #b00000000000000000000000000000001 call!66123))))

(declare-fun b!1379859 () Bool)

(assert (=> b!1379859 (= e!781805 call!66123)))

(declare-fun b!1379860 () Bool)

(assert (=> b!1379860 (= e!781804 e!781805)))

(declare-fun c!128246 () Bool)

(assert (=> b!1379860 (= c!128246 (validKeyInArray!0 (select (arr!45340 a!4010) from!3388)))))

(assert (= (and d!148639 c!128245) b!1379857))

(assert (= (and d!148639 (not c!128245)) b!1379860))

(assert (= (and b!1379860 c!128246) b!1379858))

(assert (= (and b!1379860 (not c!128246)) b!1379859))

(assert (= (or b!1379858 b!1379859) bm!66120))

(declare-fun m!1265135 () Bool)

(assert (=> bm!66120 m!1265135))

(assert (=> b!1379860 m!1265123))

(assert (=> b!1379860 m!1265123))

(assert (=> b!1379860 m!1265125))

(assert (=> b!1379806 d!148639))

(push 1)

(assert (not bm!66119))

(assert (not bm!66120))

(assert (not bm!66115))

(assert (not b!1379860))

(assert (not b!1379848))

(assert (not b!1379856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

