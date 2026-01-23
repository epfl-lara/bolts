; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434342 () Bool)

(assert start!434342)

(declare-fun b!4440094 () Bool)

(declare-fun res!1838271 () Bool)

(declare-fun e!2764645 () Bool)

(assert (=> b!4440094 (=> (not res!1838271) (not e!2764645))))

(declare-datatypes ((V!11389 0))(
  ( (V!11390 (val!17185 Int)) )
))
(declare-datatypes ((K!11143 0))(
  ( (K!11144 (val!17186 Int)) )
))
(declare-datatypes ((tuple2!49690 0))(
  ( (tuple2!49691 (_1!28139 K!11143) (_2!28139 V!11389)) )
))
(declare-datatypes ((List!49898 0))(
  ( (Nil!49774) (Cons!49774 (h!55495 tuple2!49690) (t!356840 List!49898)) )
))
(declare-datatypes ((tuple2!49692 0))(
  ( (tuple2!49693 (_1!28140 (_ BitVec 64)) (_2!28140 List!49898)) )
))
(declare-datatypes ((List!49899 0))(
  ( (Nil!49775) (Cons!49775 (h!55496 tuple2!49692) (t!356841 List!49899)) )
))
(declare-datatypes ((ListLongMap!2293 0))(
  ( (ListLongMap!2294 (toList!3643 List!49899)) )
))
(declare-fun lm!1616 () ListLongMap!2293)

(declare-datatypes ((Hashable!5222 0))(
  ( (HashableExt!5221 (__x!30925 Int)) )
))
(declare-fun hashF!1220 () Hashable!5222)

(declare-fun allKeysSameHashInMap!934 (ListLongMap!2293 Hashable!5222) Bool)

(assert (=> b!4440094 (= res!1838271 (allKeysSameHashInMap!934 lm!1616 hashF!1220))))

(declare-fun b!4440095 () Bool)

(declare-fun res!1838277 () Bool)

(assert (=> b!4440095 (=> (not res!1838277) (not e!2764645))))

(declare-fun newBucket!194 () List!49898)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!788 (List!49898 (_ BitVec 64) Hashable!5222) Bool)

(assert (=> b!4440095 (= res!1838277 (allKeysSameHash!788 newBucket!194 hash!366 hashF!1220))))

(declare-fun newValue!93 () V!11389)

(declare-fun key!3717 () K!11143)

(declare-fun e!2764639 () Bool)

(declare-fun b!4440096 () Bool)

(declare-fun lt!1636246 () Bool)

(assert (=> b!4440096 (= e!2764639 (and (not lt!1636246) (= newBucket!194 (Cons!49774 (tuple2!49691 key!3717 newValue!93) Nil!49774))))))

(declare-fun b!4440097 () Bool)

(declare-fun res!1838270 () Bool)

(declare-fun e!2764644 () Bool)

(assert (=> b!4440097 (=> res!1838270 e!2764644)))

(declare-fun lambda!157121 () Int)

(declare-fun forall!9691 (List!49899 Int) Bool)

(assert (=> b!4440097 (= res!1838270 (not (forall!9691 (toList!3643 lm!1616) lambda!157121)))))

(declare-fun b!4440098 () Bool)

(declare-fun res!1838278 () Bool)

(assert (=> b!4440098 (=> (not res!1838278) (not e!2764645))))

(declare-datatypes ((ListMap!2887 0))(
  ( (ListMap!2888 (toList!3644 List!49898)) )
))
(declare-fun contains!12340 (ListMap!2887 K!11143) Bool)

(declare-fun extractMap!889 (List!49899) ListMap!2887)

(assert (=> b!4440098 (= res!1838278 (not (contains!12340 (extractMap!889 (toList!3643 lm!1616)) key!3717)))))

(declare-fun b!4440099 () Bool)

(declare-fun res!1838273 () Bool)

(declare-fun e!2764641 () Bool)

(assert (=> b!4440099 (=> (not res!1838273) (not e!2764641))))

(assert (=> b!4440099 (= res!1838273 (forall!9691 (toList!3643 lm!1616) lambda!157121))))

(declare-fun res!1838274 () Bool)

(assert (=> start!434342 (=> (not res!1838274) (not e!2764645))))

(assert (=> start!434342 (= res!1838274 (forall!9691 (toList!3643 lm!1616) lambda!157121))))

(assert (=> start!434342 e!2764645))

(declare-fun tp_is_empty!26557 () Bool)

(assert (=> start!434342 tp_is_empty!26557))

(declare-fun tp_is_empty!26559 () Bool)

(assert (=> start!434342 tp_is_empty!26559))

(declare-fun e!2764642 () Bool)

(assert (=> start!434342 e!2764642))

(declare-fun e!2764643 () Bool)

(declare-fun inv!65330 (ListLongMap!2293) Bool)

(assert (=> start!434342 (and (inv!65330 lm!1616) e!2764643)))

(assert (=> start!434342 true))

(declare-fun b!4440100 () Bool)

(declare-fun tp!1334075 () Bool)

(assert (=> b!4440100 (= e!2764643 tp!1334075)))

(declare-fun b!4440101 () Bool)

(declare-fun res!1838272 () Bool)

(assert (=> b!4440101 (=> res!1838272 e!2764644)))

(declare-fun tail!7360 (List!49899) List!49899)

(assert (=> b!4440101 (= res!1838272 (not (contains!12340 (extractMap!889 (tail!7360 (toList!3643 lm!1616))) key!3717)))))

(declare-fun b!4440102 () Bool)

(assert (=> b!4440102 (= e!2764645 e!2764641)))

(declare-fun res!1838269 () Bool)

(assert (=> b!4440102 (=> (not res!1838269) (not e!2764641))))

(assert (=> b!4440102 (= res!1838269 e!2764639)))

(declare-fun res!1838275 () Bool)

(assert (=> b!4440102 (=> res!1838275 e!2764639)))

(declare-fun e!2764640 () Bool)

(assert (=> b!4440102 (= res!1838275 e!2764640)))

(declare-fun res!1838267 () Bool)

(assert (=> b!4440102 (=> (not res!1838267) (not e!2764640))))

(assert (=> b!4440102 (= res!1838267 lt!1636246)))

(declare-fun contains!12341 (ListLongMap!2293 (_ BitVec 64)) Bool)

(assert (=> b!4440102 (= lt!1636246 (contains!12341 lm!1616 hash!366))))

(declare-fun b!4440103 () Bool)

(declare-fun res!1838276 () Bool)

(assert (=> b!4440103 (=> (not res!1838276) (not e!2764645))))

(declare-fun hash!2278 (Hashable!5222 K!11143) (_ BitVec 64))

