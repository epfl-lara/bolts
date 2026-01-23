; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!496508 () Bool)

(assert start!496508)

(declare-fun b!4805645 () Bool)

(declare-fun lt!1959745 () (_ BitVec 64))

(declare-datatypes ((K!15932 0))(
  ( (K!15933 (val!21051 Int)) )
))
(declare-fun key!5896 () K!15932)

(declare-datatypes ((V!16178 0))(
  ( (V!16179 (val!21052 Int)) )
))
(declare-datatypes ((tuple2!57076 0))(
  ( (tuple2!57077 (_1!31832 K!15932) (_2!31832 V!16178)) )
))
(declare-datatypes ((List!54490 0))(
  ( (Nil!54366) (Cons!54366 (h!60798 tuple2!57076) (t!361940 List!54490)) )
))
(declare-datatypes ((tuple2!57078 0))(
  ( (tuple2!57079 (_1!31833 (_ BitVec 64)) (_2!31833 List!54490)) )
))
(declare-datatypes ((List!54491 0))(
  ( (Nil!54367) (Cons!54367 (h!60799 tuple2!57078) (t!361941 List!54491)) )
))
(declare-datatypes ((ListLongMap!5455 0))(
  ( (ListLongMap!5456 (toList!7033 List!54491)) )
))
(declare-fun lm!2473 () ListLongMap!5455)

(declare-fun e!3001212 () Bool)

(declare-datatypes ((Option!13225 0))(
  ( (None!13224) (Some!13224 (v!48565 tuple2!57076)) )
))
(declare-fun isDefined!10366 (Option!13225) Bool)

(declare-fun getPair!949 (List!54490 K!15932) Option!13225)

(declare-fun apply!13058 (ListLongMap!5455 (_ BitVec 64)) List!54490)

(assert (=> b!4805645 (= e!3001212 (isDefined!10366 (getPair!949 (apply!13058 lm!2473 lt!1959745) key!5896)))))

(declare-fun b!4805646 () Bool)

(declare-fun e!3001213 () Bool)

(declare-fun tp!1358543 () Bool)

(assert (=> b!4805646 (= e!3001213 tp!1358543)))

(declare-fun b!4805647 () Bool)

(declare-fun res!2044511 () Bool)

(declare-fun e!3001214 () Bool)

(assert (=> b!4805647 (=> (not res!2044511) (not e!3001214))))

(declare-datatypes ((Hashable!6977 0))(
  ( (HashableExt!6976 (__x!33000 Int)) )
))
(declare-fun hashF!1559 () Hashable!6977)

(declare-fun allKeysSameHashInMap!2382 (ListLongMap!5455 Hashable!6977) Bool)

(assert (=> b!4805647 (= res!2044511 (allKeysSameHashInMap!2382 lm!2473 hashF!1559))))

(declare-fun e!3001211 () Bool)

(declare-fun b!4805648 () Bool)

(declare-datatypes ((ListMap!6505 0))(
  ( (ListMap!6506 (toList!7034 List!54490)) )
))
(declare-fun lt!1959743 () ListMap!6505)

(declare-fun value!3111 () V!16178)

(declare-fun apply!13059 (ListMap!6505 K!15932) V!16178)

(assert (=> b!4805648 (= e!3001211 (= (apply!13059 lt!1959743 key!5896) value!3111))))

(declare-fun b!4805649 () Bool)

(declare-fun e!3001215 () Bool)

(assert (=> b!4805649 (= e!3001214 e!3001215)))

(declare-fun res!2044510 () Bool)

(assert (=> b!4805649 (=> (not res!2044510) (not e!3001215))))

(declare-fun contains!18032 (ListMap!6505 K!15932) Bool)

(assert (=> b!4805649 (= res!2044510 (contains!18032 lt!1959743 key!5896))))

(declare-fun extractMap!2504 (List!54491) ListMap!6505)

(assert (=> b!4805649 (= lt!1959743 (extractMap!2504 (toList!7033 lm!2473)))))

(declare-fun b!4805650 () Bool)

(assert (=> b!4805650 (= e!3001215 (not e!3001211))))

(declare-fun res!2044513 () Bool)

(assert (=> b!4805650 (=> res!2044513 e!3001211)))

(declare-fun getValue!165 (List!54491 K!15932) V!16178)

