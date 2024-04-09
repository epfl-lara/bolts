; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115778 () Bool)

(assert start!115778)

(declare-fun b!1368693 () Bool)

(declare-fun res!912324 () Bool)

(declare-fun e!775398 () Bool)

(assert (=> b!1368693 (=> (not res!912324) (not e!775398))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368693 (= res!912324 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368694 () Bool)

(declare-fun res!912323 () Bool)

(declare-fun e!775397 () Bool)

(assert (=> b!1368694 (=> (not res!912323) (not e!775397))))

(declare-datatypes ((List!32114 0))(
  ( (Nil!32111) (Cons!32110 (h!33319 (_ BitVec 64)) (t!46815 List!32114)) )
))
(declare-fun newAcc!98 () List!32114)

(declare-fun contains!9652 (List!32114 (_ BitVec 64)) Bool)

(assert (=> b!1368694 (= res!912323 (not (contains!9652 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368695 () Bool)

(assert (=> b!1368695 (= e!775397 e!775398)))

(declare-fun res!912329 () Bool)

(assert (=> b!1368695 (=> (not res!912329) (not e!775398))))

(declare-datatypes ((array!92893 0))(
  ( (array!92894 (arr!44866 (Array (_ BitVec 32) (_ BitVec 64))) (size!45417 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92893)

(declare-fun acc!866 () List!32114)

(declare-fun arrayNoDuplicates!0 (array!92893 (_ BitVec 32) List!32114) Bool)

(assert (=> b!1368695 (= res!912329 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45167 0))(
  ( (Unit!45168) )
))
(declare-fun lt!602060 () Unit!45167)

(declare-fun noDuplicateSubseq!230 (List!32114 List!32114) Unit!45167)

(assert (=> b!1368695 (= lt!602060 (noDuplicateSubseq!230 newAcc!98 acc!866))))

(declare-fun b!1368696 () Bool)

(declare-fun res!912325 () Bool)

(assert (=> b!1368696 (=> (not res!912325) (not e!775398))))

(assert (=> b!1368696 (= res!912325 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368697 () Bool)

(declare-fun res!912333 () Bool)

(assert (=> b!1368697 (=> (not res!912333) (not e!775397))))

(declare-fun subseq!1043 (List!32114 List!32114) Bool)

(assert (=> b!1368697 (= res!912333 (subseq!1043 newAcc!98 acc!866))))

(declare-fun b!1368698 () Bool)

(declare-fun noDuplicate!2531 (List!32114) Bool)

(assert (=> b!1368698 (= e!775398 (not (noDuplicate!2531 newAcc!98)))))

(assert (=> b!1368698 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602059 () Unit!45167)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92893 List!32114 List!32114 (_ BitVec 32)) Unit!45167)

(assert (=> b!1368698 (= lt!602059 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368699 () Bool)

(declare-fun res!912331 () Bool)

(assert (=> b!1368699 (=> (not res!912331) (not e!775397))))

(assert (=> b!1368699 (= res!912331 (not (contains!9652 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368700 () Bool)

(declare-fun res!912330 () Bool)

(assert (=> b!1368700 (=> (not res!912330) (not e!775398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368700 (= res!912330 (not (validKeyInArray!0 (select (arr!44866 a!3861) from!3239))))))

(declare-fun b!1368701 () Bool)

(declare-fun res!912328 () Bool)

(assert (=> b!1368701 (=> (not res!912328) (not e!775397))))

(assert (=> b!1368701 (= res!912328 (not (contains!9652 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368702 () Bool)

(declare-fun res!912326 () Bool)

(assert (=> b!1368702 (=> (not res!912326) (not e!775397))))

(assert (=> b!1368702 (= res!912326 (noDuplicate!2531 acc!866))))

(declare-fun res!912327 () Bool)

(assert (=> start!115778 (=> (not res!912327) (not e!775397))))

(assert (=> start!115778 (= res!912327 (and (bvslt (size!45417 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45417 a!3861))))))

(assert (=> start!115778 e!775397))

(declare-fun array_inv!33811 (array!92893) Bool)

(assert (=> start!115778 (array_inv!33811 a!3861)))

(assert (=> start!115778 true))

(declare-fun b!1368703 () Bool)

(declare-fun res!912332 () Bool)

(assert (=> b!1368703 (=> (not res!912332) (not e!775398))))

(assert (=> b!1368703 (= res!912332 (bvslt from!3239 (size!45417 a!3861)))))

(declare-fun b!1368704 () Bool)

(declare-fun res!912322 () Bool)

(assert (=> b!1368704 (=> (not res!912322) (not e!775397))))

(assert (=> b!1368704 (= res!912322 (not (contains!9652 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115778 res!912327) b!1368702))

(assert (= (and b!1368702 res!912326) b!1368704))

(assert (= (and b!1368704 res!912322) b!1368699))

(assert (= (and b!1368699 res!912331) b!1368694))

(assert (= (and b!1368694 res!912323) b!1368701))

(assert (= (and b!1368701 res!912328) b!1368697))

(assert (= (and b!1368697 res!912333) b!1368695))

(assert (= (and b!1368695 res!912329) b!1368703))

(assert (= (and b!1368703 res!912332) b!1368700))

(assert (= (and b!1368700 res!912330) b!1368693))

(assert (= (and b!1368693 res!912324) b!1368696))

(assert (= (and b!1368696 res!912325) b!1368698))

(declare-fun m!1252615 () Bool)

(assert (=> start!115778 m!1252615))

(declare-fun m!1252617 () Bool)

(assert (=> b!1368701 m!1252617))

(declare-fun m!1252619 () Bool)

(assert (=> b!1368696 m!1252619))

(declare-fun m!1252621 () Bool)

(assert (=> b!1368699 m!1252621))

(declare-fun m!1252623 () Bool)

(assert (=> b!1368702 m!1252623))

(declare-fun m!1252625 () Bool)

(assert (=> b!1368697 m!1252625))

(declare-fun m!1252627 () Bool)

(assert (=> b!1368700 m!1252627))

(assert (=> b!1368700 m!1252627))

(declare-fun m!1252629 () Bool)

(assert (=> b!1368700 m!1252629))

(declare-fun m!1252631 () Bool)

(assert (=> b!1368698 m!1252631))

(declare-fun m!1252633 () Bool)

(assert (=> b!1368698 m!1252633))

(declare-fun m!1252635 () Bool)

(assert (=> b!1368698 m!1252635))

(declare-fun m!1252637 () Bool)

(assert (=> b!1368704 m!1252637))

(declare-fun m!1252639 () Bool)

(assert (=> b!1368694 m!1252639))

(declare-fun m!1252641 () Bool)

(assert (=> b!1368695 m!1252641))

(declare-fun m!1252643 () Bool)

(assert (=> b!1368695 m!1252643))

(push 1)

(assert (not b!1368696))

(assert (not b!1368695))

(assert (not b!1368697))

(assert (not b!1368702))

(assert (not b!1368704))

(assert (not b!1368694))

(assert (not b!1368699))

(assert (not b!1368701))

(assert (not b!1368698))

(assert (not b!1368700))

(assert (not start!115778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146833 () Bool)

(declare-fun lt!602079 () Bool)

(declare-fun content!727 (List!32114) (Set (_ BitVec 64)))

(assert (=> d!146833 (= lt!602079 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!727 newAcc!98)))))

(declare-fun e!775437 () Bool)

(assert (=> d!146833 (= lt!602079 e!775437)))

(declare-fun res!912425 () Bool)

(assert (=> d!146833 (=> (not res!912425) (not e!775437))))

(assert (=> d!146833 (= res!912425 (is-Cons!32110 newAcc!98))))

(assert (=> d!146833 (= (contains!9652 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602079)))

(declare-fun b!1368795 () Bool)

(declare-fun e!775436 () Bool)

(assert (=> b!1368795 (= e!775437 e!775436)))

(declare-fun res!912424 () Bool)

(assert (=> b!1368795 (=> res!912424 e!775436)))

(assert (=> b!1368795 (= res!912424 (= (h!33319 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368796 () Bool)

(assert (=> b!1368796 (= e!775436 (contains!9652 (t!46815 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146833 res!912425) b!1368795))

(assert (= (and b!1368795 (not res!912424)) b!1368796))

(declare-fun m!1252721 () Bool)

(assert (=> d!146833 m!1252721))

(declare-fun m!1252725 () Bool)

(assert (=> d!146833 m!1252725))

(declare-fun m!1252729 () Bool)

(assert (=> b!1368796 m!1252729))

(assert (=> b!1368694 d!146833))

(declare-fun b!1368834 () Bool)

(declare-fun e!775469 () Bool)

(declare-fun e!775470 () Bool)

(assert (=> b!1368834 (= e!775469 e!775470)))

(declare-fun c!127635 () Bool)

(assert (=> b!1368834 (= c!127635 (validKeyInArray!0 (select (arr!44866 a!3861) from!3239)))))

(declare-fun d!146845 () Bool)

(declare-fun res!912449 () Bool)

(declare-fun e!775468 () Bool)

(assert (=> d!146845 (=> res!912449 e!775468)))

(assert (=> d!146845 (= res!912449 (bvsge from!3239 (size!45417 a!3861)))))

(assert (=> d!146845 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775468)))

(declare-fun b!1368835 () Bool)

(declare-fun e!775471 () Bool)

(assert (=> b!1368835 (= e!775471 (contains!9652 acc!866 (select (arr!44866 a!3861) from!3239)))))

(declare-fun b!1368836 () Bool)

(declare-fun call!65496 () Bool)

(assert (=> b!1368836 (= e!775470 call!65496)))

(declare-fun b!1368837 () Bool)

(assert (=> b!1368837 (= e!775470 call!65496)))

(declare-fun b!1368838 () Bool)

(assert (=> b!1368838 (= e!775468 e!775469)))

(declare-fun res!912451 () Bool)

(assert (=> b!1368838 (=> (not res!912451) (not e!775469))))

(assert (=> b!1368838 (= res!912451 (not e!775471))))

(declare-fun res!912450 () Bool)

(assert (=> b!1368838 (=> (not res!912450) (not e!775471))))

(assert (=> b!1368838 (= res!912450 (validKeyInArray!0 (select (arr!44866 a!3861) from!3239)))))

(declare-fun bm!65493 () Bool)

(assert (=> bm!65493 (= call!65496 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127635 (Cons!32110 (select (arr!44866 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!146845 (not res!912449)) b!1368838))

(assert (= (and b!1368838 res!912450) b!1368835))

(assert (= (and b!1368838 res!912451) b!1368834))

(assert (= (and b!1368834 c!127635) b!1368837))

(assert (= (and b!1368834 (not c!127635)) b!1368836))

(assert (= (or b!1368837 b!1368836) bm!65493))

(assert (=> b!1368834 m!1252627))

(assert (=> b!1368834 m!1252627))

(assert (=> b!1368834 m!1252629))

(assert (=> b!1368835 m!1252627))

(assert (=> b!1368835 m!1252627))

(declare-fun m!1252737 () Bool)

(assert (=> b!1368835 m!1252737))

(assert (=> b!1368838 m!1252627))

(assert (=> b!1368838 m!1252627))

(assert (=> b!1368838 m!1252629))

(assert (=> bm!65493 m!1252627))

(declare-fun m!1252743 () Bool)

(assert (=> bm!65493 m!1252743))

(assert (=> b!1368695 d!146845))

(declare-fun d!146849 () Bool)

(assert (=> d!146849 (noDuplicate!2531 newAcc!98)))

(declare-fun lt!602088 () Unit!45167)

(declare-fun choose!2006 (List!32114 List!32114) Unit!45167)

(assert (=> d!146849 (= lt!602088 (choose!2006 newAcc!98 acc!866))))

(declare-fun e!775481 () Bool)

(assert (=> d!146849 e!775481))

(declare-fun res!912460 () Bool)

(assert (=> d!146849 (=> (not res!912460) (not e!775481))))

(assert (=> d!146849 (= res!912460 (subseq!1043 newAcc!98 acc!866))))

(assert (=> d!146849 (= (noDuplicateSubseq!230 newAcc!98 acc!866) lt!602088)))

(declare-fun b!1368849 () Bool)

(assert (=> b!1368849 (= e!775481 (noDuplicate!2531 acc!866))))

(assert (= (and d!146849 res!912460) b!1368849))

(assert (=> d!146849 m!1252631))

(declare-fun m!1252751 () Bool)

(assert (=> d!146849 m!1252751))

(assert (=> d!146849 m!1252625))

(assert (=> b!1368849 m!1252623))

(assert (=> b!1368695 d!146849))

(declare-fun d!146859 () Bool)

(assert (=> d!146859 (= (validKeyInArray!0 (select (arr!44866 a!3861) from!3239)) (and (not (= (select (arr!44866 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44866 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1368700 d!146859))

(declare-fun d!146863 () Bool)

(declare-fun res!912475 () Bool)

(declare-fun e!775496 () Bool)

(assert (=> d!146863 (=> res!912475 e!775496)))

(assert (=> d!146863 (= res!912475 (is-Nil!32111 newAcc!98))))

(assert (=> d!146863 (= (noDuplicate!2531 newAcc!98) e!775496)))

(declare-fun b!1368864 () Bool)

(declare-fun e!775497 () Bool)

(assert (=> b!1368864 (= e!775496 e!775497)))

(declare-fun res!912476 () Bool)

(assert (=> b!1368864 (=> (not res!912476) (not e!775497))))

(assert (=> b!1368864 (= res!912476 (not (contains!9652 (t!46815 newAcc!98) (h!33319 newAcc!98))))))

(declare-fun b!1368865 () Bool)

(assert (=> b!1368865 (= e!775497 (noDuplicate!2531 (t!46815 newAcc!98)))))

(assert (= (and d!146863 (not res!912475)) b!1368864))

(assert (= (and b!1368864 res!912476) b!1368865))

(declare-fun m!1252769 () Bool)

(assert (=> b!1368864 m!1252769))

(declare-fun m!1252771 () Bool)

(assert (=> b!1368865 m!1252771))

(assert (=> b!1368698 d!146863))

(declare-fun b!1368870 () Bool)

(declare-fun e!775505 () Bool)

(declare-fun e!775506 () Bool)

(assert (=> b!1368870 (= e!775505 e!775506)))

(declare-fun c!127637 () Bool)

(assert (=> b!1368870 (= c!127637 (validKeyInArray!0 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!146873 () Bool)

(declare-fun res!912483 () Bool)

(declare-fun e!775504 () Bool)

(assert (=> d!146873 (=> res!912483 e!775504)))

(assert (=> d!146873 (= res!912483 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45417 a!3861)))))

(assert (=> d!146873 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98) e!775504)))

(declare-fun b!1368871 () Bool)

(declare-fun e!775509 () Bool)

(assert (=> b!1368871 (= e!775509 (contains!9652 newAcc!98 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368872 () Bool)

(declare-fun call!65498 () Bool)

(assert (=> b!1368872 (= e!775506 call!65498)))

(declare-fun b!1368873 () Bool)

(assert (=> b!1368873 (= e!775506 call!65498)))

(declare-fun b!1368874 () Bool)

(assert (=> b!1368874 (= e!775504 e!775505)))

(declare-fun res!912485 () Bool)

(assert (=> b!1368874 (=> (not res!912485) (not e!775505))))

(assert (=> b!1368874 (= res!912485 (not e!775509))))

(declare-fun res!912484 () Bool)

(assert (=> b!1368874 (=> (not res!912484) (not e!775509))))

(assert (=> b!1368874 (= res!912484 (validKeyInArray!0 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65495 () Bool)

(assert (=> bm!65495 (= call!65498 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127637 (Cons!32110 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(assert (= (and d!146873 (not res!912483)) b!1368874))

(assert (= (and b!1368874 res!912484) b!1368871))

(assert (= (and b!1368874 res!912485) b!1368870))

(assert (= (and b!1368870 c!127637) b!1368873))

(assert (= (and b!1368870 (not c!127637)) b!1368872))

(assert (= (or b!1368873 b!1368872) bm!65495))

(declare-fun m!1252773 () Bool)

(assert (=> b!1368870 m!1252773))

(assert (=> b!1368870 m!1252773))

(declare-fun m!1252775 () Bool)

(assert (=> b!1368870 m!1252775))

(assert (=> b!1368871 m!1252773))

(assert (=> b!1368871 m!1252773))

(declare-fun m!1252777 () Bool)

(assert (=> b!1368871 m!1252777))

(assert (=> b!1368874 m!1252773))

(assert (=> b!1368874 m!1252773))

(assert (=> b!1368874 m!1252775))

(assert (=> bm!65495 m!1252773))

(declare-fun m!1252779 () Bool)

(assert (=> bm!65495 m!1252779))

(assert (=> b!1368698 d!146873))

(declare-fun d!146877 () Bool)

(assert (=> d!146877 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602096 () Unit!45167)

(declare-fun choose!80 (array!92893 List!32114 List!32114 (_ BitVec 32)) Unit!45167)

(assert (=> d!146877 (= lt!602096 (choose!80 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146877 (bvslt (size!45417 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146877 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602096)))

(declare-fun bs!39261 () Bool)

(assert (= bs!39261 d!146877))

(assert (=> bs!39261 m!1252633))

(declare-fun m!1252801 () Bool)

(assert (=> bs!39261 m!1252801))

(assert (=> b!1368698 d!146877))

(declare-fun d!146887 () Bool)

(declare-fun lt!602097 () Bool)

(assert (=> d!146887 (= lt!602097 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!727 acc!866)))))

(declare-fun e!775529 () Bool)

(assert (=> d!146887 (= lt!602097 e!775529)))

(declare-fun res!912505 () Bool)

(assert (=> d!146887 (=> (not res!912505) (not e!775529))))

(assert (=> d!146887 (= res!912505 (is-Cons!32110 acc!866))))

(assert (=> d!146887 (= (contains!9652 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602097)))

(declare-fun b!1368899 () Bool)

(declare-fun e!775528 () Bool)

(assert (=> b!1368899 (= e!775529 e!775528)))

(declare-fun res!912504 () Bool)

(assert (=> b!1368899 (=> res!912504 e!775528)))

(assert (=> b!1368899 (= res!912504 (= (h!33319 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368900 () Bool)

(assert (=> b!1368900 (= e!775528 (contains!9652 (t!46815 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146887 res!912505) b!1368899))

(assert (= (and b!1368899 (not res!912504)) b!1368900))

(declare-fun m!1252803 () Bool)

(assert (=> d!146887 m!1252803))

(declare-fun m!1252805 () Bool)

(assert (=> d!146887 m!1252805))

(declare-fun m!1252807 () Bool)

(assert (=> b!1368900 m!1252807))

(assert (=> b!1368699 d!146887))

(declare-fun d!146889 () Bool)

(declare-fun lt!602098 () Bool)

(assert (=> d!146889 (= lt!602098 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!727 acc!866)))))

(declare-fun e!775531 () Bool)

(assert (=> d!146889 (= lt!602098 e!775531)))

(declare-fun res!912507 () Bool)

(assert (=> d!146889 (=> (not res!912507) (not e!775531))))

(assert (=> d!146889 (= res!912507 (is-Cons!32110 acc!866))))

(assert (=> d!146889 (= (contains!9652 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602098)))

(declare-fun b!1368901 () Bool)

(declare-fun e!775530 () Bool)

(assert (=> b!1368901 (= e!775531 e!775530)))

(declare-fun res!912506 () Bool)

(assert (=> b!1368901 (=> res!912506 e!775530)))

(assert (=> b!1368901 (= res!912506 (= (h!33319 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368902 () Bool)

(assert (=> b!1368902 (= e!775530 (contains!9652 (t!46815 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146889 res!912507) b!1368901))

(assert (= (and b!1368901 (not res!912506)) b!1368902))

(assert (=> d!146889 m!1252803))

(declare-fun m!1252809 () Bool)

(assert (=> d!146889 m!1252809))

(declare-fun m!1252811 () Bool)

(assert (=> b!1368902 m!1252811))

(assert (=> b!1368704 d!146889))

(declare-fun d!146891 () Bool)

(assert (=> d!146891 (= (array_inv!33811 a!3861) (bvsge (size!45417 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115778 d!146891))

(declare-fun b!1368935 () Bool)

(declare-fun e!775559 () Bool)

(assert (=> b!1368935 (= e!775559 (subseq!1043 newAcc!98 (t!46815 acc!866)))))

(declare-fun b!1368934 () Bool)

(declare-fun e!775560 () Bool)

(assert (=> b!1368934 (= e!775560 (subseq!1043 (t!46815 newAcc!98) (t!46815 acc!866)))))

(declare-fun d!146893 () Bool)

(declare-fun res!912533 () Bool)

(declare-fun e!775561 () Bool)

(assert (=> d!146893 (=> res!912533 e!775561)))

(assert (=> d!146893 (= res!912533 (is-Nil!32111 newAcc!98))))

(assert (=> d!146893 (= (subseq!1043 newAcc!98 acc!866) e!775561)))

(declare-fun b!1368932 () Bool)

(declare-fun e!775562 () Bool)

(assert (=> b!1368932 (= e!775561 e!775562)))

(declare-fun res!912535 () Bool)

(assert (=> b!1368932 (=> (not res!912535) (not e!775562))))

(assert (=> b!1368932 (= res!912535 (is-Cons!32110 acc!866))))

(declare-fun b!1368933 () Bool)

(assert (=> b!1368933 (= e!775562 e!775559)))

(declare-fun res!912534 () Bool)

(assert (=> b!1368933 (=> res!912534 e!775559)))

(assert (=> b!1368933 (= res!912534 e!775560)))

(declare-fun res!912536 () Bool)

(assert (=> b!1368933 (=> (not res!912536) (not e!775560))))

(assert (=> b!1368933 (= res!912536 (= (h!33319 newAcc!98) (h!33319 acc!866)))))

(assert (= (and d!146893 (not res!912533)) b!1368932))

(assert (= (and b!1368932 res!912535) b!1368933))

(assert (= (and b!1368933 res!912536) b!1368934))

(assert (= (and b!1368933 (not res!912534)) b!1368935))

(declare-fun m!1252841 () Bool)

(assert (=> b!1368935 m!1252841))

(declare-fun m!1252843 () Bool)

(assert (=> b!1368934 m!1252843))

(assert (=> b!1368697 d!146893))

(declare-fun d!146909 () Bool)

(declare-fun res!912537 () Bool)

(declare-fun e!775563 () Bool)

(assert (=> d!146909 (=> res!912537 e!775563)))

(assert (=> d!146909 (= res!912537 (is-Nil!32111 acc!866))))

(assert (=> d!146909 (= (noDuplicate!2531 acc!866) e!775563)))

(declare-fun b!1368936 () Bool)

(declare-fun e!775564 () Bool)

(assert (=> b!1368936 (= e!775563 e!775564)))

(declare-fun res!912538 () Bool)

(assert (=> b!1368936 (=> (not res!912538) (not e!775564))))

(assert (=> b!1368936 (= res!912538 (not (contains!9652 (t!46815 acc!866) (h!33319 acc!866))))))

(declare-fun b!1368937 () Bool)

(assert (=> b!1368937 (= e!775564 (noDuplicate!2531 (t!46815 acc!866)))))

(assert (= (and d!146909 (not res!912537)) b!1368936))

(assert (= (and b!1368936 res!912538) b!1368937))

(declare-fun m!1252845 () Bool)

(assert (=> b!1368936 m!1252845))

(declare-fun m!1252847 () Bool)

(assert (=> b!1368937 m!1252847))

(assert (=> b!1368702 d!146909))

(declare-fun d!146911 () Bool)

(declare-fun lt!602108 () Bool)

(assert (=> d!146911 (= lt!602108 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!727 newAcc!98)))))

(declare-fun e!775566 () Bool)

(assert (=> d!146911 (= lt!602108 e!775566)))

(declare-fun res!912540 () Bool)

(assert (=> d!146911 (=> (not res!912540) (not e!775566))))

(assert (=> d!146911 (= res!912540 (is-Cons!32110 newAcc!98))))

(assert (=> d!146911 (= (contains!9652 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602108)))

(declare-fun b!1368938 () Bool)

(declare-fun e!775565 () Bool)

(assert (=> b!1368938 (= e!775566 e!775565)))

(declare-fun res!912539 () Bool)

(assert (=> b!1368938 (=> res!912539 e!775565)))

(assert (=> b!1368938 (= res!912539 (= (h!33319 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368939 () Bool)

(assert (=> b!1368939 (= e!775565 (contains!9652 (t!46815 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146911 res!912540) b!1368938))

(assert (= (and b!1368938 (not res!912539)) b!1368939))

(assert (=> d!146911 m!1252721))

(declare-fun m!1252849 () Bool)

(assert (=> d!146911 m!1252849))

(declare-fun m!1252851 () Bool)

(assert (=> b!1368939 m!1252851))

(assert (=> b!1368701 d!146911))

(declare-fun b!1368940 () Bool)

(declare-fun e!775568 () Bool)

(declare-fun e!775569 () Bool)

(assert (=> b!1368940 (= e!775568 e!775569)))

(declare-fun c!127642 () Bool)

(assert (=> b!1368940 (= c!127642 (validKeyInArray!0 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!146913 () Bool)

(declare-fun res!912541 () Bool)

(declare-fun e!775567 () Bool)

(assert (=> d!146913 (=> res!912541 e!775567)))

(assert (=> d!146913 (= res!912541 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45417 a!3861)))))

(assert (=> d!146913 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!775567)))

(declare-fun b!1368941 () Bool)

(declare-fun e!775570 () Bool)

(assert (=> b!1368941 (= e!775570 (contains!9652 acc!866 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368942 () Bool)

(declare-fun call!65503 () Bool)

(assert (=> b!1368942 (= e!775569 call!65503)))

(declare-fun b!1368943 () Bool)

(assert (=> b!1368943 (= e!775569 call!65503)))

(declare-fun b!1368944 () Bool)

(assert (=> b!1368944 (= e!775567 e!775568)))

(declare-fun res!912543 () Bool)

(assert (=> b!1368944 (=> (not res!912543) (not e!775568))))

(assert (=> b!1368944 (= res!912543 (not e!775570))))

(declare-fun res!912542 () Bool)

(assert (=> b!1368944 (=> (not res!912542) (not e!775570))))

(assert (=> b!1368944 (= res!912542 (validKeyInArray!0 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65500 () Bool)

(assert (=> bm!65500 (= call!65503 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127642 (Cons!32110 (select (arr!44866 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(assert (= (and d!146913 (not res!912541)) b!1368944))

