; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420832 () Bool)

(assert start!420832)

(declare-fun b!4352723 () Bool)

(declare-fun e!2708689 () Bool)

(declare-fun e!2708693 () Bool)

(assert (=> b!4352723 (= e!2708689 (not e!2708693))))

(declare-fun res!1788496 () Bool)

(assert (=> b!4352723 (=> res!1788496 e!2708693)))

(declare-datatypes ((K!10260 0))(
  ( (K!10261 (val!16479 Int)) )
))
(declare-datatypes ((V!10506 0))(
  ( (V!10507 (val!16480 Int)) )
))
(declare-datatypes ((tuple2!48278 0))(
  ( (tuple2!48279 (_1!27433 K!10260) (_2!27433 V!10506)) )
))
(declare-datatypes ((List!49021 0))(
  ( (Nil!48897) (Cons!48897 (h!54438 tuple2!48278) (t!355941 List!49021)) )
))
(declare-fun lt!1565998 () List!49021)

(declare-fun newBucket!200 () List!49021)

(declare-fun lt!1565990 () tuple2!48278)

(declare-fun key!3918 () K!10260)

(declare-fun removePairForKey!447 (List!49021 K!10260) List!49021)

(assert (=> b!4352723 (= res!1788496 (not (= newBucket!200 (Cons!48897 lt!1565990 (removePairForKey!447 lt!1565998 key!3918)))))))

(declare-fun newValue!99 () V!10506)

(assert (=> b!4352723 (= lt!1565990 (tuple2!48279 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48280 0))(
  ( (tuple2!48281 (_1!27434 (_ BitVec 64)) (_2!27434 List!49021)) )
))
(declare-fun lt!1565994 () tuple2!48280)

(declare-datatypes ((List!49022 0))(
  ( (Nil!48898) (Cons!48898 (h!54439 tuple2!48280) (t!355942 List!49022)) )
))
(declare-datatypes ((ListLongMap!1587 0))(
  ( (ListLongMap!1588 (toList!2937 List!49022)) )
))
(declare-fun lm!1707 () ListLongMap!1587)

(declare-datatypes ((Unit!71220 0))(
  ( (Unit!71221) )
))
(declare-fun lt!1565988 () Unit!71220)

(declare-fun lambda!139729 () Int)

(declare-fun forallContained!1739 (List!49022 Int tuple2!48280) Unit!71220)

(assert (=> b!4352723 (= lt!1565988 (forallContained!1739 (toList!2937 lm!1707) lambda!139729 lt!1565994))))

(declare-fun contains!11080 (List!49022 tuple2!48280) Bool)

(assert (=> b!4352723 (contains!11080 (toList!2937 lm!1707) lt!1565994)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4352723 (= lt!1565994 (tuple2!48281 hash!377 lt!1565998))))

(declare-fun lt!1565993 () Unit!71220)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!324 (List!49022 (_ BitVec 64) List!49021) Unit!71220)

(assert (=> b!4352723 (= lt!1565993 (lemmaGetValueByKeyImpliesContainsTuple!324 (toList!2937 lm!1707) hash!377 lt!1565998))))

(declare-fun apply!11329 (ListLongMap!1587 (_ BitVec 64)) List!49021)

(assert (=> b!4352723 (= lt!1565998 (apply!11329 lm!1707 hash!377))))

(declare-fun b!4352724 () Bool)

(declare-fun e!2708691 () Bool)

(declare-fun lt!1565989 () ListLongMap!1587)

(declare-fun forall!9094 (List!49022 Int) Bool)

(assert (=> b!4352724 (= e!2708691 (forall!9094 (toList!2937 lt!1565989) lambda!139729))))

(declare-fun tp!1329954 () Bool)

(declare-fun e!2708695 () Bool)

(declare-fun tp_is_empty!25147 () Bool)

(declare-fun tp_is_empty!25145 () Bool)

(declare-fun b!4352725 () Bool)

(assert (=> b!4352725 (= e!2708695 (and tp_is_empty!25145 tp_is_empty!25147 tp!1329954))))

(declare-fun b!4352726 () Bool)

(declare-fun e!2708694 () Bool)

(assert (=> b!4352726 (= e!2708694 (forall!9094 (toList!2937 lm!1707) lambda!139729))))

(declare-fun e!2708690 () Bool)

(assert (=> b!4352726 e!2708690))

(declare-fun res!1788491 () Bool)

