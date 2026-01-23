; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423252 () Bool)

(assert start!423252)

(declare-fun b!4365258 () Bool)

(declare-fun e!2716766 () Bool)

(declare-fun tp!1330624 () Bool)

(declare-fun tp_is_empty!25385 () Bool)

(declare-fun tp_is_empty!25387 () Bool)

(assert (=> b!4365258 (= e!2716766 (and tp_is_empty!25385 tp_is_empty!25387 tp!1330624))))

(declare-fun b!4365259 () Bool)

(declare-fun e!2716767 () Bool)

(declare-datatypes ((V!10656 0))(
  ( (V!10657 (val!16599 Int)) )
))
(declare-datatypes ((K!10410 0))(
  ( (K!10411 (val!16600 Int)) )
))
(declare-datatypes ((tuple2!48518 0))(
  ( (tuple2!48519 (_1!27553 K!10410) (_2!27553 V!10656)) )
))
(declare-datatypes ((List!49171 0))(
  ( (Nil!49047) (Cons!49047 (h!54618 tuple2!48518) (t!356091 List!49171)) )
))
(declare-datatypes ((tuple2!48520 0))(
  ( (tuple2!48521 (_1!27554 (_ BitVec 64)) (_2!27554 List!49171)) )
))
(declare-datatypes ((List!49172 0))(
  ( (Nil!49048) (Cons!49048 (h!54619 tuple2!48520) (t!356092 List!49172)) )
))
(declare-datatypes ((ListLongMap!1707 0))(
  ( (ListLongMap!1708 (toList!3057 List!49172)) )
))
(declare-fun lt!1578136 () ListLongMap!1707)

(declare-fun lambda!142563 () Int)

(declare-fun forall!9194 (List!49172 Int) Bool)

(assert (=> b!4365259 (= e!2716767 (forall!9194 (toList!3057 lt!1578136) lambda!142563))))

(declare-fun b!4365260 () Bool)

(declare-fun e!2716771 () Bool)

(declare-fun e!2716770 () Bool)

(assert (=> b!4365260 (= e!2716771 (not e!2716770))))

(declare-fun res!1795606 () Bool)

(assert (=> b!4365260 (=> res!1795606 e!2716770)))

(declare-fun newBucket!200 () List!49171)

(declare-fun lt!1578143 () tuple2!48518)

(declare-fun lt!1578141 () List!49171)

(declare-fun key!3918 () K!10410)

(declare-fun removePairForKey!507 (List!49171 K!10410) List!49171)

(assert (=> b!4365260 (= res!1795606 (not (= newBucket!200 (Cons!49047 lt!1578143 (removePairForKey!507 lt!1578141 key!3918)))))))

(declare-fun newValue!99 () V!10656)

(assert (=> b!4365260 (= lt!1578143 (tuple2!48519 key!3918 newValue!99))))

(declare-fun lm!1707 () ListLongMap!1707)

(declare-fun lt!1578137 () tuple2!48520)

(declare-datatypes ((Unit!73003 0))(
  ( (Unit!73004) )
))
(declare-fun lt!1578135 () Unit!73003)

(declare-fun forallContained!1835 (List!49172 Int tuple2!48520) Unit!73003)

(assert (=> b!4365260 (= lt!1578135 (forallContained!1835 (toList!3057 lm!1707) lambda!142563 lt!1578137))))

(declare-fun contains!11319 (List!49172 tuple2!48520) Bool)

(assert (=> b!4365260 (contains!11319 (toList!3057 lm!1707) lt!1578137)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4365260 (= lt!1578137 (tuple2!48521 hash!377 lt!1578141))))

(declare-fun lt!1578133 () Unit!73003)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!384 (List!49172 (_ BitVec 64) List!49171) Unit!73003)

(assert (=> b!4365260 (= lt!1578133 (lemmaGetValueByKeyImpliesContainsTuple!384 (toList!3057 lm!1707) hash!377 lt!1578141))))

(declare-fun apply!11389 (ListLongMap!1707 (_ BitVec 64)) List!49171)

(assert (=> b!4365260 (= lt!1578141 (apply!11389 lm!1707 hash!377))))

(declare-fun b!4365261 () Bool)

(declare-fun res!1795612 () Bool)

(assert (=> b!4365261 (=> (not res!1795612) (not e!2716771))))

(declare-fun contains!11320 (ListLongMap!1707 (_ BitVec 64)) Bool)

(assert (=> b!4365261 (= res!1795612 (contains!11320 lm!1707 hash!377))))

(declare-fun b!4365262 () Bool)

(declare-fun e!2716765 () Bool)

(declare-datatypes ((ListMap!2301 0))(
  ( (ListMap!2302 (toList!3058 List!49171)) )
))
(declare-fun lt!1578144 () ListMap!2301)

(declare-fun lt!1578148 () ListMap!2301)

(declare-fun eq!299 (ListMap!2301 ListMap!2301) Bool)

(assert (=> b!4365262 (= e!2716765 (eq!299 lt!1578144 lt!1578148))))

(declare-fun lt!1578131 () ListMap!2301)

(declare-fun addToMapMapFromBucket!225 (List!49171 ListMap!2301) ListMap!2301)

(declare-fun +!723 (ListMap!2301 tuple2!48518) ListMap!2301)

(assert (=> b!4365262 (eq!299 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578131) (+!723 lt!1578144 lt!1578143))))

(declare-fun lt!1578146 () ListMap!2301)

(declare-fun lt!1578140 () Unit!73003)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!108 (ListMap!2301 K!10410 V!10656 List!49171) Unit!73003)

(assert (=> b!4365262 (= lt!1578140 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!108 lt!1578146 key!3918 newValue!99 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(assert (=> b!4365262 (= lt!1578148 lt!1578144)))

(assert (=> b!4365262 (= lt!1578144 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578146))))

(declare-fun e!2716768 () Bool)

(assert (=> b!4365262 e!2716768))

(declare-fun res!1795607 () Bool)

(assert (=> b!4365262 (=> (not res!1795607) (not e!2716768))))

(declare-fun lt!1578142 () ListMap!2301)

(assert (=> b!4365262 (= res!1795607 (eq!299 lt!1578142 lt!1578131))))

(assert (=> b!4365262 (= lt!1578131 (+!723 lt!1578146 lt!1578143))))

(declare-fun lt!1578134 () ListLongMap!1707)

(declare-fun lt!1578147 () tuple2!48520)

(declare-fun extractMap!596 (List!49172) ListMap!2301)

(declare-fun +!724 (ListLongMap!1707 tuple2!48520) ListLongMap!1707)

(assert (=> b!4365262 (= lt!1578142 (extractMap!596 (toList!3057 (+!724 lt!1578134 lt!1578147))))))

(declare-fun lt!1578138 () Unit!73003)

(declare-datatypes ((Hashable!4929 0))(
  ( (HashableExt!4928 (__x!30632 Int)) )
))
(declare-fun hashF!1247 () Hashable!4929)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!131 (ListLongMap!1707 (_ BitVec 64) List!49171 K!10410 V!10656 Hashable!4929) Unit!73003)

(assert (=> b!4365262 (= lt!1578138 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!131 lt!1578134 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11321 (ListMap!2301 K!10410) Bool)

(assert (=> b!4365262 (contains!11321 lt!1578146 key!3918)))

(assert (=> b!4365262 (= lt!1578146 (extractMap!596 (toList!3057 lt!1578134)))))

(declare-fun tail!7054 (ListLongMap!1707) ListLongMap!1707)

(assert (=> b!4365262 (= lt!1578134 (tail!7054 lm!1707))))

(declare-fun lt!1578130 () ListMap!2301)

(assert (=> b!4365262 (contains!11321 lt!1578130 key!3918)))

(declare-fun lt!1578139 () Unit!73003)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!70 (List!49171 K!10410 V!10656 ListMap!2301) Unit!73003)

(assert (=> b!4365262 (= lt!1578139 (lemmaAddToMapContainsAndNotInListThenInAcc!70 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918 newValue!99 lt!1578130))))

(assert (=> b!4365262 (= lt!1578130 (extractMap!596 (t!356092 (toList!3057 lm!1707))))))

(declare-fun e!2716772 () Bool)

(assert (=> b!4365262 e!2716772))

(declare-fun res!1795611 () Bool)

(assert (=> b!4365262 (=> (not res!1795611) (not e!2716772))))

(declare-fun containsKey!770 (List!49171 K!10410) Bool)

(assert (=> b!4365262 (= res!1795611 (not (containsKey!770 (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707)))) key!3918)))))

(declare-fun lt!1578145 () Unit!73003)

(declare-fun lemmaNotSameHashThenCannotContainKey!74 (ListLongMap!1707 K!10410 (_ BitVec 64) Hashable!4929) Unit!73003)

(assert (=> b!4365262 (= lt!1578145 (lemmaNotSameHashThenCannotContainKey!74 lm!1707 key!3918 (_1!27554 (h!54619 (toList!3057 lm!1707))) hashF!1247))))

(declare-fun b!4365263 () Bool)

(assert (=> b!4365263 (= e!2716772 (not (containsKey!770 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918)))))

(declare-fun b!4365264 () Bool)

(declare-fun res!1795617 () Bool)

(declare-fun e!2716769 () Bool)

(assert (=> b!4365264 (=> (not res!1795617) (not e!2716769))))

(declare-fun allKeysSameHash!495 (List!49171 (_ BitVec 64) Hashable!4929) Bool)

