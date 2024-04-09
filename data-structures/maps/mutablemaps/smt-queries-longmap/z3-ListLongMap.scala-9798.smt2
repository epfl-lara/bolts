; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116392 () Bool)

(assert start!116392)

(declare-fun res!916663 () Bool)

(declare-fun e!777932 () Bool)

(assert (=> start!116392 (=> (not res!916663) (not e!777932))))

(declare-datatypes ((array!93093 0))(
  ( (array!93094 (arr!44951 (Array (_ BitVec 32) (_ BitVec 64))) (size!45502 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93093)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116392 (= res!916663 (and (bvslt (size!45502 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45502 a!3861))))))

(assert (=> start!116392 e!777932))

(declare-fun array_inv!33896 (array!93093) Bool)

(assert (=> start!116392 (array_inv!33896 a!3861)))

(assert (=> start!116392 true))

(declare-fun b!1373295 () Bool)

(declare-fun res!916665 () Bool)

(assert (=> b!1373295 (=> (not res!916665) (not e!777932))))

(declare-datatypes ((List!32199 0))(
  ( (Nil!32196) (Cons!32195 (h!33404 (_ BitVec 64)) (t!46900 List!32199)) )
))
(declare-fun newAcc!98 () List!32199)

(declare-fun acc!866 () List!32199)

(declare-fun subseq!1128 (List!32199 List!32199) Bool)

(assert (=> b!1373295 (= res!916665 (subseq!1128 newAcc!98 acc!866))))

(declare-fun b!1373296 () Bool)

(declare-fun res!916668 () Bool)

(assert (=> b!1373296 (=> (not res!916668) (not e!777932))))

(declare-fun contains!9737 (List!32199 (_ BitVec 64)) Bool)

(assert (=> b!1373296 (= res!916668 (not (contains!9737 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373297 () Bool)

(declare-fun e!777934 () Bool)

(assert (=> b!1373297 (= e!777932 e!777934)))

(declare-fun res!916667 () Bool)

(assert (=> b!1373297 (=> (not res!916667) (not e!777934))))

(declare-fun arrayNoDuplicates!0 (array!93093 (_ BitVec 32) List!32199) Bool)

(assert (=> b!1373297 (= res!916667 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45337 0))(
  ( (Unit!45338) )
))
(declare-fun lt!602977 () Unit!45337)

(declare-fun noDuplicateSubseq!315 (List!32199 List!32199) Unit!45337)

(assert (=> b!1373297 (= lt!602977 (noDuplicateSubseq!315 newAcc!98 acc!866))))

(declare-fun b!1373298 () Bool)

(declare-fun res!916662 () Bool)

(assert (=> b!1373298 (=> (not res!916662) (not e!777934))))

(assert (=> b!1373298 (= res!916662 (bvslt from!3239 (size!45502 a!3861)))))

(declare-fun b!1373299 () Bool)

(declare-fun res!916664 () Bool)

(assert (=> b!1373299 (=> (not res!916664) (not e!777934))))

(assert (=> b!1373299 (= res!916664 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1373300 () Bool)

(declare-fun res!916671 () Bool)

(assert (=> b!1373300 (=> (not res!916671) (not e!777932))))

(assert (=> b!1373300 (= res!916671 (not (contains!9737 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373301 () Bool)

(declare-fun res!916666 () Bool)

(assert (=> b!1373301 (=> (not res!916666) (not e!777934))))

(assert (=> b!1373301 (= res!916666 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1373302 () Bool)

(declare-fun res!916660 () Bool)

(assert (=> b!1373302 (=> (not res!916660) (not e!777934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373302 (= res!916660 (not (validKeyInArray!0 (select (arr!44951 a!3861) from!3239))))))

(declare-fun b!1373303 () Bool)

(declare-fun res!916670 () Bool)

(assert (=> b!1373303 (=> (not res!916670) (not e!777932))))

(assert (=> b!1373303 (= res!916670 (not (contains!9737 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373304 () Bool)

(declare-fun res!916661 () Bool)

(assert (=> b!1373304 (=> (not res!916661) (not e!777932))))

(declare-fun noDuplicate!2616 (List!32199) Bool)

(assert (=> b!1373304 (= res!916661 (noDuplicate!2616 acc!866))))

(declare-fun b!1373305 () Bool)

(assert (=> b!1373305 (= e!777934 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(assert (=> b!1373305 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602978 () Unit!45337)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93093 List!32199 List!32199 (_ BitVec 32)) Unit!45337)

(assert (=> b!1373305 (= lt!602978 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1373306 () Bool)

(declare-fun res!916669 () Bool)

(assert (=> b!1373306 (=> (not res!916669) (not e!777932))))

(assert (=> b!1373306 (= res!916669 (not (contains!9737 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116392 res!916663) b!1373304))

(assert (= (and b!1373304 res!916661) b!1373303))

(assert (= (and b!1373303 res!916670) b!1373296))

(assert (= (and b!1373296 res!916668) b!1373306))

(assert (= (and b!1373306 res!916669) b!1373300))

(assert (= (and b!1373300 res!916671) b!1373295))

(assert (= (and b!1373295 res!916665) b!1373297))

(assert (= (and b!1373297 res!916667) b!1373298))

(assert (= (and b!1373298 res!916662) b!1373302))

(assert (= (and b!1373302 res!916660) b!1373299))

(assert (= (and b!1373299 res!916664) b!1373301))

(assert (= (and b!1373301 res!916666) b!1373305))

(declare-fun m!1256587 () Bool)

(assert (=> b!1373302 m!1256587))

(assert (=> b!1373302 m!1256587))

(declare-fun m!1256589 () Bool)

(assert (=> b!1373302 m!1256589))

(declare-fun m!1256591 () Bool)

(assert (=> b!1373304 m!1256591))

(declare-fun m!1256593 () Bool)

(assert (=> b!1373301 m!1256593))

(declare-fun m!1256595 () Bool)

(assert (=> b!1373296 m!1256595))

(declare-fun m!1256597 () Bool)

(assert (=> b!1373297 m!1256597))

(declare-fun m!1256599 () Bool)

(assert (=> b!1373297 m!1256599))

(declare-fun m!1256601 () Bool)

(assert (=> b!1373305 m!1256601))

(declare-fun m!1256603 () Bool)

(assert (=> b!1373305 m!1256603))

(declare-fun m!1256605 () Bool)

(assert (=> b!1373305 m!1256605))

(declare-fun m!1256607 () Bool)

(assert (=> b!1373295 m!1256607))

(declare-fun m!1256609 () Bool)

(assert (=> b!1373300 m!1256609))

(declare-fun m!1256611 () Bool)

(assert (=> b!1373303 m!1256611))

(declare-fun m!1256613 () Bool)

(assert (=> b!1373306 m!1256613))

(declare-fun m!1256615 () Bool)

(assert (=> start!116392 m!1256615))

(check-sat (not b!1373303) (not b!1373297) (not start!116392) (not b!1373304) (not b!1373295) (not b!1373301) (not b!1373296) (not b!1373302) (not b!1373306) (not b!1373305) (not b!1373300))
(check-sat)
(get-model)

(declare-fun d!147871 () Bool)

(assert (=> d!147871 (= (validKeyInArray!0 (select (arr!44951 a!3861) from!3239)) (and (not (= (select (arr!44951 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44951 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1373302 d!147871))

(declare-fun b!1373353 () Bool)

(declare-fun e!777954 () Bool)

(declare-fun e!777952 () Bool)

(assert (=> b!1373353 (= e!777954 e!777952)))

(declare-fun res!916715 () Bool)

(assert (=> b!1373353 (=> (not res!916715) (not e!777952))))

(declare-fun e!777953 () Bool)

(assert (=> b!1373353 (= res!916715 (not e!777953))))

(declare-fun res!916714 () Bool)

(assert (=> b!1373353 (=> (not res!916714) (not e!777953))))

(assert (=> b!1373353 (= res!916714 (validKeyInArray!0 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373354 () Bool)

(declare-fun e!777955 () Bool)

(declare-fun call!65611 () Bool)

(assert (=> b!1373354 (= e!777955 call!65611)))

(declare-fun b!1373355 () Bool)

(assert (=> b!1373355 (= e!777955 call!65611)))

(declare-fun b!1373356 () Bool)

(assert (=> b!1373356 (= e!777952 e!777955)))

(declare-fun c!127762 () Bool)

(assert (=> b!1373356 (= c!127762 (validKeyInArray!0 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147873 () Bool)

(declare-fun res!916716 () Bool)

(assert (=> d!147873 (=> res!916716 e!777954)))

(assert (=> d!147873 (= res!916716 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45502 a!3861)))))

(assert (=> d!147873 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!777954)))

(declare-fun b!1373357 () Bool)

(assert (=> b!1373357 (= e!777953 (contains!9737 acc!866 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65608 () Bool)

(assert (=> bm!65608 (= call!65611 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127762 (Cons!32195 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(assert (= (and d!147873 (not res!916716)) b!1373353))

(assert (= (and b!1373353 res!916714) b!1373357))

(assert (= (and b!1373353 res!916715) b!1373356))

(assert (= (and b!1373356 c!127762) b!1373354))

(assert (= (and b!1373356 (not c!127762)) b!1373355))

(assert (= (or b!1373354 b!1373355) bm!65608))

(declare-fun m!1256647 () Bool)

(assert (=> b!1373353 m!1256647))

(assert (=> b!1373353 m!1256647))

(declare-fun m!1256649 () Bool)

(assert (=> b!1373353 m!1256649))

(assert (=> b!1373356 m!1256647))

(assert (=> b!1373356 m!1256647))

(assert (=> b!1373356 m!1256649))

(assert (=> b!1373357 m!1256647))

(assert (=> b!1373357 m!1256647))

(declare-fun m!1256651 () Bool)

(assert (=> b!1373357 m!1256651))

(assert (=> bm!65608 m!1256647))

(declare-fun m!1256653 () Bool)

(assert (=> bm!65608 m!1256653))

(assert (=> b!1373301 d!147873))

(declare-fun d!147879 () Bool)

(declare-fun lt!602990 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!757 (List!32199) (InoxSet (_ BitVec 64)))

(assert (=> d!147879 (= lt!602990 (select (content!757 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777980 () Bool)

(assert (=> d!147879 (= lt!602990 e!777980)))

(declare-fun res!916737 () Bool)

(assert (=> d!147879 (=> (not res!916737) (not e!777980))))

(get-info :version)

(assert (=> d!147879 (= res!916737 ((_ is Cons!32195) newAcc!98))))

(assert (=> d!147879 (= (contains!9737 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602990)))

(declare-fun b!1373380 () Bool)

(declare-fun e!777981 () Bool)

(assert (=> b!1373380 (= e!777980 e!777981)))

(declare-fun res!916738 () Bool)

(assert (=> b!1373380 (=> res!916738 e!777981)))

(assert (=> b!1373380 (= res!916738 (= (h!33404 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373381 () Bool)

(assert (=> b!1373381 (= e!777981 (contains!9737 (t!46900 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147879 res!916737) b!1373380))

(assert (= (and b!1373380 (not res!916738)) b!1373381))

(declare-fun m!1256661 () Bool)

(assert (=> d!147879 m!1256661))

(declare-fun m!1256663 () Bool)

(assert (=> d!147879 m!1256663))

(declare-fun m!1256665 () Bool)

(assert (=> b!1373381 m!1256665))

(assert (=> b!1373300 d!147879))

(declare-fun b!1373390 () Bool)

(declare-fun e!777986 () Bool)

(declare-fun e!777984 () Bool)

(assert (=> b!1373390 (= e!777986 e!777984)))

(declare-fun res!916742 () Bool)

(assert (=> b!1373390 (=> (not res!916742) (not e!777984))))

(declare-fun e!777985 () Bool)

(assert (=> b!1373390 (= res!916742 (not e!777985))))

(declare-fun res!916741 () Bool)

(assert (=> b!1373390 (=> (not res!916741) (not e!777985))))

(assert (=> b!1373390 (= res!916741 (validKeyInArray!0 (select (arr!44951 a!3861) from!3239)))))

(declare-fun b!1373391 () Bool)

(declare-fun e!777987 () Bool)

(declare-fun call!65616 () Bool)

(assert (=> b!1373391 (= e!777987 call!65616)))

(declare-fun b!1373392 () Bool)

(assert (=> b!1373392 (= e!777987 call!65616)))

(declare-fun b!1373393 () Bool)

(assert (=> b!1373393 (= e!777984 e!777987)))

(declare-fun c!127767 () Bool)

(assert (=> b!1373393 (= c!127767 (validKeyInArray!0 (select (arr!44951 a!3861) from!3239)))))

(declare-fun d!147883 () Bool)

(declare-fun res!916743 () Bool)

(assert (=> d!147883 (=> res!916743 e!777986)))

(assert (=> d!147883 (= res!916743 (bvsge from!3239 (size!45502 a!3861)))))

(assert (=> d!147883 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777986)))

(declare-fun b!1373394 () Bool)

(assert (=> b!1373394 (= e!777985 (contains!9737 newAcc!98 (select (arr!44951 a!3861) from!3239)))))

(declare-fun bm!65613 () Bool)

(assert (=> bm!65613 (= call!65616 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127767 (Cons!32195 (select (arr!44951 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147883 (not res!916743)) b!1373390))

(assert (= (and b!1373390 res!916741) b!1373394))

(assert (= (and b!1373390 res!916742) b!1373393))

(assert (= (and b!1373393 c!127767) b!1373391))

(assert (= (and b!1373393 (not c!127767)) b!1373392))

(assert (= (or b!1373391 b!1373392) bm!65613))

(assert (=> b!1373390 m!1256587))

(assert (=> b!1373390 m!1256587))

(assert (=> b!1373390 m!1256589))

(assert (=> b!1373393 m!1256587))

(assert (=> b!1373393 m!1256587))

(assert (=> b!1373393 m!1256589))

(assert (=> b!1373394 m!1256587))

(assert (=> b!1373394 m!1256587))

(declare-fun m!1256667 () Bool)

(assert (=> b!1373394 m!1256667))

(assert (=> bm!65613 m!1256587))

(declare-fun m!1256669 () Bool)

(assert (=> bm!65613 m!1256669))

(assert (=> b!1373305 d!147883))

(declare-fun b!1373395 () Bool)

(declare-fun e!777990 () Bool)

(declare-fun e!777988 () Bool)

(assert (=> b!1373395 (= e!777990 e!777988)))

(declare-fun res!916745 () Bool)

(assert (=> b!1373395 (=> (not res!916745) (not e!777988))))

(declare-fun e!777989 () Bool)

(assert (=> b!1373395 (= res!916745 (not e!777989))))

(declare-fun res!916744 () Bool)

(assert (=> b!1373395 (=> (not res!916744) (not e!777989))))

(assert (=> b!1373395 (= res!916744 (validKeyInArray!0 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373396 () Bool)

(declare-fun e!777991 () Bool)

(declare-fun call!65617 () Bool)

(assert (=> b!1373396 (= e!777991 call!65617)))

(declare-fun b!1373397 () Bool)

(assert (=> b!1373397 (= e!777991 call!65617)))

(declare-fun b!1373398 () Bool)

(assert (=> b!1373398 (= e!777988 e!777991)))

(declare-fun c!127768 () Bool)

(assert (=> b!1373398 (= c!127768 (validKeyInArray!0 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147885 () Bool)

(declare-fun res!916746 () Bool)

(assert (=> d!147885 (=> res!916746 e!777990)))

(assert (=> d!147885 (= res!916746 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45502 a!3861)))))

(assert (=> d!147885 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98) e!777990)))

(declare-fun b!1373399 () Bool)

(assert (=> b!1373399 (= e!777989 (contains!9737 newAcc!98 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65614 () Bool)

(assert (=> bm!65614 (= call!65617 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127768 (Cons!32195 (select (arr!44951 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(assert (= (and d!147885 (not res!916746)) b!1373395))

(assert (= (and b!1373395 res!916744) b!1373399))

(assert (= (and b!1373395 res!916745) b!1373398))

(assert (= (and b!1373398 c!127768) b!1373396))

(assert (= (and b!1373398 (not c!127768)) b!1373397))

(assert (= (or b!1373396 b!1373397) bm!65614))

(assert (=> b!1373395 m!1256647))

(assert (=> b!1373395 m!1256647))

(assert (=> b!1373395 m!1256649))

(assert (=> b!1373398 m!1256647))

(assert (=> b!1373398 m!1256647))

(assert (=> b!1373398 m!1256649))

(assert (=> b!1373399 m!1256647))

(assert (=> b!1373399 m!1256647))

(declare-fun m!1256671 () Bool)

(assert (=> b!1373399 m!1256671))

(assert (=> bm!65614 m!1256647))

(declare-fun m!1256680 () Bool)

(assert (=> bm!65614 m!1256680))

(assert (=> b!1373305 d!147885))

(declare-fun d!147887 () Bool)

(assert (=> d!147887 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602994 () Unit!45337)

(declare-fun choose!80 (array!93093 List!32199 List!32199 (_ BitVec 32)) Unit!45337)

(assert (=> d!147887 (= lt!602994 (choose!80 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147887 (bvslt (size!45502 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147887 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602994)))

(declare-fun bs!39359 () Bool)

(assert (= bs!39359 d!147887))

(assert (=> bs!39359 m!1256603))

(declare-fun m!1256705 () Bool)

(assert (=> bs!39359 m!1256705))

(assert (=> b!1373305 d!147887))

(declare-fun d!147901 () Bool)

(declare-fun res!916772 () Bool)

(declare-fun e!778021 () Bool)

(assert (=> d!147901 (=> res!916772 e!778021)))

(assert (=> d!147901 (= res!916772 ((_ is Nil!32196) acc!866))))

(assert (=> d!147901 (= (noDuplicate!2616 acc!866) e!778021)))

(declare-fun b!1373433 () Bool)

(declare-fun e!778022 () Bool)

(assert (=> b!1373433 (= e!778021 e!778022)))

(declare-fun res!916773 () Bool)

(assert (=> b!1373433 (=> (not res!916773) (not e!778022))))

(assert (=> b!1373433 (= res!916773 (not (contains!9737 (t!46900 acc!866) (h!33404 acc!866))))))

(declare-fun b!1373434 () Bool)

(assert (=> b!1373434 (= e!778022 (noDuplicate!2616 (t!46900 acc!866)))))

(assert (= (and d!147901 (not res!916772)) b!1373433))

(assert (= (and b!1373433 res!916773) b!1373434))

(declare-fun m!1256717 () Bool)

(assert (=> b!1373433 m!1256717))

(declare-fun m!1256719 () Bool)

(assert (=> b!1373434 m!1256719))

(assert (=> b!1373304 d!147901))

(declare-fun d!147911 () Bool)

(assert (=> d!147911 (= (array_inv!33896 a!3861) (bvsge (size!45502 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116392 d!147911))

(declare-fun d!147913 () Bool)

(declare-fun lt!603002 () Bool)

(assert (=> d!147913 (= lt!603002 (select (content!757 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778031 () Bool)

(assert (=> d!147913 (= lt!603002 e!778031)))

(declare-fun res!916782 () Bool)

(assert (=> d!147913 (=> (not res!916782) (not e!778031))))

(assert (=> d!147913 (= res!916782 ((_ is Cons!32195) acc!866))))

(assert (=> d!147913 (= (contains!9737 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603002)))

(declare-fun b!1373443 () Bool)

(declare-fun e!778032 () Bool)

(assert (=> b!1373443 (= e!778031 e!778032)))

(declare-fun res!916783 () Bool)

(assert (=> b!1373443 (=> res!916783 e!778032)))

(assert (=> b!1373443 (= res!916783 (= (h!33404 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373444 () Bool)

(assert (=> b!1373444 (= e!778032 (contains!9737 (t!46900 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147913 res!916782) b!1373443))

(assert (= (and b!1373443 (not res!916783)) b!1373444))

(declare-fun m!1256725 () Bool)

(assert (=> d!147913 m!1256725))

(declare-fun m!1256727 () Bool)

(assert (=> d!147913 m!1256727))

(declare-fun m!1256729 () Bool)

(assert (=> b!1373444 m!1256729))

(assert (=> b!1373303 d!147913))

(declare-fun b!1373447 () Bool)

(declare-fun e!778037 () Bool)

(declare-fun e!778035 () Bool)

(assert (=> b!1373447 (= e!778037 e!778035)))

(declare-fun res!916787 () Bool)

(assert (=> b!1373447 (=> (not res!916787) (not e!778035))))

(declare-fun e!778036 () Bool)

(assert (=> b!1373447 (= res!916787 (not e!778036))))

(declare-fun res!916786 () Bool)

(assert (=> b!1373447 (=> (not res!916786) (not e!778036))))

(assert (=> b!1373447 (= res!916786 (validKeyInArray!0 (select (arr!44951 a!3861) from!3239)))))

(declare-fun b!1373448 () Bool)

(declare-fun e!778038 () Bool)

(declare-fun call!65622 () Bool)

(assert (=> b!1373448 (= e!778038 call!65622)))

(declare-fun b!1373449 () Bool)

(assert (=> b!1373449 (= e!778038 call!65622)))

(declare-fun b!1373450 () Bool)

(assert (=> b!1373450 (= e!778035 e!778038)))

(declare-fun c!127773 () Bool)

(assert (=> b!1373450 (= c!127773 (validKeyInArray!0 (select (arr!44951 a!3861) from!3239)))))

(declare-fun d!147917 () Bool)

(declare-fun res!916788 () Bool)

(assert (=> d!147917 (=> res!916788 e!778037)))

(assert (=> d!147917 (= res!916788 (bvsge from!3239 (size!45502 a!3861)))))

(assert (=> d!147917 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778037)))

(declare-fun b!1373451 () Bool)

(assert (=> b!1373451 (= e!778036 (contains!9737 acc!866 (select (arr!44951 a!3861) from!3239)))))

(declare-fun bm!65619 () Bool)

(assert (=> bm!65619 (= call!65622 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127773 (Cons!32195 (select (arr!44951 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147917 (not res!916788)) b!1373447))

(assert (= (and b!1373447 res!916786) b!1373451))

(assert (= (and b!1373447 res!916787) b!1373450))

(assert (= (and b!1373450 c!127773) b!1373448))

(assert (= (and b!1373450 (not c!127773)) b!1373449))

(assert (= (or b!1373448 b!1373449) bm!65619))

(assert (=> b!1373447 m!1256587))

(assert (=> b!1373447 m!1256587))

(assert (=> b!1373447 m!1256589))

(assert (=> b!1373450 m!1256587))

(assert (=> b!1373450 m!1256587))

(assert (=> b!1373450 m!1256589))

(assert (=> b!1373451 m!1256587))

(assert (=> b!1373451 m!1256587))

(declare-fun m!1256735 () Bool)

(assert (=> b!1373451 m!1256735))

(assert (=> bm!65619 m!1256587))

(declare-fun m!1256737 () Bool)

(assert (=> bm!65619 m!1256737))

(assert (=> b!1373297 d!147917))

(declare-fun d!147921 () Bool)

(assert (=> d!147921 (noDuplicate!2616 newAcc!98)))

(declare-fun lt!603005 () Unit!45337)

(declare-fun choose!2033 (List!32199 List!32199) Unit!45337)

(assert (=> d!147921 (= lt!603005 (choose!2033 newAcc!98 acc!866))))

(declare-fun e!778069 () Bool)

(assert (=> d!147921 e!778069))

(declare-fun res!916817 () Bool)

(assert (=> d!147921 (=> (not res!916817) (not e!778069))))

(assert (=> d!147921 (= res!916817 (subseq!1128 newAcc!98 acc!866))))

(assert (=> d!147921 (= (noDuplicateSubseq!315 newAcc!98 acc!866) lt!603005)))

(declare-fun b!1373484 () Bool)

(assert (=> b!1373484 (= e!778069 (noDuplicate!2616 acc!866))))

(assert (= (and d!147921 res!916817) b!1373484))

(declare-fun m!1256751 () Bool)

(assert (=> d!147921 m!1256751))

(declare-fun m!1256753 () Bool)

(assert (=> d!147921 m!1256753))

(assert (=> d!147921 m!1256607))

(assert (=> b!1373484 m!1256591))

(assert (=> b!1373297 d!147921))

(declare-fun d!147929 () Bool)

(declare-fun lt!603006 () Bool)

(assert (=> d!147929 (= lt!603006 (select (content!757 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778074 () Bool)

(assert (=> d!147929 (= lt!603006 e!778074)))

(declare-fun res!916822 () Bool)

(assert (=> d!147929 (=> (not res!916822) (not e!778074))))

(assert (=> d!147929 (= res!916822 ((_ is Cons!32195) acc!866))))

(assert (=> d!147929 (= (contains!9737 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603006)))

(declare-fun b!1373489 () Bool)

(declare-fun e!778075 () Bool)

(assert (=> b!1373489 (= e!778074 e!778075)))

(declare-fun res!916823 () Bool)

(assert (=> b!1373489 (=> res!916823 e!778075)))

(assert (=> b!1373489 (= res!916823 (= (h!33404 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373490 () Bool)

(assert (=> b!1373490 (= e!778075 (contains!9737 (t!46900 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147929 res!916822) b!1373489))

(assert (= (and b!1373489 (not res!916823)) b!1373490))

(assert (=> d!147929 m!1256725))

(declare-fun m!1256755 () Bool)

(assert (=> d!147929 m!1256755))

(declare-fun m!1256759 () Bool)

(assert (=> b!1373490 m!1256759))

(assert (=> b!1373296 d!147929))

(declare-fun d!147932 () Bool)

(declare-fun lt!603007 () Bool)

(assert (=> d!147932 (= lt!603007 (select (content!757 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!778076 () Bool)

(assert (=> d!147932 (= lt!603007 e!778076)))

(declare-fun res!916824 () Bool)

(assert (=> d!147932 (=> (not res!916824) (not e!778076))))

(assert (=> d!147932 (= res!916824 ((_ is Cons!32195) newAcc!98))))

(assert (=> d!147932 (= (contains!9737 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603007)))

(declare-fun b!1373491 () Bool)

(declare-fun e!778077 () Bool)

(assert (=> b!1373491 (= e!778076 e!778077)))

(declare-fun res!916825 () Bool)

(assert (=> b!1373491 (=> res!916825 e!778077)))

(assert (=> b!1373491 (= res!916825 (= (h!33404 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373492 () Bool)

(assert (=> b!1373492 (= e!778077 (contains!9737 (t!46900 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147932 res!916824) b!1373491))

(assert (= (and b!1373491 (not res!916825)) b!1373492))

(assert (=> d!147932 m!1256661))

(declare-fun m!1256763 () Bool)

(assert (=> d!147932 m!1256763))

(declare-fun m!1256765 () Bool)

(assert (=> b!1373492 m!1256765))

(assert (=> b!1373306 d!147932))

(declare-fun b!1373514 () Bool)

(declare-fun e!778100 () Bool)

(declare-fun e!778099 () Bool)

(assert (=> b!1373514 (= e!778100 e!778099)))

(declare-fun res!916847 () Bool)

(assert (=> b!1373514 (=> (not res!916847) (not e!778099))))

(assert (=> b!1373514 (= res!916847 ((_ is Cons!32195) acc!866))))

(declare-fun b!1373516 () Bool)

(declare-fun e!778101 () Bool)

(assert (=> b!1373516 (= e!778101 (subseq!1128 (t!46900 newAcc!98) (t!46900 acc!866)))))

(declare-fun b!1373517 () Bool)

(declare-fun e!778098 () Bool)

(assert (=> b!1373517 (= e!778098 (subseq!1128 newAcc!98 (t!46900 acc!866)))))

(declare-fun d!147935 () Bool)

(declare-fun res!916846 () Bool)

(assert (=> d!147935 (=> res!916846 e!778100)))

(assert (=> d!147935 (= res!916846 ((_ is Nil!32196) newAcc!98))))

(assert (=> d!147935 (= (subseq!1128 newAcc!98 acc!866) e!778100)))

(declare-fun b!1373515 () Bool)

(assert (=> b!1373515 (= e!778099 e!778098)))

(declare-fun res!916845 () Bool)

(assert (=> b!1373515 (=> res!916845 e!778098)))

(assert (=> b!1373515 (= res!916845 e!778101)))

(declare-fun res!916848 () Bool)

(assert (=> b!1373515 (=> (not res!916848) (not e!778101))))

(assert (=> b!1373515 (= res!916848 (= (h!33404 newAcc!98) (h!33404 acc!866)))))

(assert (= (and d!147935 (not res!916846)) b!1373514))

(assert (= (and b!1373514 res!916847) b!1373515))

(assert (= (and b!1373515 res!916848) b!1373516))

(assert (= (and b!1373515 (not res!916845)) b!1373517))

(declare-fun m!1256783 () Bool)

(assert (=> b!1373516 m!1256783))

(declare-fun m!1256785 () Bool)

(assert (=> b!1373517 m!1256785))

(assert (=> b!1373295 d!147935))

(check-sat (not b!1373398) (not d!147913) (not b!1373490) (not b!1373381) (not b!1373451) (not b!1373492) (not b!1373357) (not bm!65619) (not b!1373394) (not b!1373450) (not b!1373434) (not b!1373484) (not b!1373444) (not d!147932) (not b!1373433) (not b!1373393) (not d!147921) (not b!1373353) (not b!1373517) (not bm!65613) (not b!1373356) (not d!147929) (not b!1373516) (not d!147887) (not bm!65608) (not b!1373390) (not bm!65614) (not b!1373399) (not b!1373447) (not b!1373395) (not d!147879))
(check-sat)
