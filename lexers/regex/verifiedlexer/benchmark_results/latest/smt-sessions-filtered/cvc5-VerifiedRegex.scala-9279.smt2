; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492628 () Bool)

(assert start!492628)

(declare-fun b!4788229 () Bool)

(declare-fun res!2034395 () Bool)

(declare-fun e!2989658 () Bool)

(assert (=> b!4788229 (=> (not res!2034395) (not e!2989658))))

(declare-datatypes ((K!15682 0))(
  ( (K!15683 (val!20851 Int)) )
))
(declare-datatypes ((V!15928 0))(
  ( (V!15929 (val!20852 Int)) )
))
(declare-datatypes ((tuple2!56676 0))(
  ( (tuple2!56677 (_1!31632 K!15682) (_2!31632 V!15928)) )
))
(declare-datatypes ((List!54241 0))(
  ( (Nil!54117) (Cons!54117 (h!60541 tuple2!56676) (t!361691 List!54241)) )
))
(declare-datatypes ((tuple2!56678 0))(
  ( (tuple2!56679 (_1!31633 (_ BitVec 64)) (_2!31633 List!54241)) )
))
(declare-datatypes ((List!54242 0))(
  ( (Nil!54118) (Cons!54118 (h!60542 tuple2!56678) (t!361692 List!54242)) )
))
(declare-datatypes ((ListLongMap!5255 0))(
  ( (ListLongMap!5256 (toList!6833 List!54242)) )
))
(declare-fun lm!2473 () ListLongMap!5255)

(declare-datatypes ((Hashable!6877 0))(
  ( (HashableExt!6876 (__x!32900 Int)) )
))
(declare-fun hashF!1559 () Hashable!6877)

(declare-fun allKeysSameHashInMap!2282 (ListLongMap!5255 Hashable!6877) Bool)

(assert (=> b!4788229 (= res!2034395 (allKeysSameHashInMap!2282 lm!2473 hashF!1559))))

(declare-fun b!4788230 () Bool)

(declare-fun res!2034391 () Bool)

(declare-fun e!2989657 () Bool)

(assert (=> b!4788230 (=> res!2034391 e!2989657)))

(declare-fun lt!1948621 () (_ BitVec 64))

(declare-fun contains!17710 (ListLongMap!5255 (_ BitVec 64)) Bool)

(declare-fun tail!9224 (ListLongMap!5255) ListLongMap!5255)

(assert (=> b!4788230 (= res!2034391 (contains!17710 (tail!9224 lm!2473) lt!1948621))))

(declare-fun b!4788231 () Bool)

(declare-fun res!2034394 () Bool)

(assert (=> b!4788231 (=> res!2034394 e!2989657)))

(declare-fun key!5896 () K!15682)

(declare-fun containsKey!3891 (List!54241 K!15682) Bool)

(assert (=> b!4788231 (= res!2034394 (containsKey!3891 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896))))

(declare-fun b!4788232 () Bool)

(declare-fun res!2034398 () Bool)

(assert (=> b!4788232 (=> res!2034398 e!2989657)))

(assert (=> b!4788232 (= res!2034398 (not (is-Cons!54118 (toList!6833 lm!2473))))))

(declare-fun b!4788233 () Bool)

(declare-fun e!2989656 () Bool)

(declare-fun tp!1357783 () Bool)

(assert (=> b!4788233 (= e!2989656 tp!1357783)))

(declare-fun b!4788234 () Bool)

(declare-fun e!2989655 () Bool)

(declare-datatypes ((Option!13028 0))(
  ( (None!13027) (Some!13027 (v!48294 tuple2!56676)) )
))
(declare-fun isDefined!10170 (Option!13028) Bool)

(declare-fun getPair!849 (List!54241 K!15682) Option!13028)

(declare-fun apply!12938 (ListLongMap!5255 (_ BitVec 64)) List!54241)

(assert (=> b!4788234 (= e!2989655 (isDefined!10170 (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896)))))

(declare-fun b!4788235 () Bool)

(declare-fun isEmpty!29408 (ListLongMap!5255) Bool)

(assert (=> b!4788235 (= e!2989657 (not (isEmpty!29408 lm!2473)))))

(declare-fun res!2034393 () Bool)

(assert (=> start!492628 (=> (not res!2034393) (not e!2989658))))

(declare-fun lambda!229724 () Int)

(declare-fun forall!12190 (List!54242 Int) Bool)

(assert (=> start!492628 (= res!2034393 (forall!12190 (toList!6833 lm!2473) lambda!229724))))

(assert (=> start!492628 e!2989658))

(declare-fun inv!69709 (ListLongMap!5255) Bool)

(assert (=> start!492628 (and (inv!69709 lm!2473) e!2989656)))

(assert (=> start!492628 true))

(declare-fun tp_is_empty!33389 () Bool)

(assert (=> start!492628 tp_is_empty!33389))

(declare-fun tp_is_empty!33391 () Bool)

(assert (=> start!492628 tp_is_empty!33391))

(declare-fun b!4788236 () Bool)

(assert (=> b!4788236 (= e!2989658 (not e!2989657))))

(declare-fun res!2034397 () Bool)

(assert (=> b!4788236 (=> res!2034397 e!2989657)))

(declare-fun value!3111 () V!15928)

(declare-fun getValue!73 (List!54242 K!15682) V!15928)

