; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!482074 () Bool)

(assert start!482074)

(declare-fun b!4730732 () Bool)

(declare-fun res!2002797 () Bool)

(declare-fun e!2950759 () Bool)

(assert (=> b!4730732 (=> res!2002797 e!2950759)))

(declare-datatypes ((K!14233 0))(
  ( (K!14234 (val!19657 Int)) )
))
(declare-fun key!4653 () K!14233)

(declare-datatypes ((V!14479 0))(
  ( (V!14480 (val!19658 Int)) )
))
(declare-datatypes ((tuple2!54526 0))(
  ( (tuple2!54527 (_1!30557 K!14233) (_2!30557 V!14479)) )
))
(declare-datatypes ((List!53006 0))(
  ( (Nil!52882) (Cons!52882 (h!59243 tuple2!54526) (t!360282 List!53006)) )
))
(declare-fun lt!1894001 () List!53006)

(declare-fun oldBucket!34 () List!53006)

(declare-fun removePairForKey!1628 (List!53006 K!14233) List!53006)

(assert (=> b!4730732 (= res!2002797 (not (= (removePairForKey!1628 (t!360282 oldBucket!34) key!4653) lt!1894001)))))

(declare-fun b!4730733 () Bool)

(declare-fun e!2950764 () Bool)

(declare-fun e!2950762 () Bool)

(assert (=> b!4730733 (= e!2950764 e!2950762)))

(declare-fun res!2002793 () Bool)

(assert (=> b!4730733 (=> (not res!2002793) (not e!2950762))))

(declare-fun lt!1894004 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4730733 (= res!2002793 (= lt!1894004 hash!405))))

(declare-datatypes ((Hashable!6402 0))(
  ( (HashableExt!6401 (__x!32105 Int)) )
))
(declare-fun hashF!1323 () Hashable!6402)

(declare-fun hash!4416 (Hashable!6402 K!14233) (_ BitVec 64))

(assert (=> b!4730733 (= lt!1894004 (hash!4416 hashF!1323 key!4653))))

(declare-fun b!4730734 () Bool)

(declare-fun e!2950767 () Bool)

(assert (=> b!4730734 (= e!2950767 e!2950759)))

(declare-fun res!2002785 () Bool)

(assert (=> b!4730734 (=> res!2002785 e!2950759)))

(declare-fun tail!9045 (List!53006) List!53006)

(assert (=> b!4730734 (= res!2002785 (not (= (removePairForKey!1628 (tail!9045 oldBucket!34) key!4653) lt!1894001)))))

(declare-fun newBucket!218 () List!53006)

(assert (=> b!4730734 (= lt!1894001 (tail!9045 newBucket!218))))

(declare-fun b!4730735 () Bool)

(declare-fun res!2002789 () Bool)

(assert (=> b!4730735 (=> (not res!2002789) (not e!2950762))))

(declare-datatypes ((tuple2!54528 0))(
  ( (tuple2!54529 (_1!30558 (_ BitVec 64)) (_2!30558 List!53006)) )
))
(declare-datatypes ((List!53007 0))(
  ( (Nil!52883) (Cons!52883 (h!59244 tuple2!54528) (t!360283 List!53007)) )
))
(declare-datatypes ((ListLongMap!4485 0))(
  ( (ListLongMap!4486 (toList!5955 List!53007)) )
))
(declare-fun lm!2023 () ListLongMap!4485)

(declare-fun head!10273 (List!53007) tuple2!54528)

(assert (=> b!4730735 (= res!2002789 (= (head!10273 (toList!5955 lm!2023)) (tuple2!54529 hash!405 oldBucket!34)))))

(declare-fun b!4730736 () Bool)

(declare-fun res!2002795 () Bool)

(declare-fun e!2950763 () Bool)

(assert (=> b!4730736 (=> (not res!2002795) (not e!2950763))))

(declare-fun allKeysSameHash!1859 (List!53006 (_ BitVec 64) Hashable!6402) Bool)

