; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460496 () Bool)

(assert start!460496)

(declare-fun b!4607002 () Bool)

(declare-fun e!2873711 () Bool)

(declare-fun e!2873705 () Bool)

(assert (=> b!4607002 (= e!2873711 e!2873705)))

(declare-fun res!1928131 () Bool)

(assert (=> b!4607002 (=> res!1928131 e!2873705)))

(declare-datatypes ((K!12550 0))(
  ( (K!12551 (val!18311 Int)) )
))
(declare-datatypes ((V!12796 0))(
  ( (V!12797 (val!18312 Int)) )
))
(declare-datatypes ((tuple2!51890 0))(
  ( (tuple2!51891 (_1!29239 K!12550) (_2!29239 V!12796)) )
))
(declare-datatypes ((List!51307 0))(
  ( (Nil!51183) (Cons!51183 (h!57169 tuple2!51890) (t!358301 List!51307)) )
))
(declare-datatypes ((tuple2!51892 0))(
  ( (tuple2!51893 (_1!29240 (_ BitVec 64)) (_2!29240 List!51307)) )
))
(declare-datatypes ((List!51308 0))(
  ( (Nil!51184) (Cons!51184 (h!57170 tuple2!51892) (t!358302 List!51308)) )
))
(declare-datatypes ((ListLongMap!3367 0))(
  ( (ListLongMap!3368 (toList!4735 List!51308)) )
))
(declare-fun lm!1477 () ListLongMap!3367)

(declare-fun key!3287 () K!12550)

(declare-datatypes ((ListMap!3997 0))(
  ( (ListMap!3998 (toList!4736 List!51307)) )
))
(declare-fun contains!14180 (ListMap!3997 K!12550) Bool)

(declare-fun extractMap!1420 (List!51308) ListMap!3997)

(assert (=> b!4607002 (= res!1928131 (not (contains!14180 (extractMap!1420 (t!358302 (toList!4735 lm!1477))) key!3287)))))

(declare-fun lt!1764105 () ListLongMap!3367)

(assert (=> b!4607002 (contains!14180 (extractMap!1420 (toList!4735 lt!1764105)) key!3287)))

(declare-datatypes ((Hashable!5759 0))(
  ( (HashableExt!5758 (__x!31462 Int)) )
))
(declare-fun hashF!1107 () Hashable!5759)

(declare-datatypes ((Unit!109033 0))(
  ( (Unit!109034) )
))
(declare-fun lt!1764112 () Unit!109033)

(declare-fun lemmaListContainsThenExtractedMapContains!272 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> b!4607002 (= lt!1764112 (lemmaListContainsThenExtractedMapContains!272 lt!1764105 key!3287 hashF!1107))))

(declare-fun b!4607003 () Bool)

(declare-fun res!1928140 () Bool)

(declare-fun e!2873704 () Bool)

(assert (=> b!4607003 (=> res!1928140 e!2873704)))

(declare-fun lt!1764108 () tuple2!51892)

(declare-fun contains!14181 (List!51308 tuple2!51892) Bool)

(assert (=> b!4607003 (= res!1928140 (not (contains!14181 (t!358302 (toList!4735 lm!1477)) lt!1764108)))))

(declare-fun b!4607004 () Bool)

(declare-fun res!1928130 () Bool)

(assert (=> b!4607004 (=> res!1928130 e!2873705)))

(declare-fun lambda!187690 () Int)

(declare-fun forall!10672 (List!51308 Int) Bool)

(assert (=> b!4607004 (= res!1928130 (not (forall!10672 (toList!4735 lt!1764105) lambda!187690)))))

(declare-fun b!4607005 () Bool)

(declare-fun res!1928142 () Bool)

(declare-fun e!2873707 () Bool)