(assert (=> b!4788236 (= res!2034397 (not (= (getValue!73 (toList!6833 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!527 (List!54242 K!15682) Bool)

(assert (=> b!4788236 (containsKeyBiggerList!527 (toList!6833 lm!2473) key!5896)))

(declare-datatypes ((Unit!139622 0))(
  ( (Unit!139623) )
))
(declare-fun lt!1948622 () Unit!139622)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!267 (ListLongMap!5255 K!15682 Hashable!6877) Unit!139622)

(assert (=> b!4788236 (= lt!1948622 (lemmaInLongMapThenContainsKeyBiggerList!267 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4788236 e!2989655))

(declare-fun res!2034396 () Bool)

(assert (=> b!4788236 (=> (not res!2034396) (not e!2989655))))

(assert (=> b!4788236 (= res!2034396 (contains!17710 lm!2473 lt!1948621))))

(declare-fun hash!4901 (Hashable!6877 K!15682) (_ BitVec 64))

(assert (=> b!4788236 (= lt!1948621 (hash!4901 hashF!1559 key!5896))))

(declare-fun lt!1948620 () Unit!139622)

(declare-fun lemmaInGenericMapThenInLongMap!281 (ListLongMap!5255 K!15682 Hashable!6877) Unit!139622)

(assert (=> b!4788236 (= lt!1948620 (lemmaInGenericMapThenInLongMap!281 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4788237 () Bool)

(declare-fun res!2034392 () Bool)

(assert (=> b!4788237 (=> (not res!2034392) (not e!2989658))))

(declare-datatypes ((ListMap!6305 0))(
  ( (ListMap!6306 (toList!6834 List!54241)) )
))
(declare-fun contains!17711 (ListMap!6305 K!15682) Bool)

(declare-fun extractMap!2404 (List!54242) ListMap!6305)

(assert (=> b!4788237 (= res!2034392 (contains!17711 (extractMap!2404 (toList!6833 lm!2473)) key!5896))))

(assert (= (and start!492628 res!2034393) b!4788229))

(assert (= (and b!4788229 res!2034395) b!4788237))

(assert (= (and b!4788237 res!2034392) b!4788236))

(assert (= (and b!4788236 res!2034396) b!4788234))

(assert (= (and b!4788236 (not res!2034397)) b!4788232))

(assert (= (and b!4788232 (not res!2034398)) b!4788231))

(assert (= (and b!4788231 (not res!2034394)) b!4788230))

(assert (= (and b!4788230 (not res!2034391)) b!4788235))

(assert (= start!492628 b!4788233))

(declare-fun m!5767654 () Bool)

(assert (=> b!4788236 m!5767654))

(declare-fun m!5767656 () Bool)

(assert (=> b!4788236 m!5767656))

(declare-fun m!5767658 () Bool)

(assert (=> b!4788236 m!5767658))

(declare-fun m!5767660 () Bool)

(assert (=> b!4788236 m!5767660))

(declare-fun m!5767662 () Bool)

(assert (=> b!4788236 m!5767662))

(declare-fun m!5767664 () Bool)

(assert (=> b!4788236 m!5767664))

(declare-fun m!5767666 () Bool)

(assert (=> b!4788235 m!5767666))

(declare-fun m!5767668 () Bool)

(assert (=> b!4788237 m!5767668))

(assert (=> b!4788237 m!5767668))

(declare-fun m!5767670 () Bool)

(assert (=> b!4788237 m!5767670))

(declare-fun m!5767672 () Bool)

(assert (=> b!4788231 m!5767672))

(declare-fun m!5767674 () Bool)

(assert (=> b!4788234 m!5767674))

(assert (=> b!4788234 m!5767674))

(declare-fun m!5767676 () Bool)

(assert (=> b!4788234 m!5767676))

(assert (=> b!4788234 m!5767676))

(declare-fun m!5767678 () Bool)

(assert (=> b!4788234 m!5767678))

(declare-fun m!5767680 () Bool)

(assert (=> start!492628 m!5767680))

(declare-fun m!5767682 () Bool)

(assert (=> start!492628 m!5767682))

(declare-fun m!5767684 () Bool)

(assert (=> b!4788229 m!5767684))

(declare-fun m!5767686 () Bool)

(assert (=> b!4788230 m!5767686))

(assert (=> b!4788230 m!5767686))

(declare-fun m!5767688 () Bool)

(assert (=> b!4788230 m!5767688))

(push 1)

(assert (not b!4788231))

(assert (not start!492628))

(assert (not b!4788234))

(assert (not b!4788237))

(assert (not b!4788236))

(assert (not b!4788235))

(assert (not b!4788230))

(assert (not b!4788229))

(assert tp_is_empty!33389)

(assert (not b!4788233))

(assert tp_is_empty!33391)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1531738 () Bool)

(declare-fun res!2034427 () Bool)

(declare-fun e!2989675 () Bool)

(assert (=> d!1531738 (=> res!2034427 e!2989675)))

(assert (=> d!1531738 (= res!2034427 (and (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473)))) (= (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))) key!5896)))))

(assert (=> d!1531738 (= (containsKey!3891 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896) e!2989675)))

(declare-fun b!4788269 () Bool)

(declare-fun e!2989676 () Bool)

(assert (=> b!4788269 (= e!2989675 e!2989676)))

(declare-fun res!2034428 () Bool)

(assert (=> b!4788269 (=> (not res!2034428) (not e!2989676))))

(assert (=> b!4788269 (= res!2034428 (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(declare-fun b!4788270 () Bool)

(assert (=> b!4788270 (= e!2989676 (containsKey!3891 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) key!5896))))

(assert (= (and d!1531738 (not res!2034427)) b!4788269))

(assert (= (and b!4788269 res!2034428) b!4788270))

(declare-fun m!5767726 () Bool)

(assert (=> b!4788270 m!5767726))

(assert (=> b!4788231 d!1531738))

(declare-fun d!1531740 () Bool)

(declare-fun e!2989682 () Bool)

(assert (=> d!1531740 e!2989682))

(declare-fun res!2034431 () Bool)

(assert (=> d!1531740 (=> res!2034431 e!2989682)))

(declare-fun lt!1948640 () Bool)

(assert (=> d!1531740 (= res!2034431 (not lt!1948640))))

(declare-fun lt!1948642 () Bool)

(assert (=> d!1531740 (= lt!1948640 lt!1948642)))

(declare-fun lt!1948643 () Unit!139622)

(declare-fun e!2989681 () Unit!139622)

(assert (=> d!1531740 (= lt!1948643 e!2989681)))

(declare-fun c!816148 () Bool)

(assert (=> d!1531740 (= c!816148 lt!1948642)))

(declare-fun containsKey!3893 (List!54242 (_ BitVec 64)) Bool)

(assert (=> d!1531740 (= lt!1948642 (containsKey!3893 (toList!6833 lm!2473) lt!1948621))))

(assert (=> d!1531740 (= (contains!17710 lm!2473 lt!1948621) lt!1948640)))

(declare-fun b!4788277 () Bool)

(declare-fun lt!1948641 () Unit!139622)

(assert (=> b!4788277 (= e!2989681 lt!1948641)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (List!54242 (_ BitVec 64)) Unit!139622)

(assert (=> b!4788277 (= lt!1948641 (lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (toList!6833 lm!2473) lt!1948621))))

(declare-datatypes ((Option!13030 0))(
  ( (None!13029) (Some!13029 (v!48296 List!54241)) )
))
(declare-fun isDefined!10172 (Option!13030) Bool)

(declare-fun getValueByKey!2327 (List!54242 (_ BitVec 64)) Option!13030)

(assert (=> b!4788277 (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621))))

(declare-fun b!4788278 () Bool)

(declare-fun Unit!139626 () Unit!139622)

(assert (=> b!4788278 (= e!2989681 Unit!139626)))

(declare-fun b!4788279 () Bool)

(assert (=> b!4788279 (= e!2989682 (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621)))))

(assert (= (and d!1531740 c!816148) b!4788277))

(assert (= (and d!1531740 (not c!816148)) b!4788278))

(assert (= (and d!1531740 (not res!2034431)) b!4788279))

(declare-fun m!5767728 () Bool)

(assert (=> d!1531740 m!5767728))

(declare-fun m!5767730 () Bool)

(assert (=> b!4788277 m!5767730))

(declare-fun m!5767732 () Bool)

(assert (=> b!4788277 m!5767732))

(assert (=> b!4788277 m!5767732))

(declare-fun m!5767734 () Bool)

(assert (=> b!4788277 m!5767734))

(assert (=> b!4788279 m!5767732))

(assert (=> b!4788279 m!5767732))

(assert (=> b!4788279 m!5767734))

(assert (=> b!4788236 d!1531740))

(declare-fun d!1531744 () Bool)

(declare-fun res!2034442 () Bool)

(declare-fun e!2989695 () Bool)

(assert (=> d!1531744 (=> res!2034442 e!2989695)))

(declare-fun e!2989693 () Bool)

(assert (=> d!1531744 (= res!2034442 e!2989693)))

(declare-fun res!2034444 () Bool)

(assert (=> d!1531744 (=> (not res!2034444) (not e!2989693))))

(assert (=> d!1531744 (= res!2034444 (is-Cons!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531744 (= (containsKeyBiggerList!527 (toList!6833 lm!2473) key!5896) e!2989695)))

(declare-fun b!4788290 () Bool)

(assert (=> b!4788290 (= e!2989693 (containsKey!3891 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896))))

(declare-fun b!4788291 () Bool)

(declare-fun e!2989694 () Bool)

(assert (=> b!4788291 (= e!2989695 e!2989694)))

(declare-fun res!2034443 () Bool)

(assert (=> b!4788291 (=> (not res!2034443) (not e!2989694))))

(assert (=> b!4788291 (= res!2034443 (is-Cons!54118 (toList!6833 lm!2473)))))

(declare-fun b!4788292 () Bool)

(assert (=> b!4788292 (= e!2989694 (containsKeyBiggerList!527 (t!361692 (toList!6833 lm!2473)) key!5896))))

(assert (= (and d!1531744 res!2034444) b!4788290))

(assert (= (and d!1531744 (not res!2034442)) b!4788291))

(assert (= (and b!4788291 res!2034443) b!4788292))

(assert (=> b!4788290 m!5767672))

(declare-fun m!5767736 () Bool)

(assert (=> b!4788292 m!5767736))

(assert (=> b!4788236 d!1531744))

(declare-fun bs!1153888 () Bool)

(declare-fun d!1531746 () Bool)

(assert (= bs!1153888 (and d!1531746 start!492628)))

(declare-fun lambda!229730 () Int)

(assert (=> bs!1153888 (= lambda!229730 lambda!229724)))

(assert (=> d!1531746 (containsKeyBiggerList!527 (toList!6833 lm!2473) key!5896)))

(declare-fun lt!1948646 () Unit!139622)

(declare-fun choose!34440 (ListLongMap!5255 K!15682 Hashable!6877) Unit!139622)

(assert (=> d!1531746 (= lt!1948646 (choose!34440 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531746 (forall!12190 (toList!6833 lm!2473) lambda!229730)))

(assert (=> d!1531746 (= (lemmaInLongMapThenContainsKeyBiggerList!267 lm!2473 key!5896 hashF!1559) lt!1948646)))

(declare-fun bs!1153889 () Bool)

(assert (= bs!1153889 d!1531746))

(assert (=> bs!1153889 m!5767654))

(declare-fun m!5767742 () Bool)

(assert (=> bs!1153889 m!5767742))

(declare-fun m!5767744 () Bool)

(assert (=> bs!1153889 m!5767744))

(assert (=> b!4788236 d!1531746))

(declare-fun bs!1153891 () Bool)

(declare-fun d!1531750 () Bool)

(assert (= bs!1153891 (and d!1531750 start!492628)))

(declare-fun lambda!229733 () Int)

(assert (=> bs!1153891 (= lambda!229733 lambda!229724)))

(declare-fun bs!1153892 () Bool)

(assert (= bs!1153892 (and d!1531750 d!1531746)))

(assert (=> bs!1153892 (= lambda!229733 lambda!229730)))

(declare-fun e!2989704 () Bool)

(assert (=> d!1531750 e!2989704))

(declare-fun res!2034453 () Bool)

(assert (=> d!1531750 (=> (not res!2034453) (not e!2989704))))

(assert (=> d!1531750 (= res!2034453 (contains!17710 lm!2473 (hash!4901 hashF!1559 key!5896)))))

(declare-fun lt!1948649 () Unit!139622)

(declare-fun choose!34441 (ListLongMap!5255 K!15682 Hashable!6877) Unit!139622)

(assert (=> d!1531750 (= lt!1948649 (choose!34441 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531750 (forall!12190 (toList!6833 lm!2473) lambda!229733)))

(assert (=> d!1531750 (= (lemmaInGenericMapThenInLongMap!281 lm!2473 key!5896 hashF!1559) lt!1948649)))

(declare-fun b!4788301 () Bool)

(assert (=> b!4788301 (= e!2989704 (isDefined!10170 (getPair!849 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531750 res!2034453) b!4788301))

(assert (=> d!1531750 m!5767658))

(assert (=> d!1531750 m!5767658))

(declare-fun m!5767748 () Bool)

(assert (=> d!1531750 m!5767748))

(declare-fun m!5767750 () Bool)

(assert (=> d!1531750 m!5767750))

(declare-fun m!5767752 () Bool)

(assert (=> d!1531750 m!5767752))

(assert (=> b!4788301 m!5767658))

(assert (=> b!4788301 m!5767658))

(declare-fun m!5767754 () Bool)

(assert (=> b!4788301 m!5767754))

(assert (=> b!4788301 m!5767754))

(declare-fun m!5767756 () Bool)

(assert (=> b!4788301 m!5767756))

(assert (=> b!4788301 m!5767756))

(declare-fun m!5767760 () Bool)

(assert (=> b!4788301 m!5767760))

(assert (=> b!4788236 d!1531750))

(declare-fun d!1531754 () Bool)

(declare-fun c!816151 () Bool)

(declare-fun e!2989712 () Bool)

(assert (=> d!1531754 (= c!816151 e!2989712)))

(declare-fun res!2034458 () Bool)

(assert (=> d!1531754 (=> (not res!2034458) (not e!2989712))))

(assert (=> d!1531754 (= res!2034458 (is-Cons!54118 (toList!6833 lm!2473)))))

(declare-fun e!2989711 () V!15928)

(assert (=> d!1531754 (= (getValue!73 (toList!6833 lm!2473) key!5896) e!2989711)))

(declare-fun b!4788312 () Bool)

(assert (=> b!4788312 (= e!2989712 (containsKey!3891 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896))))

(declare-fun b!4788310 () Bool)

(declare-fun get!18432 (Option!13028) tuple2!56676)

(assert (=> b!4788310 (= e!2989711 (_2!31632 (get!18432 (getPair!849 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896))))))

(declare-fun b!4788311 () Bool)

(assert (=> b!4788311 (= e!2989711 (getValue!73 (t!361692 (toList!6833 lm!2473)) key!5896))))

(assert (= (and d!1531754 res!2034458) b!4788312))

(assert (= (and d!1531754 c!816151) b!4788310))

(assert (= (and d!1531754 (not c!816151)) b!4788311))

(assert (=> b!4788312 m!5767672))

(declare-fun m!5767762 () Bool)

(assert (=> b!4788310 m!5767762))

(assert (=> b!4788310 m!5767762))

(declare-fun m!5767764 () Bool)

(assert (=> b!4788310 m!5767764))

(declare-fun m!5767766 () Bool)

(assert (=> b!4788311 m!5767766))

(assert (=> b!4788236 d!1531754))

(declare-fun d!1531758 () Bool)

(declare-fun hash!4903 (Hashable!6877 K!15682) (_ BitVec 64))

(assert (=> d!1531758 (= (hash!4901 hashF!1559 key!5896) (hash!4903 hashF!1559 key!5896))))

(declare-fun bs!1153893 () Bool)

(assert (= bs!1153893 d!1531758))

(declare-fun m!5767768 () Bool)

(assert (=> bs!1153893 m!5767768))

(assert (=> b!4788236 d!1531758))

(declare-fun d!1531760 () Bool)

(declare-fun e!2989714 () Bool)

(assert (=> d!1531760 e!2989714))

(declare-fun res!2034459 () Bool)

(assert (=> d!1531760 (=> res!2034459 e!2989714)))

(declare-fun lt!1948650 () Bool)

(assert (=> d!1531760 (= res!2034459 (not lt!1948650))))

(declare-fun lt!1948652 () Bool)

(assert (=> d!1531760 (= lt!1948650 lt!1948652)))

(declare-fun lt!1948653 () Unit!139622)

(declare-fun e!2989713 () Unit!139622)

(assert (=> d!1531760 (= lt!1948653 e!2989713)))

(declare-fun c!816152 () Bool)

(assert (=> d!1531760 (= c!816152 lt!1948652)))

(assert (=> d!1531760 (= lt!1948652 (containsKey!3893 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(assert (=> d!1531760 (= (contains!17710 (tail!9224 lm!2473) lt!1948621) lt!1948650)))

(declare-fun b!4788313 () Bool)

(declare-fun lt!1948651 () Unit!139622)

(assert (=> b!4788313 (= e!2989713 lt!1948651)))

(assert (=> b!4788313 (= lt!1948651 (lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(assert (=> b!4788313 (isDefined!10172 (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(declare-fun b!4788314 () Bool)

(declare-fun Unit!139627 () Unit!139622)

(assert (=> b!4788314 (= e!2989713 Unit!139627)))

(declare-fun b!4788315 () Bool)

(assert (=> b!4788315 (= e!2989714 (isDefined!10172 (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621)))))

(assert (= (and d!1531760 c!816152) b!4788313))

(assert (= (and d!1531760 (not c!816152)) b!4788314))

(assert (= (and d!1531760 (not res!2034459)) b!4788315))

(declare-fun m!5767770 () Bool)

(assert (=> d!1531760 m!5767770))

(declare-fun m!5767772 () Bool)

(assert (=> b!4788313 m!5767772))

(declare-fun m!5767774 () Bool)

(assert (=> b!4788313 m!5767774))

(assert (=> b!4788313 m!5767774))

(declare-fun m!5767776 () Bool)

(assert (=> b!4788313 m!5767776))

(assert (=> b!4788315 m!5767774))

(assert (=> b!4788315 m!5767774))

(assert (=> b!4788315 m!5767776))

(assert (=> b!4788230 d!1531760))

(declare-fun d!1531762 () Bool)

(declare-fun tail!9226 (List!54242) List!54242)

(assert (=> d!1531762 (= (tail!9224 lm!2473) (ListLongMap!5256 (tail!9226 (toList!6833 lm!2473))))))

(declare-fun bs!1153894 () Bool)

(assert (= bs!1153894 d!1531762))

(declare-fun m!5767778 () Bool)

(assert (=> bs!1153894 m!5767778))

(assert (=> b!4788230 d!1531762))

(declare-fun d!1531764 () Bool)

(declare-fun res!2034464 () Bool)

(declare-fun e!2989719 () Bool)

(assert (=> d!1531764 (=> res!2034464 e!2989719)))

(assert (=> d!1531764 (= res!2034464 (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531764 (= (forall!12190 (toList!6833 lm!2473) lambda!229724) e!2989719)))

(declare-fun b!4788320 () Bool)

(declare-fun e!2989720 () Bool)

(assert (=> b!4788320 (= e!2989719 e!2989720)))

(declare-fun res!2034465 () Bool)

(assert (=> b!4788320 (=> (not res!2034465) (not e!2989720))))

(declare-fun dynLambda!22044 (Int tuple2!56678) Bool)

(assert (=> b!4788320 (= res!2034465 (dynLambda!22044 lambda!229724 (h!60542 (toList!6833 lm!2473))))))

(declare-fun b!4788321 () Bool)

(assert (=> b!4788321 (= e!2989720 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229724))))

(assert (= (and d!1531764 (not res!2034464)) b!4788320))

(assert (= (and b!4788320 res!2034465) b!4788321))

(declare-fun b_lambda!186373 () Bool)

(assert (=> (not b_lambda!186373) (not b!4788320)))

(declare-fun m!5767780 () Bool)

(assert (=> b!4788320 m!5767780))

(declare-fun m!5767782 () Bool)

(assert (=> b!4788321 m!5767782))

(assert (=> start!492628 d!1531764))

(declare-fun d!1531766 () Bool)

(declare-fun isStrictlySorted!866 (List!54242) Bool)

(assert (=> d!1531766 (= (inv!69709 lm!2473) (isStrictlySorted!866 (toList!6833 lm!2473)))))

(declare-fun bs!1153895 () Bool)

(assert (= bs!1153895 d!1531766))

(declare-fun m!5767784 () Bool)

(assert (=> bs!1153895 m!5767784))

(assert (=> start!492628 d!1531766))

(declare-fun d!1531768 () Bool)

(declare-fun isEmpty!29410 (List!54242) Bool)

(assert (=> d!1531768 (= (isEmpty!29408 lm!2473) (isEmpty!29410 (toList!6833 lm!2473)))))

(declare-fun bs!1153896 () Bool)

(assert (= bs!1153896 d!1531768))

(declare-fun m!5767786 () Bool)

(assert (=> bs!1153896 m!5767786))

(assert (=> b!4788235 d!1531768))

(declare-fun bs!1153897 () Bool)

(declare-fun d!1531770 () Bool)

(assert (= bs!1153897 (and d!1531770 start!492628)))

(declare-fun lambda!229736 () Int)

(assert (=> bs!1153897 (not (= lambda!229736 lambda!229724))))

(declare-fun bs!1153898 () Bool)

(assert (= bs!1153898 (and d!1531770 d!1531746)))

(assert (=> bs!1153898 (not (= lambda!229736 lambda!229730))))

(declare-fun bs!1153899 () Bool)

(assert (= bs!1153899 (and d!1531770 d!1531750)))

(assert (=> bs!1153899 (not (= lambda!229736 lambda!229733))))

(assert (=> d!1531770 true))

(assert (=> d!1531770 (= (allKeysSameHashInMap!2282 lm!2473 hashF!1559) (forall!12190 (toList!6833 lm!2473) lambda!229736))))

(declare-fun bs!1153900 () Bool)

(assert (= bs!1153900 d!1531770))

(declare-fun m!5767788 () Bool)

(assert (=> bs!1153900 m!5767788))

(assert (=> b!4788229 d!1531770))

(declare-fun d!1531772 () Bool)

(declare-fun isEmpty!29411 (Option!13028) Bool)

(assert (=> d!1531772 (= (isDefined!10170 (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896)) (not (isEmpty!29411 (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896))))))

(declare-fun bs!1153901 () Bool)

(assert (= bs!1153901 d!1531772))

(assert (=> bs!1153901 m!5767676))

(declare-fun m!5767790 () Bool)

(assert (=> bs!1153901 m!5767790))

(assert (=> b!4788234 d!1531772))

(declare-fun e!2989731 () Option!13028)

(declare-fun b!4788340 () Bool)

(assert (=> b!4788340 (= e!2989731 (getPair!849 (t!361691 (apply!12938 lm!2473 lt!1948621)) key!5896))))

(declare-fun b!4788342 () Bool)

(assert (=> b!4788342 (= e!2989731 None!13027)))

(declare-fun b!4788343 () Bool)

(declare-fun e!2989732 () Bool)

(declare-fun e!2989735 () Bool)

(assert (=> b!4788343 (= e!2989732 e!2989735)))

(declare-fun res!2034474 () Bool)

(assert (=> b!4788343 (=> (not res!2034474) (not e!2989735))))

(declare-fun lt!1948656 () Option!13028)

(assert (=> b!4788343 (= res!2034474 (isDefined!10170 lt!1948656))))

(declare-fun b!4788344 () Bool)

(declare-fun e!2989734 () Option!13028)

(assert (=> b!4788344 (= e!2989734 e!2989731)))

(declare-fun c!816157 () Bool)

(assert (=> b!4788344 (= c!816157 (is-Cons!54117 (apply!12938 lm!2473 lt!1948621)))))

(declare-fun b!4788345 () Bool)

(declare-fun contains!17714 (List!54241 tuple2!56676) Bool)

(assert (=> b!4788345 (= e!2989735 (contains!17714 (apply!12938 lm!2473 lt!1948621) (get!18432 lt!1948656)))))

(declare-fun b!4788346 () Bool)

(assert (=> b!4788346 (= e!2989734 (Some!13027 (h!60541 (apply!12938 lm!2473 lt!1948621))))))

(declare-fun b!4788347 () Bool)

(declare-fun e!2989733 () Bool)

(assert (=> b!4788347 (= e!2989733 (not (containsKey!3891 (apply!12938 lm!2473 lt!1948621) key!5896)))))

(declare-fun d!1531774 () Bool)

(assert (=> d!1531774 e!2989732))

(declare-fun res!2034475 () Bool)

(assert (=> d!1531774 (=> res!2034475 e!2989732)))

(assert (=> d!1531774 (= res!2034475 e!2989733)))

(declare-fun res!2034477 () Bool)

(assert (=> d!1531774 (=> (not res!2034477) (not e!2989733))))

(assert (=> d!1531774 (= res!2034477 (isEmpty!29411 lt!1948656))))

(assert (=> d!1531774 (= lt!1948656 e!2989734)))

(declare-fun c!816158 () Bool)

(assert (=> d!1531774 (= c!816158 (and (is-Cons!54117 (apply!12938 lm!2473 lt!1948621)) (= (_1!31632 (h!60541 (apply!12938 lm!2473 lt!1948621))) key!5896)))))

(declare-fun noDuplicateKeys!2320 (List!54241) Bool)

(assert (=> d!1531774 (noDuplicateKeys!2320 (apply!12938 lm!2473 lt!1948621))))

(assert (=> d!1531774 (= (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896) lt!1948656)))

(declare-fun b!4788341 () Bool)

(declare-fun res!2034476 () Bool)

(assert (=> b!4788341 (=> (not res!2034476) (not e!2989735))))

(assert (=> b!4788341 (= res!2034476 (= (_1!31632 (get!18432 lt!1948656)) key!5896))))

(assert (= (and d!1531774 c!816158) b!4788346))

(assert (= (and d!1531774 (not c!816158)) b!4788344))

(assert (= (and b!4788344 c!816157) b!4788340))

(assert (= (and b!4788344 (not c!816157)) b!4788342))

(assert (= (and d!1531774 res!2034477) b!4788347))

(assert (= (and d!1531774 (not res!2034475)) b!4788343))

(assert (= (and b!4788343 res!2034474) b!4788341))

(assert (= (and b!4788341 res!2034476) b!4788345))

(declare-fun m!5767792 () Bool)

(assert (=> b!4788345 m!5767792))

(assert (=> b!4788345 m!5767674))

(assert (=> b!4788345 m!5767792))

(declare-fun m!5767794 () Bool)

(assert (=> b!4788345 m!5767794))

(assert (=> b!4788341 m!5767792))

(assert (=> b!4788347 m!5767674))

(declare-fun m!5767796 () Bool)

(assert (=> b!4788347 m!5767796))

(declare-fun m!5767798 () Bool)

(assert (=> b!4788343 m!5767798))

(declare-fun m!5767800 () Bool)

(assert (=> b!4788340 m!5767800))

(declare-fun m!5767802 () Bool)

(assert (=> d!1531774 m!5767802))

(assert (=> d!1531774 m!5767674))

(declare-fun m!5767804 () Bool)

(assert (=> d!1531774 m!5767804))

(assert (=> b!4788234 d!1531774))

(declare-fun d!1531776 () Bool)

(declare-fun get!18433 (Option!13030) List!54241)

(assert (=> d!1531776 (= (apply!12938 lm!2473 lt!1948621) (get!18433 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621)))))

(declare-fun bs!1153902 () Bool)

(assert (= bs!1153902 d!1531776))

(assert (=> bs!1153902 m!5767732))

(assert (=> bs!1153902 m!5767732))

(declare-fun m!5767806 () Bool)

(assert (=> bs!1153902 m!5767806))

(assert (=> b!4788234 d!1531776))

(declare-fun b!4788384 () Bool)

(declare-fun e!2989763 () Unit!139622)

(declare-fun lt!1948694 () Unit!139622)

(assert (=> b!4788384 (= e!2989763 lt!1948694)))

(declare-fun lt!1948690 () Unit!139622)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2120 (List!54241 K!15682) Unit!139622)

(assert (=> b!4788384 (= lt!1948690 (lemmaContainsKeyImpliesGetValueByKeyDefined!2120 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-datatypes ((Option!13031 0))(
  ( (None!13030) (Some!13030 (v!48297 V!15928)) )
))
(declare-fun isDefined!10173 (Option!13031) Bool)

(declare-fun getValueByKey!2328 (List!54241 K!15682) Option!13031)

(assert (=> b!4788384 (isDefined!10173 (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-fun lt!1948691 () Unit!139622)

(assert (=> b!4788384 (= lt!1948691 lt!1948690)))

(declare-fun lemmaInListThenGetKeysListContains!1059 (List!54241 K!15682) Unit!139622)

(assert (=> b!4788384 (= lt!1948694 (lemmaInListThenGetKeysListContains!1059 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-fun call!334917 () Bool)

(assert (=> b!4788384 call!334917))

(declare-fun b!4788385 () Bool)

(declare-fun e!2989764 () Unit!139622)

(assert (=> b!4788385 (= e!2989763 e!2989764)))

(declare-fun c!816171 () Bool)

(assert (=> b!4788385 (= c!816171 call!334917)))

(declare-fun b!4788386 () Bool)

(declare-fun e!2989762 () Bool)

(declare-datatypes ((List!54245 0))(
  ( (Nil!54121) (Cons!54121 (h!60545 K!15682) (t!361695 List!54245)) )
))
(declare-fun contains!17715 (List!54245 K!15682) Bool)

(declare-fun keys!19741 (ListMap!6305) List!54245)

(assert (=> b!4788386 (= e!2989762 (not (contains!17715 (keys!19741 (extractMap!2404 (toList!6833 lm!2473))) key!5896)))))

(declare-fun b!4788387 () Bool)

(declare-fun e!2989761 () Bool)

(assert (=> b!4788387 (= e!2989761 (contains!17715 (keys!19741 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-fun b!4788388 () Bool)

(assert (=> b!4788388 false))

(declare-fun lt!1948695 () Unit!139622)

(declare-fun lt!1948689 () Unit!139622)

(assert (=> b!4788388 (= lt!1948695 lt!1948689)))

(declare-fun containsKey!3894 (List!54241 K!15682) Bool)

(assert (=> b!4788388 (containsKey!3894 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1064 (List!54241 K!15682) Unit!139622)

(assert (=> b!4788388 (= lt!1948689 (lemmaInGetKeysListThenContainsKey!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-fun Unit!139628 () Unit!139622)

(assert (=> b!4788388 (= e!2989764 Unit!139628)))

(declare-fun d!1531778 () Bool)

(declare-fun e!2989765 () Bool)

(assert (=> d!1531778 e!2989765))

(declare-fun res!2034490 () Bool)

(assert (=> d!1531778 (=> res!2034490 e!2989765)))

(assert (=> d!1531778 (= res!2034490 e!2989762)))

(declare-fun res!2034492 () Bool)

(assert (=> d!1531778 (=> (not res!2034492) (not e!2989762))))

(declare-fun lt!1948693 () Bool)

(assert (=> d!1531778 (= res!2034492 (not lt!1948693))))

(declare-fun lt!1948696 () Bool)

(assert (=> d!1531778 (= lt!1948693 lt!1948696)))

(declare-fun lt!1948692 () Unit!139622)

(assert (=> d!1531778 (= lt!1948692 e!2989763)))

(declare-fun c!816173 () Bool)

(assert (=> d!1531778 (= c!816173 lt!1948696)))

(assert (=> d!1531778 (= lt!1948696 (containsKey!3894 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(assert (=> d!1531778 (= (contains!17711 (extractMap!2404 (toList!6833 lm!2473)) key!5896) lt!1948693)))

(declare-fun b!4788389 () Bool)

(declare-fun e!2989760 () List!54245)

(declare-fun getKeysList!1064 (List!54241) List!54245)

(assert (=> b!4788389 (= e!2989760 (getKeysList!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))

(declare-fun b!4788390 () Bool)

(assert (=> b!4788390 (= e!2989760 (keys!19741 (extractMap!2404 (toList!6833 lm!2473))))))

(declare-fun bm!334912 () Bool)

(assert (=> bm!334912 (= call!334917 (contains!17715 e!2989760 key!5896))))

(declare-fun c!816172 () Bool)

(assert (=> bm!334912 (= c!816172 c!816173)))

(declare-fun b!4788391 () Bool)

(declare-fun Unit!139629 () Unit!139622)

(assert (=> b!4788391 (= e!2989764 Unit!139629)))

(declare-fun b!4788392 () Bool)

(assert (=> b!4788392 (= e!2989765 e!2989761)))

(declare-fun res!2034491 () Bool)

(assert (=> b!4788392 (=> (not res!2034491) (not e!2989761))))

(assert (=> b!4788392 (= res!2034491 (isDefined!10173 (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896)))))

(assert (= (and d!1531778 c!816173) b!4788384))

(assert (= (and d!1531778 (not c!816173)) b!4788385))

(assert (= (and b!4788385 c!816171) b!4788388))

(assert (= (and b!4788385 (not c!816171)) b!4788391))

(assert (= (or b!4788384 b!4788385) bm!334912))

(assert (= (and bm!334912 c!816172) b!4788389))

(assert (= (and bm!334912 (not c!816172)) b!4788390))

(assert (= (and d!1531778 res!2034492) b!4788386))

(assert (= (and d!1531778 (not res!2034490)) b!4788392))

(assert (= (and b!4788392 res!2034491) b!4788387))

(declare-fun m!5767808 () Bool)

(assert (=> bm!334912 m!5767808))

(declare-fun m!5767810 () Bool)

(assert (=> b!4788389 m!5767810))

(declare-fun m!5767812 () Bool)

(assert (=> b!4788388 m!5767812))

(declare-fun m!5767814 () Bool)

(assert (=> b!4788388 m!5767814))

(declare-fun m!5767816 () Bool)

(assert (=> b!4788384 m!5767816))

(declare-fun m!5767818 () Bool)

(assert (=> b!4788384 m!5767818))

(assert (=> b!4788384 m!5767818))

(declare-fun m!5767820 () Bool)

(assert (=> b!4788384 m!5767820))

(declare-fun m!5767822 () Bool)

(assert (=> b!4788384 m!5767822))

(assert (=> b!4788387 m!5767668))

(declare-fun m!5767824 () Bool)

(assert (=> b!4788387 m!5767824))

(assert (=> b!4788387 m!5767824))

(declare-fun m!5767826 () Bool)

(assert (=> b!4788387 m!5767826))

(assert (=> d!1531778 m!5767812))

(assert (=> b!4788392 m!5767818))

(assert (=> b!4788392 m!5767818))

(assert (=> b!4788392 m!5767820))

(assert (=> b!4788386 m!5767668))

(assert (=> b!4788386 m!5767824))

(assert (=> b!4788386 m!5767824))

(assert (=> b!4788386 m!5767826))

(assert (=> b!4788390 m!5767668))

(assert (=> b!4788390 m!5767824))

(assert (=> b!4788237 d!1531778))

(declare-fun bs!1153903 () Bool)

(declare-fun d!1531780 () Bool)

(assert (= bs!1153903 (and d!1531780 start!492628)))

(declare-fun lambda!229739 () Int)

(assert (=> bs!1153903 (= lambda!229739 lambda!229724)))

(declare-fun bs!1153904 () Bool)

(assert (= bs!1153904 (and d!1531780 d!1531746)))

(assert (=> bs!1153904 (= lambda!229739 lambda!229730)))

(declare-fun bs!1153905 () Bool)

(assert (= bs!1153905 (and d!1531780 d!1531750)))

(assert (=> bs!1153905 (= lambda!229739 lambda!229733)))

(declare-fun bs!1153906 () Bool)

(assert (= bs!1153906 (and d!1531780 d!1531770)))

(assert (=> bs!1153906 (not (= lambda!229739 lambda!229736))))

(declare-fun lt!1948707 () ListMap!6305)

(declare-fun invariantList!1718 (List!54241) Bool)

(assert (=> d!1531780 (invariantList!1718 (toList!6834 lt!1948707))))

(declare-fun e!2989774 () ListMap!6305)

(assert (=> d!1531780 (= lt!1948707 e!2989774)))

(declare-fun c!816179 () Bool)

(assert (=> d!1531780 (= c!816179 (is-Cons!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531780 (forall!12190 (toList!6833 lm!2473) lambda!229739)))

(assert (=> d!1531780 (= (extractMap!2404 (toList!6833 lm!2473)) lt!1948707)))

(declare-fun b!4788406 () Bool)

(declare-fun addToMapMapFromBucket!1689 (List!54241 ListMap!6305) ListMap!6305)

(assert (=> b!4788406 (= e!2989774 (addToMapMapFromBucket!1689 (_2!31633 (h!60542 (toList!6833 lm!2473))) (extractMap!2404 (t!361692 (toList!6833 lm!2473)))))))

(declare-fun b!4788407 () Bool)

(assert (=> b!4788407 (= e!2989774 (ListMap!6306 Nil!54117))))

(assert (= (and d!1531780 c!816179) b!4788406))

(assert (= (and d!1531780 (not c!816179)) b!4788407))

(declare-fun m!5767848 () Bool)

(assert (=> d!1531780 m!5767848))

(declare-fun m!5767850 () Bool)

(assert (=> d!1531780 m!5767850))

(declare-fun m!5767852 () Bool)

(assert (=> b!4788406 m!5767852))

(assert (=> b!4788406 m!5767852))

(declare-fun m!5767854 () Bool)

(assert (=> b!4788406 m!5767854))

(assert (=> b!4788237 d!1531780))

(declare-fun b!4788412 () Bool)

(declare-fun e!2989777 () Bool)

(declare-fun tp!1357791 () Bool)

(declare-fun tp!1357792 () Bool)

(assert (=> b!4788412 (= e!2989777 (and tp!1357791 tp!1357792))))

(assert (=> b!4788233 (= tp!1357783 e!2989777)))

(assert (= (and b!4788233 (is-Cons!54118 (toList!6833 lm!2473))) b!4788412))

(declare-fun b_lambda!186375 () Bool)

(assert (= b_lambda!186373 (or start!492628 b_lambda!186375)))

(declare-fun bs!1153907 () Bool)

(declare-fun d!1531784 () Bool)

(assert (= bs!1153907 (and d!1531784 start!492628)))

(assert (=> bs!1153907 (= (dynLambda!22044 lambda!229724 (h!60542 (toList!6833 lm!2473))) (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(declare-fun m!5767856 () Bool)

(assert (=> bs!1153907 m!5767856))

(assert (=> b!4788320 d!1531784))

(push 1)

(assert (not d!1531760))

(assert (not b!4788310))

(assert (not d!1531770))

(assert (not b!4788292))

(assert (not b!4788321))

(assert (not b!4788315))

(assert (not b!4788340))

(assert (not d!1531778))

(assert (not b!4788313))

(assert (not d!1531758))

(assert tp_is_empty!33391)

(assert (not b!4788412))

(assert (not bm!334912))

(assert (not b!4788389))

(assert (not b!4788312))

(assert (not bs!1153907))

(assert (not d!1531768))

(assert (not b!4788311))

(assert (not b!4788390))

(assert (not b!4788386))

(assert (not d!1531774))

(assert (not d!1531762))

(assert (not b!4788301))

(assert (not d!1531772))

(assert (not d!1531766))

(assert (not b!4788277))

(assert (not b!4788290))

(assert (not d!1531780))

(assert (not d!1531740))

(assert (not b!4788392))

(assert (not b!4788384))

(assert (not b_lambda!186375))

(assert (not b!4788279))

(assert (not d!1531750))

(assert (not b!4788387))

(assert (not b!4788388))

(assert (not b!4788347))

(assert tp_is_empty!33389)

(assert (not d!1531746))

(assert (not b!4788341))

(assert (not b!4788343))

(assert (not b!4788406))

(assert (not b!4788345))

(assert (not b!4788270))

(assert (not d!1531776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1531814 () Bool)

(assert (=> d!1531814 (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621))))

(declare-fun lt!1948738 () Unit!139622)

(declare-fun choose!34444 (List!54242 (_ BitVec 64)) Unit!139622)

(assert (=> d!1531814 (= lt!1948738 (choose!34444 (toList!6833 lm!2473) lt!1948621))))

(declare-fun e!2989827 () Bool)

(assert (=> d!1531814 e!2989827))

(declare-fun res!2034529 () Bool)

(assert (=> d!1531814 (=> (not res!2034529) (not e!2989827))))

(assert (=> d!1531814 (= res!2034529 (isStrictlySorted!866 (toList!6833 lm!2473)))))

(assert (=> d!1531814 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (toList!6833 lm!2473) lt!1948621) lt!1948738)))

(declare-fun b!4788485 () Bool)

(assert (=> b!4788485 (= e!2989827 (containsKey!3893 (toList!6833 lm!2473) lt!1948621))))

(assert (= (and d!1531814 res!2034529) b!4788485))

(assert (=> d!1531814 m!5767732))

(assert (=> d!1531814 m!5767732))

(assert (=> d!1531814 m!5767734))

(declare-fun m!5767934 () Bool)

(assert (=> d!1531814 m!5767934))

(assert (=> d!1531814 m!5767784))

(assert (=> b!4788485 m!5767728))

(assert (=> b!4788277 d!1531814))

(declare-fun d!1531816 () Bool)

(declare-fun isEmpty!29414 (Option!13030) Bool)

(assert (=> d!1531816 (= (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621)) (not (isEmpty!29414 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621))))))

(declare-fun bs!1153926 () Bool)

(assert (= bs!1153926 d!1531816))

(assert (=> bs!1153926 m!5767732))

(declare-fun m!5767936 () Bool)

(assert (=> bs!1153926 m!5767936))

(assert (=> b!4788277 d!1531816))

(declare-fun b!4788494 () Bool)

(declare-fun e!2989832 () Option!13030)

(assert (=> b!4788494 (= e!2989832 (Some!13029 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(declare-fun b!4788496 () Bool)

(declare-fun e!2989833 () Option!13030)

(assert (=> b!4788496 (= e!2989833 (getValueByKey!2327 (t!361692 (toList!6833 lm!2473)) lt!1948621))))

(declare-fun b!4788495 () Bool)

(assert (=> b!4788495 (= e!2989832 e!2989833)))

(declare-fun c!816201 () Bool)

(assert (=> b!4788495 (= c!816201 (and (is-Cons!54118 (toList!6833 lm!2473)) (not (= (_1!31633 (h!60542 (toList!6833 lm!2473))) lt!1948621))))))

(declare-fun d!1531818 () Bool)

(declare-fun c!816200 () Bool)

(assert (=> d!1531818 (= c!816200 (and (is-Cons!54118 (toList!6833 lm!2473)) (= (_1!31633 (h!60542 (toList!6833 lm!2473))) lt!1948621)))))

(assert (=> d!1531818 (= (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621) e!2989832)))

(declare-fun b!4788497 () Bool)

(assert (=> b!4788497 (= e!2989833 None!13029)))

(assert (= (and d!1531818 c!816200) b!4788494))

(assert (= (and d!1531818 (not c!816200)) b!4788495))

(assert (= (and b!4788495 c!816201) b!4788496))

(assert (= (and b!4788495 (not c!816201)) b!4788497))

(declare-fun m!5767938 () Bool)

(assert (=> b!4788496 m!5767938))

(assert (=> b!4788277 d!1531818))

(declare-fun d!1531820 () Bool)

(assert (=> d!1531820 (= (isEmpty!29411 lt!1948656) (not (is-Some!13027 lt!1948656)))))

(assert (=> d!1531774 d!1531820))

(declare-fun d!1531822 () Bool)

(declare-fun res!2034534 () Bool)

(declare-fun e!2989838 () Bool)

(assert (=> d!1531822 (=> res!2034534 e!2989838)))

(assert (=> d!1531822 (= res!2034534 (not (is-Cons!54117 (apply!12938 lm!2473 lt!1948621))))))

(assert (=> d!1531822 (= (noDuplicateKeys!2320 (apply!12938 lm!2473 lt!1948621)) e!2989838)))

(declare-fun b!4788502 () Bool)

(declare-fun e!2989839 () Bool)

(assert (=> b!4788502 (= e!2989838 e!2989839)))

(declare-fun res!2034535 () Bool)

(assert (=> b!4788502 (=> (not res!2034535) (not e!2989839))))

(assert (=> b!4788502 (= res!2034535 (not (containsKey!3891 (t!361691 (apply!12938 lm!2473 lt!1948621)) (_1!31632 (h!60541 (apply!12938 lm!2473 lt!1948621))))))))

(declare-fun b!4788503 () Bool)

(assert (=> b!4788503 (= e!2989839 (noDuplicateKeys!2320 (t!361691 (apply!12938 lm!2473 lt!1948621))))))

(assert (= (and d!1531822 (not res!2034534)) b!4788502))

(assert (= (and b!4788502 res!2034535) b!4788503))

(declare-fun m!5767940 () Bool)

(assert (=> b!4788502 m!5767940))

(declare-fun m!5767942 () Bool)

(assert (=> b!4788503 m!5767942))

(assert (=> d!1531774 d!1531822))

(assert (=> b!4788312 d!1531738))

(declare-fun d!1531824 () Bool)

(declare-fun res!2034536 () Bool)

(declare-fun e!2989840 () Bool)

(assert (=> d!1531824 (=> res!2034536 e!2989840)))

(assert (=> d!1531824 (= res!2034536 (and (is-Cons!54117 (apply!12938 lm!2473 lt!1948621)) (= (_1!31632 (h!60541 (apply!12938 lm!2473 lt!1948621))) key!5896)))))

(assert (=> d!1531824 (= (containsKey!3891 (apply!12938 lm!2473 lt!1948621) key!5896) e!2989840)))

(declare-fun b!4788504 () Bool)

(declare-fun e!2989841 () Bool)

(assert (=> b!4788504 (= e!2989840 e!2989841)))

(declare-fun res!2034537 () Bool)

(assert (=> b!4788504 (=> (not res!2034537) (not e!2989841))))

(assert (=> b!4788504 (= res!2034537 (is-Cons!54117 (apply!12938 lm!2473 lt!1948621)))))

(declare-fun b!4788505 () Bool)

(assert (=> b!4788505 (= e!2989841 (containsKey!3891 (t!361691 (apply!12938 lm!2473 lt!1948621)) key!5896))))

(assert (= (and d!1531824 (not res!2034536)) b!4788504))

(assert (= (and b!4788504 res!2034537) b!4788505))

(declare-fun m!5767944 () Bool)

(assert (=> b!4788505 m!5767944))

(assert (=> b!4788347 d!1531824))

(declare-fun d!1531826 () Bool)

(declare-fun res!2034538 () Bool)

(declare-fun e!2989842 () Bool)

(assert (=> d!1531826 (=> res!2034538 e!2989842)))

(assert (=> d!1531826 (= res!2034538 (is-Nil!54118 (t!361692 (toList!6833 lm!2473))))))

(assert (=> d!1531826 (= (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229724) e!2989842)))

(declare-fun b!4788506 () Bool)

(declare-fun e!2989843 () Bool)

(assert (=> b!4788506 (= e!2989842 e!2989843)))

(declare-fun res!2034539 () Bool)

(assert (=> b!4788506 (=> (not res!2034539) (not e!2989843))))

(assert (=> b!4788506 (= res!2034539 (dynLambda!22044 lambda!229724 (h!60542 (t!361692 (toList!6833 lm!2473)))))))

(declare-fun b!4788507 () Bool)

(assert (=> b!4788507 (= e!2989843 (forall!12190 (t!361692 (t!361692 (toList!6833 lm!2473))) lambda!229724))))

(assert (= (and d!1531826 (not res!2034538)) b!4788506))

(assert (= (and b!4788506 res!2034539) b!4788507))

(declare-fun b_lambda!186379 () Bool)

(assert (=> (not b_lambda!186379) (not b!4788506)))

(declare-fun m!5767946 () Bool)

(assert (=> b!4788506 m!5767946))

(declare-fun m!5767948 () Bool)

(assert (=> b!4788507 m!5767948))

(assert (=> b!4788321 d!1531826))

(declare-fun d!1531828 () Bool)

(declare-fun res!2034544 () Bool)

(declare-fun e!2989848 () Bool)

(assert (=> d!1531828 (=> res!2034544 e!2989848)))

(assert (=> d!1531828 (= res!2034544 (and (is-Cons!54117 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (= (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) key!5896)))))

(assert (=> d!1531828 (= (containsKey!3894 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896) e!2989848)))

(declare-fun b!4788512 () Bool)

(declare-fun e!2989849 () Bool)

(assert (=> b!4788512 (= e!2989848 e!2989849)))

(declare-fun res!2034545 () Bool)

(assert (=> b!4788512 (=> (not res!2034545) (not e!2989849))))

(assert (=> b!4788512 (= res!2034545 (is-Cons!54117 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))

(declare-fun b!4788513 () Bool)

(assert (=> b!4788513 (= e!2989849 (containsKey!3894 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) key!5896))))

(assert (= (and d!1531828 (not res!2034544)) b!4788512))

(assert (= (and b!4788512 res!2034545) b!4788513))

(declare-fun m!5767950 () Bool)

(assert (=> b!4788513 m!5767950))

(assert (=> d!1531778 d!1531828))

(assert (=> b!4788279 d!1531816))

(assert (=> b!4788279 d!1531818))

(declare-fun d!1531830 () Bool)

(declare-fun res!2034546 () Bool)

(declare-fun e!2989850 () Bool)

(assert (=> d!1531830 (=> res!2034546 e!2989850)))

(assert (=> d!1531830 (= res!2034546 (not (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(assert (=> d!1531830 (= (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473)))) e!2989850)))

(declare-fun b!4788514 () Bool)

(declare-fun e!2989851 () Bool)

(assert (=> b!4788514 (= e!2989850 e!2989851)))

(declare-fun res!2034547 () Bool)

(assert (=> b!4788514 (=> (not res!2034547) (not e!2989851))))

(assert (=> b!4788514 (= res!2034547 (not (containsKey!3891 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))))

(declare-fun b!4788515 () Bool)

(assert (=> b!4788515 (= e!2989851 (noDuplicateKeys!2320 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(assert (= (and d!1531830 (not res!2034546)) b!4788514))

(assert (= (and b!4788514 res!2034547) b!4788515))

(declare-fun m!5767952 () Bool)

(assert (=> b!4788514 m!5767952))

(declare-fun m!5767954 () Bool)

(assert (=> b!4788515 m!5767954))

(assert (=> bs!1153907 d!1531830))

(declare-fun d!1531832 () Bool)

(declare-fun res!2034548 () Bool)

(declare-fun e!2989852 () Bool)

(assert (=> d!1531832 (=> res!2034548 e!2989852)))

(assert (=> d!1531832 (= res!2034548 (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531832 (= (forall!12190 (toList!6833 lm!2473) lambda!229736) e!2989852)))

(declare-fun b!4788516 () Bool)

(declare-fun e!2989853 () Bool)

(assert (=> b!4788516 (= e!2989852 e!2989853)))

(declare-fun res!2034549 () Bool)

(assert (=> b!4788516 (=> (not res!2034549) (not e!2989853))))

(assert (=> b!4788516 (= res!2034549 (dynLambda!22044 lambda!229736 (h!60542 (toList!6833 lm!2473))))))

(declare-fun b!4788517 () Bool)

(assert (=> b!4788517 (= e!2989853 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229736))))

(assert (= (and d!1531832 (not res!2034548)) b!4788516))

(assert (= (and b!4788516 res!2034549) b!4788517))

(declare-fun b_lambda!186381 () Bool)

(assert (=> (not b_lambda!186381) (not b!4788516)))

(declare-fun m!5767956 () Bool)

(assert (=> b!4788516 m!5767956))

(declare-fun m!5767958 () Bool)

(assert (=> b!4788517 m!5767958))

(assert (=> d!1531770 d!1531832))

(declare-fun d!1531834 () Bool)

(assert (=> d!1531834 (= (isDefined!10172 (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621)) (not (isEmpty!29414 (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))))

(declare-fun bs!1153927 () Bool)

(assert (= bs!1153927 d!1531834))

(assert (=> bs!1153927 m!5767774))

(declare-fun m!5767960 () Bool)

(assert (=> bs!1153927 m!5767960))

(assert (=> b!4788315 d!1531834))

(declare-fun b!4788518 () Bool)

(declare-fun e!2989854 () Option!13030)

(assert (=> b!4788518 (= e!2989854 (Some!13029 (_2!31633 (h!60542 (toList!6833 (tail!9224 lm!2473))))))))

(declare-fun b!4788520 () Bool)

(declare-fun e!2989855 () Option!13030)

(assert (=> b!4788520 (= e!2989855 (getValueByKey!2327 (t!361692 (toList!6833 (tail!9224 lm!2473))) lt!1948621))))

(declare-fun b!4788519 () Bool)

(assert (=> b!4788519 (= e!2989854 e!2989855)))

(declare-fun c!816203 () Bool)

(assert (=> b!4788519 (= c!816203 (and (is-Cons!54118 (toList!6833 (tail!9224 lm!2473))) (not (= (_1!31633 (h!60542 (toList!6833 (tail!9224 lm!2473)))) lt!1948621))))))

(declare-fun d!1531836 () Bool)

(declare-fun c!816202 () Bool)

(assert (=> d!1531836 (= c!816202 (and (is-Cons!54118 (toList!6833 (tail!9224 lm!2473))) (= (_1!31633 (h!60542 (toList!6833 (tail!9224 lm!2473)))) lt!1948621)))))

(assert (=> d!1531836 (= (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621) e!2989854)))

(declare-fun b!4788521 () Bool)

(assert (=> b!4788521 (= e!2989855 None!13029)))

(assert (= (and d!1531836 c!816202) b!4788518))

(assert (= (and d!1531836 (not c!816202)) b!4788519))

(assert (= (and b!4788519 c!816203) b!4788520))

(assert (= (and b!4788519 (not c!816203)) b!4788521))

(declare-fun m!5767962 () Bool)

(assert (=> b!4788520 m!5767962))

(assert (=> b!4788315 d!1531836))

(declare-fun d!1531838 () Bool)

(assert (=> d!1531838 (isDefined!10172 (getValueByKey!2327 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(declare-fun lt!1948739 () Unit!139622)

(assert (=> d!1531838 (= lt!1948739 (choose!34444 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(declare-fun e!2989856 () Bool)

(assert (=> d!1531838 e!2989856))

(declare-fun res!2034550 () Bool)

(assert (=> d!1531838 (=> (not res!2034550) (not e!2989856))))

(assert (=> d!1531838 (= res!2034550 (isStrictlySorted!866 (toList!6833 (tail!9224 lm!2473))))))

(assert (=> d!1531838 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (toList!6833 (tail!9224 lm!2473)) lt!1948621) lt!1948739)))

(declare-fun b!4788522 () Bool)

(assert (=> b!4788522 (= e!2989856 (containsKey!3893 (toList!6833 (tail!9224 lm!2473)) lt!1948621))))

(assert (= (and d!1531838 res!2034550) b!4788522))

(assert (=> d!1531838 m!5767774))

(assert (=> d!1531838 m!5767774))

(assert (=> d!1531838 m!5767776))

(declare-fun m!5767964 () Bool)

(assert (=> d!1531838 m!5767964))

(declare-fun m!5767966 () Bool)

(assert (=> d!1531838 m!5767966))

(assert (=> b!4788522 m!5767770))

(assert (=> b!4788313 d!1531838))

(assert (=> b!4788313 d!1531834))

(assert (=> b!4788313 d!1531836))

(declare-fun d!1531840 () Bool)

(declare-fun e!2989858 () Bool)

(assert (=> d!1531840 e!2989858))

(declare-fun res!2034551 () Bool)

(assert (=> d!1531840 (=> res!2034551 e!2989858)))

(declare-fun lt!1948740 () Bool)

(assert (=> d!1531840 (= res!2034551 (not lt!1948740))))

(declare-fun lt!1948742 () Bool)

(assert (=> d!1531840 (= lt!1948740 lt!1948742)))

(declare-fun lt!1948743 () Unit!139622)

(declare-fun e!2989857 () Unit!139622)

(assert (=> d!1531840 (= lt!1948743 e!2989857)))

(declare-fun c!816204 () Bool)

(assert (=> d!1531840 (= c!816204 lt!1948742)))

(assert (=> d!1531840 (= lt!1948742 (containsKey!3893 (toList!6833 lm!2473) (hash!4901 hashF!1559 key!5896)))))

(assert (=> d!1531840 (= (contains!17710 lm!2473 (hash!4901 hashF!1559 key!5896)) lt!1948740)))

(declare-fun b!4788523 () Bool)

(declare-fun lt!1948741 () Unit!139622)

(assert (=> b!4788523 (= e!2989857 lt!1948741)))

(assert (=> b!4788523 (= lt!1948741 (lemmaContainsKeyImpliesGetValueByKeyDefined!2119 (toList!6833 lm!2473) (hash!4901 hashF!1559 key!5896)))))

(assert (=> b!4788523 (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) (hash!4901 hashF!1559 key!5896)))))

(declare-fun b!4788524 () Bool)

(declare-fun Unit!139634 () Unit!139622)

(assert (=> b!4788524 (= e!2989857 Unit!139634)))

(declare-fun b!4788525 () Bool)

(assert (=> b!4788525 (= e!2989858 (isDefined!10172 (getValueByKey!2327 (toList!6833 lm!2473) (hash!4901 hashF!1559 key!5896))))))

(assert (= (and d!1531840 c!816204) b!4788523))

(assert (= (and d!1531840 (not c!816204)) b!4788524))

(assert (= (and d!1531840 (not res!2034551)) b!4788525))

(assert (=> d!1531840 m!5767658))

(declare-fun m!5767968 () Bool)

(assert (=> d!1531840 m!5767968))

(assert (=> b!4788523 m!5767658))

(declare-fun m!5767970 () Bool)

(assert (=> b!4788523 m!5767970))

(assert (=> b!4788523 m!5767658))

(declare-fun m!5767972 () Bool)

(assert (=> b!4788523 m!5767972))

(assert (=> b!4788523 m!5767972))

(declare-fun m!5767974 () Bool)

(assert (=> b!4788523 m!5767974))

(assert (=> b!4788525 m!5767658))

(assert (=> b!4788525 m!5767972))

(assert (=> b!4788525 m!5767972))

(assert (=> b!4788525 m!5767974))

(assert (=> d!1531750 d!1531840))

(assert (=> d!1531750 d!1531758))

(declare-fun d!1531842 () Bool)

(declare-fun e!2989861 () Bool)

(assert (=> d!1531842 e!2989861))

(declare-fun res!2034554 () Bool)

(assert (=> d!1531842 (=> (not res!2034554) (not e!2989861))))

(assert (=> d!1531842 (= res!2034554 (contains!17710 lm!2473 (hash!4901 hashF!1559 key!5896)))))

(assert (=> d!1531842 true))

(declare-fun _$5!187 () Unit!139622)

(assert (=> d!1531842 (= (choose!34441 lm!2473 key!5896 hashF!1559) _$5!187)))

(declare-fun b!4788528 () Bool)

(assert (=> b!4788528 (= e!2989861 (isDefined!10170 (getPair!849 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531842 res!2034554) b!4788528))

(assert (=> d!1531842 m!5767658))

(assert (=> d!1531842 m!5767658))

(assert (=> d!1531842 m!5767748))

(assert (=> b!4788528 m!5767658))

(assert (=> b!4788528 m!5767658))

(assert (=> b!4788528 m!5767754))

(assert (=> b!4788528 m!5767754))

(assert (=> b!4788528 m!5767756))

(assert (=> b!4788528 m!5767756))

(assert (=> b!4788528 m!5767760))

(assert (=> d!1531750 d!1531842))

(declare-fun d!1531844 () Bool)

(declare-fun res!2034555 () Bool)

(declare-fun e!2989862 () Bool)

(assert (=> d!1531844 (=> res!2034555 e!2989862)))

(assert (=> d!1531844 (= res!2034555 (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531844 (= (forall!12190 (toList!6833 lm!2473) lambda!229733) e!2989862)))

(declare-fun b!4788529 () Bool)

(declare-fun e!2989863 () Bool)

(assert (=> b!4788529 (= e!2989862 e!2989863)))

(declare-fun res!2034556 () Bool)

(assert (=> b!4788529 (=> (not res!2034556) (not e!2989863))))

(assert (=> b!4788529 (= res!2034556 (dynLambda!22044 lambda!229733 (h!60542 (toList!6833 lm!2473))))))

(declare-fun b!4788530 () Bool)

(assert (=> b!4788530 (= e!2989863 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229733))))

(assert (= (and d!1531844 (not res!2034555)) b!4788529))

(assert (= (and b!4788529 res!2034556) b!4788530))

(declare-fun b_lambda!186383 () Bool)

(assert (=> (not b_lambda!186383) (not b!4788529)))

(declare-fun m!5767976 () Bool)

(assert (=> b!4788529 m!5767976))

(declare-fun m!5767978 () Bool)

(assert (=> b!4788530 m!5767978))

(assert (=> d!1531750 d!1531844))

(declare-fun d!1531846 () Bool)

(declare-fun choose!34445 (Hashable!6877 K!15682) (_ BitVec 64))

(assert (=> d!1531846 (= (hash!4903 hashF!1559 key!5896) (choose!34445 hashF!1559 key!5896))))

(declare-fun bs!1153928 () Bool)

(assert (= bs!1153928 d!1531846))

(declare-fun m!5767980 () Bool)

(assert (=> bs!1153928 m!5767980))

(assert (=> d!1531758 d!1531846))

(declare-fun d!1531848 () Bool)

(assert (=> d!1531848 (isDefined!10173 (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(declare-fun lt!1948746 () Unit!139622)

(declare-fun choose!34446 (List!54241 K!15682) Unit!139622)

(assert (=> d!1531848 (= lt!1948746 (choose!34446 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(assert (=> d!1531848 (invariantList!1718 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))

(assert (=> d!1531848 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2120 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896) lt!1948746)))

(declare-fun bs!1153929 () Bool)

(assert (= bs!1153929 d!1531848))

(assert (=> bs!1153929 m!5767818))

(assert (=> bs!1153929 m!5767818))

(assert (=> bs!1153929 m!5767820))

(declare-fun m!5767982 () Bool)

(assert (=> bs!1153929 m!5767982))

(declare-fun m!5767984 () Bool)

(assert (=> bs!1153929 m!5767984))

(assert (=> b!4788384 d!1531848))

(declare-fun d!1531850 () Bool)

(declare-fun isEmpty!29415 (Option!13031) Bool)

(assert (=> d!1531850 (= (isDefined!10173 (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896)) (not (isEmpty!29415 (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))))

(declare-fun bs!1153930 () Bool)

(assert (= bs!1153930 d!1531850))

(assert (=> bs!1153930 m!5767818))

(declare-fun m!5767986 () Bool)

(assert (=> bs!1153930 m!5767986))

(assert (=> b!4788384 d!1531850))

(declare-fun b!4788539 () Bool)

(declare-fun e!2989868 () Option!13031)

(assert (=> b!4788539 (= e!2989868 (Some!13030 (_2!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))))

(declare-fun b!4788542 () Bool)

(declare-fun e!2989869 () Option!13031)

(assert (=> b!4788542 (= e!2989869 None!13030)))

(declare-fun b!4788541 () Bool)

(assert (=> b!4788541 (= e!2989869 (getValueByKey!2328 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) key!5896))))

(declare-fun b!4788540 () Bool)

(assert (=> b!4788540 (= e!2989868 e!2989869)))

(declare-fun c!816210 () Bool)

(assert (=> b!4788540 (= c!816210 (and (is-Cons!54117 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (not (= (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) key!5896))))))

(declare-fun d!1531852 () Bool)

(declare-fun c!816209 () Bool)

(assert (=> d!1531852 (= c!816209 (and (is-Cons!54117 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (= (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) key!5896)))))

(assert (=> d!1531852 (= (getValueByKey!2328 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896) e!2989868)))

(assert (= (and d!1531852 c!816209) b!4788539))

(assert (= (and d!1531852 (not c!816209)) b!4788540))

(assert (= (and b!4788540 c!816210) b!4788541))

(assert (= (and b!4788540 (not c!816210)) b!4788542))

(declare-fun m!5767988 () Bool)

(assert (=> b!4788541 m!5767988))

(assert (=> b!4788384 d!1531852))

(declare-fun d!1531854 () Bool)

(assert (=> d!1531854 (contains!17715 (getKeysList!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) key!5896)))

(declare-fun lt!1948749 () Unit!139622)

(declare-fun choose!34447 (List!54241 K!15682) Unit!139622)

(assert (=> d!1531854 (= lt!1948749 (choose!34447 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(assert (=> d!1531854 (invariantList!1718 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))

(assert (=> d!1531854 (= (lemmaInListThenGetKeysListContains!1059 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896) lt!1948749)))

(declare-fun bs!1153931 () Bool)

(assert (= bs!1153931 d!1531854))

(assert (=> bs!1153931 m!5767810))

(assert (=> bs!1153931 m!5767810))

(declare-fun m!5767990 () Bool)

(assert (=> bs!1153931 m!5767990))

(declare-fun m!5767992 () Bool)

(assert (=> bs!1153931 m!5767992))

(assert (=> bs!1153931 m!5767984))

(assert (=> b!4788384 d!1531854))

(declare-fun b!4788557 () Bool)

(assert (=> b!4788557 true))

(declare-fun bs!1153932 () Bool)

(declare-fun b!4788553 () Bool)

(assert (= bs!1153932 (and b!4788553 b!4788557)))

(declare-fun lambda!229781 () Int)

(declare-fun lambda!229780 () Int)

(assert (=> bs!1153932 (= lambda!229781 lambda!229780)))

(assert (=> b!4788553 true))

(declare-fun lambda!229782 () Int)

(declare-fun lt!1948807 () ListMap!6305)

(assert (=> bs!1153932 (= (= lt!1948807 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (= lambda!229782 lambda!229780))))

(assert (=> b!4788553 (= (= lt!1948807 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (= lambda!229782 lambda!229781))))

(assert (=> b!4788553 true))

(declare-fun bs!1153933 () Bool)

(declare-fun d!1531856 () Bool)

(assert (= bs!1153933 (and d!1531856 b!4788557)))

(declare-fun lt!1948806 () ListMap!6305)

(declare-fun lambda!229783 () Int)

(assert (=> bs!1153933 (= (= lt!1948806 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (= lambda!229783 lambda!229780))))

(declare-fun bs!1153934 () Bool)

(assert (= bs!1153934 (and d!1531856 b!4788553)))

(assert (=> bs!1153934 (= (= lt!1948806 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (= lambda!229783 lambda!229781))))

(assert (=> bs!1153934 (= (= lt!1948806 lt!1948807) (= lambda!229783 lambda!229782))))

(assert (=> d!1531856 true))

(declare-fun call!334926 () Bool)

(declare-fun bm!334920 () Bool)

(declare-fun c!816213 () Bool)

(declare-fun forall!12192 (List!54241 Int) Bool)

(assert (=> bm!334920 (= call!334926 (forall!12192 (ite c!816213 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (_2!31633 (h!60542 (toList!6833 lm!2473)))) (ite c!816213 lambda!229780 lambda!229782)))))

(declare-fun e!2989877 () ListMap!6305)

(assert (=> b!4788553 (= e!2989877 lt!1948807)))

(declare-fun lt!1948800 () ListMap!6305)

(declare-fun +!2477 (ListMap!6305 tuple2!56676) ListMap!6305)

(assert (=> b!4788553 (= lt!1948800 (+!2477 (extractMap!2404 (t!361692 (toList!6833 lm!2473))) (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(assert (=> b!4788553 (= lt!1948807 (addToMapMapFromBucket!1689 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) (+!2477 (extractMap!2404 (t!361692 (toList!6833 lm!2473))) (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))))

(declare-fun lt!1948798 () Unit!139622)

(declare-fun call!334925 () Unit!139622)

(assert (=> b!4788553 (= lt!1948798 call!334925)))

(assert (=> b!4788553 (forall!12192 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lambda!229781)))

(declare-fun lt!1948792 () Unit!139622)

(assert (=> b!4788553 (= lt!1948792 lt!1948798)))

(declare-fun call!334927 () Bool)

(assert (=> b!4788553 call!334927))

(declare-fun lt!1948812 () Unit!139622)

(declare-fun Unit!139635 () Unit!139622)

(assert (=> b!4788553 (= lt!1948812 Unit!139635)))

(assert (=> b!4788553 (forall!12192 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) lambda!229782)))

(declare-fun lt!1948793 () Unit!139622)

(declare-fun Unit!139636 () Unit!139622)

(assert (=> b!4788553 (= lt!1948793 Unit!139636)))

(declare-fun lt!1948803 () Unit!139622)

(declare-fun Unit!139637 () Unit!139622)

(assert (=> b!4788553 (= lt!1948803 Unit!139637)))

(declare-fun lt!1948796 () Unit!139622)

(declare-fun forallContained!4135 (List!54241 Int tuple2!56676) Unit!139622)

(assert (=> b!4788553 (= lt!1948796 (forallContained!4135 (toList!6834 lt!1948800) lambda!229782 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(assert (=> b!4788553 (contains!17711 lt!1948800 (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(declare-fun lt!1948804 () Unit!139622)

(declare-fun Unit!139638 () Unit!139622)

(assert (=> b!4788553 (= lt!1948804 Unit!139638)))

(assert (=> b!4788553 (contains!17711 lt!1948807 (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(declare-fun lt!1948799 () Unit!139622)

(declare-fun Unit!139639 () Unit!139622)

(assert (=> b!4788553 (= lt!1948799 Unit!139639)))

(assert (=> b!4788553 (forall!12192 (_2!31633 (h!60542 (toList!6833 lm!2473))) lambda!229782)))

(declare-fun lt!1948797 () Unit!139622)

(declare-fun Unit!139640 () Unit!139622)

(assert (=> b!4788553 (= lt!1948797 Unit!139640)))

(assert (=> b!4788553 (forall!12192 (toList!6834 lt!1948800) lambda!229782)))

(declare-fun lt!1948810 () Unit!139622)

(declare-fun Unit!139641 () Unit!139622)

(assert (=> b!4788553 (= lt!1948810 Unit!139641)))

(declare-fun lt!1948811 () Unit!139622)

(declare-fun Unit!139642 () Unit!139622)

(assert (=> b!4788553 (= lt!1948811 Unit!139642)))

(declare-fun lt!1948805 () Unit!139622)

(declare-fun addForallContainsKeyThenBeforeAdding!932 (ListMap!6305 ListMap!6305 K!15682 V!15928) Unit!139622)

(assert (=> b!4788553 (= lt!1948805 (addForallContainsKeyThenBeforeAdding!932 (extractMap!2404 (t!361692 (toList!6833 lm!2473))) lt!1948807 (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))) (_2!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))))

(assert (=> b!4788553 (forall!12192 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lambda!229782)))

(declare-fun lt!1948801 () Unit!139622)

(assert (=> b!4788553 (= lt!1948801 lt!1948805)))

(assert (=> b!4788553 (forall!12192 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lambda!229782)))

(declare-fun lt!1948802 () Unit!139622)

(declare-fun Unit!139643 () Unit!139622)

(assert (=> b!4788553 (= lt!1948802 Unit!139643)))

(declare-fun res!2034563 () Bool)

(assert (=> b!4788553 (= res!2034563 call!334926)))

(declare-fun e!2989876 () Bool)

(assert (=> b!4788553 (=> (not res!2034563) (not e!2989876))))

(assert (=> b!4788553 e!2989876))

(declare-fun lt!1948809 () Unit!139622)

(declare-fun Unit!139644 () Unit!139622)

(assert (=> b!4788553 (= lt!1948809 Unit!139644)))

(declare-fun b!4788554 () Bool)

(declare-fun res!2034565 () Bool)

(declare-fun e!2989878 () Bool)

(assert (=> b!4788554 (=> (not res!2034565) (not e!2989878))))

(assert (=> b!4788554 (= res!2034565 (forall!12192 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lambda!229783))))

(declare-fun b!4788555 () Bool)

(assert (=> b!4788555 (= e!2989878 (invariantList!1718 (toList!6834 lt!1948806)))))

(assert (=> d!1531856 e!2989878))

(declare-fun res!2034564 () Bool)

(assert (=> d!1531856 (=> (not res!2034564) (not e!2989878))))

(assert (=> d!1531856 (= res!2034564 (forall!12192 (_2!31633 (h!60542 (toList!6833 lm!2473))) lambda!229783))))

(assert (=> d!1531856 (= lt!1948806 e!2989877)))

(assert (=> d!1531856 (= c!816213 (is-Nil!54117 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(assert (=> d!1531856 (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473))))))

(assert (=> d!1531856 (= (addToMapMapFromBucket!1689 (_2!31633 (h!60542 (toList!6833 lm!2473))) (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lt!1948806)))

(declare-fun bm!334921 () Bool)

(assert (=> bm!334921 (= call!334927 (forall!12192 (ite c!816213 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) (toList!6834 lt!1948800)) (ite c!816213 lambda!229780 lambda!229782)))))

(declare-fun b!4788556 () Bool)

(assert (=> b!4788556 (= e!2989876 (forall!12192 (toList!6834 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))) lambda!229782))))

(assert (=> b!4788557 (= e!2989877 (extractMap!2404 (t!361692 (toList!6833 lm!2473))))))

(declare-fun lt!1948808 () Unit!139622)

(assert (=> b!4788557 (= lt!1948808 call!334925)))

(assert (=> b!4788557 call!334926))

(declare-fun lt!1948795 () Unit!139622)

(assert (=> b!4788557 (= lt!1948795 lt!1948808)))

(assert (=> b!4788557 call!334927))

(declare-fun lt!1948794 () Unit!139622)

(declare-fun Unit!139645 () Unit!139622)

(assert (=> b!4788557 (= lt!1948794 Unit!139645)))

(declare-fun bm!334922 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!933 (ListMap!6305) Unit!139622)

(assert (=> bm!334922 (= call!334925 (lemmaContainsAllItsOwnKeys!933 (extractMap!2404 (t!361692 (toList!6833 lm!2473)))))))

(assert (= (and d!1531856 c!816213) b!4788557))

(assert (= (and d!1531856 (not c!816213)) b!4788553))

(assert (= (and b!4788553 res!2034563) b!4788556))

(assert (= (or b!4788557 b!4788553) bm!334920))

(assert (= (or b!4788557 b!4788553) bm!334921))

(assert (= (or b!4788557 b!4788553) bm!334922))

(assert (= (and d!1531856 res!2034564) b!4788554))

(assert (= (and b!4788554 res!2034565) b!4788555))

(declare-fun m!5767994 () Bool)

(assert (=> b!4788553 m!5767994))

(declare-fun m!5767996 () Bool)

(assert (=> b!4788553 m!5767996))

(declare-fun m!5767998 () Bool)

(assert (=> b!4788553 m!5767998))

(assert (=> b!4788553 m!5767852))

(assert (=> b!4788553 m!5767994))

(declare-fun m!5768000 () Bool)

(assert (=> b!4788553 m!5768000))

(assert (=> b!4788553 m!5768000))

(declare-fun m!5768002 () Bool)

(assert (=> b!4788553 m!5768002))

(declare-fun m!5768004 () Bool)

(assert (=> b!4788553 m!5768004))

(declare-fun m!5768006 () Bool)

(assert (=> b!4788553 m!5768006))

(declare-fun m!5768008 () Bool)

(assert (=> b!4788553 m!5768008))

(declare-fun m!5768010 () Bool)

(assert (=> b!4788553 m!5768010))

(declare-fun m!5768012 () Bool)

(assert (=> b!4788553 m!5768012))

(assert (=> b!4788553 m!5767852))

(declare-fun m!5768014 () Bool)

(assert (=> b!4788553 m!5768014))

(declare-fun m!5768016 () Bool)

(assert (=> b!4788555 m!5768016))

(declare-fun m!5768018 () Bool)

(assert (=> d!1531856 m!5768018))

(assert (=> d!1531856 m!5767856))

(declare-fun m!5768020 () Bool)

(assert (=> bm!334920 m!5768020))

(declare-fun m!5768022 () Bool)

(assert (=> b!4788554 m!5768022))

(assert (=> bm!334922 m!5767852))

(declare-fun m!5768024 () Bool)

(assert (=> bm!334922 m!5768024))

(assert (=> b!4788556 m!5768000))

(declare-fun m!5768026 () Bool)

(assert (=> bm!334921 m!5768026))

(assert (=> b!4788406 d!1531856))

(declare-fun bs!1153935 () Bool)

(declare-fun d!1531858 () Bool)

(assert (= bs!1153935 (and d!1531858 d!1531780)))

(declare-fun lambda!229784 () Int)

(assert (=> bs!1153935 (= lambda!229784 lambda!229739)))

(declare-fun bs!1153936 () Bool)

(assert (= bs!1153936 (and d!1531858 start!492628)))

(assert (=> bs!1153936 (= lambda!229784 lambda!229724)))

(declare-fun bs!1153937 () Bool)

(assert (= bs!1153937 (and d!1531858 d!1531746)))

(assert (=> bs!1153937 (= lambda!229784 lambda!229730)))

(declare-fun bs!1153938 () Bool)

(assert (= bs!1153938 (and d!1531858 d!1531770)))

(assert (=> bs!1153938 (not (= lambda!229784 lambda!229736))))

(declare-fun bs!1153939 () Bool)

(assert (= bs!1153939 (and d!1531858 d!1531750)))

(assert (=> bs!1153939 (= lambda!229784 lambda!229733)))

(declare-fun lt!1948813 () ListMap!6305)

(assert (=> d!1531858 (invariantList!1718 (toList!6834 lt!1948813))))

(declare-fun e!2989879 () ListMap!6305)

(assert (=> d!1531858 (= lt!1948813 e!2989879)))

(declare-fun c!816214 () Bool)

(assert (=> d!1531858 (= c!816214 (is-Cons!54118 (t!361692 (toList!6833 lm!2473))))))

(assert (=> d!1531858 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229784)))

(assert (=> d!1531858 (= (extractMap!2404 (t!361692 (toList!6833 lm!2473))) lt!1948813)))

(declare-fun b!4788560 () Bool)

(assert (=> b!4788560 (= e!2989879 (addToMapMapFromBucket!1689 (_2!31633 (h!60542 (t!361692 (toList!6833 lm!2473)))) (extractMap!2404 (t!361692 (t!361692 (toList!6833 lm!2473))))))))

(declare-fun b!4788561 () Bool)

(assert (=> b!4788561 (= e!2989879 (ListMap!6306 Nil!54117))))

(assert (= (and d!1531858 c!816214) b!4788560))

(assert (= (and d!1531858 (not c!816214)) b!4788561))

(declare-fun m!5768028 () Bool)

(assert (=> d!1531858 m!5768028))

(declare-fun m!5768030 () Bool)

(assert (=> d!1531858 m!5768030))

(declare-fun m!5768032 () Bool)

(assert (=> b!4788560 m!5768032))

(assert (=> b!4788560 m!5768032))

(declare-fun m!5768034 () Bool)

(assert (=> b!4788560 m!5768034))

(assert (=> b!4788406 d!1531858))

(declare-fun d!1531860 () Bool)

(declare-fun res!2034570 () Bool)

(declare-fun e!2989884 () Bool)

(assert (=> d!1531860 (=> res!2034570 e!2989884)))

(assert (=> d!1531860 (= res!2034570 (or (is-Nil!54118 (toList!6833 lm!2473)) (is-Nil!54118 (t!361692 (toList!6833 lm!2473)))))))

(assert (=> d!1531860 (= (isStrictlySorted!866 (toList!6833 lm!2473)) e!2989884)))

(declare-fun b!4788566 () Bool)

(declare-fun e!2989885 () Bool)

(assert (=> b!4788566 (= e!2989884 e!2989885)))

(declare-fun res!2034571 () Bool)

(assert (=> b!4788566 (=> (not res!2034571) (not e!2989885))))

(assert (=> b!4788566 (= res!2034571 (bvslt (_1!31633 (h!60542 (toList!6833 lm!2473))) (_1!31633 (h!60542 (t!361692 (toList!6833 lm!2473))))))))

(declare-fun b!4788567 () Bool)

(assert (=> b!4788567 (= e!2989885 (isStrictlySorted!866 (t!361692 (toList!6833 lm!2473))))))

(assert (= (and d!1531860 (not res!2034570)) b!4788566))

(assert (= (and b!4788566 res!2034571) b!4788567))

(declare-fun m!5768036 () Bool)

(assert (=> b!4788567 m!5768036))

(assert (=> d!1531766 d!1531860))

(declare-fun d!1531862 () Bool)

(assert (=> d!1531862 (= (isDefined!10170 (getPair!849 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29411 (getPair!849 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1153940 () Bool)

(assert (= bs!1153940 d!1531862))

(assert (=> bs!1153940 m!5767756))

(declare-fun m!5768038 () Bool)

(assert (=> bs!1153940 m!5768038))

(assert (=> b!4788301 d!1531862))

(declare-fun b!4788568 () Bool)

(declare-fun e!2989886 () Option!13028)

(assert (=> b!4788568 (= e!2989886 (getPair!849 (t!361691 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4788570 () Bool)

(assert (=> b!4788570 (= e!2989886 None!13027)))

(declare-fun b!4788571 () Bool)

(declare-fun e!2989887 () Bool)

(declare-fun e!2989890 () Bool)

(assert (=> b!4788571 (= e!2989887 e!2989890)))

(declare-fun res!2034572 () Bool)

(assert (=> b!4788571 (=> (not res!2034572) (not e!2989890))))

(declare-fun lt!1948814 () Option!13028)

(assert (=> b!4788571 (= res!2034572 (isDefined!10170 lt!1948814))))

(declare-fun b!4788572 () Bool)

(declare-fun e!2989889 () Option!13028)

(assert (=> b!4788572 (= e!2989889 e!2989886)))

(declare-fun c!816215 () Bool)

(assert (=> b!4788572 (= c!816215 (is-Cons!54117 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896))))))

(declare-fun b!4788573 () Bool)

(assert (=> b!4788573 (= e!2989890 (contains!17714 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) (get!18432 lt!1948814)))))

(declare-fun b!4788574 () Bool)

(assert (=> b!4788574 (= e!2989889 (Some!13027 (h!60541 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)))))))

(declare-fun b!4788575 () Bool)

(declare-fun e!2989888 () Bool)

(assert (=> b!4788575 (= e!2989888 (not (containsKey!3891 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896)))))

(declare-fun d!1531864 () Bool)

(assert (=> d!1531864 e!2989887))

(declare-fun res!2034573 () Bool)

(assert (=> d!1531864 (=> res!2034573 e!2989887)))

(assert (=> d!1531864 (= res!2034573 e!2989888)))

(declare-fun res!2034575 () Bool)

(assert (=> d!1531864 (=> (not res!2034575) (not e!2989888))))

(assert (=> d!1531864 (= res!2034575 (isEmpty!29411 lt!1948814))))

(assert (=> d!1531864 (= lt!1948814 e!2989889)))

(declare-fun c!816216 () Bool)

(assert (=> d!1531864 (= c!816216 (and (is-Cons!54117 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896))) (= (_1!31632 (h!60541 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1531864 (noDuplicateKeys!2320 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)))))

(assert (=> d!1531864 (= (getPair!849 (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) key!5896) lt!1948814)))

(declare-fun b!4788569 () Bool)

(declare-fun res!2034574 () Bool)

(assert (=> b!4788569 (=> (not res!2034574) (not e!2989890))))

(assert (=> b!4788569 (= res!2034574 (= (_1!31632 (get!18432 lt!1948814)) key!5896))))

(assert (= (and d!1531864 c!816216) b!4788574))

(assert (= (and d!1531864 (not c!816216)) b!4788572))

(assert (= (and b!4788572 c!816215) b!4788568))

(assert (= (and b!4788572 (not c!816215)) b!4788570))

(assert (= (and d!1531864 res!2034575) b!4788575))

(assert (= (and d!1531864 (not res!2034573)) b!4788571))

(assert (= (and b!4788571 res!2034572) b!4788569))

(assert (= (and b!4788569 res!2034574) b!4788573))

(declare-fun m!5768040 () Bool)

(assert (=> b!4788573 m!5768040))

(assert (=> b!4788573 m!5767754))

(assert (=> b!4788573 m!5768040))

(declare-fun m!5768042 () Bool)

(assert (=> b!4788573 m!5768042))

(assert (=> b!4788569 m!5768040))

(assert (=> b!4788575 m!5767754))

(declare-fun m!5768044 () Bool)

(assert (=> b!4788575 m!5768044))

(declare-fun m!5768046 () Bool)

(assert (=> b!4788571 m!5768046))

(declare-fun m!5768048 () Bool)

(assert (=> b!4788568 m!5768048))

(declare-fun m!5768050 () Bool)

(assert (=> d!1531864 m!5768050))

(assert (=> d!1531864 m!5767754))

(declare-fun m!5768052 () Bool)

(assert (=> d!1531864 m!5768052))

(assert (=> b!4788301 d!1531864))

(declare-fun d!1531866 () Bool)

(assert (=> d!1531866 (= (apply!12938 lm!2473 (hash!4901 hashF!1559 key!5896)) (get!18433 (getValueByKey!2327 (toList!6833 lm!2473) (hash!4901 hashF!1559 key!5896))))))

(declare-fun bs!1153941 () Bool)

(assert (= bs!1153941 d!1531866))

(assert (=> bs!1153941 m!5767658))

(assert (=> bs!1153941 m!5767972))

(assert (=> bs!1153941 m!5767972))

(declare-fun m!5768054 () Bool)

(assert (=> bs!1153941 m!5768054))

(assert (=> b!4788301 d!1531866))

(assert (=> b!4788301 d!1531758))

(assert (=> b!4788388 d!1531828))

(declare-fun d!1531868 () Bool)

(assert (=> d!1531868 (containsKey!3894 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896)))

(declare-fun lt!1948817 () Unit!139622)

(declare-fun choose!34448 (List!54241 K!15682) Unit!139622)

(assert (=> d!1531868 (= lt!1948817 (choose!34448 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896))))

(assert (=> d!1531868 (invariantList!1718 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))

(assert (=> d!1531868 (= (lemmaInGetKeysListThenContainsKey!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) key!5896) lt!1948817)))

(declare-fun bs!1153942 () Bool)

(assert (= bs!1153942 d!1531868))

(assert (=> bs!1153942 m!5767812))

(declare-fun m!5768056 () Bool)

(assert (=> bs!1153942 m!5768056))

(assert (=> bs!1153942 m!5767984))

(assert (=> b!4788388 d!1531868))

(assert (=> b!4788290 d!1531738))

(declare-fun d!1531870 () Bool)

(declare-fun lt!1948820 () Bool)

(declare-fun content!9688 (List!54245) (Set K!15682))

(assert (=> d!1531870 (= lt!1948820 (set.member key!5896 (content!9688 (keys!19741 (extractMap!2404 (toList!6833 lm!2473))))))))

(declare-fun e!2989895 () Bool)

(assert (=> d!1531870 (= lt!1948820 e!2989895)))

(declare-fun res!2034580 () Bool)

(assert (=> d!1531870 (=> (not res!2034580) (not e!2989895))))

(assert (=> d!1531870 (= res!2034580 (is-Cons!54121 (keys!19741 (extractMap!2404 (toList!6833 lm!2473)))))))

(assert (=> d!1531870 (= (contains!17715 (keys!19741 (extractMap!2404 (toList!6833 lm!2473))) key!5896) lt!1948820)))

(declare-fun b!4788580 () Bool)

(declare-fun e!2989896 () Bool)

(assert (=> b!4788580 (= e!2989895 e!2989896)))

(declare-fun res!2034581 () Bool)

(assert (=> b!4788580 (=> res!2034581 e!2989896)))

(assert (=> b!4788580 (= res!2034581 (= (h!60545 (keys!19741 (extractMap!2404 (toList!6833 lm!2473)))) key!5896))))

(declare-fun b!4788581 () Bool)

(assert (=> b!4788581 (= e!2989896 (contains!17715 (t!361695 (keys!19741 (extractMap!2404 (toList!6833 lm!2473)))) key!5896))))

(assert (= (and d!1531870 res!2034580) b!4788580))

(assert (= (and b!4788580 (not res!2034581)) b!4788581))

(assert (=> d!1531870 m!5767824))

(declare-fun m!5768058 () Bool)

(assert (=> d!1531870 m!5768058))

(declare-fun m!5768060 () Bool)

(assert (=> d!1531870 m!5768060))

(declare-fun m!5768062 () Bool)

(assert (=> b!4788581 m!5768062))

(assert (=> b!4788387 d!1531870))

(declare-fun b!4788589 () Bool)

(assert (=> b!4788589 true))

(declare-fun d!1531872 () Bool)

(declare-fun e!2989899 () Bool)

(assert (=> d!1531872 e!2989899))

(declare-fun res!2034588 () Bool)

(assert (=> d!1531872 (=> (not res!2034588) (not e!2989899))))

(declare-fun lt!1948823 () List!54245)

(declare-fun noDuplicate!910 (List!54245) Bool)

(assert (=> d!1531872 (= res!2034588 (noDuplicate!910 lt!1948823))))

(assert (=> d!1531872 (= lt!1948823 (getKeysList!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))

(assert (=> d!1531872 (= (keys!19741 (extractMap!2404 (toList!6833 lm!2473))) lt!1948823)))

(declare-fun b!4788588 () Bool)

(declare-fun res!2034590 () Bool)

(assert (=> b!4788588 (=> (not res!2034590) (not e!2989899))))

(declare-fun length!676 (List!54245) Int)

(declare-fun length!677 (List!54241) Int)

(assert (=> b!4788588 (= res!2034590 (= (length!676 lt!1948823) (length!677 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))))

(declare-fun res!2034589 () Bool)

(assert (=> b!4788589 (=> (not res!2034589) (not e!2989899))))

(declare-fun lambda!229789 () Int)

(declare-fun forall!12193 (List!54245 Int) Bool)

(assert (=> b!4788589 (= res!2034589 (forall!12193 lt!1948823 lambda!229789))))

(declare-fun lambda!229790 () Int)

(declare-fun b!4788590 () Bool)

(declare-fun map!12210 (List!54241 Int) List!54245)

(assert (=> b!4788590 (= e!2989899 (= (content!9688 lt!1948823) (content!9688 (map!12210 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) lambda!229790))))))

(assert (= (and d!1531872 res!2034588) b!4788588))

(assert (= (and b!4788588 res!2034590) b!4788589))

(assert (= (and b!4788589 res!2034589) b!4788590))

(declare-fun m!5768064 () Bool)

(assert (=> d!1531872 m!5768064))

(assert (=> d!1531872 m!5767810))

(declare-fun m!5768066 () Bool)

(assert (=> b!4788588 m!5768066))

(declare-fun m!5768068 () Bool)

(assert (=> b!4788588 m!5768068))

(declare-fun m!5768070 () Bool)

(assert (=> b!4788589 m!5768070))

(declare-fun m!5768072 () Bool)

(assert (=> b!4788590 m!5768072))

(declare-fun m!5768074 () Bool)

(assert (=> b!4788590 m!5768074))

(assert (=> b!4788590 m!5768074))

(declare-fun m!5768076 () Bool)

(assert (=> b!4788590 m!5768076))

(assert (=> b!4788387 d!1531872))

(assert (=> b!4788386 d!1531870))

(assert (=> b!4788386 d!1531872))

(declare-fun b!4788593 () Bool)

(declare-fun e!2989900 () Option!13028)

(assert (=> b!4788593 (= e!2989900 (getPair!849 (t!361691 (t!361691 (apply!12938 lm!2473 lt!1948621))) key!5896))))

(declare-fun b!4788595 () Bool)

(assert (=> b!4788595 (= e!2989900 None!13027)))

(declare-fun b!4788596 () Bool)

(declare-fun e!2989901 () Bool)

(declare-fun e!2989904 () Bool)

(assert (=> b!4788596 (= e!2989901 e!2989904)))

(declare-fun res!2034591 () Bool)

(assert (=> b!4788596 (=> (not res!2034591) (not e!2989904))))

(declare-fun lt!1948824 () Option!13028)

(assert (=> b!4788596 (= res!2034591 (isDefined!10170 lt!1948824))))

(declare-fun b!4788597 () Bool)

(declare-fun e!2989903 () Option!13028)

(assert (=> b!4788597 (= e!2989903 e!2989900)))

(declare-fun c!816217 () Bool)

(assert (=> b!4788597 (= c!816217 (is-Cons!54117 (t!361691 (apply!12938 lm!2473 lt!1948621))))))

(declare-fun b!4788598 () Bool)

(assert (=> b!4788598 (= e!2989904 (contains!17714 (t!361691 (apply!12938 lm!2473 lt!1948621)) (get!18432 lt!1948824)))))

(declare-fun b!4788599 () Bool)

(assert (=> b!4788599 (= e!2989903 (Some!13027 (h!60541 (t!361691 (apply!12938 lm!2473 lt!1948621)))))))

(declare-fun b!4788600 () Bool)

(declare-fun e!2989902 () Bool)

(assert (=> b!4788600 (= e!2989902 (not (containsKey!3891 (t!361691 (apply!12938 lm!2473 lt!1948621)) key!5896)))))

(declare-fun d!1531874 () Bool)

(assert (=> d!1531874 e!2989901))

(declare-fun res!2034592 () Bool)

(assert (=> d!1531874 (=> res!2034592 e!2989901)))

(assert (=> d!1531874 (= res!2034592 e!2989902)))

(declare-fun res!2034594 () Bool)

(assert (=> d!1531874 (=> (not res!2034594) (not e!2989902))))

(assert (=> d!1531874 (= res!2034594 (isEmpty!29411 lt!1948824))))

(assert (=> d!1531874 (= lt!1948824 e!2989903)))

(declare-fun c!816218 () Bool)

(assert (=> d!1531874 (= c!816218 (and (is-Cons!54117 (t!361691 (apply!12938 lm!2473 lt!1948621))) (= (_1!31632 (h!60541 (t!361691 (apply!12938 lm!2473 lt!1948621)))) key!5896)))))

(assert (=> d!1531874 (noDuplicateKeys!2320 (t!361691 (apply!12938 lm!2473 lt!1948621)))))

(assert (=> d!1531874 (= (getPair!849 (t!361691 (apply!12938 lm!2473 lt!1948621)) key!5896) lt!1948824)))

(declare-fun b!4788594 () Bool)

(declare-fun res!2034593 () Bool)

(assert (=> b!4788594 (=> (not res!2034593) (not e!2989904))))

(assert (=> b!4788594 (= res!2034593 (= (_1!31632 (get!18432 lt!1948824)) key!5896))))

(assert (= (and d!1531874 c!816218) b!4788599))

(assert (= (and d!1531874 (not c!816218)) b!4788597))

(assert (= (and b!4788597 c!816217) b!4788593))

(assert (= (and b!4788597 (not c!816217)) b!4788595))

(assert (= (and d!1531874 res!2034594) b!4788600))

(assert (= (and d!1531874 (not res!2034592)) b!4788596))

(assert (= (and b!4788596 res!2034591) b!4788594))

(assert (= (and b!4788594 res!2034593) b!4788598))

(declare-fun m!5768078 () Bool)

(assert (=> b!4788598 m!5768078))

(assert (=> b!4788598 m!5768078))

(declare-fun m!5768080 () Bool)

(assert (=> b!4788598 m!5768080))

(assert (=> b!4788594 m!5768078))

(assert (=> b!4788600 m!5767944))

(declare-fun m!5768082 () Bool)

(assert (=> b!4788596 m!5768082))

(declare-fun m!5768084 () Bool)

(assert (=> b!4788593 m!5768084))

(declare-fun m!5768086 () Bool)

(assert (=> d!1531874 m!5768086))

(assert (=> d!1531874 m!5767942))

(assert (=> b!4788340 d!1531874))

(assert (=> b!4788390 d!1531872))

(declare-fun d!1531876 () Bool)

(assert (=> d!1531876 (= (isEmpty!29411 (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896)) (not (is-Some!13027 (getPair!849 (apply!12938 lm!2473 lt!1948621) key!5896))))))

(assert (=> d!1531772 d!1531876))

(declare-fun d!1531878 () Bool)

(declare-fun res!2034595 () Bool)

(declare-fun e!2989907 () Bool)

(assert (=> d!1531878 (=> res!2034595 e!2989907)))

(declare-fun e!2989905 () Bool)

(assert (=> d!1531878 (= res!2034595 e!2989905)))

(declare-fun res!2034597 () Bool)

(assert (=> d!1531878 (=> (not res!2034597) (not e!2989905))))

(assert (=> d!1531878 (= res!2034597 (is-Cons!54118 (t!361692 (toList!6833 lm!2473))))))

(assert (=> d!1531878 (= (containsKeyBiggerList!527 (t!361692 (toList!6833 lm!2473)) key!5896) e!2989907)))

(declare-fun b!4788601 () Bool)

(assert (=> b!4788601 (= e!2989905 (containsKey!3891 (_2!31633 (h!60542 (t!361692 (toList!6833 lm!2473)))) key!5896))))

(declare-fun b!4788602 () Bool)

(declare-fun e!2989906 () Bool)

(assert (=> b!4788602 (= e!2989907 e!2989906)))

(declare-fun res!2034596 () Bool)

(assert (=> b!4788602 (=> (not res!2034596) (not e!2989906))))

(assert (=> b!4788602 (= res!2034596 (is-Cons!54118 (t!361692 (toList!6833 lm!2473))))))

(declare-fun b!4788603 () Bool)

(assert (=> b!4788603 (= e!2989906 (containsKeyBiggerList!527 (t!361692 (t!361692 (toList!6833 lm!2473))) key!5896))))

(assert (= (and d!1531878 res!2034597) b!4788601))

(assert (= (and d!1531878 (not res!2034595)) b!4788602))

(assert (= (and b!4788602 res!2034596) b!4788603))

(declare-fun m!5768088 () Bool)

(assert (=> b!4788601 m!5768088))

(declare-fun m!5768090 () Bool)

(assert (=> b!4788603 m!5768090))

(assert (=> b!4788292 d!1531878))

(declare-fun bs!1153943 () Bool)

(declare-fun b!4788632 () Bool)

(assert (= bs!1153943 (and b!4788632 b!4788589)))

(declare-fun lambda!229803 () Int)

(assert (=> bs!1153943 (= (= (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (= lambda!229803 lambda!229789))))

(assert (=> b!4788632 true))

(declare-fun bs!1153944 () Bool)

(declare-fun b!4788630 () Bool)

(assert (= bs!1153944 (and b!4788630 b!4788589)))

(declare-fun lambda!229804 () Int)

(assert (=> bs!1153944 (= (= (Cons!54117 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (= lambda!229804 lambda!229789))))

(declare-fun bs!1153945 () Bool)

(assert (= bs!1153945 (and b!4788630 b!4788632)))

(assert (=> bs!1153945 (= (= (Cons!54117 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (= lambda!229804 lambda!229803))))

(assert (=> b!4788630 true))

(declare-fun bs!1153946 () Bool)

(declare-fun b!4788631 () Bool)

(assert (= bs!1153946 (and b!4788631 b!4788589)))

(declare-fun lambda!229805 () Int)

(assert (=> bs!1153946 (= lambda!229805 lambda!229789)))

(declare-fun bs!1153947 () Bool)

(assert (= bs!1153947 (and b!4788631 b!4788632)))

(assert (=> bs!1153947 (= (= (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (= lambda!229805 lambda!229803))))

(declare-fun bs!1153948 () Bool)

(assert (= bs!1153948 (and b!4788631 b!4788630)))

(assert (=> bs!1153948 (= (= (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) (Cons!54117 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))) (= lambda!229805 lambda!229804))))

(assert (=> b!4788631 true))

(declare-fun bs!1153949 () Bool)

(declare-fun b!4788629 () Bool)

(assert (= bs!1153949 (and b!4788629 b!4788590)))

(declare-fun lambda!229806 () Int)

(assert (=> bs!1153949 (= lambda!229806 lambda!229790)))

(declare-fun b!4788628 () Bool)

(declare-fun e!2989920 () Unit!139622)

(declare-fun Unit!139646 () Unit!139622)

(assert (=> b!4788628 (= e!2989920 Unit!139646)))

(declare-fun e!2989921 () Bool)

(declare-fun lt!1948842 () List!54245)

(assert (=> b!4788629 (= e!2989921 (= (content!9688 lt!1948842) (content!9688 (map!12210 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))) lambda!229806))))))

(declare-fun e!2989919 () List!54245)

(assert (=> b!4788630 (= e!2989919 (Cons!54121 (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (getKeysList!1064 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))))

(declare-fun c!816227 () Bool)

(assert (=> b!4788630 (= c!816227 (containsKey!3894 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))))

(declare-fun lt!1948846 () Unit!139622)

(declare-fun e!2989918 () Unit!139622)

(assert (=> b!4788630 (= lt!1948846 e!2989918)))

(declare-fun c!816226 () Bool)

(assert (=> b!4788630 (= c!816226 (contains!17715 (getKeysList!1064 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))))

(declare-fun lt!1948844 () Unit!139622)

(assert (=> b!4788630 (= lt!1948844 e!2989920)))

(declare-fun lt!1948845 () List!54245)

(assert (=> b!4788630 (= lt!1948845 (getKeysList!1064 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))))

(declare-fun lt!1948843 () Unit!139622)

(declare-fun lemmaForallContainsAddHeadPreserves!326 (List!54241 List!54245 tuple2!56676) Unit!139622)

(assert (=> b!4788630 (= lt!1948843 (lemmaForallContainsAddHeadPreserves!326 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) lt!1948845 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))))

(assert (=> b!4788630 (forall!12193 lt!1948845 lambda!229804)))

(declare-fun lt!1948847 () Unit!139622)

(assert (=> b!4788630 (= lt!1948847 lt!1948843)))

(declare-fun res!2034612 () Bool)

(assert (=> b!4788631 (=> (not res!2034612) (not e!2989921))))

(assert (=> b!4788631 (= res!2034612 (forall!12193 lt!1948842 lambda!229805))))

(declare-fun d!1531880 () Bool)

(assert (=> d!1531880 e!2989921))

(declare-fun res!2034610 () Bool)

(assert (=> d!1531880 (=> (not res!2034610) (not e!2989921))))

(assert (=> d!1531880 (= res!2034610 (noDuplicate!910 lt!1948842))))

(assert (=> d!1531880 (= lt!1948842 e!2989919)))

(declare-fun c!816225 () Bool)

(assert (=> d!1531880 (= c!816225 (is-Cons!54117 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))

(assert (=> d!1531880 (invariantList!1718 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))

(assert (=> d!1531880 (= (getKeysList!1064 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))) lt!1948842)))

(assert (=> b!4788632 false))

(declare-fun lt!1948841 () Unit!139622)

(declare-fun forallContained!4136 (List!54245 Int K!15682) Unit!139622)

(assert (=> b!4788632 (= lt!1948841 (forallContained!4136 (getKeysList!1064 (t!361691 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))) lambda!229803 (_1!31632 (h!60541 (toList!6834 (extractMap!2404 (toList!6833 lm!2473)))))))))

(declare-fun Unit!139647 () Unit!139622)

(assert (=> b!4788632 (= e!2989920 Unit!139647)))

(declare-fun b!4788633 () Bool)

(declare-fun res!2034611 () Bool)

(assert (=> b!4788633 (=> (not res!2034611) (not e!2989921))))

(assert (=> b!4788633 (= res!2034611 (= (length!676 lt!1948842) (length!677 (toList!6834 (extractMap!2404 (toList!6833 lm!2473))))))))

(declare-fun b!4788634 () Bool)

(declare-fun Unit!139648 () Unit!139622)

(assert (=> b!4788634 (= e!2989918 Unit!139648)))

(declare-fun b!4788635 () Bool)

(assert (=> b!4788635 false))

(declare-fun Unit!139649 () Unit!139622)

(assert (=> b!4788635 (= e!2989918 Unit!139649)))

(declare-fun b!4788636 () Bool)

(assert (=> b!4788636 (= e!2989919 Nil!54121)))

(assert (= (and d!1531880 c!816225) b!4788630))

(assert (= (and d!1531880 (not c!816225)) b!4788636))

(assert (= (and b!4788630 c!816227) b!4788635))

(assert (= (and b!4788630 (not c!816227)) b!4788634))

(assert (= (and b!4788630 c!816226) b!4788632))

(assert (= (and b!4788630 (not c!816226)) b!4788628))

(assert (= (and d!1531880 res!2034610) b!4788633))

(assert (= (and b!4788633 res!2034611) b!4788631))

(assert (= (and b!4788631 res!2034612) b!4788629))

(declare-fun m!5768092 () Bool)

(assert (=> b!4788630 m!5768092))

(declare-fun m!5768094 () Bool)

(assert (=> b!4788630 m!5768094))

(declare-fun m!5768096 () Bool)

(assert (=> b!4788630 m!5768096))

(assert (=> b!4788630 m!5768094))

(declare-fun m!5768098 () Bool)

(assert (=> b!4788630 m!5768098))

(declare-fun m!5768100 () Bool)

(assert (=> b!4788630 m!5768100))

(declare-fun m!5768102 () Bool)

(assert (=> d!1531880 m!5768102))

(assert (=> d!1531880 m!5767984))

(declare-fun m!5768104 () Bool)

(assert (=> b!4788629 m!5768104))

(declare-fun m!5768106 () Bool)

(assert (=> b!4788629 m!5768106))

(assert (=> b!4788629 m!5768106))

(declare-fun m!5768108 () Bool)

(assert (=> b!4788629 m!5768108))

(declare-fun m!5768110 () Bool)

(assert (=> b!4788633 m!5768110))

(assert (=> b!4788633 m!5768068))

(declare-fun m!5768112 () Bool)

(assert (=> b!4788631 m!5768112))

(assert (=> b!4788632 m!5768094))

(assert (=> b!4788632 m!5768094))

(declare-fun m!5768114 () Bool)

(assert (=> b!4788632 m!5768114))

(assert (=> b!4788389 d!1531880))

(declare-fun d!1531884 () Bool)

(assert (=> d!1531884 (= (isDefined!10170 lt!1948656) (not (isEmpty!29411 lt!1948656)))))

(declare-fun bs!1153950 () Bool)

(assert (= bs!1153950 d!1531884))

(assert (=> bs!1153950 m!5767802))

(assert (=> b!4788343 d!1531884))

(assert (=> d!1531746 d!1531744))

(declare-fun d!1531886 () Bool)

(assert (=> d!1531886 (containsKeyBiggerList!527 (toList!6833 lm!2473) key!5896)))

(assert (=> d!1531886 true))

(declare-fun _$33!805 () Unit!139622)

(assert (=> d!1531886 (= (choose!34440 lm!2473 key!5896 hashF!1559) _$33!805)))

(declare-fun bs!1153951 () Bool)

(assert (= bs!1153951 d!1531886))

(assert (=> bs!1153951 m!5767654))

(assert (=> d!1531746 d!1531886))

(declare-fun d!1531888 () Bool)

(declare-fun res!2034616 () Bool)

(declare-fun e!2989923 () Bool)

(assert (=> d!1531888 (=> res!2034616 e!2989923)))

(assert (=> d!1531888 (= res!2034616 (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531888 (= (forall!12190 (toList!6833 lm!2473) lambda!229730) e!2989923)))

(declare-fun b!4788644 () Bool)

(declare-fun e!2989924 () Bool)

(assert (=> b!4788644 (= e!2989923 e!2989924)))

(declare-fun res!2034617 () Bool)

(assert (=> b!4788644 (=> (not res!2034617) (not e!2989924))))

(assert (=> b!4788644 (= res!2034617 (dynLambda!22044 lambda!229730 (h!60542 (toList!6833 lm!2473))))))

(declare-fun b!4788645 () Bool)

(assert (=> b!4788645 (= e!2989924 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229730))))

(assert (= (and d!1531888 (not res!2034616)) b!4788644))

(assert (= (and b!4788644 res!2034617) b!4788645))

(declare-fun b_lambda!186385 () Bool)

(assert (=> (not b_lambda!186385) (not b!4788644)))

(declare-fun m!5768130 () Bool)

(assert (=> b!4788644 m!5768130))

(declare-fun m!5768132 () Bool)

(assert (=> b!4788645 m!5768132))

(assert (=> d!1531746 d!1531888))

(assert (=> b!4788392 d!1531850))

(assert (=> b!4788392 d!1531852))

(declare-fun d!1531892 () Bool)

(assert (=> d!1531892 (= (tail!9226 (toList!6833 lm!2473)) (t!361692 (toList!6833 lm!2473)))))

(assert (=> d!1531762 d!1531892))

(declare-fun d!1531894 () Bool)

(declare-fun res!2034628 () Bool)

(declare-fun e!2989936 () Bool)

(assert (=> d!1531894 (=> res!2034628 e!2989936)))

(assert (=> d!1531894 (= res!2034628 (and (is-Cons!54118 (toList!6833 (tail!9224 lm!2473))) (= (_1!31633 (h!60542 (toList!6833 (tail!9224 lm!2473)))) lt!1948621)))))

(assert (=> d!1531894 (= (containsKey!3893 (toList!6833 (tail!9224 lm!2473)) lt!1948621) e!2989936)))

(declare-fun b!4788660 () Bool)

(declare-fun e!2989937 () Bool)

(assert (=> b!4788660 (= e!2989936 e!2989937)))

(declare-fun res!2034629 () Bool)

(assert (=> b!4788660 (=> (not res!2034629) (not e!2989937))))

(assert (=> b!4788660 (= res!2034629 (and (or (not (is-Cons!54118 (toList!6833 (tail!9224 lm!2473)))) (bvsle (_1!31633 (h!60542 (toList!6833 (tail!9224 lm!2473)))) lt!1948621)) (is-Cons!54118 (toList!6833 (tail!9224 lm!2473))) (bvslt (_1!31633 (h!60542 (toList!6833 (tail!9224 lm!2473)))) lt!1948621)))))

(declare-fun b!4788661 () Bool)

(assert (=> b!4788661 (= e!2989937 (containsKey!3893 (t!361692 (toList!6833 (tail!9224 lm!2473))) lt!1948621))))

(assert (= (and d!1531894 (not res!2034628)) b!4788660))

(assert (= (and b!4788660 res!2034629) b!4788661))

(declare-fun m!5768140 () Bool)

(assert (=> b!4788661 m!5768140))

(assert (=> d!1531760 d!1531894))

(declare-fun d!1531902 () Bool)

(assert (=> d!1531902 (= (get!18433 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621)) (v!48296 (getValueByKey!2327 (toList!6833 lm!2473) lt!1948621)))))

(assert (=> d!1531776 d!1531902))

(assert (=> d!1531776 d!1531818))

(declare-fun d!1531904 () Bool)

(declare-fun res!2034630 () Bool)

(declare-fun e!2989938 () Bool)

(assert (=> d!1531904 (=> res!2034630 e!2989938)))

(assert (=> d!1531904 (= res!2034630 (and (is-Cons!54117 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473))))) (= (_1!31632 (h!60541 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))))) key!5896)))))

(assert (=> d!1531904 (= (containsKey!3891 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) key!5896) e!2989938)))

(declare-fun b!4788662 () Bool)

(declare-fun e!2989939 () Bool)

(assert (=> b!4788662 (= e!2989938 e!2989939)))

(declare-fun res!2034631 () Bool)

(assert (=> b!4788662 (=> (not res!2034631) (not e!2989939))))

(assert (=> b!4788662 (= res!2034631 (is-Cons!54117 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(declare-fun b!4788663 () Bool)

(assert (=> b!4788663 (= e!2989939 (containsKey!3891 (t!361691 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473))))) key!5896))))

(assert (= (and d!1531904 (not res!2034630)) b!4788662))

(assert (= (and b!4788662 res!2034631) b!4788663))

(declare-fun m!5768148 () Bool)

(assert (=> b!4788663 m!5768148))

(assert (=> b!4788270 d!1531904))

(declare-fun d!1531906 () Bool)

(assert (=> d!1531906 (= (get!18432 lt!1948656) (v!48294 lt!1948656))))

(assert (=> b!4788341 d!1531906))

(declare-fun d!1531910 () Bool)

(declare-fun lt!1948850 () Bool)

(assert (=> d!1531910 (= lt!1948850 (set.member key!5896 (content!9688 e!2989760)))))

(declare-fun e!2989940 () Bool)

(assert (=> d!1531910 (= lt!1948850 e!2989940)))

(declare-fun res!2034632 () Bool)

(assert (=> d!1531910 (=> (not res!2034632) (not e!2989940))))

(assert (=> d!1531910 (= res!2034632 (is-Cons!54121 e!2989760))))

(assert (=> d!1531910 (= (contains!17715 e!2989760 key!5896) lt!1948850)))

(declare-fun b!4788664 () Bool)

(declare-fun e!2989941 () Bool)

(assert (=> b!4788664 (= e!2989940 e!2989941)))

(declare-fun res!2034633 () Bool)

(assert (=> b!4788664 (=> res!2034633 e!2989941)))

(assert (=> b!4788664 (= res!2034633 (= (h!60545 e!2989760) key!5896))))

(declare-fun b!4788665 () Bool)

(assert (=> b!4788665 (= e!2989941 (contains!17715 (t!361695 e!2989760) key!5896))))

(assert (= (and d!1531910 res!2034632) b!4788664))

(assert (= (and b!4788664 (not res!2034633)) b!4788665))

(declare-fun m!5768162 () Bool)

(assert (=> d!1531910 m!5768162))

(declare-fun m!5768164 () Bool)

(assert (=> d!1531910 m!5768164))

(declare-fun m!5768166 () Bool)

(assert (=> b!4788665 m!5768166))

(assert (=> bm!334912 d!1531910))

(declare-fun d!1531914 () Bool)

(assert (=> d!1531914 (= (isEmpty!29410 (toList!6833 lm!2473)) (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531768 d!1531914))

(declare-fun d!1531918 () Bool)

(declare-fun res!2034636 () Bool)

(declare-fun e!2989944 () Bool)

(assert (=> d!1531918 (=> res!2034636 e!2989944)))

(assert (=> d!1531918 (= res!2034636 (and (is-Cons!54118 (toList!6833 lm!2473)) (= (_1!31633 (h!60542 (toList!6833 lm!2473))) lt!1948621)))))

(assert (=> d!1531918 (= (containsKey!3893 (toList!6833 lm!2473) lt!1948621) e!2989944)))

(declare-fun b!4788668 () Bool)

(declare-fun e!2989945 () Bool)

(assert (=> b!4788668 (= e!2989944 e!2989945)))

(declare-fun res!2034637 () Bool)

(assert (=> b!4788668 (=> (not res!2034637) (not e!2989945))))

(assert (=> b!4788668 (= res!2034637 (and (or (not (is-Cons!54118 (toList!6833 lm!2473))) (bvsle (_1!31633 (h!60542 (toList!6833 lm!2473))) lt!1948621)) (is-Cons!54118 (toList!6833 lm!2473)) (bvslt (_1!31633 (h!60542 (toList!6833 lm!2473))) lt!1948621)))))

(declare-fun b!4788669 () Bool)

(assert (=> b!4788669 (= e!2989945 (containsKey!3893 (t!361692 (toList!6833 lm!2473)) lt!1948621))))

(assert (= (and d!1531918 (not res!2034636)) b!4788668))

(assert (= (and b!4788668 res!2034637) b!4788669))

(declare-fun m!5768170 () Bool)

(assert (=> b!4788669 m!5768170))

(assert (=> d!1531740 d!1531918))

(declare-fun d!1531920 () Bool)

(declare-fun c!816230 () Bool)

(declare-fun e!2989947 () Bool)

(assert (=> d!1531920 (= c!816230 e!2989947)))

(declare-fun res!2034638 () Bool)

(assert (=> d!1531920 (=> (not res!2034638) (not e!2989947))))

(assert (=> d!1531920 (= res!2034638 (is-Cons!54118 (t!361692 (toList!6833 lm!2473))))))

(declare-fun e!2989946 () V!15928)

(assert (=> d!1531920 (= (getValue!73 (t!361692 (toList!6833 lm!2473)) key!5896) e!2989946)))

(declare-fun b!4788672 () Bool)

(assert (=> b!4788672 (= e!2989947 (containsKey!3891 (_2!31633 (h!60542 (t!361692 (toList!6833 lm!2473)))) key!5896))))

(declare-fun b!4788670 () Bool)

(assert (=> b!4788670 (= e!2989946 (_2!31632 (get!18432 (getPair!849 (_2!31633 (h!60542 (t!361692 (toList!6833 lm!2473)))) key!5896))))))

(declare-fun b!4788671 () Bool)

(assert (=> b!4788671 (= e!2989946 (getValue!73 (t!361692 (t!361692 (toList!6833 lm!2473))) key!5896))))

(assert (= (and d!1531920 res!2034638) b!4788672))

(assert (= (and d!1531920 c!816230) b!4788670))

(assert (= (and d!1531920 (not c!816230)) b!4788671))

(assert (=> b!4788672 m!5768088))

(declare-fun m!5768172 () Bool)

(assert (=> b!4788670 m!5768172))

(assert (=> b!4788670 m!5768172))

(declare-fun m!5768174 () Bool)

(assert (=> b!4788670 m!5768174))

(declare-fun m!5768176 () Bool)

(assert (=> b!4788671 m!5768176))

(assert (=> b!4788311 d!1531920))

(declare-fun d!1531922 () Bool)

(assert (=> d!1531922 (= (get!18432 (getPair!849 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896)) (v!48294 (getPair!849 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896)))))

(assert (=> b!4788310 d!1531922))

(declare-fun b!4788673 () Bool)

(declare-fun e!2989948 () Option!13028)

(assert (=> b!4788673 (= e!2989948 (getPair!849 (t!361691 (_2!31633 (h!60542 (toList!6833 lm!2473)))) key!5896))))

(declare-fun b!4788675 () Bool)

(assert (=> b!4788675 (= e!2989948 None!13027)))

(declare-fun b!4788676 () Bool)

(declare-fun e!2989949 () Bool)

(declare-fun e!2989952 () Bool)

(assert (=> b!4788676 (= e!2989949 e!2989952)))

(declare-fun res!2034639 () Bool)

(assert (=> b!4788676 (=> (not res!2034639) (not e!2989952))))

(declare-fun lt!1948851 () Option!13028)

(assert (=> b!4788676 (= res!2034639 (isDefined!10170 lt!1948851))))

(declare-fun b!4788677 () Bool)

(declare-fun e!2989951 () Option!13028)

(assert (=> b!4788677 (= e!2989951 e!2989948)))

(declare-fun c!816231 () Bool)

(assert (=> b!4788677 (= c!816231 (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(declare-fun b!4788678 () Bool)

(assert (=> b!4788678 (= e!2989952 (contains!17714 (_2!31633 (h!60542 (toList!6833 lm!2473))) (get!18432 lt!1948851)))))

(declare-fun b!4788679 () Bool)

(assert (=> b!4788679 (= e!2989951 (Some!13027 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))))))

(declare-fun b!4788680 () Bool)

(declare-fun e!2989950 () Bool)

(assert (=> b!4788680 (= e!2989950 (not (containsKey!3891 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896)))))

(declare-fun d!1531926 () Bool)

(assert (=> d!1531926 e!2989949))

(declare-fun res!2034640 () Bool)

(assert (=> d!1531926 (=> res!2034640 e!2989949)))

(assert (=> d!1531926 (= res!2034640 e!2989950)))

(declare-fun res!2034642 () Bool)

(assert (=> d!1531926 (=> (not res!2034642) (not e!2989950))))

(assert (=> d!1531926 (= res!2034642 (isEmpty!29411 lt!1948851))))

(assert (=> d!1531926 (= lt!1948851 e!2989951)))

(declare-fun c!816232 () Bool)

(assert (=> d!1531926 (= c!816232 (and (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473)))) (= (_1!31632 (h!60541 (_2!31633 (h!60542 (toList!6833 lm!2473))))) key!5896)))))

(assert (=> d!1531926 (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473))))))

(assert (=> d!1531926 (= (getPair!849 (_2!31633 (h!60542 (toList!6833 lm!2473))) key!5896) lt!1948851)))

(declare-fun b!4788674 () Bool)

(declare-fun res!2034641 () Bool)

(assert (=> b!4788674 (=> (not res!2034641) (not e!2989952))))

(assert (=> b!4788674 (= res!2034641 (= (_1!31632 (get!18432 lt!1948851)) key!5896))))

(assert (= (and d!1531926 c!816232) b!4788679))

(assert (= (and d!1531926 (not c!816232)) b!4788677))

(assert (= (and b!4788677 c!816231) b!4788673))

(assert (= (and b!4788677 (not c!816231)) b!4788675))

(assert (= (and d!1531926 res!2034642) b!4788680))

(assert (= (and d!1531926 (not res!2034640)) b!4788676))

(assert (= (and b!4788676 res!2034639) b!4788674))

(assert (= (and b!4788674 res!2034641) b!4788678))

(declare-fun m!5768178 () Bool)

(assert (=> b!4788678 m!5768178))

(assert (=> b!4788678 m!5768178))

(declare-fun m!5768180 () Bool)

(assert (=> b!4788678 m!5768180))

(assert (=> b!4788674 m!5768178))

(assert (=> b!4788680 m!5767672))

(declare-fun m!5768182 () Bool)

(assert (=> b!4788676 m!5768182))

(declare-fun m!5768184 () Bool)

(assert (=> b!4788673 m!5768184))

(declare-fun m!5768186 () Bool)

(assert (=> d!1531926 m!5768186))

(assert (=> d!1531926 m!5767856))

(assert (=> b!4788310 d!1531926))

(declare-fun d!1531928 () Bool)

(declare-fun lt!1948854 () Bool)

(declare-fun content!9689 (List!54241) (Set tuple2!56676))

(assert (=> d!1531928 (= lt!1948854 (set.member (get!18432 lt!1948656) (content!9689 (apply!12938 lm!2473 lt!1948621))))))

(declare-fun e!2989964 () Bool)

(assert (=> d!1531928 (= lt!1948854 e!2989964)))

(declare-fun res!2034654 () Bool)

(assert (=> d!1531928 (=> (not res!2034654) (not e!2989964))))

(assert (=> d!1531928 (= res!2034654 (is-Cons!54117 (apply!12938 lm!2473 lt!1948621)))))

(assert (=> d!1531928 (= (contains!17714 (apply!12938 lm!2473 lt!1948621) (get!18432 lt!1948656)) lt!1948854)))

(declare-fun b!4788691 () Bool)

(declare-fun e!2989963 () Bool)

(assert (=> b!4788691 (= e!2989964 e!2989963)))

(declare-fun res!2034653 () Bool)

(assert (=> b!4788691 (=> res!2034653 e!2989963)))

(assert (=> b!4788691 (= res!2034653 (= (h!60541 (apply!12938 lm!2473 lt!1948621)) (get!18432 lt!1948656)))))

(declare-fun b!4788692 () Bool)

(assert (=> b!4788692 (= e!2989963 (contains!17714 (t!361691 (apply!12938 lm!2473 lt!1948621)) (get!18432 lt!1948656)))))

(assert (= (and d!1531928 res!2034654) b!4788691))

(assert (= (and b!4788691 (not res!2034653)) b!4788692))

(assert (=> d!1531928 m!5767674))

(declare-fun m!5768188 () Bool)

(assert (=> d!1531928 m!5768188))

(assert (=> d!1531928 m!5767792))

(declare-fun m!5768190 () Bool)

(assert (=> d!1531928 m!5768190))

(assert (=> b!4788692 m!5767792))

(declare-fun m!5768192 () Bool)

(assert (=> b!4788692 m!5768192))

(assert (=> b!4788345 d!1531928))

(assert (=> b!4788345 d!1531906))

(declare-fun d!1531930 () Bool)

(declare-fun noDuplicatedKeys!430 (List!54241) Bool)

(assert (=> d!1531930 (= (invariantList!1718 (toList!6834 lt!1948707)) (noDuplicatedKeys!430 (toList!6834 lt!1948707)))))

(declare-fun bs!1153955 () Bool)

(assert (= bs!1153955 d!1531930))

(declare-fun m!5768198 () Bool)

(assert (=> bs!1153955 m!5768198))

(assert (=> d!1531780 d!1531930))

(declare-fun d!1531934 () Bool)

(declare-fun res!2034656 () Bool)

(declare-fun e!2989967 () Bool)

(assert (=> d!1531934 (=> res!2034656 e!2989967)))

(assert (=> d!1531934 (= res!2034656 (is-Nil!54118 (toList!6833 lm!2473)))))

(assert (=> d!1531934 (= (forall!12190 (toList!6833 lm!2473) lambda!229739) e!2989967)))

(declare-fun b!4788696 () Bool)

(declare-fun e!2989968 () Bool)

(assert (=> b!4788696 (= e!2989967 e!2989968)))

(declare-fun res!2034657 () Bool)

(assert (=> b!4788696 (=> (not res!2034657) (not e!2989968))))

(assert (=> b!4788696 (= res!2034657 (dynLambda!22044 lambda!229739 (h!60542 (toList!6833 lm!2473))))))

(declare-fun b!4788697 () Bool)

(assert (=> b!4788697 (= e!2989968 (forall!12190 (t!361692 (toList!6833 lm!2473)) lambda!229739))))

(assert (= (and d!1531934 (not res!2034656)) b!4788696))

(assert (= (and b!4788696 res!2034657) b!4788697))

(declare-fun b_lambda!186389 () Bool)

(assert (=> (not b_lambda!186389) (not b!4788696)))

(declare-fun m!5768204 () Bool)

(assert (=> b!4788696 m!5768204))

(declare-fun m!5768206 () Bool)

(assert (=> b!4788697 m!5768206))

(assert (=> d!1531780 d!1531934))

(declare-fun b!4788702 () Bool)

(declare-fun tp!1357801 () Bool)

(declare-fun e!2989971 () Bool)

(assert (=> b!4788702 (= e!2989971 (and tp_is_empty!33389 tp_is_empty!33391 tp!1357801))))

(assert (=> b!4788412 (= tp!1357791 e!2989971)))

(assert (= (and b!4788412 (is-Cons!54117 (_2!31633 (h!60542 (toList!6833 lm!2473))))) b!4788702))

(declare-fun b!4788703 () Bool)

(declare-fun e!2989972 () Bool)

(declare-fun tp!1357802 () Bool)

(declare-fun tp!1357803 () Bool)

(assert (=> b!4788703 (= e!2989972 (and tp!1357802 tp!1357803))))

(assert (=> b!4788412 (= tp!1357792 e!2989972)))

(assert (= (and b!4788412 (is-Cons!54118 (t!361692 (toList!6833 lm!2473)))) b!4788703))

(declare-fun b_lambda!186391 () Bool)

(assert (= b_lambda!186383 (or d!1531750 b_lambda!186391)))

(declare-fun bs!1153956 () Bool)

(declare-fun d!1531938 () Bool)

(assert (= bs!1153956 (and d!1531938 d!1531750)))

(assert (=> bs!1153956 (= (dynLambda!22044 lambda!229733 (h!60542 (toList!6833 lm!2473))) (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(assert (=> bs!1153956 m!5767856))

(assert (=> b!4788529 d!1531938))

(declare-fun b_lambda!186393 () Bool)

(assert (= b_lambda!186385 (or d!1531746 b_lambda!186393)))

(declare-fun bs!1153957 () Bool)

(declare-fun d!1531940 () Bool)

(assert (= bs!1153957 (and d!1531940 d!1531746)))

(assert (=> bs!1153957 (= (dynLambda!22044 lambda!229730 (h!60542 (toList!6833 lm!2473))) (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(assert (=> bs!1153957 m!5767856))

(assert (=> b!4788644 d!1531940))

(declare-fun b_lambda!186395 () Bool)

(assert (= b_lambda!186379 (or start!492628 b_lambda!186395)))

(declare-fun bs!1153958 () Bool)

(declare-fun d!1531942 () Bool)

(assert (= bs!1153958 (and d!1531942 start!492628)))

(assert (=> bs!1153958 (= (dynLambda!22044 lambda!229724 (h!60542 (t!361692 (toList!6833 lm!2473)))) (noDuplicateKeys!2320 (_2!31633 (h!60542 (t!361692 (toList!6833 lm!2473))))))))

(declare-fun m!5768210 () Bool)

(assert (=> bs!1153958 m!5768210))

(assert (=> b!4788506 d!1531942))

(declare-fun b_lambda!186397 () Bool)

(assert (= b_lambda!186381 (or d!1531770 b_lambda!186397)))

(declare-fun bs!1153959 () Bool)

(declare-fun d!1531944 () Bool)

(assert (= bs!1153959 (and d!1531944 d!1531770)))

(declare-fun allKeysSameHash!1951 (List!54241 (_ BitVec 64) Hashable!6877) Bool)

(assert (=> bs!1153959 (= (dynLambda!22044 lambda!229736 (h!60542 (toList!6833 lm!2473))) (allKeysSameHash!1951 (_2!31633 (h!60542 (toList!6833 lm!2473))) (_1!31633 (h!60542 (toList!6833 lm!2473))) hashF!1559))))

(declare-fun m!5768212 () Bool)

(assert (=> bs!1153959 m!5768212))

(assert (=> b!4788516 d!1531944))

(declare-fun b_lambda!186399 () Bool)

(assert (= b_lambda!186389 (or d!1531780 b_lambda!186399)))

(declare-fun bs!1153960 () Bool)

(declare-fun d!1531946 () Bool)

(assert (= bs!1153960 (and d!1531946 d!1531780)))

(assert (=> bs!1153960 (= (dynLambda!22044 lambda!229739 (h!60542 (toList!6833 lm!2473))) (noDuplicateKeys!2320 (_2!31633 (h!60542 (toList!6833 lm!2473)))))))

(assert (=> bs!1153960 m!5767856))

(assert (=> b!4788696 d!1531946))

(push 1)

(assert (not b!4788676))

(assert (not b!4788670))

(assert (not b_lambda!186391))

(assert (not bm!334921))

(assert (not d!1531854))

(assert (not b!4788522))

(assert (not b!4788672))

(assert (not d!1531814))

(assert (not b!4788645))

(assert (not d!1531874))

(assert (not b!4788603))

(assert (not d!1531880))

(assert (not b!4788528))

(assert (not b!4788631))

(assert (not b!4788555))

(assert (not b!4788496))

(assert (not b!4788567))

(assert (not b!4788678))

(assert (not b!4788569))

(assert (not bs!1153956))

(assert (not b!4788697))

(assert (not d!1531856))

(assert (not b!4788517))

(assert (not bm!334920))

(assert (not b!4788568))

(assert (not b!4788594))

(assert (not b!4788520))

(assert (not d!1531842))

(assert (not b!4788661))

(assert (not d!1531928))

(assert (not b!4788598))

(assert (not b!4788503))

(assert (not b!4788554))

(assert (not b!4788663))

(assert (not bs!1153957))

(assert (not d!1531866))

(assert (not d!1531864))

(assert (not b!4788629))

(assert (not b!4788674))

(assert (not b!4788556))

(assert (not b!4788673))

(assert (not d!1531840))

(assert (not bs!1153960))

(assert (not b!4788589))

(assert (not d!1531834))

(assert (not bm!334922))

(assert (not b!4788632))

(assert (not b!4788575))

(assert (not b!4788553))

(assert (not b!4788665))

(assert (not b_lambda!186375))

(assert (not b!4788513))

(assert (not b!4788515))

(assert (not d!1531850))

(assert (not b!4788505))

(assert (not b!4788600))

(assert (not b!4788680))

(assert (not d!1531816))

(assert (not bs!1153958))

(assert (not d!1531858))

(assert (not b!4788590))

(assert (not b!4788523))

(assert (not b!4788630))

(assert (not b!4788514))

(assert (not b!4788485))

(assert (not d!1531838))

(assert (not d!1531886))

(assert (not b!4788692))

(assert (not b!4788703))

(assert (not b_lambda!186399))

(assert (not b!4788669))

(assert (not d!1531926))

(assert tp_is_empty!33389)

(assert (not b!4788601))

(assert (not b!4788573))

(assert (not b!4788633))

(assert (not b!4788530))

(assert (not b!4788581))

(assert (not b!4788502))

(assert (not d!1531848))

(assert (not d!1531870))

(assert (not d!1531910))

(assert (not d!1531868))

(assert (not d!1531930))

(assert (not d!1531862))

(assert (not b!4788593))

(assert (not b_lambda!186397))

(assert (not b_lambda!186393))

(assert (not d!1531872))

(assert (not b!4788571))

(assert (not b_lambda!186395))

(assert (not b!4788702))

(assert (not b!4788507))

(assert (not b!4788671))

(assert (not d!1531884))

(assert (not b!4788525))

(assert tp_is_empty!33391)

(assert (not b!4788541))

(assert (not d!1531846))

(assert (not b!4788588))

(assert (not bs!1153959))

(assert (not b!4788596))

(assert (not b!4788560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