(assert (=> b!4730736 (= res!2002795 (allKeysSameHash!1859 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4730737 () Bool)

(assert (=> b!4730737 (= e!2950763 e!2950764)))

(declare-fun res!2002784 () Bool)

(assert (=> b!4730737 (=> (not res!2002784) (not e!2950764))))

(declare-datatypes ((ListMap!5319 0))(
  ( (ListMap!5320 (toList!5956 List!53006)) )
))
(declare-fun lt!1894010 () ListMap!5319)

(declare-fun contains!16244 (ListMap!5319 K!14233) Bool)

(assert (=> b!4730737 (= res!2002784 (contains!16244 lt!1894010 key!4653))))

(declare-fun extractMap!2059 (List!53007) ListMap!5319)

(assert (=> b!4730737 (= lt!1894010 (extractMap!2059 (toList!5955 lm!2023)))))

(declare-fun b!4730739 () Bool)

(declare-fun e!2950760 () Bool)

(assert (=> b!4730739 (= e!2950762 (not e!2950760))))

(declare-fun res!2002782 () Bool)

(assert (=> b!4730739 (=> res!2002782 e!2950760)))

(assert (=> b!4730739 (= res!2002782 (or (and (is-Cons!52882 oldBucket!34) (= (_1!30557 (h!59243 oldBucket!34)) key!4653)) (not (is-Cons!52882 oldBucket!34)) (= (_1!30557 (h!59243 oldBucket!34)) key!4653)))))

(declare-fun e!2950757 () Bool)

(assert (=> b!4730739 e!2950757))

(declare-fun res!2002780 () Bool)

(assert (=> b!4730739 (=> (not res!2002780) (not e!2950757))))

(declare-fun tail!9046 (ListLongMap!4485) ListLongMap!4485)

(assert (=> b!4730739 (= res!2002780 (= (t!360283 (toList!5955 lm!2023)) (toList!5955 (tail!9046 lm!2023))))))

(declare-fun b!4730740 () Bool)

(declare-fun res!2002794 () Bool)

(assert (=> b!4730740 (=> (not res!2002794) (not e!2950762))))

(assert (=> b!4730740 (= res!2002794 (is-Cons!52883 (toList!5955 lm!2023)))))

(declare-fun b!4730741 () Bool)

(declare-fun res!2002783 () Bool)

(assert (=> b!4730741 (=> (not res!2002783) (not e!2950762))))

(declare-fun allKeysSameHashInMap!1947 (ListLongMap!4485 Hashable!6402) Bool)

(assert (=> b!4730741 (= res!2002783 (allKeysSameHashInMap!1947 lm!2023 hashF!1323))))

(declare-fun b!4730742 () Bool)

(declare-fun e!2950766 () Bool)

(declare-fun lt!1894003 () List!53007)

(declare-fun containsKeyBiggerList!327 (List!53007 K!14233) Bool)

(assert (=> b!4730742 (= e!2950766 (containsKeyBiggerList!327 lt!1894003 key!4653))))

(declare-fun b!4730743 () Bool)

(declare-fun res!2002791 () Bool)

(assert (=> b!4730743 (=> res!2002791 e!2950766)))

(assert (=> b!4730743 (= res!2002791 (not (allKeysSameHashInMap!1947 (ListLongMap!4486 lt!1894003) hashF!1323)))))

(declare-fun b!4730744 () Bool)

(assert (=> b!4730744 (= e!2950759 e!2950766)))

(declare-fun res!2002790 () Bool)

(assert (=> b!4730744 (=> res!2002790 e!2950766)))

(declare-fun lambda!217059 () Int)

(declare-fun forall!11630 (List!53007 Int) Bool)

(assert (=> b!4730744 (= res!2002790 (not (forall!11630 lt!1894003 lambda!217059)))))

(assert (=> b!4730744 (= lt!1894003 (Cons!52883 (tuple2!54529 hash!405 (t!360282 oldBucket!34)) (t!360283 (toList!5955 lm!2023))))))

(declare-fun b!4730745 () Bool)

(declare-fun res!2002788 () Bool)

(assert (=> b!4730745 (=> (not res!2002788) (not e!2950762))))

(assert (=> b!4730745 (= res!2002788 (allKeysSameHash!1859 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4730746 () Bool)

(declare-fun res!2002796 () Bool)

(assert (=> b!4730746 (=> (not res!2002796) (not e!2950763))))

(assert (=> b!4730746 (= res!2002796 (= (removePairForKey!1628 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4730747 () Bool)

(declare-fun e!2950758 () Bool)

(declare-fun tp!1348780 () Bool)

(assert (=> b!4730747 (= e!2950758 tp!1348780)))

(declare-fun b!4730748 () Bool)

(declare-fun addToMapMapFromBucket!1463 (List!53006 ListMap!5319) ListMap!5319)

(assert (=> b!4730748 (= e!2950757 (= lt!1894010 (addToMapMapFromBucket!1463 (_2!30558 (h!59244 (toList!5955 lm!2023))) (extractMap!2059 (t!360283 (toList!5955 lm!2023))))))))

(declare-fun b!4730749 () Bool)

(assert (=> b!4730749 (= e!2950760 e!2950767)))

(declare-fun res!2002787 () Bool)

(assert (=> b!4730749 (=> res!2002787 e!2950767)))

(declare-fun containsKey!3407 (List!53006 K!14233) Bool)

(assert (=> b!4730749 (= res!2002787 (not (containsKey!3407 (t!360282 oldBucket!34) key!4653)))))

(assert (=> b!4730749 (containsKey!3407 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!131471 0))(
  ( (Unit!131472) )
))
(declare-fun lt!1894002 () Unit!131471)

(declare-fun lemmaGetPairDefinedThenContainsKey!317 (List!53006 K!14233 Hashable!6402) Unit!131471)

(assert (=> b!4730749 (= lt!1894002 (lemmaGetPairDefinedThenContainsKey!317 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1894008 () List!53006)

(declare-datatypes ((Option!12393 0))(
  ( (None!12392) (Some!12392 (v!47005 tuple2!54526)) )
))
(declare-fun isDefined!9647 (Option!12393) Bool)

(declare-fun getPair!573 (List!53006 K!14233) Option!12393)

(assert (=> b!4730749 (isDefined!9647 (getPair!573 lt!1894008 key!4653))))

(declare-fun lt!1894005 () Unit!131471)

(declare-fun lt!1894006 () tuple2!54528)

(declare-fun forallContained!3670 (List!53007 Int tuple2!54528) Unit!131471)

(assert (=> b!4730749 (= lt!1894005 (forallContained!3670 (toList!5955 lm!2023) lambda!217059 lt!1894006))))

(declare-fun contains!16245 (List!53007 tuple2!54528) Bool)

(assert (=> b!4730749 (contains!16245 (toList!5955 lm!2023) lt!1894006)))

(assert (=> b!4730749 (= lt!1894006 (tuple2!54529 lt!1894004 lt!1894008))))

(declare-fun lt!1894000 () Unit!131471)

(declare-fun lemmaGetValueImpliesTupleContained!378 (ListLongMap!4485 (_ BitVec 64) List!53006) Unit!131471)

(assert (=> b!4730749 (= lt!1894000 (lemmaGetValueImpliesTupleContained!378 lm!2023 lt!1894004 lt!1894008))))

(declare-fun apply!12458 (ListLongMap!4485 (_ BitVec 64)) List!53006)

(assert (=> b!4730749 (= lt!1894008 (apply!12458 lm!2023 lt!1894004))))

(declare-fun contains!16246 (ListLongMap!4485 (_ BitVec 64)) Bool)

(assert (=> b!4730749 (contains!16246 lm!2023 lt!1894004)))

(declare-fun lt!1894009 () Unit!131471)

(declare-fun lemmaInGenMapThenLongMapContainsHash!779 (ListLongMap!4485 K!14233 Hashable!6402) Unit!131471)

(assert (=> b!4730749 (= lt!1894009 (lemmaInGenMapThenLongMapContainsHash!779 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1894007 () Unit!131471)

(declare-fun lemmaInGenMapThenGetPairDefined!369 (ListLongMap!4485 K!14233 Hashable!6402) Unit!131471)

(assert (=> b!4730749 (= lt!1894007 (lemmaInGenMapThenGetPairDefined!369 lm!2023 key!4653 hashF!1323))))

(declare-fun tp_is_empty!31425 () Bool)

(declare-fun b!4730750 () Bool)

(declare-fun tp_is_empty!31427 () Bool)

(declare-fun tp!1348779 () Bool)

(declare-fun e!2950765 () Bool)

(assert (=> b!4730750 (= e!2950765 (and tp_is_empty!31425 tp_is_empty!31427 tp!1348779))))

(declare-fun res!2002786 () Bool)

(assert (=> start!482074 (=> (not res!2002786) (not e!2950763))))

(assert (=> start!482074 (= res!2002786 (forall!11630 (toList!5955 lm!2023) lambda!217059))))

(assert (=> start!482074 e!2950763))

(declare-fun inv!68108 (ListLongMap!4485) Bool)

(assert (=> start!482074 (and (inv!68108 lm!2023) e!2950758)))

(assert (=> start!482074 tp_is_empty!31425))

(assert (=> start!482074 e!2950765))

(assert (=> start!482074 true))

(declare-fun e!2950761 () Bool)

(assert (=> start!482074 e!2950761))

(declare-fun b!4730738 () Bool)

(declare-fun res!2002781 () Bool)

(assert (=> b!4730738 (=> (not res!2002781) (not e!2950763))))

(declare-fun noDuplicateKeys!2033 (List!53006) Bool)

(assert (=> b!4730738 (= res!2002781 (noDuplicateKeys!2033 oldBucket!34))))

(declare-fun b!4730751 () Bool)

(declare-fun res!2002792 () Bool)

(assert (=> b!4730751 (=> (not res!2002792) (not e!2950763))))

(assert (=> b!4730751 (= res!2002792 (noDuplicateKeys!2033 newBucket!218))))

(declare-fun tp!1348778 () Bool)

(declare-fun b!4730752 () Bool)

(assert (=> b!4730752 (= e!2950761 (and tp_is_empty!31425 tp_is_empty!31427 tp!1348778))))

(assert (= (and start!482074 res!2002786) b!4730738))

(assert (= (and b!4730738 res!2002781) b!4730751))

(assert (= (and b!4730751 res!2002792) b!4730746))

(assert (= (and b!4730746 res!2002796) b!4730736))

(assert (= (and b!4730736 res!2002795) b!4730737))

(assert (= (and b!4730737 res!2002784) b!4730733))

(assert (= (and b!4730733 res!2002793) b!4730745))

(assert (= (and b!4730745 res!2002788) b!4730741))

(assert (= (and b!4730741 res!2002783) b!4730735))

(assert (= (and b!4730735 res!2002789) b!4730740))

(assert (= (and b!4730740 res!2002794) b!4730739))

(assert (= (and b!4730739 res!2002780) b!4730748))

(assert (= (and b!4730739 (not res!2002782)) b!4730749))

(assert (= (and b!4730749 (not res!2002787)) b!4730734))

(assert (= (and b!4730734 (not res!2002785)) b!4730732))

(assert (= (and b!4730732 (not res!2002797)) b!4730744))

(assert (= (and b!4730744 (not res!2002790)) b!4730743))

(assert (= (and b!4730743 (not res!2002791)) b!4730742))

(assert (= start!482074 b!4730747))

(assert (= (and start!482074 (is-Cons!52882 oldBucket!34)) b!4730750))

(assert (= (and start!482074 (is-Cons!52882 newBucket!218)) b!4730752))

(declare-fun m!5673217 () Bool)

(assert (=> b!4730745 m!5673217))

(declare-fun m!5673219 () Bool)

(assert (=> b!4730741 m!5673219))

(declare-fun m!5673221 () Bool)

(assert (=> start!482074 m!5673221))

(declare-fun m!5673223 () Bool)

(assert (=> start!482074 m!5673223))

(declare-fun m!5673225 () Bool)

(assert (=> b!4730751 m!5673225))

(declare-fun m!5673227 () Bool)

(assert (=> b!4730735 m!5673227))

(declare-fun m!5673229 () Bool)

(assert (=> b!4730737 m!5673229))

(declare-fun m!5673231 () Bool)

(assert (=> b!4730737 m!5673231))

(declare-fun m!5673233 () Bool)

(assert (=> b!4730736 m!5673233))

(declare-fun m!5673235 () Bool)

(assert (=> b!4730739 m!5673235))

(declare-fun m!5673237 () Bool)

(assert (=> b!4730742 m!5673237))

(declare-fun m!5673239 () Bool)

(assert (=> b!4730749 m!5673239))

(declare-fun m!5673241 () Bool)

(assert (=> b!4730749 m!5673241))

(declare-fun m!5673243 () Bool)

(assert (=> b!4730749 m!5673243))

(declare-fun m!5673245 () Bool)

(assert (=> b!4730749 m!5673245))

(declare-fun m!5673247 () Bool)

(assert (=> b!4730749 m!5673247))

(assert (=> b!4730749 m!5673239))

(declare-fun m!5673249 () Bool)

(assert (=> b!4730749 m!5673249))

(declare-fun m!5673251 () Bool)

(assert (=> b!4730749 m!5673251))

(declare-fun m!5673253 () Bool)

(assert (=> b!4730749 m!5673253))

(declare-fun m!5673255 () Bool)

(assert (=> b!4730749 m!5673255))

(declare-fun m!5673257 () Bool)

(assert (=> b!4730749 m!5673257))

(declare-fun m!5673259 () Bool)

(assert (=> b!4730749 m!5673259))

(declare-fun m!5673261 () Bool)

(assert (=> b!4730749 m!5673261))

(declare-fun m!5673263 () Bool)

(assert (=> b!4730744 m!5673263))

(declare-fun m!5673265 () Bool)

(assert (=> b!4730738 m!5673265))

(declare-fun m!5673267 () Bool)

(assert (=> b!4730733 m!5673267))

(declare-fun m!5673269 () Bool)

(assert (=> b!4730732 m!5673269))

(declare-fun m!5673271 () Bool)

(assert (=> b!4730734 m!5673271))

(assert (=> b!4730734 m!5673271))

(declare-fun m!5673273 () Bool)

(assert (=> b!4730734 m!5673273))

(declare-fun m!5673275 () Bool)

(assert (=> b!4730734 m!5673275))

(declare-fun m!5673277 () Bool)

(assert (=> b!4730746 m!5673277))

(declare-fun m!5673279 () Bool)

(assert (=> b!4730748 m!5673279))

(assert (=> b!4730748 m!5673279))

(declare-fun m!5673281 () Bool)

(assert (=> b!4730748 m!5673281))

(declare-fun m!5673283 () Bool)

(assert (=> b!4730743 m!5673283))

(push 1)

(assert (not b!4730737))

(assert (not b!4730738))

(assert (not b!4730741))

(assert (not b!4730734))

(assert (not b!4730750))

(assert (not b!4730739))

(assert (not b!4730749))

(assert (not b!4730736))

(assert (not b!4730743))

(assert tp_is_empty!31425)

(assert (not b!4730747))

(assert (not b!4730735))

(assert (not b!4730752))

(assert (not b!4730732))

(assert (not b!4730742))

(assert (not b!4730746))

(assert tp_is_empty!31427)

(assert (not b!4730751))

(assert (not b!4730733))

(assert (not b!4730748))

(assert (not start!482074))

(assert (not b!4730745))

(assert (not b!4730744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1508853 () Bool)

(declare-fun tail!9049 (List!53007) List!53007)

(assert (=> d!1508853 (= (tail!9046 lm!2023) (ListLongMap!4486 (tail!9049 (toList!5955 lm!2023))))))

(declare-fun bs!1120529 () Bool)

(assert (= bs!1120529 d!1508853))

(declare-fun m!5673353 () Bool)

(assert (=> bs!1120529 m!5673353))

(assert (=> b!4730739 d!1508853))

(declare-fun d!1508855 () Bool)

(declare-fun res!2002856 () Bool)

(declare-fun e!2950805 () Bool)

(assert (=> d!1508855 (=> res!2002856 e!2950805)))

(assert (=> d!1508855 (= res!2002856 (not (is-Cons!52882 newBucket!218)))))

(assert (=> d!1508855 (= (noDuplicateKeys!2033 newBucket!218) e!2950805)))

(declare-fun b!4730820 () Bool)

(declare-fun e!2950806 () Bool)

(assert (=> b!4730820 (= e!2950805 e!2950806)))

(declare-fun res!2002857 () Bool)

(assert (=> b!4730820 (=> (not res!2002857) (not e!2950806))))

(assert (=> b!4730820 (= res!2002857 (not (containsKey!3407 (t!360282 newBucket!218) (_1!30557 (h!59243 newBucket!218)))))))

(declare-fun b!4730821 () Bool)

(assert (=> b!4730821 (= e!2950806 (noDuplicateKeys!2033 (t!360282 newBucket!218)))))

(assert (= (and d!1508855 (not res!2002856)) b!4730820))

(assert (= (and b!4730820 res!2002857) b!4730821))

(declare-fun m!5673355 () Bool)

(assert (=> b!4730820 m!5673355))

(declare-fun m!5673357 () Bool)

(assert (=> b!4730821 m!5673357))

(assert (=> b!4730751 d!1508855))

(declare-fun bs!1120530 () Bool)

(declare-fun d!1508857 () Bool)

(assert (= bs!1120530 (and d!1508857 start!482074)))

(declare-fun lambda!217069 () Int)

(assert (=> bs!1120530 (not (= lambda!217069 lambda!217059))))

(assert (=> d!1508857 true))

(assert (=> d!1508857 (= (allKeysSameHashInMap!1947 lm!2023 hashF!1323) (forall!11630 (toList!5955 lm!2023) lambda!217069))))

(declare-fun bs!1120531 () Bool)

(assert (= bs!1120531 d!1508857))

(declare-fun m!5673359 () Bool)

(assert (=> bs!1120531 m!5673359))

(assert (=> b!4730741 d!1508857))

(declare-fun d!1508859 () Bool)

(declare-fun res!2002865 () Bool)

(declare-fun e!2950813 () Bool)

(assert (=> d!1508859 (=> res!2002865 e!2950813)))

(declare-fun e!2950814 () Bool)

(assert (=> d!1508859 (= res!2002865 e!2950814)))

(declare-fun res!2002866 () Bool)

(assert (=> d!1508859 (=> (not res!2002866) (not e!2950814))))

(assert (=> d!1508859 (= res!2002866 (is-Cons!52883 lt!1894003))))

(assert (=> d!1508859 (= (containsKeyBiggerList!327 lt!1894003 key!4653) e!2950813)))

(declare-fun b!4730830 () Bool)

(assert (=> b!4730830 (= e!2950814 (containsKey!3407 (_2!30558 (h!59244 lt!1894003)) key!4653))))

(declare-fun b!4730831 () Bool)

(declare-fun e!2950815 () Bool)

(assert (=> b!4730831 (= e!2950813 e!2950815)))

(declare-fun res!2002864 () Bool)

(assert (=> b!4730831 (=> (not res!2002864) (not e!2950815))))

(assert (=> b!4730831 (= res!2002864 (is-Cons!52883 lt!1894003))))

(declare-fun b!4730832 () Bool)

(assert (=> b!4730832 (= e!2950815 (containsKeyBiggerList!327 (t!360283 lt!1894003) key!4653))))

(assert (= (and d!1508859 res!2002866) b!4730830))

(assert (= (and d!1508859 (not res!2002865)) b!4730831))

(assert (= (and b!4730831 res!2002864) b!4730832))

(declare-fun m!5673361 () Bool)

(assert (=> b!4730830 m!5673361))

(declare-fun m!5673363 () Bool)

(assert (=> b!4730832 m!5673363))

(assert (=> b!4730742 d!1508859))

(declare-fun d!1508861 () Bool)

(declare-fun res!2002871 () Bool)

(declare-fun e!2950820 () Bool)

(assert (=> d!1508861 (=> res!2002871 e!2950820)))

(assert (=> d!1508861 (= res!2002871 (is-Nil!52883 (toList!5955 lm!2023)))))

(assert (=> d!1508861 (= (forall!11630 (toList!5955 lm!2023) lambda!217059) e!2950820)))

(declare-fun b!4730837 () Bool)

(declare-fun e!2950821 () Bool)

(assert (=> b!4730837 (= e!2950820 e!2950821)))

(declare-fun res!2002872 () Bool)

(assert (=> b!4730837 (=> (not res!2002872) (not e!2950821))))

(declare-fun dynLambda!21846 (Int tuple2!54528) Bool)

(assert (=> b!4730837 (= res!2002872 (dynLambda!21846 lambda!217059 (h!59244 (toList!5955 lm!2023))))))

(declare-fun b!4730838 () Bool)

(assert (=> b!4730838 (= e!2950821 (forall!11630 (t!360283 (toList!5955 lm!2023)) lambda!217059))))

(assert (= (and d!1508861 (not res!2002871)) b!4730837))

(assert (= (and b!4730837 res!2002872) b!4730838))

(declare-fun b_lambda!180541 () Bool)

(assert (=> (not b_lambda!180541) (not b!4730837)))

(declare-fun m!5673365 () Bool)

(assert (=> b!4730837 m!5673365))

(declare-fun m!5673367 () Bool)

(assert (=> b!4730838 m!5673367))

(assert (=> start!482074 d!1508861))

(declare-fun d!1508863 () Bool)

(declare-fun isStrictlySorted!762 (List!53007) Bool)

(assert (=> d!1508863 (= (inv!68108 lm!2023) (isStrictlySorted!762 (toList!5955 lm!2023)))))

(declare-fun bs!1120532 () Bool)

(assert (= bs!1120532 d!1508863))

(declare-fun m!5673369 () Bool)

(assert (=> bs!1120532 m!5673369))

(assert (=> start!482074 d!1508863))

(declare-fun b!4730847 () Bool)

(declare-fun e!2950827 () List!53006)

(assert (=> b!4730847 (= e!2950827 (t!360282 (t!360282 oldBucket!34)))))

(declare-fun d!1508867 () Bool)

(declare-fun lt!1894046 () List!53006)

(assert (=> d!1508867 (not (containsKey!3407 lt!1894046 key!4653))))

(assert (=> d!1508867 (= lt!1894046 e!2950827)))

(declare-fun c!807934 () Bool)

(assert (=> d!1508867 (= c!807934 (and (is-Cons!52882 (t!360282 oldBucket!34)) (= (_1!30557 (h!59243 (t!360282 oldBucket!34))) key!4653)))))

(assert (=> d!1508867 (noDuplicateKeys!2033 (t!360282 oldBucket!34))))

(assert (=> d!1508867 (= (removePairForKey!1628 (t!360282 oldBucket!34) key!4653) lt!1894046)))

(declare-fun b!4730850 () Bool)

(declare-fun e!2950826 () List!53006)

(assert (=> b!4730850 (= e!2950826 Nil!52882)))

(declare-fun b!4730848 () Bool)

(assert (=> b!4730848 (= e!2950827 e!2950826)))

(declare-fun c!807935 () Bool)

(assert (=> b!4730848 (= c!807935 (is-Cons!52882 (t!360282 oldBucket!34)))))

(declare-fun b!4730849 () Bool)

(assert (=> b!4730849 (= e!2950826 (Cons!52882 (h!59243 (t!360282 oldBucket!34)) (removePairForKey!1628 (t!360282 (t!360282 oldBucket!34)) key!4653)))))

(assert (= (and d!1508867 c!807934) b!4730847))

(assert (= (and d!1508867 (not c!807934)) b!4730848))

(assert (= (and b!4730848 c!807935) b!4730849))

(assert (= (and b!4730848 (not c!807935)) b!4730850))

(declare-fun m!5673371 () Bool)

(assert (=> d!1508867 m!5673371))

(declare-fun m!5673373 () Bool)

(assert (=> d!1508867 m!5673373))

(declare-fun m!5673375 () Bool)

(assert (=> b!4730849 m!5673375))

(assert (=> b!4730732 d!1508867))

(declare-fun bs!1120533 () Bool)

(declare-fun d!1508869 () Bool)

(assert (= bs!1120533 (and d!1508869 start!482074)))

(declare-fun lambda!217070 () Int)

(assert (=> bs!1120533 (not (= lambda!217070 lambda!217059))))

(declare-fun bs!1120534 () Bool)

(assert (= bs!1120534 (and d!1508869 d!1508857)))

(assert (=> bs!1120534 (= lambda!217070 lambda!217069)))

(assert (=> d!1508869 true))

(assert (=> d!1508869 (= (allKeysSameHashInMap!1947 (ListLongMap!4486 lt!1894003) hashF!1323) (forall!11630 (toList!5955 (ListLongMap!4486 lt!1894003)) lambda!217070))))

(declare-fun bs!1120535 () Bool)

(assert (= bs!1120535 d!1508869))

(declare-fun m!5673377 () Bool)

(assert (=> bs!1120535 m!5673377))

(assert (=> b!4730743 d!1508869))

(declare-fun d!1508871 () Bool)

(declare-fun hash!4418 (Hashable!6402 K!14233) (_ BitVec 64))

(assert (=> d!1508871 (= (hash!4416 hashF!1323 key!4653) (hash!4418 hashF!1323 key!4653))))

(declare-fun bs!1120536 () Bool)

(assert (= bs!1120536 d!1508871))

(declare-fun m!5673379 () Bool)

(assert (=> bs!1120536 m!5673379))

(assert (=> b!4730733 d!1508871))

(declare-fun d!1508873 () Bool)

(declare-fun res!2002873 () Bool)

(declare-fun e!2950832 () Bool)

(assert (=> d!1508873 (=> res!2002873 e!2950832)))

(assert (=> d!1508873 (= res!2002873 (is-Nil!52883 lt!1894003))))

(assert (=> d!1508873 (= (forall!11630 lt!1894003 lambda!217059) e!2950832)))

(declare-fun b!4730859 () Bool)

(declare-fun e!2950833 () Bool)

(assert (=> b!4730859 (= e!2950832 e!2950833)))

(declare-fun res!2002874 () Bool)

(assert (=> b!4730859 (=> (not res!2002874) (not e!2950833))))

(assert (=> b!4730859 (= res!2002874 (dynLambda!21846 lambda!217059 (h!59244 lt!1894003)))))

(declare-fun b!4730860 () Bool)

(assert (=> b!4730860 (= e!2950833 (forall!11630 (t!360283 lt!1894003) lambda!217059))))

(assert (= (and d!1508873 (not res!2002873)) b!4730859))

(assert (= (and b!4730859 res!2002874) b!4730860))

(declare-fun b_lambda!180543 () Bool)

(assert (=> (not b_lambda!180543) (not b!4730859)))

(declare-fun m!5673381 () Bool)

(assert (=> b!4730859 m!5673381))

(declare-fun m!5673383 () Bool)

(assert (=> b!4730860 m!5673383))

(assert (=> b!4730744 d!1508873))

(declare-fun b!4730861 () Bool)

(declare-fun e!2950835 () List!53006)

(assert (=> b!4730861 (= e!2950835 (t!360282 (tail!9045 oldBucket!34)))))

(declare-fun d!1508875 () Bool)

(declare-fun lt!1894049 () List!53006)

(assert (=> d!1508875 (not (containsKey!3407 lt!1894049 key!4653))))

(assert (=> d!1508875 (= lt!1894049 e!2950835)))

(declare-fun c!807940 () Bool)

(assert (=> d!1508875 (= c!807940 (and (is-Cons!52882 (tail!9045 oldBucket!34)) (= (_1!30557 (h!59243 (tail!9045 oldBucket!34))) key!4653)))))

(assert (=> d!1508875 (noDuplicateKeys!2033 (tail!9045 oldBucket!34))))

(assert (=> d!1508875 (= (removePairForKey!1628 (tail!9045 oldBucket!34) key!4653) lt!1894049)))

(declare-fun b!4730864 () Bool)

(declare-fun e!2950834 () List!53006)

(assert (=> b!4730864 (= e!2950834 Nil!52882)))

(declare-fun b!4730862 () Bool)

(assert (=> b!4730862 (= e!2950835 e!2950834)))

(declare-fun c!807941 () Bool)

(assert (=> b!4730862 (= c!807941 (is-Cons!52882 (tail!9045 oldBucket!34)))))

(declare-fun b!4730863 () Bool)

(assert (=> b!4730863 (= e!2950834 (Cons!52882 (h!59243 (tail!9045 oldBucket!34)) (removePairForKey!1628 (t!360282 (tail!9045 oldBucket!34)) key!4653)))))

(assert (= (and d!1508875 c!807940) b!4730861))

(assert (= (and d!1508875 (not c!807940)) b!4730862))

(assert (= (and b!4730862 c!807941) b!4730863))

(assert (= (and b!4730862 (not c!807941)) b!4730864))

(declare-fun m!5673385 () Bool)

(assert (=> d!1508875 m!5673385))

(assert (=> d!1508875 m!5673271))

(declare-fun m!5673387 () Bool)

(assert (=> d!1508875 m!5673387))

(declare-fun m!5673389 () Bool)

(assert (=> b!4730863 m!5673389))

(assert (=> b!4730734 d!1508875))

(declare-fun d!1508877 () Bool)

(assert (=> d!1508877 (= (tail!9045 oldBucket!34) (t!360282 oldBucket!34))))

(assert (=> b!4730734 d!1508877))

(declare-fun d!1508879 () Bool)

(assert (=> d!1508879 (= (tail!9045 newBucket!218) (t!360282 newBucket!218))))

(assert (=> b!4730734 d!1508879))

(declare-fun d!1508881 () Bool)

(assert (=> d!1508881 true))

(assert (=> d!1508881 true))

(declare-fun lambda!217073 () Int)

(declare-fun forall!11632 (List!53006 Int) Bool)

(assert (=> d!1508881 (= (allKeysSameHash!1859 newBucket!218 hash!405 hashF!1323) (forall!11632 newBucket!218 lambda!217073))))

(declare-fun bs!1120537 () Bool)

(assert (= bs!1120537 d!1508881))

(declare-fun m!5673391 () Bool)

(assert (=> bs!1120537 m!5673391))

(assert (=> b!4730745 d!1508881))

(declare-fun d!1508883 () Bool)

(assert (=> d!1508883 (= (head!10273 (toList!5955 lm!2023)) (h!59244 (toList!5955 lm!2023)))))

(assert (=> b!4730735 d!1508883))

(declare-fun b!4730873 () Bool)

(declare-fun e!2950839 () List!53006)

(assert (=> b!4730873 (= e!2950839 (t!360282 oldBucket!34))))

(declare-fun d!1508885 () Bool)

(declare-fun lt!1894051 () List!53006)

(assert (=> d!1508885 (not (containsKey!3407 lt!1894051 key!4653))))

(assert (=> d!1508885 (= lt!1894051 e!2950839)))

(declare-fun c!807944 () Bool)

(assert (=> d!1508885 (= c!807944 (and (is-Cons!52882 oldBucket!34) (= (_1!30557 (h!59243 oldBucket!34)) key!4653)))))

(assert (=> d!1508885 (noDuplicateKeys!2033 oldBucket!34)))

(assert (=> d!1508885 (= (removePairForKey!1628 oldBucket!34 key!4653) lt!1894051)))

(declare-fun b!4730876 () Bool)

(declare-fun e!2950838 () List!53006)

(assert (=> b!4730876 (= e!2950838 Nil!52882)))

(declare-fun b!4730874 () Bool)

(assert (=> b!4730874 (= e!2950839 e!2950838)))

(declare-fun c!807945 () Bool)

(assert (=> b!4730874 (= c!807945 (is-Cons!52882 oldBucket!34))))

(declare-fun b!4730875 () Bool)

(assert (=> b!4730875 (= e!2950838 (Cons!52882 (h!59243 oldBucket!34) (removePairForKey!1628 (t!360282 oldBucket!34) key!4653)))))

(assert (= (and d!1508885 c!807944) b!4730873))

(assert (= (and d!1508885 (not c!807944)) b!4730874))

(assert (= (and b!4730874 c!807945) b!4730875))

(assert (= (and b!4730874 (not c!807945)) b!4730876))

(declare-fun m!5673395 () Bool)

(assert (=> d!1508885 m!5673395))

(assert (=> d!1508885 m!5673265))

(assert (=> b!4730875 m!5673269))

(assert (=> b!4730746 d!1508885))

(declare-fun bs!1120538 () Bool)

(declare-fun d!1508889 () Bool)

(assert (= bs!1120538 (and d!1508889 d!1508881)))

(declare-fun lambda!217074 () Int)

(assert (=> bs!1120538 (= lambda!217074 lambda!217073)))

(assert (=> d!1508889 true))

(assert (=> d!1508889 true))

(assert (=> d!1508889 (= (allKeysSameHash!1859 oldBucket!34 hash!405 hashF!1323) (forall!11632 oldBucket!34 lambda!217074))))

(declare-fun bs!1120539 () Bool)

(assert (= bs!1120539 d!1508889))

(declare-fun m!5673397 () Bool)

(assert (=> bs!1120539 m!5673397))

(assert (=> b!4730736 d!1508889))

(declare-fun d!1508891 () Bool)

(declare-fun e!2950866 () Bool)

(assert (=> d!1508891 e!2950866))

(declare-fun res!2002891 () Bool)

(assert (=> d!1508891 (=> res!2002891 e!2950866)))

(declare-fun e!2950862 () Bool)

(assert (=> d!1508891 (= res!2002891 e!2950862)))

(declare-fun res!2002889 () Bool)

(assert (=> d!1508891 (=> (not res!2002889) (not e!2950862))))

(declare-fun lt!1894076 () Bool)

(assert (=> d!1508891 (= res!2002889 (not lt!1894076))))

(declare-fun lt!1894073 () Bool)

(assert (=> d!1508891 (= lt!1894076 lt!1894073)))

(declare-fun lt!1894072 () Unit!131471)

(declare-fun e!2950863 () Unit!131471)

(assert (=> d!1508891 (= lt!1894072 e!2950863)))

(declare-fun c!807958 () Bool)

(assert (=> d!1508891 (= c!807958 lt!1894073)))

(declare-fun containsKey!3409 (List!53006 K!14233) Bool)

(assert (=> d!1508891 (= lt!1894073 (containsKey!3409 (toList!5956 lt!1894010) key!4653))))

(assert (=> d!1508891 (= (contains!16244 lt!1894010 key!4653) lt!1894076)))

(declare-fun b!4730911 () Bool)

(declare-datatypes ((List!53010 0))(
  ( (Nil!52886) (Cons!52886 (h!59248 K!14233) (t!360286 List!53010)) )
))
(declare-fun e!2950864 () List!53010)

(declare-fun keys!19009 (ListMap!5319) List!53010)

(assert (=> b!4730911 (= e!2950864 (keys!19009 lt!1894010))))

(declare-fun b!4730912 () Bool)

(declare-fun e!2950867 () Unit!131471)

(assert (=> b!4730912 (= e!2950863 e!2950867)))

(declare-fun c!807957 () Bool)

(declare-fun call!330890 () Bool)

(assert (=> b!4730912 (= c!807957 call!330890)))

(declare-fun b!4730913 () Bool)

(assert (=> b!4730913 false))

(declare-fun lt!1894070 () Unit!131471)

(declare-fun lt!1894077 () Unit!131471)

(assert (=> b!4730913 (= lt!1894070 lt!1894077)))

(assert (=> b!4730913 (containsKey!3409 (toList!5956 lt!1894010) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!963 (List!53006 K!14233) Unit!131471)

(assert (=> b!4730913 (= lt!1894077 (lemmaInGetKeysListThenContainsKey!963 (toList!5956 lt!1894010) key!4653))))

(declare-fun Unit!131475 () Unit!131471)

(assert (=> b!4730913 (= e!2950867 Unit!131475)))

(declare-fun b!4730914 () Bool)

(declare-fun Unit!131476 () Unit!131471)

(assert (=> b!4730914 (= e!2950867 Unit!131476)))

(declare-fun b!4730915 () Bool)

(declare-fun getKeysList!964 (List!53006) List!53010)

(assert (=> b!4730915 (= e!2950864 (getKeysList!964 (toList!5956 lt!1894010)))))

(declare-fun b!4730916 () Bool)

(declare-fun e!2950865 () Bool)

(declare-fun contains!16250 (List!53010 K!14233) Bool)

(assert (=> b!4730916 (= e!2950865 (contains!16250 (keys!19009 lt!1894010) key!4653))))

(declare-fun bm!330885 () Bool)

(assert (=> bm!330885 (= call!330890 (contains!16250 e!2950864 key!4653))))

(declare-fun c!807956 () Bool)

(assert (=> bm!330885 (= c!807956 c!807958)))

(declare-fun b!4730917 () Bool)

(assert (=> b!4730917 (= e!2950862 (not (contains!16250 (keys!19009 lt!1894010) key!4653)))))

(declare-fun b!4730918 () Bool)

(declare-fun lt!1894071 () Unit!131471)

(assert (=> b!4730918 (= e!2950863 lt!1894071)))

(declare-fun lt!1894074 () Unit!131471)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1870 (List!53006 K!14233) Unit!131471)

(assert (=> b!4730918 (= lt!1894074 (lemmaContainsKeyImpliesGetValueByKeyDefined!1870 (toList!5956 lt!1894010) key!4653))))

(declare-datatypes ((Option!12395 0))(
  ( (None!12394) (Some!12394 (v!47011 V!14479)) )
))
(declare-fun isDefined!9649 (Option!12395) Bool)

(declare-fun getValueByKey!1979 (List!53006 K!14233) Option!12395)

(assert (=> b!4730918 (isDefined!9649 (getValueByKey!1979 (toList!5956 lt!1894010) key!4653))))

(declare-fun lt!1894075 () Unit!131471)

(assert (=> b!4730918 (= lt!1894075 lt!1894074)))

(declare-fun lemmaInListThenGetKeysListContains!959 (List!53006 K!14233) Unit!131471)

(assert (=> b!4730918 (= lt!1894071 (lemmaInListThenGetKeysListContains!959 (toList!5956 lt!1894010) key!4653))))

(assert (=> b!4730918 call!330890))

(declare-fun b!4730919 () Bool)

(assert (=> b!4730919 (= e!2950866 e!2950865)))

(declare-fun res!2002890 () Bool)

(assert (=> b!4730919 (=> (not res!2002890) (not e!2950865))))

(assert (=> b!4730919 (= res!2002890 (isDefined!9649 (getValueByKey!1979 (toList!5956 lt!1894010) key!4653)))))

(assert (= (and d!1508891 c!807958) b!4730918))

(assert (= (and d!1508891 (not c!807958)) b!4730912))

(assert (= (and b!4730912 c!807957) b!4730913))

(assert (= (and b!4730912 (not c!807957)) b!4730914))

(assert (= (or b!4730918 b!4730912) bm!330885))

(assert (= (and bm!330885 c!807956) b!4730915))

(assert (= (and bm!330885 (not c!807956)) b!4730911))

(assert (= (and d!1508891 res!2002889) b!4730917))

(assert (= (and d!1508891 (not res!2002891)) b!4730919))

(assert (= (and b!4730919 res!2002890) b!4730916))

(declare-fun m!5673403 () Bool)

(assert (=> b!4730917 m!5673403))

(assert (=> b!4730917 m!5673403))

(declare-fun m!5673405 () Bool)

(assert (=> b!4730917 m!5673405))

(declare-fun m!5673407 () Bool)

(assert (=> bm!330885 m!5673407))

(declare-fun m!5673409 () Bool)

(assert (=> b!4730918 m!5673409))

(declare-fun m!5673411 () Bool)

(assert (=> b!4730918 m!5673411))

(assert (=> b!4730918 m!5673411))

(declare-fun m!5673413 () Bool)

(assert (=> b!4730918 m!5673413))

(declare-fun m!5673415 () Bool)

(assert (=> b!4730918 m!5673415))

(assert (=> b!4730919 m!5673411))

(assert (=> b!4730919 m!5673411))

(assert (=> b!4730919 m!5673413))

(declare-fun m!5673417 () Bool)

(assert (=> d!1508891 m!5673417))

(assert (=> b!4730911 m!5673403))

(assert (=> b!4730916 m!5673403))

(assert (=> b!4730916 m!5673403))

(assert (=> b!4730916 m!5673405))

(assert (=> b!4730913 m!5673417))

(declare-fun m!5673419 () Bool)

(assert (=> b!4730913 m!5673419))

(declare-fun m!5673421 () Bool)

(assert (=> b!4730915 m!5673421))

(assert (=> b!4730737 d!1508891))

(declare-fun bs!1120541 () Bool)

(declare-fun d!1508895 () Bool)

(assert (= bs!1120541 (and d!1508895 start!482074)))

(declare-fun lambda!217077 () Int)

(assert (=> bs!1120541 (= lambda!217077 lambda!217059)))

(declare-fun bs!1120542 () Bool)

(assert (= bs!1120542 (and d!1508895 d!1508857)))

(assert (=> bs!1120542 (not (= lambda!217077 lambda!217069))))

(declare-fun bs!1120543 () Bool)

(assert (= bs!1120543 (and d!1508895 d!1508869)))

(assert (=> bs!1120543 (not (= lambda!217077 lambda!217070))))

(declare-fun lt!1894084 () ListMap!5319)

(declare-fun invariantList!1524 (List!53006) Bool)

(assert (=> d!1508895 (invariantList!1524 (toList!5956 lt!1894084))))

(declare-fun e!2950878 () ListMap!5319)

(assert (=> d!1508895 (= lt!1894084 e!2950878)))

(declare-fun c!807963 () Bool)

(assert (=> d!1508895 (= c!807963 (is-Cons!52883 (toList!5955 lm!2023)))))

(assert (=> d!1508895 (forall!11630 (toList!5955 lm!2023) lambda!217077)))

(assert (=> d!1508895 (= (extractMap!2059 (toList!5955 lm!2023)) lt!1894084)))

(declare-fun b!4730935 () Bool)

(assert (=> b!4730935 (= e!2950878 (addToMapMapFromBucket!1463 (_2!30558 (h!59244 (toList!5955 lm!2023))) (extractMap!2059 (t!360283 (toList!5955 lm!2023)))))))

(declare-fun b!4730936 () Bool)

(assert (=> b!4730936 (= e!2950878 (ListMap!5320 Nil!52882))))

(assert (= (and d!1508895 c!807963) b!4730935))

(assert (= (and d!1508895 (not c!807963)) b!4730936))

(declare-fun m!5673441 () Bool)

(assert (=> d!1508895 m!5673441))

(declare-fun m!5673443 () Bool)

(assert (=> d!1508895 m!5673443))

(assert (=> b!4730935 m!5673279))

(assert (=> b!4730935 m!5673279))

(assert (=> b!4730935 m!5673281))

(assert (=> b!4730737 d!1508895))

(declare-fun bs!1120548 () Bool)

(declare-fun b!4730969 () Bool)

(assert (= bs!1120548 (and b!4730969 d!1508881)))

(declare-fun lambda!217116 () Int)

(assert (=> bs!1120548 (not (= lambda!217116 lambda!217073))))

(declare-fun bs!1120549 () Bool)

(assert (= bs!1120549 (and b!4730969 d!1508889)))

(assert (=> bs!1120549 (not (= lambda!217116 lambda!217074))))

(assert (=> b!4730969 true))

(declare-fun bs!1120550 () Bool)

(declare-fun b!4730971 () Bool)

(assert (= bs!1120550 (and b!4730971 d!1508881)))

(declare-fun lambda!217117 () Int)

(assert (=> bs!1120550 (not (= lambda!217117 lambda!217073))))

(declare-fun bs!1120551 () Bool)

(assert (= bs!1120551 (and b!4730971 d!1508889)))

(assert (=> bs!1120551 (not (= lambda!217117 lambda!217074))))

(declare-fun bs!1120552 () Bool)

(assert (= bs!1120552 (and b!4730971 b!4730969)))

(assert (=> bs!1120552 (= lambda!217117 lambda!217116)))

(assert (=> b!4730971 true))

(declare-fun lambda!217118 () Int)

(assert (=> bs!1120550 (not (= lambda!217118 lambda!217073))))

(assert (=> bs!1120551 (not (= lambda!217118 lambda!217074))))

(declare-fun lt!1894172 () ListMap!5319)

(assert (=> bs!1120552 (= (= lt!1894172 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (= lambda!217118 lambda!217116))))

(assert (=> b!4730971 (= (= lt!1894172 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (= lambda!217118 lambda!217117))))

(assert (=> b!4730971 true))

(declare-fun bs!1120554 () Bool)

(declare-fun d!1508901 () Bool)

(assert (= bs!1120554 (and d!1508901 b!4730969)))

(declare-fun lt!1894180 () ListMap!5319)

(declare-fun lambda!217119 () Int)

(assert (=> bs!1120554 (= (= lt!1894180 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (= lambda!217119 lambda!217116))))

(declare-fun bs!1120555 () Bool)

(assert (= bs!1120555 (and d!1508901 b!4730971)))

(assert (=> bs!1120555 (= (= lt!1894180 lt!1894172) (= lambda!217119 lambda!217118))))

(declare-fun bs!1120556 () Bool)

(assert (= bs!1120556 (and d!1508901 d!1508889)))

(assert (=> bs!1120556 (not (= lambda!217119 lambda!217074))))

(assert (=> bs!1120555 (= (= lt!1894180 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (= lambda!217119 lambda!217117))))

(declare-fun bs!1120557 () Bool)

(assert (= bs!1120557 (and d!1508901 d!1508881)))

(assert (=> bs!1120557 (not (= lambda!217119 lambda!217073))))

(assert (=> d!1508901 true))

(declare-fun bm!330892 () Bool)

(declare-fun call!330899 () Bool)

(declare-fun c!807969 () Bool)

(assert (=> bm!330892 (= call!330899 (forall!11632 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (ite c!807969 lambda!217116 lambda!217118)))))

(declare-fun b!4730968 () Bool)

(declare-fun res!2002922 () Bool)

(declare-fun e!2950898 () Bool)

(assert (=> b!4730968 (=> (not res!2002922) (not e!2950898))))

(assert (=> b!4730968 (= res!2002922 (forall!11632 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) lambda!217119))))

(declare-fun e!2950899 () ListMap!5319)

(assert (=> b!4730969 (= e!2950899 (extractMap!2059 (t!360283 (toList!5955 lm!2023))))))

(declare-fun lt!1894166 () Unit!131471)

(declare-fun call!330898 () Unit!131471)

(assert (=> b!4730969 (= lt!1894166 call!330898)))

(assert (=> b!4730969 call!330899))

(declare-fun lt!1894171 () Unit!131471)

(assert (=> b!4730969 (= lt!1894171 lt!1894166)))

(declare-fun call!330897 () Bool)

(assert (=> b!4730969 call!330897))

(declare-fun lt!1894170 () Unit!131471)

(declare-fun Unit!131477 () Unit!131471)

(assert (=> b!4730969 (= lt!1894170 Unit!131477)))

(assert (=> d!1508901 e!2950898))

(declare-fun res!2002920 () Bool)

(assert (=> d!1508901 (=> (not res!2002920) (not e!2950898))))

(assert (=> d!1508901 (= res!2002920 (forall!11632 (_2!30558 (h!59244 (toList!5955 lm!2023))) lambda!217119))))

(assert (=> d!1508901 (= lt!1894180 e!2950899)))

(assert (=> d!1508901 (= c!807969 (is-Nil!52882 (_2!30558 (h!59244 (toList!5955 lm!2023)))))))

(assert (=> d!1508901 (noDuplicateKeys!2033 (_2!30558 (h!59244 (toList!5955 lm!2023))))))

(assert (=> d!1508901 (= (addToMapMapFromBucket!1463 (_2!30558 (h!59244 (toList!5955 lm!2023))) (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) lt!1894180)))

(declare-fun b!4730970 () Bool)

(assert (=> b!4730970 (= e!2950898 (invariantList!1524 (toList!5956 lt!1894180)))))

(assert (=> b!4730971 (= e!2950899 lt!1894172)))

(declare-fun lt!1894168 () ListMap!5319)

(declare-fun +!2281 (ListMap!5319 tuple2!54526) ListMap!5319)

(assert (=> b!4730971 (= lt!1894168 (+!2281 (extractMap!2059 (t!360283 (toList!5955 lm!2023))) (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023))))))))

(assert (=> b!4730971 (= lt!1894172 (addToMapMapFromBucket!1463 (t!360282 (_2!30558 (h!59244 (toList!5955 lm!2023)))) (+!2281 (extractMap!2059 (t!360283 (toList!5955 lm!2023))) (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023)))))))))

(declare-fun lt!1894175 () Unit!131471)

(assert (=> b!4730971 (= lt!1894175 call!330898)))

(assert (=> b!4730971 (forall!11632 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) lambda!217117)))

(declare-fun lt!1894183 () Unit!131471)

(assert (=> b!4730971 (= lt!1894183 lt!1894175)))

(assert (=> b!4730971 call!330897))

(declare-fun lt!1894176 () Unit!131471)

(declare-fun Unit!131478 () Unit!131471)

(assert (=> b!4730971 (= lt!1894176 Unit!131478)))

(assert (=> b!4730971 (forall!11632 (t!360282 (_2!30558 (h!59244 (toList!5955 lm!2023)))) lambda!217118)))

(declare-fun lt!1894177 () Unit!131471)

(declare-fun Unit!131479 () Unit!131471)

(assert (=> b!4730971 (= lt!1894177 Unit!131479)))

(declare-fun lt!1894173 () Unit!131471)

(declare-fun Unit!131480 () Unit!131471)

(assert (=> b!4730971 (= lt!1894173 Unit!131480)))

(declare-fun lt!1894184 () Unit!131471)

(declare-fun forallContained!3672 (List!53006 Int tuple2!54526) Unit!131471)

(assert (=> b!4730971 (= lt!1894184 (forallContained!3672 (toList!5956 lt!1894168) lambda!217118 (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023))))))))

(assert (=> b!4730971 (contains!16244 lt!1894168 (_1!30557 (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023))))))))

(declare-fun lt!1894179 () Unit!131471)

(declare-fun Unit!131481 () Unit!131471)

(assert (=> b!4730971 (= lt!1894179 Unit!131481)))

(assert (=> b!4730971 (contains!16244 lt!1894172 (_1!30557 (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023))))))))

(declare-fun lt!1894178 () Unit!131471)

(declare-fun Unit!131482 () Unit!131471)

(assert (=> b!4730971 (= lt!1894178 Unit!131482)))

(assert (=> b!4730971 (forall!11632 (_2!30558 (h!59244 (toList!5955 lm!2023))) lambda!217118)))

(declare-fun lt!1894181 () Unit!131471)

(declare-fun Unit!131483 () Unit!131471)

(assert (=> b!4730971 (= lt!1894181 Unit!131483)))

(assert (=> b!4730971 (forall!11632 (toList!5956 lt!1894168) lambda!217118)))

(declare-fun lt!1894186 () Unit!131471)

(declare-fun Unit!131484 () Unit!131471)

(assert (=> b!4730971 (= lt!1894186 Unit!131484)))

(declare-fun lt!1894167 () Unit!131471)

(declare-fun Unit!131485 () Unit!131471)

(assert (=> b!4730971 (= lt!1894167 Unit!131485)))

(declare-fun lt!1894174 () Unit!131471)

(declare-fun addForallContainsKeyThenBeforeAdding!808 (ListMap!5319 ListMap!5319 K!14233 V!14479) Unit!131471)

(assert (=> b!4730971 (= lt!1894174 (addForallContainsKeyThenBeforeAdding!808 (extractMap!2059 (t!360283 (toList!5955 lm!2023))) lt!1894172 (_1!30557 (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023))))) (_2!30557 (h!59243 (_2!30558 (h!59244 (toList!5955 lm!2023)))))))))

(assert (=> b!4730971 (forall!11632 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) lambda!217118)))

(declare-fun lt!1894169 () Unit!131471)

(assert (=> b!4730971 (= lt!1894169 lt!1894174)))

(assert (=> b!4730971 call!330899))

(declare-fun lt!1894182 () Unit!131471)

(declare-fun Unit!131486 () Unit!131471)

(assert (=> b!4730971 (= lt!1894182 Unit!131486)))

(declare-fun res!2002921 () Bool)

(assert (=> b!4730971 (= res!2002921 (forall!11632 (_2!30558 (h!59244 (toList!5955 lm!2023))) lambda!217118))))

(declare-fun e!2950897 () Bool)

(assert (=> b!4730971 (=> (not res!2002921) (not e!2950897))))

(assert (=> b!4730971 e!2950897))

(declare-fun lt!1894185 () Unit!131471)

(declare-fun Unit!131487 () Unit!131471)

(assert (=> b!4730971 (= lt!1894185 Unit!131487)))

(declare-fun bm!330893 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!809 (ListMap!5319) Unit!131471)

(assert (=> bm!330893 (= call!330898 (lemmaContainsAllItsOwnKeys!809 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))))))