(assert (=> b!4607005 (=> (not res!1928142) (not e!2873707))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!51307)

(declare-fun allKeysSameHash!1216 (List!51307 (_ BitVec 64) Hashable!5759) Bool)

(assert (=> b!4607005 (= res!1928142 (allKeysSameHash!1216 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4607006 () Bool)

(declare-fun res!1928128 () Bool)

(declare-fun e!2873709 () Bool)

(assert (=> b!4607006 (=> (not res!1928128) (not e!2873709))))

(assert (=> b!4607006 (= res!1928128 (contains!14180 (extractMap!1420 (toList!4735 lm!1477)) key!3287))))

(declare-fun b!4607007 () Bool)

(declare-fun e!2873712 () Bool)

(assert (=> b!4607007 (= e!2873712 e!2873711)))

(declare-fun res!1928138 () Bool)

(assert (=> b!4607007 (=> res!1928138 e!2873711)))

(declare-fun containsKeyBiggerList!300 (List!51308 K!12550) Bool)

(assert (=> b!4607007 (= res!1928138 (not (containsKeyBiggerList!300 (t!358302 (toList!4735 lm!1477)) key!3287)))))

(assert (=> b!4607007 (containsKeyBiggerList!300 (toList!4735 lt!1764105) key!3287)))

(declare-fun lt!1764114 () Unit!109033)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!170 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> b!4607007 (= lt!1764114 (lemmaInLongMapThenContainsKeyBiggerList!170 lt!1764105 key!3287 hashF!1107))))

(declare-fun res!1928135 () Bool)

(assert (=> start!460496 (=> (not res!1928135) (not e!2873709))))

(assert (=> start!460496 (= res!1928135 (forall!10672 (toList!4735 lm!1477) lambda!187690))))

(assert (=> start!460496 e!2873709))

(assert (=> start!460496 true))

(declare-fun e!2873706 () Bool)

(declare-fun inv!66734 (ListLongMap!3367) Bool)

(assert (=> start!460496 (and (inv!66734 lm!1477) e!2873706)))

(declare-fun tp_is_empty!28733 () Bool)

(assert (=> start!460496 tp_is_empty!28733))

(declare-fun e!2873703 () Bool)

(assert (=> start!460496 e!2873703))

(declare-fun b!4607008 () Bool)

(declare-fun res!1928139 () Bool)

(assert (=> b!4607008 (=> (not res!1928139) (not e!2873709))))

(declare-fun allKeysSameHashInMap!1471 (ListLongMap!3367 Hashable!5759) Bool)

(assert (=> b!4607008 (= res!1928139 (allKeysSameHashInMap!1471 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!28735 () Bool)

(declare-fun tp!1340915 () Bool)

(declare-fun b!4607009 () Bool)

(assert (=> b!4607009 (= e!2873703 (and tp_is_empty!28733 tp_is_empty!28735 tp!1340915))))

(declare-fun b!4607010 () Bool)

(assert (=> b!4607010 (= e!2873705 (allKeysSameHashInMap!1471 lt!1764105 hashF!1107))))

(declare-fun b!4607011 () Bool)

(declare-fun res!1928132 () Bool)

(declare-fun e!2873708 () Bool)

(assert (=> b!4607011 (=> res!1928132 e!2873708)))

(get-info :version)

(assert (=> b!4607011 (= res!1928132 (or ((_ is Nil!51184) (toList!4735 lm!1477)) (= (_1!29240 (h!57170 (toList!4735 lm!1477))) hash!344)))))

(declare-fun b!4607012 () Bool)

(assert (=> b!4607012 (= e!2873708 e!2873704)))

(declare-fun res!1928137 () Bool)

(assert (=> b!4607012 (=> res!1928137 e!2873704)))

(declare-fun contains!14182 (ListLongMap!3367 (_ BitVec 64)) Bool)

(assert (=> b!4607012 (= res!1928137 (not (contains!14182 lt!1764105 hash!344)))))

(declare-fun tail!8013 (ListLongMap!3367) ListLongMap!3367)

(assert (=> b!4607012 (= lt!1764105 (tail!8013 lm!1477))))

(declare-fun b!4607013 () Bool)

(assert (=> b!4607013 (= e!2873704 e!2873712)))

(declare-fun res!1928134 () Bool)

(assert (=> b!4607013 (=> res!1928134 e!2873712)))

(declare-fun lt!1764109 () Bool)

(assert (=> b!4607013 (= res!1928134 lt!1764109)))

(declare-fun lt!1764113 () Unit!109033)

(declare-fun e!2873710 () Unit!109033)

(assert (=> b!4607013 (= lt!1764113 e!2873710)))

(declare-fun c!789180 () Bool)

(assert (=> b!4607013 (= c!789180 lt!1764109)))

(declare-fun lt!1764107 () List!51307)

(declare-fun containsKey!2238 (List!51307 K!12550) Bool)

(assert (=> b!4607013 (= lt!1764109 (not (containsKey!2238 lt!1764107 key!3287)))))

(declare-fun b!4607014 () Bool)

(declare-fun res!1928129 () Bool)

(assert (=> b!4607014 (=> res!1928129 e!2873708)))

(declare-fun noDuplicateKeys!1360 (List!51307) Bool)

(assert (=> b!4607014 (= res!1928129 (not (noDuplicateKeys!1360 newBucket!178)))))

(declare-fun b!4607015 () Bool)

(declare-fun Unit!109035 () Unit!109033)

(assert (=> b!4607015 (= e!2873710 Unit!109035)))

(declare-fun lt!1764104 () Unit!109033)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!324 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> b!4607015 (= lt!1764104 (lemmaNotInItsHashBucketThenNotInMap!324 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4607015 false))

(declare-fun b!4607016 () Bool)

(declare-fun Unit!109036 () Unit!109033)

(assert (=> b!4607016 (= e!2873710 Unit!109036)))

(declare-fun b!4607017 () Bool)

(assert (=> b!4607017 (= e!2873707 (not e!2873708))))

(declare-fun res!1928141 () Bool)

(assert (=> b!4607017 (=> res!1928141 e!2873708)))

(declare-fun removePairForKey!985 (List!51307 K!12550) List!51307)

(assert (=> b!4607017 (= res!1928141 (not (= newBucket!178 (removePairForKey!985 lt!1764107 key!3287))))))

(declare-fun lt!1764115 () Unit!109033)

(declare-fun forallContained!2917 (List!51308 Int tuple2!51892) Unit!109033)

(assert (=> b!4607017 (= lt!1764115 (forallContained!2917 (toList!4735 lm!1477) lambda!187690 lt!1764108))))

(assert (=> b!4607017 (contains!14181 (toList!4735 lm!1477) lt!1764108)))

(assert (=> b!4607017 (= lt!1764108 (tuple2!51893 hash!344 lt!1764107))))

(declare-fun lt!1764106 () Unit!109033)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!870 (List!51308 (_ BitVec 64) List!51307) Unit!109033)

(assert (=> b!4607017 (= lt!1764106 (lemmaGetValueByKeyImpliesContainsTuple!870 (toList!4735 lm!1477) hash!344 lt!1764107))))

(declare-fun apply!12097 (ListLongMap!3367 (_ BitVec 64)) List!51307)

(assert (=> b!4607017 (= lt!1764107 (apply!12097 lm!1477 hash!344))))

(declare-fun lt!1764110 () (_ BitVec 64))

(assert (=> b!4607017 (contains!14182 lm!1477 lt!1764110)))

(declare-fun lt!1764111 () Unit!109033)

(declare-fun lemmaInGenMapThenLongMapContainsHash!434 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> b!4607017 (= lt!1764111 (lemmaInGenMapThenLongMapContainsHash!434 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4607018 () Bool)

(assert (=> b!4607018 (= e!2873709 e!2873707)))

(declare-fun res!1928133 () Bool)

(assert (=> b!4607018 (=> (not res!1928133) (not e!2873707))))

(assert (=> b!4607018 (= res!1928133 (= lt!1764110 hash!344))))

(declare-fun hash!3291 (Hashable!5759 K!12550) (_ BitVec 64))

(assert (=> b!4607018 (= lt!1764110 (hash!3291 hashF!1107 key!3287))))

(declare-fun b!4607019 () Bool)

(declare-fun tp!1340914 () Bool)

(assert (=> b!4607019 (= e!2873706 tp!1340914)))

(declare-fun b!4607020 () Bool)

(declare-fun res!1928136 () Bool)

(assert (=> b!4607020 (=> res!1928136 e!2873704)))

(assert (=> b!4607020 (= res!1928136 (not (= (apply!12097 lt!1764105 hash!344) lt!1764107)))))

(assert (= (and start!460496 res!1928135) b!4607008))

(assert (= (and b!4607008 res!1928139) b!4607006))

(assert (= (and b!4607006 res!1928128) b!4607018))

(assert (= (and b!4607018 res!1928133) b!4607005))

(assert (= (and b!4607005 res!1928142) b!4607017))

(assert (= (and b!4607017 (not res!1928141)) b!4607014))

(assert (= (and b!4607014 (not res!1928129)) b!4607011))

(assert (= (and b!4607011 (not res!1928132)) b!4607012))

(assert (= (and b!4607012 (not res!1928137)) b!4607020))

(assert (= (and b!4607020 (not res!1928136)) b!4607003))

(assert (= (and b!4607003 (not res!1928140)) b!4607013))

(assert (= (and b!4607013 c!789180) b!4607015))

(assert (= (and b!4607013 (not c!789180)) b!4607016))

(assert (= (and b!4607013 (not res!1928134)) b!4607007))

(assert (= (and b!4607007 (not res!1928138)) b!4607002))

(assert (= (and b!4607002 (not res!1928131)) b!4607004))

(assert (= (and b!4607004 (not res!1928130)) b!4607010))

(assert (= start!460496 b!4607019))

(assert (= (and start!460496 ((_ is Cons!51183) newBucket!178)) b!4607009))

(declare-fun m!5436547 () Bool)

(assert (=> b!4607018 m!5436547))

(declare-fun m!5436549 () Bool)

(assert (=> b!4607006 m!5436549))

(assert (=> b!4607006 m!5436549))

(declare-fun m!5436551 () Bool)

(assert (=> b!4607006 m!5436551))

(declare-fun m!5436553 () Bool)

(assert (=> b!4607010 m!5436553))

(declare-fun m!5436555 () Bool)

(assert (=> b!4607012 m!5436555))

(declare-fun m!5436557 () Bool)

(assert (=> b!4607012 m!5436557))

(declare-fun m!5436559 () Bool)

(assert (=> b!4607003 m!5436559))

(declare-fun m!5436561 () Bool)

(assert (=> b!4607004 m!5436561))

(declare-fun m!5436563 () Bool)

(assert (=> b!4607007 m!5436563))

(declare-fun m!5436565 () Bool)

(assert (=> b!4607007 m!5436565))

(declare-fun m!5436567 () Bool)

(assert (=> b!4607007 m!5436567))

(declare-fun m!5436569 () Bool)

(assert (=> b!4607005 m!5436569))

(declare-fun m!5436571 () Bool)

(assert (=> b!4607015 m!5436571))

(declare-fun m!5436573 () Bool)

(assert (=> start!460496 m!5436573))

(declare-fun m!5436575 () Bool)

(assert (=> start!460496 m!5436575))

(declare-fun m!5436577 () Bool)

(assert (=> b!4607013 m!5436577))

(declare-fun m!5436579 () Bool)

(assert (=> b!4607008 m!5436579))

(declare-fun m!5436581 () Bool)

(assert (=> b!4607020 m!5436581))

(declare-fun m!5436583 () Bool)

(assert (=> b!4607002 m!5436583))

(declare-fun m!5436585 () Bool)

(assert (=> b!4607002 m!5436585))

(declare-fun m!5436587 () Bool)

(assert (=> b!4607002 m!5436587))

(assert (=> b!4607002 m!5436583))

(assert (=> b!4607002 m!5436587))

(declare-fun m!5436589 () Bool)

(assert (=> b!4607002 m!5436589))

(declare-fun m!5436591 () Bool)

(assert (=> b!4607002 m!5436591))

(declare-fun m!5436593 () Bool)

(assert (=> b!4607017 m!5436593))

(declare-fun m!5436595 () Bool)

(assert (=> b!4607017 m!5436595))

(declare-fun m!5436597 () Bool)

(assert (=> b!4607017 m!5436597))

(declare-fun m!5436599 () Bool)

(assert (=> b!4607017 m!5436599))

(declare-fun m!5436601 () Bool)

(assert (=> b!4607017 m!5436601))

(declare-fun m!5436603 () Bool)

(assert (=> b!4607017 m!5436603))

(declare-fun m!5436605 () Bool)

(assert (=> b!4607017 m!5436605))

(declare-fun m!5436607 () Bool)

(assert (=> b!4607014 m!5436607))

(check-sat tp_is_empty!28733 (not b!4607014) tp_is_empty!28735 (not b!4607010) (not b!4607008) (not b!4607017) (not b!4607009) (not b!4607007) (not b!4607006) (not b!4607012) (not b!4607013) (not b!4607003) (not start!460496) (not b!4607005) (not b!4607004) (not b!4607019) (not b!4607015) (not b!4607020) (not b!4607018) (not b!4607002))
(check-sat)
(get-model)

(declare-fun d!1451316 () Bool)

(declare-fun res!1928159 () Bool)

(declare-fun e!2873729 () Bool)

(assert (=> d!1451316 (=> res!1928159 e!2873729)))

(assert (=> d!1451316 (= res!1928159 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451316 (= (forall!10672 (toList!4735 lm!1477) lambda!187690) e!2873729)))

(declare-fun b!4607037 () Bool)

(declare-fun e!2873730 () Bool)

(assert (=> b!4607037 (= e!2873729 e!2873730)))

(declare-fun res!1928160 () Bool)

(assert (=> b!4607037 (=> (not res!1928160) (not e!2873730))))

(declare-fun dynLambda!21429 (Int tuple2!51892) Bool)

(assert (=> b!4607037 (= res!1928160 (dynLambda!21429 lambda!187690 (h!57170 (toList!4735 lm!1477))))))

(declare-fun b!4607038 () Bool)

(assert (=> b!4607038 (= e!2873730 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187690))))

(assert (= (and d!1451316 (not res!1928159)) b!4607037))

(assert (= (and b!4607037 res!1928160) b!4607038))

(declare-fun b_lambda!170103 () Bool)

(assert (=> (not b_lambda!170103) (not b!4607037)))

(declare-fun m!5436621 () Bool)

(assert (=> b!4607037 m!5436621))

(declare-fun m!5436623 () Bool)

(assert (=> b!4607038 m!5436623))

(assert (=> start!460496 d!1451316))

(declare-fun d!1451320 () Bool)

(declare-fun isStrictlySorted!560 (List!51308) Bool)

(assert (=> d!1451320 (= (inv!66734 lm!1477) (isStrictlySorted!560 (toList!4735 lm!1477)))))

(declare-fun bs!1014603 () Bool)

(assert (= bs!1014603 d!1451320))

(declare-fun m!5436625 () Bool)

(assert (=> bs!1014603 m!5436625))

(assert (=> start!460496 d!1451320))

(declare-fun bs!1014604 () Bool)

(declare-fun d!1451322 () Bool)

(assert (= bs!1014604 (and d!1451322 start!460496)))

(declare-fun lambda!187693 () Int)

(assert (=> bs!1014604 (= lambda!187693 lambda!187690)))

(assert (=> d!1451322 (not (contains!14180 (extractMap!1420 (toList!4735 lm!1477)) key!3287))))

(declare-fun lt!1764137 () Unit!109033)

(declare-fun choose!30974 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> d!1451322 (= lt!1764137 (choose!30974 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451322 (forall!10672 (toList!4735 lm!1477) lambda!187693)))

(assert (=> d!1451322 (= (lemmaNotInItsHashBucketThenNotInMap!324 lm!1477 key!3287 hashF!1107) lt!1764137)))

(declare-fun bs!1014605 () Bool)

(assert (= bs!1014605 d!1451322))

(assert (=> bs!1014605 m!5436549))

(assert (=> bs!1014605 m!5436549))

(assert (=> bs!1014605 m!5436551))

(declare-fun m!5436627 () Bool)

(assert (=> bs!1014605 m!5436627))

(declare-fun m!5436629 () Bool)

(assert (=> bs!1014605 m!5436629))

(assert (=> b!4607015 d!1451322))

(declare-fun d!1451324 () Bool)

(assert (=> d!1451324 true))

(assert (=> d!1451324 true))

(declare-fun lambda!187696 () Int)

(declare-fun forall!10673 (List!51307 Int) Bool)

(assert (=> d!1451324 (= (allKeysSameHash!1216 newBucket!178 hash!344 hashF!1107) (forall!10673 newBucket!178 lambda!187696))))

(declare-fun bs!1014606 () Bool)

(assert (= bs!1014606 d!1451324))

(declare-fun m!5436631 () Bool)

(assert (=> bs!1014606 m!5436631))

(assert (=> b!4607005 d!1451324))

(declare-fun b!4607103 () Bool)

(declare-fun e!2873775 () Bool)

(declare-datatypes ((List!51310 0))(
  ( (Nil!51186) (Cons!51186 (h!57174 K!12550) (t!358304 List!51310)) )
))
(declare-fun contains!14183 (List!51310 K!12550) Bool)

(declare-fun keys!17947 (ListMap!3997) List!51310)

(assert (=> b!4607103 (= e!2873775 (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(declare-fun b!4607104 () Bool)

(declare-fun e!2873770 () Bool)

(assert (=> b!4607104 (= e!2873770 (not (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lm!1477))) key!3287)))))

(declare-fun b!4607105 () Bool)

(declare-fun e!2873772 () List!51310)

(declare-fun getKeysList!594 (List!51307) List!51310)

(assert (=> b!4607105 (= e!2873772 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))

(declare-fun b!4607106 () Bool)

(assert (=> b!4607106 false))

(declare-fun lt!1764176 () Unit!109033)

(declare-fun lt!1764180 () Unit!109033)

(assert (=> b!4607106 (= lt!1764176 lt!1764180)))

(declare-fun containsKey!2240 (List!51307 K!12550) Bool)

(assert (=> b!4607106 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!593 (List!51307 K!12550) Unit!109033)

(assert (=> b!4607106 (= lt!1764180 (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(declare-fun e!2873771 () Unit!109033)

(declare-fun Unit!109039 () Unit!109033)

(assert (=> b!4607106 (= e!2873771 Unit!109039)))

(declare-fun b!4607107 () Bool)

(declare-fun e!2873774 () Unit!109033)

(assert (=> b!4607107 (= e!2873774 e!2873771)))

(declare-fun c!789203 () Bool)

(declare-fun call!321338 () Bool)

(assert (=> b!4607107 (= c!789203 call!321338)))

(declare-fun b!4607109 () Bool)

(declare-fun e!2873773 () Bool)

(assert (=> b!4607109 (= e!2873773 e!2873775)))

(declare-fun res!1928181 () Bool)

(assert (=> b!4607109 (=> (not res!1928181) (not e!2873775))))

(declare-datatypes ((Option!11434 0))(
  ( (None!11433) (Some!11433 (v!45479 V!12796)) )
))
(declare-fun isDefined!8701 (Option!11434) Bool)

(declare-fun getValueByKey!1352 (List!51307 K!12550) Option!11434)

(assert (=> b!4607109 (= res!1928181 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287)))))

(declare-fun b!4607110 () Bool)

(assert (=> b!4607110 (= e!2873772 (keys!17947 (extractMap!1420 (toList!4735 lm!1477))))))

(declare-fun bm!321333 () Bool)

(assert (=> bm!321333 (= call!321338 (contains!14183 e!2873772 key!3287))))

(declare-fun c!789202 () Bool)

(declare-fun c!789204 () Bool)

(assert (=> bm!321333 (= c!789202 c!789204)))

(declare-fun b!4607111 () Bool)

(declare-fun lt!1764177 () Unit!109033)

(assert (=> b!4607111 (= e!2873774 lt!1764177)))

(declare-fun lt!1764179 () Unit!109033)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (List!51307 K!12550) Unit!109033)

(assert (=> b!4607111 (= lt!1764179 (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> b!4607111 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(declare-fun lt!1764174 () Unit!109033)

(assert (=> b!4607111 (= lt!1764174 lt!1764179)))

(declare-fun lemmaInListThenGetKeysListContains!589 (List!51307 K!12550) Unit!109033)

(assert (=> b!4607111 (= lt!1764177 (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> b!4607111 call!321338))

(declare-fun d!1451326 () Bool)

(assert (=> d!1451326 e!2873773))

(declare-fun res!1928179 () Bool)

(assert (=> d!1451326 (=> res!1928179 e!2873773)))

(assert (=> d!1451326 (= res!1928179 e!2873770)))

(declare-fun res!1928180 () Bool)

(assert (=> d!1451326 (=> (not res!1928180) (not e!2873770))))

(declare-fun lt!1764175 () Bool)

(assert (=> d!1451326 (= res!1928180 (not lt!1764175))))

(declare-fun lt!1764173 () Bool)

(assert (=> d!1451326 (= lt!1764175 lt!1764173)))

(declare-fun lt!1764178 () Unit!109033)

(assert (=> d!1451326 (= lt!1764178 e!2873774)))

(assert (=> d!1451326 (= c!789204 lt!1764173)))

(assert (=> d!1451326 (= lt!1764173 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> d!1451326 (= (contains!14180 (extractMap!1420 (toList!4735 lm!1477)) key!3287) lt!1764175)))

(declare-fun b!4607108 () Bool)

(declare-fun Unit!109040 () Unit!109033)

(assert (=> b!4607108 (= e!2873771 Unit!109040)))

(assert (= (and d!1451326 c!789204) b!4607111))

(assert (= (and d!1451326 (not c!789204)) b!4607107))

(assert (= (and b!4607107 c!789203) b!4607106))

(assert (= (and b!4607107 (not c!789203)) b!4607108))

(assert (= (or b!4607111 b!4607107) bm!321333))

(assert (= (and bm!321333 c!789202) b!4607105))

(assert (= (and bm!321333 (not c!789202)) b!4607110))

(assert (= (and d!1451326 res!1928180) b!4607104))

(assert (= (and d!1451326 (not res!1928179)) b!4607109))

(assert (= (and b!4607109 res!1928181) b!4607103))

(declare-fun m!5436681 () Bool)

(assert (=> b!4607106 m!5436681))

(declare-fun m!5436683 () Bool)

(assert (=> b!4607106 m!5436683))

(assert (=> d!1451326 m!5436681))

(declare-fun m!5436685 () Bool)

(assert (=> b!4607105 m!5436685))

(assert (=> b!4607104 m!5436549))

(declare-fun m!5436687 () Bool)

(assert (=> b!4607104 m!5436687))

(assert (=> b!4607104 m!5436687))

(declare-fun m!5436689 () Bool)

(assert (=> b!4607104 m!5436689))

(assert (=> b!4607110 m!5436549))

(assert (=> b!4607110 m!5436687))

(declare-fun m!5436691 () Bool)

(assert (=> b!4607109 m!5436691))

(assert (=> b!4607109 m!5436691))

(declare-fun m!5436693 () Bool)

(assert (=> b!4607109 m!5436693))

(declare-fun m!5436695 () Bool)

(assert (=> b!4607111 m!5436695))

(assert (=> b!4607111 m!5436691))

(assert (=> b!4607111 m!5436691))

(assert (=> b!4607111 m!5436693))

(declare-fun m!5436697 () Bool)

(assert (=> b!4607111 m!5436697))

(declare-fun m!5436699 () Bool)

(assert (=> bm!321333 m!5436699))

(assert (=> b!4607103 m!5436549))

(assert (=> b!4607103 m!5436687))

(assert (=> b!4607103 m!5436687))

(assert (=> b!4607103 m!5436689))

(assert (=> b!4607006 d!1451326))

(declare-fun bs!1014615 () Bool)

(declare-fun d!1451334 () Bool)

(assert (= bs!1014615 (and d!1451334 start!460496)))

(declare-fun lambda!187706 () Int)

(assert (=> bs!1014615 (= lambda!187706 lambda!187690)))

(declare-fun bs!1014617 () Bool)

(assert (= bs!1014617 (and d!1451334 d!1451322)))

(assert (=> bs!1014617 (= lambda!187706 lambda!187693)))

(declare-fun lt!1764187 () ListMap!3997)

(declare-fun invariantList!1143 (List!51307) Bool)

(assert (=> d!1451334 (invariantList!1143 (toList!4736 lt!1764187))))

(declare-fun e!2873779 () ListMap!3997)

(assert (=> d!1451334 (= lt!1764187 e!2873779)))

(declare-fun c!789208 () Bool)

(assert (=> d!1451334 (= c!789208 ((_ is Cons!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451334 (forall!10672 (toList!4735 lm!1477) lambda!187706)))

(assert (=> d!1451334 (= (extractMap!1420 (toList!4735 lm!1477)) lt!1764187)))

(declare-fun b!4607118 () Bool)

(declare-fun addToMapMapFromBucket!835 (List!51307 ListMap!3997) ListMap!3997)

(assert (=> b!4607118 (= e!2873779 (addToMapMapFromBucket!835 (_2!29240 (h!57170 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun b!4607119 () Bool)

(assert (=> b!4607119 (= e!2873779 (ListMap!3998 Nil!51183))))

(assert (= (and d!1451334 c!789208) b!4607118))

(assert (= (and d!1451334 (not c!789208)) b!4607119))

(declare-fun m!5436719 () Bool)

(assert (=> d!1451334 m!5436719))

(declare-fun m!5436721 () Bool)

(assert (=> d!1451334 m!5436721))

(assert (=> b!4607118 m!5436587))

(assert (=> b!4607118 m!5436587))

(declare-fun m!5436723 () Bool)

(assert (=> b!4607118 m!5436723))

(assert (=> b!4607006 d!1451334))

(declare-fun bs!1014623 () Bool)

(declare-fun d!1451344 () Bool)

(assert (= bs!1014623 (and d!1451344 start!460496)))

(declare-fun lambda!187712 () Int)

(assert (=> bs!1014623 (= lambda!187712 lambda!187690)))

(declare-fun bs!1014624 () Bool)

(assert (= bs!1014624 (and d!1451344 d!1451322)))

(assert (=> bs!1014624 (= lambda!187712 lambda!187693)))

(declare-fun bs!1014625 () Bool)

(assert (= bs!1014625 (and d!1451344 d!1451334)))

(assert (=> bs!1014625 (= lambda!187712 lambda!187706)))

(assert (=> d!1451344 (contains!14182 lm!1477 (hash!3291 hashF!1107 key!3287))))

(declare-fun lt!1764190 () Unit!109033)

(declare-fun choose!30975 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> d!1451344 (= lt!1764190 (choose!30975 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451344 (forall!10672 (toList!4735 lm!1477) lambda!187712)))

(assert (=> d!1451344 (= (lemmaInGenMapThenLongMapContainsHash!434 lm!1477 key!3287 hashF!1107) lt!1764190)))

(declare-fun bs!1014626 () Bool)

(assert (= bs!1014626 d!1451344))

(assert (=> bs!1014626 m!5436547))

(assert (=> bs!1014626 m!5436547))

(declare-fun m!5436727 () Bool)

(assert (=> bs!1014626 m!5436727))

(declare-fun m!5436729 () Bool)

(assert (=> bs!1014626 m!5436729))

(declare-fun m!5436731 () Bool)

(assert (=> bs!1014626 m!5436731))

(assert (=> b!4607017 d!1451344))

(declare-fun d!1451348 () Bool)

(assert (=> d!1451348 (dynLambda!21429 lambda!187690 lt!1764108)))

(declare-fun lt!1764193 () Unit!109033)

(declare-fun choose!30976 (List!51308 Int tuple2!51892) Unit!109033)

(assert (=> d!1451348 (= lt!1764193 (choose!30976 (toList!4735 lm!1477) lambda!187690 lt!1764108))))

(declare-fun e!2873794 () Bool)

(assert (=> d!1451348 e!2873794))

(declare-fun res!1928196 () Bool)

(assert (=> d!1451348 (=> (not res!1928196) (not e!2873794))))

(assert (=> d!1451348 (= res!1928196 (forall!10672 (toList!4735 lm!1477) lambda!187690))))

(assert (=> d!1451348 (= (forallContained!2917 (toList!4735 lm!1477) lambda!187690 lt!1764108) lt!1764193)))

(declare-fun b!4607136 () Bool)

(assert (=> b!4607136 (= e!2873794 (contains!14181 (toList!4735 lm!1477) lt!1764108))))

(assert (= (and d!1451348 res!1928196) b!4607136))

(declare-fun b_lambda!170105 () Bool)

(assert (=> (not b_lambda!170105) (not d!1451348)))

(declare-fun m!5436741 () Bool)

(assert (=> d!1451348 m!5436741))

(declare-fun m!5436743 () Bool)

(assert (=> d!1451348 m!5436743))

(assert (=> d!1451348 m!5436573))

(assert (=> b!4607136 m!5436601))

(assert (=> b!4607017 d!1451348))

(declare-fun d!1451354 () Bool)

(declare-datatypes ((Option!11435 0))(
  ( (None!11434) (Some!11434 (v!45480 List!51307)) )
))
(declare-fun get!16931 (Option!11435) List!51307)

(declare-fun getValueByKey!1353 (List!51308 (_ BitVec 64)) Option!11435)

(assert (=> d!1451354 (= (apply!12097 lm!1477 hash!344) (get!16931 (getValueByKey!1353 (toList!4735 lm!1477) hash!344)))))

(declare-fun bs!1014633 () Bool)

(assert (= bs!1014633 d!1451354))

(declare-fun m!5436749 () Bool)

(assert (=> bs!1014633 m!5436749))

(assert (=> bs!1014633 m!5436749))

(declare-fun m!5436751 () Bool)

(assert (=> bs!1014633 m!5436751))

(assert (=> b!4607017 d!1451354))

(declare-fun d!1451358 () Bool)

(declare-fun lt!1764199 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8689 (List!51308) (InoxSet tuple2!51892))

(assert (=> d!1451358 (= lt!1764199 (select (content!8689 (toList!4735 lm!1477)) lt!1764108))))

(declare-fun e!2873805 () Bool)

(assert (=> d!1451358 (= lt!1764199 e!2873805)))

(declare-fun res!1928207 () Bool)

(assert (=> d!1451358 (=> (not res!1928207) (not e!2873805))))

(assert (=> d!1451358 (= res!1928207 ((_ is Cons!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451358 (= (contains!14181 (toList!4735 lm!1477) lt!1764108) lt!1764199)))

(declare-fun b!4607147 () Bool)

(declare-fun e!2873806 () Bool)

(assert (=> b!4607147 (= e!2873805 e!2873806)))

(declare-fun res!1928208 () Bool)

(assert (=> b!4607147 (=> res!1928208 e!2873806)))

(assert (=> b!4607147 (= res!1928208 (= (h!57170 (toList!4735 lm!1477)) lt!1764108))))

(declare-fun b!4607148 () Bool)

(assert (=> b!4607148 (= e!2873806 (contains!14181 (t!358302 (toList!4735 lm!1477)) lt!1764108))))

(assert (= (and d!1451358 res!1928207) b!4607147))

(assert (= (and b!4607147 (not res!1928208)) b!4607148))

(declare-fun m!5436759 () Bool)

(assert (=> d!1451358 m!5436759))

(declare-fun m!5436761 () Bool)

(assert (=> d!1451358 m!5436761))

(assert (=> b!4607148 m!5436559))

(assert (=> b!4607017 d!1451358))

(declare-fun d!1451364 () Bool)

(declare-fun e!2873814 () Bool)

(assert (=> d!1451364 e!2873814))

(declare-fun res!1928213 () Bool)

(assert (=> d!1451364 (=> res!1928213 e!2873814)))

(declare-fun lt!1764214 () Bool)

(assert (=> d!1451364 (= res!1928213 (not lt!1764214))))

(declare-fun lt!1764213 () Bool)

(assert (=> d!1451364 (= lt!1764214 lt!1764213)))

(declare-fun lt!1764211 () Unit!109033)

(declare-fun e!2873813 () Unit!109033)

(assert (=> d!1451364 (= lt!1764211 e!2873813)))

(declare-fun c!789211 () Bool)

(assert (=> d!1451364 (= c!789211 lt!1764213)))

(declare-fun containsKey!2241 (List!51308 (_ BitVec 64)) Bool)

(assert (=> d!1451364 (= lt!1764213 (containsKey!2241 (toList!4735 lm!1477) lt!1764110))))

(assert (=> d!1451364 (= (contains!14182 lm!1477 lt!1764110) lt!1764214)))

(declare-fun b!4607157 () Bool)

(declare-fun lt!1764212 () Unit!109033)

(assert (=> b!4607157 (= e!2873813 lt!1764212)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (List!51308 (_ BitVec 64)) Unit!109033)

(assert (=> b!4607157 (= lt!1764212 (lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (toList!4735 lm!1477) lt!1764110))))

(declare-fun isDefined!8702 (Option!11435) Bool)

(assert (=> b!4607157 (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110))))

(declare-fun b!4607158 () Bool)

(declare-fun Unit!109043 () Unit!109033)

(assert (=> b!4607158 (= e!2873813 Unit!109043)))

(declare-fun b!4607159 () Bool)

(assert (=> b!4607159 (= e!2873814 (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110)))))

(assert (= (and d!1451364 c!789211) b!4607157))

(assert (= (and d!1451364 (not c!789211)) b!4607158))

(assert (= (and d!1451364 (not res!1928213)) b!4607159))

(declare-fun m!5436775 () Bool)

(assert (=> d!1451364 m!5436775))

(declare-fun m!5436777 () Bool)

(assert (=> b!4607157 m!5436777))

(declare-fun m!5436779 () Bool)

(assert (=> b!4607157 m!5436779))

(assert (=> b!4607157 m!5436779))

(declare-fun m!5436781 () Bool)

(assert (=> b!4607157 m!5436781))

(assert (=> b!4607159 m!5436779))

(assert (=> b!4607159 m!5436779))

(assert (=> b!4607159 m!5436781))

(assert (=> b!4607017 d!1451364))

(declare-fun d!1451372 () Bool)

(assert (=> d!1451372 (contains!14181 (toList!4735 lm!1477) (tuple2!51893 hash!344 lt!1764107))))

(declare-fun lt!1764220 () Unit!109033)

(declare-fun choose!30978 (List!51308 (_ BitVec 64) List!51307) Unit!109033)

(assert (=> d!1451372 (= lt!1764220 (choose!30978 (toList!4735 lm!1477) hash!344 lt!1764107))))

(declare-fun e!2873820 () Bool)

(assert (=> d!1451372 e!2873820))

(declare-fun res!1928219 () Bool)

(assert (=> d!1451372 (=> (not res!1928219) (not e!2873820))))

(assert (=> d!1451372 (= res!1928219 (isStrictlySorted!560 (toList!4735 lm!1477)))))

(assert (=> d!1451372 (= (lemmaGetValueByKeyImpliesContainsTuple!870 (toList!4735 lm!1477) hash!344 lt!1764107) lt!1764220)))

(declare-fun b!4607165 () Bool)

(assert (=> b!4607165 (= e!2873820 (= (getValueByKey!1353 (toList!4735 lm!1477) hash!344) (Some!11434 lt!1764107)))))

(assert (= (and d!1451372 res!1928219) b!4607165))

(declare-fun m!5436787 () Bool)

(assert (=> d!1451372 m!5436787))

(declare-fun m!5436789 () Bool)

(assert (=> d!1451372 m!5436789))

(assert (=> d!1451372 m!5436625))

(assert (=> b!4607165 m!5436749))

(assert (=> b!4607017 d!1451372))

(declare-fun b!4607179 () Bool)

(declare-fun e!2873830 () List!51307)

(assert (=> b!4607179 (= e!2873830 (t!358301 lt!1764107))))

(declare-fun b!4607181 () Bool)

(declare-fun e!2873831 () List!51307)

(assert (=> b!4607181 (= e!2873831 (Cons!51183 (h!57169 lt!1764107) (removePairForKey!985 (t!358301 lt!1764107) key!3287)))))

(declare-fun b!4607182 () Bool)

(assert (=> b!4607182 (= e!2873831 Nil!51183)))

(declare-fun b!4607180 () Bool)

(assert (=> b!4607180 (= e!2873830 e!2873831)))

(declare-fun c!789216 () Bool)

(assert (=> b!4607180 (= c!789216 ((_ is Cons!51183) lt!1764107))))

(declare-fun d!1451376 () Bool)

(declare-fun lt!1764227 () List!51307)

(assert (=> d!1451376 (not (containsKey!2238 lt!1764227 key!3287))))

(assert (=> d!1451376 (= lt!1764227 e!2873830)))

(declare-fun c!789217 () Bool)

(assert (=> d!1451376 (= c!789217 (and ((_ is Cons!51183) lt!1764107) (= (_1!29239 (h!57169 lt!1764107)) key!3287)))))

(assert (=> d!1451376 (noDuplicateKeys!1360 lt!1764107)))

(assert (=> d!1451376 (= (removePairForKey!985 lt!1764107 key!3287) lt!1764227)))

(assert (= (and d!1451376 c!789217) b!4607179))

(assert (= (and d!1451376 (not c!789217)) b!4607180))

(assert (= (and b!4607180 c!789216) b!4607181))

(assert (= (and b!4607180 (not c!789216)) b!4607182))

(declare-fun m!5436799 () Bool)

(assert (=> b!4607181 m!5436799))

(declare-fun m!5436801 () Bool)

(assert (=> d!1451376 m!5436801))

(declare-fun m!5436803 () Bool)

(assert (=> d!1451376 m!5436803))

(assert (=> b!4607017 d!1451376))

(declare-fun b!4607183 () Bool)

(declare-fun e!2873837 () Bool)

(assert (=> b!4607183 (= e!2873837 (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(declare-fun b!4607184 () Bool)

(declare-fun e!2873832 () Bool)

(assert (=> b!4607184 (= e!2873832 (not (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105))) key!3287)))))

(declare-fun b!4607185 () Bool)

(declare-fun e!2873834 () List!51310)

(assert (=> b!4607185 (= e!2873834 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))

(declare-fun b!4607186 () Bool)

(assert (=> b!4607186 false))

(declare-fun lt!1764231 () Unit!109033)

(declare-fun lt!1764235 () Unit!109033)

(assert (=> b!4607186 (= lt!1764231 lt!1764235)))

(assert (=> b!4607186 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287)))

(assert (=> b!4607186 (= lt!1764235 (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(declare-fun e!2873833 () Unit!109033)

(declare-fun Unit!109044 () Unit!109033)

(assert (=> b!4607186 (= e!2873833 Unit!109044)))

(declare-fun b!4607187 () Bool)

(declare-fun e!2873836 () Unit!109033)

(assert (=> b!4607187 (= e!2873836 e!2873833)))

(declare-fun c!789219 () Bool)

(declare-fun call!321339 () Bool)

(assert (=> b!4607187 (= c!789219 call!321339)))

(declare-fun b!4607189 () Bool)

(declare-fun e!2873835 () Bool)

(assert (=> b!4607189 (= e!2873835 e!2873837)))

(declare-fun res!1928227 () Bool)

(assert (=> b!4607189 (=> (not res!1928227) (not e!2873837))))

(assert (=> b!4607189 (= res!1928227 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287)))))

(declare-fun b!4607190 () Bool)

(assert (=> b!4607190 (= e!2873834 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105))))))

(declare-fun bm!321334 () Bool)

(assert (=> bm!321334 (= call!321339 (contains!14183 e!2873834 key!3287))))

(declare-fun c!789218 () Bool)

(declare-fun c!789220 () Bool)

(assert (=> bm!321334 (= c!789218 c!789220)))

(declare-fun b!4607191 () Bool)

(declare-fun lt!1764232 () Unit!109033)

(assert (=> b!4607191 (= e!2873836 lt!1764232)))

(declare-fun lt!1764234 () Unit!109033)

(assert (=> b!4607191 (= lt!1764234 (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> b!4607191 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(declare-fun lt!1764229 () Unit!109033)

(assert (=> b!4607191 (= lt!1764229 lt!1764234)))

(assert (=> b!4607191 (= lt!1764232 (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> b!4607191 call!321339))

(declare-fun d!1451382 () Bool)

(assert (=> d!1451382 e!2873835))

(declare-fun res!1928225 () Bool)

(assert (=> d!1451382 (=> res!1928225 e!2873835)))

(assert (=> d!1451382 (= res!1928225 e!2873832)))

(declare-fun res!1928226 () Bool)

(assert (=> d!1451382 (=> (not res!1928226) (not e!2873832))))

(declare-fun lt!1764230 () Bool)

(assert (=> d!1451382 (= res!1928226 (not lt!1764230))))

(declare-fun lt!1764228 () Bool)

(assert (=> d!1451382 (= lt!1764230 lt!1764228)))

(declare-fun lt!1764233 () Unit!109033)

(assert (=> d!1451382 (= lt!1764233 e!2873836)))

(assert (=> d!1451382 (= c!789220 lt!1764228)))

(assert (=> d!1451382 (= lt!1764228 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> d!1451382 (= (contains!14180 (extractMap!1420 (toList!4735 lt!1764105)) key!3287) lt!1764230)))

(declare-fun b!4607188 () Bool)

(declare-fun Unit!109045 () Unit!109033)

(assert (=> b!4607188 (= e!2873833 Unit!109045)))

(assert (= (and d!1451382 c!789220) b!4607191))

(assert (= (and d!1451382 (not c!789220)) b!4607187))

(assert (= (and b!4607187 c!789219) b!4607186))

(assert (= (and b!4607187 (not c!789219)) b!4607188))

(assert (= (or b!4607191 b!4607187) bm!321334))

(assert (= (and bm!321334 c!789218) b!4607185))

(assert (= (and bm!321334 (not c!789218)) b!4607190))

(assert (= (and d!1451382 res!1928226) b!4607184))

(assert (= (and d!1451382 (not res!1928225)) b!4607189))

(assert (= (and b!4607189 res!1928227) b!4607183))

(declare-fun m!5436805 () Bool)

(assert (=> b!4607186 m!5436805))

(declare-fun m!5436807 () Bool)

(assert (=> b!4607186 m!5436807))

(assert (=> d!1451382 m!5436805))

(declare-fun m!5436809 () Bool)

(assert (=> b!4607185 m!5436809))

(assert (=> b!4607184 m!5436583))

(declare-fun m!5436811 () Bool)

(assert (=> b!4607184 m!5436811))

(assert (=> b!4607184 m!5436811))

(declare-fun m!5436813 () Bool)

(assert (=> b!4607184 m!5436813))

(assert (=> b!4607190 m!5436583))

(assert (=> b!4607190 m!5436811))

(declare-fun m!5436815 () Bool)

(assert (=> b!4607189 m!5436815))

(assert (=> b!4607189 m!5436815))

(declare-fun m!5436817 () Bool)

(assert (=> b!4607189 m!5436817))

(declare-fun m!5436819 () Bool)

(assert (=> b!4607191 m!5436819))

(assert (=> b!4607191 m!5436815))

(assert (=> b!4607191 m!5436815))

(assert (=> b!4607191 m!5436817))

(declare-fun m!5436821 () Bool)

(assert (=> b!4607191 m!5436821))

(declare-fun m!5436823 () Bool)

(assert (=> bm!321334 m!5436823))

(assert (=> b!4607183 m!5436583))

(assert (=> b!4607183 m!5436811))

(assert (=> b!4607183 m!5436811))

(assert (=> b!4607183 m!5436813))

(assert (=> b!4607002 d!1451382))

(declare-fun b!4607192 () Bool)

(declare-fun e!2873843 () Bool)

(assert (=> b!4607192 (= e!2873843 (contains!14183 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(declare-fun b!4607193 () Bool)

(declare-fun e!2873838 () Bool)

(assert (=> b!4607193 (= e!2873838 (not (contains!14183 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287)))))

(declare-fun b!4607194 () Bool)

(declare-fun e!2873840 () List!51310)

(assert (=> b!4607194 (= e!2873840 (getKeysList!594 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))

(declare-fun b!4607195 () Bool)

(assert (=> b!4607195 false))

(declare-fun lt!1764239 () Unit!109033)

(declare-fun lt!1764243 () Unit!109033)

(assert (=> b!4607195 (= lt!1764239 lt!1764243)))

(assert (=> b!4607195 (containsKey!2240 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287)))

(assert (=> b!4607195 (= lt!1764243 (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(declare-fun e!2873839 () Unit!109033)

(declare-fun Unit!109046 () Unit!109033)

(assert (=> b!4607195 (= e!2873839 Unit!109046)))

(declare-fun b!4607196 () Bool)

(declare-fun e!2873842 () Unit!109033)

(assert (=> b!4607196 (= e!2873842 e!2873839)))

(declare-fun c!789222 () Bool)

(declare-fun call!321340 () Bool)

(assert (=> b!4607196 (= c!789222 call!321340)))

(declare-fun b!4607198 () Bool)

(declare-fun e!2873841 () Bool)

(assert (=> b!4607198 (= e!2873841 e!2873843)))

(declare-fun res!1928230 () Bool)

(assert (=> b!4607198 (=> (not res!1928230) (not e!2873843))))

(assert (=> b!4607198 (= res!1928230 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287)))))

(declare-fun b!4607199 () Bool)

(assert (=> b!4607199 (= e!2873840 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun bm!321335 () Bool)

(assert (=> bm!321335 (= call!321340 (contains!14183 e!2873840 key!3287))))

(declare-fun c!789221 () Bool)

(declare-fun c!789223 () Bool)

(assert (=> bm!321335 (= c!789221 c!789223)))

(declare-fun b!4607200 () Bool)

(declare-fun lt!1764240 () Unit!109033)

(assert (=> b!4607200 (= e!2873842 lt!1764240)))

(declare-fun lt!1764242 () Unit!109033)

(assert (=> b!4607200 (= lt!1764242 (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> b!4607200 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(declare-fun lt!1764237 () Unit!109033)

(assert (=> b!4607200 (= lt!1764237 lt!1764242)))

(assert (=> b!4607200 (= lt!1764240 (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> b!4607200 call!321340))

(declare-fun d!1451384 () Bool)

(assert (=> d!1451384 e!2873841))

(declare-fun res!1928228 () Bool)

(assert (=> d!1451384 (=> res!1928228 e!2873841)))

(assert (=> d!1451384 (= res!1928228 e!2873838)))

(declare-fun res!1928229 () Bool)

(assert (=> d!1451384 (=> (not res!1928229) (not e!2873838))))

(declare-fun lt!1764238 () Bool)

(assert (=> d!1451384 (= res!1928229 (not lt!1764238))))

(declare-fun lt!1764236 () Bool)

(assert (=> d!1451384 (= lt!1764238 lt!1764236)))

(declare-fun lt!1764241 () Unit!109033)

(assert (=> d!1451384 (= lt!1764241 e!2873842)))

(assert (=> d!1451384 (= c!789223 lt!1764236)))

(assert (=> d!1451384 (= lt!1764236 (containsKey!2240 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> d!1451384 (= (contains!14180 (extractMap!1420 (t!358302 (toList!4735 lm!1477))) key!3287) lt!1764238)))

(declare-fun b!4607197 () Bool)

(declare-fun Unit!109047 () Unit!109033)

(assert (=> b!4607197 (= e!2873839 Unit!109047)))

(assert (= (and d!1451384 c!789223) b!4607200))

(assert (= (and d!1451384 (not c!789223)) b!4607196))

(assert (= (and b!4607196 c!789222) b!4607195))

(assert (= (and b!4607196 (not c!789222)) b!4607197))

(assert (= (or b!4607200 b!4607196) bm!321335))

(assert (= (and bm!321335 c!789221) b!4607194))

(assert (= (and bm!321335 (not c!789221)) b!4607199))

(assert (= (and d!1451384 res!1928229) b!4607193))

(assert (= (and d!1451384 (not res!1928228)) b!4607198))

(assert (= (and b!4607198 res!1928230) b!4607192))

(declare-fun m!5436825 () Bool)

(assert (=> b!4607195 m!5436825))

(declare-fun m!5436827 () Bool)

(assert (=> b!4607195 m!5436827))

(assert (=> d!1451384 m!5436825))

(declare-fun m!5436829 () Bool)

(assert (=> b!4607194 m!5436829))

(assert (=> b!4607193 m!5436587))

(declare-fun m!5436831 () Bool)

(assert (=> b!4607193 m!5436831))

(assert (=> b!4607193 m!5436831))

(declare-fun m!5436833 () Bool)

(assert (=> b!4607193 m!5436833))

(assert (=> b!4607199 m!5436587))

(assert (=> b!4607199 m!5436831))

(declare-fun m!5436835 () Bool)

(assert (=> b!4607198 m!5436835))

(assert (=> b!4607198 m!5436835))

(declare-fun m!5436837 () Bool)

(assert (=> b!4607198 m!5436837))

(declare-fun m!5436839 () Bool)

(assert (=> b!4607200 m!5436839))

(assert (=> b!4607200 m!5436835))

(assert (=> b!4607200 m!5436835))

(assert (=> b!4607200 m!5436837))

(declare-fun m!5436841 () Bool)

(assert (=> b!4607200 m!5436841))

(declare-fun m!5436843 () Bool)

(assert (=> bm!321335 m!5436843))

(assert (=> b!4607192 m!5436587))

(assert (=> b!4607192 m!5436831))

(assert (=> b!4607192 m!5436831))

(assert (=> b!4607192 m!5436833))

(assert (=> b!4607002 d!1451384))

(declare-fun bs!1014651 () Bool)

(declare-fun d!1451386 () Bool)

(assert (= bs!1014651 (and d!1451386 start!460496)))

(declare-fun lambda!187725 () Int)

(assert (=> bs!1014651 (= lambda!187725 lambda!187690)))

(declare-fun bs!1014652 () Bool)

(assert (= bs!1014652 (and d!1451386 d!1451322)))

(assert (=> bs!1014652 (= lambda!187725 lambda!187693)))

(declare-fun bs!1014653 () Bool)

(assert (= bs!1014653 (and d!1451386 d!1451334)))

(assert (=> bs!1014653 (= lambda!187725 lambda!187706)))

(declare-fun bs!1014654 () Bool)

(assert (= bs!1014654 (and d!1451386 d!1451344)))

(assert (=> bs!1014654 (= lambda!187725 lambda!187712)))

(assert (=> d!1451386 (contains!14180 (extractMap!1420 (toList!4735 lt!1764105)) key!3287)))

(declare-fun lt!1764261 () Unit!109033)

(declare-fun choose!30982 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> d!1451386 (= lt!1764261 (choose!30982 lt!1764105 key!3287 hashF!1107))))

(assert (=> d!1451386 (forall!10672 (toList!4735 lt!1764105) lambda!187725)))

(assert (=> d!1451386 (= (lemmaListContainsThenExtractedMapContains!272 lt!1764105 key!3287 hashF!1107) lt!1764261)))

(declare-fun bs!1014655 () Bool)

(assert (= bs!1014655 d!1451386))

(assert (=> bs!1014655 m!5436583))

(assert (=> bs!1014655 m!5436583))

(assert (=> bs!1014655 m!5436585))

(declare-fun m!5436861 () Bool)

(assert (=> bs!1014655 m!5436861))

(declare-fun m!5436863 () Bool)

(assert (=> bs!1014655 m!5436863))

(assert (=> b!4607002 d!1451386))

(declare-fun bs!1014656 () Bool)

(declare-fun d!1451394 () Bool)

(assert (= bs!1014656 (and d!1451394 d!1451322)))

(declare-fun lambda!187726 () Int)

(assert (=> bs!1014656 (= lambda!187726 lambda!187693)))

(declare-fun bs!1014657 () Bool)

(assert (= bs!1014657 (and d!1451394 d!1451334)))

(assert (=> bs!1014657 (= lambda!187726 lambda!187706)))

(declare-fun bs!1014658 () Bool)

(assert (= bs!1014658 (and d!1451394 d!1451344)))

(assert (=> bs!1014658 (= lambda!187726 lambda!187712)))

(declare-fun bs!1014659 () Bool)

(assert (= bs!1014659 (and d!1451394 start!460496)))

(assert (=> bs!1014659 (= lambda!187726 lambda!187690)))

(declare-fun bs!1014660 () Bool)

(assert (= bs!1014660 (and d!1451394 d!1451386)))

(assert (=> bs!1014660 (= lambda!187726 lambda!187725)))

(declare-fun lt!1764262 () ListMap!3997)

(assert (=> d!1451394 (invariantList!1143 (toList!4736 lt!1764262))))

(declare-fun e!2873856 () ListMap!3997)

(assert (=> d!1451394 (= lt!1764262 e!2873856)))

(declare-fun c!789233 () Bool)

(assert (=> d!1451394 (= c!789233 ((_ is Cons!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451394 (forall!10672 (toList!4735 lt!1764105) lambda!187726)))

(assert (=> d!1451394 (= (extractMap!1420 (toList!4735 lt!1764105)) lt!1764262)))

(declare-fun b!4607226 () Bool)

(assert (=> b!4607226 (= e!2873856 (addToMapMapFromBucket!835 (_2!29240 (h!57170 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))))))

(declare-fun b!4607227 () Bool)

(assert (=> b!4607227 (= e!2873856 (ListMap!3998 Nil!51183))))

(assert (= (and d!1451394 c!789233) b!4607226))

(assert (= (and d!1451394 (not c!789233)) b!4607227))

(declare-fun m!5436865 () Bool)

(assert (=> d!1451394 m!5436865))

(declare-fun m!5436867 () Bool)

(assert (=> d!1451394 m!5436867))

(declare-fun m!5436869 () Bool)

(assert (=> b!4607226 m!5436869))

(assert (=> b!4607226 m!5436869))

(declare-fun m!5436871 () Bool)

(assert (=> b!4607226 m!5436871))

(assert (=> b!4607002 d!1451394))

(declare-fun bs!1014661 () Bool)

(declare-fun d!1451396 () Bool)

(assert (= bs!1014661 (and d!1451396 d!1451322)))

(declare-fun lambda!187727 () Int)

(assert (=> bs!1014661 (= lambda!187727 lambda!187693)))

(declare-fun bs!1014662 () Bool)

(assert (= bs!1014662 (and d!1451396 d!1451394)))

(assert (=> bs!1014662 (= lambda!187727 lambda!187726)))

(declare-fun bs!1014663 () Bool)

(assert (= bs!1014663 (and d!1451396 d!1451334)))

(assert (=> bs!1014663 (= lambda!187727 lambda!187706)))

(declare-fun bs!1014664 () Bool)

(assert (= bs!1014664 (and d!1451396 d!1451344)))

(assert (=> bs!1014664 (= lambda!187727 lambda!187712)))

(declare-fun bs!1014665 () Bool)

(assert (= bs!1014665 (and d!1451396 start!460496)))

(assert (=> bs!1014665 (= lambda!187727 lambda!187690)))

(declare-fun bs!1014666 () Bool)

(assert (= bs!1014666 (and d!1451396 d!1451386)))

(assert (=> bs!1014666 (= lambda!187727 lambda!187725)))

(declare-fun lt!1764263 () ListMap!3997)

(assert (=> d!1451396 (invariantList!1143 (toList!4736 lt!1764263))))

(declare-fun e!2873857 () ListMap!3997)

(assert (=> d!1451396 (= lt!1764263 e!2873857)))

(declare-fun c!789234 () Bool)

(assert (=> d!1451396 (= c!789234 ((_ is Cons!51184) (t!358302 (toList!4735 lm!1477))))))

(assert (=> d!1451396 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187727)))

(assert (=> d!1451396 (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764263)))

(declare-fun b!4607228 () Bool)

(assert (=> b!4607228 (= e!2873857 (addToMapMapFromBucket!835 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))))))

(declare-fun b!4607229 () Bool)

(assert (=> b!4607229 (= e!2873857 (ListMap!3998 Nil!51183))))

(assert (= (and d!1451396 c!789234) b!4607228))

(assert (= (and d!1451396 (not c!789234)) b!4607229))

(declare-fun m!5436873 () Bool)

(assert (=> d!1451396 m!5436873))

(declare-fun m!5436875 () Bool)

(assert (=> d!1451396 m!5436875))

(declare-fun m!5436877 () Bool)

(assert (=> b!4607228 m!5436877))

(assert (=> b!4607228 m!5436877))

(declare-fun m!5436879 () Bool)

(assert (=> b!4607228 m!5436879))

(assert (=> b!4607002 d!1451396))

(declare-fun d!1451398 () Bool)

(declare-fun res!1928238 () Bool)

(declare-fun e!2873862 () Bool)

(assert (=> d!1451398 (=> res!1928238 e!2873862)))

(assert (=> d!1451398 (= res!1928238 (and ((_ is Cons!51183) lt!1764107) (= (_1!29239 (h!57169 lt!1764107)) key!3287)))))

(assert (=> d!1451398 (= (containsKey!2238 lt!1764107 key!3287) e!2873862)))

(declare-fun b!4607234 () Bool)

(declare-fun e!2873863 () Bool)

(assert (=> b!4607234 (= e!2873862 e!2873863)))

(declare-fun res!1928239 () Bool)

(assert (=> b!4607234 (=> (not res!1928239) (not e!2873863))))

(assert (=> b!4607234 (= res!1928239 ((_ is Cons!51183) lt!1764107))))

(declare-fun b!4607235 () Bool)

(assert (=> b!4607235 (= e!2873863 (containsKey!2238 (t!358301 lt!1764107) key!3287))))

(assert (= (and d!1451398 (not res!1928238)) b!4607234))

(assert (= (and b!4607234 res!1928239) b!4607235))

(declare-fun m!5436881 () Bool)

(assert (=> b!4607235 m!5436881))

(assert (=> b!4607013 d!1451398))

(declare-fun d!1451400 () Bool)

(declare-fun lt!1764264 () Bool)

(assert (=> d!1451400 (= lt!1764264 (select (content!8689 (t!358302 (toList!4735 lm!1477))) lt!1764108))))

(declare-fun e!2873864 () Bool)

(assert (=> d!1451400 (= lt!1764264 e!2873864)))

(declare-fun res!1928240 () Bool)

(assert (=> d!1451400 (=> (not res!1928240) (not e!2873864))))

(assert (=> d!1451400 (= res!1928240 ((_ is Cons!51184) (t!358302 (toList!4735 lm!1477))))))

(assert (=> d!1451400 (= (contains!14181 (t!358302 (toList!4735 lm!1477)) lt!1764108) lt!1764264)))

(declare-fun b!4607236 () Bool)

(declare-fun e!2873865 () Bool)

(assert (=> b!4607236 (= e!2873864 e!2873865)))

(declare-fun res!1928241 () Bool)

(assert (=> b!4607236 (=> res!1928241 e!2873865)))

(assert (=> b!4607236 (= res!1928241 (= (h!57170 (t!358302 (toList!4735 lm!1477))) lt!1764108))))

(declare-fun b!4607237 () Bool)

(assert (=> b!4607237 (= e!2873865 (contains!14181 (t!358302 (t!358302 (toList!4735 lm!1477))) lt!1764108))))

(assert (= (and d!1451400 res!1928240) b!4607236))

(assert (= (and b!4607236 (not res!1928241)) b!4607237))

(declare-fun m!5436883 () Bool)

(assert (=> d!1451400 m!5436883))

(declare-fun m!5436885 () Bool)

(assert (=> d!1451400 m!5436885))

(declare-fun m!5436887 () Bool)

(assert (=> b!4607237 m!5436887))

(assert (=> b!4607003 d!1451400))

(declare-fun d!1451402 () Bool)

(declare-fun res!1928246 () Bool)

(declare-fun e!2873870 () Bool)

(assert (=> d!1451402 (=> res!1928246 e!2873870)))

(assert (=> d!1451402 (= res!1928246 (not ((_ is Cons!51183) newBucket!178)))))

(assert (=> d!1451402 (= (noDuplicateKeys!1360 newBucket!178) e!2873870)))

(declare-fun b!4607242 () Bool)

(declare-fun e!2873871 () Bool)

(assert (=> b!4607242 (= e!2873870 e!2873871)))

(declare-fun res!1928247 () Bool)

(assert (=> b!4607242 (=> (not res!1928247) (not e!2873871))))

(assert (=> b!4607242 (= res!1928247 (not (containsKey!2238 (t!358301 newBucket!178) (_1!29239 (h!57169 newBucket!178)))))))

(declare-fun b!4607243 () Bool)

(assert (=> b!4607243 (= e!2873871 (noDuplicateKeys!1360 (t!358301 newBucket!178)))))

(assert (= (and d!1451402 (not res!1928246)) b!4607242))

(assert (= (and b!4607242 res!1928247) b!4607243))

(declare-fun m!5436889 () Bool)

(assert (=> b!4607242 m!5436889))

(declare-fun m!5436891 () Bool)

(assert (=> b!4607243 m!5436891))

(assert (=> b!4607014 d!1451402))

(declare-fun d!1451404 () Bool)

(declare-fun res!1928248 () Bool)

(declare-fun e!2873872 () Bool)

(assert (=> d!1451404 (=> res!1928248 e!2873872)))

(assert (=> d!1451404 (= res!1928248 ((_ is Nil!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451404 (= (forall!10672 (toList!4735 lt!1764105) lambda!187690) e!2873872)))

(declare-fun b!4607244 () Bool)

(declare-fun e!2873873 () Bool)

(assert (=> b!4607244 (= e!2873872 e!2873873)))

(declare-fun res!1928249 () Bool)

(assert (=> b!4607244 (=> (not res!1928249) (not e!2873873))))

(assert (=> b!4607244 (= res!1928249 (dynLambda!21429 lambda!187690 (h!57170 (toList!4735 lt!1764105))))))

(declare-fun b!4607245 () Bool)

(assert (=> b!4607245 (= e!2873873 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187690))))

(assert (= (and d!1451404 (not res!1928248)) b!4607244))

(assert (= (and b!4607244 res!1928249) b!4607245))

(declare-fun b_lambda!170111 () Bool)

(assert (=> (not b_lambda!170111) (not b!4607244)))

(declare-fun m!5436893 () Bool)

(assert (=> b!4607244 m!5436893))

(declare-fun m!5436895 () Bool)

(assert (=> b!4607245 m!5436895))

(assert (=> b!4607004 d!1451404))

(declare-fun bs!1014676 () Bool)

(declare-fun d!1451406 () Bool)

(assert (= bs!1014676 (and d!1451406 d!1451394)))

(declare-fun lambda!187733 () Int)

(assert (=> bs!1014676 (not (= lambda!187733 lambda!187726))))

(declare-fun bs!1014677 () Bool)

(assert (= bs!1014677 (and d!1451406 d!1451334)))

(assert (=> bs!1014677 (not (= lambda!187733 lambda!187706))))

(declare-fun bs!1014678 () Bool)

(assert (= bs!1014678 (and d!1451406 d!1451344)))

(assert (=> bs!1014678 (not (= lambda!187733 lambda!187712))))

(declare-fun bs!1014679 () Bool)

(assert (= bs!1014679 (and d!1451406 start!460496)))

(assert (=> bs!1014679 (not (= lambda!187733 lambda!187690))))

(declare-fun bs!1014680 () Bool)

(assert (= bs!1014680 (and d!1451406 d!1451386)))

(assert (=> bs!1014680 (not (= lambda!187733 lambda!187725))))

(declare-fun bs!1014681 () Bool)

(assert (= bs!1014681 (and d!1451406 d!1451396)))

(assert (=> bs!1014681 (not (= lambda!187733 lambda!187727))))

(declare-fun bs!1014682 () Bool)

(assert (= bs!1014682 (and d!1451406 d!1451322)))

(assert (=> bs!1014682 (not (= lambda!187733 lambda!187693))))

(assert (=> d!1451406 true))

(assert (=> d!1451406 (= (allKeysSameHashInMap!1471 lt!1764105 hashF!1107) (forall!10672 (toList!4735 lt!1764105) lambda!187733))))

(declare-fun bs!1014684 () Bool)

(assert (= bs!1014684 d!1451406))

(declare-fun m!5436921 () Bool)

(assert (=> bs!1014684 m!5436921))

(assert (=> b!4607010 d!1451406))

(declare-fun d!1451412 () Bool)

(declare-fun e!2873882 () Bool)

(assert (=> d!1451412 e!2873882))

(declare-fun res!1928253 () Bool)

(assert (=> d!1451412 (=> res!1928253 e!2873882)))

(declare-fun lt!1764280 () Bool)

(assert (=> d!1451412 (= res!1928253 (not lt!1764280))))

(declare-fun lt!1764279 () Bool)

(assert (=> d!1451412 (= lt!1764280 lt!1764279)))

(declare-fun lt!1764277 () Unit!109033)

(declare-fun e!2873881 () Unit!109033)

(assert (=> d!1451412 (= lt!1764277 e!2873881)))

(declare-fun c!789239 () Bool)

(assert (=> d!1451412 (= c!789239 lt!1764279)))

(assert (=> d!1451412 (= lt!1764279 (containsKey!2241 (toList!4735 lt!1764105) hash!344))))

(assert (=> d!1451412 (= (contains!14182 lt!1764105 hash!344) lt!1764280)))

(declare-fun b!4607259 () Bool)

(declare-fun lt!1764278 () Unit!109033)

(assert (=> b!4607259 (= e!2873881 lt!1764278)))

(assert (=> b!4607259 (= lt!1764278 (lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (toList!4735 lt!1764105) hash!344))))

(assert (=> b!4607259 (isDefined!8702 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344))))

(declare-fun b!4607260 () Bool)

(declare-fun Unit!109049 () Unit!109033)

(assert (=> b!4607260 (= e!2873881 Unit!109049)))

(declare-fun b!4607261 () Bool)

(assert (=> b!4607261 (= e!2873882 (isDefined!8702 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344)))))

(assert (= (and d!1451412 c!789239) b!4607259))

(assert (= (and d!1451412 (not c!789239)) b!4607260))

(assert (= (and d!1451412 (not res!1928253)) b!4607261))

(declare-fun m!5436923 () Bool)

(assert (=> d!1451412 m!5436923))

(declare-fun m!5436925 () Bool)

(assert (=> b!4607259 m!5436925))

(declare-fun m!5436927 () Bool)

(assert (=> b!4607259 m!5436927))

(assert (=> b!4607259 m!5436927))

(declare-fun m!5436929 () Bool)

(assert (=> b!4607259 m!5436929))

(assert (=> b!4607261 m!5436927))

(assert (=> b!4607261 m!5436927))

(assert (=> b!4607261 m!5436929))

(assert (=> b!4607012 d!1451412))

(declare-fun d!1451414 () Bool)

(declare-fun tail!8014 (List!51308) List!51308)

(assert (=> d!1451414 (= (tail!8013 lm!1477) (ListLongMap!3368 (tail!8014 (toList!4735 lm!1477))))))

(declare-fun bs!1014693 () Bool)

(assert (= bs!1014693 d!1451414))

(declare-fun m!5436937 () Bool)

(assert (=> bs!1014693 m!5436937))

(assert (=> b!4607012 d!1451414))

(declare-fun d!1451418 () Bool)

(declare-fun res!1928267 () Bool)

(declare-fun e!2873897 () Bool)

(assert (=> d!1451418 (=> res!1928267 e!2873897)))

(declare-fun e!2873898 () Bool)

(assert (=> d!1451418 (= res!1928267 e!2873898)))

(declare-fun res!1928269 () Bool)

(assert (=> d!1451418 (=> (not res!1928269) (not e!2873898))))

(assert (=> d!1451418 (= res!1928269 ((_ is Cons!51184) (t!358302 (toList!4735 lm!1477))))))

(assert (=> d!1451418 (= (containsKeyBiggerList!300 (t!358302 (toList!4735 lm!1477)) key!3287) e!2873897)))

(declare-fun b!4607277 () Bool)

(assert (=> b!4607277 (= e!2873898 (containsKey!2238 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(declare-fun b!4607278 () Bool)

(declare-fun e!2873899 () Bool)

(assert (=> b!4607278 (= e!2873897 e!2873899)))

(declare-fun res!1928268 () Bool)

(assert (=> b!4607278 (=> (not res!1928268) (not e!2873899))))

(assert (=> b!4607278 (= res!1928268 ((_ is Cons!51184) (t!358302 (toList!4735 lm!1477))))))

(declare-fun b!4607279 () Bool)

(assert (=> b!4607279 (= e!2873899 (containsKeyBiggerList!300 (t!358302 (t!358302 (toList!4735 lm!1477))) key!3287))))

(assert (= (and d!1451418 res!1928269) b!4607277))

(assert (= (and d!1451418 (not res!1928267)) b!4607278))

(assert (= (and b!4607278 res!1928268) b!4607279))

(declare-fun m!5436949 () Bool)

(assert (=> b!4607277 m!5436949))

(declare-fun m!5436951 () Bool)

(assert (=> b!4607279 m!5436951))

(assert (=> b!4607007 d!1451418))

(declare-fun d!1451424 () Bool)

(declare-fun res!1928270 () Bool)

(declare-fun e!2873900 () Bool)

(assert (=> d!1451424 (=> res!1928270 e!2873900)))

(declare-fun e!2873901 () Bool)

(assert (=> d!1451424 (= res!1928270 e!2873901)))

(declare-fun res!1928272 () Bool)

(assert (=> d!1451424 (=> (not res!1928272) (not e!2873901))))

(assert (=> d!1451424 (= res!1928272 ((_ is Cons!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451424 (= (containsKeyBiggerList!300 (toList!4735 lt!1764105) key!3287) e!2873900)))

(declare-fun b!4607280 () Bool)

(assert (=> b!4607280 (= e!2873901 (containsKey!2238 (_2!29240 (h!57170 (toList!4735 lt!1764105))) key!3287))))

(declare-fun b!4607281 () Bool)

(declare-fun e!2873902 () Bool)

(assert (=> b!4607281 (= e!2873900 e!2873902)))

(declare-fun res!1928271 () Bool)

(assert (=> b!4607281 (=> (not res!1928271) (not e!2873902))))

(assert (=> b!4607281 (= res!1928271 ((_ is Cons!51184) (toList!4735 lt!1764105)))))

(declare-fun b!4607282 () Bool)

(assert (=> b!4607282 (= e!2873902 (containsKeyBiggerList!300 (t!358302 (toList!4735 lt!1764105)) key!3287))))

(assert (= (and d!1451424 res!1928272) b!4607280))

(assert (= (and d!1451424 (not res!1928270)) b!4607281))

(assert (= (and b!4607281 res!1928271) b!4607282))

(declare-fun m!5436953 () Bool)

(assert (=> b!4607280 m!5436953))

(declare-fun m!5436955 () Bool)

(assert (=> b!4607282 m!5436955))

(assert (=> b!4607007 d!1451424))

(declare-fun bs!1014698 () Bool)

(declare-fun d!1451426 () Bool)

(assert (= bs!1014698 (and d!1451426 d!1451394)))

(declare-fun lambda!187737 () Int)

(assert (=> bs!1014698 (= lambda!187737 lambda!187726)))

(declare-fun bs!1014699 () Bool)

(assert (= bs!1014699 (and d!1451426 d!1451334)))

(assert (=> bs!1014699 (= lambda!187737 lambda!187706)))

(declare-fun bs!1014700 () Bool)

(assert (= bs!1014700 (and d!1451426 d!1451344)))

(assert (=> bs!1014700 (= lambda!187737 lambda!187712)))

(declare-fun bs!1014701 () Bool)

(assert (= bs!1014701 (and d!1451426 d!1451386)))

(assert (=> bs!1014701 (= lambda!187737 lambda!187725)))

(declare-fun bs!1014702 () Bool)

(assert (= bs!1014702 (and d!1451426 d!1451396)))

(assert (=> bs!1014702 (= lambda!187737 lambda!187727)))

(declare-fun bs!1014703 () Bool)

(assert (= bs!1014703 (and d!1451426 d!1451322)))

(assert (=> bs!1014703 (= lambda!187737 lambda!187693)))

(declare-fun bs!1014704 () Bool)

(assert (= bs!1014704 (and d!1451426 start!460496)))

(assert (=> bs!1014704 (= lambda!187737 lambda!187690)))

(declare-fun bs!1014705 () Bool)

(assert (= bs!1014705 (and d!1451426 d!1451406)))

(assert (=> bs!1014705 (not (= lambda!187737 lambda!187733))))

(assert (=> d!1451426 (containsKeyBiggerList!300 (toList!4735 lt!1764105) key!3287)))

(declare-fun lt!1764287 () Unit!109033)

(declare-fun choose!30985 (ListLongMap!3367 K!12550 Hashable!5759) Unit!109033)

(assert (=> d!1451426 (= lt!1764287 (choose!30985 lt!1764105 key!3287 hashF!1107))))

(assert (=> d!1451426 (forall!10672 (toList!4735 lt!1764105) lambda!187737)))

(assert (=> d!1451426 (= (lemmaInLongMapThenContainsKeyBiggerList!170 lt!1764105 key!3287 hashF!1107) lt!1764287)))

(declare-fun bs!1014706 () Bool)

(assert (= bs!1014706 d!1451426))

(assert (=> bs!1014706 m!5436565))

(declare-fun m!5436965 () Bool)

(assert (=> bs!1014706 m!5436965))

(declare-fun m!5436967 () Bool)

(assert (=> bs!1014706 m!5436967))

(assert (=> b!4607007 d!1451426))

(declare-fun d!1451434 () Bool)

(declare-fun hash!3293 (Hashable!5759 K!12550) (_ BitVec 64))

(assert (=> d!1451434 (= (hash!3291 hashF!1107 key!3287) (hash!3293 hashF!1107 key!3287))))

(declare-fun bs!1014707 () Bool)

(assert (= bs!1014707 d!1451434))

(declare-fun m!5436969 () Bool)

(assert (=> bs!1014707 m!5436969))

(assert (=> b!4607018 d!1451434))

(declare-fun bs!1014708 () Bool)

(declare-fun d!1451436 () Bool)

(assert (= bs!1014708 (and d!1451436 d!1451394)))

(declare-fun lambda!187738 () Int)

(assert (=> bs!1014708 (not (= lambda!187738 lambda!187726))))

(declare-fun bs!1014709 () Bool)

(assert (= bs!1014709 (and d!1451436 d!1451334)))

(assert (=> bs!1014709 (not (= lambda!187738 lambda!187706))))

(declare-fun bs!1014710 () Bool)

(assert (= bs!1014710 (and d!1451436 d!1451344)))

(assert (=> bs!1014710 (not (= lambda!187738 lambda!187712))))

(declare-fun bs!1014711 () Bool)

(assert (= bs!1014711 (and d!1451436 d!1451426)))

(assert (=> bs!1014711 (not (= lambda!187738 lambda!187737))))

(declare-fun bs!1014712 () Bool)

(assert (= bs!1014712 (and d!1451436 d!1451386)))

(assert (=> bs!1014712 (not (= lambda!187738 lambda!187725))))

(declare-fun bs!1014713 () Bool)

(assert (= bs!1014713 (and d!1451436 d!1451396)))

(assert (=> bs!1014713 (not (= lambda!187738 lambda!187727))))

(declare-fun bs!1014714 () Bool)

(assert (= bs!1014714 (and d!1451436 d!1451322)))

(assert (=> bs!1014714 (not (= lambda!187738 lambda!187693))))

(declare-fun bs!1014715 () Bool)

(assert (= bs!1014715 (and d!1451436 start!460496)))

(assert (=> bs!1014715 (not (= lambda!187738 lambda!187690))))

(declare-fun bs!1014716 () Bool)

(assert (= bs!1014716 (and d!1451436 d!1451406)))

(assert (=> bs!1014716 (= lambda!187738 lambda!187733)))

(assert (=> d!1451436 true))

(assert (=> d!1451436 (= (allKeysSameHashInMap!1471 lm!1477 hashF!1107) (forall!10672 (toList!4735 lm!1477) lambda!187738))))

(declare-fun bs!1014717 () Bool)

(assert (= bs!1014717 d!1451436))

(declare-fun m!5436971 () Bool)

(assert (=> bs!1014717 m!5436971))

(assert (=> b!4607008 d!1451436))

(declare-fun d!1451438 () Bool)

(assert (=> d!1451438 (= (apply!12097 lt!1764105 hash!344) (get!16931 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344)))))

(declare-fun bs!1014718 () Bool)

(assert (= bs!1014718 d!1451438))

(assert (=> bs!1014718 m!5436927))

(assert (=> bs!1014718 m!5436927))

(declare-fun m!5436973 () Bool)

(assert (=> bs!1014718 m!5436973))

(assert (=> b!4607020 d!1451438))

(declare-fun b!4607297 () Bool)

(declare-fun e!2873911 () Bool)

(declare-fun tp!1340929 () Bool)

(declare-fun tp!1340930 () Bool)

(assert (=> b!4607297 (= e!2873911 (and tp!1340929 tp!1340930))))

(assert (=> b!4607019 (= tp!1340914 e!2873911)))

(assert (= (and b!4607019 ((_ is Cons!51184) (toList!4735 lm!1477))) b!4607297))

(declare-fun b!4607302 () Bool)

(declare-fun tp!1340933 () Bool)

(declare-fun e!2873914 () Bool)

(assert (=> b!4607302 (= e!2873914 (and tp_is_empty!28733 tp_is_empty!28735 tp!1340933))))

(assert (=> b!4607009 (= tp!1340915 e!2873914)))

(assert (= (and b!4607009 ((_ is Cons!51183) (t!358301 newBucket!178))) b!4607302))

(declare-fun b_lambda!170119 () Bool)

(assert (= b_lambda!170105 (or start!460496 b_lambda!170119)))

(declare-fun bs!1014719 () Bool)

(declare-fun d!1451440 () Bool)

(assert (= bs!1014719 (and d!1451440 start!460496)))

(assert (=> bs!1014719 (= (dynLambda!21429 lambda!187690 lt!1764108) (noDuplicateKeys!1360 (_2!29240 lt!1764108)))))

(declare-fun m!5436975 () Bool)

(assert (=> bs!1014719 m!5436975))

(assert (=> d!1451348 d!1451440))

(declare-fun b_lambda!170121 () Bool)

(assert (= b_lambda!170111 (or start!460496 b_lambda!170121)))

(declare-fun bs!1014720 () Bool)

(declare-fun d!1451442 () Bool)

(assert (= bs!1014720 (and d!1451442 start!460496)))

(assert (=> bs!1014720 (= (dynLambda!21429 lambda!187690 (h!57170 (toList!4735 lt!1764105))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(declare-fun m!5436977 () Bool)

(assert (=> bs!1014720 m!5436977))

(assert (=> b!4607244 d!1451442))

(declare-fun b_lambda!170123 () Bool)

(assert (= b_lambda!170103 (or start!460496 b_lambda!170123)))

(declare-fun bs!1014721 () Bool)

(declare-fun d!1451444 () Bool)

(assert (= bs!1014721 (and d!1451444 start!460496)))

(assert (=> bs!1014721 (= (dynLambda!21429 lambda!187690 (h!57170 (toList!4735 lm!1477))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(declare-fun m!5436979 () Bool)

(assert (=> bs!1014721 m!5436979))

(assert (=> b!4607037 d!1451444))

(check-sat (not bs!1014721) tp_is_empty!28735 (not b!4607195) (not b!4607191) (not b!4607279) (not b!4607136) (not d!1451354) (not b!4607157) (not b!4607226) (not b!4607184) (not b!4607159) (not b!4607106) tp_is_empty!28733 (not bm!321335) (not b!4607237) (not d!1451320) (not b!4607199) (not b!4607282) (not bs!1014720) (not d!1451334) (not b!4607193) (not b!4607198) (not d!1451434) (not d!1451344) (not bs!1014719) (not b!4607242) (not b!4607103) (not d!1451384) (not bm!321333) (not b!4607185) (not b_lambda!170121) (not b!4607302) (not d!1451400) (not d!1451436) (not b!4607297) (not b_lambda!170123) (not b!4607110) (not b!4607192) (not d!1451364) (not d!1451324) (not d!1451386) (not b_lambda!170119) (not b!4607259) (not d!1451348) (not b!4607183) (not d!1451358) (not d!1451414) (not b!4607111) (not d!1451394) (not b!4607105) (not b!4607165) (not b!4607194) (not b!4607181) (not d!1451426) (not b!4607104) (not b!4607109) (not b!4607280) (not b!4607235) (not d!1451322) (not b!4607228) (not b!4607186) (not d!1451412) (not bm!321334) (not d!1451372) (not b!4607190) (not d!1451326) (not b!4607189) (not b!4607200) (not b!4607277) (not d!1451382) (not b!4607118) (not d!1451376) (not d!1451438) (not b!4607245) (not b!4607243) (not b!4607038) (not b!4607261) (not b!4607148) (not d!1451396) (not d!1451406))
(check-sat)
(get-model)

(declare-fun d!1451446 () Bool)

(declare-fun res!1928273 () Bool)

(declare-fun e!2873915 () Bool)

(assert (=> d!1451446 (=> res!1928273 e!2873915)))

(declare-fun e!2873916 () Bool)

(assert (=> d!1451446 (= res!1928273 e!2873916)))

(declare-fun res!1928275 () Bool)

(assert (=> d!1451446 (=> (not res!1928275) (not e!2873916))))

(assert (=> d!1451446 (= res!1928275 ((_ is Cons!51184) (t!358302 (toList!4735 lt!1764105))))))

(assert (=> d!1451446 (= (containsKeyBiggerList!300 (t!358302 (toList!4735 lt!1764105)) key!3287) e!2873915)))

(declare-fun b!4607303 () Bool)

(assert (=> b!4607303 (= e!2873916 (containsKey!2238 (_2!29240 (h!57170 (t!358302 (toList!4735 lt!1764105)))) key!3287))))

(declare-fun b!4607304 () Bool)

(declare-fun e!2873917 () Bool)

(assert (=> b!4607304 (= e!2873915 e!2873917)))

(declare-fun res!1928274 () Bool)

(assert (=> b!4607304 (=> (not res!1928274) (not e!2873917))))

(assert (=> b!4607304 (= res!1928274 ((_ is Cons!51184) (t!358302 (toList!4735 lt!1764105))))))

(declare-fun b!4607305 () Bool)

(assert (=> b!4607305 (= e!2873917 (containsKeyBiggerList!300 (t!358302 (t!358302 (toList!4735 lt!1764105))) key!3287))))

(assert (= (and d!1451446 res!1928275) b!4607303))

(assert (= (and d!1451446 (not res!1928273)) b!4607304))

(assert (= (and b!4607304 res!1928274) b!4607305))

(declare-fun m!5436981 () Bool)

(assert (=> b!4607303 m!5436981))

(declare-fun m!5436983 () Bool)

(assert (=> b!4607305 m!5436983))

(assert (=> b!4607282 d!1451446))

(declare-fun b!4607313 () Bool)

(assert (=> b!4607313 true))

(declare-fun d!1451448 () Bool)

(declare-fun e!2873920 () Bool)

(assert (=> d!1451448 e!2873920))

(declare-fun res!1928282 () Bool)

(assert (=> d!1451448 (=> (not res!1928282) (not e!2873920))))

(declare-fun lt!1764290 () List!51310)

(declare-fun noDuplicate!823 (List!51310) Bool)

(assert (=> d!1451448 (= res!1928282 (noDuplicate!823 lt!1764290))))

(assert (=> d!1451448 (= lt!1764290 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))

(assert (=> d!1451448 (= (keys!17947 (extractMap!1420 (toList!4735 lt!1764105))) lt!1764290)))

(declare-fun b!4607312 () Bool)

(declare-fun res!1928283 () Bool)

(assert (=> b!4607312 (=> (not res!1928283) (not e!2873920))))

(declare-fun length!502 (List!51310) Int)

(declare-fun length!503 (List!51307) Int)

(assert (=> b!4607312 (= res!1928283 (= (length!502 lt!1764290) (length!503 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))))

(declare-fun res!1928284 () Bool)

(assert (=> b!4607313 (=> (not res!1928284) (not e!2873920))))

(declare-fun lambda!187743 () Int)

(declare-fun forall!10675 (List!51310 Int) Bool)

(assert (=> b!4607313 (= res!1928284 (forall!10675 lt!1764290 lambda!187743))))

(declare-fun b!4607314 () Bool)

(declare-fun lambda!187744 () Int)

(declare-fun content!8690 (List!51310) (InoxSet K!12550))

(declare-fun map!11316 (List!51307 Int) List!51310)

(assert (=> b!4607314 (= e!2873920 (= (content!8690 lt!1764290) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) lambda!187744))))))

(assert (= (and d!1451448 res!1928282) b!4607312))

(assert (= (and b!4607312 res!1928283) b!4607313))

(assert (= (and b!4607313 res!1928284) b!4607314))

(declare-fun m!5436985 () Bool)

(assert (=> d!1451448 m!5436985))

(assert (=> d!1451448 m!5436809))

(declare-fun m!5436987 () Bool)

(assert (=> b!4607312 m!5436987))

(declare-fun m!5436989 () Bool)

(assert (=> b!4607312 m!5436989))

(declare-fun m!5436991 () Bool)

(assert (=> b!4607313 m!5436991))

(declare-fun m!5436993 () Bool)

(assert (=> b!4607314 m!5436993))

(declare-fun m!5436995 () Bool)

(assert (=> b!4607314 m!5436995))

(assert (=> b!4607314 m!5436995))

(declare-fun m!5436997 () Bool)

(assert (=> b!4607314 m!5436997))

(assert (=> b!4607190 d!1451448))

(declare-fun d!1451450 () Bool)

(declare-fun res!1928285 () Bool)

(declare-fun e!2873921 () Bool)

(assert (=> d!1451450 (=> res!1928285 e!2873921)))

(assert (=> d!1451450 (= res!1928285 (not ((_ is Cons!51183) (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(assert (=> d!1451450 (= (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105)))) e!2873921)))

(declare-fun b!4607317 () Bool)

(declare-fun e!2873922 () Bool)

(assert (=> b!4607317 (= e!2873921 e!2873922)))

(declare-fun res!1928286 () Bool)

(assert (=> b!4607317 (=> (not res!1928286) (not e!2873922))))

(assert (=> b!4607317 (= res!1928286 (not (containsKey!2238 (t!358301 (_2!29240 (h!57170 (toList!4735 lt!1764105)))) (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))))

(declare-fun b!4607318 () Bool)

(assert (=> b!4607318 (= e!2873922 (noDuplicateKeys!1360 (t!358301 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(assert (= (and d!1451450 (not res!1928285)) b!4607317))

(assert (= (and b!4607317 res!1928286) b!4607318))

(declare-fun m!5436999 () Bool)

(assert (=> b!4607317 m!5436999))

(declare-fun m!5437001 () Bool)

(assert (=> b!4607318 m!5437001))

(assert (=> bs!1014720 d!1451450))

(declare-fun d!1451452 () Bool)

(declare-fun res!1928287 () Bool)

(declare-fun e!2873923 () Bool)

(assert (=> d!1451452 (=> res!1928287 e!2873923)))

(assert (=> d!1451452 (= res!1928287 (and ((_ is Cons!51183) (_2!29240 (h!57170 (toList!4735 lt!1764105)))) (= (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))) key!3287)))))

(assert (=> d!1451452 (= (containsKey!2238 (_2!29240 (h!57170 (toList!4735 lt!1764105))) key!3287) e!2873923)))

(declare-fun b!4607319 () Bool)

(declare-fun e!2873924 () Bool)

(assert (=> b!4607319 (= e!2873923 e!2873924)))

(declare-fun res!1928288 () Bool)

(assert (=> b!4607319 (=> (not res!1928288) (not e!2873924))))

(assert (=> b!4607319 (= res!1928288 ((_ is Cons!51183) (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(declare-fun b!4607320 () Bool)

(assert (=> b!4607320 (= e!2873924 (containsKey!2238 (t!358301 (_2!29240 (h!57170 (toList!4735 lt!1764105)))) key!3287))))

(assert (= (and d!1451452 (not res!1928287)) b!4607319))

(assert (= (and b!4607319 res!1928288) b!4607320))

(declare-fun m!5437003 () Bool)

(assert (=> b!4607320 m!5437003))

(assert (=> b!4607280 d!1451452))

(declare-fun d!1451454 () Bool)

(declare-fun lt!1764293 () Bool)

(assert (=> d!1451454 (= lt!1764293 (select (content!8690 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(declare-fun e!2873929 () Bool)

(assert (=> d!1451454 (= lt!1764293 e!2873929)))

(declare-fun res!1928294 () Bool)

(assert (=> d!1451454 (=> (not res!1928294) (not e!2873929))))

(assert (=> d!1451454 (= res!1928294 ((_ is Cons!51186) (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> d!1451454 (= (contains!14183 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) lt!1764293)))

(declare-fun b!4607325 () Bool)

(declare-fun e!2873930 () Bool)

(assert (=> b!4607325 (= e!2873929 e!2873930)))

(declare-fun res!1928293 () Bool)

(assert (=> b!4607325 (=> res!1928293 e!2873930)))

(assert (=> b!4607325 (= res!1928293 (= (h!57174 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(declare-fun b!4607326 () Bool)

(assert (=> b!4607326 (= e!2873930 (contains!14183 (t!358304 (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(assert (= (and d!1451454 res!1928294) b!4607325))

(assert (= (and b!4607325 (not res!1928293)) b!4607326))

(assert (=> d!1451454 m!5436831))

(declare-fun m!5437005 () Bool)

(assert (=> d!1451454 m!5437005))

(declare-fun m!5437007 () Bool)

(assert (=> d!1451454 m!5437007))

(declare-fun m!5437009 () Bool)

(assert (=> b!4607326 m!5437009))

(assert (=> b!4607192 d!1451454))

(declare-fun bs!1014722 () Bool)

(declare-fun b!4607328 () Bool)

(assert (= bs!1014722 (and b!4607328 b!4607313)))

(declare-fun lambda!187745 () Int)

(assert (=> bs!1014722 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187745 lambda!187743))))

(assert (=> b!4607328 true))

(declare-fun bs!1014723 () Bool)

(declare-fun b!4607329 () Bool)

(assert (= bs!1014723 (and b!4607329 b!4607314)))

(declare-fun lambda!187746 () Int)

(assert (=> bs!1014723 (= lambda!187746 lambda!187744)))

(declare-fun d!1451456 () Bool)

(declare-fun e!2873931 () Bool)

(assert (=> d!1451456 e!2873931))

(declare-fun res!1928295 () Bool)

(assert (=> d!1451456 (=> (not res!1928295) (not e!2873931))))

(declare-fun lt!1764294 () List!51310)

(assert (=> d!1451456 (= res!1928295 (noDuplicate!823 lt!1764294))))

(assert (=> d!1451456 (= lt!1764294 (getKeysList!594 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> d!1451456 (= (keys!17947 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lt!1764294)))

(declare-fun b!4607327 () Bool)

(declare-fun res!1928296 () Bool)

(assert (=> b!4607327 (=> (not res!1928296) (not e!2873931))))

(assert (=> b!4607327 (= res!1928296 (= (length!502 lt!1764294) (length!503 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun res!1928297 () Bool)

(assert (=> b!4607328 (=> (not res!1928297) (not e!2873931))))

(assert (=> b!4607328 (= res!1928297 (forall!10675 lt!1764294 lambda!187745))))

(assert (=> b!4607329 (= e!2873931 (= (content!8690 lt!1764294) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187746))))))

(assert (= (and d!1451456 res!1928295) b!4607327))

(assert (= (and b!4607327 res!1928296) b!4607328))

(assert (= (and b!4607328 res!1928297) b!4607329))

(declare-fun m!5437011 () Bool)

(assert (=> d!1451456 m!5437011))

(assert (=> d!1451456 m!5436829))

(declare-fun m!5437013 () Bool)

(assert (=> b!4607327 m!5437013))

(declare-fun m!5437015 () Bool)

(assert (=> b!4607327 m!5437015))

(declare-fun m!5437017 () Bool)

(assert (=> b!4607328 m!5437017))

(declare-fun m!5437019 () Bool)

(assert (=> b!4607329 m!5437019))

(declare-fun m!5437021 () Bool)

(assert (=> b!4607329 m!5437021))

(assert (=> b!4607329 m!5437021))

(declare-fun m!5437023 () Bool)

(assert (=> b!4607329 m!5437023))

(assert (=> b!4607192 d!1451456))

(declare-fun d!1451458 () Bool)

(declare-fun res!1928298 () Bool)

(declare-fun e!2873932 () Bool)

(assert (=> d!1451458 (=> res!1928298 e!2873932)))

(assert (=> d!1451458 (= res!1928298 (and ((_ is Cons!51183) (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))) (= (_1!29239 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))) key!3287)))))

(assert (=> d!1451458 (= (containsKey!2238 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) key!3287) e!2873932)))

(declare-fun b!4607330 () Bool)

(declare-fun e!2873933 () Bool)

(assert (=> b!4607330 (= e!2873932 e!2873933)))

(declare-fun res!1928299 () Bool)

(assert (=> b!4607330 (=> (not res!1928299) (not e!2873933))))

(assert (=> b!4607330 (= res!1928299 ((_ is Cons!51183) (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))

(declare-fun b!4607331 () Bool)

(assert (=> b!4607331 (= e!2873933 (containsKey!2238 (t!358301 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(assert (= (and d!1451458 (not res!1928298)) b!4607330))

(assert (= (and b!4607330 res!1928299) b!4607331))

(declare-fun m!5437025 () Bool)

(assert (=> b!4607331 m!5437025))

(assert (=> b!4607277 d!1451458))

(declare-fun d!1451460 () Bool)

(assert (=> d!1451460 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(declare-fun lt!1764297 () Unit!109033)

(declare-fun choose!30986 (List!51307 K!12550) Unit!109033)

(assert (=> d!1451460 (= lt!1764297 (choose!30986 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> d!1451460 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))

(assert (=> d!1451460 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) lt!1764297)))

(declare-fun bs!1014724 () Bool)

(assert (= bs!1014724 d!1451460))

(assert (=> bs!1014724 m!5436815))

(assert (=> bs!1014724 m!5436815))

(assert (=> bs!1014724 m!5436817))

(declare-fun m!5437027 () Bool)

(assert (=> bs!1014724 m!5437027))

(declare-fun m!5437029 () Bool)

(assert (=> bs!1014724 m!5437029))

(assert (=> b!4607191 d!1451460))

(declare-fun d!1451462 () Bool)

(declare-fun isEmpty!28889 (Option!11434) Bool)

(assert (=> d!1451462 (= (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287)) (not (isEmpty!28889 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))))

(declare-fun bs!1014725 () Bool)

(assert (= bs!1014725 d!1451462))

(assert (=> bs!1014725 m!5436815))

(declare-fun m!5437031 () Bool)

(assert (=> bs!1014725 m!5437031))

(assert (=> b!4607191 d!1451462))

(declare-fun b!4607340 () Bool)

(declare-fun e!2873938 () Option!11434)

(assert (=> b!4607340 (= e!2873938 (Some!11433 (_2!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))))

(declare-fun b!4607343 () Bool)

(declare-fun e!2873939 () Option!11434)

(assert (=> b!4607343 (= e!2873939 None!11433)))

(declare-fun b!4607342 () Bool)

(assert (=> b!4607342 (= e!2873939 (getValueByKey!1352 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287))))

(declare-fun b!4607341 () Bool)

(assert (=> b!4607341 (= e!2873938 e!2873939)))

(declare-fun c!789246 () Bool)

(assert (=> b!4607341 (= c!789246 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (not (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) key!3287))))))

(declare-fun d!1451464 () Bool)

(declare-fun c!789245 () Bool)

(assert (=> d!1451464 (= c!789245 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) key!3287)))))

(assert (=> d!1451464 (= (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) e!2873938)))

(assert (= (and d!1451464 c!789245) b!4607340))

(assert (= (and d!1451464 (not c!789245)) b!4607341))

(assert (= (and b!4607341 c!789246) b!4607342))

(assert (= (and b!4607341 (not c!789246)) b!4607343))

(declare-fun m!5437033 () Bool)

(assert (=> b!4607342 m!5437033))

(assert (=> b!4607191 d!1451464))

(declare-fun d!1451466 () Bool)

(assert (=> d!1451466 (contains!14183 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287)))

(declare-fun lt!1764300 () Unit!109033)

(declare-fun choose!30987 (List!51307 K!12550) Unit!109033)

(assert (=> d!1451466 (= lt!1764300 (choose!30987 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> d!1451466 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))

(assert (=> d!1451466 (= (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) lt!1764300)))

(declare-fun bs!1014726 () Bool)

(assert (= bs!1014726 d!1451466))

(assert (=> bs!1014726 m!5436809))

(assert (=> bs!1014726 m!5436809))

(declare-fun m!5437035 () Bool)

(assert (=> bs!1014726 m!5437035))

(declare-fun m!5437037 () Bool)

(assert (=> bs!1014726 m!5437037))

(assert (=> bs!1014726 m!5437029))

(assert (=> b!4607191 d!1451466))

(declare-fun d!1451468 () Bool)

(assert (=> d!1451468 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(declare-fun lt!1764301 () Unit!109033)

(assert (=> d!1451468 (= lt!1764301 (choose!30986 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> d!1451468 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))

(assert (=> d!1451468 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287) lt!1764301)))

(declare-fun bs!1014727 () Bool)

(assert (= bs!1014727 d!1451468))

(assert (=> bs!1014727 m!5436691))

(assert (=> bs!1014727 m!5436691))

(assert (=> bs!1014727 m!5436693))

(declare-fun m!5437039 () Bool)

(assert (=> bs!1014727 m!5437039))

(declare-fun m!5437041 () Bool)

(assert (=> bs!1014727 m!5437041))

(assert (=> b!4607111 d!1451468))

(declare-fun d!1451470 () Bool)

(assert (=> d!1451470 (= (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287)) (not (isEmpty!28889 (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))))

(declare-fun bs!1014728 () Bool)

(assert (= bs!1014728 d!1451470))

(assert (=> bs!1014728 m!5436691))

(declare-fun m!5437043 () Bool)

(assert (=> bs!1014728 m!5437043))

(assert (=> b!4607111 d!1451470))

(declare-fun b!4607344 () Bool)

(declare-fun e!2873940 () Option!11434)

(assert (=> b!4607344 (= e!2873940 (Some!11433 (_2!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))))

(declare-fun b!4607347 () Bool)

(declare-fun e!2873941 () Option!11434)

(assert (=> b!4607347 (= e!2873941 None!11433)))

(declare-fun b!4607346 () Bool)

(assert (=> b!4607346 (= e!2873941 (getValueByKey!1352 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) key!3287))))

(declare-fun b!4607345 () Bool)

(assert (=> b!4607345 (= e!2873940 e!2873941)))

(declare-fun c!789248 () Bool)

(assert (=> b!4607345 (= c!789248 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (not (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) key!3287))))))

(declare-fun d!1451472 () Bool)

(declare-fun c!789247 () Bool)

(assert (=> d!1451472 (= c!789247 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) key!3287)))))

(assert (=> d!1451472 (= (getValueByKey!1352 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287) e!2873940)))

(assert (= (and d!1451472 c!789247) b!4607344))

(assert (= (and d!1451472 (not c!789247)) b!4607345))

(assert (= (and b!4607345 c!789248) b!4607346))

(assert (= (and b!4607345 (not c!789248)) b!4607347))

(declare-fun m!5437045 () Bool)

(assert (=> b!4607346 m!5437045))

(assert (=> b!4607111 d!1451472))

(declare-fun d!1451474 () Bool)

(assert (=> d!1451474 (contains!14183 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) key!3287)))

(declare-fun lt!1764302 () Unit!109033)

(assert (=> d!1451474 (= lt!1764302 (choose!30987 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> d!1451474 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))

(assert (=> d!1451474 (= (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287) lt!1764302)))

(declare-fun bs!1014729 () Bool)

(assert (= bs!1014729 d!1451474))

(assert (=> bs!1014729 m!5436685))

(assert (=> bs!1014729 m!5436685))

(declare-fun m!5437047 () Bool)

(assert (=> bs!1014729 m!5437047))

(declare-fun m!5437049 () Bool)

(assert (=> bs!1014729 m!5437049))

(assert (=> bs!1014729 m!5437041))

(assert (=> b!4607111 d!1451474))

(declare-fun d!1451476 () Bool)

(declare-fun res!1928300 () Bool)

(declare-fun e!2873942 () Bool)

(assert (=> d!1451476 (=> res!1928300 e!2873942)))

(assert (=> d!1451476 (= res!1928300 ((_ is Nil!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451476 (= (forall!10672 (toList!4735 lt!1764105) lambda!187733) e!2873942)))

(declare-fun b!4607348 () Bool)

(declare-fun e!2873943 () Bool)

(assert (=> b!4607348 (= e!2873942 e!2873943)))

(declare-fun res!1928301 () Bool)

(assert (=> b!4607348 (=> (not res!1928301) (not e!2873943))))

(assert (=> b!4607348 (= res!1928301 (dynLambda!21429 lambda!187733 (h!57170 (toList!4735 lt!1764105))))))

(declare-fun b!4607349 () Bool)

(assert (=> b!4607349 (= e!2873943 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187733))))

(assert (= (and d!1451476 (not res!1928300)) b!4607348))

(assert (= (and b!4607348 res!1928301) b!4607349))

(declare-fun b_lambda!170125 () Bool)

(assert (=> (not b_lambda!170125) (not b!4607348)))

(declare-fun m!5437051 () Bool)

(assert (=> b!4607348 m!5437051))

(declare-fun m!5437053 () Bool)

(assert (=> b!4607349 m!5437053))

(assert (=> d!1451406 d!1451476))

(declare-fun d!1451478 () Bool)

(declare-fun res!1928302 () Bool)

(declare-fun e!2873944 () Bool)

(assert (=> d!1451478 (=> res!1928302 e!2873944)))

(assert (=> d!1451478 (= res!1928302 (not ((_ is Cons!51183) (t!358301 newBucket!178))))))

(assert (=> d!1451478 (= (noDuplicateKeys!1360 (t!358301 newBucket!178)) e!2873944)))

(declare-fun b!4607350 () Bool)

(declare-fun e!2873945 () Bool)

(assert (=> b!4607350 (= e!2873944 e!2873945)))

(declare-fun res!1928303 () Bool)

(assert (=> b!4607350 (=> (not res!1928303) (not e!2873945))))

(assert (=> b!4607350 (= res!1928303 (not (containsKey!2238 (t!358301 (t!358301 newBucket!178)) (_1!29239 (h!57169 (t!358301 newBucket!178))))))))

(declare-fun b!4607351 () Bool)

(assert (=> b!4607351 (= e!2873945 (noDuplicateKeys!1360 (t!358301 (t!358301 newBucket!178))))))

(assert (= (and d!1451478 (not res!1928302)) b!4607350))

(assert (= (and b!4607350 res!1928303) b!4607351))

(declare-fun m!5437055 () Bool)

(assert (=> b!4607350 m!5437055))

(declare-fun m!5437057 () Bool)

(assert (=> b!4607351 m!5437057))

(assert (=> b!4607243 d!1451478))

(declare-fun d!1451480 () Bool)

(declare-fun lt!1764303 () Bool)

(assert (=> d!1451480 (= lt!1764303 (select (content!8690 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287))))

(declare-fun e!2873946 () Bool)

(assert (=> d!1451480 (= lt!1764303 e!2873946)))

(declare-fun res!1928305 () Bool)

(assert (=> d!1451480 (=> (not res!1928305) (not e!2873946))))

(assert (=> d!1451480 (= res!1928305 ((_ is Cons!51186) (keys!17947 (extractMap!1420 (toList!4735 lt!1764105)))))))

(assert (=> d!1451480 (= (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) lt!1764303)))

(declare-fun b!4607352 () Bool)

(declare-fun e!2873947 () Bool)

(assert (=> b!4607352 (= e!2873946 e!2873947)))

(declare-fun res!1928304 () Bool)

(assert (=> b!4607352 (=> res!1928304 e!2873947)))

(assert (=> b!4607352 (= res!1928304 (= (h!57174 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287))))

(declare-fun b!4607353 () Bool)

(assert (=> b!4607353 (= e!2873947 (contains!14183 (t!358304 (keys!17947 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287))))

(assert (= (and d!1451480 res!1928305) b!4607352))

(assert (= (and b!4607352 (not res!1928304)) b!4607353))

(assert (=> d!1451480 m!5436811))

(declare-fun m!5437059 () Bool)

(assert (=> d!1451480 m!5437059))

(declare-fun m!5437061 () Bool)

(assert (=> d!1451480 m!5437061))

(declare-fun m!5437063 () Bool)

(assert (=> b!4607353 m!5437063))

(assert (=> b!4607184 d!1451480))

(assert (=> b!4607184 d!1451448))

(declare-fun bs!1014730 () Bool)

(declare-fun b!4607355 () Bool)

(assert (= bs!1014730 (and b!4607355 b!4607313)))

(declare-fun lambda!187747 () Int)

(assert (=> bs!1014730 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187747 lambda!187743))))

(declare-fun bs!1014731 () Bool)

(assert (= bs!1014731 (and b!4607355 b!4607328)))

(assert (=> bs!1014731 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187747 lambda!187745))))

(assert (=> b!4607355 true))

(declare-fun bs!1014732 () Bool)

(declare-fun b!4607356 () Bool)

(assert (= bs!1014732 (and b!4607356 b!4607314)))

(declare-fun lambda!187748 () Int)

(assert (=> bs!1014732 (= lambda!187748 lambda!187744)))

(declare-fun bs!1014733 () Bool)

(assert (= bs!1014733 (and b!4607356 b!4607329)))

(assert (=> bs!1014733 (= lambda!187748 lambda!187746)))

(declare-fun d!1451482 () Bool)

(declare-fun e!2873948 () Bool)

(assert (=> d!1451482 e!2873948))

(declare-fun res!1928306 () Bool)

(assert (=> d!1451482 (=> (not res!1928306) (not e!2873948))))

(declare-fun lt!1764304 () List!51310)

(assert (=> d!1451482 (= res!1928306 (noDuplicate!823 lt!1764304))))

(assert (=> d!1451482 (= lt!1764304 (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))

(assert (=> d!1451482 (= (keys!17947 (extractMap!1420 (toList!4735 lm!1477))) lt!1764304)))

(declare-fun b!4607354 () Bool)

(declare-fun res!1928307 () Bool)

(assert (=> b!4607354 (=> (not res!1928307) (not e!2873948))))

(assert (=> b!4607354 (= res!1928307 (= (length!502 lt!1764304) (length!503 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))))

(declare-fun res!1928308 () Bool)

(assert (=> b!4607355 (=> (not res!1928308) (not e!2873948))))

(assert (=> b!4607355 (= res!1928308 (forall!10675 lt!1764304 lambda!187747))))

(assert (=> b!4607356 (= e!2873948 (= (content!8690 lt!1764304) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) lambda!187748))))))

(assert (= (and d!1451482 res!1928306) b!4607354))

(assert (= (and b!4607354 res!1928307) b!4607355))

(assert (= (and b!4607355 res!1928308) b!4607356))

(declare-fun m!5437065 () Bool)

(assert (=> d!1451482 m!5437065))

(assert (=> d!1451482 m!5436685))

(declare-fun m!5437067 () Bool)

(assert (=> b!4607354 m!5437067))

(declare-fun m!5437069 () Bool)

(assert (=> b!4607354 m!5437069))

(declare-fun m!5437071 () Bool)

(assert (=> b!4607355 m!5437071))

(declare-fun m!5437073 () Bool)

(assert (=> b!4607356 m!5437073))

(declare-fun m!5437075 () Bool)

(assert (=> b!4607356 m!5437075))

(assert (=> b!4607356 m!5437075))

(declare-fun m!5437077 () Bool)

(assert (=> b!4607356 m!5437077))

(assert (=> b!4607110 d!1451482))

(declare-fun d!1451484 () Bool)

(declare-fun res!1928313 () Bool)

(declare-fun e!2873953 () Bool)

(assert (=> d!1451484 (=> res!1928313 e!2873953)))

(assert (=> d!1451484 (= res!1928313 ((_ is Nil!51183) newBucket!178))))

(assert (=> d!1451484 (= (forall!10673 newBucket!178 lambda!187696) e!2873953)))

(declare-fun b!4607361 () Bool)

(declare-fun e!2873954 () Bool)

(assert (=> b!4607361 (= e!2873953 e!2873954)))

(declare-fun res!1928314 () Bool)

(assert (=> b!4607361 (=> (not res!1928314) (not e!2873954))))

(declare-fun dynLambda!21430 (Int tuple2!51890) Bool)

(assert (=> b!4607361 (= res!1928314 (dynLambda!21430 lambda!187696 (h!57169 newBucket!178)))))

(declare-fun b!4607362 () Bool)

(assert (=> b!4607362 (= e!2873954 (forall!10673 (t!358301 newBucket!178) lambda!187696))))

(assert (= (and d!1451484 (not res!1928313)) b!4607361))

(assert (= (and b!4607361 res!1928314) b!4607362))

(declare-fun b_lambda!170127 () Bool)

(assert (=> (not b_lambda!170127) (not b!4607361)))

(declare-fun m!5437079 () Bool)

(assert (=> b!4607361 m!5437079))

(declare-fun m!5437081 () Bool)

(assert (=> b!4607362 m!5437081))

(assert (=> d!1451324 d!1451484))

(declare-fun d!1451486 () Bool)

(declare-fun lt!1764305 () Bool)

(assert (=> d!1451486 (= lt!1764305 (select (content!8689 (t!358302 (t!358302 (toList!4735 lm!1477)))) lt!1764108))))

(declare-fun e!2873955 () Bool)

(assert (=> d!1451486 (= lt!1764305 e!2873955)))

(declare-fun res!1928315 () Bool)

(assert (=> d!1451486 (=> (not res!1928315) (not e!2873955))))

(assert (=> d!1451486 (= res!1928315 ((_ is Cons!51184) (t!358302 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451486 (= (contains!14181 (t!358302 (t!358302 (toList!4735 lm!1477))) lt!1764108) lt!1764305)))

(declare-fun b!4607363 () Bool)

(declare-fun e!2873956 () Bool)

(assert (=> b!4607363 (= e!2873955 e!2873956)))

(declare-fun res!1928316 () Bool)

(assert (=> b!4607363 (=> res!1928316 e!2873956)))

(assert (=> b!4607363 (= res!1928316 (= (h!57170 (t!358302 (t!358302 (toList!4735 lm!1477)))) lt!1764108))))

(declare-fun b!4607364 () Bool)

(assert (=> b!4607364 (= e!2873956 (contains!14181 (t!358302 (t!358302 (t!358302 (toList!4735 lm!1477)))) lt!1764108))))

(assert (= (and d!1451486 res!1928315) b!4607363))

(assert (= (and b!4607363 (not res!1928316)) b!4607364))

(declare-fun m!5437083 () Bool)

(assert (=> d!1451486 m!5437083))

(declare-fun m!5437085 () Bool)

(assert (=> d!1451486 m!5437085))

(declare-fun m!5437087 () Bool)

(assert (=> b!4607364 m!5437087))

(assert (=> b!4607237 d!1451486))

(assert (=> d!1451386 d!1451382))

(assert (=> d!1451386 d!1451394))

(declare-fun d!1451488 () Bool)

(assert (=> d!1451488 (contains!14180 (extractMap!1420 (toList!4735 lt!1764105)) key!3287)))

(assert (=> d!1451488 true))

(declare-fun _$34!841 () Unit!109033)

(assert (=> d!1451488 (= (choose!30982 lt!1764105 key!3287 hashF!1107) _$34!841)))

(declare-fun bs!1014734 () Bool)

(assert (= bs!1014734 d!1451488))

(assert (=> bs!1014734 m!5436583))

(assert (=> bs!1014734 m!5436583))

(assert (=> bs!1014734 m!5436585))

(assert (=> d!1451386 d!1451488))

(declare-fun d!1451490 () Bool)

(declare-fun res!1928317 () Bool)

(declare-fun e!2873957 () Bool)

(assert (=> d!1451490 (=> res!1928317 e!2873957)))

(assert (=> d!1451490 (= res!1928317 ((_ is Nil!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451490 (= (forall!10672 (toList!4735 lt!1764105) lambda!187725) e!2873957)))

(declare-fun b!4607365 () Bool)

(declare-fun e!2873958 () Bool)

(assert (=> b!4607365 (= e!2873957 e!2873958)))

(declare-fun res!1928318 () Bool)

(assert (=> b!4607365 (=> (not res!1928318) (not e!2873958))))

(assert (=> b!4607365 (= res!1928318 (dynLambda!21429 lambda!187725 (h!57170 (toList!4735 lt!1764105))))))

(declare-fun b!4607366 () Bool)

(assert (=> b!4607366 (= e!2873958 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187725))))

(assert (= (and d!1451490 (not res!1928317)) b!4607365))

(assert (= (and b!4607365 res!1928318) b!4607366))

(declare-fun b_lambda!170129 () Bool)

(assert (=> (not b_lambda!170129) (not b!4607365)))

(declare-fun m!5437089 () Bool)

(assert (=> b!4607365 m!5437089))

(declare-fun m!5437091 () Bool)

(assert (=> b!4607366 m!5437091))

(assert (=> d!1451386 d!1451490))

(declare-fun d!1451492 () Bool)

(declare-fun res!1928323 () Bool)

(declare-fun e!2873963 () Bool)

(assert (=> d!1451492 (=> res!1928323 e!2873963)))

(assert (=> d!1451492 (= res!1928323 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) key!3287)))))

(assert (=> d!1451492 (= (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) e!2873963)))

(declare-fun b!4607371 () Bool)

(declare-fun e!2873964 () Bool)

(assert (=> b!4607371 (= e!2873963 e!2873964)))

(declare-fun res!1928324 () Bool)

(assert (=> b!4607371 (=> (not res!1928324) (not e!2873964))))

(assert (=> b!4607371 (= res!1928324 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))

(declare-fun b!4607372 () Bool)

(assert (=> b!4607372 (= e!2873964 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) key!3287))))

(assert (= (and d!1451492 (not res!1928323)) b!4607371))

(assert (= (and b!4607371 res!1928324) b!4607372))

(declare-fun m!5437093 () Bool)

(assert (=> b!4607372 m!5437093))

(assert (=> b!4607186 d!1451492))

(declare-fun d!1451494 () Bool)

(assert (=> d!1451494 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287)))

(declare-fun lt!1764308 () Unit!109033)

(declare-fun choose!30988 (List!51307 K!12550) Unit!109033)

(assert (=> d!1451494 (= lt!1764308 (choose!30988 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287))))

(assert (=> d!1451494 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))

(assert (=> d!1451494 (= (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) key!3287) lt!1764308)))

(declare-fun bs!1014735 () Bool)

(assert (= bs!1014735 d!1451494))

(assert (=> bs!1014735 m!5436805))

(declare-fun m!5437095 () Bool)

(assert (=> bs!1014735 m!5437095))

(assert (=> bs!1014735 m!5437029))

(assert (=> b!4607186 d!1451494))

(declare-fun d!1451496 () Bool)

(declare-fun res!1928325 () Bool)

(declare-fun e!2873965 () Bool)

(assert (=> d!1451496 (=> res!1928325 e!2873965)))

(assert (=> d!1451496 (= res!1928325 ((_ is Nil!51184) (t!358302 (toList!4735 lm!1477))))))

(assert (=> d!1451496 (= (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187690) e!2873965)))

(declare-fun b!4607373 () Bool)

(declare-fun e!2873966 () Bool)

(assert (=> b!4607373 (= e!2873965 e!2873966)))

(declare-fun res!1928326 () Bool)

(assert (=> b!4607373 (=> (not res!1928326) (not e!2873966))))

(assert (=> b!4607373 (= res!1928326 (dynLambda!21429 lambda!187690 (h!57170 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun b!4607374 () Bool)

(assert (=> b!4607374 (= e!2873966 (forall!10672 (t!358302 (t!358302 (toList!4735 lm!1477))) lambda!187690))))

(assert (= (and d!1451496 (not res!1928325)) b!4607373))

(assert (= (and b!4607373 res!1928326) b!4607374))

(declare-fun b_lambda!170131 () Bool)

(assert (=> (not b_lambda!170131) (not b!4607373)))

(declare-fun m!5437097 () Bool)

(assert (=> b!4607373 m!5437097))

(declare-fun m!5437099 () Bool)

(assert (=> b!4607374 m!5437099))

(assert (=> b!4607038 d!1451496))

(declare-fun d!1451498 () Bool)

(declare-fun lt!1764309 () Bool)

(assert (=> d!1451498 (= lt!1764309 (select (content!8690 e!2873840) key!3287))))

(declare-fun e!2873967 () Bool)

(assert (=> d!1451498 (= lt!1764309 e!2873967)))

(declare-fun res!1928328 () Bool)

(assert (=> d!1451498 (=> (not res!1928328) (not e!2873967))))

(assert (=> d!1451498 (= res!1928328 ((_ is Cons!51186) e!2873840))))

(assert (=> d!1451498 (= (contains!14183 e!2873840 key!3287) lt!1764309)))

(declare-fun b!4607375 () Bool)

(declare-fun e!2873968 () Bool)

(assert (=> b!4607375 (= e!2873967 e!2873968)))

(declare-fun res!1928327 () Bool)

(assert (=> b!4607375 (=> res!1928327 e!2873968)))

(assert (=> b!4607375 (= res!1928327 (= (h!57174 e!2873840) key!3287))))

(declare-fun b!4607376 () Bool)

(assert (=> b!4607376 (= e!2873968 (contains!14183 (t!358304 e!2873840) key!3287))))

(assert (= (and d!1451498 res!1928328) b!4607375))

(assert (= (and b!4607375 (not res!1928327)) b!4607376))

(declare-fun m!5437101 () Bool)

(assert (=> d!1451498 m!5437101))

(declare-fun m!5437103 () Bool)

(assert (=> d!1451498 m!5437103))

(declare-fun m!5437105 () Bool)

(assert (=> b!4607376 m!5437105))

(assert (=> bm!321335 d!1451498))

(declare-fun bs!1014736 () Bool)

(declare-fun b!4607391 () Bool)

(assert (= bs!1014736 (and b!4607391 d!1451324)))

(declare-fun lambda!187799 () Int)

(assert (=> bs!1014736 (not (= lambda!187799 lambda!187696))))

(assert (=> b!4607391 true))

(declare-fun bs!1014737 () Bool)

(declare-fun b!4607395 () Bool)

(assert (= bs!1014737 (and b!4607395 d!1451324)))

(declare-fun lambda!187802 () Int)

(assert (=> bs!1014737 (not (= lambda!187802 lambda!187696))))

(declare-fun bs!1014738 () Bool)

(assert (= bs!1014738 (and b!4607395 b!4607391)))

(assert (=> bs!1014738 (= lambda!187802 lambda!187799)))

(assert (=> b!4607395 true))

(declare-fun lambda!187803 () Int)

(assert (=> bs!1014737 (not (= lambda!187803 lambda!187696))))

(declare-fun lt!1764401 () ListMap!3997)

(assert (=> bs!1014738 (= (= lt!1764401 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187803 lambda!187799))))

(assert (=> b!4607395 (= (= lt!1764401 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187803 lambda!187802))))

(assert (=> b!4607395 true))

(declare-fun bs!1014739 () Bool)

(declare-fun d!1451500 () Bool)

(assert (= bs!1014739 (and d!1451500 d!1451324)))

(declare-fun lambda!187804 () Int)

(assert (=> bs!1014739 (not (= lambda!187804 lambda!187696))))

(declare-fun bs!1014740 () Bool)

(assert (= bs!1014740 (and d!1451500 b!4607391)))

(declare-fun lt!1764410 () ListMap!3997)

(assert (=> bs!1014740 (= (= lt!1764410 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187804 lambda!187799))))

(declare-fun bs!1014741 () Bool)

(assert (= bs!1014741 (and d!1451500 b!4607395)))

(assert (=> bs!1014741 (= (= lt!1764410 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187804 lambda!187802))))

(assert (=> bs!1014741 (= (= lt!1764410 lt!1764401) (= lambda!187804 lambda!187803))))

(assert (=> d!1451500 true))

(declare-fun e!2873981 () ListMap!3997)

(assert (=> b!4607391 (= e!2873981 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun lt!1764400 () Unit!109033)

(declare-fun call!321348 () Unit!109033)

(assert (=> b!4607391 (= lt!1764400 call!321348)))

(declare-fun call!321349 () Bool)

(assert (=> b!4607391 call!321349))

(declare-fun lt!1764412 () Unit!109033)

(assert (=> b!4607391 (= lt!1764412 lt!1764400)))

(declare-fun call!321350 () Bool)

(assert (=> b!4607391 call!321350))

(declare-fun lt!1764405 () Unit!109033)

(declare-fun Unit!109064 () Unit!109033)

(assert (=> b!4607391 (= lt!1764405 Unit!109064)))

(declare-fun b!4607392 () Bool)

(declare-fun res!1928339 () Bool)

(declare-fun e!2873979 () Bool)

(assert (=> b!4607392 (=> (not res!1928339) (not e!2873979))))

(assert (=> b!4607392 (= res!1928339 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) lambda!187804))))

(declare-fun b!4607393 () Bool)

(assert (=> b!4607393 (= e!2873979 (invariantList!1143 (toList!4736 lt!1764410)))))

(declare-fun b!4607394 () Bool)

(declare-fun e!2873980 () Bool)

(assert (=> b!4607394 (= e!2873980 call!321349)))

(assert (=> d!1451500 e!2873979))

(declare-fun res!1928337 () Bool)

(assert (=> d!1451500 (=> (not res!1928337) (not e!2873979))))

(assert (=> d!1451500 (= res!1928337 (forall!10673 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) lambda!187804))))

(assert (=> d!1451500 (= lt!1764410 e!2873981)))

(declare-fun c!789253 () Bool)

(assert (=> d!1451500 (= c!789253 ((_ is Nil!51183) (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> d!1451500 (noDuplicateKeys!1360 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451500 (= (addToMapMapFromBucket!835 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) lt!1764410)))

(declare-fun bm!321343 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!448 (ListMap!3997) Unit!109033)

(assert (=> bm!321343 (= call!321348 (lemmaContainsAllItsOwnKeys!448 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> b!4607395 (= e!2873981 lt!1764401)))

(declare-fun lt!1764399 () ListMap!3997)

(declare-fun +!1774 (ListMap!3997 tuple2!51890) ListMap!3997)

(assert (=> b!4607395 (= lt!1764399 (+!1774 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477)))) (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))))))

(assert (=> b!4607395 (= lt!1764401 (addToMapMapFromBucket!835 (t!358301 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))) (+!1774 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477)))) (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun lt!1764414 () Unit!109033)

(assert (=> b!4607395 (= lt!1764414 call!321348)))

(assert (=> b!4607395 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) lambda!187802)))

(declare-fun lt!1764395 () Unit!109033)

(assert (=> b!4607395 (= lt!1764395 lt!1764414)))

(assert (=> b!4607395 call!321350))

(declare-fun lt!1764394 () Unit!109033)

(declare-fun Unit!109065 () Unit!109033)

(assert (=> b!4607395 (= lt!1764394 Unit!109065)))

(assert (=> b!4607395 (forall!10673 (t!358301 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))) lambda!187803)))

(declare-fun lt!1764397 () Unit!109033)

(declare-fun Unit!109066 () Unit!109033)

(assert (=> b!4607395 (= lt!1764397 Unit!109066)))

(declare-fun lt!1764398 () Unit!109033)

(declare-fun Unit!109067 () Unit!109033)

(assert (=> b!4607395 (= lt!1764398 Unit!109067)))

(declare-fun lt!1764402 () Unit!109033)

(declare-fun forallContained!2919 (List!51307 Int tuple2!51890) Unit!109033)

(assert (=> b!4607395 (= lt!1764402 (forallContained!2919 (toList!4736 lt!1764399) lambda!187803 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))))))

(assert (=> b!4607395 (contains!14180 lt!1764399 (_1!29239 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764408 () Unit!109033)

(declare-fun Unit!109068 () Unit!109033)

(assert (=> b!4607395 (= lt!1764408 Unit!109068)))

(assert (=> b!4607395 (contains!14180 lt!1764401 (_1!29239 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764406 () Unit!109033)

(declare-fun Unit!109069 () Unit!109033)

(assert (=> b!4607395 (= lt!1764406 Unit!109069)))

(assert (=> b!4607395 (forall!10673 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) lambda!187803)))

(declare-fun lt!1764396 () Unit!109033)

(declare-fun Unit!109070 () Unit!109033)

(assert (=> b!4607395 (= lt!1764396 Unit!109070)))

(assert (=> b!4607395 (forall!10673 (toList!4736 lt!1764399) lambda!187803)))

(declare-fun lt!1764403 () Unit!109033)

(declare-fun Unit!109071 () Unit!109033)

(assert (=> b!4607395 (= lt!1764403 Unit!109071)))

(declare-fun lt!1764413 () Unit!109033)

(declare-fun Unit!109072 () Unit!109033)

(assert (=> b!4607395 (= lt!1764413 Unit!109072)))

(declare-fun lt!1764411 () Unit!109033)

(declare-fun addForallContainsKeyThenBeforeAdding!448 (ListMap!3997 ListMap!3997 K!12550 V!12796) Unit!109033)

(assert (=> b!4607395 (= lt!1764411 (addForallContainsKeyThenBeforeAdding!448 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477)))) lt!1764401 (_1!29239 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))))) (_2!29239 (h!57169 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))))

(assert (=> b!4607395 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) lambda!187803)))

(declare-fun lt!1764409 () Unit!109033)

(assert (=> b!4607395 (= lt!1764409 lt!1764411)))

(assert (=> b!4607395 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) lambda!187803)))

(declare-fun lt!1764404 () Unit!109033)

(declare-fun Unit!109074 () Unit!109033)

(assert (=> b!4607395 (= lt!1764404 Unit!109074)))

(declare-fun res!1928338 () Bool)

(assert (=> b!4607395 (= res!1928338 (forall!10673 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477)))) lambda!187803))))

(assert (=> b!4607395 (=> (not res!1928338) (not e!2873980))))

(assert (=> b!4607395 e!2873980))

(declare-fun lt!1764407 () Unit!109033)

(declare-fun Unit!109075 () Unit!109033)

(assert (=> b!4607395 (= lt!1764407 Unit!109075)))

(declare-fun bm!321344 () Bool)

(assert (=> bm!321344 (= call!321349 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (ite c!789253 lambda!187799 lambda!187803)))))

(declare-fun bm!321345 () Bool)

(assert (=> bm!321345 (= call!321350 (forall!10673 (ite c!789253 (toList!4736 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (toList!4736 lt!1764399)) (ite c!789253 lambda!187799 lambda!187803)))))

(assert (= (and d!1451500 c!789253) b!4607391))

(assert (= (and d!1451500 (not c!789253)) b!4607395))

(assert (= (and b!4607395 res!1928338) b!4607394))

(assert (= (or b!4607391 b!4607394) bm!321344))

(assert (= (or b!4607391 b!4607395) bm!321345))

(assert (= (or b!4607391 b!4607395) bm!321343))

(assert (= (and d!1451500 res!1928337) b!4607392))

(assert (= (and b!4607392 res!1928339) b!4607393))

(declare-fun m!5437107 () Bool)

(assert (=> bm!321344 m!5437107))

(declare-fun m!5437109 () Bool)

(assert (=> d!1451500 m!5437109))

(declare-fun m!5437111 () Bool)

(assert (=> d!1451500 m!5437111))

(declare-fun m!5437113 () Bool)

(assert (=> b!4607395 m!5437113))

(declare-fun m!5437115 () Bool)

(assert (=> b!4607395 m!5437115))

(declare-fun m!5437117 () Bool)

(assert (=> b!4607395 m!5437117))

(declare-fun m!5437119 () Bool)

(assert (=> b!4607395 m!5437119))

(assert (=> b!4607395 m!5436877))

(assert (=> b!4607395 m!5437115))

(declare-fun m!5437121 () Bool)

(assert (=> b!4607395 m!5437121))

(declare-fun m!5437123 () Bool)

(assert (=> b!4607395 m!5437123))

(assert (=> b!4607395 m!5437123))

(declare-fun m!5437125 () Bool)

(assert (=> b!4607395 m!5437125))

(assert (=> b!4607395 m!5437125))

(assert (=> b!4607395 m!5436877))

(declare-fun m!5437127 () Bool)

(assert (=> b!4607395 m!5437127))

(declare-fun m!5437129 () Bool)

(assert (=> b!4607395 m!5437129))

(declare-fun m!5437131 () Bool)

(assert (=> b!4607395 m!5437131))

(declare-fun m!5437133 () Bool)

(assert (=> b!4607395 m!5437133))

(assert (=> bm!321343 m!5436877))

(declare-fun m!5437135 () Bool)

(assert (=> bm!321343 m!5437135))

(declare-fun m!5437137 () Bool)

(assert (=> b!4607393 m!5437137))

(declare-fun m!5437139 () Bool)

(assert (=> bm!321345 m!5437139))

(declare-fun m!5437141 () Bool)

(assert (=> b!4607392 m!5437141))

(assert (=> b!4607228 d!1451500))

(declare-fun bs!1014742 () Bool)

(declare-fun d!1451504 () Bool)

(assert (= bs!1014742 (and d!1451504 d!1451394)))

(declare-fun lambda!187809 () Int)

(assert (=> bs!1014742 (= lambda!187809 lambda!187726)))

(declare-fun bs!1014743 () Bool)

(assert (= bs!1014743 (and d!1451504 d!1451436)))

(assert (=> bs!1014743 (not (= lambda!187809 lambda!187738))))

(declare-fun bs!1014744 () Bool)

(assert (= bs!1014744 (and d!1451504 d!1451334)))

(assert (=> bs!1014744 (= lambda!187809 lambda!187706)))

(declare-fun bs!1014745 () Bool)

(assert (= bs!1014745 (and d!1451504 d!1451344)))

(assert (=> bs!1014745 (= lambda!187809 lambda!187712)))

(declare-fun bs!1014746 () Bool)

(assert (= bs!1014746 (and d!1451504 d!1451426)))

(assert (=> bs!1014746 (= lambda!187809 lambda!187737)))

(declare-fun bs!1014747 () Bool)

(assert (= bs!1014747 (and d!1451504 d!1451386)))

(assert (=> bs!1014747 (= lambda!187809 lambda!187725)))

(declare-fun bs!1014748 () Bool)

(assert (= bs!1014748 (and d!1451504 d!1451396)))

(assert (=> bs!1014748 (= lambda!187809 lambda!187727)))

(declare-fun bs!1014749 () Bool)

(assert (= bs!1014749 (and d!1451504 d!1451322)))

(assert (=> bs!1014749 (= lambda!187809 lambda!187693)))

(declare-fun bs!1014750 () Bool)

(assert (= bs!1014750 (and d!1451504 start!460496)))

(assert (=> bs!1014750 (= lambda!187809 lambda!187690)))

(declare-fun bs!1014751 () Bool)

(assert (= bs!1014751 (and d!1451504 d!1451406)))

(assert (=> bs!1014751 (not (= lambda!187809 lambda!187733))))

(declare-fun lt!1764415 () ListMap!3997)

(assert (=> d!1451504 (invariantList!1143 (toList!4736 lt!1764415))))

(declare-fun e!2873984 () ListMap!3997)

(assert (=> d!1451504 (= lt!1764415 e!2873984)))

(declare-fun c!789254 () Bool)

(assert (=> d!1451504 (= c!789254 ((_ is Cons!51184) (t!358302 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451504 (forall!10672 (t!358302 (t!358302 (toList!4735 lm!1477))) lambda!187809)))

(assert (=> d!1451504 (= (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477)))) lt!1764415)))

(declare-fun b!4607404 () Bool)

(assert (=> b!4607404 (= e!2873984 (addToMapMapFromBucket!835 (_2!29240 (h!57170 (t!358302 (t!358302 (toList!4735 lm!1477))))) (extractMap!1420 (t!358302 (t!358302 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun b!4607405 () Bool)

(assert (=> b!4607405 (= e!2873984 (ListMap!3998 Nil!51183))))

(assert (= (and d!1451504 c!789254) b!4607404))

(assert (= (and d!1451504 (not c!789254)) b!4607405))

(declare-fun m!5437143 () Bool)

(assert (=> d!1451504 m!5437143))

(declare-fun m!5437145 () Bool)

(assert (=> d!1451504 m!5437145))

(declare-fun m!5437147 () Bool)

(assert (=> b!4607404 m!5437147))

(assert (=> b!4607404 m!5437147))

(declare-fun m!5437149 () Bool)

(assert (=> b!4607404 m!5437149))

(assert (=> b!4607228 d!1451504))

(declare-fun bs!1014752 () Bool)

(declare-fun b!4607406 () Bool)

(assert (= bs!1014752 (and b!4607406 b!4607395)))

(declare-fun lambda!187810 () Int)

(assert (=> bs!1014752 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187810 lambda!187802))))

(assert (=> bs!1014752 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764401) (= lambda!187810 lambda!187803))))

(declare-fun bs!1014753 () Bool)

(assert (= bs!1014753 (and b!4607406 d!1451324)))

(assert (=> bs!1014753 (not (= lambda!187810 lambda!187696))))

(declare-fun bs!1014754 () Bool)

(assert (= bs!1014754 (and b!4607406 d!1451500)))

(assert (=> bs!1014754 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764410) (= lambda!187810 lambda!187804))))

(declare-fun bs!1014755 () Bool)

(assert (= bs!1014755 (and b!4607406 b!4607391)))

(assert (=> bs!1014755 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187810 lambda!187799))))

(assert (=> b!4607406 true))

(declare-fun bs!1014756 () Bool)

(declare-fun b!4607410 () Bool)

(assert (= bs!1014756 (and b!4607410 b!4607395)))

(declare-fun lambda!187811 () Int)

(assert (=> bs!1014756 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187811 lambda!187802))))

(declare-fun bs!1014757 () Bool)

(assert (= bs!1014757 (and b!4607410 b!4607406)))

(assert (=> bs!1014757 (= lambda!187811 lambda!187810)))

(assert (=> bs!1014756 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764401) (= lambda!187811 lambda!187803))))

(declare-fun bs!1014758 () Bool)

(assert (= bs!1014758 (and b!4607410 d!1451324)))

(assert (=> bs!1014758 (not (= lambda!187811 lambda!187696))))

(declare-fun bs!1014759 () Bool)

(assert (= bs!1014759 (and b!4607410 d!1451500)))

(assert (=> bs!1014759 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764410) (= lambda!187811 lambda!187804))))

(declare-fun bs!1014760 () Bool)

(assert (= bs!1014760 (and b!4607410 b!4607391)))

(assert (=> bs!1014760 (= (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187811 lambda!187799))))

(assert (=> b!4607410 true))

(declare-fun lambda!187812 () Int)

(declare-fun lt!1764423 () ListMap!3997)

(assert (=> bs!1014756 (= (= lt!1764423 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187812 lambda!187802))))

(assert (=> bs!1014757 (= (= lt!1764423 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187812 lambda!187810))))

(assert (=> b!4607410 (= (= lt!1764423 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187812 lambda!187811))))

(assert (=> bs!1014756 (= (= lt!1764423 lt!1764401) (= lambda!187812 lambda!187803))))

(assert (=> bs!1014758 (not (= lambda!187812 lambda!187696))))

(assert (=> bs!1014759 (= (= lt!1764423 lt!1764410) (= lambda!187812 lambda!187804))))

(assert (=> bs!1014760 (= (= lt!1764423 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187812 lambda!187799))))

(assert (=> b!4607410 true))

(declare-fun bs!1014762 () Bool)

(declare-fun d!1451506 () Bool)

(assert (= bs!1014762 (and d!1451506 b!4607410)))

(declare-fun lt!1764432 () ListMap!3997)

(declare-fun lambda!187814 () Int)

(assert (=> bs!1014762 (= (= lt!1764432 lt!1764423) (= lambda!187814 lambda!187812))))

(declare-fun bs!1014763 () Bool)

(assert (= bs!1014763 (and d!1451506 b!4607395)))

(assert (=> bs!1014763 (= (= lt!1764432 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187814 lambda!187802))))

(declare-fun bs!1014764 () Bool)

(assert (= bs!1014764 (and d!1451506 b!4607406)))

(assert (=> bs!1014764 (= (= lt!1764432 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187814 lambda!187810))))

(assert (=> bs!1014762 (= (= lt!1764432 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187814 lambda!187811))))

(assert (=> bs!1014763 (= (= lt!1764432 lt!1764401) (= lambda!187814 lambda!187803))))

(declare-fun bs!1014767 () Bool)

(assert (= bs!1014767 (and d!1451506 d!1451324)))

(assert (=> bs!1014767 (not (= lambda!187814 lambda!187696))))

(declare-fun bs!1014768 () Bool)

(assert (= bs!1014768 (and d!1451506 d!1451500)))

(assert (=> bs!1014768 (= (= lt!1764432 lt!1764410) (= lambda!187814 lambda!187804))))

(declare-fun bs!1014769 () Bool)

(assert (= bs!1014769 (and d!1451506 b!4607391)))

(assert (=> bs!1014769 (= (= lt!1764432 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187814 lambda!187799))))

(assert (=> d!1451506 true))

(declare-fun e!2873987 () ListMap!3997)

(assert (=> b!4607406 (= e!2873987 (extractMap!1420 (t!358302 (toList!4735 lt!1764105))))))

(declare-fun lt!1764422 () Unit!109033)

(declare-fun call!321357 () Unit!109033)

(assert (=> b!4607406 (= lt!1764422 call!321357)))

(declare-fun call!321358 () Bool)

(assert (=> b!4607406 call!321358))

(declare-fun lt!1764434 () Unit!109033)

(assert (=> b!4607406 (= lt!1764434 lt!1764422)))

(declare-fun call!321359 () Bool)

(assert (=> b!4607406 call!321359))

(declare-fun lt!1764427 () Unit!109033)

(declare-fun Unit!109076 () Unit!109033)

(assert (=> b!4607406 (= lt!1764427 Unit!109076)))

(declare-fun b!4607407 () Bool)

(declare-fun res!1928346 () Bool)

(declare-fun e!2873985 () Bool)

(assert (=> b!4607407 (=> (not res!1928346) (not e!2873985))))

(assert (=> b!4607407 (= res!1928346 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) lambda!187814))))

(declare-fun b!4607408 () Bool)

(assert (=> b!4607408 (= e!2873985 (invariantList!1143 (toList!4736 lt!1764432)))))

(declare-fun b!4607409 () Bool)

(declare-fun e!2873986 () Bool)

(assert (=> b!4607409 (= e!2873986 call!321358)))

(assert (=> d!1451506 e!2873985))

(declare-fun res!1928344 () Bool)

(assert (=> d!1451506 (=> (not res!1928344) (not e!2873985))))

(assert (=> d!1451506 (= res!1928344 (forall!10673 (_2!29240 (h!57170 (toList!4735 lt!1764105))) lambda!187814))))

(assert (=> d!1451506 (= lt!1764432 e!2873987)))

(declare-fun c!789255 () Bool)

(assert (=> d!1451506 (= c!789255 ((_ is Nil!51183) (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(assert (=> d!1451506 (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))

(assert (=> d!1451506 (= (addToMapMapFromBucket!835 (_2!29240 (h!57170 (toList!4735 lt!1764105))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) lt!1764432)))

(declare-fun bm!321352 () Bool)

(assert (=> bm!321352 (= call!321357 (lemmaContainsAllItsOwnKeys!448 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))))))

(assert (=> b!4607410 (= e!2873987 lt!1764423)))

(declare-fun lt!1764421 () ListMap!3997)

(assert (=> b!4607410 (= lt!1764421 (+!1774 (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(assert (=> b!4607410 (= lt!1764423 (addToMapMapFromBucket!835 (t!358301 (_2!29240 (h!57170 (toList!4735 lt!1764105)))) (+!1774 (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))))

(declare-fun lt!1764436 () Unit!109033)

(assert (=> b!4607410 (= lt!1764436 call!321357)))

(assert (=> b!4607410 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) lambda!187811)))

(declare-fun lt!1764417 () Unit!109033)

(assert (=> b!4607410 (= lt!1764417 lt!1764436)))

(assert (=> b!4607410 call!321359))

(declare-fun lt!1764416 () Unit!109033)

(declare-fun Unit!109078 () Unit!109033)

(assert (=> b!4607410 (= lt!1764416 Unit!109078)))

(assert (=> b!4607410 (forall!10673 (t!358301 (_2!29240 (h!57170 (toList!4735 lt!1764105)))) lambda!187812)))

(declare-fun lt!1764419 () Unit!109033)

(declare-fun Unit!109079 () Unit!109033)

(assert (=> b!4607410 (= lt!1764419 Unit!109079)))

(declare-fun lt!1764420 () Unit!109033)

(declare-fun Unit!109080 () Unit!109033)

(assert (=> b!4607410 (= lt!1764420 Unit!109080)))

(declare-fun lt!1764424 () Unit!109033)

(assert (=> b!4607410 (= lt!1764424 (forallContained!2919 (toList!4736 lt!1764421) lambda!187812 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(assert (=> b!4607410 (contains!14180 lt!1764421 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(declare-fun lt!1764430 () Unit!109033)

(declare-fun Unit!109083 () Unit!109033)

(assert (=> b!4607410 (= lt!1764430 Unit!109083)))

(assert (=> b!4607410 (contains!14180 lt!1764423 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))))))

(declare-fun lt!1764428 () Unit!109033)

(declare-fun Unit!109085 () Unit!109033)

(assert (=> b!4607410 (= lt!1764428 Unit!109085)))

(assert (=> b!4607410 (forall!10673 (_2!29240 (h!57170 (toList!4735 lt!1764105))) lambda!187812)))

(declare-fun lt!1764418 () Unit!109033)

(declare-fun Unit!109086 () Unit!109033)

(assert (=> b!4607410 (= lt!1764418 Unit!109086)))

(assert (=> b!4607410 (forall!10673 (toList!4736 lt!1764421) lambda!187812)))

(declare-fun lt!1764425 () Unit!109033)

(declare-fun Unit!109088 () Unit!109033)

(assert (=> b!4607410 (= lt!1764425 Unit!109088)))

(declare-fun lt!1764435 () Unit!109033)

(declare-fun Unit!109090 () Unit!109033)

(assert (=> b!4607410 (= lt!1764435 Unit!109090)))

(declare-fun lt!1764433 () Unit!109033)

(assert (=> b!4607410 (= lt!1764433 (addForallContainsKeyThenBeforeAdding!448 (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764423 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105))))) (_2!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))))

(assert (=> b!4607410 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) lambda!187812)))

(declare-fun lt!1764431 () Unit!109033)

(assert (=> b!4607410 (= lt!1764431 lt!1764433)))

(assert (=> b!4607410 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) lambda!187812)))

(declare-fun lt!1764426 () Unit!109033)

(declare-fun Unit!109094 () Unit!109033)

(assert (=> b!4607410 (= lt!1764426 Unit!109094)))

(declare-fun res!1928345 () Bool)

(assert (=> b!4607410 (= res!1928345 (forall!10673 (_2!29240 (h!57170 (toList!4735 lt!1764105))) lambda!187812))))

(assert (=> b!4607410 (=> (not res!1928345) (not e!2873986))))

(assert (=> b!4607410 e!2873986))

(declare-fun lt!1764429 () Unit!109033)

(declare-fun Unit!109095 () Unit!109033)

(assert (=> b!4607410 (= lt!1764429 Unit!109095)))

(declare-fun bm!321353 () Bool)

(assert (=> bm!321353 (= call!321358 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (ite c!789255 lambda!187810 lambda!187812)))))

(declare-fun bm!321354 () Bool)

(assert (=> bm!321354 (= call!321359 (forall!10673 (ite c!789255 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (toList!4736 lt!1764421)) (ite c!789255 lambda!187810 lambda!187812)))))

(assert (= (and d!1451506 c!789255) b!4607406))

(assert (= (and d!1451506 (not c!789255)) b!4607410))

(assert (= (and b!4607410 res!1928345) b!4607409))

(assert (= (or b!4607406 b!4607409) bm!321353))

(assert (= (or b!4607406 b!4607410) bm!321354))

(assert (= (or b!4607406 b!4607410) bm!321352))

(assert (= (and d!1451506 res!1928344) b!4607407))

(assert (= (and b!4607407 res!1928346) b!4607408))

(declare-fun m!5437151 () Bool)

(assert (=> bm!321353 m!5437151))

(declare-fun m!5437153 () Bool)

(assert (=> d!1451506 m!5437153))

(assert (=> d!1451506 m!5436977))

(declare-fun m!5437155 () Bool)

(assert (=> b!4607410 m!5437155))

(declare-fun m!5437157 () Bool)

(assert (=> b!4607410 m!5437157))

(declare-fun m!5437159 () Bool)

(assert (=> b!4607410 m!5437159))

(declare-fun m!5437161 () Bool)

(assert (=> b!4607410 m!5437161))

(assert (=> b!4607410 m!5436869))

(assert (=> b!4607410 m!5437157))

(declare-fun m!5437163 () Bool)

(assert (=> b!4607410 m!5437163))

(declare-fun m!5437165 () Bool)

(assert (=> b!4607410 m!5437165))

(assert (=> b!4607410 m!5437165))

(declare-fun m!5437167 () Bool)

(assert (=> b!4607410 m!5437167))

(assert (=> b!4607410 m!5437167))

(assert (=> b!4607410 m!5436869))

(declare-fun m!5437169 () Bool)

(assert (=> b!4607410 m!5437169))

(declare-fun m!5437171 () Bool)

(assert (=> b!4607410 m!5437171))

(declare-fun m!5437173 () Bool)

(assert (=> b!4607410 m!5437173))

(declare-fun m!5437175 () Bool)

(assert (=> b!4607410 m!5437175))

(assert (=> bm!321352 m!5436869))

(declare-fun m!5437177 () Bool)

(assert (=> bm!321352 m!5437177))

(declare-fun m!5437179 () Bool)

(assert (=> b!4607408 m!5437179))

(declare-fun m!5437181 () Bool)

(assert (=> bm!321354 m!5437181))

(declare-fun m!5437183 () Bool)

(assert (=> b!4607407 m!5437183))

(assert (=> b!4607226 d!1451506))

(declare-fun bs!1014773 () Bool)

(declare-fun d!1451508 () Bool)

(assert (= bs!1014773 (and d!1451508 d!1451394)))

(declare-fun lambda!187818 () Int)

(assert (=> bs!1014773 (= lambda!187818 lambda!187726)))

(declare-fun bs!1014774 () Bool)

(assert (= bs!1014774 (and d!1451508 d!1451436)))

(assert (=> bs!1014774 (not (= lambda!187818 lambda!187738))))

(declare-fun bs!1014775 () Bool)

(assert (= bs!1014775 (and d!1451508 d!1451334)))

(assert (=> bs!1014775 (= lambda!187818 lambda!187706)))

(declare-fun bs!1014776 () Bool)

(assert (= bs!1014776 (and d!1451508 d!1451344)))

(assert (=> bs!1014776 (= lambda!187818 lambda!187712)))

(declare-fun bs!1014777 () Bool)

(assert (= bs!1014777 (and d!1451508 d!1451504)))

(assert (=> bs!1014777 (= lambda!187818 lambda!187809)))

(declare-fun bs!1014778 () Bool)

(assert (= bs!1014778 (and d!1451508 d!1451426)))

(assert (=> bs!1014778 (= lambda!187818 lambda!187737)))

(declare-fun bs!1014779 () Bool)

(assert (= bs!1014779 (and d!1451508 d!1451386)))

(assert (=> bs!1014779 (= lambda!187818 lambda!187725)))

(declare-fun bs!1014780 () Bool)

(assert (= bs!1014780 (and d!1451508 d!1451396)))

(assert (=> bs!1014780 (= lambda!187818 lambda!187727)))

(declare-fun bs!1014781 () Bool)

(assert (= bs!1014781 (and d!1451508 d!1451322)))

(assert (=> bs!1014781 (= lambda!187818 lambda!187693)))

(declare-fun bs!1014782 () Bool)

(assert (= bs!1014782 (and d!1451508 start!460496)))

(assert (=> bs!1014782 (= lambda!187818 lambda!187690)))

(declare-fun bs!1014783 () Bool)

(assert (= bs!1014783 (and d!1451508 d!1451406)))

(assert (=> bs!1014783 (not (= lambda!187818 lambda!187733))))

(declare-fun lt!1764458 () ListMap!3997)

(assert (=> d!1451508 (invariantList!1143 (toList!4736 lt!1764458))))

(declare-fun e!2873991 () ListMap!3997)

(assert (=> d!1451508 (= lt!1764458 e!2873991)))

(declare-fun c!789257 () Bool)

(assert (=> d!1451508 (= c!789257 ((_ is Cons!51184) (t!358302 (toList!4735 lt!1764105))))))

(assert (=> d!1451508 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187818)))

(assert (=> d!1451508 (= (extractMap!1420 (t!358302 (toList!4735 lt!1764105))) lt!1764458)))

(declare-fun b!4607418 () Bool)

(assert (=> b!4607418 (= e!2873991 (addToMapMapFromBucket!835 (_2!29240 (h!57170 (t!358302 (toList!4735 lt!1764105)))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lt!1764105))))))))

(declare-fun b!4607419 () Bool)

(assert (=> b!4607419 (= e!2873991 (ListMap!3998 Nil!51183))))

(assert (= (and d!1451508 c!789257) b!4607418))

(assert (= (and d!1451508 (not c!789257)) b!4607419))

(declare-fun m!5437195 () Bool)

(assert (=> d!1451508 m!5437195))

(declare-fun m!5437197 () Bool)

(assert (=> d!1451508 m!5437197))

(declare-fun m!5437199 () Bool)

(assert (=> b!4607418 m!5437199))

(assert (=> b!4607418 m!5437199))

(declare-fun m!5437205 () Bool)

(assert (=> b!4607418 m!5437205))

(assert (=> b!4607226 d!1451508))

(declare-fun bs!1014813 () Bool)

(declare-fun b!4607481 () Bool)

(assert (= bs!1014813 (and b!4607481 b!4607313)))

(declare-fun lambda!187832 () Int)

(assert (=> bs!1014813 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187832 lambda!187743))))

(declare-fun bs!1014814 () Bool)

(assert (= bs!1014814 (and b!4607481 b!4607328)))

(assert (=> bs!1014814 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187832 lambda!187745))))

(declare-fun bs!1014815 () Bool)

(assert (= bs!1014815 (and b!4607481 b!4607355)))

(assert (=> bs!1014815 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187832 lambda!187747))))

(assert (=> b!4607481 true))

(declare-fun bs!1014816 () Bool)

(declare-fun b!4607484 () Bool)

(assert (= bs!1014816 (and b!4607484 b!4607313)))

(declare-fun lambda!187833 () Int)

(assert (=> bs!1014816 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187833 lambda!187743))))

(declare-fun bs!1014817 () Bool)

(assert (= bs!1014817 (and b!4607484 b!4607328)))

(assert (=> bs!1014817 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187833 lambda!187745))))

(declare-fun bs!1014818 () Bool)

(assert (= bs!1014818 (and b!4607484 b!4607355)))

(assert (=> bs!1014818 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187833 lambda!187747))))

(declare-fun bs!1014819 () Bool)

(assert (= bs!1014819 (and b!4607484 b!4607481)))

(assert (=> bs!1014819 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187833 lambda!187832))))

(assert (=> b!4607484 true))

(declare-fun bs!1014820 () Bool)

(declare-fun b!4607480 () Bool)

(assert (= bs!1014820 (and b!4607480 b!4607484)))

(declare-fun lambda!187834 () Int)

(assert (=> bs!1014820 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187834 lambda!187833))))

(declare-fun bs!1014821 () Bool)

(assert (= bs!1014821 (and b!4607480 b!4607481)))

(assert (=> bs!1014821 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187834 lambda!187832))))

(declare-fun bs!1014822 () Bool)

(assert (= bs!1014822 (and b!4607480 b!4607313)))

(assert (=> bs!1014822 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187834 lambda!187743))))

(declare-fun bs!1014823 () Bool)

(assert (= bs!1014823 (and b!4607480 b!4607328)))

(assert (=> bs!1014823 (= (= (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187834 lambda!187745))))

(declare-fun bs!1014824 () Bool)

(assert (= bs!1014824 (and b!4607480 b!4607355)))

(assert (=> bs!1014824 (= lambda!187834 lambda!187747)))

(assert (=> b!4607480 true))

(declare-fun bs!1014825 () Bool)

(declare-fun b!4607478 () Bool)

(assert (= bs!1014825 (and b!4607478 b!4607314)))

(declare-fun lambda!187835 () Int)

(assert (=> bs!1014825 (= lambda!187835 lambda!187744)))

(declare-fun bs!1014826 () Bool)

(assert (= bs!1014826 (and b!4607478 b!4607329)))

(assert (=> bs!1014826 (= lambda!187835 lambda!187746)))

(declare-fun bs!1014827 () Bool)

(assert (= bs!1014827 (and b!4607478 b!4607356)))

(assert (=> bs!1014827 (= lambda!187835 lambda!187748)))

(declare-fun b!4607476 () Bool)

(declare-fun e!2874028 () Unit!109033)

(declare-fun Unit!109101 () Unit!109033)

(assert (=> b!4607476 (= e!2874028 Unit!109101)))

(declare-fun d!1451510 () Bool)

(declare-fun e!2874031 () Bool)

(assert (=> d!1451510 e!2874031))

(declare-fun res!1928376 () Bool)

(assert (=> d!1451510 (=> (not res!1928376) (not e!2874031))))

(declare-fun lt!1764507 () List!51310)

(assert (=> d!1451510 (= res!1928376 (noDuplicate!823 lt!1764507))))

(declare-fun e!2874029 () List!51310)

(assert (=> d!1451510 (= lt!1764507 e!2874029)))

(declare-fun c!789275 () Bool)

(assert (=> d!1451510 (= c!789275 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))

(assert (=> d!1451510 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))

(assert (=> d!1451510 (= (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) lt!1764507)))

(declare-fun b!4607477 () Bool)

(assert (=> b!4607477 false))

(declare-fun e!2874030 () Unit!109033)

(declare-fun Unit!109103 () Unit!109033)

(assert (=> b!4607477 (= e!2874030 Unit!109103)))

(assert (=> b!4607478 (= e!2874031 (= (content!8690 lt!1764507) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) lambda!187835))))))

(declare-fun b!4607479 () Bool)

(declare-fun res!1928377 () Bool)

(assert (=> b!4607479 (=> (not res!1928377) (not e!2874031))))

(assert (=> b!4607479 (= res!1928377 (= (length!502 lt!1764507) (length!503 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))))

(declare-fun res!1928378 () Bool)

(assert (=> b!4607480 (=> (not res!1928378) (not e!2874031))))

(assert (=> b!4607480 (= res!1928378 (forall!10675 lt!1764507 lambda!187834))))

(assert (=> b!4607481 false))

(declare-fun lt!1764511 () Unit!109033)

(declare-fun forallContained!2921 (List!51310 Int K!12550) Unit!109033)

(assert (=> b!4607481 (= lt!1764511 (forallContained!2921 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) lambda!187832 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))))

(declare-fun Unit!109104 () Unit!109033)

(assert (=> b!4607481 (= e!2874028 Unit!109104)))

(declare-fun b!4607482 () Bool)

(assert (=> b!4607482 (= e!2874029 Nil!51186)))

(declare-fun b!4607483 () Bool)

(declare-fun Unit!109105 () Unit!109033)

(assert (=> b!4607483 (= e!2874030 Unit!109105)))

(assert (=> b!4607484 (= e!2874029 (Cons!51186 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))))

(declare-fun c!789274 () Bool)

(assert (=> b!4607484 (= c!789274 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764508 () Unit!109033)

(assert (=> b!4607484 (= lt!1764508 e!2874030)))

(declare-fun c!789273 () Bool)

(assert (=> b!4607484 (= c!789273 (contains!14183 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764509 () Unit!109033)

(assert (=> b!4607484 (= lt!1764509 e!2874028)))

(declare-fun lt!1764506 () List!51310)

(assert (=> b!4607484 (= lt!1764506 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))))

(declare-fun lt!1764510 () Unit!109033)

(declare-fun lemmaForallContainsAddHeadPreserves!244 (List!51307 List!51310 tuple2!51890) Unit!109033)

(assert (=> b!4607484 (= lt!1764510 (lemmaForallContainsAddHeadPreserves!244 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) lt!1764506 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))))

(assert (=> b!4607484 (forall!10675 lt!1764506 lambda!187833)))

(declare-fun lt!1764505 () Unit!109033)

(assert (=> b!4607484 (= lt!1764505 lt!1764510)))

(assert (= (and d!1451510 c!789275) b!4607484))

(assert (= (and d!1451510 (not c!789275)) b!4607482))

(assert (= (and b!4607484 c!789274) b!4607477))

(assert (= (and b!4607484 (not c!789274)) b!4607483))

(assert (= (and b!4607484 c!789273) b!4607481))

(assert (= (and b!4607484 (not c!789273)) b!4607476))

(assert (= (and d!1451510 res!1928376) b!4607479))

(assert (= (and b!4607479 res!1928377) b!4607480))

(assert (= (and b!4607480 res!1928378) b!4607478))

(declare-fun m!5437305 () Bool)

(assert (=> b!4607481 m!5437305))

(assert (=> b!4607481 m!5437305))

(declare-fun m!5437307 () Bool)

(assert (=> b!4607481 m!5437307))

(assert (=> b!4607484 m!5437305))

(declare-fun m!5437309 () Bool)

(assert (=> b!4607484 m!5437309))

(declare-fun m!5437311 () Bool)

(assert (=> b!4607484 m!5437311))

(assert (=> b!4607484 m!5437305))

(declare-fun m!5437313 () Bool)

(assert (=> b!4607484 m!5437313))

(declare-fun m!5437315 () Bool)

(assert (=> b!4607484 m!5437315))

(declare-fun m!5437317 () Bool)

(assert (=> b!4607478 m!5437317))

(declare-fun m!5437319 () Bool)

(assert (=> b!4607478 m!5437319))

(assert (=> b!4607478 m!5437319))

(declare-fun m!5437321 () Bool)

(assert (=> b!4607478 m!5437321))

(declare-fun m!5437323 () Bool)

(assert (=> b!4607479 m!5437323))

(assert (=> b!4607479 m!5437069))

(declare-fun m!5437325 () Bool)

(assert (=> d!1451510 m!5437325))

(assert (=> d!1451510 m!5437041))

(declare-fun m!5437327 () Bool)

(assert (=> b!4607480 m!5437327))

(assert (=> b!4607105 d!1451510))

(declare-fun d!1451540 () Bool)

(assert (=> d!1451540 (= (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287)) (not (isEmpty!28889 (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))))

(declare-fun bs!1014828 () Bool)

(assert (= bs!1014828 d!1451540))

(assert (=> bs!1014828 m!5436835))

(declare-fun m!5437329 () Bool)

(assert (=> bs!1014828 m!5437329))

(assert (=> b!4607198 d!1451540))

(declare-fun b!4607489 () Bool)

(declare-fun e!2874034 () Option!11434)

(assert (=> b!4607489 (= e!2874034 (Some!11433 (_2!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun b!4607492 () Bool)

(declare-fun e!2874035 () Option!11434)

(assert (=> b!4607492 (= e!2874035 None!11433)))

(declare-fun b!4607491 () Bool)

(assert (=> b!4607491 (= e!2874035 (getValueByKey!1352 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(declare-fun b!4607490 () Bool)

(assert (=> b!4607490 (= e!2874034 e!2874035)))

(declare-fun c!789277 () Bool)

(assert (=> b!4607490 (= c!789277 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (not (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) key!3287))))))

(declare-fun d!1451542 () Bool)

(declare-fun c!789276 () Bool)

(assert (=> d!1451542 (= c!789276 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) key!3287)))))

(assert (=> d!1451542 (= (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) e!2874034)))

(assert (= (and d!1451542 c!789276) b!4607489))

(assert (= (and d!1451542 (not c!789276)) b!4607490))

(assert (= (and b!4607490 c!789277) b!4607491))

(assert (= (and b!4607490 (not c!789277)) b!4607492))

(declare-fun m!5437331 () Bool)

(assert (=> b!4607491 m!5437331))

(assert (=> b!4607198 d!1451542))

(declare-fun d!1451544 () Bool)

(declare-fun choose!30990 (Hashable!5759 K!12550) (_ BitVec 64))

(assert (=> d!1451544 (= (hash!3293 hashF!1107 key!3287) (choose!30990 hashF!1107 key!3287))))

(declare-fun bs!1014829 () Bool)

(assert (= bs!1014829 d!1451544))

(declare-fun m!5437333 () Bool)

(assert (=> bs!1014829 m!5437333))

(assert (=> d!1451434 d!1451544))

(declare-fun d!1451546 () Bool)

(declare-fun res!1928385 () Bool)

(declare-fun e!2874040 () Bool)

(assert (=> d!1451546 (=> res!1928385 e!2874040)))

(assert (=> d!1451546 (= res!1928385 (or ((_ is Nil!51184) (toList!4735 lm!1477)) ((_ is Nil!51184) (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451546 (= (isStrictlySorted!560 (toList!4735 lm!1477)) e!2874040)))

(declare-fun b!4607497 () Bool)

(declare-fun e!2874041 () Bool)

(assert (=> b!4607497 (= e!2874040 e!2874041)))

(declare-fun res!1928386 () Bool)

(assert (=> b!4607497 (=> (not res!1928386) (not e!2874041))))

(assert (=> b!4607497 (= res!1928386 (bvslt (_1!29240 (h!57170 (toList!4735 lm!1477))) (_1!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))

(declare-fun b!4607498 () Bool)

(assert (=> b!4607498 (= e!2874041 (isStrictlySorted!560 (t!358302 (toList!4735 lm!1477))))))

(assert (= (and d!1451546 (not res!1928385)) b!4607497))

(assert (= (and b!4607497 res!1928386) b!4607498))

(declare-fun m!5437335 () Bool)

(assert (=> b!4607498 m!5437335))

(assert (=> d!1451320 d!1451546))

(assert (=> b!4607109 d!1451470))

(assert (=> b!4607109 d!1451472))

(declare-fun d!1451548 () Bool)

(declare-fun res!1928387 () Bool)

(declare-fun e!2874042 () Bool)

(assert (=> d!1451548 (=> res!1928387 e!2874042)))

(assert (=> d!1451548 (= res!1928387 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) key!3287)))))

(assert (=> d!1451548 (= (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287) e!2874042)))

(declare-fun b!4607499 () Bool)

(declare-fun e!2874043 () Bool)

(assert (=> b!4607499 (= e!2874042 e!2874043)))

(declare-fun res!1928388 () Bool)

(assert (=> b!4607499 (=> (not res!1928388) (not e!2874043))))

(assert (=> b!4607499 (= res!1928388 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))))

(declare-fun b!4607500 () Bool)

(assert (=> b!4607500 (= e!2874043 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) key!3287))))

(assert (= (and d!1451548 (not res!1928387)) b!4607499))

(assert (= (and b!4607499 res!1928388) b!4607500))

(declare-fun m!5437337 () Bool)

(assert (=> b!4607500 m!5437337))

(assert (=> d!1451326 d!1451548))

(declare-fun d!1451550 () Bool)

(declare-fun res!1928393 () Bool)

(declare-fun e!2874048 () Bool)

(assert (=> d!1451550 (=> res!1928393 e!2874048)))

(assert (=> d!1451550 (= res!1928393 (and ((_ is Cons!51184) (toList!4735 lt!1764105)) (= (_1!29240 (h!57170 (toList!4735 lt!1764105))) hash!344)))))

(assert (=> d!1451550 (= (containsKey!2241 (toList!4735 lt!1764105) hash!344) e!2874048)))

(declare-fun b!4607505 () Bool)

(declare-fun e!2874049 () Bool)

(assert (=> b!4607505 (= e!2874048 e!2874049)))

(declare-fun res!1928394 () Bool)

(assert (=> b!4607505 (=> (not res!1928394) (not e!2874049))))

(assert (=> b!4607505 (= res!1928394 (and (or (not ((_ is Cons!51184) (toList!4735 lt!1764105))) (bvsle (_1!29240 (h!57170 (toList!4735 lt!1764105))) hash!344)) ((_ is Cons!51184) (toList!4735 lt!1764105)) (bvslt (_1!29240 (h!57170 (toList!4735 lt!1764105))) hash!344)))))

(declare-fun b!4607506 () Bool)

(assert (=> b!4607506 (= e!2874049 (containsKey!2241 (t!358302 (toList!4735 lt!1764105)) hash!344))))

(assert (= (and d!1451550 (not res!1928393)) b!4607505))

(assert (= (and b!4607505 res!1928394) b!4607506))

(declare-fun m!5437339 () Bool)

(assert (=> b!4607506 m!5437339))

(assert (=> d!1451412 d!1451550))

(declare-fun d!1451552 () Bool)

(assert (=> d!1451552 (= (get!16931 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344)) (v!45480 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344)))))

(assert (=> d!1451438 d!1451552))

(declare-fun d!1451554 () Bool)

(declare-fun c!789282 () Bool)

(assert (=> d!1451554 (= c!789282 (and ((_ is Cons!51184) (toList!4735 lt!1764105)) (= (_1!29240 (h!57170 (toList!4735 lt!1764105))) hash!344)))))

(declare-fun e!2874054 () Option!11435)

(assert (=> d!1451554 (= (getValueByKey!1353 (toList!4735 lt!1764105) hash!344) e!2874054)))

(declare-fun b!4607516 () Bool)

(declare-fun e!2874055 () Option!11435)

(assert (=> b!4607516 (= e!2874054 e!2874055)))

(declare-fun c!789283 () Bool)

(assert (=> b!4607516 (= c!789283 (and ((_ is Cons!51184) (toList!4735 lt!1764105)) (not (= (_1!29240 (h!57170 (toList!4735 lt!1764105))) hash!344))))))

(declare-fun b!4607515 () Bool)

(assert (=> b!4607515 (= e!2874054 (Some!11434 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(declare-fun b!4607517 () Bool)

(assert (=> b!4607517 (= e!2874055 (getValueByKey!1353 (t!358302 (toList!4735 lt!1764105)) hash!344))))

(declare-fun b!4607518 () Bool)

(assert (=> b!4607518 (= e!2874055 None!11434)))

(assert (= (and d!1451554 c!789282) b!4607515))

(assert (= (and d!1451554 (not c!789282)) b!4607516))

(assert (= (and b!4607516 c!789283) b!4607517))

(assert (= (and b!4607516 (not c!789283)) b!4607518))

(declare-fun m!5437341 () Bool)

(assert (=> b!4607517 m!5437341))

(assert (=> d!1451438 d!1451554))

(declare-fun d!1451556 () Bool)

(declare-fun c!789286 () Bool)

(assert (=> d!1451556 (= c!789286 ((_ is Nil!51184) (t!358302 (toList!4735 lm!1477))))))

(declare-fun e!2874058 () (InoxSet tuple2!51892))

(assert (=> d!1451556 (= (content!8689 (t!358302 (toList!4735 lm!1477))) e!2874058)))

(declare-fun b!4607523 () Bool)

(assert (=> b!4607523 (= e!2874058 ((as const (Array tuple2!51892 Bool)) false))))

(declare-fun b!4607524 () Bool)

(assert (=> b!4607524 (= e!2874058 ((_ map or) (store ((as const (Array tuple2!51892 Bool)) false) (h!57170 (t!358302 (toList!4735 lm!1477))) true) (content!8689 (t!358302 (t!358302 (toList!4735 lm!1477))))))))

(assert (= (and d!1451556 c!789286) b!4607523))

(assert (= (and d!1451556 (not c!789286)) b!4607524))

(declare-fun m!5437343 () Bool)

(assert (=> b!4607524 m!5437343))

(assert (=> b!4607524 m!5437083))

(assert (=> d!1451400 d!1451556))

(declare-fun d!1451558 () Bool)

(declare-fun e!2874060 () Bool)

(assert (=> d!1451558 e!2874060))

(declare-fun res!1928395 () Bool)

(assert (=> d!1451558 (=> res!1928395 e!2874060)))

(declare-fun lt!1764515 () Bool)

(assert (=> d!1451558 (= res!1928395 (not lt!1764515))))

(declare-fun lt!1764514 () Bool)

(assert (=> d!1451558 (= lt!1764515 lt!1764514)))

(declare-fun lt!1764512 () Unit!109033)

(declare-fun e!2874059 () Unit!109033)

(assert (=> d!1451558 (= lt!1764512 e!2874059)))

(declare-fun c!789287 () Bool)

(assert (=> d!1451558 (= c!789287 lt!1764514)))

(assert (=> d!1451558 (= lt!1764514 (containsKey!2241 (toList!4735 lm!1477) (hash!3291 hashF!1107 key!3287)))))

(assert (=> d!1451558 (= (contains!14182 lm!1477 (hash!3291 hashF!1107 key!3287)) lt!1764515)))

(declare-fun b!4607525 () Bool)

(declare-fun lt!1764513 () Unit!109033)

(assert (=> b!4607525 (= e!2874059 lt!1764513)))

(assert (=> b!4607525 (= lt!1764513 (lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (toList!4735 lm!1477) (hash!3291 hashF!1107 key!3287)))))

(assert (=> b!4607525 (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) (hash!3291 hashF!1107 key!3287)))))

(declare-fun b!4607526 () Bool)

(declare-fun Unit!109106 () Unit!109033)

(assert (=> b!4607526 (= e!2874059 Unit!109106)))

(declare-fun b!4607527 () Bool)

(assert (=> b!4607527 (= e!2874060 (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) (hash!3291 hashF!1107 key!3287))))))

(assert (= (and d!1451558 c!789287) b!4607525))

(assert (= (and d!1451558 (not c!789287)) b!4607526))

(assert (= (and d!1451558 (not res!1928395)) b!4607527))

(assert (=> d!1451558 m!5436547))

(declare-fun m!5437345 () Bool)

(assert (=> d!1451558 m!5437345))

(assert (=> b!4607525 m!5436547))

(declare-fun m!5437347 () Bool)

(assert (=> b!4607525 m!5437347))

(assert (=> b!4607525 m!5436547))

(declare-fun m!5437349 () Bool)

(assert (=> b!4607525 m!5437349))

(assert (=> b!4607525 m!5437349))

(declare-fun m!5437351 () Bool)

(assert (=> b!4607525 m!5437351))

(assert (=> b!4607527 m!5436547))

(assert (=> b!4607527 m!5437349))

(assert (=> b!4607527 m!5437349))

(assert (=> b!4607527 m!5437351))

(assert (=> d!1451344 d!1451558))

(assert (=> d!1451344 d!1451434))

(declare-fun d!1451560 () Bool)

(assert (=> d!1451560 (contains!14182 lm!1477 (hash!3291 hashF!1107 key!3287))))

(assert (=> d!1451560 true))

(declare-fun _$27!1474 () Unit!109033)

(assert (=> d!1451560 (= (choose!30975 lm!1477 key!3287 hashF!1107) _$27!1474)))

(declare-fun bs!1014830 () Bool)

(assert (= bs!1014830 d!1451560))

(assert (=> bs!1014830 m!5436547))

(assert (=> bs!1014830 m!5436547))

(assert (=> bs!1014830 m!5436727))

(assert (=> d!1451344 d!1451560))

(declare-fun d!1451562 () Bool)

(declare-fun res!1928396 () Bool)

(declare-fun e!2874067 () Bool)

(assert (=> d!1451562 (=> res!1928396 e!2874067)))

(assert (=> d!1451562 (= res!1928396 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451562 (= (forall!10672 (toList!4735 lm!1477) lambda!187712) e!2874067)))

(declare-fun b!4607540 () Bool)

(declare-fun e!2874068 () Bool)

(assert (=> b!4607540 (= e!2874067 e!2874068)))

(declare-fun res!1928397 () Bool)

(assert (=> b!4607540 (=> (not res!1928397) (not e!2874068))))

(assert (=> b!4607540 (= res!1928397 (dynLambda!21429 lambda!187712 (h!57170 (toList!4735 lm!1477))))))

(declare-fun b!4607541 () Bool)

(assert (=> b!4607541 (= e!2874068 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187712))))

(assert (= (and d!1451562 (not res!1928396)) b!4607540))

(assert (= (and b!4607540 res!1928397) b!4607541))

(declare-fun b_lambda!170137 () Bool)

(assert (=> (not b_lambda!170137) (not b!4607540)))

(declare-fun m!5437353 () Bool)

(assert (=> b!4607540 m!5437353))

(declare-fun m!5437355 () Bool)

(assert (=> b!4607541 m!5437355))

(assert (=> d!1451344 d!1451562))

(declare-fun bs!1014831 () Bool)

(declare-fun b!4607547 () Bool)

(assert (= bs!1014831 (and b!4607547 b!4607480)))

(declare-fun lambda!187840 () Int)

(assert (=> bs!1014831 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187840 lambda!187834))))

(declare-fun bs!1014832 () Bool)

(assert (= bs!1014832 (and b!4607547 b!4607484)))

(assert (=> bs!1014832 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187840 lambda!187833))))

(declare-fun bs!1014833 () Bool)

(assert (= bs!1014833 (and b!4607547 b!4607481)))

(assert (=> bs!1014833 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187840 lambda!187832))))

(declare-fun bs!1014834 () Bool)

(assert (= bs!1014834 (and b!4607547 b!4607313)))

(assert (=> bs!1014834 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187840 lambda!187743))))

(declare-fun bs!1014835 () Bool)

(assert (= bs!1014835 (and b!4607547 b!4607328)))

(assert (=> bs!1014835 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187840 lambda!187745))))

(declare-fun bs!1014836 () Bool)

(assert (= bs!1014836 (and b!4607547 b!4607355)))

(assert (=> bs!1014836 (= (= (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187840 lambda!187747))))

(assert (=> b!4607547 true))

(declare-fun bs!1014837 () Bool)

(declare-fun b!4607550 () Bool)

(assert (= bs!1014837 (and b!4607550 b!4607480)))

(declare-fun lambda!187843 () Int)

(assert (=> bs!1014837 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187843 lambda!187834))))

(declare-fun bs!1014838 () Bool)

(assert (= bs!1014838 (and b!4607550 b!4607484)))

(assert (=> bs!1014838 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187843 lambda!187833))))

(declare-fun bs!1014839 () Bool)

(assert (= bs!1014839 (and b!4607550 b!4607481)))

(assert (=> bs!1014839 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187843 lambda!187832))))

(declare-fun bs!1014840 () Bool)

(assert (= bs!1014840 (and b!4607550 b!4607328)))

(assert (=> bs!1014840 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187843 lambda!187745))))

(declare-fun bs!1014841 () Bool)

(assert (= bs!1014841 (and b!4607550 b!4607355)))

(assert (=> bs!1014841 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187843 lambda!187747))))

(declare-fun bs!1014842 () Bool)

(assert (= bs!1014842 (and b!4607550 b!4607313)))

(assert (=> bs!1014842 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187843 lambda!187743))))

(declare-fun bs!1014843 () Bool)

(assert (= bs!1014843 (and b!4607550 b!4607547)))

(assert (=> bs!1014843 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (= lambda!187843 lambda!187840))))

(assert (=> b!4607550 true))

(declare-fun bs!1014844 () Bool)

(declare-fun b!4607546 () Bool)

(assert (= bs!1014844 (and b!4607546 b!4607550)))

(declare-fun lambda!187846 () Int)

(assert (=> bs!1014844 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))) (= lambda!187846 lambda!187843))))

(declare-fun bs!1014845 () Bool)

(assert (= bs!1014845 (and b!4607546 b!4607480)))

(assert (=> bs!1014845 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187846 lambda!187834))))

(declare-fun bs!1014846 () Bool)

(assert (= bs!1014846 (and b!4607546 b!4607484)))

(assert (=> bs!1014846 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187846 lambda!187833))))

(declare-fun bs!1014847 () Bool)

(assert (= bs!1014847 (and b!4607546 b!4607481)))

(assert (=> bs!1014847 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187846 lambda!187832))))

(declare-fun bs!1014848 () Bool)

(assert (= bs!1014848 (and b!4607546 b!4607328)))

(assert (=> bs!1014848 (= lambda!187846 lambda!187745)))

(declare-fun bs!1014849 () Bool)

(assert (= bs!1014849 (and b!4607546 b!4607355)))

(assert (=> bs!1014849 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187846 lambda!187747))))

(declare-fun bs!1014850 () Bool)

(assert (= bs!1014850 (and b!4607546 b!4607313)))

(assert (=> bs!1014850 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187846 lambda!187743))))

(declare-fun bs!1014851 () Bool)

(assert (= bs!1014851 (and b!4607546 b!4607547)))

(assert (=> bs!1014851 (= (= (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (= lambda!187846 lambda!187840))))

(assert (=> b!4607546 true))

(declare-fun bs!1014852 () Bool)

(declare-fun b!4607544 () Bool)

(assert (= bs!1014852 (and b!4607544 b!4607314)))

(declare-fun lambda!187847 () Int)

(assert (=> bs!1014852 (= lambda!187847 lambda!187744)))

(declare-fun bs!1014853 () Bool)

(assert (= bs!1014853 (and b!4607544 b!4607329)))

(assert (=> bs!1014853 (= lambda!187847 lambda!187746)))

(declare-fun bs!1014854 () Bool)

(assert (= bs!1014854 (and b!4607544 b!4607356)))

(assert (=> bs!1014854 (= lambda!187847 lambda!187748)))

(declare-fun bs!1014855 () Bool)

(assert (= bs!1014855 (and b!4607544 b!4607478)))

(assert (=> bs!1014855 (= lambda!187847 lambda!187835)))

(declare-fun b!4607542 () Bool)

(declare-fun e!2874069 () Unit!109033)

(declare-fun Unit!109118 () Unit!109033)

(assert (=> b!4607542 (= e!2874069 Unit!109118)))

(declare-fun d!1451564 () Bool)

(declare-fun e!2874072 () Bool)

(assert (=> d!1451564 e!2874072))

(declare-fun res!1928398 () Bool)

(assert (=> d!1451564 (=> (not res!1928398) (not e!2874072))))

(declare-fun lt!1764532 () List!51310)

(assert (=> d!1451564 (= res!1928398 (noDuplicate!823 lt!1764532))))

(declare-fun e!2874070 () List!51310)

(assert (=> d!1451564 (= lt!1764532 e!2874070)))

(declare-fun c!789296 () Bool)

(assert (=> d!1451564 (= c!789296 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> d!1451564 (invariantList!1143 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451564 (= (getKeysList!594 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) lt!1764532)))

(declare-fun b!4607543 () Bool)

(assert (=> b!4607543 false))

(declare-fun e!2874071 () Unit!109033)

(declare-fun Unit!109119 () Unit!109033)

(assert (=> b!4607543 (= e!2874071 Unit!109119)))

(assert (=> b!4607544 (= e!2874072 (= (content!8690 lt!1764532) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187847))))))

(declare-fun b!4607545 () Bool)

(declare-fun res!1928399 () Bool)

(assert (=> b!4607545 (=> (not res!1928399) (not e!2874072))))

(assert (=> b!4607545 (= res!1928399 (= (length!502 lt!1764532) (length!503 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun res!1928400 () Bool)

(assert (=> b!4607546 (=> (not res!1928400) (not e!2874072))))

(assert (=> b!4607546 (= res!1928400 (forall!10675 lt!1764532 lambda!187846))))

(assert (=> b!4607547 false))

(declare-fun lt!1764536 () Unit!109033)

(assert (=> b!4607547 (= lt!1764536 (forallContained!2921 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) lambda!187840 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun Unit!109120 () Unit!109033)

(assert (=> b!4607547 (= e!2874069 Unit!109120)))

(declare-fun b!4607548 () Bool)

(assert (=> b!4607548 (= e!2874070 Nil!51186)))

(declare-fun b!4607549 () Bool)

(declare-fun Unit!109121 () Unit!109033)

(assert (=> b!4607549 (= e!2874071 Unit!109121)))

(assert (=> b!4607550 (= e!2874070 (Cons!51186 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun c!789295 () Bool)

(assert (=> b!4607550 (= c!789295 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun lt!1764533 () Unit!109033)

(assert (=> b!4607550 (= lt!1764533 e!2874071)))

(declare-fun c!789294 () Bool)

(assert (=> b!4607550 (= c!789294 (contains!14183 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))))

(declare-fun lt!1764534 () Unit!109033)

(assert (=> b!4607550 (= lt!1764534 e!2874069)))

(declare-fun lt!1764531 () List!51310)

(assert (=> b!4607550 (= lt!1764531 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764535 () Unit!109033)

(assert (=> b!4607550 (= lt!1764535 (lemmaForallContainsAddHeadPreserves!244 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) lt!1764531 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))))

(assert (=> b!4607550 (forall!10675 lt!1764531 lambda!187843)))

(declare-fun lt!1764530 () Unit!109033)

(assert (=> b!4607550 (= lt!1764530 lt!1764535)))

(assert (= (and d!1451564 c!789296) b!4607550))

(assert (= (and d!1451564 (not c!789296)) b!4607548))

(assert (= (and b!4607550 c!789295) b!4607543))

(assert (= (and b!4607550 (not c!789295)) b!4607549))

(assert (= (and b!4607550 c!789294) b!4607547))

(assert (= (and b!4607550 (not c!789294)) b!4607542))

(assert (= (and d!1451564 res!1928398) b!4607545))

(assert (= (and b!4607545 res!1928399) b!4607546))

(assert (= (and b!4607546 res!1928400) b!4607544))

(declare-fun m!5437357 () Bool)

(assert (=> b!4607547 m!5437357))

(assert (=> b!4607547 m!5437357))

(declare-fun m!5437359 () Bool)

(assert (=> b!4607547 m!5437359))

(assert (=> b!4607550 m!5437357))

(declare-fun m!5437361 () Bool)

(assert (=> b!4607550 m!5437361))

(declare-fun m!5437363 () Bool)

(assert (=> b!4607550 m!5437363))

(assert (=> b!4607550 m!5437357))

(declare-fun m!5437365 () Bool)

(assert (=> b!4607550 m!5437365))

(declare-fun m!5437367 () Bool)

(assert (=> b!4607550 m!5437367))

(declare-fun m!5437369 () Bool)

(assert (=> b!4607544 m!5437369))

(declare-fun m!5437371 () Bool)

(assert (=> b!4607544 m!5437371))

(assert (=> b!4607544 m!5437371))

(declare-fun m!5437373 () Bool)

(assert (=> b!4607544 m!5437373))

(declare-fun m!5437375 () Bool)

(assert (=> b!4607545 m!5437375))

(assert (=> b!4607545 m!5437015))

(declare-fun m!5437377 () Bool)

(assert (=> d!1451564 m!5437377))

(declare-fun m!5437379 () Bool)

(assert (=> d!1451564 m!5437379))

(declare-fun m!5437381 () Bool)

(assert (=> b!4607546 m!5437381))

(assert (=> b!4607194 d!1451564))

(declare-fun d!1451566 () Bool)

(declare-fun res!1928407 () Bool)

(declare-fun e!2874075 () Bool)

(assert (=> d!1451566 (=> res!1928407 e!2874075)))

(declare-fun e!2874076 () Bool)

(assert (=> d!1451566 (= res!1928407 e!2874076)))

(declare-fun res!1928409 () Bool)

(assert (=> d!1451566 (=> (not res!1928409) (not e!2874076))))

(assert (=> d!1451566 (= res!1928409 ((_ is Cons!51184) (t!358302 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451566 (= (containsKeyBiggerList!300 (t!358302 (t!358302 (toList!4735 lm!1477))) key!3287) e!2874075)))

(declare-fun b!4607557 () Bool)

(assert (=> b!4607557 (= e!2874076 (containsKey!2238 (_2!29240 (h!57170 (t!358302 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(declare-fun b!4607558 () Bool)

(declare-fun e!2874077 () Bool)

(assert (=> b!4607558 (= e!2874075 e!2874077)))

(declare-fun res!1928408 () Bool)

(assert (=> b!4607558 (=> (not res!1928408) (not e!2874077))))

(assert (=> b!4607558 (= res!1928408 ((_ is Cons!51184) (t!358302 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun b!4607559 () Bool)

(assert (=> b!4607559 (= e!2874077 (containsKeyBiggerList!300 (t!358302 (t!358302 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (= (and d!1451566 res!1928409) b!4607557))

(assert (= (and d!1451566 (not res!1928407)) b!4607558))

(assert (= (and b!4607558 res!1928408) b!4607559))

(declare-fun m!5437383 () Bool)

(assert (=> b!4607557 m!5437383))

(declare-fun m!5437385 () Bool)

(assert (=> b!4607559 m!5437385))

(assert (=> b!4607279 d!1451566))

(declare-fun b!4607560 () Bool)

(declare-fun e!2874078 () List!51307)

(assert (=> b!4607560 (= e!2874078 (t!358301 (t!358301 lt!1764107)))))

(declare-fun b!4607562 () Bool)

(declare-fun e!2874079 () List!51307)

(assert (=> b!4607562 (= e!2874079 (Cons!51183 (h!57169 (t!358301 lt!1764107)) (removePairForKey!985 (t!358301 (t!358301 lt!1764107)) key!3287)))))

(declare-fun b!4607563 () Bool)

(assert (=> b!4607563 (= e!2874079 Nil!51183)))

(declare-fun b!4607561 () Bool)

(assert (=> b!4607561 (= e!2874078 e!2874079)))

(declare-fun c!789297 () Bool)

(assert (=> b!4607561 (= c!789297 ((_ is Cons!51183) (t!358301 lt!1764107)))))

(declare-fun d!1451568 () Bool)

(declare-fun lt!1764537 () List!51307)

(assert (=> d!1451568 (not (containsKey!2238 lt!1764537 key!3287))))

(assert (=> d!1451568 (= lt!1764537 e!2874078)))

(declare-fun c!789298 () Bool)

(assert (=> d!1451568 (= c!789298 (and ((_ is Cons!51183) (t!358301 lt!1764107)) (= (_1!29239 (h!57169 (t!358301 lt!1764107))) key!3287)))))

(assert (=> d!1451568 (noDuplicateKeys!1360 (t!358301 lt!1764107))))

(assert (=> d!1451568 (= (removePairForKey!985 (t!358301 lt!1764107) key!3287) lt!1764537)))

(assert (= (and d!1451568 c!789298) b!4607560))

(assert (= (and d!1451568 (not c!789298)) b!4607561))

(assert (= (and b!4607561 c!789297) b!4607562))

(assert (= (and b!4607561 (not c!789297)) b!4607563))

(declare-fun m!5437387 () Bool)

(assert (=> b!4607562 m!5437387))

(declare-fun m!5437389 () Bool)

(assert (=> d!1451568 m!5437389))

(declare-fun m!5437391 () Bool)

(assert (=> d!1451568 m!5437391))

(assert (=> b!4607181 d!1451568))

(declare-fun d!1451570 () Bool)

(declare-fun isEmpty!28891 (Option!11435) Bool)

(assert (=> d!1451570 (= (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110)) (not (isEmpty!28891 (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110))))))

(declare-fun bs!1014857 () Bool)

(assert (= bs!1014857 d!1451570))

(assert (=> bs!1014857 m!5436779))

(declare-fun m!5437393 () Bool)

(assert (=> bs!1014857 m!5437393))

(assert (=> b!4607159 d!1451570))

(declare-fun d!1451572 () Bool)

(declare-fun c!789302 () Bool)

(assert (=> d!1451572 (= c!789302 (and ((_ is Cons!51184) (toList!4735 lm!1477)) (= (_1!29240 (h!57170 (toList!4735 lm!1477))) lt!1764110)))))

(declare-fun e!2874084 () Option!11435)

(assert (=> d!1451572 (= (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110) e!2874084)))

(declare-fun b!4607576 () Bool)

(declare-fun e!2874085 () Option!11435)

(assert (=> b!4607576 (= e!2874084 e!2874085)))

(declare-fun c!789303 () Bool)

(assert (=> b!4607576 (= c!789303 (and ((_ is Cons!51184) (toList!4735 lm!1477)) (not (= (_1!29240 (h!57170 (toList!4735 lm!1477))) lt!1764110))))))

(declare-fun b!4607575 () Bool)

(assert (=> b!4607575 (= e!2874084 (Some!11434 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(declare-fun b!4607577 () Bool)

(assert (=> b!4607577 (= e!2874085 (getValueByKey!1353 (t!358302 (toList!4735 lm!1477)) lt!1764110))))

(declare-fun b!4607578 () Bool)

(assert (=> b!4607578 (= e!2874085 None!11434)))

(assert (= (and d!1451572 c!789302) b!4607575))

(assert (= (and d!1451572 (not c!789302)) b!4607576))

(assert (= (and b!4607576 c!789303) b!4607577))

(assert (= (and b!4607576 (not c!789303)) b!4607578))

(declare-fun m!5437395 () Bool)

(assert (=> b!4607577 m!5437395))

(assert (=> b!4607159 d!1451572))

(declare-fun bs!1014860 () Bool)

(declare-fun b!4607579 () Bool)

(assert (= bs!1014860 (and b!4607579 b!4607410)))

(declare-fun lambda!187852 () Int)

(assert (=> bs!1014860 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764423) (= lambda!187852 lambda!187812))))

(declare-fun bs!1014861 () Bool)

(assert (= bs!1014861 (and b!4607579 b!4607395)))

(assert (=> bs!1014861 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187852 lambda!187802))))

(declare-fun bs!1014862 () Bool)

(assert (= bs!1014862 (and b!4607579 d!1451506)))

(assert (=> bs!1014862 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764432) (= lambda!187852 lambda!187814))))

(declare-fun bs!1014863 () Bool)

(assert (= bs!1014863 (and b!4607579 b!4607406)))

(assert (=> bs!1014863 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187852 lambda!187810))))

(assert (=> bs!1014860 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187852 lambda!187811))))

(assert (=> bs!1014861 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764401) (= lambda!187852 lambda!187803))))

(declare-fun bs!1014864 () Bool)

(assert (= bs!1014864 (and b!4607579 d!1451324)))

(assert (=> bs!1014864 (not (= lambda!187852 lambda!187696))))

(declare-fun bs!1014865 () Bool)

(assert (= bs!1014865 (and b!4607579 d!1451500)))

(assert (=> bs!1014865 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764410) (= lambda!187852 lambda!187804))))

(declare-fun bs!1014866 () Bool)

(assert (= bs!1014866 (and b!4607579 b!4607391)))

(assert (=> bs!1014866 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187852 lambda!187799))))

(assert (=> b!4607579 true))

(declare-fun bs!1014867 () Bool)

(declare-fun b!4607583 () Bool)

(assert (= bs!1014867 (and b!4607583 b!4607579)))

(declare-fun lambda!187853 () Int)

(assert (=> bs!1014867 (= lambda!187853 lambda!187852)))

(declare-fun bs!1014868 () Bool)

(assert (= bs!1014868 (and b!4607583 b!4607410)))

(assert (=> bs!1014868 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764423) (= lambda!187853 lambda!187812))))

(declare-fun bs!1014869 () Bool)

(assert (= bs!1014869 (and b!4607583 b!4607395)))

(assert (=> bs!1014869 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187853 lambda!187802))))

(declare-fun bs!1014870 () Bool)

(assert (= bs!1014870 (and b!4607583 d!1451506)))

(assert (=> bs!1014870 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764432) (= lambda!187853 lambda!187814))))

(declare-fun bs!1014871 () Bool)

(assert (= bs!1014871 (and b!4607583 b!4607406)))

(assert (=> bs!1014871 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187853 lambda!187810))))

(assert (=> bs!1014868 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187853 lambda!187811))))

(assert (=> bs!1014869 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764401) (= lambda!187853 lambda!187803))))

(declare-fun bs!1014872 () Bool)

(assert (= bs!1014872 (and b!4607583 d!1451324)))

(assert (=> bs!1014872 (not (= lambda!187853 lambda!187696))))

(declare-fun bs!1014873 () Bool)

(assert (= bs!1014873 (and b!4607583 d!1451500)))

(assert (=> bs!1014873 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764410) (= lambda!187853 lambda!187804))))

(declare-fun bs!1014874 () Bool)

(assert (= bs!1014874 (and b!4607583 b!4607391)))

(assert (=> bs!1014874 (= (= (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187853 lambda!187799))))

(assert (=> b!4607583 true))

(declare-fun lt!1764552 () ListMap!3997)

(declare-fun lambda!187854 () Int)

(assert (=> bs!1014867 (= (= lt!1764552 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (= lambda!187854 lambda!187852))))

(assert (=> bs!1014868 (= (= lt!1764552 lt!1764423) (= lambda!187854 lambda!187812))))

(assert (=> bs!1014869 (= (= lt!1764552 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187854 lambda!187802))))

(assert (=> bs!1014870 (= (= lt!1764552 lt!1764432) (= lambda!187854 lambda!187814))))

(assert (=> bs!1014871 (= (= lt!1764552 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187854 lambda!187810))))

(assert (=> bs!1014868 (= (= lt!1764552 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187854 lambda!187811))))

(assert (=> bs!1014869 (= (= lt!1764552 lt!1764401) (= lambda!187854 lambda!187803))))

(assert (=> bs!1014872 (not (= lambda!187854 lambda!187696))))

(assert (=> b!4607583 (= (= lt!1764552 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (= lambda!187854 lambda!187853))))

(assert (=> bs!1014873 (= (= lt!1764552 lt!1764410) (= lambda!187854 lambda!187804))))

(assert (=> bs!1014874 (= (= lt!1764552 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187854 lambda!187799))))

(assert (=> b!4607583 true))

(declare-fun bs!1014875 () Bool)

(declare-fun d!1451574 () Bool)

(assert (= bs!1014875 (and d!1451574 b!4607579)))

(declare-fun lt!1764561 () ListMap!3997)

(declare-fun lambda!187855 () Int)

(assert (=> bs!1014875 (= (= lt!1764561 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (= lambda!187855 lambda!187852))))

(declare-fun bs!1014876 () Bool)

(assert (= bs!1014876 (and d!1451574 b!4607395)))

(assert (=> bs!1014876 (= (= lt!1764561 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187855 lambda!187802))))

(declare-fun bs!1014877 () Bool)

(assert (= bs!1014877 (and d!1451574 d!1451506)))

(assert (=> bs!1014877 (= (= lt!1764561 lt!1764432) (= lambda!187855 lambda!187814))))

(declare-fun bs!1014878 () Bool)

(assert (= bs!1014878 (and d!1451574 b!4607406)))

(assert (=> bs!1014878 (= (= lt!1764561 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187855 lambda!187810))))

(declare-fun bs!1014879 () Bool)

(assert (= bs!1014879 (and d!1451574 b!4607410)))

(assert (=> bs!1014879 (= (= lt!1764561 (extractMap!1420 (t!358302 (toList!4735 lt!1764105)))) (= lambda!187855 lambda!187811))))

(assert (=> bs!1014876 (= (= lt!1764561 lt!1764401) (= lambda!187855 lambda!187803))))

(declare-fun bs!1014880 () Bool)

(assert (= bs!1014880 (and d!1451574 d!1451324)))

(assert (=> bs!1014880 (not (= lambda!187855 lambda!187696))))

(declare-fun bs!1014881 () Bool)

(assert (= bs!1014881 (and d!1451574 b!4607583)))

(assert (=> bs!1014881 (= (= lt!1764561 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (= lambda!187855 lambda!187853))))

(assert (=> bs!1014879 (= (= lt!1764561 lt!1764423) (= lambda!187855 lambda!187812))))

(assert (=> bs!1014881 (= (= lt!1764561 lt!1764552) (= lambda!187855 lambda!187854))))

(declare-fun bs!1014882 () Bool)

(assert (= bs!1014882 (and d!1451574 d!1451500)))

(assert (=> bs!1014882 (= (= lt!1764561 lt!1764410) (= lambda!187855 lambda!187804))))

(declare-fun bs!1014883 () Bool)

(assert (= bs!1014883 (and d!1451574 b!4607391)))

(assert (=> bs!1014883 (= (= lt!1764561 (extractMap!1420 (t!358302 (t!358302 (toList!4735 lm!1477))))) (= lambda!187855 lambda!187799))))

(assert (=> d!1451574 true))

(declare-fun e!2874088 () ListMap!3997)

(assert (=> b!4607579 (= e!2874088 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))

(declare-fun lt!1764551 () Unit!109033)

(declare-fun call!321366 () Unit!109033)

(assert (=> b!4607579 (= lt!1764551 call!321366)))

(declare-fun call!321367 () Bool)

(assert (=> b!4607579 call!321367))

(declare-fun lt!1764563 () Unit!109033)

(assert (=> b!4607579 (= lt!1764563 lt!1764551)))

(declare-fun call!321368 () Bool)

(assert (=> b!4607579 call!321368))

(declare-fun lt!1764556 () Unit!109033)

(declare-fun Unit!109122 () Unit!109033)

(assert (=> b!4607579 (= lt!1764556 Unit!109122)))

(declare-fun b!4607580 () Bool)

(declare-fun res!1928415 () Bool)

(declare-fun e!2874086 () Bool)

(assert (=> b!4607580 (=> (not res!1928415) (not e!2874086))))

(assert (=> b!4607580 (= res!1928415 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187855))))

(declare-fun b!4607581 () Bool)

(assert (=> b!4607581 (= e!2874086 (invariantList!1143 (toList!4736 lt!1764561)))))

(declare-fun b!4607582 () Bool)

(declare-fun e!2874087 () Bool)

(assert (=> b!4607582 (= e!2874087 call!321367)))

(assert (=> d!1451574 e!2874086))

(declare-fun res!1928413 () Bool)

(assert (=> d!1451574 (=> (not res!1928413) (not e!2874086))))

(assert (=> d!1451574 (= res!1928413 (forall!10673 (_2!29240 (h!57170 (toList!4735 lm!1477))) lambda!187855))))

(assert (=> d!1451574 (= lt!1764561 e!2874088)))

(declare-fun c!789304 () Bool)

(assert (=> d!1451574 (= c!789304 ((_ is Nil!51183) (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(assert (=> d!1451574 (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477))))))

(assert (=> d!1451574 (= (addToMapMapFromBucket!835 (_2!29240 (h!57170 (toList!4735 lm!1477))) (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lt!1764561)))

(declare-fun bm!321361 () Bool)

(assert (=> bm!321361 (= call!321366 (lemmaContainsAllItsOwnKeys!448 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> b!4607583 (= e!2874088 lt!1764552)))

(declare-fun lt!1764550 () ListMap!3997)

(assert (=> b!4607583 (= lt!1764550 (+!1774 (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(assert (=> b!4607583 (= lt!1764552 (addToMapMapFromBucket!835 (t!358301 (_2!29240 (h!57170 (toList!4735 lm!1477)))) (+!1774 (extractMap!1420 (t!358302 (toList!4735 lm!1477))) (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))))

(declare-fun lt!1764565 () Unit!109033)

(assert (=> b!4607583 (= lt!1764565 call!321366)))

(assert (=> b!4607583 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187853)))

(declare-fun lt!1764546 () Unit!109033)

(assert (=> b!4607583 (= lt!1764546 lt!1764565)))

(assert (=> b!4607583 call!321368))

(declare-fun lt!1764545 () Unit!109033)

(declare-fun Unit!109123 () Unit!109033)

(assert (=> b!4607583 (= lt!1764545 Unit!109123)))

(assert (=> b!4607583 (forall!10673 (t!358301 (_2!29240 (h!57170 (toList!4735 lm!1477)))) lambda!187854)))

(declare-fun lt!1764548 () Unit!109033)

(declare-fun Unit!109124 () Unit!109033)

(assert (=> b!4607583 (= lt!1764548 Unit!109124)))

(declare-fun lt!1764549 () Unit!109033)

(declare-fun Unit!109125 () Unit!109033)

(assert (=> b!4607583 (= lt!1764549 Unit!109125)))

(declare-fun lt!1764553 () Unit!109033)

(assert (=> b!4607583 (= lt!1764553 (forallContained!2919 (toList!4736 lt!1764550) lambda!187854 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(assert (=> b!4607583 (contains!14180 lt!1764550 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(declare-fun lt!1764559 () Unit!109033)

(declare-fun Unit!109126 () Unit!109033)

(assert (=> b!4607583 (= lt!1764559 Unit!109126)))

(assert (=> b!4607583 (contains!14180 lt!1764552 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(declare-fun lt!1764557 () Unit!109033)

(declare-fun Unit!109127 () Unit!109033)

(assert (=> b!4607583 (= lt!1764557 Unit!109127)))

(assert (=> b!4607583 (forall!10673 (_2!29240 (h!57170 (toList!4735 lm!1477))) lambda!187854)))

(declare-fun lt!1764547 () Unit!109033)

(declare-fun Unit!109128 () Unit!109033)

(assert (=> b!4607583 (= lt!1764547 Unit!109128)))

(assert (=> b!4607583 (forall!10673 (toList!4736 lt!1764550) lambda!187854)))

(declare-fun lt!1764554 () Unit!109033)

(declare-fun Unit!109129 () Unit!109033)

(assert (=> b!4607583 (= lt!1764554 Unit!109129)))

(declare-fun lt!1764564 () Unit!109033)

(declare-fun Unit!109130 () Unit!109033)

(assert (=> b!4607583 (= lt!1764564 Unit!109130)))

(declare-fun lt!1764562 () Unit!109033)

(assert (=> b!4607583 (= lt!1764562 (addForallContainsKeyThenBeforeAdding!448 (extractMap!1420 (t!358302 (toList!4735 lm!1477))) lt!1764552 (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))) (_2!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))))

(assert (=> b!4607583 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187854)))

(declare-fun lt!1764560 () Unit!109033)

(assert (=> b!4607583 (= lt!1764560 lt!1764562)))

(assert (=> b!4607583 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) lambda!187854)))

(declare-fun lt!1764555 () Unit!109033)

(declare-fun Unit!109131 () Unit!109033)

(assert (=> b!4607583 (= lt!1764555 Unit!109131)))

(declare-fun res!1928414 () Bool)

(assert (=> b!4607583 (= res!1928414 (forall!10673 (_2!29240 (h!57170 (toList!4735 lm!1477))) lambda!187854))))

(assert (=> b!4607583 (=> (not res!1928414) (not e!2874087))))

(assert (=> b!4607583 e!2874087))

(declare-fun lt!1764558 () Unit!109033)

(declare-fun Unit!109132 () Unit!109033)

(assert (=> b!4607583 (= lt!1764558 Unit!109132)))

(declare-fun bm!321362 () Bool)

(assert (=> bm!321362 (= call!321367 (forall!10673 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (ite c!789304 lambda!187852 lambda!187854)))))

(declare-fun bm!321363 () Bool)

(assert (=> bm!321363 (= call!321368 (forall!10673 (ite c!789304 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) (toList!4736 lt!1764550)) (ite c!789304 lambda!187852 lambda!187854)))))

(assert (= (and d!1451574 c!789304) b!4607579))

(assert (= (and d!1451574 (not c!789304)) b!4607583))

(assert (= (and b!4607583 res!1928414) b!4607582))

(assert (= (or b!4607579 b!4607582) bm!321362))

(assert (= (or b!4607579 b!4607583) bm!321363))

(assert (= (or b!4607579 b!4607583) bm!321361))

(assert (= (and d!1451574 res!1928413) b!4607580))

(assert (= (and b!4607580 res!1928415) b!4607581))

(declare-fun m!5437435 () Bool)

(assert (=> bm!321362 m!5437435))

(declare-fun m!5437437 () Bool)

(assert (=> d!1451574 m!5437437))

(assert (=> d!1451574 m!5436979))

(declare-fun m!5437439 () Bool)

(assert (=> b!4607583 m!5437439))

(declare-fun m!5437441 () Bool)

(assert (=> b!4607583 m!5437441))

(declare-fun m!5437443 () Bool)

(assert (=> b!4607583 m!5437443))

(declare-fun m!5437445 () Bool)

(assert (=> b!4607583 m!5437445))

(assert (=> b!4607583 m!5436587))

(assert (=> b!4607583 m!5437441))

(declare-fun m!5437447 () Bool)

(assert (=> b!4607583 m!5437447))

(declare-fun m!5437449 () Bool)

(assert (=> b!4607583 m!5437449))

(assert (=> b!4607583 m!5437449))

(declare-fun m!5437451 () Bool)

(assert (=> b!4607583 m!5437451))

(assert (=> b!4607583 m!5437451))

(assert (=> b!4607583 m!5436587))

(declare-fun m!5437453 () Bool)

(assert (=> b!4607583 m!5437453))

(declare-fun m!5437455 () Bool)

(assert (=> b!4607583 m!5437455))

(declare-fun m!5437457 () Bool)

(assert (=> b!4607583 m!5437457))

(declare-fun m!5437459 () Bool)

(assert (=> b!4607583 m!5437459))

(assert (=> bm!321361 m!5436587))

(declare-fun m!5437461 () Bool)

(assert (=> bm!321361 m!5437461))

(declare-fun m!5437463 () Bool)

(assert (=> b!4607581 m!5437463))

(declare-fun m!5437465 () Bool)

(assert (=> bm!321363 m!5437465))

(declare-fun m!5437467 () Bool)

(assert (=> b!4607580 m!5437467))

(assert (=> b!4607118 d!1451574))

(assert (=> b!4607118 d!1451396))

(declare-fun d!1451584 () Bool)

(declare-fun res!1928429 () Bool)

(declare-fun e!2874102 () Bool)

(assert (=> d!1451584 (=> res!1928429 e!2874102)))

(assert (=> d!1451584 (= res!1928429 (and ((_ is Cons!51183) (t!358301 lt!1764107)) (= (_1!29239 (h!57169 (t!358301 lt!1764107))) key!3287)))))

(assert (=> d!1451584 (= (containsKey!2238 (t!358301 lt!1764107) key!3287) e!2874102)))

(declare-fun b!4607599 () Bool)

(declare-fun e!2874103 () Bool)

(assert (=> b!4607599 (= e!2874102 e!2874103)))

(declare-fun res!1928430 () Bool)

(assert (=> b!4607599 (=> (not res!1928430) (not e!2874103))))

(assert (=> b!4607599 (= res!1928430 ((_ is Cons!51183) (t!358301 lt!1764107)))))

(declare-fun b!4607600 () Bool)

(assert (=> b!4607600 (= e!2874103 (containsKey!2238 (t!358301 (t!358301 lt!1764107)) key!3287))))

(assert (= (and d!1451584 (not res!1928429)) b!4607599))

(assert (= (and b!4607599 res!1928430) b!4607600))

(declare-fun m!5437469 () Bool)

(assert (=> b!4607600 m!5437469))

(assert (=> b!4607235 d!1451584))

(declare-fun d!1451586 () Bool)

(declare-fun lt!1764587 () Bool)

(assert (=> d!1451586 (= lt!1764587 (select (content!8690 (keys!17947 (extractMap!1420 (toList!4735 lm!1477)))) key!3287))))

(declare-fun e!2874104 () Bool)

(assert (=> d!1451586 (= lt!1764587 e!2874104)))

(declare-fun res!1928432 () Bool)

(assert (=> d!1451586 (=> (not res!1928432) (not e!2874104))))

(assert (=> d!1451586 (= res!1928432 ((_ is Cons!51186) (keys!17947 (extractMap!1420 (toList!4735 lm!1477)))))))

(assert (=> d!1451586 (= (contains!14183 (keys!17947 (extractMap!1420 (toList!4735 lm!1477))) key!3287) lt!1764587)))

(declare-fun b!4607601 () Bool)

(declare-fun e!2874105 () Bool)

(assert (=> b!4607601 (= e!2874104 e!2874105)))

(declare-fun res!1928431 () Bool)

(assert (=> b!4607601 (=> res!1928431 e!2874105)))

(assert (=> b!4607601 (= res!1928431 (= (h!57174 (keys!17947 (extractMap!1420 (toList!4735 lm!1477)))) key!3287))))

(declare-fun b!4607602 () Bool)

(assert (=> b!4607602 (= e!2874105 (contains!14183 (t!358304 (keys!17947 (extractMap!1420 (toList!4735 lm!1477)))) key!3287))))

(assert (= (and d!1451586 res!1928432) b!4607601))

(assert (= (and b!4607601 (not res!1928431)) b!4607602))

(assert (=> d!1451586 m!5436687))

(declare-fun m!5437471 () Bool)

(assert (=> d!1451586 m!5437471))

(declare-fun m!5437473 () Bool)

(assert (=> d!1451586 m!5437473))

(declare-fun m!5437475 () Bool)

(assert (=> b!4607602 m!5437475))

(assert (=> b!4607103 d!1451586))

(assert (=> b!4607103 d!1451482))

(assert (=> b!4607136 d!1451358))

(declare-fun d!1451588 () Bool)

(assert (=> d!1451588 (isDefined!8702 (getValueByKey!1353 (toList!4735 lm!1477) lt!1764110))))

(declare-fun lt!1764590 () Unit!109033)

(declare-fun choose!30993 (List!51308 (_ BitVec 64)) Unit!109033)

(assert (=> d!1451588 (= lt!1764590 (choose!30993 (toList!4735 lm!1477) lt!1764110))))

(declare-fun e!2874108 () Bool)

(assert (=> d!1451588 e!2874108))

(declare-fun res!1928435 () Bool)

(assert (=> d!1451588 (=> (not res!1928435) (not e!2874108))))

(assert (=> d!1451588 (= res!1928435 (isStrictlySorted!560 (toList!4735 lm!1477)))))

(assert (=> d!1451588 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (toList!4735 lm!1477) lt!1764110) lt!1764590)))

(declare-fun b!4607605 () Bool)

(assert (=> b!4607605 (= e!2874108 (containsKey!2241 (toList!4735 lm!1477) lt!1764110))))

(assert (= (and d!1451588 res!1928435) b!4607605))

(assert (=> d!1451588 m!5436779))

(assert (=> d!1451588 m!5436779))

(assert (=> d!1451588 m!5436781))

(declare-fun m!5437477 () Bool)

(assert (=> d!1451588 m!5437477))

(assert (=> d!1451588 m!5436625))

(assert (=> b!4607605 m!5436775))

(assert (=> b!4607157 d!1451588))

(assert (=> b!4607157 d!1451570))

(assert (=> b!4607157 d!1451572))

(declare-fun d!1451590 () Bool)

(declare-fun noDuplicatedKeys!338 (List!51307) Bool)

(assert (=> d!1451590 (= (invariantList!1143 (toList!4736 lt!1764263)) (noDuplicatedKeys!338 (toList!4736 lt!1764263)))))

(declare-fun bs!1014908 () Bool)

(assert (= bs!1014908 d!1451590))

(declare-fun m!5437483 () Bool)

(assert (=> bs!1014908 m!5437483))

(assert (=> d!1451396 d!1451590))

(declare-fun d!1451592 () Bool)

(declare-fun res!1928436 () Bool)

(declare-fun e!2874109 () Bool)

(assert (=> d!1451592 (=> res!1928436 e!2874109)))

(assert (=> d!1451592 (= res!1928436 ((_ is Nil!51184) (t!358302 (toList!4735 lm!1477))))))

(assert (=> d!1451592 (= (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187727) e!2874109)))

(declare-fun b!4607606 () Bool)

(declare-fun e!2874110 () Bool)

(assert (=> b!4607606 (= e!2874109 e!2874110)))

(declare-fun res!1928437 () Bool)

(assert (=> b!4607606 (=> (not res!1928437) (not e!2874110))))

(assert (=> b!4607606 (= res!1928437 (dynLambda!21429 lambda!187727 (h!57170 (t!358302 (toList!4735 lm!1477)))))))

(declare-fun b!4607607 () Bool)

(assert (=> b!4607607 (= e!2874110 (forall!10672 (t!358302 (t!358302 (toList!4735 lm!1477))) lambda!187727))))

(assert (= (and d!1451592 (not res!1928436)) b!4607606))

(assert (= (and b!4607606 res!1928437) b!4607607))

(declare-fun b_lambda!170143 () Bool)

(assert (=> (not b_lambda!170143) (not b!4607606)))

(declare-fun m!5437507 () Bool)

(assert (=> b!4607606 m!5437507))

(declare-fun m!5437509 () Bool)

(assert (=> b!4607607 m!5437509))

(assert (=> d!1451396 d!1451592))

(declare-fun d!1451594 () Bool)

(assert (=> d!1451594 (= (invariantList!1143 (toList!4736 lt!1764262)) (noDuplicatedKeys!338 (toList!4736 lt!1764262)))))

(declare-fun bs!1014909 () Bool)

(assert (= bs!1014909 d!1451594))

(declare-fun m!5437517 () Bool)

(assert (=> bs!1014909 m!5437517))

(assert (=> d!1451394 d!1451594))

(declare-fun d!1451596 () Bool)

(declare-fun res!1928438 () Bool)

(declare-fun e!2874111 () Bool)

(assert (=> d!1451596 (=> res!1928438 e!2874111)))

(assert (=> d!1451596 (= res!1928438 ((_ is Nil!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451596 (= (forall!10672 (toList!4735 lt!1764105) lambda!187726) e!2874111)))

(declare-fun b!4607608 () Bool)

(declare-fun e!2874112 () Bool)

(assert (=> b!4607608 (= e!2874111 e!2874112)))

(declare-fun res!1928439 () Bool)

(assert (=> b!4607608 (=> (not res!1928439) (not e!2874112))))

(assert (=> b!4607608 (= res!1928439 (dynLambda!21429 lambda!187726 (h!57170 (toList!4735 lt!1764105))))))

(declare-fun b!4607609 () Bool)

(assert (=> b!4607609 (= e!2874112 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187726))))

(assert (= (and d!1451596 (not res!1928438)) b!4607608))

(assert (= (and b!4607608 res!1928439) b!4607609))

(declare-fun b_lambda!170145 () Bool)

(assert (=> (not b_lambda!170145) (not b!4607608)))

(declare-fun m!5437523 () Bool)

(assert (=> b!4607608 m!5437523))

(declare-fun m!5437525 () Bool)

(assert (=> b!4607609 m!5437525))

(assert (=> d!1451394 d!1451596))

(declare-fun d!1451600 () Bool)

(declare-fun res!1928440 () Bool)

(declare-fun e!2874114 () Bool)

(assert (=> d!1451600 (=> res!1928440 e!2874114)))

(assert (=> d!1451600 (= res!1928440 ((_ is Nil!51184) (t!358302 (toList!4735 lt!1764105))))))

(assert (=> d!1451600 (= (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187690) e!2874114)))

(declare-fun b!4607612 () Bool)

(declare-fun e!2874115 () Bool)

(assert (=> b!4607612 (= e!2874114 e!2874115)))

(declare-fun res!1928441 () Bool)

(assert (=> b!4607612 (=> (not res!1928441) (not e!2874115))))

(assert (=> b!4607612 (= res!1928441 (dynLambda!21429 lambda!187690 (h!57170 (t!358302 (toList!4735 lt!1764105)))))))

(declare-fun b!4607613 () Bool)

(assert (=> b!4607613 (= e!2874115 (forall!10672 (t!358302 (t!358302 (toList!4735 lt!1764105))) lambda!187690))))

(assert (= (and d!1451600 (not res!1928440)) b!4607612))

(assert (= (and b!4607612 res!1928441) b!4607613))

(declare-fun b_lambda!170147 () Bool)

(assert (=> (not b_lambda!170147) (not b!4607612)))

(declare-fun m!5437527 () Bool)

(assert (=> b!4607612 m!5437527))

(declare-fun m!5437529 () Bool)

(assert (=> b!4607613 m!5437529))

(assert (=> b!4607245 d!1451600))

(assert (=> b!4607189 d!1451462))

(assert (=> b!4607189 d!1451464))

(declare-fun d!1451602 () Bool)

(assert (=> d!1451602 (= (tail!8014 (toList!4735 lm!1477)) (t!358302 (toList!4735 lm!1477)))))

(assert (=> d!1451414 d!1451602))

(declare-fun d!1451604 () Bool)

(assert (=> d!1451604 (= (get!16931 (getValueByKey!1353 (toList!4735 lm!1477) hash!344)) (v!45480 (getValueByKey!1353 (toList!4735 lm!1477) hash!344)))))

(assert (=> d!1451354 d!1451604))

(declare-fun d!1451606 () Bool)

(declare-fun c!789307 () Bool)

(assert (=> d!1451606 (= c!789307 (and ((_ is Cons!51184) (toList!4735 lm!1477)) (= (_1!29240 (h!57170 (toList!4735 lm!1477))) hash!344)))))

(declare-fun e!2874116 () Option!11435)

(assert (=> d!1451606 (= (getValueByKey!1353 (toList!4735 lm!1477) hash!344) e!2874116)))

(declare-fun b!4607615 () Bool)

(declare-fun e!2874117 () Option!11435)

(assert (=> b!4607615 (= e!2874116 e!2874117)))

(declare-fun c!789308 () Bool)

(assert (=> b!4607615 (= c!789308 (and ((_ is Cons!51184) (toList!4735 lm!1477)) (not (= (_1!29240 (h!57170 (toList!4735 lm!1477))) hash!344))))))

(declare-fun b!4607614 () Bool)

(assert (=> b!4607614 (= e!2874116 (Some!11434 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(declare-fun b!4607616 () Bool)

(assert (=> b!4607616 (= e!2874117 (getValueByKey!1353 (t!358302 (toList!4735 lm!1477)) hash!344))))

(declare-fun b!4607617 () Bool)

(assert (=> b!4607617 (= e!2874117 None!11434)))

(assert (= (and d!1451606 c!789307) b!4607614))

(assert (= (and d!1451606 (not c!789307)) b!4607615))

(assert (= (and b!4607615 c!789308) b!4607616))

(assert (= (and b!4607615 (not c!789308)) b!4607617))

(declare-fun m!5437539 () Bool)

(assert (=> b!4607616 m!5437539))

(assert (=> d!1451354 d!1451606))

(declare-fun d!1451610 () Bool)

(declare-fun res!1928442 () Bool)

(declare-fun e!2874118 () Bool)

(assert (=> d!1451610 (=> res!1928442 e!2874118)))

(assert (=> d!1451610 (= res!1928442 (and ((_ is Cons!51183) lt!1764227) (= (_1!29239 (h!57169 lt!1764227)) key!3287)))))

(assert (=> d!1451610 (= (containsKey!2238 lt!1764227 key!3287) e!2874118)))

(declare-fun b!4607618 () Bool)

(declare-fun e!2874119 () Bool)

(assert (=> b!4607618 (= e!2874118 e!2874119)))

(declare-fun res!1928443 () Bool)

(assert (=> b!4607618 (=> (not res!1928443) (not e!2874119))))

(assert (=> b!4607618 (= res!1928443 ((_ is Cons!51183) lt!1764227))))

(declare-fun b!4607619 () Bool)

(assert (=> b!4607619 (= e!2874119 (containsKey!2238 (t!358301 lt!1764227) key!3287))))

(assert (= (and d!1451610 (not res!1928442)) b!4607618))

(assert (= (and b!4607618 res!1928443) b!4607619))

(declare-fun m!5437541 () Bool)

(assert (=> b!4607619 m!5437541))

(assert (=> d!1451376 d!1451610))

(declare-fun d!1451612 () Bool)

(declare-fun res!1928444 () Bool)

(declare-fun e!2874120 () Bool)

(assert (=> d!1451612 (=> res!1928444 e!2874120)))

(assert (=> d!1451612 (= res!1928444 (not ((_ is Cons!51183) lt!1764107)))))

(assert (=> d!1451612 (= (noDuplicateKeys!1360 lt!1764107) e!2874120)))

(declare-fun b!4607620 () Bool)

(declare-fun e!2874121 () Bool)

(assert (=> b!4607620 (= e!2874120 e!2874121)))

(declare-fun res!1928445 () Bool)

(assert (=> b!4607620 (=> (not res!1928445) (not e!2874121))))

(assert (=> b!4607620 (= res!1928445 (not (containsKey!2238 (t!358301 lt!1764107) (_1!29239 (h!57169 lt!1764107)))))))

(declare-fun b!4607621 () Bool)

(assert (=> b!4607621 (= e!2874121 (noDuplicateKeys!1360 (t!358301 lt!1764107)))))

(assert (= (and d!1451612 (not res!1928444)) b!4607620))

(assert (= (and b!4607620 res!1928445) b!4607621))

(declare-fun m!5437543 () Bool)

(assert (=> b!4607620 m!5437543))

(assert (=> b!4607621 m!5437391))

(assert (=> d!1451376 d!1451612))

(declare-fun d!1451616 () Bool)

(declare-fun res!1928446 () Bool)

(declare-fun e!2874122 () Bool)

(assert (=> d!1451616 (=> res!1928446 e!2874122)))

(assert (=> d!1451616 (= res!1928446 (and ((_ is Cons!51183) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) key!3287)))))

(assert (=> d!1451616 (= (containsKey!2240 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) e!2874122)))

(declare-fun b!4607622 () Bool)

(declare-fun e!2874123 () Bool)

(assert (=> b!4607622 (= e!2874122 e!2874123)))

(declare-fun res!1928447 () Bool)

(assert (=> b!4607622 (=> (not res!1928447) (not e!2874123))))

(assert (=> b!4607622 (= res!1928447 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))))

(declare-fun b!4607623 () Bool)

(assert (=> b!4607623 (= e!2874123 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287))))

(assert (= (and d!1451616 (not res!1928446)) b!4607622))

(assert (= (and b!4607622 res!1928447) b!4607623))

(declare-fun m!5437545 () Bool)

(assert (=> b!4607623 m!5437545))

(assert (=> d!1451384 d!1451616))

(declare-fun d!1451618 () Bool)

(assert (=> d!1451618 (isDefined!8702 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344))))

(declare-fun lt!1764592 () Unit!109033)

(assert (=> d!1451618 (= lt!1764592 (choose!30993 (toList!4735 lt!1764105) hash!344))))

(declare-fun e!2874124 () Bool)

(assert (=> d!1451618 e!2874124))

(declare-fun res!1928448 () Bool)

(assert (=> d!1451618 (=> (not res!1928448) (not e!2874124))))

(assert (=> d!1451618 (= res!1928448 (isStrictlySorted!560 (toList!4735 lt!1764105)))))

(assert (=> d!1451618 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1255 (toList!4735 lt!1764105) hash!344) lt!1764592)))

(declare-fun b!4607624 () Bool)

(assert (=> b!4607624 (= e!2874124 (containsKey!2241 (toList!4735 lt!1764105) hash!344))))

(assert (= (and d!1451618 res!1928448) b!4607624))

(assert (=> d!1451618 m!5436927))

(assert (=> d!1451618 m!5436927))

(assert (=> d!1451618 m!5436929))

(declare-fun m!5437547 () Bool)

(assert (=> d!1451618 m!5437547))

(declare-fun m!5437549 () Bool)

(assert (=> d!1451618 m!5437549))

(assert (=> b!4607624 m!5436923))

(assert (=> b!4607259 d!1451618))

(declare-fun d!1451620 () Bool)

(assert (=> d!1451620 (= (isDefined!8702 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344)) (not (isEmpty!28891 (getValueByKey!1353 (toList!4735 lt!1764105) hash!344))))))

(declare-fun bs!1014921 () Bool)

(assert (= bs!1014921 d!1451620))

(assert (=> bs!1014921 m!5436927))

(declare-fun m!5437551 () Bool)

(assert (=> bs!1014921 m!5437551))

(assert (=> b!4607259 d!1451620))

(assert (=> b!4607259 d!1451554))

(declare-fun d!1451622 () Bool)

(declare-fun lt!1764593 () Bool)

(assert (=> d!1451622 (= lt!1764593 (select (content!8690 e!2873834) key!3287))))

(declare-fun e!2874125 () Bool)

(assert (=> d!1451622 (= lt!1764593 e!2874125)))

(declare-fun res!1928450 () Bool)

(assert (=> d!1451622 (=> (not res!1928450) (not e!2874125))))

(assert (=> d!1451622 (= res!1928450 ((_ is Cons!51186) e!2873834))))

(assert (=> d!1451622 (= (contains!14183 e!2873834 key!3287) lt!1764593)))

(declare-fun b!4607625 () Bool)

(declare-fun e!2874126 () Bool)

(assert (=> b!4607625 (= e!2874125 e!2874126)))

(declare-fun res!1928449 () Bool)

(assert (=> b!4607625 (=> res!1928449 e!2874126)))

(assert (=> b!4607625 (= res!1928449 (= (h!57174 e!2873834) key!3287))))

(declare-fun b!4607626 () Bool)

(assert (=> b!4607626 (= e!2874126 (contains!14183 (t!358304 e!2873834) key!3287))))

(assert (= (and d!1451622 res!1928450) b!4607625))

(assert (= (and b!4607625 (not res!1928449)) b!4607626))

(declare-fun m!5437553 () Bool)

(assert (=> d!1451622 m!5437553))

(declare-fun m!5437555 () Bool)

(assert (=> d!1451622 m!5437555))

(declare-fun m!5437557 () Bool)

(assert (=> b!4607626 m!5437557))

(assert (=> bm!321334 d!1451622))

(declare-fun d!1451624 () Bool)

(declare-fun res!1928451 () Bool)

(declare-fun e!2874127 () Bool)

(assert (=> d!1451624 (=> res!1928451 e!2874127)))

(assert (=> d!1451624 (= res!1928451 (not ((_ is Cons!51183) (_2!29240 lt!1764108))))))

(assert (=> d!1451624 (= (noDuplicateKeys!1360 (_2!29240 lt!1764108)) e!2874127)))

(declare-fun b!4607627 () Bool)

(declare-fun e!2874128 () Bool)

(assert (=> b!4607627 (= e!2874127 e!2874128)))

(declare-fun res!1928452 () Bool)

(assert (=> b!4607627 (=> (not res!1928452) (not e!2874128))))

(assert (=> b!4607627 (= res!1928452 (not (containsKey!2238 (t!358301 (_2!29240 lt!1764108)) (_1!29239 (h!57169 (_2!29240 lt!1764108))))))))

(declare-fun b!4607628 () Bool)

(assert (=> b!4607628 (= e!2874128 (noDuplicateKeys!1360 (t!358301 (_2!29240 lt!1764108))))))

(assert (= (and d!1451624 (not res!1928451)) b!4607627))

(assert (= (and b!4607627 res!1928452) b!4607628))

(declare-fun m!5437559 () Bool)

(assert (=> b!4607627 m!5437559))

(declare-fun m!5437561 () Bool)

(assert (=> b!4607628 m!5437561))

(assert (=> bs!1014719 d!1451624))

(assert (=> d!1451322 d!1451326))

(assert (=> d!1451322 d!1451334))

(declare-fun d!1451626 () Bool)

(assert (=> d!1451626 (not (contains!14180 (extractMap!1420 (toList!4735 lm!1477)) key!3287))))

(assert (=> d!1451626 true))

(declare-fun _$26!578 () Unit!109033)

(assert (=> d!1451626 (= (choose!30974 lm!1477 key!3287 hashF!1107) _$26!578)))

(declare-fun bs!1014924 () Bool)

(assert (= bs!1014924 d!1451626))

(assert (=> bs!1014924 m!5436549))

(assert (=> bs!1014924 m!5436549))

(assert (=> bs!1014924 m!5436551))

(assert (=> d!1451322 d!1451626))

(declare-fun d!1451652 () Bool)

(declare-fun res!1928475 () Bool)

(declare-fun e!2874157 () Bool)

(assert (=> d!1451652 (=> res!1928475 e!2874157)))

(assert (=> d!1451652 (= res!1928475 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451652 (= (forall!10672 (toList!4735 lm!1477) lambda!187693) e!2874157)))

(declare-fun b!4607663 () Bool)

(declare-fun e!2874158 () Bool)

(assert (=> b!4607663 (= e!2874157 e!2874158)))

(declare-fun res!1928476 () Bool)

(assert (=> b!4607663 (=> (not res!1928476) (not e!2874158))))

(assert (=> b!4607663 (= res!1928476 (dynLambda!21429 lambda!187693 (h!57170 (toList!4735 lm!1477))))))

(declare-fun b!4607664 () Bool)

(assert (=> b!4607664 (= e!2874158 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187693))))

(assert (= (and d!1451652 (not res!1928475)) b!4607663))

(assert (= (and b!4607663 res!1928476) b!4607664))

(declare-fun b_lambda!170153 () Bool)

(assert (=> (not b_lambda!170153) (not b!4607663)))

(declare-fun m!5437597 () Bool)

(assert (=> b!4607663 m!5437597))

(declare-fun m!5437599 () Bool)

(assert (=> b!4607664 m!5437599))

(assert (=> d!1451322 d!1451652))

(declare-fun bs!1014925 () Bool)

(declare-fun b!4607670 () Bool)

(assert (= bs!1014925 (and b!4607670 b!4607550)))

(declare-fun lambda!187861 () Int)

(assert (=> bs!1014925 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))) (= lambda!187861 lambda!187843))))

(declare-fun bs!1014926 () Bool)

(assert (= bs!1014926 (and b!4607670 b!4607484)))

(assert (=> bs!1014926 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187861 lambda!187833))))

(declare-fun bs!1014927 () Bool)

(assert (= bs!1014927 (and b!4607670 b!4607481)))

(assert (=> bs!1014927 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187861 lambda!187832))))

(declare-fun bs!1014928 () Bool)

(assert (= bs!1014928 (and b!4607670 b!4607328)))

(assert (=> bs!1014928 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187861 lambda!187745))))

(declare-fun bs!1014929 () Bool)

(assert (= bs!1014929 (and b!4607670 b!4607355)))

(assert (=> bs!1014929 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187861 lambda!187747))))

(declare-fun bs!1014930 () Bool)

(assert (= bs!1014930 (and b!4607670 b!4607480)))

(assert (=> bs!1014930 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187861 lambda!187834))))

(declare-fun bs!1014931 () Bool)

(assert (= bs!1014931 (and b!4607670 b!4607546)))

(assert (=> bs!1014931 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187861 lambda!187846))))

(declare-fun bs!1014932 () Bool)

(assert (= bs!1014932 (and b!4607670 b!4607313)))

(assert (=> bs!1014932 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187861 lambda!187743))))

(declare-fun bs!1014933 () Bool)

(assert (= bs!1014933 (and b!4607670 b!4607547)))

(assert (=> bs!1014933 (= (= (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (= lambda!187861 lambda!187840))))

(assert (=> b!4607670 true))

(declare-fun bs!1014934 () Bool)

(declare-fun b!4607673 () Bool)

(assert (= bs!1014934 (and b!4607673 b!4607550)))

(declare-fun lambda!187862 () Int)

(assert (=> bs!1014934 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))) (= lambda!187862 lambda!187843))))

(declare-fun bs!1014935 () Bool)

(assert (= bs!1014935 (and b!4607673 b!4607670)))

(assert (=> bs!1014935 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (= lambda!187862 lambda!187861))))

(declare-fun bs!1014936 () Bool)

(assert (= bs!1014936 (and b!4607673 b!4607484)))

(assert (=> bs!1014936 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187862 lambda!187833))))

(declare-fun bs!1014937 () Bool)

(assert (= bs!1014937 (and b!4607673 b!4607481)))

(assert (=> bs!1014937 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187862 lambda!187832))))

(declare-fun bs!1014938 () Bool)

(assert (= bs!1014938 (and b!4607673 b!4607328)))

(assert (=> bs!1014938 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187862 lambda!187745))))

(declare-fun bs!1014939 () Bool)

(assert (= bs!1014939 (and b!4607673 b!4607355)))

(assert (=> bs!1014939 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187862 lambda!187747))))

(declare-fun bs!1014940 () Bool)

(assert (= bs!1014940 (and b!4607673 b!4607480)))

(assert (=> bs!1014940 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187862 lambda!187834))))

(declare-fun bs!1014941 () Bool)

(assert (= bs!1014941 (and b!4607673 b!4607546)))

(assert (=> bs!1014941 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187862 lambda!187846))))

(declare-fun bs!1014942 () Bool)

(assert (= bs!1014942 (and b!4607673 b!4607313)))

(assert (=> bs!1014942 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (= lambda!187862 lambda!187743))))

(declare-fun bs!1014943 () Bool)

(assert (= bs!1014943 (and b!4607673 b!4607547)))

(assert (=> bs!1014943 (= (= (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (= lambda!187862 lambda!187840))))

(assert (=> b!4607673 true))

(declare-fun bs!1014944 () Bool)

(declare-fun b!4607669 () Bool)

(assert (= bs!1014944 (and b!4607669 b!4607550)))

(declare-fun lambda!187865 () Int)

(assert (=> bs!1014944 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))))) (= lambda!187865 lambda!187843))))

(declare-fun bs!1014945 () Bool)

(assert (= bs!1014945 (and b!4607669 b!4607670)))

(assert (=> bs!1014945 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (= lambda!187865 lambda!187861))))

(declare-fun bs!1014946 () Bool)

(assert (= bs!1014946 (and b!4607669 b!4607673)))

(assert (=> bs!1014946 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))) (= lambda!187865 lambda!187862))))

(declare-fun bs!1014947 () Bool)

(assert (= bs!1014947 (and b!4607669 b!4607484)))

(assert (=> bs!1014947 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (Cons!51183 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))))) (= lambda!187865 lambda!187833))))

(declare-fun bs!1014948 () Bool)

(assert (= bs!1014948 (and b!4607669 b!4607481)))

(assert (=> bs!1014948 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))) (= lambda!187865 lambda!187832))))

(declare-fun bs!1014949 () Bool)

(assert (= bs!1014949 (and b!4607669 b!4607328)))

(assert (=> bs!1014949 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187865 lambda!187745))))

(declare-fun bs!1014950 () Bool)

(assert (= bs!1014950 (and b!4607669 b!4607355)))

(assert (=> bs!1014950 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187865 lambda!187747))))

(declare-fun bs!1014951 () Bool)

(assert (= bs!1014951 (and b!4607669 b!4607480)))

(assert (=> bs!1014951 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (toList!4736 (extractMap!1420 (toList!4735 lm!1477)))) (= lambda!187865 lambda!187834))))

(declare-fun bs!1014952 () Bool)

(assert (= bs!1014952 (and b!4607669 b!4607546)))

(assert (=> bs!1014952 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) (= lambda!187865 lambda!187846))))