(assert (=> b!4365264 (= res!1795617 (allKeysSameHash!495 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4365265 () Bool)

(assert (=> b!4365265 (= e!2716770 e!2716765)))

(declare-fun res!1795610 () Bool)

(assert (=> b!4365265 (=> res!1795610 e!2716765)))

(get-info :version)

(assert (=> b!4365265 (= res!1795610 (or (and ((_ is Cons!49048) (toList!3057 lm!1707)) (= (_1!27554 (h!54619 (toList!3057 lm!1707))) hash!377)) (not ((_ is Cons!49048) (toList!3057 lm!1707))) (= (_1!27554 (h!54619 (toList!3057 lm!1707))) hash!377)))))

(assert (=> b!4365265 e!2716767))

(declare-fun res!1795613 () Bool)

(assert (=> b!4365265 (=> (not res!1795613) (not e!2716767))))

(assert (=> b!4365265 (= res!1795613 (forall!9194 (toList!3057 lt!1578136) lambda!142563))))

(assert (=> b!4365265 (= lt!1578136 (+!724 lm!1707 lt!1578147))))

(assert (=> b!4365265 (= lt!1578147 (tuple2!48521 hash!377 newBucket!200))))

(declare-fun lt!1578132 () Unit!73003)

(declare-fun addValidProp!191 (ListLongMap!1707 Int (_ BitVec 64) List!49171) Unit!73003)

(assert (=> b!4365265 (= lt!1578132 (addValidProp!191 lm!1707 lambda!142563 hash!377 newBucket!200))))

(assert (=> b!4365265 (forall!9194 (toList!3057 lm!1707) lambda!142563)))

(declare-fun b!4365266 () Bool)

(declare-fun res!1795614 () Bool)

(assert (=> b!4365266 (=> (not res!1795614) (not e!2716769))))

(declare-fun allKeysSameHashInMap!641 (ListLongMap!1707 Hashable!4929) Bool)

(assert (=> b!4365266 (= res!1795614 (allKeysSameHashInMap!641 lm!1707 hashF!1247))))

(declare-fun b!4365267 () Bool)

(declare-fun res!1795616 () Bool)

(assert (=> b!4365267 (=> res!1795616 e!2716770)))

(declare-fun noDuplicateKeys!537 (List!49171) Bool)

(assert (=> b!4365267 (= res!1795616 (not (noDuplicateKeys!537 newBucket!200)))))

(declare-fun b!4365268 () Bool)

(declare-fun e!2716764 () Bool)

(declare-fun tp!1330623 () Bool)

(assert (=> b!4365268 (= e!2716764 tp!1330623)))

(declare-fun b!4365257 () Bool)

(assert (=> b!4365257 (= e!2716769 e!2716771)))

(declare-fun res!1795615 () Bool)

(assert (=> b!4365257 (=> (not res!1795615) (not e!2716771))))

(assert (=> b!4365257 (= res!1795615 (contains!11321 lt!1578148 key!3918))))

(assert (=> b!4365257 (= lt!1578148 (extractMap!596 (toList!3057 lm!1707)))))

(declare-fun res!1795609 () Bool)

(assert (=> start!423252 (=> (not res!1795609) (not e!2716769))))

(assert (=> start!423252 (= res!1795609 (forall!9194 (toList!3057 lm!1707) lambda!142563))))

(assert (=> start!423252 e!2716769))

(assert (=> start!423252 e!2716766))

(assert (=> start!423252 true))

(declare-fun inv!64596 (ListLongMap!1707) Bool)

(assert (=> start!423252 (and (inv!64596 lm!1707) e!2716764)))

(assert (=> start!423252 tp_is_empty!25385))

(assert (=> start!423252 tp_is_empty!25387))

(declare-fun b!4365269 () Bool)

(declare-fun res!1795608 () Bool)

(assert (=> b!4365269 (=> (not res!1795608) (not e!2716769))))

(declare-fun hash!1675 (Hashable!4929 K!10410) (_ BitVec 64))

(assert (=> b!4365269 (= res!1795608 (= (hash!1675 hashF!1247 key!3918) hash!377))))

(declare-fun b!4365270 () Bool)

(declare-fun head!9104 (ListLongMap!1707) tuple2!48520)

(assert (=> b!4365270 (= e!2716768 (not (= (head!9104 lm!1707) lt!1578147)))))

(assert (= (and start!423252 res!1795609) b!4365266))

(assert (= (and b!4365266 res!1795614) b!4365269))

(assert (= (and b!4365269 res!1795608) b!4365264))

(assert (= (and b!4365264 res!1795617) b!4365257))

(assert (= (and b!4365257 res!1795615) b!4365261))

(assert (= (and b!4365261 res!1795612) b!4365260))

(assert (= (and b!4365260 (not res!1795606)) b!4365267))

(assert (= (and b!4365267 (not res!1795616)) b!4365265))

(assert (= (and b!4365265 res!1795613) b!4365259))

(assert (= (and b!4365265 (not res!1795610)) b!4365262))

(assert (= (and b!4365262 res!1795611) b!4365263))

(assert (= (and b!4365262 res!1795607) b!4365270))

(assert (= (and start!423252 ((_ is Cons!49047) newBucket!200)) b!4365258))

(assert (= start!423252 b!4365268))

(declare-fun m!4987617 () Bool)

(assert (=> b!4365257 m!4987617))

(declare-fun m!4987619 () Bool)

(assert (=> b!4365257 m!4987619))

(declare-fun m!4987621 () Bool)

(assert (=> b!4365270 m!4987621))

(declare-fun m!4987623 () Bool)

(assert (=> b!4365264 m!4987623))

(declare-fun m!4987625 () Bool)

(assert (=> b!4365266 m!4987625))

(declare-fun m!4987627 () Bool)

(assert (=> b!4365269 m!4987627))

(declare-fun m!4987629 () Bool)

(assert (=> start!423252 m!4987629))

(declare-fun m!4987631 () Bool)

(assert (=> start!423252 m!4987631))

(declare-fun m!4987633 () Bool)

(assert (=> b!4365260 m!4987633))

(declare-fun m!4987635 () Bool)

(assert (=> b!4365260 m!4987635))

(declare-fun m!4987637 () Bool)

(assert (=> b!4365260 m!4987637))

(declare-fun m!4987639 () Bool)

(assert (=> b!4365260 m!4987639))

(declare-fun m!4987641 () Bool)

(assert (=> b!4365260 m!4987641))

(declare-fun m!4987643 () Bool)

(assert (=> b!4365267 m!4987643))

(declare-fun m!4987645 () Bool)

(assert (=> b!4365259 m!4987645))

(assert (=> b!4365265 m!4987645))

(declare-fun m!4987647 () Bool)

(assert (=> b!4365265 m!4987647))

(declare-fun m!4987649 () Bool)

(assert (=> b!4365265 m!4987649))

(assert (=> b!4365265 m!4987629))

(declare-fun m!4987651 () Bool)

(assert (=> b!4365262 m!4987651))

(declare-fun m!4987653 () Bool)

(assert (=> b!4365262 m!4987653))

(declare-fun m!4987655 () Bool)

(assert (=> b!4365262 m!4987655))

(declare-fun m!4987657 () Bool)

(assert (=> b!4365262 m!4987657))

(declare-fun m!4987659 () Bool)

(assert (=> b!4365262 m!4987659))

(declare-fun m!4987661 () Bool)

(assert (=> b!4365262 m!4987661))

(declare-fun m!4987663 () Bool)

(assert (=> b!4365262 m!4987663))

(declare-fun m!4987665 () Bool)

(assert (=> b!4365262 m!4987665))

(declare-fun m!4987667 () Bool)

(assert (=> b!4365262 m!4987667))

(declare-fun m!4987669 () Bool)

(assert (=> b!4365262 m!4987669))

(declare-fun m!4987671 () Bool)

(assert (=> b!4365262 m!4987671))

(declare-fun m!4987673 () Bool)

(assert (=> b!4365262 m!4987673))

(declare-fun m!4987675 () Bool)

(assert (=> b!4365262 m!4987675))

(declare-fun m!4987677 () Bool)

(assert (=> b!4365262 m!4987677))

(assert (=> b!4365262 m!4987673))

(assert (=> b!4365262 m!4987669))

(declare-fun m!4987679 () Bool)

(assert (=> b!4365262 m!4987679))

(declare-fun m!4987681 () Bool)

(assert (=> b!4365262 m!4987681))

(declare-fun m!4987683 () Bool)

(assert (=> b!4365262 m!4987683))

(assert (=> b!4365262 m!4987683))

(declare-fun m!4987685 () Bool)

(assert (=> b!4365262 m!4987685))

(declare-fun m!4987687 () Bool)

(assert (=> b!4365262 m!4987687))

(declare-fun m!4987689 () Bool)

(assert (=> b!4365262 m!4987689))

(declare-fun m!4987691 () Bool)

(assert (=> b!4365263 m!4987691))

(declare-fun m!4987693 () Bool)

(assert (=> b!4365261 m!4987693))

(check-sat (not b!4365265) (not b!4365257) (not b!4365261) (not b!4365266) (not b!4365264) (not b!4365262) (not b!4365269) (not b!4365263) (not b!4365270) (not b!4365259) (not b!4365258) tp_is_empty!25385 tp_is_empty!25387 (not b!4365260) (not b!4365268) (not start!423252) (not b!4365267))
(check-sat)
(get-model)

(declare-fun bs!636838 () Bool)

(declare-fun d!1291864 () Bool)

(assert (= bs!636838 (and d!1291864 start!423252)))

(declare-fun lambda!142569 () Int)

(assert (=> bs!636838 (not (= lambda!142569 lambda!142563))))

(assert (=> d!1291864 true))

(assert (=> d!1291864 (= (allKeysSameHashInMap!641 lm!1707 hashF!1247) (forall!9194 (toList!3057 lm!1707) lambda!142569))))

(declare-fun bs!636839 () Bool)

(assert (= bs!636839 d!1291864))

(declare-fun m!4987707 () Bool)

(assert (=> bs!636839 m!4987707))

(assert (=> b!4365266 d!1291864))

(declare-fun d!1291872 () Bool)

(declare-fun res!1795639 () Bool)

(declare-fun e!2716797 () Bool)

(assert (=> d!1291872 (=> res!1795639 e!2716797)))

(assert (=> d!1291872 (= res!1795639 ((_ is Nil!49048) (toList!3057 lt!1578136)))))

(assert (=> d!1291872 (= (forall!9194 (toList!3057 lt!1578136) lambda!142563) e!2716797)))

(declare-fun b!4365304 () Bool)

(declare-fun e!2716798 () Bool)

(assert (=> b!4365304 (= e!2716797 e!2716798)))

(declare-fun res!1795640 () Bool)

(assert (=> b!4365304 (=> (not res!1795640) (not e!2716798))))

(declare-fun dynLambda!20661 (Int tuple2!48520) Bool)

(assert (=> b!4365304 (= res!1795640 (dynLambda!20661 lambda!142563 (h!54619 (toList!3057 lt!1578136))))))

(declare-fun b!4365305 () Bool)

(assert (=> b!4365305 (= e!2716798 (forall!9194 (t!356092 (toList!3057 lt!1578136)) lambda!142563))))

(assert (= (and d!1291872 (not res!1795639)) b!4365304))

(assert (= (and b!4365304 res!1795640) b!4365305))

(declare-fun b_lambda!132239 () Bool)

(assert (=> (not b_lambda!132239) (not b!4365304)))

(declare-fun m!4987721 () Bool)

(assert (=> b!4365304 m!4987721))

(declare-fun m!4987723 () Bool)

(assert (=> b!4365305 m!4987723))

(assert (=> b!4365265 d!1291872))

(declare-fun d!1291878 () Bool)

(declare-fun e!2716819 () Bool)

(assert (=> d!1291878 e!2716819))

(declare-fun res!1795657 () Bool)

(assert (=> d!1291878 (=> (not res!1795657) (not e!2716819))))

(declare-fun lt!1578181 () ListLongMap!1707)

(assert (=> d!1291878 (= res!1795657 (contains!11320 lt!1578181 (_1!27554 lt!1578147)))))

(declare-fun lt!1578184 () List!49172)

(assert (=> d!1291878 (= lt!1578181 (ListLongMap!1708 lt!1578184))))

(declare-fun lt!1578183 () Unit!73003)

(declare-fun lt!1578182 () Unit!73003)

(assert (=> d!1291878 (= lt!1578183 lt!1578182)))

(declare-datatypes ((Option!10508 0))(
  ( (None!10507) (Some!10507 (v!43441 List!49171)) )
))
(declare-fun getValueByKey!494 (List!49172 (_ BitVec 64)) Option!10508)

(assert (=> d!1291878 (= (getValueByKey!494 lt!1578184 (_1!27554 lt!1578147)) (Some!10507 (_2!27554 lt!1578147)))))

(declare-fun lemmaContainsTupThenGetReturnValue!268 (List!49172 (_ BitVec 64) List!49171) Unit!73003)

(assert (=> d!1291878 (= lt!1578182 (lemmaContainsTupThenGetReturnValue!268 lt!1578184 (_1!27554 lt!1578147) (_2!27554 lt!1578147)))))

(declare-fun insertStrictlySorted!155 (List!49172 (_ BitVec 64) List!49171) List!49172)

(assert (=> d!1291878 (= lt!1578184 (insertStrictlySorted!155 (toList!3057 lm!1707) (_1!27554 lt!1578147) (_2!27554 lt!1578147)))))

(assert (=> d!1291878 (= (+!724 lm!1707 lt!1578147) lt!1578181)))

(declare-fun b!4365336 () Bool)

(declare-fun res!1795658 () Bool)

(assert (=> b!4365336 (=> (not res!1795658) (not e!2716819))))

(assert (=> b!4365336 (= res!1795658 (= (getValueByKey!494 (toList!3057 lt!1578181) (_1!27554 lt!1578147)) (Some!10507 (_2!27554 lt!1578147))))))

(declare-fun b!4365337 () Bool)

(assert (=> b!4365337 (= e!2716819 (contains!11319 (toList!3057 lt!1578181) lt!1578147))))

(assert (= (and d!1291878 res!1795657) b!4365336))

(assert (= (and b!4365336 res!1795658) b!4365337))

(declare-fun m!4987751 () Bool)

(assert (=> d!1291878 m!4987751))

(declare-fun m!4987753 () Bool)

(assert (=> d!1291878 m!4987753))

(declare-fun m!4987755 () Bool)

(assert (=> d!1291878 m!4987755))

(declare-fun m!4987757 () Bool)

(assert (=> d!1291878 m!4987757))

(declare-fun m!4987759 () Bool)

(assert (=> b!4365336 m!4987759))

(declare-fun m!4987761 () Bool)

(assert (=> b!4365337 m!4987761))

(assert (=> b!4365265 d!1291878))

(declare-fun d!1291894 () Bool)

(assert (=> d!1291894 (forall!9194 (toList!3057 (+!724 lm!1707 (tuple2!48521 hash!377 newBucket!200))) lambda!142563)))

(declare-fun lt!1578199 () Unit!73003)

(declare-fun choose!27111 (ListLongMap!1707 Int (_ BitVec 64) List!49171) Unit!73003)

(assert (=> d!1291894 (= lt!1578199 (choose!27111 lm!1707 lambda!142563 hash!377 newBucket!200))))

(declare-fun e!2716827 () Bool)

(assert (=> d!1291894 e!2716827))

(declare-fun res!1795669 () Bool)

(assert (=> d!1291894 (=> (not res!1795669) (not e!2716827))))

(assert (=> d!1291894 (= res!1795669 (forall!9194 (toList!3057 lm!1707) lambda!142563))))

(assert (=> d!1291894 (= (addValidProp!191 lm!1707 lambda!142563 hash!377 newBucket!200) lt!1578199)))

(declare-fun b!4365349 () Bool)

(assert (=> b!4365349 (= e!2716827 (dynLambda!20661 lambda!142563 (tuple2!48521 hash!377 newBucket!200)))))

(assert (= (and d!1291894 res!1795669) b!4365349))

(declare-fun b_lambda!132243 () Bool)

(assert (=> (not b_lambda!132243) (not b!4365349)))

(declare-fun m!4987785 () Bool)

(assert (=> d!1291894 m!4987785))

(declare-fun m!4987787 () Bool)

(assert (=> d!1291894 m!4987787))

(declare-fun m!4987789 () Bool)

(assert (=> d!1291894 m!4987789))

(assert (=> d!1291894 m!4987629))

(declare-fun m!4987791 () Bool)

(assert (=> b!4365349 m!4987791))

(assert (=> b!4365265 d!1291894))

(declare-fun d!1291904 () Bool)

(declare-fun res!1795670 () Bool)

(declare-fun e!2716828 () Bool)

(assert (=> d!1291904 (=> res!1795670 e!2716828)))

(assert (=> d!1291904 (= res!1795670 ((_ is Nil!49048) (toList!3057 lm!1707)))))

(assert (=> d!1291904 (= (forall!9194 (toList!3057 lm!1707) lambda!142563) e!2716828)))

(declare-fun b!4365350 () Bool)

(declare-fun e!2716829 () Bool)

(assert (=> b!4365350 (= e!2716828 e!2716829)))

(declare-fun res!1795671 () Bool)

(assert (=> b!4365350 (=> (not res!1795671) (not e!2716829))))

(assert (=> b!4365350 (= res!1795671 (dynLambda!20661 lambda!142563 (h!54619 (toList!3057 lm!1707))))))

(declare-fun b!4365351 () Bool)

(assert (=> b!4365351 (= e!2716829 (forall!9194 (t!356092 (toList!3057 lm!1707)) lambda!142563))))

(assert (= (and d!1291904 (not res!1795670)) b!4365350))

(assert (= (and b!4365350 res!1795671) b!4365351))

(declare-fun b_lambda!132245 () Bool)

(assert (=> (not b_lambda!132245) (not b!4365350)))

(declare-fun m!4987793 () Bool)

(assert (=> b!4365350 m!4987793))

(declare-fun m!4987795 () Bool)

(assert (=> b!4365351 m!4987795))

(assert (=> b!4365265 d!1291904))

(assert (=> start!423252 d!1291904))

(declare-fun d!1291906 () Bool)

(declare-fun isStrictlySorted!124 (List!49172) Bool)

(assert (=> d!1291906 (= (inv!64596 lm!1707) (isStrictlySorted!124 (toList!3057 lm!1707)))))

(declare-fun bs!636846 () Bool)

(assert (= bs!636846 d!1291906))

(declare-fun m!4987797 () Bool)

(assert (=> bs!636846 m!4987797))

(assert (=> start!423252 d!1291906))

(declare-fun d!1291908 () Bool)

(assert (=> d!1291908 true))

(assert (=> d!1291908 true))

(declare-fun lambda!142578 () Int)

(declare-fun forall!9196 (List!49171 Int) Bool)

(assert (=> d!1291908 (= (allKeysSameHash!495 newBucket!200 hash!377 hashF!1247) (forall!9196 newBucket!200 lambda!142578))))

(declare-fun bs!636849 () Bool)

(assert (= bs!636849 d!1291908))

(declare-fun m!4987807 () Bool)

(assert (=> bs!636849 m!4987807))

(assert (=> b!4365264 d!1291908))

(declare-fun bm!303444 () Bool)

(declare-fun call!303449 () Bool)

(declare-datatypes ((List!49174 0))(
  ( (Nil!49050) (Cons!49050 (h!54623 K!10410) (t!356094 List!49174)) )
))
(declare-fun e!2716871 () List!49174)

(declare-fun contains!11324 (List!49174 K!10410) Bool)

(assert (=> bm!303444 (= call!303449 (contains!11324 e!2716871 key!3918))))

(declare-fun c!742190 () Bool)

(declare-fun c!742192 () Bool)

(assert (=> bm!303444 (= c!742190 c!742192)))

(declare-fun b!4365413 () Bool)

(declare-fun e!2716867 () Bool)

(declare-fun keys!16596 (ListMap!2301) List!49174)

(assert (=> b!4365413 (= e!2716867 (not (contains!11324 (keys!16596 lt!1578148) key!3918)))))

(declare-fun b!4365415 () Bool)

(declare-fun getKeysList!146 (List!49171) List!49174)

(assert (=> b!4365415 (= e!2716871 (getKeysList!146 (toList!3058 lt!1578148)))))

(declare-fun b!4365416 () Bool)

(assert (=> b!4365416 (= e!2716871 (keys!16596 lt!1578148))))

(declare-fun b!4365417 () Bool)

(declare-fun e!2716866 () Unit!73003)

(declare-fun Unit!73019 () Unit!73003)

(assert (=> b!4365417 (= e!2716866 Unit!73019)))

(declare-fun b!4365418 () Bool)

(declare-fun e!2716869 () Unit!73003)

(declare-fun lt!1578258 () Unit!73003)

(assert (=> b!4365418 (= e!2716869 lt!1578258)))

(declare-fun lt!1578259 () Unit!73003)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!405 (List!49171 K!10410) Unit!73003)

(assert (=> b!4365418 (= lt!1578259 (lemmaContainsKeyImpliesGetValueByKeyDefined!405 (toList!3058 lt!1578148) key!3918))))

(declare-datatypes ((Option!10509 0))(
  ( (None!10508) (Some!10508 (v!43442 V!10656)) )
))
(declare-fun isDefined!7802 (Option!10509) Bool)

(declare-fun getValueByKey!495 (List!49171 K!10410) Option!10509)

(assert (=> b!4365418 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578148) key!3918))))

(declare-fun lt!1578262 () Unit!73003)

(assert (=> b!4365418 (= lt!1578262 lt!1578259)))

(declare-fun lemmaInListThenGetKeysListContains!143 (List!49171 K!10410) Unit!73003)