(declare-fun bm!330894 () Bool)

(assert (=> bm!330894 (= call!330897 (forall!11632 (ite c!807969 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) (toList!5956 lt!1894168)) (ite c!807969 lambda!217116 lambda!217118)))))

(declare-fun b!4730972 () Bool)

(assert (=> b!4730972 (= e!2950897 (forall!11632 (toList!5956 (extractMap!2059 (t!360283 (toList!5955 lm!2023)))) lambda!217118))))

(assert (= (and d!1508901 c!807969) b!4730969))

(assert (= (and d!1508901 (not c!807969)) b!4730971))

(assert (= (and b!4730971 res!2002921) b!4730972))

(assert (= (or b!4730969 b!4730971) bm!330893))

(assert (= (or b!4730969 b!4730971) bm!330894))

(assert (= (or b!4730969 b!4730971) bm!330892))

(assert (= (and d!1508901 res!2002920) b!4730968))

(assert (= (and b!4730968 res!2002922) b!4730970))

(declare-fun m!5673481 () Bool)

(assert (=> b!4730971 m!5673481))

(declare-fun m!5673483 () Bool)

(assert (=> b!4730971 m!5673483))

(declare-fun m!5673485 () Bool)

(assert (=> b!4730971 m!5673485))

(declare-fun m!5673487 () Bool)