(assert (=> b!4352726 (=> (not res!1788491) (not e!2708690))))

(declare-fun lt!1565997 () tuple2!48280)

(declare-datatypes ((ListMap!2181 0))(
  ( (ListMap!2182 (toList!2938 List!49021)) )
))
(declare-fun lt!1565995 () ListMap!2181)

(declare-fun lt!1565987 () ListLongMap!1587)

(declare-fun eq!247 (ListMap!2181 ListMap!2181) Bool)

(declare-fun extractMap!536 (List!49022) ListMap!2181)

(declare-fun +!611 (ListLongMap!1587 tuple2!48280) ListLongMap!1587)

(declare-fun +!612 (ListMap!2181 tuple2!48278) ListMap!2181)

(assert (=> b!4352726 (= res!1788491 (eq!247 (extractMap!536 (toList!2937 (+!611 lt!1565987 lt!1565997))) (+!612 lt!1565995 lt!1565990)))))

(declare-fun lt!1565991 () Unit!71220)

(declare-datatypes ((Hashable!4869 0))(
  ( (HashableExt!4868 (__x!30572 Int)) )
))
(declare-fun hashF!1247 () Hashable!4869)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!81 (ListLongMap!1587 (_ BitVec 64) List!49021 K!10260 V!10506 Hashable!4869) Unit!71220)

