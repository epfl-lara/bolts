; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498654 () Bool)

(assert start!498654)

(declare-fun b!4817186 () Bool)

(declare-fun e!3009681 () Bool)

(declare-fun e!3009682 () Bool)

(assert (=> b!4817186 (= e!3009681 (not e!3009682))))

(declare-fun res!2049292 () Bool)

(assert (=> b!4817186 (=> res!2049292 e!3009682)))

(declare-datatypes ((K!16444 0))(
  ( (K!16445 (val!21461 Int)) )
))
(declare-datatypes ((V!16690 0))(
  ( (V!16691 (val!21462 Int)) )
))
(declare-datatypes ((tuple2!57858 0))(
  ( (tuple2!57859 (_1!32223 K!16444) (_2!32223 V!16690)) )
))
(declare-datatypes ((Option!13442 0))(
  ( (None!13441) (Some!13441 (v!49102 tuple2!57858)) )
))
(declare-fun lt!1967691 () Option!13442)

(declare-fun isDefined!10557 (Option!13442) Bool)

(assert (=> b!4817186 (= res!2049292 (not (isDefined!10557 lt!1967691)))))

(declare-datatypes ((Unit!142036 0))(
  ( (Unit!142037) )
))
(declare-fun lt!1967693 () Unit!142036)

(declare-fun e!3009680 () Unit!142036)

(assert (=> b!4817186 (= lt!1967693 e!3009680)))

(declare-fun c!821034 () Bool)

(declare-fun isEmpty!29606 (Option!13442) Bool)

(assert (=> b!4817186 (= c!821034 (isEmpty!29606 lt!1967691))))

(declare-datatypes ((List!54909 0))(
  ( (Nil!54785) (Cons!54785 (h!61217 tuple2!57858) (t!362405 List!54909)) )
))
(declare-fun lt!1967689 () List!54909)

(declare-fun key!5322 () K!16444)

(declare-fun getPair!1020 (List!54909 K!16444) Option!13442)

(assert (=> b!4817186 (= lt!1967691 (getPair!1020 lt!1967689 key!5322))))

(declare-fun lt!1967694 () Unit!142036)

(declare-datatypes ((tuple2!57860 0))(
  ( (tuple2!57861 (_1!32224 (_ BitVec 64)) (_2!32224 List!54909)) )
))
(declare-fun lt!1967696 () tuple2!57860)

(declare-datatypes ((List!54910 0))(
  ( (Nil!54786) (Cons!54786 (h!61218 tuple2!57860) (t!362406 List!54910)) )
))
(declare-datatypes ((ListLongMap!5827 0))(
  ( (ListLongMap!5828 (toList!7347 List!54910)) )
))
(declare-fun lm!2251 () ListLongMap!5827)

(declare-fun lambda!234786 () Int)

(declare-fun forallContained!4352 (List!54910 Int tuple2!57860) Unit!142036)

(assert (=> b!4817186 (= lt!1967694 (forallContained!4352 (toList!7347 lm!2251) lambda!234786 lt!1967696))))

(declare-fun contains!18616 (List!54910 tuple2!57860) Bool)

(assert (=> b!4817186 (contains!18616 (toList!7347 lm!2251) lt!1967696)))

(declare-fun lt!1967690 () (_ BitVec 64))

(assert (=> b!4817186 (= lt!1967696 (tuple2!57861 lt!1967690 lt!1967689))))

(declare-fun lt!1967695 () Unit!142036)

(declare-fun lemmaGetValueImpliesTupleContained!691 (ListLongMap!5827 (_ BitVec 64) List!54909) Unit!142036)

(assert (=> b!4817186 (= lt!1967695 (lemmaGetValueImpliesTupleContained!691 lm!2251 lt!1967690 lt!1967689))))

(declare-fun apply!13285 (ListLongMap!5827 (_ BitVec 64)) List!54909)

(assert (=> b!4817186 (= lt!1967689 (apply!13285 lm!2251 lt!1967690))))

(declare-fun contains!18617 (ListLongMap!5827 (_ BitVec 64)) Bool)

(assert (=> b!4817186 (contains!18617 lm!2251 lt!1967690)))

(declare-datatypes ((Hashable!7182 0))(
  ( (HashableExt!7181 (__x!33457 Int)) )
))
(declare-fun hashF!1486 () Hashable!7182)

(declare-fun hash!5256 (Hashable!7182 K!16444) (_ BitVec 64))

(assert (=> b!4817186 (= lt!1967690 (hash!5256 hashF!1486 key!5322))))

(declare-fun lt!1967688 () Unit!142036)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1118 (ListLongMap!5827 K!16444 Hashable!7182) Unit!142036)