(assert (=> b!4365418 (= lt!1578258 (lemmaInListThenGetKeysListContains!143 (toList!3058 lt!1578148) key!3918))))

(assert (=> b!4365418 call!303449))

(declare-fun b!4365419 () Bool)

(declare-fun e!2716868 () Bool)

(assert (=> b!4365419 (= e!2716868 (contains!11324 (keys!16596 lt!1578148) key!3918))))

(declare-fun d!1291912 () Bool)

(declare-fun e!2716870 () Bool)

(assert (=> d!1291912 e!2716870))

(declare-fun res!1795695 () Bool)

(assert (=> d!1291912 (=> res!1795695 e!2716870)))

(assert (=> d!1291912 (= res!1795695 e!2716867)))

(declare-fun res!1795694 () Bool)

(assert (=> d!1291912 (=> (not res!1795694) (not e!2716867))))

(declare-fun lt!1578261 () Bool)

(assert (=> d!1291912 (= res!1795694 (not lt!1578261))))

(declare-fun lt!1578263 () Bool)

(assert (=> d!1291912 (= lt!1578261 lt!1578263)))

(declare-fun lt!1578264 () Unit!73003)

(assert (=> d!1291912 (= lt!1578264 e!2716869)))

(assert (=> d!1291912 (= c!742192 lt!1578263)))

(declare-fun containsKey!773 (List!49171 K!10410) Bool)

(assert (=> d!1291912 (= lt!1578263 (containsKey!773 (toList!3058 lt!1578148) key!3918))))

(assert (=> d!1291912 (= (contains!11321 lt!1578148 key!3918) lt!1578261)))

(declare-fun b!4365414 () Bool)

(assert (=> b!4365414 (= e!2716870 e!2716868)))

(declare-fun res!1795693 () Bool)

(assert (=> b!4365414 (=> (not res!1795693) (not e!2716868))))

(assert (=> b!4365414 (= res!1795693 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578148) key!3918)))))

(declare-fun b!4365420 () Bool)

(assert (=> b!4365420 (= e!2716869 e!2716866)))

(declare-fun c!742191 () Bool)

(assert (=> b!4365420 (= c!742191 call!303449)))

(declare-fun b!4365421 () Bool)

(assert (=> b!4365421 false))

(declare-fun lt!1578265 () Unit!73003)

(declare-fun lt!1578260 () Unit!73003)

(assert (=> b!4365421 (= lt!1578265 lt!1578260)))

(assert (=> b!4365421 (containsKey!773 (toList!3058 lt!1578148) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!144 (List!49171 K!10410) Unit!73003)

(assert (=> b!4365421 (= lt!1578260 (lemmaInGetKeysListThenContainsKey!144 (toList!3058 lt!1578148) key!3918))))

(declare-fun Unit!73021 () Unit!73003)

(assert (=> b!4365421 (= e!2716866 Unit!73021)))

(assert (= (and d!1291912 c!742192) b!4365418))

(assert (= (and d!1291912 (not c!742192)) b!4365420))

(assert (= (and b!4365420 c!742191) b!4365421))

(assert (= (and b!4365420 (not c!742191)) b!4365417))

(assert (= (or b!4365418 b!4365420) bm!303444))

(assert (= (and bm!303444 c!742190) b!4365415))

(assert (= (and bm!303444 (not c!742190)) b!4365416))

(assert (= (and d!1291912 res!1795694) b!4365413))

(assert (= (and d!1291912 (not res!1795695)) b!4365414))

(assert (= (and b!4365414 res!1795693) b!4365419))

(declare-fun m!4987861 () Bool)

(assert (=> b!4365419 m!4987861))

(assert (=> b!4365419 m!4987861))

(declare-fun m!4987863 () Bool)

(assert (=> b!4365419 m!4987863))

(declare-fun m!4987865 () Bool)

(assert (=> d!1291912 m!4987865))

(assert (=> b!4365413 m!4987861))

(assert (=> b!4365413 m!4987861))

(assert (=> b!4365413 m!4987863))

(declare-fun m!4987867 () Bool)

(assert (=> bm!303444 m!4987867))

(assert (=> b!4365421 m!4987865))

(declare-fun m!4987869 () Bool)

(assert (=> b!4365421 m!4987869))

(declare-fun m!4987871 () Bool)

(assert (=> b!4365414 m!4987871))

(assert (=> b!4365414 m!4987871))

(declare-fun m!4987873 () Bool)

(assert (=> b!4365414 m!4987873))

(assert (=> b!4365416 m!4987861))

(declare-fun m!4987875 () Bool)

(assert (=> b!4365418 m!4987875))

(assert (=> b!4365418 m!4987871))

(assert (=> b!4365418 m!4987871))

(assert (=> b!4365418 m!4987873))

(declare-fun m!4987877 () Bool)

(assert (=> b!4365418 m!4987877))

(declare-fun m!4987879 () Bool)

(assert (=> b!4365415 m!4987879))

(assert (=> b!4365257 d!1291912))

(declare-fun bs!636856 () Bool)

(declare-fun d!1291924 () Bool)

(assert (= bs!636856 (and d!1291924 start!423252)))

(declare-fun lambda!142584 () Int)

(assert (=> bs!636856 (= lambda!142584 lambda!142563)))

(declare-fun bs!636857 () Bool)

(assert (= bs!636857 (and d!1291924 d!1291864)))

(assert (=> bs!636857 (not (= lambda!142584 lambda!142569))))

(declare-fun lt!1578268 () ListMap!2301)

(declare-fun invariantList!698 (List!49171) Bool)

(assert (=> d!1291924 (invariantList!698 (toList!3058 lt!1578268))))

(declare-fun e!2716874 () ListMap!2301)

(assert (=> d!1291924 (= lt!1578268 e!2716874)))

(declare-fun c!742195 () Bool)

(assert (=> d!1291924 (= c!742195 ((_ is Cons!49048) (toList!3057 lm!1707)))))

(assert (=> d!1291924 (forall!9194 (toList!3057 lm!1707) lambda!142584)))

(assert (=> d!1291924 (= (extractMap!596 (toList!3057 lm!1707)) lt!1578268)))

(declare-fun b!4365426 () Bool)

(assert (=> b!4365426 (= e!2716874 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) (extractMap!596 (t!356092 (toList!3057 lm!1707)))))))

(declare-fun b!4365427 () Bool)

(assert (=> b!4365427 (= e!2716874 (ListMap!2302 Nil!49047))))

(assert (= (and d!1291924 c!742195) b!4365426))

(assert (= (and d!1291924 (not c!742195)) b!4365427))

(declare-fun m!4987881 () Bool)

(assert (=> d!1291924 m!4987881))

(declare-fun m!4987883 () Bool)

(assert (=> d!1291924 m!4987883))

(assert (=> b!4365426 m!4987675))

(assert (=> b!4365426 m!4987675))

(declare-fun m!4987885 () Bool)

(assert (=> b!4365426 m!4987885))

(assert (=> b!4365257 d!1291924))

(declare-fun d!1291926 () Bool)

(declare-fun res!1795700 () Bool)

(declare-fun e!2716879 () Bool)

(assert (=> d!1291926 (=> res!1795700 e!2716879)))

(assert (=> d!1291926 (= res!1795700 (not ((_ is Cons!49047) newBucket!200)))))

(assert (=> d!1291926 (= (noDuplicateKeys!537 newBucket!200) e!2716879)))

(declare-fun b!4365432 () Bool)

(declare-fun e!2716880 () Bool)

(assert (=> b!4365432 (= e!2716879 e!2716880)))

(declare-fun res!1795701 () Bool)

(assert (=> b!4365432 (=> (not res!1795701) (not e!2716880))))

(assert (=> b!4365432 (= res!1795701 (not (containsKey!770 (t!356091 newBucket!200) (_1!27553 (h!54618 newBucket!200)))))))

(declare-fun b!4365433 () Bool)

(assert (=> b!4365433 (= e!2716880 (noDuplicateKeys!537 (t!356091 newBucket!200)))))

(assert (= (and d!1291926 (not res!1795700)) b!4365432))

(assert (= (and b!4365432 res!1795701) b!4365433))

(declare-fun m!4987887 () Bool)

(assert (=> b!4365432 m!4987887))

(declare-fun m!4987889 () Bool)

(assert (=> b!4365433 m!4987889))

(assert (=> b!4365267 d!1291926))

(declare-fun d!1291928 () Bool)

(assert (=> d!1291928 (dynLambda!20661 lambda!142563 lt!1578137)))

(declare-fun lt!1578271 () Unit!73003)

(declare-fun choose!27114 (List!49172 Int tuple2!48520) Unit!73003)

(assert (=> d!1291928 (= lt!1578271 (choose!27114 (toList!3057 lm!1707) lambda!142563 lt!1578137))))

(declare-fun e!2716883 () Bool)

(assert (=> d!1291928 e!2716883))

(declare-fun res!1795704 () Bool)

(assert (=> d!1291928 (=> (not res!1795704) (not e!2716883))))

(assert (=> d!1291928 (= res!1795704 (forall!9194 (toList!3057 lm!1707) lambda!142563))))

(assert (=> d!1291928 (= (forallContained!1835 (toList!3057 lm!1707) lambda!142563 lt!1578137) lt!1578271)))

(declare-fun b!4365436 () Bool)

(assert (=> b!4365436 (= e!2716883 (contains!11319 (toList!3057 lm!1707) lt!1578137))))

(assert (= (and d!1291928 res!1795704) b!4365436))

(declare-fun b_lambda!132247 () Bool)

(assert (=> (not b_lambda!132247) (not d!1291928)))

(declare-fun m!4987891 () Bool)

(assert (=> d!1291928 m!4987891))

(declare-fun m!4987893 () Bool)

(assert (=> d!1291928 m!4987893))

(assert (=> d!1291928 m!4987629))

(assert (=> b!4365436 m!4987635))

(assert (=> b!4365260 d!1291928))

(declare-fun d!1291930 () Bool)

(assert (=> d!1291930 (contains!11319 (toList!3057 lm!1707) (tuple2!48521 hash!377 lt!1578141))))

(declare-fun lt!1578274 () Unit!73003)

(declare-fun choose!27115 (List!49172 (_ BitVec 64) List!49171) Unit!73003)

(assert (=> d!1291930 (= lt!1578274 (choose!27115 (toList!3057 lm!1707) hash!377 lt!1578141))))

(declare-fun e!2716886 () Bool)

(assert (=> d!1291930 e!2716886))

(declare-fun res!1795707 () Bool)

(assert (=> d!1291930 (=> (not res!1795707) (not e!2716886))))

(assert (=> d!1291930 (= res!1795707 (isStrictlySorted!124 (toList!3057 lm!1707)))))

(assert (=> d!1291930 (= (lemmaGetValueByKeyImpliesContainsTuple!384 (toList!3057 lm!1707) hash!377 lt!1578141) lt!1578274)))

(declare-fun b!4365439 () Bool)

(assert (=> b!4365439 (= e!2716886 (= (getValueByKey!494 (toList!3057 lm!1707) hash!377) (Some!10507 lt!1578141)))))

(assert (= (and d!1291930 res!1795707) b!4365439))

(declare-fun m!4987895 () Bool)

(assert (=> d!1291930 m!4987895))

(declare-fun m!4987897 () Bool)

(assert (=> d!1291930 m!4987897))

(assert (=> d!1291930 m!4987797))

(declare-fun m!4987899 () Bool)

(assert (=> b!4365439 m!4987899))

(assert (=> b!4365260 d!1291930))

(declare-fun d!1291932 () Bool)

(declare-fun lt!1578277 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7768 (List!49172) (InoxSet tuple2!48520))

(assert (=> d!1291932 (= lt!1578277 (select (content!7768 (toList!3057 lm!1707)) lt!1578137))))

(declare-fun e!2716892 () Bool)

(assert (=> d!1291932 (= lt!1578277 e!2716892)))

(declare-fun res!1795712 () Bool)

(assert (=> d!1291932 (=> (not res!1795712) (not e!2716892))))

(assert (=> d!1291932 (= res!1795712 ((_ is Cons!49048) (toList!3057 lm!1707)))))

(assert (=> d!1291932 (= (contains!11319 (toList!3057 lm!1707) lt!1578137) lt!1578277)))

(declare-fun b!4365444 () Bool)

(declare-fun e!2716891 () Bool)

(assert (=> b!4365444 (= e!2716892 e!2716891)))

(declare-fun res!1795713 () Bool)

(assert (=> b!4365444 (=> res!1795713 e!2716891)))

(assert (=> b!4365444 (= res!1795713 (= (h!54619 (toList!3057 lm!1707)) lt!1578137))))

(declare-fun b!4365445 () Bool)

(assert (=> b!4365445 (= e!2716891 (contains!11319 (t!356092 (toList!3057 lm!1707)) lt!1578137))))

(assert (= (and d!1291932 res!1795712) b!4365444))

(assert (= (and b!4365444 (not res!1795713)) b!4365445))

(declare-fun m!4987901 () Bool)

(assert (=> d!1291932 m!4987901))

(declare-fun m!4987903 () Bool)

(assert (=> d!1291932 m!4987903))

(declare-fun m!4987905 () Bool)

(assert (=> b!4365445 m!4987905))

(assert (=> b!4365260 d!1291932))

(declare-fun b!4365456 () Bool)

(declare-fun e!2716898 () List!49171)

(assert (=> b!4365456 (= e!2716898 (Cons!49047 (h!54618 lt!1578141) (removePairForKey!507 (t!356091 lt!1578141) key!3918)))))

(declare-fun b!4365454 () Bool)

(declare-fun e!2716897 () List!49171)

(assert (=> b!4365454 (= e!2716897 (t!356091 lt!1578141))))

(declare-fun d!1291934 () Bool)

(declare-fun lt!1578280 () List!49171)

(assert (=> d!1291934 (not (containsKey!770 lt!1578280 key!3918))))

(assert (=> d!1291934 (= lt!1578280 e!2716897)))

(declare-fun c!742201 () Bool)

(assert (=> d!1291934 (= c!742201 (and ((_ is Cons!49047) lt!1578141) (= (_1!27553 (h!54618 lt!1578141)) key!3918)))))

(assert (=> d!1291934 (noDuplicateKeys!537 lt!1578141)))

(assert (=> d!1291934 (= (removePairForKey!507 lt!1578141 key!3918) lt!1578280)))

(declare-fun b!4365455 () Bool)

(assert (=> b!4365455 (= e!2716897 e!2716898)))

(declare-fun c!742200 () Bool)

(assert (=> b!4365455 (= c!742200 ((_ is Cons!49047) lt!1578141))))

(declare-fun b!4365457 () Bool)

(assert (=> b!4365457 (= e!2716898 Nil!49047)))

(assert (= (and d!1291934 c!742201) b!4365454))

(assert (= (and d!1291934 (not c!742201)) b!4365455))

(assert (= (and b!4365455 c!742200) b!4365456))

(assert (= (and b!4365455 (not c!742200)) b!4365457))

(declare-fun m!4987907 () Bool)

(assert (=> b!4365456 m!4987907))

(declare-fun m!4987909 () Bool)

(assert (=> d!1291934 m!4987909))

(declare-fun m!4987911 () Bool)

(assert (=> d!1291934 m!4987911))

(assert (=> b!4365260 d!1291934))

(declare-fun d!1291936 () Bool)

(declare-fun get!15939 (Option!10508) List!49171)

(assert (=> d!1291936 (= (apply!11389 lm!1707 hash!377) (get!15939 (getValueByKey!494 (toList!3057 lm!1707) hash!377)))))

(declare-fun bs!636858 () Bool)