(assert (=> b!4730971 m!5673487))

(assert (=> b!4730971 m!5673485))

(declare-fun m!5673489 () Bool)

(assert (=> b!4730971 m!5673489))

(declare-fun m!5673491 () Bool)

(assert (=> b!4730971 m!5673491))

(assert (=> b!4730971 m!5673279))

(assert (=> b!4730971 m!5673481))

(assert (=> b!4730971 m!5673279))

(declare-fun m!5673493 () Bool)

(assert (=> b!4730971 m!5673493))

(declare-fun m!5673495 () Bool)

(assert (=> b!4730971 m!5673495))

(declare-fun m!5673497 () Bool)

(assert (=> b!4730971 m!5673497))

(declare-fun m!5673499 () Bool)

(assert (=> b!4730971 m!5673499))

(declare-fun m!5673501 () Bool)

(assert (=> b!4730971 m!5673501))

(declare-fun m!5673503 () Bool)

(assert (=> b!4730970 m!5673503))

(declare-fun m!5673505 () Bool)

(assert (=> bm!330894 m!5673505))

(declare-fun m!5673507 () Bool)

(assert (=> b!4730968 m!5673507))

(assert (=> b!4730972 m!5673497))

(declare-fun m!5673509 () Bool)

(assert (=> bm!330892 m!5673509))