(assert (=> b!4352726 (= lt!1565991 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!81 lt!1565987 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11081 (ListMap!2181 K!10260) Bool)

(assert (=> b!4352726 (contains!11081 lt!1565995 key!3918)))

(assert (=> b!4352726 (= lt!1565995 (extractMap!536 (toList!2937 lt!1565987)))))

(declare-fun tail!6975 (ListLongMap!1587) ListLongMap!1587)

(assert (=> b!4352726 (= lt!1565987 (tail!6975 lm!1707))))

(declare-fun lt!1565996 () ListMap!2181)

(assert (=> b!4352726 (contains!11081 lt!1565996 key!3918)))

(declare-fun lt!1565999 () Unit!71220)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!20 (List!49021 K!10260 V!10506 ListMap!2181) Unit!71220)

(assert (=> b!4352726 (= lt!1565999 (lemmaAddToMapContainsAndNotInListThenInAcc!20 (_2!27434 (h!54439 (toList!2937 lm!1707))) key!3918 newValue!99 lt!1565996))))

(assert (=> b!4352726 (= lt!1565996 (extractMap!536 (t!355942 (toList!2937 lm!1707))))))

(declare-fun e!2708692 () Bool)

(assert (=> b!4352726 e!2708692))

(declare-fun res!1788489 () Bool)

(assert (=> b!4352726 (=> (not res!1788489) (not e!2708692))))

(declare-fun containsKey!659 (List!49021 K!10260) Bool)

(assert (=> b!4352726 (= res!1788489 (not (containsKey!659 (apply!11329 lm!1707 (_1!27434 (h!54439 (toList!2937 lm!1707)))) key!3918)))))

(declare-fun lt!1566000 () Unit!71220)

(declare-fun lemmaNotSameHashThenCannotContainKey!24 (ListLongMap!1587 K!10260 (_ BitVec 64) Hashable!4869) Unit!71220)

(assert (=> b!4352726 (= lt!1566000 (lemmaNotSameHashThenCannotContainKey!24 lm!1707 key!3918 (_1!27434 (h!54439 (toList!2937 lm!1707))) hashF!1247))))

(declare-fun b!4352727 () Bool)

(declare-fun res!1788488 () Bool)

(assert (=> b!4352727 (=> (not res!1788488) (not e!2708689))))

(declare-fun hash!1507 (Hashable!4869 K!10260) (_ BitVec 64))

(assert (=> b!4352727 (= res!1788488 (= (hash!1507 hashF!1247 key!3918) hash!377))))

(declare-fun b!4352728 () Bool)

(declare-fun e!2708696 () Bool)

(declare-fun tp!1329953 () Bool)

(assert (=> b!4352728 (= e!2708696 tp!1329953)))

(declare-fun b!4352730 () Bool)

(declare-fun res!1788487 () Bool)

(assert (=> b!4352730 (=> (not res!1788487) (not e!2708689))))

(assert (=> b!4352730 (= res!1788487 (contains!11081 (extractMap!536 (toList!2937 lm!1707)) key!3918))))

(declare-fun b!4352731 () Bool)

(assert (=> b!4352731 (= e!2708692 (not (containsKey!659 (_2!27434 (h!54439 (toList!2937 lm!1707))) key!3918)))))

(declare-fun b!4352732 () Bool)

(declare-fun head!9026 (ListLongMap!1587) tuple2!48280)

(assert (=> b!4352732 (= e!2708690 (not (= (head!9026 lm!1707) lt!1565997)))))

(declare-fun b!4352733 () Bool)

(assert (=> b!4352733 (= e!2708693 e!2708694)))

(declare-fun res!1788497 () Bool)

(assert (=> b!4352733 (=> res!1788497 e!2708694)))

(get-info :version)

(assert (=> b!4352733 (= res!1788497 (or (and ((_ is Cons!48898) (toList!2937 lm!1707)) (= (_1!27434 (h!54439 (toList!2937 lm!1707))) hash!377)) (not ((_ is Cons!48898) (toList!2937 lm!1707))) (= (_1!27434 (h!54439 (toList!2937 lm!1707))) hash!377)))))

(assert (=> b!4352733 e!2708691))

(declare-fun res!1788490 () Bool)

(assert (=> b!4352733 (=> (not res!1788490) (not e!2708691))))

(assert (=> b!4352733 (= res!1788490 (forall!9094 (toList!2937 lt!1565989) lambda!139729))))

(assert (=> b!4352733 (= lt!1565989 (+!611 lm!1707 lt!1565997))))

(assert (=> b!4352733 (= lt!1565997 (tuple2!48281 hash!377 newBucket!200))))

(declare-fun lt!1565992 () Unit!71220)

(declare-fun addValidProp!131 (ListLongMap!1587 Int (_ BitVec 64) List!49021) Unit!71220)

(assert (=> b!4352733 (= lt!1565992 (addValidProp!131 lm!1707 lambda!139729 hash!377 newBucket!200))))

(assert (=> b!4352733 (forall!9094 (toList!2937 lm!1707) lambda!139729)))

(declare-fun b!4352734 () Bool)

(declare-fun res!1788492 () Bool)

(assert (=> b!4352734 (=> (not res!1788492) (not e!2708689))))

(declare-fun allKeysSameHash!435 (List!49021 (_ BitVec 64) Hashable!4869) Bool)

(assert (=> b!4352734 (= res!1788492 (allKeysSameHash!435 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4352729 () Bool)

(declare-fun res!1788495 () Bool)

(assert (=> b!4352729 (=> (not res!1788495) (not e!2708689))))

(declare-fun allKeysSameHashInMap!581 (ListLongMap!1587 Hashable!4869) Bool)

(assert (=> b!4352729 (= res!1788495 (allKeysSameHashInMap!581 lm!1707 hashF!1247))))

(declare-fun res!1788494 () Bool)

(assert (=> start!420832 (=> (not res!1788494) (not e!2708689))))

(assert (=> start!420832 (= res!1788494 (forall!9094 (toList!2937 lm!1707) lambda!139729))))

(assert (=> start!420832 e!2708689))

(assert (=> start!420832 e!2708695))

(assert (=> start!420832 true))

(declare-fun inv!64446 (ListLongMap!1587) Bool)

(assert (=> start!420832 (and (inv!64446 lm!1707) e!2708696)))

(assert (=> start!420832 tp_is_empty!25145))

(assert (=> start!420832 tp_is_empty!25147))

(declare-fun b!4352735 () Bool)

(declare-fun res!1788493 () Bool)

(assert (=> b!4352735 (=> res!1788493 e!2708693)))

(declare-fun noDuplicateKeys!477 (List!49021) Bool)

(assert (=> b!4352735 (= res!1788493 (not (noDuplicateKeys!477 newBucket!200)))))

(declare-fun b!4352736 () Bool)

(declare-fun res!1788486 () Bool)

(assert (=> b!4352736 (=> (not res!1788486) (not e!2708689))))

(declare-fun contains!11082 (ListLongMap!1587 (_ BitVec 64)) Bool)

(assert (=> b!4352736 (= res!1788486 (contains!11082 lm!1707 hash!377))))

(assert (= (and start!420832 res!1788494) b!4352729))

(assert (= (and b!4352729 res!1788495) b!4352727))

(assert (= (and b!4352727 res!1788488) b!4352734))

(assert (= (and b!4352734 res!1788492) b!4352730))

(assert (= (and b!4352730 res!1788487) b!4352736))

(assert (= (and b!4352736 res!1788486) b!4352723))

(assert (= (and b!4352723 (not res!1788496)) b!4352735))

(assert (= (and b!4352735 (not res!1788493)) b!4352733))

(assert (= (and b!4352733 res!1788490) b!4352724))

(assert (= (and b!4352733 (not res!1788497)) b!4352726))

(assert (= (and b!4352726 res!1788489) b!4352731))

(assert (= (and b!4352726 res!1788491) b!4352732))

(assert (= (and start!420832 ((_ is Cons!48897) newBucket!200)) b!4352725))

(assert (= start!420832 b!4352728))

(declare-fun m!4964143 () Bool)

(assert (=> b!4352735 m!4964143))

(declare-fun m!4964145 () Bool)

(assert (=> b!4352736 m!4964145))

(declare-fun m!4964147 () Bool)

(assert (=> b!4352724 m!4964147))

(declare-fun m!4964149 () Bool)

(assert (=> b!4352727 m!4964149))

(assert (=> b!4352733 m!4964147))

(declare-fun m!4964151 () Bool)

(assert (=> b!4352733 m!4964151))

(declare-fun m!4964153 () Bool)

(assert (=> b!4352733 m!4964153))

(declare-fun m!4964155 () Bool)

(assert (=> b!4352733 m!4964155))

(declare-fun m!4964157 () Bool)

(assert (=> b!4352731 m!4964157))

(declare-fun m!4964159 () Bool)

(assert (=> b!4352726 m!4964159))

(declare-fun m!4964161 () Bool)

(assert (=> b!4352726 m!4964161))

(declare-fun m!4964163 () Bool)

(assert (=> b!4352726 m!4964163))

(declare-fun m!4964165 () Bool)

(assert (=> b!4352726 m!4964165))

(declare-fun m!4964167 () Bool)

(assert (=> b!4352726 m!4964167))

(declare-fun m!4964169 () Bool)

(assert (=> b!4352726 m!4964169))

(declare-fun m!4964171 () Bool)

(assert (=> b!4352726 m!4964171))

(assert (=> b!4352726 m!4964165))

(declare-fun m!4964173 () Bool)

(assert (=> b!4352726 m!4964173))

(declare-fun m!4964175 () Bool)

(assert (=> b!4352726 m!4964175))

(assert (=> b!4352726 m!4964167))

(declare-fun m!4964177 () Bool)

(assert (=> b!4352726 m!4964177))

(assert (=> b!4352726 m!4964155))

(declare-fun m!4964179 () Bool)

(assert (=> b!4352726 m!4964179))

(assert (=> b!4352726 m!4964179))

(declare-fun m!4964181 () Bool)

(assert (=> b!4352726 m!4964181))

(declare-fun m!4964183 () Bool)

(assert (=> b!4352726 m!4964183))

(declare-fun m!4964185 () Bool)

(assert (=> b!4352726 m!4964185))

(assert (=> start!420832 m!4964155))

(declare-fun m!4964187 () Bool)

(assert (=> start!420832 m!4964187))

(declare-fun m!4964189 () Bool)

(assert (=> b!4352732 m!4964189))

(declare-fun m!4964191 () Bool)

(assert (=> b!4352729 m!4964191))

(declare-fun m!4964193 () Bool)

(assert (=> b!4352723 m!4964193))

(declare-fun m!4964195 () Bool)

(assert (=> b!4352723 m!4964195))

(declare-fun m!4964197 () Bool)

(assert (=> b!4352723 m!4964197))

(declare-fun m!4964199 () Bool)

(assert (=> b!4352723 m!4964199))

(declare-fun m!4964201 () Bool)

(assert (=> b!4352723 m!4964201))

(declare-fun m!4964203 () Bool)

(assert (=> b!4352734 m!4964203))

(declare-fun m!4964205 () Bool)

(assert (=> b!4352730 m!4964205))

(assert (=> b!4352730 m!4964205))

(declare-fun m!4964207 () Bool)

(assert (=> b!4352730 m!4964207))

(check-sat (not b!4352723) (not b!4352735) (not b!4352725) (not b!4352724) (not b!4352728) (not b!4352733) (not b!4352729) (not b!4352727) tp_is_empty!25147 tp_is_empty!25145 (not b!4352730) (not start!420832) (not b!4352731) (not b!4352732) (not b!4352726) (not b!4352736) (not b!4352734))
(check-sat)