(assert (= bs!636858 d!1291936))

(assert (=> bs!636858 m!4987899))

(assert (=> bs!636858 m!4987899))

(declare-fun m!4987913 () Bool)

(assert (=> bs!636858 m!4987913))

(assert (=> b!4365260 d!1291936))

(assert (=> b!4365259 d!1291872))

(declare-fun d!1291938 () Bool)

(declare-fun head!9106 (List!49172) tuple2!48520)

(assert (=> d!1291938 (= (head!9104 lm!1707) (head!9106 (toList!3057 lm!1707)))))

(declare-fun bs!636859 () Bool)

(assert (= bs!636859 d!1291938))

(declare-fun m!4987915 () Bool)

(assert (=> bs!636859 m!4987915))

(assert (=> b!4365270 d!1291938))

(declare-fun d!1291940 () Bool)

(declare-fun hash!1681 (Hashable!4929 K!10410) (_ BitVec 64))

(assert (=> d!1291940 (= (hash!1675 hashF!1247 key!3918) (hash!1681 hashF!1247 key!3918))))

(declare-fun bs!636860 () Bool)

(assert (= bs!636860 d!1291940))

(declare-fun m!4987917 () Bool)

(assert (=> bs!636860 m!4987917))

(assert (=> b!4365269 d!1291940))

(declare-fun d!1291942 () Bool)

(declare-fun res!1795718 () Bool)

(declare-fun e!2716903 () Bool)

(assert (=> d!1291942 (=> res!1795718 e!2716903)))

(assert (=> d!1291942 (= res!1795718 (and ((_ is Cons!49047) (_2!27554 (h!54619 (toList!3057 lm!1707)))) (= (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))) key!3918)))))

(assert (=> d!1291942 (= (containsKey!770 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918) e!2716903)))

(declare-fun b!4365462 () Bool)

(declare-fun e!2716904 () Bool)

(assert (=> b!4365462 (= e!2716903 e!2716904)))

(declare-fun res!1795719 () Bool)

(assert (=> b!4365462 (=> (not res!1795719) (not e!2716904))))

