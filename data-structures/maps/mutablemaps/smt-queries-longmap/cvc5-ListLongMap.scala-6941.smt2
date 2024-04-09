; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87430 () Bool)

(assert start!87430)

(declare-fun b!1012562 () Bool)

(declare-fun res!680143 () Bool)

(declare-fun e!569653 () Bool)

(assert (=> b!1012562 (=> (not res!680143) (not e!569653))))

(declare-datatypes ((B!1352 0))(
  ( (B!1353 (val!11760 Int)) )
))
(declare-datatypes ((tuple2!15156 0))(
  ( (tuple2!15157 (_1!7588 (_ BitVec 64)) (_2!7588 B!1352)) )
))
(declare-datatypes ((List!21481 0))(
  ( (Nil!21478) (Cons!21477 (h!22675 tuple2!15156) (t!30490 List!21481)) )
))
(declare-fun l!412 () List!21481)

(declare-fun value!115 () B!1352)

(declare-datatypes ((List!21482 0))(
  ( (Nil!21479) (Cons!21478 (h!22676 (_ BitVec 64)) (t!30491 List!21482)) )
))
(declare-fun isEmpty!799 (List!21482) Bool)

(declare-fun getKeysOf!22 (List!21481 B!1352) List!21482)

(assert (=> b!1012562 (= res!680143 (not (isEmpty!799 (getKeysOf!22 (t!30490 l!412) value!115))))))

(declare-fun b!1012563 () Bool)

(declare-fun isStrictlySorted!536 (List!21481) Bool)

(assert (=> b!1012563 (= e!569653 (not (isStrictlySorted!536 (t!30490 l!412))))))

(declare-fun b!1012564 () Bool)

(declare-fun e!569654 () Bool)

(declare-fun tp_is_empty!23419 () Bool)

(declare-fun tp!70320 () Bool)

(assert (=> b!1012564 (= e!569654 (and tp_is_empty!23419 tp!70320))))

(declare-fun b!1012561 () Bool)

(declare-fun res!680141 () Bool)

(assert (=> b!1012561 (=> (not res!680141) (not e!569653))))

(assert (=> b!1012561 (= res!680141 (and (not (= (_2!7588 (h!22675 l!412)) value!115)) (is-Cons!21477 l!412)))))

(declare-fun res!680142 () Bool)

(assert (=> start!87430 (=> (not res!680142) (not e!569653))))

(assert (=> start!87430 (= res!680142 (isStrictlySorted!536 l!412))))

(assert (=> start!87430 e!569653))

(assert (=> start!87430 e!569654))

(assert (=> start!87430 tp_is_empty!23419))

(assert (= (and start!87430 res!680142) b!1012561))

(assert (= (and b!1012561 res!680141) b!1012562))

(assert (= (and b!1012562 res!680143) b!1012563))

(assert (= (and start!87430 (is-Cons!21477 l!412)) b!1012564))

(declare-fun m!936165 () Bool)

(assert (=> b!1012562 m!936165))

(assert (=> b!1012562 m!936165))

(declare-fun m!936167 () Bool)

(assert (=> b!1012562 m!936167))

(declare-fun m!936169 () Bool)

(assert (=> b!1012563 m!936169))

(declare-fun m!936171 () Bool)

(assert (=> start!87430 m!936171))

(push 1)

(assert (not b!1012562))

(assert tp_is_empty!23419)

(assert (not b!1012563))

(assert (not start!87430))