(declare-fun bs!1014953 () Bool)

(assert (= bs!1014953 (and b!4607669 b!4607313)))

(assert (=> bs!1014953 (= lambda!187865 lambda!187743)))

(declare-fun bs!1014954 () Bool)

(assert (= bs!1014954 (and b!4607669 b!4607547)))

(assert (=> bs!1014954 (= (= (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) (t!358301 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))) (= lambda!187865 lambda!187840))))

(assert (=> b!4607669 true))

(declare-fun bs!1014955 () Bool)

(declare-fun b!4607667 () Bool)

(assert (= bs!1014955 (and b!4607667 b!4607356)))

(declare-fun lambda!187868 () Int)

(assert (=> bs!1014955 (= lambda!187868 lambda!187748)))

(declare-fun bs!1014956 () Bool)

(assert (= bs!1014956 (and b!4607667 b!4607314)))

(assert (=> bs!1014956 (= lambda!187868 lambda!187744)))

(declare-fun bs!1014957 () Bool)

(assert (= bs!1014957 (and b!4607667 b!4607478)))

(assert (=> bs!1014957 (= lambda!187868 lambda!187835)))

(declare-fun bs!1014958 () Bool)

(assert (= bs!1014958 (and b!4607667 b!4607329)))

(assert (=> bs!1014958 (= lambda!187868 lambda!187746)))