(assert (=> b!4440103 (= res!1838276 (= (hash!2278 hashF!1220 key!3717) hash!366))))

(declare-fun b!4440104 () Bool)

(declare-fun res!1838279 () Bool)

(assert (=> b!4440104 (=> (not res!1838279) (not e!2764641))))

(declare-fun noDuplicateKeys!828 (List!49898) Bool)

(assert (=> b!4440104 (= res!1838279 (noDuplicateKeys!828 newBucket!194))))

(declare-fun b!4440105 () Bool)

(declare-fun apply!11680 (ListLongMap!2293 (_ BitVec 64)) List!49898)

(assert (=> b!4440105 (= e!2764640 (= newBucket!194 (Cons!49774 (tuple2!49691 key!3717 newValue!93) (apply!11680 lm!1616 hash!366))))))

(declare-fun b!4440106 () Bool)

(declare-fun res!1838268 () Bool)

(assert (=> b!4440106 (=> res!1838268 e!2764644)))

(assert (=> b!4440106 (= res!1838268 (or (and (is-Cons!49775 (toList!3643 lm!1616)) (= (_1!28140 (h!55496 (toList!3643 lm!1616))) hash!366)) (not (is-Cons!49775 (toList!3643 lm!1616))) (= (_1!28140 (h!55496 (toList!3643 lm!1616))) hash!366)))))

(declare-fun b!4440107 () Bool)

(assert (=> b!4440107 (= e!2764641 (not e!2764644))))

(declare-fun res!1838266 () Bool)

(assert (=> b!4440107 (=> res!1838266 e!2764644)))

(declare-fun lt!1636248 () ListLongMap!2293)

(assert (=> b!4440107 (= res!1838266 (not (forall!9691 (toList!3643 lt!1636248) lambda!157121)))))

(assert (=> b!4440107 (forall!9691 (toList!3643 lt!1636248) lambda!157121)))

(declare-fun +!1210 (ListLongMap!2293 tuple2!49692) ListLongMap!2293)