(declare-fun m!5673511 () Bool)

(assert (=> d!1508901 m!5673511))

(declare-fun m!5673513 () Bool)

(assert (=> d!1508901 m!5673513))

(assert (=> bm!330893 m!5673279))

(declare-fun m!5673515 () Bool)

(assert (=> bm!330893 m!5673515))

(assert (=> b!4730748 d!1508901))

(declare-fun bs!1120558 () Bool)

(declare-fun d!1508911 () Bool)

(assert (= bs!1120558 (and d!1508911 start!482074)))

(declare-fun lambda!217120 () Int)

(assert (=> bs!1120558 (= lambda!217120 lambda!217059)))

(declare-fun bs!1120559 () Bool)

(assert (= bs!1120559 (and d!1508911 d!1508857)))

(assert (=> bs!1120559 (not (= lambda!217120 lambda!217069))))

(declare-fun bs!1120560 () Bool)

(assert (= bs!1120560 (and d!1508911 d!1508869)))

(assert (=> bs!1120560 (not (= lambda!217120 lambda!217070))))

(declare-fun bs!1120561 () Bool)

(assert (= bs!1120561 (and d!1508911 d!1508895)))

(assert (=> bs!1120561 (= lambda!217120 lambda!217077)))

(declare-fun lt!1894190 () ListMap!5319)

