; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138000 () Bool)

(assert start!138000)

(declare-fun b!1583589 () Bool)

(declare-fun res!1081824 () Bool)

(declare-fun e!883980 () Bool)

(assert (=> b!1583589 (=> (not res!1081824) (not e!883980))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2890 0))(
  ( (B!2891 (val!19807 Int)) )
))
(declare-datatypes ((tuple2!25946 0))(
  ( (tuple2!25947 (_1!12983 (_ BitVec 64)) (_2!12983 B!2890)) )
))
(declare-datatypes ((List!37088 0))(
  ( (Nil!37085) (Cons!37084 (h!38628 tuple2!25946) (t!52009 List!37088)) )
))
(declare-fun l!1251 () List!37088)

(get-info :version)

(assert (=> b!1583589 (= res!1081824 (and (not (= otherKey!56 newKey!123)) ((_ is Cons!37084) l!1251)))))

(declare-fun b!1583591 () Bool)

(declare-fun res!1081825 () Bool)

(assert (=> b!1583591 (=> (not res!1081825) (not e!883980))))

(declare-fun containsKey!987 (List!37088 (_ BitVec 64)) Bool)

(assert (=> b!1583591 (= res!1081825 (not (containsKey!987 (t!52009 l!1251) otherKey!56)))))

(declare-fun b!1583592 () Bool)

(declare-fun newValue!123 () B!2890)

(declare-fun isStrictlySorted!1153 (List!37088) Bool)

(declare-fun insertStrictlySorted!620 (List!37088 (_ BitVec 64) B!2890) List!37088)

(assert (=> b!1583592 (= e!883980 (not (isStrictlySorted!1153 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123))))))

(assert (=> b!1583592 (not (containsKey!987 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52231 0))(
  ( (Unit!52232) )
))
(declare-fun lt!677125 () Unit!52231)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!8 (List!37088 (_ BitVec 64) B!2890 (_ BitVec 64)) Unit!52231)