(declare-fun bs!1014959 () Bool)

(assert (= bs!1014959 (and b!4607667 b!4607544)))

(assert (=> bs!1014959 (= lambda!187868 lambda!187847)))

(declare-fun b!4607665 () Bool)

(declare-fun e!2874159 () Unit!109033)

(declare-fun Unit!109137 () Unit!109033)

(assert (=> b!4607665 (= e!2874159 Unit!109137)))

(declare-fun d!1451654 () Bool)

(declare-fun e!2874162 () Bool)

(assert (=> d!1451654 e!2874162))

(declare-fun res!1928477 () Bool)

(assert (=> d!1451654 (=> (not res!1928477) (not e!2874162))))

(declare-fun lt!1764597 () List!51310)

(assert (=> d!1451654 (= res!1928477 (noDuplicate!823 lt!1764597))))

(declare-fun e!2874160 () List!51310)

(assert (=> d!1451654 (= lt!1764597 e!2874160)))

(declare-fun c!789317 () Bool)

(assert (=> d!1451654 (= c!789317 ((_ is Cons!51183) (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))

(assert (=> d!1451654 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))

(assert (=> d!1451654 (= (getKeysList!594 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) lt!1764597)))

(declare-fun b!4607666 () Bool)

(assert (=> b!4607666 false))

(declare-fun e!2874161 () Unit!109033)

(declare-fun Unit!109138 () Unit!109033)

(assert (=> b!4607666 (= e!2874161 Unit!109138)))

(assert (=> b!4607667 (= e!2874162 (= (content!8690 lt!1764597) (content!8690 (map!11316 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))) lambda!187868))))))