(assert (=> d!1508911 (invariantList!1524 (toList!5956 lt!1894190))))

(declare-fun e!2950904 () ListMap!5319)

(assert (=> d!1508911 (= lt!1894190 e!2950904)))

(declare-fun c!807970 () Bool)

(assert (=> d!1508911 (= c!807970 (is-Cons!52883 (t!360283 (toList!5955 lm!2023))))))

(assert (=> d!1508911 (forall!11630 (t!360283 (toList!5955 lm!2023)) lambda!217120)))

(assert (=> d!1508911 (= (extractMap!2059 (t!360283 (toList!5955 lm!2023))) lt!1894190)))

(declare-fun b!4730979 () Bool)

(assert (=> b!4730979 (= e!2950904 (addToMapMapFromBucket!1463 (_2!30558 (h!59244 (t!360283 (toList!5955 lm!2023)))) (extractMap!2059 (t!360283 (t!360283 (toList!5955 lm!2023))))))))

(declare-fun b!4730980 () Bool)

(assert (=> b!4730980 (= e!2950904 (ListMap!5320 Nil!52882))))

(assert (= (and d!1508911 c!807970) b!4730979))

(assert (= (and d!1508911 (not c!807970)) b!4730980))

(declare-fun m!5673517 () Bool)

(assert (=> d!1508911 m!5673517))

(declare-fun m!5673519 () Bool)

(assert (=> d!1508911 m!5673519))

(declare-fun m!5673521 () Bool)

(assert (=> b!4730979 m!5673521))

(assert (=> b!4730979 m!5673521))

(declare-fun m!5673523 () Bool)

(assert (=> b!4730979 m!5673523))

(assert (=> b!4730748 d!1508911))

(declare-fun d!1508915 () Bool)

(declare-fun res!2002931 () Bool)

(declare-fun e!2950909 () Bool)

(assert (=> d!1508915 (=> res!2002931 e!2950909)))

(assert (=> d!1508915 (= res!2002931 (not (is-Cons!52882 oldBucket!34)))))

(assert (=> d!1508915 (= (noDuplicateKeys!2033 oldBucket!34) e!2950909)))

(declare-fun b!4730985 () Bool)

(declare-fun e!2950910 () Bool)

(assert (=> b!4730985 (= e!2950909 e!2950910)))

(declare-fun res!2002932 () Bool)

(assert (=> b!4730985 (=> (not res!2002932) (not e!2950910))))

(assert (=> b!4730985 (= res!2002932 (not (containsKey!3407 (t!360282 oldBucket!34) (_1!30557 (h!59243 oldBucket!34)))))))

(declare-fun b!4730986 () Bool)

(assert (=> b!4730986 (= e!2950910 (noDuplicateKeys!2033 (t!360282 oldBucket!34)))))

(assert (= (and d!1508915 (not res!2002931)) b!4730985))

(assert (= (and b!4730985 res!2002932) b!4730986))

(declare-fun m!5673525 () Bool)

(assert (=> b!4730985 m!5673525))

(assert (=> b!4730986 m!5673373))

(assert (=> b!4730738 d!1508915))

(declare-fun d!1508919 () Bool)

(assert (=> d!1508919 (dynLambda!21846 lambda!217059 lt!1894006)))

(declare-fun lt!1894193 () Unit!131471)

(declare-fun choose!33451 (List!53007 Int tuple2!54528) Unit!131471)

(assert (=> d!1508919 (= lt!1894193 (choose!33451 (toList!5955 lm!2023) lambda!217059 lt!1894006))))

(declare-fun e!2950913 () Bool)

(assert (=> d!1508919 e!2950913))

(declare-fun res!2002935 () Bool)

(assert (=> d!1508919 (=> (not res!2002935) (not e!2950913))))

(assert (=> d!1508919 (= res!2002935 (forall!11630 (toList!5955 lm!2023) lambda!217059))))

(assert (=> d!1508919 (= (forallContained!3670 (toList!5955 lm!2023) lambda!217059 lt!1894006) lt!1894193)))

(declare-fun b!4730989 () Bool)

(assert (=> b!4730989 (= e!2950913 (contains!16245 (toList!5955 lm!2023) lt!1894006))))

(assert (= (and d!1508919 res!2002935) b!4730989))

(declare-fun b_lambda!180547 () Bool)

(assert (=> (not b_lambda!180547) (not d!1508919)))

(declare-fun m!5673529 () Bool)

(assert (=> d!1508919 m!5673529))

(declare-fun m!5673531 () Bool)

(assert (=> d!1508919 m!5673531))

(assert (=> d!1508919 m!5673221))

(assert (=> b!4730989 m!5673251))

(assert (=> b!4730749 d!1508919))

(declare-fun d!1508921 () Bool)

(declare-fun e!2950930 () Bool)

(assert (=> d!1508921 e!2950930))

(declare-fun res!2002950 () Bool)

(assert (=> d!1508921 (=> res!2002950 e!2950930)))

(declare-fun lt!1894211 () Bool)

(assert (=> d!1508921 (= res!2002950 (not lt!1894211))))

(declare-fun lt!1894210 () Bool)

(assert (=> d!1508921 (= lt!1894211 lt!1894210)))

(declare-fun lt!1894208 () Unit!131471)

(declare-fun e!2950931 () Unit!131471)

(assert (=> d!1508921 (= lt!1894208 e!2950931)))

(declare-fun c!807973 () Bool)

(assert (=> d!1508921 (= c!807973 lt!1894210)))

(declare-fun containsKey!3410 (List!53007 (_ BitVec 64)) Bool)

(assert (=> d!1508921 (= lt!1894210 (containsKey!3410 (toList!5955 lm!2023) lt!1894004))))

(assert (=> d!1508921 (= (contains!16246 lm!2023 lt!1894004) lt!1894211)))

(declare-fun b!4731009 () Bool)

(declare-fun lt!1894209 () Unit!131471)

