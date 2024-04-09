; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60734 () Bool)

(assert start!60734)

(declare-fun b!681485 () Bool)

(declare-fun res!447783 () Bool)

(declare-fun e!388240 () Bool)

(assert (=> b!681485 (=> (not res!447783) (not e!388240))))

(declare-datatypes ((List!13025 0))(
  ( (Nil!13022) (Cons!13021 (h!14066 (_ BitVec 64)) (t!19270 List!13025)) )
))
(declare-fun acc!681 () List!13025)

(declare-fun noDuplicate!815 (List!13025) Bool)

(assert (=> b!681485 (= res!447783 (noDuplicate!815 acc!681))))

(declare-fun b!681486 () Bool)

(declare-fun res!447793 () Bool)

(assert (=> b!681486 (=> (not res!447793) (not e!388240))))

(declare-fun contains!3568 (List!13025 (_ BitVec 64)) Bool)

(assert (=> b!681486 (= res!447793 (not (contains!3568 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681487 () Bool)

(declare-fun res!447778 () Bool)

(declare-fun e!388242 () Bool)

(assert (=> b!681487 (=> res!447778 e!388242)))

(declare-fun lt!313283 () List!13025)

(assert (=> b!681487 (= res!447778 (not (noDuplicate!815 lt!313283)))))

(declare-fun res!447790 () Bool)

(assert (=> start!60734 (=> (not res!447790) (not e!388240))))

(declare-datatypes ((array!39500 0))(
  ( (array!39501 (arr!18931 (Array (_ BitVec 32) (_ BitVec 64))) (size!19295 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39500)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60734 (= res!447790 (and (bvslt (size!19295 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19295 a!3626))))))

(assert (=> start!60734 e!388240))

(assert (=> start!60734 true))

(declare-fun array_inv!14705 (array!39500) Bool)

(assert (=> start!60734 (array_inv!14705 a!3626)))

(declare-fun b!681488 () Bool)

(declare-fun res!447786 () Bool)

(assert (=> b!681488 (=> (not res!447786) (not e!388240))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681488 (= res!447786 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19295 a!3626))))))

(declare-fun b!681489 () Bool)

(declare-fun res!447794 () Bool)

(assert (=> b!681489 (=> res!447794 e!388242)))

(declare-fun subseq!153 (List!13025 List!13025) Bool)

(assert (=> b!681489 (= res!447794 (not (subseq!153 acc!681 lt!313283)))))

(declare-fun b!681490 () Bool)

(declare-fun res!447791 () Bool)

(assert (=> b!681490 (=> (not res!447791) (not e!388240))))

(assert (=> b!681490 (= res!447791 (not (contains!3568 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681491 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39500 (_ BitVec 32) List!13025) Bool)

(assert (=> b!681491 (= e!388242 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!313283))))

(declare-datatypes ((Unit!23894 0))(
  ( (Unit!23895) )
))
(declare-fun lt!313280 () Unit!23894)

(declare-fun noDuplicateSubseq!27 (List!13025 List!13025) Unit!23894)

(assert (=> b!681491 (= lt!313280 (noDuplicateSubseq!27 acc!681 lt!313283))))

(declare-fun b!681492 () Bool)

(declare-fun e!388245 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!681492 (= e!388245 (not (contains!3568 acc!681 k0!2843)))))

(declare-fun b!681493 () Bool)

(declare-fun res!447780 () Bool)

(assert (=> b!681493 (=> res!447780 e!388242)))

(assert (=> b!681493 (= res!447780 (contains!3568 lt!313283 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681494 () Bool)

(declare-fun e!388243 () Bool)

(assert (=> b!681494 (= e!388240 (not e!388243))))

(declare-fun res!447788 () Bool)

(assert (=> b!681494 (=> res!447788 e!388243)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681494 (= res!447788 (not (validKeyInArray!0 (select (arr!18931 a!3626) from!3004))))))

(declare-fun lt!313281 () Unit!23894)

(declare-fun e!388241 () Unit!23894)

(assert (=> b!681494 (= lt!313281 e!388241)))

(declare-fun c!77222 () Bool)

(declare-fun arrayContainsKey!0 (array!39500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681494 (= c!77222 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681494 (arrayContainsKey!0 (array!39501 (store (arr!18931 a!3626) i!1382 k0!2843) (size!19295 a!3626)) k0!2843 from!3004)))

(declare-fun b!681495 () Bool)

(declare-fun e!388244 () Bool)

(assert (=> b!681495 (= e!388244 e!388245)))

(declare-fun res!447777 () Bool)

(assert (=> b!681495 (=> (not res!447777) (not e!388245))))

(assert (=> b!681495 (= res!447777 (bvsle from!3004 i!1382))))

(declare-fun b!681496 () Bool)

(declare-fun res!447789 () Bool)

(assert (=> b!681496 (=> (not res!447789) (not e!388240))))

(assert (=> b!681496 (= res!447789 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681497 () Bool)

(declare-fun Unit!23896 () Unit!23894)

(assert (=> b!681497 (= e!388241 Unit!23896)))

(declare-fun b!681498 () Bool)

(assert (=> b!681498 (= e!388243 e!388242)))

(declare-fun res!447792 () Bool)

(assert (=> b!681498 (=> res!447792 e!388242)))

(assert (=> b!681498 (= res!447792 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!317 (List!13025 (_ BitVec 64)) List!13025)

(assert (=> b!681498 (= lt!313283 ($colon$colon!317 acc!681 (select (arr!18931 a!3626) from!3004)))))

(assert (=> b!681498 (subseq!153 acc!681 acc!681)))

(declare-fun lt!313284 () Unit!23894)

(declare-fun lemmaListSubSeqRefl!0 (List!13025) Unit!23894)

(assert (=> b!681498 (= lt!313284 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681499 () Bool)

(declare-fun Unit!23897 () Unit!23894)

(assert (=> b!681499 (= e!388241 Unit!23897)))

(declare-fun lt!313282 () Unit!23894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39500 (_ BitVec 64) (_ BitVec 32)) Unit!23894)

(assert (=> b!681499 (= lt!313282 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!681499 false))

(declare-fun b!681500 () Bool)

(declare-fun res!447784 () Bool)

(assert (=> b!681500 (=> res!447784 e!388242)))

(assert (=> b!681500 (= res!447784 (contains!3568 lt!313283 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681501 () Bool)

(declare-fun res!447776 () Bool)

(assert (=> b!681501 (=> (not res!447776) (not e!388240))))

(assert (=> b!681501 (= res!447776 (validKeyInArray!0 k0!2843))))

(declare-fun b!681502 () Bool)

(declare-fun e!388246 () Bool)

(assert (=> b!681502 (= e!388246 (contains!3568 acc!681 k0!2843))))

(declare-fun b!681503 () Bool)

(declare-fun res!447787 () Bool)

(assert (=> b!681503 (=> (not res!447787) (not e!388240))))

(assert (=> b!681503 (= res!447787 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19295 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681504 () Bool)

(declare-fun res!447779 () Bool)

(assert (=> b!681504 (=> (not res!447779) (not e!388240))))

(assert (=> b!681504 (= res!447779 e!388244)))

(declare-fun res!447785 () Bool)

(assert (=> b!681504 (=> res!447785 e!388244)))

(assert (=> b!681504 (= res!447785 e!388246)))

(declare-fun res!447775 () Bool)

(assert (=> b!681504 (=> (not res!447775) (not e!388246))))

(assert (=> b!681504 (= res!447775 (bvsgt from!3004 i!1382))))

(declare-fun b!681505 () Bool)

(declare-fun res!447782 () Bool)

(assert (=> b!681505 (=> (not res!447782) (not e!388240))))

(assert (=> b!681505 (= res!447782 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681506 () Bool)

(declare-fun res!447781 () Bool)

(assert (=> b!681506 (=> (not res!447781) (not e!388240))))

(assert (=> b!681506 (= res!447781 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13022))))

(assert (= (and start!60734 res!447790) b!681485))

(assert (= (and b!681485 res!447783) b!681490))

(assert (= (and b!681490 res!447791) b!681486))

(assert (= (and b!681486 res!447793) b!681504))

(assert (= (and b!681504 res!447775) b!681502))

(assert (= (and b!681504 (not res!447785)) b!681495))

(assert (= (and b!681495 res!447777) b!681492))

(assert (= (and b!681504 res!447779) b!681506))

(assert (= (and b!681506 res!447781) b!681505))

(assert (= (and b!681505 res!447782) b!681488))

(assert (= (and b!681488 res!447786) b!681501))

(assert (= (and b!681501 res!447776) b!681496))

(assert (= (and b!681496 res!447789) b!681503))

(assert (= (and b!681503 res!447787) b!681494))

(assert (= (and b!681494 c!77222) b!681499))

(assert (= (and b!681494 (not c!77222)) b!681497))

(assert (= (and b!681494 (not res!447788)) b!681498))

(assert (= (and b!681498 (not res!447792)) b!681487))

(assert (= (and b!681487 (not res!447778)) b!681500))

(assert (= (and b!681500 (not res!447784)) b!681493))

(assert (= (and b!681493 (not res!447780)) b!681489))

(assert (= (and b!681489 (not res!447794)) b!681491))

(declare-fun m!646365 () Bool)

(assert (=> b!681487 m!646365))

(declare-fun m!646367 () Bool)

(assert (=> b!681499 m!646367))

(declare-fun m!646369 () Bool)

(assert (=> b!681506 m!646369))

(declare-fun m!646371 () Bool)

(assert (=> b!681493 m!646371))

(declare-fun m!646373 () Bool)

(assert (=> b!681500 m!646373))

(declare-fun m!646375 () Bool)

(assert (=> b!681505 m!646375))

(declare-fun m!646377 () Bool)

(assert (=> b!681501 m!646377))

(declare-fun m!646379 () Bool)

(assert (=> b!681492 m!646379))

(declare-fun m!646381 () Bool)

(assert (=> b!681494 m!646381))

(declare-fun m!646383 () Bool)

(assert (=> b!681494 m!646383))

(declare-fun m!646385 () Bool)

(assert (=> b!681494 m!646385))

(assert (=> b!681494 m!646381))

(declare-fun m!646387 () Bool)

(assert (=> b!681494 m!646387))

(declare-fun m!646389 () Bool)

(assert (=> b!681494 m!646389))

(declare-fun m!646391 () Bool)

(assert (=> b!681496 m!646391))

(declare-fun m!646393 () Bool)

(assert (=> start!60734 m!646393))

(declare-fun m!646395 () Bool)

(assert (=> b!681491 m!646395))

(declare-fun m!646397 () Bool)

(assert (=> b!681491 m!646397))

(assert (=> b!681498 m!646381))

(assert (=> b!681498 m!646381))

(declare-fun m!646399 () Bool)

(assert (=> b!681498 m!646399))

(declare-fun m!646401 () Bool)

(assert (=> b!681498 m!646401))

(declare-fun m!646403 () Bool)

(assert (=> b!681498 m!646403))

(declare-fun m!646405 () Bool)

(assert (=> b!681485 m!646405))

(assert (=> b!681502 m!646379))

(declare-fun m!646407 () Bool)

(assert (=> b!681489 m!646407))

(declare-fun m!646409 () Bool)

(assert (=> b!681490 m!646409))

(declare-fun m!646411 () Bool)

(assert (=> b!681486 m!646411))

(check-sat (not b!681487) (not b!681494) (not b!681493) (not b!681491) (not start!60734) (not b!681506) (not b!681492) (not b!681496) (not b!681501) (not b!681499) (not b!681485) (not b!681486) (not b!681490) (not b!681505) (not b!681489) (not b!681502) (not b!681500) (not b!681498))
(check-sat)
(get-model)

(declare-fun d!93793 () Bool)

(declare-fun res!447859 () Bool)

(declare-fun e!388275 () Bool)

(assert (=> d!93793 (=> res!447859 e!388275)))

(get-info :version)

(assert (=> d!93793 (= res!447859 ((_ is Nil!13022) acc!681))))

(assert (=> d!93793 (= (noDuplicate!815 acc!681) e!388275)))

(declare-fun b!681577 () Bool)

(declare-fun e!388276 () Bool)

(assert (=> b!681577 (= e!388275 e!388276)))

(declare-fun res!447860 () Bool)

(assert (=> b!681577 (=> (not res!447860) (not e!388276))))

(assert (=> b!681577 (= res!447860 (not (contains!3568 (t!19270 acc!681) (h!14066 acc!681))))))

(declare-fun b!681578 () Bool)

(assert (=> b!681578 (= e!388276 (noDuplicate!815 (t!19270 acc!681)))))

(assert (= (and d!93793 (not res!447859)) b!681577))

(assert (= (and b!681577 res!447860) b!681578))

(declare-fun m!646461 () Bool)

(assert (=> b!681577 m!646461))

(declare-fun m!646463 () Bool)

(assert (=> b!681578 m!646463))

(assert (=> b!681485 d!93793))

(declare-fun b!681589 () Bool)

(declare-fun e!388286 () Bool)

(declare-fun e!388288 () Bool)

(assert (=> b!681589 (= e!388286 e!388288)))

(declare-fun c!77228 () Bool)

(assert (=> b!681589 (= c!77228 (validKeyInArray!0 (select (arr!18931 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33971 () Bool)

(declare-fun call!33974 () Bool)

(assert (=> bm!33971 (= call!33974 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77228 (Cons!13021 (select (arr!18931 a!3626) #b00000000000000000000000000000000) Nil!13022) Nil!13022)))))

(declare-fun b!681590 () Bool)

(declare-fun e!388287 () Bool)

(assert (=> b!681590 (= e!388287 e!388286)))

(declare-fun res!447867 () Bool)

(assert (=> b!681590 (=> (not res!447867) (not e!388286))))

(declare-fun e!388285 () Bool)

(assert (=> b!681590 (= res!447867 (not e!388285))))

(declare-fun res!447868 () Bool)

(assert (=> b!681590 (=> (not res!447868) (not e!388285))))

(assert (=> b!681590 (= res!447868 (validKeyInArray!0 (select (arr!18931 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93795 () Bool)

(declare-fun res!447869 () Bool)

(assert (=> d!93795 (=> res!447869 e!388287)))

(assert (=> d!93795 (= res!447869 (bvsge #b00000000000000000000000000000000 (size!19295 a!3626)))))

(assert (=> d!93795 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13022) e!388287)))

(declare-fun b!681591 () Bool)

(assert (=> b!681591 (= e!388285 (contains!3568 Nil!13022 (select (arr!18931 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!681592 () Bool)

(assert (=> b!681592 (= e!388288 call!33974)))

(declare-fun b!681593 () Bool)

(assert (=> b!681593 (= e!388288 call!33974)))

(assert (= (and d!93795 (not res!447869)) b!681590))

(assert (= (and b!681590 res!447868) b!681591))

(assert (= (and b!681590 res!447867) b!681589))

(assert (= (and b!681589 c!77228) b!681593))

(assert (= (and b!681589 (not c!77228)) b!681592))

(assert (= (or b!681593 b!681592) bm!33971))

(declare-fun m!646465 () Bool)

(assert (=> b!681589 m!646465))

(assert (=> b!681589 m!646465))

(declare-fun m!646467 () Bool)

(assert (=> b!681589 m!646467))

(assert (=> bm!33971 m!646465))

(declare-fun m!646469 () Bool)

(assert (=> bm!33971 m!646469))

(assert (=> b!681590 m!646465))

(assert (=> b!681590 m!646465))

(assert (=> b!681590 m!646467))

(assert (=> b!681591 m!646465))

(assert (=> b!681591 m!646465))

(declare-fun m!646471 () Bool)

(assert (=> b!681591 m!646471))

(assert (=> b!681506 d!93795))

(declare-fun d!93803 () Bool)

(declare-fun res!447878 () Bool)

(declare-fun e!388297 () Bool)

(assert (=> d!93803 (=> res!447878 e!388297)))

(assert (=> d!93803 (= res!447878 (= (select (arr!18931 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93803 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!388297)))

(declare-fun b!681602 () Bool)

(declare-fun e!388298 () Bool)

(assert (=> b!681602 (= e!388297 e!388298)))

(declare-fun res!447879 () Bool)

(assert (=> b!681602 (=> (not res!447879) (not e!388298))))

(assert (=> b!681602 (= res!447879 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19295 a!3626)))))

(declare-fun b!681603 () Bool)

(assert (=> b!681603 (= e!388298 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93803 (not res!447878)) b!681602))

(assert (= (and b!681602 res!447879) b!681603))

(assert (=> d!93803 m!646465))

(declare-fun m!646473 () Bool)

(assert (=> b!681603 m!646473))

(assert (=> b!681496 d!93803))

(declare-fun d!93805 () Bool)

(declare-fun lt!313302 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!277 (List!13025) (InoxSet (_ BitVec 64)))

(assert (=> d!93805 (= lt!313302 (select (content!277 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388314 () Bool)

(assert (=> d!93805 (= lt!313302 e!388314)))

(declare-fun res!447892 () Bool)

(assert (=> d!93805 (=> (not res!447892) (not e!388314))))

(assert (=> d!93805 (= res!447892 ((_ is Cons!13021) acc!681))))

(assert (=> d!93805 (= (contains!3568 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313302)))

(declare-fun b!681620 () Bool)

(declare-fun e!388313 () Bool)

(assert (=> b!681620 (= e!388314 e!388313)))

(declare-fun res!447893 () Bool)

(assert (=> b!681620 (=> res!447893 e!388313)))

(assert (=> b!681620 (= res!447893 (= (h!14066 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681621 () Bool)

(assert (=> b!681621 (= e!388313 (contains!3568 (t!19270 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93805 res!447892) b!681620))

(assert (= (and b!681620 (not res!447893)) b!681621))

(declare-fun m!646479 () Bool)

(assert (=> d!93805 m!646479))

(declare-fun m!646481 () Bool)

(assert (=> d!93805 m!646481))

(declare-fun m!646483 () Bool)

(assert (=> b!681621 m!646483))

(assert (=> b!681486 d!93805))

(declare-fun d!93811 () Bool)

(declare-fun res!447894 () Bool)

(declare-fun e!388315 () Bool)

(assert (=> d!93811 (=> res!447894 e!388315)))

(assert (=> d!93811 (= res!447894 ((_ is Nil!13022) lt!313283))))

(assert (=> d!93811 (= (noDuplicate!815 lt!313283) e!388315)))

(declare-fun b!681622 () Bool)

(declare-fun e!388316 () Bool)

(assert (=> b!681622 (= e!388315 e!388316)))

(declare-fun res!447895 () Bool)

(assert (=> b!681622 (=> (not res!447895) (not e!388316))))

(assert (=> b!681622 (= res!447895 (not (contains!3568 (t!19270 lt!313283) (h!14066 lt!313283))))))

(declare-fun b!681623 () Bool)

(assert (=> b!681623 (= e!388316 (noDuplicate!815 (t!19270 lt!313283)))))

(assert (= (and d!93811 (not res!447894)) b!681622))

(assert (= (and b!681622 res!447895) b!681623))

(declare-fun m!646485 () Bool)

(assert (=> b!681622 m!646485))

(declare-fun m!646487 () Bool)

(assert (=> b!681623 m!646487))

(assert (=> b!681487 d!93811))

(declare-fun d!93813 () Bool)

(assert (=> d!93813 (= ($colon$colon!317 acc!681 (select (arr!18931 a!3626) from!3004)) (Cons!13021 (select (arr!18931 a!3626) from!3004) acc!681))))

(assert (=> b!681498 d!93813))

(declare-fun d!93815 () Bool)

(declare-fun res!447919 () Bool)

(declare-fun e!388341 () Bool)

(assert (=> d!93815 (=> res!447919 e!388341)))

(assert (=> d!93815 (= res!447919 ((_ is Nil!13022) acc!681))))

(assert (=> d!93815 (= (subseq!153 acc!681 acc!681) e!388341)))

(declare-fun b!681652 () Bool)

(declare-fun e!388343 () Bool)

(assert (=> b!681652 (= e!388343 (subseq!153 acc!681 (t!19270 acc!681)))))

(declare-fun b!681649 () Bool)

(declare-fun e!388342 () Bool)

(assert (=> b!681649 (= e!388341 e!388342)))

(declare-fun res!447922 () Bool)

(assert (=> b!681649 (=> (not res!447922) (not e!388342))))

(assert (=> b!681649 (= res!447922 ((_ is Cons!13021) acc!681))))

(declare-fun b!681651 () Bool)

(declare-fun e!388344 () Bool)

(assert (=> b!681651 (= e!388344 (subseq!153 (t!19270 acc!681) (t!19270 acc!681)))))

(declare-fun b!681650 () Bool)

(assert (=> b!681650 (= e!388342 e!388343)))

(declare-fun res!447920 () Bool)

(assert (=> b!681650 (=> res!447920 e!388343)))

(assert (=> b!681650 (= res!447920 e!388344)))

(declare-fun res!447921 () Bool)

(assert (=> b!681650 (=> (not res!447921) (not e!388344))))

(assert (=> b!681650 (= res!447921 (= (h!14066 acc!681) (h!14066 acc!681)))))

(assert (= (and d!93815 (not res!447919)) b!681649))

(assert (= (and b!681649 res!447922) b!681650))

(assert (= (and b!681650 res!447921) b!681651))

(assert (= (and b!681650 (not res!447920)) b!681652))

(declare-fun m!646497 () Bool)

(assert (=> b!681652 m!646497))

(declare-fun m!646499 () Bool)

(assert (=> b!681651 m!646499))

(assert (=> b!681498 d!93815))

(declare-fun d!93821 () Bool)

(assert (=> d!93821 (subseq!153 acc!681 acc!681)))

(declare-fun lt!313307 () Unit!23894)

(declare-fun choose!36 (List!13025) Unit!23894)

(assert (=> d!93821 (= lt!313307 (choose!36 acc!681))))

(assert (=> d!93821 (= (lemmaListSubSeqRefl!0 acc!681) lt!313307)))

(declare-fun bs!20003 () Bool)

(assert (= bs!20003 d!93821))

(assert (=> bs!20003 m!646401))

(declare-fun m!646503 () Bool)

(assert (=> bs!20003 m!646503))

(assert (=> b!681498 d!93821))

(declare-fun d!93825 () Bool)

(assert (=> d!93825 (= (array_inv!14705 a!3626) (bvsge (size!19295 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60734 d!93825))

(declare-fun d!93829 () Bool)

(assert (=> d!93829 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313314 () Unit!23894)

(declare-fun choose!13 (array!39500 (_ BitVec 64) (_ BitVec 32)) Unit!23894)

(assert (=> d!93829 (= lt!313314 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!93829 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93829 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313314)))

(declare-fun bs!20005 () Bool)

(assert (= bs!20005 d!93829))

(assert (=> bs!20005 m!646391))

(declare-fun m!646515 () Bool)

(assert (=> bs!20005 m!646515))

(assert (=> b!681499 d!93829))

(declare-fun d!93835 () Bool)

(declare-fun res!447933 () Bool)

(declare-fun e!388355 () Bool)

(assert (=> d!93835 (=> res!447933 e!388355)))

(assert (=> d!93835 (= res!447933 ((_ is Nil!13022) acc!681))))

(assert (=> d!93835 (= (subseq!153 acc!681 lt!313283) e!388355)))

(declare-fun b!681666 () Bool)

(declare-fun e!388357 () Bool)

(assert (=> b!681666 (= e!388357 (subseq!153 acc!681 (t!19270 lt!313283)))))

(declare-fun b!681663 () Bool)

(declare-fun e!388356 () Bool)

(assert (=> b!681663 (= e!388355 e!388356)))

(declare-fun res!447936 () Bool)

(assert (=> b!681663 (=> (not res!447936) (not e!388356))))

(assert (=> b!681663 (= res!447936 ((_ is Cons!13021) lt!313283))))

(declare-fun b!681665 () Bool)

(declare-fun e!388358 () Bool)

(assert (=> b!681665 (= e!388358 (subseq!153 (t!19270 acc!681) (t!19270 lt!313283)))))

(declare-fun b!681664 () Bool)

(assert (=> b!681664 (= e!388356 e!388357)))

(declare-fun res!447934 () Bool)

(assert (=> b!681664 (=> res!447934 e!388357)))

(assert (=> b!681664 (= res!447934 e!388358)))

(declare-fun res!447935 () Bool)

(assert (=> b!681664 (=> (not res!447935) (not e!388358))))

(assert (=> b!681664 (= res!447935 (= (h!14066 acc!681) (h!14066 lt!313283)))))

(assert (= (and d!93835 (not res!447933)) b!681663))

(assert (= (and b!681663 res!447936) b!681664))

(assert (= (and b!681664 res!447935) b!681665))

(assert (= (and b!681664 (not res!447934)) b!681666))

(declare-fun m!646517 () Bool)

(assert (=> b!681666 m!646517))

(declare-fun m!646519 () Bool)

(assert (=> b!681665 m!646519))

(assert (=> b!681489 d!93835))

(declare-fun d!93837 () Bool)

(declare-fun lt!313315 () Bool)

(assert (=> d!93837 (= lt!313315 (select (content!277 lt!313283) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388360 () Bool)

(assert (=> d!93837 (= lt!313315 e!388360)))

(declare-fun res!447937 () Bool)

(assert (=> d!93837 (=> (not res!447937) (not e!388360))))

(assert (=> d!93837 (= res!447937 ((_ is Cons!13021) lt!313283))))

(assert (=> d!93837 (= (contains!3568 lt!313283 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313315)))

(declare-fun b!681667 () Bool)

(declare-fun e!388359 () Bool)

(assert (=> b!681667 (= e!388360 e!388359)))

(declare-fun res!447938 () Bool)

(assert (=> b!681667 (=> res!447938 e!388359)))

(assert (=> b!681667 (= res!447938 (= (h!14066 lt!313283) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681668 () Bool)

(assert (=> b!681668 (= e!388359 (contains!3568 (t!19270 lt!313283) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93837 res!447937) b!681667))

(assert (= (and b!681667 (not res!447938)) b!681668))

(declare-fun m!646521 () Bool)

(assert (=> d!93837 m!646521))

(declare-fun m!646523 () Bool)

(assert (=> d!93837 m!646523))

(declare-fun m!646525 () Bool)

(assert (=> b!681668 m!646525))

(assert (=> b!681500 d!93837))

(declare-fun d!93841 () Bool)

(assert (=> d!93841 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681501 d!93841))

(declare-fun d!93843 () Bool)

(declare-fun lt!313316 () Bool)

(assert (=> d!93843 (= lt!313316 (select (content!277 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388366 () Bool)

(assert (=> d!93843 (= lt!313316 e!388366)))

(declare-fun res!447943 () Bool)

(assert (=> d!93843 (=> (not res!447943) (not e!388366))))

(assert (=> d!93843 (= res!447943 ((_ is Cons!13021) acc!681))))

(assert (=> d!93843 (= (contains!3568 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313316)))

(declare-fun b!681673 () Bool)

(declare-fun e!388365 () Bool)

(assert (=> b!681673 (= e!388366 e!388365)))

(declare-fun res!447944 () Bool)

(assert (=> b!681673 (=> res!447944 e!388365)))

(assert (=> b!681673 (= res!447944 (= (h!14066 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681674 () Bool)

(assert (=> b!681674 (= e!388365 (contains!3568 (t!19270 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93843 res!447943) b!681673))

(assert (= (and b!681673 (not res!447944)) b!681674))

(assert (=> d!93843 m!646479))

(declare-fun m!646527 () Bool)

(assert (=> d!93843 m!646527))

(declare-fun m!646529 () Bool)

(assert (=> b!681674 m!646529))

(assert (=> b!681490 d!93843))

(declare-fun b!681675 () Bool)

(declare-fun e!388368 () Bool)

(declare-fun e!388370 () Bool)

(assert (=> b!681675 (= e!388368 e!388370)))

(declare-fun c!77232 () Bool)

(assert (=> b!681675 (= c!77232 (validKeyInArray!0 (select (arr!18931 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!33975 () Bool)

(declare-fun call!33978 () Bool)

(assert (=> bm!33975 (= call!33978 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77232 (Cons!13021 (select (arr!18931 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!313283) lt!313283)))))

(declare-fun b!681676 () Bool)

(declare-fun e!388369 () Bool)

(assert (=> b!681676 (= e!388369 e!388368)))

(declare-fun res!447945 () Bool)

(assert (=> b!681676 (=> (not res!447945) (not e!388368))))

(declare-fun e!388367 () Bool)

(assert (=> b!681676 (= res!447945 (not e!388367))))

(declare-fun res!447946 () Bool)

(assert (=> b!681676 (=> (not res!447946) (not e!388367))))

(assert (=> b!681676 (= res!447946 (validKeyInArray!0 (select (arr!18931 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!93845 () Bool)

(declare-fun res!447947 () Bool)

(assert (=> d!93845 (=> res!447947 e!388369)))

(assert (=> d!93845 (= res!447947 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19295 a!3626)))))

(assert (=> d!93845 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!313283) e!388369)))

(declare-fun b!681677 () Bool)

(assert (=> b!681677 (= e!388367 (contains!3568 lt!313283 (select (arr!18931 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!681678 () Bool)

(assert (=> b!681678 (= e!388370 call!33978)))

(declare-fun b!681679 () Bool)

(assert (=> b!681679 (= e!388370 call!33978)))

(assert (= (and d!93845 (not res!447947)) b!681676))

(assert (= (and b!681676 res!447946) b!681677))

(assert (= (and b!681676 res!447945) b!681675))

(assert (= (and b!681675 c!77232) b!681679))

(assert (= (and b!681675 (not c!77232)) b!681678))

(assert (= (or b!681679 b!681678) bm!33975))

(declare-fun m!646531 () Bool)

(assert (=> b!681675 m!646531))

(assert (=> b!681675 m!646531))

(declare-fun m!646533 () Bool)

(assert (=> b!681675 m!646533))

(assert (=> bm!33975 m!646531))

(declare-fun m!646535 () Bool)

(assert (=> bm!33975 m!646535))

(assert (=> b!681676 m!646531))

(assert (=> b!681676 m!646531))

(assert (=> b!681676 m!646533))

(assert (=> b!681677 m!646531))

(assert (=> b!681677 m!646531))

(declare-fun m!646537 () Bool)

(assert (=> b!681677 m!646537))

(assert (=> b!681491 d!93845))

(declare-fun d!93847 () Bool)

(assert (=> d!93847 (noDuplicate!815 acc!681)))

(declare-fun lt!313321 () Unit!23894)

(declare-fun choose!1393 (List!13025 List!13025) Unit!23894)

(assert (=> d!93847 (= lt!313321 (choose!1393 acc!681 lt!313283))))

(declare-fun e!388387 () Bool)

(assert (=> d!93847 e!388387))

(declare-fun res!447964 () Bool)

(assert (=> d!93847 (=> (not res!447964) (not e!388387))))

(assert (=> d!93847 (= res!447964 (subseq!153 acc!681 lt!313283))))

(assert (=> d!93847 (= (noDuplicateSubseq!27 acc!681 lt!313283) lt!313321)))

(declare-fun b!681696 () Bool)

(assert (=> b!681696 (= e!388387 (noDuplicate!815 lt!313283))))

(assert (= (and d!93847 res!447964) b!681696))

(assert (=> d!93847 m!646405))

(declare-fun m!646559 () Bool)

(assert (=> d!93847 m!646559))

(assert (=> d!93847 m!646407))

(assert (=> b!681696 m!646365))

(assert (=> b!681491 d!93847))

(declare-fun d!93859 () Bool)

(declare-fun lt!313322 () Bool)

(assert (=> d!93859 (= lt!313322 (select (content!277 acc!681) k0!2843))))

(declare-fun e!388389 () Bool)

(assert (=> d!93859 (= lt!313322 e!388389)))

(declare-fun res!447965 () Bool)

(assert (=> d!93859 (=> (not res!447965) (not e!388389))))

(assert (=> d!93859 (= res!447965 ((_ is Cons!13021) acc!681))))

(assert (=> d!93859 (= (contains!3568 acc!681 k0!2843) lt!313322)))

(declare-fun b!681697 () Bool)

(declare-fun e!388388 () Bool)

(assert (=> b!681697 (= e!388389 e!388388)))

(declare-fun res!447966 () Bool)

(assert (=> b!681697 (=> res!447966 e!388388)))

(assert (=> b!681697 (= res!447966 (= (h!14066 acc!681) k0!2843))))

(declare-fun b!681698 () Bool)

(assert (=> b!681698 (= e!388388 (contains!3568 (t!19270 acc!681) k0!2843))))

(assert (= (and d!93859 res!447965) b!681697))

(assert (= (and b!681697 (not res!447966)) b!681698))

(assert (=> d!93859 m!646479))

(declare-fun m!646561 () Bool)

(assert (=> d!93859 m!646561))

(declare-fun m!646563 () Bool)

(assert (=> b!681698 m!646563))

(assert (=> b!681502 d!93859))

(assert (=> b!681492 d!93859))

(declare-fun d!93861 () Bool)

(declare-fun lt!313323 () Bool)

(assert (=> d!93861 (= lt!313323 (select (content!277 lt!313283) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388395 () Bool)

(assert (=> d!93861 (= lt!313323 e!388395)))

(declare-fun res!447969 () Bool)

(assert (=> d!93861 (=> (not res!447969) (not e!388395))))

(assert (=> d!93861 (= res!447969 ((_ is Cons!13021) lt!313283))))

(assert (=> d!93861 (= (contains!3568 lt!313283 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313323)))

(declare-fun b!681701 () Bool)

(declare-fun e!388394 () Bool)

(assert (=> b!681701 (= e!388395 e!388394)))

(declare-fun res!447971 () Bool)

(assert (=> b!681701 (=> res!447971 e!388394)))

(assert (=> b!681701 (= res!447971 (= (h!14066 lt!313283) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681702 () Bool)

(assert (=> b!681702 (= e!388394 (contains!3568 (t!19270 lt!313283) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93861 res!447969) b!681701))

(assert (= (and b!681701 (not res!447971)) b!681702))

(assert (=> d!93861 m!646521))

(declare-fun m!646565 () Bool)

(assert (=> d!93861 m!646565))

(declare-fun m!646567 () Bool)

(assert (=> b!681702 m!646567))

(assert (=> b!681493 d!93861))

(declare-fun b!681705 () Bool)

(declare-fun e!388397 () Bool)

(declare-fun e!388399 () Bool)

(assert (=> b!681705 (= e!388397 e!388399)))

(declare-fun c!77233 () Bool)

(assert (=> b!681705 (= c!77233 (validKeyInArray!0 (select (arr!18931 a!3626) from!3004)))))

(declare-fun call!33979 () Bool)

(declare-fun bm!33976 () Bool)

(assert (=> bm!33976 (= call!33979 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77233 (Cons!13021 (select (arr!18931 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!681706 () Bool)

(declare-fun e!388398 () Bool)

(assert (=> b!681706 (= e!388398 e!388397)))

(declare-fun res!447973 () Bool)

(assert (=> b!681706 (=> (not res!447973) (not e!388397))))

(declare-fun e!388396 () Bool)

(assert (=> b!681706 (= res!447973 (not e!388396))))

(declare-fun res!447974 () Bool)

(assert (=> b!681706 (=> (not res!447974) (not e!388396))))

(assert (=> b!681706 (= res!447974 (validKeyInArray!0 (select (arr!18931 a!3626) from!3004)))))

(declare-fun d!93863 () Bool)

(declare-fun res!447975 () Bool)

(assert (=> d!93863 (=> res!447975 e!388398)))

(assert (=> d!93863 (= res!447975 (bvsge from!3004 (size!19295 a!3626)))))

(assert (=> d!93863 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388398)))

(declare-fun b!681707 () Bool)

(assert (=> b!681707 (= e!388396 (contains!3568 acc!681 (select (arr!18931 a!3626) from!3004)))))

(declare-fun b!681708 () Bool)

(assert (=> b!681708 (= e!388399 call!33979)))

(declare-fun b!681709 () Bool)

(assert (=> b!681709 (= e!388399 call!33979)))

(assert (= (and d!93863 (not res!447975)) b!681706))

(assert (= (and b!681706 res!447974) b!681707))

(assert (= (and b!681706 res!447973) b!681705))

(assert (= (and b!681705 c!77233) b!681709))

(assert (= (and b!681705 (not c!77233)) b!681708))

(assert (= (or b!681709 b!681708) bm!33976))

(assert (=> b!681705 m!646381))

(assert (=> b!681705 m!646381))

(assert (=> b!681705 m!646387))

(assert (=> bm!33976 m!646381))

(declare-fun m!646569 () Bool)

(assert (=> bm!33976 m!646569))

(assert (=> b!681706 m!646381))

(assert (=> b!681706 m!646381))

(assert (=> b!681706 m!646387))

(assert (=> b!681707 m!646381))

(assert (=> b!681707 m!646381))

(declare-fun m!646571 () Bool)

(assert (=> b!681707 m!646571))

(assert (=> b!681505 d!93863))

(declare-fun d!93865 () Bool)

(assert (=> d!93865 (= (validKeyInArray!0 (select (arr!18931 a!3626) from!3004)) (and (not (= (select (arr!18931 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18931 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681494 d!93865))

(declare-fun d!93867 () Bool)

(declare-fun res!447976 () Bool)

(declare-fun e!388400 () Bool)

(assert (=> d!93867 (=> res!447976 e!388400)))

(assert (=> d!93867 (= res!447976 (= (select (arr!18931 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93867 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388400)))

(declare-fun b!681710 () Bool)

(declare-fun e!388401 () Bool)

(assert (=> b!681710 (= e!388400 e!388401)))

(declare-fun res!447977 () Bool)

(assert (=> b!681710 (=> (not res!447977) (not e!388401))))

(assert (=> b!681710 (= res!447977 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19295 a!3626)))))

(declare-fun b!681711 () Bool)

(assert (=> b!681711 (= e!388401 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93867 (not res!447976)) b!681710))

(assert (= (and b!681710 res!447977) b!681711))

(assert (=> d!93867 m!646531))

(declare-fun m!646573 () Bool)

(assert (=> b!681711 m!646573))

(assert (=> b!681494 d!93867))

(declare-fun d!93869 () Bool)

(declare-fun res!447982 () Bool)

(declare-fun e!388406 () Bool)

(assert (=> d!93869 (=> res!447982 e!388406)))

(assert (=> d!93869 (= res!447982 (= (select (arr!18931 (array!39501 (store (arr!18931 a!3626) i!1382 k0!2843) (size!19295 a!3626))) from!3004) k0!2843))))

(assert (=> d!93869 (= (arrayContainsKey!0 (array!39501 (store (arr!18931 a!3626) i!1382 k0!2843) (size!19295 a!3626)) k0!2843 from!3004) e!388406)))

(declare-fun b!681716 () Bool)

(declare-fun e!388409 () Bool)

(assert (=> b!681716 (= e!388406 e!388409)))

(declare-fun res!447983 () Bool)

(assert (=> b!681716 (=> (not res!447983) (not e!388409))))

(assert (=> b!681716 (= res!447983 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19295 (array!39501 (store (arr!18931 a!3626) i!1382 k0!2843) (size!19295 a!3626)))))))

(declare-fun b!681717 () Bool)

(assert (=> b!681717 (= e!388409 (arrayContainsKey!0 (array!39501 (store (arr!18931 a!3626) i!1382 k0!2843) (size!19295 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93869 (not res!447982)) b!681716))

(assert (= (and b!681716 res!447983) b!681717))

(declare-fun m!646575 () Bool)

(assert (=> d!93869 m!646575))

(declare-fun m!646579 () Bool)

(assert (=> b!681717 m!646579))

(assert (=> b!681494 d!93869))

(check-sat (not b!681702) (not b!681668) (not b!681666) (not d!93821) (not d!93829) (not b!681717) (not b!681622) (not b!681623) (not b!681674) (not b!681590) (not b!681651) (not b!681652) (not b!681675) (not b!681621) (not d!93859) (not b!681577) (not bm!33975) (not d!93847) (not b!681603) (not b!681711) (not b!681591) (not bm!33971) (not b!681676) (not b!681696) (not b!681589) (not b!681706) (not d!93861) (not d!93805) (not b!681665) (not b!681578) (not b!681677) (not b!681705) (not bm!33976) (not d!93837) (not d!93843) (not b!681698) (not b!681707))
(check-sat)
