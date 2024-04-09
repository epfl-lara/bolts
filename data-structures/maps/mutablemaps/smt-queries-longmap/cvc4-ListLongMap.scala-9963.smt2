; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117708 () Bool)

(assert start!117708)

(declare-fun res!922755 () Bool)

(declare-fun e!782672 () Bool)

(assert (=> start!117708 (=> (not res!922755) (not e!782672))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94121 0))(
  ( (array!94122 (arr!45447 (Array (_ BitVec 32) (_ BitVec 64))) (size!45998 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94121)

(assert (=> start!117708 (= res!922755 (and (bvslt (size!45998 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45998 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117708 e!782672))

(declare-fun array_inv!34392 (array!94121) Bool)

(assert (=> start!117708 (array_inv!34392 a!3931)))

(assert (=> start!117708 true))

(declare-fun b!1380872 () Bool)

(declare-fun e!782671 () Bool)

(declare-fun call!66479 () (_ BitVec 32))

(declare-fun call!66480 () (_ BitVec 32))

(assert (=> b!1380872 (= e!782671 (not (= (bvadd #b00000000000000000000000000000001 call!66479) call!66480)))))

(declare-fun bm!66476 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94121 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66476 (= call!66479 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66477 () Bool)

(assert (=> bm!66477 (= call!66480 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(declare-fun b!1380873 () Bool)

(assert (=> b!1380873 (= e!782671 (not (= call!66479 call!66480)))))

(declare-fun b!1380874 () Bool)

(assert (=> b!1380874 (= e!782672 e!782671)))

(declare-fun c!128501 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380874 (= c!128501 (validKeyInArray!0 (select (arr!45447 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(assert (= (and start!117708 res!922755) b!1380874))

(assert (= (and b!1380874 c!128501) b!1380872))

(assert (= (and b!1380874 (not c!128501)) b!1380873))

(assert (= (or b!1380872 b!1380873) bm!66477))

(assert (= (or b!1380872 b!1380873) bm!66476))

(declare-fun m!1266155 () Bool)

(assert (=> start!117708 m!1266155))

(declare-fun m!1266157 () Bool)

(assert (=> bm!66476 m!1266157))

(declare-fun m!1266159 () Bool)

(assert (=> bm!66477 m!1266159))

(declare-fun m!1266161 () Bool)

(assert (=> b!1380874 m!1266161))

(assert (=> b!1380874 m!1266161))

(declare-fun m!1266163 () Bool)

(assert (=> b!1380874 m!1266163))

(push 1)

(assert (not bm!66477))

(assert (not b!1380874))

(assert (not start!117708))

(assert (not bm!66476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380915 () Bool)

(declare-fun e!782693 () (_ BitVec 32))

(declare-fun call!66491 () (_ BitVec 32))

(assert (=> b!1380915 (= e!782693 call!66491)))

(declare-fun b!1380916 () Bool)

(declare-fun e!782694 () (_ BitVec 32))

(assert (=> b!1380916 (= e!782694 #b00000000000000000000000000000000)))

(declare-fun d!148871 () Bool)

(declare-fun lt!608079 () (_ BitVec 32))

(assert (=> d!148871 (and (bvsge lt!608079 #b00000000000000000000000000000000) (bvsle lt!608079 (bvsub (size!45998 a!3931) from!3309)))))

(assert (=> d!148871 (= lt!608079 e!782694)))

(declare-fun c!128523 () Bool)

(assert (=> d!148871 (= c!128523 (bvsge from!3309 to!105))))

(assert (=> d!148871 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45998 a!3931)))))

(assert (=> d!148871 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608079)))

(declare-fun b!1380917 () Bool)

(assert (=> b!1380917 (= e!782694 e!782693)))

(declare-fun c!128522 () Bool)

(assert (=> b!1380917 (= c!128522 (validKeyInArray!0 (select (arr!45447 a!3931) from!3309)))))

(declare-fun bm!66488 () Bool)

(assert (=> bm!66488 (= call!66491 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380918 () Bool)

(assert (=> b!1380918 (= e!782693 (bvadd #b00000000000000000000000000000001 call!66491))))

(assert (= (and d!148871 c!128523) b!1380916))

(assert (= (and d!148871 (not c!128523)) b!1380917))

(assert (= (and b!1380917 c!128522) b!1380918))

(assert (= (and b!1380917 (not c!128522)) b!1380915))

(assert (= (or b!1380918 b!1380915) bm!66488))

(declare-fun m!1266181 () Bool)

(assert (=> b!1380917 m!1266181))

(assert (=> b!1380917 m!1266181))

(declare-fun m!1266183 () Bool)

(assert (=> b!1380917 m!1266183))

(declare-fun m!1266185 () Bool)

(assert (=> bm!66488 m!1266185))

(assert (=> bm!66477 d!148871))

(declare-fun d!148873 () Bool)

(assert (=> d!148873 (= (validKeyInArray!0 (select (arr!45447 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45447 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45447 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380874 d!148873))

(declare-fun d!148875 () Bool)

(assert (=> d!148875 (= (array_inv!34392 a!3931) (bvsge (size!45998 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117708 d!148875))

(declare-fun b!1380919 () Bool)

(declare-fun e!782695 () (_ BitVec 32))

(declare-fun call!66492 () (_ BitVec 32))

(assert (=> b!1380919 (= e!782695 call!66492)))

(declare-fun b!1380920 () Bool)

(declare-fun e!782696 () (_ BitVec 32))

(assert (=> b!1380920 (= e!782696 #b00000000000000000000000000000000)))

(declare-fun d!148877 () Bool)

(declare-fun lt!608080 () (_ BitVec 32))

(assert (=> d!148877 (and (bvsge lt!608080 #b00000000000000000000000000000000) (bvsle lt!608080 (bvsub (size!45998 a!3931) from!3309)))))

(assert (=> d!148877 (= lt!608080 e!782696)))

(declare-fun c!128525 () Bool)

(assert (=> d!148877 (= c!128525 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148877 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45998 a!3931)))))

(assert (=> d!148877 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608080)))

(declare-fun b!1380921 () Bool)

(assert (=> b!1380921 (= e!782696 e!782695)))

(declare-fun c!128524 () Bool)

(assert (=> b!1380921 (= c!128524 (validKeyInArray!0 (select (arr!45447 a!3931) from!3309)))))

(declare-fun bm!66489 () Bool)

(assert (=> bm!66489 (= call!66492 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380922 () Bool)

(assert (=> b!1380922 (= e!782695 (bvadd #b00000000000000000000000000000001 call!66492))))

(assert (= (and d!148877 c!128525) b!1380920))

(assert (= (and d!148877 (not c!128525)) b!1380921))

(assert (= (and b!1380921 c!128524) b!1380922))

(assert (= (and b!1380921 (not c!128524)) b!1380919))

(assert (= (or b!1380922 b!1380919) bm!66489))

(assert (=> b!1380921 m!1266181))

(assert (=> b!1380921 m!1266181))

(assert (=> b!1380921 m!1266183))

(declare-fun m!1266187 () Bool)

(assert (=> bm!66489 m!1266187))

(assert (=> bm!66476 d!148877))

(push 1)

(assert (not bm!66488))

(assert (not b!1380921))

(assert (not bm!66489))

(assert (not b!1380917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380939 () Bool)

(declare-fun e!782705 () (_ BitVec 32))

(declare-fun call!66497 () (_ BitVec 32))

(assert (=> b!1380939 (= e!782705 call!66497)))

(declare-fun b!1380940 () Bool)

(declare-fun e!782706 () (_ BitVec 32))

(assert (=> b!1380940 (= e!782706 #b00000000000000000000000000000000)))

(declare-fun d!148891 () Bool)

(declare-fun lt!608085 () (_ BitVec 32))

(assert (=> d!148891 (and (bvsge lt!608085 #b00000000000000000000000000000000) (bvsle lt!608085 (bvsub (size!45998 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(assert (=> d!148891 (= lt!608085 e!782706)))

(declare-fun c!128535 () Bool)

(assert (=> d!148891 (= c!128535 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(assert (=> d!148891 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) to!105) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!105 (size!45998 a!3931)))))

(assert (=> d!148891 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105) lt!608085)))

(declare-fun b!1380941 () Bool)

(assert (=> b!1380941 (= e!782706 e!782705)))

(declare-fun c!128534 () Bool)

(assert (=> b!1380941 (= c!128534 (validKeyInArray!0 (select (arr!45447 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun bm!66494 () Bool)

(assert (=> bm!66494 (= call!66497 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380942 () Bool)

(assert (=> b!1380942 (= e!782705 (bvadd #b00000000000000000000000000000001 call!66497))))

(assert (= (and d!148891 c!128535) b!1380940))

(assert (= (and d!148891 (not c!128535)) b!1380941))

(assert (= (and b!1380941 c!128534) b!1380942))

(assert (= (and b!1380941 (not c!128534)) b!1380939))

(assert (= (or b!1380942 b!1380939) bm!66494))

(declare-fun m!1266205 () Bool)

(assert (=> b!1380941 m!1266205))

(assert (=> b!1380941 m!1266205))

(declare-fun m!1266207 () Bool)

(assert (=> b!1380941 m!1266207))

(declare-fun m!1266209 () Bool)

(assert (=> bm!66494 m!1266209))

(assert (=> bm!66488 d!148891))

(declare-fun d!148893 () Bool)

(assert (=> d!148893 (= (validKeyInArray!0 (select (arr!45447 a!3931) from!3309)) (and (not (= (select (arr!45447 a!3931) from!3309) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45447 a!3931) from!3309) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380921 d!148893))

(declare-fun b!1380943 () Bool)

(declare-fun e!782707 () (_ BitVec 32))

(declare-fun call!66498 () (_ BitVec 32))

(assert (=> b!1380943 (= e!782707 call!66498)))

(declare-fun b!1380944 () Bool)

(declare-fun e!782708 () (_ BitVec 32))

(assert (=> b!1380944 (= e!782708 #b00000000000000000000000000000000)))

(declare-fun d!148895 () Bool)

(declare-fun lt!608086 () (_ BitVec 32))

(assert (=> d!148895 (and (bvsge lt!608086 #b00000000000000000000000000000000) (bvsle lt!608086 (bvsub (size!45998 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(assert (=> d!148895 (= lt!608086 e!782708)))

(declare-fun c!128537 () Bool)

(assert (=> d!148895 (= c!128537 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148895 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45998 a!3931)))))

(assert (=> d!148895 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) lt!608086)))

(declare-fun b!1380945 () Bool)

(assert (=> b!1380945 (= e!782708 e!782707)))

(declare-fun c!128536 () Bool)

(assert (=> b!1380945 (= c!128536 (validKeyInArray!0 (select (arr!45447 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun bm!66495 () Bool)

(assert (=> bm!66495 (= call!66498 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380946 () Bool)

(assert (=> b!1380946 (= e!782707 (bvadd #b00000000000000000000000000000001 call!66498))))

(assert (= (and d!148895 c!128537) b!1380944))

(assert (= (and d!148895 (not c!128537)) b!1380945))

(assert (= (and b!1380945 c!128536) b!1380946))

(assert (= (and b!1380945 (not c!128536)) b!1380943))

(assert (= (or b!1380946 b!1380943) bm!66495))

(assert (=> b!1380945 m!1266205))

(assert (=> b!1380945 m!1266205))

(assert (=> b!1380945 m!1266207))

(declare-fun m!1266211 () Bool)

(assert (=> bm!66495 m!1266211))

(assert (=> bm!66489 d!148895))

(assert (=> b!1380917 d!148893))

(push 1)

(assert (not b!1380945))

(assert (not b!1380941))

(assert (not bm!66494))

(assert (not bm!66495))

(check-sat)