(assert (=> b!4365462 (= res!1795719 ((_ is Cons!49047) (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(declare-fun b!4365463 () Bool)

(assert (=> b!4365463 (= e!2716904 (containsKey!770 (t!356091 (_2!27554 (h!54619 (toList!3057 lm!1707)))) key!3918))))

(assert (= (and d!1291942 (not res!1795718)) b!4365462))

(assert (= (and b!4365462 res!1795719) b!4365463))

(declare-fun m!4987919 () Bool)

(assert (=> b!4365463 m!4987919))

(assert (=> b!4365263 d!1291942))

(declare-fun bs!636912 () Bool)

(declare-fun b!4365545 () Bool)

(assert (= bs!636912 (and b!4365545 d!1291908)))

(declare-fun lambda!142655 () Int)

(assert (=> bs!636912 (not (= lambda!142655 lambda!142578))))

(assert (=> b!4365545 true))

(declare-fun bs!636913 () Bool)

(declare-fun b!4365547 () Bool)

(assert (= bs!636913 (and b!4365547 d!1291908)))

(declare-fun lambda!142656 () Int)

(assert (=> bs!636913 (not (= lambda!142656 lambda!142578))))

(declare-fun bs!636914 () Bool)

(assert (= bs!636914 (and b!4365547 b!4365545)))

(assert (=> bs!636914 (= lambda!142656 lambda!142655)))

(assert (=> b!4365547 true))

(declare-fun lambda!142657 () Int)

(assert (=> bs!636913 (not (= lambda!142657 lambda!142578))))

(declare-fun lt!1578465 () ListMap!2301)

(assert (=> bs!636914 (= (= lt!1578465 lt!1578146) (= lambda!142657 lambda!142655))))

(assert (=> b!4365547 (= (= lt!1578465 lt!1578146) (= lambda!142657 lambda!142656))))

(assert (=> b!4365547 true))

(declare-fun bs!636915 () Bool)

(declare-fun d!1291944 () Bool)

(assert (= bs!636915 (and d!1291944 d!1291908)))

(declare-fun lambda!142658 () Int)

(assert (=> bs!636915 (not (= lambda!142658 lambda!142578))))

(declare-fun bs!636916 () Bool)

(assert (= bs!636916 (and d!1291944 b!4365545)))

(declare-fun lt!1578448 () ListMap!2301)

(assert (=> bs!636916 (= (= lt!1578448 lt!1578146) (= lambda!142658 lambda!142655))))

(declare-fun bs!636917 () Bool)

(assert (= bs!636917 (and d!1291944 b!4365547)))

(assert (=> bs!636917 (= (= lt!1578448 lt!1578146) (= lambda!142658 lambda!142656))))

(assert (=> bs!636917 (= (= lt!1578448 lt!1578465) (= lambda!142658 lambda!142657))))

(assert (=> d!1291944 true))

(declare-fun b!4365544 () Bool)

(declare-fun res!1795759 () Bool)

(declare-fun e!2716955 () Bool)

(assert (=> b!4365544 (=> (not res!1795759) (not e!2716955))))

(assert (=> b!4365544 (= res!1795759 (forall!9196 (toList!3058 lt!1578146) lambda!142658))))

(declare-fun e!2716956 () ListMap!2301)

(assert (=> b!4365545 (= e!2716956 lt!1578146)))

(declare-fun lt!1578453 () Unit!73003)

(declare-fun call!303471 () Unit!73003)

(assert (=> b!4365545 (= lt!1578453 call!303471)))

(declare-fun call!303470 () Bool)

(assert (=> b!4365545 call!303470))

(declare-fun lt!1578456 () Unit!73003)

(assert (=> b!4365545 (= lt!1578456 lt!1578453)))

(declare-fun call!303472 () Bool)

(assert (=> b!4365545 call!303472))

(declare-fun lt!1578450 () Unit!73003)

(declare-fun Unit!73033 () Unit!73003)

(assert (=> b!4365545 (= lt!1578450 Unit!73033)))

(declare-fun b!4365546 () Bool)

(assert (=> b!4365546 (= e!2716955 (invariantList!698 (toList!3058 lt!1578448)))))

(assert (=> b!4365547 (= e!2716956 lt!1578465)))

(declare-fun lt!1578449 () ListMap!2301)

(assert (=> b!4365547 (= lt!1578449 (+!723 lt!1578146 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(assert (=> b!4365547 (= lt!1578465 (addToMapMapFromBucket!225 (t!356091 (_2!27554 (h!54619 (toList!3057 lm!1707)))) (+!723 lt!1578146 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))))

(declare-fun lt!1578452 () Unit!73003)

(assert (=> b!4365547 (= lt!1578452 call!303471)))

(assert (=> b!4365547 (forall!9196 (toList!3058 lt!1578146) lambda!142656)))

(declare-fun lt!1578446 () Unit!73003)

(assert (=> b!4365547 (= lt!1578446 lt!1578452)))

(assert (=> b!4365547 (forall!9196 (toList!3058 lt!1578449) lambda!142657)))

(declare-fun lt!1578460 () Unit!73003)

(declare-fun Unit!73035 () Unit!73003)

(assert (=> b!4365547 (= lt!1578460 Unit!73035)))

(assert (=> b!4365547 call!303470))

(declare-fun lt!1578451 () Unit!73003)

(declare-fun Unit!73036 () Unit!73003)

(assert (=> b!4365547 (= lt!1578451 Unit!73036)))

(declare-fun lt!1578464 () Unit!73003)

(declare-fun Unit!73037 () Unit!73003)

(assert (=> b!4365547 (= lt!1578464 Unit!73037)))

(declare-fun lt!1578457 () Unit!73003)

(declare-fun forallContained!1837 (List!49171 Int tuple2!48518) Unit!73003)

(assert (=> b!4365547 (= lt!1578457 (forallContained!1837 (toList!3058 lt!1578449) lambda!142657 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(assert (=> b!4365547 (contains!11321 lt!1578449 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun lt!1578462 () Unit!73003)

(declare-fun Unit!73038 () Unit!73003)

(assert (=> b!4365547 (= lt!1578462 Unit!73038)))

(assert (=> b!4365547 (contains!11321 lt!1578465 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun lt!1578455 () Unit!73003)

(declare-fun Unit!73039 () Unit!73003)

(assert (=> b!4365547 (= lt!1578455 Unit!73039)))

(assert (=> b!4365547 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142657)))

(declare-fun lt!1578454 () Unit!73003)

(declare-fun Unit!73040 () Unit!73003)

(assert (=> b!4365547 (= lt!1578454 Unit!73040)))

(assert (=> b!4365547 (forall!9196 (toList!3058 lt!1578449) lambda!142657)))

(declare-fun lt!1578463 () Unit!73003)

(declare-fun Unit!73041 () Unit!73003)

(assert (=> b!4365547 (= lt!1578463 Unit!73041)))

(declare-fun lt!1578461 () Unit!73003)

(declare-fun Unit!73042 () Unit!73003)

(assert (=> b!4365547 (= lt!1578461 Unit!73042)))

(declare-fun lt!1578459 () Unit!73003)

(declare-fun addForallContainsKeyThenBeforeAdding!81 (ListMap!2301 ListMap!2301 K!10410 V!10656) Unit!73003)

(assert (=> b!4365547 (= lt!1578459 (addForallContainsKeyThenBeforeAdding!81 lt!1578146 lt!1578465 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))) (_2!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))))

(assert (=> b!4365547 (forall!9196 (toList!3058 lt!1578146) lambda!142657)))

(declare-fun lt!1578466 () Unit!73003)

(assert (=> b!4365547 (= lt!1578466 lt!1578459)))

(assert (=> b!4365547 call!303472))

(declare-fun lt!1578447 () Unit!73003)

(declare-fun Unit!73043 () Unit!73003)

(assert (=> b!4365547 (= lt!1578447 Unit!73043)))

(declare-fun res!1795757 () Bool)

(assert (=> b!4365547 (= res!1795757 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142657))))

(declare-fun e!2716957 () Bool)

(assert (=> b!4365547 (=> (not res!1795757) (not e!2716957))))

(assert (=> b!4365547 e!2716957))

(declare-fun lt!1578458 () Unit!73003)

(declare-fun Unit!73044 () Unit!73003)

(assert (=> b!4365547 (= lt!1578458 Unit!73044)))

(declare-fun bm!303465 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!81 (ListMap!2301) Unit!73003)

(assert (=> bm!303465 (= call!303471 (lemmaContainsAllItsOwnKeys!81 lt!1578146))))

(assert (=> d!1291944 e!2716955))

(declare-fun res!1795758 () Bool)

(assert (=> d!1291944 (=> (not res!1795758) (not e!2716955))))

(assert (=> d!1291944 (= res!1795758 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142658))))

(assert (=> d!1291944 (= lt!1578448 e!2716956)))

(declare-fun c!742217 () Bool)

(assert (=> d!1291944 (= c!742217 ((_ is Nil!49047) (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(assert (=> d!1291944 (noDuplicateKeys!537 (_2!27554 (h!54619 (toList!3057 lm!1707))))))

(assert (=> d!1291944 (= (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578146) lt!1578448)))

(declare-fun bm!303466 () Bool)

(assert (=> bm!303466 (= call!303470 (forall!9196 (ite c!742217 (toList!3058 lt!1578146) (t!356091 (_2!27554 (h!54619 (toList!3057 lm!1707))))) (ite c!742217 lambda!142655 lambda!142657)))))

(declare-fun bm!303467 () Bool)

(assert (=> bm!303467 (= call!303472 (forall!9196 (toList!3058 lt!1578146) (ite c!742217 lambda!142655 lambda!142657)))))

(declare-fun b!4365548 () Bool)

(assert (=> b!4365548 (= e!2716957 (forall!9196 (toList!3058 lt!1578146) lambda!142657))))

(assert (= (and d!1291944 c!742217) b!4365545))

(assert (= (and d!1291944 (not c!742217)) b!4365547))

(assert (= (and b!4365547 res!1795757) b!4365548))

(assert (= (or b!4365545 b!4365547) bm!303465))

(assert (= (or b!4365545 b!4365547) bm!303467))

(assert (= (or b!4365545 b!4365547) bm!303466))

(assert (= (and d!1291944 res!1795758) b!4365544))

(assert (= (and b!4365544 res!1795759) b!4365546))

(declare-fun m!4988109 () Bool)

(assert (=> bm!303465 m!4988109))

(declare-fun m!4988111 () Bool)

(assert (=> bm!303467 m!4988111))

(declare-fun m!4988113 () Bool)

(assert (=> b!4365548 m!4988113))

(declare-fun m!4988115 () Bool)

(assert (=> d!1291944 m!4988115))

(declare-fun m!4988117 () Bool)

(assert (=> d!1291944 m!4988117))

(declare-fun m!4988119 () Bool)

(assert (=> bm!303466 m!4988119))

(declare-fun m!4988121 () Bool)

(assert (=> b!4365547 m!4988121))

(declare-fun m!4988123 () Bool)

(assert (=> b!4365547 m!4988123))

(declare-fun m!4988125 () Bool)

(assert (=> b!4365547 m!4988125))

(declare-fun m!4988127 () Bool)

(assert (=> b!4365547 m!4988127))

(declare-fun m!4988129 () Bool)

(assert (=> b!4365547 m!4988129))

(declare-fun m!4988131 () Bool)

(assert (=> b!4365547 m!4988131))

(declare-fun m!4988133 () Bool)

(assert (=> b!4365547 m!4988133))

(assert (=> b!4365547 m!4988127))

(assert (=> b!4365547 m!4988131))

(declare-fun m!4988135 () Bool)

(assert (=> b!4365547 m!4988135))

(assert (=> b!4365547 m!4988125))

(declare-fun m!4988137 () Bool)

(assert (=> b!4365547 m!4988137))

(assert (=> b!4365547 m!4988113))

(declare-fun m!4988139 () Bool)

(assert (=> b!4365544 m!4988139))

(declare-fun m!4988141 () Bool)

(assert (=> b!4365546 m!4988141))

(assert (=> b!4365262 d!1291944))

(declare-fun bs!636918 () Bool)

(declare-fun b!4365552 () Bool)

(assert (= bs!636918 (and b!4365552 d!1291944)))

(declare-fun lambda!142659 () Int)

(assert (=> bs!636918 (= (= lt!1578131 lt!1578448) (= lambda!142659 lambda!142658))))

(declare-fun bs!636919 () Bool)

(assert (= bs!636919 (and b!4365552 b!4365545)))

(assert (=> bs!636919 (= (= lt!1578131 lt!1578146) (= lambda!142659 lambda!142655))))

(declare-fun bs!636920 () Bool)

(assert (= bs!636920 (and b!4365552 d!1291908)))

(assert (=> bs!636920 (not (= lambda!142659 lambda!142578))))

(declare-fun bs!636921 () Bool)

(assert (= bs!636921 (and b!4365552 b!4365547)))

(assert (=> bs!636921 (= (= lt!1578131 lt!1578146) (= lambda!142659 lambda!142656))))

(assert (=> bs!636921 (= (= lt!1578131 lt!1578465) (= lambda!142659 lambda!142657))))

(assert (=> b!4365552 true))

(declare-fun bs!636922 () Bool)

(declare-fun b!4365554 () Bool)

(assert (= bs!636922 (and b!4365554 d!1291944)))

(declare-fun lambda!142660 () Int)

(assert (=> bs!636922 (= (= lt!1578131 lt!1578448) (= lambda!142660 lambda!142658))))

(declare-fun bs!636923 () Bool)

(assert (= bs!636923 (and b!4365554 b!4365552)))

(assert (=> bs!636923 (= lambda!142660 lambda!142659)))

(declare-fun bs!636924 () Bool)

(assert (= bs!636924 (and b!4365554 b!4365545)))

(assert (=> bs!636924 (= (= lt!1578131 lt!1578146) (= lambda!142660 lambda!142655))))

(declare-fun bs!636925 () Bool)

(assert (= bs!636925 (and b!4365554 d!1291908)))

(assert (=> bs!636925 (not (= lambda!142660 lambda!142578))))

(declare-fun bs!636926 () Bool)

(assert (= bs!636926 (and b!4365554 b!4365547)))

(assert (=> bs!636926 (= (= lt!1578131 lt!1578146) (= lambda!142660 lambda!142656))))

(assert (=> bs!636926 (= (= lt!1578131 lt!1578465) (= lambda!142660 lambda!142657))))

(assert (=> b!4365554 true))

(declare-fun lambda!142661 () Int)

(declare-fun lt!1578486 () ListMap!2301)

(assert (=> bs!636922 (= (= lt!1578486 lt!1578448) (= lambda!142661 lambda!142658))))

(assert (=> bs!636923 (= (= lt!1578486 lt!1578131) (= lambda!142661 lambda!142659))))

(assert (=> bs!636924 (= (= lt!1578486 lt!1578146) (= lambda!142661 lambda!142655))))

(assert (=> b!4365554 (= (= lt!1578486 lt!1578131) (= lambda!142661 lambda!142660))))

(assert (=> bs!636925 (not (= lambda!142661 lambda!142578))))

(assert (=> bs!636926 (= (= lt!1578486 lt!1578146) (= lambda!142661 lambda!142656))))

(assert (=> bs!636926 (= (= lt!1578486 lt!1578465) (= lambda!142661 lambda!142657))))

(assert (=> b!4365554 true))

(declare-fun bs!636927 () Bool)

(declare-fun d!1291982 () Bool)

(assert (= bs!636927 (and d!1291982 d!1291944)))

(declare-fun lambda!142662 () Int)

(declare-fun lt!1578469 () ListMap!2301)

(assert (=> bs!636927 (= (= lt!1578469 lt!1578448) (= lambda!142662 lambda!142658))))

(declare-fun bs!636928 () Bool)

(assert (= bs!636928 (and d!1291982 b!4365554)))

(assert (=> bs!636928 (= (= lt!1578469 lt!1578486) (= lambda!142662 lambda!142661))))

(declare-fun bs!636929 () Bool)

(assert (= bs!636929 (and d!1291982 b!4365552)))

(assert (=> bs!636929 (= (= lt!1578469 lt!1578131) (= lambda!142662 lambda!142659))))

(declare-fun bs!636930 () Bool)

(assert (= bs!636930 (and d!1291982 b!4365545)))

(assert (=> bs!636930 (= (= lt!1578469 lt!1578146) (= lambda!142662 lambda!142655))))

(assert (=> bs!636928 (= (= lt!1578469 lt!1578131) (= lambda!142662 lambda!142660))))

(declare-fun bs!636931 () Bool)

(assert (= bs!636931 (and d!1291982 d!1291908)))

(assert (=> bs!636931 (not (= lambda!142662 lambda!142578))))

(declare-fun bs!636932 () Bool)

(assert (= bs!636932 (and d!1291982 b!4365547)))

(assert (=> bs!636932 (= (= lt!1578469 lt!1578146) (= lambda!142662 lambda!142656))))

(assert (=> bs!636932 (= (= lt!1578469 lt!1578465) (= lambda!142662 lambda!142657))))

(assert (=> d!1291982 true))

(declare-fun b!4365551 () Bool)

(declare-fun res!1795762 () Bool)

(declare-fun e!2716958 () Bool)

(assert (=> b!4365551 (=> (not res!1795762) (not e!2716958))))

(assert (=> b!4365551 (= res!1795762 (forall!9196 (toList!3058 lt!1578131) lambda!142662))))

(declare-fun e!2716959 () ListMap!2301)

(assert (=> b!4365552 (= e!2716959 lt!1578131)))

(declare-fun lt!1578474 () Unit!73003)

(declare-fun call!303474 () Unit!73003)

(assert (=> b!4365552 (= lt!1578474 call!303474)))

(declare-fun call!303473 () Bool)

(assert (=> b!4365552 call!303473))

(declare-fun lt!1578477 () Unit!73003)

(assert (=> b!4365552 (= lt!1578477 lt!1578474)))

(declare-fun call!303475 () Bool)

(assert (=> b!4365552 call!303475))

(declare-fun lt!1578471 () Unit!73003)

(declare-fun Unit!73047 () Unit!73003)

(assert (=> b!4365552 (= lt!1578471 Unit!73047)))

(declare-fun b!4365553 () Bool)

(assert (=> b!4365553 (= e!2716958 (invariantList!698 (toList!3058 lt!1578469)))))

(assert (=> b!4365554 (= e!2716959 lt!1578486)))

(declare-fun lt!1578470 () ListMap!2301)

(assert (=> b!4365554 (= lt!1578470 (+!723 lt!1578131 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(assert (=> b!4365554 (= lt!1578486 (addToMapMapFromBucket!225 (t!356091 (_2!27554 (h!54619 (toList!3057 lm!1707)))) (+!723 lt!1578131 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))))

(declare-fun lt!1578473 () Unit!73003)

(assert (=> b!4365554 (= lt!1578473 call!303474)))

(assert (=> b!4365554 (forall!9196 (toList!3058 lt!1578131) lambda!142660)))

(declare-fun lt!1578467 () Unit!73003)

(assert (=> b!4365554 (= lt!1578467 lt!1578473)))

(assert (=> b!4365554 (forall!9196 (toList!3058 lt!1578470) lambda!142661)))

(declare-fun lt!1578481 () Unit!73003)

(declare-fun Unit!73048 () Unit!73003)

(assert (=> b!4365554 (= lt!1578481 Unit!73048)))

(assert (=> b!4365554 call!303473))

(declare-fun lt!1578472 () Unit!73003)

(declare-fun Unit!73049 () Unit!73003)

(assert (=> b!4365554 (= lt!1578472 Unit!73049)))

(declare-fun lt!1578485 () Unit!73003)

(declare-fun Unit!73050 () Unit!73003)

(assert (=> b!4365554 (= lt!1578485 Unit!73050)))

(declare-fun lt!1578478 () Unit!73003)

(assert (=> b!4365554 (= lt!1578478 (forallContained!1837 (toList!3058 lt!1578470) lambda!142661 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(assert (=> b!4365554 (contains!11321 lt!1578470 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun lt!1578483 () Unit!73003)

(declare-fun Unit!73051 () Unit!73003)

(assert (=> b!4365554 (= lt!1578483 Unit!73051)))

(assert (=> b!4365554 (contains!11321 lt!1578486 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun lt!1578476 () Unit!73003)

(declare-fun Unit!73052 () Unit!73003)

(assert (=> b!4365554 (= lt!1578476 Unit!73052)))

(assert (=> b!4365554 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142661)))

(declare-fun lt!1578475 () Unit!73003)

(declare-fun Unit!73053 () Unit!73003)

(assert (=> b!4365554 (= lt!1578475 Unit!73053)))

(assert (=> b!4365554 (forall!9196 (toList!3058 lt!1578470) lambda!142661)))

(declare-fun lt!1578484 () Unit!73003)

(declare-fun Unit!73054 () Unit!73003)

(assert (=> b!4365554 (= lt!1578484 Unit!73054)))

(declare-fun lt!1578482 () Unit!73003)

(declare-fun Unit!73055 () Unit!73003)

(assert (=> b!4365554 (= lt!1578482 Unit!73055)))

(declare-fun lt!1578480 () Unit!73003)

(assert (=> b!4365554 (= lt!1578480 (addForallContainsKeyThenBeforeAdding!81 lt!1578131 lt!1578486 (_1!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707))))) (_2!27553 (h!54618 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))))

(assert (=> b!4365554 (forall!9196 (toList!3058 lt!1578131) lambda!142661)))

(declare-fun lt!1578487 () Unit!73003)

(assert (=> b!4365554 (= lt!1578487 lt!1578480)))

(assert (=> b!4365554 call!303475))

(declare-fun lt!1578468 () Unit!73003)

(declare-fun Unit!73056 () Unit!73003)

(assert (=> b!4365554 (= lt!1578468 Unit!73056)))

(declare-fun res!1795760 () Bool)

(assert (=> b!4365554 (= res!1795760 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142661))))

(declare-fun e!2716960 () Bool)

(assert (=> b!4365554 (=> (not res!1795760) (not e!2716960))))

(assert (=> b!4365554 e!2716960))

(declare-fun lt!1578479 () Unit!73003)

(declare-fun Unit!73057 () Unit!73003)

(assert (=> b!4365554 (= lt!1578479 Unit!73057)))

(declare-fun bm!303468 () Bool)

(assert (=> bm!303468 (= call!303474 (lemmaContainsAllItsOwnKeys!81 lt!1578131))))

(assert (=> d!1291982 e!2716958))

(declare-fun res!1795761 () Bool)

(assert (=> d!1291982 (=> (not res!1795761) (not e!2716958))))

(assert (=> d!1291982 (= res!1795761 (forall!9196 (_2!27554 (h!54619 (toList!3057 lm!1707))) lambda!142662))))

(assert (=> d!1291982 (= lt!1578469 e!2716959)))

(declare-fun c!742218 () Bool)

(assert (=> d!1291982 (= c!742218 ((_ is Nil!49047) (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(assert (=> d!1291982 (noDuplicateKeys!537 (_2!27554 (h!54619 (toList!3057 lm!1707))))))

(assert (=> d!1291982 (= (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578131) lt!1578469)))

(declare-fun bm!303469 () Bool)

(assert (=> bm!303469 (= call!303473 (forall!9196 (ite c!742218 (toList!3058 lt!1578131) (t!356091 (_2!27554 (h!54619 (toList!3057 lm!1707))))) (ite c!742218 lambda!142659 lambda!142661)))))

(declare-fun bm!303470 () Bool)

(assert (=> bm!303470 (= call!303475 (forall!9196 (toList!3058 lt!1578131) (ite c!742218 lambda!142659 lambda!142661)))))

(declare-fun b!4365555 () Bool)

(assert (=> b!4365555 (= e!2716960 (forall!9196 (toList!3058 lt!1578131) lambda!142661))))

(assert (= (and d!1291982 c!742218) b!4365552))

(assert (= (and d!1291982 (not c!742218)) b!4365554))

(assert (= (and b!4365554 res!1795760) b!4365555))

(assert (= (or b!4365552 b!4365554) bm!303468))

(assert (= (or b!4365552 b!4365554) bm!303470))

(assert (= (or b!4365552 b!4365554) bm!303469))

(assert (= (and d!1291982 res!1795761) b!4365551))

(assert (= (and b!4365551 res!1795762) b!4365553))

(declare-fun m!4988143 () Bool)

(assert (=> bm!303468 m!4988143))

(declare-fun m!4988145 () Bool)

(assert (=> bm!303470 m!4988145))

(declare-fun m!4988147 () Bool)

(assert (=> b!4365555 m!4988147))

(declare-fun m!4988149 () Bool)

(assert (=> d!1291982 m!4988149))

(assert (=> d!1291982 m!4988117))

(declare-fun m!4988151 () Bool)

(assert (=> bm!303469 m!4988151))

(declare-fun m!4988153 () Bool)

(assert (=> b!4365554 m!4988153))

(declare-fun m!4988155 () Bool)

(assert (=> b!4365554 m!4988155))

(declare-fun m!4988157 () Bool)

(assert (=> b!4365554 m!4988157))

(declare-fun m!4988159 () Bool)

(assert (=> b!4365554 m!4988159))

(declare-fun m!4988161 () Bool)

(assert (=> b!4365554 m!4988161))

(declare-fun m!4988163 () Bool)

(assert (=> b!4365554 m!4988163))

(declare-fun m!4988165 () Bool)

(assert (=> b!4365554 m!4988165))

(assert (=> b!4365554 m!4988159))

(assert (=> b!4365554 m!4988163))

(declare-fun m!4988167 () Bool)

(assert (=> b!4365554 m!4988167))

(assert (=> b!4365554 m!4988157))

(declare-fun m!4988169 () Bool)

(assert (=> b!4365554 m!4988169))

(assert (=> b!4365554 m!4988147))

(declare-fun m!4988171 () Bool)

(assert (=> b!4365551 m!4988171))

(declare-fun m!4988173 () Bool)

(assert (=> b!4365553 m!4988173))

(assert (=> b!4365262 d!1291982))

(declare-fun d!1291984 () Bool)

(assert (=> d!1291984 (= (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707)))) (get!15939 (getValueByKey!494 (toList!3057 lm!1707) (_1!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun bs!636933 () Bool)

(assert (= bs!636933 d!1291984))

(declare-fun m!4988175 () Bool)

(assert (=> bs!636933 m!4988175))

(assert (=> bs!636933 m!4988175))

(declare-fun m!4988177 () Bool)

(assert (=> bs!636933 m!4988177))

(assert (=> b!4365262 d!1291984))

(declare-fun d!1291986 () Bool)

(declare-fun res!1795763 () Bool)

(declare-fun e!2716961 () Bool)

(assert (=> d!1291986 (=> res!1795763 e!2716961)))

(assert (=> d!1291986 (= res!1795763 (and ((_ is Cons!49047) (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707))))) (= (_1!27553 (h!54618 (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707)))))) key!3918)))))

(assert (=> d!1291986 (= (containsKey!770 (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707)))) key!3918) e!2716961)))

(declare-fun b!4365556 () Bool)

(declare-fun e!2716962 () Bool)

(assert (=> b!4365556 (= e!2716961 e!2716962)))

(declare-fun res!1795764 () Bool)

(assert (=> b!4365556 (=> (not res!1795764) (not e!2716962))))

(assert (=> b!4365556 (= res!1795764 ((_ is Cons!49047) (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707))))))))

(declare-fun b!4365557 () Bool)

(assert (=> b!4365557 (= e!2716962 (containsKey!770 (t!356091 (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707))))) key!3918))))

(assert (= (and d!1291986 (not res!1795763)) b!4365556))

(assert (= (and b!4365556 res!1795764) b!4365557))

(declare-fun m!4988179 () Bool)

(assert (=> b!4365557 m!4988179))

(assert (=> b!4365262 d!1291986))

(declare-fun d!1291988 () Bool)

(declare-fun e!2716963 () Bool)

(assert (=> d!1291988 e!2716963))

(declare-fun res!1795765 () Bool)

(assert (=> d!1291988 (=> (not res!1795765) (not e!2716963))))

(declare-fun lt!1578488 () ListLongMap!1707)

(assert (=> d!1291988 (= res!1795765 (contains!11320 lt!1578488 (_1!27554 lt!1578147)))))

(declare-fun lt!1578491 () List!49172)

(assert (=> d!1291988 (= lt!1578488 (ListLongMap!1708 lt!1578491))))

(declare-fun lt!1578490 () Unit!73003)

(declare-fun lt!1578489 () Unit!73003)

(assert (=> d!1291988 (= lt!1578490 lt!1578489)))

(assert (=> d!1291988 (= (getValueByKey!494 lt!1578491 (_1!27554 lt!1578147)) (Some!10507 (_2!27554 lt!1578147)))))

(assert (=> d!1291988 (= lt!1578489 (lemmaContainsTupThenGetReturnValue!268 lt!1578491 (_1!27554 lt!1578147) (_2!27554 lt!1578147)))))

(assert (=> d!1291988 (= lt!1578491 (insertStrictlySorted!155 (toList!3057 lt!1578134) (_1!27554 lt!1578147) (_2!27554 lt!1578147)))))

(assert (=> d!1291988 (= (+!724 lt!1578134 lt!1578147) lt!1578488)))

(declare-fun b!4365558 () Bool)

(declare-fun res!1795766 () Bool)

(assert (=> b!4365558 (=> (not res!1795766) (not e!2716963))))

(assert (=> b!4365558 (= res!1795766 (= (getValueByKey!494 (toList!3057 lt!1578488) (_1!27554 lt!1578147)) (Some!10507 (_2!27554 lt!1578147))))))

(declare-fun b!4365559 () Bool)

(assert (=> b!4365559 (= e!2716963 (contains!11319 (toList!3057 lt!1578488) lt!1578147))))

(assert (= (and d!1291988 res!1795765) b!4365558))

(assert (= (and b!4365558 res!1795766) b!4365559))

(declare-fun m!4988181 () Bool)

(assert (=> d!1291988 m!4988181))

(declare-fun m!4988183 () Bool)

(assert (=> d!1291988 m!4988183))

(declare-fun m!4988185 () Bool)

(assert (=> d!1291988 m!4988185))

(declare-fun m!4988187 () Bool)

(assert (=> d!1291988 m!4988187))

(declare-fun m!4988189 () Bool)

(assert (=> b!4365558 m!4988189))

(declare-fun m!4988191 () Bool)

(assert (=> b!4365559 m!4988191))

(assert (=> b!4365262 d!1291988))

(declare-fun d!1291990 () Bool)

(declare-fun e!2716966 () Bool)

(assert (=> d!1291990 e!2716966))

(declare-fun res!1795772 () Bool)

(assert (=> d!1291990 (=> (not res!1795772) (not e!2716966))))

(declare-fun lt!1578500 () ListMap!2301)

(assert (=> d!1291990 (= res!1795772 (contains!11321 lt!1578500 (_1!27553 lt!1578143)))))

(declare-fun lt!1578502 () List!49171)

(assert (=> d!1291990 (= lt!1578500 (ListMap!2302 lt!1578502))))

(declare-fun lt!1578501 () Unit!73003)

(declare-fun lt!1578503 () Unit!73003)

(assert (=> d!1291990 (= lt!1578501 lt!1578503)))

(assert (=> d!1291990 (= (getValueByKey!495 lt!1578502 (_1!27553 lt!1578143)) (Some!10508 (_2!27553 lt!1578143)))))

(declare-fun lemmaContainsTupThenGetReturnValue!269 (List!49171 K!10410 V!10656) Unit!73003)

(assert (=> d!1291990 (= lt!1578503 (lemmaContainsTupThenGetReturnValue!269 lt!1578502 (_1!27553 lt!1578143) (_2!27553 lt!1578143)))))

(declare-fun insertNoDuplicatedKeys!122 (List!49171 K!10410 V!10656) List!49171)

(assert (=> d!1291990 (= lt!1578502 (insertNoDuplicatedKeys!122 (toList!3058 lt!1578144) (_1!27553 lt!1578143) (_2!27553 lt!1578143)))))

(assert (=> d!1291990 (= (+!723 lt!1578144 lt!1578143) lt!1578500)))

(declare-fun b!4365564 () Bool)

(declare-fun res!1795771 () Bool)

(assert (=> b!4365564 (=> (not res!1795771) (not e!2716966))))

(assert (=> b!4365564 (= res!1795771 (= (getValueByKey!495 (toList!3058 lt!1578500) (_1!27553 lt!1578143)) (Some!10508 (_2!27553 lt!1578143))))))

(declare-fun b!4365565 () Bool)

(declare-fun contains!11325 (List!49171 tuple2!48518) Bool)

(assert (=> b!4365565 (= e!2716966 (contains!11325 (toList!3058 lt!1578500) lt!1578143))))

(assert (= (and d!1291990 res!1795772) b!4365564))

(assert (= (and b!4365564 res!1795771) b!4365565))

(declare-fun m!4988193 () Bool)

(assert (=> d!1291990 m!4988193))

(declare-fun m!4988195 () Bool)

(assert (=> d!1291990 m!4988195))

(declare-fun m!4988197 () Bool)

(assert (=> d!1291990 m!4988197))

(declare-fun m!4988199 () Bool)

(assert (=> d!1291990 m!4988199))

(declare-fun m!4988201 () Bool)

(assert (=> b!4365564 m!4988201))

(declare-fun m!4988203 () Bool)

(assert (=> b!4365565 m!4988203))

(assert (=> b!4365262 d!1291990))

(declare-fun bs!636934 () Bool)

(declare-fun d!1291992 () Bool)

(assert (= bs!636934 (and d!1291992 start!423252)))

(declare-fun lambda!142665 () Int)

(assert (=> bs!636934 (= lambda!142665 lambda!142563)))

(declare-fun bs!636935 () Bool)

(assert (= bs!636935 (and d!1291992 d!1291864)))

(assert (=> bs!636935 (not (= lambda!142665 lambda!142569))))

(declare-fun bs!636936 () Bool)

(assert (= bs!636936 (and d!1291992 d!1291924)))

(assert (=> bs!636936 (= lambda!142665 lambda!142584)))

(assert (=> d!1291992 (eq!299 (extractMap!596 (toList!3057 (+!724 lt!1578134 (tuple2!48521 hash!377 newBucket!200)))) (+!723 (extractMap!596 (toList!3057 lt!1578134)) (tuple2!48519 key!3918 newValue!99)))))

(declare-fun lt!1578506 () Unit!73003)

(declare-fun choose!27118 (ListLongMap!1707 (_ BitVec 64) List!49171 K!10410 V!10656 Hashable!4929) Unit!73003)

(assert (=> d!1291992 (= lt!1578506 (choose!27118 lt!1578134 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1291992 (forall!9194 (toList!3057 lt!1578134) lambda!142665)))

(assert (=> d!1291992 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!131 lt!1578134 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1578506)))

(declare-fun bs!636937 () Bool)

(assert (= bs!636937 d!1291992))

(declare-fun m!4988205 () Bool)

(assert (=> bs!636937 m!4988205))

(declare-fun m!4988207 () Bool)

(assert (=> bs!636937 m!4988207))

(declare-fun m!4988209 () Bool)

(assert (=> bs!636937 m!4988209))

(declare-fun m!4988211 () Bool)

(assert (=> bs!636937 m!4988211))

(declare-fun m!4988213 () Bool)

(assert (=> bs!636937 m!4988213))

(declare-fun m!4988215 () Bool)

(assert (=> bs!636937 m!4988215))

(assert (=> bs!636937 m!4987689))

(assert (=> bs!636937 m!4988207))

(assert (=> bs!636937 m!4987689))

(assert (=> bs!636937 m!4988209))

(assert (=> b!4365262 d!1291992))

(declare-fun bs!636938 () Bool)

(declare-fun d!1291994 () Bool)

(assert (= bs!636938 (and d!1291994 start!423252)))

(declare-fun lambda!142668 () Int)

(assert (=> bs!636938 (= lambda!142668 lambda!142563)))

(declare-fun bs!636939 () Bool)

(assert (= bs!636939 (and d!1291994 d!1291864)))

(assert (=> bs!636939 (not (= lambda!142668 lambda!142569))))

(declare-fun bs!636940 () Bool)

(assert (= bs!636940 (and d!1291994 d!1291924)))

(assert (=> bs!636940 (= lambda!142668 lambda!142584)))

(declare-fun bs!636941 () Bool)

(assert (= bs!636941 (and d!1291994 d!1291992)))

(assert (=> bs!636941 (= lambda!142668 lambda!142665)))

(assert (=> d!1291994 (not (containsKey!770 (apply!11389 lm!1707 (_1!27554 (h!54619 (toList!3057 lm!1707)))) key!3918))))

(declare-fun lt!1578509 () Unit!73003)

(declare-fun choose!27119 (ListLongMap!1707 K!10410 (_ BitVec 64) Hashable!4929) Unit!73003)

(assert (=> d!1291994 (= lt!1578509 (choose!27119 lm!1707 key!3918 (_1!27554 (h!54619 (toList!3057 lm!1707))) hashF!1247))))

(assert (=> d!1291994 (forall!9194 (toList!3057 lm!1707) lambda!142668)))

(assert (=> d!1291994 (= (lemmaNotSameHashThenCannotContainKey!74 lm!1707 key!3918 (_1!27554 (h!54619 (toList!3057 lm!1707))) hashF!1247) lt!1578509)))

(declare-fun bs!636942 () Bool)

(assert (= bs!636942 d!1291994))

(assert (=> bs!636942 m!4987683))

(assert (=> bs!636942 m!4987683))

(assert (=> bs!636942 m!4987685))

(declare-fun m!4988217 () Bool)

(assert (=> bs!636942 m!4988217))

(declare-fun m!4988219 () Bool)

(assert (=> bs!636942 m!4988219))

(assert (=> b!4365262 d!1291994))

(declare-fun d!1291996 () Bool)

(assert (=> d!1291996 (eq!299 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) (+!723 lt!1578146 (tuple2!48519 key!3918 newValue!99))) (+!723 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578146) (tuple2!48519 key!3918 newValue!99)))))

(declare-fun lt!1578512 () Unit!73003)

(declare-fun choose!27120 (ListMap!2301 K!10410 V!10656 List!49171) Unit!73003)

(assert (=> d!1291996 (= lt!1578512 (choose!27120 lt!1578146 key!3918 newValue!99 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(assert (=> d!1291996 (not (containsKey!770 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918))))

(assert (=> d!1291996 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!108 lt!1578146 key!3918 newValue!99 (_2!27554 (h!54619 (toList!3057 lm!1707)))) lt!1578512)))

(declare-fun bs!636943 () Bool)

(assert (= bs!636943 d!1291996))

(declare-fun m!4988221 () Bool)

(assert (=> bs!636943 m!4988221))

(declare-fun m!4988223 () Bool)

(assert (=> bs!636943 m!4988223))

(assert (=> bs!636943 m!4987659))

(assert (=> bs!636943 m!4988223))

(declare-fun m!4988225 () Bool)

(assert (=> bs!636943 m!4988225))

(declare-fun m!4988227 () Bool)

(assert (=> bs!636943 m!4988227))

(assert (=> bs!636943 m!4987691))

(assert (=> bs!636943 m!4988221))

(declare-fun m!4988229 () Bool)

(assert (=> bs!636943 m!4988229))

(assert (=> bs!636943 m!4987659))

(assert (=> bs!636943 m!4988225))

(assert (=> b!4365262 d!1291996))

(declare-fun d!1291998 () Bool)

(assert (=> d!1291998 (contains!11321 lt!1578130 key!3918)))

(declare-fun lt!1578515 () Unit!73003)

(declare-fun choose!27121 (List!49171 K!10410 V!10656 ListMap!2301) Unit!73003)

(assert (=> d!1291998 (= lt!1578515 (choose!27121 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918 newValue!99 lt!1578130))))

(assert (=> d!1291998 (noDuplicateKeys!537 (_2!27554 (h!54619 (toList!3057 lm!1707))))))

(assert (=> d!1291998 (= (lemmaAddToMapContainsAndNotInListThenInAcc!70 (_2!27554 (h!54619 (toList!3057 lm!1707))) key!3918 newValue!99 lt!1578130) lt!1578515)))

(declare-fun bs!636944 () Bool)

(assert (= bs!636944 d!1291998))

(assert (=> bs!636944 m!4987663))

(declare-fun m!4988231 () Bool)

(assert (=> bs!636944 m!4988231))

(assert (=> bs!636944 m!4988117))

(assert (=> b!4365262 d!1291998))

(declare-fun d!1292000 () Bool)

(declare-fun content!7769 (List!49171) (InoxSet tuple2!48518))

(assert (=> d!1292000 (= (eq!299 lt!1578142 lt!1578131) (= (content!7769 (toList!3058 lt!1578142)) (content!7769 (toList!3058 lt!1578131))))))

(declare-fun bs!636945 () Bool)

(assert (= bs!636945 d!1292000))

(declare-fun m!4988233 () Bool)

(assert (=> bs!636945 m!4988233))

(declare-fun m!4988235 () Bool)

(assert (=> bs!636945 m!4988235))

(assert (=> b!4365262 d!1292000))

(declare-fun d!1292002 () Bool)

(assert (=> d!1292002 (= (eq!299 lt!1578144 lt!1578148) (= (content!7769 (toList!3058 lt!1578144)) (content!7769 (toList!3058 lt!1578148))))))

(declare-fun bs!636946 () Bool)

(assert (= bs!636946 d!1292002))

(declare-fun m!4988237 () Bool)

(assert (=> bs!636946 m!4988237))

(declare-fun m!4988239 () Bool)

(assert (=> bs!636946 m!4988239))

(assert (=> b!4365262 d!1292002))

(declare-fun bm!303471 () Bool)

(declare-fun call!303476 () Bool)

(declare-fun e!2716972 () List!49174)

(assert (=> bm!303471 (= call!303476 (contains!11324 e!2716972 key!3918))))

(declare-fun c!742219 () Bool)

(declare-fun c!742221 () Bool)

(assert (=> bm!303471 (= c!742219 c!742221)))

(declare-fun b!4365566 () Bool)

(declare-fun e!2716968 () Bool)

(assert (=> b!4365566 (= e!2716968 (not (contains!11324 (keys!16596 lt!1578130) key!3918)))))

(declare-fun b!4365568 () Bool)

(assert (=> b!4365568 (= e!2716972 (getKeysList!146 (toList!3058 lt!1578130)))))

(declare-fun b!4365569 () Bool)

(assert (=> b!4365569 (= e!2716972 (keys!16596 lt!1578130))))

(declare-fun b!4365570 () Bool)

(declare-fun e!2716967 () Unit!73003)

(declare-fun Unit!73058 () Unit!73003)

(assert (=> b!4365570 (= e!2716967 Unit!73058)))

(declare-fun b!4365571 () Bool)

(declare-fun e!2716970 () Unit!73003)

(declare-fun lt!1578516 () Unit!73003)

(assert (=> b!4365571 (= e!2716970 lt!1578516)))

(declare-fun lt!1578517 () Unit!73003)

(assert (=> b!4365571 (= lt!1578517 (lemmaContainsKeyImpliesGetValueByKeyDefined!405 (toList!3058 lt!1578130) key!3918))))

(assert (=> b!4365571 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578130) key!3918))))

(declare-fun lt!1578520 () Unit!73003)

(assert (=> b!4365571 (= lt!1578520 lt!1578517)))

(assert (=> b!4365571 (= lt!1578516 (lemmaInListThenGetKeysListContains!143 (toList!3058 lt!1578130) key!3918))))

(assert (=> b!4365571 call!303476))

(declare-fun b!4365572 () Bool)

(declare-fun e!2716969 () Bool)

(assert (=> b!4365572 (= e!2716969 (contains!11324 (keys!16596 lt!1578130) key!3918))))

(declare-fun d!1292004 () Bool)

(declare-fun e!2716971 () Bool)

(assert (=> d!1292004 e!2716971))

(declare-fun res!1795775 () Bool)

(assert (=> d!1292004 (=> res!1795775 e!2716971)))

(assert (=> d!1292004 (= res!1795775 e!2716968)))

(declare-fun res!1795774 () Bool)

(assert (=> d!1292004 (=> (not res!1795774) (not e!2716968))))

(declare-fun lt!1578519 () Bool)

(assert (=> d!1292004 (= res!1795774 (not lt!1578519))))

(declare-fun lt!1578521 () Bool)

(assert (=> d!1292004 (= lt!1578519 lt!1578521)))

(declare-fun lt!1578522 () Unit!73003)

(assert (=> d!1292004 (= lt!1578522 e!2716970)))

(assert (=> d!1292004 (= c!742221 lt!1578521)))

(assert (=> d!1292004 (= lt!1578521 (containsKey!773 (toList!3058 lt!1578130) key!3918))))

(assert (=> d!1292004 (= (contains!11321 lt!1578130 key!3918) lt!1578519)))

(declare-fun b!4365567 () Bool)

(assert (=> b!4365567 (= e!2716971 e!2716969)))

(declare-fun res!1795773 () Bool)

(assert (=> b!4365567 (=> (not res!1795773) (not e!2716969))))

(assert (=> b!4365567 (= res!1795773 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578130) key!3918)))))

(declare-fun b!4365573 () Bool)

(assert (=> b!4365573 (= e!2716970 e!2716967)))

(declare-fun c!742220 () Bool)

(assert (=> b!4365573 (= c!742220 call!303476)))

(declare-fun b!4365574 () Bool)

(assert (=> b!4365574 false))

(declare-fun lt!1578523 () Unit!73003)

(declare-fun lt!1578518 () Unit!73003)

(assert (=> b!4365574 (= lt!1578523 lt!1578518)))

(assert (=> b!4365574 (containsKey!773 (toList!3058 lt!1578130) key!3918)))

(assert (=> b!4365574 (= lt!1578518 (lemmaInGetKeysListThenContainsKey!144 (toList!3058 lt!1578130) key!3918))))

(declare-fun Unit!73059 () Unit!73003)

(assert (=> b!4365574 (= e!2716967 Unit!73059)))

(assert (= (and d!1292004 c!742221) b!4365571))

(assert (= (and d!1292004 (not c!742221)) b!4365573))

(assert (= (and b!4365573 c!742220) b!4365574))

(assert (= (and b!4365573 (not c!742220)) b!4365570))

(assert (= (or b!4365571 b!4365573) bm!303471))

(assert (= (and bm!303471 c!742219) b!4365568))

(assert (= (and bm!303471 (not c!742219)) b!4365569))

(assert (= (and d!1292004 res!1795774) b!4365566))

(assert (= (and d!1292004 (not res!1795775)) b!4365567))

(assert (= (and b!4365567 res!1795773) b!4365572))

(declare-fun m!4988241 () Bool)

(assert (=> b!4365572 m!4988241))

(assert (=> b!4365572 m!4988241))

(declare-fun m!4988243 () Bool)

(assert (=> b!4365572 m!4988243))

(declare-fun m!4988245 () Bool)

(assert (=> d!1292004 m!4988245))

(assert (=> b!4365566 m!4988241))

(assert (=> b!4365566 m!4988241))

(assert (=> b!4365566 m!4988243))

(declare-fun m!4988247 () Bool)

(assert (=> bm!303471 m!4988247))

(assert (=> b!4365574 m!4988245))

(declare-fun m!4988249 () Bool)

(assert (=> b!4365574 m!4988249))

(declare-fun m!4988251 () Bool)

(assert (=> b!4365567 m!4988251))

(assert (=> b!4365567 m!4988251))

(declare-fun m!4988253 () Bool)

(assert (=> b!4365567 m!4988253))

(assert (=> b!4365569 m!4988241))

(declare-fun m!4988255 () Bool)

(assert (=> b!4365571 m!4988255))

(assert (=> b!4365571 m!4988251))

(assert (=> b!4365571 m!4988251))

(assert (=> b!4365571 m!4988253))

(declare-fun m!4988257 () Bool)

(assert (=> b!4365571 m!4988257))

(declare-fun m!4988259 () Bool)

(assert (=> b!4365568 m!4988259))

(assert (=> b!4365262 d!1292004))

(declare-fun bs!636947 () Bool)

(declare-fun d!1292006 () Bool)

(assert (= bs!636947 (and d!1292006 d!1291992)))

(declare-fun lambda!142669 () Int)

(assert (=> bs!636947 (= lambda!142669 lambda!142665)))

(declare-fun bs!636948 () Bool)

(assert (= bs!636948 (and d!1292006 start!423252)))

(assert (=> bs!636948 (= lambda!142669 lambda!142563)))

(declare-fun bs!636949 () Bool)

(assert (= bs!636949 (and d!1292006 d!1291864)))

(assert (=> bs!636949 (not (= lambda!142669 lambda!142569))))

(declare-fun bs!636950 () Bool)

(assert (= bs!636950 (and d!1292006 d!1291994)))

(assert (=> bs!636950 (= lambda!142669 lambda!142668)))

(declare-fun bs!636951 () Bool)

(assert (= bs!636951 (and d!1292006 d!1291924)))

(assert (=> bs!636951 (= lambda!142669 lambda!142584)))

(declare-fun lt!1578524 () ListMap!2301)

(assert (=> d!1292006 (invariantList!698 (toList!3058 lt!1578524))))

(declare-fun e!2716973 () ListMap!2301)

(assert (=> d!1292006 (= lt!1578524 e!2716973)))

(declare-fun c!742222 () Bool)

(assert (=> d!1292006 (= c!742222 ((_ is Cons!49048) (toList!3057 (+!724 lt!1578134 lt!1578147))))))

(assert (=> d!1292006 (forall!9194 (toList!3057 (+!724 lt!1578134 lt!1578147)) lambda!142669)))

(assert (=> d!1292006 (= (extractMap!596 (toList!3057 (+!724 lt!1578134 lt!1578147))) lt!1578524)))

(declare-fun b!4365575 () Bool)

(assert (=> b!4365575 (= e!2716973 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 (+!724 lt!1578134 lt!1578147)))) (extractMap!596 (t!356092 (toList!3057 (+!724 lt!1578134 lt!1578147))))))))

(declare-fun b!4365576 () Bool)

(assert (=> b!4365576 (= e!2716973 (ListMap!2302 Nil!49047))))

(assert (= (and d!1292006 c!742222) b!4365575))

(assert (= (and d!1292006 (not c!742222)) b!4365576))

(declare-fun m!4988261 () Bool)

(assert (=> d!1292006 m!4988261))

(declare-fun m!4988263 () Bool)

(assert (=> d!1292006 m!4988263))

(declare-fun m!4988265 () Bool)

(assert (=> b!4365575 m!4988265))

(assert (=> b!4365575 m!4988265))

(declare-fun m!4988267 () Bool)

(assert (=> b!4365575 m!4988267))

(assert (=> b!4365262 d!1292006))

(declare-fun d!1292008 () Bool)

(declare-fun tail!7056 (List!49172) List!49172)

(assert (=> d!1292008 (= (tail!7054 lm!1707) (ListLongMap!1708 (tail!7056 (toList!3057 lm!1707))))))

(declare-fun bs!636952 () Bool)

(assert (= bs!636952 d!1292008))

(declare-fun m!4988269 () Bool)

(assert (=> bs!636952 m!4988269))

(assert (=> b!4365262 d!1292008))

(declare-fun bm!303472 () Bool)

(declare-fun call!303477 () Bool)

(declare-fun e!2716979 () List!49174)

(assert (=> bm!303472 (= call!303477 (contains!11324 e!2716979 key!3918))))

(declare-fun c!742223 () Bool)

(declare-fun c!742225 () Bool)

(assert (=> bm!303472 (= c!742223 c!742225)))

(declare-fun b!4365577 () Bool)

(declare-fun e!2716975 () Bool)

(assert (=> b!4365577 (= e!2716975 (not (contains!11324 (keys!16596 lt!1578146) key!3918)))))

(declare-fun b!4365579 () Bool)

(assert (=> b!4365579 (= e!2716979 (getKeysList!146 (toList!3058 lt!1578146)))))

(declare-fun b!4365580 () Bool)

(assert (=> b!4365580 (= e!2716979 (keys!16596 lt!1578146))))

(declare-fun b!4365581 () Bool)

(declare-fun e!2716974 () Unit!73003)

(declare-fun Unit!73060 () Unit!73003)

(assert (=> b!4365581 (= e!2716974 Unit!73060)))

(declare-fun b!4365582 () Bool)

(declare-fun e!2716977 () Unit!73003)

(declare-fun lt!1578525 () Unit!73003)

(assert (=> b!4365582 (= e!2716977 lt!1578525)))

(declare-fun lt!1578526 () Unit!73003)

(assert (=> b!4365582 (= lt!1578526 (lemmaContainsKeyImpliesGetValueByKeyDefined!405 (toList!3058 lt!1578146) key!3918))))

(assert (=> b!4365582 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578146) key!3918))))

(declare-fun lt!1578529 () Unit!73003)

(assert (=> b!4365582 (= lt!1578529 lt!1578526)))

(assert (=> b!4365582 (= lt!1578525 (lemmaInListThenGetKeysListContains!143 (toList!3058 lt!1578146) key!3918))))

(assert (=> b!4365582 call!303477))

(declare-fun b!4365583 () Bool)

(declare-fun e!2716976 () Bool)

(assert (=> b!4365583 (= e!2716976 (contains!11324 (keys!16596 lt!1578146) key!3918))))

(declare-fun d!1292010 () Bool)

(declare-fun e!2716978 () Bool)

(assert (=> d!1292010 e!2716978))

(declare-fun res!1795778 () Bool)

(assert (=> d!1292010 (=> res!1795778 e!2716978)))

(assert (=> d!1292010 (= res!1795778 e!2716975)))

(declare-fun res!1795777 () Bool)

(assert (=> d!1292010 (=> (not res!1795777) (not e!2716975))))

(declare-fun lt!1578528 () Bool)

(assert (=> d!1292010 (= res!1795777 (not lt!1578528))))

(declare-fun lt!1578530 () Bool)

(assert (=> d!1292010 (= lt!1578528 lt!1578530)))

(declare-fun lt!1578531 () Unit!73003)

(assert (=> d!1292010 (= lt!1578531 e!2716977)))

(assert (=> d!1292010 (= c!742225 lt!1578530)))

(assert (=> d!1292010 (= lt!1578530 (containsKey!773 (toList!3058 lt!1578146) key!3918))))

(assert (=> d!1292010 (= (contains!11321 lt!1578146 key!3918) lt!1578528)))

(declare-fun b!4365578 () Bool)

(assert (=> b!4365578 (= e!2716978 e!2716976)))

(declare-fun res!1795776 () Bool)

(assert (=> b!4365578 (=> (not res!1795776) (not e!2716976))))

(assert (=> b!4365578 (= res!1795776 (isDefined!7802 (getValueByKey!495 (toList!3058 lt!1578146) key!3918)))))

(declare-fun b!4365584 () Bool)

(assert (=> b!4365584 (= e!2716977 e!2716974)))

(declare-fun c!742224 () Bool)

(assert (=> b!4365584 (= c!742224 call!303477)))

(declare-fun b!4365585 () Bool)

(assert (=> b!4365585 false))

(declare-fun lt!1578532 () Unit!73003)

(declare-fun lt!1578527 () Unit!73003)

(assert (=> b!4365585 (= lt!1578532 lt!1578527)))

(assert (=> b!4365585 (containsKey!773 (toList!3058 lt!1578146) key!3918)))

(assert (=> b!4365585 (= lt!1578527 (lemmaInGetKeysListThenContainsKey!144 (toList!3058 lt!1578146) key!3918))))

(declare-fun Unit!73061 () Unit!73003)

(assert (=> b!4365585 (= e!2716974 Unit!73061)))

(assert (= (and d!1292010 c!742225) b!4365582))

(assert (= (and d!1292010 (not c!742225)) b!4365584))

(assert (= (and b!4365584 c!742224) b!4365585))

(assert (= (and b!4365584 (not c!742224)) b!4365581))

(assert (= (or b!4365582 b!4365584) bm!303472))

(assert (= (and bm!303472 c!742223) b!4365579))

(assert (= (and bm!303472 (not c!742223)) b!4365580))

(assert (= (and d!1292010 res!1795777) b!4365577))

(assert (= (and d!1292010 (not res!1795778)) b!4365578))

(assert (= (and b!4365578 res!1795776) b!4365583))

(declare-fun m!4988271 () Bool)

(assert (=> b!4365583 m!4988271))

(assert (=> b!4365583 m!4988271))

(declare-fun m!4988273 () Bool)

(assert (=> b!4365583 m!4988273))

(declare-fun m!4988275 () Bool)

(assert (=> d!1292010 m!4988275))

(assert (=> b!4365577 m!4988271))

(assert (=> b!4365577 m!4988271))

(assert (=> b!4365577 m!4988273))

(declare-fun m!4988277 () Bool)

(assert (=> bm!303472 m!4988277))

(assert (=> b!4365585 m!4988275))

(declare-fun m!4988279 () Bool)

(assert (=> b!4365585 m!4988279))

(declare-fun m!4988281 () Bool)

(assert (=> b!4365578 m!4988281))

(assert (=> b!4365578 m!4988281))

(declare-fun m!4988283 () Bool)

(assert (=> b!4365578 m!4988283))

(assert (=> b!4365580 m!4988271))

(declare-fun m!4988285 () Bool)

(assert (=> b!4365582 m!4988285))

(assert (=> b!4365582 m!4988281))

(assert (=> b!4365582 m!4988281))

(assert (=> b!4365582 m!4988283))

(declare-fun m!4988287 () Bool)

(assert (=> b!4365582 m!4988287))

(declare-fun m!4988289 () Bool)

(assert (=> b!4365579 m!4988289))

(assert (=> b!4365262 d!1292010))

(declare-fun d!1292012 () Bool)

(assert (=> d!1292012 (= (eq!299 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578131) (+!723 lt!1578144 lt!1578143)) (= (content!7769 (toList!3058 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lm!1707))) lt!1578131))) (content!7769 (toList!3058 (+!723 lt!1578144 lt!1578143)))))))

(declare-fun bs!636953 () Bool)

(assert (= bs!636953 d!1292012))

(declare-fun m!4988291 () Bool)

(assert (=> bs!636953 m!4988291))

(declare-fun m!4988293 () Bool)

(assert (=> bs!636953 m!4988293))

(assert (=> b!4365262 d!1292012))

(declare-fun bs!636954 () Bool)

(declare-fun d!1292014 () Bool)

(assert (= bs!636954 (and d!1292014 d!1291992)))

(declare-fun lambda!142670 () Int)

(assert (=> bs!636954 (= lambda!142670 lambda!142665)))

(declare-fun bs!636955 () Bool)

(assert (= bs!636955 (and d!1292014 start!423252)))

(assert (=> bs!636955 (= lambda!142670 lambda!142563)))

(declare-fun bs!636956 () Bool)

(assert (= bs!636956 (and d!1292014 d!1291994)))

(assert (=> bs!636956 (= lambda!142670 lambda!142668)))

(declare-fun bs!636957 () Bool)

(assert (= bs!636957 (and d!1292014 d!1291924)))

(assert (=> bs!636957 (= lambda!142670 lambda!142584)))

(declare-fun bs!636958 () Bool)

(assert (= bs!636958 (and d!1292014 d!1291864)))

(assert (=> bs!636958 (not (= lambda!142670 lambda!142569))))

(declare-fun bs!636959 () Bool)

(assert (= bs!636959 (and d!1292014 d!1292006)))

(assert (=> bs!636959 (= lambda!142670 lambda!142669)))

(declare-fun lt!1578533 () ListMap!2301)

(assert (=> d!1292014 (invariantList!698 (toList!3058 lt!1578533))))

(declare-fun e!2716980 () ListMap!2301)

(assert (=> d!1292014 (= lt!1578533 e!2716980)))

(declare-fun c!742226 () Bool)

(assert (=> d!1292014 (= c!742226 ((_ is Cons!49048) (toList!3057 lt!1578134)))))

(assert (=> d!1292014 (forall!9194 (toList!3057 lt!1578134) lambda!142670)))

(assert (=> d!1292014 (= (extractMap!596 (toList!3057 lt!1578134)) lt!1578533)))

(declare-fun b!4365586 () Bool)

(assert (=> b!4365586 (= e!2716980 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (toList!3057 lt!1578134))) (extractMap!596 (t!356092 (toList!3057 lt!1578134)))))))

