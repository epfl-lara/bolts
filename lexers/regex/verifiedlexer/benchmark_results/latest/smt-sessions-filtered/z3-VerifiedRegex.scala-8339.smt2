; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433908 () Bool)

(assert start!433908)

(declare-fun res!1836710 () Bool)

(declare-fun e!2763097 () Bool)

(assert (=> start!433908 (=> (not res!1836710) (not e!2763097))))

(declare-datatypes ((V!11346 0))(
  ( (V!11347 (val!17151 Int)) )
))
(declare-datatypes ((K!11100 0))(
  ( (K!11101 (val!17152 Int)) )
))
(declare-datatypes ((tuple2!49622 0))(
  ( (tuple2!49623 (_1!28105 K!11100) (_2!28105 V!11346)) )
))
(declare-datatypes ((List!49857 0))(
  ( (Nil!49733) (Cons!49733 (h!55446 tuple2!49622) (t!356799 List!49857)) )
))
(declare-datatypes ((tuple2!49624 0))(
  ( (tuple2!49625 (_1!28106 (_ BitVec 64)) (_2!28106 List!49857)) )
))
(declare-datatypes ((List!49858 0))(
  ( (Nil!49734) (Cons!49734 (h!55447 tuple2!49624) (t!356800 List!49858)) )
))
(declare-datatypes ((ListLongMap!2259 0))(
  ( (ListLongMap!2260 (toList!3609 List!49858)) )
))
(declare-fun lm!1616 () ListLongMap!2259)

(declare-fun lambda!156552 () Int)

(declare-fun forall!9666 (List!49858 Int) Bool)

(assert (=> start!433908 (= res!1836710 (forall!9666 (toList!3609 lm!1616) lambda!156552))))

(assert (=> start!433908 e!2763097))

(declare-fun tp_is_empty!26489 () Bool)

(assert (=> start!433908 tp_is_empty!26489))

(declare-fun tp_is_empty!26491 () Bool)

(assert (=> start!433908 tp_is_empty!26491))

(declare-fun e!2763098 () Bool)

(assert (=> start!433908 e!2763098))

(declare-fun e!2763095 () Bool)

(declare-fun inv!65286 (ListLongMap!2259) Bool)

(assert (=> start!433908 (and (inv!65286 lm!1616) e!2763095)))

(assert (=> start!433908 true))

(declare-fun b!4437516 () Bool)

(declare-fun res!1836711 () Bool)

(declare-fun e!2763104 () Bool)

(assert (=> b!4437516 (=> (not res!1836711) (not e!2763104))))

(assert (=> b!4437516 (= res!1836711 (forall!9666 (toList!3609 lm!1616) lambda!156552))))

(declare-fun b!4437517 () Bool)

(declare-fun e!2763101 () Bool)

(assert (=> b!4437517 (= e!2763097 e!2763101)))

(declare-fun res!1836714 () Bool)

(assert (=> b!4437517 (=> (not res!1836714) (not e!2763101))))

(declare-datatypes ((ListMap!2853 0))(
  ( (ListMap!2854 (toList!3610 List!49857)) )
))
(declare-fun lt!1634308 () ListMap!2853)

(declare-fun key!3717 () K!11100)

(declare-fun contains!12288 (ListMap!2853 K!11100) Bool)

(assert (=> b!4437517 (= res!1836714 (not (contains!12288 lt!1634308 key!3717)))))

(declare-fun extractMap!872 (List!49858) ListMap!2853)

(assert (=> b!4437517 (= lt!1634308 (extractMap!872 (toList!3609 lm!1616)))))

(declare-fun b!4437518 () Bool)

(declare-fun res!1836712 () Bool)

(declare-fun e!2763096 () Bool)

(assert (=> b!4437518 (=> res!1836712 e!2763096)))

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4437518 (= res!1836712 (or (and ((_ is Cons!49734) (toList!3609 lm!1616)) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)) (not ((_ is Cons!49734) (toList!3609 lm!1616))) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)))))

(declare-fun b!4437519 () Bool)

(declare-datatypes ((Unit!83561 0))(
  ( (Unit!83562) )
))
(declare-fun e!2763099 () Unit!83561)

(declare-fun Unit!83563 () Unit!83561)

(assert (=> b!4437519 (= e!2763099 Unit!83563)))

(declare-fun b!4437520 () Bool)

(declare-fun e!2763102 () Bool)

(declare-fun containsKey!1208 (List!49857 K!11100) Bool)

(assert (=> b!4437520 (= e!2763102 (not (containsKey!1208 (_2!28106 (h!55447 (toList!3609 lm!1616))) key!3717)))))

(declare-fun apply!11663 (ListLongMap!2259 (_ BitVec 64)) List!49857)

(assert (=> b!4437520 (not (containsKey!1208 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))) key!3717))))

(declare-fun lt!1634302 () Unit!83561)

(declare-datatypes ((Hashable!5205 0))(
  ( (HashableExt!5204 (__x!30908 Int)) )
))
(declare-fun hashF!1220 () Hashable!5205)

(declare-fun lemmaNotSameHashThenCannotContainKey!152 (ListLongMap!2259 K!11100 (_ BitVec 64) Hashable!5205) Unit!83561)

(assert (=> b!4437520 (= lt!1634302 (lemmaNotSameHashThenCannotContainKey!152 lm!1616 key!3717 (_1!28106 (h!55447 (toList!3609 lm!1616))) hashF!1220))))

(declare-fun b!4437521 () Bool)

(assert (=> b!4437521 (= e!2763096 e!2763102)))

(declare-fun res!1836708 () Bool)

(assert (=> b!4437521 (=> res!1836708 e!2763102)))

(declare-fun lt!1634309 () tuple2!49624)

(declare-fun head!9276 (ListLongMap!2259) tuple2!49624)

(assert (=> b!4437521 (= res!1836708 (= (head!9276 lm!1616) lt!1634309))))

(declare-fun newValue!93 () V!11346)

(declare-fun lt!1634303 () ListMap!2853)

(declare-fun lt!1634310 () ListMap!2853)

(declare-fun eq!443 (ListMap!2853 ListMap!2853) Bool)

(declare-fun +!1188 (ListMap!2853 tuple2!49622) ListMap!2853)

(assert (=> b!4437521 (eq!443 lt!1634310 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)))))

(declare-fun lt!1634306 () ListLongMap!2259)

(assert (=> b!4437521 (= lt!1634303 (extractMap!872 (toList!3609 lt!1634306)))))

(declare-fun +!1189 (ListLongMap!2259 tuple2!49624) ListLongMap!2259)

(assert (=> b!4437521 (= lt!1634310 (extractMap!872 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))

(declare-fun newBucket!194 () List!49857)

(declare-fun lt!1634305 () Unit!83561)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!153 (ListLongMap!2259 (_ BitVec 64) List!49857 K!11100 V!11346 Hashable!5205) Unit!83561)

(assert (=> b!4437521 (= lt!1634305 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!153 lt!1634306 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7344 (ListLongMap!2259) ListLongMap!2259)

(assert (=> b!4437521 (= lt!1634306 (tail!7344 lm!1616))))

(declare-fun lt!1634304 () Unit!83561)

(assert (=> b!4437521 (= lt!1634304 e!2763099)))

(declare-fun c!755289 () Bool)

(declare-fun tail!7345 (List!49858) List!49858)

(assert (=> b!4437521 (= c!755289 (contains!12288 (extractMap!872 (tail!7345 (toList!3609 lm!1616))) key!3717))))

(declare-fun b!4437522 () Bool)

(assert (=> b!4437522 (= e!2763101 e!2763104)))

(declare-fun res!1836713 () Bool)

(assert (=> b!4437522 (=> (not res!1836713) (not e!2763104))))

(declare-fun e!2763100 () Bool)

(assert (=> b!4437522 (= res!1836713 e!2763100)))

(declare-fun res!1836709 () Bool)

(assert (=> b!4437522 (=> res!1836709 e!2763100)))

(declare-fun e!2763103 () Bool)

(assert (=> b!4437522 (= res!1836709 e!2763103)))

(declare-fun res!1836717 () Bool)

(assert (=> b!4437522 (=> (not res!1836717) (not e!2763103))))

(declare-fun lt!1634307 () Bool)

(assert (=> b!4437522 (= res!1836717 lt!1634307)))

(declare-fun contains!12289 (ListLongMap!2259 (_ BitVec 64)) Bool)

(assert (=> b!4437522 (= lt!1634307 (contains!12289 lm!1616 hash!366))))

(declare-fun b!4437523 () Bool)

(declare-fun tp!1333893 () Bool)

(assert (=> b!4437523 (= e!2763095 tp!1333893)))

(declare-fun b!4437524 () Bool)

(assert (=> b!4437524 (= e!2763103 (= newBucket!194 (Cons!49733 (tuple2!49623 key!3717 newValue!93) (apply!11663 lm!1616 hash!366))))))

(declare-fun b!4437525 () Bool)

(declare-fun res!1836721 () Bool)

(assert (=> b!4437525 (=> (not res!1836721) (not e!2763104))))

(declare-fun noDuplicateKeys!811 (List!49857) Bool)

(assert (=> b!4437525 (= res!1836721 (noDuplicateKeys!811 newBucket!194))))

(declare-fun b!4437526 () Bool)

(declare-fun res!1836715 () Bool)

(assert (=> b!4437526 (=> (not res!1836715) (not e!2763097))))

(declare-fun hash!2246 (Hashable!5205 K!11100) (_ BitVec 64))

(assert (=> b!4437526 (= res!1836715 (= (hash!2246 hashF!1220 key!3717) hash!366))))

(declare-fun b!4437527 () Bool)

(assert (=> b!4437527 (= e!2763100 (and (not lt!1634307) (= newBucket!194 (Cons!49733 (tuple2!49623 key!3717 newValue!93) Nil!49733))))))

(declare-fun b!4437528 () Bool)

(declare-fun res!1836716 () Bool)

(assert (=> b!4437528 (=> res!1836716 e!2763102)))

(declare-fun addToMapMapFromBucket!432 (List!49857 ListMap!2853) ListMap!2853)

(assert (=> b!4437528 (= res!1836716 (not (eq!443 lt!1634308 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303))))))

(declare-fun b!4437529 () Bool)

(declare-fun res!1836718 () Bool)

(assert (=> b!4437529 (=> (not res!1836718) (not e!2763097))))

(declare-fun allKeysSameHashInMap!917 (ListLongMap!2259 Hashable!5205) Bool)

(assert (=> b!4437529 (= res!1836718 (allKeysSameHashInMap!917 lm!1616 hashF!1220))))

(declare-fun b!4437530 () Bool)

(declare-fun res!1836720 () Bool)

(assert (=> b!4437530 (=> (not res!1836720) (not e!2763097))))

(declare-fun allKeysSameHash!771 (List!49857 (_ BitVec 64) Hashable!5205) Bool)

(assert (=> b!4437530 (= res!1836720 (allKeysSameHash!771 newBucket!194 hash!366 hashF!1220))))

(declare-fun tp!1333894 () Bool)

(declare-fun b!4437531 () Bool)

(assert (=> b!4437531 (= e!2763098 (and tp_is_empty!26491 tp_is_empty!26489 tp!1333894))))

(declare-fun b!4437532 () Bool)

(assert (=> b!4437532 (= e!2763104 (not e!2763096))))

(declare-fun res!1836719 () Bool)

(assert (=> b!4437532 (=> res!1836719 e!2763096)))

(declare-fun lt!1634311 () ListLongMap!2259)

(assert (=> b!4437532 (= res!1836719 (not (forall!9666 (toList!3609 lt!1634311) lambda!156552)))))

(assert (=> b!4437532 (forall!9666 (toList!3609 lt!1634311) lambda!156552)))

(assert (=> b!4437532 (= lt!1634311 (+!1189 lm!1616 lt!1634309))))

(assert (=> b!4437532 (= lt!1634309 (tuple2!49625 hash!366 newBucket!194))))

(declare-fun lt!1634301 () Unit!83561)

(declare-fun addValidProp!453 (ListLongMap!2259 Int (_ BitVec 64) List!49857) Unit!83561)

(assert (=> b!4437532 (= lt!1634301 (addValidProp!453 lm!1616 lambda!156552 hash!366 newBucket!194))))

(declare-fun b!4437533 () Bool)

(declare-fun Unit!83564 () Unit!83561)

(assert (=> b!4437533 (= e!2763099 Unit!83564)))

(declare-fun lt!1634300 () Unit!83561)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!66 (ListLongMap!2259 K!11100 Hashable!5205) Unit!83561)

(assert (=> b!4437533 (= lt!1634300 (lemmaExtractTailMapContainsThenExtractMapDoes!66 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4437533 false))

(assert (= (and start!433908 res!1836710) b!4437529))

(assert (= (and b!4437529 res!1836718) b!4437526))

(assert (= (and b!4437526 res!1836715) b!4437530))

(assert (= (and b!4437530 res!1836720) b!4437517))

(assert (= (and b!4437517 res!1836714) b!4437522))

(assert (= (and b!4437522 res!1836717) b!4437524))

(assert (= (and b!4437522 (not res!1836709)) b!4437527))

(assert (= (and b!4437522 res!1836713) b!4437525))

(assert (= (and b!4437525 res!1836721) b!4437516))

(assert (= (and b!4437516 res!1836711) b!4437532))

(assert (= (and b!4437532 (not res!1836719)) b!4437518))

(assert (= (and b!4437518 (not res!1836712)) b!4437521))

(assert (= (and b!4437521 c!755289) b!4437533))

(assert (= (and b!4437521 (not c!755289)) b!4437519))

(assert (= (and b!4437521 (not res!1836708)) b!4437528))

(assert (= (and b!4437528 (not res!1836716)) b!4437520))

(assert (= (and start!433908 ((_ is Cons!49733) newBucket!194)) b!4437531))

(assert (= start!433908 b!4437523))

(declare-fun m!5125101 () Bool)

(assert (=> b!4437520 m!5125101))

(declare-fun m!5125103 () Bool)

(assert (=> b!4437520 m!5125103))

(assert (=> b!4437520 m!5125103))

(declare-fun m!5125105 () Bool)

(assert (=> b!4437520 m!5125105))

(declare-fun m!5125107 () Bool)

(assert (=> b!4437520 m!5125107))

(declare-fun m!5125109 () Bool)

(assert (=> b!4437526 m!5125109))

(declare-fun m!5125111 () Bool)

(assert (=> start!433908 m!5125111))

(declare-fun m!5125113 () Bool)

(assert (=> start!433908 m!5125113))

(declare-fun m!5125115 () Bool)

(assert (=> b!4437522 m!5125115))

(declare-fun m!5125117 () Bool)

(assert (=> b!4437533 m!5125117))

(declare-fun m!5125119 () Bool)

(assert (=> b!4437528 m!5125119))

(assert (=> b!4437528 m!5125119))

(declare-fun m!5125121 () Bool)

(assert (=> b!4437528 m!5125121))

(declare-fun m!5125123 () Bool)

(assert (=> b!4437521 m!5125123))

(declare-fun m!5125125 () Bool)

(assert (=> b!4437521 m!5125125))

(declare-fun m!5125127 () Bool)

(assert (=> b!4437521 m!5125127))

(declare-fun m!5125129 () Bool)

(assert (=> b!4437521 m!5125129))

(declare-fun m!5125131 () Bool)

(assert (=> b!4437521 m!5125131))

(declare-fun m!5125133 () Bool)

(assert (=> b!4437521 m!5125133))

(declare-fun m!5125135 () Bool)

(assert (=> b!4437521 m!5125135))

(declare-fun m!5125137 () Bool)

(assert (=> b!4437521 m!5125137))

(assert (=> b!4437521 m!5125123))

(declare-fun m!5125139 () Bool)

(assert (=> b!4437521 m!5125139))

(assert (=> b!4437521 m!5125125))

(declare-fun m!5125141 () Bool)

(assert (=> b!4437521 m!5125141))

(assert (=> b!4437521 m!5125127))

(declare-fun m!5125143 () Bool)

(assert (=> b!4437521 m!5125143))

(declare-fun m!5125145 () Bool)

(assert (=> b!4437532 m!5125145))

(assert (=> b!4437532 m!5125145))

(declare-fun m!5125147 () Bool)

(assert (=> b!4437532 m!5125147))

(declare-fun m!5125149 () Bool)

(assert (=> b!4437532 m!5125149))

(declare-fun m!5125151 () Bool)

(assert (=> b!4437524 m!5125151))

(assert (=> b!4437516 m!5125111))

(declare-fun m!5125153 () Bool)

(assert (=> b!4437530 m!5125153))

(declare-fun m!5125155 () Bool)

(assert (=> b!4437529 m!5125155))

(declare-fun m!5125157 () Bool)

(assert (=> b!4437517 m!5125157))

(declare-fun m!5125159 () Bool)

(assert (=> b!4437517 m!5125159))

(declare-fun m!5125161 () Bool)

(assert (=> b!4437525 m!5125161))

(check-sat (not b!4437531) (not start!433908) tp_is_empty!26489 (not b!4437523) (not b!4437526) (not b!4437528) (not b!4437522) tp_is_empty!26491 (not b!4437530) (not b!4437521) (not b!4437533) (not b!4437520) (not b!4437529) (not b!4437517) (not b!4437524) (not b!4437516) (not b!4437532) (not b!4437525))
(check-sat)
(get-model)

(declare-fun d!1346854 () Bool)

(declare-fun res!1836726 () Bool)

(declare-fun e!2763109 () Bool)

(assert (=> d!1346854 (=> res!1836726 e!2763109)))

(assert (=> d!1346854 (= res!1836726 (and ((_ is Cons!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))) (= (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) key!3717)))))

(assert (=> d!1346854 (= (containsKey!1208 (_2!28106 (h!55447 (toList!3609 lm!1616))) key!3717) e!2763109)))

(declare-fun b!4437538 () Bool)

(declare-fun e!2763110 () Bool)

(assert (=> b!4437538 (= e!2763109 e!2763110)))

(declare-fun res!1836727 () Bool)

(assert (=> b!4437538 (=> (not res!1836727) (not e!2763110))))

(assert (=> b!4437538 (= res!1836727 ((_ is Cons!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(declare-fun b!4437539 () Bool)

(assert (=> b!4437539 (= e!2763110 (containsKey!1208 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) key!3717))))

(assert (= (and d!1346854 (not res!1836726)) b!4437538))

(assert (= (and b!4437538 res!1836727) b!4437539))

(declare-fun m!5125167 () Bool)

(assert (=> b!4437539 m!5125167))

(assert (=> b!4437520 d!1346854))

(declare-fun d!1346856 () Bool)

(declare-fun res!1836728 () Bool)

(declare-fun e!2763111 () Bool)

(assert (=> d!1346856 (=> res!1836728 e!2763111)))

(assert (=> d!1346856 (= res!1836728 (and ((_ is Cons!49733) (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616))))) (= (_1!28105 (h!55446 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))))) key!3717)))))

(assert (=> d!1346856 (= (containsKey!1208 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))) key!3717) e!2763111)))

(declare-fun b!4437540 () Bool)

(declare-fun e!2763112 () Bool)

(assert (=> b!4437540 (= e!2763111 e!2763112)))

(declare-fun res!1836729 () Bool)

(assert (=> b!4437540 (=> (not res!1836729) (not e!2763112))))

(assert (=> b!4437540 (= res!1836729 ((_ is Cons!49733) (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun b!4437541 () Bool)

(assert (=> b!4437541 (= e!2763112 (containsKey!1208 (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616))))) key!3717))))

(assert (= (and d!1346856 (not res!1836728)) b!4437540))

(assert (= (and b!4437540 res!1836729) b!4437541))

(declare-fun m!5125169 () Bool)

(assert (=> b!4437541 m!5125169))

(assert (=> b!4437520 d!1346856))

(declare-fun d!1346858 () Bool)

(declare-datatypes ((Option!10781 0))(
  ( (None!10780) (Some!10780 (v!44002 List!49857)) )
))
(declare-fun get!16218 (Option!10781) List!49857)

(declare-fun getValueByKey!767 (List!49858 (_ BitVec 64)) Option!10781)

(assert (=> d!1346858 (= (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))) (get!16218 (getValueByKey!767 (toList!3609 lm!1616) (_1!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun bs!763038 () Bool)

(assert (= bs!763038 d!1346858))

(declare-fun m!5125171 () Bool)

(assert (=> bs!763038 m!5125171))

(assert (=> bs!763038 m!5125171))

(declare-fun m!5125173 () Bool)

(assert (=> bs!763038 m!5125173))

(assert (=> b!4437520 d!1346858))

(declare-fun bs!763039 () Bool)

(declare-fun d!1346860 () Bool)

(assert (= bs!763039 (and d!1346860 start!433908)))

(declare-fun lambda!156555 () Int)

(assert (=> bs!763039 (= lambda!156555 lambda!156552)))

(assert (=> d!1346860 (not (containsKey!1208 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))) key!3717))))

(declare-fun lt!1634314 () Unit!83561)

(declare-fun choose!28166 (ListLongMap!2259 K!11100 (_ BitVec 64) Hashable!5205) Unit!83561)

(assert (=> d!1346860 (= lt!1634314 (choose!28166 lm!1616 key!3717 (_1!28106 (h!55447 (toList!3609 lm!1616))) hashF!1220))))

(assert (=> d!1346860 (forall!9666 (toList!3609 lm!1616) lambda!156555)))

(assert (=> d!1346860 (= (lemmaNotSameHashThenCannotContainKey!152 lm!1616 key!3717 (_1!28106 (h!55447 (toList!3609 lm!1616))) hashF!1220) lt!1634314)))

(declare-fun bs!763040 () Bool)

(assert (= bs!763040 d!1346860))

(assert (=> bs!763040 m!5125103))

(assert (=> bs!763040 m!5125103))

(assert (=> bs!763040 m!5125105))

(declare-fun m!5125175 () Bool)

(assert (=> bs!763040 m!5125175))

(declare-fun m!5125177 () Bool)

(assert (=> bs!763040 m!5125177))

(assert (=> b!4437520 d!1346860))

(declare-fun bs!763041 () Bool)

(declare-fun d!1346862 () Bool)

(assert (= bs!763041 (and d!1346862 start!433908)))

(declare-fun lambda!156558 () Int)

(assert (=> bs!763041 (not (= lambda!156558 lambda!156552))))

(declare-fun bs!763042 () Bool)

(assert (= bs!763042 (and d!1346862 d!1346860)))

(assert (=> bs!763042 (not (= lambda!156558 lambda!156555))))

(assert (=> d!1346862 true))

(assert (=> d!1346862 (= (allKeysSameHashInMap!917 lm!1616 hashF!1220) (forall!9666 (toList!3609 lm!1616) lambda!156558))))

(declare-fun bs!763043 () Bool)

(assert (= bs!763043 d!1346862))

(declare-fun m!5125179 () Bool)

(assert (=> bs!763043 m!5125179))

(assert (=> b!4437529 d!1346862))

(declare-fun d!1346864 () Bool)

(declare-fun res!1836734 () Bool)

(declare-fun e!2763117 () Bool)

(assert (=> d!1346864 (=> res!1836734 e!2763117)))

(assert (=> d!1346864 (= res!1836734 ((_ is Nil!49734) (toList!3609 lm!1616)))))

(assert (=> d!1346864 (= (forall!9666 (toList!3609 lm!1616) lambda!156552) e!2763117)))

(declare-fun b!4437548 () Bool)

(declare-fun e!2763118 () Bool)

(assert (=> b!4437548 (= e!2763117 e!2763118)))

(declare-fun res!1836735 () Bool)

(assert (=> b!4437548 (=> (not res!1836735) (not e!2763118))))

(declare-fun dynLambda!20896 (Int tuple2!49624) Bool)

(assert (=> b!4437548 (= res!1836735 (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 lm!1616))))))

(declare-fun b!4437549 () Bool)

(assert (=> b!4437549 (= e!2763118 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156552))))

(assert (= (and d!1346864 (not res!1836734)) b!4437548))

(assert (= (and b!4437548 res!1836735) b!4437549))

(declare-fun b_lambda!144701 () Bool)

(assert (=> (not b_lambda!144701) (not b!4437548)))

(declare-fun m!5125181 () Bool)

(assert (=> b!4437548 m!5125181))

(declare-fun m!5125183 () Bool)

(assert (=> b!4437549 m!5125183))

(assert (=> start!433908 d!1346864))

(declare-fun d!1346866 () Bool)

(declare-fun isStrictlySorted!260 (List!49858) Bool)

(assert (=> d!1346866 (= (inv!65286 lm!1616) (isStrictlySorted!260 (toList!3609 lm!1616)))))

(declare-fun bs!763044 () Bool)

(assert (= bs!763044 d!1346866))

(declare-fun m!5125185 () Bool)

(assert (=> bs!763044 m!5125185))

(assert (=> start!433908 d!1346866))

(declare-fun d!1346868 () Bool)

(assert (=> d!1346868 true))

(assert (=> d!1346868 true))

(declare-fun lambda!156561 () Int)

(declare-fun forall!9668 (List!49857 Int) Bool)

(assert (=> d!1346868 (= (allKeysSameHash!771 newBucket!194 hash!366 hashF!1220) (forall!9668 newBucket!194 lambda!156561))))

(declare-fun bs!763045 () Bool)

(assert (= bs!763045 d!1346868))

(declare-fun m!5125187 () Bool)

(assert (=> bs!763045 m!5125187))

(assert (=> b!4437530 d!1346868))

(declare-fun d!1346870 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8004 (List!49857) (InoxSet tuple2!49622))

(assert (=> d!1346870 (= (eq!443 lt!1634308 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303)) (= (content!8004 (toList!3610 lt!1634308)) (content!8004 (toList!3610 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303)))))))

(declare-fun bs!763046 () Bool)

(assert (= bs!763046 d!1346870))

(declare-fun m!5125189 () Bool)

(assert (=> bs!763046 m!5125189))

(declare-fun m!5125191 () Bool)

(assert (=> bs!763046 m!5125191))

(assert (=> b!4437528 d!1346870))

(declare-fun bs!763104 () Bool)

(declare-fun b!4437696 () Bool)

(assert (= bs!763104 (and b!4437696 d!1346868)))

(declare-fun lambda!156643 () Int)

(assert (=> bs!763104 (not (= lambda!156643 lambda!156561))))

(assert (=> b!4437696 true))

(declare-fun bs!763105 () Bool)

(declare-fun b!4437694 () Bool)

(assert (= bs!763105 (and b!4437694 d!1346868)))

(declare-fun lambda!156644 () Int)

(assert (=> bs!763105 (not (= lambda!156644 lambda!156561))))

(declare-fun bs!763106 () Bool)

(assert (= bs!763106 (and b!4437694 b!4437696)))

(assert (=> bs!763106 (= lambda!156644 lambda!156643)))

(assert (=> b!4437694 true))

(declare-fun lambda!156645 () Int)

(assert (=> bs!763105 (not (= lambda!156645 lambda!156561))))

(declare-fun lt!1634523 () ListMap!2853)

(assert (=> bs!763106 (= (= lt!1634523 lt!1634303) (= lambda!156645 lambda!156643))))

(assert (=> b!4437694 (= (= lt!1634523 lt!1634303) (= lambda!156645 lambda!156644))))

(assert (=> b!4437694 true))

(declare-fun bs!763107 () Bool)

(declare-fun d!1346872 () Bool)

(assert (= bs!763107 (and d!1346872 d!1346868)))

(declare-fun lambda!156646 () Int)

(assert (=> bs!763107 (not (= lambda!156646 lambda!156561))))

(declare-fun bs!763108 () Bool)

(assert (= bs!763108 (and d!1346872 b!4437696)))

(declare-fun lt!1634520 () ListMap!2853)

(assert (=> bs!763108 (= (= lt!1634520 lt!1634303) (= lambda!156646 lambda!156643))))

(declare-fun bs!763109 () Bool)

(assert (= bs!763109 (and d!1346872 b!4437694)))

(assert (=> bs!763109 (= (= lt!1634520 lt!1634303) (= lambda!156646 lambda!156644))))

(assert (=> bs!763109 (= (= lt!1634520 lt!1634523) (= lambda!156646 lambda!156645))))

(assert (=> d!1346872 true))

(declare-fun e!2763209 () ListMap!2853)

(assert (=> b!4437694 (= e!2763209 lt!1634523)))

(declare-fun lt!1634524 () ListMap!2853)

(assert (=> b!4437694 (= lt!1634524 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4437694 (= lt!1634523 (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1634515 () Unit!83561)

(declare-fun call!308821 () Unit!83561)

(assert (=> b!4437694 (= lt!1634515 call!308821)))

(declare-fun call!308820 () Bool)

(assert (=> b!4437694 call!308820))

(declare-fun lt!1634525 () Unit!83561)

(assert (=> b!4437694 (= lt!1634525 lt!1634515)))

(declare-fun call!308822 () Bool)

(assert (=> b!4437694 call!308822))

(declare-fun lt!1634511 () Unit!83561)

(declare-fun Unit!83580 () Unit!83561)

(assert (=> b!4437694 (= lt!1634511 Unit!83580)))

(assert (=> b!4437694 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156645)))

(declare-fun lt!1634516 () Unit!83561)

(declare-fun Unit!83581 () Unit!83561)

(assert (=> b!4437694 (= lt!1634516 Unit!83581)))

(declare-fun lt!1634529 () Unit!83561)

(declare-fun Unit!83582 () Unit!83561)

(assert (=> b!4437694 (= lt!1634529 Unit!83582)))

(declare-fun lt!1634512 () Unit!83561)

(declare-fun forallContained!2135 (List!49857 Int tuple2!49622) Unit!83561)

(assert (=> b!4437694 (= lt!1634512 (forallContained!2135 (toList!3610 lt!1634524) lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4437694 (contains!12288 lt!1634524 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun lt!1634514 () Unit!83561)

(declare-fun Unit!83583 () Unit!83561)

(assert (=> b!4437694 (= lt!1634514 Unit!83583)))

(assert (=> b!4437694 (contains!12288 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun lt!1634513 () Unit!83561)

(declare-fun Unit!83584 () Unit!83561)

(assert (=> b!4437694 (= lt!1634513 Unit!83584)))

(assert (=> b!4437694 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156645)))

(declare-fun lt!1634527 () Unit!83561)

(declare-fun Unit!83585 () Unit!83561)

(assert (=> b!4437694 (= lt!1634527 Unit!83585)))

(assert (=> b!4437694 (forall!9668 (toList!3610 lt!1634524) lambda!156645)))

(declare-fun lt!1634530 () Unit!83561)

(declare-fun Unit!83586 () Unit!83561)

(assert (=> b!4437694 (= lt!1634530 Unit!83586)))

(declare-fun lt!1634528 () Unit!83561)

(declare-fun Unit!83587 () Unit!83561)

(assert (=> b!4437694 (= lt!1634528 Unit!83587)))

(declare-fun lt!1634521 () Unit!83561)

(declare-fun addForallContainsKeyThenBeforeAdding!201 (ListMap!2853 ListMap!2853 K!11100 V!11346) Unit!83561)

(assert (=> b!4437694 (= lt!1634521 (addForallContainsKeyThenBeforeAdding!201 lt!1634303 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4437694 (forall!9668 (toList!3610 lt!1634303) lambda!156645)))

(declare-fun lt!1634518 () Unit!83561)

(assert (=> b!4437694 (= lt!1634518 lt!1634521)))

(assert (=> b!4437694 (forall!9668 (toList!3610 lt!1634303) lambda!156645)))

(declare-fun lt!1634522 () Unit!83561)

(declare-fun Unit!83588 () Unit!83561)

(assert (=> b!4437694 (= lt!1634522 Unit!83588)))

(declare-fun res!1836806 () Bool)

(assert (=> b!4437694 (= res!1836806 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156645))))

(declare-fun e!2763208 () Bool)

(assert (=> b!4437694 (=> (not res!1836806) (not e!2763208))))

(assert (=> b!4437694 e!2763208))

(declare-fun lt!1634519 () Unit!83561)

(declare-fun Unit!83589 () Unit!83561)

(assert (=> b!4437694 (= lt!1634519 Unit!83589)))

(declare-fun b!4437695 () Bool)

(declare-fun e!2763210 () Bool)

(declare-fun invariantList!833 (List!49857) Bool)

(assert (=> b!4437695 (= e!2763210 (invariantList!833 (toList!3610 lt!1634520)))))

(declare-fun bm!308815 () Bool)

(declare-fun c!755316 () Bool)

(assert (=> bm!308815 (= call!308822 (forall!9668 (ite c!755316 (toList!3610 lt!1634303) (toList!3610 lt!1634524)) (ite c!755316 lambda!156643 lambda!156645)))))

(declare-fun bm!308816 () Bool)

(assert (=> bm!308816 (= call!308820 (forall!9668 (toList!3610 lt!1634303) (ite c!755316 lambda!156643 lambda!156644)))))

(assert (=> b!4437696 (= e!2763209 lt!1634303)))

(declare-fun lt!1634510 () Unit!83561)

(assert (=> b!4437696 (= lt!1634510 call!308821)))

(assert (=> b!4437696 call!308820))

(declare-fun lt!1634526 () Unit!83561)

(assert (=> b!4437696 (= lt!1634526 lt!1634510)))

(assert (=> b!4437696 call!308822))

(declare-fun lt!1634517 () Unit!83561)

(declare-fun Unit!83591 () Unit!83561)

(assert (=> b!4437696 (= lt!1634517 Unit!83591)))

(assert (=> d!1346872 e!2763210))

(declare-fun res!1836807 () Bool)

(assert (=> d!1346872 (=> (not res!1836807) (not e!2763210))))

(assert (=> d!1346872 (= res!1836807 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156646))))

(assert (=> d!1346872 (= lt!1634520 e!2763209)))

(assert (=> d!1346872 (= c!755316 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> d!1346872 (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616))))))

(assert (=> d!1346872 (= (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303) lt!1634520)))

(declare-fun b!4437697 () Bool)

(assert (=> b!4437697 (= e!2763208 (forall!9668 (toList!3610 lt!1634303) lambda!156645))))

(declare-fun b!4437698 () Bool)

(declare-fun res!1836805 () Bool)

(assert (=> b!4437698 (=> (not res!1836805) (not e!2763210))))

(assert (=> b!4437698 (= res!1836805 (forall!9668 (toList!3610 lt!1634303) lambda!156646))))

(declare-fun bm!308817 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!201 (ListMap!2853) Unit!83561)

(assert (=> bm!308817 (= call!308821 (lemmaContainsAllItsOwnKeys!201 lt!1634303))))

(assert (= (and d!1346872 c!755316) b!4437696))

(assert (= (and d!1346872 (not c!755316)) b!4437694))

(assert (= (and b!4437694 res!1836806) b!4437697))

(assert (= (or b!4437696 b!4437694) bm!308817))

(assert (= (or b!4437696 b!4437694) bm!308816))

(assert (= (or b!4437696 b!4437694) bm!308815))

(assert (= (and d!1346872 res!1836807) b!4437698))

(assert (= (and b!4437698 res!1836805) b!4437695))

(declare-fun m!5125415 () Bool)

(assert (=> bm!308815 m!5125415))

(declare-fun m!5125417 () Bool)

(assert (=> b!4437695 m!5125417))

(declare-fun m!5125419 () Bool)

(assert (=> bm!308817 m!5125419))

(declare-fun m!5125421 () Bool)

(assert (=> b!4437694 m!5125421))

(declare-fun m!5125423 () Bool)

(assert (=> b!4437694 m!5125423))

(declare-fun m!5125425 () Bool)

(assert (=> b!4437694 m!5125425))

(declare-fun m!5125427 () Bool)

(assert (=> b!4437694 m!5125427))

(assert (=> b!4437694 m!5125425))

(declare-fun m!5125429 () Bool)

(assert (=> b!4437694 m!5125429))

(declare-fun m!5125431 () Bool)

(assert (=> b!4437694 m!5125431))

(declare-fun m!5125433 () Bool)

(assert (=> b!4437694 m!5125433))

(assert (=> b!4437694 m!5125431))

(declare-fun m!5125435 () Bool)

(assert (=> b!4437694 m!5125435))

(declare-fun m!5125437 () Bool)

(assert (=> b!4437694 m!5125437))

(assert (=> b!4437694 m!5125429))

(declare-fun m!5125439 () Bool)

(assert (=> b!4437694 m!5125439))

(declare-fun m!5125441 () Bool)

(assert (=> b!4437698 m!5125441))

(declare-fun m!5125443 () Bool)

(assert (=> d!1346872 m!5125443))

(declare-fun m!5125445 () Bool)

(assert (=> d!1346872 m!5125445))

(assert (=> b!4437697 m!5125425))

(declare-fun m!5125447 () Bool)

(assert (=> bm!308816 m!5125447))

(assert (=> b!4437528 d!1346872))

(declare-fun bm!308820 () Bool)

(declare-fun call!308825 () Bool)

(declare-datatypes ((List!49860 0))(
  ( (Nil!49736) (Cons!49736 (h!55451 K!11100) (t!356802 List!49860)) )
))
(declare-fun e!2763224 () List!49860)

(declare-fun contains!12293 (List!49860 K!11100) Bool)

(assert (=> bm!308820 (= call!308825 (contains!12293 e!2763224 key!3717))))

(declare-fun c!755325 () Bool)

(declare-fun c!755323 () Bool)

(assert (=> bm!308820 (= c!755325 c!755323)))

(declare-fun b!4437719 () Bool)

(declare-fun keys!17022 (ListMap!2853) List!49860)

(assert (=> b!4437719 (= e!2763224 (keys!17022 lt!1634308))))

(declare-fun b!4437720 () Bool)

(declare-fun e!2763226 () Unit!83561)

(declare-fun lt!1634550 () Unit!83561)

(assert (=> b!4437720 (= e!2763226 lt!1634550)))

(declare-fun lt!1634549 () Unit!83561)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!676 (List!49857 K!11100) Unit!83561)

(assert (=> b!4437720 (= lt!1634549 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 lt!1634308) key!3717))))

(declare-datatypes ((Option!10782 0))(
  ( (None!10781) (Some!10781 (v!44003 V!11346)) )
))
(declare-fun isDefined!8073 (Option!10782) Bool)

(declare-fun getValueByKey!768 (List!49857 K!11100) Option!10782)

(assert (=> b!4437720 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634308) key!3717))))

(declare-fun lt!1634551 () Unit!83561)

(assert (=> b!4437720 (= lt!1634551 lt!1634549)))

(declare-fun lemmaInListThenGetKeysListContains!277 (List!49857 K!11100) Unit!83561)

(assert (=> b!4437720 (= lt!1634550 (lemmaInListThenGetKeysListContains!277 (toList!3610 lt!1634308) key!3717))))

(assert (=> b!4437720 call!308825))

(declare-fun b!4437721 () Bool)

(declare-fun getKeysList!280 (List!49857) List!49860)

(assert (=> b!4437721 (= e!2763224 (getKeysList!280 (toList!3610 lt!1634308)))))

(declare-fun d!1346938 () Bool)

(declare-fun e!2763223 () Bool)

(assert (=> d!1346938 e!2763223))

(declare-fun res!1836814 () Bool)

(assert (=> d!1346938 (=> res!1836814 e!2763223)))

(declare-fun e!2763228 () Bool)

(assert (=> d!1346938 (= res!1836814 e!2763228)))

(declare-fun res!1836815 () Bool)

(assert (=> d!1346938 (=> (not res!1836815) (not e!2763228))))

(declare-fun lt!1634547 () Bool)

(assert (=> d!1346938 (= res!1836815 (not lt!1634547))))

(declare-fun lt!1634553 () Bool)

(assert (=> d!1346938 (= lt!1634547 lt!1634553)))

(declare-fun lt!1634554 () Unit!83561)

(assert (=> d!1346938 (= lt!1634554 e!2763226)))

(assert (=> d!1346938 (= c!755323 lt!1634553)))

(declare-fun containsKey!1211 (List!49857 K!11100) Bool)

(assert (=> d!1346938 (= lt!1634553 (containsKey!1211 (toList!3610 lt!1634308) key!3717))))

(assert (=> d!1346938 (= (contains!12288 lt!1634308 key!3717) lt!1634547)))

(declare-fun b!4437722 () Bool)

(declare-fun e!2763227 () Unit!83561)

(declare-fun Unit!83592 () Unit!83561)

(assert (=> b!4437722 (= e!2763227 Unit!83592)))

(declare-fun b!4437723 () Bool)

(declare-fun e!2763225 () Bool)

(assert (=> b!4437723 (= e!2763223 e!2763225)))

(declare-fun res!1836816 () Bool)

(assert (=> b!4437723 (=> (not res!1836816) (not e!2763225))))

(assert (=> b!4437723 (= res!1836816 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634308) key!3717)))))

(declare-fun b!4437724 () Bool)

(assert (=> b!4437724 (= e!2763225 (contains!12293 (keys!17022 lt!1634308) key!3717))))

(declare-fun b!4437725 () Bool)

(assert (=> b!4437725 (= e!2763226 e!2763227)))

(declare-fun c!755324 () Bool)

(assert (=> b!4437725 (= c!755324 call!308825)))

(declare-fun b!4437726 () Bool)

(assert (=> b!4437726 (= e!2763228 (not (contains!12293 (keys!17022 lt!1634308) key!3717)))))

(declare-fun b!4437727 () Bool)

(assert (=> b!4437727 false))

(declare-fun lt!1634552 () Unit!83561)

(declare-fun lt!1634548 () Unit!83561)

(assert (=> b!4437727 (= lt!1634552 lt!1634548)))

(assert (=> b!4437727 (containsKey!1211 (toList!3610 lt!1634308) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!278 (List!49857 K!11100) Unit!83561)

(assert (=> b!4437727 (= lt!1634548 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 lt!1634308) key!3717))))

(declare-fun Unit!83593 () Unit!83561)

(assert (=> b!4437727 (= e!2763227 Unit!83593)))

(assert (= (and d!1346938 c!755323) b!4437720))

(assert (= (and d!1346938 (not c!755323)) b!4437725))

(assert (= (and b!4437725 c!755324) b!4437727))

(assert (= (and b!4437725 (not c!755324)) b!4437722))

(assert (= (or b!4437720 b!4437725) bm!308820))

(assert (= (and bm!308820 c!755325) b!4437721))

(assert (= (and bm!308820 (not c!755325)) b!4437719))

(assert (= (and d!1346938 res!1836815) b!4437726))

(assert (= (and d!1346938 (not res!1836814)) b!4437723))

(assert (= (and b!4437723 res!1836816) b!4437724))

(declare-fun m!5125449 () Bool)

(assert (=> d!1346938 m!5125449))

(declare-fun m!5125451 () Bool)

(assert (=> b!4437719 m!5125451))

(declare-fun m!5125453 () Bool)

(assert (=> b!4437723 m!5125453))

(assert (=> b!4437723 m!5125453))

(declare-fun m!5125455 () Bool)

(assert (=> b!4437723 m!5125455))

(assert (=> b!4437726 m!5125451))

(assert (=> b!4437726 m!5125451))

(declare-fun m!5125457 () Bool)

(assert (=> b!4437726 m!5125457))

(declare-fun m!5125459 () Bool)

(assert (=> bm!308820 m!5125459))

(declare-fun m!5125461 () Bool)

(assert (=> b!4437720 m!5125461))

(assert (=> b!4437720 m!5125453))

(assert (=> b!4437720 m!5125453))

(assert (=> b!4437720 m!5125455))

(declare-fun m!5125463 () Bool)

(assert (=> b!4437720 m!5125463))

(assert (=> b!4437727 m!5125449))

(declare-fun m!5125465 () Bool)

(assert (=> b!4437727 m!5125465))

(declare-fun m!5125467 () Bool)

(assert (=> b!4437721 m!5125467))

(assert (=> b!4437724 m!5125451))

(assert (=> b!4437724 m!5125451))

(assert (=> b!4437724 m!5125457))

(assert (=> b!4437517 d!1346938))

(declare-fun bs!763110 () Bool)

(declare-fun d!1346940 () Bool)

(assert (= bs!763110 (and d!1346940 start!433908)))

(declare-fun lambda!156649 () Int)

(assert (=> bs!763110 (= lambda!156649 lambda!156552)))

(declare-fun bs!763111 () Bool)

(assert (= bs!763111 (and d!1346940 d!1346860)))

(assert (=> bs!763111 (= lambda!156649 lambda!156555)))

(declare-fun bs!763112 () Bool)

(assert (= bs!763112 (and d!1346940 d!1346862)))

(assert (=> bs!763112 (not (= lambda!156649 lambda!156558))))

(declare-fun lt!1634557 () ListMap!2853)

(assert (=> d!1346940 (invariantList!833 (toList!3610 lt!1634557))))

(declare-fun e!2763231 () ListMap!2853)

(assert (=> d!1346940 (= lt!1634557 e!2763231)))

(declare-fun c!755328 () Bool)

(assert (=> d!1346940 (= c!755328 ((_ is Cons!49734) (toList!3609 lm!1616)))))

(assert (=> d!1346940 (forall!9666 (toList!3609 lm!1616) lambda!156649)))

(assert (=> d!1346940 (= (extractMap!872 (toList!3609 lm!1616)) lt!1634557)))

(declare-fun b!4437732 () Bool)

(assert (=> b!4437732 (= e!2763231 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))))))

(declare-fun b!4437733 () Bool)

(assert (=> b!4437733 (= e!2763231 (ListMap!2854 Nil!49733))))

(assert (= (and d!1346940 c!755328) b!4437732))

(assert (= (and d!1346940 (not c!755328)) b!4437733))

(declare-fun m!5125469 () Bool)

(assert (=> d!1346940 m!5125469))

(declare-fun m!5125471 () Bool)

(assert (=> d!1346940 m!5125471))

(declare-fun m!5125473 () Bool)

(assert (=> b!4437732 m!5125473))

(assert (=> b!4437732 m!5125473))

(declare-fun m!5125475 () Bool)

(assert (=> b!4437732 m!5125475))

(assert (=> b!4437517 d!1346940))

(assert (=> b!4437516 d!1346864))

(declare-fun d!1346942 () Bool)

(declare-fun res!1836821 () Bool)

(declare-fun e!2763236 () Bool)

(assert (=> d!1346942 (=> res!1836821 e!2763236)))

(assert (=> d!1346942 (= res!1836821 (not ((_ is Cons!49733) newBucket!194)))))

(assert (=> d!1346942 (= (noDuplicateKeys!811 newBucket!194) e!2763236)))

(declare-fun b!4437738 () Bool)

(declare-fun e!2763237 () Bool)

(assert (=> b!4437738 (= e!2763236 e!2763237)))

(declare-fun res!1836822 () Bool)

(assert (=> b!4437738 (=> (not res!1836822) (not e!2763237))))

(assert (=> b!4437738 (= res!1836822 (not (containsKey!1208 (t!356799 newBucket!194) (_1!28105 (h!55446 newBucket!194)))))))

(declare-fun b!4437739 () Bool)

(assert (=> b!4437739 (= e!2763237 (noDuplicateKeys!811 (t!356799 newBucket!194)))))

(assert (= (and d!1346942 (not res!1836821)) b!4437738))

(assert (= (and b!4437738 res!1836822) b!4437739))

(declare-fun m!5125477 () Bool)

(assert (=> b!4437738 m!5125477))

(declare-fun m!5125479 () Bool)

(assert (=> b!4437739 m!5125479))

(assert (=> b!4437525 d!1346942))

(declare-fun d!1346944 () Bool)

(declare-fun hash!2252 (Hashable!5205 K!11100) (_ BitVec 64))

(assert (=> d!1346944 (= (hash!2246 hashF!1220 key!3717) (hash!2252 hashF!1220 key!3717))))

(declare-fun bs!763113 () Bool)

(assert (= bs!763113 d!1346944))

(declare-fun m!5125481 () Bool)

(assert (=> bs!763113 m!5125481))

(assert (=> b!4437526 d!1346944))

(declare-fun d!1346946 () Bool)

(assert (=> d!1346946 (= (apply!11663 lm!1616 hash!366) (get!16218 (getValueByKey!767 (toList!3609 lm!1616) hash!366)))))

(declare-fun bs!763114 () Bool)

(assert (= bs!763114 d!1346946))

(declare-fun m!5125483 () Bool)

(assert (=> bs!763114 m!5125483))

(assert (=> bs!763114 m!5125483))

(declare-fun m!5125485 () Bool)

(assert (=> bs!763114 m!5125485))

(assert (=> b!4437524 d!1346946))

(declare-fun bs!763115 () Bool)

(declare-fun d!1346948 () Bool)

(assert (= bs!763115 (and d!1346948 start!433908)))

(declare-fun lambda!156652 () Int)

(assert (=> bs!763115 (= lambda!156652 lambda!156552)))

(declare-fun bs!763116 () Bool)

(assert (= bs!763116 (and d!1346948 d!1346860)))

(assert (=> bs!763116 (= lambda!156652 lambda!156555)))

(declare-fun bs!763117 () Bool)

(assert (= bs!763117 (and d!1346948 d!1346862)))

(assert (=> bs!763117 (not (= lambda!156652 lambda!156558))))

(declare-fun bs!763118 () Bool)

(assert (= bs!763118 (and d!1346948 d!1346940)))

(assert (=> bs!763118 (= lambda!156652 lambda!156649)))

(assert (=> d!1346948 (contains!12288 (extractMap!872 (toList!3609 lm!1616)) key!3717)))

(declare-fun lt!1634560 () Unit!83561)

(declare-fun choose!28169 (ListLongMap!2259 K!11100 Hashable!5205) Unit!83561)

(assert (=> d!1346948 (= lt!1634560 (choose!28169 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1346948 (forall!9666 (toList!3609 lm!1616) lambda!156652)))

(assert (=> d!1346948 (= (lemmaExtractTailMapContainsThenExtractMapDoes!66 lm!1616 key!3717 hashF!1220) lt!1634560)))

(declare-fun bs!763119 () Bool)

(assert (= bs!763119 d!1346948))

(assert (=> bs!763119 m!5125159))

(assert (=> bs!763119 m!5125159))

(declare-fun m!5125487 () Bool)

(assert (=> bs!763119 m!5125487))

(declare-fun m!5125489 () Bool)

(assert (=> bs!763119 m!5125489))

(declare-fun m!5125491 () Bool)

(assert (=> bs!763119 m!5125491))

(assert (=> b!4437533 d!1346948))

(declare-fun d!1346950 () Bool)

(declare-fun res!1836823 () Bool)

(declare-fun e!2763238 () Bool)

(assert (=> d!1346950 (=> res!1836823 e!2763238)))

(assert (=> d!1346950 (= res!1836823 ((_ is Nil!49734) (toList!3609 lt!1634311)))))

(assert (=> d!1346950 (= (forall!9666 (toList!3609 lt!1634311) lambda!156552) e!2763238)))

(declare-fun b!4437740 () Bool)

(declare-fun e!2763239 () Bool)

(assert (=> b!4437740 (= e!2763238 e!2763239)))

(declare-fun res!1836824 () Bool)

(assert (=> b!4437740 (=> (not res!1836824) (not e!2763239))))

(assert (=> b!4437740 (= res!1836824 (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 lt!1634311))))))

(declare-fun b!4437741 () Bool)

(assert (=> b!4437741 (= e!2763239 (forall!9666 (t!356800 (toList!3609 lt!1634311)) lambda!156552))))

(assert (= (and d!1346950 (not res!1836823)) b!4437740))

(assert (= (and b!4437740 res!1836824) b!4437741))

(declare-fun b_lambda!144715 () Bool)

(assert (=> (not b_lambda!144715) (not b!4437740)))

(declare-fun m!5125493 () Bool)

(assert (=> b!4437740 m!5125493))

(declare-fun m!5125495 () Bool)

(assert (=> b!4437741 m!5125495))

(assert (=> b!4437532 d!1346950))

(declare-fun d!1346952 () Bool)

(declare-fun e!2763242 () Bool)

(assert (=> d!1346952 e!2763242))

(declare-fun res!1836829 () Bool)

(assert (=> d!1346952 (=> (not res!1836829) (not e!2763242))))

(declare-fun lt!1634570 () ListLongMap!2259)

(assert (=> d!1346952 (= res!1836829 (contains!12289 lt!1634570 (_1!28106 lt!1634309)))))

(declare-fun lt!1634569 () List!49858)

(assert (=> d!1346952 (= lt!1634570 (ListLongMap!2260 lt!1634569))))

(declare-fun lt!1634571 () Unit!83561)

(declare-fun lt!1634572 () Unit!83561)

(assert (=> d!1346952 (= lt!1634571 lt!1634572)))

(assert (=> d!1346952 (= (getValueByKey!767 lt!1634569 (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309)))))

(declare-fun lemmaContainsTupThenGetReturnValue!500 (List!49858 (_ BitVec 64) List!49857) Unit!83561)

(assert (=> d!1346952 (= lt!1634572 (lemmaContainsTupThenGetReturnValue!500 lt!1634569 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(declare-fun insertStrictlySorted!288 (List!49858 (_ BitVec 64) List!49857) List!49858)

(assert (=> d!1346952 (= lt!1634569 (insertStrictlySorted!288 (toList!3609 lm!1616) (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(assert (=> d!1346952 (= (+!1189 lm!1616 lt!1634309) lt!1634570)))

(declare-fun b!4437746 () Bool)

(declare-fun res!1836830 () Bool)

(assert (=> b!4437746 (=> (not res!1836830) (not e!2763242))))

(assert (=> b!4437746 (= res!1836830 (= (getValueByKey!767 (toList!3609 lt!1634570) (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309))))))

(declare-fun b!4437747 () Bool)

(declare-fun contains!12294 (List!49858 tuple2!49624) Bool)

(assert (=> b!4437747 (= e!2763242 (contains!12294 (toList!3609 lt!1634570) lt!1634309))))

(assert (= (and d!1346952 res!1836829) b!4437746))

(assert (= (and b!4437746 res!1836830) b!4437747))

(declare-fun m!5125497 () Bool)

(assert (=> d!1346952 m!5125497))

(declare-fun m!5125499 () Bool)

(assert (=> d!1346952 m!5125499))

(declare-fun m!5125501 () Bool)

(assert (=> d!1346952 m!5125501))

(declare-fun m!5125503 () Bool)

(assert (=> d!1346952 m!5125503))

(declare-fun m!5125505 () Bool)

(assert (=> b!4437746 m!5125505))

(declare-fun m!5125507 () Bool)

(assert (=> b!4437747 m!5125507))

(assert (=> b!4437532 d!1346952))

(declare-fun d!1346954 () Bool)

(assert (=> d!1346954 (forall!9666 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194))) lambda!156552)))

(declare-fun lt!1634575 () Unit!83561)

(declare-fun choose!28170 (ListLongMap!2259 Int (_ BitVec 64) List!49857) Unit!83561)

(assert (=> d!1346954 (= lt!1634575 (choose!28170 lm!1616 lambda!156552 hash!366 newBucket!194))))

(declare-fun e!2763245 () Bool)

(assert (=> d!1346954 e!2763245))

(declare-fun res!1836833 () Bool)

(assert (=> d!1346954 (=> (not res!1836833) (not e!2763245))))

(assert (=> d!1346954 (= res!1836833 (forall!9666 (toList!3609 lm!1616) lambda!156552))))

(assert (=> d!1346954 (= (addValidProp!453 lm!1616 lambda!156552 hash!366 newBucket!194) lt!1634575)))

(declare-fun b!4437751 () Bool)

(assert (=> b!4437751 (= e!2763245 (dynLambda!20896 lambda!156552 (tuple2!49625 hash!366 newBucket!194)))))

(assert (= (and d!1346954 res!1836833) b!4437751))

(declare-fun b_lambda!144717 () Bool)

(assert (=> (not b_lambda!144717) (not b!4437751)))

(declare-fun m!5125509 () Bool)

(assert (=> d!1346954 m!5125509))

(declare-fun m!5125511 () Bool)

(assert (=> d!1346954 m!5125511))

(declare-fun m!5125513 () Bool)

(assert (=> d!1346954 m!5125513))

(assert (=> d!1346954 m!5125111))

(declare-fun m!5125515 () Bool)

(assert (=> b!4437751 m!5125515))

(assert (=> b!4437532 d!1346954))

(declare-fun bs!763120 () Bool)

(declare-fun d!1346956 () Bool)

(assert (= bs!763120 (and d!1346956 d!1346862)))

(declare-fun lambda!156655 () Int)

(assert (=> bs!763120 (not (= lambda!156655 lambda!156558))))

(declare-fun bs!763121 () Bool)

(assert (= bs!763121 (and d!1346956 d!1346948)))

(assert (=> bs!763121 (= lambda!156655 lambda!156652)))

(declare-fun bs!763122 () Bool)

(assert (= bs!763122 (and d!1346956 d!1346940)))

(assert (=> bs!763122 (= lambda!156655 lambda!156649)))

(declare-fun bs!763123 () Bool)

(assert (= bs!763123 (and d!1346956 d!1346860)))

(assert (=> bs!763123 (= lambda!156655 lambda!156555)))

(declare-fun bs!763124 () Bool)

(assert (= bs!763124 (and d!1346956 start!433908)))

(assert (=> bs!763124 (= lambda!156655 lambda!156552)))

(assert (=> d!1346956 (eq!443 (extractMap!872 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))) (+!1188 (extractMap!872 (toList!3609 lt!1634306)) (tuple2!49623 key!3717 newValue!93)))))

(declare-fun lt!1634578 () Unit!83561)

(declare-fun choose!28171 (ListLongMap!2259 (_ BitVec 64) List!49857 K!11100 V!11346 Hashable!5205) Unit!83561)

(assert (=> d!1346956 (= lt!1634578 (choose!28171 lt!1634306 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1346956 (forall!9666 (toList!3609 lt!1634306) lambda!156655)))

(assert (=> d!1346956 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!153 lt!1634306 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1634578)))

(declare-fun bs!763125 () Bool)

(assert (= bs!763125 d!1346956))

(declare-fun m!5125517 () Bool)

(assert (=> bs!763125 m!5125517))

(declare-fun m!5125519 () Bool)

(assert (=> bs!763125 m!5125519))

(declare-fun m!5125521 () Bool)

(assert (=> bs!763125 m!5125521))

(declare-fun m!5125523 () Bool)

(assert (=> bs!763125 m!5125523))

(declare-fun m!5125525 () Bool)

(assert (=> bs!763125 m!5125525))

(declare-fun m!5125527 () Bool)

(assert (=> bs!763125 m!5125527))

(assert (=> bs!763125 m!5125517))

(assert (=> bs!763125 m!5125131))

(assert (=> bs!763125 m!5125131))

(assert (=> bs!763125 m!5125519))

(assert (=> b!4437521 d!1346956))

(declare-fun d!1346958 () Bool)

(declare-fun e!2763248 () Bool)

(assert (=> d!1346958 e!2763248))

(declare-fun res!1836838 () Bool)

(assert (=> d!1346958 (=> (not res!1836838) (not e!2763248))))

(declare-fun lt!1634588 () ListMap!2853)

(assert (=> d!1346958 (= res!1836838 (contains!12288 lt!1634588 (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun lt!1634590 () List!49857)

(assert (=> d!1346958 (= lt!1634588 (ListMap!2854 lt!1634590))))

(declare-fun lt!1634587 () Unit!83561)

(declare-fun lt!1634589 () Unit!83561)

(assert (=> d!1346958 (= lt!1634587 lt!1634589)))

(assert (=> d!1346958 (= (getValueByKey!768 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93))) (Some!10781 (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!501 (List!49857 K!11100 V!11346) Unit!83561)

(assert (=> d!1346958 (= lt!1634589 (lemmaContainsTupThenGetReturnValue!501 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!221 (List!49857 K!11100 V!11346) List!49857)

(assert (=> d!1346958 (= lt!1634590 (insertNoDuplicatedKeys!221 (toList!3610 lt!1634303) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> d!1346958 (= (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)) lt!1634588)))

(declare-fun b!4437756 () Bool)

(declare-fun res!1836839 () Bool)

(assert (=> b!4437756 (=> (not res!1836839) (not e!2763248))))

(assert (=> b!4437756 (= res!1836839 (= (getValueByKey!768 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))) (Some!10781 (_2!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun b!4437757 () Bool)

(declare-fun contains!12295 (List!49857 tuple2!49622) Bool)

(assert (=> b!4437757 (= e!2763248 (contains!12295 (toList!3610 lt!1634588) (tuple2!49623 key!3717 newValue!93)))))

(assert (= (and d!1346958 res!1836838) b!4437756))

(assert (= (and b!4437756 res!1836839) b!4437757))

(declare-fun m!5125529 () Bool)

(assert (=> d!1346958 m!5125529))

(declare-fun m!5125531 () Bool)

(assert (=> d!1346958 m!5125531))

(declare-fun m!5125533 () Bool)

(assert (=> d!1346958 m!5125533))

(declare-fun m!5125535 () Bool)

(assert (=> d!1346958 m!5125535))

(declare-fun m!5125537 () Bool)

(assert (=> b!4437756 m!5125537))

(declare-fun m!5125539 () Bool)

(assert (=> b!4437757 m!5125539))

(assert (=> b!4437521 d!1346958))

(declare-fun d!1346960 () Bool)

(declare-fun e!2763249 () Bool)

(assert (=> d!1346960 e!2763249))

(declare-fun res!1836840 () Bool)

(assert (=> d!1346960 (=> (not res!1836840) (not e!2763249))))

(declare-fun lt!1634592 () ListLongMap!2259)

(assert (=> d!1346960 (= res!1836840 (contains!12289 lt!1634592 (_1!28106 lt!1634309)))))

(declare-fun lt!1634591 () List!49858)

(assert (=> d!1346960 (= lt!1634592 (ListLongMap!2260 lt!1634591))))

(declare-fun lt!1634593 () Unit!83561)

(declare-fun lt!1634594 () Unit!83561)

(assert (=> d!1346960 (= lt!1634593 lt!1634594)))

(assert (=> d!1346960 (= (getValueByKey!767 lt!1634591 (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309)))))

(assert (=> d!1346960 (= lt!1634594 (lemmaContainsTupThenGetReturnValue!500 lt!1634591 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(assert (=> d!1346960 (= lt!1634591 (insertStrictlySorted!288 (toList!3609 lt!1634306) (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(assert (=> d!1346960 (= (+!1189 lt!1634306 lt!1634309) lt!1634592)))

(declare-fun b!4437758 () Bool)

(declare-fun res!1836841 () Bool)

(assert (=> b!4437758 (=> (not res!1836841) (not e!2763249))))

(assert (=> b!4437758 (= res!1836841 (= (getValueByKey!767 (toList!3609 lt!1634592) (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309))))))

(declare-fun b!4437759 () Bool)

(assert (=> b!4437759 (= e!2763249 (contains!12294 (toList!3609 lt!1634592) lt!1634309))))

(assert (= (and d!1346960 res!1836840) b!4437758))

(assert (= (and b!4437758 res!1836841) b!4437759))

(declare-fun m!5125541 () Bool)

(assert (=> d!1346960 m!5125541))

(declare-fun m!5125543 () Bool)

(assert (=> d!1346960 m!5125543))

(declare-fun m!5125545 () Bool)

(assert (=> d!1346960 m!5125545))

(declare-fun m!5125547 () Bool)

(assert (=> d!1346960 m!5125547))

(declare-fun m!5125549 () Bool)

(assert (=> b!4437758 m!5125549))

(declare-fun m!5125551 () Bool)

(assert (=> b!4437759 m!5125551))

(assert (=> b!4437521 d!1346960))

(declare-fun bs!763126 () Bool)

(declare-fun d!1346962 () Bool)

(assert (= bs!763126 (and d!1346962 d!1346862)))

(declare-fun lambda!156656 () Int)

(assert (=> bs!763126 (not (= lambda!156656 lambda!156558))))

(declare-fun bs!763127 () Bool)

(assert (= bs!763127 (and d!1346962 d!1346948)))

(assert (=> bs!763127 (= lambda!156656 lambda!156652)))

(declare-fun bs!763128 () Bool)

(assert (= bs!763128 (and d!1346962 d!1346956)))

(assert (=> bs!763128 (= lambda!156656 lambda!156655)))

(declare-fun bs!763129 () Bool)

(assert (= bs!763129 (and d!1346962 d!1346940)))

(assert (=> bs!763129 (= lambda!156656 lambda!156649)))

(declare-fun bs!763130 () Bool)

(assert (= bs!763130 (and d!1346962 d!1346860)))

(assert (=> bs!763130 (= lambda!156656 lambda!156555)))

(declare-fun bs!763131 () Bool)

(assert (= bs!763131 (and d!1346962 start!433908)))

(assert (=> bs!763131 (= lambda!156656 lambda!156552)))

(declare-fun lt!1634595 () ListMap!2853)

(assert (=> d!1346962 (invariantList!833 (toList!3610 lt!1634595))))

(declare-fun e!2763250 () ListMap!2853)

(assert (=> d!1346962 (= lt!1634595 e!2763250)))

(declare-fun c!755329 () Bool)

(assert (=> d!1346962 (= c!755329 ((_ is Cons!49734) (toList!3609 lt!1634306)))))

(assert (=> d!1346962 (forall!9666 (toList!3609 lt!1634306) lambda!156656)))

(assert (=> d!1346962 (= (extractMap!872 (toList!3609 lt!1634306)) lt!1634595)))

(declare-fun b!4437760 () Bool)

(assert (=> b!4437760 (= e!2763250 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))))))

(declare-fun b!4437761 () Bool)

(assert (=> b!4437761 (= e!2763250 (ListMap!2854 Nil!49733))))

(assert (= (and d!1346962 c!755329) b!4437760))

(assert (= (and d!1346962 (not c!755329)) b!4437761))

(declare-fun m!5125553 () Bool)

(assert (=> d!1346962 m!5125553))

(declare-fun m!5125555 () Bool)

(assert (=> d!1346962 m!5125555))

(declare-fun m!5125557 () Bool)

(assert (=> b!4437760 m!5125557))

(assert (=> b!4437760 m!5125557))

(declare-fun m!5125559 () Bool)

(assert (=> b!4437760 m!5125559))

(assert (=> b!4437521 d!1346962))

(declare-fun bs!763132 () Bool)

(declare-fun d!1346964 () Bool)

(assert (= bs!763132 (and d!1346964 d!1346862)))

(declare-fun lambda!156657 () Int)

(assert (=> bs!763132 (not (= lambda!156657 lambda!156558))))

(declare-fun bs!763133 () Bool)

(assert (= bs!763133 (and d!1346964 d!1346948)))

(assert (=> bs!763133 (= lambda!156657 lambda!156652)))

(declare-fun bs!763134 () Bool)

(assert (= bs!763134 (and d!1346964 d!1346956)))

(assert (=> bs!763134 (= lambda!156657 lambda!156655)))

(declare-fun bs!763135 () Bool)

(assert (= bs!763135 (and d!1346964 d!1346940)))

(assert (=> bs!763135 (= lambda!156657 lambda!156649)))

(declare-fun bs!763136 () Bool)

(assert (= bs!763136 (and d!1346964 start!433908)))

(assert (=> bs!763136 (= lambda!156657 lambda!156552)))

(declare-fun bs!763137 () Bool)

(assert (= bs!763137 (and d!1346964 d!1346860)))

(assert (=> bs!763137 (= lambda!156657 lambda!156555)))

(declare-fun bs!763138 () Bool)

(assert (= bs!763138 (and d!1346964 d!1346962)))

(assert (=> bs!763138 (= lambda!156657 lambda!156656)))

(declare-fun lt!1634596 () ListMap!2853)

(assert (=> d!1346964 (invariantList!833 (toList!3610 lt!1634596))))

(declare-fun e!2763251 () ListMap!2853)

(assert (=> d!1346964 (= lt!1634596 e!2763251)))

(declare-fun c!755330 () Bool)

(assert (=> d!1346964 (= c!755330 ((_ is Cons!49734) (toList!3609 (+!1189 lt!1634306 lt!1634309))))))

(assert (=> d!1346964 (forall!9666 (toList!3609 (+!1189 lt!1634306 lt!1634309)) lambda!156657)))

(assert (=> d!1346964 (= (extractMap!872 (toList!3609 (+!1189 lt!1634306 lt!1634309))) lt!1634596)))

(declare-fun b!4437762 () Bool)

(assert (=> b!4437762 (= e!2763251 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))

(declare-fun b!4437763 () Bool)

(assert (=> b!4437763 (= e!2763251 (ListMap!2854 Nil!49733))))

(assert (= (and d!1346964 c!755330) b!4437762))

(assert (= (and d!1346964 (not c!755330)) b!4437763))

(declare-fun m!5125561 () Bool)

(assert (=> d!1346964 m!5125561))

(declare-fun m!5125563 () Bool)

(assert (=> d!1346964 m!5125563))

(declare-fun m!5125565 () Bool)

(assert (=> b!4437762 m!5125565))

(assert (=> b!4437762 m!5125565))

(declare-fun m!5125567 () Bool)

(assert (=> b!4437762 m!5125567))

(assert (=> b!4437521 d!1346964))

(declare-fun d!1346966 () Bool)

(assert (=> d!1346966 (= (tail!7344 lm!1616) (ListLongMap!2260 (tail!7345 (toList!3609 lm!1616))))))

(declare-fun bs!763139 () Bool)

(assert (= bs!763139 d!1346966))

(assert (=> bs!763139 m!5125123))

(assert (=> b!4437521 d!1346966))

(declare-fun bs!763140 () Bool)

(declare-fun d!1346968 () Bool)

(assert (= bs!763140 (and d!1346968 d!1346948)))

(declare-fun lambda!156658 () Int)

(assert (=> bs!763140 (= lambda!156658 lambda!156652)))

(declare-fun bs!763141 () Bool)

(assert (= bs!763141 (and d!1346968 d!1346956)))

(assert (=> bs!763141 (= lambda!156658 lambda!156655)))

(declare-fun bs!763142 () Bool)

(assert (= bs!763142 (and d!1346968 d!1346940)))

(assert (=> bs!763142 (= lambda!156658 lambda!156649)))

(declare-fun bs!763143 () Bool)

(assert (= bs!763143 (and d!1346968 start!433908)))

(assert (=> bs!763143 (= lambda!156658 lambda!156552)))

(declare-fun bs!763144 () Bool)

(assert (= bs!763144 (and d!1346968 d!1346862)))

(assert (=> bs!763144 (not (= lambda!156658 lambda!156558))))

(declare-fun bs!763145 () Bool)

(assert (= bs!763145 (and d!1346968 d!1346964)))

(assert (=> bs!763145 (= lambda!156658 lambda!156657)))

(declare-fun bs!763146 () Bool)

(assert (= bs!763146 (and d!1346968 d!1346860)))

(assert (=> bs!763146 (= lambda!156658 lambda!156555)))

(declare-fun bs!763147 () Bool)

(assert (= bs!763147 (and d!1346968 d!1346962)))

(assert (=> bs!763147 (= lambda!156658 lambda!156656)))

(declare-fun lt!1634597 () ListMap!2853)

(assert (=> d!1346968 (invariantList!833 (toList!3610 lt!1634597))))

(declare-fun e!2763252 () ListMap!2853)

(assert (=> d!1346968 (= lt!1634597 e!2763252)))

(declare-fun c!755331 () Bool)

(assert (=> d!1346968 (= c!755331 ((_ is Cons!49734) (tail!7345 (toList!3609 lm!1616))))))

(assert (=> d!1346968 (forall!9666 (tail!7345 (toList!3609 lm!1616)) lambda!156658)))

(assert (=> d!1346968 (= (extractMap!872 (tail!7345 (toList!3609 lm!1616))) lt!1634597)))

(declare-fun b!4437764 () Bool)

(assert (=> b!4437764 (= e!2763252 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))))))

(declare-fun b!4437765 () Bool)

(assert (=> b!4437765 (= e!2763252 (ListMap!2854 Nil!49733))))

(assert (= (and d!1346968 c!755331) b!4437764))

(assert (= (and d!1346968 (not c!755331)) b!4437765))

(declare-fun m!5125569 () Bool)

(assert (=> d!1346968 m!5125569))

(assert (=> d!1346968 m!5125123))

(declare-fun m!5125571 () Bool)

(assert (=> d!1346968 m!5125571))

(declare-fun m!5125573 () Bool)

(assert (=> b!4437764 m!5125573))

(assert (=> b!4437764 m!5125573))

(declare-fun m!5125575 () Bool)

(assert (=> b!4437764 m!5125575))

(assert (=> b!4437521 d!1346968))

(declare-fun d!1346970 () Bool)

(assert (=> d!1346970 (= (tail!7345 (toList!3609 lm!1616)) (t!356800 (toList!3609 lm!1616)))))

(assert (=> b!4437521 d!1346970))

(declare-fun bm!308821 () Bool)

(declare-fun call!308826 () Bool)

(declare-fun e!2763254 () List!49860)

(assert (=> bm!308821 (= call!308826 (contains!12293 e!2763254 key!3717))))

(declare-fun c!755334 () Bool)

(declare-fun c!755332 () Bool)

(assert (=> bm!308821 (= c!755334 c!755332)))

(declare-fun b!4437766 () Bool)

(assert (=> b!4437766 (= e!2763254 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))

(declare-fun b!4437767 () Bool)

(declare-fun e!2763256 () Unit!83561)

(declare-fun lt!1634601 () Unit!83561)

(assert (=> b!4437767 (= e!2763256 lt!1634601)))

(declare-fun lt!1634600 () Unit!83561)

(assert (=> b!4437767 (= lt!1634600 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> b!4437767 (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(declare-fun lt!1634602 () Unit!83561)

(assert (=> b!4437767 (= lt!1634602 lt!1634600)))

(assert (=> b!4437767 (= lt!1634601 (lemmaInListThenGetKeysListContains!277 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> b!4437767 call!308826))

(declare-fun b!4437768 () Bool)

(assert (=> b!4437768 (= e!2763254 (getKeysList!280 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))

(declare-fun d!1346972 () Bool)

(declare-fun e!2763253 () Bool)

(assert (=> d!1346972 e!2763253))

(declare-fun res!1836842 () Bool)

(assert (=> d!1346972 (=> res!1836842 e!2763253)))

(declare-fun e!2763258 () Bool)

(assert (=> d!1346972 (= res!1836842 e!2763258)))

(declare-fun res!1836843 () Bool)

(assert (=> d!1346972 (=> (not res!1836843) (not e!2763258))))

(declare-fun lt!1634598 () Bool)

(assert (=> d!1346972 (= res!1836843 (not lt!1634598))))

(declare-fun lt!1634604 () Bool)

(assert (=> d!1346972 (= lt!1634598 lt!1634604)))

(declare-fun lt!1634605 () Unit!83561)

(assert (=> d!1346972 (= lt!1634605 e!2763256)))

(assert (=> d!1346972 (= c!755332 lt!1634604)))

(assert (=> d!1346972 (= lt!1634604 (containsKey!1211 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> d!1346972 (= (contains!12288 (extractMap!872 (tail!7345 (toList!3609 lm!1616))) key!3717) lt!1634598)))

(declare-fun b!4437769 () Bool)

(declare-fun e!2763257 () Unit!83561)

(declare-fun Unit!83594 () Unit!83561)

(assert (=> b!4437769 (= e!2763257 Unit!83594)))

(declare-fun b!4437770 () Bool)

(declare-fun e!2763255 () Bool)

(assert (=> b!4437770 (= e!2763253 e!2763255)))

(declare-fun res!1836844 () Bool)

(assert (=> b!4437770 (=> (not res!1836844) (not e!2763255))))

(assert (=> b!4437770 (= res!1836844 (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717)))))

(declare-fun b!4437771 () Bool)

(assert (=> b!4437771 (= e!2763255 (contains!12293 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(declare-fun b!4437772 () Bool)

(assert (=> b!4437772 (= e!2763256 e!2763257)))

(declare-fun c!755333 () Bool)

(assert (=> b!4437772 (= c!755333 call!308826)))

(declare-fun b!4437773 () Bool)

(assert (=> b!4437773 (= e!2763258 (not (contains!12293 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717)))))

(declare-fun b!4437774 () Bool)

(assert (=> b!4437774 false))

(declare-fun lt!1634603 () Unit!83561)

(declare-fun lt!1634599 () Unit!83561)

(assert (=> b!4437774 (= lt!1634603 lt!1634599)))

(assert (=> b!4437774 (containsKey!1211 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717)))

(assert (=> b!4437774 (= lt!1634599 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(declare-fun Unit!83595 () Unit!83561)

(assert (=> b!4437774 (= e!2763257 Unit!83595)))

(assert (= (and d!1346972 c!755332) b!4437767))

(assert (= (and d!1346972 (not c!755332)) b!4437772))

(assert (= (and b!4437772 c!755333) b!4437774))

(assert (= (and b!4437772 (not c!755333)) b!4437769))

(assert (= (or b!4437767 b!4437772) bm!308821))

(assert (= (and bm!308821 c!755334) b!4437768))

(assert (= (and bm!308821 (not c!755334)) b!4437766))

(assert (= (and d!1346972 res!1836843) b!4437773))

(assert (= (and d!1346972 (not res!1836842)) b!4437770))

(assert (= (and b!4437770 res!1836844) b!4437771))

(declare-fun m!5125577 () Bool)

(assert (=> d!1346972 m!5125577))

(assert (=> b!4437766 m!5125125))

(declare-fun m!5125579 () Bool)

(assert (=> b!4437766 m!5125579))

(declare-fun m!5125581 () Bool)

(assert (=> b!4437770 m!5125581))

(assert (=> b!4437770 m!5125581))

(declare-fun m!5125583 () Bool)

(assert (=> b!4437770 m!5125583))

(assert (=> b!4437773 m!5125125))

(assert (=> b!4437773 m!5125579))

(assert (=> b!4437773 m!5125579))

(declare-fun m!5125585 () Bool)

(assert (=> b!4437773 m!5125585))

(declare-fun m!5125587 () Bool)

(assert (=> bm!308821 m!5125587))

(declare-fun m!5125589 () Bool)

(assert (=> b!4437767 m!5125589))

(assert (=> b!4437767 m!5125581))

(assert (=> b!4437767 m!5125581))

(assert (=> b!4437767 m!5125583))

(declare-fun m!5125591 () Bool)

(assert (=> b!4437767 m!5125591))

(assert (=> b!4437774 m!5125577))

(declare-fun m!5125593 () Bool)

(assert (=> b!4437774 m!5125593))

(declare-fun m!5125595 () Bool)

(assert (=> b!4437768 m!5125595))

(assert (=> b!4437771 m!5125125))

(assert (=> b!4437771 m!5125579))

(assert (=> b!4437771 m!5125579))

(assert (=> b!4437771 m!5125585))

(assert (=> b!4437521 d!1346972))

(declare-fun d!1346974 () Bool)

(assert (=> d!1346974 (= (eq!443 lt!1634310 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93))) (= (content!8004 (toList!3610 lt!1634310)) (content!8004 (toList!3610 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93))))))))

(declare-fun bs!763148 () Bool)

(assert (= bs!763148 d!1346974))

(declare-fun m!5125597 () Bool)

(assert (=> bs!763148 m!5125597))

(declare-fun m!5125599 () Bool)

(assert (=> bs!763148 m!5125599))

(assert (=> b!4437521 d!1346974))

(declare-fun d!1346976 () Bool)

(declare-fun head!9278 (List!49858) tuple2!49624)

(assert (=> d!1346976 (= (head!9276 lm!1616) (head!9278 (toList!3609 lm!1616)))))

(declare-fun bs!763149 () Bool)

(assert (= bs!763149 d!1346976))

(declare-fun m!5125601 () Bool)

(assert (=> bs!763149 m!5125601))

(assert (=> b!4437521 d!1346976))

(declare-fun d!1346978 () Bool)

(declare-fun e!2763264 () Bool)

(assert (=> d!1346978 e!2763264))

(declare-fun res!1836847 () Bool)

(assert (=> d!1346978 (=> res!1836847 e!2763264)))

(declare-fun lt!1634617 () Bool)

(assert (=> d!1346978 (= res!1836847 (not lt!1634617))))

(declare-fun lt!1634615 () Bool)

(assert (=> d!1346978 (= lt!1634617 lt!1634615)))

(declare-fun lt!1634616 () Unit!83561)

(declare-fun e!2763263 () Unit!83561)

(assert (=> d!1346978 (= lt!1634616 e!2763263)))

(declare-fun c!755337 () Bool)

(assert (=> d!1346978 (= c!755337 lt!1634615)))

(declare-fun containsKey!1212 (List!49858 (_ BitVec 64)) Bool)

(assert (=> d!1346978 (= lt!1634615 (containsKey!1212 (toList!3609 lm!1616) hash!366))))

(assert (=> d!1346978 (= (contains!12289 lm!1616 hash!366) lt!1634617)))

(declare-fun b!4437781 () Bool)

(declare-fun lt!1634614 () Unit!83561)

(assert (=> b!4437781 (= e!2763263 lt!1634614)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!677 (List!49858 (_ BitVec 64)) Unit!83561)

(assert (=> b!4437781 (= lt!1634614 (lemmaContainsKeyImpliesGetValueByKeyDefined!677 (toList!3609 lm!1616) hash!366))))

(declare-fun isDefined!8074 (Option!10781) Bool)

(assert (=> b!4437781 (isDefined!8074 (getValueByKey!767 (toList!3609 lm!1616) hash!366))))

(declare-fun b!4437782 () Bool)

(declare-fun Unit!83596 () Unit!83561)

(assert (=> b!4437782 (= e!2763263 Unit!83596)))

(declare-fun b!4437783 () Bool)

(assert (=> b!4437783 (= e!2763264 (isDefined!8074 (getValueByKey!767 (toList!3609 lm!1616) hash!366)))))

(assert (= (and d!1346978 c!755337) b!4437781))

(assert (= (and d!1346978 (not c!755337)) b!4437782))

(assert (= (and d!1346978 (not res!1836847)) b!4437783))

(declare-fun m!5125603 () Bool)

(assert (=> d!1346978 m!5125603))

(declare-fun m!5125605 () Bool)

(assert (=> b!4437781 m!5125605))

(assert (=> b!4437781 m!5125483))

(assert (=> b!4437781 m!5125483))

(declare-fun m!5125607 () Bool)

(assert (=> b!4437781 m!5125607))

(assert (=> b!4437783 m!5125483))

(assert (=> b!4437783 m!5125483))

(assert (=> b!4437783 m!5125607))

(assert (=> b!4437522 d!1346978))

(declare-fun e!2763267 () Bool)

(declare-fun tp!1333906 () Bool)

(declare-fun b!4437788 () Bool)

(assert (=> b!4437788 (= e!2763267 (and tp_is_empty!26491 tp_is_empty!26489 tp!1333906))))

(assert (=> b!4437531 (= tp!1333894 e!2763267)))

(assert (= (and b!4437531 ((_ is Cons!49733) (t!356799 newBucket!194))) b!4437788))

(declare-fun b!4437793 () Bool)

(declare-fun e!2763270 () Bool)

(declare-fun tp!1333911 () Bool)

(declare-fun tp!1333912 () Bool)

(assert (=> b!4437793 (= e!2763270 (and tp!1333911 tp!1333912))))

(assert (=> b!4437523 (= tp!1333893 e!2763270)))

(assert (= (and b!4437523 ((_ is Cons!49734) (toList!3609 lm!1616))) b!4437793))

(declare-fun b_lambda!144719 () Bool)

(assert (= b_lambda!144717 (or start!433908 b_lambda!144719)))

(declare-fun bs!763150 () Bool)

(declare-fun d!1346980 () Bool)

(assert (= bs!763150 (and d!1346980 start!433908)))

(assert (=> bs!763150 (= (dynLambda!20896 lambda!156552 (tuple2!49625 hash!366 newBucket!194)) (noDuplicateKeys!811 (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(declare-fun m!5125609 () Bool)

(assert (=> bs!763150 m!5125609))

(assert (=> b!4437751 d!1346980))

(declare-fun b_lambda!144721 () Bool)

(assert (= b_lambda!144701 (or start!433908 b_lambda!144721)))

(declare-fun bs!763151 () Bool)

(declare-fun d!1346982 () Bool)

(assert (= bs!763151 (and d!1346982 start!433908)))

(assert (=> bs!763151 (= (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 lm!1616))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> bs!763151 m!5125445))

(assert (=> b!4437548 d!1346982))

(declare-fun b_lambda!144723 () Bool)

(assert (= b_lambda!144715 (or start!433908 b_lambda!144723)))

(declare-fun bs!763152 () Bool)

(declare-fun d!1346984 () Bool)

(assert (= bs!763152 (and d!1346984 start!433908)))

(assert (=> bs!763152 (= (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 lt!1634311))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lt!1634311)))))))

(declare-fun m!5125611 () Bool)

(assert (=> bs!763152 m!5125611))

(assert (=> b!4437740 d!1346984))

(check-sat (not b!4437758) (not d!1346862) (not d!1346974) (not b!4437723) (not b!4437727) (not b!4437720) (not b!4437697) (not d!1346860) (not b!4437747) (not b!4437788) tp_is_empty!26489 (not bm!308815) (not b!4437549) (not bs!763150) (not b!4437781) (not b!4437774) (not b!4437741) (not b!4437760) (not b!4437721) (not b!4437768) (not b!4437724) (not b!4437732) (not d!1346946) (not d!1346958) (not d!1346964) (not d!1346952) (not d!1346872) (not b!4437738) (not d!1346976) (not d!1346972) (not b!4437739) (not b_lambda!144719) (not d!1346966) (not b!4437762) (not b!4437757) (not d!1346948) (not d!1346940) (not d!1346962) (not d!1346866) (not b!4437783) (not bm!308817) (not b!4437539) (not b!4437767) (not bm!308821) (not d!1346868) (not b_lambda!144721) (not d!1346960) (not bm!308816) (not b!4437793) (not b!4437756) tp_is_empty!26491 (not b!4437698) (not b!4437766) (not d!1346944) (not b_lambda!144723) (not d!1346870) (not d!1346956) (not b!4437759) (not b!4437773) (not b!4437771) (not bs!763151) (not b!4437695) (not b!4437719) (not b!4437746) (not b!4437541) (not d!1346968) (not bs!763152) (not d!1346858) (not b!4437694) (not d!1346938) (not b!4437726) (not b!4437770) (not d!1346978) (not d!1346954) (not bm!308820) (not b!4437764))
(check-sat)
(get-model)

(declare-fun d!1346994 () Bool)

(declare-fun lt!1634645 () Bool)

(declare-fun content!8005 (List!49860) (InoxSet K!11100))

(assert (=> d!1346994 (= lt!1634645 (select (content!8005 (keys!17022 lt!1634308)) key!3717))))

(declare-fun e!2763289 () Bool)

(assert (=> d!1346994 (= lt!1634645 e!2763289)))

(declare-fun res!1836866 () Bool)

(assert (=> d!1346994 (=> (not res!1836866) (not e!2763289))))

(assert (=> d!1346994 (= res!1836866 ((_ is Cons!49736) (keys!17022 lt!1634308)))))

(assert (=> d!1346994 (= (contains!12293 (keys!17022 lt!1634308) key!3717) lt!1634645)))

(declare-fun b!4437815 () Bool)

(declare-fun e!2763290 () Bool)

(assert (=> b!4437815 (= e!2763289 e!2763290)))

(declare-fun res!1836865 () Bool)

(assert (=> b!4437815 (=> res!1836865 e!2763290)))

(assert (=> b!4437815 (= res!1836865 (= (h!55451 (keys!17022 lt!1634308)) key!3717))))

(declare-fun b!4437816 () Bool)

(assert (=> b!4437816 (= e!2763290 (contains!12293 (t!356802 (keys!17022 lt!1634308)) key!3717))))

(assert (= (and d!1346994 res!1836866) b!4437815))

(assert (= (and b!4437815 (not res!1836865)) b!4437816))

(assert (=> d!1346994 m!5125451))

(declare-fun m!5125675 () Bool)

(assert (=> d!1346994 m!5125675))

(declare-fun m!5125677 () Bool)

(assert (=> d!1346994 m!5125677))

(declare-fun m!5125679 () Bool)

(assert (=> b!4437816 m!5125679))

(assert (=> b!4437724 d!1346994))

(declare-fun b!4437824 () Bool)

(assert (=> b!4437824 true))

(declare-fun d!1347004 () Bool)

(declare-fun e!2763293 () Bool)

(assert (=> d!1347004 e!2763293))

(declare-fun res!1836875 () Bool)

(assert (=> d!1347004 (=> (not res!1836875) (not e!2763293))))

(declare-fun lt!1634650 () List!49860)

(declare-fun noDuplicate!673 (List!49860) Bool)

(assert (=> d!1347004 (= res!1836875 (noDuplicate!673 lt!1634650))))

(assert (=> d!1347004 (= lt!1634650 (getKeysList!280 (toList!3610 lt!1634308)))))

(assert (=> d!1347004 (= (keys!17022 lt!1634308) lt!1634650)))

(declare-fun b!4437823 () Bool)

(declare-fun res!1836874 () Bool)

(assert (=> b!4437823 (=> (not res!1836874) (not e!2763293))))

(declare-fun length!202 (List!49860) Int)

(declare-fun length!203 (List!49857) Int)

(assert (=> b!4437823 (= res!1836874 (= (length!202 lt!1634650) (length!203 (toList!3610 lt!1634308))))))

(declare-fun res!1836873 () Bool)

(assert (=> b!4437824 (=> (not res!1836873) (not e!2763293))))

(declare-fun lambda!156668 () Int)

(declare-fun forall!9669 (List!49860 Int) Bool)

(assert (=> b!4437824 (= res!1836873 (forall!9669 lt!1634650 lambda!156668))))

(declare-fun b!4437825 () Bool)

(declare-fun lambda!156669 () Int)

(declare-fun map!10876 (List!49857 Int) List!49860)

(assert (=> b!4437825 (= e!2763293 (= (content!8005 lt!1634650) (content!8005 (map!10876 (toList!3610 lt!1634308) lambda!156669))))))

(assert (= (and d!1347004 res!1836875) b!4437823))

(assert (= (and b!4437823 res!1836874) b!4437824))

(assert (= (and b!4437824 res!1836873) b!4437825))

(declare-fun m!5125681 () Bool)

(assert (=> d!1347004 m!5125681))

(assert (=> d!1347004 m!5125467))

(declare-fun m!5125683 () Bool)

(assert (=> b!4437823 m!5125683))

(declare-fun m!5125685 () Bool)

(assert (=> b!4437823 m!5125685))

(declare-fun m!5125687 () Bool)

(assert (=> b!4437824 m!5125687))

(declare-fun m!5125689 () Bool)

(assert (=> b!4437825 m!5125689))

(declare-fun m!5125691 () Bool)

(assert (=> b!4437825 m!5125691))

(assert (=> b!4437825 m!5125691))

(declare-fun m!5125693 () Bool)

(assert (=> b!4437825 m!5125693))

(assert (=> b!4437724 d!1347004))

(declare-fun d!1347006 () Bool)

(declare-fun lt!1634654 () Bool)

(assert (=> d!1347006 (= lt!1634654 (select (content!8004 (toList!3610 lt!1634588)) (tuple2!49623 key!3717 newValue!93)))))

(declare-fun e!2763299 () Bool)

(assert (=> d!1347006 (= lt!1634654 e!2763299)))

(declare-fun res!1836881 () Bool)

(assert (=> d!1347006 (=> (not res!1836881) (not e!2763299))))

(assert (=> d!1347006 (= res!1836881 ((_ is Cons!49733) (toList!3610 lt!1634588)))))

(assert (=> d!1347006 (= (contains!12295 (toList!3610 lt!1634588) (tuple2!49623 key!3717 newValue!93)) lt!1634654)))

(declare-fun b!4437832 () Bool)

(declare-fun e!2763298 () Bool)

(assert (=> b!4437832 (= e!2763299 e!2763298)))

(declare-fun res!1836880 () Bool)

(assert (=> b!4437832 (=> res!1836880 e!2763298)))

(assert (=> b!4437832 (= res!1836880 (= (h!55446 (toList!3610 lt!1634588)) (tuple2!49623 key!3717 newValue!93)))))

(declare-fun b!4437833 () Bool)

(assert (=> b!4437833 (= e!2763298 (contains!12295 (t!356799 (toList!3610 lt!1634588)) (tuple2!49623 key!3717 newValue!93)))))

(assert (= (and d!1347006 res!1836881) b!4437832))

(assert (= (and b!4437832 (not res!1836880)) b!4437833))

(declare-fun m!5125695 () Bool)

(assert (=> d!1347006 m!5125695))

(declare-fun m!5125697 () Bool)

(assert (=> d!1347006 m!5125697))

(declare-fun m!5125699 () Bool)

(assert (=> b!4437833 m!5125699))

(assert (=> b!4437757 d!1347006))

(declare-fun bs!763187 () Bool)

(declare-fun b!4437836 () Bool)

(assert (= bs!763187 (and b!4437836 d!1346868)))

(declare-fun lambda!156673 () Int)

(assert (=> bs!763187 (not (= lambda!156673 lambda!156561))))

(declare-fun bs!763188 () Bool)

(assert (= bs!763188 (and b!4437836 d!1346872)))

(assert (=> bs!763188 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634520) (= lambda!156673 lambda!156646))))

(declare-fun bs!763189 () Bool)

(assert (= bs!763189 (and b!4437836 b!4437694)))

(assert (=> bs!763189 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634523) (= lambda!156673 lambda!156645))))

(assert (=> bs!763189 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634303) (= lambda!156673 lambda!156644))))

(declare-fun bs!763190 () Bool)

(assert (= bs!763190 (and b!4437836 b!4437696)))

(assert (=> bs!763190 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634303) (= lambda!156673 lambda!156643))))

(assert (=> b!4437836 true))

(declare-fun bs!763191 () Bool)

(declare-fun b!4437834 () Bool)

(assert (= bs!763191 (and b!4437834 d!1346868)))

(declare-fun lambda!156674 () Int)

(assert (=> bs!763191 (not (= lambda!156674 lambda!156561))))

(declare-fun bs!763192 () Bool)

(assert (= bs!763192 (and b!4437834 b!4437836)))

(assert (=> bs!763192 (= lambda!156674 lambda!156673)))

(declare-fun bs!763193 () Bool)

(assert (= bs!763193 (and b!4437834 d!1346872)))

(assert (=> bs!763193 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634520) (= lambda!156674 lambda!156646))))

(declare-fun bs!763194 () Bool)

(assert (= bs!763194 (and b!4437834 b!4437694)))

(assert (=> bs!763194 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634523) (= lambda!156674 lambda!156645))))

(assert (=> bs!763194 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634303) (= lambda!156674 lambda!156644))))

(declare-fun bs!763195 () Bool)

(assert (= bs!763195 (and b!4437834 b!4437696)))

(assert (=> bs!763195 (= (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634303) (= lambda!156674 lambda!156643))))

(assert (=> b!4437834 true))

(declare-fun lambda!156675 () Int)

(assert (=> bs!763191 (not (= lambda!156675 lambda!156561))))

(declare-fun lt!1634668 () ListMap!2853)

(assert (=> bs!763192 (= (= lt!1634668 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156675 lambda!156673))))

(assert (=> b!4437834 (= (= lt!1634668 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156675 lambda!156674))))

(assert (=> bs!763193 (= (= lt!1634668 lt!1634520) (= lambda!156675 lambda!156646))))

(assert (=> bs!763194 (= (= lt!1634668 lt!1634523) (= lambda!156675 lambda!156645))))

(assert (=> bs!763194 (= (= lt!1634668 lt!1634303) (= lambda!156675 lambda!156644))))

(assert (=> bs!763195 (= (= lt!1634668 lt!1634303) (= lambda!156675 lambda!156643))))

(assert (=> b!4437834 true))

(declare-fun bs!763196 () Bool)

(declare-fun d!1347008 () Bool)

(assert (= bs!763196 (and d!1347008 d!1346868)))

(declare-fun lambda!156676 () Int)

(assert (=> bs!763196 (not (= lambda!156676 lambda!156561))))

(declare-fun bs!763197 () Bool)

(assert (= bs!763197 (and d!1347008 b!4437836)))

(declare-fun lt!1634665 () ListMap!2853)

(assert (=> bs!763197 (= (= lt!1634665 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156676 lambda!156673))))

(declare-fun bs!763198 () Bool)

(assert (= bs!763198 (and d!1347008 b!4437834)))

(assert (=> bs!763198 (= (= lt!1634665 lt!1634668) (= lambda!156676 lambda!156675))))

(assert (=> bs!763198 (= (= lt!1634665 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156676 lambda!156674))))

(declare-fun bs!763199 () Bool)

(assert (= bs!763199 (and d!1347008 d!1346872)))

(assert (=> bs!763199 (= (= lt!1634665 lt!1634520) (= lambda!156676 lambda!156646))))

(declare-fun bs!763200 () Bool)

(assert (= bs!763200 (and d!1347008 b!4437694)))

(assert (=> bs!763200 (= (= lt!1634665 lt!1634523) (= lambda!156676 lambda!156645))))

(assert (=> bs!763200 (= (= lt!1634665 lt!1634303) (= lambda!156676 lambda!156644))))

(declare-fun bs!763201 () Bool)

(assert (= bs!763201 (and d!1347008 b!4437696)))

(assert (=> bs!763201 (= (= lt!1634665 lt!1634303) (= lambda!156676 lambda!156643))))

(assert (=> d!1347008 true))

(declare-fun e!2763301 () ListMap!2853)

(assert (=> b!4437834 (= e!2763301 lt!1634668)))

(declare-fun lt!1634669 () ListMap!2853)

(assert (=> b!4437834 (= lt!1634669 (+!1188 (extractMap!872 (t!356800 (toList!3609 lm!1616))) (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4437834 (= lt!1634668 (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) (+!1188 (extractMap!872 (t!356800 (toList!3609 lm!1616))) (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1634660 () Unit!83561)

(declare-fun call!308831 () Unit!83561)

(assert (=> b!4437834 (= lt!1634660 call!308831)))

(declare-fun call!308830 () Bool)

(assert (=> b!4437834 call!308830))

(declare-fun lt!1634670 () Unit!83561)

(assert (=> b!4437834 (= lt!1634670 lt!1634660)))

(declare-fun call!308832 () Bool)

(assert (=> b!4437834 call!308832))

(declare-fun lt!1634656 () Unit!83561)

(declare-fun Unit!83606 () Unit!83561)

(assert (=> b!4437834 (= lt!1634656 Unit!83606)))

(assert (=> b!4437834 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156675)))

(declare-fun lt!1634661 () Unit!83561)

(declare-fun Unit!83607 () Unit!83561)

(assert (=> b!4437834 (= lt!1634661 Unit!83607)))

(declare-fun lt!1634674 () Unit!83561)

(declare-fun Unit!83608 () Unit!83561)

(assert (=> b!4437834 (= lt!1634674 Unit!83608)))

(declare-fun lt!1634657 () Unit!83561)

(assert (=> b!4437834 (= lt!1634657 (forallContained!2135 (toList!3610 lt!1634669) lambda!156675 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4437834 (contains!12288 lt!1634669 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun lt!1634659 () Unit!83561)

(declare-fun Unit!83610 () Unit!83561)

(assert (=> b!4437834 (= lt!1634659 Unit!83610)))

(assert (=> b!4437834 (contains!12288 lt!1634668 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun lt!1634658 () Unit!83561)

(declare-fun Unit!83612 () Unit!83561)

(assert (=> b!4437834 (= lt!1634658 Unit!83612)))

(assert (=> b!4437834 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156675)))

(declare-fun lt!1634672 () Unit!83561)

(declare-fun Unit!83613 () Unit!83561)

(assert (=> b!4437834 (= lt!1634672 Unit!83613)))

(assert (=> b!4437834 (forall!9668 (toList!3610 lt!1634669) lambda!156675)))

(declare-fun lt!1634675 () Unit!83561)

(declare-fun Unit!83614 () Unit!83561)

(assert (=> b!4437834 (= lt!1634675 Unit!83614)))

(declare-fun lt!1634673 () Unit!83561)

(declare-fun Unit!83615 () Unit!83561)

(assert (=> b!4437834 (= lt!1634673 Unit!83615)))

(declare-fun lt!1634666 () Unit!83561)

(assert (=> b!4437834 (= lt!1634666 (addForallContainsKeyThenBeforeAdding!201 (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634668 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4437834 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) lambda!156675)))

(declare-fun lt!1634663 () Unit!83561)

(assert (=> b!4437834 (= lt!1634663 lt!1634666)))

(assert (=> b!4437834 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) lambda!156675)))

(declare-fun lt!1634667 () Unit!83561)

(declare-fun Unit!83616 () Unit!83561)

(assert (=> b!4437834 (= lt!1634667 Unit!83616)))

(declare-fun res!1836883 () Bool)

(assert (=> b!4437834 (= res!1836883 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156675))))

(declare-fun e!2763300 () Bool)

(assert (=> b!4437834 (=> (not res!1836883) (not e!2763300))))

(assert (=> b!4437834 e!2763300))

(declare-fun lt!1634664 () Unit!83561)

(declare-fun Unit!83617 () Unit!83561)

(assert (=> b!4437834 (= lt!1634664 Unit!83617)))

(declare-fun b!4437835 () Bool)

(declare-fun e!2763302 () Bool)

(assert (=> b!4437835 (= e!2763302 (invariantList!833 (toList!3610 lt!1634665)))))

(declare-fun bm!308825 () Bool)

(declare-fun c!755340 () Bool)

(assert (=> bm!308825 (= call!308832 (forall!9668 (ite c!755340 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (toList!3610 lt!1634669)) (ite c!755340 lambda!156673 lambda!156675)))))

(declare-fun bm!308826 () Bool)

(assert (=> bm!308826 (= call!308830 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (ite c!755340 lambda!156673 lambda!156674)))))

(assert (=> b!4437836 (= e!2763301 (extractMap!872 (t!356800 (toList!3609 lm!1616))))))

(declare-fun lt!1634655 () Unit!83561)

(assert (=> b!4437836 (= lt!1634655 call!308831)))

(assert (=> b!4437836 call!308830))

(declare-fun lt!1634671 () Unit!83561)

(assert (=> b!4437836 (= lt!1634671 lt!1634655)))

(assert (=> b!4437836 call!308832))

(declare-fun lt!1634662 () Unit!83561)

(declare-fun Unit!83618 () Unit!83561)

(assert (=> b!4437836 (= lt!1634662 Unit!83618)))

(assert (=> d!1347008 e!2763302))

(declare-fun res!1836884 () Bool)

(assert (=> d!1347008 (=> (not res!1836884) (not e!2763302))))

(assert (=> d!1347008 (= res!1836884 (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156676))))

(assert (=> d!1347008 (= lt!1634665 e!2763301)))

(assert (=> d!1347008 (= c!755340 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> d!1347008 (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616))))))

(assert (=> d!1347008 (= (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) lt!1634665)))

(declare-fun b!4437837 () Bool)

(assert (=> b!4437837 (= e!2763300 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) lambda!156675))))

(declare-fun b!4437838 () Bool)

(declare-fun res!1836882 () Bool)

(assert (=> b!4437838 (=> (not res!1836882) (not e!2763302))))

(assert (=> b!4437838 (= res!1836882 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) lambda!156676))))

(declare-fun bm!308827 () Bool)

(assert (=> bm!308827 (= call!308831 (lemmaContainsAllItsOwnKeys!201 (extractMap!872 (t!356800 (toList!3609 lm!1616)))))))

(assert (= (and d!1347008 c!755340) b!4437836))

(assert (= (and d!1347008 (not c!755340)) b!4437834))

(assert (= (and b!4437834 res!1836883) b!4437837))

(assert (= (or b!4437836 b!4437834) bm!308827))

(assert (= (or b!4437836 b!4437834) bm!308826))

(assert (= (or b!4437836 b!4437834) bm!308825))

(assert (= (and d!1347008 res!1836884) b!4437838))

(assert (= (and b!4437838 res!1836882) b!4437835))

(declare-fun m!5125707 () Bool)

(assert (=> bm!308825 m!5125707))

(declare-fun m!5125711 () Bool)

(assert (=> b!4437835 m!5125711))

(assert (=> bm!308827 m!5125473))

(declare-fun m!5125713 () Bool)

(assert (=> bm!308827 m!5125713))

(declare-fun m!5125717 () Bool)

(assert (=> b!4437834 m!5125717))

(assert (=> b!4437834 m!5125473))

(declare-fun m!5125721 () Bool)

(assert (=> b!4437834 m!5125721))

(declare-fun m!5125723 () Bool)

(assert (=> b!4437834 m!5125723))

(declare-fun m!5125725 () Bool)

(assert (=> b!4437834 m!5125725))

(assert (=> b!4437834 m!5125723))

(declare-fun m!5125727 () Bool)

(assert (=> b!4437834 m!5125727))

(declare-fun m!5125729 () Bool)

(assert (=> b!4437834 m!5125729))

(declare-fun m!5125731 () Bool)

(assert (=> b!4437834 m!5125731))

(assert (=> b!4437834 m!5125473))

(assert (=> b!4437834 m!5125729))

(declare-fun m!5125733 () Bool)

(assert (=> b!4437834 m!5125733))

(declare-fun m!5125735 () Bool)

(assert (=> b!4437834 m!5125735))

(assert (=> b!4437834 m!5125727))

(declare-fun m!5125737 () Bool)

(assert (=> b!4437834 m!5125737))

(declare-fun m!5125739 () Bool)

(assert (=> b!4437838 m!5125739))

(declare-fun m!5125741 () Bool)

(assert (=> d!1347008 m!5125741))

(assert (=> d!1347008 m!5125445))

(assert (=> b!4437837 m!5125723))

(declare-fun m!5125743 () Bool)

(assert (=> bm!308826 m!5125743))

(assert (=> b!4437732 d!1347008))

(declare-fun bs!763202 () Bool)

(declare-fun d!1347016 () Bool)

(assert (= bs!763202 (and d!1347016 d!1346948)))

(declare-fun lambda!156677 () Int)

(assert (=> bs!763202 (= lambda!156677 lambda!156652)))

(declare-fun bs!763203 () Bool)

(assert (= bs!763203 (and d!1347016 d!1346956)))

(assert (=> bs!763203 (= lambda!156677 lambda!156655)))

(declare-fun bs!763204 () Bool)

(assert (= bs!763204 (and d!1347016 d!1346940)))

(assert (=> bs!763204 (= lambda!156677 lambda!156649)))

(declare-fun bs!763205 () Bool)

(assert (= bs!763205 (and d!1347016 start!433908)))

(assert (=> bs!763205 (= lambda!156677 lambda!156552)))

(declare-fun bs!763206 () Bool)

(assert (= bs!763206 (and d!1347016 d!1346968)))

(assert (=> bs!763206 (= lambda!156677 lambda!156658)))

(declare-fun bs!763207 () Bool)

(assert (= bs!763207 (and d!1347016 d!1346862)))

(assert (=> bs!763207 (not (= lambda!156677 lambda!156558))))

(declare-fun bs!763208 () Bool)

(assert (= bs!763208 (and d!1347016 d!1346964)))

(assert (=> bs!763208 (= lambda!156677 lambda!156657)))

(declare-fun bs!763209 () Bool)

(assert (= bs!763209 (and d!1347016 d!1346860)))

(assert (=> bs!763209 (= lambda!156677 lambda!156555)))

(declare-fun bs!763210 () Bool)

(assert (= bs!763210 (and d!1347016 d!1346962)))

(assert (=> bs!763210 (= lambda!156677 lambda!156656)))

(declare-fun lt!1634679 () ListMap!2853)

(assert (=> d!1347016 (invariantList!833 (toList!3610 lt!1634679))))

(declare-fun e!2763311 () ListMap!2853)

(assert (=> d!1347016 (= lt!1634679 e!2763311)))

(declare-fun c!755341 () Bool)

(assert (=> d!1347016 (= c!755341 ((_ is Cons!49734) (t!356800 (toList!3609 lm!1616))))))

(assert (=> d!1347016 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156677)))

(assert (=> d!1347016 (= (extractMap!872 (t!356800 (toList!3609 lm!1616))) lt!1634679)))

(declare-fun b!4437847 () Bool)

(assert (=> b!4437847 (= e!2763311 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (t!356800 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (t!356800 (toList!3609 lm!1616))))))))

(declare-fun b!4437848 () Bool)

(assert (=> b!4437848 (= e!2763311 (ListMap!2854 Nil!49733))))

(assert (= (and d!1347016 c!755341) b!4437847))

(assert (= (and d!1347016 (not c!755341)) b!4437848))

(declare-fun m!5125745 () Bool)

(assert (=> d!1347016 m!5125745))

(declare-fun m!5125747 () Bool)

(assert (=> d!1347016 m!5125747))

(declare-fun m!5125749 () Bool)

(assert (=> b!4437847 m!5125749))

(assert (=> b!4437847 m!5125749))

(declare-fun m!5125751 () Bool)

(assert (=> b!4437847 m!5125751))

(assert (=> b!4437732 d!1347016))

(declare-fun d!1347018 () Bool)

(declare-fun res!1836897 () Bool)

(declare-fun e!2763316 () Bool)

(assert (=> d!1347018 (=> res!1836897 e!2763316)))

(assert (=> d!1347018 (= res!1836897 (and ((_ is Cons!49733) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) key!3717)))))

(assert (=> d!1347018 (= (containsKey!1211 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) e!2763316)))

(declare-fun b!4437853 () Bool)

(declare-fun e!2763317 () Bool)

(assert (=> b!4437853 (= e!2763316 e!2763317)))

(declare-fun res!1836898 () Bool)

(assert (=> b!4437853 (=> (not res!1836898) (not e!2763317))))

(assert (=> b!4437853 (= res!1836898 ((_ is Cons!49733) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))

(declare-fun b!4437854 () Bool)

(assert (=> b!4437854 (= e!2763317 (containsKey!1211 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717))))

(assert (= (and d!1347018 (not res!1836897)) b!4437853))

(assert (= (and b!4437853 res!1836898) b!4437854))

(declare-fun m!5125753 () Bool)

(assert (=> b!4437854 m!5125753))

(assert (=> b!4437774 d!1347018))

(declare-fun d!1347020 () Bool)

(assert (=> d!1347020 (containsKey!1211 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717)))

(declare-fun lt!1634682 () Unit!83561)

(declare-fun choose!28172 (List!49857 K!11100) Unit!83561)

(assert (=> d!1347020 (= lt!1634682 (choose!28172 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> d!1347020 (invariantList!833 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347020 (= (lemmaInGetKeysListThenContainsKey!278 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) lt!1634682)))

(declare-fun bs!763211 () Bool)

(assert (= bs!763211 d!1347020))

(assert (=> bs!763211 m!5125577))

(declare-fun m!5125755 () Bool)

(assert (=> bs!763211 m!5125755))

(declare-fun m!5125757 () Bool)

(assert (=> bs!763211 m!5125757))

(assert (=> b!4437774 d!1347020))

(declare-fun d!1347022 () Bool)

(declare-fun res!1836899 () Bool)

(declare-fun e!2763318 () Bool)

(assert (=> d!1347022 (=> res!1836899 e!2763318)))

(assert (=> d!1347022 (= res!1836899 (not ((_ is Cons!49733) (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> d!1347022 (= (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616)))) e!2763318)))

(declare-fun b!4437855 () Bool)

(declare-fun e!2763319 () Bool)

(assert (=> b!4437855 (= e!2763318 e!2763319)))

(declare-fun res!1836900 () Bool)

(assert (=> b!4437855 (=> (not res!1836900) (not e!2763319))))

(assert (=> b!4437855 (= res!1836900 (not (containsKey!1208 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4437856 () Bool)

(assert (=> b!4437856 (= e!2763319 (noDuplicateKeys!811 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (= (and d!1347022 (not res!1836899)) b!4437855))

(assert (= (and b!4437855 res!1836900) b!4437856))

(declare-fun m!5125759 () Bool)

(assert (=> b!4437855 m!5125759))

(declare-fun m!5125761 () Bool)

(assert (=> b!4437856 m!5125761))

(assert (=> bs!763151 d!1347022))

(declare-fun bs!763212 () Bool)

(declare-fun b!4437859 () Bool)

(assert (= bs!763212 (and b!4437859 d!1346868)))

(declare-fun lambda!156678 () Int)

(assert (=> bs!763212 (not (= lambda!156678 lambda!156561))))

(declare-fun bs!763213 () Bool)

(assert (= bs!763213 (and b!4437859 d!1347008)))

(assert (=> bs!763213 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634665) (= lambda!156678 lambda!156676))))

(declare-fun bs!763214 () Bool)

(assert (= bs!763214 (and b!4437859 b!4437836)))

(assert (=> bs!763214 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156678 lambda!156673))))

(declare-fun bs!763215 () Bool)

(assert (= bs!763215 (and b!4437859 b!4437834)))

(assert (=> bs!763215 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634668) (= lambda!156678 lambda!156675))))

(assert (=> bs!763215 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156678 lambda!156674))))

(declare-fun bs!763216 () Bool)

(assert (= bs!763216 (and b!4437859 d!1346872)))

(assert (=> bs!763216 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634520) (= lambda!156678 lambda!156646))))

(declare-fun bs!763217 () Bool)

(assert (= bs!763217 (and b!4437859 b!4437694)))

(assert (=> bs!763217 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634523) (= lambda!156678 lambda!156645))))

(assert (=> bs!763217 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634303) (= lambda!156678 lambda!156644))))

(declare-fun bs!763218 () Bool)

(assert (= bs!763218 (and b!4437859 b!4437696)))

(assert (=> bs!763218 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634303) (= lambda!156678 lambda!156643))))

(assert (=> b!4437859 true))

(declare-fun bs!763219 () Bool)

(declare-fun b!4437857 () Bool)

(assert (= bs!763219 (and b!4437857 d!1346868)))

(declare-fun lambda!156681 () Int)

(assert (=> bs!763219 (not (= lambda!156681 lambda!156561))))

(declare-fun bs!763220 () Bool)

(assert (= bs!763220 (and b!4437857 b!4437859)))

(assert (=> bs!763220 (= lambda!156681 lambda!156678)))

(declare-fun bs!763221 () Bool)

(assert (= bs!763221 (and b!4437857 d!1347008)))

(assert (=> bs!763221 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634665) (= lambda!156681 lambda!156676))))

(declare-fun bs!763222 () Bool)

(assert (= bs!763222 (and b!4437857 b!4437836)))

(assert (=> bs!763222 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156681 lambda!156673))))

(declare-fun bs!763223 () Bool)

(assert (= bs!763223 (and b!4437857 b!4437834)))

(assert (=> bs!763223 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634668) (= lambda!156681 lambda!156675))))

(assert (=> bs!763223 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156681 lambda!156674))))

(declare-fun bs!763224 () Bool)

(assert (= bs!763224 (and b!4437857 d!1346872)))

(assert (=> bs!763224 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634520) (= lambda!156681 lambda!156646))))

(declare-fun bs!763225 () Bool)

(assert (= bs!763225 (and b!4437857 b!4437694)))

(assert (=> bs!763225 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634523) (= lambda!156681 lambda!156645))))

(assert (=> bs!763225 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634303) (= lambda!156681 lambda!156644))))

(declare-fun bs!763226 () Bool)

(assert (= bs!763226 (and b!4437857 b!4437696)))

(assert (=> bs!763226 (= (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634303) (= lambda!156681 lambda!156643))))

(assert (=> b!4437857 true))

(declare-fun lt!1634698 () ListMap!2853)

(declare-fun lambda!156684 () Int)

(assert (=> bs!763220 (= (= lt!1634698 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156684 lambda!156678))))

(assert (=> bs!763221 (= (= lt!1634698 lt!1634665) (= lambda!156684 lambda!156676))))

(assert (=> bs!763222 (= (= lt!1634698 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156684 lambda!156673))))

(assert (=> bs!763223 (= (= lt!1634698 lt!1634668) (= lambda!156684 lambda!156675))))

(assert (=> bs!763223 (= (= lt!1634698 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156684 lambda!156674))))

(assert (=> bs!763224 (= (= lt!1634698 lt!1634520) (= lambda!156684 lambda!156646))))

(assert (=> bs!763225 (= (= lt!1634698 lt!1634523) (= lambda!156684 lambda!156645))))

(assert (=> bs!763225 (= (= lt!1634698 lt!1634303) (= lambda!156684 lambda!156644))))

(assert (=> bs!763226 (= (= lt!1634698 lt!1634303) (= lambda!156684 lambda!156643))))

(assert (=> b!4437857 (= (= lt!1634698 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156684 lambda!156681))))

(assert (=> bs!763219 (not (= lambda!156684 lambda!156561))))

(assert (=> b!4437857 true))

(declare-fun bs!763227 () Bool)

(declare-fun d!1347024 () Bool)

(assert (= bs!763227 (and d!1347024 b!4437857)))

(declare-fun lambda!156685 () Int)

(declare-fun lt!1634695 () ListMap!2853)

(assert (=> bs!763227 (= (= lt!1634695 lt!1634698) (= lambda!156685 lambda!156684))))

(declare-fun bs!763228 () Bool)

(assert (= bs!763228 (and d!1347024 b!4437859)))

(assert (=> bs!763228 (= (= lt!1634695 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156685 lambda!156678))))

(declare-fun bs!763229 () Bool)

(assert (= bs!763229 (and d!1347024 d!1347008)))

(assert (=> bs!763229 (= (= lt!1634695 lt!1634665) (= lambda!156685 lambda!156676))))

(declare-fun bs!763230 () Bool)

(assert (= bs!763230 (and d!1347024 b!4437836)))

(assert (=> bs!763230 (= (= lt!1634695 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156685 lambda!156673))))

(declare-fun bs!763231 () Bool)

(assert (= bs!763231 (and d!1347024 b!4437834)))

(assert (=> bs!763231 (= (= lt!1634695 lt!1634668) (= lambda!156685 lambda!156675))))

(assert (=> bs!763231 (= (= lt!1634695 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156685 lambda!156674))))

(declare-fun bs!763232 () Bool)

(assert (= bs!763232 (and d!1347024 d!1346872)))

(assert (=> bs!763232 (= (= lt!1634695 lt!1634520) (= lambda!156685 lambda!156646))))

(declare-fun bs!763233 () Bool)

(assert (= bs!763233 (and d!1347024 b!4437694)))

(assert (=> bs!763233 (= (= lt!1634695 lt!1634523) (= lambda!156685 lambda!156645))))

(assert (=> bs!763233 (= (= lt!1634695 lt!1634303) (= lambda!156685 lambda!156644))))

(declare-fun bs!763234 () Bool)

(assert (= bs!763234 (and d!1347024 b!4437696)))

(assert (=> bs!763234 (= (= lt!1634695 lt!1634303) (= lambda!156685 lambda!156643))))

(assert (=> bs!763227 (= (= lt!1634695 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156685 lambda!156681))))

(declare-fun bs!763235 () Bool)

(assert (= bs!763235 (and d!1347024 d!1346868)))

(assert (=> bs!763235 (not (= lambda!156685 lambda!156561))))

(assert (=> d!1347024 true))

(declare-fun e!2763321 () ListMap!2853)

(assert (=> b!4437857 (= e!2763321 lt!1634698)))

(declare-fun lt!1634699 () ListMap!2853)

(assert (=> b!4437857 (= lt!1634699 (+!1188 (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306))))))))

(assert (=> b!4437857 (= lt!1634698 (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (toList!3609 lt!1634306)))) (+!1188 (extractMap!872 (t!356800 (toList!3609 lt!1634306))) (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306)))))))))

(declare-fun lt!1634690 () Unit!83561)

(declare-fun call!308834 () Unit!83561)

(assert (=> b!4437857 (= lt!1634690 call!308834)))

(declare-fun call!308833 () Bool)

(assert (=> b!4437857 call!308833))

(declare-fun lt!1634700 () Unit!83561)

(assert (=> b!4437857 (= lt!1634700 lt!1634690)))

(declare-fun call!308835 () Bool)

(assert (=> b!4437857 call!308835))

(declare-fun lt!1634686 () Unit!83561)

(declare-fun Unit!83619 () Unit!83561)

(assert (=> b!4437857 (= lt!1634686 Unit!83619)))

(assert (=> b!4437857 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lt!1634306)))) lambda!156684)))

(declare-fun lt!1634691 () Unit!83561)

(declare-fun Unit!83620 () Unit!83561)

(assert (=> b!4437857 (= lt!1634691 Unit!83620)))

(declare-fun lt!1634704 () Unit!83561)

(declare-fun Unit!83621 () Unit!83561)

(assert (=> b!4437857 (= lt!1634704 Unit!83621)))

(declare-fun lt!1634687 () Unit!83561)

(assert (=> b!4437857 (= lt!1634687 (forallContained!2135 (toList!3610 lt!1634699) lambda!156684 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306))))))))

(assert (=> b!4437857 (contains!12288 lt!1634699 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306))))))))

(declare-fun lt!1634689 () Unit!83561)

(declare-fun Unit!83622 () Unit!83561)

(assert (=> b!4437857 (= lt!1634689 Unit!83622)))

(assert (=> b!4437857 (contains!12288 lt!1634698 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306))))))))

(declare-fun lt!1634688 () Unit!83561)

(declare-fun Unit!83623 () Unit!83561)

(assert (=> b!4437857 (= lt!1634688 Unit!83623)))

(assert (=> b!4437857 (forall!9668 (_2!28106 (h!55447 (toList!3609 lt!1634306))) lambda!156684)))

(declare-fun lt!1634702 () Unit!83561)

(declare-fun Unit!83624 () Unit!83561)

(assert (=> b!4437857 (= lt!1634702 Unit!83624)))

(assert (=> b!4437857 (forall!9668 (toList!3610 lt!1634699) lambda!156684)))

(declare-fun lt!1634705 () Unit!83561)

(declare-fun Unit!83625 () Unit!83561)

(assert (=> b!4437857 (= lt!1634705 Unit!83625)))

(declare-fun lt!1634703 () Unit!83561)

(declare-fun Unit!83626 () Unit!83561)

(assert (=> b!4437857 (= lt!1634703 Unit!83626)))

(declare-fun lt!1634696 () Unit!83561)

(assert (=> b!4437857 (= lt!1634696 (addForallContainsKeyThenBeforeAdding!201 (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634698 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634306)))))))))

(assert (=> b!4437857 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) lambda!156684)))

(declare-fun lt!1634693 () Unit!83561)

(assert (=> b!4437857 (= lt!1634693 lt!1634696)))

(assert (=> b!4437857 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) lambda!156684)))

(declare-fun lt!1634697 () Unit!83561)

(declare-fun Unit!83627 () Unit!83561)

(assert (=> b!4437857 (= lt!1634697 Unit!83627)))

(declare-fun res!1836902 () Bool)

(assert (=> b!4437857 (= res!1836902 (forall!9668 (_2!28106 (h!55447 (toList!3609 lt!1634306))) lambda!156684))))

(declare-fun e!2763320 () Bool)

(assert (=> b!4437857 (=> (not res!1836902) (not e!2763320))))

(assert (=> b!4437857 e!2763320))

(declare-fun lt!1634694 () Unit!83561)

(declare-fun Unit!83628 () Unit!83561)

(assert (=> b!4437857 (= lt!1634694 Unit!83628)))

(declare-fun b!4437858 () Bool)

(declare-fun e!2763322 () Bool)

(assert (=> b!4437858 (= e!2763322 (invariantList!833 (toList!3610 lt!1634695)))))

(declare-fun bm!308828 () Bool)

(declare-fun c!755342 () Bool)

(assert (=> bm!308828 (= call!308835 (forall!9668 (ite c!755342 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (toList!3610 lt!1634699)) (ite c!755342 lambda!156678 lambda!156684)))))

(declare-fun bm!308829 () Bool)

(assert (=> bm!308829 (= call!308833 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (ite c!755342 lambda!156678 lambda!156681)))))

(assert (=> b!4437859 (= e!2763321 (extractMap!872 (t!356800 (toList!3609 lt!1634306))))))

(declare-fun lt!1634685 () Unit!83561)

(assert (=> b!4437859 (= lt!1634685 call!308834)))

(assert (=> b!4437859 call!308833))

(declare-fun lt!1634701 () Unit!83561)

(assert (=> b!4437859 (= lt!1634701 lt!1634685)))

(assert (=> b!4437859 call!308835))

(declare-fun lt!1634692 () Unit!83561)

(declare-fun Unit!83630 () Unit!83561)

(assert (=> b!4437859 (= lt!1634692 Unit!83630)))

(assert (=> d!1347024 e!2763322))

(declare-fun res!1836903 () Bool)

(assert (=> d!1347024 (=> (not res!1836903) (not e!2763322))))

(assert (=> d!1347024 (= res!1836903 (forall!9668 (_2!28106 (h!55447 (toList!3609 lt!1634306))) lambda!156685))))

(assert (=> d!1347024 (= lt!1634695 e!2763321)))

(assert (=> d!1347024 (= c!755342 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 lt!1634306)))))))

(assert (=> d!1347024 (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lt!1634306))))))

(assert (=> d!1347024 (= (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lt!1634306))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) lt!1634695)))

(declare-fun b!4437860 () Bool)

(assert (=> b!4437860 (= e!2763320 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) lambda!156684))))

(declare-fun b!4437861 () Bool)

(declare-fun res!1836901 () Bool)

(assert (=> b!4437861 (=> (not res!1836901) (not e!2763322))))

(assert (=> b!4437861 (= res!1836901 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) lambda!156685))))

(declare-fun bm!308830 () Bool)

(assert (=> bm!308830 (= call!308834 (lemmaContainsAllItsOwnKeys!201 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))))))

(assert (= (and d!1347024 c!755342) b!4437859))

(assert (= (and d!1347024 (not c!755342)) b!4437857))

(assert (= (and b!4437857 res!1836902) b!4437860))

(assert (= (or b!4437859 b!4437857) bm!308830))

(assert (= (or b!4437859 b!4437857) bm!308829))

(assert (= (or b!4437859 b!4437857) bm!308828))

(assert (= (and d!1347024 res!1836903) b!4437861))

(assert (= (and b!4437861 res!1836901) b!4437858))

(declare-fun m!5125765 () Bool)

(assert (=> bm!308828 m!5125765))

(declare-fun m!5125767 () Bool)

(assert (=> b!4437858 m!5125767))

(assert (=> bm!308830 m!5125557))

(declare-fun m!5125769 () Bool)

(assert (=> bm!308830 m!5125769))

(declare-fun m!5125773 () Bool)

(assert (=> b!4437857 m!5125773))

(assert (=> b!4437857 m!5125557))

(declare-fun m!5125777 () Bool)

(assert (=> b!4437857 m!5125777))

(declare-fun m!5125781 () Bool)

(assert (=> b!4437857 m!5125781))

(declare-fun m!5125785 () Bool)

(assert (=> b!4437857 m!5125785))

(assert (=> b!4437857 m!5125781))

(declare-fun m!5125789 () Bool)

(assert (=> b!4437857 m!5125789))

(declare-fun m!5125791 () Bool)

(assert (=> b!4437857 m!5125791))

(declare-fun m!5125793 () Bool)

(assert (=> b!4437857 m!5125793))

(assert (=> b!4437857 m!5125557))

(assert (=> b!4437857 m!5125791))

(declare-fun m!5125797 () Bool)

(assert (=> b!4437857 m!5125797))

(declare-fun m!5125799 () Bool)

(assert (=> b!4437857 m!5125799))

(assert (=> b!4437857 m!5125789))

(declare-fun m!5125801 () Bool)

(assert (=> b!4437857 m!5125801))

(declare-fun m!5125803 () Bool)

(assert (=> b!4437861 m!5125803))

(declare-fun m!5125805 () Bool)

(assert (=> d!1347024 m!5125805))

(declare-fun m!5125807 () Bool)

(assert (=> d!1347024 m!5125807))

(assert (=> b!4437860 m!5125781))

(declare-fun m!5125809 () Bool)

(assert (=> bm!308829 m!5125809))

(assert (=> b!4437760 d!1347024))

(declare-fun bs!763236 () Bool)

(declare-fun d!1347028 () Bool)

(assert (= bs!763236 (and d!1347028 d!1346948)))

(declare-fun lambda!156688 () Int)

(assert (=> bs!763236 (= lambda!156688 lambda!156652)))

(declare-fun bs!763237 () Bool)

(assert (= bs!763237 (and d!1347028 d!1346956)))

(assert (=> bs!763237 (= lambda!156688 lambda!156655)))

(declare-fun bs!763238 () Bool)

(assert (= bs!763238 (and d!1347028 d!1346940)))

(assert (=> bs!763238 (= lambda!156688 lambda!156649)))

(declare-fun bs!763239 () Bool)

(assert (= bs!763239 (and d!1347028 d!1347016)))

(assert (=> bs!763239 (= lambda!156688 lambda!156677)))

(declare-fun bs!763240 () Bool)

(assert (= bs!763240 (and d!1347028 start!433908)))

(assert (=> bs!763240 (= lambda!156688 lambda!156552)))

(declare-fun bs!763241 () Bool)

(assert (= bs!763241 (and d!1347028 d!1346968)))

(assert (=> bs!763241 (= lambda!156688 lambda!156658)))

(declare-fun bs!763242 () Bool)

(assert (= bs!763242 (and d!1347028 d!1346862)))

(assert (=> bs!763242 (not (= lambda!156688 lambda!156558))))

(declare-fun bs!763243 () Bool)

(assert (= bs!763243 (and d!1347028 d!1346964)))

(assert (=> bs!763243 (= lambda!156688 lambda!156657)))

(declare-fun bs!763244 () Bool)

(assert (= bs!763244 (and d!1347028 d!1346860)))

(assert (=> bs!763244 (= lambda!156688 lambda!156555)))

(declare-fun bs!763245 () Bool)

(assert (= bs!763245 (and d!1347028 d!1346962)))

(assert (=> bs!763245 (= lambda!156688 lambda!156656)))

(declare-fun lt!1634707 () ListMap!2853)

(assert (=> d!1347028 (invariantList!833 (toList!3610 lt!1634707))))

(declare-fun e!2763326 () ListMap!2853)

(assert (=> d!1347028 (= lt!1634707 e!2763326)))

(declare-fun c!755343 () Bool)

(assert (=> d!1347028 (= c!755343 ((_ is Cons!49734) (t!356800 (toList!3609 lt!1634306))))))

(assert (=> d!1347028 (forall!9666 (t!356800 (toList!3609 lt!1634306)) lambda!156688)))

(assert (=> d!1347028 (= (extractMap!872 (t!356800 (toList!3609 lt!1634306))) lt!1634707)))

(declare-fun b!4437873 () Bool)

(assert (=> b!4437873 (= e!2763326 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (t!356800 (toList!3609 lt!1634306)))) (extractMap!872 (t!356800 (t!356800 (toList!3609 lt!1634306))))))))

(declare-fun b!4437874 () Bool)

(assert (=> b!4437874 (= e!2763326 (ListMap!2854 Nil!49733))))

(assert (= (and d!1347028 c!755343) b!4437873))

(assert (= (and d!1347028 (not c!755343)) b!4437874))

(declare-fun m!5125811 () Bool)

(assert (=> d!1347028 m!5125811))

(declare-fun m!5125813 () Bool)

(assert (=> d!1347028 m!5125813))

(declare-fun m!5125815 () Bool)

(assert (=> b!4437873 m!5125815))

(assert (=> b!4437873 m!5125815))

(declare-fun m!5125817 () Bool)

(assert (=> b!4437873 m!5125817))

(assert (=> b!4437760 d!1347028))

(declare-fun d!1347030 () Bool)

(declare-fun isEmpty!28380 (Option!10782) Bool)

(assert (=> d!1347030 (= (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717)) (not (isEmpty!28380 (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))))

(declare-fun bs!763246 () Bool)

(assert (= bs!763246 d!1347030))

(assert (=> bs!763246 m!5125581))

(declare-fun m!5125819 () Bool)

(assert (=> bs!763246 m!5125819))

(assert (=> b!4437770 d!1347030))

(declare-fun b!4437895 () Bool)

(declare-fun e!2763339 () Option!10782)

(assert (=> b!4437895 (= e!2763339 (Some!10781 (_2!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun d!1347032 () Bool)

(declare-fun c!755352 () Bool)

(assert (=> d!1347032 (= c!755352 (and ((_ is Cons!49733) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) key!3717)))))

(assert (=> d!1347032 (= (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) e!2763339)))

(declare-fun b!4437898 () Bool)

(declare-fun e!2763340 () Option!10782)

(assert (=> b!4437898 (= e!2763340 None!10781)))

(declare-fun b!4437897 () Bool)

(assert (=> b!4437897 (= e!2763340 (getValueByKey!768 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717))))

(declare-fun b!4437896 () Bool)

(assert (=> b!4437896 (= e!2763339 e!2763340)))

(declare-fun c!755353 () Bool)

(assert (=> b!4437896 (= c!755353 (and ((_ is Cons!49733) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (not (= (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) key!3717))))))

(assert (= (and d!1347032 c!755352) b!4437895))

(assert (= (and d!1347032 (not c!755352)) b!4437896))

(assert (= (and b!4437896 c!755353) b!4437897))

(assert (= (and b!4437896 (not c!755353)) b!4437898))

(declare-fun m!5125829 () Bool)

(assert (=> b!4437897 m!5125829))

(assert (=> b!4437770 d!1347032))

(declare-fun d!1347038 () Bool)

(declare-fun res!1836917 () Bool)

(declare-fun e!2763341 () Bool)

(assert (=> d!1347038 (=> res!1836917 e!2763341)))

(assert (=> d!1347038 (= res!1836917 (not ((_ is Cons!49733) (t!356799 newBucket!194))))))

(assert (=> d!1347038 (= (noDuplicateKeys!811 (t!356799 newBucket!194)) e!2763341)))

(declare-fun b!4437899 () Bool)

(declare-fun e!2763342 () Bool)

(assert (=> b!4437899 (= e!2763341 e!2763342)))

(declare-fun res!1836918 () Bool)

(assert (=> b!4437899 (=> (not res!1836918) (not e!2763342))))

(assert (=> b!4437899 (= res!1836918 (not (containsKey!1208 (t!356799 (t!356799 newBucket!194)) (_1!28105 (h!55446 (t!356799 newBucket!194))))))))

(declare-fun b!4437900 () Bool)

(assert (=> b!4437900 (= e!2763342 (noDuplicateKeys!811 (t!356799 (t!356799 newBucket!194))))))

(assert (= (and d!1347038 (not res!1836917)) b!4437899))

(assert (= (and b!4437899 res!1836918) b!4437900))

(declare-fun m!5125831 () Bool)

(assert (=> b!4437899 m!5125831))

(declare-fun m!5125833 () Bool)

(assert (=> b!4437900 m!5125833))

(assert (=> b!4437739 d!1347038))

(assert (=> d!1346860 d!1346856))

(assert (=> d!1346860 d!1346858))

(declare-fun d!1347040 () Bool)

(assert (=> d!1347040 (not (containsKey!1208 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))) key!3717))))

(assert (=> d!1347040 true))

(declare-fun _$39!367 () Unit!83561)

(assert (=> d!1347040 (= (choose!28166 lm!1616 key!3717 (_1!28106 (h!55447 (toList!3609 lm!1616))) hashF!1220) _$39!367)))

(declare-fun bs!763247 () Bool)

(assert (= bs!763247 d!1347040))

(assert (=> bs!763247 m!5125103))

(assert (=> bs!763247 m!5125103))

(assert (=> bs!763247 m!5125105))

(assert (=> d!1346860 d!1347040))

(declare-fun d!1347046 () Bool)

(declare-fun res!1836924 () Bool)

(declare-fun e!2763349 () Bool)

(assert (=> d!1347046 (=> res!1836924 e!2763349)))

(assert (=> d!1347046 (= res!1836924 ((_ is Nil!49734) (toList!3609 lm!1616)))))

(assert (=> d!1347046 (= (forall!9666 (toList!3609 lm!1616) lambda!156555) e!2763349)))

(declare-fun b!4437908 () Bool)

(declare-fun e!2763350 () Bool)

(assert (=> b!4437908 (= e!2763349 e!2763350)))

(declare-fun res!1836925 () Bool)

(assert (=> b!4437908 (=> (not res!1836925) (not e!2763350))))

(assert (=> b!4437908 (= res!1836925 (dynLambda!20896 lambda!156555 (h!55447 (toList!3609 lm!1616))))))

(declare-fun b!4437909 () Bool)

(assert (=> b!4437909 (= e!2763350 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156555))))

(assert (= (and d!1347046 (not res!1836924)) b!4437908))

(assert (= (and b!4437908 res!1836925) b!4437909))

(declare-fun b_lambda!144731 () Bool)

(assert (=> (not b_lambda!144731) (not b!4437908)))

(declare-fun m!5125849 () Bool)

(assert (=> b!4437908 m!5125849))

(declare-fun m!5125851 () Bool)

(assert (=> b!4437909 m!5125851))

(assert (=> d!1346860 d!1347046))

(declare-fun d!1347050 () Bool)

(assert (=> d!1347050 (= (get!16218 (getValueByKey!767 (toList!3609 lm!1616) (_1!28106 (h!55447 (toList!3609 lm!1616))))) (v!44002 (getValueByKey!767 (toList!3609 lm!1616) (_1!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> d!1346858 d!1347050))

(declare-fun b!4437933 () Bool)

(declare-fun e!2763362 () Option!10781)

(assert (=> b!4437933 (= e!2763362 None!10780)))

(declare-fun b!4437930 () Bool)

(declare-fun e!2763361 () Option!10781)

(assert (=> b!4437930 (= e!2763361 (Some!10780 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(declare-fun b!4437932 () Bool)

(assert (=> b!4437932 (= e!2763362 (getValueByKey!767 (t!356800 (toList!3609 lm!1616)) (_1!28106 (h!55447 (toList!3609 lm!1616)))))))

(declare-fun b!4437931 () Bool)

(assert (=> b!4437931 (= e!2763361 e!2763362)))

(declare-fun c!755366 () Bool)

(assert (=> b!4437931 (= c!755366 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (not (= (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun d!1347052 () Bool)

(declare-fun c!755365 () Bool)

(assert (=> d!1347052 (= c!755365 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> d!1347052 (= (getValueByKey!767 (toList!3609 lm!1616) (_1!28106 (h!55447 (toList!3609 lm!1616)))) e!2763361)))

(assert (= (and d!1347052 c!755365) b!4437930))

(assert (= (and d!1347052 (not c!755365)) b!4437931))

(assert (= (and b!4437931 c!755366) b!4437932))

(assert (= (and b!4437931 (not c!755366)) b!4437933))

(declare-fun m!5125855 () Bool)

(assert (=> b!4437932 m!5125855))

(assert (=> d!1346858 d!1347052))

(declare-fun d!1347056 () Bool)

(declare-fun res!1836934 () Bool)

(declare-fun e!2763369 () Bool)

(assert (=> d!1347056 (=> res!1836934 e!2763369)))

(assert (=> d!1347056 (= res!1836934 ((_ is Nil!49733) (toList!3610 lt!1634303)))))

(assert (=> d!1347056 (= (forall!9668 (toList!3610 lt!1634303) lambda!156645) e!2763369)))

(declare-fun b!4437942 () Bool)

(declare-fun e!2763370 () Bool)

(assert (=> b!4437942 (= e!2763369 e!2763370)))

(declare-fun res!1836935 () Bool)

(assert (=> b!4437942 (=> (not res!1836935) (not e!2763370))))

(declare-fun dynLambda!20898 (Int tuple2!49622) Bool)

(assert (=> b!4437942 (= res!1836935 (dynLambda!20898 lambda!156645 (h!55446 (toList!3610 lt!1634303))))))

(declare-fun b!4437943 () Bool)

(assert (=> b!4437943 (= e!2763370 (forall!9668 (t!356799 (toList!3610 lt!1634303)) lambda!156645))))

(assert (= (and d!1347056 (not res!1836934)) b!4437942))

(assert (= (and b!4437942 res!1836935) b!4437943))

(declare-fun b_lambda!144733 () Bool)

(assert (=> (not b_lambda!144733) (not b!4437942)))

(declare-fun m!5125857 () Bool)

(assert (=> b!4437942 m!5125857))

(declare-fun m!5125859 () Bool)

(assert (=> b!4437943 m!5125859))

(assert (=> b!4437697 d!1347056))

(declare-fun d!1347058 () Bool)

(declare-fun res!1836938 () Bool)

(declare-fun e!2763372 () Bool)

(assert (=> d!1347058 (=> res!1836938 e!2763372)))

(assert (=> d!1347058 (= res!1836938 ((_ is Nil!49734) (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194)))))))

(assert (=> d!1347058 (= (forall!9666 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194))) lambda!156552) e!2763372)))

(declare-fun b!4437946 () Bool)

(declare-fun e!2763373 () Bool)

(assert (=> b!4437946 (= e!2763372 e!2763373)))

(declare-fun res!1836939 () Bool)

(assert (=> b!4437946 (=> (not res!1836939) (not e!2763373))))

(assert (=> b!4437946 (= res!1836939 (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194))))))))

(declare-fun b!4437947 () Bool)

(assert (=> b!4437947 (= e!2763373 (forall!9666 (t!356800 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194)))) lambda!156552))))

(assert (= (and d!1347058 (not res!1836938)) b!4437946))

(assert (= (and b!4437946 res!1836939) b!4437947))

(declare-fun b_lambda!144735 () Bool)

(assert (=> (not b_lambda!144735) (not b!4437946)))

(declare-fun m!5125869 () Bool)

(assert (=> b!4437946 m!5125869))

(declare-fun m!5125871 () Bool)

(assert (=> b!4437947 m!5125871))

(assert (=> d!1346954 d!1347058))

(declare-fun d!1347062 () Bool)

(declare-fun e!2763374 () Bool)

(assert (=> d!1347062 e!2763374))

(declare-fun res!1836940 () Bool)

(assert (=> d!1347062 (=> (not res!1836940) (not e!2763374))))

(declare-fun lt!1634716 () ListLongMap!2259)

(assert (=> d!1347062 (= res!1836940 (contains!12289 lt!1634716 (_1!28106 (tuple2!49625 hash!366 newBucket!194))))))

(declare-fun lt!1634715 () List!49858)

(assert (=> d!1347062 (= lt!1634716 (ListLongMap!2260 lt!1634715))))

(declare-fun lt!1634717 () Unit!83561)

(declare-fun lt!1634718 () Unit!83561)

(assert (=> d!1347062 (= lt!1634717 lt!1634718)))

(assert (=> d!1347062 (= (getValueByKey!767 lt!1634715 (_1!28106 (tuple2!49625 hash!366 newBucket!194))) (Some!10780 (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347062 (= lt!1634718 (lemmaContainsTupThenGetReturnValue!500 lt!1634715 (_1!28106 (tuple2!49625 hash!366 newBucket!194)) (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347062 (= lt!1634715 (insertStrictlySorted!288 (toList!3609 lm!1616) (_1!28106 (tuple2!49625 hash!366 newBucket!194)) (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347062 (= (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194)) lt!1634716)))

(declare-fun b!4437948 () Bool)

(declare-fun res!1836941 () Bool)

(assert (=> b!4437948 (=> (not res!1836941) (not e!2763374))))

(assert (=> b!4437948 (= res!1836941 (= (getValueByKey!767 (toList!3609 lt!1634716) (_1!28106 (tuple2!49625 hash!366 newBucket!194))) (Some!10780 (_2!28106 (tuple2!49625 hash!366 newBucket!194)))))))

(declare-fun b!4437949 () Bool)

(assert (=> b!4437949 (= e!2763374 (contains!12294 (toList!3609 lt!1634716) (tuple2!49625 hash!366 newBucket!194)))))

(assert (= (and d!1347062 res!1836940) b!4437948))

(assert (= (and b!4437948 res!1836941) b!4437949))

(declare-fun m!5125873 () Bool)

(assert (=> d!1347062 m!5125873))

(declare-fun m!5125875 () Bool)

(assert (=> d!1347062 m!5125875))

(declare-fun m!5125877 () Bool)

(assert (=> d!1347062 m!5125877))

(declare-fun m!5125879 () Bool)

(assert (=> d!1347062 m!5125879))

(declare-fun m!5125881 () Bool)

(assert (=> b!4437948 m!5125881))

(declare-fun m!5125883 () Bool)

(assert (=> b!4437949 m!5125883))

(assert (=> d!1346954 d!1347062))

(declare-fun d!1347064 () Bool)

(assert (=> d!1347064 (forall!9666 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194))) lambda!156552)))

(assert (=> d!1347064 true))

(declare-fun _$31!433 () Unit!83561)

(assert (=> d!1347064 (= (choose!28170 lm!1616 lambda!156552 hash!366 newBucket!194) _$31!433)))

(declare-fun bs!763248 () Bool)

(assert (= bs!763248 d!1347064))

(assert (=> bs!763248 m!5125509))

(assert (=> bs!763248 m!5125511))

(assert (=> d!1346954 d!1347064))

(assert (=> d!1346954 d!1346864))

(declare-fun d!1347066 () Bool)

(declare-fun res!1836942 () Bool)

(declare-fun e!2763375 () Bool)

(assert (=> d!1347066 (=> res!1836942 e!2763375)))

(assert (=> d!1347066 (= res!1836942 ((_ is Nil!49733) (toList!3610 lt!1634303)))))

(assert (=> d!1347066 (= (forall!9668 (toList!3610 lt!1634303) (ite c!755316 lambda!156643 lambda!156644)) e!2763375)))

(declare-fun b!4437951 () Bool)

(declare-fun e!2763376 () Bool)

(assert (=> b!4437951 (= e!2763375 e!2763376)))

(declare-fun res!1836943 () Bool)

(assert (=> b!4437951 (=> (not res!1836943) (not e!2763376))))

(assert (=> b!4437951 (= res!1836943 (dynLambda!20898 (ite c!755316 lambda!156643 lambda!156644) (h!55446 (toList!3610 lt!1634303))))))

(declare-fun b!4437952 () Bool)

(assert (=> b!4437952 (= e!2763376 (forall!9668 (t!356799 (toList!3610 lt!1634303)) (ite c!755316 lambda!156643 lambda!156644)))))

(assert (= (and d!1347066 (not res!1836942)) b!4437951))

(assert (= (and b!4437951 res!1836943) b!4437952))

(declare-fun b_lambda!144737 () Bool)

(assert (=> (not b_lambda!144737) (not b!4437951)))

(declare-fun m!5125885 () Bool)

(assert (=> b!4437951 m!5125885))

(declare-fun m!5125887 () Bool)

(assert (=> b!4437952 m!5125887))

(assert (=> bm!308816 d!1347066))

(declare-fun d!1347068 () Bool)

(declare-fun res!1836944 () Bool)

(declare-fun e!2763377 () Bool)

(assert (=> d!1347068 (=> res!1836944 e!2763377)))

(assert (=> d!1347068 (= res!1836944 (and ((_ is Cons!49733) (toList!3610 lt!1634308)) (= (_1!28105 (h!55446 (toList!3610 lt!1634308))) key!3717)))))

(assert (=> d!1347068 (= (containsKey!1211 (toList!3610 lt!1634308) key!3717) e!2763377)))

(declare-fun b!4437953 () Bool)

(declare-fun e!2763378 () Bool)

(assert (=> b!4437953 (= e!2763377 e!2763378)))

(declare-fun res!1836945 () Bool)

(assert (=> b!4437953 (=> (not res!1836945) (not e!2763378))))

(assert (=> b!4437953 (= res!1836945 ((_ is Cons!49733) (toList!3610 lt!1634308)))))

(declare-fun b!4437954 () Bool)

(assert (=> b!4437954 (= e!2763378 (containsKey!1211 (t!356799 (toList!3610 lt!1634308)) key!3717))))

(assert (= (and d!1347068 (not res!1836944)) b!4437953))

(assert (= (and b!4437953 res!1836945) b!4437954))

(declare-fun m!5125889 () Bool)

(assert (=> b!4437954 m!5125889))

(assert (=> d!1346938 d!1347068))

(declare-fun d!1347070 () Bool)

(declare-fun res!1836946 () Bool)

(declare-fun e!2763381 () Bool)

(assert (=> d!1347070 (=> res!1836946 e!2763381)))

(assert (=> d!1347070 (= res!1836946 ((_ is Nil!49734) (t!356800 (toList!3609 lm!1616))))))

(assert (=> d!1347070 (= (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156552) e!2763381)))

(declare-fun b!4437959 () Bool)

(declare-fun e!2763382 () Bool)

(assert (=> b!4437959 (= e!2763381 e!2763382)))

(declare-fun res!1836947 () Bool)

(assert (=> b!4437959 (=> (not res!1836947) (not e!2763382))))

(assert (=> b!4437959 (= res!1836947 (dynLambda!20896 lambda!156552 (h!55447 (t!356800 (toList!3609 lm!1616)))))))

(declare-fun b!4437960 () Bool)

(assert (=> b!4437960 (= e!2763382 (forall!9666 (t!356800 (t!356800 (toList!3609 lm!1616))) lambda!156552))))

(assert (= (and d!1347070 (not res!1836946)) b!4437959))

(assert (= (and b!4437959 res!1836947) b!4437960))

(declare-fun b_lambda!144739 () Bool)

(assert (=> (not b_lambda!144739) (not b!4437959)))

(declare-fun m!5125891 () Bool)

(assert (=> b!4437959 m!5125891))

(declare-fun m!5125893 () Bool)

(assert (=> b!4437960 m!5125893))

(assert (=> b!4437549 d!1347070))

(declare-fun d!1347072 () Bool)

(declare-fun lt!1634723 () Bool)

(declare-fun content!8008 (List!49858) (InoxSet tuple2!49624))

(assert (=> d!1347072 (= lt!1634723 (select (content!8008 (toList!3609 lt!1634592)) lt!1634309))))

(declare-fun e!2763396 () Bool)

(assert (=> d!1347072 (= lt!1634723 e!2763396)))

(declare-fun res!1836956 () Bool)

(assert (=> d!1347072 (=> (not res!1836956) (not e!2763396))))

(assert (=> d!1347072 (= res!1836956 ((_ is Cons!49734) (toList!3609 lt!1634592)))))

(assert (=> d!1347072 (= (contains!12294 (toList!3609 lt!1634592) lt!1634309) lt!1634723)))

(declare-fun b!4437981 () Bool)

(declare-fun e!2763395 () Bool)

(assert (=> b!4437981 (= e!2763396 e!2763395)))

(declare-fun res!1836957 () Bool)

(assert (=> b!4437981 (=> res!1836957 e!2763395)))

(assert (=> b!4437981 (= res!1836957 (= (h!55447 (toList!3609 lt!1634592)) lt!1634309))))

(declare-fun b!4437982 () Bool)

(assert (=> b!4437982 (= e!2763395 (contains!12294 (t!356800 (toList!3609 lt!1634592)) lt!1634309))))

(assert (= (and d!1347072 res!1836956) b!4437981))

(assert (= (and b!4437981 (not res!1836957)) b!4437982))

(declare-fun m!5125895 () Bool)

(assert (=> d!1347072 m!5125895))

(declare-fun m!5125897 () Bool)

(assert (=> d!1347072 m!5125897))

(declare-fun m!5125899 () Bool)

(assert (=> b!4437982 m!5125899))

(assert (=> b!4437759 d!1347072))

(declare-fun d!1347074 () Bool)

(declare-fun choose!28177 (Hashable!5205 K!11100) (_ BitVec 64))

(assert (=> d!1347074 (= (hash!2252 hashF!1220 key!3717) (choose!28177 hashF!1220 key!3717))))

(declare-fun bs!763249 () Bool)

(assert (= bs!763249 d!1347074))

(declare-fun m!5125901 () Bool)

(assert (=> bs!763249 m!5125901))

(assert (=> d!1346944 d!1347074))

(assert (=> b!4437726 d!1346994))

(assert (=> b!4437726 d!1347004))

(declare-fun d!1347076 () Bool)

(declare-fun noDuplicatedKeys!190 (List!49857) Bool)

(assert (=> d!1347076 (= (invariantList!833 (toList!3610 lt!1634557)) (noDuplicatedKeys!190 (toList!3610 lt!1634557)))))

(declare-fun bs!763250 () Bool)

(assert (= bs!763250 d!1347076))

(declare-fun m!5125903 () Bool)

(assert (=> bs!763250 m!5125903))

(assert (=> d!1346940 d!1347076))

(declare-fun d!1347078 () Bool)

(declare-fun res!1836958 () Bool)

(declare-fun e!2763397 () Bool)

(assert (=> d!1347078 (=> res!1836958 e!2763397)))

(assert (=> d!1347078 (= res!1836958 ((_ is Nil!49734) (toList!3609 lm!1616)))))

(assert (=> d!1347078 (= (forall!9666 (toList!3609 lm!1616) lambda!156649) e!2763397)))

(declare-fun b!4437983 () Bool)

(declare-fun e!2763398 () Bool)

(assert (=> b!4437983 (= e!2763397 e!2763398)))

(declare-fun res!1836959 () Bool)

(assert (=> b!4437983 (=> (not res!1836959) (not e!2763398))))

(assert (=> b!4437983 (= res!1836959 (dynLambda!20896 lambda!156649 (h!55447 (toList!3609 lm!1616))))))

(declare-fun b!4437984 () Bool)

(assert (=> b!4437984 (= e!2763398 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156649))))

(assert (= (and d!1347078 (not res!1836958)) b!4437983))

(assert (= (and b!4437983 res!1836959) b!4437984))

(declare-fun b_lambda!144741 () Bool)

(assert (=> (not b_lambda!144741) (not b!4437983)))

(declare-fun m!5125905 () Bool)

(assert (=> b!4437983 m!5125905))

(declare-fun m!5125907 () Bool)

(assert (=> b!4437984 m!5125907))

(assert (=> d!1346940 d!1347078))

(declare-fun d!1347080 () Bool)

(declare-fun res!1836960 () Bool)

(declare-fun e!2763399 () Bool)

(assert (=> d!1347080 (=> res!1836960 e!2763399)))

(assert (=> d!1347080 (= res!1836960 (and ((_ is Cons!49733) (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))))) (= (_1!28105 (h!55446 (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616))))))) key!3717)))))

(assert (=> d!1347080 (= (containsKey!1208 (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616))))) key!3717) e!2763399)))

(declare-fun b!4437985 () Bool)

(declare-fun e!2763400 () Bool)

(assert (=> b!4437985 (= e!2763399 e!2763400)))

(declare-fun res!1836961 () Bool)

(assert (=> b!4437985 (=> (not res!1836961) (not e!2763400))))

(assert (=> b!4437985 (= res!1836961 ((_ is Cons!49733) (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun b!4437986 () Bool)

(assert (=> b!4437986 (= e!2763400 (containsKey!1208 (t!356799 (t!356799 (apply!11663 lm!1616 (_1!28106 (h!55447 (toList!3609 lm!1616)))))) key!3717))))

(assert (= (and d!1347080 (not res!1836960)) b!4437985))

(assert (= (and b!4437985 res!1836961) b!4437986))

(declare-fun m!5125909 () Bool)

(assert (=> b!4437986 m!5125909))

(assert (=> b!4437541 d!1347080))

(declare-fun d!1347082 () Bool)

(assert (=> d!1347082 (= (invariantList!833 (toList!3610 lt!1634520)) (noDuplicatedKeys!190 (toList!3610 lt!1634520)))))

(declare-fun bs!763251 () Bool)

(assert (= bs!763251 d!1347082))

(declare-fun m!5125911 () Bool)

(assert (=> bs!763251 m!5125911))

(assert (=> b!4437695 d!1347082))

(declare-fun d!1347084 () Bool)

(declare-fun res!1836968 () Bool)

(declare-fun e!2763410 () Bool)

(assert (=> d!1347084 (=> res!1836968 e!2763410)))

(assert (=> d!1347084 (= res!1836968 (or ((_ is Nil!49734) (toList!3609 lm!1616)) ((_ is Nil!49734) (t!356800 (toList!3609 lm!1616)))))))

(assert (=> d!1347084 (= (isStrictlySorted!260 (toList!3609 lm!1616)) e!2763410)))

(declare-fun b!4438001 () Bool)

(declare-fun e!2763411 () Bool)

(assert (=> b!4438001 (= e!2763410 e!2763411)))

(declare-fun res!1836969 () Bool)

(assert (=> b!4438001 (=> (not res!1836969) (not e!2763411))))

(assert (=> b!4438001 (= res!1836969 (bvslt (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 (h!55447 (t!356800 (toList!3609 lm!1616))))))))

(declare-fun b!4438002 () Bool)

(assert (=> b!4438002 (= e!2763411 (isStrictlySorted!260 (t!356800 (toList!3609 lm!1616))))))

(assert (= (and d!1347084 (not res!1836968)) b!4438001))

(assert (= (and b!4438001 res!1836969) b!4438002))

(declare-fun m!5125925 () Bool)

(assert (=> b!4438002 m!5125925))

(assert (=> d!1346866 d!1347084))

(declare-fun d!1347088 () Bool)

(assert (=> d!1347088 (isDefined!8074 (getValueByKey!767 (toList!3609 lm!1616) hash!366))))

(declare-fun lt!1634730 () Unit!83561)

(declare-fun choose!28178 (List!49858 (_ BitVec 64)) Unit!83561)

(assert (=> d!1347088 (= lt!1634730 (choose!28178 (toList!3609 lm!1616) hash!366))))

(declare-fun e!2763420 () Bool)

(assert (=> d!1347088 e!2763420))

(declare-fun res!1836978 () Bool)

(assert (=> d!1347088 (=> (not res!1836978) (not e!2763420))))

(assert (=> d!1347088 (= res!1836978 (isStrictlySorted!260 (toList!3609 lm!1616)))))

(assert (=> d!1347088 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!677 (toList!3609 lm!1616) hash!366) lt!1634730)))

(declare-fun b!4438011 () Bool)

(assert (=> b!4438011 (= e!2763420 (containsKey!1212 (toList!3609 lm!1616) hash!366))))

(assert (= (and d!1347088 res!1836978) b!4438011))

(assert (=> d!1347088 m!5125483))

(assert (=> d!1347088 m!5125483))

(assert (=> d!1347088 m!5125607))

(declare-fun m!5125933 () Bool)

(assert (=> d!1347088 m!5125933))

(assert (=> d!1347088 m!5125185))

(assert (=> b!4438011 m!5125603))

(assert (=> b!4437781 d!1347088))

(declare-fun d!1347092 () Bool)

(declare-fun isEmpty!28381 (Option!10781) Bool)

(assert (=> d!1347092 (= (isDefined!8074 (getValueByKey!767 (toList!3609 lm!1616) hash!366)) (not (isEmpty!28381 (getValueByKey!767 (toList!3609 lm!1616) hash!366))))))

(declare-fun bs!763252 () Bool)

(assert (= bs!763252 d!1347092))

(assert (=> bs!763252 m!5125483))

(declare-fun m!5125935 () Bool)

(assert (=> bs!763252 m!5125935))

(assert (=> b!4437781 d!1347092))

(declare-fun b!4438019 () Bool)

(declare-fun e!2763426 () Option!10781)

(assert (=> b!4438019 (= e!2763426 None!10780)))

(declare-fun b!4438016 () Bool)

(declare-fun e!2763425 () Option!10781)

(assert (=> b!4438016 (= e!2763425 (Some!10780 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(declare-fun b!4438018 () Bool)

(assert (=> b!4438018 (= e!2763426 (getValueByKey!767 (t!356800 (toList!3609 lm!1616)) hash!366))))

(declare-fun b!4438017 () Bool)

(assert (=> b!4438017 (= e!2763425 e!2763426)))

(declare-fun c!755380 () Bool)

(assert (=> b!4438017 (= c!755380 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (not (= (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366))))))

(declare-fun d!1347094 () Bool)

(declare-fun c!755379 () Bool)

(assert (=> d!1347094 (= c!755379 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)))))

(assert (=> d!1347094 (= (getValueByKey!767 (toList!3609 lm!1616) hash!366) e!2763425)))

(assert (= (and d!1347094 c!755379) b!4438016))

(assert (= (and d!1347094 (not c!755379)) b!4438017))

(assert (= (and b!4438017 c!755380) b!4438018))

(assert (= (and b!4438017 (not c!755380)) b!4438019))

(declare-fun m!5125937 () Bool)

(assert (=> b!4438018 m!5125937))

(assert (=> b!4437781 d!1347094))

(declare-fun call!308845 () Bool)

(declare-fun e!2763430 () List!49860)

(declare-fun bm!308840 () Bool)

(assert (=> bm!308840 (= call!308845 (contains!12293 e!2763430 (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun c!755383 () Bool)

(declare-fun c!755381 () Bool)

(assert (=> bm!308840 (= c!755383 c!755381)))

(declare-fun b!4438022 () Bool)

(assert (=> b!4438022 (= e!2763430 (keys!17022 lt!1634588))))

(declare-fun b!4438023 () Bool)

(declare-fun e!2763432 () Unit!83561)

(declare-fun lt!1634734 () Unit!83561)

(assert (=> b!4438023 (= e!2763432 lt!1634734)))

(declare-fun lt!1634733 () Unit!83561)

(assert (=> b!4438023 (= lt!1634733 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> b!4438023 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun lt!1634735 () Unit!83561)

(assert (=> b!4438023 (= lt!1634735 lt!1634733)))

(assert (=> b!4438023 (= lt!1634734 (lemmaInListThenGetKeysListContains!277 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> b!4438023 call!308845))

(declare-fun b!4438024 () Bool)

(assert (=> b!4438024 (= e!2763430 (getKeysList!280 (toList!3610 lt!1634588)))))

(declare-fun d!1347096 () Bool)

(declare-fun e!2763429 () Bool)

(assert (=> d!1347096 e!2763429))

(declare-fun res!1836985 () Bool)

(assert (=> d!1347096 (=> res!1836985 e!2763429)))

(declare-fun e!2763434 () Bool)

(assert (=> d!1347096 (= res!1836985 e!2763434)))

(declare-fun res!1836986 () Bool)

(assert (=> d!1347096 (=> (not res!1836986) (not e!2763434))))

(declare-fun lt!1634731 () Bool)

(assert (=> d!1347096 (= res!1836986 (not lt!1634731))))

(declare-fun lt!1634737 () Bool)

(assert (=> d!1347096 (= lt!1634731 lt!1634737)))

(declare-fun lt!1634738 () Unit!83561)

(assert (=> d!1347096 (= lt!1634738 e!2763432)))

(assert (=> d!1347096 (= c!755381 lt!1634737)))

(assert (=> d!1347096 (= lt!1634737 (containsKey!1211 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> d!1347096 (= (contains!12288 lt!1634588 (_1!28105 (tuple2!49623 key!3717 newValue!93))) lt!1634731)))

(declare-fun b!4438025 () Bool)

(declare-fun e!2763433 () Unit!83561)

(declare-fun Unit!83632 () Unit!83561)

(assert (=> b!4438025 (= e!2763433 Unit!83632)))

(declare-fun b!4438026 () Bool)

(declare-fun e!2763431 () Bool)

(assert (=> b!4438026 (= e!2763429 e!2763431)))

(declare-fun res!1836987 () Bool)

(assert (=> b!4438026 (=> (not res!1836987) (not e!2763431))))

(assert (=> b!4438026 (= res!1836987 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun b!4438027 () Bool)

(assert (=> b!4438027 (= e!2763431 (contains!12293 (keys!17022 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438028 () Bool)

(assert (=> b!4438028 (= e!2763432 e!2763433)))

(declare-fun c!755382 () Bool)

(assert (=> b!4438028 (= c!755382 call!308845)))

(declare-fun b!4438029 () Bool)

(assert (=> b!4438029 (= e!2763434 (not (contains!12293 (keys!17022 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun b!4438030 () Bool)

(assert (=> b!4438030 false))

(declare-fun lt!1634736 () Unit!83561)

(declare-fun lt!1634732 () Unit!83561)

(assert (=> b!4438030 (= lt!1634736 lt!1634732)))

(assert (=> b!4438030 (containsKey!1211 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))

(assert (=> b!4438030 (= lt!1634732 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun Unit!83636 () Unit!83561)

(assert (=> b!4438030 (= e!2763433 Unit!83636)))

(assert (= (and d!1347096 c!755381) b!4438023))

(assert (= (and d!1347096 (not c!755381)) b!4438028))

(assert (= (and b!4438028 c!755382) b!4438030))

(assert (= (and b!4438028 (not c!755382)) b!4438025))

(assert (= (or b!4438023 b!4438028) bm!308840))

(assert (= (and bm!308840 c!755383) b!4438024))

(assert (= (and bm!308840 (not c!755383)) b!4438022))

(assert (= (and d!1347096 res!1836986) b!4438029))

(assert (= (and d!1347096 (not res!1836985)) b!4438026))

(assert (= (and b!4438026 res!1836987) b!4438027))

(declare-fun m!5125941 () Bool)

(assert (=> d!1347096 m!5125941))

(declare-fun m!5125943 () Bool)

(assert (=> b!4438022 m!5125943))

(assert (=> b!4438026 m!5125537))

(assert (=> b!4438026 m!5125537))

(declare-fun m!5125945 () Bool)

(assert (=> b!4438026 m!5125945))

(assert (=> b!4438029 m!5125943))

(assert (=> b!4438029 m!5125943))

(declare-fun m!5125947 () Bool)

(assert (=> b!4438029 m!5125947))

(declare-fun m!5125949 () Bool)

(assert (=> bm!308840 m!5125949))

(declare-fun m!5125951 () Bool)

(assert (=> b!4438023 m!5125951))

(assert (=> b!4438023 m!5125537))

(assert (=> b!4438023 m!5125537))

(assert (=> b!4438023 m!5125945))

(declare-fun m!5125953 () Bool)

(assert (=> b!4438023 m!5125953))

(assert (=> b!4438030 m!5125941))

(declare-fun m!5125955 () Bool)

(assert (=> b!4438030 m!5125955))

(declare-fun m!5125957 () Bool)

(assert (=> b!4438024 m!5125957))

(assert (=> b!4438027 m!5125943))

(assert (=> b!4438027 m!5125943))

(assert (=> b!4438027 m!5125947))

(assert (=> d!1346958 d!1347096))

(declare-fun b!4438035 () Bool)

(declare-fun e!2763439 () Option!10782)

(assert (=> b!4438035 (= e!2763439 (Some!10781 (_2!28105 (h!55446 lt!1634590))))))

(declare-fun d!1347100 () Bool)

(declare-fun c!755384 () Bool)

(assert (=> d!1347100 (= c!755384 (and ((_ is Cons!49733) lt!1634590) (= (_1!28105 (h!55446 lt!1634590)) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(assert (=> d!1347100 (= (getValueByKey!768 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93))) e!2763439)))

(declare-fun b!4438038 () Bool)

(declare-fun e!2763440 () Option!10782)

(assert (=> b!4438038 (= e!2763440 None!10781)))

(declare-fun b!4438037 () Bool)

(assert (=> b!4438037 (= e!2763440 (getValueByKey!768 (t!356799 lt!1634590) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438036 () Bool)

(assert (=> b!4438036 (= e!2763439 e!2763440)))

(declare-fun c!755385 () Bool)

(assert (=> b!4438036 (= c!755385 (and ((_ is Cons!49733) lt!1634590) (not (= (_1!28105 (h!55446 lt!1634590)) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))))

(assert (= (and d!1347100 c!755384) b!4438035))

(assert (= (and d!1347100 (not c!755384)) b!4438036))

(assert (= (and b!4438036 c!755385) b!4438037))

(assert (= (and b!4438036 (not c!755385)) b!4438038))

(declare-fun m!5125959 () Bool)

(assert (=> b!4438037 m!5125959))

(assert (=> d!1346958 d!1347100))

(declare-fun d!1347102 () Bool)

(assert (=> d!1347102 (= (getValueByKey!768 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93))) (Some!10781 (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun lt!1634741 () Unit!83561)

(declare-fun choose!28179 (List!49857 K!11100 V!11346) Unit!83561)

(assert (=> d!1347102 (= lt!1634741 (choose!28179 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun e!2763453 () Bool)

(assert (=> d!1347102 e!2763453))

(declare-fun res!1837004 () Bool)

(assert (=> d!1347102 (=> (not res!1837004) (not e!2763453))))

(assert (=> d!1347102 (= res!1837004 (invariantList!833 lt!1634590))))

(assert (=> d!1347102 (= (lemmaContainsTupThenGetReturnValue!501 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))) lt!1634741)))

(declare-fun b!4438055 () Bool)

(declare-fun res!1837005 () Bool)

(assert (=> b!4438055 (=> (not res!1837005) (not e!2763453))))

(assert (=> b!4438055 (= res!1837005 (containsKey!1211 lt!1634590 (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438056 () Bool)

(assert (=> b!4438056 (= e!2763453 (contains!12295 lt!1634590 (tuple2!49623 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93)))))))

(assert (= (and d!1347102 res!1837004) b!4438055))

(assert (= (and b!4438055 res!1837005) b!4438056))

(assert (=> d!1347102 m!5125531))

(declare-fun m!5125977 () Bool)

(assert (=> d!1347102 m!5125977))

(declare-fun m!5125979 () Bool)

(assert (=> d!1347102 m!5125979))

(declare-fun m!5125981 () Bool)

(assert (=> b!4438055 m!5125981))

(declare-fun m!5125983 () Bool)

(assert (=> b!4438056 m!5125983))

(assert (=> d!1346958 d!1347102))

(declare-fun b!4438119 () Bool)

(declare-fun res!1837037 () Bool)

(declare-fun e!2763491 () Bool)

(assert (=> b!4438119 (=> (not res!1837037) (not e!2763491))))

(declare-fun lt!1634820 () List!49857)

(assert (=> b!4438119 (= res!1837037 (contains!12295 lt!1634820 (tuple2!49623 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun lt!1634822 () List!49857)

(declare-fun call!308862 () List!49860)

(declare-fun bm!308855 () Bool)

(declare-fun c!755404 () Bool)

(assert (=> bm!308855 (= call!308862 (getKeysList!280 (ite c!755404 (toList!3610 lt!1634303) lt!1634822)))))

(declare-fun b!4438120 () Bool)

(declare-fun e!2763494 () List!49857)

(declare-fun call!308860 () List!49857)

(assert (=> b!4438120 (= e!2763494 call!308860)))

(declare-fun lt!1634826 () List!49860)

(assert (=> b!4438120 (= lt!1634826 call!308862)))

(declare-fun lt!1634824 () Unit!83561)

(declare-fun lemmaSubseqRefl!106 (List!49860) Unit!83561)

(assert (=> b!4438120 (= lt!1634824 (lemmaSubseqRefl!106 lt!1634826))))

(declare-fun subseq!622 (List!49860 List!49860) Bool)

(assert (=> b!4438120 (subseq!622 lt!1634826 lt!1634826)))

(declare-fun lt!1634817 () Unit!83561)

(assert (=> b!4438120 (= lt!1634817 lt!1634824)))

(declare-fun c!755405 () Bool)

(declare-fun e!2763497 () List!49857)

(declare-fun bm!308856 () Bool)

(declare-fun c!755403 () Bool)

(declare-fun $colon$colon!811 (List!49857 tuple2!49622) List!49857)

(assert (=> bm!308856 (= call!308860 ($colon$colon!811 (ite c!755404 (t!356799 (toList!3610 lt!1634303)) (ite c!755405 (toList!3610 lt!1634303) e!2763497)) (ite (or c!755404 c!755405) (tuple2!49623 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))) (ite c!755403 (h!55446 (toList!3610 lt!1634303)) (tuple2!49623 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93)))))))))

(declare-fun b!4438121 () Bool)

(declare-fun res!1837039 () Bool)

(assert (=> b!4438121 (=> (not res!1837039) (not e!2763491))))

(assert (=> b!4438121 (= res!1837039 (containsKey!1211 lt!1634820 (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438122 () Bool)

(assert (=> b!4438122 (= e!2763497 (insertNoDuplicatedKeys!221 (t!356799 (toList!3610 lt!1634303)) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438123 () Bool)

(assert (=> b!4438123 (= e!2763491 (= (content!8005 (getKeysList!280 lt!1634820)) ((_ map or) (content!8005 (getKeysList!280 (toList!3610 lt!1634303))) (store ((as const (Array K!11100 Bool)) false) (_1!28105 (tuple2!49623 key!3717 newValue!93)) true))))))

(declare-fun bm!308857 () Bool)

(declare-fun call!308861 () List!49857)

(assert (=> bm!308857 (= call!308861 call!308860)))

(declare-fun d!1347118 () Bool)

(assert (=> d!1347118 e!2763491))

(declare-fun res!1837040 () Bool)

(assert (=> d!1347118 (=> (not res!1837040) (not e!2763491))))

(assert (=> d!1347118 (= res!1837040 (invariantList!833 lt!1634820))))

(assert (=> d!1347118 (= lt!1634820 e!2763494)))

(assert (=> d!1347118 (= c!755404 (and ((_ is Cons!49733) (toList!3610 lt!1634303)) (= (_1!28105 (h!55446 (toList!3610 lt!1634303))) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(assert (=> d!1347118 (invariantList!833 (toList!3610 lt!1634303))))

(assert (=> d!1347118 (= (insertNoDuplicatedKeys!221 (toList!3610 lt!1634303) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))) lt!1634820)))

(declare-fun b!4438124 () Bool)

(assert (=> b!4438124 (= c!755403 ((_ is Cons!49733) (toList!3610 lt!1634303)))))

(declare-fun e!2763496 () List!49857)

(declare-fun e!2763492 () List!49857)

(assert (=> b!4438124 (= e!2763496 e!2763492)))

(declare-fun b!4438125 () Bool)

(assert (=> b!4438125 (= e!2763494 e!2763496)))

(declare-fun res!1837038 () Bool)

(assert (=> b!4438125 (= res!1837038 ((_ is Cons!49733) (toList!3610 lt!1634303)))))

(declare-fun e!2763495 () Bool)

(assert (=> b!4438125 (=> (not res!1837038) (not e!2763495))))

(assert (=> b!4438125 (= c!755405 e!2763495)))

(declare-fun b!4438126 () Bool)

(assert (=> b!4438126 (= e!2763496 call!308861)))

(declare-fun b!4438127 () Bool)

(assert (=> b!4438127 (= e!2763497 Nil!49733)))

(declare-fun b!4438128 () Bool)

(assert (=> b!4438128 false))

(declare-fun lt!1634827 () Unit!83561)

(declare-fun lt!1634818 () Unit!83561)

(assert (=> b!4438128 (= lt!1634827 lt!1634818)))

(assert (=> b!4438128 (containsKey!1211 (t!356799 (toList!3610 lt!1634303)) (_1!28105 (h!55446 (toList!3610 lt!1634303))))))

(assert (=> b!4438128 (= lt!1634818 (lemmaInGetKeysListThenContainsKey!278 (t!356799 (toList!3610 lt!1634303)) (_1!28105 (h!55446 (toList!3610 lt!1634303)))))))

(declare-fun lt!1634819 () Unit!83561)

(declare-fun lt!1634823 () Unit!83561)

(assert (=> b!4438128 (= lt!1634819 lt!1634823)))

(assert (=> b!4438128 (contains!12293 call!308862 (_1!28105 (h!55446 (toList!3610 lt!1634303))))))

(assert (=> b!4438128 (= lt!1634823 (lemmaInListThenGetKeysListContains!277 lt!1634822 (_1!28105 (h!55446 (toList!3610 lt!1634303)))))))

(assert (=> b!4438128 (= lt!1634822 (insertNoDuplicatedKeys!221 (t!356799 (toList!3610 lt!1634303)) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun e!2763493 () Unit!83561)

(declare-fun Unit!83644 () Unit!83561)

(assert (=> b!4438128 (= e!2763493 Unit!83644)))

(declare-fun bm!308858 () Bool)

(declare-fun call!308863 () List!49857)

(assert (=> bm!308858 (= call!308863 call!308861)))

(declare-fun c!755406 () Bool)

(assert (=> bm!308858 (= c!755406 c!755403)))

(declare-fun b!4438129 () Bool)

(assert (=> b!4438129 (= e!2763495 (not (containsKey!1211 (toList!3610 lt!1634303) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun b!4438130 () Bool)

(assert (=> b!4438130 (= e!2763492 call!308863)))

(declare-fun b!4438131 () Bool)

(declare-fun Unit!83645 () Unit!83561)

(assert (=> b!4438131 (= e!2763493 Unit!83645)))

(declare-fun b!4438132 () Bool)

(declare-fun lt!1634821 () List!49857)

(assert (=> b!4438132 (= e!2763492 lt!1634821)))

(assert (=> b!4438132 (= lt!1634821 call!308863)))

(declare-fun c!755407 () Bool)

(assert (=> b!4438132 (= c!755407 (containsKey!1211 (insertNoDuplicatedKeys!221 (t!356799 (toList!3610 lt!1634303)) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))) (_1!28105 (h!55446 (toList!3610 lt!1634303)))))))

(declare-fun lt!1634825 () Unit!83561)

(assert (=> b!4438132 (= lt!1634825 e!2763493)))

(assert (= (and d!1347118 c!755404) b!4438120))

(assert (= (and d!1347118 (not c!755404)) b!4438125))

(assert (= (and b!4438125 res!1837038) b!4438129))

(assert (= (and b!4438125 c!755405) b!4438126))

(assert (= (and b!4438125 (not c!755405)) b!4438124))

(assert (= (and b!4438124 c!755403) b!4438132))

(assert (= (and b!4438124 (not c!755403)) b!4438130))

(assert (= (and b!4438132 c!755407) b!4438128))

(assert (= (and b!4438132 (not c!755407)) b!4438131))

(assert (= (or b!4438132 b!4438130) bm!308858))

(assert (= (and bm!308858 c!755406) b!4438122))

(assert (= (and bm!308858 (not c!755406)) b!4438127))

(assert (= (or b!4438126 bm!308858) bm!308857))

(assert (= (or b!4438120 b!4438128) bm!308855))

(assert (= (or b!4438120 bm!308857) bm!308856))

(assert (= (and d!1347118 res!1837040) b!4438121))

(assert (= (and b!4438121 res!1837039) b!4438119))

(assert (= (and b!4438119 res!1837037) b!4438123))

(declare-fun m!5126079 () Bool)

(assert (=> b!4438132 m!5126079))

(assert (=> b!4438132 m!5126079))

(declare-fun m!5126081 () Bool)

(assert (=> b!4438132 m!5126081))

(declare-fun m!5126083 () Bool)

(assert (=> b!4438123 m!5126083))

(declare-fun m!5126085 () Bool)

(assert (=> b!4438123 m!5126085))

(declare-fun m!5126087 () Bool)

(assert (=> b!4438123 m!5126087))

(declare-fun m!5126089 () Bool)

(assert (=> b!4438123 m!5126089))

(assert (=> b!4438123 m!5126083))

(assert (=> b!4438123 m!5126089))

(declare-fun m!5126091 () Bool)

(assert (=> b!4438123 m!5126091))

(declare-fun m!5126093 () Bool)

(assert (=> b!4438120 m!5126093))

(declare-fun m!5126095 () Bool)

(assert (=> b!4438120 m!5126095))

(declare-fun m!5126097 () Bool)

(assert (=> bm!308855 m!5126097))

(declare-fun m!5126099 () Bool)

(assert (=> d!1347118 m!5126099))

(declare-fun m!5126101 () Bool)

(assert (=> d!1347118 m!5126101))

(declare-fun m!5126103 () Bool)

(assert (=> b!4438119 m!5126103))

(assert (=> b!4438122 m!5126079))

(declare-fun m!5126105 () Bool)

(assert (=> bm!308856 m!5126105))

(declare-fun m!5126107 () Bool)

(assert (=> b!4438129 m!5126107))

(declare-fun m!5126109 () Bool)

(assert (=> b!4438128 m!5126109))

(declare-fun m!5126111 () Bool)

(assert (=> b!4438128 m!5126111))

(assert (=> b!4438128 m!5126079))

(declare-fun m!5126113 () Bool)

(assert (=> b!4438128 m!5126113))

(declare-fun m!5126115 () Bool)

(assert (=> b!4438128 m!5126115))

(declare-fun m!5126117 () Bool)

(assert (=> b!4438121 m!5126117))

(assert (=> d!1346958 d!1347118))

(assert (=> b!4437783 d!1347092))

(assert (=> b!4437783 d!1347094))

(declare-fun bs!763346 () Bool)

(declare-fun d!1347146 () Bool)

(assert (= bs!763346 (and d!1347146 b!4437857)))

(declare-fun lambda!156703 () Int)

(assert (=> bs!763346 (= (= lt!1634303 lt!1634698) (= lambda!156703 lambda!156684))))

(declare-fun bs!763347 () Bool)

(assert (= bs!763347 (and d!1347146 b!4437859)))

(assert (=> bs!763347 (= (= lt!1634303 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156703 lambda!156678))))

(declare-fun bs!763348 () Bool)

(assert (= bs!763348 (and d!1347146 d!1347008)))

(assert (=> bs!763348 (= (= lt!1634303 lt!1634665) (= lambda!156703 lambda!156676))))

(declare-fun bs!763349 () Bool)

(assert (= bs!763349 (and d!1347146 b!4437836)))

(assert (=> bs!763349 (= (= lt!1634303 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156703 lambda!156673))))

(declare-fun bs!763350 () Bool)

(assert (= bs!763350 (and d!1347146 b!4437834)))

(assert (=> bs!763350 (= (= lt!1634303 lt!1634668) (= lambda!156703 lambda!156675))))

(assert (=> bs!763350 (= (= lt!1634303 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156703 lambda!156674))))

(declare-fun bs!763351 () Bool)

(assert (= bs!763351 (and d!1347146 d!1346872)))

(assert (=> bs!763351 (= (= lt!1634303 lt!1634520) (= lambda!156703 lambda!156646))))

(declare-fun bs!763352 () Bool)

(assert (= bs!763352 (and d!1347146 d!1347024)))

(assert (=> bs!763352 (= (= lt!1634303 lt!1634695) (= lambda!156703 lambda!156685))))

(declare-fun bs!763353 () Bool)

(assert (= bs!763353 (and d!1347146 b!4437694)))

(assert (=> bs!763353 (= (= lt!1634303 lt!1634523) (= lambda!156703 lambda!156645))))

(assert (=> bs!763353 (= lambda!156703 lambda!156644)))

(declare-fun bs!763354 () Bool)

(assert (= bs!763354 (and d!1347146 b!4437696)))

(assert (=> bs!763354 (= lambda!156703 lambda!156643)))

(assert (=> bs!763346 (= (= lt!1634303 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156703 lambda!156681))))

(declare-fun bs!763355 () Bool)

(assert (= bs!763355 (and d!1347146 d!1346868)))

(assert (=> bs!763355 (not (= lambda!156703 lambda!156561))))

(assert (=> d!1347146 true))

(assert (=> d!1347146 (forall!9668 (toList!3610 lt!1634303) lambda!156703)))

(declare-fun lt!1634833 () Unit!83561)

(declare-fun choose!28180 (ListMap!2853) Unit!83561)

(assert (=> d!1347146 (= lt!1634833 (choose!28180 lt!1634303))))

(assert (=> d!1347146 (= (lemmaContainsAllItsOwnKeys!201 lt!1634303) lt!1634833)))

(declare-fun bs!763356 () Bool)

(assert (= bs!763356 d!1347146))

(declare-fun m!5126191 () Bool)

(assert (=> bs!763356 m!5126191))

(declare-fun m!5126193 () Bool)

(assert (=> bs!763356 m!5126193))

(assert (=> bm!308817 d!1347146))

(declare-fun d!1347168 () Bool)

(assert (=> d!1347168 (= (head!9278 (toList!3609 lm!1616)) (h!55447 (toList!3609 lm!1616)))))

(assert (=> d!1346976 d!1347168))

(declare-fun d!1347170 () Bool)

(declare-fun e!2763512 () Bool)

(assert (=> d!1347170 e!2763512))

(declare-fun res!1837051 () Bool)

(assert (=> d!1347170 (=> res!1837051 e!2763512)))

(declare-fun lt!1634839 () Bool)

(assert (=> d!1347170 (= res!1837051 (not lt!1634839))))

(declare-fun lt!1634837 () Bool)

(assert (=> d!1347170 (= lt!1634839 lt!1634837)))

(declare-fun lt!1634838 () Unit!83561)

(declare-fun e!2763511 () Unit!83561)

(assert (=> d!1347170 (= lt!1634838 e!2763511)))

(declare-fun c!755411 () Bool)

(assert (=> d!1347170 (= c!755411 lt!1634837)))

(assert (=> d!1347170 (= lt!1634837 (containsKey!1212 (toList!3609 lt!1634592) (_1!28106 lt!1634309)))))

(assert (=> d!1347170 (= (contains!12289 lt!1634592 (_1!28106 lt!1634309)) lt!1634839)))

(declare-fun b!4438149 () Bool)

(declare-fun lt!1634834 () Unit!83561)

(assert (=> b!4438149 (= e!2763511 lt!1634834)))

(assert (=> b!4438149 (= lt!1634834 (lemmaContainsKeyImpliesGetValueByKeyDefined!677 (toList!3609 lt!1634592) (_1!28106 lt!1634309)))))

(assert (=> b!4438149 (isDefined!8074 (getValueByKey!767 (toList!3609 lt!1634592) (_1!28106 lt!1634309)))))

(declare-fun b!4438150 () Bool)

(declare-fun Unit!83646 () Unit!83561)

(assert (=> b!4438150 (= e!2763511 Unit!83646)))

(declare-fun b!4438151 () Bool)

(assert (=> b!4438151 (= e!2763512 (isDefined!8074 (getValueByKey!767 (toList!3609 lt!1634592) (_1!28106 lt!1634309))))))

(assert (= (and d!1347170 c!755411) b!4438149))

(assert (= (and d!1347170 (not c!755411)) b!4438150))

(assert (= (and d!1347170 (not res!1837051)) b!4438151))

(declare-fun m!5126195 () Bool)

(assert (=> d!1347170 m!5126195))

(declare-fun m!5126197 () Bool)

(assert (=> b!4438149 m!5126197))

(assert (=> b!4438149 m!5125549))

(assert (=> b!4438149 m!5125549))

(declare-fun m!5126199 () Bool)

(assert (=> b!4438149 m!5126199))

(assert (=> b!4438151 m!5125549))

(assert (=> b!4438151 m!5125549))

(assert (=> b!4438151 m!5126199))

(assert (=> d!1346960 d!1347170))

(declare-fun b!4438155 () Bool)

(declare-fun e!2763514 () Option!10781)

(assert (=> b!4438155 (= e!2763514 None!10780)))

(declare-fun b!4438152 () Bool)

(declare-fun e!2763513 () Option!10781)

(assert (=> b!4438152 (= e!2763513 (Some!10780 (_2!28106 (h!55447 lt!1634591))))))

(declare-fun b!4438154 () Bool)

(assert (=> b!4438154 (= e!2763514 (getValueByKey!767 (t!356800 lt!1634591) (_1!28106 lt!1634309)))))

(declare-fun b!4438153 () Bool)

(assert (=> b!4438153 (= e!2763513 e!2763514)))

(declare-fun c!755413 () Bool)

(assert (=> b!4438153 (= c!755413 (and ((_ is Cons!49734) lt!1634591) (not (= (_1!28106 (h!55447 lt!1634591)) (_1!28106 lt!1634309)))))))

(declare-fun d!1347172 () Bool)

(declare-fun c!755412 () Bool)

(assert (=> d!1347172 (= c!755412 (and ((_ is Cons!49734) lt!1634591) (= (_1!28106 (h!55447 lt!1634591)) (_1!28106 lt!1634309))))))

(assert (=> d!1347172 (= (getValueByKey!767 lt!1634591 (_1!28106 lt!1634309)) e!2763513)))

(assert (= (and d!1347172 c!755412) b!4438152))

(assert (= (and d!1347172 (not c!755412)) b!4438153))

(assert (= (and b!4438153 c!755413) b!4438154))

(assert (= (and b!4438153 (not c!755413)) b!4438155))

(declare-fun m!5126201 () Bool)

(assert (=> b!4438154 m!5126201))

(assert (=> d!1346960 d!1347172))

(declare-fun d!1347174 () Bool)

(assert (=> d!1347174 (= (getValueByKey!767 lt!1634591 (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309)))))

(declare-fun lt!1634864 () Unit!83561)

(declare-fun choose!28181 (List!49858 (_ BitVec 64) List!49857) Unit!83561)

(assert (=> d!1347174 (= lt!1634864 (choose!28181 lt!1634591 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(declare-fun e!2763521 () Bool)

(assert (=> d!1347174 e!2763521))

(declare-fun res!1837060 () Bool)

(assert (=> d!1347174 (=> (not res!1837060) (not e!2763521))))

(assert (=> d!1347174 (= res!1837060 (isStrictlySorted!260 lt!1634591))))

(assert (=> d!1347174 (= (lemmaContainsTupThenGetReturnValue!500 lt!1634591 (_1!28106 lt!1634309) (_2!28106 lt!1634309)) lt!1634864)))

(declare-fun b!4438166 () Bool)

(declare-fun res!1837061 () Bool)

(assert (=> b!4438166 (=> (not res!1837061) (not e!2763521))))

(assert (=> b!4438166 (= res!1837061 (containsKey!1212 lt!1634591 (_1!28106 lt!1634309)))))

(declare-fun b!4438167 () Bool)

(assert (=> b!4438167 (= e!2763521 (contains!12294 lt!1634591 (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309))))))

(assert (= (and d!1347174 res!1837060) b!4438166))

(assert (= (and b!4438166 res!1837061) b!4438167))

(assert (=> d!1347174 m!5125543))

(declare-fun m!5126209 () Bool)

(assert (=> d!1347174 m!5126209))

(declare-fun m!5126211 () Bool)

(assert (=> d!1347174 m!5126211))

(declare-fun m!5126213 () Bool)

(assert (=> b!4438166 m!5126213))

(declare-fun m!5126215 () Bool)

(assert (=> b!4438167 m!5126215))

(assert (=> d!1346960 d!1347174))

(declare-fun d!1347178 () Bool)

(declare-fun e!2763549 () Bool)

(assert (=> d!1347178 e!2763549))

(declare-fun res!1837076 () Bool)

(assert (=> d!1347178 (=> (not res!1837076) (not e!2763549))))

(declare-fun lt!1634883 () List!49858)

(assert (=> d!1347178 (= res!1837076 (isStrictlySorted!260 lt!1634883))))

(declare-fun e!2763548 () List!49858)

(assert (=> d!1347178 (= lt!1634883 e!2763548)))

(declare-fun c!755432 () Bool)

(assert (=> d!1347178 (= c!755432 (and ((_ is Cons!49734) (toList!3609 lt!1634306)) (bvslt (_1!28106 (h!55447 (toList!3609 lt!1634306))) (_1!28106 lt!1634309))))))

(assert (=> d!1347178 (isStrictlySorted!260 (toList!3609 lt!1634306))))

(assert (=> d!1347178 (= (insertStrictlySorted!288 (toList!3609 lt!1634306) (_1!28106 lt!1634309) (_2!28106 lt!1634309)) lt!1634883)))

(declare-fun bm!308870 () Bool)

(declare-fun call!308875 () List!49858)

(declare-fun call!308877 () List!49858)

(assert (=> bm!308870 (= call!308875 call!308877)))

(declare-fun e!2763552 () List!49858)

(declare-fun c!755431 () Bool)

(declare-fun c!755430 () Bool)

(declare-fun b!4438210 () Bool)

(assert (=> b!4438210 (= e!2763552 (ite c!755431 (t!356800 (toList!3609 lt!1634306)) (ite c!755430 (Cons!49734 (h!55447 (toList!3609 lt!1634306)) (t!356800 (toList!3609 lt!1634306))) Nil!49734)))))

(declare-fun b!4438211 () Bool)

(assert (=> b!4438211 (= e!2763552 (insertStrictlySorted!288 (t!356800 (toList!3609 lt!1634306)) (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(declare-fun b!4438212 () Bool)

(declare-fun call!308876 () List!49858)

(assert (=> b!4438212 (= e!2763548 call!308876)))

(declare-fun b!4438213 () Bool)

(assert (=> b!4438213 (= e!2763549 (contains!12294 lt!1634883 (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309))))))

(declare-fun bm!308871 () Bool)

(declare-fun $colon$colon!812 (List!49858 tuple2!49624) List!49858)

(assert (=> bm!308871 (= call!308876 ($colon$colon!812 e!2763552 (ite c!755432 (h!55447 (toList!3609 lt!1634306)) (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))))

(declare-fun c!755429 () Bool)

(assert (=> bm!308871 (= c!755429 c!755432)))

(declare-fun bm!308872 () Bool)

(assert (=> bm!308872 (= call!308877 call!308876)))

(declare-fun b!4438214 () Bool)

(declare-fun e!2763550 () List!49858)

(assert (=> b!4438214 (= e!2763548 e!2763550)))

(assert (=> b!4438214 (= c!755431 (and ((_ is Cons!49734) (toList!3609 lt!1634306)) (= (_1!28106 (h!55447 (toList!3609 lt!1634306))) (_1!28106 lt!1634309))))))

(declare-fun b!4438215 () Bool)

(assert (=> b!4438215 (= e!2763550 call!308877)))

(declare-fun b!4438216 () Bool)

(declare-fun e!2763551 () List!49858)

(assert (=> b!4438216 (= e!2763551 call!308875)))

(declare-fun b!4438217 () Bool)

(declare-fun res!1837077 () Bool)

(assert (=> b!4438217 (=> (not res!1837077) (not e!2763549))))

(assert (=> b!4438217 (= res!1837077 (containsKey!1212 lt!1634883 (_1!28106 lt!1634309)))))

(declare-fun b!4438218 () Bool)

(assert (=> b!4438218 (= c!755430 (and ((_ is Cons!49734) (toList!3609 lt!1634306)) (bvsgt (_1!28106 (h!55447 (toList!3609 lt!1634306))) (_1!28106 lt!1634309))))))

(assert (=> b!4438218 (= e!2763550 e!2763551)))

(declare-fun b!4438219 () Bool)

(assert (=> b!4438219 (= e!2763551 call!308875)))

(assert (= (and d!1347178 c!755432) b!4438212))

(assert (= (and d!1347178 (not c!755432)) b!4438214))

(assert (= (and b!4438214 c!755431) b!4438215))

(assert (= (and b!4438214 (not c!755431)) b!4438218))

(assert (= (and b!4438218 c!755430) b!4438216))

(assert (= (and b!4438218 (not c!755430)) b!4438219))

(assert (= (or b!4438216 b!4438219) bm!308870))

(assert (= (or b!4438215 bm!308870) bm!308872))

(assert (= (or b!4438212 bm!308872) bm!308871))

(assert (= (and bm!308871 c!755429) b!4438211))

(assert (= (and bm!308871 (not c!755429)) b!4438210))

(assert (= (and d!1347178 res!1837076) b!4438217))

(assert (= (and b!4438217 res!1837077) b!4438213))

(declare-fun m!5126299 () Bool)

(assert (=> bm!308871 m!5126299))

(declare-fun m!5126301 () Bool)

(assert (=> b!4438217 m!5126301))

(declare-fun m!5126303 () Bool)

(assert (=> b!4438213 m!5126303))

(declare-fun m!5126305 () Bool)

(assert (=> b!4438211 m!5126305))

(declare-fun m!5126307 () Bool)

(assert (=> d!1347178 m!5126307))

(declare-fun m!5126309 () Bool)

(assert (=> d!1347178 m!5126309))

(assert (=> d!1346960 d!1347178))

(declare-fun d!1347190 () Bool)

(assert (=> d!1347190 (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(declare-fun lt!1634886 () Unit!83561)

(declare-fun choose!28182 (List!49857 K!11100) Unit!83561)

(assert (=> d!1347190 (= lt!1634886 (choose!28182 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> d!1347190 (invariantList!833 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347190 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) lt!1634886)))

(declare-fun bs!763402 () Bool)

(assert (= bs!763402 d!1347190))

(assert (=> bs!763402 m!5125581))

(assert (=> bs!763402 m!5125581))

(assert (=> bs!763402 m!5125583))

(declare-fun m!5126311 () Bool)

(assert (=> bs!763402 m!5126311))

(assert (=> bs!763402 m!5125757))

(assert (=> b!4437767 d!1347190))

(assert (=> b!4437767 d!1347030))

(assert (=> b!4437767 d!1347032))

(declare-fun d!1347192 () Bool)

(assert (=> d!1347192 (contains!12293 (getKeysList!280 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717)))

(declare-fun lt!1634891 () Unit!83561)

(declare-fun choose!28183 (List!49857 K!11100) Unit!83561)

(assert (=> d!1347192 (= lt!1634891 (choose!28183 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717))))

(assert (=> d!1347192 (invariantList!833 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347192 (= (lemmaInListThenGetKeysListContains!277 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) lt!1634891)))

(declare-fun bs!763403 () Bool)

(assert (= bs!763403 d!1347192))

(assert (=> bs!763403 m!5125595))

(assert (=> bs!763403 m!5125595))

(declare-fun m!5126313 () Bool)

(assert (=> bs!763403 m!5126313))

(declare-fun m!5126315 () Bool)

(assert (=> bs!763403 m!5126315))

(assert (=> bs!763403 m!5125757))

(assert (=> b!4437767 d!1347192))

(declare-fun d!1347194 () Bool)

(declare-fun res!1837078 () Bool)

(declare-fun e!2763553 () Bool)

(assert (=> d!1347194 (=> res!1837078 e!2763553)))

(assert (=> d!1347194 (= res!1837078 (not ((_ is Cons!49733) (_2!28106 (tuple2!49625 hash!366 newBucket!194)))))))

(assert (=> d!1347194 (= (noDuplicateKeys!811 (_2!28106 (tuple2!49625 hash!366 newBucket!194))) e!2763553)))

(declare-fun b!4438221 () Bool)

(declare-fun e!2763554 () Bool)

(assert (=> b!4438221 (= e!2763553 e!2763554)))

(declare-fun res!1837079 () Bool)

(assert (=> b!4438221 (=> (not res!1837079) (not e!2763554))))

(assert (=> b!4438221 (= res!1837079 (not (containsKey!1208 (t!356799 (_2!28106 (tuple2!49625 hash!366 newBucket!194))) (_1!28105 (h!55446 (_2!28106 (tuple2!49625 hash!366 newBucket!194)))))))))

(declare-fun b!4438222 () Bool)

(assert (=> b!4438222 (= e!2763554 (noDuplicateKeys!811 (t!356799 (_2!28106 (tuple2!49625 hash!366 newBucket!194)))))))

(assert (= (and d!1347194 (not res!1837078)) b!4438221))

(assert (= (and b!4438221 res!1837079) b!4438222))

(declare-fun m!5126317 () Bool)

(assert (=> b!4438221 m!5126317))

(declare-fun m!5126319 () Bool)

(assert (=> b!4438222 m!5126319))

(assert (=> bs!763150 d!1347194))

(declare-fun d!1347196 () Bool)

(assert (=> d!1347196 (= (invariantList!833 (toList!3610 lt!1634595)) (noDuplicatedKeys!190 (toList!3610 lt!1634595)))))

(declare-fun bs!763404 () Bool)

(assert (= bs!763404 d!1347196))

(declare-fun m!5126321 () Bool)

(assert (=> bs!763404 m!5126321))

(assert (=> d!1346962 d!1347196))

(declare-fun d!1347198 () Bool)

(declare-fun res!1837080 () Bool)

(declare-fun e!2763555 () Bool)

(assert (=> d!1347198 (=> res!1837080 e!2763555)))

(assert (=> d!1347198 (= res!1837080 ((_ is Nil!49734) (toList!3609 lt!1634306)))))

(assert (=> d!1347198 (= (forall!9666 (toList!3609 lt!1634306) lambda!156656) e!2763555)))

(declare-fun b!4438223 () Bool)

(declare-fun e!2763556 () Bool)

(assert (=> b!4438223 (= e!2763555 e!2763556)))

(declare-fun res!1837081 () Bool)

(assert (=> b!4438223 (=> (not res!1837081) (not e!2763556))))

(assert (=> b!4438223 (= res!1837081 (dynLambda!20896 lambda!156656 (h!55447 (toList!3609 lt!1634306))))))

(declare-fun b!4438224 () Bool)

(assert (=> b!4438224 (= e!2763556 (forall!9666 (t!356800 (toList!3609 lt!1634306)) lambda!156656))))

(assert (= (and d!1347198 (not res!1837080)) b!4438223))

(assert (= (and b!4438223 res!1837081) b!4438224))

(declare-fun b_lambda!144757 () Bool)

(assert (=> (not b_lambda!144757) (not b!4438223)))

(declare-fun m!5126323 () Bool)

(assert (=> b!4438223 m!5126323))

(declare-fun m!5126325 () Bool)

(assert (=> b!4438224 m!5126325))

(assert (=> d!1346962 d!1347198))

(declare-fun d!1347200 () Bool)

(declare-fun res!1837082 () Bool)

(declare-fun e!2763557 () Bool)

(assert (=> d!1347200 (=> res!1837082 e!2763557)))

(assert (=> d!1347200 (= res!1837082 (and ((_ is Cons!49733) (t!356799 newBucket!194)) (= (_1!28105 (h!55446 (t!356799 newBucket!194))) (_1!28105 (h!55446 newBucket!194)))))))

(assert (=> d!1347200 (= (containsKey!1208 (t!356799 newBucket!194) (_1!28105 (h!55446 newBucket!194))) e!2763557)))

(declare-fun b!4438225 () Bool)

(declare-fun e!2763558 () Bool)

(assert (=> b!4438225 (= e!2763557 e!2763558)))

(declare-fun res!1837083 () Bool)

(assert (=> b!4438225 (=> (not res!1837083) (not e!2763558))))

(assert (=> b!4438225 (= res!1837083 ((_ is Cons!49733) (t!356799 newBucket!194)))))

(declare-fun b!4438226 () Bool)

(assert (=> b!4438226 (= e!2763558 (containsKey!1208 (t!356799 (t!356799 newBucket!194)) (_1!28105 (h!55446 newBucket!194))))))

(assert (= (and d!1347200 (not res!1837082)) b!4438225))

(assert (= (and b!4438225 res!1837083) b!4438226))

(declare-fun m!5126327 () Bool)

(assert (=> b!4438226 m!5126327))

(assert (=> b!4437738 d!1347200))

(assert (=> b!4437719 d!1347004))

(declare-fun d!1347202 () Bool)

(declare-fun res!1837092 () Bool)

(declare-fun e!2763567 () Bool)

(assert (=> d!1347202 (=> res!1837092 e!2763567)))

(assert (=> d!1347202 (= res!1837092 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)))))

(assert (=> d!1347202 (= (containsKey!1212 (toList!3609 lm!1616) hash!366) e!2763567)))

(declare-fun b!4438235 () Bool)

(declare-fun e!2763568 () Bool)

(assert (=> b!4438235 (= e!2763567 e!2763568)))

(declare-fun res!1837093 () Bool)

(assert (=> b!4438235 (=> (not res!1837093) (not e!2763568))))

(assert (=> b!4438235 (= res!1837093 (and (or (not ((_ is Cons!49734) (toList!3609 lm!1616))) (bvsle (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)) ((_ is Cons!49734) (toList!3609 lm!1616)) (bvslt (_1!28106 (h!55447 (toList!3609 lm!1616))) hash!366)))))

(declare-fun b!4438236 () Bool)

(assert (=> b!4438236 (= e!2763568 (containsKey!1212 (t!356800 (toList!3609 lm!1616)) hash!366))))

(assert (= (and d!1347202 (not res!1837092)) b!4438235))

(assert (= (and b!4438235 res!1837093) b!4438236))

(declare-fun m!5126345 () Bool)

(assert (=> b!4438236 m!5126345))

(assert (=> d!1346978 d!1347202))

(declare-fun d!1347210 () Bool)

(declare-fun lt!1634893 () Bool)

(assert (=> d!1347210 (= lt!1634893 (select (content!8008 (toList!3609 lt!1634570)) lt!1634309))))

(declare-fun e!2763572 () Bool)

(assert (=> d!1347210 (= lt!1634893 e!2763572)))

(declare-fun res!1837096 () Bool)

(assert (=> d!1347210 (=> (not res!1837096) (not e!2763572))))

(assert (=> d!1347210 (= res!1837096 ((_ is Cons!49734) (toList!3609 lt!1634570)))))

(assert (=> d!1347210 (= (contains!12294 (toList!3609 lt!1634570) lt!1634309) lt!1634893)))

(declare-fun b!4438239 () Bool)

(declare-fun e!2763571 () Bool)

(assert (=> b!4438239 (= e!2763572 e!2763571)))

(declare-fun res!1837097 () Bool)

(assert (=> b!4438239 (=> res!1837097 e!2763571)))

(assert (=> b!4438239 (= res!1837097 (= (h!55447 (toList!3609 lt!1634570)) lt!1634309))))

(declare-fun b!4438240 () Bool)

(assert (=> b!4438240 (= e!2763571 (contains!12294 (t!356800 (toList!3609 lt!1634570)) lt!1634309))))

(assert (= (and d!1347210 res!1837096) b!4438239))

(assert (= (and b!4438239 (not res!1837097)) b!4438240))

(declare-fun m!5126347 () Bool)

(assert (=> d!1347210 m!5126347))

(declare-fun m!5126349 () Bool)

(assert (=> d!1347210 m!5126349))

(declare-fun m!5126351 () Bool)

(assert (=> b!4438240 m!5126351))

(assert (=> b!4437747 d!1347210))

(declare-fun d!1347214 () Bool)

(declare-fun lt!1634898 () Bool)

(assert (=> d!1347214 (= lt!1634898 (select (content!8005 e!2763254) key!3717))))

(declare-fun e!2763574 () Bool)

(assert (=> d!1347214 (= lt!1634898 e!2763574)))

(declare-fun res!1837101 () Bool)

(assert (=> d!1347214 (=> (not res!1837101) (not e!2763574))))

(assert (=> d!1347214 (= res!1837101 ((_ is Cons!49736) e!2763254))))

(assert (=> d!1347214 (= (contains!12293 e!2763254 key!3717) lt!1634898)))

(declare-fun b!4438243 () Bool)

(declare-fun e!2763575 () Bool)

(assert (=> b!4438243 (= e!2763574 e!2763575)))

(declare-fun res!1837100 () Bool)

(assert (=> b!4438243 (=> res!1837100 e!2763575)))

(assert (=> b!4438243 (= res!1837100 (= (h!55451 e!2763254) key!3717))))

(declare-fun b!4438244 () Bool)

(assert (=> b!4438244 (= e!2763575 (contains!12293 (t!356802 e!2763254) key!3717))))

(assert (= (and d!1347214 res!1837101) b!4438243))

(assert (= (and b!4438243 (not res!1837100)) b!4438244))

(declare-fun m!5126363 () Bool)

(assert (=> d!1347214 m!5126363))

(declare-fun m!5126367 () Bool)

(assert (=> d!1347214 m!5126367))

(declare-fun m!5126369 () Bool)

(assert (=> b!4438244 m!5126369))

(assert (=> bm!308821 d!1347214))

(declare-fun d!1347218 () Bool)

(declare-fun res!1837102 () Bool)

(declare-fun e!2763578 () Bool)

(assert (=> d!1347218 (=> res!1837102 e!2763578)))

(assert (=> d!1347218 (= res!1837102 ((_ is Nil!49734) (t!356800 (toList!3609 lt!1634311))))))

(assert (=> d!1347218 (= (forall!9666 (t!356800 (toList!3609 lt!1634311)) lambda!156552) e!2763578)))

(declare-fun b!4438249 () Bool)

(declare-fun e!2763579 () Bool)

(assert (=> b!4438249 (= e!2763578 e!2763579)))

(declare-fun res!1837103 () Bool)

(assert (=> b!4438249 (=> (not res!1837103) (not e!2763579))))

(assert (=> b!4438249 (= res!1837103 (dynLambda!20896 lambda!156552 (h!55447 (t!356800 (toList!3609 lt!1634311)))))))

(declare-fun b!4438250 () Bool)

(assert (=> b!4438250 (= e!2763579 (forall!9666 (t!356800 (t!356800 (toList!3609 lt!1634311))) lambda!156552))))

(assert (= (and d!1347218 (not res!1837102)) b!4438249))

(assert (= (and b!4438249 res!1837103) b!4438250))

(declare-fun b_lambda!144765 () Bool)

(assert (=> (not b_lambda!144765) (not b!4438249)))

(declare-fun m!5126373 () Bool)

(assert (=> b!4438249 m!5126373))

(declare-fun m!5126375 () Bool)

(assert (=> b!4438250 m!5126375))

(assert (=> b!4437741 d!1347218))

(declare-fun b!4438251 () Bool)

(declare-fun e!2763580 () Option!10782)

(assert (=> b!4438251 (= e!2763580 (Some!10781 (_2!28105 (h!55446 (toList!3610 lt!1634588)))))))

(declare-fun d!1347222 () Bool)

(declare-fun c!755435 () Bool)

(assert (=> d!1347222 (= c!755435 (and ((_ is Cons!49733) (toList!3610 lt!1634588)) (= (_1!28105 (h!55446 (toList!3610 lt!1634588))) (_1!28105 (tuple2!49623 key!3717 newValue!93)))))))

(assert (=> d!1347222 (= (getValueByKey!768 (toList!3610 lt!1634588) (_1!28105 (tuple2!49623 key!3717 newValue!93))) e!2763580)))

(declare-fun b!4438254 () Bool)

(declare-fun e!2763581 () Option!10782)

(assert (=> b!4438254 (= e!2763581 None!10781)))

(declare-fun b!4438253 () Bool)

(assert (=> b!4438253 (= e!2763581 (getValueByKey!768 (t!356799 (toList!3610 lt!1634588)) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun b!4438252 () Bool)

(assert (=> b!4438252 (= e!2763580 e!2763581)))

(declare-fun c!755436 () Bool)

(assert (=> b!4438252 (= c!755436 (and ((_ is Cons!49733) (toList!3610 lt!1634588)) (not (= (_1!28105 (h!55446 (toList!3610 lt!1634588))) (_1!28105 (tuple2!49623 key!3717 newValue!93))))))))

(assert (= (and d!1347222 c!755435) b!4438251))

(assert (= (and d!1347222 (not c!755435)) b!4438252))

(assert (= (and b!4438252 c!755436) b!4438253))

(assert (= (and b!4438252 (not c!755436)) b!4438254))

(declare-fun m!5126377 () Bool)

(assert (=> b!4438253 m!5126377))

(assert (=> b!4437756 d!1347222))

(declare-fun d!1347224 () Bool)

(declare-fun lt!1634899 () Bool)

(assert (=> d!1347224 (= lt!1634899 (select (content!8005 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717))))

(declare-fun e!2763582 () Bool)

(assert (=> d!1347224 (= lt!1634899 e!2763582)))

(declare-fun res!1837105 () Bool)

(assert (=> d!1347224 (=> (not res!1837105) (not e!2763582))))

(assert (=> d!1347224 (= res!1837105 ((_ is Cons!49736) (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))

(assert (=> d!1347224 (= (contains!12293 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) key!3717) lt!1634899)))

(declare-fun b!4438255 () Bool)

(declare-fun e!2763583 () Bool)

(assert (=> b!4438255 (= e!2763582 e!2763583)))

(declare-fun res!1837104 () Bool)

(assert (=> b!4438255 (=> res!1837104 e!2763583)))

(assert (=> b!4438255 (= res!1837104 (= (h!55451 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717))))

(declare-fun b!4438256 () Bool)

(assert (=> b!4438256 (= e!2763583 (contains!12293 (t!356802 (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) key!3717))))

(assert (= (and d!1347224 res!1837105) b!4438255))

(assert (= (and b!4438255 (not res!1837104)) b!4438256))

(assert (=> d!1347224 m!5125579))

(declare-fun m!5126379 () Bool)

(assert (=> d!1347224 m!5126379))

(declare-fun m!5126381 () Bool)

(assert (=> d!1347224 m!5126381))

(declare-fun m!5126383 () Bool)

(assert (=> b!4438256 m!5126383))

(assert (=> b!4437773 d!1347224))

(declare-fun bs!763423 () Bool)

(declare-fun b!4438258 () Bool)

(assert (= bs!763423 (and b!4438258 b!4437824)))

(declare-fun lambda!156713 () Int)

(assert (=> bs!763423 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (toList!3610 lt!1634308)) (= lambda!156713 lambda!156668))))

(assert (=> b!4438258 true))

(declare-fun bs!763424 () Bool)

(declare-fun b!4438259 () Bool)

(assert (= bs!763424 (and b!4438259 b!4437825)))

(declare-fun lambda!156714 () Int)

(assert (=> bs!763424 (= lambda!156714 lambda!156669)))

(declare-fun d!1347226 () Bool)

(declare-fun e!2763584 () Bool)

(assert (=> d!1347226 e!2763584))

(declare-fun res!1837108 () Bool)

(assert (=> d!1347226 (=> (not res!1837108) (not e!2763584))))

(declare-fun lt!1634900 () List!49860)

(assert (=> d!1347226 (= res!1837108 (noDuplicate!673 lt!1634900))))

(assert (=> d!1347226 (= lt!1634900 (getKeysList!280 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))

(assert (=> d!1347226 (= (keys!17022 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) lt!1634900)))

(declare-fun b!4438257 () Bool)

(declare-fun res!1837107 () Bool)

(assert (=> b!4438257 (=> (not res!1837107) (not e!2763584))))

(assert (=> b!4438257 (= res!1837107 (= (length!202 lt!1634900) (length!203 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))))

(declare-fun res!1837106 () Bool)

(assert (=> b!4438258 (=> (not res!1837106) (not e!2763584))))

(assert (=> b!4438258 (= res!1837106 (forall!9669 lt!1634900 lambda!156713))))

(assert (=> b!4438259 (= e!2763584 (= (content!8005 lt!1634900) (content!8005 (map!10876 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) lambda!156714))))))

(assert (= (and d!1347226 res!1837108) b!4438257))

(assert (= (and b!4438257 res!1837107) b!4438258))

(assert (= (and b!4438258 res!1837106) b!4438259))

(declare-fun m!5126385 () Bool)

(assert (=> d!1347226 m!5126385))

(assert (=> d!1347226 m!5125595))

(declare-fun m!5126387 () Bool)

(assert (=> b!4438257 m!5126387))

(declare-fun m!5126389 () Bool)

(assert (=> b!4438257 m!5126389))

(declare-fun m!5126391 () Bool)

(assert (=> b!4438258 m!5126391))

(declare-fun m!5126393 () Bool)

(assert (=> b!4438259 m!5126393))

(declare-fun m!5126395 () Bool)

(assert (=> b!4438259 m!5126395))

(assert (=> b!4438259 m!5126395))

(declare-fun m!5126397 () Bool)

(assert (=> b!4438259 m!5126397))

(assert (=> b!4437773 d!1347226))

(declare-fun d!1347228 () Bool)

(assert (=> d!1347228 (= (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634308) key!3717)) (not (isEmpty!28380 (getValueByKey!768 (toList!3610 lt!1634308) key!3717))))))

(declare-fun bs!763425 () Bool)

(assert (= bs!763425 d!1347228))

(assert (=> bs!763425 m!5125453))

(declare-fun m!5126399 () Bool)

(assert (=> bs!763425 m!5126399))

(assert (=> b!4437723 d!1347228))

(declare-fun b!4438268 () Bool)

(declare-fun e!2763589 () Option!10782)

(assert (=> b!4438268 (= e!2763589 (Some!10781 (_2!28105 (h!55446 (toList!3610 lt!1634308)))))))

(declare-fun d!1347230 () Bool)

(declare-fun c!755441 () Bool)

(assert (=> d!1347230 (= c!755441 (and ((_ is Cons!49733) (toList!3610 lt!1634308)) (= (_1!28105 (h!55446 (toList!3610 lt!1634308))) key!3717)))))

(assert (=> d!1347230 (= (getValueByKey!768 (toList!3610 lt!1634308) key!3717) e!2763589)))

(declare-fun b!4438271 () Bool)

(declare-fun e!2763590 () Option!10782)

(assert (=> b!4438271 (= e!2763590 None!10781)))

(declare-fun b!4438270 () Bool)

(assert (=> b!4438270 (= e!2763590 (getValueByKey!768 (t!356799 (toList!3610 lt!1634308)) key!3717))))

(declare-fun b!4438269 () Bool)

(assert (=> b!4438269 (= e!2763589 e!2763590)))

(declare-fun c!755442 () Bool)

(assert (=> b!4438269 (= c!755442 (and ((_ is Cons!49733) (toList!3610 lt!1634308)) (not (= (_1!28105 (h!55446 (toList!3610 lt!1634308))) key!3717))))))

(assert (= (and d!1347230 c!755441) b!4438268))

(assert (= (and d!1347230 (not c!755441)) b!4438269))

(assert (= (and b!4438269 c!755442) b!4438270))

(assert (= (and b!4438269 (not c!755442)) b!4438271))

(declare-fun m!5126401 () Bool)

(assert (=> b!4438270 m!5126401))

(assert (=> b!4437723 d!1347230))

(declare-fun d!1347232 () Bool)

(declare-fun res!1837109 () Bool)

(declare-fun e!2763591 () Bool)

(assert (=> d!1347232 (=> res!1837109 e!2763591)))

(assert (=> d!1347232 (= res!1837109 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> d!1347232 (= (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156646) e!2763591)))

(declare-fun b!4438272 () Bool)

(declare-fun e!2763592 () Bool)

(assert (=> b!4438272 (= e!2763591 e!2763592)))

(declare-fun res!1837110 () Bool)

(assert (=> b!4438272 (=> (not res!1837110) (not e!2763592))))

(assert (=> b!4438272 (= res!1837110 (dynLambda!20898 lambda!156646 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun b!4438273 () Bool)

(assert (=> b!4438273 (= e!2763592 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156646))))

(assert (= (and d!1347232 (not res!1837109)) b!4438272))

(assert (= (and b!4438272 res!1837110) b!4438273))

(declare-fun b_lambda!144767 () Bool)

(assert (=> (not b_lambda!144767) (not b!4438272)))

(declare-fun m!5126403 () Bool)

(assert (=> b!4438272 m!5126403))

(declare-fun m!5126405 () Bool)

(assert (=> b!4438273 m!5126405))

(assert (=> d!1346872 d!1347232))

(assert (=> d!1346872 d!1347022))

(declare-fun d!1347234 () Bool)

(declare-fun c!755447 () Bool)

(assert (=> d!1347234 (= c!755447 ((_ is Nil!49733) (toList!3610 lt!1634310)))))

(declare-fun e!2763605 () (InoxSet tuple2!49622))

(assert (=> d!1347234 (= (content!8004 (toList!3610 lt!1634310)) e!2763605)))

(declare-fun b!4438290 () Bool)

(assert (=> b!4438290 (= e!2763605 ((as const (Array tuple2!49622 Bool)) false))))

(declare-fun b!4438291 () Bool)

(assert (=> b!4438291 (= e!2763605 ((_ map or) (store ((as const (Array tuple2!49622 Bool)) false) (h!55446 (toList!3610 lt!1634310)) true) (content!8004 (t!356799 (toList!3610 lt!1634310)))))))

(assert (= (and d!1347234 c!755447) b!4438290))

(assert (= (and d!1347234 (not c!755447)) b!4438291))

(declare-fun m!5126421 () Bool)

(assert (=> b!4438291 m!5126421))

(declare-fun m!5126423 () Bool)

(assert (=> b!4438291 m!5126423))

(assert (=> d!1346974 d!1347234))

(declare-fun d!1347244 () Bool)

(declare-fun c!755448 () Bool)

(assert (=> d!1347244 (= c!755448 ((_ is Nil!49733) (toList!3610 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun e!2763606 () (InoxSet tuple2!49622))

(assert (=> d!1347244 (= (content!8004 (toList!3610 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)))) e!2763606)))

(declare-fun b!4438292 () Bool)

(assert (=> b!4438292 (= e!2763606 ((as const (Array tuple2!49622 Bool)) false))))

(declare-fun b!4438293 () Bool)

(assert (=> b!4438293 (= e!2763606 ((_ map or) (store ((as const (Array tuple2!49622 Bool)) false) (h!55446 (toList!3610 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)))) true) (content!8004 (t!356799 (toList!3610 (+!1188 lt!1634303 (tuple2!49623 key!3717 newValue!93)))))))))

(assert (= (and d!1347244 c!755448) b!4438292))

(assert (= (and d!1347244 (not c!755448)) b!4438293))

(declare-fun m!5126425 () Bool)

(assert (=> b!4438293 m!5126425))

(declare-fun m!5126427 () Bool)

(assert (=> b!4438293 m!5126427))

(assert (=> d!1346974 d!1347244))

(declare-fun bs!763426 () Bool)

(declare-fun b!4438296 () Bool)

(assert (= bs!763426 (and b!4438296 b!4437857)))

(declare-fun lambda!156715 () Int)

(assert (=> bs!763426 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634698) (= lambda!156715 lambda!156684))))

(declare-fun bs!763428 () Bool)

(assert (= bs!763428 (and b!4438296 b!4437859)))

(assert (=> bs!763428 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156715 lambda!156678))))

(declare-fun bs!763430 () Bool)

(assert (= bs!763430 (and b!4438296 d!1347008)))

(assert (=> bs!763430 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634665) (= lambda!156715 lambda!156676))))

(declare-fun bs!763432 () Bool)

(assert (= bs!763432 (and b!4438296 b!4437836)))

(assert (=> bs!763432 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156715 lambda!156673))))

(declare-fun bs!763434 () Bool)

(assert (= bs!763434 (and b!4438296 b!4437834)))

(assert (=> bs!763434 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634668) (= lambda!156715 lambda!156675))))

(assert (=> bs!763434 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156715 lambda!156674))))

(declare-fun bs!763437 () Bool)

(assert (= bs!763437 (and b!4438296 d!1346872)))

(assert (=> bs!763437 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634520) (= lambda!156715 lambda!156646))))

(declare-fun bs!763439 () Bool)

(assert (= bs!763439 (and b!4438296 d!1347024)))

(assert (=> bs!763439 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634695) (= lambda!156715 lambda!156685))))

(declare-fun bs!763441 () Bool)

(assert (= bs!763441 (and b!4438296 b!4437694)))

(assert (=> bs!763441 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634523) (= lambda!156715 lambda!156645))))

(declare-fun bs!763443 () Bool)

(assert (= bs!763443 (and b!4438296 b!4437696)))

(assert (=> bs!763443 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156715 lambda!156643))))

(assert (=> bs!763426 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156715 lambda!156681))))

(declare-fun bs!763445 () Bool)

(assert (= bs!763445 (and b!4438296 d!1346868)))

(assert (=> bs!763445 (not (= lambda!156715 lambda!156561))))

(assert (=> bs!763441 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156715 lambda!156644))))

(declare-fun bs!763448 () Bool)

(assert (= bs!763448 (and b!4438296 d!1347146)))

(assert (=> bs!763448 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156715 lambda!156703))))

(assert (=> b!4438296 true))

(declare-fun bs!763454 () Bool)

(declare-fun b!4438294 () Bool)

(assert (= bs!763454 (and b!4438294 b!4437857)))

(declare-fun lambda!156717 () Int)

(assert (=> bs!763454 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634698) (= lambda!156717 lambda!156684))))

(declare-fun bs!763455 () Bool)

(assert (= bs!763455 (and b!4438294 b!4437859)))

(assert (=> bs!763455 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156717 lambda!156678))))

(declare-fun bs!763456 () Bool)

(assert (= bs!763456 (and b!4438294 d!1347008)))

(assert (=> bs!763456 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634665) (= lambda!156717 lambda!156676))))

(declare-fun bs!763458 () Bool)

(assert (= bs!763458 (and b!4438294 b!4437836)))

(assert (=> bs!763458 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156717 lambda!156673))))

(declare-fun bs!763459 () Bool)

(assert (= bs!763459 (and b!4438294 b!4437834)))

(assert (=> bs!763459 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634668) (= lambda!156717 lambda!156675))))

(assert (=> bs!763459 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156717 lambda!156674))))

(declare-fun bs!763460 () Bool)

(assert (= bs!763460 (and b!4438294 d!1346872)))

(assert (=> bs!763460 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634520) (= lambda!156717 lambda!156646))))

(declare-fun bs!763461 () Bool)

(assert (= bs!763461 (and b!4438294 d!1347024)))

(assert (=> bs!763461 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634695) (= lambda!156717 lambda!156685))))

(declare-fun bs!763462 () Bool)

(assert (= bs!763462 (and b!4438294 b!4437694)))

(assert (=> bs!763462 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634523) (= lambda!156717 lambda!156645))))

(declare-fun bs!763464 () Bool)

(assert (= bs!763464 (and b!4438294 b!4438296)))

(assert (=> bs!763464 (= lambda!156717 lambda!156715)))

(declare-fun bs!763465 () Bool)

(assert (= bs!763465 (and b!4438294 b!4437696)))

(assert (=> bs!763465 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156717 lambda!156643))))

(assert (=> bs!763454 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156717 lambda!156681))))

(declare-fun bs!763468 () Bool)

(assert (= bs!763468 (and b!4438294 d!1346868)))

(assert (=> bs!763468 (not (= lambda!156717 lambda!156561))))

(assert (=> bs!763462 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156717 lambda!156644))))

(declare-fun bs!763471 () Bool)

(assert (= bs!763471 (and b!4438294 d!1347146)))

(assert (=> bs!763471 (= (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634303) (= lambda!156717 lambda!156703))))

(assert (=> b!4438294 true))

(declare-fun lambda!156719 () Int)

(declare-fun lt!1634914 () ListMap!2853)

(assert (=> bs!763454 (= (= lt!1634914 lt!1634698) (= lambda!156719 lambda!156684))))

(assert (=> bs!763455 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156719 lambda!156678))))

(assert (=> bs!763456 (= (= lt!1634914 lt!1634665) (= lambda!156719 lambda!156676))))

(assert (=> bs!763458 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156719 lambda!156673))))

(assert (=> bs!763459 (= (= lt!1634914 lt!1634668) (= lambda!156719 lambda!156675))))

(assert (=> bs!763459 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156719 lambda!156674))))

(assert (=> bs!763460 (= (= lt!1634914 lt!1634520) (= lambda!156719 lambda!156646))))

(assert (=> bs!763461 (= (= lt!1634914 lt!1634695) (= lambda!156719 lambda!156685))))

(assert (=> bs!763462 (= (= lt!1634914 lt!1634523) (= lambda!156719 lambda!156645))))

(assert (=> bs!763464 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156719 lambda!156715))))

(assert (=> b!4438294 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156719 lambda!156717))))

(assert (=> bs!763465 (= (= lt!1634914 lt!1634303) (= lambda!156719 lambda!156643))))

(assert (=> bs!763454 (= (= lt!1634914 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156719 lambda!156681))))

(assert (=> bs!763468 (not (= lambda!156719 lambda!156561))))

(assert (=> bs!763462 (= (= lt!1634914 lt!1634303) (= lambda!156719 lambda!156644))))

(assert (=> bs!763471 (= (= lt!1634914 lt!1634303) (= lambda!156719 lambda!156703))))

(assert (=> b!4438294 true))

(declare-fun bs!763486 () Bool)

(declare-fun d!1347246 () Bool)

(assert (= bs!763486 (and d!1347246 b!4437857)))

(declare-fun lt!1634911 () ListMap!2853)

(declare-fun lambda!156721 () Int)

(assert (=> bs!763486 (= (= lt!1634911 lt!1634698) (= lambda!156721 lambda!156684))))

(declare-fun bs!763487 () Bool)

(assert (= bs!763487 (and d!1347246 b!4437859)))

(assert (=> bs!763487 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156721 lambda!156678))))

(declare-fun bs!763488 () Bool)

(assert (= bs!763488 (and d!1347246 d!1347008)))

(assert (=> bs!763488 (= (= lt!1634911 lt!1634665) (= lambda!156721 lambda!156676))))

(declare-fun bs!763489 () Bool)

(assert (= bs!763489 (and d!1347246 b!4437836)))

(assert (=> bs!763489 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156721 lambda!156673))))

(declare-fun bs!763490 () Bool)

(assert (= bs!763490 (and d!1347246 b!4437834)))

(assert (=> bs!763490 (= (= lt!1634911 lt!1634668) (= lambda!156721 lambda!156675))))

(assert (=> bs!763490 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156721 lambda!156674))))

(declare-fun bs!763491 () Bool)

(assert (= bs!763491 (and d!1347246 d!1346872)))

(assert (=> bs!763491 (= (= lt!1634911 lt!1634520) (= lambda!156721 lambda!156646))))

(declare-fun bs!763492 () Bool)

(assert (= bs!763492 (and d!1347246 d!1347024)))

(assert (=> bs!763492 (= (= lt!1634911 lt!1634695) (= lambda!156721 lambda!156685))))

(declare-fun bs!763493 () Bool)

(assert (= bs!763493 (and d!1347246 b!4438294)))

(assert (=> bs!763493 (= (= lt!1634911 lt!1634914) (= lambda!156721 lambda!156719))))

(declare-fun bs!763494 () Bool)

(assert (= bs!763494 (and d!1347246 b!4437694)))

(assert (=> bs!763494 (= (= lt!1634911 lt!1634523) (= lambda!156721 lambda!156645))))

(declare-fun bs!763495 () Bool)

(assert (= bs!763495 (and d!1347246 b!4438296)))

(assert (=> bs!763495 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156721 lambda!156715))))

(assert (=> bs!763493 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156721 lambda!156717))))

(declare-fun bs!763496 () Bool)

(assert (= bs!763496 (and d!1347246 b!4437696)))

(assert (=> bs!763496 (= (= lt!1634911 lt!1634303) (= lambda!156721 lambda!156643))))

(assert (=> bs!763486 (= (= lt!1634911 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156721 lambda!156681))))

(declare-fun bs!763497 () Bool)

(assert (= bs!763497 (and d!1347246 d!1346868)))

(assert (=> bs!763497 (not (= lambda!156721 lambda!156561))))

(assert (=> bs!763494 (= (= lt!1634911 lt!1634303) (= lambda!156721 lambda!156644))))

(declare-fun bs!763498 () Bool)

(assert (= bs!763498 (and d!1347246 d!1347146)))

(assert (=> bs!763498 (= (= lt!1634911 lt!1634303) (= lambda!156721 lambda!156703))))

(assert (=> d!1347246 true))

(declare-fun e!2763608 () ListMap!2853)

(assert (=> b!4438294 (= e!2763608 lt!1634914)))

(declare-fun lt!1634915 () ListMap!2853)

(assert (=> b!4438294 (= lt!1634915 (+!1188 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))))

(assert (=> b!4438294 (= lt!1634914 (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (+!1188 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))))

(declare-fun lt!1634906 () Unit!83561)

(declare-fun call!308879 () Unit!83561)

(assert (=> b!4438294 (= lt!1634906 call!308879)))

(declare-fun call!308878 () Bool)

(assert (=> b!4438294 call!308878))

(declare-fun lt!1634916 () Unit!83561)

(assert (=> b!4438294 (= lt!1634916 lt!1634906)))

(declare-fun call!308880 () Bool)

(assert (=> b!4438294 call!308880))

(declare-fun lt!1634902 () Unit!83561)

(declare-fun Unit!83660 () Unit!83561)

(assert (=> b!4438294 (= lt!1634902 Unit!83660)))

(assert (=> b!4438294 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lambda!156719)))

(declare-fun lt!1634907 () Unit!83561)

(declare-fun Unit!83662 () Unit!83561)

(assert (=> b!4438294 (= lt!1634907 Unit!83662)))

(declare-fun lt!1634920 () Unit!83561)

(declare-fun Unit!83664 () Unit!83561)

(assert (=> b!4438294 (= lt!1634920 Unit!83664)))

(declare-fun lt!1634903 () Unit!83561)

(assert (=> b!4438294 (= lt!1634903 (forallContained!2135 (toList!3610 lt!1634915) lambda!156719 (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))))

(assert (=> b!4438294 (contains!12288 lt!1634915 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))))

(declare-fun lt!1634905 () Unit!83561)

(declare-fun Unit!83666 () Unit!83561)

(assert (=> b!4438294 (= lt!1634905 Unit!83666)))

(assert (=> b!4438294 (contains!12288 lt!1634914 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))))

(declare-fun lt!1634904 () Unit!83561)

(declare-fun Unit!83668 () Unit!83561)

(assert (=> b!4438294 (= lt!1634904 Unit!83668)))

(assert (=> b!4438294 (forall!9668 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lambda!156719)))

(declare-fun lt!1634918 () Unit!83561)

(declare-fun Unit!83670 () Unit!83561)

(assert (=> b!4438294 (= lt!1634918 Unit!83670)))

(assert (=> b!4438294 (forall!9668 (toList!3610 lt!1634915) lambda!156719)))

(declare-fun lt!1634921 () Unit!83561)

(declare-fun Unit!83673 () Unit!83561)

(assert (=> b!4438294 (= lt!1634921 Unit!83673)))

(declare-fun lt!1634919 () Unit!83561)

(declare-fun Unit!83674 () Unit!83561)

(assert (=> b!4438294 (= lt!1634919 Unit!83674)))

(declare-fun lt!1634912 () Unit!83561)

(assert (=> b!4438294 (= lt!1634912 (addForallContainsKeyThenBeforeAdding!201 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634914 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))))

(assert (=> b!4438294 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lambda!156719)))

(declare-fun lt!1634909 () Unit!83561)

(assert (=> b!4438294 (= lt!1634909 lt!1634912)))

(assert (=> b!4438294 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lambda!156719)))

(declare-fun lt!1634913 () Unit!83561)

(declare-fun Unit!83676 () Unit!83561)

(assert (=> b!4438294 (= lt!1634913 Unit!83676)))

(declare-fun res!1837120 () Bool)

(assert (=> b!4438294 (= res!1837120 (forall!9668 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lambda!156719))))

(declare-fun e!2763607 () Bool)

(assert (=> b!4438294 (=> (not res!1837120) (not e!2763607))))

(assert (=> b!4438294 e!2763607))

(declare-fun lt!1634910 () Unit!83561)

(declare-fun Unit!83678 () Unit!83561)

(assert (=> b!4438294 (= lt!1634910 Unit!83678)))

(declare-fun b!4438295 () Bool)

(declare-fun e!2763609 () Bool)

(assert (=> b!4438295 (= e!2763609 (invariantList!833 (toList!3610 lt!1634911)))))

(declare-fun c!755449 () Bool)

(declare-fun bm!308873 () Bool)

(assert (=> bm!308873 (= call!308880 (forall!9668 (ite c!755449 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (toList!3610 lt!1634915)) (ite c!755449 lambda!156715 lambda!156719)))))

(declare-fun bm!308874 () Bool)

(assert (=> bm!308874 (= call!308878 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (ite c!755449 lambda!156715 lambda!156717)))))

(assert (=> b!4438296 (= e!2763608 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))

(declare-fun lt!1634901 () Unit!83561)

(assert (=> b!4438296 (= lt!1634901 call!308879)))

(assert (=> b!4438296 call!308878))

(declare-fun lt!1634917 () Unit!83561)

(assert (=> b!4438296 (= lt!1634917 lt!1634901)))

(assert (=> b!4438296 call!308880))

(declare-fun lt!1634908 () Unit!83561)

(declare-fun Unit!83679 () Unit!83561)

(assert (=> b!4438296 (= lt!1634908 Unit!83679)))

(assert (=> d!1347246 e!2763609))

(declare-fun res!1837121 () Bool)

(assert (=> d!1347246 (=> (not res!1837121) (not e!2763609))))

(assert (=> d!1347246 (= res!1837121 (forall!9668 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lambda!156721))))

(assert (=> d!1347246 (= lt!1634911 e!2763608)))

(assert (=> d!1347246 (= c!755449 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))

(assert (=> d!1347246 (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))

(assert (=> d!1347246 (= (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lt!1634911)))

(declare-fun b!4438297 () Bool)

(assert (=> b!4438297 (= e!2763607 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lambda!156719))))

(declare-fun b!4438298 () Bool)

(declare-fun res!1837119 () Bool)

(assert (=> b!4438298 (=> (not res!1837119) (not e!2763609))))

(assert (=> b!4438298 (= res!1837119 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) lambda!156721))))

(declare-fun bm!308875 () Bool)

(assert (=> bm!308875 (= call!308879 (lemmaContainsAllItsOwnKeys!201 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))

(assert (= (and d!1347246 c!755449) b!4438296))

(assert (= (and d!1347246 (not c!755449)) b!4438294))

(assert (= (and b!4438294 res!1837120) b!4438297))

(assert (= (or b!4438296 b!4438294) bm!308875))

(assert (= (or b!4438296 b!4438294) bm!308874))

(assert (= (or b!4438296 b!4438294) bm!308873))

(assert (= (and d!1347246 res!1837121) b!4438298))

(assert (= (and b!4438298 res!1837119) b!4438295))

(declare-fun m!5126433 () Bool)

(assert (=> bm!308873 m!5126433))

(declare-fun m!5126435 () Bool)

(assert (=> b!4438295 m!5126435))

(assert (=> bm!308875 m!5125565))

(declare-fun m!5126437 () Bool)

(assert (=> bm!308875 m!5126437))

(declare-fun m!5126439 () Bool)

(assert (=> b!4438294 m!5126439))

(assert (=> b!4438294 m!5125565))

(declare-fun m!5126441 () Bool)

(assert (=> b!4438294 m!5126441))

(declare-fun m!5126443 () Bool)

(assert (=> b!4438294 m!5126443))

(declare-fun m!5126445 () Bool)

(assert (=> b!4438294 m!5126445))

(assert (=> b!4438294 m!5126443))

(declare-fun m!5126447 () Bool)

(assert (=> b!4438294 m!5126447))

(declare-fun m!5126449 () Bool)

(assert (=> b!4438294 m!5126449))

(declare-fun m!5126451 () Bool)

(assert (=> b!4438294 m!5126451))

(assert (=> b!4438294 m!5125565))

(assert (=> b!4438294 m!5126449))

(declare-fun m!5126453 () Bool)

(assert (=> b!4438294 m!5126453))

(declare-fun m!5126455 () Bool)

(assert (=> b!4438294 m!5126455))

(assert (=> b!4438294 m!5126447))

(declare-fun m!5126457 () Bool)

(assert (=> b!4438294 m!5126457))

(declare-fun m!5126459 () Bool)

(assert (=> b!4438298 m!5126459))

(declare-fun m!5126461 () Bool)

(assert (=> d!1347246 m!5126461))

(declare-fun m!5126463 () Bool)

(assert (=> d!1347246 m!5126463))

(assert (=> b!4438297 m!5126443))

(declare-fun m!5126465 () Bool)

(assert (=> bm!308874 m!5126465))

(assert (=> b!4437762 d!1347246))

(declare-fun bs!763519 () Bool)

(declare-fun d!1347250 () Bool)

(assert (= bs!763519 (and d!1347250 d!1346948)))

(declare-fun lambda!156723 () Int)

(assert (=> bs!763519 (= lambda!156723 lambda!156652)))

(declare-fun bs!763520 () Bool)

(assert (= bs!763520 (and d!1347250 d!1346956)))

(assert (=> bs!763520 (= lambda!156723 lambda!156655)))

(declare-fun bs!763521 () Bool)

(assert (= bs!763521 (and d!1347250 d!1346940)))

(assert (=> bs!763521 (= lambda!156723 lambda!156649)))

(declare-fun bs!763522 () Bool)

(assert (= bs!763522 (and d!1347250 d!1347016)))

(assert (=> bs!763522 (= lambda!156723 lambda!156677)))

(declare-fun bs!763523 () Bool)

(assert (= bs!763523 (and d!1347250 start!433908)))

(assert (=> bs!763523 (= lambda!156723 lambda!156552)))

(declare-fun bs!763524 () Bool)

(assert (= bs!763524 (and d!1347250 d!1347028)))

(assert (=> bs!763524 (= lambda!156723 lambda!156688)))

(declare-fun bs!763525 () Bool)

(assert (= bs!763525 (and d!1347250 d!1346968)))

(assert (=> bs!763525 (= lambda!156723 lambda!156658)))

(declare-fun bs!763526 () Bool)

(assert (= bs!763526 (and d!1347250 d!1346862)))

(assert (=> bs!763526 (not (= lambda!156723 lambda!156558))))

(declare-fun bs!763527 () Bool)

(assert (= bs!763527 (and d!1347250 d!1346964)))

(assert (=> bs!763527 (= lambda!156723 lambda!156657)))

(declare-fun bs!763528 () Bool)

(assert (= bs!763528 (and d!1347250 d!1346860)))

(assert (=> bs!763528 (= lambda!156723 lambda!156555)))

(declare-fun bs!763529 () Bool)

(assert (= bs!763529 (and d!1347250 d!1346962)))

(assert (=> bs!763529 (= lambda!156723 lambda!156656)))

(declare-fun lt!1634943 () ListMap!2853)

(assert (=> d!1347250 (invariantList!833 (toList!3610 lt!1634943))))

(declare-fun e!2763613 () ListMap!2853)

(assert (=> d!1347250 (= lt!1634943 e!2763613)))

(declare-fun c!755451 () Bool)

(assert (=> d!1347250 (= c!755451 ((_ is Cons!49734) (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))

(assert (=> d!1347250 (forall!9666 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))) lambda!156723)))

(assert (=> d!1347250 (= (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) lt!1634943)))

(declare-fun b!4438304 () Bool)

(assert (=> b!4438304 (= e!2763613 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (extractMap!872 (t!356800 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))))

(declare-fun b!4438305 () Bool)

(assert (=> b!4438305 (= e!2763613 (ListMap!2854 Nil!49733))))

(assert (= (and d!1347250 c!755451) b!4438304))

(assert (= (and d!1347250 (not c!755451)) b!4438305))

(declare-fun m!5126467 () Bool)

(assert (=> d!1347250 m!5126467))

(declare-fun m!5126469 () Bool)

(assert (=> d!1347250 m!5126469))

(declare-fun m!5126471 () Bool)

(assert (=> b!4438304 m!5126471))

(assert (=> b!4438304 m!5126471))

(declare-fun m!5126477 () Bool)

(assert (=> b!4438304 m!5126477))

(assert (=> b!4437762 d!1347250))

(declare-fun d!1347252 () Bool)

(declare-fun e!2763615 () Bool)

(assert (=> d!1347252 e!2763615))

(declare-fun res!1837125 () Bool)

(assert (=> d!1347252 (=> res!1837125 e!2763615)))

(declare-fun lt!1634947 () Bool)

(assert (=> d!1347252 (= res!1837125 (not lt!1634947))))

(declare-fun lt!1634945 () Bool)

(assert (=> d!1347252 (= lt!1634947 lt!1634945)))

(declare-fun lt!1634946 () Unit!83561)

(declare-fun e!2763614 () Unit!83561)

(assert (=> d!1347252 (= lt!1634946 e!2763614)))

(declare-fun c!755452 () Bool)

(assert (=> d!1347252 (= c!755452 lt!1634945)))

(assert (=> d!1347252 (= lt!1634945 (containsKey!1212 (toList!3609 lt!1634570) (_1!28106 lt!1634309)))))

(assert (=> d!1347252 (= (contains!12289 lt!1634570 (_1!28106 lt!1634309)) lt!1634947)))

(declare-fun b!4438306 () Bool)

(declare-fun lt!1634944 () Unit!83561)

(assert (=> b!4438306 (= e!2763614 lt!1634944)))

(assert (=> b!4438306 (= lt!1634944 (lemmaContainsKeyImpliesGetValueByKeyDefined!677 (toList!3609 lt!1634570) (_1!28106 lt!1634309)))))

(assert (=> b!4438306 (isDefined!8074 (getValueByKey!767 (toList!3609 lt!1634570) (_1!28106 lt!1634309)))))

(declare-fun b!4438307 () Bool)

(declare-fun Unit!83682 () Unit!83561)

(assert (=> b!4438307 (= e!2763614 Unit!83682)))

(declare-fun b!4438308 () Bool)

(assert (=> b!4438308 (= e!2763615 (isDefined!8074 (getValueByKey!767 (toList!3609 lt!1634570) (_1!28106 lt!1634309))))))

(assert (= (and d!1347252 c!755452) b!4438306))

(assert (= (and d!1347252 (not c!755452)) b!4438307))

(assert (= (and d!1347252 (not res!1837125)) b!4438308))

(declare-fun m!5126497 () Bool)

(assert (=> d!1347252 m!5126497))

(declare-fun m!5126501 () Bool)

(assert (=> b!4438306 m!5126501))

(assert (=> b!4438306 m!5125505))

(assert (=> b!4438306 m!5125505))

(declare-fun m!5126505 () Bool)

(assert (=> b!4438306 m!5126505))

(assert (=> b!4438308 m!5125505))

(assert (=> b!4438308 m!5125505))

(assert (=> b!4438308 m!5126505))

(assert (=> d!1346952 d!1347252))

(declare-fun b!4438312 () Bool)

(declare-fun e!2763617 () Option!10781)

(assert (=> b!4438312 (= e!2763617 None!10780)))

(declare-fun b!4438309 () Bool)

(declare-fun e!2763616 () Option!10781)

(assert (=> b!4438309 (= e!2763616 (Some!10780 (_2!28106 (h!55447 lt!1634569))))))

(declare-fun b!4438311 () Bool)

(assert (=> b!4438311 (= e!2763617 (getValueByKey!767 (t!356800 lt!1634569) (_1!28106 lt!1634309)))))

(declare-fun b!4438310 () Bool)

(assert (=> b!4438310 (= e!2763616 e!2763617)))

(declare-fun c!755454 () Bool)

(assert (=> b!4438310 (= c!755454 (and ((_ is Cons!49734) lt!1634569) (not (= (_1!28106 (h!55447 lt!1634569)) (_1!28106 lt!1634309)))))))

(declare-fun d!1347254 () Bool)

(declare-fun c!755453 () Bool)

(assert (=> d!1347254 (= c!755453 (and ((_ is Cons!49734) lt!1634569) (= (_1!28106 (h!55447 lt!1634569)) (_1!28106 lt!1634309))))))

(assert (=> d!1347254 (= (getValueByKey!767 lt!1634569 (_1!28106 lt!1634309)) e!2763616)))

(assert (= (and d!1347254 c!755453) b!4438309))

(assert (= (and d!1347254 (not c!755453)) b!4438310))

(assert (= (and b!4438310 c!755454) b!4438311))

(assert (= (and b!4438310 (not c!755454)) b!4438312))

(declare-fun m!5126517 () Bool)

(assert (=> b!4438311 m!5126517))

(assert (=> d!1346952 d!1347254))

(declare-fun d!1347258 () Bool)

(assert (=> d!1347258 (= (getValueByKey!767 lt!1634569 (_1!28106 lt!1634309)) (Some!10780 (_2!28106 lt!1634309)))))

(declare-fun lt!1634949 () Unit!83561)

(assert (=> d!1347258 (= lt!1634949 (choose!28181 lt!1634569 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(declare-fun e!2763619 () Bool)

(assert (=> d!1347258 e!2763619))

(declare-fun res!1837126 () Bool)

(assert (=> d!1347258 (=> (not res!1837126) (not e!2763619))))

(assert (=> d!1347258 (= res!1837126 (isStrictlySorted!260 lt!1634569))))

(assert (=> d!1347258 (= (lemmaContainsTupThenGetReturnValue!500 lt!1634569 (_1!28106 lt!1634309) (_2!28106 lt!1634309)) lt!1634949)))

(declare-fun b!4438315 () Bool)

(declare-fun res!1837127 () Bool)

(assert (=> b!4438315 (=> (not res!1837127) (not e!2763619))))

(assert (=> b!4438315 (= res!1837127 (containsKey!1212 lt!1634569 (_1!28106 lt!1634309)))))

(declare-fun b!4438316 () Bool)

(assert (=> b!4438316 (= e!2763619 (contains!12294 lt!1634569 (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309))))))

(assert (= (and d!1347258 res!1837126) b!4438315))

(assert (= (and b!4438315 res!1837127) b!4438316))

(assert (=> d!1347258 m!5125499))

(declare-fun m!5126519 () Bool)

(assert (=> d!1347258 m!5126519))

(declare-fun m!5126521 () Bool)

(assert (=> d!1347258 m!5126521))

(declare-fun m!5126523 () Bool)

(assert (=> b!4438315 m!5126523))

(declare-fun m!5126525 () Bool)

(assert (=> b!4438316 m!5126525))

(assert (=> d!1346952 d!1347258))

(declare-fun d!1347260 () Bool)

(declare-fun e!2763621 () Bool)

(assert (=> d!1347260 e!2763621))

(declare-fun res!1837128 () Bool)

(assert (=> d!1347260 (=> (not res!1837128) (not e!2763621))))

(declare-fun lt!1634950 () List!49858)

(assert (=> d!1347260 (= res!1837128 (isStrictlySorted!260 lt!1634950))))

(declare-fun e!2763620 () List!49858)

(assert (=> d!1347260 (= lt!1634950 e!2763620)))

(declare-fun c!755459 () Bool)

(assert (=> d!1347260 (= c!755459 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (bvslt (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 lt!1634309))))))

(assert (=> d!1347260 (isStrictlySorted!260 (toList!3609 lm!1616))))

(assert (=> d!1347260 (= (insertStrictlySorted!288 (toList!3609 lm!1616) (_1!28106 lt!1634309) (_2!28106 lt!1634309)) lt!1634950)))

(declare-fun bm!308879 () Bool)

(declare-fun call!308884 () List!49858)

(declare-fun call!308886 () List!49858)

(assert (=> bm!308879 (= call!308884 call!308886)))

(declare-fun c!755457 () Bool)

(declare-fun e!2763624 () List!49858)

(declare-fun c!755458 () Bool)

(declare-fun b!4438317 () Bool)

(assert (=> b!4438317 (= e!2763624 (ite c!755458 (t!356800 (toList!3609 lm!1616)) (ite c!755457 (Cons!49734 (h!55447 (toList!3609 lm!1616)) (t!356800 (toList!3609 lm!1616))) Nil!49734)))))

(declare-fun b!4438318 () Bool)

(assert (=> b!4438318 (= e!2763624 (insertStrictlySorted!288 (t!356800 (toList!3609 lm!1616)) (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))

(declare-fun b!4438319 () Bool)

(declare-fun call!308885 () List!49858)

(assert (=> b!4438319 (= e!2763620 call!308885)))

(declare-fun b!4438320 () Bool)

(assert (=> b!4438320 (= e!2763621 (contains!12294 lt!1634950 (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309))))))

(declare-fun bm!308880 () Bool)

(assert (=> bm!308880 (= call!308885 ($colon$colon!812 e!2763624 (ite c!755459 (h!55447 (toList!3609 lm!1616)) (tuple2!49625 (_1!28106 lt!1634309) (_2!28106 lt!1634309)))))))

(declare-fun c!755456 () Bool)

(assert (=> bm!308880 (= c!755456 c!755459)))

(declare-fun bm!308881 () Bool)

(assert (=> bm!308881 (= call!308886 call!308885)))

(declare-fun b!4438321 () Bool)

(declare-fun e!2763622 () List!49858)

(assert (=> b!4438321 (= e!2763620 e!2763622)))

(assert (=> b!4438321 (= c!755458 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (= (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 lt!1634309))))))

(declare-fun b!4438322 () Bool)

(assert (=> b!4438322 (= e!2763622 call!308886)))

(declare-fun b!4438323 () Bool)

(declare-fun e!2763623 () List!49858)

(assert (=> b!4438323 (= e!2763623 call!308884)))

(declare-fun b!4438324 () Bool)

(declare-fun res!1837129 () Bool)

(assert (=> b!4438324 (=> (not res!1837129) (not e!2763621))))

(assert (=> b!4438324 (= res!1837129 (containsKey!1212 lt!1634950 (_1!28106 lt!1634309)))))

(declare-fun b!4438325 () Bool)

(assert (=> b!4438325 (= c!755457 (and ((_ is Cons!49734) (toList!3609 lm!1616)) (bvsgt (_1!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 lt!1634309))))))

(assert (=> b!4438325 (= e!2763622 e!2763623)))

(declare-fun b!4438326 () Bool)

(assert (=> b!4438326 (= e!2763623 call!308884)))

(assert (= (and d!1347260 c!755459) b!4438319))

(assert (= (and d!1347260 (not c!755459)) b!4438321))

(assert (= (and b!4438321 c!755458) b!4438322))

(assert (= (and b!4438321 (not c!755458)) b!4438325))

(assert (= (and b!4438325 c!755457) b!4438323))

(assert (= (and b!4438325 (not c!755457)) b!4438326))

(assert (= (or b!4438323 b!4438326) bm!308879))

(assert (= (or b!4438322 bm!308879) bm!308881))

(assert (= (or b!4438319 bm!308881) bm!308880))

(assert (= (and bm!308880 c!755456) b!4438318))

(assert (= (and bm!308880 (not c!755456)) b!4438317))

(assert (= (and d!1347260 res!1837128) b!4438324))

(assert (= (and b!4438324 res!1837129) b!4438320))

(declare-fun m!5126535 () Bool)

(assert (=> bm!308880 m!5126535))

(declare-fun m!5126537 () Bool)

(assert (=> b!4438324 m!5126537))

(declare-fun m!5126539 () Bool)

(assert (=> b!4438320 m!5126539))

(declare-fun m!5126541 () Bool)

(assert (=> b!4438318 m!5126541))

(declare-fun m!5126543 () Bool)

(assert (=> d!1347260 m!5126543))

(assert (=> d!1347260 m!5125185))

(assert (=> d!1346952 d!1347260))

(declare-fun d!1347264 () Bool)

(declare-fun res!1837132 () Bool)

(declare-fun e!2763627 () Bool)

(assert (=> d!1347264 (=> res!1837132 e!2763627)))

(assert (=> d!1347264 (= res!1837132 ((_ is Nil!49733) newBucket!194))))

(assert (=> d!1347264 (= (forall!9668 newBucket!194 lambda!156561) e!2763627)))

(declare-fun b!4438329 () Bool)

(declare-fun e!2763628 () Bool)

(assert (=> b!4438329 (= e!2763627 e!2763628)))

(declare-fun res!1837133 () Bool)

(assert (=> b!4438329 (=> (not res!1837133) (not e!2763628))))

(assert (=> b!4438329 (= res!1837133 (dynLambda!20898 lambda!156561 (h!55446 newBucket!194)))))

(declare-fun b!4438330 () Bool)

(assert (=> b!4438330 (= e!2763628 (forall!9668 (t!356799 newBucket!194) lambda!156561))))

(assert (= (and d!1347264 (not res!1837132)) b!4438329))

(assert (= (and b!4438329 res!1837133) b!4438330))

(declare-fun b_lambda!144773 () Bool)

(assert (=> (not b_lambda!144773) (not b!4438329)))

(declare-fun m!5126549 () Bool)

(assert (=> b!4438329 m!5126549))

(declare-fun m!5126551 () Bool)

(assert (=> b!4438330 m!5126551))

(assert (=> d!1346868 d!1347264))

(declare-fun bm!308882 () Bool)

(declare-fun call!308887 () Bool)

(declare-fun e!2763630 () List!49860)

(assert (=> bm!308882 (= call!308887 (contains!12293 e!2763630 key!3717))))

(declare-fun c!755462 () Bool)

(declare-fun c!755460 () Bool)

(assert (=> bm!308882 (= c!755462 c!755460)))

(declare-fun b!4438331 () Bool)

(assert (=> b!4438331 (= e!2763630 (keys!17022 (extractMap!872 (toList!3609 lm!1616))))))

(declare-fun b!4438332 () Bool)

(declare-fun e!2763632 () Unit!83561)

(declare-fun lt!1634954 () Unit!83561)

(assert (=> b!4438332 (= e!2763632 lt!1634954)))

(declare-fun lt!1634953 () Unit!83561)

(assert (=> b!4438332 (= lt!1634953 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(assert (=> b!4438332 (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(declare-fun lt!1634955 () Unit!83561)

(assert (=> b!4438332 (= lt!1634955 lt!1634953)))

(assert (=> b!4438332 (= lt!1634954 (lemmaInListThenGetKeysListContains!277 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(assert (=> b!4438332 call!308887))

(declare-fun b!4438333 () Bool)

(assert (=> b!4438333 (= e!2763630 (getKeysList!280 (toList!3610 (extractMap!872 (toList!3609 lm!1616)))))))

(declare-fun d!1347268 () Bool)

(declare-fun e!2763629 () Bool)

(assert (=> d!1347268 e!2763629))

(declare-fun res!1837134 () Bool)

(assert (=> d!1347268 (=> res!1837134 e!2763629)))

(declare-fun e!2763634 () Bool)

(assert (=> d!1347268 (= res!1837134 e!2763634)))

(declare-fun res!1837135 () Bool)

(assert (=> d!1347268 (=> (not res!1837135) (not e!2763634))))

(declare-fun lt!1634951 () Bool)

(assert (=> d!1347268 (= res!1837135 (not lt!1634951))))

(declare-fun lt!1634957 () Bool)

(assert (=> d!1347268 (= lt!1634951 lt!1634957)))

(declare-fun lt!1634958 () Unit!83561)

(assert (=> d!1347268 (= lt!1634958 e!2763632)))

(assert (=> d!1347268 (= c!755460 lt!1634957)))

(assert (=> d!1347268 (= lt!1634957 (containsKey!1211 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(assert (=> d!1347268 (= (contains!12288 (extractMap!872 (toList!3609 lm!1616)) key!3717) lt!1634951)))

(declare-fun b!4438334 () Bool)

(declare-fun e!2763633 () Unit!83561)

(declare-fun Unit!83685 () Unit!83561)

(assert (=> b!4438334 (= e!2763633 Unit!83685)))

(declare-fun b!4438335 () Bool)

(declare-fun e!2763631 () Bool)

(assert (=> b!4438335 (= e!2763629 e!2763631)))

(declare-fun res!1837136 () Bool)

(assert (=> b!4438335 (=> (not res!1837136) (not e!2763631))))

(assert (=> b!4438335 (= res!1837136 (isDefined!8073 (getValueByKey!768 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717)))))

(declare-fun b!4438336 () Bool)

(assert (=> b!4438336 (= e!2763631 (contains!12293 (keys!17022 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(declare-fun b!4438337 () Bool)

(assert (=> b!4438337 (= e!2763632 e!2763633)))

(declare-fun c!755461 () Bool)

(assert (=> b!4438337 (= c!755461 call!308887)))

(declare-fun b!4438338 () Bool)

(assert (=> b!4438338 (= e!2763634 (not (contains!12293 (keys!17022 (extractMap!872 (toList!3609 lm!1616))) key!3717)))))

(declare-fun b!4438339 () Bool)

(assert (=> b!4438339 false))

(declare-fun lt!1634956 () Unit!83561)

(declare-fun lt!1634952 () Unit!83561)

(assert (=> b!4438339 (= lt!1634956 lt!1634952)))

(assert (=> b!4438339 (containsKey!1211 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717)))

(assert (=> b!4438339 (= lt!1634952 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 (extractMap!872 (toList!3609 lm!1616))) key!3717))))

(declare-fun Unit!83686 () Unit!83561)

(assert (=> b!4438339 (= e!2763633 Unit!83686)))

(assert (= (and d!1347268 c!755460) b!4438332))

(assert (= (and d!1347268 (not c!755460)) b!4438337))

(assert (= (and b!4438337 c!755461) b!4438339))

(assert (= (and b!4438337 (not c!755461)) b!4438334))

(assert (= (or b!4438332 b!4438337) bm!308882))

(assert (= (and bm!308882 c!755462) b!4438333))

(assert (= (and bm!308882 (not c!755462)) b!4438331))

(assert (= (and d!1347268 res!1837135) b!4438338))

(assert (= (and d!1347268 (not res!1837134)) b!4438335))

(assert (= (and b!4438335 res!1837136) b!4438336))

(declare-fun m!5126553 () Bool)

(assert (=> d!1347268 m!5126553))

(assert (=> b!4438331 m!5125159))

(declare-fun m!5126555 () Bool)

(assert (=> b!4438331 m!5126555))

(declare-fun m!5126557 () Bool)

(assert (=> b!4438335 m!5126557))

(assert (=> b!4438335 m!5126557))

(declare-fun m!5126559 () Bool)

(assert (=> b!4438335 m!5126559))

(assert (=> b!4438338 m!5125159))

(assert (=> b!4438338 m!5126555))

(assert (=> b!4438338 m!5126555))

(declare-fun m!5126561 () Bool)

(assert (=> b!4438338 m!5126561))

(declare-fun m!5126563 () Bool)

(assert (=> bm!308882 m!5126563))

(declare-fun m!5126565 () Bool)

(assert (=> b!4438332 m!5126565))

(assert (=> b!4438332 m!5126557))

(assert (=> b!4438332 m!5126557))

(assert (=> b!4438332 m!5126559))

(declare-fun m!5126567 () Bool)

(assert (=> b!4438332 m!5126567))

(assert (=> b!4438339 m!5126553))

(declare-fun m!5126569 () Bool)

(assert (=> b!4438339 m!5126569))

(declare-fun m!5126571 () Bool)

(assert (=> b!4438333 m!5126571))

(assert (=> b!4438336 m!5125159))

(assert (=> b!4438336 m!5126555))

(assert (=> b!4438336 m!5126555))

(assert (=> b!4438336 m!5126561))

(assert (=> d!1346948 d!1347268))

(assert (=> d!1346948 d!1346940))

(declare-fun d!1347270 () Bool)

(assert (=> d!1347270 (contains!12288 (extractMap!872 (toList!3609 lm!1616)) key!3717)))

(assert (=> d!1347270 true))

(declare-fun _$12!1205 () Unit!83561)

(assert (=> d!1347270 (= (choose!28169 lm!1616 key!3717 hashF!1220) _$12!1205)))

(declare-fun bs!763542 () Bool)

(assert (= bs!763542 d!1347270))

(assert (=> bs!763542 m!5125159))

(assert (=> bs!763542 m!5125159))

(assert (=> bs!763542 m!5125487))

(assert (=> d!1346948 d!1347270))

(declare-fun d!1347272 () Bool)

(declare-fun res!1837137 () Bool)

(declare-fun e!2763635 () Bool)

(assert (=> d!1347272 (=> res!1837137 e!2763635)))

(assert (=> d!1347272 (= res!1837137 ((_ is Nil!49734) (toList!3609 lm!1616)))))

(assert (=> d!1347272 (= (forall!9666 (toList!3609 lm!1616) lambda!156652) e!2763635)))

(declare-fun b!4438340 () Bool)

(declare-fun e!2763636 () Bool)

(assert (=> b!4438340 (= e!2763635 e!2763636)))

(declare-fun res!1837138 () Bool)

(assert (=> b!4438340 (=> (not res!1837138) (not e!2763636))))

(assert (=> b!4438340 (= res!1837138 (dynLambda!20896 lambda!156652 (h!55447 (toList!3609 lm!1616))))))

(declare-fun b!4438341 () Bool)

(assert (=> b!4438341 (= e!2763636 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156652))))

(assert (= (and d!1347272 (not res!1837137)) b!4438340))

(assert (= (and b!4438340 res!1837138) b!4438341))

(declare-fun b_lambda!144775 () Bool)

(assert (=> (not b_lambda!144775) (not b!4438340)))

(declare-fun m!5126573 () Bool)

(assert (=> b!4438340 m!5126573))

(declare-fun m!5126575 () Bool)

(assert (=> b!4438341 m!5126575))

(assert (=> d!1346948 d!1347272))

(declare-fun bs!763555 () Bool)

(declare-fun b!4438421 () Bool)

(assert (= bs!763555 (and b!4438421 b!4437824)))

(declare-fun lambda!156745 () Int)

(assert (=> bs!763555 (= (= (t!356799 (toList!3610 lt!1634308)) (toList!3610 lt!1634308)) (= lambda!156745 lambda!156668))))

(declare-fun bs!763556 () Bool)

(assert (= bs!763556 (and b!4438421 b!4438258)))

(assert (=> bs!763556 (= (= (t!356799 (toList!3610 lt!1634308)) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156745 lambda!156713))))

(assert (=> b!4438421 true))

(declare-fun bs!763557 () Bool)

(declare-fun b!4438414 () Bool)

(assert (= bs!763557 (and b!4438414 b!4437824)))

(declare-fun lambda!156746 () Int)

(assert (=> bs!763557 (= (= (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308))) (toList!3610 lt!1634308)) (= lambda!156746 lambda!156668))))

(declare-fun bs!763558 () Bool)

(assert (= bs!763558 (and b!4438414 b!4438258)))

(assert (=> bs!763558 (= (= (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308))) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156746 lambda!156713))))

(declare-fun bs!763559 () Bool)

(assert (= bs!763559 (and b!4438414 b!4438421)))

(assert (=> bs!763559 (= (= (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308))) (t!356799 (toList!3610 lt!1634308))) (= lambda!156746 lambda!156745))))

(assert (=> b!4438414 true))

(declare-fun bs!763560 () Bool)

(declare-fun b!4438415 () Bool)

(assert (= bs!763560 (and b!4438415 b!4437824)))

(declare-fun lambda!156747 () Int)

(assert (=> bs!763560 (= lambda!156747 lambda!156668)))

(declare-fun bs!763561 () Bool)

(assert (= bs!763561 (and b!4438415 b!4438258)))

(assert (=> bs!763561 (= (= (toList!3610 lt!1634308) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156747 lambda!156713))))

(declare-fun bs!763562 () Bool)

(assert (= bs!763562 (and b!4438415 b!4438421)))

(assert (=> bs!763562 (= (= (toList!3610 lt!1634308) (t!356799 (toList!3610 lt!1634308))) (= lambda!156747 lambda!156745))))

(declare-fun bs!763563 () Bool)

(assert (= bs!763563 (and b!4438415 b!4438414)))

(assert (=> bs!763563 (= (= (toList!3610 lt!1634308) (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308)))) (= lambda!156747 lambda!156746))))

(assert (=> b!4438415 true))

(declare-fun bs!763564 () Bool)

(declare-fun b!4438417 () Bool)

(assert (= bs!763564 (and b!4438417 b!4437825)))

(declare-fun lambda!156748 () Int)

(assert (=> bs!763564 (= lambda!156748 lambda!156669)))

(declare-fun bs!763565 () Bool)

(assert (= bs!763565 (and b!4438417 b!4438259)))

(assert (=> bs!763565 (= lambda!156748 lambda!156714)))

(declare-fun e!2763676 () List!49860)

(assert (=> b!4438414 (= e!2763676 (Cons!49736 (_1!28105 (h!55446 (toList!3610 lt!1634308))) (getKeysList!280 (t!356799 (toList!3610 lt!1634308)))))))

(declare-fun c!755485 () Bool)

(assert (=> b!4438414 (= c!755485 (containsKey!1211 (t!356799 (toList!3610 lt!1634308)) (_1!28105 (h!55446 (toList!3610 lt!1634308)))))))

(declare-fun lt!1635009 () Unit!83561)

(declare-fun e!2763673 () Unit!83561)

(assert (=> b!4438414 (= lt!1635009 e!2763673)))

(declare-fun c!755486 () Bool)

(assert (=> b!4438414 (= c!755486 (contains!12293 (getKeysList!280 (t!356799 (toList!3610 lt!1634308))) (_1!28105 (h!55446 (toList!3610 lt!1634308)))))))

(declare-fun lt!1635010 () Unit!83561)

(declare-fun e!2763675 () Unit!83561)

(assert (=> b!4438414 (= lt!1635010 e!2763675)))

(declare-fun lt!1635004 () List!49860)

(assert (=> b!4438414 (= lt!1635004 (getKeysList!280 (t!356799 (toList!3610 lt!1634308))))))

(declare-fun lt!1635006 () Unit!83561)

(declare-fun lemmaForallContainsAddHeadPreserves!95 (List!49857 List!49860 tuple2!49622) Unit!83561)

(assert (=> b!4438414 (= lt!1635006 (lemmaForallContainsAddHeadPreserves!95 (t!356799 (toList!3610 lt!1634308)) lt!1635004 (h!55446 (toList!3610 lt!1634308))))))

(assert (=> b!4438414 (forall!9669 lt!1635004 lambda!156746)))

(declare-fun lt!1635005 () Unit!83561)

(assert (=> b!4438414 (= lt!1635005 lt!1635006)))

(declare-fun res!1837166 () Bool)

(declare-fun e!2763674 () Bool)

(assert (=> b!4438415 (=> (not res!1837166) (not e!2763674))))

(declare-fun lt!1635008 () List!49860)

(assert (=> b!4438415 (= res!1837166 (forall!9669 lt!1635008 lambda!156747))))

(declare-fun d!1347274 () Bool)

(assert (=> d!1347274 e!2763674))

(declare-fun res!1837165 () Bool)

(assert (=> d!1347274 (=> (not res!1837165) (not e!2763674))))

(assert (=> d!1347274 (= res!1837165 (noDuplicate!673 lt!1635008))))

(assert (=> d!1347274 (= lt!1635008 e!2763676)))

(declare-fun c!755487 () Bool)

(assert (=> d!1347274 (= c!755487 ((_ is Cons!49733) (toList!3610 lt!1634308)))))

(assert (=> d!1347274 (invariantList!833 (toList!3610 lt!1634308))))

(assert (=> d!1347274 (= (getKeysList!280 (toList!3610 lt!1634308)) lt!1635008)))

(declare-fun b!4438416 () Bool)

(assert (=> b!4438416 false))

(declare-fun Unit!83687 () Unit!83561)

(assert (=> b!4438416 (= e!2763673 Unit!83687)))

(assert (=> b!4438417 (= e!2763674 (= (content!8005 lt!1635008) (content!8005 (map!10876 (toList!3610 lt!1634308) lambda!156748))))))

(declare-fun b!4438418 () Bool)

(declare-fun Unit!83688 () Unit!83561)

(assert (=> b!4438418 (= e!2763673 Unit!83688)))

(declare-fun b!4438419 () Bool)

(assert (=> b!4438419 (= e!2763676 Nil!49736)))

(declare-fun b!4438420 () Bool)

(declare-fun res!1837167 () Bool)

(assert (=> b!4438420 (=> (not res!1837167) (not e!2763674))))

(assert (=> b!4438420 (= res!1837167 (= (length!202 lt!1635008) (length!203 (toList!3610 lt!1634308))))))

(assert (=> b!4438421 false))

(declare-fun lt!1635007 () Unit!83561)

(declare-fun forallContained!2136 (List!49860 Int K!11100) Unit!83561)

(assert (=> b!4438421 (= lt!1635007 (forallContained!2136 (getKeysList!280 (t!356799 (toList!3610 lt!1634308))) lambda!156745 (_1!28105 (h!55446 (toList!3610 lt!1634308)))))))

(declare-fun Unit!83689 () Unit!83561)

(assert (=> b!4438421 (= e!2763675 Unit!83689)))

(declare-fun b!4438422 () Bool)

(declare-fun Unit!83690 () Unit!83561)

(assert (=> b!4438422 (= e!2763675 Unit!83690)))

(assert (= (and d!1347274 c!755487) b!4438414))

(assert (= (and d!1347274 (not c!755487)) b!4438419))

(assert (= (and b!4438414 c!755485) b!4438416))

(assert (= (and b!4438414 (not c!755485)) b!4438418))

(assert (= (and b!4438414 c!755486) b!4438421))

(assert (= (and b!4438414 (not c!755486)) b!4438422))

(assert (= (and d!1347274 res!1837165) b!4438420))

(assert (= (and b!4438420 res!1837167) b!4438415))

(assert (= (and b!4438415 res!1837166) b!4438417))

(declare-fun m!5126641 () Bool)

(assert (=> b!4438415 m!5126641))

(declare-fun m!5126643 () Bool)

(assert (=> b!4438414 m!5126643))

(declare-fun m!5126645 () Bool)

(assert (=> b!4438414 m!5126645))

(declare-fun m!5126647 () Bool)

(assert (=> b!4438414 m!5126647))

(declare-fun m!5126649 () Bool)

(assert (=> b!4438414 m!5126649))

(assert (=> b!4438414 m!5126643))

(declare-fun m!5126651 () Bool)

(assert (=> b!4438414 m!5126651))

(assert (=> b!4438421 m!5126643))

(assert (=> b!4438421 m!5126643))

(declare-fun m!5126653 () Bool)

(assert (=> b!4438421 m!5126653))

(declare-fun m!5126655 () Bool)

(assert (=> b!4438420 m!5126655))

(assert (=> b!4438420 m!5125685))

(declare-fun m!5126657 () Bool)

(assert (=> d!1347274 m!5126657))

(declare-fun m!5126659 () Bool)

(assert (=> d!1347274 m!5126659))

(declare-fun m!5126661 () Bool)

(assert (=> b!4438417 m!5126661))

(declare-fun m!5126663 () Bool)

(assert (=> b!4438417 m!5126663))

(assert (=> b!4438417 m!5126663))

(declare-fun m!5126665 () Bool)

(assert (=> b!4438417 m!5126665))

(assert (=> b!4437721 d!1347274))

(declare-fun d!1347294 () Bool)

(assert (=> d!1347294 (= (invariantList!833 (toList!3610 lt!1634596)) (noDuplicatedKeys!190 (toList!3610 lt!1634596)))))

(declare-fun bs!763566 () Bool)

(assert (= bs!763566 d!1347294))

(declare-fun m!5126667 () Bool)

(assert (=> bs!763566 m!5126667))

(assert (=> d!1346964 d!1347294))

(declare-fun d!1347296 () Bool)

(declare-fun res!1837170 () Bool)

(declare-fun e!2763678 () Bool)

(assert (=> d!1347296 (=> res!1837170 e!2763678)))

(assert (=> d!1347296 (= res!1837170 ((_ is Nil!49734) (toList!3609 (+!1189 lt!1634306 lt!1634309))))))

(assert (=> d!1347296 (= (forall!9666 (toList!3609 (+!1189 lt!1634306 lt!1634309)) lambda!156657) e!2763678)))

(declare-fun b!4438427 () Bool)

(declare-fun e!2763679 () Bool)

(assert (=> b!4438427 (= e!2763678 e!2763679)))

(declare-fun res!1837171 () Bool)

(assert (=> b!4438427 (=> (not res!1837171) (not e!2763679))))

(assert (=> b!4438427 (= res!1837171 (dynLambda!20896 lambda!156657 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))))))

(declare-fun b!4438428 () Bool)

(assert (=> b!4438428 (= e!2763679 (forall!9666 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))) lambda!156657))))

(assert (= (and d!1347296 (not res!1837170)) b!4438427))

(assert (= (and b!4438427 res!1837171) b!4438428))

(declare-fun b_lambda!144781 () Bool)

(assert (=> (not b_lambda!144781) (not b!4438427)))

(declare-fun m!5126669 () Bool)

(assert (=> b!4438427 m!5126669))

(declare-fun m!5126671 () Bool)

(assert (=> b!4438428 m!5126671))

(assert (=> d!1346964 d!1347296))

(assert (=> d!1346966 d!1346970))

(declare-fun d!1347298 () Bool)

(declare-fun res!1837172 () Bool)

(declare-fun e!2763680 () Bool)

(assert (=> d!1347298 (=> res!1837172 e!2763680)))

(assert (=> d!1347298 (= res!1837172 ((_ is Nil!49734) (toList!3609 lm!1616)))))

(assert (=> d!1347298 (= (forall!9666 (toList!3609 lm!1616) lambda!156558) e!2763680)))

(declare-fun b!4438429 () Bool)

(declare-fun e!2763681 () Bool)

(assert (=> b!4438429 (= e!2763680 e!2763681)))

(declare-fun res!1837173 () Bool)

(assert (=> b!4438429 (=> (not res!1837173) (not e!2763681))))

(assert (=> b!4438429 (= res!1837173 (dynLambda!20896 lambda!156558 (h!55447 (toList!3609 lm!1616))))))

(declare-fun b!4438430 () Bool)

(assert (=> b!4438430 (= e!2763681 (forall!9666 (t!356800 (toList!3609 lm!1616)) lambda!156558))))

(assert (= (and d!1347298 (not res!1837172)) b!4438429))

(assert (= (and b!4438429 res!1837173) b!4438430))

(declare-fun b_lambda!144783 () Bool)

(assert (=> (not b_lambda!144783) (not b!4438429)))

(declare-fun m!5126673 () Bool)

(assert (=> b!4438429 m!5126673))

(declare-fun m!5126675 () Bool)

(assert (=> b!4438430 m!5126675))

(assert (=> d!1346862 d!1347298))

(assert (=> b!4437771 d!1347224))

(assert (=> b!4437771 d!1347226))

(declare-fun d!1347300 () Bool)

(assert (=> d!1347300 (= (invariantList!833 (toList!3610 lt!1634597)) (noDuplicatedKeys!190 (toList!3610 lt!1634597)))))

(declare-fun bs!763567 () Bool)

(assert (= bs!763567 d!1347300))

(declare-fun m!5126677 () Bool)

(assert (=> bs!763567 m!5126677))

(assert (=> d!1346968 d!1347300))

(declare-fun d!1347302 () Bool)

(declare-fun res!1837174 () Bool)

(declare-fun e!2763682 () Bool)

(assert (=> d!1347302 (=> res!1837174 e!2763682)))

(assert (=> d!1347302 (= res!1837174 ((_ is Nil!49734) (tail!7345 (toList!3609 lm!1616))))))

(assert (=> d!1347302 (= (forall!9666 (tail!7345 (toList!3609 lm!1616)) lambda!156658) e!2763682)))

(declare-fun b!4438431 () Bool)

(declare-fun e!2763683 () Bool)

(assert (=> b!4438431 (= e!2763682 e!2763683)))

(declare-fun res!1837175 () Bool)

(assert (=> b!4438431 (=> (not res!1837175) (not e!2763683))))

(assert (=> b!4438431 (= res!1837175 (dynLambda!20896 lambda!156658 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))

(declare-fun b!4438432 () Bool)

(assert (=> b!4438432 (= e!2763683 (forall!9666 (t!356800 (tail!7345 (toList!3609 lm!1616))) lambda!156658))))

(assert (= (and d!1347302 (not res!1837174)) b!4438431))

(assert (= (and b!4438431 res!1837175) b!4438432))

(declare-fun b_lambda!144785 () Bool)

(assert (=> (not b_lambda!144785) (not b!4438431)))

(declare-fun m!5126679 () Bool)

(assert (=> b!4438431 m!5126679))

(declare-fun m!5126681 () Bool)

(assert (=> b!4438432 m!5126681))

(assert (=> d!1346968 d!1347302))

(declare-fun d!1347304 () Bool)

(declare-fun res!1837176 () Bool)

(declare-fun e!2763684 () Bool)

(assert (=> d!1347304 (=> res!1837176 e!2763684)))

(assert (=> d!1347304 (= res!1837176 ((_ is Nil!49733) (ite c!755316 (toList!3610 lt!1634303) (toList!3610 lt!1634524))))))

(assert (=> d!1347304 (= (forall!9668 (ite c!755316 (toList!3610 lt!1634303) (toList!3610 lt!1634524)) (ite c!755316 lambda!156643 lambda!156645)) e!2763684)))

(declare-fun b!4438433 () Bool)

(declare-fun e!2763685 () Bool)

(assert (=> b!4438433 (= e!2763684 e!2763685)))

(declare-fun res!1837177 () Bool)

(assert (=> b!4438433 (=> (not res!1837177) (not e!2763685))))

(assert (=> b!4438433 (= res!1837177 (dynLambda!20898 (ite c!755316 lambda!156643 lambda!156645) (h!55446 (ite c!755316 (toList!3610 lt!1634303) (toList!3610 lt!1634524)))))))

(declare-fun b!4438434 () Bool)

(assert (=> b!4438434 (= e!2763685 (forall!9668 (t!356799 (ite c!755316 (toList!3610 lt!1634303) (toList!3610 lt!1634524))) (ite c!755316 lambda!156643 lambda!156645)))))

(assert (= (and d!1347304 (not res!1837176)) b!4438433))

(assert (= (and b!4438433 res!1837177) b!4438434))

(declare-fun b_lambda!144787 () Bool)

(assert (=> (not b_lambda!144787) (not b!4438433)))

(declare-fun m!5126683 () Bool)

(assert (=> b!4438433 m!5126683))

(declare-fun m!5126685 () Bool)

(assert (=> b!4438434 m!5126685))

(assert (=> bm!308815 d!1347304))

(declare-fun b!4438438 () Bool)

(declare-fun e!2763687 () Option!10781)

(assert (=> b!4438438 (= e!2763687 None!10780)))

(declare-fun b!4438435 () Bool)

(declare-fun e!2763686 () Option!10781)

(assert (=> b!4438435 (= e!2763686 (Some!10780 (_2!28106 (h!55447 (toList!3609 lt!1634592)))))))

(declare-fun b!4438437 () Bool)

(assert (=> b!4438437 (= e!2763687 (getValueByKey!767 (t!356800 (toList!3609 lt!1634592)) (_1!28106 lt!1634309)))))

(declare-fun b!4438436 () Bool)

(assert (=> b!4438436 (= e!2763686 e!2763687)))

(declare-fun c!755489 () Bool)

(assert (=> b!4438436 (= c!755489 (and ((_ is Cons!49734) (toList!3609 lt!1634592)) (not (= (_1!28106 (h!55447 (toList!3609 lt!1634592))) (_1!28106 lt!1634309)))))))

(declare-fun d!1347306 () Bool)

(declare-fun c!755488 () Bool)

(assert (=> d!1347306 (= c!755488 (and ((_ is Cons!49734) (toList!3609 lt!1634592)) (= (_1!28106 (h!55447 (toList!3609 lt!1634592))) (_1!28106 lt!1634309))))))

(assert (=> d!1347306 (= (getValueByKey!767 (toList!3609 lt!1634592) (_1!28106 lt!1634309)) e!2763686)))

(assert (= (and d!1347306 c!755488) b!4438435))

(assert (= (and d!1347306 (not c!755488)) b!4438436))

(assert (= (and b!4438436 c!755489) b!4438437))

(assert (= (and b!4438436 (not c!755489)) b!4438438))

(declare-fun m!5126687 () Bool)

(assert (=> b!4438437 m!5126687))

(assert (=> b!4437758 d!1347306))

(declare-fun bm!308884 () Bool)

(declare-fun call!308889 () Bool)

(declare-fun e!2763689 () List!49860)

(assert (=> bm!308884 (= call!308889 (contains!12293 e!2763689 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun c!755492 () Bool)

(declare-fun c!755490 () Bool)

(assert (=> bm!308884 (= c!755492 c!755490)))

(declare-fun b!4438439 () Bool)

(assert (=> b!4438439 (= e!2763689 (keys!17022 lt!1634523))))

(declare-fun b!4438440 () Bool)

(declare-fun e!2763691 () Unit!83561)

(declare-fun lt!1635015 () Unit!83561)

(assert (=> b!4438440 (= e!2763691 lt!1635015)))

(declare-fun lt!1635014 () Unit!83561)

(assert (=> b!4438440 (= lt!1635014 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438440 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635016 () Unit!83561)

(assert (=> b!4438440 (= lt!1635016 lt!1635014)))

(assert (=> b!4438440 (= lt!1635015 (lemmaInListThenGetKeysListContains!277 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438440 call!308889))

(declare-fun b!4438441 () Bool)

(assert (=> b!4438441 (= e!2763689 (getKeysList!280 (toList!3610 lt!1634523)))))

(declare-fun d!1347308 () Bool)

(declare-fun e!2763688 () Bool)

(assert (=> d!1347308 e!2763688))

(declare-fun res!1837178 () Bool)

(assert (=> d!1347308 (=> res!1837178 e!2763688)))

(declare-fun e!2763693 () Bool)

(assert (=> d!1347308 (= res!1837178 e!2763693)))

(declare-fun res!1837179 () Bool)

(assert (=> d!1347308 (=> (not res!1837179) (not e!2763693))))

(declare-fun lt!1635012 () Bool)

(assert (=> d!1347308 (= res!1837179 (not lt!1635012))))

(declare-fun lt!1635018 () Bool)

(assert (=> d!1347308 (= lt!1635012 lt!1635018)))

(declare-fun lt!1635019 () Unit!83561)

(assert (=> d!1347308 (= lt!1635019 e!2763691)))

(assert (=> d!1347308 (= c!755490 lt!1635018)))

(assert (=> d!1347308 (= lt!1635018 (containsKey!1211 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347308 (= (contains!12288 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lt!1635012)))

(declare-fun b!4438442 () Bool)

(declare-fun e!2763692 () Unit!83561)

(declare-fun Unit!83691 () Unit!83561)

(assert (=> b!4438442 (= e!2763692 Unit!83691)))

(declare-fun b!4438443 () Bool)

(declare-fun e!2763690 () Bool)

(assert (=> b!4438443 (= e!2763688 e!2763690)))

(declare-fun res!1837180 () Bool)

(assert (=> b!4438443 (=> (not res!1837180) (not e!2763690))))

(assert (=> b!4438443 (= res!1837180 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4438444 () Bool)

(assert (=> b!4438444 (= e!2763690 (contains!12293 (keys!17022 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun b!4438445 () Bool)

(assert (=> b!4438445 (= e!2763691 e!2763692)))

(declare-fun c!755491 () Bool)

(assert (=> b!4438445 (= c!755491 call!308889)))

(declare-fun b!4438446 () Bool)

(assert (=> b!4438446 (= e!2763693 (not (contains!12293 (keys!17022 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4438447 () Bool)

(assert (=> b!4438447 false))

(declare-fun lt!1635017 () Unit!83561)

(declare-fun lt!1635013 () Unit!83561)

(assert (=> b!4438447 (= lt!1635017 lt!1635013)))

(assert (=> b!4438447 (containsKey!1211 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4438447 (= lt!1635013 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 lt!1634523) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun Unit!83692 () Unit!83561)

(assert (=> b!4438447 (= e!2763692 Unit!83692)))

(assert (= (and d!1347308 c!755490) b!4438440))

(assert (= (and d!1347308 (not c!755490)) b!4438445))

(assert (= (and b!4438445 c!755491) b!4438447))

(assert (= (and b!4438445 (not c!755491)) b!4438442))

(assert (= (or b!4438440 b!4438445) bm!308884))

(assert (= (and bm!308884 c!755492) b!4438441))

(assert (= (and bm!308884 (not c!755492)) b!4438439))

(assert (= (and d!1347308 res!1837179) b!4438446))

(assert (= (and d!1347308 (not res!1837178)) b!4438443))

(assert (= (and b!4438443 res!1837180) b!4438444))

(declare-fun m!5126689 () Bool)

(assert (=> d!1347308 m!5126689))

(declare-fun m!5126691 () Bool)

(assert (=> b!4438439 m!5126691))

(declare-fun m!5126693 () Bool)

(assert (=> b!4438443 m!5126693))

(assert (=> b!4438443 m!5126693))

(declare-fun m!5126695 () Bool)

(assert (=> b!4438443 m!5126695))

(assert (=> b!4438446 m!5126691))

(assert (=> b!4438446 m!5126691))

(declare-fun m!5126697 () Bool)

(assert (=> b!4438446 m!5126697))

(declare-fun m!5126699 () Bool)

(assert (=> bm!308884 m!5126699))

(declare-fun m!5126701 () Bool)

(assert (=> b!4438440 m!5126701))

(assert (=> b!4438440 m!5126693))

(assert (=> b!4438440 m!5126693))

(assert (=> b!4438440 m!5126695))

(declare-fun m!5126703 () Bool)

(assert (=> b!4438440 m!5126703))

(assert (=> b!4438447 m!5126689))

(declare-fun m!5126705 () Bool)

(assert (=> b!4438447 m!5126705))

(declare-fun m!5126707 () Bool)

(assert (=> b!4438441 m!5126707))

(assert (=> b!4438444 m!5126691))

(assert (=> b!4438444 m!5126691))

(assert (=> b!4438444 m!5126697))

(assert (=> b!4437694 d!1347308))

(declare-fun d!1347310 () Bool)

(declare-fun e!2763694 () Bool)

(assert (=> d!1347310 e!2763694))

(declare-fun res!1837181 () Bool)

(assert (=> d!1347310 (=> (not res!1837181) (not e!2763694))))

(declare-fun lt!1635021 () ListMap!2853)

(assert (=> d!1347310 (= res!1837181 (contains!12288 lt!1635021 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635023 () List!49857)

(assert (=> d!1347310 (= lt!1635021 (ListMap!2854 lt!1635023))))

(declare-fun lt!1635020 () Unit!83561)

(declare-fun lt!1635022 () Unit!83561)

(assert (=> d!1347310 (= lt!1635020 lt!1635022)))

(assert (=> d!1347310 (= (getValueByKey!768 lt!1635023 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (Some!10781 (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347310 (= lt!1635022 (lemmaContainsTupThenGetReturnValue!501 lt!1635023 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347310 (= lt!1635023 (insertNoDuplicatedKeys!221 (toList!3610 lt!1634303) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347310 (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1635021)))

(declare-fun b!4438448 () Bool)

(declare-fun res!1837182 () Bool)

(assert (=> b!4438448 (=> (not res!1837182) (not e!2763694))))

(assert (=> b!4438448 (= res!1837182 (= (getValueByKey!768 (toList!3610 lt!1635021) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (Some!10781 (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4438449 () Bool)

(assert (=> b!4438449 (= e!2763694 (contains!12295 (toList!3610 lt!1635021) (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (= (and d!1347310 res!1837181) b!4438448))

(assert (= (and b!4438448 res!1837182) b!4438449))

(declare-fun m!5126709 () Bool)

(assert (=> d!1347310 m!5126709))

(declare-fun m!5126711 () Bool)

(assert (=> d!1347310 m!5126711))

(declare-fun m!5126713 () Bool)

(assert (=> d!1347310 m!5126713))

(declare-fun m!5126715 () Bool)

(assert (=> d!1347310 m!5126715))

(declare-fun m!5126717 () Bool)

(assert (=> b!4438448 m!5126717))

(declare-fun m!5126719 () Bool)

(assert (=> b!4438449 m!5126719))

(assert (=> b!4437694 d!1347310))

(assert (=> b!4437694 d!1347056))

(declare-fun bs!763568 () Bool)

(declare-fun b!4438452 () Bool)

(assert (= bs!763568 (and b!4438452 b!4437857)))

(declare-fun lambda!156749 () Int)

(assert (=> bs!763568 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634698) (= lambda!156749 lambda!156684))))

(declare-fun bs!763569 () Bool)

(assert (= bs!763569 (and b!4438452 b!4437859)))

(assert (=> bs!763569 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156749 lambda!156678))))

(declare-fun bs!763570 () Bool)

(assert (= bs!763570 (and b!4438452 d!1347008)))

(assert (=> bs!763570 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634665) (= lambda!156749 lambda!156676))))

(declare-fun bs!763571 () Bool)

(assert (= bs!763571 (and b!4438452 b!4437836)))

(assert (=> bs!763571 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156749 lambda!156673))))

(declare-fun bs!763572 () Bool)

(assert (= bs!763572 (and b!4438452 b!4437834)))

(assert (=> bs!763572 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634668) (= lambda!156749 lambda!156675))))

(assert (=> bs!763572 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156749 lambda!156674))))

(declare-fun bs!763573 () Bool)

(assert (= bs!763573 (and b!4438452 d!1346872)))

(assert (=> bs!763573 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634520) (= lambda!156749 lambda!156646))))

(declare-fun bs!763574 () Bool)

(assert (= bs!763574 (and b!4438452 d!1347024)))

(assert (=> bs!763574 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634695) (= lambda!156749 lambda!156685))))

(declare-fun bs!763575 () Bool)

(assert (= bs!763575 (and b!4438452 b!4438294)))

(assert (=> bs!763575 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634914) (= lambda!156749 lambda!156719))))

(declare-fun bs!763576 () Bool)

(assert (= bs!763576 (and b!4438452 b!4437694)))

(assert (=> bs!763576 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634523) (= lambda!156749 lambda!156645))))

(declare-fun bs!763577 () Bool)

(assert (= bs!763577 (and b!4438452 b!4438296)))

(assert (=> bs!763577 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156749 lambda!156715))))

(declare-fun bs!763578 () Bool)

(assert (= bs!763578 (and b!4438452 b!4437696)))

(assert (=> bs!763578 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156749 lambda!156643))))

(assert (=> bs!763568 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156749 lambda!156681))))

(declare-fun bs!763579 () Bool)

(assert (= bs!763579 (and b!4438452 d!1346868)))

(assert (=> bs!763579 (not (= lambda!156749 lambda!156561))))

(assert (=> bs!763576 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156749 lambda!156644))))

(declare-fun bs!763580 () Bool)

(assert (= bs!763580 (and b!4438452 d!1347146)))

(assert (=> bs!763580 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156749 lambda!156703))))

(declare-fun bs!763581 () Bool)

(assert (= bs!763581 (and b!4438452 d!1347246)))

(assert (=> bs!763581 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634911) (= lambda!156749 lambda!156721))))

(assert (=> bs!763575 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156749 lambda!156717))))

(assert (=> b!4438452 true))

(declare-fun bs!763582 () Bool)

(declare-fun b!4438450 () Bool)

(assert (= bs!763582 (and b!4438450 b!4437857)))

(declare-fun lambda!156750 () Int)

(assert (=> bs!763582 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634698) (= lambda!156750 lambda!156684))))

(declare-fun bs!763583 () Bool)

(assert (= bs!763583 (and b!4438450 b!4437859)))

(assert (=> bs!763583 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156750 lambda!156678))))

(declare-fun bs!763584 () Bool)

(assert (= bs!763584 (and b!4438450 d!1347008)))

(assert (=> bs!763584 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634665) (= lambda!156750 lambda!156676))))

(declare-fun bs!763585 () Bool)

(assert (= bs!763585 (and b!4438450 b!4437836)))

(assert (=> bs!763585 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156750 lambda!156673))))

(declare-fun bs!763586 () Bool)

(assert (= bs!763586 (and b!4438450 b!4437834)))

(assert (=> bs!763586 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634668) (= lambda!156750 lambda!156675))))

(assert (=> bs!763586 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156750 lambda!156674))))

(declare-fun bs!763587 () Bool)

(assert (= bs!763587 (and b!4438450 d!1346872)))

(assert (=> bs!763587 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634520) (= lambda!156750 lambda!156646))))

(declare-fun bs!763588 () Bool)

(assert (= bs!763588 (and b!4438450 d!1347024)))

(assert (=> bs!763588 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634695) (= lambda!156750 lambda!156685))))

(declare-fun bs!763589 () Bool)

(assert (= bs!763589 (and b!4438450 b!4438294)))

(assert (=> bs!763589 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634914) (= lambda!156750 lambda!156719))))

(declare-fun bs!763590 () Bool)

(assert (= bs!763590 (and b!4438450 b!4437694)))

(assert (=> bs!763590 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634523) (= lambda!156750 lambda!156645))))

(declare-fun bs!763591 () Bool)

(assert (= bs!763591 (and b!4438450 b!4438296)))

(assert (=> bs!763591 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156750 lambda!156715))))

(declare-fun bs!763592 () Bool)

(assert (= bs!763592 (and b!4438450 b!4438452)))

(assert (=> bs!763592 (= lambda!156750 lambda!156749)))

(declare-fun bs!763593 () Bool)

(assert (= bs!763593 (and b!4438450 b!4437696)))

(assert (=> bs!763593 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156750 lambda!156643))))

(assert (=> bs!763582 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156750 lambda!156681))))

(declare-fun bs!763594 () Bool)

(assert (= bs!763594 (and b!4438450 d!1346868)))

(assert (=> bs!763594 (not (= lambda!156750 lambda!156561))))

(assert (=> bs!763590 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156750 lambda!156644))))

(declare-fun bs!763595 () Bool)

(assert (= bs!763595 (and b!4438450 d!1347146)))

(assert (=> bs!763595 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634303) (= lambda!156750 lambda!156703))))

(declare-fun bs!763596 () Bool)

(assert (= bs!763596 (and b!4438450 d!1347246)))

(assert (=> bs!763596 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1634911) (= lambda!156750 lambda!156721))))

(assert (=> bs!763589 (= (= (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156750 lambda!156717))))

(assert (=> b!4438450 true))

(declare-fun lambda!156751 () Int)

(declare-fun lt!1635037 () ListMap!2853)

(assert (=> bs!763582 (= (= lt!1635037 lt!1634698) (= lambda!156751 lambda!156684))))

(assert (=> bs!763583 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156751 lambda!156678))))

(assert (=> bs!763584 (= (= lt!1635037 lt!1634665) (= lambda!156751 lambda!156676))))

(assert (=> bs!763585 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156751 lambda!156673))))

(assert (=> bs!763586 (= (= lt!1635037 lt!1634668) (= lambda!156751 lambda!156675))))

(assert (=> bs!763586 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156751 lambda!156674))))

(assert (=> bs!763587 (= (= lt!1635037 lt!1634520) (= lambda!156751 lambda!156646))))

(assert (=> bs!763588 (= (= lt!1635037 lt!1634695) (= lambda!156751 lambda!156685))))

(assert (=> b!4438450 (= (= lt!1635037 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156751 lambda!156750))))

(assert (=> bs!763589 (= (= lt!1635037 lt!1634914) (= lambda!156751 lambda!156719))))

(assert (=> bs!763590 (= (= lt!1635037 lt!1634523) (= lambda!156751 lambda!156645))))

(assert (=> bs!763591 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156751 lambda!156715))))

(assert (=> bs!763592 (= (= lt!1635037 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156751 lambda!156749))))

(assert (=> bs!763593 (= (= lt!1635037 lt!1634303) (= lambda!156751 lambda!156643))))

(assert (=> bs!763582 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156751 lambda!156681))))

(assert (=> bs!763594 (not (= lambda!156751 lambda!156561))))

(assert (=> bs!763590 (= (= lt!1635037 lt!1634303) (= lambda!156751 lambda!156644))))

(assert (=> bs!763595 (= (= lt!1635037 lt!1634303) (= lambda!156751 lambda!156703))))

(assert (=> bs!763596 (= (= lt!1635037 lt!1634911) (= lambda!156751 lambda!156721))))

(assert (=> bs!763589 (= (= lt!1635037 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156751 lambda!156717))))

(assert (=> b!4438450 true))

(declare-fun bs!763597 () Bool)

(declare-fun d!1347312 () Bool)

(assert (= bs!763597 (and d!1347312 b!4437857)))

(declare-fun lt!1635034 () ListMap!2853)

(declare-fun lambda!156752 () Int)

(assert (=> bs!763597 (= (= lt!1635034 lt!1634698) (= lambda!156752 lambda!156684))))

(declare-fun bs!763598 () Bool)

(assert (= bs!763598 (and d!1347312 b!4437859)))

(assert (=> bs!763598 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156752 lambda!156678))))

(declare-fun bs!763599 () Bool)

(assert (= bs!763599 (and d!1347312 d!1347008)))

(assert (=> bs!763599 (= (= lt!1635034 lt!1634665) (= lambda!156752 lambda!156676))))

(declare-fun bs!763600 () Bool)

(assert (= bs!763600 (and d!1347312 b!4437834)))

(assert (=> bs!763600 (= (= lt!1635034 lt!1634668) (= lambda!156752 lambda!156675))))

(assert (=> bs!763600 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156752 lambda!156674))))

(declare-fun bs!763601 () Bool)

(assert (= bs!763601 (and d!1347312 d!1346872)))

(assert (=> bs!763601 (= (= lt!1635034 lt!1634520) (= lambda!156752 lambda!156646))))

(declare-fun bs!763602 () Bool)

(assert (= bs!763602 (and d!1347312 d!1347024)))

(assert (=> bs!763602 (= (= lt!1635034 lt!1634695) (= lambda!156752 lambda!156685))))

(declare-fun bs!763603 () Bool)

(assert (= bs!763603 (and d!1347312 b!4438450)))

(assert (=> bs!763603 (= (= lt!1635034 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156752 lambda!156750))))

(declare-fun bs!763604 () Bool)

(assert (= bs!763604 (and d!1347312 b!4438294)))

(assert (=> bs!763604 (= (= lt!1635034 lt!1634914) (= lambda!156752 lambda!156719))))

(declare-fun bs!763605 () Bool)

(assert (= bs!763605 (and d!1347312 b!4437694)))

(assert (=> bs!763605 (= (= lt!1635034 lt!1634523) (= lambda!156752 lambda!156645))))

(declare-fun bs!763606 () Bool)

(assert (= bs!763606 (and d!1347312 b!4438296)))

(assert (=> bs!763606 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156752 lambda!156715))))

(declare-fun bs!763607 () Bool)

(assert (= bs!763607 (and d!1347312 b!4438452)))

(assert (=> bs!763607 (= (= lt!1635034 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156752 lambda!156749))))

(declare-fun bs!763608 () Bool)

(assert (= bs!763608 (and d!1347312 b!4437696)))

(assert (=> bs!763608 (= (= lt!1635034 lt!1634303) (= lambda!156752 lambda!156643))))

(assert (=> bs!763597 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156752 lambda!156681))))

(declare-fun bs!763609 () Bool)

(assert (= bs!763609 (and d!1347312 d!1346868)))

(assert (=> bs!763609 (not (= lambda!156752 lambda!156561))))

(declare-fun bs!763610 () Bool)

(assert (= bs!763610 (and d!1347312 b!4437836)))

(assert (=> bs!763610 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156752 lambda!156673))))

(assert (=> bs!763603 (= (= lt!1635034 lt!1635037) (= lambda!156752 lambda!156751))))

(assert (=> bs!763605 (= (= lt!1635034 lt!1634303) (= lambda!156752 lambda!156644))))

(declare-fun bs!763611 () Bool)

(assert (= bs!763611 (and d!1347312 d!1347146)))

(assert (=> bs!763611 (= (= lt!1635034 lt!1634303) (= lambda!156752 lambda!156703))))

(declare-fun bs!763612 () Bool)

(assert (= bs!763612 (and d!1347312 d!1347246)))

(assert (=> bs!763612 (= (= lt!1635034 lt!1634911) (= lambda!156752 lambda!156721))))

(assert (=> bs!763604 (= (= lt!1635034 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156752 lambda!156717))))

(assert (=> d!1347312 true))

(declare-fun e!2763696 () ListMap!2853)

(assert (=> b!4438450 (= e!2763696 lt!1635037)))

(declare-fun lt!1635038 () ListMap!2853)

(assert (=> b!4438450 (= lt!1635038 (+!1188 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438450 (= lt!1635037 (addToMapMapFromBucket!432 (t!356799 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (+!1188 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun lt!1635029 () Unit!83561)

(declare-fun call!308891 () Unit!83561)

(assert (=> b!4438450 (= lt!1635029 call!308891)))

(declare-fun call!308890 () Bool)

(assert (=> b!4438450 call!308890))

(declare-fun lt!1635039 () Unit!83561)

(assert (=> b!4438450 (= lt!1635039 lt!1635029)))

(declare-fun call!308892 () Bool)

(assert (=> b!4438450 call!308892))

(declare-fun lt!1635025 () Unit!83561)

(declare-fun Unit!83704 () Unit!83561)

(assert (=> b!4438450 (= lt!1635025 Unit!83704)))

(assert (=> b!4438450 (forall!9668 (t!356799 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lambda!156751)))

(declare-fun lt!1635030 () Unit!83561)

(declare-fun Unit!83705 () Unit!83561)

(assert (=> b!4438450 (= lt!1635030 Unit!83705)))

(declare-fun lt!1635043 () Unit!83561)

(declare-fun Unit!83706 () Unit!83561)

(assert (=> b!4438450 (= lt!1635043 Unit!83706)))

(declare-fun lt!1635026 () Unit!83561)

(assert (=> b!4438450 (= lt!1635026 (forallContained!2135 (toList!3610 lt!1635038) lambda!156751 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438450 (contains!12288 lt!1635038 (_1!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635028 () Unit!83561)

(declare-fun Unit!83707 () Unit!83561)

(assert (=> b!4438450 (= lt!1635028 Unit!83707)))

(assert (=> b!4438450 (contains!12288 lt!1635037 (_1!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635027 () Unit!83561)

(declare-fun Unit!83708 () Unit!83561)

(assert (=> b!4438450 (= lt!1635027 Unit!83708)))

(assert (=> b!4438450 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156751)))

(declare-fun lt!1635041 () Unit!83561)

(declare-fun Unit!83709 () Unit!83561)

(assert (=> b!4438450 (= lt!1635041 Unit!83709)))

(assert (=> b!4438450 (forall!9668 (toList!3610 lt!1635038) lambda!156751)))

(declare-fun lt!1635044 () Unit!83561)

(declare-fun Unit!83710 () Unit!83561)

(assert (=> b!4438450 (= lt!1635044 Unit!83710)))

(declare-fun lt!1635042 () Unit!83561)

(declare-fun Unit!83711 () Unit!83561)

(assert (=> b!4438450 (= lt!1635042 Unit!83711)))

(declare-fun lt!1635035 () Unit!83561)

(assert (=> b!4438450 (= lt!1635035 (addForallContainsKeyThenBeforeAdding!201 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1635037 (_1!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (_2!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(assert (=> b!4438450 (forall!9668 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lambda!156751)))

(declare-fun lt!1635032 () Unit!83561)

(assert (=> b!4438450 (= lt!1635032 lt!1635035)))

(assert (=> b!4438450 (forall!9668 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lambda!156751)))

(declare-fun lt!1635036 () Unit!83561)

(declare-fun Unit!83712 () Unit!83561)

(assert (=> b!4438450 (= lt!1635036 Unit!83712)))

(declare-fun res!1837184 () Bool)

(assert (=> b!4438450 (= res!1837184 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156751))))

(declare-fun e!2763695 () Bool)

(assert (=> b!4438450 (=> (not res!1837184) (not e!2763695))))

(assert (=> b!4438450 e!2763695))

(declare-fun lt!1635033 () Unit!83561)

(declare-fun Unit!83714 () Unit!83561)

(assert (=> b!4438450 (= lt!1635033 Unit!83714)))

(declare-fun b!4438451 () Bool)

(declare-fun e!2763697 () Bool)

(assert (=> b!4438451 (= e!2763697 (invariantList!833 (toList!3610 lt!1635034)))))

(declare-fun bm!308885 () Bool)

(declare-fun c!755493 () Bool)

(assert (=> bm!308885 (= call!308892 (forall!9668 (ite c!755493 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (toList!3610 lt!1635038)) (ite c!755493 lambda!156749 lambda!156751)))))

(declare-fun bm!308886 () Bool)

(assert (=> bm!308886 (= call!308890 (forall!9668 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (ite c!755493 lambda!156749 lambda!156750)))))

(assert (=> b!4438452 (= e!2763696 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun lt!1635024 () Unit!83561)

(assert (=> b!4438452 (= lt!1635024 call!308891)))

(assert (=> b!4438452 call!308890))

(declare-fun lt!1635040 () Unit!83561)

(assert (=> b!4438452 (= lt!1635040 lt!1635024)))

(assert (=> b!4438452 call!308892))

(declare-fun lt!1635031 () Unit!83561)

(declare-fun Unit!83715 () Unit!83561)

(assert (=> b!4438452 (= lt!1635031 Unit!83715)))

(assert (=> d!1347312 e!2763697))

(declare-fun res!1837185 () Bool)

(assert (=> d!1347312 (=> (not res!1837185) (not e!2763697))))

(assert (=> d!1347312 (= res!1837185 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156752))))

(assert (=> d!1347312 (= lt!1635034 e!2763696)))

(assert (=> d!1347312 (= c!755493 ((_ is Nil!49733) (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> d!1347312 (noDuplicateKeys!811 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> d!1347312 (= (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lt!1635034)))

(declare-fun b!4438453 () Bool)

(assert (=> b!4438453 (= e!2763695 (forall!9668 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lambda!156751))))

(declare-fun b!4438454 () Bool)

(declare-fun res!1837183 () Bool)

(assert (=> b!4438454 (=> (not res!1837183) (not e!2763697))))

(assert (=> b!4438454 (= res!1837183 (forall!9668 (toList!3610 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lambda!156752))))

(declare-fun bm!308887 () Bool)

(assert (=> bm!308887 (= call!308891 (lemmaContainsAllItsOwnKeys!201 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (= (and d!1347312 c!755493) b!4438452))

(assert (= (and d!1347312 (not c!755493)) b!4438450))

(assert (= (and b!4438450 res!1837184) b!4438453))

(assert (= (or b!4438452 b!4438450) bm!308887))

(assert (= (or b!4438452 b!4438450) bm!308886))

(assert (= (or b!4438452 b!4438450) bm!308885))

(assert (= (and d!1347312 res!1837185) b!4438454))

(assert (= (and b!4438454 res!1837183) b!4438451))

(declare-fun m!5126721 () Bool)

(assert (=> bm!308885 m!5126721))

(declare-fun m!5126723 () Bool)

(assert (=> b!4438451 m!5126723))

(assert (=> bm!308887 m!5125431))

(declare-fun m!5126725 () Bool)

(assert (=> bm!308887 m!5126725))

(declare-fun m!5126727 () Bool)

(assert (=> b!4438450 m!5126727))

(assert (=> b!4438450 m!5125431))

(declare-fun m!5126729 () Bool)

(assert (=> b!4438450 m!5126729))

(declare-fun m!5126731 () Bool)

(assert (=> b!4438450 m!5126731))

(declare-fun m!5126733 () Bool)

(assert (=> b!4438450 m!5126733))

(assert (=> b!4438450 m!5126731))

(declare-fun m!5126735 () Bool)

(assert (=> b!4438450 m!5126735))

(declare-fun m!5126737 () Bool)

(assert (=> b!4438450 m!5126737))

(declare-fun m!5126739 () Bool)

(assert (=> b!4438450 m!5126739))

(assert (=> b!4438450 m!5125431))

(assert (=> b!4438450 m!5126737))

(declare-fun m!5126741 () Bool)

(assert (=> b!4438450 m!5126741))

(declare-fun m!5126743 () Bool)

(assert (=> b!4438450 m!5126743))

(assert (=> b!4438450 m!5126735))

(declare-fun m!5126745 () Bool)

(assert (=> b!4438450 m!5126745))

(declare-fun m!5126747 () Bool)

(assert (=> b!4438454 m!5126747))

(declare-fun m!5126749 () Bool)

(assert (=> d!1347312 m!5126749))

(assert (=> d!1347312 m!5125761))

(assert (=> b!4438453 m!5126731))

(declare-fun m!5126751 () Bool)

(assert (=> bm!308886 m!5126751))

(assert (=> b!4437694 d!1347312))

(declare-fun d!1347314 () Bool)

(declare-fun res!1837188 () Bool)

(declare-fun e!2763706 () Bool)

(assert (=> d!1347314 (=> res!1837188 e!2763706)))

(assert (=> d!1347314 (= res!1837188 ((_ is Nil!49733) (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> d!1347314 (= (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156645) e!2763706)))

(declare-fun b!4438469 () Bool)

(declare-fun e!2763707 () Bool)

(assert (=> b!4438469 (= e!2763706 e!2763707)))

(declare-fun res!1837189 () Bool)

(assert (=> b!4438469 (=> (not res!1837189) (not e!2763707))))

(assert (=> b!4438469 (= res!1837189 (dynLambda!20898 lambda!156645 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun b!4438470 () Bool)

(assert (=> b!4438470 (= e!2763707 (forall!9668 (t!356799 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lambda!156645))))

(assert (= (and d!1347314 (not res!1837188)) b!4438469))

(assert (= (and b!4438469 res!1837189) b!4438470))

(declare-fun b_lambda!144789 () Bool)

(assert (=> (not b_lambda!144789) (not b!4438469)))

(declare-fun m!5126753 () Bool)

(assert (=> b!4438469 m!5126753))

(declare-fun m!5126755 () Bool)

(assert (=> b!4438470 m!5126755))

(assert (=> b!4437694 d!1347314))

(declare-fun bs!763613 () Bool)

(declare-fun d!1347316 () Bool)

(assert (= bs!763613 (and d!1347316 b!4437857)))

(declare-fun lambda!156757 () Int)

(assert (=> bs!763613 (= (= lt!1634523 lt!1634698) (= lambda!156757 lambda!156684))))

(declare-fun bs!763614 () Bool)

(assert (= bs!763614 (and d!1347316 b!4437859)))

(assert (=> bs!763614 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156757 lambda!156678))))

(declare-fun bs!763615 () Bool)

(assert (= bs!763615 (and d!1347316 d!1347008)))

(assert (=> bs!763615 (= (= lt!1634523 lt!1634665) (= lambda!156757 lambda!156676))))

(declare-fun bs!763616 () Bool)

(assert (= bs!763616 (and d!1347316 b!4437834)))

(assert (=> bs!763616 (= (= lt!1634523 lt!1634668) (= lambda!156757 lambda!156675))))

(assert (=> bs!763616 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156757 lambda!156674))))

(declare-fun bs!763617 () Bool)

(assert (= bs!763617 (and d!1347316 d!1346872)))

(assert (=> bs!763617 (= (= lt!1634523 lt!1634520) (= lambda!156757 lambda!156646))))

(declare-fun bs!763618 () Bool)

(assert (= bs!763618 (and d!1347316 d!1347024)))

(assert (=> bs!763618 (= (= lt!1634523 lt!1634695) (= lambda!156757 lambda!156685))))

(declare-fun bs!763619 () Bool)

(assert (= bs!763619 (and d!1347316 b!4438450)))

(assert (=> bs!763619 (= (= lt!1634523 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156757 lambda!156750))))

(declare-fun bs!763620 () Bool)

(assert (= bs!763620 (and d!1347316 b!4438294)))

(assert (=> bs!763620 (= (= lt!1634523 lt!1634914) (= lambda!156757 lambda!156719))))

(declare-fun bs!763621 () Bool)

(assert (= bs!763621 (and d!1347316 b!4437694)))

(assert (=> bs!763621 (= lambda!156757 lambda!156645)))

(declare-fun bs!763622 () Bool)

(assert (= bs!763622 (and d!1347316 d!1347312)))

(assert (=> bs!763622 (= (= lt!1634523 lt!1635034) (= lambda!156757 lambda!156752))))

(declare-fun bs!763623 () Bool)

(assert (= bs!763623 (and d!1347316 b!4438296)))

(assert (=> bs!763623 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156757 lambda!156715))))

(declare-fun bs!763624 () Bool)

(assert (= bs!763624 (and d!1347316 b!4438452)))

(assert (=> bs!763624 (= (= lt!1634523 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156757 lambda!156749))))

(declare-fun bs!763625 () Bool)

(assert (= bs!763625 (and d!1347316 b!4437696)))

(assert (=> bs!763625 (= (= lt!1634523 lt!1634303) (= lambda!156757 lambda!156643))))

(assert (=> bs!763613 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156757 lambda!156681))))

(declare-fun bs!763626 () Bool)

(assert (= bs!763626 (and d!1347316 d!1346868)))

(assert (=> bs!763626 (not (= lambda!156757 lambda!156561))))

(declare-fun bs!763627 () Bool)

(assert (= bs!763627 (and d!1347316 b!4437836)))

(assert (=> bs!763627 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156757 lambda!156673))))

(assert (=> bs!763619 (= (= lt!1634523 lt!1635037) (= lambda!156757 lambda!156751))))

(assert (=> bs!763621 (= (= lt!1634523 lt!1634303) (= lambda!156757 lambda!156644))))

(declare-fun bs!763628 () Bool)

(assert (= bs!763628 (and d!1347316 d!1347146)))

(assert (=> bs!763628 (= (= lt!1634523 lt!1634303) (= lambda!156757 lambda!156703))))

(declare-fun bs!763629 () Bool)

(assert (= bs!763629 (and d!1347316 d!1347246)))

(assert (=> bs!763629 (= (= lt!1634523 lt!1634911) (= lambda!156757 lambda!156721))))

(assert (=> bs!763620 (= (= lt!1634523 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156757 lambda!156717))))

(assert (=> d!1347316 true))

(assert (=> d!1347316 (forall!9668 (toList!3610 lt!1634303) lambda!156757)))

(declare-fun lt!1635069 () Unit!83561)

(declare-fun choose!28186 (ListMap!2853 ListMap!2853 K!11100 V!11346) Unit!83561)

(assert (=> d!1347316 (= lt!1635069 (choose!28186 lt!1634303 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347316 (forall!9668 (toList!3610 (+!1188 lt!1634303 (tuple2!49623 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))) lambda!156757)))

(assert (=> d!1347316 (= (addForallContainsKeyThenBeforeAdding!201 lt!1634303 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lt!1635069)))

(declare-fun bs!763630 () Bool)

(assert (= bs!763630 d!1347316))

(declare-fun m!5126761 () Bool)

(assert (=> bs!763630 m!5126761))

(declare-fun m!5126765 () Bool)

(assert (=> bs!763630 m!5126765))

(declare-fun m!5126771 () Bool)

(assert (=> bs!763630 m!5126771))

(declare-fun m!5126777 () Bool)

(assert (=> bs!763630 m!5126777))

(assert (=> b!4437694 d!1347316))

(declare-fun d!1347318 () Bool)

(assert (=> d!1347318 (dynLambda!20898 lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(declare-fun lt!1635085 () Unit!83561)

(declare-fun choose!28187 (List!49857 Int tuple2!49622) Unit!83561)

(assert (=> d!1347318 (= lt!1635085 (choose!28187 (toList!3610 lt!1634524) lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun e!2763728 () Bool)

(assert (=> d!1347318 e!2763728))

(declare-fun res!1837204 () Bool)

(assert (=> d!1347318 (=> (not res!1837204) (not e!2763728))))

(assert (=> d!1347318 (= res!1837204 (forall!9668 (toList!3610 lt!1634524) lambda!156645))))

(assert (=> d!1347318 (= (forallContained!2135 (toList!3610 lt!1634524) lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) lt!1635085)))

(declare-fun b!4438510 () Bool)

(assert (=> b!4438510 (= e!2763728 (contains!12295 (toList!3610 lt!1634524) (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (= (and d!1347318 res!1837204) b!4438510))

(declare-fun b_lambda!144791 () Bool)

(assert (=> (not b_lambda!144791) (not d!1347318)))

(declare-fun m!5126813 () Bool)

(assert (=> d!1347318 m!5126813))

(declare-fun m!5126815 () Bool)

(assert (=> d!1347318 m!5126815))

(assert (=> d!1347318 m!5125421))

(declare-fun m!5126817 () Bool)

(assert (=> b!4438510 m!5126817))

(assert (=> b!4437694 d!1347318))

(declare-fun bm!308900 () Bool)

(declare-fun call!308905 () Bool)

(declare-fun e!2763730 () List!49860)

(assert (=> bm!308900 (= call!308905 (contains!12293 e!2763730 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun c!755514 () Bool)

(declare-fun c!755512 () Bool)

(assert (=> bm!308900 (= c!755514 c!755512)))

(declare-fun b!4438511 () Bool)

(assert (=> b!4438511 (= e!2763730 (keys!17022 lt!1634524))))

(declare-fun b!4438512 () Bool)

(declare-fun e!2763732 () Unit!83561)

(declare-fun lt!1635089 () Unit!83561)

(assert (=> b!4438512 (= e!2763732 lt!1635089)))

(declare-fun lt!1635088 () Unit!83561)

(assert (=> b!4438512 (= lt!1635088 (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438512 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635090 () Unit!83561)

(assert (=> b!4438512 (= lt!1635090 lt!1635088)))

(assert (=> b!4438512 (= lt!1635089 (lemmaInListThenGetKeysListContains!277 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> b!4438512 call!308905))

(declare-fun b!4438513 () Bool)

(assert (=> b!4438513 (= e!2763730 (getKeysList!280 (toList!3610 lt!1634524)))))

(declare-fun d!1347328 () Bool)

(declare-fun e!2763729 () Bool)

(assert (=> d!1347328 e!2763729))

(declare-fun res!1837205 () Bool)

(assert (=> d!1347328 (=> res!1837205 e!2763729)))

(declare-fun e!2763734 () Bool)

(assert (=> d!1347328 (= res!1837205 e!2763734)))

(declare-fun res!1837206 () Bool)

(assert (=> d!1347328 (=> (not res!1837206) (not e!2763734))))

(declare-fun lt!1635086 () Bool)

(assert (=> d!1347328 (= res!1837206 (not lt!1635086))))

(declare-fun lt!1635092 () Bool)

(assert (=> d!1347328 (= lt!1635086 lt!1635092)))

(declare-fun lt!1635093 () Unit!83561)

(assert (=> d!1347328 (= lt!1635093 e!2763732)))

(assert (=> d!1347328 (= c!755512 lt!1635092)))

(assert (=> d!1347328 (= lt!1635092 (containsKey!1211 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> d!1347328 (= (contains!12288 lt!1634524 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) lt!1635086)))

(declare-fun b!4438514 () Bool)

(declare-fun e!2763733 () Unit!83561)

(declare-fun Unit!83721 () Unit!83561)

(assert (=> b!4438514 (= e!2763733 Unit!83721)))

(declare-fun b!4438515 () Bool)

(declare-fun e!2763731 () Bool)

(assert (=> b!4438515 (= e!2763729 e!2763731)))

(declare-fun res!1837207 () Bool)

(assert (=> b!4438515 (=> (not res!1837207) (not e!2763731))))

(assert (=> b!4438515 (= res!1837207 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4438516 () Bool)

(assert (=> b!4438516 (= e!2763731 (contains!12293 (keys!17022 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun b!4438517 () Bool)

(assert (=> b!4438517 (= e!2763732 e!2763733)))

(declare-fun c!755513 () Bool)

(assert (=> b!4438517 (= c!755513 call!308905)))

(declare-fun b!4438518 () Bool)

(assert (=> b!4438518 (= e!2763734 (not (contains!12293 (keys!17022 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun b!4438519 () Bool)

(assert (=> b!4438519 false))

(declare-fun lt!1635091 () Unit!83561)

(declare-fun lt!1635087 () Unit!83561)

(assert (=> b!4438519 (= lt!1635091 lt!1635087)))

(assert (=> b!4438519 (containsKey!1211 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(assert (=> b!4438519 (= lt!1635087 (lemmaInGetKeysListThenContainsKey!278 (toList!3610 lt!1634524) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun Unit!83722 () Unit!83561)

(assert (=> b!4438519 (= e!2763733 Unit!83722)))

(assert (= (and d!1347328 c!755512) b!4438512))

(assert (= (and d!1347328 (not c!755512)) b!4438517))

(assert (= (and b!4438517 c!755513) b!4438519))

(assert (= (and b!4438517 (not c!755513)) b!4438514))

(assert (= (or b!4438512 b!4438517) bm!308900))

(assert (= (and bm!308900 c!755514) b!4438513))

(assert (= (and bm!308900 (not c!755514)) b!4438511))

(assert (= (and d!1347328 res!1837206) b!4438518))

(assert (= (and d!1347328 (not res!1837205)) b!4438515))

(assert (= (and b!4438515 res!1837207) b!4438516))

(declare-fun m!5126831 () Bool)

(assert (=> d!1347328 m!5126831))

(declare-fun m!5126833 () Bool)

(assert (=> b!4438511 m!5126833))

(declare-fun m!5126835 () Bool)

(assert (=> b!4438515 m!5126835))

(assert (=> b!4438515 m!5126835))

(declare-fun m!5126837 () Bool)

(assert (=> b!4438515 m!5126837))

(assert (=> b!4438518 m!5126833))

(assert (=> b!4438518 m!5126833))

(declare-fun m!5126839 () Bool)

(assert (=> b!4438518 m!5126839))

(declare-fun m!5126841 () Bool)

(assert (=> bm!308900 m!5126841))

(declare-fun m!5126843 () Bool)

(assert (=> b!4438512 m!5126843))

(assert (=> b!4438512 m!5126835))

(assert (=> b!4438512 m!5126835))

(assert (=> b!4438512 m!5126837))

(declare-fun m!5126845 () Bool)

(assert (=> b!4438512 m!5126845))

(assert (=> b!4438519 m!5126831))

(declare-fun m!5126851 () Bool)

(assert (=> b!4438519 m!5126851))

(declare-fun m!5126853 () Bool)

(assert (=> b!4438513 m!5126853))

(assert (=> b!4438516 m!5126833))

(assert (=> b!4438516 m!5126833))

(assert (=> b!4438516 m!5126839))

(assert (=> b!4437694 d!1347328))

(declare-fun d!1347334 () Bool)

(declare-fun res!1837210 () Bool)

(declare-fun e!2763736 () Bool)

(assert (=> d!1347334 (=> res!1837210 e!2763736)))

(assert (=> d!1347334 (= res!1837210 ((_ is Nil!49733) (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> d!1347334 (= (forall!9668 (_2!28106 (h!55447 (toList!3609 lm!1616))) lambda!156645) e!2763736)))

(declare-fun b!4438522 () Bool)

(declare-fun e!2763737 () Bool)

(assert (=> b!4438522 (= e!2763736 e!2763737)))

(declare-fun res!1837211 () Bool)

(assert (=> b!4438522 (=> (not res!1837211) (not e!2763737))))

(assert (=> b!4438522 (= res!1837211 (dynLambda!20898 lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun b!4438523 () Bool)

(assert (=> b!4438523 (= e!2763737 (forall!9668 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) lambda!156645))))

(assert (= (and d!1347334 (not res!1837210)) b!4438522))

(assert (= (and b!4438522 res!1837211) b!4438523))

(declare-fun b_lambda!144793 () Bool)

(assert (=> (not b_lambda!144793) (not b!4438522)))

(assert (=> b!4438522 m!5126813))

(assert (=> b!4438523 m!5125439))

(assert (=> b!4437694 d!1347334))

(declare-fun d!1347338 () Bool)

(declare-fun res!1837212 () Bool)

(declare-fun e!2763738 () Bool)

(assert (=> d!1347338 (=> res!1837212 e!2763738)))

(assert (=> d!1347338 (= res!1837212 ((_ is Nil!49733) (toList!3610 lt!1634524)))))

(assert (=> d!1347338 (= (forall!9668 (toList!3610 lt!1634524) lambda!156645) e!2763738)))

(declare-fun b!4438524 () Bool)

(declare-fun e!2763739 () Bool)

(assert (=> b!4438524 (= e!2763738 e!2763739)))

(declare-fun res!1837213 () Bool)

(assert (=> b!4438524 (=> (not res!1837213) (not e!2763739))))

(assert (=> b!4438524 (= res!1837213 (dynLambda!20898 lambda!156645 (h!55446 (toList!3610 lt!1634524))))))

(declare-fun b!4438525 () Bool)

(assert (=> b!4438525 (= e!2763739 (forall!9668 (t!356799 (toList!3610 lt!1634524)) lambda!156645))))

(assert (= (and d!1347338 (not res!1837212)) b!4438524))

(assert (= (and b!4438524 res!1837213) b!4438525))

(declare-fun b_lambda!144795 () Bool)

(assert (=> (not b_lambda!144795) (not b!4438524)))

(declare-fun m!5126863 () Bool)

(assert (=> b!4438524 m!5126863))

(declare-fun m!5126865 () Bool)

(assert (=> b!4438525 m!5126865))

(assert (=> b!4437694 d!1347338))

(declare-fun d!1347340 () Bool)

(declare-fun res!1837214 () Bool)

(declare-fun e!2763740 () Bool)

(assert (=> d!1347340 (=> res!1837214 e!2763740)))

(assert (=> d!1347340 (= res!1837214 (not ((_ is Cons!49733) (_2!28106 (h!55447 (toList!3609 lt!1634311))))))))

(assert (=> d!1347340 (= (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lt!1634311)))) e!2763740)))

(declare-fun b!4438526 () Bool)

(declare-fun e!2763741 () Bool)

(assert (=> b!4438526 (= e!2763740 e!2763741)))

(declare-fun res!1837215 () Bool)

(assert (=> b!4438526 (=> (not res!1837215) (not e!2763741))))

(assert (=> b!4438526 (= res!1837215 (not (containsKey!1208 (t!356799 (_2!28106 (h!55447 (toList!3609 lt!1634311)))) (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lt!1634311))))))))))

(declare-fun b!4438527 () Bool)

(assert (=> b!4438527 (= e!2763741 (noDuplicateKeys!811 (t!356799 (_2!28106 (h!55447 (toList!3609 lt!1634311))))))))

(assert (= (and d!1347340 (not res!1837214)) b!4438526))

(assert (= (and b!4438526 res!1837215) b!4438527))

(declare-fun m!5126867 () Bool)

(assert (=> b!4438526 m!5126867))

(declare-fun m!5126869 () Bool)

(assert (=> b!4438527 m!5126869))

(assert (=> bs!763152 d!1347340))

(assert (=> b!4437727 d!1347068))

(declare-fun d!1347342 () Bool)

(assert (=> d!1347342 (containsKey!1211 (toList!3610 lt!1634308) key!3717)))

(declare-fun lt!1635098 () Unit!83561)

(assert (=> d!1347342 (= lt!1635098 (choose!28172 (toList!3610 lt!1634308) key!3717))))

(assert (=> d!1347342 (invariantList!833 (toList!3610 lt!1634308))))

(assert (=> d!1347342 (= (lemmaInGetKeysListThenContainsKey!278 (toList!3610 lt!1634308) key!3717) lt!1635098)))

(declare-fun bs!763645 () Bool)

(assert (= bs!763645 d!1347342))

(assert (=> bs!763645 m!5125449))

(declare-fun m!5126871 () Bool)

(assert (=> bs!763645 m!5126871))

(assert (=> bs!763645 m!5126659))

(assert (=> b!4437727 d!1347342))

(declare-fun b!4438531 () Bool)

(declare-fun e!2763743 () Option!10781)

(assert (=> b!4438531 (= e!2763743 None!10780)))

(declare-fun b!4438528 () Bool)

(declare-fun e!2763742 () Option!10781)

(assert (=> b!4438528 (= e!2763742 (Some!10780 (_2!28106 (h!55447 (toList!3609 lt!1634570)))))))

(declare-fun b!4438530 () Bool)

(assert (=> b!4438530 (= e!2763743 (getValueByKey!767 (t!356800 (toList!3609 lt!1634570)) (_1!28106 lt!1634309)))))

(declare-fun b!4438529 () Bool)

(assert (=> b!4438529 (= e!2763742 e!2763743)))

(declare-fun c!755516 () Bool)

(assert (=> b!4438529 (= c!755516 (and ((_ is Cons!49734) (toList!3609 lt!1634570)) (not (= (_1!28106 (h!55447 (toList!3609 lt!1634570))) (_1!28106 lt!1634309)))))))

(declare-fun d!1347344 () Bool)

(declare-fun c!755515 () Bool)

(assert (=> d!1347344 (= c!755515 (and ((_ is Cons!49734) (toList!3609 lt!1634570)) (= (_1!28106 (h!55447 (toList!3609 lt!1634570))) (_1!28106 lt!1634309))))))

(assert (=> d!1347344 (= (getValueByKey!767 (toList!3609 lt!1634570) (_1!28106 lt!1634309)) e!2763742)))

(assert (= (and d!1347344 c!755515) b!4438528))

(assert (= (and d!1347344 (not c!755515)) b!4438529))

(assert (= (and b!4438529 c!755516) b!4438530))

(assert (= (and b!4438529 (not c!755516)) b!4438531))

(declare-fun m!5126873 () Bool)

(assert (=> b!4438530 m!5126873))

(assert (=> b!4437746 d!1347344))

(declare-fun d!1347346 () Bool)

(declare-fun c!755517 () Bool)

(assert (=> d!1347346 (= c!755517 ((_ is Nil!49733) (toList!3610 lt!1634308)))))

(declare-fun e!2763744 () (InoxSet tuple2!49622))

(assert (=> d!1347346 (= (content!8004 (toList!3610 lt!1634308)) e!2763744)))

(declare-fun b!4438532 () Bool)

(assert (=> b!4438532 (= e!2763744 ((as const (Array tuple2!49622 Bool)) false))))

(declare-fun b!4438533 () Bool)

(assert (=> b!4438533 (= e!2763744 ((_ map or) (store ((as const (Array tuple2!49622 Bool)) false) (h!55446 (toList!3610 lt!1634308)) true) (content!8004 (t!356799 (toList!3610 lt!1634308)))))))

(assert (= (and d!1347346 c!755517) b!4438532))

(assert (= (and d!1347346 (not c!755517)) b!4438533))

(declare-fun m!5126875 () Bool)

(assert (=> b!4438533 m!5126875))

(declare-fun m!5126877 () Bool)

(assert (=> b!4438533 m!5126877))

(assert (=> d!1346870 d!1347346))

(declare-fun d!1347348 () Bool)

(declare-fun c!755518 () Bool)

(assert (=> d!1347348 (= c!755518 ((_ is Nil!49733) (toList!3610 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303))))))

(declare-fun e!2763745 () (InoxSet tuple2!49622))

(assert (=> d!1347348 (= (content!8004 (toList!3610 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303))) e!2763745)))

(declare-fun b!4438534 () Bool)

(assert (=> b!4438534 (= e!2763745 ((as const (Array tuple2!49622 Bool)) false))))

(declare-fun b!4438535 () Bool)

(assert (=> b!4438535 (= e!2763745 ((_ map or) (store ((as const (Array tuple2!49622 Bool)) false) (h!55446 (toList!3610 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303))) true) (content!8004 (t!356799 (toList!3610 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 lm!1616))) lt!1634303))))))))

(assert (= (and d!1347348 c!755518) b!4438534))

(assert (= (and d!1347348 (not c!755518)) b!4438535))

(declare-fun m!5126879 () Bool)

(assert (=> b!4438535 m!5126879))

(declare-fun m!5126881 () Bool)

(assert (=> b!4438535 m!5126881))

(assert (=> d!1346870 d!1347348))

(declare-fun d!1347350 () Bool)

(assert (=> d!1347350 (= (get!16218 (getValueByKey!767 (toList!3609 lm!1616) hash!366)) (v!44002 (getValueByKey!767 (toList!3609 lm!1616) hash!366)))))

(assert (=> d!1346946 d!1347350))

(assert (=> d!1346946 d!1347094))

(declare-fun d!1347352 () Bool)

(declare-fun res!1837216 () Bool)

(declare-fun e!2763746 () Bool)

(assert (=> d!1347352 (=> res!1837216 e!2763746)))

(assert (=> d!1347352 (= res!1837216 ((_ is Nil!49733) (toList!3610 lt!1634303)))))

(assert (=> d!1347352 (= (forall!9668 (toList!3610 lt!1634303) lambda!156646) e!2763746)))

(declare-fun b!4438536 () Bool)

(declare-fun e!2763747 () Bool)

(assert (=> b!4438536 (= e!2763746 e!2763747)))

(declare-fun res!1837217 () Bool)

(assert (=> b!4438536 (=> (not res!1837217) (not e!2763747))))

(assert (=> b!4438536 (= res!1837217 (dynLambda!20898 lambda!156646 (h!55446 (toList!3610 lt!1634303))))))

(declare-fun b!4438537 () Bool)

(assert (=> b!4438537 (= e!2763747 (forall!9668 (t!356799 (toList!3610 lt!1634303)) lambda!156646))))

(assert (= (and d!1347352 (not res!1837216)) b!4438536))

(assert (= (and b!4438536 res!1837217) b!4438537))

(declare-fun b_lambda!144797 () Bool)

(assert (=> (not b_lambda!144797) (not b!4438536)))

(declare-fun m!5126883 () Bool)

(assert (=> b!4438536 m!5126883))

(declare-fun m!5126885 () Bool)

(assert (=> b!4438537 m!5126885))

(assert (=> b!4437698 d!1347352))

(declare-fun bs!763646 () Bool)

(declare-fun b!4438540 () Bool)

(assert (= bs!763646 (and b!4438540 b!4437857)))

(declare-fun lambda!156759 () Int)

(assert (=> bs!763646 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634698) (= lambda!156759 lambda!156684))))

(declare-fun bs!763647 () Bool)

(assert (= bs!763647 (and b!4438540 b!4437859)))

(assert (=> bs!763647 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156759 lambda!156678))))

(declare-fun bs!763648 () Bool)

(assert (= bs!763648 (and b!4438540 d!1347008)))

(assert (=> bs!763648 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634665) (= lambda!156759 lambda!156676))))

(declare-fun bs!763649 () Bool)

(assert (= bs!763649 (and b!4438540 b!4437834)))

(assert (=> bs!763649 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634668) (= lambda!156759 lambda!156675))))

(assert (=> bs!763649 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156759 lambda!156674))))

(declare-fun bs!763650 () Bool)

(assert (= bs!763650 (and b!4438540 d!1346872)))

(assert (=> bs!763650 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634520) (= lambda!156759 lambda!156646))))

(declare-fun bs!763651 () Bool)

(assert (= bs!763651 (and b!4438540 d!1347316)))

(assert (=> bs!763651 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634523) (= lambda!156759 lambda!156757))))

(declare-fun bs!763652 () Bool)

(assert (= bs!763652 (and b!4438540 d!1347024)))

(assert (=> bs!763652 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634695) (= lambda!156759 lambda!156685))))

(declare-fun bs!763653 () Bool)

(assert (= bs!763653 (and b!4438540 b!4438450)))

(assert (=> bs!763653 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156759 lambda!156750))))

(declare-fun bs!763654 () Bool)

(assert (= bs!763654 (and b!4438540 b!4438294)))

(assert (=> bs!763654 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634914) (= lambda!156759 lambda!156719))))

(declare-fun bs!763655 () Bool)

(assert (= bs!763655 (and b!4438540 b!4437694)))

(assert (=> bs!763655 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634523) (= lambda!156759 lambda!156645))))

(declare-fun bs!763656 () Bool)

(assert (= bs!763656 (and b!4438540 d!1347312)))

(assert (=> bs!763656 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635034) (= lambda!156759 lambda!156752))))

(declare-fun bs!763657 () Bool)

(assert (= bs!763657 (and b!4438540 b!4438296)))

(assert (=> bs!763657 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156759 lambda!156715))))

(declare-fun bs!763658 () Bool)

(assert (= bs!763658 (and b!4438540 b!4438452)))

(assert (=> bs!763658 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156759 lambda!156749))))

(declare-fun bs!763659 () Bool)

(assert (= bs!763659 (and b!4438540 b!4437696)))

(assert (=> bs!763659 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156759 lambda!156643))))

(assert (=> bs!763646 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156759 lambda!156681))))

(declare-fun bs!763660 () Bool)

(assert (= bs!763660 (and b!4438540 d!1346868)))

(assert (=> bs!763660 (not (= lambda!156759 lambda!156561))))

(declare-fun bs!763661 () Bool)

(assert (= bs!763661 (and b!4438540 b!4437836)))

(assert (=> bs!763661 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156759 lambda!156673))))

(assert (=> bs!763653 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635037) (= lambda!156759 lambda!156751))))

(assert (=> bs!763655 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156759 lambda!156644))))

(declare-fun bs!763662 () Bool)

(assert (= bs!763662 (and b!4438540 d!1347146)))

(assert (=> bs!763662 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156759 lambda!156703))))

(declare-fun bs!763663 () Bool)

(assert (= bs!763663 (and b!4438540 d!1347246)))

(assert (=> bs!763663 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634911) (= lambda!156759 lambda!156721))))

(assert (=> bs!763654 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156759 lambda!156717))))

(assert (=> b!4438540 true))

(declare-fun bs!763664 () Bool)

(declare-fun b!4438538 () Bool)

(assert (= bs!763664 (and b!4438538 b!4437857)))

(declare-fun lambda!156760 () Int)

(assert (=> bs!763664 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634698) (= lambda!156760 lambda!156684))))

(declare-fun bs!763665 () Bool)

(assert (= bs!763665 (and b!4438538 b!4437859)))

(assert (=> bs!763665 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156760 lambda!156678))))

(declare-fun bs!763666 () Bool)

(assert (= bs!763666 (and b!4438538 d!1347008)))

(assert (=> bs!763666 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634665) (= lambda!156760 lambda!156676))))

(declare-fun bs!763667 () Bool)

(assert (= bs!763667 (and b!4438538 b!4437834)))

(assert (=> bs!763667 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634668) (= lambda!156760 lambda!156675))))

(assert (=> bs!763667 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156760 lambda!156674))))

(declare-fun bs!763668 () Bool)

(assert (= bs!763668 (and b!4438538 d!1346872)))

(assert (=> bs!763668 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634520) (= lambda!156760 lambda!156646))))

(declare-fun bs!763669 () Bool)

(assert (= bs!763669 (and b!4438538 d!1347316)))

(assert (=> bs!763669 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634523) (= lambda!156760 lambda!156757))))

(declare-fun bs!763670 () Bool)

(assert (= bs!763670 (and b!4438538 d!1347024)))

(assert (=> bs!763670 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634695) (= lambda!156760 lambda!156685))))

(declare-fun bs!763671 () Bool)

(assert (= bs!763671 (and b!4438538 b!4438450)))

(assert (=> bs!763671 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156760 lambda!156750))))

(declare-fun bs!763672 () Bool)

(assert (= bs!763672 (and b!4438538 b!4438294)))

(assert (=> bs!763672 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634914) (= lambda!156760 lambda!156719))))

(declare-fun bs!763673 () Bool)

(assert (= bs!763673 (and b!4438538 b!4437694)))

(assert (=> bs!763673 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634523) (= lambda!156760 lambda!156645))))

(declare-fun bs!763674 () Bool)

(assert (= bs!763674 (and b!4438538 b!4438540)))

(assert (=> bs!763674 (= lambda!156760 lambda!156759)))

(declare-fun bs!763675 () Bool)

(assert (= bs!763675 (and b!4438538 d!1347312)))

(assert (=> bs!763675 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635034) (= lambda!156760 lambda!156752))))

(declare-fun bs!763676 () Bool)

(assert (= bs!763676 (and b!4438538 b!4438296)))

(assert (=> bs!763676 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156760 lambda!156715))))

(declare-fun bs!763677 () Bool)

(assert (= bs!763677 (and b!4438538 b!4438452)))

(assert (=> bs!763677 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156760 lambda!156749))))

(declare-fun bs!763678 () Bool)

(assert (= bs!763678 (and b!4438538 b!4437696)))

(assert (=> bs!763678 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156760 lambda!156643))))

(assert (=> bs!763664 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156760 lambda!156681))))

(declare-fun bs!763679 () Bool)

(assert (= bs!763679 (and b!4438538 d!1346868)))

(assert (=> bs!763679 (not (= lambda!156760 lambda!156561))))

(declare-fun bs!763680 () Bool)

(assert (= bs!763680 (and b!4438538 b!4437836)))

(assert (=> bs!763680 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156760 lambda!156673))))

(assert (=> bs!763671 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635037) (= lambda!156760 lambda!156751))))

(assert (=> bs!763673 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156760 lambda!156644))))

(declare-fun bs!763681 () Bool)

(assert (= bs!763681 (and b!4438538 d!1347146)))

(assert (=> bs!763681 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634303) (= lambda!156760 lambda!156703))))

(declare-fun bs!763682 () Bool)

(assert (= bs!763682 (and b!4438538 d!1347246)))

(assert (=> bs!763682 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1634911) (= lambda!156760 lambda!156721))))

(assert (=> bs!763672 (= (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156760 lambda!156717))))

(assert (=> b!4438538 true))

(declare-fun lambda!156761 () Int)

(declare-fun lt!1635112 () ListMap!2853)

(assert (=> bs!763664 (= (= lt!1635112 lt!1634698) (= lambda!156761 lambda!156684))))

(assert (=> bs!763665 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156761 lambda!156678))))

(assert (=> bs!763666 (= (= lt!1635112 lt!1634665) (= lambda!156761 lambda!156676))))

(assert (=> bs!763667 (= (= lt!1635112 lt!1634668) (= lambda!156761 lambda!156675))))

(assert (=> bs!763667 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156761 lambda!156674))))

(assert (=> bs!763668 (= (= lt!1635112 lt!1634520) (= lambda!156761 lambda!156646))))

(assert (=> bs!763669 (= (= lt!1635112 lt!1634523) (= lambda!156761 lambda!156757))))

(assert (=> bs!763670 (= (= lt!1635112 lt!1634695) (= lambda!156761 lambda!156685))))

(assert (=> bs!763671 (= (= lt!1635112 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156761 lambda!156750))))

(assert (=> bs!763673 (= (= lt!1635112 lt!1634523) (= lambda!156761 lambda!156645))))

(assert (=> bs!763674 (= (= lt!1635112 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156761 lambda!156759))))

(assert (=> bs!763675 (= (= lt!1635112 lt!1635034) (= lambda!156761 lambda!156752))))

(assert (=> bs!763676 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156761 lambda!156715))))

(assert (=> bs!763677 (= (= lt!1635112 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156761 lambda!156749))))

(assert (=> bs!763678 (= (= lt!1635112 lt!1634303) (= lambda!156761 lambda!156643))))

(assert (=> bs!763664 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156761 lambda!156681))))

(assert (=> bs!763679 (not (= lambda!156761 lambda!156561))))

(assert (=> bs!763680 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156761 lambda!156673))))

(assert (=> bs!763671 (= (= lt!1635112 lt!1635037) (= lambda!156761 lambda!156751))))

(assert (=> bs!763672 (= (= lt!1635112 lt!1634914) (= lambda!156761 lambda!156719))))

(assert (=> b!4438538 (= (= lt!1635112 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156761 lambda!156760))))

(assert (=> bs!763673 (= (= lt!1635112 lt!1634303) (= lambda!156761 lambda!156644))))

(assert (=> bs!763681 (= (= lt!1635112 lt!1634303) (= lambda!156761 lambda!156703))))

(assert (=> bs!763682 (= (= lt!1635112 lt!1634911) (= lambda!156761 lambda!156721))))

(assert (=> bs!763672 (= (= lt!1635112 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156761 lambda!156717))))

(assert (=> b!4438538 true))

(declare-fun bs!763683 () Bool)

(declare-fun d!1347354 () Bool)

(assert (= bs!763683 (and d!1347354 b!4437857)))

(declare-fun lt!1635109 () ListMap!2853)

(declare-fun lambda!156762 () Int)

(assert (=> bs!763683 (= (= lt!1635109 lt!1634698) (= lambda!156762 lambda!156684))))

(declare-fun bs!763684 () Bool)

(assert (= bs!763684 (and d!1347354 b!4437859)))

(assert (=> bs!763684 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156762 lambda!156678))))

(declare-fun bs!763685 () Bool)

(assert (= bs!763685 (and d!1347354 d!1347008)))

(assert (=> bs!763685 (= (= lt!1635109 lt!1634665) (= lambda!156762 lambda!156676))))

(declare-fun bs!763686 () Bool)

(assert (= bs!763686 (and d!1347354 b!4437834)))

(assert (=> bs!763686 (= (= lt!1635109 lt!1634668) (= lambda!156762 lambda!156675))))

(assert (=> bs!763686 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156762 lambda!156674))))

(declare-fun bs!763687 () Bool)

(assert (= bs!763687 (and d!1347354 d!1346872)))

(assert (=> bs!763687 (= (= lt!1635109 lt!1634520) (= lambda!156762 lambda!156646))))

(declare-fun bs!763688 () Bool)

(assert (= bs!763688 (and d!1347354 d!1347316)))

(assert (=> bs!763688 (= (= lt!1635109 lt!1634523) (= lambda!156762 lambda!156757))))

(declare-fun bs!763690 () Bool)

(assert (= bs!763690 (and d!1347354 d!1347024)))

(assert (=> bs!763690 (= (= lt!1635109 lt!1634695) (= lambda!156762 lambda!156685))))

(declare-fun bs!763691 () Bool)

(assert (= bs!763691 (and d!1347354 b!4438450)))

(assert (=> bs!763691 (= (= lt!1635109 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156762 lambda!156750))))

(declare-fun bs!763692 () Bool)

(assert (= bs!763692 (and d!1347354 b!4437694)))

(assert (=> bs!763692 (= (= lt!1635109 lt!1634523) (= lambda!156762 lambda!156645))))

(declare-fun bs!763693 () Bool)

(assert (= bs!763693 (and d!1347354 d!1347312)))

(assert (=> bs!763693 (= (= lt!1635109 lt!1635034) (= lambda!156762 lambda!156752))))

(declare-fun bs!763694 () Bool)

(assert (= bs!763694 (and d!1347354 b!4438296)))

(assert (=> bs!763694 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156762 lambda!156715))))

(declare-fun bs!763695 () Bool)

(assert (= bs!763695 (and d!1347354 b!4438452)))

(assert (=> bs!763695 (= (= lt!1635109 (+!1188 lt!1634303 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (= lambda!156762 lambda!156749))))

(declare-fun bs!763696 () Bool)

(assert (= bs!763696 (and d!1347354 b!4437696)))

(assert (=> bs!763696 (= (= lt!1635109 lt!1634303) (= lambda!156762 lambda!156643))))

(assert (=> bs!763683 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 lt!1634306)))) (= lambda!156762 lambda!156681))))

(declare-fun bs!763697 () Bool)

(assert (= bs!763697 (and d!1347354 d!1346868)))

(assert (=> bs!763697 (not (= lambda!156762 lambda!156561))))

(declare-fun bs!763698 () Bool)

(assert (= bs!763698 (and d!1347354 b!4437836)))

(assert (=> bs!763698 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 lm!1616)))) (= lambda!156762 lambda!156673))))

(assert (=> bs!763691 (= (= lt!1635109 lt!1635037) (= lambda!156762 lambda!156751))))

(declare-fun bs!763699 () Bool)

(assert (= bs!763699 (and d!1347354 b!4438294)))

(assert (=> bs!763699 (= (= lt!1635109 lt!1634914) (= lambda!156762 lambda!156719))))

(declare-fun bs!763700 () Bool)

(assert (= bs!763700 (and d!1347354 b!4438538)))

(assert (=> bs!763700 (= (= lt!1635109 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156762 lambda!156760))))

(declare-fun bs!763701 () Bool)

(assert (= bs!763701 (and d!1347354 b!4438540)))

(assert (=> bs!763701 (= (= lt!1635109 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156762 lambda!156759))))

(assert (=> bs!763700 (= (= lt!1635109 lt!1635112) (= lambda!156762 lambda!156761))))

(assert (=> bs!763692 (= (= lt!1635109 lt!1634303) (= lambda!156762 lambda!156644))))

(declare-fun bs!763702 () Bool)

(assert (= bs!763702 (and d!1347354 d!1347146)))

(assert (=> bs!763702 (= (= lt!1635109 lt!1634303) (= lambda!156762 lambda!156703))))

(declare-fun bs!763703 () Bool)

(assert (= bs!763703 (and d!1347354 d!1347246)))

(assert (=> bs!763703 (= (= lt!1635109 lt!1634911) (= lambda!156762 lambda!156721))))

(assert (=> bs!763699 (= (= lt!1635109 (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 lt!1634309))))) (= lambda!156762 lambda!156717))))

(assert (=> d!1347354 true))

(declare-fun e!2763749 () ListMap!2853)

(assert (=> b!4438538 (= e!2763749 lt!1635112)))

(declare-fun lt!1635113 () ListMap!2853)

(assert (=> b!4438538 (= lt!1635113 (+!1188 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))))

(assert (=> b!4438538 (= lt!1635112 (addToMapMapFromBucket!432 (t!356799 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))) (+!1188 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun lt!1635104 () Unit!83561)

(declare-fun call!308907 () Unit!83561)

(assert (=> b!4438538 (= lt!1635104 call!308907)))

(declare-fun call!308906 () Bool)

(assert (=> b!4438538 call!308906))

(declare-fun lt!1635114 () Unit!83561)

(assert (=> b!4438538 (= lt!1635114 lt!1635104)))

(declare-fun call!308908 () Bool)

(assert (=> b!4438538 call!308908))

(declare-fun lt!1635100 () Unit!83561)

(declare-fun Unit!83725 () Unit!83561)

(assert (=> b!4438538 (= lt!1635100 Unit!83725)))

(assert (=> b!4438538 (forall!9668 (t!356799 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))) lambda!156761)))

(declare-fun lt!1635105 () Unit!83561)

(declare-fun Unit!83726 () Unit!83561)

(assert (=> b!4438538 (= lt!1635105 Unit!83726)))

(declare-fun lt!1635118 () Unit!83561)

(declare-fun Unit!83727 () Unit!83561)

(assert (=> b!4438538 (= lt!1635118 Unit!83727)))

(declare-fun lt!1635101 () Unit!83561)

(assert (=> b!4438538 (= lt!1635101 (forallContained!2135 (toList!3610 lt!1635113) lambda!156761 (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))))

(assert (=> b!4438538 (contains!12288 lt!1635113 (_1!28105 (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635103 () Unit!83561)

(declare-fun Unit!83728 () Unit!83561)

(assert (=> b!4438538 (= lt!1635103 Unit!83728)))

(assert (=> b!4438538 (contains!12288 lt!1635112 (_1!28105 (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635102 () Unit!83561)

(declare-fun Unit!83729 () Unit!83561)

(assert (=> b!4438538 (= lt!1635102 Unit!83729)))

(assert (=> b!4438538 (forall!9668 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))) lambda!156761)))

(declare-fun lt!1635116 () Unit!83561)

(declare-fun Unit!83730 () Unit!83561)

(assert (=> b!4438538 (= lt!1635116 Unit!83730)))

(assert (=> b!4438538 (forall!9668 (toList!3610 lt!1635113) lambda!156761)))

(declare-fun lt!1635119 () Unit!83561)

(declare-fun Unit!83731 () Unit!83561)

(assert (=> b!4438538 (= lt!1635119 Unit!83731)))

(declare-fun lt!1635117 () Unit!83561)

(declare-fun Unit!83732 () Unit!83561)

(assert (=> b!4438538 (= lt!1635117 Unit!83732)))

(declare-fun lt!1635110 () Unit!83561)

(assert (=> b!4438538 (= lt!1635110 (addForallContainsKeyThenBeforeAdding!201 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635112 (_1!28105 (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))) (_2!28105 (h!55446 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))))))))

(assert (=> b!4438538 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) lambda!156761)))

(declare-fun lt!1635107 () Unit!83561)

(assert (=> b!4438538 (= lt!1635107 lt!1635110)))

(assert (=> b!4438538 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) lambda!156761)))

(declare-fun lt!1635111 () Unit!83561)

(declare-fun Unit!83734 () Unit!83561)

(assert (=> b!4438538 (= lt!1635111 Unit!83734)))

(declare-fun res!1837219 () Bool)

(assert (=> b!4438538 (= res!1837219 (forall!9668 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))) lambda!156761))))

(declare-fun e!2763748 () Bool)

(assert (=> b!4438538 (=> (not res!1837219) (not e!2763748))))

(assert (=> b!4438538 e!2763748))

(declare-fun lt!1635108 () Unit!83561)

(declare-fun Unit!83735 () Unit!83561)

(assert (=> b!4438538 (= lt!1635108 Unit!83735)))

(declare-fun b!4438539 () Bool)

(declare-fun e!2763750 () Bool)

(assert (=> b!4438539 (= e!2763750 (invariantList!833 (toList!3610 lt!1635109)))))

(declare-fun bm!308901 () Bool)

(declare-fun c!755519 () Bool)

(assert (=> bm!308901 (= call!308908 (forall!9668 (ite c!755519 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (toList!3610 lt!1635113)) (ite c!755519 lambda!156759 lambda!156761)))))

(declare-fun bm!308902 () Bool)

(assert (=> bm!308902 (= call!308906 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (ite c!755519 lambda!156759 lambda!156760)))))

(assert (=> b!4438540 (= e!2763749 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))))))

(declare-fun lt!1635099 () Unit!83561)

(assert (=> b!4438540 (= lt!1635099 call!308907)))

(assert (=> b!4438540 call!308906))

(declare-fun lt!1635115 () Unit!83561)

(assert (=> b!4438540 (= lt!1635115 lt!1635099)))

(assert (=> b!4438540 call!308908))

(declare-fun lt!1635106 () Unit!83561)

(declare-fun Unit!83736 () Unit!83561)

(assert (=> b!4438540 (= lt!1635106 Unit!83736)))

(assert (=> d!1347354 e!2763750))

(declare-fun res!1837220 () Bool)

(assert (=> d!1347354 (=> (not res!1837220) (not e!2763750))))

(assert (=> d!1347354 (= res!1837220 (forall!9668 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))) lambda!156762))))

(assert (=> d!1347354 (= lt!1635109 e!2763749)))

(assert (=> d!1347354 (= c!755519 ((_ is Nil!49733) (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))))))

(assert (=> d!1347354 (noDuplicateKeys!811 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347354 (= (addToMapMapFromBucket!432 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616)))) (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) lt!1635109)))

(declare-fun b!4438541 () Bool)

(assert (=> b!4438541 (= e!2763748 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) lambda!156761))))

(declare-fun b!4438542 () Bool)

(declare-fun res!1837218 () Bool)

(assert (=> b!4438542 (=> (not res!1837218) (not e!2763750))))

(assert (=> b!4438542 (= res!1837218 (forall!9668 (toList!3610 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))) lambda!156762))))

(declare-fun bm!308903 () Bool)

(assert (=> bm!308903 (= call!308907 (lemmaContainsAllItsOwnKeys!201 (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616))))))))

(assert (= (and d!1347354 c!755519) b!4438540))

(assert (= (and d!1347354 (not c!755519)) b!4438538))

(assert (= (and b!4438538 res!1837219) b!4438541))

(assert (= (or b!4438540 b!4438538) bm!308903))

(assert (= (or b!4438540 b!4438538) bm!308902))

(assert (= (or b!4438540 b!4438538) bm!308901))

(assert (= (and d!1347354 res!1837220) b!4438542))

(assert (= (and b!4438542 res!1837218) b!4438539))

(declare-fun m!5126903 () Bool)

(assert (=> bm!308901 m!5126903))

(declare-fun m!5126905 () Bool)

(assert (=> b!4438539 m!5126905))

(assert (=> bm!308903 m!5125573))

(declare-fun m!5126907 () Bool)

(assert (=> bm!308903 m!5126907))

(declare-fun m!5126909 () Bool)

(assert (=> b!4438538 m!5126909))

(assert (=> b!4438538 m!5125573))

(declare-fun m!5126911 () Bool)

(assert (=> b!4438538 m!5126911))

(declare-fun m!5126913 () Bool)

(assert (=> b!4438538 m!5126913))

(declare-fun m!5126915 () Bool)

(assert (=> b!4438538 m!5126915))

(assert (=> b!4438538 m!5126913))

(declare-fun m!5126917 () Bool)

(assert (=> b!4438538 m!5126917))

(declare-fun m!5126919 () Bool)

(assert (=> b!4438538 m!5126919))

(declare-fun m!5126921 () Bool)

(assert (=> b!4438538 m!5126921))

(assert (=> b!4438538 m!5125573))

(assert (=> b!4438538 m!5126919))

(declare-fun m!5126923 () Bool)

(assert (=> b!4438538 m!5126923))

(declare-fun m!5126925 () Bool)

(assert (=> b!4438538 m!5126925))

(assert (=> b!4438538 m!5126917))

(declare-fun m!5126927 () Bool)

(assert (=> b!4438538 m!5126927))

(declare-fun m!5126929 () Bool)

(assert (=> b!4438542 m!5126929))

(declare-fun m!5126931 () Bool)

(assert (=> d!1347354 m!5126931))

(declare-fun m!5126933 () Bool)

(assert (=> d!1347354 m!5126933))

(assert (=> b!4438541 m!5126913))

(declare-fun m!5126935 () Bool)

(assert (=> bm!308902 m!5126935))

(assert (=> b!4437764 d!1347354))

(declare-fun bs!763725 () Bool)

(declare-fun d!1347362 () Bool)

(assert (= bs!763725 (and d!1347362 d!1346948)))

(declare-fun lambda!156767 () Int)

(assert (=> bs!763725 (= lambda!156767 lambda!156652)))

(declare-fun bs!763726 () Bool)

(assert (= bs!763726 (and d!1347362 d!1346956)))

(assert (=> bs!763726 (= lambda!156767 lambda!156655)))

(declare-fun bs!763727 () Bool)

(assert (= bs!763727 (and d!1347362 d!1346940)))

(assert (=> bs!763727 (= lambda!156767 lambda!156649)))

(declare-fun bs!763728 () Bool)

(assert (= bs!763728 (and d!1347362 start!433908)))

(assert (=> bs!763728 (= lambda!156767 lambda!156552)))

(declare-fun bs!763729 () Bool)

(assert (= bs!763729 (and d!1347362 d!1347028)))

(assert (=> bs!763729 (= lambda!156767 lambda!156688)))

(declare-fun bs!763730 () Bool)

(assert (= bs!763730 (and d!1347362 d!1346968)))

(assert (=> bs!763730 (= lambda!156767 lambda!156658)))

(declare-fun bs!763731 () Bool)

(assert (= bs!763731 (and d!1347362 d!1346862)))

(assert (=> bs!763731 (not (= lambda!156767 lambda!156558))))

(declare-fun bs!763732 () Bool)

(assert (= bs!763732 (and d!1347362 d!1346964)))

(assert (=> bs!763732 (= lambda!156767 lambda!156657)))

(declare-fun bs!763733 () Bool)

(assert (= bs!763733 (and d!1347362 d!1347250)))

(assert (=> bs!763733 (= lambda!156767 lambda!156723)))

(declare-fun bs!763734 () Bool)

(assert (= bs!763734 (and d!1347362 d!1347016)))

(assert (=> bs!763734 (= lambda!156767 lambda!156677)))

(declare-fun bs!763735 () Bool)

(assert (= bs!763735 (and d!1347362 d!1346860)))

(assert (=> bs!763735 (= lambda!156767 lambda!156555)))

(declare-fun bs!763736 () Bool)

(assert (= bs!763736 (and d!1347362 d!1346962)))

(assert (=> bs!763736 (= lambda!156767 lambda!156656)))

(declare-fun lt!1635131 () ListMap!2853)

(assert (=> d!1347362 (invariantList!833 (toList!3610 lt!1635131))))

(declare-fun e!2763758 () ListMap!2853)

(assert (=> d!1347362 (= lt!1635131 e!2763758)))

(declare-fun c!755523 () Bool)

(assert (=> d!1347362 (= c!755523 ((_ is Cons!49734) (t!356800 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347362 (forall!9666 (t!356800 (tail!7345 (toList!3609 lm!1616))) lambda!156767)))

(assert (=> d!1347362 (= (extractMap!872 (t!356800 (tail!7345 (toList!3609 lm!1616)))) lt!1635131)))

(declare-fun b!4438556 () Bool)

(assert (=> b!4438556 (= e!2763758 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (t!356800 (tail!7345 (toList!3609 lm!1616))))) (extractMap!872 (t!356800 (t!356800 (tail!7345 (toList!3609 lm!1616)))))))))

(declare-fun b!4438557 () Bool)

(assert (=> b!4438557 (= e!2763758 (ListMap!2854 Nil!49733))))

(assert (= (and d!1347362 c!755523) b!4438556))

(assert (= (and d!1347362 (not c!755523)) b!4438557))

(declare-fun m!5126961 () Bool)

(assert (=> d!1347362 m!5126961))

(declare-fun m!5126963 () Bool)

(assert (=> d!1347362 m!5126963))

(declare-fun m!5126965 () Bool)

(assert (=> b!4438556 m!5126965))

(assert (=> b!4438556 m!5126965))

(declare-fun m!5126967 () Bool)

(assert (=> b!4438556 m!5126967))

(assert (=> b!4437764 d!1347362))

(declare-fun bs!763738 () Bool)

(declare-fun b!4438569 () Bool)

(assert (= bs!763738 (and b!4438569 b!4438415)))

(declare-fun lambda!156768 () Int)

(assert (=> bs!763738 (= (= (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (toList!3610 lt!1634308)) (= lambda!156768 lambda!156747))))

(declare-fun bs!763739 () Bool)

(assert (= bs!763739 (and b!4438569 b!4438258)))

(assert (=> bs!763739 (= (= (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156768 lambda!156713))))

(declare-fun bs!763740 () Bool)

(assert (= bs!763740 (and b!4438569 b!4438421)))

(assert (=> bs!763740 (= (= (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 lt!1634308))) (= lambda!156768 lambda!156745))))

(declare-fun bs!763741 () Bool)

(assert (= bs!763741 (and b!4438569 b!4437824)))

(assert (=> bs!763741 (= (= (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (toList!3610 lt!1634308)) (= lambda!156768 lambda!156668))))

(declare-fun bs!763742 () Bool)

(assert (= bs!763742 (and b!4438569 b!4438414)))

(assert (=> bs!763742 (= (= (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308)))) (= lambda!156768 lambda!156746))))

(assert (=> b!4438569 true))

(declare-fun bs!763743 () Bool)

(declare-fun b!4438562 () Bool)

(assert (= bs!763743 (and b!4438562 b!4438415)))

(declare-fun lambda!156769 () Int)

(assert (=> bs!763743 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (toList!3610 lt!1634308)) (= lambda!156769 lambda!156747))))

(declare-fun bs!763744 () Bool)

(assert (= bs!763744 (and b!4438562 b!4438258)))

(assert (=> bs!763744 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (= lambda!156769 lambda!156713))))

(declare-fun bs!763745 () Bool)

(assert (= bs!763745 (and b!4438562 b!4438421)))

(assert (=> bs!763745 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (t!356799 (toList!3610 lt!1634308))) (= lambda!156769 lambda!156745))))

(declare-fun bs!763746 () Bool)

(assert (= bs!763746 (and b!4438562 b!4437824)))

(assert (=> bs!763746 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (toList!3610 lt!1634308)) (= lambda!156769 lambda!156668))))

(declare-fun bs!763747 () Bool)

(assert (= bs!763747 (and b!4438562 b!4438569)))

(assert (=> bs!763747 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (= lambda!156769 lambda!156768))))

(declare-fun bs!763748 () Bool)

(assert (= bs!763748 (and b!4438562 b!4438414)))

(assert (=> bs!763748 (= (= (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308)))) (= lambda!156769 lambda!156746))))

(assert (=> b!4438562 true))

(declare-fun bs!763749 () Bool)

(declare-fun b!4438563 () Bool)

(assert (= bs!763749 (and b!4438563 b!4438415)))

(declare-fun lambda!156770 () Int)

(assert (=> bs!763749 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (toList!3610 lt!1634308)) (= lambda!156770 lambda!156747))))

(declare-fun bs!763750 () Bool)

(assert (= bs!763750 (and b!4438563 b!4438258)))

(assert (=> bs!763750 (= lambda!156770 lambda!156713)))

(declare-fun bs!763751 () Bool)

(assert (= bs!763751 (and b!4438563 b!4438562)))

(assert (=> bs!763751 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (Cons!49733 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))) (= lambda!156770 lambda!156769))))

(declare-fun bs!763752 () Bool)

(assert (= bs!763752 (and b!4438563 b!4438421)))

(assert (=> bs!763752 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (t!356799 (toList!3610 lt!1634308))) (= lambda!156770 lambda!156745))))

(declare-fun bs!763753 () Bool)

(assert (= bs!763753 (and b!4438563 b!4437824)))

(assert (=> bs!763753 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (toList!3610 lt!1634308)) (= lambda!156770 lambda!156668))))

(declare-fun bs!763754 () Bool)

(assert (= bs!763754 (and b!4438563 b!4438569)))

(assert (=> bs!763754 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (= lambda!156770 lambda!156768))))

(declare-fun bs!763755 () Bool)

(assert (= bs!763755 (and b!4438563 b!4438414)))

(assert (=> bs!763755 (= (= (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) (Cons!49733 (h!55446 (toList!3610 lt!1634308)) (t!356799 (toList!3610 lt!1634308)))) (= lambda!156770 lambda!156746))))

(assert (=> b!4438563 true))

(declare-fun bs!763757 () Bool)

(declare-fun b!4438565 () Bool)

(assert (= bs!763757 (and b!4438565 b!4437825)))

(declare-fun lambda!156771 () Int)

(assert (=> bs!763757 (= lambda!156771 lambda!156669)))

(declare-fun bs!763758 () Bool)

(assert (= bs!763758 (and b!4438565 b!4438259)))

(assert (=> bs!763758 (= lambda!156771 lambda!156714)))

(declare-fun bs!763759 () Bool)

(assert (= bs!763759 (and b!4438565 b!4438417)))

(assert (=> bs!763759 (= lambda!156771 lambda!156748)))

(declare-fun e!2763764 () List!49860)

(assert (=> b!4438562 (= e!2763764 (Cons!49736 (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (getKeysList!280 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun c!755526 () Bool)

(assert (=> b!4438562 (= c!755526 (containsKey!1211 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun lt!1635137 () Unit!83561)

(declare-fun e!2763761 () Unit!83561)

(assert (=> b!4438562 (= lt!1635137 e!2763761)))

(declare-fun c!755527 () Bool)

(assert (=> b!4438562 (= c!755527 (contains!12293 (getKeysList!280 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun lt!1635138 () Unit!83561)

(declare-fun e!2763763 () Unit!83561)

(assert (=> b!4438562 (= lt!1635138 e!2763763)))

(declare-fun lt!1635132 () List!49860)

(assert (=> b!4438562 (= lt!1635132 (getKeysList!280 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))))

(declare-fun lt!1635134 () Unit!83561)

(assert (=> b!4438562 (= lt!1635134 (lemmaForallContainsAddHeadPreserves!95 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) lt!1635132 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))))

(assert (=> b!4438562 (forall!9669 lt!1635132 lambda!156769)))

(declare-fun lt!1635133 () Unit!83561)

(assert (=> b!4438562 (= lt!1635133 lt!1635134)))

(declare-fun res!1837229 () Bool)

(declare-fun e!2763762 () Bool)

(assert (=> b!4438563 (=> (not res!1837229) (not e!2763762))))

(declare-fun lt!1635136 () List!49860)

(assert (=> b!4438563 (= res!1837229 (forall!9669 lt!1635136 lambda!156770))))

(declare-fun d!1347366 () Bool)

(assert (=> d!1347366 e!2763762))

(declare-fun res!1837228 () Bool)

(assert (=> d!1347366 (=> (not res!1837228) (not e!2763762))))

(assert (=> d!1347366 (= res!1837228 (noDuplicate!673 lt!1635136))))

(assert (=> d!1347366 (= lt!1635136 e!2763764)))

(declare-fun c!755528 () Bool)

(assert (=> d!1347366 (= c!755528 ((_ is Cons!49733) (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))

(assert (=> d!1347366 (invariantList!833 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))

(assert (=> d!1347366 (= (getKeysList!280 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))) lt!1635136)))

(declare-fun b!4438564 () Bool)

(assert (=> b!4438564 false))

(declare-fun Unit!83742 () Unit!83561)

(assert (=> b!4438564 (= e!2763761 Unit!83742)))

(assert (=> b!4438565 (= e!2763762 (= (content!8005 lt!1635136) (content!8005 (map!10876 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))) lambda!156771))))))

(declare-fun b!4438566 () Bool)

(declare-fun Unit!83743 () Unit!83561)

(assert (=> b!4438566 (= e!2763761 Unit!83743)))

(declare-fun b!4438567 () Bool)

(assert (=> b!4438567 (= e!2763764 Nil!49736)))

(declare-fun b!4438568 () Bool)

(declare-fun res!1837230 () Bool)

(assert (=> b!4438568 (=> (not res!1837230) (not e!2763762))))

(assert (=> b!4438568 (= res!1837230 (= (length!202 lt!1635136) (length!203 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))))))

(assert (=> b!4438569 false))

(declare-fun lt!1635135 () Unit!83561)

(assert (=> b!4438569 (= lt!1635135 (forallContained!2136 (getKeysList!280 (t!356799 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616)))))) lambda!156768 (_1!28105 (h!55446 (toList!3610 (extractMap!872 (tail!7345 (toList!3609 lm!1616))))))))))

(declare-fun Unit!83744 () Unit!83561)

(assert (=> b!4438569 (= e!2763763 Unit!83744)))

(declare-fun b!4438570 () Bool)

(declare-fun Unit!83745 () Unit!83561)

(assert (=> b!4438570 (= e!2763763 Unit!83745)))

(assert (= (and d!1347366 c!755528) b!4438562))

(assert (= (and d!1347366 (not c!755528)) b!4438567))

(assert (= (and b!4438562 c!755526) b!4438564))

(assert (= (and b!4438562 (not c!755526)) b!4438566))

(assert (= (and b!4438562 c!755527) b!4438569))

(assert (= (and b!4438562 (not c!755527)) b!4438570))

(assert (= (and d!1347366 res!1837228) b!4438568))

(assert (= (and b!4438568 res!1837230) b!4438563))

(assert (= (and b!4438563 res!1837229) b!4438565))

(declare-fun m!5126975 () Bool)

(assert (=> b!4438563 m!5126975))

(declare-fun m!5126977 () Bool)

(assert (=> b!4438562 m!5126977))

(declare-fun m!5126979 () Bool)

(assert (=> b!4438562 m!5126979))

(declare-fun m!5126981 () Bool)

(assert (=> b!4438562 m!5126981))

(declare-fun m!5126983 () Bool)

(assert (=> b!4438562 m!5126983))

(assert (=> b!4438562 m!5126977))

(declare-fun m!5126985 () Bool)

(assert (=> b!4438562 m!5126985))

(assert (=> b!4438569 m!5126977))

(assert (=> b!4438569 m!5126977))

(declare-fun m!5126987 () Bool)

(assert (=> b!4438569 m!5126987))

(declare-fun m!5126989 () Bool)

(assert (=> b!4438568 m!5126989))

(assert (=> b!4438568 m!5126389))

(declare-fun m!5126991 () Bool)

(assert (=> d!1347366 m!5126991))

(assert (=> d!1347366 m!5125757))

(declare-fun m!5126993 () Bool)

(assert (=> b!4438565 m!5126993))

(declare-fun m!5126995 () Bool)

(assert (=> b!4438565 m!5126995))

(assert (=> b!4438565 m!5126995))

(declare-fun m!5126997 () Bool)

(assert (=> b!4438565 m!5126997))

(assert (=> b!4437768 d!1347366))

(declare-fun d!1347374 () Bool)

(declare-fun e!2763765 () Bool)

(assert (=> d!1347374 e!2763765))

(declare-fun res!1837231 () Bool)

(assert (=> d!1347374 (=> (not res!1837231) (not e!2763765))))

(declare-fun lt!1635143 () ListMap!2853)

(assert (=> d!1347374 (= res!1837231 (contains!12288 lt!1635143 (_1!28105 (tuple2!49623 key!3717 newValue!93))))))

(declare-fun lt!1635145 () List!49857)

(assert (=> d!1347374 (= lt!1635143 (ListMap!2854 lt!1635145))))

(declare-fun lt!1635142 () Unit!83561)

(declare-fun lt!1635144 () Unit!83561)

(assert (=> d!1347374 (= lt!1635142 lt!1635144)))

(assert (=> d!1347374 (= (getValueByKey!768 lt!1635145 (_1!28105 (tuple2!49623 key!3717 newValue!93))) (Some!10781 (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> d!1347374 (= lt!1635144 (lemmaContainsTupThenGetReturnValue!501 lt!1635145 (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> d!1347374 (= lt!1635145 (insertNoDuplicatedKeys!221 (toList!3610 (extractMap!872 (toList!3609 lt!1634306))) (_1!28105 (tuple2!49623 key!3717 newValue!93)) (_2!28105 (tuple2!49623 key!3717 newValue!93))))))

(assert (=> d!1347374 (= (+!1188 (extractMap!872 (toList!3609 lt!1634306)) (tuple2!49623 key!3717 newValue!93)) lt!1635143)))

(declare-fun b!4438571 () Bool)

(declare-fun res!1837232 () Bool)

(assert (=> b!4438571 (=> (not res!1837232) (not e!2763765))))

(assert (=> b!4438571 (= res!1837232 (= (getValueByKey!768 (toList!3610 lt!1635143) (_1!28105 (tuple2!49623 key!3717 newValue!93))) (Some!10781 (_2!28105 (tuple2!49623 key!3717 newValue!93)))))))

(declare-fun b!4438572 () Bool)

(assert (=> b!4438572 (= e!2763765 (contains!12295 (toList!3610 lt!1635143) (tuple2!49623 key!3717 newValue!93)))))

(assert (= (and d!1347374 res!1837231) b!4438571))

(assert (= (and b!4438571 res!1837232) b!4438572))

(declare-fun m!5126999 () Bool)

(assert (=> d!1347374 m!5126999))

(declare-fun m!5127001 () Bool)

(assert (=> d!1347374 m!5127001))

(declare-fun m!5127003 () Bool)

(assert (=> d!1347374 m!5127003))

(declare-fun m!5127005 () Bool)

(assert (=> d!1347374 m!5127005))

(declare-fun m!5127007 () Bool)

(assert (=> b!4438571 m!5127007))

(declare-fun m!5127009 () Bool)

(assert (=> b!4438572 m!5127009))

(assert (=> d!1346956 d!1347374))

(declare-fun d!1347376 () Bool)

(declare-fun res!1837233 () Bool)

(declare-fun e!2763766 () Bool)

(assert (=> d!1347376 (=> res!1837233 e!2763766)))

(assert (=> d!1347376 (= res!1837233 ((_ is Nil!49734) (toList!3609 lt!1634306)))))

(assert (=> d!1347376 (= (forall!9666 (toList!3609 lt!1634306) lambda!156655) e!2763766)))

(declare-fun b!4438573 () Bool)

(declare-fun e!2763767 () Bool)

(assert (=> b!4438573 (= e!2763766 e!2763767)))

(declare-fun res!1837234 () Bool)

(assert (=> b!4438573 (=> (not res!1837234) (not e!2763767))))

(assert (=> b!4438573 (= res!1837234 (dynLambda!20896 lambda!156655 (h!55447 (toList!3609 lt!1634306))))))

(declare-fun b!4438574 () Bool)

(assert (=> b!4438574 (= e!2763767 (forall!9666 (t!356800 (toList!3609 lt!1634306)) lambda!156655))))

(assert (= (and d!1347376 (not res!1837233)) b!4438573))

(assert (= (and b!4438573 res!1837234) b!4438574))

(declare-fun b_lambda!144801 () Bool)

(assert (=> (not b_lambda!144801) (not b!4438573)))

(declare-fun m!5127011 () Bool)

(assert (=> b!4438573 m!5127011))

(declare-fun m!5127013 () Bool)

(assert (=> b!4438574 m!5127013))

(assert (=> d!1346956 d!1347376))

(declare-fun bs!763761 () Bool)

(declare-fun d!1347378 () Bool)

(assert (= bs!763761 (and d!1347378 d!1346948)))

(declare-fun lambda!156772 () Int)

(assert (=> bs!763761 (= lambda!156772 lambda!156652)))

(declare-fun bs!763762 () Bool)

(assert (= bs!763762 (and d!1347378 d!1346956)))

(assert (=> bs!763762 (= lambda!156772 lambda!156655)))

(declare-fun bs!763763 () Bool)

(assert (= bs!763763 (and d!1347378 d!1346940)))

(assert (=> bs!763763 (= lambda!156772 lambda!156649)))

(declare-fun bs!763764 () Bool)

(assert (= bs!763764 (and d!1347378 start!433908)))

(assert (=> bs!763764 (= lambda!156772 lambda!156552)))

(declare-fun bs!763765 () Bool)

(assert (= bs!763765 (and d!1347378 d!1347028)))

(assert (=> bs!763765 (= lambda!156772 lambda!156688)))

(declare-fun bs!763766 () Bool)

(assert (= bs!763766 (and d!1347378 d!1346862)))

(assert (=> bs!763766 (not (= lambda!156772 lambda!156558))))

(declare-fun bs!763767 () Bool)

(assert (= bs!763767 (and d!1347378 d!1346964)))

(assert (=> bs!763767 (= lambda!156772 lambda!156657)))

(declare-fun bs!763768 () Bool)

(assert (= bs!763768 (and d!1347378 d!1347250)))

(assert (=> bs!763768 (= lambda!156772 lambda!156723)))

(declare-fun bs!763769 () Bool)

(assert (= bs!763769 (and d!1347378 d!1347016)))

(assert (=> bs!763769 (= lambda!156772 lambda!156677)))

(declare-fun bs!763770 () Bool)

(assert (= bs!763770 (and d!1347378 d!1346860)))

(assert (=> bs!763770 (= lambda!156772 lambda!156555)))

(declare-fun bs!763771 () Bool)

(assert (= bs!763771 (and d!1347378 d!1346962)))

(assert (=> bs!763771 (= lambda!156772 lambda!156656)))

(declare-fun bs!763772 () Bool)

(assert (= bs!763772 (and d!1347378 d!1346968)))

(assert (=> bs!763772 (= lambda!156772 lambda!156658)))

(declare-fun bs!763773 () Bool)

(assert (= bs!763773 (and d!1347378 d!1347362)))

(assert (=> bs!763773 (= lambda!156772 lambda!156767)))

(declare-fun lt!1635149 () ListMap!2853)

(assert (=> d!1347378 (invariantList!833 (toList!3610 lt!1635149))))

(declare-fun e!2763768 () ListMap!2853)

(assert (=> d!1347378 (= lt!1635149 e!2763768)))

(declare-fun c!755529 () Bool)

(assert (=> d!1347378 (= c!755529 ((_ is Cons!49734) (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))))))

(assert (=> d!1347378 (forall!9666 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194))) lambda!156772)))

(assert (=> d!1347378 (= (extractMap!872 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))) lt!1635149)))

(declare-fun b!4438575 () Bool)

(assert (=> b!4438575 (= e!2763768 (addToMapMapFromBucket!432 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194))))) (extractMap!872 (t!356800 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))))))))

(declare-fun b!4438576 () Bool)

(assert (=> b!4438576 (= e!2763768 (ListMap!2854 Nil!49733))))

(assert (= (and d!1347378 c!755529) b!4438575))

(assert (= (and d!1347378 (not c!755529)) b!4438576))

(declare-fun m!5127039 () Bool)

(assert (=> d!1347378 m!5127039))

(declare-fun m!5127041 () Bool)

(assert (=> d!1347378 m!5127041))

(declare-fun m!5127043 () Bool)

(assert (=> b!4438575 m!5127043))

(assert (=> b!4438575 m!5127043))

(declare-fun m!5127045 () Bool)

(assert (=> b!4438575 m!5127045))

(assert (=> d!1346956 d!1347378))

(declare-fun d!1347384 () Bool)

(assert (=> d!1347384 (eq!443 (extractMap!872 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))) (+!1188 (extractMap!872 (toList!3609 lt!1634306)) (tuple2!49623 key!3717 newValue!93)))))

(assert (=> d!1347384 true))

(declare-fun _$9!230 () Unit!83561)

(assert (=> d!1347384 (= (choose!28171 lt!1634306 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!230)))

(declare-fun bs!763777 () Bool)

(assert (= bs!763777 d!1347384))

(assert (=> bs!763777 m!5125517))

(assert (=> bs!763777 m!5125519))

(assert (=> bs!763777 m!5125521))

(assert (=> bs!763777 m!5125131))

(assert (=> bs!763777 m!5125519))

(assert (=> bs!763777 m!5125517))

(assert (=> bs!763777 m!5125523))

(assert (=> bs!763777 m!5125131))

(assert (=> d!1346956 d!1347384))

(assert (=> d!1346956 d!1346962))

(declare-fun d!1347396 () Bool)

(assert (=> d!1347396 (= (eq!443 (extractMap!872 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))) (+!1188 (extractMap!872 (toList!3609 lt!1634306)) (tuple2!49623 key!3717 newValue!93))) (= (content!8004 (toList!3610 (extractMap!872 (toList!3609 (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)))))) (content!8004 (toList!3610 (+!1188 (extractMap!872 (toList!3609 lt!1634306)) (tuple2!49623 key!3717 newValue!93))))))))

(declare-fun bs!763778 () Bool)

(assert (= bs!763778 d!1347396))

(declare-fun m!5127059 () Bool)

(assert (=> bs!763778 m!5127059))

(declare-fun m!5127061 () Bool)

(assert (=> bs!763778 m!5127061))

(assert (=> d!1346956 d!1347396))

(declare-fun d!1347398 () Bool)

(declare-fun e!2763779 () Bool)

(assert (=> d!1347398 e!2763779))

(declare-fun res!1837242 () Bool)

(assert (=> d!1347398 (=> (not res!1837242) (not e!2763779))))

(declare-fun lt!1635159 () ListLongMap!2259)

(assert (=> d!1347398 (= res!1837242 (contains!12289 lt!1635159 (_1!28106 (tuple2!49625 hash!366 newBucket!194))))))

(declare-fun lt!1635158 () List!49858)

(assert (=> d!1347398 (= lt!1635159 (ListLongMap!2260 lt!1635158))))

(declare-fun lt!1635160 () Unit!83561)

(declare-fun lt!1635161 () Unit!83561)

(assert (=> d!1347398 (= lt!1635160 lt!1635161)))

(assert (=> d!1347398 (= (getValueByKey!767 lt!1635158 (_1!28106 (tuple2!49625 hash!366 newBucket!194))) (Some!10780 (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347398 (= lt!1635161 (lemmaContainsTupThenGetReturnValue!500 lt!1635158 (_1!28106 (tuple2!49625 hash!366 newBucket!194)) (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347398 (= lt!1635158 (insertStrictlySorted!288 (toList!3609 lt!1634306) (_1!28106 (tuple2!49625 hash!366 newBucket!194)) (_2!28106 (tuple2!49625 hash!366 newBucket!194))))))

(assert (=> d!1347398 (= (+!1189 lt!1634306 (tuple2!49625 hash!366 newBucket!194)) lt!1635159)))

(declare-fun b!4438590 () Bool)

(declare-fun res!1837243 () Bool)

(assert (=> b!4438590 (=> (not res!1837243) (not e!2763779))))

(assert (=> b!4438590 (= res!1837243 (= (getValueByKey!767 (toList!3609 lt!1635159) (_1!28106 (tuple2!49625 hash!366 newBucket!194))) (Some!10780 (_2!28106 (tuple2!49625 hash!366 newBucket!194)))))))

(declare-fun b!4438591 () Bool)

(assert (=> b!4438591 (= e!2763779 (contains!12294 (toList!3609 lt!1635159) (tuple2!49625 hash!366 newBucket!194)))))

(assert (= (and d!1347398 res!1837242) b!4438590))

(assert (= (and b!4438590 res!1837243) b!4438591))

(declare-fun m!5127063 () Bool)

(assert (=> d!1347398 m!5127063))

(declare-fun m!5127065 () Bool)

(assert (=> d!1347398 m!5127065))

(declare-fun m!5127067 () Bool)

(assert (=> d!1347398 m!5127067))

(declare-fun m!5127069 () Bool)

(assert (=> d!1347398 m!5127069))

(declare-fun m!5127071 () Bool)

(assert (=> b!4438590 m!5127071))

(declare-fun m!5127073 () Bool)

(assert (=> b!4438591 m!5127073))

(assert (=> d!1346956 d!1347398))

(declare-fun d!1347400 () Bool)

(declare-fun lt!1635164 () Bool)

(assert (=> d!1347400 (= lt!1635164 (select (content!8005 e!2763224) key!3717))))

(declare-fun e!2763782 () Bool)

(assert (=> d!1347400 (= lt!1635164 e!2763782)))

(declare-fun res!1837247 () Bool)

(assert (=> d!1347400 (=> (not res!1837247) (not e!2763782))))

(assert (=> d!1347400 (= res!1837247 ((_ is Cons!49736) e!2763224))))

(assert (=> d!1347400 (= (contains!12293 e!2763224 key!3717) lt!1635164)))

(declare-fun b!4438594 () Bool)

(declare-fun e!2763783 () Bool)

(assert (=> b!4438594 (= e!2763782 e!2763783)))

(declare-fun res!1837246 () Bool)

(assert (=> b!4438594 (=> res!1837246 e!2763783)))

(assert (=> b!4438594 (= res!1837246 (= (h!55451 e!2763224) key!3717))))

(declare-fun b!4438595 () Bool)

(assert (=> b!4438595 (= e!2763783 (contains!12293 (t!356802 e!2763224) key!3717))))

(assert (= (and d!1347400 res!1837247) b!4438594))

(assert (= (and b!4438594 (not res!1837246)) b!4438595))

(declare-fun m!5127075 () Bool)

(assert (=> d!1347400 m!5127075))

(declare-fun m!5127077 () Bool)

(assert (=> d!1347400 m!5127077))

(declare-fun m!5127079 () Bool)

(assert (=> b!4438595 m!5127079))

(assert (=> bm!308820 d!1347400))

(declare-fun d!1347402 () Bool)

(assert (=> d!1347402 (isDefined!8073 (getValueByKey!768 (toList!3610 lt!1634308) key!3717))))

(declare-fun lt!1635165 () Unit!83561)

(assert (=> d!1347402 (= lt!1635165 (choose!28182 (toList!3610 lt!1634308) key!3717))))

(assert (=> d!1347402 (invariantList!833 (toList!3610 lt!1634308))))

(assert (=> d!1347402 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!676 (toList!3610 lt!1634308) key!3717) lt!1635165)))

(declare-fun bs!763779 () Bool)

(assert (= bs!763779 d!1347402))

(assert (=> bs!763779 m!5125453))

(assert (=> bs!763779 m!5125453))

(assert (=> bs!763779 m!5125455))

(declare-fun m!5127081 () Bool)

(assert (=> bs!763779 m!5127081))

(assert (=> bs!763779 m!5126659))

(assert (=> b!4437720 d!1347402))

(assert (=> b!4437720 d!1347228))

(assert (=> b!4437720 d!1347230))

(declare-fun d!1347404 () Bool)

(assert (=> d!1347404 (contains!12293 (getKeysList!280 (toList!3610 lt!1634308)) key!3717)))

(declare-fun lt!1635167 () Unit!83561)

(assert (=> d!1347404 (= lt!1635167 (choose!28183 (toList!3610 lt!1634308) key!3717))))

(assert (=> d!1347404 (invariantList!833 (toList!3610 lt!1634308))))

(assert (=> d!1347404 (= (lemmaInListThenGetKeysListContains!277 (toList!3610 lt!1634308) key!3717) lt!1635167)))

(declare-fun bs!763780 () Bool)

(assert (= bs!763780 d!1347404))

(assert (=> bs!763780 m!5125467))

(assert (=> bs!763780 m!5125467))

(declare-fun m!5127083 () Bool)

(assert (=> bs!763780 m!5127083))

(declare-fun m!5127085 () Bool)

(assert (=> bs!763780 m!5127085))

(assert (=> bs!763780 m!5126659))

(assert (=> b!4437720 d!1347404))

(declare-fun d!1347406 () Bool)

(declare-fun res!1837249 () Bool)

(declare-fun e!2763785 () Bool)

(assert (=> d!1347406 (=> res!1837249 e!2763785)))

(assert (=> d!1347406 (= res!1837249 (and ((_ is Cons!49733) (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (= (_1!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) key!3717)))))

(assert (=> d!1347406 (= (containsKey!1208 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))) key!3717) e!2763785)))

(declare-fun b!4438597 () Bool)

(declare-fun e!2763786 () Bool)

(assert (=> b!4438597 (= e!2763785 e!2763786)))

(declare-fun res!1837250 () Bool)

(assert (=> b!4438597 (=> (not res!1837250) (not e!2763786))))

(assert (=> b!4438597 (= res!1837250 ((_ is Cons!49733) (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))

(declare-fun b!4438598 () Bool)

(assert (=> b!4438598 (= e!2763786 (containsKey!1208 (t!356799 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))) key!3717))))

(assert (= (and d!1347406 (not res!1837249)) b!4438597))

(assert (= (and b!4438597 res!1837250) b!4438598))

(declare-fun m!5127089 () Bool)

(assert (=> b!4438598 m!5127089))

(assert (=> b!4437539 d!1347406))

(assert (=> d!1346972 d!1347018))

(assert (=> b!4437766 d!1347226))

(declare-fun e!2763789 () Bool)

(declare-fun b!4438601 () Bool)

(declare-fun tp!1333913 () Bool)

(assert (=> b!4438601 (= e!2763789 (and tp_is_empty!26491 tp_is_empty!26489 tp!1333913))))

(assert (=> b!4437788 (= tp!1333906 e!2763789)))

(assert (= (and b!4437788 ((_ is Cons!49733) (t!356799 (t!356799 newBucket!194)))) b!4438601))

(declare-fun b!4438602 () Bool)

(declare-fun e!2763790 () Bool)

(declare-fun tp!1333914 () Bool)

(assert (=> b!4438602 (= e!2763790 (and tp_is_empty!26491 tp_is_empty!26489 tp!1333914))))

(assert (=> b!4437793 (= tp!1333911 e!2763790)))

(assert (= (and b!4437793 ((_ is Cons!49733) (_2!28106 (h!55447 (toList!3609 lm!1616))))) b!4438602))

(declare-fun b!4438605 () Bool)

(declare-fun e!2763793 () Bool)

(declare-fun tp!1333915 () Bool)

(declare-fun tp!1333916 () Bool)

(assert (=> b!4438605 (= e!2763793 (and tp!1333915 tp!1333916))))

(assert (=> b!4437793 (= tp!1333912 e!2763793)))

(assert (= (and b!4437793 ((_ is Cons!49734) (t!356800 (toList!3609 lm!1616)))) b!4438605))

(declare-fun b_lambda!144811 () Bool)

(assert (= b_lambda!144765 (or start!433908 b_lambda!144811)))

(declare-fun bs!763783 () Bool)

(declare-fun d!1347418 () Bool)

(assert (= bs!763783 (and d!1347418 start!433908)))

(assert (=> bs!763783 (= (dynLambda!20896 lambda!156552 (h!55447 (t!356800 (toList!3609 lt!1634311)))) (noDuplicateKeys!811 (_2!28106 (h!55447 (t!356800 (toList!3609 lt!1634311))))))))

(declare-fun m!5127105 () Bool)

(assert (=> bs!763783 m!5127105))

(assert (=> b!4438249 d!1347418))

(declare-fun b_lambda!144813 () Bool)

(assert (= b_lambda!144781 (or d!1346964 b_lambda!144813)))

(declare-fun bs!763784 () Bool)

(declare-fun d!1347420 () Bool)

(assert (= bs!763784 (and d!1347420 d!1346964)))

(assert (=> bs!763784 (= (dynLambda!20896 lambda!156657 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309)))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 (+!1189 lt!1634306 lt!1634309))))))))

(assert (=> bs!763784 m!5126463))

(assert (=> b!4438427 d!1347420))

(declare-fun b_lambda!144815 () Bool)

(assert (= b_lambda!144733 (or b!4437694 b_lambda!144815)))

(declare-fun bs!763785 () Bool)

(declare-fun d!1347422 () Bool)

(assert (= bs!763785 (and d!1347422 b!4437694)))

(assert (=> bs!763785 (= (dynLambda!20898 lambda!156645 (h!55446 (toList!3610 lt!1634303))) (contains!12288 lt!1634523 (_1!28105 (h!55446 (toList!3610 lt!1634303)))))))

(declare-fun m!5127113 () Bool)

(assert (=> bs!763785 m!5127113))

(assert (=> b!4437942 d!1347422))

(declare-fun b_lambda!144817 () Bool)

(assert (= b_lambda!144735 (or start!433908 b_lambda!144817)))

(declare-fun bs!763786 () Bool)

(declare-fun d!1347424 () Bool)

(assert (= bs!763786 (and d!1347424 start!433908)))

(assert (=> bs!763786 (= (dynLambda!20896 lambda!156552 (h!55447 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194))))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 (+!1189 lm!1616 (tuple2!49625 hash!366 newBucket!194)))))))))

(declare-fun m!5127115 () Bool)

(assert (=> bs!763786 m!5127115))

(assert (=> b!4437946 d!1347424))

(declare-fun b_lambda!144819 () Bool)

(assert (= b_lambda!144731 (or d!1346860 b_lambda!144819)))

(declare-fun bs!763787 () Bool)

(declare-fun d!1347428 () Bool)

(assert (= bs!763787 (and d!1347428 d!1346860)))

(assert (=> bs!763787 (= (dynLambda!20896 lambda!156555 (h!55447 (toList!3609 lm!1616))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> bs!763787 m!5125445))

(assert (=> b!4437908 d!1347428))

(declare-fun b_lambda!144821 () Bool)

(assert (= b_lambda!144775 (or d!1346948 b_lambda!144821)))

(declare-fun bs!763788 () Bool)

(declare-fun d!1347430 () Bool)

(assert (= bs!763788 (and d!1347430 d!1346948)))

(assert (=> bs!763788 (= (dynLambda!20896 lambda!156652 (h!55447 (toList!3609 lm!1616))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> bs!763788 m!5125445))

(assert (=> b!4438340 d!1347430))

(declare-fun b_lambda!144823 () Bool)

(assert (= b_lambda!144757 (or d!1346962 b_lambda!144823)))

(declare-fun bs!763789 () Bool)

(declare-fun d!1347432 () Bool)

(assert (= bs!763789 (and d!1347432 d!1346962)))

(assert (=> bs!763789 (= (dynLambda!20896 lambda!156656 (h!55447 (toList!3609 lt!1634306))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lt!1634306)))))))

(assert (=> bs!763789 m!5125807))

(assert (=> b!4438223 d!1347432))

(declare-fun b_lambda!144825 () Bool)

(assert (= b_lambda!144739 (or start!433908 b_lambda!144825)))

(declare-fun bs!763790 () Bool)

(declare-fun d!1347434 () Bool)

(assert (= bs!763790 (and d!1347434 start!433908)))

(assert (=> bs!763790 (= (dynLambda!20896 lambda!156552 (h!55447 (t!356800 (toList!3609 lm!1616)))) (noDuplicateKeys!811 (_2!28106 (h!55447 (t!356800 (toList!3609 lm!1616))))))))

(declare-fun m!5127119 () Bool)

(assert (=> bs!763790 m!5127119))

(assert (=> b!4437959 d!1347434))

(declare-fun b_lambda!144827 () Bool)

(assert (= b_lambda!144783 (or d!1346862 b_lambda!144827)))

(declare-fun bs!763791 () Bool)

(declare-fun d!1347438 () Bool)

(assert (= bs!763791 (and d!1347438 d!1346862)))

(assert (=> bs!763791 (= (dynLambda!20896 lambda!156558 (h!55447 (toList!3609 lm!1616))) (allKeysSameHash!771 (_2!28106 (h!55447 (toList!3609 lm!1616))) (_1!28106 (h!55447 (toList!3609 lm!1616))) hashF!1220))))

(declare-fun m!5127121 () Bool)

(assert (=> bs!763791 m!5127121))

(assert (=> b!4438429 d!1347438))

(declare-fun b_lambda!144829 () Bool)

(assert (= b_lambda!144795 (or b!4437694 b_lambda!144829)))

(declare-fun bs!763792 () Bool)

(declare-fun d!1347440 () Bool)

(assert (= bs!763792 (and d!1347440 b!4437694)))

(assert (=> bs!763792 (= (dynLambda!20898 lambda!156645 (h!55446 (toList!3610 lt!1634524))) (contains!12288 lt!1634523 (_1!28105 (h!55446 (toList!3610 lt!1634524)))))))

(declare-fun m!5127123 () Bool)

(assert (=> bs!763792 m!5127123))

(assert (=> b!4438524 d!1347440))

(declare-fun b_lambda!144831 () Bool)

(assert (= b_lambda!144741 (or d!1346940 b_lambda!144831)))

(declare-fun bs!763793 () Bool)

(declare-fun d!1347442 () Bool)

(assert (= bs!763793 (and d!1347442 d!1346940)))

(assert (=> bs!763793 (= (dynLambda!20896 lambda!156649 (h!55447 (toList!3609 lm!1616))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))

(assert (=> bs!763793 m!5125445))

(assert (=> b!4437983 d!1347442))

(declare-fun b_lambda!144833 () Bool)

(assert (= b_lambda!144797 (or d!1346872 b_lambda!144833)))

(declare-fun bs!763794 () Bool)

(declare-fun d!1347444 () Bool)

(assert (= bs!763794 (and d!1347444 d!1346872)))

(assert (=> bs!763794 (= (dynLambda!20898 lambda!156646 (h!55446 (toList!3610 lt!1634303))) (contains!12288 lt!1634520 (_1!28105 (h!55446 (toList!3610 lt!1634303)))))))

(declare-fun m!5127131 () Bool)

(assert (=> bs!763794 m!5127131))

(assert (=> b!4438536 d!1347444))

(declare-fun b_lambda!144835 () Bool)

(assert (= b_lambda!144785 (or d!1346968 b_lambda!144835)))

(declare-fun bs!763795 () Bool)

(declare-fun d!1347446 () Bool)

(assert (= bs!763795 (and d!1347446 d!1346968)))

(assert (=> bs!763795 (= (dynLambda!20896 lambda!156658 (h!55447 (tail!7345 (toList!3609 lm!1616)))) (noDuplicateKeys!811 (_2!28106 (h!55447 (tail!7345 (toList!3609 lm!1616))))))))

(assert (=> bs!763795 m!5126933))

(assert (=> b!4438431 d!1347446))

(declare-fun b_lambda!144837 () Bool)

(assert (= b_lambda!144773 (or d!1346868 b_lambda!144837)))

(declare-fun bs!763796 () Bool)

(declare-fun d!1347450 () Bool)

(assert (= bs!763796 (and d!1347450 d!1346868)))

(assert (=> bs!763796 (= (dynLambda!20898 lambda!156561 (h!55446 newBucket!194)) (= (hash!2246 hashF!1220 (_1!28105 (h!55446 newBucket!194))) hash!366))))

(declare-fun m!5127135 () Bool)

(assert (=> bs!763796 m!5127135))

(assert (=> b!4438329 d!1347450))

(declare-fun b_lambda!144839 () Bool)

(assert (= b_lambda!144767 (or d!1346872 b_lambda!144839)))

(declare-fun bs!763797 () Bool)

(declare-fun d!1347452 () Bool)

(assert (= bs!763797 (and d!1347452 d!1346872)))

(assert (=> bs!763797 (= (dynLambda!20898 lambda!156646 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (contains!12288 lt!1634520 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(declare-fun m!5127137 () Bool)

(assert (=> bs!763797 m!5127137))

(assert (=> b!4438272 d!1347452))

(declare-fun b_lambda!144841 () Bool)

(assert (= b_lambda!144791 (or b!4437694 b_lambda!144841)))

(declare-fun bs!763798 () Bool)

(declare-fun d!1347454 () Bool)

(assert (= bs!763798 (and d!1347454 b!4437694)))

(assert (=> bs!763798 (= (dynLambda!20898 lambda!156645 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616))))) (contains!12288 lt!1634523 (_1!28105 (h!55446 (_2!28106 (h!55447 (toList!3609 lm!1616)))))))))

(assert (=> bs!763798 m!5125437))

(assert (=> d!1347318 d!1347454))

(declare-fun b_lambda!144843 () Bool)

(assert (= b_lambda!144789 (or b!4437694 b_lambda!144843)))

(declare-fun bs!763799 () Bool)

(declare-fun d!1347456 () Bool)

(assert (= bs!763799 (and d!1347456 b!4437694)))

(assert (=> bs!763799 (= (dynLambda!20898 lambda!156645 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616)))))) (contains!12288 lt!1634523 (_1!28105 (h!55446 (t!356799 (_2!28106 (h!55447 (toList!3609 lm!1616))))))))))

(declare-fun m!5127139 () Bool)

(assert (=> bs!763799 m!5127139))

(assert (=> b!4438469 d!1347456))

(declare-fun b_lambda!144845 () Bool)

(assert (= b_lambda!144801 (or d!1346956 b_lambda!144845)))

(declare-fun bs!763800 () Bool)

(declare-fun d!1347458 () Bool)

(assert (= bs!763800 (and d!1347458 d!1346956)))

(assert (=> bs!763800 (= (dynLambda!20896 lambda!156655 (h!55447 (toList!3609 lt!1634306))) (noDuplicateKeys!811 (_2!28106 (h!55447 (toList!3609 lt!1634306)))))))

(assert (=> bs!763800 m!5125807))

(assert (=> b!4438573 d!1347458))

(declare-fun b_lambda!144847 () Bool)

(assert (= b_lambda!144793 (or b!4437694 b_lambda!144847)))

(assert (=> b!4438522 d!1347454))

(check-sat (not b!4438414) (not d!1347318) (not d!1347316) (not b!4438453) (not b!4438018) (not b!4438563) (not b!4438315) (not b!4438527) (not b!4437824) (not d!1347400) (not b!4438151) (not bs!763789) (not bm!308840) (not d!1347016) (not b!4438541) (not d!1347004) (not d!1347366) (not b!4437897) (not b!4438338) (not b_lambda!144817) (not b!4438519) (not b!4438211) (not d!1347040) (not b!4437858) (not b!4437909) (not b!4438591) (not bs!763787) tp_is_empty!26489 (not b!4438539) (not b!4438512) (not b!4437816) (not b!4438122) (not b_lambda!144829) (not d!1347308) (not d!1347076) (not b_lambda!144845) (not bm!308887) (not bm!308829) (not b!4438518) (not d!1347030) (not b!4437900) (not d!1347210) (not b!4438022) (not b!4438339) (not b!4438244) (not b!4438308) (not bm!308903) (not bs!763793) (not b!4437952) (not b!4438037) (not d!1347146) (not b!4438590) (not b!4438331) (not b!4438605) (not b!4438516) (not bs!763783) (not b!4438530) (not b!4438221) (not b!4438293) (not b_lambda!144833) (not b!4437986) (not bs!763786) (not b!4438336) (not b!4437823) (not b_lambda!144839) (not bs!763800) (not d!1347226) (not bm!308830) (not b!4438333) (not bm!308828) (not b!4437857) (not d!1347354) (not b!4438434) (not b!4438575) (not b!4438306) (not b!4438526) (not d!1347062) (not bs!763796) (not b!4437854) (not b!4438415) (not b!4438437) (not b!4438129) (not b!4438024) (not b!4438470) (not b!4438029) (not bs!763791) (not b!4438562) (not b!4438297) (not b_lambda!144737) (not bm!308856) (not bs!763797) (not b_lambda!144813) (not b!4438538) (not bm!308825) (not d!1347088) (not b_lambda!144719) (not b!4438341) (not d!1347178) (not d!1347252) (not bm!308885) (not b!4438236) (not b!4437835) (not b!4438250) (not b!4437834) (not b!4438256) (not b!4437833) (not b_lambda!144823) (not b!4438056) (not b!4438537) (not b!4437932) (not b!4438324) (not b!4437873) (not d!1347404) (not b!4438602) (not bm!308880) (not b!4438533) (not bs!763794) (not b!4438454) (not b!4438318) (not b!4438304) (not b_lambda!144841) (not d!1347196) (not d!1347092) (not b!4438055) (not d!1346994) (not b!4438595) (not bs!763792) (not d!1347362) (not b!4438258) (not d!1347214) (not d!1347246) (not b!4437899) (not b!4438027) (not d!1347310) (not b!4438011) (not d!1347102) (not b!4437943) (not d!1347250) (not b!4438226) (not b!4437861) (not bm!308886) (not d!1347268) (not b_lambda!144843) (not b!4438568) (not b!4438571) (not d!1347008) (not b_lambda!144721) (not d!1347258) (not d!1347224) (not b!4438420) (not b!4438443) (not d!1347342) (not d!1347274) (not b!4438447) (not d!1347402) (not d!1347064) (not d!1347118) (not b!4438439) (not d!1347260) (not b!4438542) (not b!4437838) (not b!4438030) (not b!4438294) (not b!4438253) (not d!1347074) (not b_lambda!144831) (not b!4438217) (not b!4438556) (not b!4437984) (not b!4438002) (not b!4438311) (not d!1347312) (not b!4438440) (not b!4438428) (not d!1347072) (not d!1347294) (not b!4438330) (not b!4437847) (not d!1347378) (not b_lambda!144825) (not b!4437949) (not b!4438444) (not b!4437954) (not bm!308827) (not b_lambda!144811) (not d!1347174) (not b!4438565) (not b!4438240) tp_is_empty!26491 (not b!4437855) (not b!4438335) (not b!4438598) (not d!1347024) (not b!4438166) (not bs!763798) (not bm!308871) (not b!4438224) (not b_lambda!144835) (not b!4438513) (not bm!308902) (not b_lambda!144847) (not b!4438332) (not b!4438510) (not b_lambda!144815) (not b!4438167) (not d!1347328) (not d!1347192) (not b!4438298) (not b!4438417) (not b!4437856) (not b_lambda!144827) (not b!4438446) (not b!4438273) (not bs!763784) (not b!4438572) (not d!1347270) (not b!4437825) (not b_lambda!144723) (not bm!308882) (not d!1347300) (not bs!763785) (not b!4438320) (not b!4438525) (not b!4438128) (not b!4438270) (not b!4438121) (not b!4437982) (not d!1347020) (not bs!763799) (not d!1347384) (not b!4438432) (not b!4438523) (not b!4438441) (not b!4437960) (not d!1347006) (not b!4437860) (not b!4438569) (not d!1347190) (not b_lambda!144819) (not b!4438154) (not d!1347082) (not bm!308855) (not b!4438449) (not bs!763788) (not b!4438421) (not b!4438515) (not b!4438430) (not b!4438259) (not b!4438450) (not b!4438119) (not d!1347398) (not b!4438511) (not b!4438213) (not bm!308900) (not bm!308873) (not b!4438316) (not b!4438601) (not b!4438574) (not b!4437947) (not b!4438535) (not b!4437837) (not b!4438291) (not bs!763795) (not b!4437948) (not b!4438132) (not bs!763790) (not d!1347170) (not d!1347028) (not d!1347374) (not b!4438295) (not b!4438120) (not b!4438448) (not b!4438023) (not bm!308884) (not d!1347396) (not bm!308901) (not b!4438123) (not b!4438451) (not bm!308875) (not b!4438026) (not d!1347228) (not bm!308826) (not b_lambda!144821) (not b!4438257) (not b!4438222) (not b!4438149) (not bm!308874) (not b_lambda!144787) (not d!1347096) (not b_lambda!144837))
(check-sat)