(declare-fun b!4607668 () Bool)

(declare-fun res!1928478 () Bool)

(assert (=> b!4607668 (=> (not res!1928478) (not e!2874162))))

(assert (=> b!4607668 (= res!1928478 (= (length!502 lt!1764597) (length!503 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))))

(declare-fun res!1928479 () Bool)

(assert (=> b!4607669 (=> (not res!1928479) (not e!2874162))))

(assert (=> b!4607669 (= res!1928479 (forall!10675 lt!1764597 lambda!187865))))

(assert (=> b!4607670 false))

(declare-fun lt!1764601 () Unit!109033)

(assert (=> b!4607670 (= lt!1764601 (forallContained!2921 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) lambda!187861 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))))

(declare-fun Unit!109139 () Unit!109033)

(assert (=> b!4607670 (= e!2874159 Unit!109139)))

(declare-fun b!4607671 () Bool)

(assert (=> b!4607671 (= e!2874160 Nil!51186)))

(declare-fun b!4607672 () Bool)

(declare-fun Unit!109140 () Unit!109033)

(assert (=> b!4607672 (= e!2874161 Unit!109140)))

(assert (=> b!4607673 (= e!2874160 (Cons!51186 (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))))

(declare-fun c!789316 () Bool)

(assert (=> b!4607673 (= c!789316 (containsKey!2240 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))))

(declare-fun lt!1764598 () Unit!109033)

(assert (=> b!4607673 (= lt!1764598 e!2874161)))

(declare-fun c!789315 () Bool)

(assert (=> b!4607673 (= c!789315 (contains!14183 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))) (_1!29239 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))))))))

