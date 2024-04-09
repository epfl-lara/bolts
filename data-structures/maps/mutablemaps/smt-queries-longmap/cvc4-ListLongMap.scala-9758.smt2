; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115668 () Bool)

(assert start!115668)

(declare-fun b!1367395 () Bool)

(declare-fun e!774946 () Bool)

(declare-fun e!774945 () Bool)

(assert (=> b!1367395 (= e!774946 e!774945)))

(declare-fun res!911048 () Bool)

(assert (=> b!1367395 (=> (not res!911048) (not e!774945))))

(declare-datatypes ((array!92822 0))(
  ( (array!92823 (arr!44832 (Array (_ BitVec 32) (_ BitVec 64))) (size!45383 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92822)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32080 0))(
  ( (Nil!32077) (Cons!32076 (h!33285 (_ BitVec 64)) (t!46781 List!32080)) )
))
(declare-fun acc!866 () List!32080)

(declare-fun arrayNoDuplicates!0 (array!92822 (_ BitVec 32) List!32080) Bool)

(assert (=> b!1367395 (= res!911048 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45099 0))(
  ( (Unit!45100) )
))
(declare-fun lt!601826 () Unit!45099)

(declare-fun newAcc!98 () List!32080)

(declare-fun noDuplicateSubseq!196 (List!32080 List!32080) Unit!45099)

(assert (=> b!1367395 (= lt!601826 (noDuplicateSubseq!196 newAcc!98 acc!866))))

(declare-fun b!1367396 () Bool)

(declare-fun res!911049 () Bool)

(assert (=> b!1367396 (=> (not res!911049) (not e!774945))))

(declare-fun contains!9618 (List!32080 (_ BitVec 64)) Bool)

(assert (=> b!1367396 (= res!911049 (contains!9618 acc!866 (select (arr!44832 a!3861) from!3239)))))

(declare-fun b!1367397 () Bool)

(declare-fun res!911044 () Bool)

(assert (=> b!1367397 (=> (not res!911044) (not e!774946))))

(assert (=> b!1367397 (= res!911044 (not (contains!9618 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367398 () Bool)

(declare-fun res!911052 () Bool)

(assert (=> b!1367398 (=> (not res!911052) (not e!774945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367398 (= res!911052 (validKeyInArray!0 (select (arr!44832 a!3861) from!3239)))))

(declare-fun b!1367399 () Bool)

(declare-fun res!911045 () Bool)

(assert (=> b!1367399 (=> (not res!911045) (not e!774946))))

(declare-fun subseq!1009 (List!32080 List!32080) Bool)

(assert (=> b!1367399 (= res!911045 (subseq!1009 newAcc!98 acc!866))))

(declare-fun b!1367401 () Bool)

(declare-fun res!911043 () Bool)

(assert (=> b!1367401 (=> (not res!911043) (not e!774946))))

(declare-fun noDuplicate!2497 (List!32080) Bool)

(assert (=> b!1367401 (= res!911043 (noDuplicate!2497 acc!866))))

(declare-fun res!911050 () Bool)

(assert (=> start!115668 (=> (not res!911050) (not e!774946))))

(assert (=> start!115668 (= res!911050 (and (bvslt (size!45383 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45383 a!3861))))))

(assert (=> start!115668 e!774946))

(declare-fun array_inv!33777 (array!92822) Bool)

(assert (=> start!115668 (array_inv!33777 a!3861)))

(assert (=> start!115668 true))

(declare-fun b!1367400 () Bool)

(declare-fun res!911046 () Bool)

(assert (=> b!1367400 (=> (not res!911046) (not e!774946))))

(assert (=> b!1367400 (= res!911046 (not (contains!9618 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367402 () Bool)

(declare-fun res!911047 () Bool)

(assert (=> b!1367402 (=> (not res!911047) (not e!774946))))

(assert (=> b!1367402 (= res!911047 (not (contains!9618 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367403 () Bool)

(declare-fun res!911042 () Bool)

(assert (=> b!1367403 (=> (not res!911042) (not e!774945))))

(assert (=> b!1367403 (= res!911042 (bvslt from!3239 (size!45383 a!3861)))))

(declare-fun b!1367404 () Bool)

(assert (=> b!1367404 (= e!774945 (not (noDuplicate!2497 newAcc!98)))))

(declare-fun b!1367405 () Bool)

(declare-fun res!911051 () Bool)

(assert (=> b!1367405 (=> (not res!911051) (not e!774946))))

(assert (=> b!1367405 (= res!911051 (not (contains!9618 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115668 res!911050) b!1367401))

(assert (= (and b!1367401 res!911043) b!1367397))

(assert (= (and b!1367397 res!911044) b!1367405))

(assert (= (and b!1367405 res!911051) b!1367402))

(assert (= (and b!1367402 res!911047) b!1367400))

(assert (= (and b!1367400 res!911046) b!1367399))

(assert (= (and b!1367399 res!911045) b!1367395))

(assert (= (and b!1367395 res!911048) b!1367403))

(assert (= (and b!1367403 res!911042) b!1367398))

(assert (= (and b!1367398 res!911052) b!1367396))

(assert (= (and b!1367396 res!911049) b!1367404))

(declare-fun m!1251647 () Bool)

(assert (=> b!1367402 m!1251647))

(declare-fun m!1251649 () Bool)

(assert (=> b!1367401 m!1251649))

(declare-fun m!1251651 () Bool)

(assert (=> start!115668 m!1251651))

(declare-fun m!1251653 () Bool)

(assert (=> b!1367399 m!1251653))

(declare-fun m!1251655 () Bool)

(assert (=> b!1367405 m!1251655))

(declare-fun m!1251657 () Bool)

(assert (=> b!1367404 m!1251657))

(declare-fun m!1251659 () Bool)

(assert (=> b!1367400 m!1251659))

(declare-fun m!1251661 () Bool)

(assert (=> b!1367395 m!1251661))

(declare-fun m!1251663 () Bool)

(assert (=> b!1367395 m!1251663))

(declare-fun m!1251665 () Bool)

(assert (=> b!1367398 m!1251665))

(assert (=> b!1367398 m!1251665))

(declare-fun m!1251667 () Bool)

(assert (=> b!1367398 m!1251667))

(assert (=> b!1367396 m!1251665))

(assert (=> b!1367396 m!1251665))

(declare-fun m!1251669 () Bool)

(assert (=> b!1367396 m!1251669))

(declare-fun m!1251671 () Bool)

(assert (=> b!1367397 m!1251671))

(push 1)

(assert (not b!1367399))

(assert (not b!1367397))

(assert (not b!1367402))

(assert (not b!1367398))

(assert (not b!1367405))

(assert (not b!1367400))

(assert (not b!1367401))

(assert (not b!1367404))

(assert (not start!115668))

(assert (not b!1367396))

(assert (not b!1367395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146743 () Bool)

(declare-fun lt!601833 () Bool)

(declare-fun content!724 (List!32080) (Set (_ BitVec 64)))

(assert (=> d!146743 (= lt!601833 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!724 acc!866)))))

(declare-fun e!774977 () Bool)

(assert (=> d!146743 (= lt!601833 e!774977)))

(declare-fun res!911084 () Bool)

(assert (=> d!146743 (=> (not res!911084) (not e!774977))))

(assert (=> d!146743 (= res!911084 (is-Cons!32076 acc!866))))

(assert (=> d!146743 (= (contains!9618 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601833)))

(declare-fun b!1367436 () Bool)

(declare-fun e!774978 () Bool)

(assert (=> b!1367436 (= e!774977 e!774978)))

(declare-fun res!911083 () Bool)

(assert (=> b!1367436 (=> res!911083 e!774978)))

(assert (=> b!1367436 (= res!911083 (= (h!33285 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367437 () Bool)

(assert (=> b!1367437 (= e!774978 (contains!9618 (t!46781 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146743 res!911084) b!1367436))

(assert (= (and b!1367436 (not res!911083)) b!1367437))

(declare-fun m!1251689 () Bool)

(assert (=> d!146743 m!1251689))

(declare-fun m!1251692 () Bool)

(assert (=> d!146743 m!1251692))

(declare-fun m!1251695 () Bool)

(assert (=> b!1367437 m!1251695))

(assert (=> b!1367397 d!146743))

(declare-fun d!146747 () Bool)

(declare-fun lt!601834 () Bool)

(assert (=> d!146747 (= lt!601834 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!724 newAcc!98)))))

(declare-fun e!774981 () Bool)

(assert (=> d!146747 (= lt!601834 e!774981)))

(declare-fun res!911088 () Bool)

(assert (=> d!146747 (=> (not res!911088) (not e!774981))))

(assert (=> d!146747 (= res!911088 (is-Cons!32076 newAcc!98))))

(assert (=> d!146747 (= (contains!9618 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601834)))

(declare-fun b!1367440 () Bool)

(declare-fun e!774982 () Bool)

(assert (=> b!1367440 (= e!774981 e!774982)))

(declare-fun res!911087 () Bool)

(assert (=> b!1367440 (=> res!911087 e!774982)))

(assert (=> b!1367440 (= res!911087 (= (h!33285 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367441 () Bool)

(assert (=> b!1367441 (= e!774982 (contains!9618 (t!46781 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146747 res!911088) b!1367440))

(assert (= (and b!1367440 (not res!911087)) b!1367441))

(declare-fun m!1251699 () Bool)

(assert (=> d!146747 m!1251699))

(declare-fun m!1251701 () Bool)

(assert (=> d!146747 m!1251701))

(declare-fun m!1251703 () Bool)

(assert (=> b!1367441 m!1251703))

(assert (=> b!1367402 d!146747))

(declare-fun d!146751 () Bool)

(assert (=> d!146751 (= (array_inv!33777 a!3861) (bvsge (size!45383 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115668 d!146751))

(declare-fun d!146753 () Bool)

(declare-fun lt!601835 () Bool)

(assert (=> d!146753 (= lt!601835 (member (select (arr!44832 a!3861) from!3239) (content!724 acc!866)))))

(declare-fun e!774989 () Bool)

(assert (=> d!146753 (= lt!601835 e!774989)))

(declare-fun res!911094 () Bool)

(assert (=> d!146753 (=> (not res!911094) (not e!774989))))

(assert (=> d!146753 (= res!911094 (is-Cons!32076 acc!866))))

(assert (=> d!146753 (= (contains!9618 acc!866 (select (arr!44832 a!3861) from!3239)) lt!601835)))

(declare-fun b!1367450 () Bool)

(declare-fun e!774990 () Bool)

(assert (=> b!1367450 (= e!774989 e!774990)))

(declare-fun res!911093 () Bool)

(assert (=> b!1367450 (=> res!911093 e!774990)))

(assert (=> b!1367450 (= res!911093 (= (h!33285 acc!866) (select (arr!44832 a!3861) from!3239)))))

(declare-fun b!1367451 () Bool)

(assert (=> b!1367451 (= e!774990 (contains!9618 (t!46781 acc!866) (select (arr!44832 a!3861) from!3239)))))

(assert (= (and d!146753 res!911094) b!1367450))

(assert (= (and b!1367450 (not res!911093)) b!1367451))

(assert (=> d!146753 m!1251689))

(assert (=> d!146753 m!1251665))

(declare-fun m!1251705 () Bool)

(assert (=> d!146753 m!1251705))

(assert (=> b!1367451 m!1251665))

(declare-fun m!1251707 () Bool)

(assert (=> b!1367451 m!1251707))

(assert (=> b!1367396 d!146753))

(declare-fun d!146755 () Bool)

(assert (=> d!146755 (= (validKeyInArray!0 (select (arr!44832 a!3861) from!3239)) (and (not (= (select (arr!44832 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44832 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1367398 d!146755))

(declare-fun d!146757 () Bool)

(declare-fun lt!601836 () Bool)

(assert (=> d!146757 (= lt!601836 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!724 acc!866)))))

(declare-fun e!774997 () Bool)

(assert (=> d!146757 (= lt!601836 e!774997)))

(declare-fun res!911102 () Bool)

(assert (=> d!146757 (=> (not res!911102) (not e!774997))))

(assert (=> d!146757 (= res!911102 (is-Cons!32076 acc!866))))

(assert (=> d!146757 (= (contains!9618 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601836)))

(declare-fun b!1367458 () Bool)

(declare-fun e!774998 () Bool)

(assert (=> b!1367458 (= e!774997 e!774998)))

(declare-fun res!911101 () Bool)

(assert (=> b!1367458 (=> res!911101 e!774998)))

(assert (=> b!1367458 (= res!911101 (= (h!33285 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367459 () Bool)

(assert (=> b!1367459 (= e!774998 (contains!9618 (t!46781 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146757 res!911102) b!1367458))

(assert (= (and b!1367458 (not res!911101)) b!1367459))

(assert (=> d!146757 m!1251689))

(declare-fun m!1251713 () Bool)

(assert (=> d!146757 m!1251713))

(declare-fun m!1251715 () Bool)

(assert (=> b!1367459 m!1251715))

(assert (=> b!1367405 d!146757))

(declare-fun b!1367487 () Bool)

(declare-fun e!775024 () Bool)

(assert (=> b!1367487 (= e!775024 (subseq!1009 (t!46781 newAcc!98) (t!46781 acc!866)))))

(declare-fun b!1367485 () Bool)

(declare-fun e!775022 () Bool)

(declare-fun e!775023 () Bool)

(assert (=> b!1367485 (= e!775022 e!775023)))

(declare-fun res!911124 () Bool)

(assert (=> b!1367485 (=> (not res!911124) (not e!775023))))

(assert (=> b!1367485 (= res!911124 (is-Cons!32076 acc!866))))

(declare-fun d!146761 () Bool)

(declare-fun res!911122 () Bool)

(assert (=> d!146761 (=> res!911122 e!775022)))

(assert (=> d!146761 (= res!911122 (is-Nil!32077 newAcc!98))))

(assert (=> d!146761 (= (subseq!1009 newAcc!98 acc!866) e!775022)))

(declare-fun b!1367486 () Bool)

(declare-fun e!775021 () Bool)

(assert (=> b!1367486 (= e!775023 e!775021)))

(declare-fun res!911125 () Bool)

(assert (=> b!1367486 (=> res!911125 e!775021)))

(assert (=> b!1367486 (= res!911125 e!775024)))

(declare-fun res!911123 () Bool)

(assert (=> b!1367486 (=> (not res!911123) (not e!775024))))

(assert (=> b!1367486 (= res!911123 (= (h!33285 newAcc!98) (h!33285 acc!866)))))

(declare-fun b!1367488 () Bool)

(assert (=> b!1367488 (= e!775021 (subseq!1009 newAcc!98 (t!46781 acc!866)))))

(assert (= (and d!146761 (not res!911122)) b!1367485))

(assert (= (and b!1367485 res!911124) b!1367486))

(assert (= (and b!1367486 res!911123) b!1367487))

(assert (= (and b!1367486 (not res!911125)) b!1367488))

(declare-fun m!1251719 () Bool)

(assert (=> b!1367487 m!1251719))

(declare-fun m!1251723 () Bool)

(assert (=> b!1367488 m!1251723))

(assert (=> b!1367399 d!146761))

(declare-fun d!146765 () Bool)

(declare-fun res!911136 () Bool)

(declare-fun e!775036 () Bool)

(assert (=> d!146765 (=> res!911136 e!775036)))

(assert (=> d!146765 (= res!911136 (is-Nil!32077 newAcc!98))))

