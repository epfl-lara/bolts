; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63048 () Bool)

(assert start!63048)

(declare-fun b!710211 () Bool)

(declare-fun res!473820 () Bool)

(declare-fun e!399611 () Bool)

(assert (=> b!710211 (=> (not res!473820) (not e!399611))))

(declare-datatypes ((List!13421 0))(
  ( (Nil!13418) (Cons!13417 (h!14462 (_ BitVec 64)) (t!19729 List!13421)) )
))
(declare-fun lt!318275 () List!13421)

(declare-fun contains!3964 (List!13421 (_ BitVec 64)) Bool)

(assert (=> b!710211 (= res!473820 (not (contains!3964 lt!318275 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710212 () Bool)

(declare-fun res!473823 () Bool)

(declare-fun e!399612 () Bool)

(assert (=> b!710212 (=> (not res!473823) (not e!399612))))

(declare-fun newAcc!49 () List!13421)

(assert (=> b!710212 (= res!473823 (not (contains!3964 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710213 () Bool)

(declare-fun res!473828 () Bool)

(assert (=> b!710213 (=> (not res!473828) (not e!399612))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13421)

(declare-fun -!373 (List!13421 (_ BitVec 64)) List!13421)

(assert (=> b!710213 (= res!473828 (= (-!373 newAcc!49 k0!2824) acc!652))))

(declare-fun b!710214 () Bool)

(declare-fun res!473826 () Bool)

(assert (=> b!710214 (=> (not res!473826) (not e!399612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710214 (= res!473826 (validKeyInArray!0 k0!2824))))

(declare-fun b!710215 () Bool)

(declare-fun lt!318274 () List!13421)

(declare-fun subseq!408 (List!13421 List!13421) Bool)

(assert (=> b!710215 (= e!399611 (not (subseq!408 lt!318275 lt!318274)))))

(declare-fun b!710216 () Bool)

(declare-fun res!473822 () Bool)

(assert (=> b!710216 (=> (not res!473822) (not e!399612))))

(assert (=> b!710216 (= res!473822 (not (contains!3964 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710217 () Bool)

(declare-fun res!473814 () Bool)

(assert (=> b!710217 (=> (not res!473814) (not e!399611))))

(declare-datatypes ((array!40367 0))(
  ( (array!40368 (arr!19327 (Array (_ BitVec 32) (_ BitVec 64))) (size!19725 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40367)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710217 (= res!473814 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun res!473832 () Bool)

(assert (=> start!63048 (=> (not res!473832) (not e!399612))))

(assert (=> start!63048 (= res!473832 (and (bvslt (size!19725 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19725 a!3591))))))

(assert (=> start!63048 e!399612))

(assert (=> start!63048 true))

(declare-fun array_inv!15101 (array!40367) Bool)

(assert (=> start!63048 (array_inv!15101 a!3591)))

(declare-fun b!710218 () Bool)

(declare-fun res!473810 () Bool)

(assert (=> b!710218 (=> (not res!473810) (not e!399612))))

(assert (=> b!710218 (= res!473810 (not (contains!3964 acc!652 k0!2824)))))

(declare-fun b!710219 () Bool)

(declare-fun res!473817 () Bool)

(assert (=> b!710219 (=> (not res!473817) (not e!399612))))

(declare-fun noDuplicate!1211 (List!13421) Bool)

(assert (=> b!710219 (= res!473817 (noDuplicate!1211 newAcc!49))))

(declare-fun b!710220 () Bool)

(declare-fun res!473830 () Bool)

(assert (=> b!710220 (=> (not res!473830) (not e!399612))))

(declare-fun arrayNoDuplicates!0 (array!40367 (_ BitVec 32) List!13421) Bool)

(assert (=> b!710220 (= res!473830 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710221 () Bool)

(declare-fun res!473809 () Bool)

(assert (=> b!710221 (=> (not res!473809) (not e!399611))))

(assert (=> b!710221 (= res!473809 (noDuplicate!1211 lt!318275))))

(declare-fun b!710222 () Bool)

(assert (=> b!710222 (= e!399612 e!399611)))

(declare-fun res!473812 () Bool)

(assert (=> b!710222 (=> (not res!473812) (not e!399611))))

(assert (=> b!710222 (= res!473812 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!518 (List!13421 (_ BitVec 64)) List!13421)

(assert (=> b!710222 (= lt!318274 ($colon$colon!518 newAcc!49 (select (arr!19327 a!3591) from!2969)))))

(assert (=> b!710222 (= lt!318275 ($colon$colon!518 acc!652 (select (arr!19327 a!3591) from!2969)))))

(declare-fun b!710223 () Bool)

(declare-fun res!473811 () Bool)

(assert (=> b!710223 (=> (not res!473811) (not e!399611))))

(assert (=> b!710223 (= res!473811 (noDuplicate!1211 lt!318274))))

(declare-fun b!710224 () Bool)

(declare-fun res!473825 () Bool)

(assert (=> b!710224 (=> (not res!473825) (not e!399612))))

(assert (=> b!710224 (= res!473825 (validKeyInArray!0 (select (arr!19327 a!3591) from!2969)))))

(declare-fun b!710225 () Bool)

(declare-fun res!473813 () Bool)

(assert (=> b!710225 (=> (not res!473813) (not e!399612))))

(assert (=> b!710225 (= res!473813 (contains!3964 newAcc!49 k0!2824))))

(declare-fun b!710226 () Bool)

(declare-fun res!473815 () Bool)

(assert (=> b!710226 (=> (not res!473815) (not e!399612))))

(assert (=> b!710226 (= res!473815 (noDuplicate!1211 acc!652))))

(declare-fun b!710227 () Bool)

(declare-fun res!473831 () Bool)

(assert (=> b!710227 (=> (not res!473831) (not e!399612))))

(assert (=> b!710227 (= res!473831 (not (contains!3964 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710228 () Bool)

(declare-fun res!473816 () Bool)

(assert (=> b!710228 (=> (not res!473816) (not e!399612))))

(assert (=> b!710228 (= res!473816 (not (contains!3964 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710229 () Bool)

(declare-fun res!473819 () Bool)

(assert (=> b!710229 (=> (not res!473819) (not e!399611))))

(assert (=> b!710229 (= res!473819 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318275))))

(declare-fun b!710230 () Bool)

(declare-fun res!473827 () Bool)

(assert (=> b!710230 (=> (not res!473827) (not e!399611))))

(assert (=> b!710230 (= res!473827 (not (contains!3964 lt!318275 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710231 () Bool)

(declare-fun res!473821 () Bool)

(assert (=> b!710231 (=> (not res!473821) (not e!399612))))

(assert (=> b!710231 (= res!473821 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19725 a!3591)))))

(declare-fun b!710232 () Bool)

(declare-fun res!473829 () Bool)

(assert (=> b!710232 (=> (not res!473829) (not e!399612))))

(assert (=> b!710232 (= res!473829 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!710233 () Bool)

(declare-fun res!473818 () Bool)

(assert (=> b!710233 (=> (not res!473818) (not e!399612))))

(assert (=> b!710233 (= res!473818 (subseq!408 acc!652 newAcc!49))))

(declare-fun b!710234 () Bool)

(declare-fun res!473824 () Bool)

(assert (=> b!710234 (=> (not res!473824) (not e!399611))))

(assert (=> b!710234 (= res!473824 (not (contains!3964 lt!318275 k0!2824)))))

(assert (= (and start!63048 res!473832) b!710226))

(assert (= (and b!710226 res!473815) b!710219))

(assert (= (and b!710219 res!473817) b!710227))

(assert (= (and b!710227 res!473831) b!710216))

(assert (= (and b!710216 res!473822) b!710232))

(assert (= (and b!710232 res!473829) b!710218))

(assert (= (and b!710218 res!473810) b!710214))

(assert (= (and b!710214 res!473826) b!710220))

(assert (= (and b!710220 res!473830) b!710233))

(assert (= (and b!710233 res!473818) b!710225))

(assert (= (and b!710225 res!473813) b!710213))

(assert (= (and b!710213 res!473828) b!710212))

(assert (= (and b!710212 res!473823) b!710228))

(assert (= (and b!710228 res!473816) b!710231))

(assert (= (and b!710231 res!473821) b!710224))

(assert (= (and b!710224 res!473825) b!710222))

(assert (= (and b!710222 res!473812) b!710221))

(assert (= (and b!710221 res!473809) b!710223))

(assert (= (and b!710223 res!473811) b!710211))

(assert (= (and b!710211 res!473820) b!710230))

(assert (= (and b!710230 res!473827) b!710217))

(assert (= (and b!710217 res!473814) b!710234))

(assert (= (and b!710234 res!473824) b!710229))

(assert (= (and b!710229 res!473819) b!710215))

(declare-fun m!667435 () Bool)

(assert (=> b!710216 m!667435))

(declare-fun m!667437 () Bool)

(assert (=> b!710221 m!667437))

(declare-fun m!667439 () Bool)

(assert (=> b!710226 m!667439))

(declare-fun m!667441 () Bool)

(assert (=> b!710232 m!667441))

(declare-fun m!667443 () Bool)

(assert (=> start!63048 m!667443))

(declare-fun m!667445 () Bool)

(assert (=> b!710229 m!667445))

(declare-fun m!667447 () Bool)

(assert (=> b!710219 m!667447))

(declare-fun m!667449 () Bool)

(assert (=> b!710223 m!667449))

(declare-fun m!667451 () Bool)

(assert (=> b!710227 m!667451))

(declare-fun m!667453 () Bool)

(assert (=> b!710222 m!667453))

(assert (=> b!710222 m!667453))

(declare-fun m!667455 () Bool)

(assert (=> b!710222 m!667455))

(assert (=> b!710222 m!667453))

(declare-fun m!667457 () Bool)

(assert (=> b!710222 m!667457))

(declare-fun m!667459 () Bool)

(assert (=> b!710211 m!667459))

(declare-fun m!667461 () Bool)

(assert (=> b!710212 m!667461))

(declare-fun m!667463 () Bool)

(assert (=> b!710213 m!667463))

(declare-fun m!667465 () Bool)

(assert (=> b!710214 m!667465))

(declare-fun m!667467 () Bool)

(assert (=> b!710228 m!667467))

(assert (=> b!710224 m!667453))

(assert (=> b!710224 m!667453))

(declare-fun m!667469 () Bool)

(assert (=> b!710224 m!667469))

(declare-fun m!667471 () Bool)

(assert (=> b!710233 m!667471))

(declare-fun m!667473 () Bool)

(assert (=> b!710230 m!667473))

(declare-fun m!667475 () Bool)

(assert (=> b!710218 m!667475))

(declare-fun m!667477 () Bool)

(assert (=> b!710225 m!667477))

(declare-fun m!667479 () Bool)

(assert (=> b!710234 m!667479))

(declare-fun m!667481 () Bool)

(assert (=> b!710217 m!667481))

(declare-fun m!667483 () Bool)

(assert (=> b!710220 m!667483))

(declare-fun m!667485 () Bool)

(assert (=> b!710215 m!667485))

(check-sat (not b!710229) (not b!710212) (not b!710218) (not start!63048) (not b!710234) (not b!710217) (not b!710211) (not b!710233) (not b!710232) (not b!710224) (not b!710214) (not b!710230) (not b!710225) (not b!710228) (not b!710222) (not b!710223) (not b!710215) (not b!710226) (not b!710227) (not b!710213) (not b!710220) (not b!710219) (not b!710221) (not b!710216))
(check-sat)
(get-model)

(declare-fun d!97263 () Bool)

(declare-fun lt!318284 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!352 (List!13421) (InoxSet (_ BitVec 64)))

(assert (=> d!97263 (= lt!318284 (select (content!352 newAcc!49) k0!2824))))

(declare-fun e!399627 () Bool)

(assert (=> d!97263 (= lt!318284 e!399627)))

(declare-fun res!473910 () Bool)

(assert (=> d!97263 (=> (not res!473910) (not e!399627))))

(get-info :version)

(assert (=> d!97263 (= res!473910 ((_ is Cons!13417) newAcc!49))))

(assert (=> d!97263 (= (contains!3964 newAcc!49 k0!2824) lt!318284)))

(declare-fun b!710311 () Bool)

(declare-fun e!399626 () Bool)

(assert (=> b!710311 (= e!399627 e!399626)))

(declare-fun res!473909 () Bool)

(assert (=> b!710311 (=> res!473909 e!399626)))

(assert (=> b!710311 (= res!473909 (= (h!14462 newAcc!49) k0!2824))))

(declare-fun b!710312 () Bool)

(assert (=> b!710312 (= e!399626 (contains!3964 (t!19729 newAcc!49) k0!2824))))

(assert (= (and d!97263 res!473910) b!710311))

(assert (= (and b!710311 (not res!473909)) b!710312))

(declare-fun m!667539 () Bool)

(assert (=> d!97263 m!667539))

(declare-fun m!667541 () Bool)

(assert (=> d!97263 m!667541))

(declare-fun m!667543 () Bool)

(assert (=> b!710312 m!667543))

(assert (=> b!710225 d!97263))

(declare-fun d!97265 () Bool)

(assert (=> d!97265 (= (array_inv!15101 a!3591) (bvsge (size!19725 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63048 d!97265))

(declare-fun d!97267 () Bool)

(declare-fun res!473915 () Bool)

(declare-fun e!399632 () Bool)

(assert (=> d!97267 (=> res!473915 e!399632)))

(assert (=> d!97267 (= res!473915 ((_ is Nil!13418) acc!652))))

(assert (=> d!97267 (= (noDuplicate!1211 acc!652) e!399632)))

(declare-fun b!710317 () Bool)

(declare-fun e!399633 () Bool)

(assert (=> b!710317 (= e!399632 e!399633)))

(declare-fun res!473916 () Bool)

(assert (=> b!710317 (=> (not res!473916) (not e!399633))))

(assert (=> b!710317 (= res!473916 (not (contains!3964 (t!19729 acc!652) (h!14462 acc!652))))))

(declare-fun b!710318 () Bool)

(assert (=> b!710318 (= e!399633 (noDuplicate!1211 (t!19729 acc!652)))))

(assert (= (and d!97267 (not res!473915)) b!710317))

(assert (= (and b!710317 res!473916) b!710318))

(declare-fun m!667545 () Bool)

(assert (=> b!710317 m!667545))

(declare-fun m!667547 () Bool)

(assert (=> b!710318 m!667547))

(assert (=> b!710226 d!97267))

(declare-fun d!97269 () Bool)

(assert (=> d!97269 (= ($colon$colon!518 newAcc!49 (select (arr!19327 a!3591) from!2969)) (Cons!13417 (select (arr!19327 a!3591) from!2969) newAcc!49))))

(assert (=> b!710222 d!97269))

(declare-fun d!97271 () Bool)

(assert (=> d!97271 (= ($colon$colon!518 acc!652 (select (arr!19327 a!3591) from!2969)) (Cons!13417 (select (arr!19327 a!3591) from!2969) acc!652))))

(assert (=> b!710222 d!97271))

(declare-fun d!97273 () Bool)

(assert (=> d!97273 (= (validKeyInArray!0 (select (arr!19327 a!3591) from!2969)) (and (not (= (select (arr!19327 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19327 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710224 d!97273))

(declare-fun d!97275 () Bool)

(declare-fun res!473917 () Bool)

(declare-fun e!399634 () Bool)

(assert (=> d!97275 (=> res!473917 e!399634)))

(assert (=> d!97275 (= res!473917 ((_ is Nil!13418) lt!318274))))

(assert (=> d!97275 (= (noDuplicate!1211 lt!318274) e!399634)))

(declare-fun b!710319 () Bool)

(declare-fun e!399635 () Bool)

(assert (=> b!710319 (= e!399634 e!399635)))

(declare-fun res!473918 () Bool)

(assert (=> b!710319 (=> (not res!473918) (not e!399635))))

(assert (=> b!710319 (= res!473918 (not (contains!3964 (t!19729 lt!318274) (h!14462 lt!318274))))))

(declare-fun b!710320 () Bool)

(assert (=> b!710320 (= e!399635 (noDuplicate!1211 (t!19729 lt!318274)))))

(assert (= (and d!97275 (not res!473917)) b!710319))

(assert (= (and b!710319 res!473918) b!710320))

(declare-fun m!667549 () Bool)

(assert (=> b!710319 m!667549))

(declare-fun m!667551 () Bool)

(assert (=> b!710320 m!667551))

(assert (=> b!710223 d!97275))

(declare-fun d!97277 () Bool)

(declare-fun lt!318285 () Bool)

(assert (=> d!97277 (= lt!318285 (select (content!352 lt!318275) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399637 () Bool)

(assert (=> d!97277 (= lt!318285 e!399637)))

(declare-fun res!473920 () Bool)

(assert (=> d!97277 (=> (not res!473920) (not e!399637))))

(assert (=> d!97277 (= res!473920 ((_ is Cons!13417) lt!318275))))

(assert (=> d!97277 (= (contains!3964 lt!318275 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318285)))

(declare-fun b!710321 () Bool)

(declare-fun e!399636 () Bool)

(assert (=> b!710321 (= e!399637 e!399636)))

(declare-fun res!473919 () Bool)

(assert (=> b!710321 (=> res!473919 e!399636)))

(assert (=> b!710321 (= res!473919 (= (h!14462 lt!318275) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710322 () Bool)

(assert (=> b!710322 (= e!399636 (contains!3964 (t!19729 lt!318275) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97277 res!473920) b!710321))

(assert (= (and b!710321 (not res!473919)) b!710322))

(declare-fun m!667553 () Bool)

(assert (=> d!97277 m!667553))

(declare-fun m!667555 () Bool)

(assert (=> d!97277 m!667555))

(declare-fun m!667557 () Bool)

(assert (=> b!710322 m!667557))

(assert (=> b!710230 d!97277))

(declare-fun d!97279 () Bool)

(declare-fun res!473925 () Bool)

(declare-fun e!399642 () Bool)

(assert (=> d!97279 (=> res!473925 e!399642)))

(assert (=> d!97279 (= res!473925 (= (select (arr!19327 a!3591) from!2969) k0!2824))))

(assert (=> d!97279 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!399642)))

(declare-fun b!710327 () Bool)

(declare-fun e!399643 () Bool)

(assert (=> b!710327 (= e!399642 e!399643)))

(declare-fun res!473926 () Bool)

(assert (=> b!710327 (=> (not res!473926) (not e!399643))))

(assert (=> b!710327 (= res!473926 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19725 a!3591)))))

(declare-fun b!710328 () Bool)

(assert (=> b!710328 (= e!399643 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97279 (not res!473925)) b!710327))

(assert (= (and b!710327 res!473926) b!710328))

(assert (=> d!97279 m!667453))

(declare-fun m!667559 () Bool)

(assert (=> b!710328 m!667559))

(assert (=> b!710232 d!97279))

(declare-fun d!97281 () Bool)

(declare-fun lt!318286 () Bool)

(assert (=> d!97281 (= lt!318286 (select (content!352 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399645 () Bool)

(assert (=> d!97281 (= lt!318286 e!399645)))

(declare-fun res!473928 () Bool)

(assert (=> d!97281 (=> (not res!473928) (not e!399645))))

(assert (=> d!97281 (= res!473928 ((_ is Cons!13417) newAcc!49))))

(assert (=> d!97281 (= (contains!3964 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318286)))

(declare-fun b!710329 () Bool)

(declare-fun e!399644 () Bool)

(assert (=> b!710329 (= e!399645 e!399644)))

(declare-fun res!473927 () Bool)

(assert (=> b!710329 (=> res!473927 e!399644)))

(assert (=> b!710329 (= res!473927 (= (h!14462 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710330 () Bool)

(assert (=> b!710330 (= e!399644 (contains!3964 (t!19729 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97281 res!473928) b!710329))

(assert (= (and b!710329 (not res!473927)) b!710330))

(assert (=> d!97281 m!667539))

(declare-fun m!667561 () Bool)

(assert (=> d!97281 m!667561))

(declare-fun m!667563 () Bool)

(assert (=> b!710330 m!667563))

(assert (=> b!710228 d!97281))

(declare-fun d!97283 () Bool)

(declare-fun lt!318287 () Bool)

(assert (=> d!97283 (= lt!318287 (select (content!352 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399647 () Bool)

(assert (=> d!97283 (= lt!318287 e!399647)))

(declare-fun res!473930 () Bool)

(assert (=> d!97283 (=> (not res!473930) (not e!399647))))

(assert (=> d!97283 (= res!473930 ((_ is Cons!13417) acc!652))))

(assert (=> d!97283 (= (contains!3964 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318287)))

(declare-fun b!710331 () Bool)

(declare-fun e!399646 () Bool)

(assert (=> b!710331 (= e!399647 e!399646)))

(declare-fun res!473929 () Bool)

(assert (=> b!710331 (=> res!473929 e!399646)))

(assert (=> b!710331 (= res!473929 (= (h!14462 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710332 () Bool)

(assert (=> b!710332 (= e!399646 (contains!3964 (t!19729 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97283 res!473930) b!710331))

(assert (= (and b!710331 (not res!473929)) b!710332))

(declare-fun m!667565 () Bool)

(assert (=> d!97283 m!667565))

(declare-fun m!667567 () Bool)

(assert (=> d!97283 m!667567))

(declare-fun m!667569 () Bool)

(assert (=> b!710332 m!667569))

(assert (=> b!710227 d!97283))

(declare-fun b!710355 () Bool)

(declare-fun e!399669 () Bool)

(declare-fun e!399668 () Bool)

(assert (=> b!710355 (= e!399669 e!399668)))

(declare-fun res!473949 () Bool)

(assert (=> b!710355 (=> (not res!473949) (not e!399668))))

(declare-fun e!399671 () Bool)

(assert (=> b!710355 (= res!473949 (not e!399671))))

(declare-fun res!473951 () Bool)

(assert (=> b!710355 (=> (not res!473951) (not e!399671))))

(assert (=> b!710355 (= res!473951 (validKeyInArray!0 (select (arr!19327 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710356 () Bool)

(assert (=> b!710356 (= e!399671 (contains!3964 lt!318275 (select (arr!19327 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710357 () Bool)

(declare-fun e!399670 () Bool)

(assert (=> b!710357 (= e!399668 e!399670)))

(declare-fun c!78570 () Bool)

(assert (=> b!710357 (= c!78570 (validKeyInArray!0 (select (arr!19327 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710358 () Bool)

(declare-fun call!34473 () Bool)

(assert (=> b!710358 (= e!399670 call!34473)))

(declare-fun bm!34470 () Bool)

(assert (=> bm!34470 (= call!34473 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78570 (Cons!13417 (select (arr!19327 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318275) lt!318275)))))

(declare-fun b!710359 () Bool)

(assert (=> b!710359 (= e!399670 call!34473)))

(declare-fun d!97285 () Bool)

(declare-fun res!473950 () Bool)

(assert (=> d!97285 (=> res!473950 e!399669)))

(assert (=> d!97285 (= res!473950 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19725 a!3591)))))

(assert (=> d!97285 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318275) e!399669)))

(assert (= (and d!97285 (not res!473950)) b!710355))

(assert (= (and b!710355 res!473951) b!710356))

(assert (= (and b!710355 res!473949) b!710357))

(assert (= (and b!710357 c!78570) b!710358))

(assert (= (and b!710357 (not c!78570)) b!710359))

(assert (= (or b!710358 b!710359) bm!34470))

(declare-fun m!667581 () Bool)

(assert (=> b!710355 m!667581))

(assert (=> b!710355 m!667581))

(declare-fun m!667583 () Bool)

(assert (=> b!710355 m!667583))

(assert (=> b!710356 m!667581))

(assert (=> b!710356 m!667581))

(declare-fun m!667585 () Bool)

(assert (=> b!710356 m!667585))

(assert (=> b!710357 m!667581))

(assert (=> b!710357 m!667581))

(assert (=> b!710357 m!667583))

(assert (=> bm!34470 m!667581))

(declare-fun m!667587 () Bool)

(assert (=> bm!34470 m!667587))

(assert (=> b!710229 d!97285))

(declare-fun d!97297 () Bool)

(assert (=> d!97297 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710214 d!97297))

(declare-fun d!97299 () Bool)

(declare-fun lt!318293 () Bool)

(assert (=> d!97299 (= lt!318293 (select (content!352 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399681 () Bool)

(assert (=> d!97299 (= lt!318293 e!399681)))

(declare-fun res!473961 () Bool)

(assert (=> d!97299 (=> (not res!473961) (not e!399681))))

(assert (=> d!97299 (= res!473961 ((_ is Cons!13417) acc!652))))

(assert (=> d!97299 (= (contains!3964 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318293)))

(declare-fun b!710368 () Bool)

(declare-fun e!399680 () Bool)

(assert (=> b!710368 (= e!399681 e!399680)))

(declare-fun res!473960 () Bool)

(assert (=> b!710368 (=> res!473960 e!399680)))

(assert (=> b!710368 (= res!473960 (= (h!14462 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710369 () Bool)

(assert (=> b!710369 (= e!399680 (contains!3964 (t!19729 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97299 res!473961) b!710368))

(assert (= (and b!710368 (not res!473960)) b!710369))

(assert (=> d!97299 m!667565))

(declare-fun m!667589 () Bool)

(assert (=> d!97299 m!667589))

(declare-fun m!667591 () Bool)

(assert (=> b!710369 m!667591))

(assert (=> b!710216 d!97299))

(declare-fun d!97301 () Bool)

(declare-fun res!473987 () Bool)

(declare-fun e!399706 () Bool)

(assert (=> d!97301 (=> res!473987 e!399706)))

(assert (=> d!97301 (= res!473987 ((_ is Nil!13418) lt!318275))))

(assert (=> d!97301 (= (subseq!408 lt!318275 lt!318274) e!399706)))

(declare-fun b!710396 () Bool)

(declare-fun e!399709 () Bool)

(assert (=> b!710396 (= e!399709 (subseq!408 (t!19729 lt!318275) (t!19729 lt!318274)))))

(declare-fun b!710395 () Bool)

(declare-fun e!399707 () Bool)

(declare-fun e!399708 () Bool)

(assert (=> b!710395 (= e!399707 e!399708)))

(declare-fun res!473986 () Bool)

(assert (=> b!710395 (=> res!473986 e!399708)))

(assert (=> b!710395 (= res!473986 e!399709)))

(declare-fun res!473989 () Bool)

(assert (=> b!710395 (=> (not res!473989) (not e!399709))))

(assert (=> b!710395 (= res!473989 (= (h!14462 lt!318275) (h!14462 lt!318274)))))

(declare-fun b!710394 () Bool)

(assert (=> b!710394 (= e!399706 e!399707)))

(declare-fun res!473988 () Bool)

(assert (=> b!710394 (=> (not res!473988) (not e!399707))))

(assert (=> b!710394 (= res!473988 ((_ is Cons!13417) lt!318274))))

(declare-fun b!710397 () Bool)

(assert (=> b!710397 (= e!399708 (subseq!408 lt!318275 (t!19729 lt!318274)))))

(assert (= (and d!97301 (not res!473987)) b!710394))

(assert (= (and b!710394 res!473988) b!710395))

(assert (= (and b!710395 res!473989) b!710396))

(assert (= (and b!710395 (not res!473986)) b!710397))

(declare-fun m!667615 () Bool)

(assert (=> b!710396 m!667615))

(declare-fun m!667617 () Bool)

(assert (=> b!710397 m!667617))

(assert (=> b!710215 d!97301))

(declare-fun d!97313 () Bool)

(declare-fun lt!318296 () Bool)

(assert (=> d!97313 (= lt!318296 (select (content!352 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399717 () Bool)

(assert (=> d!97313 (= lt!318296 e!399717)))

(declare-fun res!473995 () Bool)

(assert (=> d!97313 (=> (not res!473995) (not e!399717))))

(assert (=> d!97313 (= res!473995 ((_ is Cons!13417) newAcc!49))))

(assert (=> d!97313 (= (contains!3964 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318296)))

(declare-fun b!710406 () Bool)

(declare-fun e!399716 () Bool)

(assert (=> b!710406 (= e!399717 e!399716)))

(declare-fun res!473994 () Bool)

(assert (=> b!710406 (=> res!473994 e!399716)))

(assert (=> b!710406 (= res!473994 (= (h!14462 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710407 () Bool)

(assert (=> b!710407 (= e!399716 (contains!3964 (t!19729 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97313 res!473995) b!710406))

(assert (= (and b!710406 (not res!473994)) b!710407))

(assert (=> d!97313 m!667539))

(declare-fun m!667619 () Bool)

(assert (=> d!97313 m!667619))

(declare-fun m!667621 () Bool)

(assert (=> b!710407 m!667621))

(assert (=> b!710212 d!97313))

(declare-fun d!97315 () Bool)

(declare-fun res!473997 () Bool)

(declare-fun e!399718 () Bool)

(assert (=> d!97315 (=> res!473997 e!399718)))

(assert (=> d!97315 (= res!473997 ((_ is Nil!13418) acc!652))))

(assert (=> d!97315 (= (subseq!408 acc!652 newAcc!49) e!399718)))

(declare-fun b!710410 () Bool)

(declare-fun e!399721 () Bool)

(assert (=> b!710410 (= e!399721 (subseq!408 (t!19729 acc!652) (t!19729 newAcc!49)))))

(declare-fun b!710409 () Bool)

(declare-fun e!399719 () Bool)

(declare-fun e!399720 () Bool)

(assert (=> b!710409 (= e!399719 e!399720)))

(declare-fun res!473996 () Bool)

(assert (=> b!710409 (=> res!473996 e!399720)))

(assert (=> b!710409 (= res!473996 e!399721)))

(declare-fun res!473999 () Bool)

(assert (=> b!710409 (=> (not res!473999) (not e!399721))))

(assert (=> b!710409 (= res!473999 (= (h!14462 acc!652) (h!14462 newAcc!49)))))

(declare-fun b!710408 () Bool)

(assert (=> b!710408 (= e!399718 e!399719)))

(declare-fun res!473998 () Bool)

(assert (=> b!710408 (=> (not res!473998) (not e!399719))))

(assert (=> b!710408 (= res!473998 ((_ is Cons!13417) newAcc!49))))

(declare-fun b!710411 () Bool)

(assert (=> b!710411 (= e!399720 (subseq!408 acc!652 (t!19729 newAcc!49)))))

(assert (= (and d!97315 (not res!473997)) b!710408))

(assert (= (and b!710408 res!473998) b!710409))

(assert (= (and b!710409 res!473999) b!710410))

(assert (= (and b!710409 (not res!473996)) b!710411))

(declare-fun m!667623 () Bool)

(assert (=> b!710410 m!667623))

(declare-fun m!667625 () Bool)

(assert (=> b!710411 m!667625))

(assert (=> b!710233 d!97315))

(declare-fun d!97317 () Bool)

(declare-fun lt!318297 () Bool)

(assert (=> d!97317 (= lt!318297 (select (content!352 lt!318275) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399723 () Bool)

(assert (=> d!97317 (= lt!318297 e!399723)))

(declare-fun res!474001 () Bool)

(assert (=> d!97317 (=> (not res!474001) (not e!399723))))

(assert (=> d!97317 (= res!474001 ((_ is Cons!13417) lt!318275))))

(assert (=> d!97317 (= (contains!3964 lt!318275 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318297)))

(declare-fun b!710412 () Bool)

(declare-fun e!399722 () Bool)

(assert (=> b!710412 (= e!399723 e!399722)))

(declare-fun res!474000 () Bool)

(assert (=> b!710412 (=> res!474000 e!399722)))

(assert (=> b!710412 (= res!474000 (= (h!14462 lt!318275) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710413 () Bool)

(assert (=> b!710413 (= e!399722 (contains!3964 (t!19729 lt!318275) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97317 res!474001) b!710412))

(assert (= (and b!710412 (not res!474000)) b!710413))

(assert (=> d!97317 m!667553))

(declare-fun m!667627 () Bool)

(assert (=> d!97317 m!667627))

(declare-fun m!667629 () Bool)

(assert (=> b!710413 m!667629))

(assert (=> b!710211 d!97317))

(declare-fun b!710457 () Bool)

(declare-fun e!399759 () List!13421)

(assert (=> b!710457 (= e!399759 Nil!13418)))

(declare-fun bm!34480 () Bool)

(declare-fun call!34483 () List!13421)

(assert (=> bm!34480 (= call!34483 (-!373 (t!19729 newAcc!49) k0!2824))))

(declare-fun b!710458 () Bool)

(declare-fun e!399761 () Bool)

(declare-fun lt!318300 () List!13421)

(assert (=> b!710458 (= e!399761 (= (content!352 lt!318300) ((_ map and) (content!352 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!97319 () Bool)

(assert (=> d!97319 e!399761))

(declare-fun res!474027 () Bool)

(assert (=> d!97319 (=> (not res!474027) (not e!399761))))

(declare-fun size!19727 (List!13421) Int)

(assert (=> d!97319 (= res!474027 (<= (size!19727 lt!318300) (size!19727 newAcc!49)))))

(assert (=> d!97319 (= lt!318300 e!399759)))

(declare-fun c!78583 () Bool)

(assert (=> d!97319 (= c!78583 ((_ is Cons!13417) newAcc!49))))

(assert (=> d!97319 (= (-!373 newAcc!49 k0!2824) lt!318300)))

(declare-fun b!710459 () Bool)

(declare-fun e!399760 () List!13421)

(assert (=> b!710459 (= e!399760 (Cons!13417 (h!14462 newAcc!49) call!34483))))

(declare-fun b!710460 () Bool)

(assert (=> b!710460 (= e!399759 e!399760)))

(declare-fun c!78582 () Bool)

(assert (=> b!710460 (= c!78582 (= k0!2824 (h!14462 newAcc!49)))))

(declare-fun b!710461 () Bool)

(assert (=> b!710461 (= e!399760 call!34483)))

(assert (= (and d!97319 c!78583) b!710460))

(assert (= (and d!97319 (not c!78583)) b!710457))

(assert (= (and b!710460 c!78582) b!710461))

(assert (= (and b!710460 (not c!78582)) b!710459))

(assert (= (or b!710461 b!710459) bm!34480))

(assert (= (and d!97319 res!474027) b!710458))

(declare-fun m!667651 () Bool)

(assert (=> bm!34480 m!667651))

(declare-fun m!667655 () Bool)

(assert (=> b!710458 m!667655))

(assert (=> b!710458 m!667539))

(declare-fun m!667659 () Bool)

(assert (=> b!710458 m!667659))

(declare-fun m!667661 () Bool)

(assert (=> d!97319 m!667661))

(declare-fun m!667663 () Bool)

(assert (=> d!97319 m!667663))

(assert (=> b!710213 d!97319))

(declare-fun d!97333 () Bool)

(declare-fun lt!318301 () Bool)

(assert (=> d!97333 (= lt!318301 (select (content!352 lt!318275) k0!2824))))

(declare-fun e!399767 () Bool)

(assert (=> d!97333 (= lt!318301 e!399767)))

(declare-fun res!474033 () Bool)

(assert (=> d!97333 (=> (not res!474033) (not e!399767))))

(assert (=> d!97333 (= res!474033 ((_ is Cons!13417) lt!318275))))

(assert (=> d!97333 (= (contains!3964 lt!318275 k0!2824) lt!318301)))

(declare-fun b!710466 () Bool)

(declare-fun e!399766 () Bool)

(assert (=> b!710466 (= e!399767 e!399766)))

(declare-fun res!474032 () Bool)

(assert (=> b!710466 (=> res!474032 e!399766)))

(assert (=> b!710466 (= res!474032 (= (h!14462 lt!318275) k0!2824))))

(declare-fun b!710467 () Bool)

(assert (=> b!710467 (= e!399766 (contains!3964 (t!19729 lt!318275) k0!2824))))

(assert (= (and d!97333 res!474033) b!710466))

(assert (= (and b!710466 (not res!474032)) b!710467))

(assert (=> d!97333 m!667553))

(declare-fun m!667665 () Bool)

(assert (=> d!97333 m!667665))

(declare-fun m!667667 () Bool)

(assert (=> b!710467 m!667667))

(assert (=> b!710234 d!97333))

(declare-fun b!710470 () Bool)

(declare-fun e!399771 () Bool)

(declare-fun e!399770 () Bool)

(assert (=> b!710470 (= e!399771 e!399770)))

(declare-fun res!474036 () Bool)

(assert (=> b!710470 (=> (not res!474036) (not e!399770))))

(declare-fun e!399773 () Bool)

(assert (=> b!710470 (= res!474036 (not e!399773))))

(declare-fun res!474038 () Bool)

(assert (=> b!710470 (=> (not res!474038) (not e!399773))))

(assert (=> b!710470 (= res!474038 (validKeyInArray!0 (select (arr!19327 a!3591) from!2969)))))

(declare-fun b!710471 () Bool)

(assert (=> b!710471 (= e!399773 (contains!3964 acc!652 (select (arr!19327 a!3591) from!2969)))))

(declare-fun b!710472 () Bool)

(declare-fun e!399772 () Bool)

(assert (=> b!710472 (= e!399770 e!399772)))

(declare-fun c!78584 () Bool)

(assert (=> b!710472 (= c!78584 (validKeyInArray!0 (select (arr!19327 a!3591) from!2969)))))

(declare-fun b!710473 () Bool)

(declare-fun call!34484 () Bool)

(assert (=> b!710473 (= e!399772 call!34484)))

(declare-fun bm!34481 () Bool)

(assert (=> bm!34481 (= call!34484 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78584 (Cons!13417 (select (arr!19327 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!710474 () Bool)

(assert (=> b!710474 (= e!399772 call!34484)))

(declare-fun d!97337 () Bool)

(declare-fun res!474037 () Bool)

(assert (=> d!97337 (=> res!474037 e!399771)))

(assert (=> d!97337 (= res!474037 (bvsge from!2969 (size!19725 a!3591)))))

(assert (=> d!97337 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399771)))

(assert (= (and d!97337 (not res!474037)) b!710470))

(assert (= (and b!710470 res!474038) b!710471))

(assert (= (and b!710470 res!474036) b!710472))

(assert (= (and b!710472 c!78584) b!710473))

(assert (= (and b!710472 (not c!78584)) b!710474))

(assert (= (or b!710473 b!710474) bm!34481))

(assert (=> b!710470 m!667453))

(assert (=> b!710470 m!667453))

(assert (=> b!710470 m!667469))

(assert (=> b!710471 m!667453))

(assert (=> b!710471 m!667453))

(declare-fun m!667675 () Bool)

(assert (=> b!710471 m!667675))

(assert (=> b!710472 m!667453))

(assert (=> b!710472 m!667453))

(assert (=> b!710472 m!667469))

(assert (=> bm!34481 m!667453))

(declare-fun m!667677 () Bool)

(assert (=> bm!34481 m!667677))

(assert (=> b!710220 d!97337))

(declare-fun d!97341 () Bool)

(declare-fun res!474043 () Bool)

(declare-fun e!399778 () Bool)

(assert (=> d!97341 (=> res!474043 e!399778)))

(assert (=> d!97341 (= res!474043 ((_ is Nil!13418) newAcc!49))))

(assert (=> d!97341 (= (noDuplicate!1211 newAcc!49) e!399778)))

(declare-fun b!710477 () Bool)

(declare-fun e!399779 () Bool)

(assert (=> b!710477 (= e!399778 e!399779)))

(declare-fun res!474044 () Bool)

(assert (=> b!710477 (=> (not res!474044) (not e!399779))))

(assert (=> b!710477 (= res!474044 (not (contains!3964 (t!19729 newAcc!49) (h!14462 newAcc!49))))))

(declare-fun b!710478 () Bool)

(assert (=> b!710478 (= e!399779 (noDuplicate!1211 (t!19729 newAcc!49)))))

(assert (= (and d!97341 (not res!474043)) b!710477))

(assert (= (and b!710477 res!474044) b!710478))

(declare-fun m!667679 () Bool)

(assert (=> b!710477 m!667679))

(declare-fun m!667681 () Bool)

(assert (=> b!710478 m!667681))

(assert (=> b!710219 d!97341))

(declare-fun d!97345 () Bool)

(declare-fun res!474047 () Bool)

(declare-fun e!399782 () Bool)

(assert (=> d!97345 (=> res!474047 e!399782)))

(assert (=> d!97345 (= res!474047 ((_ is Nil!13418) lt!318275))))

(assert (=> d!97345 (= (noDuplicate!1211 lt!318275) e!399782)))

(declare-fun b!710483 () Bool)

(declare-fun e!399783 () Bool)

(assert (=> b!710483 (= e!399782 e!399783)))

(declare-fun res!474048 () Bool)

(assert (=> b!710483 (=> (not res!474048) (not e!399783))))

(assert (=> b!710483 (= res!474048 (not (contains!3964 (t!19729 lt!318275) (h!14462 lt!318275))))))

(declare-fun b!710484 () Bool)

(assert (=> b!710484 (= e!399783 (noDuplicate!1211 (t!19729 lt!318275)))))

(assert (= (and d!97345 (not res!474047)) b!710483))

(assert (= (and b!710483 res!474048) b!710484))

(declare-fun m!667687 () Bool)

(assert (=> b!710483 m!667687))

(declare-fun m!667689 () Bool)

(assert (=> b!710484 m!667689))

(assert (=> b!710221 d!97345))

(declare-fun d!97349 () Bool)

(declare-fun res!474051 () Bool)

(declare-fun e!399786 () Bool)

(assert (=> d!97349 (=> res!474051 e!399786)))

(assert (=> d!97349 (= res!474051 (= (select (arr!19327 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97349 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399786)))

(declare-fun b!710487 () Bool)

(declare-fun e!399787 () Bool)

(assert (=> b!710487 (= e!399786 e!399787)))

(declare-fun res!474052 () Bool)

(assert (=> b!710487 (=> (not res!474052) (not e!399787))))

(assert (=> b!710487 (= res!474052 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19725 a!3591)))))

(declare-fun b!710488 () Bool)

(assert (=> b!710488 (= e!399787 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97349 (not res!474051)) b!710487))

(assert (= (and b!710487 res!474052) b!710488))

(assert (=> d!97349 m!667581))

(declare-fun m!667697 () Bool)

(assert (=> b!710488 m!667697))

(assert (=> b!710217 d!97349))

(declare-fun d!97353 () Bool)

(declare-fun lt!318304 () Bool)

(assert (=> d!97353 (= lt!318304 (select (content!352 acc!652) k0!2824))))

(declare-fun e!399793 () Bool)

(assert (=> d!97353 (= lt!318304 e!399793)))

(declare-fun res!474058 () Bool)

(assert (=> d!97353 (=> (not res!474058) (not e!399793))))

(assert (=> d!97353 (= res!474058 ((_ is Cons!13417) acc!652))))

(assert (=> d!97353 (= (contains!3964 acc!652 k0!2824) lt!318304)))

(declare-fun b!710493 () Bool)

(declare-fun e!399792 () Bool)

(assert (=> b!710493 (= e!399793 e!399792)))

(declare-fun res!474057 () Bool)

(assert (=> b!710493 (=> res!474057 e!399792)))

(assert (=> b!710493 (= res!474057 (= (h!14462 acc!652) k0!2824))))

(declare-fun b!710494 () Bool)

(assert (=> b!710494 (= e!399792 (contains!3964 (t!19729 acc!652) k0!2824))))

(assert (= (and d!97353 res!474058) b!710493))

(assert (= (and b!710493 (not res!474057)) b!710494))

(assert (=> d!97353 m!667565))

(declare-fun m!667705 () Bool)

(assert (=> d!97353 m!667705))

(declare-fun m!667707 () Bool)

(assert (=> b!710494 m!667707))

(assert (=> b!710218 d!97353))

(check-sat (not b!710312) (not b!710332) (not b!710483) (not b!710488) (not b!710478) (not b!710494) (not b!710410) (not bm!34481) (not b!710484) (not d!97283) (not d!97333) (not b!710356) (not b!710317) (not d!97281) (not b!710467) (not b!710318) (not d!97313) (not b!710396) (not b!710411) (not bm!34470) (not b!710322) (not b!710369) (not b!710355) (not d!97277) (not d!97319) (not bm!34480) (not d!97317) (not b!710472) (not b!710407) (not b!710458) (not b!710320) (not b!710319) (not b!710470) (not b!710328) (not b!710477) (not d!97299) (not b!710471) (not b!710413) (not d!97263) (not b!710357) (not b!710397) (not b!710330) (not d!97353))
(check-sat)