(declare-fun b!4365587 () Bool)

(assert (=> b!4365587 (= e!2716980 (ListMap!2302 Nil!49047))))

(assert (= (and d!1292014 c!742226) b!4365586))

(assert (= (and d!1292014 (not c!742226)) b!4365587))

(declare-fun m!4988295 () Bool)

(assert (=> d!1292014 m!4988295))

(declare-fun m!4988297 () Bool)

(assert (=> d!1292014 m!4988297))

(declare-fun m!4988299 () Bool)

(assert (=> b!4365586 m!4988299))

(assert (=> b!4365586 m!4988299))

(declare-fun m!4988301 () Bool)

(assert (=> b!4365586 m!4988301))

(assert (=> b!4365262 d!1292014))

(declare-fun bs!636960 () Bool)

(declare-fun d!1292016 () Bool)

(assert (= bs!636960 (and d!1292016 d!1292014)))

(declare-fun lambda!142671 () Int)

(assert (=> bs!636960 (= lambda!142671 lambda!142670)))

(declare-fun bs!636961 () Bool)

(assert (= bs!636961 (and d!1292016 d!1291992)))

(assert (=> bs!636961 (= lambda!142671 lambda!142665)))

(declare-fun bs!636962 () Bool)

(assert (= bs!636962 (and d!1292016 start!423252)))