(assert (=> b!4440107 (= lt!1636248 (+!1210 lm!1616 (tuple2!49693 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83856 0))(
  ( (Unit!83857) )
))
(declare-fun lt!1636247 () Unit!83856)

(declare-fun addValidProp!466 (ListLongMap!2293 Int (_ BitVec 64) List!49898) Unit!83856)

(assert (=> b!4440107 (= lt!1636247 (addValidProp!466 lm!1616 lambda!157121 hash!366 newBucket!194))))

(declare-fun b!4440108 () Bool)

(declare-fun isEmpty!28384 (List!49899) Bool)

(assert (=> b!4440108 (= e!2764644 (not (isEmpty!28384 (toList!3643 lm!1616))))))

(declare-fun b!4440109 () Bool)

(declare-fun tp!1334076 () Bool)

(assert (=> b!4440109 (= e!2764642 (and tp_is_empty!26559 tp_is_empty!26557 tp!1334076))))

(assert (= (and start!434342 res!1838274) b!4440094))

(assert (= (and b!4440094 res!1838271) b!4440103))

(assert (= (and b!4440103 res!1838276) b!4440095))

(assert (= (and b!4440095 res!1838277) b!4440098))

(assert (= (and b!4440098 res!1838278) b!4440102))

(assert (= (and b!4440102 res!1838267) b!4440105))

(assert (= (and b!4440102 (not res!1838275)) b!4440096))

(assert (= (and b!4440102 res!1838269) b!4440104))

(assert (= (and b!4440104 res!1838279) b!4440099))

(assert (= (and b!4440099 res!1838273) b!4440107))

(assert (= (and b!4440107 (not res!1838266)) b!4440106))

(assert (= (and b!4440106 (not res!1838268)) b!4440101))

(assert (= (and b!4440101 (not res!1838272)) b!4440097))

(assert (= (and b!4440097 (not res!1838270)) b!4440108))

(assert (= (and start!434342 (is-Cons!49774 newBucket!194)) b!4440109))

(assert (= start!434342 b!4440100))

(declare-fun m!5128647 () Bool)

(assert (=> b!4440099 m!5128647))

(declare-fun m!5128649 () Bool)

(assert (=> b!4440102 m!5128649))

(declare-fun m!5128651 () Bool)

(assert (=> b!4440098 m!5128651))

(assert (=> b!4440098 m!5128651))

(declare-fun m!5128653 () Bool)

(assert (=> b!4440098 m!5128653))

(assert (=> b!4440097 m!5128647))

(declare-fun m!5128655 () Bool)

(assert (=> b!4440107 m!5128655))

(assert (=> b!4440107 m!5128655))

(declare-fun m!5128657 () Bool)

(assert (=> b!4440107 m!5128657))

(declare-fun m!5128659 () Bool)

(assert (=> b!4440107 m!5128659))

(declare-fun m!5128661 () Bool)

(assert (=> b!4440105 m!5128661))

(declare-fun m!5128663 () Bool)

(assert (=> b!4440104 m!5128663))

(declare-fun m!5128665 () Bool)

(assert (=> b!4440101 m!5128665))

(assert (=> b!4440101 m!5128665))

(declare-fun m!5128667 () Bool)

(assert (=> b!4440101 m!5128667))

(assert (=> b!4440101 m!5128667))

(declare-fun m!5128669 () Bool)

(assert (=> b!4440101 m!5128669))

(declare-fun m!5128671 () Bool)

(assert (=> b!4440094 m!5128671))

(assert (=> start!434342 m!5128647))

(declare-fun m!5128673 () Bool)

(assert (=> start!434342 m!5128673))

(declare-fun m!5128675 () Bool)

(assert (=> b!4440095 m!5128675))

(declare-fun m!5128677 () Bool)

(assert (=> b!4440108 m!5128677))

(declare-fun m!5128679 () Bool)

(assert (=> b!4440103 m!5128679))

(push 1)

(assert (not b!4440108))

(assert (not b!4440105))

(assert (not b!4440103))

(assert tp_is_empty!26557)

(assert (not b!4440098))

(assert (not b!4440101))

(assert tp_is_empty!26559)

(assert (not b!4440109))

(assert (not b!4440102))

(assert (not b!4440097))

(assert (not b!4440100))

(assert (not start!434342))

(assert (not b!4440094))

(assert (not b!4440095))

(assert (not b!4440104))

(assert (not b!4440099))

(assert (not b!4440107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1347749 () Bool)

(declare-fun e!2764671 () Bool)

(assert (=> d!1347749 e!2764671))

(declare-fun res!1838324 () Bool)

(assert (=> d!1347749 (=> res!1838324 e!2764671)))

(declare-fun lt!1636268 () Bool)

(assert (=> d!1347749 (= res!1838324 (not lt!1636268))))

(declare-fun lt!1636267 () Bool)

(assert (=> d!1347749 (= lt!1636268 lt!1636267)))

(declare-fun lt!1636266 () Unit!83856)

(declare-fun e!2764672 () Unit!83856)

(assert (=> d!1347749 (= lt!1636266 e!2764672)))

(declare-fun c!755668 () Bool)

(assert (=> d!1347749 (= c!755668 lt!1636267)))

(declare-fun containsKey!1229 (List!49899 (_ BitVec 64)) Bool)

(assert (=> d!1347749 (= lt!1636267 (containsKey!1229 (toList!3643 lm!1616) hash!366))))

(assert (=> d!1347749 (= (contains!12341 lm!1616 hash!366) lt!1636268)))

(declare-fun b!4440164 () Bool)

(declare-fun lt!1636269 () Unit!83856)

(assert (=> b!4440164 (= e!2764672 lt!1636269)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!687 (List!49899 (_ BitVec 64)) Unit!83856)

(assert (=> b!4440164 (= lt!1636269 (lemmaContainsKeyImpliesGetValueByKeyDefined!687 (toList!3643 lm!1616) hash!366))))

(declare-datatypes ((Option!10793 0))(
  ( (None!10792) (Some!10792 (v!44020 List!49898)) )
))
(declare-fun isDefined!8084 (Option!10793) Bool)

(declare-fun getValueByKey!779 (List!49899 (_ BitVec 64)) Option!10793)

(assert (=> b!4440164 (isDefined!8084 (getValueByKey!779 (toList!3643 lm!1616) hash!366))))

(declare-fun b!4440165 () Bool)

(declare-fun Unit!83860 () Unit!83856)

(assert (=> b!4440165 (= e!2764672 Unit!83860)))

(declare-fun b!4440166 () Bool)

(assert (=> b!4440166 (= e!2764671 (isDefined!8084 (getValueByKey!779 (toList!3643 lm!1616) hash!366)))))

(assert (= (and d!1347749 c!755668) b!4440164))

(assert (= (and d!1347749 (not c!755668)) b!4440165))

(assert (= (and d!1347749 (not res!1838324)) b!4440166))

(declare-fun m!5128715 () Bool)

(assert (=> d!1347749 m!5128715))

(declare-fun m!5128717 () Bool)

(assert (=> b!4440164 m!5128717))

(declare-fun m!5128719 () Bool)

(assert (=> b!4440164 m!5128719))

(assert (=> b!4440164 m!5128719))

(declare-fun m!5128721 () Bool)

(assert (=> b!4440164 m!5128721))

(assert (=> b!4440166 m!5128719))

(assert (=> b!4440166 m!5128719))

(assert (=> b!4440166 m!5128721))

(assert (=> b!4440102 d!1347749))

(declare-fun b!4440193 () Bool)

(declare-fun e!2764692 () Unit!83856)

(declare-fun Unit!83861 () Unit!83856)

(assert (=> b!4440193 (= e!2764692 Unit!83861)))

(declare-fun b!4440194 () Bool)

(declare-fun e!2764691 () Bool)

(declare-datatypes ((List!49902 0))(
  ( (Nil!49778) (Cons!49778 (h!55500 K!11143) (t!356844 List!49902)) )
))
(declare-fun contains!12344 (List!49902 K!11143) Bool)

(declare-fun keys!17046 (ListMap!2887) List!49902)

(assert (=> b!4440194 (= e!2764691 (contains!12344 (keys!17046 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(declare-fun b!4440195 () Bool)

(declare-fun e!2764694 () List!49902)

(assert (=> b!4440195 (= e!2764694 (keys!17046 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))))))

(declare-fun b!4440196 () Bool)

(declare-fun getKeysList!286 (List!49898) List!49902)

(assert (=> b!4440196 (= e!2764694 (getKeysList!286 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616))))))))

(declare-fun d!1347751 () Bool)

(declare-fun e!2764696 () Bool)

(assert (=> d!1347751 e!2764696))

(declare-fun res!1838339 () Bool)

(assert (=> d!1347751 (=> res!1838339 e!2764696)))

(declare-fun e!2764695 () Bool)

(assert (=> d!1347751 (= res!1838339 e!2764695)))

(declare-fun res!1838338 () Bool)

(assert (=> d!1347751 (=> (not res!1838338) (not e!2764695))))

(declare-fun lt!1636289 () Bool)

(assert (=> d!1347751 (= res!1838338 (not lt!1636289))))

(declare-fun lt!1636287 () Bool)

(assert (=> d!1347751 (= lt!1636289 lt!1636287)))

(declare-fun lt!1636286 () Unit!83856)

(declare-fun e!2764693 () Unit!83856)

(assert (=> d!1347751 (= lt!1636286 e!2764693)))

(declare-fun c!755675 () Bool)

(assert (=> d!1347751 (= c!755675 lt!1636287)))

(declare-fun containsKey!1230 (List!49898 K!11143) Bool)

(assert (=> d!1347751 (= lt!1636287 (containsKey!1230 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(assert (=> d!1347751 (= (contains!12340 (extractMap!889 (tail!7360 (toList!3643 lm!1616))) key!3717) lt!1636289)))

(declare-fun b!4440197 () Bool)

(declare-fun lt!1636290 () Unit!83856)

(assert (=> b!4440197 (= e!2764693 lt!1636290)))

(declare-fun lt!1636292 () Unit!83856)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!688 (List!49898 K!11143) Unit!83856)

(assert (=> b!4440197 (= lt!1636292 (lemmaContainsKeyImpliesGetValueByKeyDefined!688 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(declare-datatypes ((Option!10794 0))(
  ( (None!10793) (Some!10793 (v!44021 V!11389)) )
))
(declare-fun isDefined!8085 (Option!10794) Bool)

(declare-fun getValueByKey!780 (List!49898 K!11143) Option!10794)

(assert (=> b!4440197 (isDefined!8085 (getValueByKey!780 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(declare-fun lt!1636288 () Unit!83856)

(assert (=> b!4440197 (= lt!1636288 lt!1636292)))

(declare-fun lemmaInListThenGetKeysListContains!283 (List!49898 K!11143) Unit!83856)

(assert (=> b!4440197 (= lt!1636290 (lemmaInListThenGetKeysListContains!283 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(declare-fun call!308981 () Bool)

(assert (=> b!4440197 call!308981))

(declare-fun b!4440198 () Bool)

(assert (=> b!4440198 (= e!2764695 (not (contains!12344 (keys!17046 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717)))))

(declare-fun b!4440199 () Bool)

(assert (=> b!4440199 (= e!2764693 e!2764692)))

(declare-fun c!755676 () Bool)

(assert (=> b!4440199 (= c!755676 call!308981)))

(declare-fun b!4440200 () Bool)

(assert (=> b!4440200 false))

(declare-fun lt!1636291 () Unit!83856)

(declare-fun lt!1636293 () Unit!83856)

(assert (=> b!4440200 (= lt!1636291 lt!1636293)))

(assert (=> b!4440200 (containsKey!1230 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!284 (List!49898 K!11143) Unit!83856)

(assert (=> b!4440200 (= lt!1636293 (lemmaInGetKeysListThenContainsKey!284 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717))))

(declare-fun Unit!83862 () Unit!83856)

(assert (=> b!4440200 (= e!2764692 Unit!83862)))

(declare-fun b!4440201 () Bool)

(assert (=> b!4440201 (= e!2764696 e!2764691)))

(declare-fun res!1838337 () Bool)

(assert (=> b!4440201 (=> (not res!1838337) (not e!2764691))))

(assert (=> b!4440201 (= res!1838337 (isDefined!8085 (getValueByKey!780 (toList!3644 (extractMap!889 (tail!7360 (toList!3643 lm!1616)))) key!3717)))))

(declare-fun bm!308976 () Bool)

(assert (=> bm!308976 (= call!308981 (contains!12344 e!2764694 key!3717))))

(declare-fun c!755677 () Bool)

(assert (=> bm!308976 (= c!755677 c!755675)))

(assert (= (and d!1347751 c!755675) b!4440197))

(assert (= (and d!1347751 (not c!755675)) b!4440199))

(assert (= (and b!4440199 c!755676) b!4440200))

(assert (= (and b!4440199 (not c!755676)) b!4440193))

(assert (= (or b!4440197 b!4440199) bm!308976))

(assert (= (and bm!308976 c!755677) b!4440196))

(assert (= (and bm!308976 (not c!755677)) b!4440195))

(assert (= (and d!1347751 res!1838338) b!4440198))

(assert (= (and d!1347751 (not res!1838339)) b!4440201))

(assert (= (and b!4440201 res!1838337) b!4440194))

(declare-fun m!5128729 () Bool)

(assert (=> b!4440197 m!5128729))

(declare-fun m!5128731 () Bool)

(assert (=> b!4440197 m!5128731))

(assert (=> b!4440197 m!5128731))

(declare-fun m!5128733 () Bool)

(assert (=> b!4440197 m!5128733))

(declare-fun m!5128735 () Bool)

(assert (=> b!4440197 m!5128735))

(assert (=> b!4440201 m!5128731))

(assert (=> b!4440201 m!5128731))

(assert (=> b!4440201 m!5128733))

(declare-fun m!5128737 () Bool)

(assert (=> b!4440196 m!5128737))

(declare-fun m!5128739 () Bool)

(assert (=> bm!308976 m!5128739))

(assert (=> b!4440194 m!5128667))

(declare-fun m!5128741 () Bool)

(assert (=> b!4440194 m!5128741))

(assert (=> b!4440194 m!5128741))

(declare-fun m!5128743 () Bool)

(assert (=> b!4440194 m!5128743))

(declare-fun m!5128745 () Bool)

(assert (=> b!4440200 m!5128745))

(declare-fun m!5128747 () Bool)

(assert (=> b!4440200 m!5128747))

(assert (=> d!1347751 m!5128745))

(assert (=> b!4440198 m!5128667))

(assert (=> b!4440198 m!5128741))

(assert (=> b!4440198 m!5128741))

(assert (=> b!4440198 m!5128743))

(assert (=> b!4440195 m!5128667))

(assert (=> b!4440195 m!5128741))

(assert (=> b!4440101 d!1347751))

(declare-fun bs!764013 () Bool)

(declare-fun d!1347759 () Bool)

(assert (= bs!764013 (and d!1347759 start!434342)))

(declare-fun lambda!157138 () Int)

(assert (=> bs!764013 (= lambda!157138 lambda!157121)))

(declare-fun lt!1636300 () ListMap!2887)

(declare-fun invariantList!838 (List!49898) Bool)

(assert (=> d!1347759 (invariantList!838 (toList!3644 lt!1636300))))

(declare-fun e!2764699 () ListMap!2887)

(assert (=> d!1347759 (= lt!1636300 e!2764699)))

(declare-fun c!755680 () Bool)

(assert (=> d!1347759 (= c!755680 (is-Cons!49775 (tail!7360 (toList!3643 lm!1616))))))

(assert (=> d!1347759 (forall!9691 (tail!7360 (toList!3643 lm!1616)) lambda!157138)))

(assert (=> d!1347759 (= (extractMap!889 (tail!7360 (toList!3643 lm!1616))) lt!1636300)))

(declare-fun b!4440206 () Bool)

(declare-fun addToMapMapFromBucket!442 (List!49898 ListMap!2887) ListMap!2887)

(assert (=> b!4440206 (= e!2764699 (addToMapMapFromBucket!442 (_2!28140 (h!55496 (tail!7360 (toList!3643 lm!1616)))) (extractMap!889 (t!356841 (tail!7360 (toList!3643 lm!1616))))))))

(declare-fun b!4440207 () Bool)

(assert (=> b!4440207 (= e!2764699 (ListMap!2888 Nil!49774))))

(assert (= (and d!1347759 c!755680) b!4440206))

(assert (= (and d!1347759 (not c!755680)) b!4440207))

(declare-fun m!5128749 () Bool)

(assert (=> d!1347759 m!5128749))

(assert (=> d!1347759 m!5128665))

(declare-fun m!5128751 () Bool)

(assert (=> d!1347759 m!5128751))

(declare-fun m!5128753 () Bool)

(assert (=> b!4440206 m!5128753))

(assert (=> b!4440206 m!5128753))

(declare-fun m!5128755 () Bool)

(assert (=> b!4440206 m!5128755))

(assert (=> b!4440101 d!1347759))

(declare-fun d!1347761 () Bool)

(assert (=> d!1347761 (= (tail!7360 (toList!3643 lm!1616)) (t!356841 (toList!3643 lm!1616)))))

(assert (=> b!4440101 d!1347761))

(declare-fun b!4440212 () Bool)

(declare-fun e!2764703 () Unit!83856)

(declare-fun Unit!83863 () Unit!83856)

(assert (=> b!4440212 (= e!2764703 Unit!83863)))

(declare-fun b!4440213 () Bool)

(declare-fun e!2764702 () Bool)

(assert (=> b!4440213 (= e!2764702 (contains!12344 (keys!17046 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(declare-fun b!4440214 () Bool)

(declare-fun e!2764705 () List!49902)

(assert (=> b!4440214 (= e!2764705 (keys!17046 (extractMap!889 (toList!3643 lm!1616))))))

(declare-fun b!4440215 () Bool)

(assert (=> b!4440215 (= e!2764705 (getKeysList!286 (toList!3644 (extractMap!889 (toList!3643 lm!1616)))))))

(declare-fun d!1347763 () Bool)

(declare-fun e!2764707 () Bool)

(assert (=> d!1347763 e!2764707))

(declare-fun res!1838346 () Bool)

(assert (=> d!1347763 (=> res!1838346 e!2764707)))

(declare-fun e!2764706 () Bool)

(assert (=> d!1347763 (= res!1838346 e!2764706)))

(declare-fun res!1838345 () Bool)

(assert (=> d!1347763 (=> (not res!1838345) (not e!2764706))))

(declare-fun lt!1636308 () Bool)

(assert (=> d!1347763 (= res!1838345 (not lt!1636308))))

(declare-fun lt!1636306 () Bool)

(assert (=> d!1347763 (= lt!1636308 lt!1636306)))

(declare-fun lt!1636305 () Unit!83856)

(declare-fun e!2764704 () Unit!83856)

(assert (=> d!1347763 (= lt!1636305 e!2764704)))

(declare-fun c!755681 () Bool)

(assert (=> d!1347763 (= c!755681 lt!1636306)))

(assert (=> d!1347763 (= lt!1636306 (containsKey!1230 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(assert (=> d!1347763 (= (contains!12340 (extractMap!889 (toList!3643 lm!1616)) key!3717) lt!1636308)))

(declare-fun b!4440216 () Bool)

(declare-fun lt!1636309 () Unit!83856)

(assert (=> b!4440216 (= e!2764704 lt!1636309)))

(declare-fun lt!1636311 () Unit!83856)

(assert (=> b!4440216 (= lt!1636311 (lemmaContainsKeyImpliesGetValueByKeyDefined!688 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(assert (=> b!4440216 (isDefined!8085 (getValueByKey!780 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(declare-fun lt!1636307 () Unit!83856)

(assert (=> b!4440216 (= lt!1636307 lt!1636311)))

(assert (=> b!4440216 (= lt!1636309 (lemmaInListThenGetKeysListContains!283 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(declare-fun call!308982 () Bool)

(assert (=> b!4440216 call!308982))

(declare-fun b!4440217 () Bool)

(assert (=> b!4440217 (= e!2764706 (not (contains!12344 (keys!17046 (extractMap!889 (toList!3643 lm!1616))) key!3717)))))

(declare-fun b!4440218 () Bool)

(assert (=> b!4440218 (= e!2764704 e!2764703)))

(declare-fun c!755682 () Bool)

(assert (=> b!4440218 (= c!755682 call!308982)))

(declare-fun b!4440219 () Bool)

(assert (=> b!4440219 false))

(declare-fun lt!1636310 () Unit!83856)

(declare-fun lt!1636312 () Unit!83856)

(assert (=> b!4440219 (= lt!1636310 lt!1636312)))

(assert (=> b!4440219 (containsKey!1230 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717)))

(assert (=> b!4440219 (= lt!1636312 (lemmaInGetKeysListThenContainsKey!284 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717))))

(declare-fun Unit!83864 () Unit!83856)

(assert (=> b!4440219 (= e!2764703 Unit!83864)))

(declare-fun b!4440220 () Bool)

(assert (=> b!4440220 (= e!2764707 e!2764702)))

(declare-fun res!1838344 () Bool)

(assert (=> b!4440220 (=> (not res!1838344) (not e!2764702))))

(assert (=> b!4440220 (= res!1838344 (isDefined!8085 (getValueByKey!780 (toList!3644 (extractMap!889 (toList!3643 lm!1616))) key!3717)))))

(declare-fun bm!308977 () Bool)

(assert (=> bm!308977 (= call!308982 (contains!12344 e!2764705 key!3717))))

(declare-fun c!755683 () Bool)

(assert (=> bm!308977 (= c!755683 c!755681)))

(assert (= (and d!1347763 c!755681) b!4440216))

(assert (= (and d!1347763 (not c!755681)) b!4440218))

(assert (= (and b!4440218 c!755682) b!4440219))

(assert (= (and b!4440218 (not c!755682)) b!4440212))

(assert (= (or b!4440216 b!4440218) bm!308977))

(assert (= (and bm!308977 c!755683) b!4440215))

(assert (= (and bm!308977 (not c!755683)) b!4440214))

(assert (= (and d!1347763 res!1838345) b!4440217))

(assert (= (and d!1347763 (not res!1838346)) b!4440220))

(assert (= (and b!4440220 res!1838344) b!4440213))

(declare-fun m!5128757 () Bool)

(assert (=> b!4440216 m!5128757))

(declare-fun m!5128759 () Bool)

(assert (=> b!4440216 m!5128759))

(assert (=> b!4440216 m!5128759))

(declare-fun m!5128761 () Bool)

(assert (=> b!4440216 m!5128761))

(declare-fun m!5128763 () Bool)

(assert (=> b!4440216 m!5128763))

(assert (=> b!4440220 m!5128759))

(assert (=> b!4440220 m!5128759))

(assert (=> b!4440220 m!5128761))

(declare-fun m!5128765 () Bool)

(assert (=> b!4440215 m!5128765))

(declare-fun m!5128767 () Bool)

(assert (=> bm!308977 m!5128767))

(assert (=> b!4440213 m!5128651))

(declare-fun m!5128769 () Bool)

(assert (=> b!4440213 m!5128769))

(assert (=> b!4440213 m!5128769))

(declare-fun m!5128771 () Bool)

(assert (=> b!4440213 m!5128771))

(declare-fun m!5128773 () Bool)

(assert (=> b!4440219 m!5128773))

(declare-fun m!5128775 () Bool)

(assert (=> b!4440219 m!5128775))

(assert (=> d!1347763 m!5128773))

(assert (=> b!4440217 m!5128651))

(assert (=> b!4440217 m!5128769))

(assert (=> b!4440217 m!5128769))

(assert (=> b!4440217 m!5128771))

(assert (=> b!4440214 m!5128651))

(assert (=> b!4440214 m!5128769))

(assert (=> b!4440098 d!1347763))

(declare-fun bs!764014 () Bool)

(declare-fun d!1347765 () Bool)

(assert (= bs!764014 (and d!1347765 start!434342)))

(declare-fun lambda!157139 () Int)

(assert (=> bs!764014 (= lambda!157139 lambda!157121)))

(declare-fun bs!764015 () Bool)

(assert (= bs!764015 (and d!1347765 d!1347759)))

(assert (=> bs!764015 (= lambda!157139 lambda!157138)))

(declare-fun lt!1636313 () ListMap!2887)

(assert (=> d!1347765 (invariantList!838 (toList!3644 lt!1636313))))

(declare-fun e!2764708 () ListMap!2887)

(assert (=> d!1347765 (= lt!1636313 e!2764708)))

(declare-fun c!755684 () Bool)

(assert (=> d!1347765 (= c!755684 (is-Cons!49775 (toList!3643 lm!1616)))))

(assert (=> d!1347765 (forall!9691 (toList!3643 lm!1616) lambda!157139)))

(assert (=> d!1347765 (= (extractMap!889 (toList!3643 lm!1616)) lt!1636313)))

(declare-fun b!4440221 () Bool)

(assert (=> b!4440221 (= e!2764708 (addToMapMapFromBucket!442 (_2!28140 (h!55496 (toList!3643 lm!1616))) (extractMap!889 (t!356841 (toList!3643 lm!1616)))))))

(declare-fun b!4440222 () Bool)

(assert (=> b!4440222 (= e!2764708 (ListMap!2888 Nil!49774))))

(assert (= (and d!1347765 c!755684) b!4440221))

(assert (= (and d!1347765 (not c!755684)) b!4440222))

(declare-fun m!5128777 () Bool)

(assert (=> d!1347765 m!5128777))

(declare-fun m!5128779 () Bool)

(assert (=> d!1347765 m!5128779))

(declare-fun m!5128781 () Bool)

(assert (=> b!4440221 m!5128781))

(assert (=> b!4440221 m!5128781))

(declare-fun m!5128783 () Bool)

(assert (=> b!4440221 m!5128783))

(assert (=> b!4440098 d!1347765))

(declare-fun d!1347767 () Bool)

(assert (=> d!1347767 (= (isEmpty!28384 (toList!3643 lm!1616)) (is-Nil!49775 (toList!3643 lm!1616)))))

(assert (=> b!4440108 d!1347767))

(declare-fun d!1347769 () Bool)

(declare-fun res!1838353 () Bool)

(declare-fun e!2764714 () Bool)

(assert (=> d!1347769 (=> res!1838353 e!2764714)))

(assert (=> d!1347769 (= res!1838353 (is-Nil!49775 (toList!3643 lm!1616)))))

(assert (=> d!1347769 (= (forall!9691 (toList!3643 lm!1616) lambda!157121) e!2764714)))

(declare-fun b!4440229 () Bool)

(declare-fun e!2764715 () Bool)

(assert (=> b!4440229 (= e!2764714 e!2764715)))

(declare-fun res!1838354 () Bool)

(assert (=> b!4440229 (=> (not res!1838354) (not e!2764715))))

(declare-fun dynLambda!20904 (Int tuple2!49692) Bool)

(assert (=> b!4440229 (= res!1838354 (dynLambda!20904 lambda!157121 (h!55496 (toList!3643 lm!1616))))))

(declare-fun b!4440230 () Bool)

(assert (=> b!4440230 (= e!2764715 (forall!9691 (t!356841 (toList!3643 lm!1616)) lambda!157121))))

(assert (= (and d!1347769 (not res!1838353)) b!4440229))

(assert (= (and b!4440229 res!1838354) b!4440230))

(declare-fun b_lambda!144947 () Bool)

(assert (=> (not b_lambda!144947) (not b!4440229)))

(declare-fun m!5128785 () Bool)

(assert (=> b!4440229 m!5128785))

(declare-fun m!5128787 () Bool)

(assert (=> b!4440230 m!5128787))

(assert (=> b!4440097 d!1347769))

(assert (=> b!4440099 d!1347769))

(declare-fun d!1347771 () Bool)

(assert (=> d!1347771 true))

(assert (=> d!1347771 true))

(declare-fun lambda!157142 () Int)

(declare-fun forall!9693 (List!49898 Int) Bool)

(assert (=> d!1347771 (= (allKeysSameHash!788 newBucket!194 hash!366 hashF!1220) (forall!9693 newBucket!194 lambda!157142))))

(declare-fun bs!764016 () Bool)

(assert (= bs!764016 d!1347771))

(declare-fun m!5128801 () Bool)

(assert (=> bs!764016 m!5128801))

(assert (=> b!4440095 d!1347771))

(declare-fun d!1347775 () Bool)

(declare-fun get!16233 (Option!10793) List!49898)

(assert (=> d!1347775 (= (apply!11680 lm!1616 hash!366) (get!16233 (getValueByKey!779 (toList!3643 lm!1616) hash!366)))))

(declare-fun bs!764017 () Bool)

(assert (= bs!764017 d!1347775))

(assert (=> bs!764017 m!5128719))

(assert (=> bs!764017 m!5128719))

(declare-fun m!5128803 () Bool)

(assert (=> bs!764017 m!5128803))

(assert (=> b!4440105 d!1347775))

(declare-fun d!1347777 () Bool)

(declare-fun res!1838355 () Bool)

(declare-fun e!2764716 () Bool)

(assert (=> d!1347777 (=> res!1838355 e!2764716)))

(assert (=> d!1347777 (= res!1838355 (is-Nil!49775 (toList!3643 lt!1636248)))))

(assert (=> d!1347777 (= (forall!9691 (toList!3643 lt!1636248) lambda!157121) e!2764716)))

(declare-fun b!4440235 () Bool)

(declare-fun e!2764717 () Bool)

(assert (=> b!4440235 (= e!2764716 e!2764717)))

(declare-fun res!1838356 () Bool)

(assert (=> b!4440235 (=> (not res!1838356) (not e!2764717))))

(assert (=> b!4440235 (= res!1838356 (dynLambda!20904 lambda!157121 (h!55496 (toList!3643 lt!1636248))))))

(declare-fun b!4440236 () Bool)

(assert (=> b!4440236 (= e!2764717 (forall!9691 (t!356841 (toList!3643 lt!1636248)) lambda!157121))))

(assert (= (and d!1347777 (not res!1838355)) b!4440235))

(assert (= (and b!4440235 res!1838356) b!4440236))

(declare-fun b_lambda!144949 () Bool)

(assert (=> (not b_lambda!144949) (not b!4440235)))

(declare-fun m!5128805 () Bool)

(assert (=> b!4440235 m!5128805))

(declare-fun m!5128807 () Bool)

(assert (=> b!4440236 m!5128807))

(assert (=> b!4440107 d!1347777))

(declare-fun d!1347779 () Bool)

(declare-fun e!2764720 () Bool)

(assert (=> d!1347779 e!2764720))

(declare-fun res!1838362 () Bool)

(assert (=> d!1347779 (=> (not res!1838362) (not e!2764720))))

(declare-fun lt!1636327 () ListLongMap!2293)

(assert (=> d!1347779 (= res!1838362 (contains!12341 lt!1636327 (_1!28140 (tuple2!49693 hash!366 newBucket!194))))))

(declare-fun lt!1636328 () List!49899)

(assert (=> d!1347779 (= lt!1636327 (ListLongMap!2294 lt!1636328))))

(declare-fun lt!1636326 () Unit!83856)

(declare-fun lt!1636329 () Unit!83856)

(assert (=> d!1347779 (= lt!1636326 lt!1636329)))

(assert (=> d!1347779 (= (getValueByKey!779 lt!1636328 (_1!28140 (tuple2!49693 hash!366 newBucket!194))) (Some!10792 (_2!28140 (tuple2!49693 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!509 (List!49899 (_ BitVec 64) List!49898) Unit!83856)

(assert (=> d!1347779 (= lt!1636329 (lemmaContainsTupThenGetReturnValue!509 lt!1636328 (_1!28140 (tuple2!49693 hash!366 newBucket!194)) (_2!28140 (tuple2!49693 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!293 (List!49899 (_ BitVec 64) List!49898) List!49899)

(assert (=> d!1347779 (= lt!1636328 (insertStrictlySorted!293 (toList!3643 lm!1616) (_1!28140 (tuple2!49693 hash!366 newBucket!194)) (_2!28140 (tuple2!49693 hash!366 newBucket!194))))))

(assert (=> d!1347779 (= (+!1210 lm!1616 (tuple2!49693 hash!366 newBucket!194)) lt!1636327)))

(declare-fun b!4440241 () Bool)

(declare-fun res!1838361 () Bool)

(assert (=> b!4440241 (=> (not res!1838361) (not e!2764720))))

(assert (=> b!4440241 (= res!1838361 (= (getValueByKey!779 (toList!3643 lt!1636327) (_1!28140 (tuple2!49693 hash!366 newBucket!194))) (Some!10792 (_2!28140 (tuple2!49693 hash!366 newBucket!194)))))))

(declare-fun b!4440242 () Bool)

(declare-fun contains!12345 (List!49899 tuple2!49692) Bool)

(assert (=> b!4440242 (= e!2764720 (contains!12345 (toList!3643 lt!1636327) (tuple2!49693 hash!366 newBucket!194)))))

(assert (= (and d!1347779 res!1838362) b!4440241))

(assert (= (and b!4440241 res!1838361) b!4440242))

(declare-fun m!5128809 () Bool)

(assert (=> d!1347779 m!5128809))

(declare-fun m!5128811 () Bool)

(assert (=> d!1347779 m!5128811))

(declare-fun m!5128813 () Bool)

(assert (=> d!1347779 m!5128813))

(declare-fun m!5128815 () Bool)

(assert (=> d!1347779 m!5128815))

(declare-fun m!5128817 () Bool)

(assert (=> b!4440241 m!5128817))

(declare-fun m!5128819 () Bool)

(assert (=> b!4440242 m!5128819))

(assert (=> b!4440107 d!1347779))

(declare-fun d!1347781 () Bool)

(assert (=> d!1347781 (forall!9691 (toList!3643 (+!1210 lm!1616 (tuple2!49693 hash!366 newBucket!194))) lambda!157121)))

(declare-fun lt!1636335 () Unit!83856)

(declare-fun choose!28196 (ListLongMap!2293 Int (_ BitVec 64) List!49898) Unit!83856)

(assert (=> d!1347781 (= lt!1636335 (choose!28196 lm!1616 lambda!157121 hash!366 newBucket!194))))

(declare-fun e!2764726 () Bool)

(assert (=> d!1347781 e!2764726))

(declare-fun res!1838368 () Bool)

(assert (=> d!1347781 (=> (not res!1838368) (not e!2764726))))

(assert (=> d!1347781 (= res!1838368 (forall!9691 (toList!3643 lm!1616) lambda!157121))))

(assert (=> d!1347781 (= (addValidProp!466 lm!1616 lambda!157121 hash!366 newBucket!194) lt!1636335)))

(declare-fun b!4440250 () Bool)

(assert (=> b!4440250 (= e!2764726 (dynLambda!20904 lambda!157121 (tuple2!49693 hash!366 newBucket!194)))))

(assert (= (and d!1347781 res!1838368) b!4440250))

(declare-fun b_lambda!144953 () Bool)

(assert (=> (not b_lambda!144953) (not b!4440250)))

(assert (=> d!1347781 m!5128657))

(declare-fun m!5128823 () Bool)

(assert (=> d!1347781 m!5128823))

(declare-fun m!5128827 () Bool)

(assert (=> d!1347781 m!5128827))

(assert (=> d!1347781 m!5128647))

(declare-fun m!5128829 () Bool)

(assert (=> b!4440250 m!5128829))

(assert (=> b!4440107 d!1347781))

(declare-fun d!1347783 () Bool)

(declare-fun hash!2280 (Hashable!5222 K!11143) (_ BitVec 64))

(assert (=> d!1347783 (= (hash!2278 hashF!1220 key!3717) (hash!2280 hashF!1220 key!3717))))

(declare-fun bs!764018 () Bool)

(assert (= bs!764018 d!1347783))

(declare-fun m!5128833 () Bool)

(assert (=> bs!764018 m!5128833))

(assert (=> b!4440103 d!1347783))

(assert (=> start!434342 d!1347769))

(declare-fun d!1347787 () Bool)

(declare-fun isStrictlySorted!266 (List!49899) Bool)

(assert (=> d!1347787 (= (inv!65330 lm!1616) (isStrictlySorted!266 (toList!3643 lm!1616)))))

(declare-fun bs!764019 () Bool)

(assert (= bs!764019 d!1347787))

(declare-fun m!5128839 () Bool)

(assert (=> bs!764019 m!5128839))

(assert (=> start!434342 d!1347787))

(declare-fun bs!764021 () Bool)

(declare-fun d!1347791 () Bool)

(assert (= bs!764021 (and d!1347791 start!434342)))

(declare-fun lambda!157145 () Int)

(assert (=> bs!764021 (not (= lambda!157145 lambda!157121))))

(declare-fun bs!764022 () Bool)

(assert (= bs!764022 (and d!1347791 d!1347759)))

(assert (=> bs!764022 (not (= lambda!157145 lambda!157138))))

(declare-fun bs!764023 () Bool)

(assert (= bs!764023 (and d!1347791 d!1347765)))

(assert (=> bs!764023 (not (= lambda!157145 lambda!157139))))

(assert (=> d!1347791 true))

(assert (=> d!1347791 (= (allKeysSameHashInMap!934 lm!1616 hashF!1220) (forall!9691 (toList!3643 lm!1616) lambda!157145))))

(declare-fun bs!764024 () Bool)

(assert (= bs!764024 d!1347791))

(declare-fun m!5128843 () Bool)

(assert (=> bs!764024 m!5128843))

(assert (=> b!4440094 d!1347791))

(declare-fun d!1347795 () Bool)

(declare-fun res!1838375 () Bool)

(declare-fun e!2764733 () Bool)

(assert (=> d!1347795 (=> res!1838375 e!2764733)))

(assert (=> d!1347795 (= res!1838375 (not (is-Cons!49774 newBucket!194)))))

(assert (=> d!1347795 (= (noDuplicateKeys!828 newBucket!194) e!2764733)))

(declare-fun b!4440259 () Bool)

(declare-fun e!2764734 () Bool)

(assert (=> b!4440259 (= e!2764733 e!2764734)))

(declare-fun res!1838376 () Bool)

(assert (=> b!4440259 (=> (not res!1838376) (not e!2764734))))

(declare-fun containsKey!1231 (List!49898 K!11143) Bool)

(assert (=> b!4440259 (= res!1838376 (not (containsKey!1231 (t!356840 newBucket!194) (_1!28139 (h!55495 newBucket!194)))))))

(declare-fun b!4440260 () Bool)

(assert (=> b!4440260 (= e!2764734 (noDuplicateKeys!828 (t!356840 newBucket!194)))))

(assert (= (and d!1347795 (not res!1838375)) b!4440259))

(assert (= (and b!4440259 res!1838376) b!4440260))

(declare-fun m!5128845 () Bool)

(assert (=> b!4440259 m!5128845))

(declare-fun m!5128847 () Bool)

(assert (=> b!4440260 m!5128847))

(assert (=> b!4440104 d!1347795))

(declare-fun b!4440265 () Bool)

(declare-fun e!2764737 () Bool)

(declare-fun tp!1334087 () Bool)

(declare-fun tp!1334088 () Bool)

(assert (=> b!4440265 (= e!2764737 (and tp!1334087 tp!1334088))))

(assert (=> b!4440100 (= tp!1334075 e!2764737)))

(assert (= (and b!4440100 (is-Cons!49775 (toList!3643 lm!1616))) b!4440265))

(declare-fun e!2764740 () Bool)

(declare-fun tp!1334091 () Bool)

(declare-fun b!4440270 () Bool)

(assert (=> b!4440270 (= e!2764740 (and tp_is_empty!26559 tp_is_empty!26557 tp!1334091))))

(assert (=> b!4440109 (= tp!1334076 e!2764740)))

(assert (= (and b!4440109 (is-Cons!49774 (t!356840 newBucket!194))) b!4440270))

(declare-fun b_lambda!144957 () Bool)

(assert (= b_lambda!144947 (or start!434342 b_lambda!144957)))

(declare-fun bs!764025 () Bool)

(declare-fun d!1347797 () Bool)

(assert (= bs!764025 (and d!1347797 start!434342)))

(assert (=> bs!764025 (= (dynLambda!20904 lambda!157121 (h!55496 (toList!3643 lm!1616))) (noDuplicateKeys!828 (_2!28140 (h!55496 (toList!3643 lm!1616)))))))

(declare-fun m!5128849 () Bool)

(assert (=> bs!764025 m!5128849))

(assert (=> b!4440229 d!1347797))

(declare-fun b_lambda!144959 () Bool)

(assert (= b_lambda!144949 (or start!434342 b_lambda!144959)))

(declare-fun bs!764026 () Bool)

(declare-fun d!1347799 () Bool)

(assert (= bs!764026 (and d!1347799 start!434342)))

(assert (=> bs!764026 (= (dynLambda!20904 lambda!157121 (h!55496 (toList!3643 lt!1636248))) (noDuplicateKeys!828 (_2!28140 (h!55496 (toList!3643 lt!1636248)))))))

(declare-fun m!5128851 () Bool)

(assert (=> bs!764026 m!5128851))

(assert (=> b!4440235 d!1347799))

(declare-fun b_lambda!144961 () Bool)

(assert (= b_lambda!144953 (or start!434342 b_lambda!144961)))

(declare-fun bs!764027 () Bool)

(declare-fun d!1347801 () Bool)

(assert (= bs!764027 (and d!1347801 start!434342)))

(assert (=> bs!764027 (= (dynLambda!20904 lambda!157121 (tuple2!49693 hash!366 newBucket!194)) (noDuplicateKeys!828 (_2!28140 (tuple2!49693 hash!366 newBucket!194))))))

(declare-fun m!5128853 () Bool)

(assert (=> bs!764027 m!5128853))

(assert (=> b!4440250 d!1347801))

(push 1)

(assert (not b!4440198))

(assert (not b!4440230))

(assert (not b!4440242))

(assert (not b!4440196))

(assert (not bm!308977))

(assert (not bs!764027))

(assert (not d!1347791))

(assert (not d!1347751))

(assert (not b!4440219))

(assert (not b_lambda!144961))

(assert (not b!4440215))

(assert (not d!1347781))

(assert (not b!4440195))

(assert (not b!4440241))

(assert (not b!4440270))

(assert (not b!4440259))

(assert (not b_lambda!144959))

(assert tp_is_empty!26557)

(assert (not b!4440197))

(assert (not b!4440194))

(assert (not d!1347749))

(assert (not b!4440217))

(assert (not d!1347765))

(assert (not b!4440216))

(assert (not d!1347763))

(assert (not d!1347783))

(assert tp_is_empty!26559)

(assert (not b!4440214))

(assert (not b!4440265))

(assert (not d!1347775))

(assert (not b!4440166))

(assert (not bs!764026))

(assert (not b!4440201))

(assert (not b!4440200))

(assert (not b_lambda!144957))

(assert (not bm!308976))

(assert (not b!4440221))

(assert (not b!4440220))

(assert (not b!4440260))

(assert (not d!1347787))

(assert (not d!1347759))

(assert (not b!4440213))

(assert (not d!1347771))

(assert (not b!4440236))

(assert (not b!4440164))

(assert (not d!1347779))

(assert (not b!4440206))

(assert (not bs!764025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

