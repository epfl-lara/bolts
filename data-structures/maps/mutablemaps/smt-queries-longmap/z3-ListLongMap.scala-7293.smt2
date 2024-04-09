; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93218 () Bool)

(assert start!93218)

(declare-fun b!1056705 () Bool)

(declare-fun res!705558 () Bool)

(declare-fun e!600853 () Bool)

(assert (=> b!1056705 (=> (not res!705558) (not e!600853))))

(declare-datatypes ((array!66637 0))(
  ( (array!66638 (arr!32039 (Array (_ BitVec 32) (_ BitVec 64))) (size!32576 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66637)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056705 (= res!705558 (= (select (arr!32039 a!3488) i!1381) k0!2747))))

(declare-fun b!1056706 () Bool)

(declare-fun e!600854 () Bool)

(declare-fun lt!466177 () (_ BitVec 32))

(assert (=> b!1056706 (= e!600854 (bvsge (bvadd #b00000000000000000000000000000001 lt!466177) #b00000000000000000000000000000000))))

(declare-datatypes ((List!22482 0))(
  ( (Nil!22479) (Cons!22478 (h!23687 (_ BitVec 64)) (t!31796 List!22482)) )
))
(declare-fun arrayNoDuplicates!0 (array!66637 (_ BitVec 32) List!22482) Bool)

(assert (=> b!1056706 (arrayNoDuplicates!0 a!3488 lt!466177 Nil!22479)))

(declare-datatypes ((Unit!34609 0))(
  ( (Unit!34610) )
))
(declare-fun lt!466175 () Unit!34609)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66637 (_ BitVec 32) (_ BitVec 32)) Unit!34609)

(assert (=> b!1056706 (= lt!466175 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466177))))

(declare-fun b!1056707 () Bool)

(declare-fun res!705564 () Bool)

(assert (=> b!1056707 (=> (not res!705564) (not e!600853))))

(assert (=> b!1056707 (= res!705564 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22479))))

(declare-fun b!1056708 () Bool)

(declare-fun e!600855 () Bool)

(assert (=> b!1056708 (= e!600855 (not e!600854))))

(declare-fun res!705562 () Bool)

(assert (=> b!1056708 (=> res!705562 e!600854)))

(assert (=> b!1056708 (= res!705562 (or (bvsgt lt!466177 i!1381) (bvsle i!1381 lt!466177)))))

(declare-fun e!600856 () Bool)

(assert (=> b!1056708 e!600856))

(declare-fun res!705563 () Bool)

(assert (=> b!1056708 (=> (not res!705563) (not e!600856))))

(assert (=> b!1056708 (= res!705563 (= (select (store (arr!32039 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466177) k0!2747))))

(declare-fun res!705556 () Bool)

(assert (=> start!93218 (=> (not res!705556) (not e!600853))))

(assert (=> start!93218 (= res!705556 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32576 a!3488)) (bvslt (size!32576 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93218 e!600853))

(assert (=> start!93218 true))

(declare-fun array_inv!24661 (array!66637) Bool)

(assert (=> start!93218 (array_inv!24661 a!3488)))

(declare-fun b!1056709 () Bool)

(declare-fun e!600857 () Bool)

(assert (=> b!1056709 (= e!600856 e!600857)))

(declare-fun res!705559 () Bool)

(assert (=> b!1056709 (=> res!705559 e!600857)))

(assert (=> b!1056709 (= res!705559 (or (bvsgt lt!466177 i!1381) (bvsle i!1381 lt!466177)))))

(declare-fun b!1056710 () Bool)

(declare-fun res!705560 () Bool)

(assert (=> b!1056710 (=> (not res!705560) (not e!600853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056710 (= res!705560 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056711 () Bool)

(declare-fun e!600851 () Bool)

(assert (=> b!1056711 (= e!600853 e!600851)))

(declare-fun res!705557 () Bool)

(assert (=> b!1056711 (=> (not res!705557) (not e!600851))))

(declare-fun lt!466176 () array!66637)

(declare-fun arrayContainsKey!0 (array!66637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056711 (= res!705557 (arrayContainsKey!0 lt!466176 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056711 (= lt!466176 (array!66638 (store (arr!32039 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32576 a!3488)))))

(declare-fun b!1056712 () Bool)

(assert (=> b!1056712 (= e!600857 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056713 () Bool)

(assert (=> b!1056713 (= e!600851 e!600855)))

(declare-fun res!705561 () Bool)

(assert (=> b!1056713 (=> (not res!705561) (not e!600855))))

(assert (=> b!1056713 (= res!705561 (not (= lt!466177 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66637 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056713 (= lt!466177 (arrayScanForKey!0 lt!466176 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93218 res!705556) b!1056707))

(assert (= (and b!1056707 res!705564) b!1056710))

(assert (= (and b!1056710 res!705560) b!1056705))

(assert (= (and b!1056705 res!705558) b!1056711))

(assert (= (and b!1056711 res!705557) b!1056713))

(assert (= (and b!1056713 res!705561) b!1056708))

(assert (= (and b!1056708 res!705563) b!1056709))

(assert (= (and b!1056709 (not res!705559)) b!1056712))

(assert (= (and b!1056708 (not res!705562)) b!1056706))

(declare-fun m!976627 () Bool)

(assert (=> b!1056707 m!976627))

(declare-fun m!976629 () Bool)

(assert (=> b!1056708 m!976629))

(declare-fun m!976631 () Bool)

(assert (=> b!1056708 m!976631))

(declare-fun m!976633 () Bool)

(assert (=> b!1056706 m!976633))

(declare-fun m!976635 () Bool)

(assert (=> b!1056706 m!976635))

(declare-fun m!976637 () Bool)

(assert (=> start!93218 m!976637))

(declare-fun m!976639 () Bool)

(assert (=> b!1056713 m!976639))

(declare-fun m!976641 () Bool)

(assert (=> b!1056711 m!976641))

(assert (=> b!1056711 m!976629))

(declare-fun m!976643 () Bool)

(assert (=> b!1056712 m!976643))

(declare-fun m!976645 () Bool)

(assert (=> b!1056705 m!976645))

(declare-fun m!976647 () Bool)

(assert (=> b!1056710 m!976647))

(check-sat (not b!1056711) (not b!1056713) (not b!1056707) (not b!1056706) (not b!1056712) (not start!93218) (not b!1056710))
(check-sat)
(get-model)

(declare-fun d!128281 () Bool)

(assert (=> d!128281 (= (array_inv!24661 a!3488) (bvsge (size!32576 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93218 d!128281))

(declare-fun d!128283 () Bool)

(assert (=> d!128283 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056710 d!128283))

(declare-fun d!128285 () Bool)

(declare-fun res!705596 () Bool)

(declare-fun e!600883 () Bool)

(assert (=> d!128285 (=> res!705596 e!600883)))

(assert (=> d!128285 (= res!705596 (= (select (arr!32039 lt!466176) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128285 (= (arrayContainsKey!0 lt!466176 k0!2747 #b00000000000000000000000000000000) e!600883)))

(declare-fun b!1056745 () Bool)

(declare-fun e!600884 () Bool)

(assert (=> b!1056745 (= e!600883 e!600884)))

(declare-fun res!705597 () Bool)

(assert (=> b!1056745 (=> (not res!705597) (not e!600884))))

(assert (=> b!1056745 (= res!705597 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32576 lt!466176)))))

(declare-fun b!1056746 () Bool)

(assert (=> b!1056746 (= e!600884 (arrayContainsKey!0 lt!466176 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128285 (not res!705596)) b!1056745))

(assert (= (and b!1056745 res!705597) b!1056746))

(declare-fun m!976671 () Bool)

(assert (=> d!128285 m!976671))

(declare-fun m!976673 () Bool)

(assert (=> b!1056746 m!976673))

(assert (=> b!1056711 d!128285))

(declare-fun c!107039 () Bool)

(declare-fun bm!44825 () Bool)

(declare-fun call!44828 () Bool)

(assert (=> bm!44825 (= call!44828 (arrayNoDuplicates!0 a!3488 (bvadd lt!466177 #b00000000000000000000000000000001) (ite c!107039 (Cons!22478 (select (arr!32039 a!3488) lt!466177) Nil!22479) Nil!22479)))))

(declare-fun b!1056757 () Bool)

(declare-fun e!600895 () Bool)

(declare-fun e!600893 () Bool)

(assert (=> b!1056757 (= e!600895 e!600893)))

(declare-fun res!705604 () Bool)

(assert (=> b!1056757 (=> (not res!705604) (not e!600893))))

(declare-fun e!600894 () Bool)

(assert (=> b!1056757 (= res!705604 (not e!600894))))

(declare-fun res!705606 () Bool)

(assert (=> b!1056757 (=> (not res!705606) (not e!600894))))

(assert (=> b!1056757 (= res!705606 (validKeyInArray!0 (select (arr!32039 a!3488) lt!466177)))))

(declare-fun d!128287 () Bool)

(declare-fun res!705605 () Bool)

(assert (=> d!128287 (=> res!705605 e!600895)))

(assert (=> d!128287 (= res!705605 (bvsge lt!466177 (size!32576 a!3488)))))

(assert (=> d!128287 (= (arrayNoDuplicates!0 a!3488 lt!466177 Nil!22479) e!600895)))

(declare-fun b!1056758 () Bool)

(declare-fun e!600896 () Bool)

(assert (=> b!1056758 (= e!600893 e!600896)))

(assert (=> b!1056758 (= c!107039 (validKeyInArray!0 (select (arr!32039 a!3488) lt!466177)))))

(declare-fun b!1056759 () Bool)

(declare-fun contains!6211 (List!22482 (_ BitVec 64)) Bool)

(assert (=> b!1056759 (= e!600894 (contains!6211 Nil!22479 (select (arr!32039 a!3488) lt!466177)))))

(declare-fun b!1056760 () Bool)

(assert (=> b!1056760 (= e!600896 call!44828)))

(declare-fun b!1056761 () Bool)

(assert (=> b!1056761 (= e!600896 call!44828)))

(assert (= (and d!128287 (not res!705605)) b!1056757))

(assert (= (and b!1056757 res!705606) b!1056759))

(assert (= (and b!1056757 res!705604) b!1056758))

(assert (= (and b!1056758 c!107039) b!1056761))

(assert (= (and b!1056758 (not c!107039)) b!1056760))

(assert (= (or b!1056761 b!1056760) bm!44825))

(declare-fun m!976675 () Bool)

(assert (=> bm!44825 m!976675))

(declare-fun m!976677 () Bool)

(assert (=> bm!44825 m!976677))

(assert (=> b!1056757 m!976675))

(assert (=> b!1056757 m!976675))

(declare-fun m!976679 () Bool)

(assert (=> b!1056757 m!976679))

(assert (=> b!1056758 m!976675))

(assert (=> b!1056758 m!976675))

(assert (=> b!1056758 m!976679))

(assert (=> b!1056759 m!976675))

(assert (=> b!1056759 m!976675))

(declare-fun m!976681 () Bool)

(assert (=> b!1056759 m!976681))

(assert (=> b!1056706 d!128287))

(declare-fun d!128291 () Bool)

(assert (=> d!128291 (arrayNoDuplicates!0 a!3488 lt!466177 Nil!22479)))

(declare-fun lt!466189 () Unit!34609)

(declare-fun choose!39 (array!66637 (_ BitVec 32) (_ BitVec 32)) Unit!34609)

(assert (=> d!128291 (= lt!466189 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466177))))

(assert (=> d!128291 (bvslt (size!32576 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128291 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466177) lt!466189)))

(declare-fun bs!30978 () Bool)

(assert (= bs!30978 d!128291))

(assert (=> bs!30978 m!976633))

(declare-fun m!976683 () Bool)

(assert (=> bs!30978 m!976683))

(assert (=> b!1056706 d!128291))

(declare-fun d!128293 () Bool)

(declare-fun res!705613 () Bool)

(declare-fun e!600905 () Bool)

(assert (=> d!128293 (=> res!705613 e!600905)))

(assert (=> d!128293 (= res!705613 (= (select (arr!32039 a!3488) i!1381) k0!2747))))

(assert (=> d!128293 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!600905)))

(declare-fun b!1056772 () Bool)

(declare-fun e!600906 () Bool)

(assert (=> b!1056772 (= e!600905 e!600906)))

(declare-fun res!705614 () Bool)

(assert (=> b!1056772 (=> (not res!705614) (not e!600906))))

(assert (=> b!1056772 (= res!705614 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32576 a!3488)))))

(declare-fun b!1056773 () Bool)

(assert (=> b!1056773 (= e!600906 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128293 (not res!705613)) b!1056772))

(assert (= (and b!1056772 res!705614) b!1056773))

(assert (=> d!128293 m!976645))

(declare-fun m!976685 () Bool)

(assert (=> b!1056773 m!976685))

(assert (=> b!1056712 d!128293))

(declare-fun bm!44828 () Bool)

(declare-fun call!44831 () Bool)

(declare-fun c!107042 () Bool)

(assert (=> bm!44828 (= call!44831 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107042 (Cons!22478 (select (arr!32039 a!3488) #b00000000000000000000000000000000) Nil!22479) Nil!22479)))))

(declare-fun b!1056774 () Bool)

(declare-fun e!600909 () Bool)

(declare-fun e!600907 () Bool)

(assert (=> b!1056774 (= e!600909 e!600907)))

(declare-fun res!705615 () Bool)

(assert (=> b!1056774 (=> (not res!705615) (not e!600907))))

(declare-fun e!600908 () Bool)

(assert (=> b!1056774 (= res!705615 (not e!600908))))

(declare-fun res!705617 () Bool)

(assert (=> b!1056774 (=> (not res!705617) (not e!600908))))

(assert (=> b!1056774 (= res!705617 (validKeyInArray!0 (select (arr!32039 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128295 () Bool)

(declare-fun res!705616 () Bool)

(assert (=> d!128295 (=> res!705616 e!600909)))

(assert (=> d!128295 (= res!705616 (bvsge #b00000000000000000000000000000000 (size!32576 a!3488)))))

(assert (=> d!128295 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22479) e!600909)))

(declare-fun b!1056775 () Bool)

(declare-fun e!600910 () Bool)

(assert (=> b!1056775 (= e!600907 e!600910)))

(assert (=> b!1056775 (= c!107042 (validKeyInArray!0 (select (arr!32039 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056776 () Bool)

(assert (=> b!1056776 (= e!600908 (contains!6211 Nil!22479 (select (arr!32039 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056777 () Bool)

(assert (=> b!1056777 (= e!600910 call!44831)))

(declare-fun b!1056778 () Bool)

(assert (=> b!1056778 (= e!600910 call!44831)))

(assert (= (and d!128295 (not res!705616)) b!1056774))

(assert (= (and b!1056774 res!705617) b!1056776))

(assert (= (and b!1056774 res!705615) b!1056775))

(assert (= (and b!1056775 c!107042) b!1056778))

(assert (= (and b!1056775 (not c!107042)) b!1056777))

(assert (= (or b!1056778 b!1056777) bm!44828))

(declare-fun m!976687 () Bool)

(assert (=> bm!44828 m!976687))

(declare-fun m!976689 () Bool)

(assert (=> bm!44828 m!976689))

(assert (=> b!1056774 m!976687))

(assert (=> b!1056774 m!976687))

(declare-fun m!976691 () Bool)

(assert (=> b!1056774 m!976691))

(assert (=> b!1056775 m!976687))

(assert (=> b!1056775 m!976687))

(assert (=> b!1056775 m!976691))

(assert (=> b!1056776 m!976687))

(assert (=> b!1056776 m!976687))

(declare-fun m!976693 () Bool)

(assert (=> b!1056776 m!976693))

(assert (=> b!1056707 d!128295))

(declare-fun d!128299 () Bool)

(declare-fun lt!466195 () (_ BitVec 32))

(assert (=> d!128299 (and (or (bvslt lt!466195 #b00000000000000000000000000000000) (bvsge lt!466195 (size!32576 lt!466176)) (and (bvsge lt!466195 #b00000000000000000000000000000000) (bvslt lt!466195 (size!32576 lt!466176)))) (bvsge lt!466195 #b00000000000000000000000000000000) (bvslt lt!466195 (size!32576 lt!466176)) (= (select (arr!32039 lt!466176) lt!466195) k0!2747))))

(declare-fun e!600929 () (_ BitVec 32))

(assert (=> d!128299 (= lt!466195 e!600929)))

(declare-fun c!107047 () Bool)

(assert (=> d!128299 (= c!107047 (= (select (arr!32039 lt!466176) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128299 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32576 lt!466176)) (bvslt (size!32576 lt!466176) #b01111111111111111111111111111111))))

(assert (=> d!128299 (= (arrayScanForKey!0 lt!466176 k0!2747 #b00000000000000000000000000000000) lt!466195)))

(declare-fun b!1056801 () Bool)

(assert (=> b!1056801 (= e!600929 #b00000000000000000000000000000000)))

(declare-fun b!1056802 () Bool)

(assert (=> b!1056802 (= e!600929 (arrayScanForKey!0 lt!466176 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128299 c!107047) b!1056801))

(assert (= (and d!128299 (not c!107047)) b!1056802))

(declare-fun m!976719 () Bool)

(assert (=> d!128299 m!976719))

(assert (=> d!128299 m!976671))

(declare-fun m!976721 () Bool)

(assert (=> b!1056802 m!976721))

(assert (=> b!1056713 d!128299))

(check-sat (not bm!44828) (not d!128291) (not b!1056802) (not b!1056776) (not b!1056774) (not b!1056775) (not b!1056758) (not b!1056759) (not b!1056757) (not b!1056773) (not bm!44825) (not b!1056746))
(check-sat)