(assert (=> bs!636962 (= lambda!142671 lambda!142563)))

(declare-fun bs!636963 () Bool)

(assert (= bs!636963 (and d!1292016 d!1291994)))

(assert (=> bs!636963 (= lambda!142671 lambda!142668)))

(declare-fun bs!636964 () Bool)

(assert (= bs!636964 (and d!1292016 d!1291924)))

(assert (=> bs!636964 (= lambda!142671 lambda!142584)))

(declare-fun bs!636965 () Bool)

(assert (= bs!636965 (and d!1292016 d!1291864)))

(assert (=> bs!636965 (not (= lambda!142671 lambda!142569))))

(declare-fun bs!636966 () Bool)

(assert (= bs!636966 (and d!1292016 d!1292006)))

(assert (=> bs!636966 (= lambda!142671 lambda!142669)))

(declare-fun lt!1578534 () ListMap!2301)

(assert (=> d!1292016 (invariantList!698 (toList!3058 lt!1578534))))

(declare-fun e!2716981 () ListMap!2301)

(assert (=> d!1292016 (= lt!1578534 e!2716981)))

(declare-fun c!742227 () Bool)

(assert (=> d!1292016 (= c!742227 ((_ is Cons!49048) (t!356092 (toList!3057 lm!1707))))))

