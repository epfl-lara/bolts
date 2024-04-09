; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117672 () Bool)

(assert start!117672)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66420 () Bool)

(declare-datatypes ((array!94106 0))(
  ( (array!94107 (arr!45441 (Array (_ BitVec 32) (_ BitVec 64))) (size!45992 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94106)

(declare-fun call!66425 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94106 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66420 (= call!66425 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922737 () Bool)

(declare-fun e!782580 () Bool)

(assert (=> start!117672 (=> (not res!922737) (not e!782580))))

(assert (=> start!117672 (= res!922737 (and (bvslt (size!45992 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45992 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117672 e!782580))

(declare-fun array_inv!34386 (array!94106) Bool)

(assert (=> start!117672 (array_inv!34386 a!3931)))

(assert (=> start!117672 true))

(declare-fun call!66423 () (_ BitVec 32))

(declare-fun bm!66421 () Bool)

(assert (=> bm!66421 (= call!66423 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380744 () Bool)

(declare-fun e!782579 () Bool)

(declare-fun call!66426 () (_ BitVec 32))

(declare-fun call!66424 () (_ BitVec 32))

(assert (=> b!1380744 (= e!782579 (= (bvadd #b00000000000000000000000000000001 call!66426) call!66424))))

(declare-fun bm!66422 () Bool)

(assert (=> bm!66422 (= call!66426 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380745 () Bool)

(declare-fun e!782581 () Bool)

(assert (=> b!1380745 (= e!782581 (= call!66423 call!66425))))

(declare-fun b!1380746 () Bool)

(assert (=> b!1380746 (= e!782581 (= (bvadd #b00000000000000000000000000000001 call!66423) call!66425))))

(declare-fun bm!66423 () Bool)

(assert (=> bm!66423 (= call!66424 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(declare-fun b!1380747 () Bool)

(assert (=> b!1380747 (= e!782579 (= call!66426 call!66424))))

(declare-fun b!1380748 () Bool)

(assert (=> b!1380748 (= e!782580 (not e!782579))))

(declare-fun c!128446 () Bool)

(declare-fun lt!608032 () Bool)

(assert (=> b!1380748 (= c!128446 lt!608032)))

(assert (=> b!1380748 e!782581))

(declare-fun c!128447 () Bool)

(assert (=> b!1380748 (= c!128447 lt!608032)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380748 (= lt!608032 (validKeyInArray!0 (select (arr!45441 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45969 0))(
  ( (Unit!45970) )
))
(declare-fun lt!608031 () Unit!45969)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94106 (_ BitVec 32) (_ BitVec 32)) Unit!45969)

(assert (=> b!1380748 (= lt!608031 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117672 res!922737) b!1380748))

(assert (= (and b!1380748 c!128447) b!1380746))

(assert (= (and b!1380748 (not c!128447)) b!1380745))

(assert (= (or b!1380746 b!1380745) bm!66420))

(assert (= (or b!1380746 b!1380745) bm!66421))

(assert (= (and b!1380748 c!128446) b!1380744))

(assert (= (and b!1380748 (not c!128446)) b!1380747))

(assert (= (or b!1380744 b!1380747) bm!66423))

(assert (= (or b!1380744 b!1380747) bm!66422))

(declare-fun m!1266059 () Bool)

(assert (=> bm!66422 m!1266059))

(declare-fun m!1266061 () Bool)

(assert (=> bm!66420 m!1266061))

(declare-fun m!1266063 () Bool)

(assert (=> bm!66423 m!1266063))

(declare-fun m!1266065 () Bool)

(assert (=> b!1380748 m!1266065))

(assert (=> b!1380748 m!1266065))

(declare-fun m!1266067 () Bool)

(assert (=> b!1380748 m!1266067))

(declare-fun m!1266069 () Bool)

(assert (=> b!1380748 m!1266069))

(declare-fun m!1266071 () Bool)

(assert (=> start!117672 m!1266071))

(declare-fun m!1266073 () Bool)

(assert (=> bm!66421 m!1266073))

(push 1)

(assert (not start!117672))

(assert (not b!1380748))

(assert (not bm!66421))

(assert (not bm!66422))

(assert (not bm!66420))

(assert (not bm!66423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380814 () Bool)

(declare-fun e!782617 () (_ BitVec 32))

(declare-fun e!782618 () (_ BitVec 32))

(assert (=> b!1380814 (= e!782617 e!782618)))

(declare-fun c!128480 () Bool)

(assert (=> b!1380814 (= c!128480 (validKeyInArray!0 (select (arr!45441 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun b!1380815 () Bool)

(declare-fun call!66447 () (_ BitVec 32))

(assert (=> b!1380815 (= e!782618 call!66447)))

(declare-fun bm!66444 () Bool)

(assert (=> bm!66444 (= call!66447 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380816 () Bool)

(assert (=> b!1380816 (= e!782618 (bvadd #b00000000000000000000000000000001 call!66447))))

(declare-fun b!1380817 () Bool)

(assert (=> b!1380817 (= e!782617 #b00000000000000000000000000000000)))

(declare-fun d!148823 () Bool)

(declare-fun lt!608053 () (_ BitVec 32))

(assert (=> d!148823 (and (bvsge lt!608053 #b00000000000000000000000000000000) (bvsle lt!608053 (bvsub (size!45992 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148823 (= lt!608053 e!782617)))

(declare-fun c!128479 () Bool)

(assert (=> d!148823 (= c!128479 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148823 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45992 a!3931)))))

(assert (=> d!148823 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) lt!608053)))

(assert (= (and d!148823 c!128479) b!1380817))

(assert (= (and d!148823 (not c!128479)) b!1380814))

(assert (= (and b!1380814 c!128480) b!1380816))

(assert (= (and b!1380814 (not c!128480)) b!1380815))

(assert (= (or b!1380816 b!1380815) bm!66444))

(declare-fun m!1266109 () Bool)

(assert (=> b!1380814 m!1266109))

(assert (=> b!1380814 m!1266109))

(declare-fun m!1266111 () Bool)

(assert (=> b!1380814 m!1266111))

(declare-fun m!1266113 () Bool)

(assert (=> bm!66444 m!1266113))

(assert (=> bm!66421 d!148823))

(declare-fun d!148839 () Bool)

(assert (=> d!148839 (= (array_inv!34386 a!3931) (bvsge (size!45992 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117672 d!148839))

(declare-fun b!1380818 () Bool)

(declare-fun e!782619 () (_ BitVec 32))

(declare-fun e!782620 () (_ BitVec 32))

(assert (=> b!1380818 (= e!782619 e!782620)))

(declare-fun c!128482 () Bool)

(assert (=> b!1380818 (= c!128482 (validKeyInArray!0 (select (arr!45441 a!3931) from!3309)))))

(declare-fun b!1380819 () Bool)

(declare-fun call!66448 () (_ BitVec 32))

(assert (=> b!1380819 (= e!782620 call!66448)))

(declare-fun bm!66445 () Bool)

(assert (=> bm!66445 (= call!66448 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380820 () Bool)

(assert (=> b!1380820 (= e!782620 (bvadd #b00000000000000000000000000000001 call!66448))))

(declare-fun b!1380821 () Bool)

(assert (=> b!1380821 (= e!782619 #b00000000000000000000000000000000)))

(declare-fun d!148841 () Bool)

(declare-fun lt!608054 () (_ BitVec 32))

(assert (=> d!148841 (and (bvsge lt!608054 #b00000000000000000000000000000000) (bvsle lt!608054 (bvsub (size!45992 a!3931) from!3309)))))

(assert (=> d!148841 (= lt!608054 e!782619)))

(declare-fun c!128481 () Bool)

(assert (=> d!148841 (= c!128481 (bvsge from!3309 to!105))))

(assert (=> d!148841 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45992 a!3931)))))

(assert (=> d!148841 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608054)))

(assert (= (and d!148841 c!128481) b!1380821))

(assert (= (and d!148841 (not c!128481)) b!1380818))

(assert (= (and b!1380818 c!128482) b!1380820))

(assert (= (and b!1380818 (not c!128482)) b!1380819))

(assert (= (or b!1380820 b!1380819) bm!66445))

(declare-fun m!1266115 () Bool)

(assert (=> b!1380818 m!1266115))

(assert (=> b!1380818 m!1266115))

(declare-fun m!1266117 () Bool)

(assert (=> b!1380818 m!1266117))

(declare-fun m!1266119 () Bool)

(assert (=> bm!66445 m!1266119))

(assert (=> bm!66423 d!148841))

(declare-fun b!1380822 () Bool)

(declare-fun e!782621 () (_ BitVec 32))

(declare-fun e!782622 () (_ BitVec 32))

(assert (=> b!1380822 (= e!782621 e!782622)))

(declare-fun c!128484 () Bool)

(assert (=> b!1380822 (= c!128484 (validKeyInArray!0 (select (arr!45441 a!3931) from!3309)))))

(declare-fun b!1380823 () Bool)

(declare-fun call!66449 () (_ BitVec 32))

(assert (=> b!1380823 (= e!782622 call!66449)))

(declare-fun bm!66446 () Bool)

(assert (=> bm!66446 (= call!66449 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380824 () Bool)

(assert (=> b!1380824 (= e!782622 (bvadd #b00000000000000000000000000000001 call!66449))))

(declare-fun b!1380825 () Bool)

(assert (=> b!1380825 (= e!782621 #b00000000000000000000000000000000)))

(declare-fun d!148843 () Bool)

(declare-fun lt!608055 () (_ BitVec 32))

(assert (=> d!148843 (and (bvsge lt!608055 #b00000000000000000000000000000000) (bvsle lt!608055 (bvsub (size!45992 a!3931) from!3309)))))

(assert (=> d!148843 (= lt!608055 e!782621)))

(declare-fun c!128483 () Bool)

(assert (=> d!148843 (= c!128483 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148843 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45992 a!3931)))))

(assert (=> d!148843 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608055)))

(assert (= (and d!148843 c!128483) b!1380825))

(assert (= (and d!148843 (not c!128483)) b!1380822))

(assert (= (and b!1380822 c!128484) b!1380824))

(assert (= (and b!1380822 (not c!128484)) b!1380823))

(assert (= (or b!1380824 b!1380823) bm!66446))

(assert (=> b!1380822 m!1266115))

(assert (=> b!1380822 m!1266115))

(assert (=> b!1380822 m!1266117))

(declare-fun m!1266121 () Bool)

(assert (=> bm!66446 m!1266121))

(assert (=> bm!66422 d!148843))

(declare-fun d!148845 () Bool)

(assert (=> d!148845 (= (validKeyInArray!0 (select (arr!45441 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45441 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45441 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380748 d!148845))

(declare-fun b!1380841 () Bool)

(declare-fun e!782634 () Bool)

(declare-fun call!66461 () (_ BitVec 32))

(declare-fun call!66460 () (_ BitVec 32))

(assert (=> b!1380841 (= e!782634 (= call!66461 call!66460))))

(declare-fun bm!66457 () Bool)

(assert (=> bm!66457 (= call!66460 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66458 () Bool)

(assert (=> bm!66458 (= call!66461 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380842 () Bool)

(declare-fun e!782633 () Bool)

(assert (=> b!1380842 (= e!782633 e!782634)))

(declare-fun c!128490 () Bool)

(assert (=> b!1380842 (= c!128490 (validKeyInArray!0 (select (arr!45441 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380843 () Bool)

(assert (=> b!1380843 (= e!782634 (= (bvadd call!66461 #b00000000000000000000000000000001) call!66460))))

(declare-fun d!148847 () Bool)

(assert (=> d!148847 e!782633))

(declare-fun res!922746 () Bool)

(assert (=> d!148847 (=> (not res!922746) (not e!782633))))

(declare-fun lt!608066 () (_ BitVec 32))

(assert (=> d!148847 (= res!922746 (and (bvsge lt!608066 #b00000000000000000000000000000000) (bvslt lt!608066 (size!45992 a!3931))))))

(assert (=> d!148847 (= lt!608066 (bvsub to!105 #b00000000000000000000000000000001))))

(declare-fun lt!608067 () Unit!45969)

(declare-fun choose!86 (array!94106 (_ BitVec 32) (_ BitVec 32)) Unit!45969)

(assert (=> d!148847 (= lt!608067 (choose!86 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148847 (and (bvslt (size!45992 a!3931) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsgt to!105 (bvadd #b00000000000000000000000000000001 from!3309)) (bvsle to!105 (size!45992 a!3931)))))

(assert (=> d!148847 (= (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608067)))

(assert (= (and d!148847 res!922746) b!1380842))

(assert (= (and b!1380842 c!128490) b!1380843))

(assert (= (and b!1380842 (not c!128490)) b!1380841))

(assert (= (or b!1380843 b!1380841) bm!66457))

(assert (= (or b!1380843 b!1380841) bm!66458))

(assert (=> bm!66457 m!1266061))

(assert (=> bm!66458 m!1266073))

(assert (=> b!1380842 m!1266065))

(assert (=> b!1380842 m!1266065))

(assert (=> b!1380842 m!1266067))

(declare-fun m!1266125 () Bool)

(assert (=> d!148847 m!1266125))

(assert (=> b!1380748 d!148847))

(declare-fun b!1380844 () Bool)

(declare-fun e!782635 () (_ BitVec 32))

(declare-fun e!782636 () (_ BitVec 32))

(assert (=> b!1380844 (= e!782635 e!782636)))

(declare-fun c!128492 () Bool)

(assert (=> b!1380844 (= c!128492 (validKeyInArray!0 (select (arr!45441 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun b!1380845 () Bool)

(declare-fun call!66462 () (_ BitVec 32))

(assert (=> b!1380845 (= e!782636 call!66462)))

(declare-fun bm!66459 () Bool)

(assert (=> bm!66459 (= call!66462 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380846 () Bool)

(assert (=> b!1380846 (= e!782636 (bvadd #b00000000000000000000000000000001 call!66462))))

(declare-fun b!1380847 () Bool)

(assert (=> b!1380847 (= e!782635 #b00000000000000000000000000000000)))

(declare-fun d!148849 () Bool)

(declare-fun lt!608068 () (_ BitVec 32))

(assert (=> d!148849 (and (bvsge lt!608068 #b00000000000000000000000000000000) (bvsle lt!608068 (bvsub (size!45992 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148849 (= lt!608068 e!782635)))

(declare-fun c!128491 () Bool)

(assert (=> d!148849 (= c!128491 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148849 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle to!105 (size!45992 a!3931)))))

(assert (=> d!148849 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608068)))

(assert (= (and d!148849 c!128491) b!1380847))

(assert (= (and d!148849 (not c!128491)) b!1380844))

(assert (= (and b!1380844 c!128492) b!1380846))

(assert (= (and b!1380844 (not c!128492)) b!1380845))

(assert (= (or b!1380846 b!1380845) bm!66459))

(assert (=> b!1380844 m!1266109))

(assert (=> b!1380844 m!1266109))

(assert (=> b!1380844 m!1266111))

(declare-fun m!1266127 () Bool)

(assert (=> bm!66459 m!1266127))

(assert (=> bm!66420 d!148849))

(push 1)

(assert (not bm!66458))

(assert (not b!1380814))

(assert (not d!148847))

(assert (not bm!66459))

(assert (not b!1380842))

(assert (not bm!66444))

(assert (not bm!66446))

(assert (not bm!66457))

(assert (not b!1380822))

(assert (not b!1380818))

(assert (not b!1380844))

(assert (not bm!66445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

