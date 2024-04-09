; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115528 () Bool)

(assert start!115528)

(declare-fun b!1366326 () Bool)

(declare-fun e!774411 () Bool)

(declare-fun e!774412 () Bool)

(assert (=> b!1366326 (= e!774411 e!774412)))

(declare-fun res!910029 () Bool)

(assert (=> b!1366326 (=> (not res!910029) (not e!774412))))

(declare-datatypes ((List!32058 0))(
  ( (Nil!32055) (Cons!32054 (h!33263 (_ BitVec 64)) (t!46759 List!32058)) )
))
(declare-fun acc!866 () List!32058)

(declare-datatypes ((array!92772 0))(
  ( (array!92773 (arr!44810 (Array (_ BitVec 32) (_ BitVec 64))) (size!45361 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92772)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92772 (_ BitVec 32) List!32058) Bool)

(assert (=> b!1366326 (= res!910029 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45055 0))(
  ( (Unit!45056) )
))
(declare-fun lt!601498 () Unit!45055)

(declare-fun newAcc!98 () List!32058)

(declare-fun noDuplicateSubseq!174 (List!32058 List!32058) Unit!45055)

(assert (=> b!1366326 (= lt!601498 (noDuplicateSubseq!174 newAcc!98 acc!866))))

(declare-fun b!1366327 () Bool)

(declare-fun res!910024 () Bool)

(assert (=> b!1366327 (=> (not res!910024) (not e!774411))))

(declare-fun contains!9596 (List!32058 (_ BitVec 64)) Bool)

(assert (=> b!1366327 (= res!910024 (not (contains!9596 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366328 () Bool)

(declare-fun res!910026 () Bool)

(assert (=> b!1366328 (=> (not res!910026) (not e!774411))))

(assert (=> b!1366328 (= res!910026 (not (contains!9596 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366329 () Bool)

(declare-fun res!910023 () Bool)

(assert (=> b!1366329 (=> (not res!910023) (not e!774411))))

(assert (=> b!1366329 (= res!910023 (not (contains!9596 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366330 () Bool)

(declare-fun res!910025 () Bool)

(assert (=> b!1366330 (=> (not res!910025) (not e!774412))))

(assert (=> b!1366330 (= res!910025 (not (contains!9596 acc!866 (select (arr!44810 a!3861) from!3239))))))

(declare-fun b!1366331 () Bool)

(declare-fun e!774409 () Bool)

(declare-fun lt!601496 () List!32058)

(declare-fun noDuplicate!2475 (List!32058) Bool)

(assert (=> b!1366331 (= e!774409 (noDuplicate!2475 lt!601496))))

(declare-fun b!1366332 () Bool)

(declare-fun res!910022 () Bool)

(assert (=> b!1366332 (=> (not res!910022) (not e!774412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366332 (= res!910022 (validKeyInArray!0 (select (arr!44810 a!3861) from!3239)))))

(declare-fun res!910028 () Bool)

(assert (=> start!115528 (=> (not res!910028) (not e!774411))))

(assert (=> start!115528 (= res!910028 (and (bvslt (size!45361 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45361 a!3861))))))

(assert (=> start!115528 e!774411))

(declare-fun array_inv!33755 (array!92772) Bool)

(assert (=> start!115528 (array_inv!33755 a!3861)))

(assert (=> start!115528 true))

(declare-fun b!1366333 () Bool)

(declare-fun res!910032 () Bool)

(assert (=> b!1366333 (=> (not res!910032) (not e!774411))))

(assert (=> b!1366333 (= res!910032 (noDuplicate!2475 acc!866))))

(declare-fun b!1366334 () Bool)

(declare-fun res!910021 () Bool)

(assert (=> b!1366334 (=> (not res!910021) (not e!774412))))

(assert (=> b!1366334 (= res!910021 (bvslt from!3239 (size!45361 a!3861)))))

(declare-fun b!1366335 () Bool)

(declare-fun res!910030 () Bool)

(assert (=> b!1366335 (=> (not res!910030) (not e!774411))))

(assert (=> b!1366335 (= res!910030 (not (contains!9596 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366336 () Bool)

(assert (=> b!1366336 (= e!774412 (not e!774409))))

(declare-fun res!910027 () Bool)

(assert (=> b!1366336 (=> (not res!910027) (not e!774409))))

(declare-fun lt!601497 () List!32058)

(declare-fun subseq!987 (List!32058 List!32058) Bool)

(assert (=> b!1366336 (= res!910027 (subseq!987 lt!601497 lt!601496))))

(assert (=> b!1366336 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601497)))

(declare-fun lt!601499 () Unit!45055)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92772 List!32058 List!32058 (_ BitVec 32)) Unit!45055)

(assert (=> b!1366336 (= lt!601499 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601496 lt!601497 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366336 (= lt!601497 (Cons!32054 (select (arr!44810 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366336 (= lt!601496 (Cons!32054 (select (arr!44810 a!3861) from!3239) acc!866))))

(declare-fun b!1366337 () Bool)

(declare-fun res!910031 () Bool)

(assert (=> b!1366337 (=> (not res!910031) (not e!774411))))

(assert (=> b!1366337 (= res!910031 (subseq!987 newAcc!98 acc!866))))

(assert (= (and start!115528 res!910028) b!1366333))

(assert (= (and b!1366333 res!910032) b!1366329))

(assert (= (and b!1366329 res!910023) b!1366328))

(assert (= (and b!1366328 res!910026) b!1366327))

(assert (= (and b!1366327 res!910024) b!1366335))

(assert (= (and b!1366335 res!910030) b!1366337))

(assert (= (and b!1366337 res!910031) b!1366326))

(assert (= (and b!1366326 res!910029) b!1366334))

(assert (= (and b!1366334 res!910021) b!1366332))

(assert (= (and b!1366332 res!910022) b!1366330))

(assert (= (and b!1366330 res!910025) b!1366336))

(assert (= (and b!1366336 res!910027) b!1366331))

(declare-fun m!1250673 () Bool)

(assert (=> b!1366328 m!1250673))

(declare-fun m!1250675 () Bool)

(assert (=> b!1366333 m!1250675))

(declare-fun m!1250677 () Bool)

(assert (=> start!115528 m!1250677))

(declare-fun m!1250679 () Bool)

(assert (=> b!1366335 m!1250679))

(declare-fun m!1250681 () Bool)

(assert (=> b!1366330 m!1250681))

(assert (=> b!1366330 m!1250681))

(declare-fun m!1250683 () Bool)

(assert (=> b!1366330 m!1250683))

(declare-fun m!1250685 () Bool)

(assert (=> b!1366337 m!1250685))

(declare-fun m!1250687 () Bool)

(assert (=> b!1366331 m!1250687))

(declare-fun m!1250689 () Bool)

(assert (=> b!1366327 m!1250689))

(declare-fun m!1250691 () Bool)

(assert (=> b!1366329 m!1250691))

(assert (=> b!1366332 m!1250681))

(assert (=> b!1366332 m!1250681))

(declare-fun m!1250693 () Bool)

(assert (=> b!1366332 m!1250693))

(declare-fun m!1250695 () Bool)

(assert (=> b!1366326 m!1250695))

(declare-fun m!1250697 () Bool)

(assert (=> b!1366326 m!1250697))

(declare-fun m!1250699 () Bool)

(assert (=> b!1366336 m!1250699))

(declare-fun m!1250701 () Bool)

(assert (=> b!1366336 m!1250701))

(declare-fun m!1250703 () Bool)

(assert (=> b!1366336 m!1250703))

(assert (=> b!1366336 m!1250681))

(check-sat (not b!1366329) (not b!1366336) (not b!1366331) (not b!1366333) (not b!1366330) (not b!1366328) (not b!1366332) (not start!115528) (not b!1366335) (not b!1366327) (not b!1366326) (not b!1366337))
(check-sat)
(get-model)

(declare-fun d!146541 () Bool)

(declare-fun res!910077 () Bool)

(declare-fun e!774434 () Bool)

(assert (=> d!146541 (=> res!910077 e!774434)))

(assert (=> d!146541 (= res!910077 (bvsge from!3239 (size!45361 a!3861)))))

(assert (=> d!146541 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!774434)))

(declare-fun b!1366384 () Bool)

(declare-fun e!774436 () Bool)

(declare-fun e!774435 () Bool)

(assert (=> b!1366384 (= e!774436 e!774435)))

(declare-fun c!127597 () Bool)

(assert (=> b!1366384 (= c!127597 (validKeyInArray!0 (select (arr!44810 a!3861) from!3239)))))

(declare-fun b!1366385 () Bool)

(assert (=> b!1366385 (= e!774434 e!774436)))

(declare-fun res!910076 () Bool)

(assert (=> b!1366385 (=> (not res!910076) (not e!774436))))

(declare-fun e!774433 () Bool)

(assert (=> b!1366385 (= res!910076 (not e!774433))))

(declare-fun res!910075 () Bool)

(assert (=> b!1366385 (=> (not res!910075) (not e!774433))))

(assert (=> b!1366385 (= res!910075 (validKeyInArray!0 (select (arr!44810 a!3861) from!3239)))))

(declare-fun b!1366386 () Bool)

(declare-fun call!65458 () Bool)

(assert (=> b!1366386 (= e!774435 call!65458)))

(declare-fun b!1366387 () Bool)

(assert (=> b!1366387 (= e!774433 (contains!9596 acc!866 (select (arr!44810 a!3861) from!3239)))))

(declare-fun bm!65455 () Bool)

(assert (=> bm!65455 (= call!65458 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127597 (Cons!32054 (select (arr!44810 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1366388 () Bool)

(assert (=> b!1366388 (= e!774435 call!65458)))

(assert (= (and d!146541 (not res!910077)) b!1366385))

(assert (= (and b!1366385 res!910075) b!1366387))

(assert (= (and b!1366385 res!910076) b!1366384))

(assert (= (and b!1366384 c!127597) b!1366388))

(assert (= (and b!1366384 (not c!127597)) b!1366386))

(assert (= (or b!1366388 b!1366386) bm!65455))

(assert (=> b!1366384 m!1250681))

(assert (=> b!1366384 m!1250681))

(assert (=> b!1366384 m!1250693))

(assert (=> b!1366385 m!1250681))

(assert (=> b!1366385 m!1250681))

(assert (=> b!1366385 m!1250693))

(assert (=> b!1366387 m!1250681))

(assert (=> b!1366387 m!1250681))

(assert (=> b!1366387 m!1250683))

(assert (=> bm!65455 m!1250681))

(declare-fun m!1250737 () Bool)

(assert (=> bm!65455 m!1250737))

(assert (=> b!1366326 d!146541))

(declare-fun d!146543 () Bool)

(assert (=> d!146543 (noDuplicate!2475 newAcc!98)))

(declare-fun lt!601514 () Unit!45055)

(declare-fun choose!1999 (List!32058 List!32058) Unit!45055)

(assert (=> d!146543 (= lt!601514 (choose!1999 newAcc!98 acc!866))))

(declare-fun e!774453 () Bool)

(assert (=> d!146543 e!774453))

(declare-fun res!910094 () Bool)

(assert (=> d!146543 (=> (not res!910094) (not e!774453))))

(assert (=> d!146543 (= res!910094 (subseq!987 newAcc!98 acc!866))))

(assert (=> d!146543 (= (noDuplicateSubseq!174 newAcc!98 acc!866) lt!601514)))

(declare-fun b!1366405 () Bool)

(assert (=> b!1366405 (= e!774453 (noDuplicate!2475 acc!866))))

(assert (= (and d!146543 res!910094) b!1366405))

(declare-fun m!1250743 () Bool)

(assert (=> d!146543 m!1250743))

(declare-fun m!1250745 () Bool)

(assert (=> d!146543 m!1250745))

(assert (=> d!146543 m!1250685))

(assert (=> b!1366405 m!1250675))

(assert (=> b!1366326 d!146543))

(declare-fun b!1366436 () Bool)

(declare-fun e!774482 () Bool)

(assert (=> b!1366436 (= e!774482 (subseq!987 (t!46759 newAcc!98) (t!46759 acc!866)))))

(declare-fun b!1366437 () Bool)

(declare-fun e!774483 () Bool)

(assert (=> b!1366437 (= e!774483 (subseq!987 newAcc!98 (t!46759 acc!866)))))

(declare-fun b!1366434 () Bool)

(declare-fun e!774485 () Bool)

(declare-fun e!774484 () Bool)

(assert (=> b!1366434 (= e!774485 e!774484)))

(declare-fun res!910125 () Bool)

(assert (=> b!1366434 (=> (not res!910125) (not e!774484))))

(get-info :version)

(assert (=> b!1366434 (= res!910125 ((_ is Cons!32054) acc!866))))

(declare-fun b!1366435 () Bool)

(assert (=> b!1366435 (= e!774484 e!774483)))

(declare-fun res!910124 () Bool)

(assert (=> b!1366435 (=> res!910124 e!774483)))

(assert (=> b!1366435 (= res!910124 e!774482)))

(declare-fun res!910123 () Bool)

(assert (=> b!1366435 (=> (not res!910123) (not e!774482))))

(assert (=> b!1366435 (= res!910123 (= (h!33263 newAcc!98) (h!33263 acc!866)))))

(declare-fun d!146551 () Bool)

(declare-fun res!910126 () Bool)

(assert (=> d!146551 (=> res!910126 e!774485)))

(assert (=> d!146551 (= res!910126 ((_ is Nil!32055) newAcc!98))))

(assert (=> d!146551 (= (subseq!987 newAcc!98 acc!866) e!774485)))

(assert (= (and d!146551 (not res!910126)) b!1366434))

(assert (= (and b!1366434 res!910125) b!1366435))

(assert (= (and b!1366435 res!910123) b!1366436))

(assert (= (and b!1366435 (not res!910124)) b!1366437))

(declare-fun m!1250755 () Bool)

(assert (=> b!1366436 m!1250755))

(declare-fun m!1250757 () Bool)

(assert (=> b!1366437 m!1250757))

(assert (=> b!1366337 d!146551))

(declare-fun d!146557 () Bool)

(assert (=> d!146557 (= (array_inv!33755 a!3861) (bvsge (size!45361 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115528 d!146557))

(declare-fun d!146559 () Bool)

(declare-fun lt!601520 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!719 (List!32058) (InoxSet (_ BitVec 64)))

(assert (=> d!146559 (= lt!601520 (select (content!719 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774507 () Bool)

(assert (=> d!146559 (= lt!601520 e!774507)))

(declare-fun res!910146 () Bool)

(assert (=> d!146559 (=> (not res!910146) (not e!774507))))

(assert (=> d!146559 (= res!910146 ((_ is Cons!32054) newAcc!98))))

(assert (=> d!146559 (= (contains!9596 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601520)))

(declare-fun b!1366460 () Bool)

(declare-fun e!774506 () Bool)

(assert (=> b!1366460 (= e!774507 e!774506)))

(declare-fun res!910145 () Bool)

(assert (=> b!1366460 (=> res!910145 e!774506)))

(assert (=> b!1366460 (= res!910145 (= (h!33263 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366461 () Bool)

(assert (=> b!1366461 (= e!774506 (contains!9596 (t!46759 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146559 res!910146) b!1366460))

(assert (= (and b!1366460 (not res!910145)) b!1366461))

(declare-fun m!1250769 () Bool)

(assert (=> d!146559 m!1250769))

(declare-fun m!1250771 () Bool)

(assert (=> d!146559 m!1250771))

(declare-fun m!1250773 () Bool)

(assert (=> b!1366461 m!1250773))

(assert (=> b!1366327 d!146559))

(declare-fun d!146567 () Bool)

(declare-fun lt!601521 () Bool)

(assert (=> d!146567 (= lt!601521 (select (content!719 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774513 () Bool)

(assert (=> d!146567 (= lt!601521 e!774513)))

(declare-fun res!910152 () Bool)

(assert (=> d!146567 (=> (not res!910152) (not e!774513))))

(assert (=> d!146567 (= res!910152 ((_ is Cons!32054) acc!866))))

(assert (=> d!146567 (= (contains!9596 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601521)))

(declare-fun b!1366466 () Bool)

(declare-fun e!774512 () Bool)

(assert (=> b!1366466 (= e!774513 e!774512)))

(declare-fun res!910151 () Bool)

(assert (=> b!1366466 (=> res!910151 e!774512)))

(assert (=> b!1366466 (= res!910151 (= (h!33263 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366467 () Bool)

(assert (=> b!1366467 (= e!774512 (contains!9596 (t!46759 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146567 res!910152) b!1366466))

(assert (= (and b!1366466 (not res!910151)) b!1366467))

(declare-fun m!1250779 () Bool)

(assert (=> d!146567 m!1250779))

(declare-fun m!1250781 () Bool)

(assert (=> d!146567 m!1250781))

(declare-fun m!1250783 () Bool)

(assert (=> b!1366467 m!1250783))

(assert (=> b!1366328 d!146567))

(declare-fun d!146571 () Bool)

(declare-fun lt!601522 () Bool)

(assert (=> d!146571 (= lt!601522 (select (content!719 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774515 () Bool)

(assert (=> d!146571 (= lt!601522 e!774515)))

(declare-fun res!910154 () Bool)

(assert (=> d!146571 (=> (not res!910154) (not e!774515))))

(assert (=> d!146571 (= res!910154 ((_ is Cons!32054) newAcc!98))))

(assert (=> d!146571 (= (contains!9596 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601522)))

(declare-fun b!1366468 () Bool)

(declare-fun e!774514 () Bool)

(assert (=> b!1366468 (= e!774515 e!774514)))

(declare-fun res!910153 () Bool)

(assert (=> b!1366468 (=> res!910153 e!774514)))

(assert (=> b!1366468 (= res!910153 (= (h!33263 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366469 () Bool)

(assert (=> b!1366469 (= e!774514 (contains!9596 (t!46759 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146571 res!910154) b!1366468))

(assert (= (and b!1366468 (not res!910153)) b!1366469))

(assert (=> d!146571 m!1250769))

(declare-fun m!1250785 () Bool)

(assert (=> d!146571 m!1250785))

(declare-fun m!1250787 () Bool)

(assert (=> b!1366469 m!1250787))

(assert (=> b!1366335 d!146571))

(declare-fun b!1366472 () Bool)

(declare-fun e!774516 () Bool)

(assert (=> b!1366472 (= e!774516 (subseq!987 (t!46759 lt!601497) (t!46759 lt!601496)))))

(declare-fun b!1366473 () Bool)

(declare-fun e!774517 () Bool)

(assert (=> b!1366473 (= e!774517 (subseq!987 lt!601497 (t!46759 lt!601496)))))

(declare-fun b!1366470 () Bool)

(declare-fun e!774519 () Bool)

(declare-fun e!774518 () Bool)

(assert (=> b!1366470 (= e!774519 e!774518)))

(declare-fun res!910157 () Bool)

(assert (=> b!1366470 (=> (not res!910157) (not e!774518))))

(assert (=> b!1366470 (= res!910157 ((_ is Cons!32054) lt!601496))))

(declare-fun b!1366471 () Bool)

(assert (=> b!1366471 (= e!774518 e!774517)))

(declare-fun res!910156 () Bool)

(assert (=> b!1366471 (=> res!910156 e!774517)))

(assert (=> b!1366471 (= res!910156 e!774516)))

(declare-fun res!910155 () Bool)

(assert (=> b!1366471 (=> (not res!910155) (not e!774516))))

(assert (=> b!1366471 (= res!910155 (= (h!33263 lt!601497) (h!33263 lt!601496)))))

(declare-fun d!146573 () Bool)

(declare-fun res!910158 () Bool)

(assert (=> d!146573 (=> res!910158 e!774519)))

(assert (=> d!146573 (= res!910158 ((_ is Nil!32055) lt!601497))))

(assert (=> d!146573 (= (subseq!987 lt!601497 lt!601496) e!774519)))

(assert (= (and d!146573 (not res!910158)) b!1366470))

(assert (= (and b!1366470 res!910157) b!1366471))

(assert (= (and b!1366471 res!910155) b!1366472))

(assert (= (and b!1366471 (not res!910156)) b!1366473))

(declare-fun m!1250789 () Bool)

(assert (=> b!1366472 m!1250789))

(declare-fun m!1250791 () Bool)

(assert (=> b!1366473 m!1250791))

(assert (=> b!1366336 d!146573))

(declare-fun d!146575 () Bool)

(declare-fun res!910164 () Bool)

(declare-fun e!774525 () Bool)

(assert (=> d!146575 (=> res!910164 e!774525)))

(assert (=> d!146575 (= res!910164 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45361 a!3861)))))

(assert (=> d!146575 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601497) e!774525)))

(declare-fun b!1366479 () Bool)

(declare-fun e!774527 () Bool)

(declare-fun e!774526 () Bool)

(assert (=> b!1366479 (= e!774527 e!774526)))

(declare-fun c!127601 () Bool)

(assert (=> b!1366479 (= c!127601 (validKeyInArray!0 (select (arr!44810 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366480 () Bool)

(assert (=> b!1366480 (= e!774525 e!774527)))

(declare-fun res!910163 () Bool)

(assert (=> b!1366480 (=> (not res!910163) (not e!774527))))

(declare-fun e!774524 () Bool)

(assert (=> b!1366480 (= res!910163 (not e!774524))))

(declare-fun res!910162 () Bool)

(assert (=> b!1366480 (=> (not res!910162) (not e!774524))))

(assert (=> b!1366480 (= res!910162 (validKeyInArray!0 (select (arr!44810 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366481 () Bool)

(declare-fun call!65462 () Bool)

(assert (=> b!1366481 (= e!774526 call!65462)))

(declare-fun b!1366482 () Bool)

(assert (=> b!1366482 (= e!774524 (contains!9596 lt!601497 (select (arr!44810 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65459 () Bool)

(assert (=> bm!65459 (= call!65462 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127601 (Cons!32054 (select (arr!44810 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!601497) lt!601497)))))

(declare-fun b!1366483 () Bool)

(assert (=> b!1366483 (= e!774526 call!65462)))

(assert (= (and d!146575 (not res!910164)) b!1366480))

(assert (= (and b!1366480 res!910162) b!1366482))

(assert (= (and b!1366480 res!910163) b!1366479))

(assert (= (and b!1366479 c!127601) b!1366483))

(assert (= (and b!1366479 (not c!127601)) b!1366481))

(assert (= (or b!1366483 b!1366481) bm!65459))

(declare-fun m!1250797 () Bool)

(assert (=> b!1366479 m!1250797))

(assert (=> b!1366479 m!1250797))

(declare-fun m!1250801 () Bool)

(assert (=> b!1366479 m!1250801))

(assert (=> b!1366480 m!1250797))

(assert (=> b!1366480 m!1250797))

(assert (=> b!1366480 m!1250801))

(assert (=> b!1366482 m!1250797))

(assert (=> b!1366482 m!1250797))

(declare-fun m!1250805 () Bool)

(assert (=> b!1366482 m!1250805))

(assert (=> bm!65459 m!1250797))

(declare-fun m!1250807 () Bool)

(assert (=> bm!65459 m!1250807))

(assert (=> b!1366336 d!146575))

(declare-fun d!146579 () Bool)

(assert (=> d!146579 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601497)))

(declare-fun lt!601528 () Unit!45055)

(declare-fun choose!80 (array!92772 List!32058 List!32058 (_ BitVec 32)) Unit!45055)

(assert (=> d!146579 (= lt!601528 (choose!80 a!3861 lt!601496 lt!601497 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146579 (bvslt (size!45361 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146579 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601496 lt!601497 (bvadd #b00000000000000000000000000000001 from!3239)) lt!601528)))

(declare-fun bs!39198 () Bool)

(assert (= bs!39198 d!146579))

(assert (=> bs!39198 m!1250701))

(declare-fun m!1250811 () Bool)

(assert (=> bs!39198 m!1250811))

(assert (=> b!1366336 d!146579))

(declare-fun d!146583 () Bool)

(declare-fun res!910182 () Bool)

(declare-fun e!774548 () Bool)

(assert (=> d!146583 (=> res!910182 e!774548)))

(assert (=> d!146583 (= res!910182 ((_ is Nil!32055) lt!601496))))

(assert (=> d!146583 (= (noDuplicate!2475 lt!601496) e!774548)))

(declare-fun b!1366507 () Bool)

(declare-fun e!774549 () Bool)

(assert (=> b!1366507 (= e!774548 e!774549)))

(declare-fun res!910183 () Bool)

(assert (=> b!1366507 (=> (not res!910183) (not e!774549))))

(assert (=> b!1366507 (= res!910183 (not (contains!9596 (t!46759 lt!601496) (h!33263 lt!601496))))))

(declare-fun b!1366508 () Bool)

(assert (=> b!1366508 (= e!774549 (noDuplicate!2475 (t!46759 lt!601496)))))

(assert (= (and d!146583 (not res!910182)) b!1366507))

(assert (= (and b!1366507 res!910183) b!1366508))

(declare-fun m!1250821 () Bool)

(assert (=> b!1366507 m!1250821))

(declare-fun m!1250823 () Bool)

(assert (=> b!1366508 m!1250823))

(assert (=> b!1366331 d!146583))

(declare-fun d!146587 () Bool)

(assert (=> d!146587 (= (validKeyInArray!0 (select (arr!44810 a!3861) from!3239)) (and (not (= (select (arr!44810 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44810 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1366332 d!146587))

(declare-fun d!146589 () Bool)

(declare-fun res!910186 () Bool)

(declare-fun e!774552 () Bool)

(assert (=> d!146589 (=> res!910186 e!774552)))

(assert (=> d!146589 (= res!910186 ((_ is Nil!32055) acc!866))))

(assert (=> d!146589 (= (noDuplicate!2475 acc!866) e!774552)))

(declare-fun b!1366511 () Bool)

(declare-fun e!774553 () Bool)

(assert (=> b!1366511 (= e!774552 e!774553)))

(declare-fun res!910187 () Bool)

(assert (=> b!1366511 (=> (not res!910187) (not e!774553))))

(assert (=> b!1366511 (= res!910187 (not (contains!9596 (t!46759 acc!866) (h!33263 acc!866))))))

(declare-fun b!1366512 () Bool)

(assert (=> b!1366512 (= e!774553 (noDuplicate!2475 (t!46759 acc!866)))))

(assert (= (and d!146589 (not res!910186)) b!1366511))

(assert (= (and b!1366511 res!910187) b!1366512))

(declare-fun m!1250831 () Bool)

(assert (=> b!1366511 m!1250831))

(declare-fun m!1250833 () Bool)

(assert (=> b!1366512 m!1250833))

(assert (=> b!1366333 d!146589))

(declare-fun d!146593 () Bool)

(declare-fun lt!601533 () Bool)

(assert (=> d!146593 (= lt!601533 (select (content!719 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774557 () Bool)

(assert (=> d!146593 (= lt!601533 e!774557)))

(declare-fun res!910191 () Bool)

(assert (=> d!146593 (=> (not res!910191) (not e!774557))))

(assert (=> d!146593 (= res!910191 ((_ is Cons!32054) acc!866))))

(assert (=> d!146593 (= (contains!9596 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601533)))

(declare-fun b!1366515 () Bool)

(declare-fun e!774556 () Bool)

(assert (=> b!1366515 (= e!774557 e!774556)))

(declare-fun res!910190 () Bool)

(assert (=> b!1366515 (=> res!910190 e!774556)))

(assert (=> b!1366515 (= res!910190 (= (h!33263 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366516 () Bool)

(assert (=> b!1366516 (= e!774556 (contains!9596 (t!46759 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146593 res!910191) b!1366515))

(assert (= (and b!1366515 (not res!910190)) b!1366516))

(assert (=> d!146593 m!1250779))

(declare-fun m!1250839 () Bool)

(assert (=> d!146593 m!1250839))

(declare-fun m!1250841 () Bool)

(assert (=> b!1366516 m!1250841))

(assert (=> b!1366329 d!146593))

(declare-fun lt!601536 () Bool)

(declare-fun d!146597 () Bool)

(assert (=> d!146597 (= lt!601536 (select (content!719 acc!866) (select (arr!44810 a!3861) from!3239)))))

(declare-fun e!774559 () Bool)

(assert (=> d!146597 (= lt!601536 e!774559)))

(declare-fun res!910193 () Bool)

(assert (=> d!146597 (=> (not res!910193) (not e!774559))))

(assert (=> d!146597 (= res!910193 ((_ is Cons!32054) acc!866))))

(assert (=> d!146597 (= (contains!9596 acc!866 (select (arr!44810 a!3861) from!3239)) lt!601536)))

(declare-fun b!1366517 () Bool)

(declare-fun e!774558 () Bool)

(assert (=> b!1366517 (= e!774559 e!774558)))

(declare-fun res!910192 () Bool)

(assert (=> b!1366517 (=> res!910192 e!774558)))

(assert (=> b!1366517 (= res!910192 (= (h!33263 acc!866) (select (arr!44810 a!3861) from!3239)))))

(declare-fun b!1366518 () Bool)

(assert (=> b!1366518 (= e!774558 (contains!9596 (t!46759 acc!866) (select (arr!44810 a!3861) from!3239)))))

(assert (= (and d!146597 res!910193) b!1366517))

(assert (= (and b!1366517 (not res!910192)) b!1366518))

(assert (=> d!146597 m!1250779))

(assert (=> d!146597 m!1250681))

(declare-fun m!1250843 () Bool)

(assert (=> d!146597 m!1250843))

(assert (=> b!1366518 m!1250681))

(declare-fun m!1250845 () Bool)

(assert (=> b!1366518 m!1250845))

(assert (=> b!1366330 d!146597))

(check-sat (not b!1366480) (not d!146579) (not b!1366436) (not b!1366508) (not b!1366467) (not bm!65459) (not b!1366512) (not b!1366518) (not b!1366461) (not d!146567) (not b!1366473) (not b!1366469) (not b!1366507) (not bm!65455) (not d!146571) (not b!1366405) (not d!146559) (not b!1366472) (not d!146543) (not b!1366384) (not b!1366511) (not d!146593) (not b!1366482) (not b!1366516) (not b!1366437) (not b!1366387) (not b!1366385) (not d!146597) (not b!1366479))
(check-sat)
