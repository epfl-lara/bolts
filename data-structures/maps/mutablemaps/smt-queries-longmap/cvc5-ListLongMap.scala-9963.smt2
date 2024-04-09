; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117704 () Bool)

(assert start!117704)

(declare-fun b!1380854 () Bool)

(declare-fun e!782652 () Bool)

(declare-fun call!66468 () (_ BitVec 32))

(declare-fun call!66467 () (_ BitVec 32))

(assert (=> b!1380854 (= e!782652 (not (= call!66468 call!66467)))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66464 () Bool)

(declare-datatypes ((array!94117 0))(
  ( (array!94118 (arr!45445 (Array (_ BitVec 32) (_ BitVec 64))) (size!45996 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94117)

(declare-fun arrayCountValidKeys!0 (array!94117 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66464 (= call!66467 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(declare-fun res!922749 () Bool)

(declare-fun e!782654 () Bool)

(assert (=> start!117704 (=> (not res!922749) (not e!782654))))

(assert (=> start!117704 (= res!922749 (and (bvslt (size!45996 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45996 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117704 e!782654))

(declare-fun array_inv!34390 (array!94117) Bool)

(assert (=> start!117704 (array_inv!34390 a!3931)))

(assert (=> start!117704 true))

(declare-fun b!1380855 () Bool)

(assert (=> b!1380855 (= e!782652 (not (= (bvadd #b00000000000000000000000000000001 call!66468) call!66467)))))

(declare-fun b!1380856 () Bool)

(assert (=> b!1380856 (= e!782654 e!782652)))

(declare-fun c!128495 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380856 (= c!128495 (validKeyInArray!0 (select (arr!45445 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun bm!66465 () Bool)

(assert (=> bm!66465 (= call!66468 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and start!117704 res!922749) b!1380856))

(assert (= (and b!1380856 c!128495) b!1380855))

(assert (= (and b!1380856 (not c!128495)) b!1380854))

(assert (= (or b!1380855 b!1380854) bm!66464))

(assert (= (or b!1380855 b!1380854) bm!66465))

(declare-fun m!1266135 () Bool)

(assert (=> bm!66464 m!1266135))

(declare-fun m!1266137 () Bool)

(assert (=> start!117704 m!1266137))

(declare-fun m!1266139 () Bool)

(assert (=> b!1380856 m!1266139))

(assert (=> b!1380856 m!1266139))

(declare-fun m!1266141 () Bool)

(assert (=> b!1380856 m!1266141))

(declare-fun m!1266143 () Bool)

(assert (=> bm!66465 m!1266143))

(push 1)

(assert (not b!1380856))

(assert (not bm!66465))

(assert (not bm!66464))

(assert (not start!117704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148857 () Bool)

(assert (=> d!148857 (= (validKeyInArray!0 (select (arr!45445 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45445 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45445 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380856 d!148857))

(declare-fun b!1380895 () Bool)

(declare-fun e!782683 () (_ BitVec 32))

(declare-fun call!66486 () (_ BitVec 32))

(assert (=> b!1380895 (= e!782683 call!66486)))

(declare-fun bm!66483 () Bool)

(assert (=> bm!66483 (= call!66486 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun d!148859 () Bool)

(declare-fun lt!608074 () (_ BitVec 32))

(assert (=> d!148859 (and (bvsge lt!608074 #b00000000000000000000000000000000) (bvsle lt!608074 (bvsub (size!45996 a!3931) from!3309)))))

(declare-fun e!782684 () (_ BitVec 32))

(assert (=> d!148859 (= lt!608074 e!782684)))

(declare-fun c!128512 () Bool)

(assert (=> d!148859 (= c!128512 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148859 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45996 a!3931)))))

(assert (=> d!148859 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608074)))

(declare-fun b!1380896 () Bool)

(assert (=> b!1380896 (= e!782684 #b00000000000000000000000000000000)))

(declare-fun b!1380897 () Bool)

(assert (=> b!1380897 (= e!782684 e!782683)))

(declare-fun c!128513 () Bool)

(assert (=> b!1380897 (= c!128513 (validKeyInArray!0 (select (arr!45445 a!3931) from!3309)))))

(declare-fun b!1380898 () Bool)

(assert (=> b!1380898 (= e!782683 (bvadd #b00000000000000000000000000000001 call!66486))))

(assert (= (and d!148859 c!128512) b!1380896))

(assert (= (and d!148859 (not c!128512)) b!1380897))

(assert (= (and b!1380897 c!128513) b!1380898))

(assert (= (and b!1380897 (not c!128513)) b!1380895))

(assert (= (or b!1380898 b!1380895) bm!66483))

(declare-fun m!1266165 () Bool)

(assert (=> bm!66483 m!1266165))

(declare-fun m!1266167 () Bool)

(assert (=> b!1380897 m!1266167))

(assert (=> b!1380897 m!1266167))

(declare-fun m!1266171 () Bool)

(assert (=> b!1380897 m!1266171))

(assert (=> bm!66465 d!148859))

(declare-fun b!1380899 () Bool)

(declare-fun e!782685 () (_ BitVec 32))

(declare-fun call!66487 () (_ BitVec 32))

(assert (=> b!1380899 (= e!782685 call!66487)))

(declare-fun bm!66484 () Bool)

(assert (=> bm!66484 (= call!66487 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun d!148861 () Bool)

(declare-fun lt!608075 () (_ BitVec 32))

(assert (=> d!148861 (and (bvsge lt!608075 #b00000000000000000000000000000000) (bvsle lt!608075 (bvsub (size!45996 a!3931) from!3309)))))

(declare-fun e!782686 () (_ BitVec 32))

(assert (=> d!148861 (= lt!608075 e!782686)))

(declare-fun c!128514 () Bool)

(assert (=> d!148861 (= c!128514 (bvsge from!3309 to!105))))

(assert (=> d!148861 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45996 a!3931)))))

(assert (=> d!148861 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608075)))

(declare-fun b!1380900 () Bool)

(assert (=> b!1380900 (= e!782686 #b00000000000000000000000000000000)))

(declare-fun b!1380901 () Bool)

(assert (=> b!1380901 (= e!782686 e!782685)))

(declare-fun c!128515 () Bool)

(assert (=> b!1380901 (= c!128515 (validKeyInArray!0 (select (arr!45445 a!3931) from!3309)))))

(declare-fun b!1380902 () Bool)

(assert (=> b!1380902 (= e!782685 (bvadd #b00000000000000000000000000000001 call!66487))))

(assert (= (and d!148861 c!128514) b!1380900))

(assert (= (and d!148861 (not c!128514)) b!1380901))

(assert (= (and b!1380901 c!128515) b!1380902))

(assert (= (and b!1380901 (not c!128515)) b!1380899))

(assert (= (or b!1380902 b!1380899) bm!66484))

(declare-fun m!1266177 () Bool)

(assert (=> bm!66484 m!1266177))

(assert (=> b!1380901 m!1266167))

(assert (=> b!1380901 m!1266167))

(assert (=> b!1380901 m!1266171))

(assert (=> bm!66464 d!148861))

(declare-fun d!148865 () Bool)

(assert (=> d!148865 (= (array_inv!34390 a!3931) (bvsge (size!45996 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117704 d!148865))

(push 1)

(assert (not b!1380901))

(assert (not bm!66483))

(assert (not bm!66484))

(assert (not b!1380897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148885 () Bool)

(assert (=> d!148885 (= (validKeyInArray!0 (select (arr!45445 a!3931) from!3309)) (and (not (= (select (arr!45445 a!3931) from!3309) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45445 a!3931) from!3309) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380901 d!148885))

(declare-fun b!1380931 () Bool)

(declare-fun e!782701 () (_ BitVec 32))

(declare-fun call!66495 () (_ BitVec 32))

(assert (=> b!1380931 (= e!782701 call!66495)))

(declare-fun bm!66492 () Bool)

(assert (=> bm!66492 (= call!66495 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun d!148887 () Bool)

(declare-fun lt!608083 () (_ BitVec 32))

(assert (=> d!148887 (and (bvsge lt!608083 #b00000000000000000000000000000000) (bvsle lt!608083 (bvsub (size!45996 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun e!782702 () (_ BitVec 32))

(assert (=> d!148887 (= lt!608083 e!782702)))

(declare-fun c!128530 () Bool)

(assert (=> d!148887 (= c!128530 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148887 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45996 a!3931)))))

(assert (=> d!148887 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) lt!608083)))

(declare-fun b!1380932 () Bool)

(assert (=> b!1380932 (= e!782702 #b00000000000000000000000000000000)))

(declare-fun b!1380933 () Bool)

(assert (=> b!1380933 (= e!782702 e!782701)))

(declare-fun c!128531 () Bool)

(assert (=> b!1380933 (= c!128531 (validKeyInArray!0 (select (arr!45445 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun b!1380934 () Bool)

(assert (=> b!1380934 (= e!782701 (bvadd #b00000000000000000000000000000001 call!66495))))

(assert (= (and d!148887 c!128530) b!1380932))

(assert (= (and d!148887 (not c!128530)) b!1380933))

(assert (= (and b!1380933 c!128531) b!1380934))

(assert (= (and b!1380933 (not c!128531)) b!1380931))

(assert (= (or b!1380934 b!1380931) bm!66492))

(declare-fun m!1266197 () Bool)

(assert (=> bm!66492 m!1266197))

(declare-fun m!1266199 () Bool)

(assert (=> b!1380933 m!1266199))

(assert (=> b!1380933 m!1266199))

(declare-fun m!1266201 () Bool)

(assert (=> b!1380933 m!1266201))

(assert (=> bm!66483 d!148887))

(declare-fun b!1380935 () Bool)

(declare-fun e!782703 () (_ BitVec 32))

(declare-fun call!66496 () (_ BitVec 32))

(assert (=> b!1380935 (= e!782703 call!66496)))

(declare-fun bm!66493 () Bool)

(assert (=> bm!66493 (= call!66496 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!105))))

(declare-fun d!148889 () Bool)

(declare-fun lt!608084 () (_ BitVec 32))

(assert (=> d!148889 (and (bvsge lt!608084 #b00000000000000000000000000000000) (bvsle lt!608084 (bvsub (size!45996 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun e!782704 () (_ BitVec 32))

(assert (=> d!148889 (= lt!608084 e!782704)))

(declare-fun c!128532 () Bool)

(assert (=> d!148889 (= c!128532 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(assert (=> d!148889 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) to!105) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!105 (size!45996 a!3931)))))

(assert (=> d!148889 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105) lt!608084)))

(declare-fun b!1380936 () Bool)

(assert (=> b!1380936 (= e!782704 #b00000000000000000000000000000000)))

(declare-fun b!1380937 () Bool)

(assert (=> b!1380937 (= e!782704 e!782703)))

(declare-fun c!128533 () Bool)

(assert (=> b!1380937 (= c!128533 (validKeyInArray!0 (select (arr!45445 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun b!1380938 () Bool)

(assert (=> b!1380938 (= e!782703 (bvadd #b00000000000000000000000000000001 call!66496))))

(assert (= (and d!148889 c!128532) b!1380936))

(assert (= (and d!148889 (not c!128532)) b!1380937))

(assert (= (and b!1380937 c!128533) b!1380938))

(assert (= (and b!1380937 (not c!128533)) b!1380935))

(assert (= (or b!1380938 b!1380935) bm!66493))

(declare-fun m!1266203 () Bool)

(assert (=> bm!66493 m!1266203))

(assert (=> b!1380937 m!1266199))

(assert (=> b!1380937 m!1266199))

(assert (=> b!1380937 m!1266201))

(assert (=> bm!66484 d!148889))

(assert (=> b!1380897 d!148885))

(push 1)

(assert (not bm!66492))

(assert (not b!1380937))

(assert (not bm!66493))

(assert (not b!1380933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