(declare-fun lt!1764599 () Unit!109033)

(assert (=> b!4607673 (= lt!1764599 e!2874159)))

(declare-fun lt!1764596 () List!51310)

(assert (=> b!4607673 (= lt!1764596 (getKeysList!594 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))))

(declare-fun lt!1764600 () Unit!109033)

(assert (=> b!4607673 (= lt!1764600 (lemmaForallContainsAddHeadPreserves!244 (t!358301 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105)))) lt!1764596 (h!57169 (toList!4736 (extractMap!1420 (toList!4735 lt!1764105))))))))

(assert (=> b!4607673 (forall!10675 lt!1764596 lambda!187862)))

(declare-fun lt!1764595 () Unit!109033)

(assert (=> b!4607673 (= lt!1764595 lt!1764600)))

(assert (= (and d!1451654 c!789317) b!4607673))

(assert (= (and d!1451654 (not c!789317)) b!4607671))

(assert (= (and b!4607673 c!789316) b!4607666))

(assert (= (and b!4607673 (not c!789316)) b!4607672))

(assert (= (and b!4607673 c!789315) b!4607670))

(assert (= (and b!4607673 (not c!789315)) b!4607665))

(assert (= (and d!1451654 res!1928477) b!4607668))

(assert (= (and b!4607668 res!1928478) b!4607669))