(assert (not b!1012564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120293 () Bool)

(assert (=> d!120293 (= (isEmpty!799 (getKeysOf!22 (t!30490 l!412) value!115)) (is-Nil!21479 (getKeysOf!22 (t!30490 l!412) value!115)))))

(assert (=> b!1012562 d!120293))

(declare-fun b!1012646 () Bool)

(assert (=> b!1012646 true))

(assert (=> b!1012646 true))

(assert (=> b!1012646 true))

(declare-fun bs!28829 () Bool)

(declare-fun b!1012647 () Bool)

(assert (= bs!28829 (and b!1012647 b!1012646)))

(declare-fun lambda!396 () Int)

(declare-fun lambda!393 () Int)

(declare-fun lt!447647 () tuple2!15156)

(declare-fun lt!447648 () List!21481)

(declare-fun lt!447640 () List!21481)

(declare-fun lt!447643 () tuple2!15156)

(assert (=> bs!28829 (= (= (Cons!21477 lt!447647 lt!447648) (Cons!21477 lt!447643 lt!447640)) (= lambda!396 lambda!393))))

(assert (=> b!1012647 true))

(assert (=> b!1012647 true))

(assert (=> b!1012647 true))

(declare-fun bs!28832 () Bool)

(declare-fun d!120295 () Bool)

(assert (= bs!28832 (and d!120295 b!1012646)))

(declare-fun lambda!399 () Int)

(assert (=> bs!28832 (= (= (t!30490 l!412) (Cons!21477 lt!447643 lt!447640)) (= lambda!399 lambda!393))))

(declare-fun bs!28833 () Bool)

(assert (= bs!28833 (and d!120295 b!1012647)))

(assert (=> bs!28833 (= (= (t!30490 l!412) (Cons!21477 lt!447647 lt!447648)) (= lambda!399 lambda!396))))

(assert (=> d!120295 true))

(assert (=> d!120295 true))

(declare-fun lt!447641 () List!21482)

(declare-fun bm!42575 () Bool)

(declare-fun lt!447649 () List!21482)

(declare-datatypes ((Unit!33036 0))(
  ( (Unit!33037) )
))
(declare-fun call!42580 () Unit!33036)

(declare-fun c!102290 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!16 (List!21481 List!21482 B!1352 tuple2!15156) Unit!33036)

(assert (=> bm!42575 (= call!42580 (lemmaForallGetValueByKeySameWithASmallerHead!16 (ite c!102290 lt!447640 lt!447648) (ite c!102290 lt!447641 lt!447649) value!115 (ite c!102290 lt!447643 lt!447647)))))

(declare-fun b!1012645 () Bool)

(declare-fun lt!447644 () Unit!33036)

(declare-fun e!569700 () Unit!33036)

(assert (=> b!1012645 (= lt!447644 e!569700)))

(declare-fun c!102289 () Bool)

(declare-fun call!42578 () Bool)

(assert (=> b!1012645 (= c!102289 (not call!42578))))

(declare-fun lt!447645 () List!21482)

(declare-fun call!42579 () List!21482)

(assert (=> b!1012645 (= lt!447645 call!42579)))

(declare-fun e!569701 () List!21482)

(assert (=> b!1012645 (= e!569701 call!42579)))

(declare-fun bm!42576 () Bool)

(assert (=> bm!42576 (= call!42578 (isEmpty!799 call!42579))))

(declare-fun lt!447651 () List!21482)

(declare-fun forall!219 (List!21482 Int) Bool)

(assert (=> d!120295 (forall!219 lt!447651 lambda!399)))

(declare-fun e!569699 () List!21482)

(assert (=> d!120295 (= lt!447651 e!569699)))

(assert (=> d!120295 (= c!102290 (and (is-Cons!21477 (t!30490 l!412)) (= (_2!7588 (h!22675 (t!30490 l!412))) value!115)))))

(assert (=> d!120295 (isStrictlySorted!536 (t!30490 l!412))))

(assert (=> d!120295 (= (getKeysOf!22 (t!30490 l!412) value!115) lt!447651)))

(declare-fun call!42581 () Bool)

(assert (=> b!1012646 call!42581))

(declare-fun lt!447646 () Unit!33036)

(assert (=> b!1012646 (= lt!447646 call!42580)))

(assert (=> b!1012646 (= lt!447643 (h!22675 (t!30490 l!412)))))

(assert (=> b!1012646 (= lt!447641 call!42579)))

(assert (=> b!1012646 (= lt!447640 (t!30490 (t!30490 l!412)))))

(declare-fun e!569702 () Unit!33036)

(assert (=> b!1012646 (= e!569702 lt!447646)))

(declare-fun lt!447650 () Unit!33036)

(assert (=> b!1012647 (= e!569700 lt!447650)))

(assert (=> b!1012647 (= lt!447648 (t!30490 (t!30490 l!412)))))

(assert (=> b!1012647 (= lt!447649 call!42579)))

(assert (=> b!1012647 (= lt!447647 (h!22675 (t!30490 l!412)))))

(assert (=> b!1012647 (= lt!447650 call!42580)))

(assert (=> b!1012647 call!42581))

(declare-fun b!1012648 () Bool)

(declare-fun Unit!33044 () Unit!33036)

(assert (=> b!1012648 (= e!569702 Unit!33044)))

(declare-fun b!1012649 () Bool)

(assert (=> b!1012649 (= e!569701 Nil!21479)))

(declare-fun b!1012650 () Bool)

(declare-fun Unit!33045 () Unit!33036)

(assert (=> b!1012650 (= e!569700 Unit!33045)))

(declare-fun bm!42577 () Bool)

(assert (=> bm!42577 (= call!42579 (getKeysOf!22 (t!30490 (t!30490 l!412)) value!115))))

(declare-fun bm!42578 () Bool)

(assert (=> bm!42578 (= call!42581 (forall!219 (ite c!102290 lt!447641 lt!447649) (ite c!102290 lambda!393 lambda!396)))))

(declare-fun b!1012651 () Bool)

(assert (=> b!1012651 (= e!569699 e!569701)))

(declare-fun c!102292 () Bool)

(assert (=> b!1012651 (= c!102292 (and (is-Cons!21477 (t!30490 l!412)) (not (= (_2!7588 (h!22675 (t!30490 l!412))) value!115))))))

(declare-fun b!1012652 () Bool)

(assert (=> b!1012652 (= e!569699 (Cons!21478 (_1!7588 (h!22675 (t!30490 l!412))) call!42579))))

(declare-fun c!102291 () Bool)

(assert (=> b!1012652 (= c!102291 (not call!42578))))

(declare-fun lt!447642 () Unit!33036)

(assert (=> b!1012652 (= lt!447642 e!569702)))

(assert (= (and d!120295 c!102290) b!1012652))

(assert (= (and d!120295 (not c!102290)) b!1012651))

(assert (= (and b!1012652 c!102291) b!1012646))

(assert (= (and b!1012652 (not c!102291)) b!1012648))

(assert (= (and b!1012651 c!102292) b!1012645))

(assert (= (and b!1012651 (not c!102292)) b!1012649))

(assert (= (and b!1012645 c!102289) b!1012647))

(assert (= (and b!1012645 (not c!102289)) b!1012650))

(assert (= (or b!1012646 b!1012647) bm!42575))

(assert (= (or b!1012646 b!1012647) bm!42578))

(assert (= (or b!1012652 b!1012646 b!1012645 b!1012647) bm!42577))

(assert (= (or b!1012652 b!1012645) bm!42576))

(declare-fun m!936191 () Bool)

(assert (=> d!120295 m!936191))

(assert (=> d!120295 m!936169))

(declare-fun m!936193 () Bool)

(assert (=> bm!42575 m!936193))

(declare-fun m!936195 () Bool)

(assert (=> bm!42576 m!936195))

(declare-fun m!936197 () Bool)

(assert (=> bm!42578 m!936197))

(declare-fun m!936199 () Bool)

(assert (=> bm!42577 m!936199))

(assert (=> b!1012562 d!120295))

(declare-fun d!120307 () Bool)

(declare-fun res!680180 () Bool)

(declare-fun e!569724 () Bool)

(assert (=> d!120307 (=> res!680180 e!569724)))

(assert (=> d!120307 (= res!680180 (or (is-Nil!21478 (t!30490 l!412)) (is-Nil!21478 (t!30490 (t!30490 l!412)))))))

(assert (=> d!120307 (= (isStrictlySorted!536 (t!30490 l!412)) e!569724)))