(assert (=> b!4731009 (= e!2950931 lt!1894209)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1871 (List!53007 (_ BitVec 64)) Unit!131471)

(assert (=> b!4731009 (= lt!1894209 (lemmaContainsKeyImpliesGetValueByKeyDefined!1871 (toList!5955 lm!2023) lt!1894004))))

(declare-datatypes ((Option!12396 0))(
  ( (None!12395) (Some!12395 (v!47012 List!53006)) )
))
(declare-fun isDefined!9650 (Option!12396) Bool)

(declare-fun getValueByKey!1980 (List!53007 (_ BitVec 64)) Option!12396)

(assert (=> b!4731009 (isDefined!9650 (getValueByKey!1980 (toList!5955 lm!2023) lt!1894004))))

(declare-fun b!4731010 () Bool)

(declare-fun Unit!131488 () Unit!131471)

(assert (=> b!4731010 (= e!2950931 Unit!131488)))

(declare-fun b!4731011 () Bool)

(assert (=> b!4731011 (= e!2950930 (isDefined!9650 (getValueByKey!1980 (toList!5955 lm!2023) lt!1894004)))))

(assert (= (and d!1508921 c!807973) b!4731009))

(assert (= (and d!1508921 (not c!807973)) b!4731010))

(assert (= (and d!1508921 (not res!2002950)) b!4731011))

(declare-fun m!5673549 () Bool)

(assert (=> d!1508921 m!5673549))

(declare-fun m!5673551 () Bool)

(assert (=> b!4731009 m!5673551))

(declare-fun m!5673553 () Bool)

(assert (=> b!4731009 m!5673553))

(assert (=> b!4731009 m!5673553))

(declare-fun m!5673555 () Bool)

(assert (=> b!4731009 m!5673555))

(assert (=> b!4731011 m!5673553))

(assert (=> b!4731011 m!5673553))

(assert (=> b!4731011 m!5673555))

(assert (=> b!4730749 d!1508921))

(declare-fun d!1508931 () Bool)

(declare-fun lt!1894214 () Bool)

(declare-fun content!9424 (List!53007) (Set tuple2!54528))

(assert (=> d!1508931 (= lt!1894214 (set.member lt!1894006 (content!9424 (toList!5955 lm!2023))))))

(declare-fun e!2950937 () Bool)

(assert (=> d!1508931 (= lt!1894214 e!2950937)))

(declare-fun res!2002955 () Bool)

(assert (=> d!1508931 (=> (not res!2002955) (not e!2950937))))

(assert (=> d!1508931 (= res!2002955 (is-Cons!52883 (toList!5955 lm!2023)))))

(assert (=> d!1508931 (= (contains!16245 (toList!5955 lm!2023) lt!1894006) lt!1894214)))

(declare-fun b!4731016 () Bool)

(declare-fun e!2950936 () Bool)

(assert (=> b!4731016 (= e!2950937 e!2950936)))

(declare-fun res!2002956 () Bool)

(assert (=> b!4731016 (=> res!2002956 e!2950936)))

(assert (=> b!4731016 (= res!2002956 (= (h!59244 (toList!5955 lm!2023)) lt!1894006))))

(declare-fun b!4731017 () Bool)

(assert (=> b!4731017 (= e!2950936 (contains!16245 (t!360283 (toList!5955 lm!2023)) lt!1894006))))

(assert (= (and d!1508931 res!2002955) b!4731016))

(assert (= (and b!4731016 (not res!2002956)) b!4731017))

(declare-fun m!5673557 () Bool)

(assert (=> d!1508931 m!5673557))

(declare-fun m!5673559 () Bool)

(assert (=> d!1508931 m!5673559))

(declare-fun m!5673561 () Bool)

(assert (=> b!4731017 m!5673561))

(assert (=> b!4730749 d!1508931))

(declare-fun bs!1120564 () Bool)

(declare-fun d!1508933 () Bool)

(assert (= bs!1120564 (and d!1508933 d!1508895)))

(declare-fun lambda!217123 () Int)

(assert (=> bs!1120564 (= lambda!217123 lambda!217077)))

(declare-fun bs!1120565 () Bool)

(assert (= bs!1120565 (and d!1508933 d!1508857)))

(assert (=> bs!1120565 (not (= lambda!217123 lambda!217069))))

(declare-fun bs!1120566 () Bool)

(assert (= bs!1120566 (and d!1508933 start!482074)))

(assert (=> bs!1120566 (= lambda!217123 lambda!217059)))

(declare-fun bs!1120567 () Bool)

(assert (= bs!1120567 (and d!1508933 d!1508911)))

(assert (=> bs!1120567 (= lambda!217123 lambda!217120)))

(declare-fun bs!1120568 () Bool)

(assert (= bs!1120568 (and d!1508933 d!1508869)))

(assert (=> bs!1120568 (not (= lambda!217123 lambda!217070))))

(assert (=> d!1508933 (contains!16246 lm!2023 (hash!4416 hashF!1323 key!4653))))

(declare-fun lt!1894217 () Unit!131471)

(declare-fun choose!33452 (ListLongMap!4485 K!14233 Hashable!6402) Unit!131471)

(assert (=> d!1508933 (= lt!1894217 (choose!33452 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1508933 (forall!11630 (toList!5955 lm!2023) lambda!217123)))

(assert (=> d!1508933 (= (lemmaInGenMapThenLongMapContainsHash!779 lm!2023 key!4653 hashF!1323) lt!1894217)))

(declare-fun bs!1120569 () Bool)

(assert (= bs!1120569 d!1508933))

(assert (=> bs!1120569 m!5673267))

(assert (=> bs!1120569 m!5673267))

(declare-fun m!5673563 () Bool)

(assert (=> bs!1120569 m!5673563))

(declare-fun m!5673565 () Bool)

(assert (=> bs!1120569 m!5673565))

(declare-fun m!5673567 () Bool)

(assert (=> bs!1120569 m!5673567))

(assert (=> b!4730749 d!1508933))

(declare-fun bs!1120570 () Bool)

(declare-fun d!1508935 () Bool)

(assert (= bs!1120570 (and d!1508935 d!1508895)))

(declare-fun lambda!217130 () Int)

(assert (=> bs!1120570 (= lambda!217130 lambda!217077)))

(declare-fun bs!1120571 () Bool)

(assert (= bs!1120571 (and d!1508935 d!1508857)))

(assert (=> bs!1120571 (not (= lambda!217130 lambda!217069))))

(declare-fun bs!1120572 () Bool)

(assert (= bs!1120572 (and d!1508935 start!482074)))

(assert (=> bs!1120572 (= lambda!217130 lambda!217059)))

(declare-fun bs!1120573 () Bool)

(assert (= bs!1120573 (and d!1508935 d!1508933)))

(assert (=> bs!1120573 (= lambda!217130 lambda!217123)))

(declare-fun bs!1120574 () Bool)

(assert (= bs!1120574 (and d!1508935 d!1508911)))

(assert (=> bs!1120574 (= lambda!217130 lambda!217120)))

(declare-fun bs!1120575 () Bool)

(assert (= bs!1120575 (and d!1508935 d!1508869)))

(assert (=> bs!1120575 (not (= lambda!217130 lambda!217070))))

(declare-fun b!4731027 () Bool)

(declare-fun res!2002967 () Bool)

(declare-fun e!2950942 () Bool)

(assert (=> b!4731027 (=> (not res!2002967) (not e!2950942))))

(assert (=> b!4731027 (= res!2002967 (contains!16244 (extractMap!2059 (toList!5955 lm!2023)) key!4653))))

(assert (=> d!1508935 e!2950942))

(declare-fun res!2002965 () Bool)

(assert (=> d!1508935 (=> (not res!2002965) (not e!2950942))))

(assert (=> d!1508935 (= res!2002965 (forall!11630 (toList!5955 lm!2023) lambda!217130))))

(declare-fun lt!1894240 () Unit!131471)

(declare-fun choose!33453 (ListLongMap!4485 K!14233 Hashable!6402) Unit!131471)

(assert (=> d!1508935 (= lt!1894240 (choose!33453 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1508935 (forall!11630 (toList!5955 lm!2023) lambda!217130)))

(assert (=> d!1508935 (= (lemmaInGenMapThenGetPairDefined!369 lm!2023 key!4653 hashF!1323) lt!1894240)))

(declare-fun b!4731026 () Bool)

(declare-fun res!2002966 () Bool)

(assert (=> b!4731026 (=> (not res!2002966) (not e!2950942))))

(assert (=> b!4731026 (= res!2002966 (allKeysSameHashInMap!1947 lm!2023 hashF!1323))))

(declare-fun lt!1894237 () (_ BitVec 64))

(declare-fun lt!1894236 () List!53006)

(declare-fun b!4731029 () Bool)

(declare-fun e!2950943 () Bool)

(assert (=> b!4731029 (= e!2950943 (= (getValueByKey!1980 (toList!5955 lm!2023) lt!1894237) (Some!12395 lt!1894236)))))

(declare-fun b!4731028 () Bool)

(assert (=> b!4731028 (= e!2950942 (isDefined!9647 (getPair!573 (apply!12458 lm!2023 (hash!4416 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1894235 () Unit!131471)

(assert (=> b!4731028 (= lt!1894235 (forallContained!3670 (toList!5955 lm!2023) lambda!217130 (tuple2!54529 (hash!4416 hashF!1323 key!4653) (apply!12458 lm!2023 (hash!4416 hashF!1323 key!4653)))))))

(declare-fun lt!1894239 () Unit!131471)

(declare-fun lt!1894234 () Unit!131471)

(assert (=> b!4731028 (= lt!1894239 lt!1894234)))

(assert (=> b!4731028 (contains!16245 (toList!5955 lm!2023) (tuple2!54529 lt!1894237 lt!1894236))))

(assert (=> b!4731028 (= lt!1894234 (lemmaGetValueImpliesTupleContained!378 lm!2023 lt!1894237 lt!1894236))))

(assert (=> b!4731028 e!2950943))

(declare-fun res!2002968 () Bool)

(assert (=> b!4731028 (=> (not res!2002968) (not e!2950943))))

(assert (=> b!4731028 (= res!2002968 (contains!16246 lm!2023 lt!1894237))))

(assert (=> b!4731028 (= lt!1894236 (apply!12458 lm!2023 (hash!4416 hashF!1323 key!4653)))))

(assert (=> b!4731028 (= lt!1894237 (hash!4416 hashF!1323 key!4653))))

(declare-fun lt!1894238 () Unit!131471)

(declare-fun lt!1894241 () Unit!131471)

(assert (=> b!4731028 (= lt!1894238 lt!1894241)))

(assert (=> b!4731028 (contains!16246 lm!2023 (hash!4416 hashF!1323 key!4653))))

(assert (=> b!4731028 (= lt!1894241 (lemmaInGenMapThenLongMapContainsHash!779 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1508935 res!2002965) b!4731026))

(assert (= (and b!4731026 res!2002966) b!4731027))

(assert (= (and b!4731027 res!2002967) b!4731028))

(assert (= (and b!4731028 res!2002968) b!4731029))

(assert (=> b!4731027 m!5673231))

(assert (=> b!4731027 m!5673231))

(declare-fun m!5673569 () Bool)

(assert (=> b!4731027 m!5673569))

(declare-fun m!5673571 () Bool)

(assert (=> d!1508935 m!5673571))

(declare-fun m!5673573 () Bool)

(assert (=> d!1508935 m!5673573))

(assert (=> d!1508935 m!5673571))

(declare-fun m!5673575 () Bool)

(assert (=> b!4731028 m!5673575))

(declare-fun m!5673577 () Bool)

(assert (=> b!4731028 m!5673577))

(declare-fun m!5673579 () Bool)

(assert (=> b!4731028 m!5673579))

(declare-fun m!5673581 () Bool)

(assert (=> b!4731028 m!5673581))

(assert (=> b!4731028 m!5673577))

(declare-fun m!5673583 () Bool)

(assert (=> b!4731028 m!5673583))

(assert (=> b!4731028 m!5673267))

(declare-fun m!5673585 () Bool)

(assert (=> b!4731028 m!5673585))

(assert (=> b!4731028 m!5673267))

(assert (=> b!4731028 m!5673563))

(assert (=> b!4731028 m!5673267))

(assert (=> b!4731028 m!5673575))

(assert (=> b!4731028 m!5673247))

(declare-fun m!5673587 () Bool)

(assert (=> b!4731028 m!5673587))

(declare-fun m!5673589 () Bool)

(assert (=> b!4731029 m!5673589))

(assert (=> b!4731026 m!5673219))

(assert (=> b!4730749 d!1508935))

(declare-fun d!1508937 () Bool)

(declare-fun isEmpty!29200 (Option!12393) Bool)

(assert (=> d!1508937 (= (isDefined!9647 (getPair!573 lt!1894008 key!4653)) (not (isEmpty!29200 (getPair!573 lt!1894008 key!4653))))))

(declare-fun bs!1120576 () Bool)

(assert (= bs!1120576 d!1508937))

(assert (=> bs!1120576 m!5673239))

(declare-fun m!5673591 () Bool)

(assert (=> bs!1120576 m!5673591))

(assert (=> b!4730749 d!1508937))

(declare-fun d!1508939 () Bool)

(assert (=> d!1508939 (containsKey!3407 oldBucket!34 key!4653)))

(declare-fun lt!1894244 () Unit!131471)

(declare-fun choose!33454 (List!53006 K!14233 Hashable!6402) Unit!131471)

(assert (=> d!1508939 (= lt!1894244 (choose!33454 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1508939 (noDuplicateKeys!2033 oldBucket!34)))

(assert (=> d!1508939 (= (lemmaGetPairDefinedThenContainsKey!317 oldBucket!34 key!4653 hashF!1323) lt!1894244)))

(declare-fun bs!1120577 () Bool)

(assert (= bs!1120577 d!1508939))

(assert (=> bs!1120577 m!5673261))

(declare-fun m!5673593 () Bool)

(assert (=> bs!1120577 m!5673593))

(assert (=> bs!1120577 m!5673265))

(assert (=> b!4730749 d!1508939))

(declare-fun d!1508941 () Bool)

(declare-fun res!2002973 () Bool)

(declare-fun e!2950948 () Bool)

(assert (=> d!1508941 (=> res!2002973 e!2950948)))

(assert (=> d!1508941 (= res!2002973 (and (is-Cons!52882 (t!360282 oldBucket!34)) (= (_1!30557 (h!59243 (t!360282 oldBucket!34))) key!4653)))))

(assert (=> d!1508941 (= (containsKey!3407 (t!360282 oldBucket!34) key!4653) e!2950948)))

(declare-fun b!4731034 () Bool)

(declare-fun e!2950949 () Bool)

(assert (=> b!4731034 (= e!2950948 e!2950949)))

(declare-fun res!2002974 () Bool)

(assert (=> b!4731034 (=> (not res!2002974) (not e!2950949))))

(assert (=> b!4731034 (= res!2002974 (is-Cons!52882 (t!360282 oldBucket!34)))))

(declare-fun b!4731035 () Bool)

(assert (=> b!4731035 (= e!2950949 (containsKey!3407 (t!360282 (t!360282 oldBucket!34)) key!4653))))

(assert (= (and d!1508941 (not res!2002973)) b!4731034))

(assert (= (and b!4731034 res!2002974) b!4731035))

(declare-fun m!5673595 () Bool)

(assert (=> b!4731035 m!5673595))

(assert (=> b!4730749 d!1508941))

(declare-fun b!4731052 () Bool)

(declare-fun e!2950964 () Option!12393)

(declare-fun e!2950960 () Option!12393)

(assert (=> b!4731052 (= e!2950964 e!2950960)))

(declare-fun c!807979 () Bool)

(assert (=> b!4731052 (= c!807979 (is-Cons!52882 lt!1894008))))

(declare-fun d!1508943 () Bool)

(declare-fun e!2950963 () Bool)

(assert (=> d!1508943 e!2950963))

(declare-fun res!2002983 () Bool)

(assert (=> d!1508943 (=> res!2002983 e!2950963)))

(declare-fun e!2950962 () Bool)

(assert (=> d!1508943 (= res!2002983 e!2950962)))

(declare-fun res!2002984 () Bool)

(assert (=> d!1508943 (=> (not res!2002984) (not e!2950962))))

(declare-fun lt!1894247 () Option!12393)

(assert (=> d!1508943 (= res!2002984 (isEmpty!29200 lt!1894247))))

(assert (=> d!1508943 (= lt!1894247 e!2950964)))

(declare-fun c!807978 () Bool)

(assert (=> d!1508943 (= c!807978 (and (is-Cons!52882 lt!1894008) (= (_1!30557 (h!59243 lt!1894008)) key!4653)))))

(assert (=> d!1508943 (noDuplicateKeys!2033 lt!1894008)))

(assert (=> d!1508943 (= (getPair!573 lt!1894008 key!4653) lt!1894247)))

(declare-fun b!4731053 () Bool)

(declare-fun e!2950961 () Bool)

(assert (=> b!4731053 (= e!2950963 e!2950961)))

(declare-fun res!2002985 () Bool)

(assert (=> b!4731053 (=> (not res!2002985) (not e!2950961))))

(assert (=> b!4731053 (= res!2002985 (isDefined!9647 lt!1894247))))

(declare-fun b!4731054 () Bool)

(assert (=> b!4731054 (= e!2950960 None!12392)))

(declare-fun b!4731055 () Bool)

(assert (=> b!4731055 (= e!2950962 (not (containsKey!3407 lt!1894008 key!4653)))))

(declare-fun b!4731056 () Bool)

(declare-fun res!2002986 () Bool)

(assert (=> b!4731056 (=> (not res!2002986) (not e!2950961))))

(declare-fun get!17748 (Option!12393) tuple2!54526)

(assert (=> b!4731056 (= res!2002986 (= (_1!30557 (get!17748 lt!1894247)) key!4653))))

(declare-fun b!4731057 () Bool)

(declare-fun contains!16251 (List!53006 tuple2!54526) Bool)

(assert (=> b!4731057 (= e!2950961 (contains!16251 lt!1894008 (get!17748 lt!1894247)))))

(declare-fun b!4731058 () Bool)

(assert (=> b!4731058 (= e!2950960 (getPair!573 (t!360282 lt!1894008) key!4653))))

(declare-fun b!4731059 () Bool)

(assert (=> b!4731059 (= e!2950964 (Some!12392 (h!59243 lt!1894008)))))

(assert (= (and d!1508943 c!807978) b!4731059))

(assert (= (and d!1508943 (not c!807978)) b!4731052))

(assert (= (and b!4731052 c!807979) b!4731058))

(assert (= (and b!4731052 (not c!807979)) b!4731054))

(assert (= (and d!1508943 res!2002984) b!4731055))

(assert (= (and d!1508943 (not res!2002983)) b!4731053))

(assert (= (and b!4731053 res!2002985) b!4731056))

(assert (= (and b!4731056 res!2002986) b!4731057))

(declare-fun m!5673597 () Bool)

(assert (=> b!4731055 m!5673597))

(declare-fun m!5673599 () Bool)

(assert (=> b!4731057 m!5673599))

(assert (=> b!4731057 m!5673599))

(declare-fun m!5673601 () Bool)

(assert (=> b!4731057 m!5673601))

(declare-fun m!5673603 () Bool)

(assert (=> b!4731053 m!5673603))

(declare-fun m!5673605 () Bool)

(assert (=> b!4731058 m!5673605))

(declare-fun m!5673607 () Bool)

(assert (=> d!1508943 m!5673607))

(declare-fun m!5673609 () Bool)

(assert (=> d!1508943 m!5673609))

(assert (=> b!4731056 m!5673599))

(assert (=> b!4730749 d!1508943))

(declare-fun d!1508945 () Bool)

(declare-fun res!2002987 () Bool)

(declare-fun e!2950965 () Bool)

(assert (=> d!1508945 (=> res!2002987 e!2950965)))

(assert (=> d!1508945 (= res!2002987 (and (is-Cons!52882 oldBucket!34) (= (_1!30557 (h!59243 oldBucket!34)) key!4653)))))

(assert (=> d!1508945 (= (containsKey!3407 oldBucket!34 key!4653) e!2950965)))

(declare-fun b!4731060 () Bool)

(declare-fun e!2950966 () Bool)

(assert (=> b!4731060 (= e!2950965 e!2950966)))

(declare-fun res!2002988 () Bool)

(assert (=> b!4731060 (=> (not res!2002988) (not e!2950966))))

(assert (=> b!4731060 (= res!2002988 (is-Cons!52882 oldBucket!34))))

(declare-fun b!4731061 () Bool)

(assert (=> b!4731061 (= e!2950966 (containsKey!3407 (t!360282 oldBucket!34) key!4653))))

(assert (= (and d!1508945 (not res!2002987)) b!4731060))

(assert (= (and b!4731060 res!2002988) b!4731061))

(assert (=> b!4731061 m!5673255))

(assert (=> b!4730749 d!1508945))

(declare-fun d!1508947 () Bool)

(declare-fun get!17750 (Option!12396) List!53006)

(assert (=> d!1508947 (= (apply!12458 lm!2023 lt!1894004) (get!17750 (getValueByKey!1980 (toList!5955 lm!2023) lt!1894004)))))

(declare-fun bs!1120578 () Bool)

(assert (= bs!1120578 d!1508947))

(assert (=> bs!1120578 m!5673553))

(assert (=> bs!1120578 m!5673553))

(declare-fun m!5673611 () Bool)

(assert (=> bs!1120578 m!5673611))

(assert (=> b!4730749 d!1508947))

(declare-fun d!1508949 () Bool)

(assert (=> d!1508949 (contains!16245 (toList!5955 lm!2023) (tuple2!54529 lt!1894004 lt!1894008))))

(declare-fun lt!1894250 () Unit!131471)

(declare-fun choose!33455 (ListLongMap!4485 (_ BitVec 64) List!53006) Unit!131471)

(assert (=> d!1508949 (= lt!1894250 (choose!33455 lm!2023 lt!1894004 lt!1894008))))

(assert (=> d!1508949 (contains!16246 lm!2023 lt!1894004)))

(assert (=> d!1508949 (= (lemmaGetValueImpliesTupleContained!378 lm!2023 lt!1894004 lt!1894008) lt!1894250)))

(declare-fun bs!1120579 () Bool)

(assert (= bs!1120579 d!1508949))

(declare-fun m!5673613 () Bool)

(assert (=> bs!1120579 m!5673613))

(declare-fun m!5673615 () Bool)

(assert (=> bs!1120579 m!5673615))

(assert (=> bs!1120579 m!5673249))

(assert (=> b!4730749 d!1508949))

(declare-fun e!2950969 () Bool)

(declare-fun b!4731067 () Bool)

(declare-fun tp!1348792 () Bool)

(assert (=> b!4731067 (= e!2950969 (and tp_is_empty!31425 tp_is_empty!31427 tp!1348792))))

(assert (=> b!4730750 (= tp!1348779 e!2950969)))

(assert (= (and b!4730750 (is-Cons!52882 (t!360282 oldBucket!34))) b!4731067))

(declare-fun e!2950970 () Bool)

(declare-fun b!4731068 () Bool)

(declare-fun tp!1348793 () Bool)

(assert (=> b!4731068 (= e!2950970 (and tp_is_empty!31425 tp_is_empty!31427 tp!1348793))))

(assert (=> b!4730752 (= tp!1348778 e!2950970)))

(assert (= (and b!4730752 (is-Cons!52882 (t!360282 newBucket!218))) b!4731068))

(declare-fun b!4731073 () Bool)

(declare-fun e!2950973 () Bool)

(declare-fun tp!1348798 () Bool)

(declare-fun tp!1348799 () Bool)

(assert (=> b!4731073 (= e!2950973 (and tp!1348798 tp!1348799))))

(assert (=> b!4730747 (= tp!1348780 e!2950973)))

(assert (= (and b!4730747 (is-Cons!52883 (toList!5955 lm!2023))) b!4731073))

(declare-fun b_lambda!180549 () Bool)

(assert (= b_lambda!180543 (or start!482074 b_lambda!180549)))

(declare-fun bs!1120580 () Bool)

(declare-fun d!1508951 () Bool)

(assert (= bs!1120580 (and d!1508951 start!482074)))

(assert (=> bs!1120580 (= (dynLambda!21846 lambda!217059 (h!59244 lt!1894003)) (noDuplicateKeys!2033 (_2!30558 (h!59244 lt!1894003))))))

(declare-fun m!5673617 () Bool)

(assert (=> bs!1120580 m!5673617))

(assert (=> b!4730859 d!1508951))

(declare-fun b_lambda!180551 () Bool)

(assert (= b_lambda!180541 (or start!482074 b_lambda!180551)))

(declare-fun bs!1120581 () Bool)

(declare-fun d!1508953 () Bool)

(assert (= bs!1120581 (and d!1508953 start!482074)))

(assert (=> bs!1120581 (= (dynLambda!21846 lambda!217059 (h!59244 (toList!5955 lm!2023))) (noDuplicateKeys!2033 (_2!30558 (h!59244 (toList!5955 lm!2023)))))))

(assert (=> bs!1120581 m!5673513))

(assert (=> b!4730837 d!1508953))

(declare-fun b_lambda!180553 () Bool)

(assert (= b_lambda!180547 (or start!482074 b_lambda!180553)))

(declare-fun bs!1120582 () Bool)

(declare-fun d!1508955 () Bool)

(assert (= bs!1120582 (and d!1508955 start!482074)))

(assert (=> bs!1120582 (= (dynLambda!21846 lambda!217059 lt!1894006) (noDuplicateKeys!2033 (_2!30558 lt!1894006)))))

(declare-fun m!5673619 () Bool)

(assert (=> bs!1120582 m!5673619))

(assert (=> d!1508919 d!1508955))

(push 1)

(assert (not d!1508943))

(assert (not b!4730972))

(assert (not b!4730913))

(assert (not bs!1120582))

(assert (not b_lambda!180549))

(assert (not b!4731057))

(assert (not d!1508891))

(assert (not b!4731029))

(assert (not b!4730968))

(assert (not b!4730916))

(assert (not b!4731026))

(assert (not b!4731053))

(assert (not b!4730971))

(assert (not d!1508889))

(assert (not d!1508901))

(assert (not bm!330885))

(assert (not d!1508919))

(assert (not b!4730935))

(assert (not d!1508921))

(assert (not b!4730985))

(assert (not b!4730875))

(assert (not b!4730915))

(assert (not d!1508947))

(assert (not b!4730986))

(assert (not d!1508853))

(assert (not b!4731058))

(assert (not b_lambda!180553))

(assert (not b!4731073))

(assert (not d!1508939))

(assert (not d!1508937))

(assert (not b!4730979))

(assert (not b!4731011))

(assert tp_is_empty!31425)

(assert (not b!4730989))

(assert (not b!4731067))

(assert (not b!4730860))

(assert (not b!4731017))

(assert (not b!4730838))

(assert (not b_lambda!180551))

(assert (not d!1508871))

(assert (not d!1508863))

(assert (not bs!1120581))

(assert (not d!1508911))

(assert (not bs!1120580))

(assert (not b!4731068))

(assert (not d!1508885))

(assert (not b!4731061))

(assert (not b!4731028))

(assert (not d!1508867))

(assert (not b!4730830))

(assert (not b!4730832))

(assert (not d!1508881))

(assert (not b!4731055))

(assert (not b!4730918))

(assert tp_is_empty!31427)

(assert (not bm!330892))

(assert (not b!4730821))

(assert (not d!1508931))

(assert (not b!4730863))

(assert (not d!1508869))

(assert (not b!4731009))

(assert (not b!4730911))

(assert (not b!4730970))

(assert (not b!4731035))

(assert (not bm!330894))

(assert (not d!1508895))

(assert (not b!4730917))

(assert (not d!1508949))

(assert (not b!4730849))

(assert (not d!1508933))

(assert (not d!1508935))

(assert (not d!1508857))

(assert (not b!4730820))

(assert (not d!1508875))

(assert (not bm!330893))

(assert (not b!4730919))

(assert (not b!4731056))

(assert (not b!4731027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

