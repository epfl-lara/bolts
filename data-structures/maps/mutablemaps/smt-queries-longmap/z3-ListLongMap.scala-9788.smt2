; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116248 () Bool)

(assert start!116248)

(declare-fun b!1372192 () Bool)

(declare-fun res!915607 () Bool)

(declare-fun e!777416 () Bool)

(assert (=> b!1372192 (=> (not res!915607) (not e!777416))))

(declare-datatypes ((List!32169 0))(
  ( (Nil!32166) (Cons!32165 (h!33374 (_ BitVec 64)) (t!46870 List!32169)) )
))
(declare-fun newAcc!98 () List!32169)

(declare-fun contains!9707 (List!32169 (_ BitVec 64)) Bool)

(assert (=> b!1372192 (= res!915607 (not (contains!9707 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915615 () Bool)

(assert (=> start!116248 (=> (not res!915615) (not e!777416))))

(declare-datatypes ((array!93027 0))(
  ( (array!93028 (arr!44921 (Array (_ BitVec 32) (_ BitVec 64))) (size!45472 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93027)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116248 (= res!915615 (and (bvslt (size!45472 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45472 a!3861))))))

(assert (=> start!116248 e!777416))

(declare-fun array_inv!33866 (array!93027) Bool)

(assert (=> start!116248 (array_inv!33866 a!3861)))

(assert (=> start!116248 true))

(declare-fun b!1372193 () Bool)

(declare-fun res!915610 () Bool)

(declare-fun e!777417 () Bool)

(assert (=> b!1372193 (=> (not res!915610) (not e!777417))))

(assert (=> b!1372193 (= res!915610 (bvslt from!3239 (size!45472 a!3861)))))

(declare-fun b!1372194 () Bool)

(declare-fun res!915606 () Bool)

(assert (=> b!1372194 (=> (not res!915606) (not e!777417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372194 (= res!915606 (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372195 () Bool)

(assert (=> b!1372195 (= e!777416 e!777417)))

(declare-fun res!915609 () Bool)

(assert (=> b!1372195 (=> (not res!915609) (not e!777417))))

(declare-fun acc!866 () List!32169)

(declare-fun arrayNoDuplicates!0 (array!93027 (_ BitVec 32) List!32169) Bool)

(assert (=> b!1372195 (= res!915609 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45277 0))(
  ( (Unit!45278) )
))
(declare-fun lt!602771 () Unit!45277)

(declare-fun noDuplicateSubseq!285 (List!32169 List!32169) Unit!45277)

(assert (=> b!1372195 (= lt!602771 (noDuplicateSubseq!285 newAcc!98 acc!866))))

(declare-fun b!1372196 () Bool)

(declare-fun res!915611 () Bool)

(assert (=> b!1372196 (=> (not res!915611) (not e!777416))))

(assert (=> b!1372196 (= res!915611 (not (contains!9707 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372197 () Bool)

(declare-fun res!915605 () Bool)

(assert (=> b!1372197 (=> (not res!915605) (not e!777416))))

(declare-fun noDuplicate!2586 (List!32169) Bool)

(assert (=> b!1372197 (= res!915605 (noDuplicate!2586 acc!866))))

(declare-fun b!1372198 () Bool)

(declare-fun res!915614 () Bool)

(assert (=> b!1372198 (=> (not res!915614) (not e!777417))))

(assert (=> b!1372198 (= res!915614 (contains!9707 acc!866 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372199 () Bool)

(declare-fun res!915613 () Bool)

(assert (=> b!1372199 (=> (not res!915613) (not e!777416))))

(assert (=> b!1372199 (= res!915613 (not (contains!9707 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372200 () Bool)

(declare-fun res!915608 () Bool)

(assert (=> b!1372200 (=> (not res!915608) (not e!777416))))

(declare-fun subseq!1098 (List!32169 List!32169) Bool)

(assert (=> b!1372200 (= res!915608 (subseq!1098 newAcc!98 acc!866))))

(declare-fun b!1372201 () Bool)

(assert (=> b!1372201 (= e!777417 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1372202 () Bool)

(declare-fun res!915612 () Bool)

(assert (=> b!1372202 (=> (not res!915612) (not e!777416))))

(assert (=> b!1372202 (= res!915612 (not (contains!9707 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116248 res!915615) b!1372197))

(assert (= (and b!1372197 res!915605) b!1372202))

(assert (= (and b!1372202 res!915612) b!1372196))

(assert (= (and b!1372196 res!915611) b!1372199))

(assert (= (and b!1372199 res!915613) b!1372192))

(assert (= (and b!1372192 res!915607) b!1372200))

(assert (= (and b!1372200 res!915608) b!1372195))

(assert (= (and b!1372195 res!915609) b!1372193))

(assert (= (and b!1372193 res!915610) b!1372194))

(assert (= (and b!1372194 res!915606) b!1372198))

(assert (= (and b!1372198 res!915614) b!1372201))

(declare-fun m!1255713 () Bool)

(assert (=> b!1372196 m!1255713))

(declare-fun m!1255715 () Bool)

(assert (=> b!1372200 m!1255715))

(declare-fun m!1255717 () Bool)

(assert (=> b!1372194 m!1255717))

(assert (=> b!1372194 m!1255717))

(declare-fun m!1255719 () Bool)

(assert (=> b!1372194 m!1255719))

(declare-fun m!1255721 () Bool)

(assert (=> b!1372195 m!1255721))

(declare-fun m!1255723 () Bool)

(assert (=> b!1372195 m!1255723))

(declare-fun m!1255725 () Bool)

(assert (=> b!1372202 m!1255725))

(declare-fun m!1255727 () Bool)

(assert (=> b!1372201 m!1255727))

(declare-fun m!1255729 () Bool)

(assert (=> start!116248 m!1255729))

(declare-fun m!1255731 () Bool)

(assert (=> b!1372197 m!1255731))

(assert (=> b!1372198 m!1255717))

(assert (=> b!1372198 m!1255717))

(declare-fun m!1255733 () Bool)

(assert (=> b!1372198 m!1255733))

(declare-fun m!1255735 () Bool)

(assert (=> b!1372192 m!1255735))

(declare-fun m!1255737 () Bool)

(assert (=> b!1372199 m!1255737))

(check-sat (not b!1372192) (not start!116248) (not b!1372201) (not b!1372200) (not b!1372194) (not b!1372195) (not b!1372199) (not b!1372197) (not b!1372198) (not b!1372196) (not b!1372202))
(check-sat)
(get-model)

(declare-fun d!147713 () Bool)

(declare-fun lt!602777 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!750 (List!32169) (InoxSet (_ BitVec 64)))

(assert (=> d!147713 (= lt!602777 (select (content!750 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777432 () Bool)

(assert (=> d!147713 (= lt!602777 e!777432)))

(declare-fun res!915654 () Bool)

(assert (=> d!147713 (=> (not res!915654) (not e!777432))))

(get-info :version)

(assert (=> d!147713 (= res!915654 ((_ is Cons!32165) newAcc!98))))

(assert (=> d!147713 (= (contains!9707 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602777)))

(declare-fun b!1372240 () Bool)

(declare-fun e!777433 () Bool)

(assert (=> b!1372240 (= e!777432 e!777433)))

(declare-fun res!915653 () Bool)

(assert (=> b!1372240 (=> res!915653 e!777433)))

(assert (=> b!1372240 (= res!915653 (= (h!33374 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372241 () Bool)

(assert (=> b!1372241 (= e!777433 (contains!9707 (t!46870 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147713 res!915654) b!1372240))

(assert (= (and b!1372240 (not res!915653)) b!1372241))

(declare-fun m!1255765 () Bool)

(assert (=> d!147713 m!1255765))

(declare-fun m!1255767 () Bool)

(assert (=> d!147713 m!1255767))

(declare-fun m!1255769 () Bool)

(assert (=> b!1372241 m!1255769))

(assert (=> b!1372199 d!147713))

(declare-fun d!147715 () Bool)

(assert (=> d!147715 (= (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)) (and (not (= (select (arr!44921 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44921 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1372194 d!147715))

(declare-fun b!1372268 () Bool)

(declare-fun e!777456 () Bool)

(assert (=> b!1372268 (= e!777456 (subseq!1098 (t!46870 newAcc!98) (t!46870 acc!866)))))

(declare-fun b!1372267 () Bool)

(declare-fun e!777457 () Bool)

(declare-fun e!777458 () Bool)

(assert (=> b!1372267 (= e!777457 e!777458)))

(declare-fun res!915676 () Bool)

(assert (=> b!1372267 (=> res!915676 e!777458)))

(assert (=> b!1372267 (= res!915676 e!777456)))

(declare-fun res!915678 () Bool)

(assert (=> b!1372267 (=> (not res!915678) (not e!777456))))

(assert (=> b!1372267 (= res!915678 (= (h!33374 newAcc!98) (h!33374 acc!866)))))

(declare-fun b!1372266 () Bool)

(declare-fun e!777459 () Bool)

(assert (=> b!1372266 (= e!777459 e!777457)))

(declare-fun res!915677 () Bool)

(assert (=> b!1372266 (=> (not res!915677) (not e!777457))))

(assert (=> b!1372266 (= res!915677 ((_ is Cons!32165) acc!866))))

(declare-fun d!147719 () Bool)

(declare-fun res!915675 () Bool)

(assert (=> d!147719 (=> res!915675 e!777459)))

(assert (=> d!147719 (= res!915675 ((_ is Nil!32166) newAcc!98))))

(assert (=> d!147719 (= (subseq!1098 newAcc!98 acc!866) e!777459)))

(declare-fun b!1372269 () Bool)

(assert (=> b!1372269 (= e!777458 (subseq!1098 newAcc!98 (t!46870 acc!866)))))

(assert (= (and d!147719 (not res!915675)) b!1372266))

(assert (= (and b!1372266 res!915677) b!1372267))

(assert (= (and b!1372267 res!915678) b!1372268))

(assert (= (and b!1372267 (not res!915676)) b!1372269))

(declare-fun m!1255777 () Bool)

(assert (=> b!1372268 m!1255777))

(declare-fun m!1255779 () Bool)

(assert (=> b!1372269 m!1255779))

(assert (=> b!1372200 d!147719))

(declare-fun lt!602782 () Bool)

(declare-fun d!147727 () Bool)

(assert (=> d!147727 (= lt!602782 (select (content!750 acc!866) (select (arr!44921 a!3861) from!3239)))))

(declare-fun e!777462 () Bool)

(assert (=> d!147727 (= lt!602782 e!777462)))

(declare-fun res!915682 () Bool)

(assert (=> d!147727 (=> (not res!915682) (not e!777462))))

(assert (=> d!147727 (= res!915682 ((_ is Cons!32165) acc!866))))

(assert (=> d!147727 (= (contains!9707 acc!866 (select (arr!44921 a!3861) from!3239)) lt!602782)))

(declare-fun b!1372272 () Bool)

(declare-fun e!777463 () Bool)

(assert (=> b!1372272 (= e!777462 e!777463)))

(declare-fun res!915681 () Bool)

(assert (=> b!1372272 (=> res!915681 e!777463)))

(assert (=> b!1372272 (= res!915681 (= (h!33374 acc!866) (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372273 () Bool)

(assert (=> b!1372273 (= e!777463 (contains!9707 (t!46870 acc!866) (select (arr!44921 a!3861) from!3239)))))

(assert (= (and d!147727 res!915682) b!1372272))

(assert (= (and b!1372272 (not res!915681)) b!1372273))

(declare-fun m!1255787 () Bool)

(assert (=> d!147727 m!1255787))

(assert (=> d!147727 m!1255717))

(declare-fun m!1255789 () Bool)

(assert (=> d!147727 m!1255789))

(assert (=> b!1372273 m!1255717))

(declare-fun m!1255791 () Bool)

(assert (=> b!1372273 m!1255791))

(assert (=> b!1372198 d!147727))

(declare-fun d!147731 () Bool)

(assert (=> d!147731 (= (array_inv!33866 a!3861) (bvsge (size!45472 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116248 d!147731))

(declare-fun d!147733 () Bool)

(declare-fun lt!602783 () Bool)

(assert (=> d!147733 (= lt!602783 (select (content!750 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777464 () Bool)

(assert (=> d!147733 (= lt!602783 e!777464)))

(declare-fun res!915684 () Bool)

(assert (=> d!147733 (=> (not res!915684) (not e!777464))))

(assert (=> d!147733 (= res!915684 ((_ is Cons!32165) acc!866))))

(assert (=> d!147733 (= (contains!9707 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602783)))

(declare-fun b!1372274 () Bool)

(declare-fun e!777465 () Bool)

(assert (=> b!1372274 (= e!777464 e!777465)))

(declare-fun res!915683 () Bool)

(assert (=> b!1372274 (=> res!915683 e!777465)))

(assert (=> b!1372274 (= res!915683 (= (h!33374 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372275 () Bool)

(assert (=> b!1372275 (= e!777465 (contains!9707 (t!46870 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147733 res!915684) b!1372274))

(assert (= (and b!1372274 (not res!915683)) b!1372275))

(assert (=> d!147733 m!1255787))

(declare-fun m!1255793 () Bool)

(assert (=> d!147733 m!1255793))

(declare-fun m!1255795 () Bool)

(assert (=> b!1372275 m!1255795))

(assert (=> b!1372202 d!147733))

(declare-fun d!147735 () Bool)

(declare-fun res!915700 () Bool)

(declare-fun e!777482 () Bool)

(assert (=> d!147735 (=> res!915700 e!777482)))

(assert (=> d!147735 (= res!915700 ((_ is Nil!32166) acc!866))))

(assert (=> d!147735 (= (noDuplicate!2586 acc!866) e!777482)))

(declare-fun b!1372293 () Bool)

(declare-fun e!777483 () Bool)

(assert (=> b!1372293 (= e!777482 e!777483)))

(declare-fun res!915701 () Bool)

(assert (=> b!1372293 (=> (not res!915701) (not e!777483))))

(assert (=> b!1372293 (= res!915701 (not (contains!9707 (t!46870 acc!866) (h!33374 acc!866))))))

(declare-fun b!1372294 () Bool)

(assert (=> b!1372294 (= e!777483 (noDuplicate!2586 (t!46870 acc!866)))))

(assert (= (and d!147735 (not res!915700)) b!1372293))

(assert (= (and b!1372293 res!915701) b!1372294))

(declare-fun m!1255801 () Bool)

(assert (=> b!1372293 m!1255801))

(declare-fun m!1255803 () Bool)

(assert (=> b!1372294 m!1255803))

(assert (=> b!1372197 d!147735))

(declare-fun d!147739 () Bool)

(declare-fun lt!602784 () Bool)

(assert (=> d!147739 (= lt!602784 (select (content!750 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777484 () Bool)

(assert (=> d!147739 (= lt!602784 e!777484)))

(declare-fun res!915703 () Bool)

(assert (=> d!147739 (=> (not res!915703) (not e!777484))))

(assert (=> d!147739 (= res!915703 ((_ is Cons!32165) newAcc!98))))

(assert (=> d!147739 (= (contains!9707 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602784)))

(declare-fun b!1372295 () Bool)

(declare-fun e!777485 () Bool)

(assert (=> b!1372295 (= e!777484 e!777485)))

(declare-fun res!915702 () Bool)

(assert (=> b!1372295 (=> res!915702 e!777485)))

(assert (=> b!1372295 (= res!915702 (= (h!33374 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372296 () Bool)

(assert (=> b!1372296 (= e!777485 (contains!9707 (t!46870 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147739 res!915703) b!1372295))

(assert (= (and b!1372295 (not res!915702)) b!1372296))

(assert (=> d!147739 m!1255765))

(declare-fun m!1255805 () Bool)

(assert (=> d!147739 m!1255805))

(declare-fun m!1255807 () Bool)

(assert (=> b!1372296 m!1255807))

(assert (=> b!1372192 d!147739))

(declare-fun b!1372336 () Bool)

(declare-fun e!777524 () Bool)

(declare-fun call!65591 () Bool)

(assert (=> b!1372336 (= e!777524 call!65591)))

(declare-fun d!147741 () Bool)

(declare-fun res!915737 () Bool)

(declare-fun e!777523 () Bool)

(assert (=> d!147741 (=> res!915737 e!777523)))

(assert (=> d!147741 (= res!915737 (bvsge from!3239 (size!45472 a!3861)))))

(assert (=> d!147741 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777523)))

(declare-fun b!1372337 () Bool)

(declare-fun e!777522 () Bool)

(assert (=> b!1372337 (= e!777522 (contains!9707 acc!866 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372338 () Bool)

(declare-fun e!777525 () Bool)

(assert (=> b!1372338 (= e!777525 e!777524)))

(declare-fun c!127742 () Bool)

(assert (=> b!1372338 (= c!127742 (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372339 () Bool)

(assert (=> b!1372339 (= e!777523 e!777525)))

(declare-fun res!915738 () Bool)

(assert (=> b!1372339 (=> (not res!915738) (not e!777525))))

(assert (=> b!1372339 (= res!915738 (not e!777522))))

(declare-fun res!915739 () Bool)

(assert (=> b!1372339 (=> (not res!915739) (not e!777522))))

(assert (=> b!1372339 (= res!915739 (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372340 () Bool)

(assert (=> b!1372340 (= e!777524 call!65591)))

(declare-fun bm!65588 () Bool)

(assert (=> bm!65588 (= call!65591 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127742 (Cons!32165 (select (arr!44921 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147741 (not res!915737)) b!1372339))

(assert (= (and b!1372339 res!915739) b!1372337))

(assert (= (and b!1372339 res!915738) b!1372338))

(assert (= (and b!1372338 c!127742) b!1372340))

(assert (= (and b!1372338 (not c!127742)) b!1372336))

(assert (= (or b!1372340 b!1372336) bm!65588))

(assert (=> b!1372337 m!1255717))

(assert (=> b!1372337 m!1255717))

(assert (=> b!1372337 m!1255733))

(assert (=> b!1372338 m!1255717))

(assert (=> b!1372338 m!1255717))

(assert (=> b!1372338 m!1255719))

(assert (=> b!1372339 m!1255717))

(assert (=> b!1372339 m!1255717))

(assert (=> b!1372339 m!1255719))

(assert (=> bm!65588 m!1255717))

(declare-fun m!1255841 () Bool)

(assert (=> bm!65588 m!1255841))

(assert (=> b!1372195 d!147741))

(declare-fun d!147765 () Bool)

(assert (=> d!147765 (noDuplicate!2586 newAcc!98)))

(declare-fun lt!602797 () Unit!45277)

(declare-fun choose!2027 (List!32169 List!32169) Unit!45277)

(assert (=> d!147765 (= lt!602797 (choose!2027 newAcc!98 acc!866))))

(declare-fun e!777539 () Bool)

(assert (=> d!147765 e!777539))

(declare-fun res!915751 () Bool)

(assert (=> d!147765 (=> (not res!915751) (not e!777539))))

(assert (=> d!147765 (= res!915751 (subseq!1098 newAcc!98 acc!866))))

(assert (=> d!147765 (= (noDuplicateSubseq!285 newAcc!98 acc!866) lt!602797)))

(declare-fun b!1372356 () Bool)

(assert (=> b!1372356 (= e!777539 (noDuplicate!2586 acc!866))))

(assert (= (and d!147765 res!915751) b!1372356))

(declare-fun m!1255847 () Bool)

(assert (=> d!147765 m!1255847))

(declare-fun m!1255849 () Bool)

(assert (=> d!147765 m!1255849))

(assert (=> d!147765 m!1255715))

(assert (=> b!1372356 m!1255731))

(assert (=> b!1372195 d!147765))

(declare-fun b!1372361 () Bool)

(declare-fun e!777546 () Bool)

(declare-fun call!65594 () Bool)

(assert (=> b!1372361 (= e!777546 call!65594)))

(declare-fun d!147769 () Bool)

(declare-fun res!915756 () Bool)

(declare-fun e!777545 () Bool)

(assert (=> d!147769 (=> res!915756 e!777545)))

(assert (=> d!147769 (= res!915756 (bvsge from!3239 (size!45472 a!3861)))))

(assert (=> d!147769 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777545)))

(declare-fun b!1372362 () Bool)

(declare-fun e!777544 () Bool)

(assert (=> b!1372362 (= e!777544 (contains!9707 newAcc!98 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372363 () Bool)

(declare-fun e!777547 () Bool)

(assert (=> b!1372363 (= e!777547 e!777546)))

(declare-fun c!127745 () Bool)

(assert (=> b!1372363 (= c!127745 (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372364 () Bool)

(assert (=> b!1372364 (= e!777545 e!777547)))

(declare-fun res!915757 () Bool)

(assert (=> b!1372364 (=> (not res!915757) (not e!777547))))

(assert (=> b!1372364 (= res!915757 (not e!777544))))

(declare-fun res!915758 () Bool)

(assert (=> b!1372364 (=> (not res!915758) (not e!777544))))

(assert (=> b!1372364 (= res!915758 (validKeyInArray!0 (select (arr!44921 a!3861) from!3239)))))

(declare-fun b!1372365 () Bool)

(assert (=> b!1372365 (= e!777546 call!65594)))

(declare-fun bm!65591 () Bool)

(assert (=> bm!65591 (= call!65594 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127745 (Cons!32165 (select (arr!44921 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147769 (not res!915756)) b!1372364))

(assert (= (and b!1372364 res!915758) b!1372362))

(assert (= (and b!1372364 res!915757) b!1372363))

(assert (= (and b!1372363 c!127745) b!1372365))

(assert (= (and b!1372363 (not c!127745)) b!1372361))

(assert (= (or b!1372365 b!1372361) bm!65591))

(assert (=> b!1372362 m!1255717))

(assert (=> b!1372362 m!1255717))

(declare-fun m!1255851 () Bool)

(assert (=> b!1372362 m!1255851))

(assert (=> b!1372363 m!1255717))

(assert (=> b!1372363 m!1255717))

(assert (=> b!1372363 m!1255719))

(assert (=> b!1372364 m!1255717))

(assert (=> b!1372364 m!1255717))

(assert (=> b!1372364 m!1255719))

(assert (=> bm!65591 m!1255717))

(declare-fun m!1255853 () Bool)

(assert (=> bm!65591 m!1255853))

(assert (=> b!1372201 d!147769))

(declare-fun d!147771 () Bool)

(declare-fun lt!602798 () Bool)

(assert (=> d!147771 (= lt!602798 (select (content!750 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777554 () Bool)

(assert (=> d!147771 (= lt!602798 e!777554)))

(declare-fun res!915765 () Bool)

(assert (=> d!147771 (=> (not res!915765) (not e!777554))))

(assert (=> d!147771 (= res!915765 ((_ is Cons!32165) acc!866))))

(assert (=> d!147771 (= (contains!9707 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602798)))

(declare-fun b!1372373 () Bool)

(declare-fun e!777555 () Bool)

(assert (=> b!1372373 (= e!777554 e!777555)))

(declare-fun res!915764 () Bool)

(assert (=> b!1372373 (=> res!915764 e!777555)))

(assert (=> b!1372373 (= res!915764 (= (h!33374 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372374 () Bool)

(assert (=> b!1372374 (= e!777555 (contains!9707 (t!46870 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147771 res!915765) b!1372373))

(assert (= (and b!1372373 (not res!915764)) b!1372374))

(assert (=> d!147771 m!1255787))

(declare-fun m!1255861 () Bool)

(assert (=> d!147771 m!1255861))

(declare-fun m!1255863 () Bool)

(assert (=> b!1372374 m!1255863))

(assert (=> b!1372196 d!147771))

(check-sat (not b!1372364) (not b!1372356) (not d!147727) (not b!1372338) (not b!1372374) (not d!147739) (not d!147771) (not d!147713) (not b!1372337) (not bm!65591) (not b!1372363) (not b!1372273) (not b!1372293) (not bm!65588) (not b!1372362) (not b!1372296) (not b!1372339) (not b!1372269) (not b!1372275) (not b!1372268) (not b!1372294) (not d!147765) (not b!1372241) (not d!147733))
(check-sat)