(assert (= (and b!4607669 res!1928479) b!4607667))

(declare-fun m!5437601 () Bool)

(assert (=> b!4607670 m!5437601))

(assert (=> b!4607670 m!5437601))

(declare-fun m!5437603 () Bool)

(assert (=> b!4607670 m!5437603))

(assert (=> b!4607673 m!5437601))

(declare-fun m!5437605 () Bool)

(assert (=> b!4607673 m!5437605))

(declare-fun m!5437607 () Bool)

(assert (=> b!4607673 m!5437607))

(assert (=> b!4607673 m!5437601))

(declare-fun m!5437609 () Bool)

(assert (=> b!4607673 m!5437609))

(declare-fun m!5437611 () Bool)

(assert (=> b!4607673 m!5437611))

(declare-fun m!5437613 () Bool)

(assert (=> b!4607667 m!5437613))

(declare-fun m!5437615 () Bool)

(assert (=> b!4607667 m!5437615))

(assert (=> b!4607667 m!5437615))

(declare-fun m!5437617 () Bool)

(assert (=> b!4607667 m!5437617))

(declare-fun m!5437619 () Bool)

(assert (=> b!4607668 m!5437619))

(assert (=> b!4607668 m!5436989))

(declare-fun m!5437621 () Bool)

(assert (=> d!1451654 m!5437621))