(assert (=> b!4805650 (= res!2044513 (not (= (getValue!165 (toList!7033 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!619 (List!54491 K!15932) Bool)

(assert (=> b!4805650 (containsKeyBiggerList!619 (toList!7033 lm!2473) key!5896)))

(declare-datatypes ((Unit!141246 0))(
  ( (Unit!141247) )
))
(declare-fun lt!1959744 () Unit!141246)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!359 (ListLongMap!5455 K!15932 Hashable!6977) Unit!141246)

(assert (=> b!4805650 (= lt!1959744 (lemmaInLongMapThenContainsKeyBiggerList!359 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4805650 e!3001212))

(declare-fun res!2044509 () Bool)

(assert (=> b!4805650 (=> (not res!2044509) (not e!3001212))))

(declare-fun contains!18033 (ListLongMap!5455 (_ BitVec 64)) Bool)

(assert (=> b!4805650 (= res!2044509 (contains!18033 lm!2473 lt!1959745))))

(declare-fun hash!5046 (Hashable!6977 K!15932) (_ BitVec 64))

(assert (=> b!4805650 (= lt!1959745 (hash!5046 hashF!1559 key!5896))))

(declare-fun lt!1959742 () Unit!141246)

(declare-fun lemmaInGenericMapThenInLongMap!381 (ListLongMap!5455 K!15932 Hashable!6977) Unit!141246)

(assert (=> b!4805650 (= lt!1959742 (lemmaInGenericMapThenInLongMap!381 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4805651 () Bool)

(declare-fun res!2044512 () Bool)

(assert (=> b!4805651 (=> res!2044512 e!3001211)))

(assert (=> b!4805651 (= res!2044512 (is-Cons!54367 (toList!7033 lm!2473)))))

(declare-fun res!2044514 () Bool)

(assert (=> start!496508 (=> (not res!2044514) (not e!3001214))))

(declare-fun lambda!233426 () Int)

(declare-fun forall!12364 (List!54491 Int) Bool)

(assert (=> start!496508 (= res!2044514 (forall!12364 (toList!7033 lm!2473) lambda!233426))))

(assert (=> start!496508 e!3001214))

(declare-fun inv!69959 (ListLongMap!5455) Bool)

(assert (=> start!496508 (and (inv!69959 lm!2473) e!3001213)))

(assert (=> start!496508 true))

(declare-fun tp_is_empty!33769 () Bool)

(assert (=> start!496508 tp_is_empty!33769))

(declare-fun tp_is_empty!33771 () Bool)

(assert (=> start!496508 tp_is_empty!33771))

(assert (= (and start!496508 res!2044514) b!4805647))

(assert (= (and b!4805647 res!2044511) b!4805649))

(assert (= (and b!4805649 res!2044510) b!4805650))

(assert (= (and b!4805650 res!2044509) b!4805645))

(assert (= (and b!4805650 (not res!2044513)) b!4805651))

(assert (= (and b!4805651 (not res!2044512)) b!4805648))

(assert (= start!496508 b!4805646))

(declare-fun m!5792224 () Bool)

(assert (=> b!4805645 m!5792224))

(assert (=> b!4805645 m!5792224))

(declare-fun m!5792226 () Bool)

(assert (=> b!4805645 m!5792226))

(assert (=> b!4805645 m!5792226))

(declare-fun m!5792228 () Bool)

(assert (=> b!4805645 m!5792228))

(declare-fun m!5792230 () Bool)

(assert (=> start!496508 m!5792230))

(declare-fun m!5792232 () Bool)

(assert (=> start!496508 m!5792232))

(declare-fun m!5792234 () Bool)

(assert (=> b!4805649 m!5792234))

(declare-fun m!5792236 () Bool)

(assert (=> b!4805649 m!5792236))

(declare-fun m!5792238 () Bool)

(assert (=> b!4805647 m!5792238))

(declare-fun m!5792240 () Bool)

(assert (=> b!4805650 m!5792240))

(declare-fun m!5792242 () Bool)

(assert (=> b!4805650 m!5792242))

(declare-fun m!5792244 () Bool)

(assert (=> b!4805650 m!5792244))

(declare-fun m!5792246 () Bool)

(assert (=> b!4805650 m!5792246))

(declare-fun m!5792248 () Bool)

(assert (=> b!4805650 m!5792248))

(declare-fun m!5792250 () Bool)

(assert (=> b!4805650 m!5792250))

(declare-fun m!5792252 () Bool)

(assert (=> b!4805648 m!5792252))

(push 1)

(assert tp_is_empty!33771)

(assert tp_is_empty!33769)

(assert (not b!4805649))

(assert (not start!496508))

(assert (not b!4805648))

(assert (not b!4805647))

(assert (not b!4805645))

(assert (not b!4805646))

(assert (not b!4805650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1159814 () Bool)

(declare-fun d!1539644 () Bool)

(assert (= bs!1159814 (and d!1539644 start!496508)))

(declare-fun lambda!233435 () Int)

(assert (=> bs!1159814 (not (= lambda!233435 lambda!233426))))

(assert (=> d!1539644 true))

(assert (=> d!1539644 (= (allKeysSameHashInMap!2382 lm!2473 hashF!1559) (forall!12364 (toList!7033 lm!2473) lambda!233435))))

(declare-fun bs!1159815 () Bool)

(assert (= bs!1159815 d!1539644))

(declare-fun m!5792286 () Bool)

(assert (=> bs!1159815 m!5792286))

(assert (=> b!4805647 d!1539644))

(declare-fun d!1539648 () Bool)

(declare-datatypes ((Option!13227 0))(
  ( (None!13226) (Some!13226 (v!48567 V!16178)) )
))
(declare-fun get!18591 (Option!13227) V!16178)

(declare-fun getValueByKey!2424 (List!54490 K!15932) Option!13227)

(assert (=> d!1539648 (= (apply!13059 lt!1959743 key!5896) (get!18591 (getValueByKey!2424 (toList!7034 lt!1959743) key!5896)))))

(declare-fun bs!1159816 () Bool)

(assert (= bs!1159816 d!1539648))

(declare-fun m!5792288 () Bool)

(assert (=> bs!1159816 m!5792288))

(assert (=> bs!1159816 m!5792288))

(declare-fun m!5792290 () Bool)

(assert (=> bs!1159816 m!5792290))

(assert (=> b!4805648 d!1539648))

(declare-fun bm!335590 () Bool)

(declare-fun call!335595 () Bool)

(declare-datatypes ((List!54494 0))(
  ( (Nil!54370) (Cons!54370 (h!60802 K!15932) (t!361944 List!54494)) )
))
(declare-fun e!3001254 () List!54494)

(declare-fun contains!18036 (List!54494 K!15932) Bool)

(assert (=> bm!335590 (= call!335595 (contains!18036 e!3001254 key!5896))))

(declare-fun c!819244 () Bool)

(declare-fun c!819242 () Bool)

(assert (=> bm!335590 (= c!819244 c!819242)))

(declare-fun b!4805709 () Bool)

(declare-fun e!3001258 () Unit!141246)

(declare-fun Unit!141250 () Unit!141246)

(assert (=> b!4805709 (= e!3001258 Unit!141250)))

(declare-fun b!4805710 () Bool)

(declare-fun getKeysList!1113 (List!54490) List!54494)

(assert (=> b!4805710 (= e!3001254 (getKeysList!1113 (toList!7034 lt!1959743)))))

(declare-fun b!4805711 () Bool)

(declare-fun e!3001256 () Bool)

(declare-fun keys!19890 (ListMap!6505) List!54494)

(assert (=> b!4805711 (= e!3001256 (contains!18036 (keys!19890 lt!1959743) key!5896))))

(declare-fun b!4805712 () Bool)

(assert (=> b!4805712 (= e!3001254 (keys!19890 lt!1959743))))

(declare-fun b!4805713 () Bool)

(assert (=> b!4805713 false))

(declare-fun lt!1959776 () Unit!141246)

(declare-fun lt!1959777 () Unit!141246)

(assert (=> b!4805713 (= lt!1959776 lt!1959777)))

(declare-fun containsKey!4075 (List!54490 K!15932) Bool)

(assert (=> b!4805713 (containsKey!4075 (toList!7034 lt!1959743) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1113 (List!54490 K!15932) Unit!141246)

(assert (=> b!4805713 (= lt!1959777 (lemmaInGetKeysListThenContainsKey!1113 (toList!7034 lt!1959743) key!5896))))

(declare-fun Unit!141251 () Unit!141246)

(assert (=> b!4805713 (= e!3001258 Unit!141251)))

(declare-fun b!4805714 () Bool)

(declare-fun e!3001255 () Bool)

(assert (=> b!4805714 (= e!3001255 e!3001256)))

(declare-fun res!2044547 () Bool)

(assert (=> b!4805714 (=> (not res!2044547) (not e!3001256))))

(declare-fun isDefined!10368 (Option!13227) Bool)

(assert (=> b!4805714 (= res!2044547 (isDefined!10368 (getValueByKey!2424 (toList!7034 lt!1959743) key!5896)))))

(declare-fun b!4805715 () Bool)

(declare-fun e!3001253 () Unit!141246)

(declare-fun lt!1959778 () Unit!141246)

(assert (=> b!4805715 (= e!3001253 lt!1959778)))

(declare-fun lt!1959781 () Unit!141246)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2215 (List!54490 K!15932) Unit!141246)

(assert (=> b!4805715 (= lt!1959781 (lemmaContainsKeyImpliesGetValueByKeyDefined!2215 (toList!7034 lt!1959743) key!5896))))

(assert (=> b!4805715 (isDefined!10368 (getValueByKey!2424 (toList!7034 lt!1959743) key!5896))))

(declare-fun lt!1959779 () Unit!141246)

(assert (=> b!4805715 (= lt!1959779 lt!1959781)))

(declare-fun lemmaInListThenGetKeysListContains!1108 (List!54490 K!15932) Unit!141246)

(assert (=> b!4805715 (= lt!1959778 (lemmaInListThenGetKeysListContains!1108 (toList!7034 lt!1959743) key!5896))))

(assert (=> b!4805715 call!335595))

(declare-fun b!4805716 () Bool)

(declare-fun e!3001257 () Bool)

(assert (=> b!4805716 (= e!3001257 (not (contains!18036 (keys!19890 lt!1959743) key!5896)))))

(declare-fun d!1539650 () Bool)

(assert (=> d!1539650 e!3001255))

(declare-fun res!2044546 () Bool)

(assert (=> d!1539650 (=> res!2044546 e!3001255)))

(assert (=> d!1539650 (= res!2044546 e!3001257)))

(declare-fun res!2044545 () Bool)

(assert (=> d!1539650 (=> (not res!2044545) (not e!3001257))))

(declare-fun lt!1959782 () Bool)

(assert (=> d!1539650 (= res!2044545 (not lt!1959782))))

(declare-fun lt!1959783 () Bool)

(assert (=> d!1539650 (= lt!1959782 lt!1959783)))

(declare-fun lt!1959780 () Unit!141246)

(assert (=> d!1539650 (= lt!1959780 e!3001253)))

(assert (=> d!1539650 (= c!819242 lt!1959783)))

(assert (=> d!1539650 (= lt!1959783 (containsKey!4075 (toList!7034 lt!1959743) key!5896))))

(assert (=> d!1539650 (= (contains!18032 lt!1959743 key!5896) lt!1959782)))

(declare-fun b!4805717 () Bool)

(assert (=> b!4805717 (= e!3001253 e!3001258)))

(declare-fun c!819243 () Bool)

(assert (=> b!4805717 (= c!819243 call!335595)))

(assert (= (and d!1539650 c!819242) b!4805715))

(assert (= (and d!1539650 (not c!819242)) b!4805717))

(assert (= (and b!4805717 c!819243) b!4805713))

(assert (= (and b!4805717 (not c!819243)) b!4805709))

(assert (= (or b!4805715 b!4805717) bm!335590))

(assert (= (and bm!335590 c!819244) b!4805710))

(assert (= (and bm!335590 (not c!819244)) b!4805712))

(assert (= (and d!1539650 res!2044545) b!4805716))

(assert (= (and d!1539650 (not res!2044546)) b!4805714))

(assert (= (and b!4805714 res!2044547) b!4805711))

(declare-fun m!5792300 () Bool)

(assert (=> bm!335590 m!5792300))

(declare-fun m!5792302 () Bool)

(assert (=> d!1539650 m!5792302))

(declare-fun m!5792304 () Bool)

(assert (=> b!4805710 m!5792304))

(assert (=> b!4805713 m!5792302))

(declare-fun m!5792306 () Bool)

(assert (=> b!4805713 m!5792306))

(assert (=> b!4805714 m!5792288))

(assert (=> b!4805714 m!5792288))

(declare-fun m!5792308 () Bool)

(assert (=> b!4805714 m!5792308))

(declare-fun m!5792310 () Bool)

(assert (=> b!4805712 m!5792310))

(assert (=> b!4805716 m!5792310))

(assert (=> b!4805716 m!5792310))

(declare-fun m!5792312 () Bool)

(assert (=> b!4805716 m!5792312))

(declare-fun m!5792314 () Bool)

(assert (=> b!4805715 m!5792314))

(assert (=> b!4805715 m!5792288))

(assert (=> b!4805715 m!5792288))

(assert (=> b!4805715 m!5792308))

(declare-fun m!5792316 () Bool)

(assert (=> b!4805715 m!5792316))

(assert (=> b!4805711 m!5792310))

(assert (=> b!4805711 m!5792310))

(assert (=> b!4805711 m!5792312))

(assert (=> b!4805649 d!1539650))

(declare-fun bs!1159820 () Bool)

(declare-fun d!1539658 () Bool)

(assert (= bs!1159820 (and d!1539658 start!496508)))

(declare-fun lambda!233438 () Int)

(assert (=> bs!1159820 (= lambda!233438 lambda!233426)))

(declare-fun bs!1159821 () Bool)

(assert (= bs!1159821 (and d!1539658 d!1539644)))

(assert (=> bs!1159821 (not (= lambda!233438 lambda!233435))))

(declare-fun lt!1959787 () ListMap!6505)

(declare-fun invariantList!1767 (List!54490) Bool)

(assert (=> d!1539658 (invariantList!1767 (toList!7034 lt!1959787))))

(declare-fun e!3001272 () ListMap!6505)

(assert (=> d!1539658 (= lt!1959787 e!3001272)))

(declare-fun c!819249 () Bool)

(assert (=> d!1539658 (= c!819249 (is-Cons!54367 (toList!7033 lm!2473)))))

(assert (=> d!1539658 (forall!12364 (toList!7033 lm!2473) lambda!233438)))

(assert (=> d!1539658 (= (extractMap!2504 (toList!7033 lm!2473)) lt!1959787)))

(declare-fun b!4805738 () Bool)

(declare-fun addToMapMapFromBucket!1744 (List!54490 ListMap!6505) ListMap!6505)

(assert (=> b!4805738 (= e!3001272 (addToMapMapFromBucket!1744 (_2!31833 (h!60799 (toList!7033 lm!2473))) (extractMap!2504 (t!361941 (toList!7033 lm!2473)))))))

(declare-fun b!4805739 () Bool)

(assert (=> b!4805739 (= e!3001272 (ListMap!6506 Nil!54366))))

(assert (= (and d!1539658 c!819249) b!4805738))

(assert (= (and d!1539658 (not c!819249)) b!4805739))

(declare-fun m!5792336 () Bool)

(assert (=> d!1539658 m!5792336))

(declare-fun m!5792338 () Bool)

(assert (=> d!1539658 m!5792338))

(declare-fun m!5792340 () Bool)

(assert (=> b!4805738 m!5792340))

(assert (=> b!4805738 m!5792340))

(declare-fun m!5792342 () Bool)

(assert (=> b!4805738 m!5792342))

(assert (=> b!4805649 d!1539658))

(declare-fun d!1539664 () Bool)

(declare-fun res!2044564 () Bool)

(declare-fun e!3001277 () Bool)

(assert (=> d!1539664 (=> res!2044564 e!3001277)))

(assert (=> d!1539664 (= res!2044564 (is-Nil!54367 (toList!7033 lm!2473)))))

(assert (=> d!1539664 (= (forall!12364 (toList!7033 lm!2473) lambda!233426) e!3001277)))

(declare-fun b!4805744 () Bool)

(declare-fun e!3001278 () Bool)

(assert (=> b!4805744 (= e!3001277 e!3001278)))

(declare-fun res!2044565 () Bool)

(assert (=> b!4805744 (=> (not res!2044565) (not e!3001278))))

(declare-fun dynLambda!22108 (Int tuple2!57078) Bool)

(assert (=> b!4805744 (= res!2044565 (dynLambda!22108 lambda!233426 (h!60799 (toList!7033 lm!2473))))))

(declare-fun b!4805745 () Bool)

(assert (=> b!4805745 (= e!3001278 (forall!12364 (t!361941 (toList!7033 lm!2473)) lambda!233426))))

(assert (= (and d!1539664 (not res!2044564)) b!4805744))

(assert (= (and b!4805744 res!2044565) b!4805745))

(declare-fun b_lambda!188099 () Bool)

(assert (=> (not b_lambda!188099) (not b!4805744)))

(declare-fun m!5792344 () Bool)

(assert (=> b!4805744 m!5792344))

(declare-fun m!5792346 () Bool)

(assert (=> b!4805745 m!5792346))

(assert (=> start!496508 d!1539664))

(declare-fun d!1539666 () Bool)

(declare-fun isStrictlySorted!913 (List!54491) Bool)

(assert (=> d!1539666 (= (inv!69959 lm!2473) (isStrictlySorted!913 (toList!7033 lm!2473)))))

(declare-fun bs!1159822 () Bool)

(assert (= bs!1159822 d!1539666))

(declare-fun m!5792348 () Bool)

(assert (=> bs!1159822 m!5792348))

(assert (=> start!496508 d!1539666))

(declare-fun d!1539668 () Bool)

(declare-fun e!3001288 () Bool)

(assert (=> d!1539668 e!3001288))

(declare-fun res!2044570 () Bool)

(assert (=> d!1539668 (=> res!2044570 e!3001288)))

(declare-fun lt!1959805 () Bool)

(assert (=> d!1539668 (= res!2044570 (not lt!1959805))))

(declare-fun lt!1959806 () Bool)

(assert (=> d!1539668 (= lt!1959805 lt!1959806)))

(declare-fun lt!1959807 () Unit!141246)

(declare-fun e!3001287 () Unit!141246)

(assert (=> d!1539668 (= lt!1959807 e!3001287)))

(declare-fun c!819254 () Bool)

(assert (=> d!1539668 (= c!819254 lt!1959806)))

(declare-fun containsKey!4076 (List!54491 (_ BitVec 64)) Bool)

(assert (=> d!1539668 (= lt!1959806 (containsKey!4076 (toList!7033 lm!2473) lt!1959745))))

(assert (=> d!1539668 (= (contains!18033 lm!2473 lt!1959745) lt!1959805)))

(declare-fun b!4805758 () Bool)

(declare-fun lt!1959804 () Unit!141246)

(assert (=> b!4805758 (= e!3001287 lt!1959804)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2216 (List!54491 (_ BitVec 64)) Unit!141246)

(assert (=> b!4805758 (= lt!1959804 (lemmaContainsKeyImpliesGetValueByKeyDefined!2216 (toList!7033 lm!2473) lt!1959745))))

(declare-datatypes ((Option!13228 0))(
  ( (None!13227) (Some!13227 (v!48568 List!54490)) )
))
(declare-fun isDefined!10369 (Option!13228) Bool)

(declare-fun getValueByKey!2425 (List!54491 (_ BitVec 64)) Option!13228)

(assert (=> b!4805758 (isDefined!10369 (getValueByKey!2425 (toList!7033 lm!2473) lt!1959745))))

(declare-fun b!4805759 () Bool)

(declare-fun Unit!141252 () Unit!141246)

(assert (=> b!4805759 (= e!3001287 Unit!141252)))

(declare-fun b!4805760 () Bool)

(assert (=> b!4805760 (= e!3001288 (isDefined!10369 (getValueByKey!2425 (toList!7033 lm!2473) lt!1959745)))))

(assert (= (and d!1539668 c!819254) b!4805758))

(assert (= (and d!1539668 (not c!819254)) b!4805759))

(assert (= (and d!1539668 (not res!2044570)) b!4805760))

(declare-fun m!5792350 () Bool)

(assert (=> d!1539668 m!5792350))

(declare-fun m!5792352 () Bool)

(assert (=> b!4805758 m!5792352))

(declare-fun m!5792354 () Bool)

(assert (=> b!4805758 m!5792354))

(assert (=> b!4805758 m!5792354))

(declare-fun m!5792356 () Bool)

(assert (=> b!4805758 m!5792356))

(assert (=> b!4805760 m!5792354))

(assert (=> b!4805760 m!5792354))

(assert (=> b!4805760 m!5792356))

(assert (=> b!4805650 d!1539668))

(declare-fun d!1539670 () Bool)

(declare-fun res!2044579 () Bool)

(declare-fun e!3001296 () Bool)

(assert (=> d!1539670 (=> res!2044579 e!3001296)))

(declare-fun e!3001295 () Bool)

(assert (=> d!1539670 (= res!2044579 e!3001295)))

(declare-fun res!2044578 () Bool)

(assert (=> d!1539670 (=> (not res!2044578) (not e!3001295))))

(assert (=> d!1539670 (= res!2044578 (is-Cons!54367 (toList!7033 lm!2473)))))

(assert (=> d!1539670 (= (containsKeyBiggerList!619 (toList!7033 lm!2473) key!5896) e!3001296)))

(declare-fun b!4805767 () Bool)

(declare-fun containsKey!4077 (List!54490 K!15932) Bool)

(assert (=> b!4805767 (= e!3001295 (containsKey!4077 (_2!31833 (h!60799 (toList!7033 lm!2473))) key!5896))))

(declare-fun b!4805768 () Bool)

(declare-fun e!3001297 () Bool)

(assert (=> b!4805768 (= e!3001296 e!3001297)))

(declare-fun res!2044577 () Bool)

(assert (=> b!4805768 (=> (not res!2044577) (not e!3001297))))

(assert (=> b!4805768 (= res!2044577 (is-Cons!54367 (toList!7033 lm!2473)))))

(declare-fun b!4805769 () Bool)

(assert (=> b!4805769 (= e!3001297 (containsKeyBiggerList!619 (t!361941 (toList!7033 lm!2473)) key!5896))))

(assert (= (and d!1539670 res!2044578) b!4805767))

(assert (= (and d!1539670 (not res!2044579)) b!4805768))

(assert (= (and b!4805768 res!2044577) b!4805769))

(declare-fun m!5792358 () Bool)

(assert (=> b!4805767 m!5792358))

(declare-fun m!5792360 () Bool)

(assert (=> b!4805769 m!5792360))

(assert (=> b!4805650 d!1539670))

(declare-fun bs!1159823 () Bool)

(declare-fun d!1539672 () Bool)

(assert (= bs!1159823 (and d!1539672 start!496508)))

(declare-fun lambda!233441 () Int)

(assert (=> bs!1159823 (= lambda!233441 lambda!233426)))

(declare-fun bs!1159824 () Bool)

(assert (= bs!1159824 (and d!1539672 d!1539644)))

(assert (=> bs!1159824 (not (= lambda!233441 lambda!233435))))

(declare-fun bs!1159825 () Bool)

(assert (= bs!1159825 (and d!1539672 d!1539658)))

(assert (=> bs!1159825 (= lambda!233441 lambda!233438)))

(assert (=> d!1539672 (containsKeyBiggerList!619 (toList!7033 lm!2473) key!5896)))

(declare-fun lt!1959814 () Unit!141246)

(declare-fun choose!34797 (ListLongMap!5455 K!15932 Hashable!6977) Unit!141246)

(assert (=> d!1539672 (= lt!1959814 (choose!34797 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1539672 (forall!12364 (toList!7033 lm!2473) lambda!233441)))

(assert (=> d!1539672 (= (lemmaInLongMapThenContainsKeyBiggerList!359 lm!2473 key!5896 hashF!1559) lt!1959814)))

(declare-fun bs!1159826 () Bool)

(assert (= bs!1159826 d!1539672))

(assert (=> bs!1159826 m!5792240))

(declare-fun m!5792368 () Bool)

(assert (=> bs!1159826 m!5792368))

(declare-fun m!5792370 () Bool)

(assert (=> bs!1159826 m!5792370))

(assert (=> b!4805650 d!1539672))

(declare-fun bs!1159827 () Bool)

(declare-fun d!1539676 () Bool)

(assert (= bs!1159827 (and d!1539676 start!496508)))

(declare-fun lambda!233444 () Int)

(assert (=> bs!1159827 (= lambda!233444 lambda!233426)))

(declare-fun bs!1159828 () Bool)

(assert (= bs!1159828 (and d!1539676 d!1539644)))

(assert (=> bs!1159828 (not (= lambda!233444 lambda!233435))))

(declare-fun bs!1159829 () Bool)

(assert (= bs!1159829 (and d!1539676 d!1539658)))

(assert (=> bs!1159829 (= lambda!233444 lambda!233438)))

(declare-fun bs!1159830 () Bool)

(assert (= bs!1159830 (and d!1539676 d!1539672)))

(assert (=> bs!1159830 (= lambda!233444 lambda!233441)))

(declare-fun e!3001311 () Bool)

(assert (=> d!1539676 e!3001311))

(declare-fun res!2044592 () Bool)

(assert (=> d!1539676 (=> (not res!2044592) (not e!3001311))))

(assert (=> d!1539676 (= res!2044592 (contains!18033 lm!2473 (hash!5046 hashF!1559 key!5896)))))

(declare-fun lt!1959817 () Unit!141246)

(declare-fun choose!34798 (ListLongMap!5455 K!15932 Hashable!6977) Unit!141246)

(assert (=> d!1539676 (= lt!1959817 (choose!34798 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1539676 (forall!12364 (toList!7033 lm!2473) lambda!233444)))

(assert (=> d!1539676 (= (lemmaInGenericMapThenInLongMap!381 lm!2473 key!5896 hashF!1559) lt!1959817)))

(declare-fun b!4805784 () Bool)

(assert (=> b!4805784 (= e!3001311 (isDefined!10366 (getPair!949 (apply!13058 lm!2473 (hash!5046 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1539676 res!2044592) b!4805784))

(assert (=> d!1539676 m!5792242))

(assert (=> d!1539676 m!5792242))

(declare-fun m!5792376 () Bool)

(assert (=> d!1539676 m!5792376))

(declare-fun m!5792378 () Bool)

(assert (=> d!1539676 m!5792378))

(declare-fun m!5792380 () Bool)

(assert (=> d!1539676 m!5792380))

(assert (=> b!4805784 m!5792242))

(assert (=> b!4805784 m!5792242))

(declare-fun m!5792382 () Bool)

(assert (=> b!4805784 m!5792382))

(assert (=> b!4805784 m!5792382))

(declare-fun m!5792384 () Bool)

(assert (=> b!4805784 m!5792384))

(assert (=> b!4805784 m!5792384))

(declare-fun m!5792386 () Bool)

(assert (=> b!4805784 m!5792386))

(assert (=> b!4805650 d!1539676))

(declare-fun d!1539680 () Bool)

(declare-fun c!819258 () Bool)

(declare-fun e!3001317 () Bool)

(assert (=> d!1539680 (= c!819258 e!3001317)))

(declare-fun res!2044595 () Bool)

(assert (=> d!1539680 (=> (not res!2044595) (not e!3001317))))

(assert (=> d!1539680 (= res!2044595 (is-Cons!54367 (toList!7033 lm!2473)))))

(declare-fun e!3001316 () V!16178)

(assert (=> d!1539680 (= (getValue!165 (toList!7033 lm!2473) key!5896) e!3001316)))

(declare-fun b!4805793 () Bool)

(assert (=> b!4805793 (= e!3001317 (containsKey!4077 (_2!31833 (h!60799 (toList!7033 lm!2473))) key!5896))))

(declare-fun b!4805791 () Bool)

(declare-fun get!18592 (Option!13225) tuple2!57076)

(assert (=> b!4805791 (= e!3001316 (_2!31832 (get!18592 (getPair!949 (_2!31833 (h!60799 (toList!7033 lm!2473))) key!5896))))))

(declare-fun b!4805792 () Bool)

(assert (=> b!4805792 (= e!3001316 (getValue!165 (t!361941 (toList!7033 lm!2473)) key!5896))))

(assert (= (and d!1539680 res!2044595) b!4805793))

(assert (= (and d!1539680 c!819258) b!4805791))

(assert (= (and d!1539680 (not c!819258)) b!4805792))

(assert (=> b!4805793 m!5792358))

(declare-fun m!5792388 () Bool)

(assert (=> b!4805791 m!5792388))

(assert (=> b!4805791 m!5792388))

(declare-fun m!5792390 () Bool)

(assert (=> b!4805791 m!5792390))

(declare-fun m!5792392 () Bool)

(assert (=> b!4805792 m!5792392))

(assert (=> b!4805650 d!1539680))

(declare-fun d!1539682 () Bool)

(declare-fun hash!5048 (Hashable!6977 K!15932) (_ BitVec 64))

(assert (=> d!1539682 (= (hash!5046 hashF!1559 key!5896) (hash!5048 hashF!1559 key!5896))))

(declare-fun bs!1159831 () Bool)

(assert (= bs!1159831 d!1539682))

(declare-fun m!5792394 () Bool)

(assert (=> bs!1159831 m!5792394))

(assert (=> b!4805650 d!1539682))

(declare-fun d!1539684 () Bool)

(declare-fun isEmpty!29532 (Option!13225) Bool)

(assert (=> d!1539684 (= (isDefined!10366 (getPair!949 (apply!13058 lm!2473 lt!1959745) key!5896)) (not (isEmpty!29532 (getPair!949 (apply!13058 lm!2473 lt!1959745) key!5896))))))

(declare-fun bs!1159834 () Bool)

(assert (= bs!1159834 d!1539684))

(assert (=> bs!1159834 m!5792226))

(declare-fun m!5792396 () Bool)

(assert (=> bs!1159834 m!5792396))

(assert (=> b!4805645 d!1539684))

(declare-fun b!4805810 () Bool)

(declare-fun e!3001331 () Option!13225)

(assert (=> b!4805810 (= e!3001331 None!13224)))

(declare-fun b!4805811 () Bool)

(declare-fun res!2044605 () Bool)

(declare-fun e!3001328 () Bool)

(assert (=> b!4805811 (=> (not res!2044605) (not e!3001328))))

(declare-fun lt!1959823 () Option!13225)

(assert (=> b!4805811 (= res!2044605 (= (_1!31832 (get!18592 lt!1959823)) key!5896))))

(declare-fun b!4805812 () Bool)

(declare-fun e!3001329 () Option!13225)

(assert (=> b!4805812 (= e!3001329 (Some!13224 (h!60798 (apply!13058 lm!2473 lt!1959745))))))

(declare-fun b!4805813 () Bool)

(declare-fun contains!18037 (List!54490 tuple2!57076) Bool)

(assert (=> b!4805813 (= e!3001328 (contains!18037 (apply!13058 lm!2473 lt!1959745) (get!18592 lt!1959823)))))

(declare-fun b!4805814 () Bool)

(assert (=> b!4805814 (= e!3001329 e!3001331)))

(declare-fun c!819263 () Bool)

(assert (=> b!4805814 (= c!819263 (is-Cons!54366 (apply!13058 lm!2473 lt!1959745)))))

(declare-fun d!1539686 () Bool)

(declare-fun e!3001332 () Bool)

(assert (=> d!1539686 e!3001332))

(declare-fun res!2044606 () Bool)

(assert (=> d!1539686 (=> res!2044606 e!3001332)))

(declare-fun e!3001330 () Bool)

(assert (=> d!1539686 (= res!2044606 e!3001330)))

(declare-fun res!2044604 () Bool)

(assert (=> d!1539686 (=> (not res!2044604) (not e!3001330))))

(assert (=> d!1539686 (= res!2044604 (isEmpty!29532 lt!1959823))))

(assert (=> d!1539686 (= lt!1959823 e!3001329)))

(declare-fun c!819264 () Bool)

(assert (=> d!1539686 (= c!819264 (and (is-Cons!54366 (apply!13058 lm!2473 lt!1959745)) (= (_1!31832 (h!60798 (apply!13058 lm!2473 lt!1959745))) key!5896)))))

(declare-fun noDuplicateKeys!2375 (List!54490) Bool)

(assert (=> d!1539686 (noDuplicateKeys!2375 (apply!13058 lm!2473 lt!1959745))))

(assert (=> d!1539686 (= (getPair!949 (apply!13058 lm!2473 lt!1959745) key!5896) lt!1959823)))

(declare-fun b!4805815 () Bool)

(assert (=> b!4805815 (= e!3001332 e!3001328)))

(declare-fun res!2044607 () Bool)

(assert (=> b!4805815 (=> (not res!2044607) (not e!3001328))))

(assert (=> b!4805815 (= res!2044607 (isDefined!10366 lt!1959823))))

(declare-fun b!4805816 () Bool)

(assert (=> b!4805816 (= e!3001331 (getPair!949 (t!361940 (apply!13058 lm!2473 lt!1959745)) key!5896))))

(declare-fun b!4805817 () Bool)

(assert (=> b!4805817 (= e!3001330 (not (containsKey!4077 (apply!13058 lm!2473 lt!1959745) key!5896)))))

(assert (= (and d!1539686 c!819264) b!4805812))

(assert (= (and d!1539686 (not c!819264)) b!4805814))

(assert (= (and b!4805814 c!819263) b!4805816))

(assert (= (and b!4805814 (not c!819263)) b!4805810))

(assert (= (and d!1539686 res!2044604) b!4805817))

(assert (= (and d!1539686 (not res!2044606)) b!4805815))

(assert (= (and b!4805815 res!2044607) b!4805811))

(assert (= (and b!4805811 res!2044605) b!4805813))

(assert (=> b!4805817 m!5792224))

(declare-fun m!5792402 () Bool)

(assert (=> b!4805817 m!5792402))

(declare-fun m!5792404 () Bool)

(assert (=> b!4805811 m!5792404))

(declare-fun m!5792406 () Bool)

(assert (=> b!4805815 m!5792406))

(declare-fun m!5792408 () Bool)

(assert (=> d!1539686 m!5792408))

(assert (=> d!1539686 m!5792224))

(declare-fun m!5792410 () Bool)

(assert (=> d!1539686 m!5792410))

(assert (=> b!4805813 m!5792404))

(assert (=> b!4805813 m!5792224))

(assert (=> b!4805813 m!5792404))

(declare-fun m!5792412 () Bool)

(assert (=> b!4805813 m!5792412))

(declare-fun m!5792414 () Bool)

(assert (=> b!4805816 m!5792414))

(assert (=> b!4805645 d!1539686))

(declare-fun d!1539690 () Bool)

(declare-fun get!18593 (Option!13228) List!54490)

(assert (=> d!1539690 (= (apply!13058 lm!2473 lt!1959745) (get!18593 (getValueByKey!2425 (toList!7033 lm!2473) lt!1959745)))))

(declare-fun bs!1159836 () Bool)

(assert (= bs!1159836 d!1539690))

(assert (=> bs!1159836 m!5792354))

(assert (=> bs!1159836 m!5792354))

(declare-fun m!5792416 () Bool)

(assert (=> bs!1159836 m!5792416))

(assert (=> b!4805645 d!1539690))

(declare-fun b!4805822 () Bool)

(declare-fun e!3001335 () Bool)

(declare-fun tp!1358551 () Bool)

(declare-fun tp!1358552 () Bool)

(assert (=> b!4805822 (= e!3001335 (and tp!1358551 tp!1358552))))

(assert (=> b!4805646 (= tp!1358543 e!3001335)))

(assert (= (and b!4805646 (is-Cons!54367 (toList!7033 lm!2473))) b!4805822))

(declare-fun b_lambda!188101 () Bool)

(assert (= b_lambda!188099 (or start!496508 b_lambda!188101)))

(declare-fun bs!1159837 () Bool)

(declare-fun d!1539692 () Bool)

(assert (= bs!1159837 (and d!1539692 start!496508)))

(assert (=> bs!1159837 (= (dynLambda!22108 lambda!233426 (h!60799 (toList!7033 lm!2473))) (noDuplicateKeys!2375 (_2!31833 (h!60799 (toList!7033 lm!2473)))))))

(declare-fun m!5792418 () Bool)

(assert (=> bs!1159837 m!5792418))

(assert (=> b!4805744 d!1539692))

(push 1)

(assert tp_is_empty!33769)

(assert (not b!4805713))

(assert (not b!4805758))

(assert (not d!1539676))

(assert (not b!4805760))

(assert (not d!1539690))

(assert (not d!1539682))

(assert (not bm!335590))

(assert (not b!4805816))

(assert (not d!1539648))

(assert (not bs!1159837))

(assert (not b!4805813))

(assert tp_is_empty!33771)

(assert (not b!4805716))

(assert (not b!4805711))

(assert (not b!4805815))

(assert (not b!4805712))

(assert (not d!1539658))

(assert (not d!1539668))

(assert (not b!4805793))

(assert (not b!4805791))

(assert (not b!4805784))

(assert (not d!1539684))

(assert (not b!4805769))

(assert (not d!1539666))

(assert (not b!4805715))

(assert (not b_lambda!188101))

(assert (not b!4805822))

(assert (not b!4805738))

(assert (not b!4805745))

(assert (not d!1539650))

(assert (not b!4805714))

(assert (not b!4805767))

(assert (not b!4805792))

(assert (not d!1539686))

(assert (not d!1539672))

(assert (not d!1539644))

(assert (not b!4805811))

(assert (not b!4805710))

(assert (not b!4805817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

