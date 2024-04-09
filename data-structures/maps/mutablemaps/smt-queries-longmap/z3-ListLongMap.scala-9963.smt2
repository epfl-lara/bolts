; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117706 () Bool)

(assert start!117706)

(declare-fun res!922752 () Bool)

(declare-fun e!782662 () Bool)

(assert (=> start!117706 (=> (not res!922752) (not e!782662))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94119 0))(
  ( (array!94120 (arr!45446 (Array (_ BitVec 32) (_ BitVec 64))) (size!45997 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94119)

(assert (=> start!117706 (= res!922752 (and (bvslt (size!45997 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45997 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117706 e!782662))

(declare-fun array_inv!34391 (array!94119) Bool)

(assert (=> start!117706 (array_inv!34391 a!3931)))

(assert (=> start!117706 true))

(declare-fun bm!66470 () Bool)

(declare-fun call!66474 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94119 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66470 (= call!66474 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380863 () Bool)

(declare-fun e!782663 () Bool)

(assert (=> b!1380863 (= e!782662 e!782663)))

(declare-fun c!128498 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380863 (= c!128498 (validKeyInArray!0 (select (arr!45446 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380864 () Bool)

(declare-fun call!66473 () (_ BitVec 32))

(assert (=> b!1380864 (= e!782663 (not (= call!66474 call!66473)))))

(declare-fun b!1380865 () Bool)

(assert (=> b!1380865 (= e!782663 (not (= (bvadd #b00000000000000000000000000000001 call!66474) call!66473)))))

(declare-fun bm!66471 () Bool)

(assert (=> bm!66471 (= call!66473 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(assert (= (and start!117706 res!922752) b!1380863))

(assert (= (and b!1380863 c!128498) b!1380865))

(assert (= (and b!1380863 (not c!128498)) b!1380864))

(assert (= (or b!1380865 b!1380864) bm!66471))

(assert (= (or b!1380865 b!1380864) bm!66470))

(declare-fun m!1266145 () Bool)

(assert (=> start!117706 m!1266145))

(declare-fun m!1266147 () Bool)

(assert (=> bm!66470 m!1266147))

(declare-fun m!1266149 () Bool)

(assert (=> b!1380863 m!1266149))

(assert (=> b!1380863 m!1266149))

(declare-fun m!1266151 () Bool)

(assert (=> b!1380863 m!1266151))

(declare-fun m!1266153 () Bool)

(assert (=> bm!66471 m!1266153))

(check-sat (not bm!66471) (not start!117706) (not bm!66470) (not b!1380863))
(check-sat)
(get-model)

(declare-fun b!1380891 () Bool)

(declare-fun e!782682 () (_ BitVec 32))

(declare-fun call!66485 () (_ BitVec 32))

(assert (=> b!1380891 (= e!782682 call!66485)))

(declare-fun b!1380892 () Bool)

(declare-fun e!782681 () (_ BitVec 32))

(assert (=> b!1380892 (= e!782681 e!782682)))

(declare-fun c!128510 () Bool)

(assert (=> b!1380892 (= c!128510 (validKeyInArray!0 (select (arr!45446 a!3931) from!3309)))))

(declare-fun b!1380893 () Bool)

(assert (=> b!1380893 (= e!782681 #b00000000000000000000000000000000)))

(declare-fun b!1380894 () Bool)

(assert (=> b!1380894 (= e!782682 (bvadd #b00000000000000000000000000000001 call!66485))))

(declare-fun d!148855 () Bool)

(declare-fun lt!608073 () (_ BitVec 32))

(assert (=> d!148855 (and (bvsge lt!608073 #b00000000000000000000000000000000) (bvsle lt!608073 (bvsub (size!45997 a!3931) from!3309)))))

(assert (=> d!148855 (= lt!608073 e!782681)))

(declare-fun c!128511 () Bool)

(assert (=> d!148855 (= c!128511 (bvsge from!3309 to!105))))

(assert (=> d!148855 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45997 a!3931)))))

(assert (=> d!148855 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608073)))

(declare-fun bm!66482 () Bool)

(assert (=> bm!66482 (= call!66485 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(assert (= (and d!148855 c!128511) b!1380893))

(assert (= (and d!148855 (not c!128511)) b!1380892))

(assert (= (and b!1380892 c!128510) b!1380894))

(assert (= (and b!1380892 (not c!128510)) b!1380891))

(assert (= (or b!1380894 b!1380891) bm!66482))

(declare-fun m!1266169 () Bool)

(assert (=> b!1380892 m!1266169))

(assert (=> b!1380892 m!1266169))

(declare-fun m!1266173 () Bool)

(assert (=> b!1380892 m!1266173))

(declare-fun m!1266175 () Bool)

(assert (=> bm!66482 m!1266175))

(assert (=> bm!66471 d!148855))

(declare-fun d!148863 () Bool)

(assert (=> d!148863 (= (array_inv!34391 a!3931) (bvsge (size!45997 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117706 d!148863))

(declare-fun b!1380903 () Bool)

(declare-fun e!782688 () (_ BitVec 32))

(declare-fun call!66488 () (_ BitVec 32))

(assert (=> b!1380903 (= e!782688 call!66488)))

(declare-fun b!1380904 () Bool)

(declare-fun e!782687 () (_ BitVec 32))

(assert (=> b!1380904 (= e!782687 e!782688)))

(declare-fun c!128516 () Bool)

(assert (=> b!1380904 (= c!128516 (validKeyInArray!0 (select (arr!45446 a!3931) from!3309)))))

(declare-fun b!1380905 () Bool)

(assert (=> b!1380905 (= e!782687 #b00000000000000000000000000000000)))

(declare-fun b!1380906 () Bool)

(assert (=> b!1380906 (= e!782688 (bvadd #b00000000000000000000000000000001 call!66488))))

(declare-fun d!148867 () Bool)

(declare-fun lt!608076 () (_ BitVec 32))

(assert (=> d!148867 (and (bvsge lt!608076 #b00000000000000000000000000000000) (bvsle lt!608076 (bvsub (size!45997 a!3931) from!3309)))))

(assert (=> d!148867 (= lt!608076 e!782687)))

(declare-fun c!128517 () Bool)

(assert (=> d!148867 (= c!128517 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148867 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45997 a!3931)))))

(assert (=> d!148867 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608076)))

(declare-fun bm!66485 () Bool)

(assert (=> bm!66485 (= call!66488 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and d!148867 c!128517) b!1380905))

(assert (= (and d!148867 (not c!128517)) b!1380904))

(assert (= (and b!1380904 c!128516) b!1380906))

(assert (= (and b!1380904 (not c!128516)) b!1380903))

(assert (= (or b!1380906 b!1380903) bm!66485))

(assert (=> b!1380904 m!1266169))

(assert (=> b!1380904 m!1266169))

(assert (=> b!1380904 m!1266173))

(declare-fun m!1266179 () Bool)

(assert (=> bm!66485 m!1266179))

(assert (=> bm!66470 d!148867))

(declare-fun d!148869 () Bool)

(assert (=> d!148869 (= (validKeyInArray!0 (select (arr!45446 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45446 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45446 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380863 d!148869))

(check-sat (not b!1380904) (not bm!66482) (not b!1380892) (not bm!66485))
(check-sat)
(get-model)

(declare-fun d!148879 () Bool)

(assert (=> d!148879 (= (validKeyInArray!0 (select (arr!45446 a!3931) from!3309)) (and (not (= (select (arr!45446 a!3931) from!3309) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45446 a!3931) from!3309) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380904 d!148879))

(declare-fun b!1380923 () Bool)

(declare-fun e!782698 () (_ BitVec 32))

(declare-fun call!66493 () (_ BitVec 32))

(assert (=> b!1380923 (= e!782698 call!66493)))

(declare-fun b!1380924 () Bool)

(declare-fun e!782697 () (_ BitVec 32))

(assert (=> b!1380924 (= e!782697 e!782698)))

(declare-fun c!128526 () Bool)

(assert (=> b!1380924 (= c!128526 (validKeyInArray!0 (select (arr!45446 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun b!1380925 () Bool)

(assert (=> b!1380925 (= e!782697 #b00000000000000000000000000000000)))

(declare-fun b!1380926 () Bool)

(assert (=> b!1380926 (= e!782698 (bvadd #b00000000000000000000000000000001 call!66493))))

(declare-fun d!148881 () Bool)

(declare-fun lt!608081 () (_ BitVec 32))

(assert (=> d!148881 (and (bvsge lt!608081 #b00000000000000000000000000000000) (bvsle lt!608081 (bvsub (size!45997 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(assert (=> d!148881 (= lt!608081 e!782697)))

(declare-fun c!128527 () Bool)

(assert (=> d!148881 (= c!128527 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(assert (=> d!148881 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) to!105) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!105 (size!45997 a!3931)))))

(assert (=> d!148881 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105) lt!608081)))

(declare-fun bm!66490 () Bool)

(assert (=> bm!66490 (= call!66493 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!105))))

(assert (= (and d!148881 c!128527) b!1380925))

(assert (= (and d!148881 (not c!128527)) b!1380924))

(assert (= (and b!1380924 c!128526) b!1380926))

(assert (= (and b!1380924 (not c!128526)) b!1380923))

(assert (= (or b!1380926 b!1380923) bm!66490))

(declare-fun m!1266189 () Bool)

(assert (=> b!1380924 m!1266189))

(assert (=> b!1380924 m!1266189))

(declare-fun m!1266191 () Bool)

(assert (=> b!1380924 m!1266191))

(declare-fun m!1266193 () Bool)

(assert (=> bm!66490 m!1266193))

(assert (=> bm!66482 d!148881))

(assert (=> b!1380892 d!148879))

(declare-fun b!1380927 () Bool)

(declare-fun e!782700 () (_ BitVec 32))

(declare-fun call!66494 () (_ BitVec 32))

(assert (=> b!1380927 (= e!782700 call!66494)))

(declare-fun b!1380928 () Bool)

(declare-fun e!782699 () (_ BitVec 32))

(assert (=> b!1380928 (= e!782699 e!782700)))

(declare-fun c!128528 () Bool)

(assert (=> b!1380928 (= c!128528 (validKeyInArray!0 (select (arr!45446 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(declare-fun b!1380929 () Bool)

(assert (=> b!1380929 (= e!782699 #b00000000000000000000000000000000)))

(declare-fun b!1380930 () Bool)

(assert (=> b!1380930 (= e!782700 (bvadd #b00000000000000000000000000000001 call!66494))))

(declare-fun d!148883 () Bool)

(declare-fun lt!608082 () (_ BitVec 32))

(assert (=> d!148883 (and (bvsge lt!608082 #b00000000000000000000000000000000) (bvsle lt!608082 (bvsub (size!45997 a!3931) (bvadd from!3309 #b00000000000000000000000000000001))))))

(assert (=> d!148883 (= lt!608082 e!782699)))

(declare-fun c!128529 () Bool)

(assert (=> d!148883 (= c!128529 (bvsge (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148883 (and (bvsle (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd from!3309 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45997 a!3931)))))

(assert (=> d!148883 (= (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)) lt!608082)))

(declare-fun bm!66491 () Bool)

(assert (=> bm!66491 (= call!66494 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and d!148883 c!128529) b!1380929))

(assert (= (and d!148883 (not c!128529)) b!1380928))

(assert (= (and b!1380928 c!128528) b!1380930))

(assert (= (and b!1380928 (not c!128528)) b!1380927))

(assert (= (or b!1380930 b!1380927) bm!66491))

(assert (=> b!1380928 m!1266189))

(assert (=> b!1380928 m!1266189))

(assert (=> b!1380928 m!1266191))

(declare-fun m!1266195 () Bool)

(assert (=> bm!66491 m!1266195))

(assert (=> bm!66485 d!148883))

(check-sat (not b!1380928) (not bm!66490) (not b!1380924) (not bm!66491))