(assert (=> d!1451654 m!5437029))

(declare-fun m!5437623 () Bool)

(assert (=> b!4607669 m!5437623))

(assert (=> b!4607185 d!1451654))

(declare-fun d!1451656 () Bool)

(declare-fun lt!1764605 () Bool)

(assert (=> d!1451656 (= lt!1764605 (select (content!8690 e!2873772) key!3287))))

(declare-fun e!2874166 () Bool)

(assert (=> d!1451656 (= lt!1764605 e!2874166)))

(declare-fun res!1928490 () Bool)

(assert (=> d!1451656 (=> (not res!1928490) (not e!2874166))))

(assert (=> d!1451656 (= res!1928490 ((_ is Cons!51186) e!2873772))))

(assert (=> d!1451656 (= (contains!14183 e!2873772 key!3287) lt!1764605)))

(declare-fun b!4607685 () Bool)

(declare-fun e!2874167 () Bool)

(assert (=> b!4607685 (= e!2874166 e!2874167)))

(declare-fun res!1928489 () Bool)

(assert (=> b!4607685 (=> res!1928489 e!2874167)))

(assert (=> b!4607685 (= res!1928489 (= (h!57174 e!2873772) key!3287))))

(declare-fun b!4607686 () Bool)

(assert (=> b!4607686 (= e!2874167 (contains!14183 (t!358304 e!2873772) key!3287))))

(assert (= (and d!1451656 res!1928490) b!4607685))

(assert (= (and b!4607685 (not res!1928489)) b!4607686))

(declare-fun m!5437625 () Bool)

(assert (=> d!1451656 m!5437625))

(declare-fun m!5437627 () Bool)

(assert (=> d!1451656 m!5437627))

(declare-fun m!5437629 () Bool)

(assert (=> b!4607686 m!5437629))

(assert (=> bm!321333 d!1451656))

(declare-fun d!1451658 () Bool)

(declare-fun res!1928491 () Bool)

(declare-fun e!2874168 () Bool)

(assert (=> d!1451658 (=> res!1928491 e!2874168)))

(assert (=> d!1451658 (= res!1928491 (and ((_ is Cons!51183) (t!358301 newBucket!178)) (= (_1!29239 (h!57169 (t!358301 newBucket!178))) (_1!29239 (h!57169 newBucket!178)))))))

(assert (=> d!1451658 (= (containsKey!2238 (t!358301 newBucket!178) (_1!29239 (h!57169 newBucket!178))) e!2874168)))

(declare-fun b!4607687 () Bool)

(declare-fun e!2874169 () Bool)

(assert (=> b!4607687 (= e!2874168 e!2874169)))

(declare-fun res!1928492 () Bool)

(assert (=> b!4607687 (=> (not res!1928492) (not e!2874169))))

(assert (=> b!4607687 (= res!1928492 ((_ is Cons!51183) (t!358301 newBucket!178)))))

(declare-fun b!4607688 () Bool)

(assert (=> b!4607688 (= e!2874169 (containsKey!2238 (t!358301 (t!358301 newBucket!178)) (_1!29239 (h!57169 newBucket!178))))))

(assert (= (and d!1451658 (not res!1928491)) b!4607687))

(assert (= (and b!4607687 res!1928492) b!4607688))

(declare-fun m!5437645 () Bool)

(assert (=> b!4607688 m!5437645))

(assert (=> b!4607242 d!1451658))

(assert (=> b!4607183 d!1451480))

(assert (=> b!4607183 d!1451448))

(declare-fun d!1451662 () Bool)

(declare-fun res!1928493 () Bool)

(declare-fun e!2874170 () Bool)

(assert (=> d!1451662 (=> res!1928493 e!2874170)))

(assert (=> d!1451662 (= res!1928493 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451662 (= (forall!10672 (toList!4735 lm!1477) lambda!187738) e!2874170)))

(declare-fun b!4607689 () Bool)

(declare-fun e!2874171 () Bool)

(assert (=> b!4607689 (= e!2874170 e!2874171)))

(declare-fun res!1928494 () Bool)

(assert (=> b!4607689 (=> (not res!1928494) (not e!2874171))))

(assert (=> b!4607689 (= res!1928494 (dynLambda!21429 lambda!187738 (h!57170 (toList!4735 lm!1477))))))

(declare-fun b!4607690 () Bool)

(assert (=> b!4607690 (= e!2874171 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187738))))

(assert (= (and d!1451662 (not res!1928493)) b!4607689))

(assert (= (and b!4607689 res!1928494) b!4607690))

(declare-fun b_lambda!170155 () Bool)

(assert (=> (not b_lambda!170155) (not b!4607689)))

(declare-fun m!5437647 () Bool)

(assert (=> b!4607689 m!5437647))

(declare-fun m!5437649 () Bool)

(assert (=> b!4607690 m!5437649))

(assert (=> d!1451436 d!1451662))

(declare-fun lt!1764606 () Bool)

(declare-fun d!1451664 () Bool)

(assert (=> d!1451664 (= lt!1764606 (select (content!8689 (toList!4735 lm!1477)) (tuple2!51893 hash!344 lt!1764107)))))

(declare-fun e!2874172 () Bool)

(assert (=> d!1451664 (= lt!1764606 e!2874172)))

(declare-fun res!1928495 () Bool)

(assert (=> d!1451664 (=> (not res!1928495) (not e!2874172))))

(assert (=> d!1451664 (= res!1928495 ((_ is Cons!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451664 (= (contains!14181 (toList!4735 lm!1477) (tuple2!51893 hash!344 lt!1764107)) lt!1764606)))

(declare-fun b!4607691 () Bool)

(declare-fun e!2874173 () Bool)

(assert (=> b!4607691 (= e!2874172 e!2874173)))

(declare-fun res!1928496 () Bool)

(assert (=> b!4607691 (=> res!1928496 e!2874173)))

(assert (=> b!4607691 (= res!1928496 (= (h!57170 (toList!4735 lm!1477)) (tuple2!51893 hash!344 lt!1764107)))))

(declare-fun b!4607692 () Bool)

(assert (=> b!4607692 (= e!2874173 (contains!14181 (t!358302 (toList!4735 lm!1477)) (tuple2!51893 hash!344 lt!1764107)))))

(assert (= (and d!1451664 res!1928495) b!4607691))

(assert (= (and b!4607691 (not res!1928496)) b!4607692))

(assert (=> d!1451664 m!5436759))

(declare-fun m!5437651 () Bool)

(assert (=> d!1451664 m!5437651))

(declare-fun m!5437653 () Bool)

(assert (=> b!4607692 m!5437653))

(assert (=> d!1451372 d!1451664))

(declare-fun d!1451666 () Bool)

(assert (=> d!1451666 (contains!14181 (toList!4735 lm!1477) (tuple2!51893 hash!344 lt!1764107))))

(assert (=> d!1451666 true))

(declare-fun _$14!1509 () Unit!109033)

(assert (=> d!1451666 (= (choose!30978 (toList!4735 lm!1477) hash!344 lt!1764107) _$14!1509)))

(declare-fun bs!1014964 () Bool)

(assert (= bs!1014964 d!1451666))

(assert (=> bs!1014964 m!5436787))

(assert (=> d!1451372 d!1451666))

(assert (=> d!1451372 d!1451546))

(assert (=> b!4607165 d!1451606))

(declare-fun d!1451668 () Bool)

(assert (=> d!1451668 (= (invariantList!1143 (toList!4736 lt!1764187)) (noDuplicatedKeys!338 (toList!4736 lt!1764187)))))

(declare-fun bs!1014965 () Bool)

(assert (= bs!1014965 d!1451668))

(declare-fun m!5437655 () Bool)

(assert (=> bs!1014965 m!5437655))

(assert (=> d!1451334 d!1451668))

(declare-fun d!1451670 () Bool)

(declare-fun res!1928499 () Bool)

(declare-fun e!2874176 () Bool)

(assert (=> d!1451670 (=> res!1928499 e!2874176)))

(assert (=> d!1451670 (= res!1928499 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(assert (=> d!1451670 (= (forall!10672 (toList!4735 lm!1477) lambda!187706) e!2874176)))

(declare-fun b!4607695 () Bool)

(declare-fun e!2874177 () Bool)

(assert (=> b!4607695 (= e!2874176 e!2874177)))

(declare-fun res!1928500 () Bool)

(assert (=> b!4607695 (=> (not res!1928500) (not e!2874177))))

(assert (=> b!4607695 (= res!1928500 (dynLambda!21429 lambda!187706 (h!57170 (toList!4735 lm!1477))))))

(declare-fun b!4607696 () Bool)

(assert (=> b!4607696 (= e!2874177 (forall!10672 (t!358302 (toList!4735 lm!1477)) lambda!187706))))

(assert (= (and d!1451670 (not res!1928499)) b!4607695))

(assert (= (and b!4607695 res!1928500) b!4607696))

(declare-fun b_lambda!170157 () Bool)

(assert (=> (not b_lambda!170157) (not b!4607695)))

(declare-fun m!5437657 () Bool)

(assert (=> b!4607695 m!5437657))

(declare-fun m!5437659 () Bool)

(assert (=> b!4607696 m!5437659))

(assert (=> d!1451334 d!1451670))

(declare-fun d!1451672 () Bool)

(declare-fun res!1928502 () Bool)

(declare-fun e!2874179 () Bool)

(assert (=> d!1451672 (=> res!1928502 e!2874179)))

(assert (=> d!1451672 (= res!1928502 (and ((_ is Cons!51184) (toList!4735 lm!1477)) (= (_1!29240 (h!57170 (toList!4735 lm!1477))) lt!1764110)))))

(assert (=> d!1451672 (= (containsKey!2241 (toList!4735 lm!1477) lt!1764110) e!2874179)))

(declare-fun b!4607698 () Bool)

(declare-fun e!2874180 () Bool)

(assert (=> b!4607698 (= e!2874179 e!2874180)))

(declare-fun res!1928503 () Bool)

(assert (=> b!4607698 (=> (not res!1928503) (not e!2874180))))

(assert (=> b!4607698 (= res!1928503 (and (or (not ((_ is Cons!51184) (toList!4735 lm!1477))) (bvsle (_1!29240 (h!57170 (toList!4735 lm!1477))) lt!1764110)) ((_ is Cons!51184) (toList!4735 lm!1477)) (bvslt (_1!29240 (h!57170 (toList!4735 lm!1477))) lt!1764110)))))

(declare-fun b!4607699 () Bool)

(assert (=> b!4607699 (= e!2874180 (containsKey!2241 (t!358302 (toList!4735 lm!1477)) lt!1764110))))

(assert (= (and d!1451672 (not res!1928502)) b!4607698))

(assert (= (and b!4607698 res!1928503) b!4607699))

(declare-fun m!5437665 () Bool)

(assert (=> b!4607699 m!5437665))

(assert (=> d!1451364 d!1451672))

(assert (=> b!4607106 d!1451548))

(declare-fun d!1451676 () Bool)

(assert (=> d!1451676 (containsKey!2240 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287)))

(declare-fun lt!1764611 () Unit!109033)

(assert (=> d!1451676 (= lt!1764611 (choose!30988 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287))))

(assert (=> d!1451676 (invariantList!1143 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))))))

(assert (=> d!1451676 (= (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (toList!4735 lm!1477))) key!3287) lt!1764611)))

(declare-fun bs!1014966 () Bool)

(assert (= bs!1014966 d!1451676))

(assert (=> bs!1014966 m!5436681))

(declare-fun m!5437667 () Bool)

(assert (=> bs!1014966 m!5437667))

(assert (=> bs!1014966 m!5437041))

(assert (=> b!4607106 d!1451676))

(assert (=> b!4607199 d!1451456))

(assert (=> d!1451426 d!1451424))

(declare-fun d!1451678 () Bool)

(assert (=> d!1451678 (containsKeyBiggerList!300 (toList!4735 lt!1764105) key!3287)))

(assert (=> d!1451678 true))

(declare-fun _$33!775 () Unit!109033)

(assert (=> d!1451678 (= (choose!30985 lt!1764105 key!3287 hashF!1107) _$33!775)))

(declare-fun bs!1014967 () Bool)

(assert (= bs!1014967 d!1451678))

(assert (=> bs!1014967 m!5436565))

(assert (=> d!1451426 d!1451678))

(declare-fun d!1451682 () Bool)

(declare-fun res!1928506 () Bool)

(declare-fun e!2874183 () Bool)

(assert (=> d!1451682 (=> res!1928506 e!2874183)))

(assert (=> d!1451682 (= res!1928506 ((_ is Nil!51184) (toList!4735 lt!1764105)))))

(assert (=> d!1451682 (= (forall!10672 (toList!4735 lt!1764105) lambda!187737) e!2874183)))

(declare-fun b!4607702 () Bool)

(declare-fun e!2874184 () Bool)

(assert (=> b!4607702 (= e!2874183 e!2874184)))

(declare-fun res!1928507 () Bool)

(assert (=> b!4607702 (=> (not res!1928507) (not e!2874184))))

(assert (=> b!4607702 (= res!1928507 (dynLambda!21429 lambda!187737 (h!57170 (toList!4735 lt!1764105))))))

(declare-fun b!4607703 () Bool)

(assert (=> b!4607703 (= e!2874184 (forall!10672 (t!358302 (toList!4735 lt!1764105)) lambda!187737))))

(assert (= (and d!1451682 (not res!1928506)) b!4607702))

(assert (= (and b!4607702 res!1928507) b!4607703))

(declare-fun b_lambda!170159 () Bool)

(assert (=> (not b_lambda!170159) (not b!4607702)))

(declare-fun m!5437673 () Bool)

(assert (=> b!4607702 m!5437673))

(declare-fun m!5437675 () Bool)

(assert (=> b!4607703 m!5437675))

(assert (=> d!1451426 d!1451682))

(assert (=> d!1451382 d!1451492))

(declare-fun d!1451686 () Bool)

(assert (=> d!1451686 (isDefined!8701 (getValueByKey!1352 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(declare-fun lt!1764612 () Unit!109033)

(assert (=> d!1451686 (= lt!1764612 (choose!30986 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> d!1451686 (invariantList!1143 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451686 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1254 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) lt!1764612)))

(declare-fun bs!1014969 () Bool)

(assert (= bs!1014969 d!1451686))

(assert (=> bs!1014969 m!5436835))

(assert (=> bs!1014969 m!5436835))

(assert (=> bs!1014969 m!5436837))

(declare-fun m!5437677 () Bool)

(assert (=> bs!1014969 m!5437677))

(assert (=> bs!1014969 m!5437379))

(assert (=> b!4607200 d!1451686))

(assert (=> b!4607200 d!1451540))

(assert (=> b!4607200 d!1451542))

(declare-fun d!1451688 () Bool)

(assert (=> d!1451688 (contains!14183 (getKeysList!594 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477))))) key!3287)))

(declare-fun lt!1764613 () Unit!109033)

(assert (=> d!1451688 (= lt!1764613 (choose!30987 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> d!1451688 (invariantList!1143 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451688 (= (lemmaInListThenGetKeysListContains!589 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) lt!1764613)))

(declare-fun bs!1014970 () Bool)

(assert (= bs!1014970 d!1451688))

(assert (=> bs!1014970 m!5436829))

(assert (=> bs!1014970 m!5436829))

(declare-fun m!5437679 () Bool)

(assert (=> bs!1014970 m!5437679))

(declare-fun m!5437681 () Bool)

(assert (=> bs!1014970 m!5437681))

(assert (=> bs!1014970 m!5437379))

(assert (=> b!4607200 d!1451688))

(declare-fun d!1451690 () Bool)

(assert (=> d!1451690 (dynLambda!21429 lambda!187690 lt!1764108)))

(assert (=> d!1451690 true))

(declare-fun _$7!2168 () Unit!109033)

(assert (=> d!1451690 (= (choose!30976 (toList!4735 lm!1477) lambda!187690 lt!1764108) _$7!2168)))

(declare-fun b_lambda!170161 () Bool)

(assert (=> (not b_lambda!170161) (not d!1451690)))

(declare-fun bs!1014971 () Bool)

(assert (= bs!1014971 d!1451690))

(assert (=> bs!1014971 m!5436741))

(assert (=> d!1451348 d!1451690))

(assert (=> d!1451348 d!1451316))

(declare-fun d!1451692 () Bool)

(declare-fun res!1928512 () Bool)

(declare-fun e!2874189 () Bool)

(assert (=> d!1451692 (=> res!1928512 e!2874189)))

(assert (=> d!1451692 (= res!1928512 (not ((_ is Cons!51183) (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(assert (=> d!1451692 (= (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477)))) e!2874189)))

(declare-fun b!4607708 () Bool)

(declare-fun e!2874190 () Bool)

(assert (=> b!4607708 (= e!2874189 e!2874190)))

(declare-fun res!1928513 () Bool)

(assert (=> b!4607708 (=> (not res!1928513) (not e!2874190))))

(assert (=> b!4607708 (= res!1928513 (not (containsKey!2238 (t!358301 (_2!29240 (h!57170 (toList!4735 lm!1477)))) (_1!29239 (h!57169 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))))

(declare-fun b!4607709 () Bool)

(assert (=> b!4607709 (= e!2874190 (noDuplicateKeys!1360 (t!358301 (_2!29240 (h!57170 (toList!4735 lm!1477))))))))

(assert (= (and d!1451692 (not res!1928512)) b!4607708))

(assert (= (and b!4607708 res!1928513) b!4607709))

(declare-fun m!5437683 () Bool)

(assert (=> b!4607708 m!5437683))

(declare-fun m!5437685 () Bool)

(assert (=> b!4607709 m!5437685))

(assert (=> bs!1014721 d!1451692))

(assert (=> b!4607148 d!1451400))

(assert (=> b!4607193 d!1451454))

(assert (=> b!4607193 d!1451456))

(assert (=> b!4607261 d!1451620))

(assert (=> b!4607261 d!1451554))

(assert (=> b!4607104 d!1451586))

(assert (=> b!4607104 d!1451482))

(declare-fun d!1451696 () Bool)

(declare-fun c!789318 () Bool)

(assert (=> d!1451696 (= c!789318 ((_ is Nil!51184) (toList!4735 lm!1477)))))

(declare-fun e!2874193 () (InoxSet tuple2!51892))

(assert (=> d!1451696 (= (content!8689 (toList!4735 lm!1477)) e!2874193)))

(declare-fun b!4607712 () Bool)

(assert (=> b!4607712 (= e!2874193 ((as const (Array tuple2!51892 Bool)) false))))

(declare-fun b!4607713 () Bool)

(assert (=> b!4607713 (= e!2874193 ((_ map or) (store ((as const (Array tuple2!51892 Bool)) false) (h!57170 (toList!4735 lm!1477)) true) (content!8689 (t!358302 (toList!4735 lm!1477)))))))

(assert (= (and d!1451696 c!789318) b!4607712))

(assert (= (and d!1451696 (not c!789318)) b!4607713))

(declare-fun m!5437691 () Bool)

(assert (=> b!4607713 m!5437691))

(assert (=> b!4607713 m!5436883))

(assert (=> d!1451358 d!1451696))

(assert (=> b!4607195 d!1451616))

(declare-fun d!1451698 () Bool)

(assert (=> d!1451698 (containsKey!2240 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287)))

(declare-fun lt!1764614 () Unit!109033)

(assert (=> d!1451698 (= lt!1764614 (choose!30988 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287))))

(assert (=> d!1451698 (invariantList!1143 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))))))

(assert (=> d!1451698 (= (lemmaInGetKeysListThenContainsKey!593 (toList!4736 (extractMap!1420 (t!358302 (toList!4735 lm!1477)))) key!3287) lt!1764614)))

(declare-fun bs!1014972 () Bool)

(assert (= bs!1014972 d!1451698))

(assert (=> bs!1014972 m!5436825))

(declare-fun m!5437693 () Bool)

(assert (=> bs!1014972 m!5437693))

(assert (=> bs!1014972 m!5437379))

(assert (=> b!4607195 d!1451698))

(declare-fun tp!1340934 () Bool)

(declare-fun b!4607714 () Bool)

(declare-fun e!2874194 () Bool)

(assert (=> b!4607714 (= e!2874194 (and tp_is_empty!28733 tp_is_empty!28735 tp!1340934))))

(assert (=> b!4607297 (= tp!1340929 e!2874194)))

(assert (= (and b!4607297 ((_ is Cons!51183) (_2!29240 (h!57170 (toList!4735 lm!1477))))) b!4607714))

(declare-fun b!4607715 () Bool)

(declare-fun e!2874195 () Bool)

(declare-fun tp!1340935 () Bool)

(declare-fun tp!1340936 () Bool)

(assert (=> b!4607715 (= e!2874195 (and tp!1340935 tp!1340936))))

(assert (=> b!4607297 (= tp!1340930 e!2874195)))

(assert (= (and b!4607297 ((_ is Cons!51184) (t!358302 (toList!4735 lm!1477)))) b!4607715))

(declare-fun e!2874196 () Bool)

(declare-fun tp!1340937 () Bool)

(declare-fun b!4607716 () Bool)

(assert (=> b!4607716 (= e!2874196 (and tp_is_empty!28733 tp_is_empty!28735 tp!1340937))))

(assert (=> b!4607302 (= tp!1340933 e!2874196)))

(assert (= (and b!4607302 ((_ is Cons!51183) (t!358301 (t!358301 newBucket!178)))) b!4607716))

(declare-fun b_lambda!170165 () Bool)

(assert (= b_lambda!170147 (or start!460496 b_lambda!170165)))

(declare-fun bs!1014973 () Bool)

(declare-fun d!1451700 () Bool)

(assert (= bs!1014973 (and d!1451700 start!460496)))

(assert (=> bs!1014973 (= (dynLambda!21429 lambda!187690 (h!57170 (t!358302 (toList!4735 lt!1764105)))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (t!358302 (toList!4735 lt!1764105))))))))

(declare-fun m!5437695 () Bool)

(assert (=> bs!1014973 m!5437695))

(assert (=> b!4607612 d!1451700))

(declare-fun b_lambda!170167 () Bool)

(assert (= b_lambda!170131 (or start!460496 b_lambda!170167)))

(declare-fun bs!1014974 () Bool)

(declare-fun d!1451702 () Bool)

(assert (= bs!1014974 (and d!1451702 start!460496)))

(assert (=> bs!1014974 (= (dynLambda!21429 lambda!187690 (h!57170 (t!358302 (toList!4735 lm!1477)))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> bs!1014974 m!5437111))

(assert (=> b!4607373 d!1451702))

(declare-fun b_lambda!170169 () Bool)

(assert (= b_lambda!170157 (or d!1451334 b_lambda!170169)))

(declare-fun bs!1014976 () Bool)

(declare-fun d!1451704 () Bool)

(assert (= bs!1014976 (and d!1451704 d!1451334)))

(assert (=> bs!1014976 (= (dynLambda!21429 lambda!187706 (h!57170 (toList!4735 lm!1477))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(assert (=> bs!1014976 m!5436979))

(assert (=> b!4607695 d!1451704))

(declare-fun b_lambda!170171 () Bool)

(assert (= b_lambda!170145 (or d!1451394 b_lambda!170171)))

(declare-fun bs!1014977 () Bool)

(declare-fun d!1451706 () Bool)

(assert (= bs!1014977 (and d!1451706 d!1451394)))

(assert (=> bs!1014977 (= (dynLambda!21429 lambda!187726 (h!57170 (toList!4735 lt!1764105))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(assert (=> bs!1014977 m!5436977))

(assert (=> b!4607608 d!1451706))

(declare-fun b_lambda!170173 () Bool)

(assert (= b_lambda!170161 (or start!460496 b_lambda!170173)))

(assert (=> d!1451690 d!1451440))

(declare-fun b_lambda!170175 () Bool)

(assert (= b_lambda!170159 (or d!1451426 b_lambda!170175)))

(declare-fun bs!1014979 () Bool)

(declare-fun d!1451710 () Bool)

(assert (= bs!1014979 (and d!1451710 d!1451426)))

(assert (=> bs!1014979 (= (dynLambda!21429 lambda!187737 (h!57170 (toList!4735 lt!1764105))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(assert (=> bs!1014979 m!5436977))

(assert (=> b!4607702 d!1451710))

(declare-fun b_lambda!170177 () Bool)

(assert (= b_lambda!170155 (or d!1451436 b_lambda!170177)))

(declare-fun bs!1014980 () Bool)

(declare-fun d!1451714 () Bool)

(assert (= bs!1014980 (and d!1451714 d!1451436)))

(assert (=> bs!1014980 (= (dynLambda!21429 lambda!187738 (h!57170 (toList!4735 lm!1477))) (allKeysSameHash!1216 (_2!29240 (h!57170 (toList!4735 lm!1477))) (_1!29240 (h!57170 (toList!4735 lm!1477))) hashF!1107))))

(declare-fun m!5437703 () Bool)

(assert (=> bs!1014980 m!5437703))

(assert (=> b!4607689 d!1451714))

(declare-fun b_lambda!170179 () Bool)

(assert (= b_lambda!170137 (or d!1451344 b_lambda!170179)))

(declare-fun bs!1014981 () Bool)

(declare-fun d!1451716 () Bool)

(assert (= bs!1014981 (and d!1451716 d!1451344)))

(assert (=> bs!1014981 (= (dynLambda!21429 lambda!187712 (h!57170 (toList!4735 lm!1477))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(assert (=> bs!1014981 m!5436979))

(assert (=> b!4607540 d!1451716))

(declare-fun b_lambda!170181 () Bool)

(assert (= b_lambda!170143 (or d!1451396 b_lambda!170181)))

(declare-fun bs!1014982 () Bool)

(declare-fun d!1451718 () Bool)

(assert (= bs!1014982 (and d!1451718 d!1451396)))

(assert (=> bs!1014982 (= (dynLambda!21429 lambda!187727 (h!57170 (t!358302 (toList!4735 lm!1477)))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (t!358302 (toList!4735 lm!1477))))))))

(assert (=> bs!1014982 m!5437111))

(assert (=> b!4607606 d!1451718))

(declare-fun b_lambda!170183 () Bool)

(assert (= b_lambda!170153 (or d!1451322 b_lambda!170183)))

(declare-fun bs!1014983 () Bool)

(declare-fun d!1451720 () Bool)

(assert (= bs!1014983 (and d!1451720 d!1451322)))

(assert (=> bs!1014983 (= (dynLambda!21429 lambda!187693 (h!57170 (toList!4735 lm!1477))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lm!1477)))))))

(assert (=> bs!1014983 m!5436979))

(assert (=> b!4607663 d!1451720))

(declare-fun b_lambda!170185 () Bool)

(assert (= b_lambda!170127 (or d!1451324 b_lambda!170185)))

(declare-fun bs!1014984 () Bool)

(declare-fun d!1451724 () Bool)

(assert (= bs!1014984 (and d!1451724 d!1451324)))

(assert (=> bs!1014984 (= (dynLambda!21430 lambda!187696 (h!57169 newBucket!178)) (= (hash!3291 hashF!1107 (_1!29239 (h!57169 newBucket!178))) hash!344))))

(declare-fun m!5437707 () Bool)

(assert (=> bs!1014984 m!5437707))

(assert (=> b!4607361 d!1451724))

(declare-fun b_lambda!170187 () Bool)

(assert (= b_lambda!170129 (or d!1451386 b_lambda!170187)))

(declare-fun bs!1014985 () Bool)

(declare-fun d!1451726 () Bool)

(assert (= bs!1014985 (and d!1451726 d!1451386)))

(assert (=> bs!1014985 (= (dynLambda!21429 lambda!187725 (h!57170 (toList!4735 lt!1764105))) (noDuplicateKeys!1360 (_2!29240 (h!57170 (toList!4735 lt!1764105)))))))

(assert (=> bs!1014985 m!5436977))

(assert (=> b!4607365 d!1451726))

(declare-fun b_lambda!170189 () Bool)

(assert (= b_lambda!170125 (or d!1451406 b_lambda!170189)))

(declare-fun bs!1014986 () Bool)

(declare-fun d!1451728 () Bool)

(assert (= bs!1014986 (and d!1451728 d!1451406)))

(assert (=> bs!1014986 (= (dynLambda!21429 lambda!187733 (h!57170 (toList!4735 lt!1764105))) (allKeysSameHash!1216 (_2!29240 (h!57170 (toList!4735 lt!1764105))) (_1!29240 (h!57170 (toList!4735 lt!1764105))) hashF!1107))))

(declare-fun m!5437709 () Bool)

(assert (=> bs!1014986 m!5437709))

(assert (=> b!4607348 d!1451728))

(check-sat (not b!4607480) (not b_lambda!170173) (not b_lambda!170165) (not b!4607342) (not d!1451508) tp_is_empty!28733 (not d!1451454) (not b!4607506) (not b!4607366) (not d!1451540) (not b_lambda!170171) (not b!4607354) (not b!4607527) (not bm!321352) (not b!4607541) (not bs!1014980) (not d!1451590) (not b!4607673) (not b!4607524) (not bs!1014979) (not bm!321343) (not d!1451666) (not b!4607699) (not bs!1014986) (not bs!1014985) (not b!4607351) (not b!4607670) (not b!4607327) (not b!4607372) (not b!4607557) (not b!4607312) (not b!4607395) (not b!4607692) (not bs!1014983) (not b!4607393) (not b!4607550) (not b!4607355) (not d!1451620) (not b!4607546) (not b_lambda!170167) (not b!4607498) (not d!1451558) (not d!1451678) tp_is_empty!28735 (not b!4607410) (not bs!1014984) (not b!4607686) (not d!1451664) (not bm!321353) (not d!1451544) (not bs!1014981) (not b!4607478) (not b!4607545) (not b_lambda!170121) (not b!4607703) (not d!1451466) (not d!1451564) (not b!4607626) (not b!4607619) (not d!1451486) (not b_lambda!170179) (not b!4607607) (not b!4607559) (not d!1451462) (not b_lambda!170187) (not bm!321362) (not b!4607346) (not b!4607525) (not b_lambda!170123) (not bm!321363) (not b!4607374) (not b!4607716) (not d!1451468) (not b!4607353) (not bs!1014977) (not b!4607326) (not bs!1014982) (not b_lambda!170119) (not b!4607708) (not b!4607305) (not b!4607544) (not b!4607314) (not b!4607616) (not d!1451494) (not b!4607709) (not b!4607714) (not b!4607484) (not b!4607600) (not bs!1014974) (not b!4607547) (not b!4607577) (not b!4607609) (not b!4607583) (not d!1451588) (not b!4607696) (not d!1451482) (not b_lambda!170177) (not b_lambda!170181) (not d!1451656) (not b!4607628) (not d!1451676) (not b!4607329) (not b_lambda!170175) (not b!4607376) (not b!4607408) (not bm!321354) (not d!1451460) (not d!1451448) (not b!4607392) (not b!4607562) (not b!4607517) (not b!4607362) (not b!4607331) (not d!1451622) (not b!4607364) (not b_lambda!170189) (not b_lambda!170169) (not b!4607602) (not b!4607688) (not d!1451480) (not d!1451586) (not b!4607500) (not b!4607317) (not b!4607491) (not d!1451654) (not d!1451474) (not b!4607581) (not b!4607303) (not bs!1014973) (not b!4607479) (not b!4607667) (not b!4607407) (not b!4607690) (not b!4607404) (not d!1451498) (not b!4607605) (not d!1451574) (not b!4607664) (not d!1451688) (not d!1451668) (not d!1451698) (not b!4607481) (not d!1451456) (not d!1451500) (not d!1451488) (not d!1451686) (not b!4607418) (not d!1451618) (not b!4607320) (not bm!321361) (not d!1451506) (not b!4607356) (not d!1451470) (not d!1451568) (not b!4607313) (not b!4607328) (not d!1451504) (not b_lambda!170183) (not d!1451570) (not b!4607350) (not b!4607713) (not b_lambda!170185) (not b!4607349) (not b!4607580) (not b!4607613) (not b!4607624) (not b!4607621) (not b!4607669) (not bm!321344) (not b!4607620) (not b!4607715) (not b!4607668) (not d!1451626) (not bm!321345) (not b!4607318) (not d!1451510) (not bs!1014976) (not b!4607623) (not b!4607627) (not d!1451560) (not d!1451594))
(check-sat)