(assert (=> b!4817186 (= lt!1967688 (lemmaInGenMapThenLongMapContainsHash!1118 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4817187 () Bool)

(declare-datatypes ((Option!13443 0))(
  ( (None!13442) (Some!13442 (v!49103 List!54909)) )
))
(declare-fun getValueByKey!2570 (List!54910 (_ BitVec 64)) Option!13443)

(assert (=> b!4817187 (= e!3009682 (= (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690) (Some!13442 lt!1967689)))))

(declare-fun res!2049295 () Bool)

(assert (=> start!498654 (=> (not res!2049295) (not e!3009681))))

(declare-fun forall!12492 (List!54910 Int) Bool)

(assert (=> start!498654 (= res!2049295 (forall!12492 (toList!7347 lm!2251) lambda!234786))))

(assert (=> start!498654 e!3009681))

(declare-fun e!3009683 () Bool)

(declare-fun inv!70344 (ListLongMap!5827) Bool)

(assert (=> start!498654 (and (inv!70344 lm!2251) e!3009683)))

(assert (=> start!498654 true))

(declare-fun tp_is_empty!34241 () Bool)

(assert (=> start!498654 tp_is_empty!34241))

(declare-fun b!4817185 () Bool)

(declare-fun Unit!142038 () Unit!142036)

(assert (=> b!4817185 (= e!3009680 Unit!142038)))

(declare-fun lt!1967692 () Unit!142036)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!446 (ListLongMap!5827 K!16444 Hashable!7182) Unit!142036)

(assert (=> b!4817185 (= lt!1967692 (lemmaNotInItsHashBucketThenNotInMap!446 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4817185 false))

(declare-fun b!4817188 () Bool)

(declare-fun res!2049293 () Bool)

(assert (=> b!4817188 (=> (not res!2049293) (not e!3009681))))

(declare-datatypes ((ListMap!6761 0))(
  ( (ListMap!6762 (toList!7348 List!54909)) )
))
(declare-fun contains!18618 (ListMap!6761 K!16444) Bool)

(declare-fun extractMap!2632 (List!54910) ListMap!6761)

(assert (=> b!4817188 (= res!2049293 (contains!18618 (extractMap!2632 (toList!7347 lm!2251)) key!5322))))

(declare-fun b!4817189 () Bool)

(declare-fun tp!1361985 () Bool)

(assert (=> b!4817189 (= e!3009683 tp!1361985)))

(declare-fun b!4817190 () Bool)

(declare-fun res!2049294 () Bool)

(assert (=> b!4817190 (=> (not res!2049294) (not e!3009681))))

(declare-fun allKeysSameHashInMap!2498 (ListLongMap!5827 Hashable!7182) Bool)

(assert (=> b!4817190 (= res!2049294 (allKeysSameHashInMap!2498 lm!2251 hashF!1486))))

(declare-fun b!4817191 () Bool)

(declare-fun Unit!142039 () Unit!142036)

(assert (=> b!4817191 (= e!3009680 Unit!142039)))

(assert (= (and start!498654 res!2049295) b!4817190))

(assert (= (and b!4817190 res!2049294) b!4817188))

(assert (= (and b!4817188 res!2049293) b!4817186))

(assert (= (and b!4817186 c!821034) b!4817185))

(assert (= (and b!4817186 (not c!821034)) b!4817191))

(assert (= (and b!4817186 (not res!2049292)) b!4817187))

(assert (= start!498654 b!4817189))

(declare-fun m!5803642 () Bool)

(assert (=> b!4817185 m!5803642))

(declare-fun m!5803644 () Bool)

(assert (=> b!4817187 m!5803644))

(declare-fun m!5803646 () Bool)

(assert (=> b!4817188 m!5803646))

(assert (=> b!4817188 m!5803646))

(declare-fun m!5803648 () Bool)

(assert (=> b!4817188 m!5803648))

(declare-fun m!5803650 () Bool)

(assert (=> start!498654 m!5803650))

(declare-fun m!5803652 () Bool)

(assert (=> start!498654 m!5803652))

(declare-fun m!5803654 () Bool)

(assert (=> b!4817190 m!5803654))

(declare-fun m!5803656 () Bool)

(assert (=> b!4817186 m!5803656))

(declare-fun m!5803658 () Bool)

(assert (=> b!4817186 m!5803658))

(declare-fun m!5803660 () Bool)

(assert (=> b!4817186 m!5803660))

(declare-fun m!5803662 () Bool)

(assert (=> b!4817186 m!5803662))

(declare-fun m!5803664 () Bool)

(assert (=> b!4817186 m!5803664))

(declare-fun m!5803666 () Bool)

(assert (=> b!4817186 m!5803666))

(declare-fun m!5803668 () Bool)

(assert (=> b!4817186 m!5803668))

(declare-fun m!5803670 () Bool)

(assert (=> b!4817186 m!5803670))

(declare-fun m!5803672 () Bool)

(assert (=> b!4817186 m!5803672))

(declare-fun m!5803674 () Bool)

(assert (=> b!4817186 m!5803674))

(check-sat (not b!4817186) (not b!4817190) (not b!4817189) (not b!4817185) tp_is_empty!34241 (not b!4817188) (not b!4817187) (not start!498654))
(check-sat)
(get-model)

(declare-fun b!4817300 () Bool)

(declare-fun e!3009761 () Bool)

(declare-datatypes ((List!54912 0))(
  ( (Nil!54788) (Cons!54788 (h!61220 K!16444) (t!362408 List!54912)) )
))
(declare-fun contains!18621 (List!54912 K!16444) Bool)

(declare-fun keys!20122 (ListMap!6761) List!54912)

(assert (=> b!4817300 (= e!3009761 (not (contains!18621 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))) key!5322)))))

(declare-fun d!1541788 () Bool)

(declare-fun e!3009757 () Bool)

(assert (=> d!1541788 e!3009757))

(declare-fun res!2049342 () Bool)

(assert (=> d!1541788 (=> res!2049342 e!3009757)))

(assert (=> d!1541788 (= res!2049342 e!3009761)))

(declare-fun res!2049341 () Bool)

(assert (=> d!1541788 (=> (not res!2049341) (not e!3009761))))

(declare-fun lt!1967773 () Bool)

(assert (=> d!1541788 (= res!2049341 (not lt!1967773))))

(declare-fun lt!1967764 () Bool)

(assert (=> d!1541788 (= lt!1967773 lt!1967764)))

(declare-fun lt!1967771 () Unit!142036)

(declare-fun e!3009759 () Unit!142036)

(assert (=> d!1541788 (= lt!1967771 e!3009759)))

(declare-fun c!821065 () Bool)

(assert (=> d!1541788 (= c!821065 lt!1967764)))

(declare-fun containsKey!4254 (List!54909 K!16444) Bool)

(assert (=> d!1541788 (= lt!1967764 (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> d!1541788 (= (contains!18618 (extractMap!2632 (toList!7347 lm!2251)) key!5322) lt!1967773)))

(declare-fun b!4817301 () Bool)

(declare-fun e!3009758 () Bool)

(assert (=> b!4817301 (= e!3009758 (contains!18621 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(declare-fun b!4817302 () Bool)

(declare-fun e!3009760 () Unit!142036)

(assert (=> b!4817302 (= e!3009759 e!3009760)))

(declare-fun c!821067 () Bool)

(declare-fun call!336010 () Bool)

(assert (=> b!4817302 (= c!821067 call!336010)))

(declare-fun b!4817303 () Bool)

(declare-fun Unit!142043 () Unit!142036)

(assert (=> b!4817303 (= e!3009760 Unit!142043)))

(declare-fun b!4817304 () Bool)

(declare-fun e!3009756 () List!54912)

(declare-fun getKeysList!1141 (List!54909) List!54912)

(assert (=> b!4817304 (= e!3009756 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun b!4817305 () Bool)

(declare-fun lt!1967765 () Unit!142036)

(assert (=> b!4817305 (= e!3009759 lt!1967765)))

(declare-fun lt!1967772 () Unit!142036)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2357 (List!54909 K!16444) Unit!142036)

(assert (=> b!4817305 (= lt!1967772 (lemmaContainsKeyImpliesGetValueByKeyDefined!2357 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(declare-datatypes ((Option!13445 0))(
  ( (None!13444) (Some!13444 (v!49107 V!16690)) )
))
(declare-fun isDefined!10560 (Option!13445) Bool)

(declare-fun getValueByKey!2572 (List!54909 K!16444) Option!13445)

(assert (=> b!4817305 (isDefined!10560 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(declare-fun lt!1967770 () Unit!142036)

(assert (=> b!4817305 (= lt!1967770 lt!1967772)))

(declare-fun lemmaInListThenGetKeysListContains!1136 (List!54909 K!16444) Unit!142036)

(assert (=> b!4817305 (= lt!1967765 (lemmaInListThenGetKeysListContains!1136 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> b!4817305 call!336010))

(declare-fun b!4817306 () Bool)

(assert (=> b!4817306 (= e!3009756 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))))))

(declare-fun b!4817307 () Bool)

(assert (=> b!4817307 (= e!3009757 e!3009758)))

(declare-fun res!2049343 () Bool)

(assert (=> b!4817307 (=> (not res!2049343) (not e!3009758))))

(assert (=> b!4817307 (= res!2049343 (isDefined!10560 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)))))

(declare-fun bm!336005 () Bool)

(assert (=> bm!336005 (= call!336010 (contains!18621 e!3009756 key!5322))))

(declare-fun c!821066 () Bool)

(assert (=> bm!336005 (= c!821066 c!821065)))

(declare-fun b!4817308 () Bool)

(assert (=> b!4817308 false))

(declare-fun lt!1967766 () Unit!142036)

(declare-fun lt!1967769 () Unit!142036)

(assert (=> b!4817308 (= lt!1967766 lt!1967769)))

(assert (=> b!4817308 (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1141 (List!54909 K!16444) Unit!142036)

(assert (=> b!4817308 (= lt!1967769 (lemmaInGetKeysListThenContainsKey!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(declare-fun Unit!142044 () Unit!142036)

(assert (=> b!4817308 (= e!3009760 Unit!142044)))

(assert (= (and d!1541788 c!821065) b!4817305))

(assert (= (and d!1541788 (not c!821065)) b!4817302))

(assert (= (and b!4817302 c!821067) b!4817308))

(assert (= (and b!4817302 (not c!821067)) b!4817303))

(assert (= (or b!4817305 b!4817302) bm!336005))

(assert (= (and bm!336005 c!821066) b!4817304))

(assert (= (and bm!336005 (not c!821066)) b!4817306))

(assert (= (and d!1541788 res!2049341) b!4817300))

(assert (= (and d!1541788 (not res!2049342)) b!4817307))

(assert (= (and b!4817307 res!2049343) b!4817301))

(declare-fun m!5803756 () Bool)

(assert (=> b!4817305 m!5803756))

(declare-fun m!5803758 () Bool)

(assert (=> b!4817305 m!5803758))

(assert (=> b!4817305 m!5803758))

(declare-fun m!5803760 () Bool)

(assert (=> b!4817305 m!5803760))

(declare-fun m!5803762 () Bool)

(assert (=> b!4817305 m!5803762))

(declare-fun m!5803764 () Bool)

(assert (=> b!4817308 m!5803764))

(declare-fun m!5803766 () Bool)

(assert (=> b!4817308 m!5803766))

(declare-fun m!5803768 () Bool)

(assert (=> b!4817304 m!5803768))

(assert (=> b!4817301 m!5803646))

(declare-fun m!5803770 () Bool)

(assert (=> b!4817301 m!5803770))

(assert (=> b!4817301 m!5803770))

(declare-fun m!5803772 () Bool)

(assert (=> b!4817301 m!5803772))

(assert (=> d!1541788 m!5803764))

(assert (=> b!4817307 m!5803758))

(assert (=> b!4817307 m!5803758))

(assert (=> b!4817307 m!5803760))

(declare-fun m!5803774 () Bool)

(assert (=> bm!336005 m!5803774))

(assert (=> b!4817300 m!5803646))

(assert (=> b!4817300 m!5803770))

(assert (=> b!4817300 m!5803770))

(assert (=> b!4817300 m!5803772))

(assert (=> b!4817306 m!5803646))

(assert (=> b!4817306 m!5803770))

(assert (=> b!4817188 d!1541788))

(declare-fun bs!1160756 () Bool)

(declare-fun d!1541806 () Bool)

(assert (= bs!1160756 (and d!1541806 start!498654)))

(declare-fun lambda!234801 () Int)

(assert (=> bs!1160756 (= lambda!234801 lambda!234786)))

(declare-fun lt!1967780 () ListMap!6761)

(declare-fun invariantList!1794 (List!54909) Bool)

(assert (=> d!1541806 (invariantList!1794 (toList!7348 lt!1967780))))

(declare-fun e!3009770 () ListMap!6761)

(assert (=> d!1541806 (= lt!1967780 e!3009770)))

(declare-fun c!821073 () Bool)

(get-info :version)

(assert (=> d!1541806 (= c!821073 ((_ is Cons!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541806 (forall!12492 (toList!7347 lm!2251) lambda!234801)))

(assert (=> d!1541806 (= (extractMap!2632 (toList!7347 lm!2251)) lt!1967780)))

(declare-fun b!4817324 () Bool)

(declare-fun addToMapMapFromBucket!1771 (List!54909 ListMap!6761) ListMap!6761)

(assert (=> b!4817324 (= e!3009770 (addToMapMapFromBucket!1771 (_2!32224 (h!61218 (toList!7347 lm!2251))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4817325 () Bool)

(assert (=> b!4817325 (= e!3009770 (ListMap!6762 Nil!54785))))

(assert (= (and d!1541806 c!821073) b!4817324))

(assert (= (and d!1541806 (not c!821073)) b!4817325))

(declare-fun m!5803786 () Bool)

(assert (=> d!1541806 m!5803786))

(declare-fun m!5803788 () Bool)

(assert (=> d!1541806 m!5803788))

(declare-fun m!5803790 () Bool)

(assert (=> b!4817324 m!5803790))

(assert (=> b!4817324 m!5803790))

(declare-fun m!5803792 () Bool)

(assert (=> b!4817324 m!5803792))

(assert (=> b!4817188 d!1541806))

(declare-fun bs!1160757 () Bool)

(declare-fun d!1541814 () Bool)

(assert (= bs!1160757 (and d!1541814 start!498654)))

(declare-fun lambda!234804 () Int)

(assert (=> bs!1160757 (not (= lambda!234804 lambda!234786))))

(declare-fun bs!1160758 () Bool)

(assert (= bs!1160758 (and d!1541814 d!1541806)))

(assert (=> bs!1160758 (not (= lambda!234804 lambda!234801))))

(assert (=> d!1541814 true))

(assert (=> d!1541814 (= (allKeysSameHashInMap!2498 lm!2251 hashF!1486) (forall!12492 (toList!7347 lm!2251) lambda!234804))))

(declare-fun bs!1160759 () Bool)

(assert (= bs!1160759 d!1541814))

(declare-fun m!5803794 () Bool)

(assert (=> bs!1160759 m!5803794))

(assert (=> b!4817190 d!1541814))

(declare-fun d!1541816 () Bool)

(declare-fun res!2049348 () Bool)

(declare-fun e!3009775 () Bool)

(assert (=> d!1541816 (=> res!2049348 e!3009775)))

(assert (=> d!1541816 (= res!2049348 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541816 (= (forall!12492 (toList!7347 lm!2251) lambda!234786) e!3009775)))

(declare-fun b!4817332 () Bool)

(declare-fun e!3009776 () Bool)

(assert (=> b!4817332 (= e!3009775 e!3009776)))

(declare-fun res!2049349 () Bool)

(assert (=> b!4817332 (=> (not res!2049349) (not e!3009776))))

(declare-fun dynLambda!22167 (Int tuple2!57860) Bool)

(assert (=> b!4817332 (= res!2049349 (dynLambda!22167 lambda!234786 (h!61218 (toList!7347 lm!2251))))))

(declare-fun b!4817333 () Bool)

(assert (=> b!4817333 (= e!3009776 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234786))))

(assert (= (and d!1541816 (not res!2049348)) b!4817332))

(assert (= (and b!4817332 res!2049349) b!4817333))

(declare-fun b_lambda!188529 () Bool)

(assert (=> (not b_lambda!188529) (not b!4817332)))

(declare-fun m!5803796 () Bool)

(assert (=> b!4817332 m!5803796))

(declare-fun m!5803798 () Bool)

(assert (=> b!4817333 m!5803798))

(assert (=> start!498654 d!1541816))

(declare-fun d!1541818 () Bool)

(declare-fun isStrictlySorted!955 (List!54910) Bool)

(assert (=> d!1541818 (= (inv!70344 lm!2251) (isStrictlySorted!955 (toList!7347 lm!2251)))))

(declare-fun bs!1160760 () Bool)

(assert (= bs!1160760 d!1541818))

(declare-fun m!5803800 () Bool)

(assert (=> bs!1160760 m!5803800))

(assert (=> start!498654 d!1541818))

(declare-fun bs!1160761 () Bool)

(declare-fun d!1541820 () Bool)

(assert (= bs!1160761 (and d!1541820 start!498654)))

(declare-fun lambda!234807 () Int)

(assert (=> bs!1160761 (= lambda!234807 lambda!234786)))

(declare-fun bs!1160762 () Bool)

(assert (= bs!1160762 (and d!1541820 d!1541806)))

(assert (=> bs!1160762 (= lambda!234807 lambda!234801)))

(declare-fun bs!1160763 () Bool)

(assert (= bs!1160763 (and d!1541820 d!1541814)))

(assert (=> bs!1160763 (not (= lambda!234807 lambda!234804))))

(assert (=> d!1541820 (not (contains!18618 (extractMap!2632 (toList!7347 lm!2251)) key!5322))))

(declare-fun lt!1967783 () Unit!142036)

(declare-fun choose!34948 (ListLongMap!5827 K!16444 Hashable!7182) Unit!142036)

(assert (=> d!1541820 (= lt!1967783 (choose!34948 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541820 (forall!12492 (toList!7347 lm!2251) lambda!234807)))

(assert (=> d!1541820 (= (lemmaNotInItsHashBucketThenNotInMap!446 lm!2251 key!5322 hashF!1486) lt!1967783)))

(declare-fun bs!1160764 () Bool)

(assert (= bs!1160764 d!1541820))

(assert (=> bs!1160764 m!5803646))

(assert (=> bs!1160764 m!5803646))

(assert (=> bs!1160764 m!5803648))

(declare-fun m!5803802 () Bool)

(assert (=> bs!1160764 m!5803802))

(declare-fun m!5803804 () Bool)

(assert (=> bs!1160764 m!5803804))

(assert (=> b!4817185 d!1541820))

(declare-fun d!1541822 () Bool)

(assert (=> d!1541822 (dynLambda!22167 lambda!234786 lt!1967696)))

(declare-fun lt!1967786 () Unit!142036)

(declare-fun choose!34949 (List!54910 Int tuple2!57860) Unit!142036)

(assert (=> d!1541822 (= lt!1967786 (choose!34949 (toList!7347 lm!2251) lambda!234786 lt!1967696))))

(declare-fun e!3009779 () Bool)

(assert (=> d!1541822 e!3009779))

(declare-fun res!2049352 () Bool)

(assert (=> d!1541822 (=> (not res!2049352) (not e!3009779))))

(assert (=> d!1541822 (= res!2049352 (forall!12492 (toList!7347 lm!2251) lambda!234786))))

(assert (=> d!1541822 (= (forallContained!4352 (toList!7347 lm!2251) lambda!234786 lt!1967696) lt!1967786)))

(declare-fun b!4817336 () Bool)

(assert (=> b!4817336 (= e!3009779 (contains!18616 (toList!7347 lm!2251) lt!1967696))))

(assert (= (and d!1541822 res!2049352) b!4817336))

(declare-fun b_lambda!188531 () Bool)

(assert (=> (not b_lambda!188531) (not d!1541822)))

(declare-fun m!5803806 () Bool)

(assert (=> d!1541822 m!5803806))

(declare-fun m!5803808 () Bool)

(assert (=> d!1541822 m!5803808))

(assert (=> d!1541822 m!5803650))

(assert (=> b!4817336 m!5803658))

(assert (=> b!4817186 d!1541822))

(declare-fun d!1541824 () Bool)

(declare-fun hash!5258 (Hashable!7182 K!16444) (_ BitVec 64))

(assert (=> d!1541824 (= (hash!5256 hashF!1486 key!5322) (hash!5258 hashF!1486 key!5322))))

(declare-fun bs!1160765 () Bool)

(assert (= bs!1160765 d!1541824))

(declare-fun m!5803810 () Bool)

(assert (=> bs!1160765 m!5803810))

(assert (=> b!4817186 d!1541824))

(declare-fun d!1541826 () Bool)

(assert (=> d!1541826 (contains!18616 (toList!7347 lm!2251) (tuple2!57861 lt!1967690 lt!1967689))))

(declare-fun lt!1967789 () Unit!142036)

(declare-fun choose!34950 (ListLongMap!5827 (_ BitVec 64) List!54909) Unit!142036)

(assert (=> d!1541826 (= lt!1967789 (choose!34950 lm!2251 lt!1967690 lt!1967689))))

(assert (=> d!1541826 (contains!18617 lm!2251 lt!1967690)))

(assert (=> d!1541826 (= (lemmaGetValueImpliesTupleContained!691 lm!2251 lt!1967690 lt!1967689) lt!1967789)))

(declare-fun bs!1160766 () Bool)

(assert (= bs!1160766 d!1541826))

(declare-fun m!5803812 () Bool)

(assert (=> bs!1160766 m!5803812))

(declare-fun m!5803814 () Bool)

(assert (=> bs!1160766 m!5803814))

(assert (=> bs!1160766 m!5803670))

(assert (=> b!4817186 d!1541826))

(declare-fun d!1541828 () Bool)

(assert (=> d!1541828 (= (isDefined!10557 lt!1967691) (not (isEmpty!29606 lt!1967691)))))

(declare-fun bs!1160767 () Bool)

(assert (= bs!1160767 d!1541828))

(assert (=> bs!1160767 m!5803666))

(assert (=> b!4817186 d!1541828))

(declare-fun d!1541830 () Bool)

(declare-fun get!18748 (Option!13443) List!54909)

(assert (=> d!1541830 (= (apply!13285 lm!2251 lt!1967690) (get!18748 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)))))

(declare-fun bs!1160768 () Bool)

(assert (= bs!1160768 d!1541830))

(assert (=> bs!1160768 m!5803644))

(assert (=> bs!1160768 m!5803644))

(declare-fun m!5803816 () Bool)

(assert (=> bs!1160768 m!5803816))

(assert (=> b!4817186 d!1541830))

(declare-fun bs!1160769 () Bool)

(declare-fun d!1541832 () Bool)

(assert (= bs!1160769 (and d!1541832 start!498654)))

(declare-fun lambda!234810 () Int)

(assert (=> bs!1160769 (= lambda!234810 lambda!234786)))

(declare-fun bs!1160770 () Bool)

(assert (= bs!1160770 (and d!1541832 d!1541806)))

(assert (=> bs!1160770 (= lambda!234810 lambda!234801)))

(declare-fun bs!1160771 () Bool)

(assert (= bs!1160771 (and d!1541832 d!1541814)))

(assert (=> bs!1160771 (not (= lambda!234810 lambda!234804))))

(declare-fun bs!1160772 () Bool)

(assert (= bs!1160772 (and d!1541832 d!1541820)))

(assert (=> bs!1160772 (= lambda!234810 lambda!234807)))

(assert (=> d!1541832 (contains!18617 lm!2251 (hash!5256 hashF!1486 key!5322))))

(declare-fun lt!1967792 () Unit!142036)

(declare-fun choose!34951 (ListLongMap!5827 K!16444 Hashable!7182) Unit!142036)

(assert (=> d!1541832 (= lt!1967792 (choose!34951 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541832 (forall!12492 (toList!7347 lm!2251) lambda!234810)))

(assert (=> d!1541832 (= (lemmaInGenMapThenLongMapContainsHash!1118 lm!2251 key!5322 hashF!1486) lt!1967792)))

(declare-fun bs!1160773 () Bool)

(assert (= bs!1160773 d!1541832))

(assert (=> bs!1160773 m!5803668))

(assert (=> bs!1160773 m!5803668))

(declare-fun m!5803818 () Bool)

(assert (=> bs!1160773 m!5803818))

(declare-fun m!5803820 () Bool)

(assert (=> bs!1160773 m!5803820))

(declare-fun m!5803822 () Bool)

(assert (=> bs!1160773 m!5803822))

(assert (=> b!4817186 d!1541832))

(declare-fun d!1541834 () Bool)

(assert (=> d!1541834 (= (isEmpty!29606 lt!1967691) (not ((_ is Some!13441) lt!1967691)))))

(assert (=> b!4817186 d!1541834))

(declare-fun b!4817354 () Bool)

(declare-fun e!3009791 () Bool)

(declare-fun e!3009793 () Bool)

(assert (=> b!4817354 (= e!3009791 e!3009793)))

(declare-fun res!2049363 () Bool)

(assert (=> b!4817354 (=> (not res!2049363) (not e!3009793))))

(declare-fun lt!1967795 () Option!13442)

(assert (=> b!4817354 (= res!2049363 (isDefined!10557 lt!1967795))))

(declare-fun b!4817356 () Bool)

(declare-fun e!3009792 () Option!13442)

(declare-fun e!3009794 () Option!13442)

(assert (=> b!4817356 (= e!3009792 e!3009794)))

(declare-fun c!821078 () Bool)

(assert (=> b!4817356 (= c!821078 ((_ is Cons!54785) lt!1967689))))

(declare-fun b!4817357 () Bool)

(assert (=> b!4817357 (= e!3009794 (getPair!1020 (t!362405 lt!1967689) key!5322))))

(declare-fun b!4817358 () Bool)

(assert (=> b!4817358 (= e!3009794 None!13441)))

(declare-fun b!4817359 () Bool)

(assert (=> b!4817359 (= e!3009792 (Some!13441 (h!61217 lt!1967689)))))

(declare-fun b!4817360 () Bool)

(declare-fun res!2049364 () Bool)

(assert (=> b!4817360 (=> (not res!2049364) (not e!3009793))))

(declare-fun get!18749 (Option!13442) tuple2!57858)

(assert (=> b!4817360 (= res!2049364 (= (_1!32223 (get!18749 lt!1967795)) key!5322))))

(declare-fun b!4817361 () Bool)

(declare-fun contains!18622 (List!54909 tuple2!57858) Bool)

(assert (=> b!4817361 (= e!3009793 (contains!18622 lt!1967689 (get!18749 lt!1967795)))))

(declare-fun d!1541836 () Bool)

(assert (=> d!1541836 e!3009791))

(declare-fun res!2049362 () Bool)

(assert (=> d!1541836 (=> res!2049362 e!3009791)))

(declare-fun e!3009790 () Bool)

(assert (=> d!1541836 (= res!2049362 e!3009790)))

(declare-fun res!2049361 () Bool)

(assert (=> d!1541836 (=> (not res!2049361) (not e!3009790))))

(assert (=> d!1541836 (= res!2049361 (isEmpty!29606 lt!1967795))))

(assert (=> d!1541836 (= lt!1967795 e!3009792)))

(declare-fun c!821079 () Bool)

(assert (=> d!1541836 (= c!821079 (and ((_ is Cons!54785) lt!1967689) (= (_1!32223 (h!61217 lt!1967689)) key!5322)))))

(declare-fun noDuplicateKeys!2413 (List!54909) Bool)

(assert (=> d!1541836 (noDuplicateKeys!2413 lt!1967689)))

(assert (=> d!1541836 (= (getPair!1020 lt!1967689 key!5322) lt!1967795)))

(declare-fun b!4817355 () Bool)

(declare-fun containsKey!4255 (List!54909 K!16444) Bool)

(assert (=> b!4817355 (= e!3009790 (not (containsKey!4255 lt!1967689 key!5322)))))

(assert (= (and d!1541836 c!821079) b!4817359))

(assert (= (and d!1541836 (not c!821079)) b!4817356))

(assert (= (and b!4817356 c!821078) b!4817357))

(assert (= (and b!4817356 (not c!821078)) b!4817358))

(assert (= (and d!1541836 res!2049361) b!4817355))

(assert (= (and d!1541836 (not res!2049362)) b!4817354))

(assert (= (and b!4817354 res!2049363) b!4817360))

(assert (= (and b!4817360 res!2049364) b!4817361))

(declare-fun m!5803824 () Bool)

(assert (=> b!4817361 m!5803824))

(assert (=> b!4817361 m!5803824))

(declare-fun m!5803826 () Bool)

(assert (=> b!4817361 m!5803826))

(assert (=> b!4817360 m!5803824))

(declare-fun m!5803828 () Bool)

(assert (=> b!4817355 m!5803828))

(declare-fun m!5803830 () Bool)

(assert (=> d!1541836 m!5803830))

(declare-fun m!5803832 () Bool)

(assert (=> d!1541836 m!5803832))

(declare-fun m!5803834 () Bool)

(assert (=> b!4817354 m!5803834))

(declare-fun m!5803836 () Bool)

(assert (=> b!4817357 m!5803836))

(assert (=> b!4817186 d!1541836))

(declare-fun d!1541838 () Bool)

(declare-fun lt!1967798 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9801 (List!54910) (InoxSet tuple2!57860))

(assert (=> d!1541838 (= lt!1967798 (select (content!9801 (toList!7347 lm!2251)) lt!1967696))))

(declare-fun e!3009799 () Bool)

(assert (=> d!1541838 (= lt!1967798 e!3009799)))

(declare-fun res!2049369 () Bool)

(assert (=> d!1541838 (=> (not res!2049369) (not e!3009799))))

(assert (=> d!1541838 (= res!2049369 ((_ is Cons!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541838 (= (contains!18616 (toList!7347 lm!2251) lt!1967696) lt!1967798)))

(declare-fun b!4817366 () Bool)

(declare-fun e!3009800 () Bool)

(assert (=> b!4817366 (= e!3009799 e!3009800)))

(declare-fun res!2049370 () Bool)

(assert (=> b!4817366 (=> res!2049370 e!3009800)))

(assert (=> b!4817366 (= res!2049370 (= (h!61218 (toList!7347 lm!2251)) lt!1967696))))

(declare-fun b!4817367 () Bool)

(assert (=> b!4817367 (= e!3009800 (contains!18616 (t!362406 (toList!7347 lm!2251)) lt!1967696))))

(assert (= (and d!1541838 res!2049369) b!4817366))

(assert (= (and b!4817366 (not res!2049370)) b!4817367))

(declare-fun m!5803838 () Bool)

(assert (=> d!1541838 m!5803838))

(declare-fun m!5803840 () Bool)

(assert (=> d!1541838 m!5803840))

(declare-fun m!5803842 () Bool)

(assert (=> b!4817367 m!5803842))

(assert (=> b!4817186 d!1541838))

(declare-fun d!1541840 () Bool)

(declare-fun e!3009805 () Bool)

(assert (=> d!1541840 e!3009805))

(declare-fun res!2049373 () Bool)

(assert (=> d!1541840 (=> res!2049373 e!3009805)))

(declare-fun lt!1967810 () Bool)

(assert (=> d!1541840 (= res!2049373 (not lt!1967810))))

(declare-fun lt!1967807 () Bool)

(assert (=> d!1541840 (= lt!1967810 lt!1967807)))

(declare-fun lt!1967808 () Unit!142036)

(declare-fun e!3009806 () Unit!142036)

(assert (=> d!1541840 (= lt!1967808 e!3009806)))

(declare-fun c!821082 () Bool)

(assert (=> d!1541840 (= c!821082 lt!1967807)))

(declare-fun containsKey!4256 (List!54910 (_ BitVec 64)) Bool)

(assert (=> d!1541840 (= lt!1967807 (containsKey!4256 (toList!7347 lm!2251) lt!1967690))))

(assert (=> d!1541840 (= (contains!18617 lm!2251 lt!1967690) lt!1967810)))

(declare-fun b!4817374 () Bool)

(declare-fun lt!1967809 () Unit!142036)

(assert (=> b!4817374 (= e!3009806 lt!1967809)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2358 (List!54910 (_ BitVec 64)) Unit!142036)

(assert (=> b!4817374 (= lt!1967809 (lemmaContainsKeyImpliesGetValueByKeyDefined!2358 (toList!7347 lm!2251) lt!1967690))))

(declare-fun isDefined!10561 (Option!13443) Bool)

(assert (=> b!4817374 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690))))

(declare-fun b!4817375 () Bool)

(declare-fun Unit!142045 () Unit!142036)

(assert (=> b!4817375 (= e!3009806 Unit!142045)))

(declare-fun b!4817376 () Bool)

(assert (=> b!4817376 (= e!3009805 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)))))

(assert (= (and d!1541840 c!821082) b!4817374))

(assert (= (and d!1541840 (not c!821082)) b!4817375))

(assert (= (and d!1541840 (not res!2049373)) b!4817376))

(declare-fun m!5803844 () Bool)

(assert (=> d!1541840 m!5803844))

(declare-fun m!5803846 () Bool)

(assert (=> b!4817374 m!5803846))

(assert (=> b!4817374 m!5803644))

(assert (=> b!4817374 m!5803644))

(declare-fun m!5803848 () Bool)

(assert (=> b!4817374 m!5803848))

(assert (=> b!4817376 m!5803644))

(assert (=> b!4817376 m!5803644))

(assert (=> b!4817376 m!5803848))

(assert (=> b!4817186 d!1541840))

(declare-fun b!4817386 () Bool)

(declare-fun e!3009811 () Option!13443)

(declare-fun e!3009812 () Option!13443)

(assert (=> b!4817386 (= e!3009811 e!3009812)))

(declare-fun c!821088 () Bool)

(assert (=> b!4817386 (= c!821088 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (not (= (_1!32224 (h!61218 (toList!7347 lm!2251))) lt!1967690))))))

(declare-fun b!4817385 () Bool)

(assert (=> b!4817385 (= e!3009811 (Some!13442 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(declare-fun b!4817388 () Bool)

(assert (=> b!4817388 (= e!3009812 None!13442)))

(declare-fun b!4817387 () Bool)

(assert (=> b!4817387 (= e!3009812 (getValueByKey!2570 (t!362406 (toList!7347 lm!2251)) lt!1967690))))

(declare-fun d!1541842 () Bool)

(declare-fun c!821087 () Bool)

(assert (=> d!1541842 (= c!821087 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (= (_1!32224 (h!61218 (toList!7347 lm!2251))) lt!1967690)))))

(assert (=> d!1541842 (= (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690) e!3009811)))

(assert (= (and d!1541842 c!821087) b!4817385))

(assert (= (and d!1541842 (not c!821087)) b!4817386))

(assert (= (and b!4817386 c!821088) b!4817387))

(assert (= (and b!4817386 (not c!821088)) b!4817388))

(declare-fun m!5803850 () Bool)

(assert (=> b!4817387 m!5803850))

(assert (=> b!4817187 d!1541842))

(declare-fun b!4817393 () Bool)

(declare-fun e!3009815 () Bool)

(declare-fun tp!1361996 () Bool)

(declare-fun tp!1361997 () Bool)

(assert (=> b!4817393 (= e!3009815 (and tp!1361996 tp!1361997))))

(assert (=> b!4817189 (= tp!1361985 e!3009815)))

(assert (= (and b!4817189 ((_ is Cons!54786) (toList!7347 lm!2251))) b!4817393))

(declare-fun b_lambda!188533 () Bool)

(assert (= b_lambda!188531 (or start!498654 b_lambda!188533)))

(declare-fun bs!1160774 () Bool)

(declare-fun d!1541844 () Bool)

(assert (= bs!1160774 (and d!1541844 start!498654)))

(assert (=> bs!1160774 (= (dynLambda!22167 lambda!234786 lt!1967696) (noDuplicateKeys!2413 (_2!32224 lt!1967696)))))

(declare-fun m!5803852 () Bool)

(assert (=> bs!1160774 m!5803852))

(assert (=> d!1541822 d!1541844))

(declare-fun b_lambda!188535 () Bool)

(assert (= b_lambda!188529 (or start!498654 b_lambda!188535)))

(declare-fun bs!1160775 () Bool)

(declare-fun d!1541846 () Bool)

(assert (= bs!1160775 (and d!1541846 start!498654)))

(assert (=> bs!1160775 (= (dynLambda!22167 lambda!234786 (h!61218 (toList!7347 lm!2251))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(declare-fun m!5803854 () Bool)

(assert (=> bs!1160775 m!5803854))

(assert (=> b!4817332 d!1541846))

(check-sat (not d!1541818) (not d!1541824) (not b!4817300) (not b!4817374) (not b!4817393) (not b!4817355) (not d!1541840) (not d!1541822) (not b!4817336) (not b!4817324) (not b_lambda!188535) (not b!4817376) (not b!4817306) (not bm!336005) (not b!4817360) (not b_lambda!188533) (not d!1541806) (not d!1541838) (not b!4817357) (not d!1541836) (not d!1541828) (not b!4817307) (not b!4817305) (not d!1541826) (not d!1541830) (not b!4817308) tp_is_empty!34241 (not b!4817301) (not b!4817367) (not d!1541820) (not b!4817333) (not b!4817354) (not bs!1160774) (not b!4817304) (not b!4817387) (not d!1541788) (not d!1541814) (not d!1541832) (not b!4817361) (not bs!1160775))
(check-sat)
(get-model)

(declare-fun b!4817497 () Bool)

(assert (=> b!4817497 true))

(declare-fun d!1541886 () Bool)

(declare-fun e!3009881 () Bool)

(assert (=> d!1541886 e!3009881))

(declare-fun res!2049443 () Bool)

(assert (=> d!1541886 (=> (not res!2049443) (not e!3009881))))

(declare-fun lt!1967899 () List!54912)

(declare-fun noDuplicate!946 (List!54912) Bool)

(assert (=> d!1541886 (= res!2049443 (noDuplicate!946 lt!1967899))))

(assert (=> d!1541886 (= lt!1967899 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1541886 (= (keys!20122 (extractMap!2632 (toList!7347 lm!2251))) lt!1967899)))

(declare-fun b!4817496 () Bool)

(declare-fun res!2049444 () Bool)

(assert (=> b!4817496 (=> (not res!2049444) (not e!3009881))))

(declare-fun length!748 (List!54912) Int)

(declare-fun length!749 (List!54909) Int)

(assert (=> b!4817496 (= res!2049444 (= (length!748 lt!1967899) (length!749 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(declare-fun res!2049442 () Bool)

(assert (=> b!4817497 (=> (not res!2049442) (not e!3009881))))

(declare-fun lambda!234862 () Int)

(declare-fun forall!12495 (List!54912 Int) Bool)

(assert (=> b!4817497 (= res!2049442 (forall!12495 lt!1967899 lambda!234862))))

(declare-fun lambda!234863 () Int)

(declare-fun b!4817498 () Bool)

(declare-fun content!9804 (List!54912) (InoxSet K!16444))

(declare-fun map!12523 (List!54909 Int) List!54912)

(assert (=> b!4817498 (= e!3009881 (= (content!9804 lt!1967899) (content!9804 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863))))))

(assert (= (and d!1541886 res!2049443) b!4817496))

(assert (= (and b!4817496 res!2049444) b!4817497))

(assert (= (and b!4817497 res!2049442) b!4817498))

(declare-fun m!5803966 () Bool)

(assert (=> d!1541886 m!5803966))

(assert (=> d!1541886 m!5803768))

(declare-fun m!5803968 () Bool)

(assert (=> b!4817496 m!5803968))

(declare-fun m!5803970 () Bool)

(assert (=> b!4817496 m!5803970))

(declare-fun m!5803972 () Bool)

(assert (=> b!4817497 m!5803972))

(declare-fun m!5803974 () Bool)

(assert (=> b!4817498 m!5803974))

(declare-fun m!5803976 () Bool)

(assert (=> b!4817498 m!5803976))

(assert (=> b!4817498 m!5803976))

(declare-fun m!5803978 () Bool)

(assert (=> b!4817498 m!5803978))

(assert (=> b!4817306 d!1541886))

(declare-fun b!4817512 () Bool)

(declare-fun e!3009887 () Bool)

(declare-fun e!3009889 () Bool)

(assert (=> b!4817512 (= e!3009887 e!3009889)))

(declare-fun res!2049450 () Bool)

(assert (=> b!4817512 (=> (not res!2049450) (not e!3009889))))

(declare-fun lt!1967907 () Option!13442)

(assert (=> b!4817512 (= res!2049450 (isDefined!10557 lt!1967907))))

(declare-fun b!4817514 () Bool)

(declare-fun e!3009888 () Option!13442)

(declare-fun e!3009890 () Option!13442)

(assert (=> b!4817514 (= e!3009888 e!3009890)))

(declare-fun c!821107 () Bool)

(assert (=> b!4817514 (= c!821107 ((_ is Cons!54785) (t!362405 lt!1967689)))))

(declare-fun b!4817515 () Bool)

(assert (=> b!4817515 (= e!3009890 (getPair!1020 (t!362405 (t!362405 lt!1967689)) key!5322))))

(declare-fun b!4817516 () Bool)

(assert (=> b!4817516 (= e!3009890 None!13441)))

(declare-fun b!4817517 () Bool)

(assert (=> b!4817517 (= e!3009888 (Some!13441 (h!61217 (t!362405 lt!1967689))))))

(declare-fun b!4817518 () Bool)

(declare-fun res!2049451 () Bool)

(assert (=> b!4817518 (=> (not res!2049451) (not e!3009889))))

(assert (=> b!4817518 (= res!2049451 (= (_1!32223 (get!18749 lt!1967907)) key!5322))))

(declare-fun b!4817519 () Bool)

(assert (=> b!4817519 (= e!3009889 (contains!18622 (t!362405 lt!1967689) (get!18749 lt!1967907)))))

(declare-fun d!1541888 () Bool)

(assert (=> d!1541888 e!3009887))

(declare-fun res!2049449 () Bool)

(assert (=> d!1541888 (=> res!2049449 e!3009887)))

(declare-fun e!3009886 () Bool)

(assert (=> d!1541888 (= res!2049449 e!3009886)))

(declare-fun res!2049448 () Bool)

(assert (=> d!1541888 (=> (not res!2049448) (not e!3009886))))

(assert (=> d!1541888 (= res!2049448 (isEmpty!29606 lt!1967907))))

(assert (=> d!1541888 (= lt!1967907 e!3009888)))

(declare-fun c!821108 () Bool)

(assert (=> d!1541888 (= c!821108 (and ((_ is Cons!54785) (t!362405 lt!1967689)) (= (_1!32223 (h!61217 (t!362405 lt!1967689))) key!5322)))))

(assert (=> d!1541888 (noDuplicateKeys!2413 (t!362405 lt!1967689))))

(assert (=> d!1541888 (= (getPair!1020 (t!362405 lt!1967689) key!5322) lt!1967907)))

(declare-fun b!4817513 () Bool)

(assert (=> b!4817513 (= e!3009886 (not (containsKey!4255 (t!362405 lt!1967689) key!5322)))))

(assert (= (and d!1541888 c!821108) b!4817517))

(assert (= (and d!1541888 (not c!821108)) b!4817514))

(assert (= (and b!4817514 c!821107) b!4817515))

(assert (= (and b!4817514 (not c!821107)) b!4817516))

(assert (= (and d!1541888 res!2049448) b!4817513))

(assert (= (and d!1541888 (not res!2049449)) b!4817512))

(assert (= (and b!4817512 res!2049450) b!4817518))

(assert (= (and b!4817518 res!2049451) b!4817519))

(declare-fun m!5803980 () Bool)

(assert (=> b!4817519 m!5803980))

(assert (=> b!4817519 m!5803980))

(declare-fun m!5803982 () Bool)

(assert (=> b!4817519 m!5803982))

(assert (=> b!4817518 m!5803980))

(declare-fun m!5803986 () Bool)

(assert (=> b!4817513 m!5803986))

(declare-fun m!5803990 () Bool)

(assert (=> d!1541888 m!5803990))

(declare-fun m!5803993 () Bool)

(assert (=> d!1541888 m!5803993))

(declare-fun m!5803998 () Bool)

(assert (=> b!4817512 m!5803998))

(declare-fun m!5804000 () Bool)

(assert (=> b!4817515 m!5804000))

(assert (=> b!4817357 d!1541888))

(assert (=> d!1541828 d!1541834))

(declare-fun d!1541890 () Bool)

(declare-fun isEmpty!29609 (Option!13445) Bool)

(assert (=> d!1541890 (= (isDefined!10560 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)) (not (isEmpty!29609 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))))

(declare-fun bs!1160794 () Bool)

(assert (= bs!1160794 d!1541890))

(assert (=> bs!1160794 m!5803758))

(declare-fun m!5804020 () Bool)

(assert (=> bs!1160794 m!5804020))

(assert (=> b!4817307 d!1541890))

(declare-fun b!4817539 () Bool)

(declare-fun e!3009904 () Option!13445)

(assert (=> b!4817539 (= e!3009904 (getValueByKey!2572 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322))))

(declare-fun b!4817537 () Bool)

(declare-fun e!3009903 () Option!13445)

(assert (=> b!4817537 (= e!3009903 (Some!13444 (_2!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun d!1541894 () Bool)

(declare-fun c!821114 () Bool)

(assert (=> d!1541894 (= c!821114 (and ((_ is Cons!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322)))))

(assert (=> d!1541894 (= (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) e!3009903)))

(declare-fun b!4817540 () Bool)

(assert (=> b!4817540 (= e!3009904 None!13444)))

(declare-fun b!4817538 () Bool)

(assert (=> b!4817538 (= e!3009903 e!3009904)))

(declare-fun c!821115 () Bool)

(assert (=> b!4817538 (= c!821115 (and ((_ is Cons!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (not (= (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))))

(assert (= (and d!1541894 c!821114) b!4817537))

(assert (= (and d!1541894 (not c!821114)) b!4817538))

(assert (= (and b!4817538 c!821115) b!4817539))

(assert (= (and b!4817538 (not c!821115)) b!4817540))

(declare-fun m!5804034 () Bool)

(assert (=> b!4817539 m!5804034))

(assert (=> b!4817307 d!1541894))

(declare-fun d!1541904 () Bool)

(declare-fun res!2049461 () Bool)

(declare-fun e!3009907 () Bool)

(assert (=> d!1541904 (=> res!2049461 e!3009907)))

(assert (=> d!1541904 (= res!2049461 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541904 (= (forall!12492 (toList!7347 lm!2251) lambda!234804) e!3009907)))

(declare-fun b!4817543 () Bool)

(declare-fun e!3009908 () Bool)

(assert (=> b!4817543 (= e!3009907 e!3009908)))

(declare-fun res!2049462 () Bool)

(assert (=> b!4817543 (=> (not res!2049462) (not e!3009908))))

(assert (=> b!4817543 (= res!2049462 (dynLambda!22167 lambda!234804 (h!61218 (toList!7347 lm!2251))))))

(declare-fun b!4817544 () Bool)

(assert (=> b!4817544 (= e!3009908 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234804))))

(assert (= (and d!1541904 (not res!2049461)) b!4817543))

(assert (= (and b!4817543 res!2049462) b!4817544))

(declare-fun b_lambda!188547 () Bool)

(assert (=> (not b_lambda!188547) (not b!4817543)))

(declare-fun m!5804040 () Bool)

(assert (=> b!4817543 m!5804040))

(declare-fun m!5804042 () Bool)

(assert (=> b!4817544 m!5804042))

(assert (=> d!1541814 d!1541904))

(declare-fun d!1541908 () Bool)

(declare-fun lt!1967921 () Bool)

(assert (=> d!1541908 (= lt!1967921 (select (content!9804 e!3009756) key!5322))))

(declare-fun e!3009916 () Bool)

(assert (=> d!1541908 (= lt!1967921 e!3009916)))

(declare-fun res!2049470 () Bool)

(assert (=> d!1541908 (=> (not res!2049470) (not e!3009916))))

(assert (=> d!1541908 (= res!2049470 ((_ is Cons!54788) e!3009756))))

(assert (=> d!1541908 (= (contains!18621 e!3009756 key!5322) lt!1967921)))

(declare-fun b!4817552 () Bool)

(declare-fun e!3009915 () Bool)

(assert (=> b!4817552 (= e!3009916 e!3009915)))

(declare-fun res!2049469 () Bool)

(assert (=> b!4817552 (=> res!2049469 e!3009915)))

(assert (=> b!4817552 (= res!2049469 (= (h!61220 e!3009756) key!5322))))

(declare-fun b!4817553 () Bool)

(assert (=> b!4817553 (= e!3009915 (contains!18621 (t!362408 e!3009756) key!5322))))

(assert (= (and d!1541908 res!2049470) b!4817552))

(assert (= (and b!4817552 (not res!2049469)) b!4817553))

(declare-fun m!5804052 () Bool)

(assert (=> d!1541908 m!5804052))

(declare-fun m!5804054 () Bool)

(assert (=> d!1541908 m!5804054))

(declare-fun m!5804056 () Bool)

(assert (=> b!4817553 m!5804056))

(assert (=> bm!336005 d!1541908))

(declare-fun d!1541918 () Bool)

(declare-fun lt!1967922 () Bool)

(assert (=> d!1541918 (= lt!1967922 (select (content!9801 (t!362406 (toList!7347 lm!2251))) lt!1967696))))

(declare-fun e!3009917 () Bool)

(assert (=> d!1541918 (= lt!1967922 e!3009917)))

(declare-fun res!2049471 () Bool)

(assert (=> d!1541918 (=> (not res!2049471) (not e!3009917))))

(assert (=> d!1541918 (= res!2049471 ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1541918 (= (contains!18616 (t!362406 (toList!7347 lm!2251)) lt!1967696) lt!1967922)))

(declare-fun b!4817554 () Bool)

(declare-fun e!3009918 () Bool)

(assert (=> b!4817554 (= e!3009917 e!3009918)))

(declare-fun res!2049472 () Bool)

(assert (=> b!4817554 (=> res!2049472 e!3009918)))

(assert (=> b!4817554 (= res!2049472 (= (h!61218 (t!362406 (toList!7347 lm!2251))) lt!1967696))))

(declare-fun b!4817555 () Bool)

(assert (=> b!4817555 (= e!3009918 (contains!18616 (t!362406 (t!362406 (toList!7347 lm!2251))) lt!1967696))))

(assert (= (and d!1541918 res!2049471) b!4817554))

(assert (= (and b!4817554 (not res!2049472)) b!4817555))

(declare-fun m!5804058 () Bool)

(assert (=> d!1541918 m!5804058))

(declare-fun m!5804060 () Bool)

(assert (=> d!1541918 m!5804060))

(declare-fun m!5804062 () Bool)

(assert (=> b!4817555 m!5804062))

(assert (=> b!4817367 d!1541918))

(declare-fun d!1541920 () Bool)

(declare-fun res!2049477 () Bool)

(declare-fun e!3009929 () Bool)

(assert (=> d!1541920 (=> res!2049477 e!3009929)))

(assert (=> d!1541920 (= res!2049477 (and ((_ is Cons!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322)))))

(assert (=> d!1541920 (= (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) e!3009929)))

(declare-fun b!4817572 () Bool)

(declare-fun e!3009930 () Bool)

(assert (=> b!4817572 (= e!3009929 e!3009930)))

(declare-fun res!2049478 () Bool)

(assert (=> b!4817572 (=> (not res!2049478) (not e!3009930))))

(assert (=> b!4817572 (= res!2049478 ((_ is Cons!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun b!4817573 () Bool)

(assert (=> b!4817573 (= e!3009930 (containsKey!4254 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322))))

(assert (= (and d!1541920 (not res!2049477)) b!4817572))

(assert (= (and b!4817572 res!2049478) b!4817573))

(declare-fun m!5804066 () Bool)

(assert (=> b!4817573 m!5804066))

(assert (=> d!1541788 d!1541920))

(declare-fun d!1541924 () Bool)

(declare-fun choose!34957 (Hashable!7182 K!16444) (_ BitVec 64))

(assert (=> d!1541924 (= (hash!5258 hashF!1486 key!5322) (choose!34957 hashF!1486 key!5322))))

(declare-fun bs!1160800 () Bool)

(assert (= bs!1160800 d!1541924))

(declare-fun m!5804068 () Bool)

(assert (=> bs!1160800 m!5804068))

(assert (=> d!1541824 d!1541924))

(declare-fun bs!1160810 () Bool)

(declare-fun b!4817624 () Bool)

(assert (= bs!1160810 (and b!4817624 b!4817497)))

(declare-fun lambda!234876 () Int)

(assert (=> bs!1160810 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234876 lambda!234862))))

(assert (=> b!4817624 true))

(declare-fun bs!1160811 () Bool)

(declare-fun b!4817631 () Bool)

(assert (= bs!1160811 (and b!4817631 b!4817497)))

(declare-fun lambda!234877 () Int)

(assert (=> bs!1160811 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234877 lambda!234862))))

(declare-fun bs!1160812 () Bool)

(assert (= bs!1160812 (and b!4817631 b!4817624)))

(assert (=> bs!1160812 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234877 lambda!234876))))

(assert (=> b!4817631 true))

(declare-fun bs!1160813 () Bool)

(declare-fun b!4817626 () Bool)

(assert (= bs!1160813 (and b!4817626 b!4817497)))

(declare-fun lambda!234878 () Int)

(assert (=> bs!1160813 (= lambda!234878 lambda!234862)))

(declare-fun bs!1160814 () Bool)

(assert (= bs!1160814 (and b!4817626 b!4817624)))

(assert (=> bs!1160814 (= (= (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234878 lambda!234876))))

(declare-fun bs!1160815 () Bool)

(assert (= bs!1160815 (and b!4817626 b!4817631)))

(assert (=> bs!1160815 (= (= (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234878 lambda!234877))))

(assert (=> b!4817626 true))

(declare-fun bs!1160816 () Bool)

(declare-fun b!4817629 () Bool)

(assert (= bs!1160816 (and b!4817629 b!4817498)))

(declare-fun lambda!234879 () Int)

(assert (=> bs!1160816 (= lambda!234879 lambda!234863)))

(declare-fun b!4817623 () Bool)

(declare-fun res!2049506 () Bool)

(declare-fun e!3009968 () Bool)

(assert (=> b!4817623 (=> (not res!2049506) (not e!3009968))))

(declare-fun lt!1967951 () List!54912)

(assert (=> b!4817623 (= res!2049506 (= (length!748 lt!1967951) (length!749 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> b!4817624 false))

(declare-fun lt!1967947 () Unit!142036)

(declare-fun forallContained!4355 (List!54912 Int K!16444) Unit!142036)

(assert (=> b!4817624 (= lt!1967947 (forallContained!4355 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lambda!234876 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun e!3009966 () Unit!142036)

(declare-fun Unit!142062 () Unit!142036)

(assert (=> b!4817624 (= e!3009966 Unit!142062)))

(declare-fun b!4817625 () Bool)

(assert (=> b!4817625 false))

(declare-fun e!3009967 () Unit!142036)

(declare-fun Unit!142063 () Unit!142036)

(assert (=> b!4817625 (= e!3009967 Unit!142063)))

(declare-fun d!1541926 () Bool)

(assert (=> d!1541926 e!3009968))

(declare-fun res!2049507 () Bool)

(assert (=> d!1541926 (=> (not res!2049507) (not e!3009968))))

(assert (=> d!1541926 (= res!2049507 (noDuplicate!946 lt!1967951))))

(declare-fun e!3009969 () List!54912)

(assert (=> d!1541926 (= lt!1967951 e!3009969)))

(declare-fun c!821130 () Bool)

(assert (=> d!1541926 (= c!821130 ((_ is Cons!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1541926 (invariantList!1794 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))

(assert (=> d!1541926 (= (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lt!1967951)))

(declare-fun res!2049508 () Bool)

(assert (=> b!4817626 (=> (not res!2049508) (not e!3009968))))

(assert (=> b!4817626 (= res!2049508 (forall!12495 lt!1967951 lambda!234878))))

(declare-fun b!4817627 () Bool)

(declare-fun Unit!142064 () Unit!142036)

(assert (=> b!4817627 (= e!3009966 Unit!142064)))

(declare-fun b!4817628 () Bool)

(assert (=> b!4817628 (= e!3009969 Nil!54788)))

(assert (=> b!4817629 (= e!3009968 (= (content!9804 lt!1967951) (content!9804 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879))))))

(declare-fun b!4817630 () Bool)

(declare-fun Unit!142065 () Unit!142036)

(assert (=> b!4817630 (= e!3009967 Unit!142065)))

(assert (=> b!4817631 (= e!3009969 (Cons!54788 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun c!821132 () Bool)

(assert (=> b!4817631 (= c!821132 (containsKey!4254 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun lt!1967950 () Unit!142036)

(assert (=> b!4817631 (= lt!1967950 e!3009967)))

(declare-fun c!821131 () Bool)

(assert (=> b!4817631 (= c!821131 (contains!18621 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun lt!1967948 () Unit!142036)

(assert (=> b!4817631 (= lt!1967948 e!3009966)))

(declare-fun lt!1967949 () List!54912)

(assert (=> b!4817631 (= lt!1967949 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(declare-fun lt!1967952 () Unit!142036)

(declare-fun lemmaForallContainsAddHeadPreserves!361 (List!54909 List!54912 tuple2!57858) Unit!142036)

(assert (=> b!4817631 (= lt!1967952 (lemmaForallContainsAddHeadPreserves!361 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lt!1967949 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> b!4817631 (forall!12495 lt!1967949 lambda!234877)))

(declare-fun lt!1967953 () Unit!142036)

(assert (=> b!4817631 (= lt!1967953 lt!1967952)))

(assert (= (and d!1541926 c!821130) b!4817631))

(assert (= (and d!1541926 (not c!821130)) b!4817628))

(assert (= (and b!4817631 c!821132) b!4817625))

(assert (= (and b!4817631 (not c!821132)) b!4817630))

(assert (= (and b!4817631 c!821131) b!4817624))

(assert (= (and b!4817631 (not c!821131)) b!4817627))

(assert (= (and d!1541926 res!2049507) b!4817623))

(assert (= (and b!4817623 res!2049506) b!4817626))

(assert (= (and b!4817626 res!2049508) b!4817629))

(declare-fun m!5804104 () Bool)

(assert (=> b!4817629 m!5804104))

(declare-fun m!5804106 () Bool)

(assert (=> b!4817629 m!5804106))

(assert (=> b!4817629 m!5804106))

(declare-fun m!5804108 () Bool)

(assert (=> b!4817629 m!5804108))

(declare-fun m!5804110 () Bool)

(assert (=> b!4817623 m!5804110))

(assert (=> b!4817623 m!5803970))

(declare-fun m!5804112 () Bool)

(assert (=> b!4817631 m!5804112))

(declare-fun m!5804114 () Bool)

(assert (=> b!4817631 m!5804114))

(declare-fun m!5804116 () Bool)

(assert (=> b!4817631 m!5804116))

(declare-fun m!5804118 () Bool)

(assert (=> b!4817631 m!5804118))

(declare-fun m!5804120 () Bool)

(assert (=> b!4817631 m!5804120))

(assert (=> b!4817631 m!5804118))

(assert (=> b!4817624 m!5804118))

(assert (=> b!4817624 m!5804118))

(declare-fun m!5804122 () Bool)

(assert (=> b!4817624 m!5804122))

(declare-fun m!5804124 () Bool)

(assert (=> d!1541926 m!5804124))

(declare-fun m!5804126 () Bool)

(assert (=> d!1541926 m!5804126))

(declare-fun m!5804128 () Bool)

(assert (=> b!4817626 m!5804128))

(assert (=> b!4817304 d!1541926))

(declare-fun d!1541962 () Bool)

(declare-fun res!2049513 () Bool)

(declare-fun e!3009974 () Bool)

(assert (=> d!1541962 (=> res!2049513 e!3009974)))

(assert (=> d!1541962 (= res!2049513 (and ((_ is Cons!54785) lt!1967689) (= (_1!32223 (h!61217 lt!1967689)) key!5322)))))

(assert (=> d!1541962 (= (containsKey!4255 lt!1967689 key!5322) e!3009974)))

(declare-fun b!4817638 () Bool)

(declare-fun e!3009975 () Bool)

(assert (=> b!4817638 (= e!3009974 e!3009975)))

(declare-fun res!2049514 () Bool)

(assert (=> b!4817638 (=> (not res!2049514) (not e!3009975))))

(assert (=> b!4817638 (= res!2049514 ((_ is Cons!54785) lt!1967689))))

(declare-fun b!4817639 () Bool)

(assert (=> b!4817639 (= e!3009975 (containsKey!4255 (t!362405 lt!1967689) key!5322))))

(assert (= (and d!1541962 (not res!2049513)) b!4817638))

(assert (= (and b!4817638 res!2049514) b!4817639))

(assert (=> b!4817639 m!5803986))

(assert (=> b!4817355 d!1541962))

(declare-fun d!1541964 () Bool)

(declare-fun c!821135 () Bool)

(assert (=> d!1541964 (= c!821135 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(declare-fun e!3009978 () (InoxSet tuple2!57860))

(assert (=> d!1541964 (= (content!9801 (toList!7347 lm!2251)) e!3009978)))

(declare-fun b!4817644 () Bool)

(assert (=> b!4817644 (= e!3009978 ((as const (Array tuple2!57860 Bool)) false))))

(declare-fun b!4817645 () Bool)

(assert (=> b!4817645 (= e!3009978 ((_ map or) (store ((as const (Array tuple2!57860 Bool)) false) (h!61218 (toList!7347 lm!2251)) true) (content!9801 (t!362406 (toList!7347 lm!2251)))))))

(assert (= (and d!1541964 c!821135) b!4817644))

(assert (= (and d!1541964 (not c!821135)) b!4817645))

(declare-fun m!5804130 () Bool)

(assert (=> b!4817645 m!5804130))

(assert (=> b!4817645 m!5804058))

(assert (=> d!1541838 d!1541964))

(declare-fun d!1541966 () Bool)

(assert (=> d!1541966 (isDefined!10560 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(declare-fun lt!1967956 () Unit!142036)

(declare-fun choose!34958 (List!54909 K!16444) Unit!142036)

(assert (=> d!1541966 (= lt!1967956 (choose!34958 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> d!1541966 (invariantList!1794 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))

(assert (=> d!1541966 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2357 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) lt!1967956)))

(declare-fun bs!1160817 () Bool)

(assert (= bs!1160817 d!1541966))

(assert (=> bs!1160817 m!5803758))

(assert (=> bs!1160817 m!5803758))

(assert (=> bs!1160817 m!5803760))

(declare-fun m!5804132 () Bool)

(assert (=> bs!1160817 m!5804132))

(assert (=> bs!1160817 m!5804126))

(assert (=> b!4817305 d!1541966))

(assert (=> b!4817305 d!1541890))

(assert (=> b!4817305 d!1541894))

(declare-fun d!1541968 () Bool)

(assert (=> d!1541968 (contains!18621 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322)))

(declare-fun lt!1967959 () Unit!142036)

(declare-fun choose!34959 (List!54909 K!16444) Unit!142036)

(assert (=> d!1541968 (= lt!1967959 (choose!34959 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> d!1541968 (invariantList!1794 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))

(assert (=> d!1541968 (= (lemmaInListThenGetKeysListContains!1136 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) lt!1967959)))

(declare-fun bs!1160818 () Bool)

(assert (= bs!1160818 d!1541968))

(assert (=> bs!1160818 m!5803768))

(assert (=> bs!1160818 m!5803768))

(declare-fun m!5804134 () Bool)

(assert (=> bs!1160818 m!5804134))

(declare-fun m!5804136 () Bool)

(assert (=> bs!1160818 m!5804136))

(assert (=> bs!1160818 m!5804126))

(assert (=> b!4817305 d!1541968))

(declare-fun d!1541970 () Bool)

(declare-fun res!2049519 () Bool)

(declare-fun e!3009983 () Bool)

(assert (=> d!1541970 (=> res!2049519 e!3009983)))

(assert (=> d!1541970 (= res!2049519 (or ((_ is Nil!54786) (toList!7347 lm!2251)) ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1541970 (= (isStrictlySorted!955 (toList!7347 lm!2251)) e!3009983)))

(declare-fun b!4817650 () Bool)

(declare-fun e!3009984 () Bool)

(assert (=> b!4817650 (= e!3009983 e!3009984)))

(declare-fun res!2049520 () Bool)

(assert (=> b!4817650 (=> (not res!2049520) (not e!3009984))))

(assert (=> b!4817650 (= res!2049520 (bvslt (_1!32224 (h!61218 (toList!7347 lm!2251))) (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun b!4817651 () Bool)

(assert (=> b!4817651 (= e!3009984 (isStrictlySorted!955 (t!362406 (toList!7347 lm!2251))))))

(assert (= (and d!1541970 (not res!2049519)) b!4817650))

(assert (= (and b!4817650 res!2049520) b!4817651))

(declare-fun m!5804138 () Bool)

(assert (=> b!4817651 m!5804138))

(assert (=> d!1541818 d!1541970))

(declare-fun d!1541972 () Bool)

(declare-fun lt!1967960 () Bool)

(assert (=> d!1541972 (= lt!1967960 (select (content!9804 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) key!5322))))

(declare-fun e!3009986 () Bool)

(assert (=> d!1541972 (= lt!1967960 e!3009986)))

(declare-fun res!2049522 () Bool)

(assert (=> d!1541972 (=> (not res!2049522) (not e!3009986))))

(assert (=> d!1541972 (= res!2049522 ((_ is Cons!54788) (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1541972 (= (contains!18621 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))) key!5322) lt!1967960)))

(declare-fun b!4817652 () Bool)

(declare-fun e!3009985 () Bool)

(assert (=> b!4817652 (= e!3009986 e!3009985)))

(declare-fun res!2049521 () Bool)

(assert (=> b!4817652 (=> res!2049521 e!3009985)))

(assert (=> b!4817652 (= res!2049521 (= (h!61220 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) key!5322))))

(declare-fun b!4817653 () Bool)

(assert (=> b!4817653 (= e!3009985 (contains!18621 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) key!5322))))

(assert (= (and d!1541972 res!2049522) b!4817652))

(assert (= (and b!4817652 (not res!2049521)) b!4817653))

(assert (=> d!1541972 m!5803770))

(declare-fun m!5804140 () Bool)

(assert (=> d!1541972 m!5804140))

(declare-fun m!5804142 () Bool)

(assert (=> d!1541972 m!5804142))

(declare-fun m!5804144 () Bool)

(assert (=> b!4817653 m!5804144))

(assert (=> b!4817301 d!1541972))

(assert (=> b!4817301 d!1541886))

(declare-fun b!4817655 () Bool)

(declare-fun e!3009987 () Option!13443)

(declare-fun e!3009988 () Option!13443)

(assert (=> b!4817655 (= e!3009987 e!3009988)))

(declare-fun c!821137 () Bool)

(assert (=> b!4817655 (= c!821137 (and ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))) (not (= (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lt!1967690))))))

(declare-fun b!4817654 () Bool)

(assert (=> b!4817654 (= e!3009987 (Some!13442 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun b!4817657 () Bool)

(assert (=> b!4817657 (= e!3009988 None!13442)))

(declare-fun b!4817656 () Bool)

(assert (=> b!4817656 (= e!3009988 (getValueByKey!2570 (t!362406 (t!362406 (toList!7347 lm!2251))) lt!1967690))))

(declare-fun d!1541974 () Bool)

(declare-fun c!821136 () Bool)

(assert (=> d!1541974 (= c!821136 (and ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))) (= (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lt!1967690)))))

(assert (=> d!1541974 (= (getValueByKey!2570 (t!362406 (toList!7347 lm!2251)) lt!1967690) e!3009987)))

(assert (= (and d!1541974 c!821136) b!4817654))

(assert (= (and d!1541974 (not c!821136)) b!4817655))

(assert (= (and b!4817655 c!821137) b!4817656))

(assert (= (and b!4817655 (not c!821137)) b!4817657))

(declare-fun m!5804146 () Bool)

(assert (=> b!4817656 m!5804146))

(assert (=> b!4817387 d!1541974))

(declare-fun d!1541976 () Bool)

(assert (=> d!1541976 (= (isDefined!10557 lt!1967795) (not (isEmpty!29606 lt!1967795)))))

(declare-fun bs!1160819 () Bool)

(assert (= bs!1160819 d!1541976))

(assert (=> bs!1160819 m!5803830))

(assert (=> b!4817354 d!1541976))

(declare-fun d!1541978 () Bool)

(assert (=> d!1541978 (dynLambda!22167 lambda!234786 lt!1967696)))

(assert (=> d!1541978 true))

(declare-fun _$7!2440 () Unit!142036)

(assert (=> d!1541978 (= (choose!34949 (toList!7347 lm!2251) lambda!234786 lt!1967696) _$7!2440)))

(declare-fun b_lambda!188563 () Bool)

(assert (=> (not b_lambda!188563) (not d!1541978)))

(declare-fun bs!1160820 () Bool)

(assert (= bs!1160820 d!1541978))

(assert (=> bs!1160820 m!5803806))

(assert (=> d!1541822 d!1541978))

(assert (=> d!1541822 d!1541816))

(assert (=> b!4817300 d!1541972))

(assert (=> b!4817300 d!1541886))

(declare-fun d!1541980 () Bool)

(declare-fun e!3009989 () Bool)

(assert (=> d!1541980 e!3009989))

(declare-fun res!2049523 () Bool)

(assert (=> d!1541980 (=> res!2049523 e!3009989)))

(declare-fun lt!1967964 () Bool)

(assert (=> d!1541980 (= res!2049523 (not lt!1967964))))

(declare-fun lt!1967961 () Bool)

(assert (=> d!1541980 (= lt!1967964 lt!1967961)))

(declare-fun lt!1967962 () Unit!142036)

(declare-fun e!3009990 () Unit!142036)

(assert (=> d!1541980 (= lt!1967962 e!3009990)))

(declare-fun c!821138 () Bool)

(assert (=> d!1541980 (= c!821138 lt!1967961)))

(assert (=> d!1541980 (= lt!1967961 (containsKey!4256 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(assert (=> d!1541980 (= (contains!18617 lm!2251 (hash!5256 hashF!1486 key!5322)) lt!1967964)))

(declare-fun b!4817658 () Bool)

(declare-fun lt!1967963 () Unit!142036)

(assert (=> b!4817658 (= e!3009990 lt!1967963)))

(assert (=> b!4817658 (= lt!1967963 (lemmaContainsKeyImpliesGetValueByKeyDefined!2358 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(assert (=> b!4817658 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(declare-fun b!4817659 () Bool)

(declare-fun Unit!142066 () Unit!142036)

(assert (=> b!4817659 (= e!3009990 Unit!142066)))

(declare-fun b!4817660 () Bool)

(assert (=> b!4817660 (= e!3009989 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322))))))

(assert (= (and d!1541980 c!821138) b!4817658))

(assert (= (and d!1541980 (not c!821138)) b!4817659))

(assert (= (and d!1541980 (not res!2049523)) b!4817660))

(assert (=> d!1541980 m!5803668))

(declare-fun m!5804148 () Bool)

(assert (=> d!1541980 m!5804148))

(assert (=> b!4817658 m!5803668))

(declare-fun m!5804150 () Bool)

(assert (=> b!4817658 m!5804150))

(assert (=> b!4817658 m!5803668))

(declare-fun m!5804152 () Bool)

(assert (=> b!4817658 m!5804152))

(assert (=> b!4817658 m!5804152))

(declare-fun m!5804154 () Bool)

(assert (=> b!4817658 m!5804154))

(assert (=> b!4817660 m!5803668))

(assert (=> b!4817660 m!5804152))

(assert (=> b!4817660 m!5804152))

(assert (=> b!4817660 m!5804154))

(assert (=> d!1541832 d!1541980))

(assert (=> d!1541832 d!1541824))

(declare-fun d!1541982 () Bool)

(assert (=> d!1541982 (contains!18617 lm!2251 (hash!5256 hashF!1486 key!5322))))

(assert (=> d!1541982 true))

(declare-fun _$27!1637 () Unit!142036)

(assert (=> d!1541982 (= (choose!34951 lm!2251 key!5322 hashF!1486) _$27!1637)))

(declare-fun bs!1160821 () Bool)

(assert (= bs!1160821 d!1541982))

(assert (=> bs!1160821 m!5803668))

(assert (=> bs!1160821 m!5803668))

(assert (=> bs!1160821 m!5803818))

(assert (=> d!1541832 d!1541982))

(declare-fun d!1541984 () Bool)

(declare-fun res!2049524 () Bool)

(declare-fun e!3009991 () Bool)

(assert (=> d!1541984 (=> res!2049524 e!3009991)))

(assert (=> d!1541984 (= res!2049524 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541984 (= (forall!12492 (toList!7347 lm!2251) lambda!234810) e!3009991)))

(declare-fun b!4817661 () Bool)

(declare-fun e!3009992 () Bool)

(assert (=> b!4817661 (= e!3009991 e!3009992)))

(declare-fun res!2049525 () Bool)

(assert (=> b!4817661 (=> (not res!2049525) (not e!3009992))))

(assert (=> b!4817661 (= res!2049525 (dynLambda!22167 lambda!234810 (h!61218 (toList!7347 lm!2251))))))

(declare-fun b!4817662 () Bool)

(assert (=> b!4817662 (= e!3009992 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234810))))

(assert (= (and d!1541984 (not res!2049524)) b!4817661))

(assert (= (and b!4817661 res!2049525) b!4817662))

(declare-fun b_lambda!188565 () Bool)

(assert (=> (not b_lambda!188565) (not b!4817661)))

(declare-fun m!5804156 () Bool)

(assert (=> b!4817661 m!5804156))

(declare-fun m!5804158 () Bool)

(assert (=> b!4817662 m!5804158))

(assert (=> d!1541832 d!1541984))

(assert (=> d!1541820 d!1541788))

(assert (=> d!1541820 d!1541806))

(declare-fun d!1541986 () Bool)

(assert (=> d!1541986 (not (contains!18618 (extractMap!2632 (toList!7347 lm!2251)) key!5322))))

(assert (=> d!1541986 true))

(declare-fun _$26!593 () Unit!142036)

(assert (=> d!1541986 (= (choose!34948 lm!2251 key!5322 hashF!1486) _$26!593)))

(declare-fun bs!1160822 () Bool)

(assert (= bs!1160822 d!1541986))

(assert (=> bs!1160822 m!5803646))

(assert (=> bs!1160822 m!5803646))

(assert (=> bs!1160822 m!5803648))

(assert (=> d!1541820 d!1541986))

(declare-fun d!1541988 () Bool)

(declare-fun res!2049526 () Bool)

(declare-fun e!3009993 () Bool)

(assert (=> d!1541988 (=> res!2049526 e!3009993)))

(assert (=> d!1541988 (= res!2049526 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541988 (= (forall!12492 (toList!7347 lm!2251) lambda!234807) e!3009993)))

(declare-fun b!4817663 () Bool)

(declare-fun e!3009994 () Bool)

(assert (=> b!4817663 (= e!3009993 e!3009994)))

(declare-fun res!2049527 () Bool)

(assert (=> b!4817663 (=> (not res!2049527) (not e!3009994))))

(assert (=> b!4817663 (= res!2049527 (dynLambda!22167 lambda!234807 (h!61218 (toList!7347 lm!2251))))))

(declare-fun b!4817664 () Bool)

(assert (=> b!4817664 (= e!3009994 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234807))))

(assert (= (and d!1541988 (not res!2049526)) b!4817663))

(assert (= (and b!4817663 res!2049527) b!4817664))

(declare-fun b_lambda!188567 () Bool)

(assert (=> (not b_lambda!188567) (not b!4817663)))

(declare-fun m!5804160 () Bool)

(assert (=> b!4817663 m!5804160))

(declare-fun m!5804162 () Bool)

(assert (=> b!4817664 m!5804162))

(assert (=> d!1541820 d!1541988))

(assert (=> b!4817336 d!1541838))

(declare-fun d!1541990 () Bool)

(declare-fun noDuplicatedKeys!464 (List!54909) Bool)

(assert (=> d!1541990 (= (invariantList!1794 (toList!7348 lt!1967780)) (noDuplicatedKeys!464 (toList!7348 lt!1967780)))))

(declare-fun bs!1160823 () Bool)

(assert (= bs!1160823 d!1541990))

(declare-fun m!5804164 () Bool)

(assert (=> bs!1160823 m!5804164))

(assert (=> d!1541806 d!1541990))

(declare-fun d!1541992 () Bool)

(declare-fun res!2049528 () Bool)

(declare-fun e!3009995 () Bool)

(assert (=> d!1541992 (=> res!2049528 e!3009995)))

(assert (=> d!1541992 (= res!2049528 ((_ is Nil!54786) (toList!7347 lm!2251)))))

(assert (=> d!1541992 (= (forall!12492 (toList!7347 lm!2251) lambda!234801) e!3009995)))

(declare-fun b!4817665 () Bool)

(declare-fun e!3009996 () Bool)

(assert (=> b!4817665 (= e!3009995 e!3009996)))

(declare-fun res!2049529 () Bool)

(assert (=> b!4817665 (=> (not res!2049529) (not e!3009996))))

(assert (=> b!4817665 (= res!2049529 (dynLambda!22167 lambda!234801 (h!61218 (toList!7347 lm!2251))))))

(declare-fun b!4817666 () Bool)

(assert (=> b!4817666 (= e!3009996 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234801))))

(assert (= (and d!1541992 (not res!2049528)) b!4817665))

(assert (= (and b!4817665 res!2049529) b!4817666))

(declare-fun b_lambda!188569 () Bool)

(assert (=> (not b_lambda!188569) (not b!4817665)))

(declare-fun m!5804166 () Bool)

(assert (=> b!4817665 m!5804166))

(declare-fun m!5804168 () Bool)

(assert (=> b!4817666 m!5804168))

(assert (=> d!1541806 d!1541992))

(declare-fun d!1541994 () Bool)

(declare-fun res!2049530 () Bool)

(declare-fun e!3009997 () Bool)

(assert (=> d!1541994 (=> res!2049530 e!3009997)))

(assert (=> d!1541994 (= res!2049530 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1541994 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234786) e!3009997)))

(declare-fun b!4817667 () Bool)

(declare-fun e!3009998 () Bool)

(assert (=> b!4817667 (= e!3009997 e!3009998)))

(declare-fun res!2049531 () Bool)

(assert (=> b!4817667 (=> (not res!2049531) (not e!3009998))))

(assert (=> b!4817667 (= res!2049531 (dynLambda!22167 lambda!234786 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4817668 () Bool)

(assert (=> b!4817668 (= e!3009998 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234786))))

(assert (= (and d!1541994 (not res!2049530)) b!4817667))

(assert (= (and b!4817667 res!2049531) b!4817668))

(declare-fun b_lambda!188571 () Bool)

(assert (=> (not b_lambda!188571) (not b!4817667)))

(declare-fun m!5804170 () Bool)

(assert (=> b!4817667 m!5804170))

(declare-fun m!5804172 () Bool)

(assert (=> b!4817668 m!5804172))

(assert (=> b!4817333 d!1541994))

(declare-fun d!1541996 () Bool)

(declare-fun res!2049536 () Bool)

(declare-fun e!3010003 () Bool)

(assert (=> d!1541996 (=> res!2049536 e!3010003)))

(assert (=> d!1541996 (= res!2049536 (not ((_ is Cons!54785) (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> d!1541996 (= (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251)))) e!3010003)))

(declare-fun b!4817673 () Bool)

(declare-fun e!3010004 () Bool)

(assert (=> b!4817673 (= e!3010003 e!3010004)))

(declare-fun res!2049537 () Bool)

(assert (=> b!4817673 (=> (not res!2049537) (not e!3010004))))

(assert (=> b!4817673 (= res!2049537 (not (containsKey!4255 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun b!4817674 () Bool)

(assert (=> b!4817674 (= e!3010004 (noDuplicateKeys!2413 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (= (and d!1541996 (not res!2049536)) b!4817673))

(assert (= (and b!4817673 res!2049537) b!4817674))

(declare-fun m!5804174 () Bool)

(assert (=> b!4817673 m!5804174))

(declare-fun m!5804176 () Bool)

(assert (=> b!4817674 m!5804176))

(assert (=> bs!1160775 d!1541996))

(declare-fun b!4817687 () Bool)

(assert (=> b!4817687 true))

(declare-fun bs!1160824 () Bool)

(declare-fun b!4817685 () Bool)

(assert (= bs!1160824 (and b!4817685 b!4817687)))

(declare-fun lambda!234909 () Int)

(declare-fun lambda!234908 () Int)

(assert (=> bs!1160824 (= lambda!234909 lambda!234908)))

(assert (=> b!4817685 true))

(declare-fun lt!1968007 () ListMap!6761)

(declare-fun lambda!234910 () Int)

(assert (=> bs!1160824 (= (= lt!1968007 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234910 lambda!234908))))

(assert (=> b!4817685 (= (= lt!1968007 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234910 lambda!234909))))

(assert (=> b!4817685 true))

(declare-fun bs!1160825 () Bool)

(declare-fun d!1541998 () Bool)

(assert (= bs!1160825 (and d!1541998 b!4817687)))

(declare-fun lt!1968020 () ListMap!6761)

(declare-fun lambda!234911 () Int)

(assert (=> bs!1160825 (= (= lt!1968020 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234911 lambda!234908))))

(declare-fun bs!1160826 () Bool)

(assert (= bs!1160826 (and d!1541998 b!4817685)))

(assert (=> bs!1160826 (= (= lt!1968020 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234911 lambda!234909))))

(assert (=> bs!1160826 (= (= lt!1968020 lt!1968007) (= lambda!234911 lambda!234910))))

(assert (=> d!1541998 true))

(declare-fun e!3010012 () Bool)

(assert (=> d!1541998 e!3010012))

(declare-fun res!2049545 () Bool)

(assert (=> d!1541998 (=> (not res!2049545) (not e!3010012))))

(declare-fun forall!12496 (List!54909 Int) Bool)

(assert (=> d!1541998 (= res!2049545 (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234911))))

(declare-fun e!3010013 () ListMap!6761)

(assert (=> d!1541998 (= lt!1968020 e!3010013)))

(declare-fun c!821141 () Bool)

(assert (=> d!1541998 (= c!821141 ((_ is Nil!54785) (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> d!1541998 (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251))))))

(assert (=> d!1541998 (= (addToMapMapFromBucket!1771 (_2!32224 (h!61218 (toList!7347 lm!2251))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lt!1968020)))

(assert (=> b!4817685 (= e!3010013 lt!1968007)))

(declare-fun lt!1968016 () ListMap!6761)

(declare-fun +!2521 (ListMap!6761 tuple2!57858) ListMap!6761)

(assert (=> b!4817685 (= lt!1968016 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> b!4817685 (= lt!1968007 (addToMapMapFromBucket!1771 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968022 () Unit!142036)

(declare-fun call!336026 () Unit!142036)

(assert (=> b!4817685 (= lt!1968022 call!336026)))

(assert (=> b!4817685 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234909)))

(declare-fun lt!1968013 () Unit!142036)

(assert (=> b!4817685 (= lt!1968013 lt!1968022)))

(declare-fun call!336027 () Bool)

(assert (=> b!4817685 call!336027))

(declare-fun lt!1968010 () Unit!142036)

(declare-fun Unit!142067 () Unit!142036)

(assert (=> b!4817685 (= lt!1968010 Unit!142067)))

(assert (=> b!4817685 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234910)))

(declare-fun lt!1968017 () Unit!142036)

(declare-fun Unit!142068 () Unit!142036)

(assert (=> b!4817685 (= lt!1968017 Unit!142068)))

(declare-fun lt!1968008 () Unit!142036)

(declare-fun Unit!142069 () Unit!142036)

(assert (=> b!4817685 (= lt!1968008 Unit!142069)))

(declare-fun lt!1968023 () Unit!142036)

(declare-fun forallContained!4356 (List!54909 Int tuple2!57858) Unit!142036)

(assert (=> b!4817685 (= lt!1968023 (forallContained!4356 (toList!7348 lt!1968016) lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> b!4817685 (contains!18618 lt!1968016 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun lt!1968011 () Unit!142036)

(declare-fun Unit!142070 () Unit!142036)

(assert (=> b!4817685 (= lt!1968011 Unit!142070)))

(assert (=> b!4817685 (contains!18618 lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun lt!1968024 () Unit!142036)

(declare-fun Unit!142071 () Unit!142036)

(assert (=> b!4817685 (= lt!1968024 Unit!142071)))

(assert (=> b!4817685 (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234910)))

(declare-fun lt!1968027 () Unit!142036)

(declare-fun Unit!142072 () Unit!142036)

(assert (=> b!4817685 (= lt!1968027 Unit!142072)))

(assert (=> b!4817685 (forall!12496 (toList!7348 lt!1968016) lambda!234910)))

(declare-fun lt!1968015 () Unit!142036)

(declare-fun Unit!142073 () Unit!142036)

(assert (=> b!4817685 (= lt!1968015 Unit!142073)))

(declare-fun lt!1968021 () Unit!142036)

(declare-fun Unit!142074 () Unit!142036)

(assert (=> b!4817685 (= lt!1968021 Unit!142074)))

(declare-fun lt!1968026 () Unit!142036)

(declare-fun addForallContainsKeyThenBeforeAdding!975 (ListMap!6761 ListMap!6761 K!16444 V!16690) Unit!142036)

(assert (=> b!4817685 (= lt!1968026 (addForallContainsKeyThenBeforeAdding!975 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun call!336028 () Bool)

(assert (=> b!4817685 call!336028))

(declare-fun lt!1968018 () Unit!142036)

(assert (=> b!4817685 (= lt!1968018 lt!1968026)))

(assert (=> b!4817685 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234910)))

(declare-fun lt!1968012 () Unit!142036)

(declare-fun Unit!142075 () Unit!142036)

(assert (=> b!4817685 (= lt!1968012 Unit!142075)))

(declare-fun res!2049544 () Bool)

(assert (=> b!4817685 (= res!2049544 (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234910))))

(declare-fun e!3010011 () Bool)

(assert (=> b!4817685 (=> (not res!2049544) (not e!3010011))))

(assert (=> b!4817685 e!3010011))

(declare-fun lt!1968009 () Unit!142036)

(declare-fun Unit!142076 () Unit!142036)

(assert (=> b!4817685 (= lt!1968009 Unit!142076)))

(declare-fun b!4817686 () Bool)

(declare-fun res!2049546 () Bool)

(assert (=> b!4817686 (=> (not res!2049546) (not e!3010012))))

(assert (=> b!4817686 (= res!2049546 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234911))))

(declare-fun bm!336021 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!976 (ListMap!6761) Unit!142036)

(assert (=> bm!336021 (= call!336026 (lemmaContainsAllItsOwnKeys!976 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun bm!336022 () Bool)

(assert (=> bm!336022 (= call!336027 (forall!12496 (ite c!821141 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (toList!7348 lt!1968016)) (ite c!821141 lambda!234908 lambda!234910)))))

(assert (=> b!4817687 (= e!3010013 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))

(declare-fun lt!1968025 () Unit!142036)

(assert (=> b!4817687 (= lt!1968025 call!336026)))

(assert (=> b!4817687 call!336027))

(declare-fun lt!1968014 () Unit!142036)

(assert (=> b!4817687 (= lt!1968014 lt!1968025)))

(assert (=> b!4817687 call!336028))

(declare-fun lt!1968019 () Unit!142036)

(declare-fun Unit!142077 () Unit!142036)

(assert (=> b!4817687 (= lt!1968019 Unit!142077)))

(declare-fun b!4817688 () Bool)

(assert (=> b!4817688 (= e!3010011 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234910))))

(declare-fun b!4817689 () Bool)

(assert (=> b!4817689 (= e!3010012 (invariantList!1794 (toList!7348 lt!1968020)))))

(declare-fun bm!336023 () Bool)

(assert (=> bm!336023 (= call!336028 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (ite c!821141 lambda!234908 lambda!234910)))))

(assert (= (and d!1541998 c!821141) b!4817687))

(assert (= (and d!1541998 (not c!821141)) b!4817685))

(assert (= (and b!4817685 res!2049544) b!4817688))

(assert (= (or b!4817687 b!4817685) bm!336021))

(assert (= (or b!4817687 b!4817685) bm!336022))

(assert (= (or b!4817687 b!4817685) bm!336023))

(assert (= (and d!1541998 res!2049545) b!4817686))

(assert (= (and b!4817686 res!2049546) b!4817689))

(declare-fun m!5804178 () Bool)

(assert (=> b!4817689 m!5804178))

(declare-fun m!5804180 () Bool)

(assert (=> bm!336022 m!5804180))

(assert (=> bm!336021 m!5803790))

(declare-fun m!5804182 () Bool)

(assert (=> bm!336021 m!5804182))

(declare-fun m!5804184 () Bool)

(assert (=> b!4817688 m!5804184))

(declare-fun m!5804186 () Bool)

(assert (=> b!4817685 m!5804186))

(declare-fun m!5804188 () Bool)

(assert (=> b!4817685 m!5804188))

(declare-fun m!5804190 () Bool)

(assert (=> b!4817685 m!5804190))

(declare-fun m!5804192 () Bool)

(assert (=> b!4817685 m!5804192))

(assert (=> b!4817685 m!5803790))

(assert (=> b!4817685 m!5804186))

(declare-fun m!5804194 () Bool)

(assert (=> b!4817685 m!5804194))

(assert (=> b!4817685 m!5804192))

(declare-fun m!5804196 () Bool)

(assert (=> b!4817685 m!5804196))

(declare-fun m!5804198 () Bool)

(assert (=> b!4817685 m!5804198))

(declare-fun m!5804200 () Bool)

(assert (=> b!4817685 m!5804200))

(assert (=> b!4817685 m!5803790))

(declare-fun m!5804202 () Bool)

(assert (=> b!4817685 m!5804202))

(declare-fun m!5804204 () Bool)

(assert (=> b!4817685 m!5804204))

(assert (=> b!4817685 m!5804184))

(declare-fun m!5804206 () Bool)

(assert (=> b!4817686 m!5804206))

(declare-fun m!5804208 () Bool)

(assert (=> d!1541998 m!5804208))

(assert (=> d!1541998 m!5803854))

(declare-fun m!5804210 () Bool)

(assert (=> bm!336023 m!5804210))

(assert (=> b!4817324 d!1541998))

(declare-fun bs!1160827 () Bool)

(declare-fun d!1542000 () Bool)

(assert (= bs!1160827 (and d!1542000 d!1541806)))

(declare-fun lambda!234912 () Int)

(assert (=> bs!1160827 (= lambda!234912 lambda!234801)))

(declare-fun bs!1160828 () Bool)

(assert (= bs!1160828 (and d!1542000 d!1541814)))

(assert (=> bs!1160828 (not (= lambda!234912 lambda!234804))))

(declare-fun bs!1160829 () Bool)

(assert (= bs!1160829 (and d!1542000 d!1541832)))

(assert (=> bs!1160829 (= lambda!234912 lambda!234810)))

(declare-fun bs!1160830 () Bool)

(assert (= bs!1160830 (and d!1542000 start!498654)))

(assert (=> bs!1160830 (= lambda!234912 lambda!234786)))

(declare-fun bs!1160831 () Bool)

(assert (= bs!1160831 (and d!1542000 d!1541820)))

(assert (=> bs!1160831 (= lambda!234912 lambda!234807)))

(declare-fun lt!1968028 () ListMap!6761)

(assert (=> d!1542000 (invariantList!1794 (toList!7348 lt!1968028))))

(declare-fun e!3010014 () ListMap!6761)

(assert (=> d!1542000 (= lt!1968028 e!3010014)))

(declare-fun c!821142 () Bool)

(assert (=> d!1542000 (= c!821142 ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542000 (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234912)))

(assert (=> d!1542000 (= (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968028)))

(declare-fun b!4817692 () Bool)

(assert (=> b!4817692 (= e!3010014 (addToMapMapFromBucket!1771 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun b!4817693 () Bool)

(assert (=> b!4817693 (= e!3010014 (ListMap!6762 Nil!54785))))

(assert (= (and d!1542000 c!821142) b!4817692))

(assert (= (and d!1542000 (not c!821142)) b!4817693))

(declare-fun m!5804212 () Bool)

(assert (=> d!1542000 m!5804212))

(declare-fun m!5804214 () Bool)

(assert (=> d!1542000 m!5804214))

(declare-fun m!5804216 () Bool)

(assert (=> b!4817692 m!5804216))

(assert (=> b!4817692 m!5804216))

(declare-fun m!5804218 () Bool)

(assert (=> b!4817692 m!5804218))

(assert (=> b!4817324 d!1542000))

(declare-fun d!1542002 () Bool)

(declare-fun res!2049551 () Bool)

(declare-fun e!3010019 () Bool)

(assert (=> d!1542002 (=> res!2049551 e!3010019)))

(assert (=> d!1542002 (= res!2049551 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (= (_1!32224 (h!61218 (toList!7347 lm!2251))) lt!1967690)))))

(assert (=> d!1542002 (= (containsKey!4256 (toList!7347 lm!2251) lt!1967690) e!3010019)))

(declare-fun b!4817698 () Bool)

(declare-fun e!3010020 () Bool)

(assert (=> b!4817698 (= e!3010019 e!3010020)))

(declare-fun res!2049552 () Bool)

(assert (=> b!4817698 (=> (not res!2049552) (not e!3010020))))

(assert (=> b!4817698 (= res!2049552 (and (or (not ((_ is Cons!54786) (toList!7347 lm!2251))) (bvsle (_1!32224 (h!61218 (toList!7347 lm!2251))) lt!1967690)) ((_ is Cons!54786) (toList!7347 lm!2251)) (bvslt (_1!32224 (h!61218 (toList!7347 lm!2251))) lt!1967690)))))

(declare-fun b!4817699 () Bool)

(assert (=> b!4817699 (= e!3010020 (containsKey!4256 (t!362406 (toList!7347 lm!2251)) lt!1967690))))

(assert (= (and d!1542002 (not res!2049551)) b!4817698))

(assert (= (and b!4817698 res!2049552) b!4817699))

(declare-fun m!5804220 () Bool)

(assert (=> b!4817699 m!5804220))

(assert (=> d!1541840 d!1542002))

(declare-fun d!1542004 () Bool)

(assert (=> d!1542004 (= (get!18748 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)) (v!49103 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)))))

(assert (=> d!1541830 d!1542004))

(assert (=> d!1541830 d!1541842))

(declare-fun lt!1968029 () Bool)

(declare-fun d!1542006 () Bool)

(assert (=> d!1542006 (= lt!1968029 (select (content!9801 (toList!7347 lm!2251)) (tuple2!57861 lt!1967690 lt!1967689)))))

(declare-fun e!3010021 () Bool)

(assert (=> d!1542006 (= lt!1968029 e!3010021)))

(declare-fun res!2049553 () Bool)

(assert (=> d!1542006 (=> (not res!2049553) (not e!3010021))))

(assert (=> d!1542006 (= res!2049553 ((_ is Cons!54786) (toList!7347 lm!2251)))))

(assert (=> d!1542006 (= (contains!18616 (toList!7347 lm!2251) (tuple2!57861 lt!1967690 lt!1967689)) lt!1968029)))

(declare-fun b!4817700 () Bool)

(declare-fun e!3010022 () Bool)

(assert (=> b!4817700 (= e!3010021 e!3010022)))

(declare-fun res!2049554 () Bool)

(assert (=> b!4817700 (=> res!2049554 e!3010022)))

(assert (=> b!4817700 (= res!2049554 (= (h!61218 (toList!7347 lm!2251)) (tuple2!57861 lt!1967690 lt!1967689)))))

(declare-fun b!4817701 () Bool)

(assert (=> b!4817701 (= e!3010022 (contains!18616 (t!362406 (toList!7347 lm!2251)) (tuple2!57861 lt!1967690 lt!1967689)))))

(assert (= (and d!1542006 res!2049553) b!4817700))

(assert (= (and b!4817700 (not res!2049554)) b!4817701))

(assert (=> d!1542006 m!5803838))

(declare-fun m!5804222 () Bool)

(assert (=> d!1542006 m!5804222))

(declare-fun m!5804224 () Bool)

(assert (=> b!4817701 m!5804224))

(assert (=> d!1541826 d!1542006))

(declare-fun d!1542008 () Bool)

(assert (=> d!1542008 (contains!18616 (toList!7347 lm!2251) (tuple2!57861 lt!1967690 lt!1967689))))

(assert (=> d!1542008 true))

(declare-fun _$41!522 () Unit!142036)

(assert (=> d!1542008 (= (choose!34950 lm!2251 lt!1967690 lt!1967689) _$41!522)))

(declare-fun bs!1160832 () Bool)

(assert (= bs!1160832 d!1542008))

(assert (=> bs!1160832 m!5803812))

(assert (=> d!1541826 d!1542008))

(assert (=> d!1541826 d!1541840))

(declare-fun d!1542010 () Bool)

(assert (=> d!1542010 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690))))

(declare-fun lt!1968032 () Unit!142036)

(declare-fun choose!34960 (List!54910 (_ BitVec 64)) Unit!142036)

(assert (=> d!1542010 (= lt!1968032 (choose!34960 (toList!7347 lm!2251) lt!1967690))))

(declare-fun e!3010025 () Bool)

(assert (=> d!1542010 e!3010025))

(declare-fun res!2049557 () Bool)

(assert (=> d!1542010 (=> (not res!2049557) (not e!3010025))))

(assert (=> d!1542010 (= res!2049557 (isStrictlySorted!955 (toList!7347 lm!2251)))))

(assert (=> d!1542010 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2358 (toList!7347 lm!2251) lt!1967690) lt!1968032)))

(declare-fun b!4817705 () Bool)

(assert (=> b!4817705 (= e!3010025 (containsKey!4256 (toList!7347 lm!2251) lt!1967690))))

(assert (= (and d!1542010 res!2049557) b!4817705))

(assert (=> d!1542010 m!5803644))

(assert (=> d!1542010 m!5803644))

(assert (=> d!1542010 m!5803848))

(declare-fun m!5804226 () Bool)

(assert (=> d!1542010 m!5804226))

(assert (=> d!1542010 m!5803800))

(assert (=> b!4817705 m!5803844))

(assert (=> b!4817374 d!1542010))

(declare-fun d!1542012 () Bool)

(declare-fun isEmpty!29610 (Option!13443) Bool)

(assert (=> d!1542012 (= (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)) (not (isEmpty!29610 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690))))))

(declare-fun bs!1160833 () Bool)

(assert (= bs!1160833 d!1542012))

(assert (=> bs!1160833 m!5803644))

(declare-fun m!5804228 () Bool)

(assert (=> bs!1160833 m!5804228))

(assert (=> b!4817374 d!1542012))

(assert (=> b!4817374 d!1541842))

(assert (=> b!4817308 d!1541920))

(declare-fun d!1542014 () Bool)

(assert (=> d!1542014 (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)))

(declare-fun lt!1968035 () Unit!142036)

(declare-fun choose!34961 (List!54909 K!16444) Unit!142036)

(assert (=> d!1542014 (= lt!1968035 (choose!34961 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> d!1542014 (invariantList!1794 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))

(assert (=> d!1542014 (= (lemmaInGetKeysListThenContainsKey!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) lt!1968035)))

(declare-fun bs!1160834 () Bool)

(assert (= bs!1160834 d!1542014))

(assert (=> bs!1160834 m!5803764))

(declare-fun m!5804230 () Bool)

(assert (=> bs!1160834 m!5804230))

(assert (=> bs!1160834 m!5804126))

(assert (=> b!4817308 d!1542014))

(declare-fun d!1542016 () Bool)

(assert (=> d!1542016 (= (get!18749 lt!1967795) (v!49102 lt!1967795))))

(assert (=> b!4817360 d!1542016))

(declare-fun d!1542018 () Bool)

(declare-fun res!2049558 () Bool)

(declare-fun e!3010026 () Bool)

(assert (=> d!1542018 (=> res!2049558 e!3010026)))

(assert (=> d!1542018 (= res!2049558 (not ((_ is Cons!54785) (_2!32224 lt!1967696))))))

(assert (=> d!1542018 (= (noDuplicateKeys!2413 (_2!32224 lt!1967696)) e!3010026)))

(declare-fun b!4817706 () Bool)

(declare-fun e!3010027 () Bool)

(assert (=> b!4817706 (= e!3010026 e!3010027)))

(declare-fun res!2049559 () Bool)

(assert (=> b!4817706 (=> (not res!2049559) (not e!3010027))))

(assert (=> b!4817706 (= res!2049559 (not (containsKey!4255 (t!362405 (_2!32224 lt!1967696)) (_1!32223 (h!61217 (_2!32224 lt!1967696))))))))

(declare-fun b!4817707 () Bool)

(assert (=> b!4817707 (= e!3010027 (noDuplicateKeys!2413 (t!362405 (_2!32224 lt!1967696))))))

(assert (= (and d!1542018 (not res!2049558)) b!4817706))

(assert (= (and b!4817706 res!2049559) b!4817707))

(declare-fun m!5804232 () Bool)

(assert (=> b!4817706 m!5804232))

(declare-fun m!5804234 () Bool)

(assert (=> b!4817707 m!5804234))

(assert (=> bs!1160774 d!1542018))

(declare-fun d!1542020 () Bool)

(assert (=> d!1542020 (= (isEmpty!29606 lt!1967795) (not ((_ is Some!13441) lt!1967795)))))

(assert (=> d!1541836 d!1542020))

(declare-fun d!1542022 () Bool)

(declare-fun res!2049560 () Bool)

(declare-fun e!3010028 () Bool)

(assert (=> d!1542022 (=> res!2049560 e!3010028)))

(assert (=> d!1542022 (= res!2049560 (not ((_ is Cons!54785) lt!1967689)))))

(assert (=> d!1542022 (= (noDuplicateKeys!2413 lt!1967689) e!3010028)))

(declare-fun b!4817708 () Bool)

(declare-fun e!3010029 () Bool)

(assert (=> b!4817708 (= e!3010028 e!3010029)))

(declare-fun res!2049561 () Bool)

(assert (=> b!4817708 (=> (not res!2049561) (not e!3010029))))

(assert (=> b!4817708 (= res!2049561 (not (containsKey!4255 (t!362405 lt!1967689) (_1!32223 (h!61217 lt!1967689)))))))

(declare-fun b!4817709 () Bool)

(assert (=> b!4817709 (= e!3010029 (noDuplicateKeys!2413 (t!362405 lt!1967689)))))

(assert (= (and d!1542022 (not res!2049560)) b!4817708))

(assert (= (and b!4817708 res!2049561) b!4817709))

(declare-fun m!5804236 () Bool)

(assert (=> b!4817708 m!5804236))

(assert (=> b!4817709 m!5803993))

(assert (=> d!1541836 d!1542022))

(declare-fun d!1542024 () Bool)

(declare-fun lt!1968038 () Bool)

(declare-fun content!9805 (List!54909) (InoxSet tuple2!57858))

(assert (=> d!1542024 (= lt!1968038 (select (content!9805 lt!1967689) (get!18749 lt!1967795)))))

(declare-fun e!3010035 () Bool)

(assert (=> d!1542024 (= lt!1968038 e!3010035)))

(declare-fun res!2049566 () Bool)

(assert (=> d!1542024 (=> (not res!2049566) (not e!3010035))))

(assert (=> d!1542024 (= res!2049566 ((_ is Cons!54785) lt!1967689))))

(assert (=> d!1542024 (= (contains!18622 lt!1967689 (get!18749 lt!1967795)) lt!1968038)))

(declare-fun b!4817714 () Bool)

(declare-fun e!3010034 () Bool)

(assert (=> b!4817714 (= e!3010035 e!3010034)))

(declare-fun res!2049567 () Bool)

(assert (=> b!4817714 (=> res!2049567 e!3010034)))

(assert (=> b!4817714 (= res!2049567 (= (h!61217 lt!1967689) (get!18749 lt!1967795)))))

(declare-fun b!4817715 () Bool)

(assert (=> b!4817715 (= e!3010034 (contains!18622 (t!362405 lt!1967689) (get!18749 lt!1967795)))))

(assert (= (and d!1542024 res!2049566) b!4817714))

(assert (= (and b!4817714 (not res!2049567)) b!4817715))

(declare-fun m!5804238 () Bool)

(assert (=> d!1542024 m!5804238))

(assert (=> d!1542024 m!5803824))

(declare-fun m!5804240 () Bool)

(assert (=> d!1542024 m!5804240))

(assert (=> b!4817715 m!5803824))

(declare-fun m!5804242 () Bool)

(assert (=> b!4817715 m!5804242))

(assert (=> b!4817361 d!1542024))

(assert (=> b!4817361 d!1542016))

(assert (=> b!4817376 d!1542012))

(assert (=> b!4817376 d!1541842))

(declare-fun tp!1362005 () Bool)

(declare-fun b!4817720 () Bool)

(declare-fun tp_is_empty!34245 () Bool)

(declare-fun e!3010038 () Bool)

(assert (=> b!4817720 (= e!3010038 (and tp_is_empty!34241 tp_is_empty!34245 tp!1362005))))

(assert (=> b!4817393 (= tp!1361996 e!3010038)))

(assert (= (and b!4817393 ((_ is Cons!54785) (_2!32224 (h!61218 (toList!7347 lm!2251))))) b!4817720))

(declare-fun b!4817721 () Bool)

(declare-fun e!3010039 () Bool)

(declare-fun tp!1362006 () Bool)

(declare-fun tp!1362007 () Bool)

(assert (=> b!4817721 (= e!3010039 (and tp!1362006 tp!1362007))))

(assert (=> b!4817393 (= tp!1361997 e!3010039)))

(assert (= (and b!4817393 ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251)))) b!4817721))

(declare-fun b_lambda!188573 () Bool)

(assert (= b_lambda!188569 (or d!1541806 b_lambda!188573)))

(declare-fun bs!1160835 () Bool)

(declare-fun d!1542026 () Bool)

(assert (= bs!1160835 (and d!1542026 d!1541806)))

(assert (=> bs!1160835 (= (dynLambda!22167 lambda!234801 (h!61218 (toList!7347 lm!2251))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> bs!1160835 m!5803854))

(assert (=> b!4817665 d!1542026))

(declare-fun b_lambda!188575 () Bool)

(assert (= b_lambda!188547 (or d!1541814 b_lambda!188575)))

(declare-fun bs!1160836 () Bool)

(declare-fun d!1542028 () Bool)

(assert (= bs!1160836 (and d!1542028 d!1541814)))

(declare-fun allKeysSameHash!1987 (List!54909 (_ BitVec 64) Hashable!7182) Bool)

(assert (=> bs!1160836 (= (dynLambda!22167 lambda!234804 (h!61218 (toList!7347 lm!2251))) (allKeysSameHash!1987 (_2!32224 (h!61218 (toList!7347 lm!2251))) (_1!32224 (h!61218 (toList!7347 lm!2251))) hashF!1486))))

(declare-fun m!5804244 () Bool)

(assert (=> bs!1160836 m!5804244))

(assert (=> b!4817543 d!1542028))

(declare-fun b_lambda!188577 () Bool)

(assert (= b_lambda!188567 (or d!1541820 b_lambda!188577)))

(declare-fun bs!1160837 () Bool)

(declare-fun d!1542030 () Bool)

(assert (= bs!1160837 (and d!1542030 d!1541820)))

(assert (=> bs!1160837 (= (dynLambda!22167 lambda!234807 (h!61218 (toList!7347 lm!2251))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> bs!1160837 m!5803854))

(assert (=> b!4817663 d!1542030))

(declare-fun b_lambda!188579 () Bool)

(assert (= b_lambda!188571 (or start!498654 b_lambda!188579)))

(declare-fun bs!1160838 () Bool)

(declare-fun d!1542032 () Bool)

(assert (= bs!1160838 (and d!1542032 start!498654)))

(assert (=> bs!1160838 (= (dynLambda!22167 lambda!234786 (h!61218 (t!362406 (toList!7347 lm!2251)))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun m!5804246 () Bool)

(assert (=> bs!1160838 m!5804246))

(assert (=> b!4817667 d!1542032))

(declare-fun b_lambda!188581 () Bool)

(assert (= b_lambda!188563 (or start!498654 b_lambda!188581)))

(assert (=> d!1541978 d!1541844))

(declare-fun b_lambda!188583 () Bool)

(assert (= b_lambda!188565 (or d!1541832 b_lambda!188583)))

(declare-fun bs!1160839 () Bool)

(declare-fun d!1542034 () Bool)

(assert (= bs!1160839 (and d!1542034 d!1541832)))

(assert (=> bs!1160839 (= (dynLambda!22167 lambda!234810 (h!61218 (toList!7347 lm!2251))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> bs!1160839 m!5803854))

(assert (=> b!4817661 d!1542034))

(check-sat (not b!4817573) (not b!4817721) (not b!4817705) (not b_lambda!188579) (not b!4817706) (not b!4817692) (not b!4817623) (not b_lambda!188535) (not b!4817674) (not b!4817624) (not b!4817660) (not b!4817664) (not d!1541968) (not b_lambda!188581) (not d!1541890) (not b_lambda!188533) (not b!4817519) (not b!4817518) (not bm!336021) (not d!1541976) (not d!1541918) (not b!4817668) (not b!4817689) (not d!1541972) (not b!4817631) (not d!1542024) (not b_lambda!188583) (not d!1541926) (not b!4817699) (not b!4817709) (not b_lambda!188577) (not d!1541982) (not b!4817626) (not b!4817673) (not b!4817553) (not b!4817515) (not b!4817662) (not b!4817715) (not d!1541986) (not b!4817512) (not d!1542012) (not b!4817685) (not bs!1160839) (not d!1541980) (not b!4817645) (not bm!336023) (not d!1542014) tp_is_empty!34241 (not d!1542010) (not d!1542000) (not d!1542006) tp_is_empty!34245 (not d!1541998) (not b!4817653) (not b!4817498) (not bs!1160836) (not b!4817539) (not b!4817666) (not d!1541924) (not d!1541888) (not b!4817555) (not bs!1160837) (not b!4817496) (not b!4817701) (not b!4817651) (not b!4817656) (not d!1541990) (not b!4817544) (not d!1541966) (not b!4817513) (not b!4817639) (not bs!1160838) (not b!4817686) (not b!4817658) (not b!4817707) (not bs!1160835) (not d!1542008) (not d!1541886) (not d!1541908) (not b_lambda!188575) (not b!4817708) (not b!4817720) (not b_lambda!188573) (not bm!336022) (not b!4817629) (not b!4817688) (not b!4817497))
(check-sat)
(get-model)

(declare-fun d!1542124 () Bool)

(assert (=> d!1542124 (= (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322))) (not (isEmpty!29610 (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))))

(declare-fun bs!1160897 () Bool)

(assert (= bs!1160897 d!1542124))

(assert (=> bs!1160897 m!5804152))

(declare-fun m!5804506 () Bool)

(assert (=> bs!1160897 m!5804506))

(assert (=> b!4817660 d!1542124))

(declare-fun b!4817848 () Bool)

(declare-fun e!3010135 () Option!13443)

(declare-fun e!3010136 () Option!13443)

(assert (=> b!4817848 (= e!3010135 e!3010136)))

(declare-fun c!821164 () Bool)

(assert (=> b!4817848 (= c!821164 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (not (= (_1!32224 (h!61218 (toList!7347 lm!2251))) (hash!5256 hashF!1486 key!5322)))))))

(declare-fun b!4817847 () Bool)

(assert (=> b!4817847 (= e!3010135 (Some!13442 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(declare-fun b!4817850 () Bool)

(assert (=> b!4817850 (= e!3010136 None!13442)))

(declare-fun b!4817849 () Bool)

(assert (=> b!4817849 (= e!3010136 (getValueByKey!2570 (t!362406 (toList!7347 lm!2251)) (hash!5256 hashF!1486 key!5322)))))

(declare-fun d!1542128 () Bool)

(declare-fun c!821163 () Bool)

(assert (=> d!1542128 (= c!821163 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (= (_1!32224 (h!61218 (toList!7347 lm!2251))) (hash!5256 hashF!1486 key!5322))))))

(assert (=> d!1542128 (= (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)) e!3010135)))

(assert (= (and d!1542128 c!821163) b!4817847))

(assert (= (and d!1542128 (not c!821163)) b!4817848))

(assert (= (and b!4817848 c!821164) b!4817849))

(assert (= (and b!4817848 (not c!821164)) b!4817850))

(assert (=> b!4817849 m!5803668))

(declare-fun m!5804508 () Bool)

(assert (=> b!4817849 m!5804508))

(assert (=> b!4817660 d!1542128))

(declare-fun d!1542130 () Bool)

(declare-fun lt!1968115 () Bool)

(assert (=> d!1542130 (= lt!1968115 (select (content!9801 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1967696))))

(declare-fun e!3010137 () Bool)

(assert (=> d!1542130 (= lt!1968115 e!3010137)))

(declare-fun res!2049653 () Bool)

(assert (=> d!1542130 (=> (not res!2049653) (not e!3010137))))

(assert (=> d!1542130 (= res!2049653 ((_ is Cons!54786) (t!362406 (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1542130 (= (contains!18616 (t!362406 (t!362406 (toList!7347 lm!2251))) lt!1967696) lt!1968115)))

(declare-fun b!4817851 () Bool)

(declare-fun e!3010138 () Bool)

(assert (=> b!4817851 (= e!3010137 e!3010138)))

(declare-fun res!2049654 () Bool)

(assert (=> b!4817851 (=> res!2049654 e!3010138)))

(assert (=> b!4817851 (= res!2049654 (= (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1967696))))

(declare-fun b!4817852 () Bool)

(assert (=> b!4817852 (= e!3010138 (contains!18616 (t!362406 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1967696))))

(assert (= (and d!1542130 res!2049653) b!4817851))

(assert (= (and b!4817851 (not res!2049654)) b!4817852))

(declare-fun m!5804510 () Bool)

(assert (=> d!1542130 m!5804510))

(declare-fun m!5804512 () Bool)

(assert (=> d!1542130 m!5804512))

(declare-fun m!5804514 () Bool)

(assert (=> b!4817852 m!5804514))

(assert (=> b!4817555 d!1542130))

(declare-fun d!1542132 () Bool)

(declare-fun res!2049655 () Bool)

(declare-fun e!3010139 () Bool)

(assert (=> d!1542132 (=> res!2049655 e!3010139)))

(assert (=> d!1542132 (= res!2049655 (and ((_ is Cons!54785) (t!362405 lt!1967689)) (= (_1!32223 (h!61217 (t!362405 lt!1967689))) (_1!32223 (h!61217 lt!1967689)))))))

(assert (=> d!1542132 (= (containsKey!4255 (t!362405 lt!1967689) (_1!32223 (h!61217 lt!1967689))) e!3010139)))

(declare-fun b!4817855 () Bool)

(declare-fun e!3010140 () Bool)

(assert (=> b!4817855 (= e!3010139 e!3010140)))

(declare-fun res!2049656 () Bool)

(assert (=> b!4817855 (=> (not res!2049656) (not e!3010140))))

(assert (=> b!4817855 (= res!2049656 ((_ is Cons!54785) (t!362405 lt!1967689)))))

(declare-fun b!4817856 () Bool)

(assert (=> b!4817856 (= e!3010140 (containsKey!4255 (t!362405 (t!362405 lt!1967689)) (_1!32223 (h!61217 lt!1967689))))))

(assert (= (and d!1542132 (not res!2049655)) b!4817855))

(assert (= (and b!4817855 res!2049656) b!4817856))

(declare-fun m!5804516 () Bool)

(assert (=> b!4817856 m!5804516))

(assert (=> b!4817708 d!1542132))

(declare-fun d!1542134 () Bool)

(declare-fun res!2049657 () Bool)

(declare-fun e!3010143 () Bool)

(assert (=> d!1542134 (=> res!2049657 e!3010143)))

(assert (=> d!1542134 (= res!2049657 ((_ is Nil!54786) (t!362406 (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1542134 (= (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234786) e!3010143)))

(declare-fun b!4817859 () Bool)

(declare-fun e!3010144 () Bool)

(assert (=> b!4817859 (= e!3010143 e!3010144)))

(declare-fun res!2049658 () Bool)

(assert (=> b!4817859 (=> (not res!2049658) (not e!3010144))))

(assert (=> b!4817859 (= res!2049658 (dynLambda!22167 lambda!234786 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun b!4817860 () Bool)

(assert (=> b!4817860 (= e!3010144 (forall!12492 (t!362406 (t!362406 (t!362406 (toList!7347 lm!2251)))) lambda!234786))))

(assert (= (and d!1542134 (not res!2049657)) b!4817859))

(assert (= (and b!4817859 res!2049658) b!4817860))

(declare-fun b_lambda!188609 () Bool)

(assert (=> (not b_lambda!188609) (not b!4817859)))

(declare-fun m!5804518 () Bool)

(assert (=> b!4817859 m!5804518))

(declare-fun m!5804520 () Bool)

(assert (=> b!4817860 m!5804520))

(assert (=> b!4817668 d!1542134))

(declare-fun d!1542136 () Bool)

(assert (=> d!1542136 (= (invariantList!1794 (toList!7348 lt!1968020)) (noDuplicatedKeys!464 (toList!7348 lt!1968020)))))

(declare-fun bs!1160898 () Bool)

(assert (= bs!1160898 d!1542136))

(declare-fun m!5804522 () Bool)

(assert (=> bs!1160898 m!5804522))

(assert (=> b!4817689 d!1542136))

(assert (=> d!1542010 d!1542012))

(assert (=> d!1542010 d!1541842))

(declare-fun d!1542138 () Bool)

(assert (=> d!1542138 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690))))

(assert (=> d!1542138 true))

(declare-fun _$13!1651 () Unit!142036)

(assert (=> d!1542138 (= (choose!34960 (toList!7347 lm!2251) lt!1967690) _$13!1651)))

(declare-fun bs!1160899 () Bool)

(assert (= bs!1160899 d!1542138))

(assert (=> bs!1160899 m!5803644))

(assert (=> bs!1160899 m!5803644))

(assert (=> bs!1160899 m!5803848))

(assert (=> d!1542010 d!1542138))

(assert (=> d!1542010 d!1541970))

(declare-fun d!1542146 () Bool)

(declare-fun res!2049663 () Bool)

(declare-fun e!3010150 () Bool)

(assert (=> d!1542146 (=> res!2049663 e!3010150)))

(assert (=> d!1542146 (= res!2049663 (not ((_ is Cons!54785) (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(assert (=> d!1542146 (= (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))) e!3010150)))

(declare-fun b!4817867 () Bool)

(declare-fun e!3010151 () Bool)

(assert (=> b!4817867 (= e!3010150 e!3010151)))

(declare-fun res!2049664 () Bool)

(assert (=> b!4817867 (=> (not res!2049664) (not e!3010151))))

(assert (=> b!4817867 (= res!2049664 (not (containsKey!4255 (t!362405 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))))

(declare-fun b!4817868 () Bool)

(assert (=> b!4817868 (= e!3010151 (noDuplicateKeys!2413 (t!362405 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542146 (not res!2049663)) b!4817867))

(assert (= (and b!4817867 res!2049664) b!4817868))

(declare-fun m!5804536 () Bool)

(assert (=> b!4817867 m!5804536))

(declare-fun m!5804538 () Bool)

(assert (=> b!4817868 m!5804538))

(assert (=> bs!1160838 d!1542146))

(declare-fun d!1542150 () Bool)

(declare-fun res!2049665 () Bool)

(declare-fun e!3010153 () Bool)

(assert (=> d!1542150 (=> res!2049665 e!3010153)))

(assert (=> d!1542150 (= res!2049665 (and ((_ is Cons!54785) (t!362405 lt!1967689)) (= (_1!32223 (h!61217 (t!362405 lt!1967689))) key!5322)))))

(assert (=> d!1542150 (= (containsKey!4255 (t!362405 lt!1967689) key!5322) e!3010153)))

(declare-fun b!4817871 () Bool)

(declare-fun e!3010154 () Bool)

(assert (=> b!4817871 (= e!3010153 e!3010154)))

(declare-fun res!2049666 () Bool)

(assert (=> b!4817871 (=> (not res!2049666) (not e!3010154))))

(assert (=> b!4817871 (= res!2049666 ((_ is Cons!54785) (t!362405 lt!1967689)))))

(declare-fun b!4817872 () Bool)

(assert (=> b!4817872 (= e!3010154 (containsKey!4255 (t!362405 (t!362405 lt!1967689)) key!5322))))

(assert (= (and d!1542150 (not res!2049665)) b!4817871))

(assert (= (and b!4817871 res!2049666) b!4817872))

(declare-fun m!5804542 () Bool)

(assert (=> b!4817872 m!5804542))

(assert (=> b!4817639 d!1542150))

(declare-fun d!1542154 () Bool)

(declare-fun lt!1968119 () Bool)

(assert (=> d!1542154 (= lt!1968119 (select (content!9804 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(declare-fun e!3010156 () Bool)

(assert (=> d!1542154 (= lt!1968119 e!3010156)))

(declare-fun res!2049668 () Bool)

(assert (=> d!1542154 (=> (not res!2049668) (not e!3010156))))

(assert (=> d!1542154 (= res!2049668 ((_ is Cons!54788) (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> d!1542154 (= (contains!18621 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) key!5322) lt!1968119)))

(declare-fun b!4817873 () Bool)

(declare-fun e!3010155 () Bool)

(assert (=> b!4817873 (= e!3010156 e!3010155)))

(declare-fun res!2049667 () Bool)

(assert (=> b!4817873 (=> res!2049667 e!3010155)))

(assert (=> b!4817873 (= res!2049667 (= (h!61220 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(declare-fun b!4817874 () Bool)

(assert (=> b!4817874 (= e!3010155 (contains!18621 (t!362408 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(assert (= (and d!1542154 res!2049668) b!4817873))

(assert (= (and b!4817873 (not res!2049667)) b!4817874))

(declare-fun m!5804544 () Bool)

(assert (=> d!1542154 m!5804544))

(declare-fun m!5804546 () Bool)

(assert (=> d!1542154 m!5804546))

(declare-fun m!5804548 () Bool)

(assert (=> b!4817874 m!5804548))

(assert (=> b!4817653 d!1542154))

(declare-fun bs!1160903 () Bool)

(declare-fun d!1542156 () Bool)

(assert (= bs!1160903 (and d!1542156 b!4817687)))

(declare-fun lambda!234934 () Int)

(assert (=> bs!1160903 (not (= lambda!234934 lambda!234908))))

(declare-fun bs!1160904 () Bool)

(assert (= bs!1160904 (and d!1542156 b!4817685)))

(assert (=> bs!1160904 (not (= lambda!234934 lambda!234909))))

(assert (=> bs!1160904 (not (= lambda!234934 lambda!234910))))

(declare-fun bs!1160906 () Bool)

(assert (= bs!1160906 (and d!1542156 d!1541998)))

(assert (=> bs!1160906 (not (= lambda!234934 lambda!234911))))

(assert (=> d!1542156 true))

(assert (=> d!1542156 true))

(assert (=> d!1542156 (= (allKeysSameHash!1987 (_2!32224 (h!61218 (toList!7347 lm!2251))) (_1!32224 (h!61218 (toList!7347 lm!2251))) hashF!1486) (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234934))))

(declare-fun bs!1160907 () Bool)

(assert (= bs!1160907 d!1542156))

(declare-fun m!5804570 () Bool)

(assert (=> bs!1160907 m!5804570))

(assert (=> bs!1160836 d!1542156))

(declare-fun bs!1160909 () Bool)

(declare-fun d!1542174 () Bool)

(assert (= bs!1160909 (and d!1542174 b!4817685)))

(declare-fun lambda!234937 () Int)

(assert (=> bs!1160909 (= lambda!234937 lambda!234909)))

(declare-fun bs!1160910 () Bool)

(assert (= bs!1160910 (and d!1542174 d!1541998)))

(assert (=> bs!1160910 (= (= (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968020) (= lambda!234937 lambda!234911))))

(declare-fun bs!1160911 () Bool)

(assert (= bs!1160911 (and d!1542174 d!1542156)))

(assert (=> bs!1160911 (not (= lambda!234937 lambda!234934))))

(declare-fun bs!1160912 () Bool)

(assert (= bs!1160912 (and d!1542174 b!4817687)))

(assert (=> bs!1160912 (= lambda!234937 lambda!234908)))

(assert (=> bs!1160909 (= (= (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968007) (= lambda!234937 lambda!234910))))

(assert (=> d!1542174 true))

(assert (=> d!1542174 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234937)))

(declare-fun lt!1968125 () Unit!142036)

(declare-fun choose!34965 (ListMap!6761) Unit!142036)

(assert (=> d!1542174 (= lt!1968125 (choose!34965 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1542174 (= (lemmaContainsAllItsOwnKeys!976 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lt!1968125)))

(declare-fun bs!1160913 () Bool)

(assert (= bs!1160913 d!1542174))

(declare-fun m!5804606 () Bool)

(assert (=> bs!1160913 m!5804606))

(assert (=> bs!1160913 m!5803790))

(declare-fun m!5804608 () Bool)

(assert (=> bs!1160913 m!5804608))

(assert (=> bm!336021 d!1542174))

(assert (=> d!1542006 d!1541964))

(declare-fun d!1542200 () Bool)

(assert (=> d!1542200 (isDefined!10561 (getValueByKey!2570 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(declare-fun lt!1968127 () Unit!142036)

(assert (=> d!1542200 (= lt!1968127 (choose!34960 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(declare-fun e!3010182 () Bool)

(assert (=> d!1542200 e!3010182))

(declare-fun res!2049689 () Bool)

(assert (=> d!1542200 (=> (not res!2049689) (not e!3010182))))

(assert (=> d!1542200 (= res!2049689 (isStrictlySorted!955 (toList!7347 lm!2251)))))

(assert (=> d!1542200 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2358 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)) lt!1968127)))

(declare-fun b!4817909 () Bool)

(assert (=> b!4817909 (= e!3010182 (containsKey!4256 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)))))

(assert (= (and d!1542200 res!2049689) b!4817909))

(assert (=> d!1542200 m!5803668))

(assert (=> d!1542200 m!5804152))

(assert (=> d!1542200 m!5804152))

(assert (=> d!1542200 m!5804154))

(assert (=> d!1542200 m!5803668))

(declare-fun m!5804612 () Bool)

(assert (=> d!1542200 m!5804612))

(assert (=> d!1542200 m!5803800))

(assert (=> b!4817909 m!5803668))

(assert (=> b!4817909 m!5804148))

(assert (=> b!4817658 d!1542200))

(assert (=> b!4817658 d!1542124))

(assert (=> b!4817658 d!1542128))

(declare-fun d!1542204 () Bool)

(declare-fun res!2049699 () Bool)

(declare-fun e!3010192 () Bool)

(assert (=> d!1542204 (=> res!2049699 e!3010192)))

(assert (=> d!1542204 (= res!2049699 ((_ is Nil!54785) (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> d!1542204 (= (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234910) e!3010192)))

(declare-fun b!4817921 () Bool)

(declare-fun e!3010193 () Bool)

(assert (=> b!4817921 (= e!3010192 e!3010193)))

(declare-fun res!2049700 () Bool)

(assert (=> b!4817921 (=> (not res!2049700) (not e!3010193))))

(declare-fun dynLambda!22170 (Int tuple2!57858) Bool)

(assert (=> b!4817921 (= res!2049700 (dynLambda!22170 lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun b!4817922 () Bool)

(assert (=> b!4817922 (= e!3010193 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234910))))

(assert (= (and d!1542204 (not res!2049699)) b!4817921))

(assert (= (and b!4817921 res!2049700) b!4817922))

(declare-fun b_lambda!188623 () Bool)

(assert (=> (not b_lambda!188623) (not b!4817921)))

(declare-fun m!5804618 () Bool)

(assert (=> b!4817921 m!5804618))

(assert (=> b!4817922 m!5804196))

(assert (=> b!4817685 d!1542204))

(declare-fun d!1542208 () Bool)

(declare-fun res!2049701 () Bool)

(declare-fun e!3010194 () Bool)

(assert (=> d!1542208 (=> res!2049701 e!3010194)))

(assert (=> d!1542208 (= res!2049701 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542208 (= (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234909) e!3010194)))

(declare-fun b!4817923 () Bool)

(declare-fun e!3010195 () Bool)

(assert (=> b!4817923 (= e!3010194 e!3010195)))

(declare-fun res!2049702 () Bool)

(assert (=> b!4817923 (=> (not res!2049702) (not e!3010195))))

(assert (=> b!4817923 (= res!2049702 (dynLambda!22170 lambda!234909 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4817924 () Bool)

(assert (=> b!4817924 (= e!3010195 (forall!12496 (t!362405 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))) lambda!234909))))

(assert (= (and d!1542208 (not res!2049701)) b!4817923))

(assert (= (and b!4817923 res!2049702) b!4817924))

(declare-fun b_lambda!188625 () Bool)

(assert (=> (not b_lambda!188625) (not b!4817923)))

(declare-fun m!5804620 () Bool)

(assert (=> b!4817923 m!5804620))

(declare-fun m!5804622 () Bool)

(assert (=> b!4817924 m!5804622))

(assert (=> b!4817685 d!1542208))

(declare-fun b!4817925 () Bool)

(declare-fun e!3010201 () Bool)

(assert (=> b!4817925 (= e!3010201 (not (contains!18621 (keys!20122 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun d!1542210 () Bool)

(declare-fun e!3010197 () Bool)

(assert (=> d!1542210 e!3010197))

(declare-fun res!2049704 () Bool)

(assert (=> d!1542210 (=> res!2049704 e!3010197)))

(assert (=> d!1542210 (= res!2049704 e!3010201)))

(declare-fun res!2049703 () Bool)

(assert (=> d!1542210 (=> (not res!2049703) (not e!3010201))))

(declare-fun lt!1968156 () Bool)

(assert (=> d!1542210 (= res!2049703 (not lt!1968156))))

(declare-fun lt!1968149 () Bool)

(assert (=> d!1542210 (= lt!1968156 lt!1968149)))

(declare-fun lt!1968154 () Unit!142036)

(declare-fun e!3010199 () Unit!142036)

(assert (=> d!1542210 (= lt!1968154 e!3010199)))

(declare-fun c!821175 () Bool)

(assert (=> d!1542210 (= c!821175 lt!1968149)))

(assert (=> d!1542210 (= lt!1968149 (containsKey!4254 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> d!1542210 (= (contains!18618 lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lt!1968156)))

(declare-fun b!4817926 () Bool)

(declare-fun e!3010198 () Bool)

(assert (=> b!4817926 (= e!3010198 (contains!18621 (keys!20122 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun b!4817927 () Bool)

(declare-fun e!3010200 () Unit!142036)

(assert (=> b!4817927 (= e!3010199 e!3010200)))

(declare-fun c!821177 () Bool)

(declare-fun call!336037 () Bool)

(assert (=> b!4817927 (= c!821177 call!336037)))

(declare-fun b!4817928 () Bool)

(declare-fun Unit!142082 () Unit!142036)

(assert (=> b!4817928 (= e!3010200 Unit!142082)))

(declare-fun b!4817929 () Bool)

(declare-fun e!3010196 () List!54912)

(assert (=> b!4817929 (= e!3010196 (getKeysList!1141 (toList!7348 lt!1968007)))))

(declare-fun b!4817930 () Bool)

(declare-fun lt!1968150 () Unit!142036)

(assert (=> b!4817930 (= e!3010199 lt!1968150)))

(declare-fun lt!1968155 () Unit!142036)

(assert (=> b!4817930 (= lt!1968155 (lemmaContainsKeyImpliesGetValueByKeyDefined!2357 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4817930 (isDefined!10560 (getValueByKey!2572 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968153 () Unit!142036)

(assert (=> b!4817930 (= lt!1968153 lt!1968155)))

(assert (=> b!4817930 (= lt!1968150 (lemmaInListThenGetKeysListContains!1136 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4817930 call!336037))

(declare-fun b!4817931 () Bool)

(assert (=> b!4817931 (= e!3010196 (keys!20122 lt!1968007))))

(declare-fun b!4817932 () Bool)

(assert (=> b!4817932 (= e!3010197 e!3010198)))

(declare-fun res!2049705 () Bool)

(assert (=> b!4817932 (=> (not res!2049705) (not e!3010198))))

(assert (=> b!4817932 (= res!2049705 (isDefined!10560 (getValueByKey!2572 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun bm!336032 () Bool)

(assert (=> bm!336032 (= call!336037 (contains!18621 e!3010196 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun c!821176 () Bool)

(assert (=> bm!336032 (= c!821176 c!821175)))

(declare-fun b!4817933 () Bool)

(assert (=> b!4817933 false))

(declare-fun lt!1968151 () Unit!142036)

(declare-fun lt!1968152 () Unit!142036)

(assert (=> b!4817933 (= lt!1968151 lt!1968152)))

(assert (=> b!4817933 (containsKey!4254 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> b!4817933 (= lt!1968152 (lemmaInGetKeysListThenContainsKey!1141 (toList!7348 lt!1968007) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun Unit!142083 () Unit!142036)

(assert (=> b!4817933 (= e!3010200 Unit!142083)))

(assert (= (and d!1542210 c!821175) b!4817930))

(assert (= (and d!1542210 (not c!821175)) b!4817927))

(assert (= (and b!4817927 c!821177) b!4817933))

(assert (= (and b!4817927 (not c!821177)) b!4817928))

(assert (= (or b!4817930 b!4817927) bm!336032))

(assert (= (and bm!336032 c!821176) b!4817929))

(assert (= (and bm!336032 (not c!821176)) b!4817931))

(assert (= (and d!1542210 res!2049703) b!4817925))

(assert (= (and d!1542210 (not res!2049704)) b!4817932))

(assert (= (and b!4817932 res!2049705) b!4817926))

(declare-fun m!5804624 () Bool)

(assert (=> b!4817930 m!5804624))

(declare-fun m!5804626 () Bool)

(assert (=> b!4817930 m!5804626))

(assert (=> b!4817930 m!5804626))

(declare-fun m!5804628 () Bool)

(assert (=> b!4817930 m!5804628))

(declare-fun m!5804630 () Bool)

(assert (=> b!4817930 m!5804630))

(declare-fun m!5804632 () Bool)

(assert (=> b!4817933 m!5804632))

(declare-fun m!5804634 () Bool)

(assert (=> b!4817933 m!5804634))

(declare-fun m!5804636 () Bool)

(assert (=> b!4817929 m!5804636))

(declare-fun m!5804638 () Bool)

(assert (=> b!4817926 m!5804638))

(assert (=> b!4817926 m!5804638))

(declare-fun m!5804640 () Bool)

(assert (=> b!4817926 m!5804640))

(assert (=> d!1542210 m!5804632))

(assert (=> b!4817932 m!5804626))

(assert (=> b!4817932 m!5804626))

(assert (=> b!4817932 m!5804628))

(declare-fun m!5804642 () Bool)

(assert (=> bm!336032 m!5804642))

(assert (=> b!4817925 m!5804638))

(assert (=> b!4817925 m!5804638))

(assert (=> b!4817925 m!5804640))

(assert (=> b!4817931 m!5804638))

(assert (=> b!4817685 d!1542210))

(declare-fun d!1542212 () Bool)

(declare-fun e!3010214 () Bool)

(assert (=> d!1542212 e!3010214))

(declare-fun res!2049717 () Bool)

(assert (=> d!1542212 (=> (not res!2049717) (not e!3010214))))

(declare-fun lt!1968168 () ListMap!6761)

(assert (=> d!1542212 (= res!2049717 (contains!18618 lt!1968168 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968167 () List!54909)

(assert (=> d!1542212 (= lt!1968168 (ListMap!6762 lt!1968167))))

(declare-fun lt!1968169 () Unit!142036)

(declare-fun lt!1968170 () Unit!142036)

(assert (=> d!1542212 (= lt!1968169 lt!1968170)))

(assert (=> d!1542212 (= (getValueByKey!2572 lt!1968167 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (Some!13444 (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1205 (List!54909 K!16444 V!16690) Unit!142036)

(assert (=> d!1542212 (= lt!1968170 (lemmaContainsTupThenGetReturnValue!1205 lt!1968167 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun insertNoDuplicatedKeys!713 (List!54909 K!16444 V!16690) List!54909)

(assert (=> d!1542212 (= lt!1968167 (insertNoDuplicatedKeys!713 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> d!1542212 (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968168)))

(declare-fun b!4817952 () Bool)

(declare-fun res!2049716 () Bool)

(assert (=> b!4817952 (=> (not res!2049716) (not e!3010214))))

(assert (=> b!4817952 (= res!2049716 (= (getValueByKey!2572 (toList!7348 lt!1968168) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (Some!13444 (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun b!4817953 () Bool)

(assert (=> b!4817953 (= e!3010214 (contains!18622 (toList!7348 lt!1968168) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (= (and d!1542212 res!2049717) b!4817952))

(assert (= (and b!4817952 res!2049716) b!4817953))

(declare-fun m!5804698 () Bool)

(assert (=> d!1542212 m!5804698))

(declare-fun m!5804700 () Bool)

(assert (=> d!1542212 m!5804700))

(declare-fun m!5804702 () Bool)

(assert (=> d!1542212 m!5804702))

(declare-fun m!5804704 () Bool)

(assert (=> d!1542212 m!5804704))

(declare-fun m!5804706 () Bool)

(assert (=> b!4817952 m!5804706))

(declare-fun m!5804708 () Bool)

(assert (=> b!4817953 m!5804708))

(assert (=> b!4817685 d!1542212))

(declare-fun bs!1160948 () Bool)

(declare-fun b!4817956 () Bool)

(assert (= bs!1160948 (and b!4817956 b!4817685)))

(declare-fun lambda!234946 () Int)

(assert (=> bs!1160948 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234946 lambda!234909))))

(declare-fun bs!1160950 () Bool)

(assert (= bs!1160950 (and b!4817956 d!1541998)))

(assert (=> bs!1160950 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968020) (= lambda!234946 lambda!234911))))

(declare-fun bs!1160952 () Bool)

(assert (= bs!1160952 (and b!4817956 d!1542156)))

(assert (=> bs!1160952 (not (= lambda!234946 lambda!234934))))

(declare-fun bs!1160954 () Bool)

(assert (= bs!1160954 (and b!4817956 b!4817687)))

(assert (=> bs!1160954 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234946 lambda!234908))))

(assert (=> bs!1160948 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968007) (= lambda!234946 lambda!234910))))

(declare-fun bs!1160956 () Bool)

(assert (= bs!1160956 (and b!4817956 d!1542174)))

(assert (=> bs!1160956 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234946 lambda!234937))))

(assert (=> b!4817956 true))

(declare-fun bs!1160963 () Bool)

(declare-fun b!4817954 () Bool)

(assert (= bs!1160963 (and b!4817954 b!4817685)))

(declare-fun lambda!234947 () Int)

(assert (=> bs!1160963 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234947 lambda!234909))))

(declare-fun bs!1160964 () Bool)

(assert (= bs!1160964 (and b!4817954 d!1541998)))

(assert (=> bs!1160964 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968020) (= lambda!234947 lambda!234911))))

(declare-fun bs!1160965 () Bool)

(assert (= bs!1160965 (and b!4817954 d!1542156)))

(assert (=> bs!1160965 (not (= lambda!234947 lambda!234934))))

(declare-fun bs!1160967 () Bool)

(assert (= bs!1160967 (and b!4817954 b!4817956)))

(assert (=> bs!1160967 (= lambda!234947 lambda!234946)))

(declare-fun bs!1160968 () Bool)

(assert (= bs!1160968 (and b!4817954 b!4817687)))

(assert (=> bs!1160968 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234947 lambda!234908))))

(assert (=> bs!1160963 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968007) (= lambda!234947 lambda!234910))))

(declare-fun bs!1160970 () Bool)

(assert (= bs!1160970 (and b!4817954 d!1542174)))

(assert (=> bs!1160970 (= (= (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234947 lambda!234937))))

(assert (=> b!4817954 true))

(declare-fun lambda!234948 () Int)

(declare-fun lt!1968171 () ListMap!6761)

(assert (=> bs!1160963 (= (= lt!1968171 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234948 lambda!234909))))

(assert (=> bs!1160964 (= (= lt!1968171 lt!1968020) (= lambda!234948 lambda!234911))))

(assert (=> bs!1160965 (not (= lambda!234948 lambda!234934))))

(assert (=> bs!1160967 (= (= lt!1968171 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234948 lambda!234946))))

(assert (=> bs!1160968 (= (= lt!1968171 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234948 lambda!234908))))

(assert (=> b!4817954 (= (= lt!1968171 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234948 lambda!234947))))

(assert (=> bs!1160963 (= (= lt!1968171 lt!1968007) (= lambda!234948 lambda!234910))))

(assert (=> bs!1160970 (= (= lt!1968171 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234948 lambda!234937))))

(assert (=> b!4817954 true))

(declare-fun bs!1160972 () Bool)

(declare-fun d!1542226 () Bool)

(assert (= bs!1160972 (and d!1542226 b!4817685)))

(declare-fun lambda!234949 () Int)

(declare-fun lt!1968184 () ListMap!6761)

(assert (=> bs!1160972 (= (= lt!1968184 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234949 lambda!234909))))

(declare-fun bs!1160973 () Bool)

(assert (= bs!1160973 (and d!1542226 d!1541998)))

(assert (=> bs!1160973 (= (= lt!1968184 lt!1968020) (= lambda!234949 lambda!234911))))

(declare-fun bs!1160974 () Bool)

(assert (= bs!1160974 (and d!1542226 d!1542156)))

(assert (=> bs!1160974 (not (= lambda!234949 lambda!234934))))

(declare-fun bs!1160975 () Bool)

(assert (= bs!1160975 (and d!1542226 b!4817956)))

(assert (=> bs!1160975 (= (= lt!1968184 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234949 lambda!234946))))

(declare-fun bs!1160976 () Bool)

(assert (= bs!1160976 (and d!1542226 b!4817687)))

(assert (=> bs!1160976 (= (= lt!1968184 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234949 lambda!234908))))

(declare-fun bs!1160977 () Bool)

(assert (= bs!1160977 (and d!1542226 b!4817954)))

(assert (=> bs!1160977 (= (= lt!1968184 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234949 lambda!234947))))

(assert (=> bs!1160972 (= (= lt!1968184 lt!1968007) (= lambda!234949 lambda!234910))))

(declare-fun bs!1160978 () Bool)

(assert (= bs!1160978 (and d!1542226 d!1542174)))

(assert (=> bs!1160978 (= (= lt!1968184 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234949 lambda!234937))))

(assert (=> bs!1160977 (= (= lt!1968184 lt!1968171) (= lambda!234949 lambda!234948))))

(assert (=> d!1542226 true))

(declare-fun e!3010216 () Bool)

(assert (=> d!1542226 e!3010216))

(declare-fun res!2049719 () Bool)

(assert (=> d!1542226 (=> (not res!2049719) (not e!3010216))))

(assert (=> d!1542226 (= res!2049719 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234949))))

(declare-fun e!3010217 () ListMap!6761)

(assert (=> d!1542226 (= lt!1968184 e!3010217)))

(declare-fun c!821182 () Bool)

(assert (=> d!1542226 (= c!821182 ((_ is Nil!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> d!1542226 (noDuplicateKeys!2413 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> d!1542226 (= (addToMapMapFromBucket!1771 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lt!1968184)))

(assert (=> b!4817954 (= e!3010217 lt!1968171)))

(declare-fun lt!1968180 () ListMap!6761)

(assert (=> b!4817954 (= lt!1968180 (+!2521 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4817954 (= lt!1968171 (addToMapMapFromBucket!1771 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (+!2521 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun lt!1968186 () Unit!142036)

(declare-fun call!336038 () Unit!142036)

(assert (=> b!4817954 (= lt!1968186 call!336038)))

(assert (=> b!4817954 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lambda!234947)))

(declare-fun lt!1968177 () Unit!142036)

(assert (=> b!4817954 (= lt!1968177 lt!1968186)))

(declare-fun call!336039 () Bool)

(assert (=> b!4817954 call!336039))

(declare-fun lt!1968174 () Unit!142036)

(declare-fun Unit!142088 () Unit!142036)

(assert (=> b!4817954 (= lt!1968174 Unit!142088)))

(assert (=> b!4817954 (forall!12496 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lambda!234948)))

(declare-fun lt!1968181 () Unit!142036)

(declare-fun Unit!142090 () Unit!142036)

(assert (=> b!4817954 (= lt!1968181 Unit!142090)))

(declare-fun lt!1968172 () Unit!142036)

(declare-fun Unit!142091 () Unit!142036)

(assert (=> b!4817954 (= lt!1968172 Unit!142091)))

(declare-fun lt!1968187 () Unit!142036)

(assert (=> b!4817954 (= lt!1968187 (forallContained!4356 (toList!7348 lt!1968180) lambda!234948 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4817954 (contains!18618 lt!1968180 (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968175 () Unit!142036)

(declare-fun Unit!142094 () Unit!142036)

(assert (=> b!4817954 (= lt!1968175 Unit!142094)))

(assert (=> b!4817954 (contains!18618 lt!1968171 (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968188 () Unit!142036)

(declare-fun Unit!142097 () Unit!142036)

(assert (=> b!4817954 (= lt!1968188 Unit!142097)))

(assert (=> b!4817954 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234948)))

(declare-fun lt!1968191 () Unit!142036)

(declare-fun Unit!142098 () Unit!142036)

(assert (=> b!4817954 (= lt!1968191 Unit!142098)))

(assert (=> b!4817954 (forall!12496 (toList!7348 lt!1968180) lambda!234948)))

(declare-fun lt!1968179 () Unit!142036)

(declare-fun Unit!142099 () Unit!142036)

(assert (=> b!4817954 (= lt!1968179 Unit!142099)))

(declare-fun lt!1968185 () Unit!142036)

(declare-fun Unit!142100 () Unit!142036)

(assert (=> b!4817954 (= lt!1968185 Unit!142100)))

(declare-fun lt!1968190 () Unit!142036)

(assert (=> b!4817954 (= lt!1968190 (addForallContainsKeyThenBeforeAdding!975 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968171 (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (_2!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun call!336040 () Bool)

(assert (=> b!4817954 call!336040))

(declare-fun lt!1968182 () Unit!142036)

(assert (=> b!4817954 (= lt!1968182 lt!1968190)))

(assert (=> b!4817954 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lambda!234948)))

(declare-fun lt!1968176 () Unit!142036)

(declare-fun Unit!142103 () Unit!142036)

(assert (=> b!4817954 (= lt!1968176 Unit!142103)))

(declare-fun res!2049718 () Bool)

(assert (=> b!4817954 (= res!2049718 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234948))))

(declare-fun e!3010215 () Bool)

(assert (=> b!4817954 (=> (not res!2049718) (not e!3010215))))

(assert (=> b!4817954 e!3010215))

(declare-fun lt!1968173 () Unit!142036)

(declare-fun Unit!142104 () Unit!142036)

(assert (=> b!4817954 (= lt!1968173 Unit!142104)))

(declare-fun b!4817955 () Bool)

(declare-fun res!2049720 () Bool)

(assert (=> b!4817955 (=> (not res!2049720) (not e!3010216))))

(assert (=> b!4817955 (= res!2049720 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lambda!234949))))

(declare-fun bm!336033 () Bool)

(assert (=> bm!336033 (= call!336038 (lemmaContainsAllItsOwnKeys!976 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun bm!336034 () Bool)

(assert (=> bm!336034 (= call!336039 (forall!12496 (ite c!821182 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (toList!7348 lt!1968180)) (ite c!821182 lambda!234946 lambda!234948)))))

(assert (=> b!4817956 (= e!3010217 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun lt!1968189 () Unit!142036)

(assert (=> b!4817956 (= lt!1968189 call!336038)))

(assert (=> b!4817956 call!336039))

(declare-fun lt!1968178 () Unit!142036)

(assert (=> b!4817956 (= lt!1968178 lt!1968189)))

(assert (=> b!4817956 call!336040))

(declare-fun lt!1968183 () Unit!142036)

(declare-fun Unit!142105 () Unit!142036)

(assert (=> b!4817956 (= lt!1968183 Unit!142105)))

(declare-fun b!4817957 () Bool)

(assert (=> b!4817957 (= e!3010215 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lambda!234948))))

(declare-fun b!4817958 () Bool)

(assert (=> b!4817958 (= e!3010216 (invariantList!1794 (toList!7348 lt!1968184)))))

(declare-fun bm!336035 () Bool)

(assert (=> bm!336035 (= call!336040 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (ite c!821182 lambda!234946 lambda!234948)))))

(assert (= (and d!1542226 c!821182) b!4817956))

(assert (= (and d!1542226 (not c!821182)) b!4817954))

(assert (= (and b!4817954 res!2049718) b!4817957))

(assert (= (or b!4817956 b!4817954) bm!336033))

(assert (= (or b!4817956 b!4817954) bm!336034))

(assert (= (or b!4817956 b!4817954) bm!336035))

(assert (= (and d!1542226 res!2049719) b!4817955))

(assert (= (and b!4817955 res!2049720) b!4817958))

(declare-fun m!5804728 () Bool)

(assert (=> b!4817958 m!5804728))

(declare-fun m!5804734 () Bool)

(assert (=> bm!336034 m!5804734))

(assert (=> bm!336033 m!5804186))

(declare-fun m!5804736 () Bool)

(assert (=> bm!336033 m!5804736))

(declare-fun m!5804738 () Bool)

(assert (=> b!4817957 m!5804738))

(declare-fun m!5804740 () Bool)

(assert (=> b!4817954 m!5804740))

(declare-fun m!5804742 () Bool)

(assert (=> b!4817954 m!5804742))

(declare-fun m!5804744 () Bool)

(assert (=> b!4817954 m!5804744))

(declare-fun m!5804746 () Bool)

(assert (=> b!4817954 m!5804746))

(assert (=> b!4817954 m!5804186))

(assert (=> b!4817954 m!5804740))

(declare-fun m!5804748 () Bool)

(assert (=> b!4817954 m!5804748))

(assert (=> b!4817954 m!5804746))

(declare-fun m!5804754 () Bool)

(assert (=> b!4817954 m!5804754))

(declare-fun m!5804756 () Bool)

(assert (=> b!4817954 m!5804756))

(declare-fun m!5804758 () Bool)

(assert (=> b!4817954 m!5804758))

(assert (=> b!4817954 m!5804186))

(declare-fun m!5804760 () Bool)

(assert (=> b!4817954 m!5804760))

(declare-fun m!5804762 () Bool)

(assert (=> b!4817954 m!5804762))

(assert (=> b!4817954 m!5804738))

(declare-fun m!5804764 () Bool)

(assert (=> b!4817955 m!5804764))

(declare-fun m!5804766 () Bool)

(assert (=> d!1542226 m!5804766))

(assert (=> d!1542226 m!5804176))

(declare-fun m!5804768 () Bool)

(assert (=> bm!336035 m!5804768))

(assert (=> b!4817685 d!1542226))

(declare-fun d!1542246 () Bool)

(assert (=> d!1542246 (dynLambda!22170 lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(declare-fun lt!1968195 () Unit!142036)

(declare-fun choose!34967 (List!54909 Int tuple2!57858) Unit!142036)

(assert (=> d!1542246 (= lt!1968195 (choose!34967 (toList!7348 lt!1968016) lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun e!3010240 () Bool)

(assert (=> d!1542246 e!3010240))

(declare-fun res!2049738 () Bool)

(assert (=> d!1542246 (=> (not res!2049738) (not e!3010240))))

(assert (=> d!1542246 (= res!2049738 (forall!12496 (toList!7348 lt!1968016) lambda!234910))))

(assert (=> d!1542246 (= (forallContained!4356 (toList!7348 lt!1968016) lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lt!1968195)))

(declare-fun b!4817987 () Bool)

(assert (=> b!4817987 (= e!3010240 (contains!18622 (toList!7348 lt!1968016) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (= (and d!1542246 res!2049738) b!4817987))

(declare-fun b_lambda!188675 () Bool)

(assert (=> (not b_lambda!188675) (not d!1542246)))

(assert (=> d!1542246 m!5804618))

(declare-fun m!5804788 () Bool)

(assert (=> d!1542246 m!5804788))

(assert (=> d!1542246 m!5804200))

(declare-fun m!5804790 () Bool)

(assert (=> b!4817987 m!5804790))

(assert (=> b!4817685 d!1542246))

(declare-fun d!1542278 () Bool)

(declare-fun res!2049739 () Bool)

(declare-fun e!3010241 () Bool)

(assert (=> d!1542278 (=> res!2049739 e!3010241)))

(assert (=> d!1542278 (= res!2049739 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542278 (= (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234910) e!3010241)))

(declare-fun b!4817988 () Bool)

(declare-fun e!3010242 () Bool)

(assert (=> b!4817988 (= e!3010241 e!3010242)))

(declare-fun res!2049740 () Bool)

(assert (=> b!4817988 (=> (not res!2049740) (not e!3010242))))

(assert (=> b!4817988 (= res!2049740 (dynLambda!22170 lambda!234910 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4817989 () Bool)

(assert (=> b!4817989 (= e!3010242 (forall!12496 (t!362405 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))) lambda!234910))))

(assert (= (and d!1542278 (not res!2049739)) b!4817988))

(assert (= (and b!4817988 res!2049740) b!4817989))

(declare-fun b_lambda!188677 () Bool)

(assert (=> (not b_lambda!188677) (not b!4817988)))

(declare-fun m!5804798 () Bool)

(assert (=> b!4817988 m!5804798))

(declare-fun m!5804802 () Bool)

(assert (=> b!4817989 m!5804802))

(assert (=> b!4817685 d!1542278))

(declare-fun d!1542288 () Bool)

(declare-fun res!2049741 () Bool)

(declare-fun e!3010243 () Bool)

(assert (=> d!1542288 (=> res!2049741 e!3010243)))

(assert (=> d!1542288 (= res!2049741 ((_ is Nil!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> d!1542288 (= (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234910) e!3010243)))

(declare-fun b!4817990 () Bool)

(declare-fun e!3010244 () Bool)

(assert (=> b!4817990 (= e!3010243 e!3010244)))

(declare-fun res!2049742 () Bool)

(assert (=> b!4817990 (=> (not res!2049742) (not e!3010244))))

(assert (=> b!4817990 (= res!2049742 (dynLambda!22170 lambda!234910 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun b!4817991 () Bool)

(assert (=> b!4817991 (= e!3010244 (forall!12496 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) lambda!234910))))

(assert (= (and d!1542288 (not res!2049741)) b!4817990))

(assert (= (and b!4817990 res!2049742) b!4817991))

(declare-fun b_lambda!188679 () Bool)

(assert (=> (not b_lambda!188679) (not b!4817990)))

(declare-fun m!5804804 () Bool)

(assert (=> b!4817990 m!5804804))

(declare-fun m!5804806 () Bool)

(assert (=> b!4817991 m!5804806))

(assert (=> b!4817685 d!1542288))

(declare-fun d!1542290 () Bool)

(declare-fun res!2049743 () Bool)

(declare-fun e!3010245 () Bool)

(assert (=> d!1542290 (=> res!2049743 e!3010245)))

(assert (=> d!1542290 (= res!2049743 ((_ is Nil!54785) (toList!7348 lt!1968016)))))

(assert (=> d!1542290 (= (forall!12496 (toList!7348 lt!1968016) lambda!234910) e!3010245)))

(declare-fun b!4817992 () Bool)

(declare-fun e!3010246 () Bool)

(assert (=> b!4817992 (= e!3010245 e!3010246)))

(declare-fun res!2049744 () Bool)

(assert (=> b!4817992 (=> (not res!2049744) (not e!3010246))))

(assert (=> b!4817992 (= res!2049744 (dynLambda!22170 lambda!234910 (h!61217 (toList!7348 lt!1968016))))))

(declare-fun b!4817993 () Bool)

(assert (=> b!4817993 (= e!3010246 (forall!12496 (t!362405 (toList!7348 lt!1968016)) lambda!234910))))

(assert (= (and d!1542290 (not res!2049743)) b!4817992))

(assert (= (and b!4817992 res!2049744) b!4817993))

(declare-fun b_lambda!188681 () Bool)

(assert (=> (not b_lambda!188681) (not b!4817992)))

(declare-fun m!5804808 () Bool)

(assert (=> b!4817992 m!5804808))

(declare-fun m!5804810 () Bool)

(assert (=> b!4817993 m!5804810))

(assert (=> b!4817685 d!1542290))

(declare-fun bs!1160998 () Bool)

(declare-fun d!1542292 () Bool)

(assert (= bs!1160998 (and d!1542292 b!4817685)))

(declare-fun lambda!234954 () Int)

(assert (=> bs!1160998 (= (= lt!1968007 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234954 lambda!234909))))

(declare-fun bs!1160999 () Bool)

(assert (= bs!1160999 (and d!1542292 d!1541998)))

(assert (=> bs!1160999 (= (= lt!1968007 lt!1968020) (= lambda!234954 lambda!234911))))

(declare-fun bs!1161000 () Bool)

(assert (= bs!1161000 (and d!1542292 d!1542156)))

(assert (=> bs!1161000 (not (= lambda!234954 lambda!234934))))

(declare-fun bs!1161001 () Bool)

(assert (= bs!1161001 (and d!1542292 b!4817956)))

(assert (=> bs!1161001 (= (= lt!1968007 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234954 lambda!234946))))

(declare-fun bs!1161002 () Bool)

(assert (= bs!1161002 (and d!1542292 b!4817687)))

(assert (=> bs!1161002 (= (= lt!1968007 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234954 lambda!234908))))

(declare-fun bs!1161003 () Bool)

(assert (= bs!1161003 (and d!1542292 d!1542226)))

(assert (=> bs!1161003 (= (= lt!1968007 lt!1968184) (= lambda!234954 lambda!234949))))

(declare-fun bs!1161004 () Bool)

(assert (= bs!1161004 (and d!1542292 b!4817954)))

(assert (=> bs!1161004 (= (= lt!1968007 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234954 lambda!234947))))

(assert (=> bs!1160998 (= lambda!234954 lambda!234910)))

(declare-fun bs!1161005 () Bool)

(assert (= bs!1161005 (and d!1542292 d!1542174)))

(assert (=> bs!1161005 (= (= lt!1968007 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234954 lambda!234937))))

(assert (=> bs!1161004 (= (= lt!1968007 lt!1968171) (= lambda!234954 lambda!234948))))

(assert (=> d!1542292 true))

(assert (=> d!1542292 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234954)))

(declare-fun lt!1968198 () Unit!142036)

(declare-fun choose!34968 (ListMap!6761 ListMap!6761 K!16444 V!16690) Unit!142036)

(assert (=> d!1542292 (= lt!1968198 (choose!34968 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> d!1542292 (forall!12496 (toList!7348 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (tuple2!57859 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))) lambda!234954)))

(assert (=> d!1542292 (= (addForallContainsKeyThenBeforeAdding!975 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lt!1968198)))

(declare-fun bs!1161006 () Bool)

(assert (= bs!1161006 d!1542292))

(declare-fun m!5804812 () Bool)

(assert (=> bs!1161006 m!5804812))

(assert (=> bs!1161006 m!5803790))

(declare-fun m!5804814 () Bool)

(assert (=> bs!1161006 m!5804814))

(assert (=> bs!1161006 m!5803790))

(declare-fun m!5804816 () Bool)

(assert (=> bs!1161006 m!5804816))

(declare-fun m!5804818 () Bool)

(assert (=> bs!1161006 m!5804818))

(assert (=> b!4817685 d!1542292))

(declare-fun b!4817995 () Bool)

(declare-fun e!3010252 () Bool)

(assert (=> b!4817995 (= e!3010252 (not (contains!18621 (keys!20122 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun d!1542294 () Bool)

(declare-fun e!3010248 () Bool)

(assert (=> d!1542294 e!3010248))

(declare-fun res!2049746 () Bool)

(assert (=> d!1542294 (=> res!2049746 e!3010248)))

(assert (=> d!1542294 (= res!2049746 e!3010252)))

(declare-fun res!2049745 () Bool)

(assert (=> d!1542294 (=> (not res!2049745) (not e!3010252))))

(declare-fun lt!1968206 () Bool)

(assert (=> d!1542294 (= res!2049745 (not lt!1968206))))

(declare-fun lt!1968199 () Bool)

(assert (=> d!1542294 (= lt!1968206 lt!1968199)))

(declare-fun lt!1968204 () Unit!142036)

(declare-fun e!3010250 () Unit!142036)

(assert (=> d!1542294 (= lt!1968204 e!3010250)))

(declare-fun c!821185 () Bool)

(assert (=> d!1542294 (= c!821185 lt!1968199)))

(assert (=> d!1542294 (= lt!1968199 (containsKey!4254 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> d!1542294 (= (contains!18618 lt!1968016 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) lt!1968206)))

(declare-fun b!4817996 () Bool)

(declare-fun e!3010249 () Bool)

(assert (=> b!4817996 (= e!3010249 (contains!18621 (keys!20122 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun b!4817997 () Bool)

(declare-fun e!3010251 () Unit!142036)

(assert (=> b!4817997 (= e!3010250 e!3010251)))

(declare-fun c!821187 () Bool)

(declare-fun call!336041 () Bool)

(assert (=> b!4817997 (= c!821187 call!336041)))

(declare-fun b!4817998 () Bool)

(declare-fun Unit!142108 () Unit!142036)

(assert (=> b!4817998 (= e!3010251 Unit!142108)))

(declare-fun b!4817999 () Bool)

(declare-fun e!3010247 () List!54912)

(assert (=> b!4817999 (= e!3010247 (getKeysList!1141 (toList!7348 lt!1968016)))))

(declare-fun b!4818000 () Bool)

(declare-fun lt!1968200 () Unit!142036)

(assert (=> b!4818000 (= e!3010250 lt!1968200)))

(declare-fun lt!1968205 () Unit!142036)

(assert (=> b!4818000 (= lt!1968205 (lemmaContainsKeyImpliesGetValueByKeyDefined!2357 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4818000 (isDefined!10560 (getValueByKey!2572 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968203 () Unit!142036)

(assert (=> b!4818000 (= lt!1968203 lt!1968205)))

(assert (=> b!4818000 (= lt!1968200 (lemmaInListThenGetKeysListContains!1136 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> b!4818000 call!336041))

(declare-fun b!4818001 () Bool)

(assert (=> b!4818001 (= e!3010247 (keys!20122 lt!1968016))))

(declare-fun b!4818002 () Bool)

(assert (=> b!4818002 (= e!3010248 e!3010249)))

(declare-fun res!2049747 () Bool)

(assert (=> b!4818002 (=> (not res!2049747) (not e!3010249))))

(assert (=> b!4818002 (= res!2049747 (isDefined!10560 (getValueByKey!2572 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun bm!336036 () Bool)

(assert (=> bm!336036 (= call!336041 (contains!18621 e!3010247 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun c!821186 () Bool)

(assert (=> bm!336036 (= c!821186 c!821185)))

(declare-fun b!4818003 () Bool)

(assert (=> b!4818003 false))

(declare-fun lt!1968201 () Unit!142036)

(declare-fun lt!1968202 () Unit!142036)

(assert (=> b!4818003 (= lt!1968201 lt!1968202)))

(assert (=> b!4818003 (containsKey!4254 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(assert (=> b!4818003 (= lt!1968202 (lemmaInGetKeysListThenContainsKey!1141 (toList!7348 lt!1968016) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun Unit!142110 () Unit!142036)

(assert (=> b!4818003 (= e!3010251 Unit!142110)))

(assert (= (and d!1542294 c!821185) b!4818000))

(assert (= (and d!1542294 (not c!821185)) b!4817997))

(assert (= (and b!4817997 c!821187) b!4818003))

(assert (= (and b!4817997 (not c!821187)) b!4817998))

(assert (= (or b!4818000 b!4817997) bm!336036))

(assert (= (and bm!336036 c!821186) b!4817999))

(assert (= (and bm!336036 (not c!821186)) b!4818001))

(assert (= (and d!1542294 res!2049745) b!4817995))

(assert (= (and d!1542294 (not res!2049746)) b!4818002))

(assert (= (and b!4818002 res!2049747) b!4817996))

(declare-fun m!5804820 () Bool)

(assert (=> b!4818000 m!5804820))

(declare-fun m!5804822 () Bool)

(assert (=> b!4818000 m!5804822))

(assert (=> b!4818000 m!5804822))

(declare-fun m!5804824 () Bool)

(assert (=> b!4818000 m!5804824))

(declare-fun m!5804826 () Bool)

(assert (=> b!4818000 m!5804826))

(declare-fun m!5804828 () Bool)

(assert (=> b!4818003 m!5804828))

(declare-fun m!5804830 () Bool)

(assert (=> b!4818003 m!5804830))

(declare-fun m!5804832 () Bool)

(assert (=> b!4817999 m!5804832))

(declare-fun m!5804834 () Bool)

(assert (=> b!4817996 m!5804834))

(assert (=> b!4817996 m!5804834))

(declare-fun m!5804836 () Bool)

(assert (=> b!4817996 m!5804836))

(assert (=> d!1542294 m!5804828))

(assert (=> b!4818002 m!5804822))

(assert (=> b!4818002 m!5804822))

(assert (=> b!4818002 m!5804824))

(declare-fun m!5804838 () Bool)

(assert (=> bm!336036 m!5804838))

(assert (=> b!4817995 m!5804834))

(assert (=> b!4817995 m!5804834))

(assert (=> b!4817995 m!5804836))

(assert (=> b!4818001 m!5804834))

(assert (=> b!4817685 d!1542294))

(declare-fun d!1542296 () Bool)

(declare-fun res!2049752 () Bool)

(declare-fun e!3010257 () Bool)

(assert (=> d!1542296 (=> res!2049752 e!3010257)))

(assert (=> d!1542296 (= res!2049752 ((_ is Nil!54788) lt!1967899))))

(assert (=> d!1542296 (= (forall!12495 lt!1967899 lambda!234862) e!3010257)))

(declare-fun b!4818008 () Bool)

(declare-fun e!3010258 () Bool)

(assert (=> b!4818008 (= e!3010257 e!3010258)))

(declare-fun res!2049753 () Bool)

(assert (=> b!4818008 (=> (not res!2049753) (not e!3010258))))

(declare-fun dynLambda!22171 (Int K!16444) Bool)

(assert (=> b!4818008 (= res!2049753 (dynLambda!22171 lambda!234862 (h!61220 lt!1967899)))))

(declare-fun b!4818009 () Bool)

(assert (=> b!4818009 (= e!3010258 (forall!12495 (t!362408 lt!1967899) lambda!234862))))

(assert (= (and d!1542296 (not res!2049752)) b!4818008))

(assert (= (and b!4818008 res!2049753) b!4818009))

(declare-fun b_lambda!188683 () Bool)

(assert (=> (not b_lambda!188683) (not b!4818008)))

(declare-fun m!5804840 () Bool)

(assert (=> b!4818008 m!5804840))

(declare-fun m!5804842 () Bool)

(assert (=> b!4818009 m!5804842))

(assert (=> b!4817497 d!1542296))

(declare-fun d!1542298 () Bool)

(declare-fun c!821190 () Bool)

(assert (=> d!1542298 (= c!821190 ((_ is Nil!54788) e!3009756))))

(declare-fun e!3010261 () (InoxSet K!16444))

(assert (=> d!1542298 (= (content!9804 e!3009756) e!3010261)))

(declare-fun b!4818014 () Bool)

(assert (=> b!4818014 (= e!3010261 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818015 () Bool)

(assert (=> b!4818015 (= e!3010261 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 e!3009756) true) (content!9804 (t!362408 e!3009756))))))

(assert (= (and d!1542298 c!821190) b!4818014))

(assert (= (and d!1542298 (not c!821190)) b!4818015))

(declare-fun m!5804844 () Bool)

(assert (=> b!4818015 m!5804844))

(declare-fun m!5804846 () Bool)

(assert (=> b!4818015 m!5804846))

(assert (=> d!1541908 d!1542298))

(declare-fun d!1542300 () Bool)

(assert (=> d!1542300 (= (isEmpty!29606 lt!1967907) (not ((_ is Some!13441) lt!1967907)))))

(assert (=> d!1541888 d!1542300))

(declare-fun d!1542302 () Bool)

(declare-fun res!2049754 () Bool)

(declare-fun e!3010262 () Bool)

(assert (=> d!1542302 (=> res!2049754 e!3010262)))

(assert (=> d!1542302 (= res!2049754 (not ((_ is Cons!54785) (t!362405 lt!1967689))))))

(assert (=> d!1542302 (= (noDuplicateKeys!2413 (t!362405 lt!1967689)) e!3010262)))

(declare-fun b!4818016 () Bool)

(declare-fun e!3010263 () Bool)

(assert (=> b!4818016 (= e!3010262 e!3010263)))

(declare-fun res!2049755 () Bool)

(assert (=> b!4818016 (=> (not res!2049755) (not e!3010263))))

(assert (=> b!4818016 (= res!2049755 (not (containsKey!4255 (t!362405 (t!362405 lt!1967689)) (_1!32223 (h!61217 (t!362405 lt!1967689))))))))

(declare-fun b!4818017 () Bool)

(assert (=> b!4818017 (= e!3010263 (noDuplicateKeys!2413 (t!362405 (t!362405 lt!1967689))))))

(assert (= (and d!1542302 (not res!2049754)) b!4818016))

(assert (= (and b!4818016 res!2049755) b!4818017))

(declare-fun m!5804848 () Bool)

(assert (=> b!4818016 m!5804848))

(declare-fun m!5804850 () Bool)

(assert (=> b!4818017 m!5804850))

(assert (=> d!1541888 d!1542302))

(declare-fun d!1542304 () Bool)

(declare-fun res!2049756 () Bool)

(declare-fun e!3010264 () Bool)

(assert (=> d!1542304 (=> res!2049756 e!3010264)))

(assert (=> d!1542304 (= res!2049756 (and ((_ is Cons!54785) (t!362405 (_2!32224 lt!1967696))) (= (_1!32223 (h!61217 (t!362405 (_2!32224 lt!1967696)))) (_1!32223 (h!61217 (_2!32224 lt!1967696))))))))

(assert (=> d!1542304 (= (containsKey!4255 (t!362405 (_2!32224 lt!1967696)) (_1!32223 (h!61217 (_2!32224 lt!1967696)))) e!3010264)))

(declare-fun b!4818018 () Bool)

(declare-fun e!3010265 () Bool)

(assert (=> b!4818018 (= e!3010264 e!3010265)))

(declare-fun res!2049757 () Bool)

(assert (=> b!4818018 (=> (not res!2049757) (not e!3010265))))

(assert (=> b!4818018 (= res!2049757 ((_ is Cons!54785) (t!362405 (_2!32224 lt!1967696))))))

(declare-fun b!4818019 () Bool)

(assert (=> b!4818019 (= e!3010265 (containsKey!4255 (t!362405 (t!362405 (_2!32224 lt!1967696))) (_1!32223 (h!61217 (_2!32224 lt!1967696)))))))

(assert (= (and d!1542304 (not res!2049756)) b!4818018))

(assert (= (and b!4818018 res!2049757) b!4818019))

(declare-fun m!5804852 () Bool)

(assert (=> b!4818019 m!5804852))

(assert (=> b!4817706 d!1542304))

(declare-fun d!1542306 () Bool)

(assert (=> d!1542306 (= (invariantList!1794 (toList!7348 lt!1968028)) (noDuplicatedKeys!464 (toList!7348 lt!1968028)))))

(declare-fun bs!1161007 () Bool)

(assert (= bs!1161007 d!1542306))

(declare-fun m!5804854 () Bool)

(assert (=> bs!1161007 m!5804854))

(assert (=> d!1542000 d!1542306))

(declare-fun d!1542308 () Bool)

(declare-fun res!2049758 () Bool)

(declare-fun e!3010266 () Bool)

(assert (=> d!1542308 (=> res!2049758 e!3010266)))

(assert (=> d!1542308 (= res!2049758 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542308 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234912) e!3010266)))

(declare-fun b!4818020 () Bool)

(declare-fun e!3010267 () Bool)

(assert (=> b!4818020 (= e!3010266 e!3010267)))

(declare-fun res!2049759 () Bool)

(assert (=> b!4818020 (=> (not res!2049759) (not e!3010267))))

(assert (=> b!4818020 (= res!2049759 (dynLambda!22167 lambda!234912 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4818021 () Bool)

(assert (=> b!4818021 (= e!3010267 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234912))))

(assert (= (and d!1542308 (not res!2049758)) b!4818020))

(assert (= (and b!4818020 res!2049759) b!4818021))

(declare-fun b_lambda!188685 () Bool)

(assert (=> (not b_lambda!188685) (not b!4818020)))

(declare-fun m!5804856 () Bool)

(assert (=> b!4818020 m!5804856))

(declare-fun m!5804858 () Bool)

(assert (=> b!4818021 m!5804858))

(assert (=> d!1542000 d!1542308))

(declare-fun b!4818024 () Bool)

(declare-fun e!3010269 () Option!13445)

(assert (=> b!4818024 (= e!3010269 (getValueByKey!2572 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(declare-fun b!4818022 () Bool)

(declare-fun e!3010268 () Option!13445)

(assert (=> b!4818022 (= e!3010268 (Some!13444 (_2!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(declare-fun d!1542310 () Bool)

(declare-fun c!821191 () Bool)

(assert (=> d!1542310 (= c!821191 (and ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) key!5322)))))

(assert (=> d!1542310 (= (getValueByKey!2572 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322) e!3010268)))

(declare-fun b!4818025 () Bool)

(assert (=> b!4818025 (= e!3010269 None!13444)))

(declare-fun b!4818023 () Bool)

(assert (=> b!4818023 (= e!3010268 e!3010269)))

(declare-fun c!821192 () Bool)

(assert (=> b!4818023 (= c!821192 (and ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (not (= (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) key!5322))))))

(assert (= (and d!1542310 c!821191) b!4818022))

(assert (= (and d!1542310 (not c!821191)) b!4818023))

(assert (= (and b!4818023 c!821192) b!4818024))

(assert (= (and b!4818023 (not c!821192)) b!4818025))

(declare-fun m!5804860 () Bool)

(assert (=> b!4818024 m!5804860))

(assert (=> b!4817539 d!1542310))

(declare-fun d!1542312 () Bool)

(declare-fun res!2049760 () Bool)

(declare-fun e!3010270 () Bool)

(assert (=> d!1542312 (=> res!2049760 e!3010270)))

(assert (=> d!1542312 (= res!2049760 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542312 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234801) e!3010270)))

(declare-fun b!4818026 () Bool)

(declare-fun e!3010271 () Bool)

(assert (=> b!4818026 (= e!3010270 e!3010271)))

(declare-fun res!2049761 () Bool)

(assert (=> b!4818026 (=> (not res!2049761) (not e!3010271))))

(assert (=> b!4818026 (= res!2049761 (dynLambda!22167 lambda!234801 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4818027 () Bool)

(assert (=> b!4818027 (= e!3010271 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234801))))

(assert (= (and d!1542312 (not res!2049760)) b!4818026))

(assert (= (and b!4818026 res!2049761) b!4818027))

(declare-fun b_lambda!188687 () Bool)

(assert (=> (not b_lambda!188687) (not b!4818026)))

(declare-fun m!5804862 () Bool)

(assert (=> b!4818026 m!5804862))

(declare-fun m!5804864 () Bool)

(assert (=> b!4818027 m!5804864))

(assert (=> b!4817666 d!1542312))

(declare-fun d!1542314 () Bool)

(declare-fun res!2049762 () Bool)

(declare-fun e!3010272 () Bool)

(assert (=> d!1542314 (=> res!2049762 e!3010272)))

(assert (=> d!1542314 (= res!2049762 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542314 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234804) e!3010272)))

(declare-fun b!4818028 () Bool)

(declare-fun e!3010273 () Bool)

(assert (=> b!4818028 (= e!3010272 e!3010273)))

(declare-fun res!2049763 () Bool)

(assert (=> b!4818028 (=> (not res!2049763) (not e!3010273))))

(assert (=> b!4818028 (= res!2049763 (dynLambda!22167 lambda!234804 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4818029 () Bool)

(assert (=> b!4818029 (= e!3010273 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234804))))

(assert (= (and d!1542314 (not res!2049762)) b!4818028))

(assert (= (and b!4818028 res!2049763) b!4818029))

(declare-fun b_lambda!188689 () Bool)

(assert (=> (not b_lambda!188689) (not b!4818028)))

(declare-fun m!5804866 () Bool)

(assert (=> b!4818028 m!5804866))

(declare-fun m!5804868 () Bool)

(assert (=> b!4818029 m!5804868))

(assert (=> b!4817544 d!1542314))

(declare-fun d!1542316 () Bool)

(declare-fun c!821193 () Bool)

(assert (=> d!1542316 (= c!821193 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(declare-fun e!3010274 () (InoxSet tuple2!57860))

(assert (=> d!1542316 (= (content!9801 (t!362406 (toList!7347 lm!2251))) e!3010274)))

(declare-fun b!4818030 () Bool)

(assert (=> b!4818030 (= e!3010274 ((as const (Array tuple2!57860 Bool)) false))))

(declare-fun b!4818031 () Bool)

(assert (=> b!4818031 (= e!3010274 ((_ map or) (store ((as const (Array tuple2!57860 Bool)) false) (h!61218 (t!362406 (toList!7347 lm!2251))) true) (content!9801 (t!362406 (t!362406 (toList!7347 lm!2251))))))))

(assert (= (and d!1542316 c!821193) b!4818030))

(assert (= (and d!1542316 (not c!821193)) b!4818031))

(declare-fun m!5804870 () Bool)

(assert (=> b!4818031 m!5804870))

(assert (=> b!4818031 m!5804510))

(assert (=> b!4817645 d!1542316))

(declare-fun bs!1161008 () Bool)

(declare-fun b!4818034 () Bool)

(assert (= bs!1161008 (and b!4818034 b!4817685)))

(declare-fun lambda!234955 () Int)

(assert (=> bs!1161008 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234955 lambda!234909))))

(declare-fun bs!1161009 () Bool)

(assert (= bs!1161009 (and b!4818034 d!1542292)))

(assert (=> bs!1161009 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968007) (= lambda!234955 lambda!234954))))

(declare-fun bs!1161010 () Bool)

(assert (= bs!1161010 (and b!4818034 d!1541998)))

(assert (=> bs!1161010 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968020) (= lambda!234955 lambda!234911))))

(declare-fun bs!1161011 () Bool)

(assert (= bs!1161011 (and b!4818034 d!1542156)))

(assert (=> bs!1161011 (not (= lambda!234955 lambda!234934))))

(declare-fun bs!1161012 () Bool)

(assert (= bs!1161012 (and b!4818034 b!4817956)))

(assert (=> bs!1161012 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234955 lambda!234946))))

(declare-fun bs!1161013 () Bool)

(assert (= bs!1161013 (and b!4818034 b!4817687)))

(assert (=> bs!1161013 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234955 lambda!234908))))

(declare-fun bs!1161014 () Bool)

(assert (= bs!1161014 (and b!4818034 d!1542226)))

(assert (=> bs!1161014 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968184) (= lambda!234955 lambda!234949))))

(declare-fun bs!1161015 () Bool)

(assert (= bs!1161015 (and b!4818034 b!4817954)))

(assert (=> bs!1161015 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234955 lambda!234947))))

(assert (=> bs!1161008 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968007) (= lambda!234955 lambda!234910))))

(declare-fun bs!1161016 () Bool)

(assert (= bs!1161016 (and b!4818034 d!1542174)))

(assert (=> bs!1161016 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234955 lambda!234937))))

(assert (=> bs!1161015 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968171) (= lambda!234955 lambda!234948))))

(assert (=> b!4818034 true))

(declare-fun bs!1161017 () Bool)

(declare-fun b!4818032 () Bool)

(assert (= bs!1161017 (and b!4818032 b!4817685)))

(declare-fun lambda!234956 () Int)

(assert (=> bs!1161017 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234956 lambda!234909))))

(declare-fun bs!1161018 () Bool)

(assert (= bs!1161018 (and b!4818032 d!1542292)))

(assert (=> bs!1161018 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968007) (= lambda!234956 lambda!234954))))

(declare-fun bs!1161019 () Bool)

(assert (= bs!1161019 (and b!4818032 d!1541998)))

(assert (=> bs!1161019 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968020) (= lambda!234956 lambda!234911))))

(declare-fun bs!1161020 () Bool)

(assert (= bs!1161020 (and b!4818032 d!1542156)))

(assert (=> bs!1161020 (not (= lambda!234956 lambda!234934))))

(declare-fun bs!1161021 () Bool)

(assert (= bs!1161021 (and b!4818032 b!4817956)))

(assert (=> bs!1161021 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234956 lambda!234946))))

(declare-fun bs!1161022 () Bool)

(assert (= bs!1161022 (and b!4818032 b!4817687)))

(assert (=> bs!1161022 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234956 lambda!234908))))

(declare-fun bs!1161023 () Bool)

(assert (= bs!1161023 (and b!4818032 d!1542226)))

(assert (=> bs!1161023 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968184) (= lambda!234956 lambda!234949))))

(declare-fun bs!1161024 () Bool)

(assert (= bs!1161024 (and b!4818032 b!4817954)))

(assert (=> bs!1161024 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234956 lambda!234947))))

(assert (=> bs!1161017 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968007) (= lambda!234956 lambda!234910))))

(declare-fun bs!1161025 () Bool)

(assert (= bs!1161025 (and b!4818032 d!1542174)))

(assert (=> bs!1161025 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234956 lambda!234937))))

(assert (=> bs!1161024 (= (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968171) (= lambda!234956 lambda!234948))))

(declare-fun bs!1161026 () Bool)

(assert (= bs!1161026 (and b!4818032 b!4818034)))

(assert (=> bs!1161026 (= lambda!234956 lambda!234955)))

(assert (=> b!4818032 true))

(declare-fun lt!1968207 () ListMap!6761)

(declare-fun lambda!234957 () Int)

(assert (=> bs!1161017 (= (= lt!1968207 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234957 lambda!234909))))

(assert (=> b!4818032 (= (= lt!1968207 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (= lambda!234957 lambda!234956))))

(assert (=> bs!1161018 (= (= lt!1968207 lt!1968007) (= lambda!234957 lambda!234954))))

(assert (=> bs!1161019 (= (= lt!1968207 lt!1968020) (= lambda!234957 lambda!234911))))

(assert (=> bs!1161020 (not (= lambda!234957 lambda!234934))))

(assert (=> bs!1161021 (= (= lt!1968207 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234957 lambda!234946))))

(assert (=> bs!1161022 (= (= lt!1968207 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234957 lambda!234908))))

(assert (=> bs!1161023 (= (= lt!1968207 lt!1968184) (= lambda!234957 lambda!234949))))

(assert (=> bs!1161024 (= (= lt!1968207 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234957 lambda!234947))))

(assert (=> bs!1161017 (= (= lt!1968207 lt!1968007) (= lambda!234957 lambda!234910))))

(assert (=> bs!1161025 (= (= lt!1968207 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234957 lambda!234937))))

(assert (=> bs!1161024 (= (= lt!1968207 lt!1968171) (= lambda!234957 lambda!234948))))

(assert (=> bs!1161026 (= (= lt!1968207 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (= lambda!234957 lambda!234955))))

(assert (=> b!4818032 true))

(declare-fun bs!1161027 () Bool)

(declare-fun d!1542318 () Bool)

(assert (= bs!1161027 (and d!1542318 b!4817685)))

(declare-fun lt!1968220 () ListMap!6761)

(declare-fun lambda!234958 () Int)

(assert (=> bs!1161027 (= (= lt!1968220 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234958 lambda!234909))))

(declare-fun bs!1161028 () Bool)

(assert (= bs!1161028 (and d!1542318 b!4818032)))

(assert (=> bs!1161028 (= (= lt!1968220 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (= lambda!234958 lambda!234956))))

(declare-fun bs!1161029 () Bool)

(assert (= bs!1161029 (and d!1542318 d!1542292)))

(assert (=> bs!1161029 (= (= lt!1968220 lt!1968007) (= lambda!234958 lambda!234954))))

(declare-fun bs!1161030 () Bool)

(assert (= bs!1161030 (and d!1542318 d!1541998)))

(assert (=> bs!1161030 (= (= lt!1968220 lt!1968020) (= lambda!234958 lambda!234911))))

(declare-fun bs!1161031 () Bool)

(assert (= bs!1161031 (and d!1542318 d!1542156)))

(assert (=> bs!1161031 (not (= lambda!234958 lambda!234934))))

(declare-fun bs!1161032 () Bool)

(assert (= bs!1161032 (and d!1542318 b!4817956)))

(assert (=> bs!1161032 (= (= lt!1968220 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234958 lambda!234946))))

(declare-fun bs!1161033 () Bool)

(assert (= bs!1161033 (and d!1542318 b!4817687)))

(assert (=> bs!1161033 (= (= lt!1968220 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234958 lambda!234908))))

(declare-fun bs!1161034 () Bool)

(assert (= bs!1161034 (and d!1542318 d!1542226)))

(assert (=> bs!1161034 (= (= lt!1968220 lt!1968184) (= lambda!234958 lambda!234949))))

(declare-fun bs!1161035 () Bool)

(assert (= bs!1161035 (and d!1542318 b!4817954)))

(assert (=> bs!1161035 (= (= lt!1968220 (+!2521 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (= lambda!234958 lambda!234947))))

(assert (=> bs!1161027 (= (= lt!1968220 lt!1968007) (= lambda!234958 lambda!234910))))

(declare-fun bs!1161036 () Bool)

(assert (= bs!1161036 (and d!1542318 d!1542174)))

(assert (=> bs!1161036 (= (= lt!1968220 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (= lambda!234958 lambda!234937))))

(declare-fun bs!1161037 () Bool)

(assert (= bs!1161037 (and d!1542318 b!4818034)))

(assert (=> bs!1161037 (= (= lt!1968220 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (= lambda!234958 lambda!234955))))

(assert (=> bs!1161028 (= (= lt!1968220 lt!1968207) (= lambda!234958 lambda!234957))))

(assert (=> bs!1161035 (= (= lt!1968220 lt!1968171) (= lambda!234958 lambda!234948))))

(assert (=> d!1542318 true))

(declare-fun e!3010276 () Bool)

(assert (=> d!1542318 e!3010276))

(declare-fun res!2049765 () Bool)

(assert (=> d!1542318 (=> (not res!2049765) (not e!3010276))))

(assert (=> d!1542318 (= res!2049765 (forall!12496 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lambda!234958))))

(declare-fun e!3010277 () ListMap!6761)

(assert (=> d!1542318 (= lt!1968220 e!3010277)))

(declare-fun c!821194 () Bool)

(assert (=> d!1542318 (= c!821194 ((_ is Nil!54785) (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542318 (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1542318 (= (addToMapMapFromBucket!1771 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) lt!1968220)))

(assert (=> b!4818032 (= e!3010277 lt!1968207)))

(declare-fun lt!1968216 () ListMap!6761)

(assert (=> b!4818032 (= lt!1968216 (+!2521 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(assert (=> b!4818032 (= lt!1968207 (addToMapMapFromBucket!1771 (t!362405 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))) (+!2521 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))))

(declare-fun lt!1968222 () Unit!142036)

(declare-fun call!336042 () Unit!142036)

(assert (=> b!4818032 (= lt!1968222 call!336042)))

(assert (=> b!4818032 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) lambda!234956)))

(declare-fun lt!1968213 () Unit!142036)

(assert (=> b!4818032 (= lt!1968213 lt!1968222)))

(declare-fun call!336043 () Bool)

(assert (=> b!4818032 call!336043))

(declare-fun lt!1968210 () Unit!142036)

(declare-fun Unit!142112 () Unit!142036)

(assert (=> b!4818032 (= lt!1968210 Unit!142112)))

(assert (=> b!4818032 (forall!12496 (t!362405 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))) lambda!234957)))

(declare-fun lt!1968217 () Unit!142036)

(declare-fun Unit!142113 () Unit!142036)

(assert (=> b!4818032 (= lt!1968217 Unit!142113)))

(declare-fun lt!1968208 () Unit!142036)

(declare-fun Unit!142114 () Unit!142036)

(assert (=> b!4818032 (= lt!1968208 Unit!142114)))

(declare-fun lt!1968223 () Unit!142036)

(assert (=> b!4818032 (= lt!1968223 (forallContained!4356 (toList!7348 lt!1968216) lambda!234957 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(assert (=> b!4818032 (contains!18618 lt!1968216 (_1!32223 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968211 () Unit!142036)

(declare-fun Unit!142115 () Unit!142036)

(assert (=> b!4818032 (= lt!1968211 Unit!142115)))

(assert (=> b!4818032 (contains!18618 lt!1968207 (_1!32223 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968224 () Unit!142036)

(declare-fun Unit!142116 () Unit!142036)

(assert (=> b!4818032 (= lt!1968224 Unit!142116)))

(assert (=> b!4818032 (forall!12496 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lambda!234957)))

(declare-fun lt!1968227 () Unit!142036)

(declare-fun Unit!142117 () Unit!142036)

(assert (=> b!4818032 (= lt!1968227 Unit!142117)))

(assert (=> b!4818032 (forall!12496 (toList!7348 lt!1968216) lambda!234957)))

(declare-fun lt!1968215 () Unit!142036)

(declare-fun Unit!142118 () Unit!142036)

(assert (=> b!4818032 (= lt!1968215 Unit!142118)))

(declare-fun lt!1968221 () Unit!142036)

(declare-fun Unit!142119 () Unit!142036)

(assert (=> b!4818032 (= lt!1968221 Unit!142119)))

(declare-fun lt!1968226 () Unit!142036)

(assert (=> b!4818032 (= lt!1968226 (addForallContainsKeyThenBeforeAdding!975 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968207 (_1!32223 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))) (_2!32223 (h!61217 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))))

(declare-fun call!336044 () Bool)

(assert (=> b!4818032 call!336044))

(declare-fun lt!1968218 () Unit!142036)

(assert (=> b!4818032 (= lt!1968218 lt!1968226)))

(assert (=> b!4818032 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) lambda!234957)))

(declare-fun lt!1968212 () Unit!142036)

(declare-fun Unit!142120 () Unit!142036)

(assert (=> b!4818032 (= lt!1968212 Unit!142120)))

(declare-fun res!2049764 () Bool)

(assert (=> b!4818032 (= res!2049764 (forall!12496 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lambda!234957))))

(declare-fun e!3010275 () Bool)

(assert (=> b!4818032 (=> (not res!2049764) (not e!3010275))))

(assert (=> b!4818032 e!3010275))

(declare-fun lt!1968209 () Unit!142036)

(declare-fun Unit!142121 () Unit!142036)

(assert (=> b!4818032 (= lt!1968209 Unit!142121)))

(declare-fun b!4818033 () Bool)

(declare-fun res!2049766 () Bool)

(assert (=> b!4818033 (=> (not res!2049766) (not e!3010276))))

(assert (=> b!4818033 (= res!2049766 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) lambda!234958))))

(declare-fun bm!336037 () Bool)

(assert (=> bm!336037 (= call!336042 (lemmaContainsAllItsOwnKeys!976 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))))))

(declare-fun bm!336038 () Bool)

(assert (=> bm!336038 (= call!336043 (forall!12496 (ite c!821194 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (toList!7348 lt!1968216)) (ite c!821194 lambda!234955 lambda!234957)))))

(assert (=> b!4818034 (= e!3010277 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun lt!1968225 () Unit!142036)

(assert (=> b!4818034 (= lt!1968225 call!336042)))

(assert (=> b!4818034 call!336043))

(declare-fun lt!1968214 () Unit!142036)

(assert (=> b!4818034 (= lt!1968214 lt!1968225)))

(assert (=> b!4818034 call!336044))

(declare-fun lt!1968219 () Unit!142036)

(declare-fun Unit!142122 () Unit!142036)

(assert (=> b!4818034 (= lt!1968219 Unit!142122)))

(declare-fun b!4818035 () Bool)

(assert (=> b!4818035 (= e!3010275 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) lambda!234957))))

(declare-fun b!4818036 () Bool)

(assert (=> b!4818036 (= e!3010276 (invariantList!1794 (toList!7348 lt!1968220)))))

(declare-fun bm!336039 () Bool)

(assert (=> bm!336039 (= call!336044 (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251))))) (ite c!821194 lambda!234955 lambda!234957)))))

(assert (= (and d!1542318 c!821194) b!4818034))

(assert (= (and d!1542318 (not c!821194)) b!4818032))

(assert (= (and b!4818032 res!2049764) b!4818035))

(assert (= (or b!4818034 b!4818032) bm!336037))

(assert (= (or b!4818034 b!4818032) bm!336038))

(assert (= (or b!4818034 b!4818032) bm!336039))

(assert (= (and d!1542318 res!2049765) b!4818033))

(assert (= (and b!4818033 res!2049766) b!4818036))

(declare-fun m!5804872 () Bool)

(assert (=> b!4818036 m!5804872))

(declare-fun m!5804874 () Bool)

(assert (=> bm!336038 m!5804874))

(assert (=> bm!336037 m!5804216))

(declare-fun m!5804876 () Bool)

(assert (=> bm!336037 m!5804876))

(declare-fun m!5804878 () Bool)

(assert (=> b!4818035 m!5804878))

(declare-fun m!5804880 () Bool)

(assert (=> b!4818032 m!5804880))

(declare-fun m!5804882 () Bool)

(assert (=> b!4818032 m!5804882))

(declare-fun m!5804884 () Bool)

(assert (=> b!4818032 m!5804884))

(declare-fun m!5804886 () Bool)

(assert (=> b!4818032 m!5804886))

(assert (=> b!4818032 m!5804216))

(assert (=> b!4818032 m!5804880))

(declare-fun m!5804888 () Bool)

(assert (=> b!4818032 m!5804888))

(assert (=> b!4818032 m!5804886))

(declare-fun m!5804890 () Bool)

(assert (=> b!4818032 m!5804890))

(declare-fun m!5804892 () Bool)

(assert (=> b!4818032 m!5804892))

(declare-fun m!5804894 () Bool)

(assert (=> b!4818032 m!5804894))

(assert (=> b!4818032 m!5804216))

(declare-fun m!5804896 () Bool)

(assert (=> b!4818032 m!5804896))

(declare-fun m!5804898 () Bool)

(assert (=> b!4818032 m!5804898))

(assert (=> b!4818032 m!5804878))

(declare-fun m!5804900 () Bool)

(assert (=> b!4818033 m!5804900))

(declare-fun m!5804902 () Bool)

(assert (=> d!1542318 m!5804902))

(assert (=> d!1542318 m!5804246))

(declare-fun m!5804904 () Bool)

(assert (=> bm!336039 m!5804904))

(assert (=> b!4817692 d!1542318))

(declare-fun bs!1161038 () Bool)

(declare-fun d!1542320 () Bool)

(assert (= bs!1161038 (and d!1542320 d!1541806)))

(declare-fun lambda!234959 () Int)

(assert (=> bs!1161038 (= lambda!234959 lambda!234801)))

(declare-fun bs!1161039 () Bool)

(assert (= bs!1161039 (and d!1542320 d!1541814)))

(assert (=> bs!1161039 (not (= lambda!234959 lambda!234804))))

(declare-fun bs!1161040 () Bool)

(assert (= bs!1161040 (and d!1542320 d!1541832)))

(assert (=> bs!1161040 (= lambda!234959 lambda!234810)))

(declare-fun bs!1161041 () Bool)

(assert (= bs!1161041 (and d!1542320 start!498654)))

(assert (=> bs!1161041 (= lambda!234959 lambda!234786)))

(declare-fun bs!1161042 () Bool)

(assert (= bs!1161042 (and d!1542320 d!1542000)))

(assert (=> bs!1161042 (= lambda!234959 lambda!234912)))

(declare-fun bs!1161043 () Bool)

(assert (= bs!1161043 (and d!1542320 d!1541820)))

(assert (=> bs!1161043 (= lambda!234959 lambda!234807)))

(declare-fun lt!1968228 () ListMap!6761)

(assert (=> d!1542320 (invariantList!1794 (toList!7348 lt!1968228))))

(declare-fun e!3010278 () ListMap!6761)

(assert (=> d!1542320 (= lt!1968228 e!3010278)))

(declare-fun c!821195 () Bool)

(assert (=> d!1542320 (= c!821195 ((_ is Cons!54786) (t!362406 (t!362406 (toList!7347 lm!2251)))))))

(assert (=> d!1542320 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234959)))

(assert (=> d!1542320 (= (extractMap!2632 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1968228)))

(declare-fun b!4818037 () Bool)

(assert (=> b!4818037 (= e!3010278 (addToMapMapFromBucket!1771 (_2!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251))))) (extractMap!2632 (t!362406 (t!362406 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4818038 () Bool)

(assert (=> b!4818038 (= e!3010278 (ListMap!6762 Nil!54785))))

(assert (= (and d!1542320 c!821195) b!4818037))

(assert (= (and d!1542320 (not c!821195)) b!4818038))

(declare-fun m!5804906 () Bool)

(assert (=> d!1542320 m!5804906))

(declare-fun m!5804908 () Bool)

(assert (=> d!1542320 m!5804908))

(declare-fun m!5804910 () Bool)

(assert (=> b!4818037 m!5804910))

(assert (=> b!4818037 m!5804910))

(declare-fun m!5804912 () Bool)

(assert (=> b!4818037 m!5804912))

(assert (=> b!4817692 d!1542320))

(declare-fun d!1542322 () Bool)

(declare-fun lt!1968229 () Bool)

(assert (=> d!1542322 (= lt!1968229 (select (content!9804 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(declare-fun e!3010280 () Bool)

(assert (=> d!1542322 (= lt!1968229 e!3010280)))

(declare-fun res!2049768 () Bool)

(assert (=> d!1542322 (=> (not res!2049768) (not e!3010280))))

(assert (=> d!1542322 (= res!2049768 ((_ is Cons!54788) (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> d!1542322 (= (contains!18621 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322) lt!1968229)))

(declare-fun b!4818039 () Bool)

(declare-fun e!3010279 () Bool)

(assert (=> b!4818039 (= e!3010280 e!3010279)))

(declare-fun res!2049767 () Bool)

(assert (=> b!4818039 (=> res!2049767 e!3010279)))

(assert (=> b!4818039 (= res!2049767 (= (h!61220 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(declare-fun b!4818040 () Bool)

(assert (=> b!4818040 (= e!3010279 (contains!18621 (t!362408 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(assert (= (and d!1542322 res!2049768) b!4818039))

(assert (= (and b!4818039 (not res!2049767)) b!4818040))

(assert (=> d!1542322 m!5803768))

(declare-fun m!5804914 () Bool)

(assert (=> d!1542322 m!5804914))

(declare-fun m!5804916 () Bool)

(assert (=> d!1542322 m!5804916))

(declare-fun m!5804918 () Bool)

(assert (=> b!4818040 m!5804918))

(assert (=> d!1541968 d!1542322))

(assert (=> d!1541968 d!1541926))

(declare-fun d!1542324 () Bool)

(assert (=> d!1542324 (contains!18621 (getKeysList!1141 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322)))

(assert (=> d!1542324 true))

(declare-fun _$14!1580 () Unit!142036)

(assert (=> d!1542324 (= (choose!34959 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) _$14!1580)))

(declare-fun bs!1161044 () Bool)

(assert (= bs!1161044 d!1542324))

(assert (=> bs!1161044 m!5803768))

(assert (=> bs!1161044 m!5803768))

(assert (=> bs!1161044 m!5804134))

(assert (=> d!1541968 d!1542324))

(declare-fun d!1542326 () Bool)

(assert (=> d!1542326 (= (invariantList!1794 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (noDuplicatedKeys!464 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun bs!1161045 () Bool)

(assert (= bs!1161045 d!1542326))

(declare-fun m!5804920 () Bool)

(assert (=> bs!1161045 m!5804920))

(assert (=> d!1541968 d!1542326))

(declare-fun d!1542328 () Bool)

(declare-fun lt!1968230 () Bool)

(assert (=> d!1542328 (= lt!1968230 (select (content!9805 (t!362405 lt!1967689)) (get!18749 lt!1967907)))))

(declare-fun e!3010282 () Bool)

(assert (=> d!1542328 (= lt!1968230 e!3010282)))

(declare-fun res!2049769 () Bool)

(assert (=> d!1542328 (=> (not res!2049769) (not e!3010282))))

(assert (=> d!1542328 (= res!2049769 ((_ is Cons!54785) (t!362405 lt!1967689)))))

(assert (=> d!1542328 (= (contains!18622 (t!362405 lt!1967689) (get!18749 lt!1967907)) lt!1968230)))

(declare-fun b!4818041 () Bool)

(declare-fun e!3010281 () Bool)

(assert (=> b!4818041 (= e!3010282 e!3010281)))

(declare-fun res!2049770 () Bool)

(assert (=> b!4818041 (=> res!2049770 e!3010281)))

(assert (=> b!4818041 (= res!2049770 (= (h!61217 (t!362405 lt!1967689)) (get!18749 lt!1967907)))))

(declare-fun b!4818042 () Bool)

(assert (=> b!4818042 (= e!3010281 (contains!18622 (t!362405 (t!362405 lt!1967689)) (get!18749 lt!1967907)))))

(assert (= (and d!1542328 res!2049769) b!4818041))

(assert (= (and b!4818041 (not res!2049770)) b!4818042))

(declare-fun m!5804922 () Bool)

(assert (=> d!1542328 m!5804922))

(assert (=> d!1542328 m!5803980))

(declare-fun m!5804924 () Bool)

(assert (=> d!1542328 m!5804924))

(assert (=> b!4818042 m!5803980))

(declare-fun m!5804926 () Bool)

(assert (=> b!4818042 m!5804926))

(assert (=> b!4817519 d!1542328))

(declare-fun d!1542330 () Bool)

(assert (=> d!1542330 (= (get!18749 lt!1967907) (v!49102 lt!1967907))))

(assert (=> b!4817519 d!1542330))

(assert (=> b!4817513 d!1542150))

(declare-fun d!1542332 () Bool)

(declare-fun lt!1968231 () Bool)

(assert (=> d!1542332 (= lt!1968231 (select (content!9801 (t!362406 (toList!7347 lm!2251))) (tuple2!57861 lt!1967690 lt!1967689)))))

(declare-fun e!3010283 () Bool)

(assert (=> d!1542332 (= lt!1968231 e!3010283)))

(declare-fun res!2049771 () Bool)

(assert (=> d!1542332 (=> (not res!2049771) (not e!3010283))))

(assert (=> d!1542332 (= res!2049771 ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542332 (= (contains!18616 (t!362406 (toList!7347 lm!2251)) (tuple2!57861 lt!1967690 lt!1967689)) lt!1968231)))

(declare-fun b!4818043 () Bool)

(declare-fun e!3010284 () Bool)

(assert (=> b!4818043 (= e!3010283 e!3010284)))

(declare-fun res!2049772 () Bool)

(assert (=> b!4818043 (=> res!2049772 e!3010284)))

(assert (=> b!4818043 (= res!2049772 (= (h!61218 (t!362406 (toList!7347 lm!2251))) (tuple2!57861 lt!1967690 lt!1967689)))))

(declare-fun b!4818044 () Bool)

(assert (=> b!4818044 (= e!3010284 (contains!18616 (t!362406 (t!362406 (toList!7347 lm!2251))) (tuple2!57861 lt!1967690 lt!1967689)))))

(assert (= (and d!1542332 res!2049771) b!4818043))

(assert (= (and b!4818043 (not res!2049772)) b!4818044))

(assert (=> d!1542332 m!5804058))

(declare-fun m!5804928 () Bool)

(assert (=> d!1542332 m!5804928))

(declare-fun m!5804930 () Bool)

(assert (=> b!4818044 m!5804930))

(assert (=> b!4817701 d!1542332))

(declare-fun d!1542334 () Bool)

(assert (=> d!1542334 (dynLambda!22171 lambda!234876 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(declare-fun lt!1968234 () Unit!142036)

(declare-fun choose!34970 (List!54912 Int K!16444) Unit!142036)

(assert (=> d!1542334 (= lt!1968234 (choose!34970 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lambda!234876 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun e!3010287 () Bool)

(assert (=> d!1542334 e!3010287))

(declare-fun res!2049775 () Bool)

(assert (=> d!1542334 (=> (not res!2049775) (not e!3010287))))

(assert (=> d!1542334 (= res!2049775 (forall!12495 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lambda!234876))))

(assert (=> d!1542334 (= (forallContained!4355 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lambda!234876 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) lt!1968234)))

(declare-fun b!4818047 () Bool)

(assert (=> b!4818047 (= e!3010287 (contains!18621 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542334 res!2049775) b!4818047))

(declare-fun b_lambda!188691 () Bool)

(assert (=> (not b_lambda!188691) (not d!1542334)))

(declare-fun m!5804932 () Bool)

(assert (=> d!1542334 m!5804932))

(assert (=> d!1542334 m!5804118))

(declare-fun m!5804934 () Bool)

(assert (=> d!1542334 m!5804934))

(assert (=> d!1542334 m!5804118))

(declare-fun m!5804936 () Bool)

(assert (=> d!1542334 m!5804936))

(assert (=> b!4818047 m!5804118))

(assert (=> b!4818047 m!5804120))

(assert (=> b!4817624 d!1542334))

(declare-fun bs!1161046 () Bool)

(declare-fun b!4818049 () Bool)

(assert (= bs!1161046 (and b!4818049 b!4817497)))

(declare-fun lambda!234960 () Int)

(assert (=> bs!1161046 (= (= (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234960 lambda!234862))))

(declare-fun bs!1161047 () Bool)

(assert (= bs!1161047 (and b!4818049 b!4817624)))

(assert (=> bs!1161047 (= (= (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234960 lambda!234876))))

(declare-fun bs!1161048 () Bool)

(assert (= bs!1161048 (and b!4818049 b!4817631)))

(assert (=> bs!1161048 (= (= (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234960 lambda!234877))))

(declare-fun bs!1161049 () Bool)

(assert (= bs!1161049 (and b!4818049 b!4817626)))

(assert (=> bs!1161049 (= (= (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234960 lambda!234878))))

(assert (=> b!4818049 true))

(declare-fun bs!1161050 () Bool)

(declare-fun b!4818056 () Bool)

(assert (= bs!1161050 (and b!4818056 b!4817626)))

(declare-fun lambda!234961 () Int)

(assert (=> bs!1161050 (= (= (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234961 lambda!234878))))

(declare-fun bs!1161051 () Bool)

(assert (= bs!1161051 (and b!4818056 b!4818049)))

(assert (=> bs!1161051 (= (= (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234961 lambda!234960))))

(declare-fun bs!1161052 () Bool)

(assert (= bs!1161052 (and b!4818056 b!4817497)))

(assert (=> bs!1161052 (= (= (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234961 lambda!234862))))

(declare-fun bs!1161053 () Bool)

(assert (= bs!1161053 (and b!4818056 b!4817624)))

(assert (=> bs!1161053 (= (= (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234961 lambda!234876))))

(declare-fun bs!1161054 () Bool)

(assert (= bs!1161054 (and b!4818056 b!4817631)))

(assert (=> bs!1161054 (= (= (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234961 lambda!234877))))

(assert (=> b!4818056 true))

(declare-fun bs!1161055 () Bool)

(declare-fun b!4818051 () Bool)

(assert (= bs!1161055 (and b!4818051 b!4817626)))

(declare-fun lambda!234962 () Int)

(assert (=> bs!1161055 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234962 lambda!234878))))

(declare-fun bs!1161056 () Bool)

(assert (= bs!1161056 (and b!4818051 b!4818049)))

(assert (=> bs!1161056 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234962 lambda!234960))))

(declare-fun bs!1161057 () Bool)

(assert (= bs!1161057 (and b!4818051 b!4817497)))

(assert (=> bs!1161057 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234962 lambda!234862))))

(declare-fun bs!1161058 () Bool)

(assert (= bs!1161058 (and b!4818051 b!4817624)))

(assert (=> bs!1161058 (= lambda!234962 lambda!234876)))

(declare-fun bs!1161059 () Bool)

(assert (= bs!1161059 (and b!4818051 b!4818056)))

(assert (=> bs!1161059 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))) (= lambda!234962 lambda!234961))))

(declare-fun bs!1161060 () Bool)

(assert (= bs!1161060 (and b!4818051 b!4817631)))

(assert (=> bs!1161060 (= (= (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234962 lambda!234877))))

(assert (=> b!4818051 true))

(declare-fun bs!1161061 () Bool)

(declare-fun b!4818054 () Bool)

(assert (= bs!1161061 (and b!4818054 b!4817498)))

(declare-fun lambda!234963 () Int)

(assert (=> bs!1161061 (= lambda!234963 lambda!234863)))

(declare-fun bs!1161062 () Bool)

(assert (= bs!1161062 (and b!4818054 b!4817629)))

(assert (=> bs!1161062 (= lambda!234963 lambda!234879)))

(declare-fun b!4818048 () Bool)

(declare-fun res!2049776 () Bool)

(declare-fun e!3010290 () Bool)

(assert (=> b!4818048 (=> (not res!2049776) (not e!3010290))))

(declare-fun lt!1968239 () List!54912)

(assert (=> b!4818048 (= res!2049776 (= (length!748 lt!1968239) (length!749 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (=> b!4818049 false))

(declare-fun lt!1968235 () Unit!142036)

(assert (=> b!4818049 (= lt!1968235 (forallContained!4355 (getKeysList!1141 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) lambda!234960 (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(declare-fun e!3010288 () Unit!142036)

(declare-fun Unit!142123 () Unit!142036)

(assert (=> b!4818049 (= e!3010288 Unit!142123)))

(declare-fun b!4818050 () Bool)

(assert (=> b!4818050 false))

(declare-fun e!3010289 () Unit!142036)

(declare-fun Unit!142124 () Unit!142036)

(assert (=> b!4818050 (= e!3010289 Unit!142124)))

(declare-fun d!1542336 () Bool)

(assert (=> d!1542336 e!3010290))

(declare-fun res!2049777 () Bool)

(assert (=> d!1542336 (=> (not res!2049777) (not e!3010290))))

(assert (=> d!1542336 (= res!2049777 (noDuplicate!946 lt!1968239))))

(declare-fun e!3010291 () List!54912)

(assert (=> d!1542336 (= lt!1968239 e!3010291)))

(declare-fun c!821196 () Bool)

(assert (=> d!1542336 (= c!821196 ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> d!1542336 (invariantList!1794 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1542336 (= (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lt!1968239)))

(declare-fun res!2049778 () Bool)

(assert (=> b!4818051 (=> (not res!2049778) (not e!3010290))))

(assert (=> b!4818051 (= res!2049778 (forall!12495 lt!1968239 lambda!234962))))

(declare-fun b!4818052 () Bool)

(declare-fun Unit!142125 () Unit!142036)

(assert (=> b!4818052 (= e!3010288 Unit!142125)))

(declare-fun b!4818053 () Bool)

(assert (=> b!4818053 (= e!3010291 Nil!54788)))

(assert (=> b!4818054 (= e!3010290 (= (content!9804 lt!1968239) (content!9804 (map!12523 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lambda!234963))))))

(declare-fun b!4818055 () Bool)

(declare-fun Unit!142126 () Unit!142036)

(assert (=> b!4818055 (= e!3010289 Unit!142126)))

(assert (=> b!4818056 (= e!3010291 (Cons!54788 (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (getKeysList!1141 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(declare-fun c!821198 () Bool)

(assert (=> b!4818056 (= c!821198 (containsKey!4254 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(declare-fun lt!1968238 () Unit!142036)

(assert (=> b!4818056 (= lt!1968238 e!3010289)))

(declare-fun c!821197 () Bool)

(assert (=> b!4818056 (= c!821197 (contains!18621 (getKeysList!1141 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(declare-fun lt!1968236 () Unit!142036)

(assert (=> b!4818056 (= lt!1968236 e!3010288)))

(declare-fun lt!1968237 () List!54912)

(assert (=> b!4818056 (= lt!1968237 (getKeysList!1141 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun lt!1968240 () Unit!142036)

(assert (=> b!4818056 (= lt!1968240 (lemmaForallContainsAddHeadPreserves!361 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lt!1968237 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (=> b!4818056 (forall!12495 lt!1968237 lambda!234961)))

(declare-fun lt!1968241 () Unit!142036)

(assert (=> b!4818056 (= lt!1968241 lt!1968240)))

(assert (= (and d!1542336 c!821196) b!4818056))

(assert (= (and d!1542336 (not c!821196)) b!4818053))

(assert (= (and b!4818056 c!821198) b!4818050))

(assert (= (and b!4818056 (not c!821198)) b!4818055))

(assert (= (and b!4818056 c!821197) b!4818049))

(assert (= (and b!4818056 (not c!821197)) b!4818052))

(assert (= (and d!1542336 res!2049777) b!4818048))

(assert (= (and b!4818048 res!2049776) b!4818051))

(assert (= (and b!4818051 res!2049778) b!4818054))

(declare-fun m!5804938 () Bool)

(assert (=> b!4818054 m!5804938))

(declare-fun m!5804940 () Bool)

(assert (=> b!4818054 m!5804940))

(assert (=> b!4818054 m!5804940))

(declare-fun m!5804942 () Bool)

(assert (=> b!4818054 m!5804942))

(declare-fun m!5804944 () Bool)

(assert (=> b!4818048 m!5804944))

(declare-fun m!5804946 () Bool)

(assert (=> b!4818048 m!5804946))

(declare-fun m!5804948 () Bool)

(assert (=> b!4818056 m!5804948))

(declare-fun m!5804950 () Bool)

(assert (=> b!4818056 m!5804950))

(declare-fun m!5804952 () Bool)

(assert (=> b!4818056 m!5804952))

(declare-fun m!5804954 () Bool)

(assert (=> b!4818056 m!5804954))

(declare-fun m!5804956 () Bool)

(assert (=> b!4818056 m!5804956))

(assert (=> b!4818056 m!5804954))

(assert (=> b!4818049 m!5804954))

(assert (=> b!4818049 m!5804954))

(declare-fun m!5804958 () Bool)

(assert (=> b!4818049 m!5804958))

(declare-fun m!5804960 () Bool)

(assert (=> d!1542336 m!5804960))

(declare-fun m!5804962 () Bool)

(assert (=> d!1542336 m!5804962))

(declare-fun m!5804964 () Bool)

(assert (=> b!4818051 m!5804964))

(assert (=> b!4817624 d!1542336))

(declare-fun d!1542338 () Bool)

(assert (=> d!1542338 true))

(assert (=> d!1542338 true))

(declare-fun res!2049781 () (_ BitVec 64))

(assert (=> d!1542338 (= (choose!34957 hashF!1486 key!5322) res!2049781)))

(assert (=> d!1541924 d!1542338))

(assert (=> b!4817709 d!1542302))

(declare-fun d!1542340 () Bool)

(declare-fun res!2049782 () Bool)

(declare-fun e!3010292 () Bool)

(assert (=> d!1542340 (=> res!2049782 e!3010292)))

(assert (=> d!1542340 (= res!2049782 (and ((_ is Cons!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (= (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(assert (=> d!1542340 (= (containsKey!4255 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) e!3010292)))

(declare-fun b!4818057 () Bool)

(declare-fun e!3010293 () Bool)

(assert (=> b!4818057 (= e!3010292 e!3010293)))

(declare-fun res!2049783 () Bool)

(assert (=> b!4818057 (=> (not res!2049783) (not e!3010293))))

(assert (=> b!4818057 (= res!2049783 ((_ is Cons!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun b!4818058 () Bool)

(assert (=> b!4818058 (= e!3010293 (containsKey!4255 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542340 (not res!2049782)) b!4818057))

(assert (= (and b!4818057 res!2049783) b!4818058))

(declare-fun m!5804966 () Bool)

(assert (=> b!4818058 m!5804966))

(assert (=> b!4817673 d!1542340))

(declare-fun b!4818060 () Bool)

(declare-fun e!3010294 () Option!13443)

(declare-fun e!3010295 () Option!13443)

(assert (=> b!4818060 (= e!3010294 e!3010295)))

(declare-fun c!821200 () Bool)

(assert (=> b!4818060 (= c!821200 (and ((_ is Cons!54786) (t!362406 (t!362406 (toList!7347 lm!2251)))) (not (= (_1!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251))))) lt!1967690))))))

(declare-fun b!4818059 () Bool)

(assert (=> b!4818059 (= e!3010294 (Some!13442 (_2!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4818062 () Bool)

(assert (=> b!4818062 (= e!3010295 None!13442)))

(declare-fun b!4818061 () Bool)

(assert (=> b!4818061 (= e!3010295 (getValueByKey!2570 (t!362406 (t!362406 (t!362406 (toList!7347 lm!2251)))) lt!1967690))))

(declare-fun d!1542342 () Bool)

(declare-fun c!821199 () Bool)

(assert (=> d!1542342 (= c!821199 (and ((_ is Cons!54786) (t!362406 (t!362406 (toList!7347 lm!2251)))) (= (_1!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251))))) lt!1967690)))))

(assert (=> d!1542342 (= (getValueByKey!2570 (t!362406 (t!362406 (toList!7347 lm!2251))) lt!1967690) e!3010294)))

(assert (= (and d!1542342 c!821199) b!4818059))

(assert (= (and d!1542342 (not c!821199)) b!4818060))

(assert (= (and b!4818060 c!821200) b!4818061))

(assert (= (and b!4818060 (not c!821200)) b!4818062))

(declare-fun m!5804968 () Bool)

(assert (=> b!4818061 m!5804968))

(assert (=> b!4817656 d!1542342))

(declare-fun d!1542344 () Bool)

(declare-fun c!821203 () Bool)

(assert (=> d!1542344 (= c!821203 ((_ is Nil!54785) lt!1967689))))

(declare-fun e!3010298 () (InoxSet tuple2!57858))

(assert (=> d!1542344 (= (content!9805 lt!1967689) e!3010298)))

(declare-fun b!4818067 () Bool)

(assert (=> b!4818067 (= e!3010298 ((as const (Array tuple2!57858 Bool)) false))))

(declare-fun b!4818068 () Bool)

(assert (=> b!4818068 (= e!3010298 ((_ map or) (store ((as const (Array tuple2!57858 Bool)) false) (h!61217 lt!1967689) true) (content!9805 (t!362405 lt!1967689))))))

(assert (= (and d!1542344 c!821203) b!4818067))

(assert (= (and d!1542344 (not c!821203)) b!4818068))

(declare-fun m!5804970 () Bool)

(assert (=> b!4818068 m!5804970))

(assert (=> b!4818068 m!5804922))

(assert (=> d!1542024 d!1542344))

(declare-fun b!4818069 () Bool)

(declare-fun e!3010300 () Bool)

(declare-fun e!3010302 () Bool)

(assert (=> b!4818069 (= e!3010300 e!3010302)))

(declare-fun res!2049786 () Bool)

(assert (=> b!4818069 (=> (not res!2049786) (not e!3010302))))

(declare-fun lt!1968242 () Option!13442)

(assert (=> b!4818069 (= res!2049786 (isDefined!10557 lt!1968242))))

(declare-fun b!4818071 () Bool)

(declare-fun e!3010301 () Option!13442)

(declare-fun e!3010303 () Option!13442)

(assert (=> b!4818071 (= e!3010301 e!3010303)))

(declare-fun c!821204 () Bool)

(assert (=> b!4818071 (= c!821204 ((_ is Cons!54785) (t!362405 (t!362405 lt!1967689))))))

(declare-fun b!4818072 () Bool)

(assert (=> b!4818072 (= e!3010303 (getPair!1020 (t!362405 (t!362405 (t!362405 lt!1967689))) key!5322))))

(declare-fun b!4818073 () Bool)

(assert (=> b!4818073 (= e!3010303 None!13441)))

(declare-fun b!4818074 () Bool)

(assert (=> b!4818074 (= e!3010301 (Some!13441 (h!61217 (t!362405 (t!362405 lt!1967689)))))))

(declare-fun b!4818075 () Bool)

(declare-fun res!2049787 () Bool)

(assert (=> b!4818075 (=> (not res!2049787) (not e!3010302))))

(assert (=> b!4818075 (= res!2049787 (= (_1!32223 (get!18749 lt!1968242)) key!5322))))

(declare-fun b!4818076 () Bool)

(assert (=> b!4818076 (= e!3010302 (contains!18622 (t!362405 (t!362405 lt!1967689)) (get!18749 lt!1968242)))))

(declare-fun d!1542346 () Bool)

(assert (=> d!1542346 e!3010300))

(declare-fun res!2049785 () Bool)

(assert (=> d!1542346 (=> res!2049785 e!3010300)))

(declare-fun e!3010299 () Bool)

(assert (=> d!1542346 (= res!2049785 e!3010299)))

(declare-fun res!2049784 () Bool)

(assert (=> d!1542346 (=> (not res!2049784) (not e!3010299))))

(assert (=> d!1542346 (= res!2049784 (isEmpty!29606 lt!1968242))))

(assert (=> d!1542346 (= lt!1968242 e!3010301)))

(declare-fun c!821205 () Bool)

(assert (=> d!1542346 (= c!821205 (and ((_ is Cons!54785) (t!362405 (t!362405 lt!1967689))) (= (_1!32223 (h!61217 (t!362405 (t!362405 lt!1967689)))) key!5322)))))

(assert (=> d!1542346 (noDuplicateKeys!2413 (t!362405 (t!362405 lt!1967689)))))

(assert (=> d!1542346 (= (getPair!1020 (t!362405 (t!362405 lt!1967689)) key!5322) lt!1968242)))

(declare-fun b!4818070 () Bool)

(assert (=> b!4818070 (= e!3010299 (not (containsKey!4255 (t!362405 (t!362405 lt!1967689)) key!5322)))))

(assert (= (and d!1542346 c!821205) b!4818074))

(assert (= (and d!1542346 (not c!821205)) b!4818071))

(assert (= (and b!4818071 c!821204) b!4818072))

(assert (= (and b!4818071 (not c!821204)) b!4818073))

(assert (= (and d!1542346 res!2049784) b!4818070))

(assert (= (and d!1542346 (not res!2049785)) b!4818069))

(assert (= (and b!4818069 res!2049786) b!4818075))

(assert (= (and b!4818075 res!2049787) b!4818076))

(declare-fun m!5804972 () Bool)

(assert (=> b!4818076 m!5804972))

(assert (=> b!4818076 m!5804972))

(declare-fun m!5804974 () Bool)

(assert (=> b!4818076 m!5804974))

(assert (=> b!4818075 m!5804972))

(assert (=> b!4818070 m!5804542))

(declare-fun m!5804976 () Bool)

(assert (=> d!1542346 m!5804976))

(assert (=> d!1542346 m!5804850))

(declare-fun m!5804978 () Bool)

(assert (=> b!4818069 m!5804978))

(declare-fun m!5804980 () Bool)

(assert (=> b!4818072 m!5804980))

(assert (=> b!4817515 d!1542346))

(declare-fun d!1542348 () Bool)

(declare-fun res!2049788 () Bool)

(declare-fun e!3010304 () Bool)

(assert (=> d!1542348 (=> res!2049788 e!3010304)))

(assert (=> d!1542348 (= res!2049788 ((_ is Nil!54788) lt!1967951))))

(assert (=> d!1542348 (= (forall!12495 lt!1967951 lambda!234878) e!3010304)))

(declare-fun b!4818077 () Bool)

(declare-fun e!3010305 () Bool)

(assert (=> b!4818077 (= e!3010304 e!3010305)))

(declare-fun res!2049789 () Bool)

(assert (=> b!4818077 (=> (not res!2049789) (not e!3010305))))

(assert (=> b!4818077 (= res!2049789 (dynLambda!22171 lambda!234878 (h!61220 lt!1967951)))))

(declare-fun b!4818078 () Bool)

(assert (=> b!4818078 (= e!3010305 (forall!12495 (t!362408 lt!1967951) lambda!234878))))

(assert (= (and d!1542348 (not res!2049788)) b!4818077))

(assert (= (and b!4818077 res!2049789) b!4818078))

(declare-fun b_lambda!188693 () Bool)

(assert (=> (not b_lambda!188693) (not b!4818077)))

(declare-fun m!5804982 () Bool)

(assert (=> b!4818077 m!5804982))

(declare-fun m!5804984 () Bool)

(assert (=> b!4818078 m!5804984))

(assert (=> b!4817626 d!1542348))

(assert (=> bs!1160839 d!1541996))

(declare-fun d!1542350 () Bool)

(declare-fun res!2049794 () Bool)

(declare-fun e!3010310 () Bool)

(assert (=> d!1542350 (=> res!2049794 e!3010310)))

(assert (=> d!1542350 (= res!2049794 ((_ is Nil!54788) lt!1967899))))

(assert (=> d!1542350 (= (noDuplicate!946 lt!1967899) e!3010310)))

(declare-fun b!4818083 () Bool)

(declare-fun e!3010311 () Bool)

(assert (=> b!4818083 (= e!3010310 e!3010311)))

(declare-fun res!2049795 () Bool)

(assert (=> b!4818083 (=> (not res!2049795) (not e!3010311))))

(assert (=> b!4818083 (= res!2049795 (not (contains!18621 (t!362408 lt!1967899) (h!61220 lt!1967899))))))

(declare-fun b!4818084 () Bool)

(assert (=> b!4818084 (= e!3010311 (noDuplicate!946 (t!362408 lt!1967899)))))

(assert (= (and d!1542350 (not res!2049794)) b!4818083))

(assert (= (and b!4818083 res!2049795) b!4818084))

(declare-fun m!5804986 () Bool)

(assert (=> b!4818083 m!5804986))

(declare-fun m!5804988 () Bool)

(assert (=> b!4818084 m!5804988))

(assert (=> d!1541886 d!1542350))

(assert (=> d!1541886 d!1541926))

(declare-fun d!1542352 () Bool)

(assert (=> d!1542352 (= (isEmpty!29610 (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690)) (not ((_ is Some!13442) (getValueByKey!2570 (toList!7347 lm!2251) lt!1967690))))))

(assert (=> d!1542012 d!1542352))

(declare-fun d!1542354 () Bool)

(declare-fun res!2049796 () Bool)

(declare-fun e!3010312 () Bool)

(assert (=> d!1542354 (=> res!2049796 e!3010312)))

(assert (=> d!1542354 (= res!2049796 (and ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) key!5322)))))

(assert (=> d!1542354 (= (containsKey!4254 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) key!5322) e!3010312)))

(declare-fun b!4818085 () Bool)

(declare-fun e!3010313 () Bool)

(assert (=> b!4818085 (= e!3010312 e!3010313)))

(declare-fun res!2049797 () Bool)

(assert (=> b!4818085 (=> (not res!2049797) (not e!3010313))))

(assert (=> b!4818085 (= res!2049797 ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(declare-fun b!4818086 () Bool)

(assert (=> b!4818086 (= e!3010313 (containsKey!4254 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) key!5322))))

(assert (= (and d!1542354 (not res!2049796)) b!4818085))

(assert (= (and b!4818085 res!2049797) b!4818086))

(declare-fun m!5804990 () Bool)

(assert (=> b!4818086 m!5804990))

(assert (=> b!4817573 d!1542354))

(assert (=> b!4817688 d!1542278))

(assert (=> bs!1160837 d!1541996))

(declare-fun d!1542356 () Bool)

(declare-fun res!2049798 () Bool)

(declare-fun e!3010314 () Bool)

(assert (=> d!1542356 (=> res!2049798 e!3010314)))

(assert (=> d!1542356 (= res!2049798 ((_ is Nil!54785) (ite c!821141 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (toList!7348 lt!1968016))))))

(assert (=> d!1542356 (= (forall!12496 (ite c!821141 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (toList!7348 lt!1968016)) (ite c!821141 lambda!234908 lambda!234910)) e!3010314)))

(declare-fun b!4818087 () Bool)

(declare-fun e!3010315 () Bool)

(assert (=> b!4818087 (= e!3010314 e!3010315)))

(declare-fun res!2049799 () Bool)

(assert (=> b!4818087 (=> (not res!2049799) (not e!3010315))))

(assert (=> b!4818087 (= res!2049799 (dynLambda!22170 (ite c!821141 lambda!234908 lambda!234910) (h!61217 (ite c!821141 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (toList!7348 lt!1968016)))))))

(declare-fun b!4818088 () Bool)

(assert (=> b!4818088 (= e!3010315 (forall!12496 (t!362405 (ite c!821141 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (toList!7348 lt!1968016))) (ite c!821141 lambda!234908 lambda!234910)))))

(assert (= (and d!1542356 (not res!2049798)) b!4818087))

(assert (= (and b!4818087 res!2049799) b!4818088))

(declare-fun b_lambda!188695 () Bool)

(assert (=> (not b_lambda!188695) (not b!4818087)))

(declare-fun m!5804992 () Bool)

(assert (=> b!4818087 m!5804992))

(declare-fun m!5804994 () Bool)

(assert (=> b!4818088 m!5804994))

(assert (=> bm!336022 d!1542356))

(declare-fun d!1542358 () Bool)

(declare-fun res!2049800 () Bool)

(declare-fun e!3010316 () Bool)

(assert (=> d!1542358 (=> res!2049800 e!3010316)))

(assert (=> d!1542358 (= res!2049800 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542358 (= (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) (ite c!821141 lambda!234908 lambda!234910)) e!3010316)))

(declare-fun b!4818089 () Bool)

(declare-fun e!3010317 () Bool)

(assert (=> b!4818089 (= e!3010316 e!3010317)))

(declare-fun res!2049801 () Bool)

(assert (=> b!4818089 (=> (not res!2049801) (not e!3010317))))

(assert (=> b!4818089 (= res!2049801 (dynLambda!22170 (ite c!821141 lambda!234908 lambda!234910) (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4818090 () Bool)

(assert (=> b!4818090 (= e!3010317 (forall!12496 (t!362405 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))) (ite c!821141 lambda!234908 lambda!234910)))))

(assert (= (and d!1542358 (not res!2049800)) b!4818089))

(assert (= (and b!4818089 res!2049801) b!4818090))

(declare-fun b_lambda!188697 () Bool)

(assert (=> (not b_lambda!188697) (not b!4818089)))

(declare-fun m!5804996 () Bool)

(assert (=> b!4818089 m!5804996))

(declare-fun m!5804998 () Bool)

(assert (=> b!4818090 m!5804998))

(assert (=> bm!336023 d!1542358))

(declare-fun d!1542360 () Bool)

(assert (=> d!1542360 (= (isEmpty!29609 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)) (not ((_ is Some!13444) (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))))

(assert (=> d!1541890 d!1542360))

(assert (=> d!1541918 d!1542316))

(declare-fun d!1542362 () Bool)

(declare-fun res!2049806 () Bool)

(declare-fun e!3010322 () Bool)

(assert (=> d!1542362 (=> res!2049806 e!3010322)))

(assert (=> d!1542362 (= res!2049806 (or ((_ is Nil!54785) (toList!7348 lt!1967780)) ((_ is Nil!54785) (t!362405 (toList!7348 lt!1967780)))))))

(assert (=> d!1542362 (= (noDuplicatedKeys!464 (toList!7348 lt!1967780)) e!3010322)))

(declare-fun b!4818095 () Bool)

(declare-fun e!3010323 () Bool)

(assert (=> b!4818095 (= e!3010322 e!3010323)))

(declare-fun res!2049807 () Bool)

(assert (=> b!4818095 (=> (not res!2049807) (not e!3010323))))

(assert (=> b!4818095 (= res!2049807 (not (containsKey!4254 (t!362405 (toList!7348 lt!1967780)) (_1!32223 (h!61217 (toList!7348 lt!1967780))))))))

(declare-fun b!4818096 () Bool)

(assert (=> b!4818096 (= e!3010323 (noDuplicatedKeys!464 (t!362405 (toList!7348 lt!1967780))))))

(assert (= (and d!1542362 (not res!2049806)) b!4818095))

(assert (= (and b!4818095 res!2049807) b!4818096))

(declare-fun m!5805000 () Bool)

(assert (=> b!4818095 m!5805000))

(declare-fun m!5805002 () Bool)

(assert (=> b!4818096 m!5805002))

(assert (=> d!1541990 d!1542362))

(declare-fun d!1542364 () Bool)

(declare-fun res!2049808 () Bool)

(declare-fun e!3010324 () Bool)

(assert (=> d!1542364 (=> res!2049808 e!3010324)))

(assert (=> d!1542364 (= res!2049808 ((_ is Nil!54785) (_2!32224 (h!61218 (toList!7347 lm!2251)))))))

(assert (=> d!1542364 (= (forall!12496 (_2!32224 (h!61218 (toList!7347 lm!2251))) lambda!234911) e!3010324)))

(declare-fun b!4818097 () Bool)

(declare-fun e!3010325 () Bool)

(assert (=> b!4818097 (= e!3010324 e!3010325)))

(declare-fun res!2049809 () Bool)

(assert (=> b!4818097 (=> (not res!2049809) (not e!3010325))))

(assert (=> b!4818097 (= res!2049809 (dynLambda!22170 lambda!234911 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))

(declare-fun b!4818098 () Bool)

(assert (=> b!4818098 (= e!3010325 (forall!12496 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))) lambda!234911))))

(assert (= (and d!1542364 (not res!2049808)) b!4818097))

(assert (= (and b!4818097 res!2049809) b!4818098))

(declare-fun b_lambda!188699 () Bool)

(assert (=> (not b_lambda!188699) (not b!4818097)))

(declare-fun m!5805004 () Bool)

(assert (=> b!4818097 m!5805004))

(declare-fun m!5805006 () Bool)

(assert (=> b!4818098 m!5805006))

(assert (=> d!1541998 d!1542364))

(assert (=> d!1541998 d!1541996))

(declare-fun d!1542366 () Bool)

(declare-fun res!2049810 () Bool)

(declare-fun e!3010326 () Bool)

(assert (=> d!1542366 (=> res!2049810 e!3010326)))

(assert (=> d!1542366 (= res!2049810 ((_ is Nil!54788) lt!1967951))))

(assert (=> d!1542366 (= (noDuplicate!946 lt!1967951) e!3010326)))

(declare-fun b!4818099 () Bool)

(declare-fun e!3010327 () Bool)

(assert (=> b!4818099 (= e!3010326 e!3010327)))

(declare-fun res!2049811 () Bool)

(assert (=> b!4818099 (=> (not res!2049811) (not e!3010327))))

(assert (=> b!4818099 (= res!2049811 (not (contains!18621 (t!362408 lt!1967951) (h!61220 lt!1967951))))))

(declare-fun b!4818100 () Bool)

(assert (=> b!4818100 (= e!3010327 (noDuplicate!946 (t!362408 lt!1967951)))))

(assert (= (and d!1542366 (not res!2049810)) b!4818099))

(assert (= (and b!4818099 res!2049811) b!4818100))

(declare-fun m!5805008 () Bool)

(assert (=> b!4818099 m!5805008))

(declare-fun m!5805010 () Bool)

(assert (=> b!4818100 m!5805010))

(assert (=> d!1541926 d!1542366))

(assert (=> d!1541926 d!1542326))

(assert (=> d!1541966 d!1541890))

(assert (=> d!1541966 d!1541894))

(declare-fun d!1542368 () Bool)

(assert (=> d!1542368 (isDefined!10560 (getValueByKey!2572 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322))))

(assert (=> d!1542368 true))

(declare-fun _$29!769 () Unit!142036)

(assert (=> d!1542368 (= (choose!34958 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) _$29!769)))

(declare-fun bs!1161063 () Bool)

(assert (= bs!1161063 d!1542368))

(assert (=> bs!1161063 m!5803758))

(assert (=> bs!1161063 m!5803758))

(assert (=> bs!1161063 m!5803760))

(assert (=> d!1541966 d!1542368))

(assert (=> d!1541966 d!1542326))

(assert (=> b!4817705 d!1542002))

(declare-fun d!1542370 () Bool)

(declare-fun res!2049812 () Bool)

(declare-fun e!3010328 () Bool)

(assert (=> d!1542370 (=> res!2049812 e!3010328)))

(assert (=> d!1542370 (= res!2049812 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542370 (= (forall!12496 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))) lambda!234911) e!3010328)))

(declare-fun b!4818101 () Bool)

(declare-fun e!3010329 () Bool)

(assert (=> b!4818101 (= e!3010328 e!3010329)))

(declare-fun res!2049813 () Bool)

(assert (=> b!4818101 (=> (not res!2049813) (not e!3010329))))

(assert (=> b!4818101 (= res!2049813 (dynLambda!22170 lambda!234911 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4818102 () Bool)

(assert (=> b!4818102 (= e!3010329 (forall!12496 (t!362405 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))) lambda!234911))))

(assert (= (and d!1542370 (not res!2049812)) b!4818101))

(assert (= (and b!4818101 res!2049813) b!4818102))

(declare-fun b_lambda!188701 () Bool)

(assert (=> (not b_lambda!188701) (not b!4818101)))

(declare-fun m!5805012 () Bool)

(assert (=> b!4818101 m!5805012))

(declare-fun m!5805014 () Bool)

(assert (=> b!4818102 m!5805014))

(assert (=> b!4817686 d!1542370))

(declare-fun d!1542372 () Bool)

(declare-fun res!2049814 () Bool)

(declare-fun e!3010330 () Bool)

(assert (=> d!1542372 (=> res!2049814 e!3010330)))

(assert (=> d!1542372 (= res!2049814 (not ((_ is Cons!54785) (t!362405 (_2!32224 lt!1967696)))))))

(assert (=> d!1542372 (= (noDuplicateKeys!2413 (t!362405 (_2!32224 lt!1967696))) e!3010330)))

(declare-fun b!4818103 () Bool)

(declare-fun e!3010331 () Bool)

(assert (=> b!4818103 (= e!3010330 e!3010331)))

(declare-fun res!2049815 () Bool)

(assert (=> b!4818103 (=> (not res!2049815) (not e!3010331))))

(assert (=> b!4818103 (= res!2049815 (not (containsKey!4255 (t!362405 (t!362405 (_2!32224 lt!1967696))) (_1!32223 (h!61217 (t!362405 (_2!32224 lt!1967696)))))))))

(declare-fun b!4818104 () Bool)

(assert (=> b!4818104 (= e!3010331 (noDuplicateKeys!2413 (t!362405 (t!362405 (_2!32224 lt!1967696)))))))

(assert (= (and d!1542372 (not res!2049814)) b!4818103))

(assert (= (and b!4818103 res!2049815) b!4818104))

(declare-fun m!5805016 () Bool)

(assert (=> b!4818103 m!5805016))

(declare-fun m!5805018 () Bool)

(assert (=> b!4818104 m!5805018))

(assert (=> b!4817707 d!1542372))

(assert (=> b!4817518 d!1542330))

(declare-fun d!1542374 () Bool)

(declare-fun c!821206 () Bool)

(assert (=> d!1542374 (= c!821206 ((_ is Nil!54788) lt!1967951))))

(declare-fun e!3010332 () (InoxSet K!16444))

(assert (=> d!1542374 (= (content!9804 lt!1967951) e!3010332)))

(declare-fun b!4818105 () Bool)

(assert (=> b!4818105 (= e!3010332 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818106 () Bool)

(assert (=> b!4818106 (= e!3010332 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 lt!1967951) true) (content!9804 (t!362408 lt!1967951))))))

(assert (= (and d!1542374 c!821206) b!4818105))

(assert (= (and d!1542374 (not c!821206)) b!4818106))

(declare-fun m!5805020 () Bool)

(assert (=> b!4818106 m!5805020))

(declare-fun m!5805022 () Bool)

(assert (=> b!4818106 m!5805022))

(assert (=> b!4817629 d!1542374))

(declare-fun d!1542376 () Bool)

(declare-fun c!821207 () Bool)

(assert (=> d!1542376 (= c!821207 ((_ is Nil!54788) (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879)))))

(declare-fun e!3010333 () (InoxSet K!16444))

(assert (=> d!1542376 (= (content!9804 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879)) e!3010333)))

(declare-fun b!4818107 () Bool)

(assert (=> b!4818107 (= e!3010333 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818108 () Bool)

(assert (=> b!4818108 (= e!3010333 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879)) true) (content!9804 (t!362408 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879)))))))

(assert (= (and d!1542376 c!821207) b!4818107))

(assert (= (and d!1542376 (not c!821207)) b!4818108))

(declare-fun m!5805024 () Bool)

(assert (=> b!4818108 m!5805024))

(declare-fun m!5805026 () Bool)

(assert (=> b!4818108 m!5805026))

(assert (=> b!4817629 d!1542376))

(declare-fun d!1542378 () Bool)

(declare-fun lt!1968245 () List!54912)

(declare-fun size!36623 (List!54912) Int)

(declare-fun size!36624 (List!54909) Int)

(assert (=> d!1542378 (= (size!36623 lt!1968245) (size!36624 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun e!3010336 () List!54912)

(assert (=> d!1542378 (= lt!1968245 e!3010336)))

(declare-fun c!821210 () Bool)

(assert (=> d!1542378 (= c!821210 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1542378 (= (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234879) lt!1968245)))

(declare-fun b!4818113 () Bool)

(assert (=> b!4818113 (= e!3010336 Nil!54788)))

(declare-fun b!4818114 () Bool)

(declare-fun $colon$colon!1105 (List!54912 K!16444) List!54912)

(declare-fun dynLambda!22173 (Int tuple2!57858) K!16444)

(assert (=> b!4818114 (= e!3010336 ($colon$colon!1105 (map!12523 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lambda!234879) (dynLambda!22173 lambda!234879 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542378 c!821210) b!4818113))

(assert (= (and d!1542378 (not c!821210)) b!4818114))

(declare-fun b_lambda!188703 () Bool)

(assert (=> (not b_lambda!188703) (not b!4818114)))

(declare-fun m!5805028 () Bool)

(assert (=> d!1542378 m!5805028))

(declare-fun m!5805030 () Bool)

(assert (=> d!1542378 m!5805030))

(declare-fun m!5805032 () Bool)

(assert (=> b!4818114 m!5805032))

(declare-fun m!5805034 () Bool)

(assert (=> b!4818114 m!5805034))

(assert (=> b!4818114 m!5805032))

(assert (=> b!4818114 m!5805034))

(declare-fun m!5805036 () Bool)

(assert (=> b!4818114 m!5805036))

(assert (=> b!4817629 d!1542378))

(declare-fun d!1542380 () Bool)

(declare-fun res!2049816 () Bool)

(declare-fun e!3010337 () Bool)

(assert (=> d!1542380 (=> res!2049816 e!3010337)))

(assert (=> d!1542380 (= res!2049816 (and ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))) (= (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lt!1967690)))))

(assert (=> d!1542380 (= (containsKey!4256 (t!362406 (toList!7347 lm!2251)) lt!1967690) e!3010337)))

(declare-fun b!4818115 () Bool)

(declare-fun e!3010338 () Bool)

(assert (=> b!4818115 (= e!3010337 e!3010338)))

(declare-fun res!2049817 () Bool)

(assert (=> b!4818115 (=> (not res!2049817) (not e!3010338))))

(assert (=> b!4818115 (= res!2049817 (and (or (not ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251)))) (bvsle (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lt!1967690)) ((_ is Cons!54786) (t!362406 (toList!7347 lm!2251))) (bvslt (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) lt!1967690)))))

(declare-fun b!4818116 () Bool)

(assert (=> b!4818116 (= e!3010338 (containsKey!4256 (t!362406 (t!362406 (toList!7347 lm!2251))) lt!1967690))))

(assert (= (and d!1542380 (not res!2049816)) b!4818115))

(assert (= (and b!4818115 res!2049817) b!4818116))

(declare-fun m!5805038 () Bool)

(assert (=> b!4818116 m!5805038))

(assert (=> b!4817699 d!1542380))

(declare-fun d!1542382 () Bool)

(assert (=> d!1542382 (= (length!748 lt!1967899) (size!36623 lt!1967899))))

(declare-fun bs!1161064 () Bool)

(assert (= bs!1161064 d!1542382))

(declare-fun m!5805040 () Bool)

(assert (=> bs!1161064 m!5805040))

(assert (=> b!4817496 d!1542382))

(declare-fun d!1542384 () Bool)

(assert (=> d!1542384 (= (length!749 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (size!36624 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun bs!1161065 () Bool)

(assert (= bs!1161065 d!1542384))

(assert (=> bs!1161065 m!5805030))

(assert (=> b!4817496 d!1542384))

(assert (=> d!1541982 d!1541980))

(assert (=> d!1541982 d!1541824))

(declare-fun d!1542386 () Bool)

(declare-fun res!2049818 () Bool)

(declare-fun e!3010339 () Bool)

(assert (=> d!1542386 (=> res!2049818 e!3010339)))

(assert (=> d!1542386 (= res!2049818 (and ((_ is Cons!54786) (toList!7347 lm!2251)) (= (_1!32224 (h!61218 (toList!7347 lm!2251))) (hash!5256 hashF!1486 key!5322))))))

(assert (=> d!1542386 (= (containsKey!4256 (toList!7347 lm!2251) (hash!5256 hashF!1486 key!5322)) e!3010339)))

(declare-fun b!4818117 () Bool)

(declare-fun e!3010340 () Bool)

(assert (=> b!4818117 (= e!3010339 e!3010340)))

(declare-fun res!2049819 () Bool)

(assert (=> b!4818117 (=> (not res!2049819) (not e!3010340))))

(assert (=> b!4818117 (= res!2049819 (and (or (not ((_ is Cons!54786) (toList!7347 lm!2251))) (bvsle (_1!32224 (h!61218 (toList!7347 lm!2251))) (hash!5256 hashF!1486 key!5322))) ((_ is Cons!54786) (toList!7347 lm!2251)) (bvslt (_1!32224 (h!61218 (toList!7347 lm!2251))) (hash!5256 hashF!1486 key!5322))))))

(declare-fun b!4818118 () Bool)

(assert (=> b!4818118 (= e!3010340 (containsKey!4256 (t!362406 (toList!7347 lm!2251)) (hash!5256 hashF!1486 key!5322)))))

(assert (= (and d!1542386 (not res!2049818)) b!4818117))

(assert (= (and b!4818117 res!2049819) b!4818118))

(assert (=> b!4818118 m!5803668))

(declare-fun m!5805042 () Bool)

(assert (=> b!4818118 m!5805042))

(assert (=> d!1541980 d!1542386))

(declare-fun d!1542388 () Bool)

(declare-fun res!2049820 () Bool)

(declare-fun e!3010341 () Bool)

(assert (=> d!1542388 (=> res!2049820 e!3010341)))

(assert (=> d!1542388 (= res!2049820 (not ((_ is Cons!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> d!1542388 (= (noDuplicateKeys!2413 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) e!3010341)))

(declare-fun b!4818119 () Bool)

(declare-fun e!3010342 () Bool)

(assert (=> b!4818119 (= e!3010341 e!3010342)))

(declare-fun res!2049821 () Bool)

(assert (=> b!4818119 (=> (not res!2049821) (not e!3010342))))

(assert (=> b!4818119 (= res!2049821 (not (containsKey!4255 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))))

(declare-fun b!4818120 () Bool)

(assert (=> b!4818120 (= e!3010342 (noDuplicateKeys!2413 (t!362405 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542388 (not res!2049820)) b!4818119))

(assert (= (and b!4818119 res!2049821) b!4818120))

(declare-fun m!5805044 () Bool)

(assert (=> b!4818119 m!5805044))

(declare-fun m!5805046 () Bool)

(assert (=> b!4818120 m!5805046))

(assert (=> b!4817674 d!1542388))

(assert (=> d!1542014 d!1541920))

(declare-fun d!1542390 () Bool)

(assert (=> d!1542390 (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322)))

(assert (=> d!1542390 true))

(declare-fun _$15!860 () Unit!142036)

(assert (=> d!1542390 (= (choose!34961 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) key!5322) _$15!860)))

(declare-fun bs!1161066 () Bool)

(assert (= bs!1161066 d!1542390))

(assert (=> bs!1161066 m!5803764))

(assert (=> d!1542014 d!1542390))

(assert (=> d!1542014 d!1542326))

(assert (=> d!1541976 d!1542020))

(declare-fun bs!1161067 () Bool)

(declare-fun d!1542392 () Bool)

(assert (= bs!1161067 (and d!1542392 b!4818051)))

(declare-fun lambda!234966 () Int)

(assert (=> bs!1161067 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234966 lambda!234962))))

(declare-fun bs!1161068 () Bool)

(assert (= bs!1161068 (and d!1542392 b!4817626)))

(assert (=> bs!1161068 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234966 lambda!234878))))

(declare-fun bs!1161069 () Bool)

(assert (= bs!1161069 (and d!1542392 b!4818049)))

(assert (=> bs!1161069 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (= lambda!234966 lambda!234960))))

(declare-fun bs!1161070 () Bool)

(assert (= bs!1161070 (and d!1542392 b!4817497)))

(assert (=> bs!1161070 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (= lambda!234966 lambda!234862))))

(declare-fun bs!1161071 () Bool)

(assert (= bs!1161071 (and d!1542392 b!4817624)))

(assert (=> bs!1161071 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= lambda!234966 lambda!234876))))

(declare-fun bs!1161072 () Bool)

(assert (= bs!1161072 (and d!1542392 b!4818056)))

(assert (=> bs!1161072 (= (= (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (Cons!54785 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))) (= lambda!234966 lambda!234961))))

(declare-fun bs!1161073 () Bool)

(assert (= bs!1161073 (and d!1542392 b!4817631)))

(assert (=> bs!1161073 (= lambda!234966 lambda!234877)))

(assert (=> d!1542392 true))

(assert (=> d!1542392 true))

(assert (=> d!1542392 (forall!12495 lt!1967949 lambda!234966)))

(declare-fun lt!1968248 () Unit!142036)

(declare-fun choose!34971 (List!54909 List!54912 tuple2!57858) Unit!142036)

(assert (=> d!1542392 (= lt!1968248 (choose!34971 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lt!1967949 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> d!1542392 (invariantList!1794 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1542392 (= (lemmaForallContainsAddHeadPreserves!361 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lt!1967949 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) lt!1968248)))

(declare-fun bs!1161074 () Bool)

(assert (= bs!1161074 d!1542392))

(declare-fun m!5805048 () Bool)

(assert (=> bs!1161074 m!5805048))

(declare-fun m!5805050 () Bool)

(assert (=> bs!1161074 m!5805050))

(assert (=> bs!1161074 m!5804962))

(assert (=> b!4817631 d!1542392))

(declare-fun d!1542394 () Bool)

(declare-fun lt!1968249 () Bool)

(assert (=> d!1542394 (= lt!1968249 (select (content!9804 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun e!3010344 () Bool)

(assert (=> d!1542394 (= lt!1968249 e!3010344)))

(declare-fun res!2049823 () Bool)

(assert (=> d!1542394 (=> (not res!2049823) (not e!3010344))))

(assert (=> d!1542394 (= res!2049823 ((_ is Cons!54788) (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (=> d!1542394 (= (contains!18621 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) lt!1968249)))

(declare-fun b!4818123 () Bool)

(declare-fun e!3010343 () Bool)

(assert (=> b!4818123 (= e!3010344 e!3010343)))

(declare-fun res!2049822 () Bool)

(assert (=> b!4818123 (=> res!2049822 e!3010343)))

(assert (=> b!4818123 (= res!2049822 (= (h!61220 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(declare-fun b!4818124 () Bool)

(assert (=> b!4818124 (= e!3010343 (contains!18621 (t!362408 (getKeysList!1141 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542394 res!2049823) b!4818123))

(assert (= (and b!4818123 (not res!2049822)) b!4818124))

(assert (=> d!1542394 m!5804118))

(declare-fun m!5805052 () Bool)

(assert (=> d!1542394 m!5805052))

(declare-fun m!5805054 () Bool)

(assert (=> d!1542394 m!5805054))

(declare-fun m!5805056 () Bool)

(assert (=> b!4818124 m!5805056))

(assert (=> b!4817631 d!1542394))

(declare-fun d!1542396 () Bool)

(declare-fun res!2049824 () Bool)

(declare-fun e!3010345 () Bool)

(assert (=> d!1542396 (=> res!2049824 e!3010345)))

(assert (=> d!1542396 (= res!2049824 (and ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (= (_1!32223 (h!61217 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))))

(assert (=> d!1542396 (= (containsKey!4254 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) e!3010345)))

(declare-fun b!4818125 () Bool)

(declare-fun e!3010346 () Bool)

(assert (=> b!4818125 (= e!3010345 e!3010346)))

(declare-fun res!2049825 () Bool)

(assert (=> b!4818125 (=> (not res!2049825) (not e!3010346))))

(assert (=> b!4818125 (= res!2049825 ((_ is Cons!54785) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(declare-fun b!4818126 () Bool)

(assert (=> b!4818126 (= e!3010346 (containsKey!4254 (t!362405 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542396 (not res!2049824)) b!4818125))

(assert (= (and b!4818125 res!2049825) b!4818126))

(declare-fun m!5805058 () Bool)

(assert (=> b!4818126 m!5805058))

(assert (=> b!4817631 d!1542396))

(assert (=> b!4817631 d!1542336))

(declare-fun d!1542398 () Bool)

(declare-fun res!2049826 () Bool)

(declare-fun e!3010347 () Bool)

(assert (=> d!1542398 (=> res!2049826 e!3010347)))

(assert (=> d!1542398 (= res!2049826 ((_ is Nil!54788) lt!1967949))))

(assert (=> d!1542398 (= (forall!12495 lt!1967949 lambda!234877) e!3010347)))

(declare-fun b!4818127 () Bool)

(declare-fun e!3010348 () Bool)

(assert (=> b!4818127 (= e!3010347 e!3010348)))

(declare-fun res!2049827 () Bool)

(assert (=> b!4818127 (=> (not res!2049827) (not e!3010348))))

(assert (=> b!4818127 (= res!2049827 (dynLambda!22171 lambda!234877 (h!61220 lt!1967949)))))

(declare-fun b!4818128 () Bool)

(assert (=> b!4818128 (= e!3010348 (forall!12495 (t!362408 lt!1967949) lambda!234877))))

(assert (= (and d!1542398 (not res!2049826)) b!4818127))

(assert (= (and b!4818127 res!2049827) b!4818128))

(declare-fun b_lambda!188705 () Bool)

(assert (=> (not b_lambda!188705) (not b!4818127)))

(declare-fun m!5805060 () Bool)

(assert (=> b!4818127 m!5805060))

(declare-fun m!5805062 () Bool)

(assert (=> b!4818128 m!5805062))

(assert (=> b!4817631 d!1542398))

(declare-fun d!1542400 () Bool)

(declare-fun lt!1968250 () Bool)

(assert (=> d!1542400 (= lt!1968250 (select (content!9805 (t!362405 lt!1967689)) (get!18749 lt!1967795)))))

(declare-fun e!3010350 () Bool)

(assert (=> d!1542400 (= lt!1968250 e!3010350)))

(declare-fun res!2049828 () Bool)

(assert (=> d!1542400 (=> (not res!2049828) (not e!3010350))))

(assert (=> d!1542400 (= res!2049828 ((_ is Cons!54785) (t!362405 lt!1967689)))))

(assert (=> d!1542400 (= (contains!18622 (t!362405 lt!1967689) (get!18749 lt!1967795)) lt!1968250)))

(declare-fun b!4818129 () Bool)

(declare-fun e!3010349 () Bool)

(assert (=> b!4818129 (= e!3010350 e!3010349)))

(declare-fun res!2049829 () Bool)

(assert (=> b!4818129 (=> res!2049829 e!3010349)))

(assert (=> b!4818129 (= res!2049829 (= (h!61217 (t!362405 lt!1967689)) (get!18749 lt!1967795)))))

(declare-fun b!4818130 () Bool)

(assert (=> b!4818130 (= e!3010349 (contains!18622 (t!362405 (t!362405 lt!1967689)) (get!18749 lt!1967795)))))

(assert (= (and d!1542400 res!2049828) b!4818129))

(assert (= (and b!4818129 (not res!2049829)) b!4818130))

(assert (=> d!1542400 m!5804922))

(assert (=> d!1542400 m!5803824))

(declare-fun m!5805064 () Bool)

(assert (=> d!1542400 m!5805064))

(assert (=> b!4818130 m!5803824))

(declare-fun m!5805066 () Bool)

(assert (=> b!4818130 m!5805066))

(assert (=> b!4817715 d!1542400))

(assert (=> d!1541986 d!1541788))

(assert (=> d!1541986 d!1541806))

(declare-fun d!1542402 () Bool)

(declare-fun c!821211 () Bool)

(assert (=> d!1542402 (= c!821211 ((_ is Nil!54788) lt!1967899))))

(declare-fun e!3010351 () (InoxSet K!16444))

(assert (=> d!1542402 (= (content!9804 lt!1967899) e!3010351)))

(declare-fun b!4818131 () Bool)

(assert (=> b!4818131 (= e!3010351 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818132 () Bool)

(assert (=> b!4818132 (= e!3010351 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 lt!1967899) true) (content!9804 (t!362408 lt!1967899))))))

(assert (= (and d!1542402 c!821211) b!4818131))

(assert (= (and d!1542402 (not c!821211)) b!4818132))

(declare-fun m!5805068 () Bool)

(assert (=> b!4818132 m!5805068))

(declare-fun m!5805070 () Bool)

(assert (=> b!4818132 m!5805070))

(assert (=> b!4817498 d!1542402))

(declare-fun d!1542404 () Bool)

(declare-fun c!821212 () Bool)

(assert (=> d!1542404 (= c!821212 ((_ is Nil!54788) (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863)))))

(declare-fun e!3010352 () (InoxSet K!16444))

(assert (=> d!1542404 (= (content!9804 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863)) e!3010352)))

(declare-fun b!4818133 () Bool)

(assert (=> b!4818133 (= e!3010352 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818134 () Bool)

(assert (=> b!4818134 (= e!3010352 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863)) true) (content!9804 (t!362408 (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863)))))))

(assert (= (and d!1542404 c!821212) b!4818133))

(assert (= (and d!1542404 (not c!821212)) b!4818134))

(declare-fun m!5805072 () Bool)

(assert (=> b!4818134 m!5805072))

(declare-fun m!5805074 () Bool)

(assert (=> b!4818134 m!5805074))

(assert (=> b!4817498 d!1542404))

(declare-fun d!1542406 () Bool)

(declare-fun lt!1968251 () List!54912)

(assert (=> d!1542406 (= (size!36623 lt!1968251) (size!36624 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun e!3010353 () List!54912)

(assert (=> d!1542406 (= lt!1968251 e!3010353)))

(declare-fun c!821213 () Bool)

(assert (=> d!1542406 (= c!821213 ((_ is Nil!54785) (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))

(assert (=> d!1542406 (= (map!12523 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) lambda!234863) lt!1968251)))

(declare-fun b!4818135 () Bool)

(assert (=> b!4818135 (= e!3010353 Nil!54788)))

(declare-fun b!4818136 () Bool)

(assert (=> b!4818136 (= e!3010353 ($colon$colon!1105 (map!12523 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) lambda!234863) (dynLambda!22173 lambda!234863 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542406 c!821213) b!4818135))

(assert (= (and d!1542406 (not c!821213)) b!4818136))

(declare-fun b_lambda!188707 () Bool)

(assert (=> (not b_lambda!188707) (not b!4818136)))

(declare-fun m!5805076 () Bool)

(assert (=> d!1542406 m!5805076))

(assert (=> d!1542406 m!5805030))

(declare-fun m!5805078 () Bool)

(assert (=> b!4818136 m!5805078))

(declare-fun m!5805080 () Bool)

(assert (=> b!4818136 m!5805080))

(assert (=> b!4818136 m!5805078))

(assert (=> b!4818136 m!5805080))

(declare-fun m!5805082 () Bool)

(assert (=> b!4818136 m!5805082))

(assert (=> b!4817498 d!1542406))

(assert (=> bs!1160835 d!1541996))

(assert (=> d!1542008 d!1542006))

(declare-fun d!1542408 () Bool)

(assert (=> d!1542408 (= (isDefined!10557 lt!1967907) (not (isEmpty!29606 lt!1967907)))))

(declare-fun bs!1161075 () Bool)

(assert (= bs!1161075 d!1542408))

(assert (=> bs!1161075 m!5803990))

(assert (=> b!4817512 d!1542408))

(declare-fun d!1542410 () Bool)

(assert (=> d!1542410 (= (length!748 lt!1967951) (size!36623 lt!1967951))))

(declare-fun bs!1161076 () Bool)

(assert (= bs!1161076 d!1542410))

(declare-fun m!5805084 () Bool)

(assert (=> bs!1161076 m!5805084))

(assert (=> b!4817623 d!1542410))

(assert (=> b!4817623 d!1542384))

(declare-fun d!1542412 () Bool)

(declare-fun res!2049830 () Bool)

(declare-fun e!3010354 () Bool)

(assert (=> d!1542412 (=> res!2049830 e!3010354)))

(assert (=> d!1542412 (= res!2049830 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542412 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234810) e!3010354)))

(declare-fun b!4818137 () Bool)

(declare-fun e!3010355 () Bool)

(assert (=> b!4818137 (= e!3010354 e!3010355)))

(declare-fun res!2049831 () Bool)

(assert (=> b!4818137 (=> (not res!2049831) (not e!3010355))))

(assert (=> b!4818137 (= res!2049831 (dynLambda!22167 lambda!234810 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4818138 () Bool)

(assert (=> b!4818138 (= e!3010355 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234810))))

(assert (= (and d!1542412 (not res!2049830)) b!4818137))

(assert (= (and b!4818137 res!2049831) b!4818138))

(declare-fun b_lambda!188709 () Bool)

(assert (=> (not b_lambda!188709) (not b!4818137)))

(declare-fun m!5805086 () Bool)

(assert (=> b!4818137 m!5805086))

(declare-fun m!5805088 () Bool)

(assert (=> b!4818138 m!5805088))

(assert (=> b!4817662 d!1542412))

(declare-fun d!1542414 () Bool)

(declare-fun res!2049832 () Bool)

(declare-fun e!3010356 () Bool)

(assert (=> d!1542414 (=> res!2049832 e!3010356)))

(assert (=> d!1542414 (= res!2049832 (or ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))) ((_ is Nil!54786) (t!362406 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> d!1542414 (= (isStrictlySorted!955 (t!362406 (toList!7347 lm!2251))) e!3010356)))

(declare-fun b!4818139 () Bool)

(declare-fun e!3010357 () Bool)

(assert (=> b!4818139 (= e!3010356 e!3010357)))

(declare-fun res!2049833 () Bool)

(assert (=> b!4818139 (=> (not res!2049833) (not e!3010357))))

(assert (=> b!4818139 (= res!2049833 (bvslt (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) (_1!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun b!4818140 () Bool)

(assert (=> b!4818140 (= e!3010357 (isStrictlySorted!955 (t!362406 (t!362406 (toList!7347 lm!2251)))))))

(assert (= (and d!1542414 (not res!2049832)) b!4818139))

(assert (= (and b!4818139 res!2049833) b!4818140))

(declare-fun m!5805090 () Bool)

(assert (=> b!4818140 m!5805090))

(assert (=> b!4817651 d!1542414))

(declare-fun d!1542416 () Bool)

(declare-fun lt!1968252 () Bool)

(assert (=> d!1542416 (= lt!1968252 (select (content!9804 (t!362408 e!3009756)) key!5322))))

(declare-fun e!3010359 () Bool)

(assert (=> d!1542416 (= lt!1968252 e!3010359)))

(declare-fun res!2049835 () Bool)

(assert (=> d!1542416 (=> (not res!2049835) (not e!3010359))))

(assert (=> d!1542416 (= res!2049835 ((_ is Cons!54788) (t!362408 e!3009756)))))

(assert (=> d!1542416 (= (contains!18621 (t!362408 e!3009756) key!5322) lt!1968252)))

(declare-fun b!4818141 () Bool)

(declare-fun e!3010358 () Bool)

(assert (=> b!4818141 (= e!3010359 e!3010358)))

(declare-fun res!2049834 () Bool)

(assert (=> b!4818141 (=> res!2049834 e!3010358)))

(assert (=> b!4818141 (= res!2049834 (= (h!61220 (t!362408 e!3009756)) key!5322))))

(declare-fun b!4818142 () Bool)

(assert (=> b!4818142 (= e!3010358 (contains!18621 (t!362408 (t!362408 e!3009756)) key!5322))))

(assert (= (and d!1542416 res!2049835) b!4818141))

(assert (= (and b!4818141 (not res!2049834)) b!4818142))

(assert (=> d!1542416 m!5804846))

(declare-fun m!5805092 () Bool)

(assert (=> d!1542416 m!5805092))

(declare-fun m!5805094 () Bool)

(assert (=> b!4818142 m!5805094))

(assert (=> b!4817553 d!1542416))

(declare-fun d!1542418 () Bool)

(declare-fun res!2049836 () Bool)

(declare-fun e!3010360 () Bool)

(assert (=> d!1542418 (=> res!2049836 e!3010360)))

(assert (=> d!1542418 (= res!2049836 ((_ is Nil!54786) (t!362406 (toList!7347 lm!2251))))))

(assert (=> d!1542418 (= (forall!12492 (t!362406 (toList!7347 lm!2251)) lambda!234807) e!3010360)))

(declare-fun b!4818143 () Bool)

(declare-fun e!3010361 () Bool)

(assert (=> b!4818143 (= e!3010360 e!3010361)))

(declare-fun res!2049837 () Bool)

(assert (=> b!4818143 (=> (not res!2049837) (not e!3010361))))

(assert (=> b!4818143 (= res!2049837 (dynLambda!22167 lambda!234807 (h!61218 (t!362406 (toList!7347 lm!2251)))))))

(declare-fun b!4818144 () Bool)

(assert (=> b!4818144 (= e!3010361 (forall!12492 (t!362406 (t!362406 (toList!7347 lm!2251))) lambda!234807))))

(assert (= (and d!1542418 (not res!2049836)) b!4818143))

(assert (= (and b!4818143 res!2049837) b!4818144))

(declare-fun b_lambda!188711 () Bool)

(assert (=> (not b_lambda!188711) (not b!4818143)))

(declare-fun m!5805096 () Bool)

(assert (=> b!4818143 m!5805096))

(declare-fun m!5805098 () Bool)

(assert (=> b!4818144 m!5805098))

(assert (=> b!4817664 d!1542418))

(declare-fun d!1542420 () Bool)

(declare-fun c!821214 () Bool)

(assert (=> d!1542420 (= c!821214 ((_ is Nil!54788) (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))))))

(declare-fun e!3010362 () (InoxSet K!16444))

(assert (=> d!1542420 (= (content!9804 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) e!3010362)))

(declare-fun b!4818145 () Bool)

(assert (=> b!4818145 (= e!3010362 ((as const (Array K!16444 Bool)) false))))

(declare-fun b!4818146 () Bool)

(assert (=> b!4818146 (= e!3010362 ((_ map or) (store ((as const (Array K!16444 Bool)) false) (h!61220 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))) true) (content!9804 (t!362408 (keys!20122 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (= (and d!1542420 c!821214) b!4818145))

(assert (= (and d!1542420 (not c!821214)) b!4818146))

(declare-fun m!5805100 () Bool)

(assert (=> b!4818146 m!5805100))

(assert (=> b!4818146 m!5804544))

(assert (=> d!1541972 d!1542420))

(declare-fun tp!1362012 () Bool)

(declare-fun e!3010363 () Bool)

(declare-fun b!4818147 () Bool)

(assert (=> b!4818147 (= e!3010363 (and tp_is_empty!34241 tp_is_empty!34245 tp!1362012))))

(assert (=> b!4817720 (= tp!1362005 e!3010363)))

(assert (= (and b!4817720 ((_ is Cons!54785) (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) b!4818147))

(declare-fun b!4818148 () Bool)

(declare-fun tp!1362013 () Bool)

(declare-fun e!3010364 () Bool)

(assert (=> b!4818148 (= e!3010364 (and tp_is_empty!34241 tp_is_empty!34245 tp!1362013))))

(assert (=> b!4817721 (= tp!1362006 e!3010364)))

(assert (= (and b!4817721 ((_ is Cons!54785) (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))))) b!4818148))

(declare-fun b!4818149 () Bool)

(declare-fun e!3010365 () Bool)

(declare-fun tp!1362014 () Bool)

(declare-fun tp!1362015 () Bool)

(assert (=> b!4818149 (= e!3010365 (and tp!1362014 tp!1362015))))

(assert (=> b!4817721 (= tp!1362007 e!3010365)))

(assert (= (and b!4817721 ((_ is Cons!54786) (t!362406 (t!362406 (toList!7347 lm!2251))))) b!4818149))

(declare-fun b_lambda!188713 () Bool)

(assert (= b_lambda!188691 (or b!4817624 b_lambda!188713)))

(declare-fun bs!1161077 () Bool)

(declare-fun d!1542422 () Bool)

(assert (= bs!1161077 (and d!1542422 b!4817624)))

(assert (=> bs!1161077 (= (dynLambda!22171 lambda!234876 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))) (containsKey!4254 (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))))))))

(assert (=> bs!1161077 m!5804116))

(assert (=> d!1542334 d!1542422))

(declare-fun b_lambda!188715 () Bool)

(assert (= b_lambda!188625 (or b!4817685 b_lambda!188715)))

(declare-fun bs!1161078 () Bool)

(declare-fun d!1542424 () Bool)

(assert (= bs!1161078 (and d!1542424 b!4817685)))

(assert (=> bs!1161078 (= (dynLambda!22170 lambda!234909 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))) (contains!18618 (extractMap!2632 (t!362406 (toList!7347 lm!2251))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))))

(assert (=> bs!1161078 m!5803790))

(declare-fun m!5805102 () Bool)

(assert (=> bs!1161078 m!5805102))

(assert (=> b!4817923 d!1542424))

(declare-fun b_lambda!188717 () Bool)

(assert (= b_lambda!188683 (or b!4817497 b_lambda!188717)))

(declare-fun bs!1161079 () Bool)

(declare-fun d!1542426 () Bool)

(assert (= bs!1161079 (and d!1542426 b!4817497)))

(assert (=> bs!1161079 (= (dynLambda!22171 lambda!234862 (h!61220 lt!1967899)) (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) (h!61220 lt!1967899)))))

(declare-fun m!5805104 () Bool)

(assert (=> bs!1161079 m!5805104))

(assert (=> b!4818008 d!1542426))

(declare-fun b_lambda!188719 () Bool)

(assert (= b_lambda!188685 (or d!1542000 b_lambda!188719)))

(declare-fun bs!1161080 () Bool)

(declare-fun d!1542428 () Bool)

(assert (= bs!1161080 (and d!1542428 d!1542000)))

(assert (=> bs!1161080 (= (dynLambda!22167 lambda!234912 (h!61218 (t!362406 (toList!7347 lm!2251)))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> bs!1161080 m!5804246))

(assert (=> b!4818020 d!1542428))

(declare-fun b_lambda!188721 () Bool)

(assert (= b_lambda!188703 (or b!4817629 b_lambda!188721)))

(declare-fun bs!1161081 () Bool)

(declare-fun d!1542430 () Bool)

(assert (= bs!1161081 (and d!1542430 b!4817629)))

(assert (=> bs!1161081 (= (dynLambda!22173 lambda!234879 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> b!4818114 d!1542430))

(declare-fun b_lambda!188723 () Bool)

(assert (= b_lambda!188709 (or d!1541832 b_lambda!188723)))

(declare-fun bs!1161082 () Bool)

(declare-fun d!1542432 () Bool)

(assert (= bs!1161082 (and d!1542432 d!1541832)))

(assert (=> bs!1161082 (= (dynLambda!22167 lambda!234810 (h!61218 (t!362406 (toList!7347 lm!2251)))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> bs!1161082 m!5804246))

(assert (=> b!4818137 d!1542432))

(declare-fun b_lambda!188725 () Bool)

(assert (= b_lambda!188623 (or b!4817685 b_lambda!188725)))

(declare-fun bs!1161083 () Bool)

(declare-fun d!1542434 () Bool)

(assert (= bs!1161083 (and d!1542434 b!4817685)))

(assert (=> bs!1161083 (= (dynLambda!22170 lambda!234910 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (contains!18618 lt!1968007 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(assert (=> bs!1161083 m!5804198))

(assert (=> b!4817921 d!1542434))

(declare-fun b_lambda!188727 () Bool)

(assert (= b_lambda!188711 (or d!1541820 b_lambda!188727)))

(declare-fun bs!1161084 () Bool)

(declare-fun d!1542436 () Bool)

(assert (= bs!1161084 (and d!1542436 d!1541820)))

(assert (=> bs!1161084 (= (dynLambda!22167 lambda!234807 (h!61218 (t!362406 (toList!7347 lm!2251)))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> bs!1161084 m!5804246))

(assert (=> b!4818143 d!1542436))

(declare-fun b_lambda!188729 () Bool)

(assert (= b_lambda!188707 (or b!4817498 b_lambda!188729)))

(declare-fun bs!1161085 () Bool)

(declare-fun d!1542438 () Bool)

(assert (= bs!1161085 (and d!1542438 b!4817498)))

(assert (=> bs!1161085 (= (dynLambda!22173 lambda!234863 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))))))

(assert (=> b!4818136 d!1542438))

(declare-fun b_lambda!188731 () Bool)

(assert (= b_lambda!188701 (or d!1541998 b_lambda!188731)))

(declare-fun bs!1161086 () Bool)

(declare-fun d!1542440 () Bool)

(assert (= bs!1161086 (and d!1542440 d!1541998)))

(assert (=> bs!1161086 (= (dynLambda!22170 lambda!234911 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))) (contains!18618 lt!1968020 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))))

(declare-fun m!5805106 () Bool)

(assert (=> bs!1161086 m!5805106))

(assert (=> b!4818101 d!1542440))

(declare-fun b_lambda!188733 () Bool)

(assert (= b_lambda!188675 (or b!4817685 b_lambda!188733)))

(assert (=> d!1542246 d!1542434))

(declare-fun b_lambda!188735 () Bool)

(assert (= b_lambda!188609 (or start!498654 b_lambda!188735)))

(declare-fun bs!1161087 () Bool)

(declare-fun d!1542442 () Bool)

(assert (= bs!1161087 (and d!1542442 start!498654)))

(assert (=> bs!1161087 (= (dynLambda!22167 lambda!234786 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251))))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (t!362406 (toList!7347 lm!2251)))))))))

(declare-fun m!5805108 () Bool)

(assert (=> bs!1161087 m!5805108))

(assert (=> b!4817859 d!1542442))

(declare-fun b_lambda!188737 () Bool)

(assert (= b_lambda!188689 (or d!1541814 b_lambda!188737)))

(declare-fun bs!1161088 () Bool)

(declare-fun d!1542444 () Bool)

(assert (= bs!1161088 (and d!1542444 d!1541814)))

(assert (=> bs!1161088 (= (dynLambda!22167 lambda!234804 (h!61218 (t!362406 (toList!7347 lm!2251)))) (allKeysSameHash!1987 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) (_1!32224 (h!61218 (t!362406 (toList!7347 lm!2251)))) hashF!1486))))

(declare-fun m!5805110 () Bool)

(assert (=> bs!1161088 m!5805110))

(assert (=> b!4818028 d!1542444))

(declare-fun b_lambda!188739 () Bool)

(assert (= b_lambda!188699 (or d!1541998 b_lambda!188739)))

(declare-fun bs!1161089 () Bool)

(declare-fun d!1542446 () Bool)

(assert (= bs!1161089 (and d!1542446 d!1541998)))

(assert (=> bs!1161089 (= (dynLambda!22170 lambda!234911 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251))))) (contains!18618 lt!1968020 (_1!32223 (h!61217 (_2!32224 (h!61218 (toList!7347 lm!2251)))))))))

(declare-fun m!5805112 () Bool)

(assert (=> bs!1161089 m!5805112))

(assert (=> b!4818097 d!1542446))

(declare-fun b_lambda!188741 () Bool)

(assert (= b_lambda!188677 (or b!4817685 b_lambda!188741)))

(declare-fun bs!1161090 () Bool)

(declare-fun d!1542448 () Bool)

(assert (= bs!1161090 (and d!1542448 b!4817685)))

(assert (=> bs!1161090 (= (dynLambda!22170 lambda!234910 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251)))))) (contains!18618 lt!1968007 (_1!32223 (h!61217 (toList!7348 (extractMap!2632 (t!362406 (toList!7347 lm!2251))))))))))

(declare-fun m!5805114 () Bool)

(assert (=> bs!1161090 m!5805114))

(assert (=> b!4817988 d!1542448))

(declare-fun b_lambda!188743 () Bool)

(assert (= b_lambda!188687 (or d!1541806 b_lambda!188743)))

(declare-fun bs!1161091 () Bool)

(declare-fun d!1542450 () Bool)

(assert (= bs!1161091 (and d!1542450 d!1541806)))

(assert (=> bs!1161091 (= (dynLambda!22167 lambda!234801 (h!61218 (t!362406 (toList!7347 lm!2251)))) (noDuplicateKeys!2413 (_2!32224 (h!61218 (t!362406 (toList!7347 lm!2251))))))))

(assert (=> bs!1161091 m!5804246))

(assert (=> b!4818026 d!1542450))

(declare-fun b_lambda!188745 () Bool)

(assert (= b_lambda!188681 (or b!4817685 b_lambda!188745)))

(declare-fun bs!1161092 () Bool)

(declare-fun d!1542452 () Bool)

(assert (= bs!1161092 (and d!1542452 b!4817685)))

(assert (=> bs!1161092 (= (dynLambda!22170 lambda!234910 (h!61217 (toList!7348 lt!1968016))) (contains!18618 lt!1968007 (_1!32223 (h!61217 (toList!7348 lt!1968016)))))))

(declare-fun m!5805116 () Bool)

(assert (=> bs!1161092 m!5805116))

(assert (=> b!4817992 d!1542452))

(declare-fun b_lambda!188747 () Bool)

(assert (= b_lambda!188693 (or b!4817626 b_lambda!188747)))

(declare-fun bs!1161093 () Bool)

(declare-fun d!1542454 () Bool)

(assert (= bs!1161093 (and d!1542454 b!4817626)))

(assert (=> bs!1161093 (= (dynLambda!22171 lambda!234878 (h!61220 lt!1967951)) (containsKey!4254 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))) (h!61220 lt!1967951)))))

(declare-fun m!5805118 () Bool)

(assert (=> bs!1161093 m!5805118))

(assert (=> b!4818077 d!1542454))

(declare-fun b_lambda!188749 () Bool)

(assert (= b_lambda!188705 (or b!4817631 b_lambda!188749)))

(declare-fun bs!1161094 () Bool)

(declare-fun d!1542456 () Bool)

(assert (= bs!1161094 (and d!1542456 b!4817631)))

(assert (=> bs!1161094 (= (dynLambda!22171 lambda!234877 (h!61220 lt!1967949)) (containsKey!4254 (Cons!54785 (h!61217 (toList!7348 (extractMap!2632 (toList!7347 lm!2251)))) (t!362405 (toList!7348 (extractMap!2632 (toList!7347 lm!2251))))) (h!61220 lt!1967949)))))

(declare-fun m!5805120 () Bool)

(assert (=> bs!1161094 m!5805120))

(assert (=> b!4818127 d!1542456))

(declare-fun b_lambda!188751 () Bool)

(assert (= b_lambda!188679 (or b!4817685 b_lambda!188751)))

(declare-fun bs!1161095 () Bool)

(declare-fun d!1542458 () Bool)

(assert (= bs!1161095 (and d!1542458 b!4817685)))

(assert (=> bs!1161095 (= (dynLambda!22170 lambda!234910 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251)))))) (contains!18618 lt!1968007 (_1!32223 (h!61217 (t!362405 (_2!32224 (h!61218 (toList!7347 lm!2251))))))))))

(declare-fun m!5805122 () Bool)

(assert (=> bs!1161095 m!5805122))

(assert (=> b!4817990 d!1542458))

(check-sat (not b_lambda!188535) (not d!1542332) (not bm!336033) (not b_lambda!188733) (not bm!336036) (not d!1542246) (not b!4817952) (not d!1542368) (not bs!1161083) (not b!4818148) (not d!1542136) (not b!4818044) (not bs!1161077) (not bs!1161082) (not b!4817929) (not b!4817922) (not d!1542212) (not b_lambda!188729) (not b!4817995) (not d!1542394) (not b!4818036) (not bm!336034) (not d!1542390) (not d!1542210) (not b!4818096) (not d!1542382) (not b_lambda!188727) (not b!4818032) (not b!4818056) (not b!4818037) (not b!4818033) (not b!4818068) (not b_lambda!188725) (not b_lambda!188695) (not d!1542328) (not b_lambda!188581) (not b_lambda!188741) (not b!4818088) (not d!1542318) (not b!4817860) (not d!1542408) (not b!4818149) (not b_lambda!188533) (not d!1542416) (not b!4818142) (not b!4817852) (not d!1542226) (not b_lambda!188697) (not b_lambda!188731) (not d!1542306) (not b!4818102) (not d!1542138) (not b!4818084) (not b!4818095) (not b_lambda!188583) (not b!4818136) (not bs!1161088) (not d!1542174) (not b!4818016) (not b!4818076) (not b!4817874) (not b_lambda!188579) (not b!4818108) (not b!4817933) (not d!1542130) (not b!4818051) (not b!4817958) (not bs!1161091) (not b_lambda!188577) (not b!4818042) (not b!4818147) (not b!4817849) (not b!4818106) (not b!4817957) (not b!4817867) (not b!4818035) (not bs!1161094) (not b_lambda!188739) (not b!4818024) (not b!4818001) (not bm!336039) (not b!4817954) (not b!4818049) (not b!4818100) (not d!1542384) (not b!4817987) (not bs!1161079) (not b!4818029) (not d!1542156) (not d!1542154) (not b!4818009) (not b!4817931) tp_is_empty!34241 (not bm!336037) (not d!1542346) (not b!4817926) (not b!4818040) (not b!4818072) (not b!4818070) (not b!4818003) (not d!1542292) (not b_lambda!188745) (not b!4818130) (not bs!1161092) (not b!4817930) (not b!4818098) (not b_lambda!188743) (not d!1542334) (not d!1542200) (not bs!1161086) (not b!4818146) (not b!4818061) (not b!4817953) (not b!4817989) (not d!1542406) (not d!1542400) (not b!4817996) (not bs!1161095) (not bs!1161093) (not b!4817932) (not bs!1161089) (not b!4817999) (not b!4818058) (not b!4817993) (not b!4818124) (not b!4818119) (not d!1542320) (not b!4818017) tp_is_empty!34245 (not b!4818116) (not d!1542392) (not b!4818086) (not b!4818140) (not b!4817856) (not b!4818138) (not d!1542324) (not b!4818047) (not b!4818054) (not b!4818075) (not b_lambda!188749) (not b!4818090) (not b!4818000) (not b!4817955) (not b!4818021) (not b_lambda!188719) (not b!4817991) (not b!4818069) (not bm!336032) (not b!4818134) (not b!4818104) (not d!1542294) (not d!1542336) (not b_lambda!188735) (not b_lambda!188737) (not bs!1161090) (not bs!1161087) (not b!4818144) (not b_lambda!188717) (not b!4817925) (not b_lambda!188747) (not b!4818126) (not d!1542326) (not d!1542378) (not b!4818002) (not b!4818031) (not b!4818103) (not b_lambda!188723) (not bs!1161078) (not b!4818083) (not d!1542410) (not bm!336038) (not bm!336035) (not b!4818118) (not b!4818120) (not b_lambda!188721) (not b!4817924) (not b!4817872) (not b_lambda!188751) (not b!4818019) (not b!4818048) (not b_lambda!188575) (not b!4818128) (not b!4818099) (not b!4818027) (not b!4817909) (not b_lambda!188573) (not b!4818132) (not bs!1161084) (not b!4818114) (not d!1542322) (not b!4818078) (not b!4817868) (not b_lambda!188715) (not b_lambda!188713) (not d!1542124) (not b!4818015) (not bs!1161080))
(check-sat)