(assert (=> b!1583592 (= lt!677125 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!8 (t!52009 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1583593 () Bool)

(declare-fun res!1081822 () Bool)

(assert (=> b!1583593 (=> (not res!1081822) (not e!883980))))

(assert (=> b!1583593 (= res!1081822 (isStrictlySorted!1153 (t!52009 l!1251)))))

(declare-fun b!1583594 () Bool)

(declare-fun res!1081823 () Bool)

(assert (=> b!1583594 (=> (not res!1081823) (not e!883980))))

(assert (=> b!1583594 (= res!1081823 (not (containsKey!987 l!1251 otherKey!56)))))

(declare-fun b!1583590 () Bool)

(declare-fun e!883979 () Bool)

(declare-fun tp_is_empty!39423 () Bool)

(declare-fun tp!115027 () Bool)

(assert (=> b!1583590 (= e!883979 (and tp_is_empty!39423 tp!115027))))

(declare-fun res!1081826 () Bool)

(assert (=> start!138000 (=> (not res!1081826) (not e!883980))))

(assert (=> start!138000 (= res!1081826 (isStrictlySorted!1153 l!1251))))

(assert (=> start!138000 e!883980))

(assert (=> start!138000 e!883979))

(assert (=> start!138000 true))

(assert (=> start!138000 tp_is_empty!39423))

(assert (= (and start!138000 res!1081826) b!1583594))

(assert (= (and b!1583594 res!1081823) b!1583589))

(assert (= (and b!1583589 res!1081824) b!1583593))

(assert (= (and b!1583593 res!1081822) b!1583591))

(assert (= (and b!1583591 res!1081825) b!1583592))

(assert (= (and start!138000 ((_ is Cons!37084) l!1251)) b!1583590))

(declare-fun m!1453355 () Bool)

(assert (=> start!138000 m!1453355))

(declare-fun m!1453357 () Bool)

(assert (=> b!1583594 m!1453357))

(declare-fun m!1453359 () Bool)

(assert (=> b!1583591 m!1453359))

(declare-fun m!1453361 () Bool)

(assert (=> b!1583593 m!1453361))

(declare-fun m!1453363 () Bool)

(assert (=> b!1583592 m!1453363))

(declare-fun m!1453365 () Bool)

(assert (=> b!1583592 m!1453365))

(declare-fun m!1453367 () Bool)

(assert (=> b!1583592 m!1453367))

(declare-fun m!1453369 () Bool)

(assert (=> b!1583592 m!1453369))

(assert (=> b!1583592 m!1453369))

(declare-fun m!1453371 () Bool)

(assert (=> b!1583592 m!1453371))

(assert (=> b!1583592 m!1453365))

(check-sat (not b!1583594) (not b!1583590) (not b!1583592) tp_is_empty!39423 (not b!1583593) (not start!138000) (not b!1583591))
(check-sat)
(get-model)

(declare-fun d!167221 () Bool)

(declare-fun res!1081850 () Bool)

(declare-fun e!883995 () Bool)

(assert (=> d!167221 (=> res!1081850 e!883995)))

(assert (=> d!167221 (= res!1081850 (or ((_ is Nil!37085) (t!52009 l!1251)) ((_ is Nil!37085) (t!52009 (t!52009 l!1251)))))))

(assert (=> d!167221 (= (isStrictlySorted!1153 (t!52009 l!1251)) e!883995)))

(declare-fun b!1583621 () Bool)

(declare-fun e!883996 () Bool)

(assert (=> b!1583621 (= e!883995 e!883996)))

(declare-fun res!1081851 () Bool)

(assert (=> b!1583621 (=> (not res!1081851) (not e!883996))))

(assert (=> b!1583621 (= res!1081851 (bvslt (_1!12983 (h!38628 (t!52009 l!1251))) (_1!12983 (h!38628 (t!52009 (t!52009 l!1251))))))))

(declare-fun b!1583622 () Bool)

(assert (=> b!1583622 (= e!883996 (isStrictlySorted!1153 (t!52009 (t!52009 l!1251))))))

(assert (= (and d!167221 (not res!1081850)) b!1583621))

(assert (= (and b!1583621 res!1081851) b!1583622))

(declare-fun m!1453391 () Bool)

(assert (=> b!1583622 m!1453391))

(assert (=> b!1583593 d!167221))

(declare-fun d!167227 () Bool)

(declare-fun res!1081866 () Bool)

(declare-fun e!884011 () Bool)

(assert (=> d!167227 (=> res!1081866 e!884011)))

(assert (=> d!167227 (= res!1081866 (and ((_ is Cons!37084) l!1251) (= (_1!12983 (h!38628 l!1251)) otherKey!56)))))

(assert (=> d!167227 (= (containsKey!987 l!1251 otherKey!56) e!884011)))

(declare-fun b!1583637 () Bool)

(declare-fun e!884012 () Bool)

(assert (=> b!1583637 (= e!884011 e!884012)))

(declare-fun res!1081867 () Bool)

(assert (=> b!1583637 (=> (not res!1081867) (not e!884012))))

(assert (=> b!1583637 (= res!1081867 (and (or (not ((_ is Cons!37084) l!1251)) (bvsle (_1!12983 (h!38628 l!1251)) otherKey!56)) ((_ is Cons!37084) l!1251) (bvslt (_1!12983 (h!38628 l!1251)) otherKey!56)))))

(declare-fun b!1583638 () Bool)

(assert (=> b!1583638 (= e!884012 (containsKey!987 (t!52009 l!1251) otherKey!56))))

(assert (= (and d!167227 (not res!1081866)) b!1583637))

(assert (= (and b!1583637 res!1081867) b!1583638))

(assert (=> b!1583638 m!1453359))

(assert (=> b!1583594 d!167227))

(declare-fun d!167235 () Bool)

(declare-fun res!1081868 () Bool)

(declare-fun e!884013 () Bool)

(assert (=> d!167235 (=> res!1081868 e!884013)))

(assert (=> d!167235 (= res!1081868 (or ((_ is Nil!37085) l!1251) ((_ is Nil!37085) (t!52009 l!1251))))))

(assert (=> d!167235 (= (isStrictlySorted!1153 l!1251) e!884013)))

(declare-fun b!1583639 () Bool)

(declare-fun e!884014 () Bool)

(assert (=> b!1583639 (= e!884013 e!884014)))

(declare-fun res!1081869 () Bool)

(assert (=> b!1583639 (=> (not res!1081869) (not e!884014))))

(assert (=> b!1583639 (= res!1081869 (bvslt (_1!12983 (h!38628 l!1251)) (_1!12983 (h!38628 (t!52009 l!1251)))))))

(declare-fun b!1583640 () Bool)

(assert (=> b!1583640 (= e!884014 (isStrictlySorted!1153 (t!52009 l!1251)))))

(assert (= (and d!167235 (not res!1081868)) b!1583639))

(assert (= (and b!1583639 res!1081869) b!1583640))

(assert (=> b!1583640 m!1453361))

(assert (=> start!138000 d!167235))

(declare-fun e!884086 () List!37088)

(declare-fun b!1583754 () Bool)

(assert (=> b!1583754 (= e!884086 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123))))

(declare-fun bm!72498 () Bool)

(declare-fun call!72501 () List!37088)

(declare-fun call!72503 () List!37088)

(assert (=> bm!72498 (= call!72501 call!72503)))

(declare-fun b!1583755 () Bool)

(declare-fun e!884085 () List!37088)

(declare-fun e!884087 () List!37088)

(assert (=> b!1583755 (= e!884085 e!884087)))

(declare-fun c!146727 () Bool)

(assert (=> b!1583755 (= c!146727 (and ((_ is Cons!37084) l!1251) (= (_1!12983 (h!38628 l!1251)) newKey!123)))))

(declare-fun b!1583756 () Bool)

(declare-fun lt!677140 () List!37088)

(declare-fun e!884084 () Bool)

(declare-fun contains!10538 (List!37088 tuple2!25946) Bool)

(assert (=> b!1583756 (= e!884084 (contains!10538 lt!677140 (tuple2!25947 newKey!123 newValue!123)))))

(declare-fun b!1583757 () Bool)

(declare-fun call!72502 () List!37088)

(assert (=> b!1583757 (= e!884085 call!72502)))

(declare-fun d!167237 () Bool)

(assert (=> d!167237 e!884084))

(declare-fun res!1081915 () Bool)

(assert (=> d!167237 (=> (not res!1081915) (not e!884084))))

(assert (=> d!167237 (= res!1081915 (isStrictlySorted!1153 lt!677140))))

(assert (=> d!167237 (= lt!677140 e!884085)))

(declare-fun c!146726 () Bool)

(assert (=> d!167237 (= c!146726 (and ((_ is Cons!37084) l!1251) (bvslt (_1!12983 (h!38628 l!1251)) newKey!123)))))

(assert (=> d!167237 (isStrictlySorted!1153 l!1251)))

(assert (=> d!167237 (= (insertStrictlySorted!620 l!1251 newKey!123 newValue!123) lt!677140)))

(declare-fun b!1583758 () Bool)

(declare-fun res!1081914 () Bool)

(assert (=> b!1583758 (=> (not res!1081914) (not e!884084))))

(assert (=> b!1583758 (= res!1081914 (containsKey!987 lt!677140 newKey!123))))

(declare-fun b!1583759 () Bool)

(assert (=> b!1583759 (= e!884087 call!72503)))

(declare-fun b!1583760 () Bool)

(declare-fun c!146725 () Bool)

(assert (=> b!1583760 (= c!146725 (and ((_ is Cons!37084) l!1251) (bvsgt (_1!12983 (h!38628 l!1251)) newKey!123)))))

(declare-fun e!884083 () List!37088)

(assert (=> b!1583760 (= e!884087 e!884083)))

(declare-fun b!1583761 () Bool)

(assert (=> b!1583761 (= e!884083 call!72501)))

(declare-fun bm!72499 () Bool)

(declare-fun $colon$colon!1017 (List!37088 tuple2!25946) List!37088)

(assert (=> bm!72499 (= call!72502 ($colon$colon!1017 e!884086 (ite c!146726 (h!38628 l!1251) (tuple2!25947 newKey!123 newValue!123))))))

(declare-fun c!146724 () Bool)

(assert (=> bm!72499 (= c!146724 c!146726)))

(declare-fun b!1583762 () Bool)

(assert (=> b!1583762 (= e!884086 (ite c!146727 (t!52009 l!1251) (ite c!146725 (Cons!37084 (h!38628 l!1251) (t!52009 l!1251)) Nil!37085)))))

(declare-fun bm!72500 () Bool)

(assert (=> bm!72500 (= call!72503 call!72502)))

(declare-fun b!1583763 () Bool)

(assert (=> b!1583763 (= e!884083 call!72501)))

(assert (= (and d!167237 c!146726) b!1583757))

(assert (= (and d!167237 (not c!146726)) b!1583755))

(assert (= (and b!1583755 c!146727) b!1583759))

(assert (= (and b!1583755 (not c!146727)) b!1583760))

(assert (= (and b!1583760 c!146725) b!1583761))

(assert (= (and b!1583760 (not c!146725)) b!1583763))

(assert (= (or b!1583761 b!1583763) bm!72498))

(assert (= (or b!1583759 bm!72498) bm!72500))

(assert (= (or b!1583757 bm!72500) bm!72499))

(assert (= (and bm!72499 c!146724) b!1583754))

(assert (= (and bm!72499 (not c!146724)) b!1583762))

(assert (= (and d!167237 res!1081915) b!1583758))

(assert (= (and b!1583758 res!1081914) b!1583756))

(declare-fun m!1453425 () Bool)

(assert (=> b!1583756 m!1453425))

(assert (=> b!1583754 m!1453369))

(declare-fun m!1453427 () Bool)

(assert (=> b!1583758 m!1453427))

(declare-fun m!1453429 () Bool)

(assert (=> bm!72499 m!1453429))

(declare-fun m!1453431 () Bool)

(assert (=> d!167237 m!1453431))

(assert (=> d!167237 m!1453355))

(assert (=> b!1583592 d!167237))

(declare-fun d!167257 () Bool)

(declare-fun res!1081916 () Bool)

(declare-fun e!884088 () Bool)

(assert (=> d!167257 (=> res!1081916 e!884088)))

(assert (=> d!167257 (= res!1081916 (or ((_ is Nil!37085) (insertStrictlySorted!620 l!1251 newKey!123 newValue!123)) ((_ is Nil!37085) (t!52009 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167257 (= (isStrictlySorted!1153 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123)) e!884088)))

(declare-fun b!1583764 () Bool)

(declare-fun e!884089 () Bool)

(assert (=> b!1583764 (= e!884088 e!884089)))

(declare-fun res!1081917 () Bool)

(assert (=> b!1583764 (=> (not res!1081917) (not e!884089))))

(assert (=> b!1583764 (= res!1081917 (bvslt (_1!12983 (h!38628 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123))) (_1!12983 (h!38628 (t!52009 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123))))))))

(declare-fun b!1583765 () Bool)

(assert (=> b!1583765 (= e!884089 (isStrictlySorted!1153 (t!52009 (insertStrictlySorted!620 l!1251 newKey!123 newValue!123))))))

(assert (= (and d!167257 (not res!1081916)) b!1583764))

(assert (= (and b!1583764 res!1081917) b!1583765))

(declare-fun m!1453433 () Bool)

(assert (=> b!1583765 m!1453433))

(assert (=> b!1583592 d!167257))

(declare-fun b!1583766 () Bool)

(declare-fun e!884093 () List!37088)

(assert (=> b!1583766 (= e!884093 (insertStrictlySorted!620 (t!52009 (t!52009 l!1251)) newKey!123 newValue!123))))

(declare-fun bm!72501 () Bool)

(declare-fun call!72504 () List!37088)

(declare-fun call!72506 () List!37088)

(assert (=> bm!72501 (= call!72504 call!72506)))

(declare-fun b!1583767 () Bool)

(declare-fun e!884092 () List!37088)

(declare-fun e!884094 () List!37088)

(assert (=> b!1583767 (= e!884092 e!884094)))

(declare-fun c!146731 () Bool)

(assert (=> b!1583767 (= c!146731 (and ((_ is Cons!37084) (t!52009 l!1251)) (= (_1!12983 (h!38628 (t!52009 l!1251))) newKey!123)))))

(declare-fun e!884091 () Bool)

(declare-fun lt!677141 () List!37088)

(declare-fun b!1583768 () Bool)

(assert (=> b!1583768 (= e!884091 (contains!10538 lt!677141 (tuple2!25947 newKey!123 newValue!123)))))

(declare-fun b!1583769 () Bool)

(declare-fun call!72505 () List!37088)

(assert (=> b!1583769 (= e!884092 call!72505)))

(declare-fun d!167259 () Bool)

(assert (=> d!167259 e!884091))

(declare-fun res!1081919 () Bool)

(assert (=> d!167259 (=> (not res!1081919) (not e!884091))))

(assert (=> d!167259 (= res!1081919 (isStrictlySorted!1153 lt!677141))))

(assert (=> d!167259 (= lt!677141 e!884092)))

(declare-fun c!146730 () Bool)

(assert (=> d!167259 (= c!146730 (and ((_ is Cons!37084) (t!52009 l!1251)) (bvslt (_1!12983 (h!38628 (t!52009 l!1251))) newKey!123)))))

(assert (=> d!167259 (isStrictlySorted!1153 (t!52009 l!1251))))

(assert (=> d!167259 (= (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123) lt!677141)))

(declare-fun b!1583770 () Bool)

(declare-fun res!1081918 () Bool)

(assert (=> b!1583770 (=> (not res!1081918) (not e!884091))))

(assert (=> b!1583770 (= res!1081918 (containsKey!987 lt!677141 newKey!123))))

(declare-fun b!1583771 () Bool)

(assert (=> b!1583771 (= e!884094 call!72506)))

(declare-fun b!1583772 () Bool)

(declare-fun c!146729 () Bool)

(assert (=> b!1583772 (= c!146729 (and ((_ is Cons!37084) (t!52009 l!1251)) (bvsgt (_1!12983 (h!38628 (t!52009 l!1251))) newKey!123)))))

(declare-fun e!884090 () List!37088)

(assert (=> b!1583772 (= e!884094 e!884090)))

(declare-fun b!1583773 () Bool)

(assert (=> b!1583773 (= e!884090 call!72504)))

(declare-fun bm!72502 () Bool)

(assert (=> bm!72502 (= call!72505 ($colon$colon!1017 e!884093 (ite c!146730 (h!38628 (t!52009 l!1251)) (tuple2!25947 newKey!123 newValue!123))))))

(declare-fun c!146728 () Bool)

(assert (=> bm!72502 (= c!146728 c!146730)))

(declare-fun b!1583774 () Bool)

(assert (=> b!1583774 (= e!884093 (ite c!146731 (t!52009 (t!52009 l!1251)) (ite c!146729 (Cons!37084 (h!38628 (t!52009 l!1251)) (t!52009 (t!52009 l!1251))) Nil!37085)))))

(declare-fun bm!72503 () Bool)

(assert (=> bm!72503 (= call!72506 call!72505)))

(declare-fun b!1583775 () Bool)

(assert (=> b!1583775 (= e!884090 call!72504)))

(assert (= (and d!167259 c!146730) b!1583769))

(assert (= (and d!167259 (not c!146730)) b!1583767))

(assert (= (and b!1583767 c!146731) b!1583771))

(assert (= (and b!1583767 (not c!146731)) b!1583772))

(assert (= (and b!1583772 c!146729) b!1583773))

(assert (= (and b!1583772 (not c!146729)) b!1583775))

(assert (= (or b!1583773 b!1583775) bm!72501))

(assert (= (or b!1583771 bm!72501) bm!72503))

(assert (= (or b!1583769 bm!72503) bm!72502))

(assert (= (and bm!72502 c!146728) b!1583766))

(assert (= (and bm!72502 (not c!146728)) b!1583774))

(assert (= (and d!167259 res!1081919) b!1583770))

(assert (= (and b!1583770 res!1081918) b!1583768))

(declare-fun m!1453435 () Bool)

(assert (=> b!1583768 m!1453435))

(declare-fun m!1453437 () Bool)

(assert (=> b!1583766 m!1453437))

(declare-fun m!1453439 () Bool)

(assert (=> b!1583770 m!1453439))

(declare-fun m!1453441 () Bool)

(assert (=> bm!72502 m!1453441))

(declare-fun m!1453443 () Bool)

(assert (=> d!167259 m!1453443))

(assert (=> d!167259 m!1453361))

(assert (=> b!1583592 d!167259))

(declare-fun d!167261 () Bool)

(assert (=> d!167261 (not (containsKey!987 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-fun lt!677146 () Unit!52231)

(declare-fun choose!2112 (List!37088 (_ BitVec 64) B!2890 (_ BitVec 64)) Unit!52231)

(assert (=> d!167261 (= lt!677146 (choose!2112 (t!52009 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun e!884109 () Bool)

(assert (=> d!167261 e!884109))

(declare-fun res!1081930 () Bool)

(assert (=> d!167261 (=> (not res!1081930) (not e!884109))))

(assert (=> d!167261 (= res!1081930 (isStrictlySorted!1153 (t!52009 l!1251)))))

(assert (=> d!167261 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!8 (t!52009 l!1251) newKey!123 newValue!123 otherKey!56) lt!677146)))

(declare-fun b!1583802 () Bool)

(declare-fun res!1081931 () Bool)

(assert (=> b!1583802 (=> (not res!1081931) (not e!884109))))

(assert (=> b!1583802 (= res!1081931 (not (containsKey!987 (t!52009 l!1251) otherKey!56)))))

(declare-fun b!1583803 () Bool)

(assert (=> b!1583803 (= e!884109 (not (= otherKey!56 newKey!123)))))

(assert (= (and d!167261 res!1081930) b!1583802))

(assert (= (and b!1583802 res!1081931) b!1583803))

(assert (=> d!167261 m!1453369))

(assert (=> d!167261 m!1453369))

(assert (=> d!167261 m!1453371))

(declare-fun m!1453465 () Bool)

(assert (=> d!167261 m!1453465))

(assert (=> d!167261 m!1453361))

(assert (=> b!1583802 m!1453359))

(assert (=> b!1583592 d!167261))

(declare-fun d!167269 () Bool)

(declare-fun res!1081932 () Bool)

(declare-fun e!884110 () Bool)

(assert (=> d!167269 (=> res!1081932 e!884110)))

(assert (=> d!167269 (= res!1081932 (and ((_ is Cons!37084) (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123)) (= (_1!12983 (h!38628 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167269 (= (containsKey!987 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123) otherKey!56) e!884110)))

(declare-fun b!1583804 () Bool)

(declare-fun e!884111 () Bool)

(assert (=> b!1583804 (= e!884110 e!884111)))

(declare-fun res!1081933 () Bool)

(assert (=> b!1583804 (=> (not res!1081933) (not e!884111))))

(assert (=> b!1583804 (= res!1081933 (and (or (not ((_ is Cons!37084) (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123))) (bvsle (_1!12983 (h!38628 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123))) otherKey!56)) ((_ is Cons!37084) (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123)) (bvslt (_1!12983 (h!38628 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1583805 () Bool)

(assert (=> b!1583805 (= e!884111 (containsKey!987 (t!52009 (insertStrictlySorted!620 (t!52009 l!1251) newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167269 (not res!1081932)) b!1583804))

(assert (= (and b!1583804 res!1081933) b!1583805))

(declare-fun m!1453467 () Bool)

(assert (=> b!1583805 m!1453467))

(assert (=> b!1583592 d!167269))

(declare-fun d!167271 () Bool)

(declare-fun res!1081938 () Bool)

(declare-fun e!884114 () Bool)

(assert (=> d!167271 (=> res!1081938 e!884114)))

(assert (=> d!167271 (= res!1081938 (and ((_ is Cons!37084) (t!52009 l!1251)) (= (_1!12983 (h!38628 (t!52009 l!1251))) otherKey!56)))))

(assert (=> d!167271 (= (containsKey!987 (t!52009 l!1251) otherKey!56) e!884114)))

(declare-fun b!1583810 () Bool)

(declare-fun e!884115 () Bool)

(assert (=> b!1583810 (= e!884114 e!884115)))

(declare-fun res!1081939 () Bool)

(assert (=> b!1583810 (=> (not res!1081939) (not e!884115))))

(assert (=> b!1583810 (= res!1081939 (and (or (not ((_ is Cons!37084) (t!52009 l!1251))) (bvsle (_1!12983 (h!38628 (t!52009 l!1251))) otherKey!56)) ((_ is Cons!37084) (t!52009 l!1251)) (bvslt (_1!12983 (h!38628 (t!52009 l!1251))) otherKey!56)))))

(declare-fun b!1583811 () Bool)

(assert (=> b!1583811 (= e!884115 (containsKey!987 (t!52009 (t!52009 l!1251)) otherKey!56))))

(assert (= (and d!167271 (not res!1081938)) b!1583810))

(assert (= (and b!1583810 res!1081939) b!1583811))

(declare-fun m!1453469 () Bool)

(assert (=> b!1583811 m!1453469))

(assert (=> b!1583591 d!167271))

(declare-fun b!1583816 () Bool)

(declare-fun e!884118 () Bool)

(declare-fun tp!115036 () Bool)

(assert (=> b!1583816 (= e!884118 (and tp_is_empty!39423 tp!115036))))

(assert (=> b!1583590 (= tp!115027 e!884118)))

(assert (= (and b!1583590 ((_ is Cons!37084) (t!52009 l!1251))) b!1583816))

(check-sat (not b!1583758) (not d!167261) (not b!1583765) (not b!1583805) (not b!1583766) (not b!1583770) (not bm!72499) (not b!1583802) (not b!1583640) (not d!167237) (not bm!72502) (not b!1583768) (not b!1583816) (not b!1583756) (not b!1583811) (not b!1583622) (not d!167259) (not b!1583638) tp_is_empty!39423 (not b!1583754))
