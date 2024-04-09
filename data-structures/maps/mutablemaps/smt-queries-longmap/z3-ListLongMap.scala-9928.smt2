; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117424 () Bool)

(assert start!117424)

(declare-fun res!922248 () Bool)

(declare-fun e!781774 () Bool)

(assert (=> start!117424 (=> (not res!922248) (not e!781774))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93900 0))(
  ( (array!93901 (arr!45341 (Array (_ BitVec 32) (_ BitVec 64))) (size!45892 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93900)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117424 (= res!922248 (and (bvslt (size!45892 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45892 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184)))))

(assert (=> start!117424 e!781774))

(declare-fun array_inv!34286 (array!93900) Bool)

(assert (=> start!117424 (array_inv!34286 a!4010)))

(assert (=> start!117424 true))

(declare-fun b!1379809 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93900 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379809 (= e!781774 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (= (and start!117424 res!922248) b!1379809))

(declare-fun m!1265093 () Bool)

(assert (=> start!117424 m!1265093))

(declare-fun m!1265095 () Bool)

(assert (=> b!1379809 m!1265095))

(declare-fun m!1265097 () Bool)

(assert (=> b!1379809 m!1265097))

(declare-fun m!1265099 () Bool)

(assert (=> b!1379809 m!1265099))

(check-sat (not start!117424) (not b!1379809))
(check-sat)
(get-model)

(declare-fun d!148623 () Bool)

(assert (=> d!148623 (= (array_inv!34286 a!4010) (bvsge (size!45892 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117424 d!148623))

(declare-fun b!1379829 () Bool)

(declare-fun e!781791 () (_ BitVec 32))

(declare-fun call!66116 () (_ BitVec 32))

(assert (=> b!1379829 (= e!781791 call!66116)))

(declare-fun b!1379830 () Bool)

(declare-fun e!781790 () (_ BitVec 32))

(assert (=> b!1379830 (= e!781790 #b00000000000000000000000000000000)))

(declare-fun bm!66113 () Bool)

(assert (=> bm!66113 (= call!66116 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun b!1379832 () Bool)

(assert (=> b!1379832 (= e!781791 (bvadd #b00000000000000000000000000000001 call!66116))))

(declare-fun b!1379831 () Bool)

(assert (=> b!1379831 (= e!781790 e!781791)))

(declare-fun c!128231 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379831 (= c!128231 (validKeyInArray!0 (select (arr!45341 a!4010) from!3388)))))

(declare-fun d!148625 () Bool)

(declare-fun lt!607731 () (_ BitVec 32))

(assert (=> d!148625 (and (bvsge lt!607731 #b00000000000000000000000000000000) (bvsle lt!607731 (bvsub (size!45892 a!4010) from!3388)))))

(assert (=> d!148625 (= lt!607731 e!781790)))

(declare-fun c!128232 () Bool)

(assert (=> d!148625 (= c!128232 (bvsge from!3388 pivot!64))))

(assert (=> d!148625 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45892 a!4010)))))

(assert (=> d!148625 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607731)))

(assert (= (and d!148625 c!128232) b!1379830))

(assert (= (and d!148625 (not c!128232)) b!1379831))

(assert (= (and b!1379831 c!128231) b!1379832))

(assert (= (and b!1379831 (not c!128231)) b!1379829))

(assert (= (or b!1379832 b!1379829) bm!66113))

(declare-fun m!1265109 () Bool)

(assert (=> bm!66113 m!1265109))

(declare-fun m!1265111 () Bool)

(assert (=> b!1379831 m!1265111))

(assert (=> b!1379831 m!1265111))

(declare-fun m!1265113 () Bool)

(assert (=> b!1379831 m!1265113))

(assert (=> b!1379809 d!148625))

(declare-fun b!1379833 () Bool)

(declare-fun e!781793 () (_ BitVec 32))

(declare-fun call!66117 () (_ BitVec 32))

(assert (=> b!1379833 (= e!781793 call!66117)))

(declare-fun b!1379834 () Bool)

(declare-fun e!781792 () (_ BitVec 32))

(assert (=> b!1379834 (= e!781792 #b00000000000000000000000000000000)))

(declare-fun bm!66114 () Bool)

(assert (=> bm!66114 (= call!66117 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379836 () Bool)

(assert (=> b!1379836 (= e!781793 (bvadd #b00000000000000000000000000000001 call!66117))))

(declare-fun b!1379835 () Bool)

(assert (=> b!1379835 (= e!781792 e!781793)))

(declare-fun c!128233 () Bool)

(assert (=> b!1379835 (= c!128233 (validKeyInArray!0 (select (arr!45341 a!4010) pivot!64)))))

(declare-fun d!148633 () Bool)

(declare-fun lt!607732 () (_ BitVec 32))

(assert (=> d!148633 (and (bvsge lt!607732 #b00000000000000000000000000000000) (bvsle lt!607732 (bvsub (size!45892 a!4010) pivot!64)))))

(assert (=> d!148633 (= lt!607732 e!781792)))

(declare-fun c!128234 () Bool)

(assert (=> d!148633 (= c!128234 (bvsge pivot!64 to!184))))

(assert (=> d!148633 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45892 a!4010)))))

(assert (=> d!148633 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607732)))

(assert (= (and d!148633 c!128234) b!1379834))

(assert (= (and d!148633 (not c!128234)) b!1379835))

(assert (= (and b!1379835 c!128233) b!1379836))

(assert (= (and b!1379835 (not c!128233)) b!1379833))

(assert (= (or b!1379836 b!1379833) bm!66114))

(declare-fun m!1265115 () Bool)

(assert (=> bm!66114 m!1265115))

(declare-fun m!1265117 () Bool)

(assert (=> b!1379835 m!1265117))

(assert (=> b!1379835 m!1265117))

(declare-fun m!1265119 () Bool)

(assert (=> b!1379835 m!1265119))

(assert (=> b!1379809 d!148633))

(declare-fun b!1379849 () Bool)

(declare-fun e!781801 () (_ BitVec 32))

(declare-fun call!66119 () (_ BitVec 32))

(assert (=> b!1379849 (= e!781801 call!66119)))

(declare-fun b!1379850 () Bool)

(declare-fun e!781800 () (_ BitVec 32))

(assert (=> b!1379850 (= e!781800 #b00000000000000000000000000000000)))

(declare-fun bm!66116 () Bool)

(assert (=> bm!66116 (= call!66119 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379852 () Bool)

(assert (=> b!1379852 (= e!781801 (bvadd #b00000000000000000000000000000001 call!66119))))

(declare-fun b!1379851 () Bool)

(assert (=> b!1379851 (= e!781800 e!781801)))

(declare-fun c!128241 () Bool)

(assert (=> b!1379851 (= c!128241 (validKeyInArray!0 (select (arr!45341 a!4010) from!3388)))))

(declare-fun d!148635 () Bool)

(declare-fun lt!607736 () (_ BitVec 32))

(assert (=> d!148635 (and (bvsge lt!607736 #b00000000000000000000000000000000) (bvsle lt!607736 (bvsub (size!45892 a!4010) from!3388)))))

(assert (=> d!148635 (= lt!607736 e!781800)))

(declare-fun c!128242 () Bool)

(assert (=> d!148635 (= c!128242 (bvsge from!3388 to!184))))

(assert (=> d!148635 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45892 a!4010)))))

(assert (=> d!148635 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607736)))

(assert (= (and d!148635 c!128242) b!1379850))

(assert (= (and d!148635 (not c!128242)) b!1379851))

(assert (= (and b!1379851 c!128241) b!1379852))

(assert (= (and b!1379851 (not c!128241)) b!1379849))

(assert (= (or b!1379852 b!1379849) bm!66116))

(declare-fun m!1265127 () Bool)

(assert (=> bm!66116 m!1265127))

(assert (=> b!1379851 m!1265111))

(assert (=> b!1379851 m!1265111))

(assert (=> b!1379851 m!1265113))

(assert (=> b!1379809 d!148635))

(check-sat (not bm!66113) (not bm!66116) (not b!1379851) (not b!1379831) (not bm!66114) (not b!1379835))
(check-sat)