(assert (=> d!1292016 (forall!9194 (t!356092 (toList!3057 lm!1707)) lambda!142671)))

(assert (=> d!1292016 (= (extractMap!596 (t!356092 (toList!3057 lm!1707))) lt!1578534)))

(declare-fun b!4365588 () Bool)

(assert (=> b!4365588 (= e!2716981 (addToMapMapFromBucket!225 (_2!27554 (h!54619 (t!356092 (toList!3057 lm!1707)))) (extractMap!596 (t!356092 (t!356092 (toList!3057 lm!1707))))))))

(declare-fun b!4365589 () Bool)

(assert (=> b!4365589 (= e!2716981 (ListMap!2302 Nil!49047))))

(assert (= (and d!1292016 c!742227) b!4365588))

(assert (= (and d!1292016 (not c!742227)) b!4365589))

(declare-fun m!4988303 () Bool)

(assert (=> d!1292016 m!4988303))

(declare-fun m!4988305 () Bool)

(assert (=> d!1292016 m!4988305))

(declare-fun m!4988307 () Bool)

(assert (=> b!4365588 m!4988307))

(assert (=> b!4365588 m!4988307))

(declare-fun m!4988309 () Bool)

(assert (=> b!4365588 m!4988309))

(assert (=> b!4365262 d!1292016))

(declare-fun d!1292018 () Bool)

(declare-fun e!2716982 () Bool)

(assert (=> d!1292018 e!2716982))

(declare-fun res!1795780 () Bool)

(assert (=> d!1292018 (=> (not res!1795780) (not e!2716982))))

(declare-fun lt!1578535 () ListMap!2301)

(assert (=> d!1292018 (= res!1795780 (contains!11321 lt!1578535 (_1!27553 lt!1578143)))))

(declare-fun lt!1578537 () List!49171)

(assert (=> d!1292018 (= lt!1578535 (ListMap!2302 lt!1578537))))

(declare-fun lt!1578536 () Unit!73003)

(declare-fun lt!1578538 () Unit!73003)

(assert (=> d!1292018 (= lt!1578536 lt!1578538)))

(assert (=> d!1292018 (= (getValueByKey!495 lt!1578537 (_1!27553 lt!1578143)) (Some!10508 (_2!27553 lt!1578143)))))

(assert (=> d!1292018 (= lt!1578538 (lemmaContainsTupThenGetReturnValue!269 lt!1578537 (_1!27553 lt!1578143) (_2!27553 lt!1578143)))))

(assert (=> d!1292018 (= lt!1578537 (insertNoDuplicatedKeys!122 (toList!3058 lt!1578146) (_1!27553 lt!1578143) (_2!27553 lt!1578143)))))

(assert (=> d!1292018 (= (+!723 lt!1578146 lt!1578143) lt!1578535)))

(declare-fun b!4365590 () Bool)

(declare-fun res!1795779 () Bool)

(assert (=> b!4365590 (=> (not res!1795779) (not e!2716982))))

(assert (=> b!4365590 (= res!1795779 (= (getValueByKey!495 (toList!3058 lt!1578535) (_1!27553 lt!1578143)) (Some!10508 (_2!27553 lt!1578143))))))

(declare-fun b!4365591 () Bool)

(assert (=> b!4365591 (= e!2716982 (contains!11325 (toList!3058 lt!1578535) lt!1578143))))

(assert (= (and d!1292018 res!1795780) b!4365590))

(assert (= (and b!4365590 res!1795779) b!4365591))

(declare-fun m!4988311 () Bool)

(assert (=> d!1292018 m!4988311))

(declare-fun m!4988313 () Bool)

(assert (=> d!1292018 m!4988313))

(declare-fun m!4988315 () Bool)

(assert (=> d!1292018 m!4988315))

(declare-fun m!4988317 () Bool)

(assert (=> d!1292018 m!4988317))

(declare-fun m!4988319 () Bool)

(assert (=> b!4365590 m!4988319))

(declare-fun m!4988321 () Bool)

(assert (=> b!4365591 m!4988321))

(assert (=> b!4365262 d!1292018))

(declare-fun d!1292020 () Bool)

(declare-fun e!2716988 () Bool)

(assert (=> d!1292020 e!2716988))

(declare-fun res!1795783 () Bool)

(assert (=> d!1292020 (=> res!1795783 e!2716988)))

(declare-fun lt!1578549 () Bool)

(assert (=> d!1292020 (= res!1795783 (not lt!1578549))))

(declare-fun lt!1578547 () Bool)

(assert (=> d!1292020 (= lt!1578549 lt!1578547)))

(declare-fun lt!1578550 () Unit!73003)

(declare-fun e!2716987 () Unit!73003)

(assert (=> d!1292020 (= lt!1578550 e!2716987)))

(declare-fun c!742230 () Bool)

(assert (=> d!1292020 (= c!742230 lt!1578547)))

(declare-fun containsKey!774 (List!49172 (_ BitVec 64)) Bool)

(assert (=> d!1292020 (= lt!1578547 (containsKey!774 (toList!3057 lm!1707) hash!377))))

(assert (=> d!1292020 (= (contains!11320 lm!1707 hash!377) lt!1578549)))

(declare-fun b!4365598 () Bool)

(declare-fun lt!1578548 () Unit!73003)

(assert (=> b!4365598 (= e!2716987 lt!1578548)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!406 (List!49172 (_ BitVec 64)) Unit!73003)

(assert (=> b!4365598 (= lt!1578548 (lemmaContainsKeyImpliesGetValueByKeyDefined!406 (toList!3057 lm!1707) hash!377))))

(declare-fun isDefined!7803 (Option!10508) Bool)

(assert (=> b!4365598 (isDefined!7803 (getValueByKey!494 (toList!3057 lm!1707) hash!377))))

(declare-fun b!4365599 () Bool)

(declare-fun Unit!73062 () Unit!73003)

(assert (=> b!4365599 (= e!2716987 Unit!73062)))

(declare-fun b!4365600 () Bool)

(assert (=> b!4365600 (= e!2716988 (isDefined!7803 (getValueByKey!494 (toList!3057 lm!1707) hash!377)))))

(assert (= (and d!1292020 c!742230) b!4365598))

(assert (= (and d!1292020 (not c!742230)) b!4365599))

(assert (= (and d!1292020 (not res!1795783)) b!4365600))

(declare-fun m!4988323 () Bool)

(assert (=> d!1292020 m!4988323))

(declare-fun m!4988325 () Bool)

(assert (=> b!4365598 m!4988325))

(assert (=> b!4365598 m!4987899))

(assert (=> b!4365598 m!4987899))

(declare-fun m!4988327 () Bool)

(assert (=> b!4365598 m!4988327))

(assert (=> b!4365600 m!4987899))

(assert (=> b!4365600 m!4987899))

(assert (=> b!4365600 m!4988327))

(assert (=> b!4365261 d!1292020))

(declare-fun b!4365605 () Bool)

(declare-fun e!2716991 () Bool)

(declare-fun tp!1330636 () Bool)

(assert (=> b!4365605 (= e!2716991 (and tp_is_empty!25385 tp_is_empty!25387 tp!1330636))))

(assert (=> b!4365258 (= tp!1330624 e!2716991)))

(assert (= (and b!4365258 ((_ is Cons!49047) (t!356091 newBucket!200))) b!4365605))

(declare-fun b!4365610 () Bool)

(declare-fun e!2716994 () Bool)

(declare-fun tp!1330641 () Bool)

(declare-fun tp!1330642 () Bool)

(assert (=> b!4365610 (= e!2716994 (and tp!1330641 tp!1330642))))

(assert (=> b!4365268 (= tp!1330623 e!2716994)))

(assert (= (and b!4365268 ((_ is Cons!49048) (toList!3057 lm!1707))) b!4365610))

(declare-fun b_lambda!132259 () Bool)

(assert (= b_lambda!132245 (or start!423252 b_lambda!132259)))

(declare-fun bs!636967 () Bool)

(declare-fun d!1292022 () Bool)

(assert (= bs!636967 (and d!1292022 start!423252)))

(assert (=> bs!636967 (= (dynLambda!20661 lambda!142563 (h!54619 (toList!3057 lm!1707))) (noDuplicateKeys!537 (_2!27554 (h!54619 (toList!3057 lm!1707)))))))

(assert (=> bs!636967 m!4988117))

(assert (=> b!4365350 d!1292022))

(declare-fun b_lambda!132261 () Bool)

(assert (= b_lambda!132247 (or start!423252 b_lambda!132261)))

(declare-fun bs!636968 () Bool)

(declare-fun d!1292024 () Bool)

(assert (= bs!636968 (and d!1292024 start!423252)))

(assert (=> bs!636968 (= (dynLambda!20661 lambda!142563 lt!1578137) (noDuplicateKeys!537 (_2!27554 lt!1578137)))))

(declare-fun m!4988329 () Bool)

(assert (=> bs!636968 m!4988329))

(assert (=> d!1291928 d!1292024))

(declare-fun b_lambda!132263 () Bool)

(assert (= b_lambda!132243 (or start!423252 b_lambda!132263)))

(declare-fun bs!636969 () Bool)

(declare-fun d!1292026 () Bool)

(assert (= bs!636969 (and d!1292026 start!423252)))

(assert (=> bs!636969 (= (dynLambda!20661 lambda!142563 (tuple2!48521 hash!377 newBucket!200)) (noDuplicateKeys!537 (_2!27554 (tuple2!48521 hash!377 newBucket!200))))))

(declare-fun m!4988331 () Bool)

(assert (=> bs!636969 m!4988331))

(assert (=> b!4365349 d!1292026))

(declare-fun b_lambda!132265 () Bool)

(assert (= b_lambda!132239 (or start!423252 b_lambda!132265)))

(declare-fun bs!636970 () Bool)

(declare-fun d!1292028 () Bool)

(assert (= bs!636970 (and d!1292028 start!423252)))

(assert (=> bs!636970 (= (dynLambda!20661 lambda!142563 (h!54619 (toList!3057 lt!1578136))) (noDuplicateKeys!537 (_2!27554 (h!54619 (toList!3057 lt!1578136)))))))

(declare-fun m!4988333 () Bool)

(assert (=> bs!636970 m!4988333))

(assert (=> b!4365304 d!1292028))

(check-sat (not d!1291928) (not d!1291996) (not b!4365416) (not b!4365336) (not b_lambda!132263) (not b!4365551) (not b!4365558) (not b!4365569) (not bm!303468) (not d!1291912) (not d!1291894) (not b!4365571) (not b!4365421) (not bm!303469) (not d!1291936) (not b!4365600) (not b!4365579) (not bm!303471) (not bs!636969) (not d!1291864) (not bm!303444) (not d!1291992) (not d!1291930) (not b!4365555) (not b!4365588) (not d!1291878) (not b!4365564) (not b!4365586) (not b!4365433) (not b!4365557) (not d!1291982) (not b!4365577) (not b!4365351) (not d!1292006) (not bs!636967) tp_is_empty!25385 (not b!4365572) tp_is_empty!25387 (not d!1292010) (not d!1292018) (not bm!303472) (not d!1292014) (not d!1291906) (not d!1291938) (not b!4365544) (not b!4365574) (not b_lambda!132261) (not b!4365436) (not d!1291940) (not b!4365610) (not bs!636970) (not b!4365605) (not d!1291944) (not b!4365566) (not b!4365546) (not d!1292020) (not d!1291924) (not b!4365456) (not d!1291934) (not d!1292016) (not b!4365583) (not d!1292000) (not b!4365445) (not b!4365559) (not b!4365582) (not d!1291994) (not b!4365415) (not b!4365463) (not b!4365568) (not d!1292002) (not b!4365337) (not d!1291932) (not bm!303467) (not d!1291998) (not b!4365414) (not b!4365591) (not d!1292008) (not b!4365413) (not d!1292012) (not bs!636968) (not b!4365548) (not b!4365553) (not b!4365547) (not b_lambda!132259) (not d!1291988) (not b!4365585) (not d!1292004) (not b!4365439) (not bm!303465) (not bm!303470) (not b!4365567) (not b!4365578) (not b!4365565) (not b!4365598) (not bm!303466) (not d!1291984) (not d!1291990) (not d!1291908) (not b!4365419) (not b!4365418) (not b!4365580) (not b!4365432) (not b!4365426) (not b!4365575) (not b!4365305) (not b!4365590) (not b!4365554) (not b_lambda!132265))
(check-sat)
