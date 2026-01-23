; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493300 () Bool)

(assert start!493300)

(declare-fun b!4791397 () Bool)

(declare-fun res!2036297 () Bool)

(declare-fun e!2991660 () Bool)

(assert (=> b!4791397 (=> (not res!2036297) (not e!2991660))))

(declare-datatypes ((K!15747 0))(
  ( (K!15748 (val!20903 Int)) )
))
(declare-datatypes ((V!15993 0))(
  ( (V!15994 (val!20904 Int)) )
))
(declare-datatypes ((tuple2!56780 0))(
  ( (tuple2!56781 (_1!31684 K!15747) (_2!31684 V!15993)) )
))
(declare-datatypes ((List!54301 0))(
  ( (Nil!54177) (Cons!54177 (h!60601 tuple2!56780) (t!361751 List!54301)) )
))
(declare-datatypes ((tuple2!56782 0))(
  ( (tuple2!56783 (_1!31685 (_ BitVec 64)) (_2!31685 List!54301)) )
))
(declare-datatypes ((List!54302 0))(
  ( (Nil!54178) (Cons!54178 (h!60602 tuple2!56782) (t!361752 List!54302)) )
))
(declare-datatypes ((ListLongMap!5307 0))(
  ( (ListLongMap!5308 (toList!6885 List!54302)) )
))
(declare-fun lm!2473 () ListLongMap!5307)

(declare-fun key!5896 () K!15747)

(declare-datatypes ((ListMap!6357 0))(
  ( (ListMap!6358 (toList!6886 List!54301)) )
))
(declare-fun contains!17784 (ListMap!6357 K!15747) Bool)

(declare-fun extractMap!2430 (List!54302) ListMap!6357)

(assert (=> b!4791397 (= res!2036297 (contains!17784 (extractMap!2430 (toList!6885 lm!2473)) key!5896))))

(declare-fun res!2036300 () Bool)

(assert (=> start!493300 (=> (not res!2036300) (not e!2991660))))

(declare-fun lambda!230366 () Int)

(declare-fun forall!12228 (List!54302 Int) Bool)

(assert (=> start!493300 (= res!2036300 (forall!12228 (toList!6885 lm!2473) lambda!230366))))

(assert (=> start!493300 e!2991660))

(declare-fun e!2991661 () Bool)

(declare-fun inv!69774 (ListLongMap!5307) Bool)

(assert (=> start!493300 (and (inv!69774 lm!2473) e!2991661)))

(assert (=> start!493300 true))

(declare-fun tp_is_empty!33493 () Bool)

(assert (=> start!493300 tp_is_empty!33493))

(declare-fun tp_is_empty!33495 () Bool)

(assert (=> start!493300 tp_is_empty!33495))

(declare-fun b!4791398 () Bool)

(declare-fun res!2036299 () Bool)

(declare-fun e!2991657 () Bool)

(assert (=> b!4791398 (=> res!2036299 e!2991657)))

(declare-fun lt!1950585 () ListMap!6357)

(assert (=> b!4791398 (= res!2036299 (not (contains!17784 lt!1950585 key!5896)))))

(declare-fun e!2991658 () Bool)

(declare-fun lt!1950588 () (_ BitVec 64))

(declare-fun b!4791399 () Bool)

(declare-datatypes ((Option!13070 0))(
  ( (None!13069) (Some!13069 (v!48348 tuple2!56780)) )
))
(declare-fun isDefined!10212 (Option!13070) Bool)

(declare-fun getPair!875 (List!54301 K!15747) Option!13070)

(declare-fun apply!12966 (ListLongMap!5307 (_ BitVec 64)) List!54301)

(assert (=> b!4791399 (= e!2991658 (isDefined!10212 (getPair!875 (apply!12966 lm!2473 lt!1950588) key!5896)))))

(declare-fun b!4791400 () Bool)

(declare-fun tp!1357939 () Bool)

(assert (=> b!4791400 (= e!2991661 tp!1357939)))

(declare-fun b!4791401 () Bool)

(declare-fun res!2036296 () Bool)

(declare-fun e!2991662 () Bool)

(assert (=> b!4791401 (=> res!2036296 e!2991662)))

(declare-fun containsKey!3933 (List!54301 K!15747) Bool)

(assert (=> b!4791401 (= res!2036296 (containsKey!3933 (_2!31685 (h!60602 (toList!6885 lm!2473))) key!5896))))

(declare-fun b!4791402 () Bool)

(declare-fun res!2036295 () Bool)

(assert (=> b!4791402 (=> res!2036295 e!2991657)))

(declare-fun addToMapMapFromBucket!1697 (List!54301 ListMap!6357) ListMap!6357)

(assert (=> b!4791402 (= res!2036295 (not (contains!17784 (addToMapMapFromBucket!1697 (_2!31685 (h!60602 (toList!6885 lm!2473))) lt!1950585) key!5896)))))

(declare-fun b!4791403 () Bool)

(declare-datatypes ((Unit!139878 0))(
  ( (Unit!139879) )
))
(declare-fun e!2991659 () Unit!139878)

(declare-fun Unit!139880 () Unit!139878)

(assert (=> b!4791403 (= e!2991659 Unit!139880)))

(declare-fun b!4791404 () Bool)

(declare-fun res!2036293 () Bool)

(assert (=> b!4791404 (=> (not res!2036293) (not e!2991660))))

(declare-datatypes ((Hashable!6903 0))(
  ( (HashableExt!6902 (__x!32926 Int)) )
))
(declare-fun hashF!1559 () Hashable!6903)

(declare-fun allKeysSameHashInMap!2308 (ListLongMap!5307 Hashable!6903) Bool)

(assert (=> b!4791404 (= res!2036293 (allKeysSameHashInMap!2308 lm!2473 hashF!1559))))

(declare-fun b!4791405 () Bool)

(assert (=> b!4791405 (= e!2991657 true)))

(declare-fun lt!1950590 () V!15993)

(declare-fun apply!12967 (ListMap!6357 K!15747) V!15993)

(assert (=> b!4791405 (= lt!1950590 (apply!12967 lt!1950585 key!5896))))

(declare-fun b!4791406 () Bool)

(declare-fun lt!1950584 () Unit!139878)

(assert (=> b!4791406 (= e!2991659 lt!1950584)))

(declare-fun lt!1950582 () ListLongMap!5307)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!29 (ListLongMap!5307 K!15747 Hashable!6903) Unit!139878)

(assert (=> b!4791406 (= lt!1950584 (lemmaHashNotInLongMapThenNotInGenerated!29 lt!1950582 key!5896 hashF!1559))))

(assert (=> b!4791406 (not (contains!17784 (extractMap!2430 (toList!6885 lt!1950582)) key!5896))))

(declare-fun b!4791407 () Bool)

(declare-fun res!2036302 () Bool)

(assert (=> b!4791407 (=> res!2036302 e!2991662)))

(assert (=> b!4791407 (= res!2036302 (not (is-Cons!54178 (toList!6885 lm!2473))))))

(declare-fun b!4791408 () Bool)

(assert (=> b!4791408 (= e!2991660 (not e!2991662))))

(declare-fun res!2036301 () Bool)

(assert (=> b!4791408 (=> res!2036301 e!2991662)))

(declare-fun value!3111 () V!15993)

(declare-fun getValue!99 (List!54302 K!15747) V!15993)

(assert (=> b!4791408 (= res!2036301 (not (= (getValue!99 (toList!6885 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!553 (List!54302 K!15747) Bool)

(assert (=> b!4791408 (containsKeyBiggerList!553 (toList!6885 lm!2473) key!5896)))

(declare-fun lt!1950592 () Unit!139878)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!293 (ListLongMap!5307 K!15747 Hashable!6903) Unit!139878)

(assert (=> b!4791408 (= lt!1950592 (lemmaInLongMapThenContainsKeyBiggerList!293 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4791408 e!2991658))

(declare-fun res!2036298 () Bool)

(assert (=> b!4791408 (=> (not res!2036298) (not e!2991658))))

(declare-fun contains!17785 (ListLongMap!5307 (_ BitVec 64)) Bool)

(assert (=> b!4791408 (= res!2036298 (contains!17785 lm!2473 lt!1950588))))

(declare-fun hash!4935 (Hashable!6903 K!15747) (_ BitVec 64))

(assert (=> b!4791408 (= lt!1950588 (hash!4935 hashF!1559 key!5896))))

(declare-fun lt!1950587 () Unit!139878)

(declare-fun lemmaInGenericMapThenInLongMap!307 (ListLongMap!5307 K!15747 Hashable!6903) Unit!139878)

(assert (=> b!4791408 (= lt!1950587 (lemmaInGenericMapThenInLongMap!307 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791409 () Bool)

(assert (=> b!4791409 (= e!2991662 e!2991657)))

(declare-fun res!2036294 () Bool)

(assert (=> b!4791409 (=> res!2036294 e!2991657)))

(declare-fun noDuplicateKeys!2328 (List!54301) Bool)

(assert (=> b!4791409 (= res!2036294 (not (noDuplicateKeys!2328 (_2!31685 (h!60602 (toList!6885 lm!2473))))))))

(assert (=> b!4791409 (= lt!1950585 (extractMap!2430 (t!361752 (toList!6885 lm!2473))))))

(declare-fun lt!1950591 () ListMap!6357)

(assert (=> b!4791409 (= (apply!12967 lt!1950591 key!5896) value!3111)))

(declare-fun lt!1950586 () Unit!139878)

(declare-fun lemmaExtractMapPreservesMapping!35 (ListLongMap!5307 K!15747 V!15993 Hashable!6903) Unit!139878)

(assert (=> b!4791409 (= lt!1950586 (lemmaExtractMapPreservesMapping!35 lt!1950582 key!5896 value!3111 hashF!1559))))

(assert (=> b!4791409 (contains!17784 lt!1950591 key!5896)))

(assert (=> b!4791409 (= lt!1950591 (extractMap!2430 (toList!6885 lt!1950582)))))

(declare-fun lt!1950583 () Unit!139878)

(declare-fun lemmaListContainsThenExtractedMapContains!703 (ListLongMap!5307 K!15747 Hashable!6903) Unit!139878)

(assert (=> b!4791409 (= lt!1950583 (lemmaListContainsThenExtractedMapContains!703 lt!1950582 key!5896 hashF!1559))))

(declare-fun lt!1950589 () Unit!139878)

(assert (=> b!4791409 (= lt!1950589 e!2991659)))

(declare-fun c!816676 () Bool)

(assert (=> b!4791409 (= c!816676 (not (contains!17785 lt!1950582 lt!1950588)))))

(declare-fun tail!9258 (ListLongMap!5307) ListLongMap!5307)

(assert (=> b!4791409 (= lt!1950582 (tail!9258 lm!2473))))

(assert (= (and start!493300 res!2036300) b!4791404))

(assert (= (and b!4791404 res!2036293) b!4791397))

(assert (= (and b!4791397 res!2036297) b!4791408))

(assert (= (and b!4791408 res!2036298) b!4791399))

(assert (= (and b!4791408 (not res!2036301)) b!4791407))

(assert (= (and b!4791407 (not res!2036302)) b!4791401))

(assert (= (and b!4791401 (not res!2036296)) b!4791409))

(assert (= (and b!4791409 c!816676) b!4791406))

(assert (= (and b!4791409 (not c!816676)) b!4791403))

(assert (= (and b!4791409 (not res!2036294)) b!4791402))

(assert (= (and b!4791402 (not res!2036295)) b!4791398))

(assert (= (and b!4791398 (not res!2036299)) b!4791405))

(assert (= start!493300 b!4791400))

(declare-fun m!5771830 () Bool)

(assert (=> b!4791404 m!5771830))

(declare-fun m!5771832 () Bool)

(assert (=> b!4791409 m!5771832))

(declare-fun m!5771834 () Bool)

(assert (=> b!4791409 m!5771834))

(declare-fun m!5771836 () Bool)

(assert (=> b!4791409 m!5771836))

(declare-fun m!5771838 () Bool)

(assert (=> b!4791409 m!5771838))

(declare-fun m!5771840 () Bool)

(assert (=> b!4791409 m!5771840))

(declare-fun m!5771842 () Bool)

(assert (=> b!4791409 m!5771842))

(declare-fun m!5771844 () Bool)

(assert (=> b!4791409 m!5771844))

(declare-fun m!5771846 () Bool)

(assert (=> b!4791409 m!5771846))

(declare-fun m!5771848 () Bool)

(assert (=> b!4791409 m!5771848))

(declare-fun m!5771850 () Bool)

(assert (=> b!4791401 m!5771850))

(declare-fun m!5771852 () Bool)

(assert (=> b!4791408 m!5771852))

(declare-fun m!5771854 () Bool)

(assert (=> b!4791408 m!5771854))

(declare-fun m!5771856 () Bool)

(assert (=> b!4791408 m!5771856))

(declare-fun m!5771858 () Bool)

(assert (=> b!4791408 m!5771858))

(declare-fun m!5771860 () Bool)

(assert (=> b!4791408 m!5771860))

(declare-fun m!5771862 () Bool)

(assert (=> b!4791408 m!5771862))

(declare-fun m!5771864 () Bool)

(assert (=> b!4791406 m!5771864))

(assert (=> b!4791406 m!5771844))

(assert (=> b!4791406 m!5771844))

(declare-fun m!5771866 () Bool)

(assert (=> b!4791406 m!5771866))

(declare-fun m!5771868 () Bool)

(assert (=> start!493300 m!5771868))

(declare-fun m!5771870 () Bool)

(assert (=> start!493300 m!5771870))

(declare-fun m!5771872 () Bool)

(assert (=> b!4791398 m!5771872))

(declare-fun m!5771874 () Bool)

(assert (=> b!4791399 m!5771874))

(assert (=> b!4791399 m!5771874))

(declare-fun m!5771876 () Bool)

(assert (=> b!4791399 m!5771876))

(assert (=> b!4791399 m!5771876))

(declare-fun m!5771878 () Bool)

(assert (=> b!4791399 m!5771878))

(declare-fun m!5771880 () Bool)

(assert (=> b!4791397 m!5771880))

(assert (=> b!4791397 m!5771880))

(declare-fun m!5771882 () Bool)

(assert (=> b!4791397 m!5771882))

(declare-fun m!5771884 () Bool)

(assert (=> b!4791405 m!5771884))

(declare-fun m!5771886 () Bool)

(assert (=> b!4791402 m!5771886))

(assert (=> b!4791402 m!5771886))

(declare-fun m!5771888 () Bool)

(assert (=> b!4791402 m!5771888))

(push 1)

(assert tp_is_empty!33493)

(assert (not start!493300))

(assert (not b!4791405))

(assert tp_is_empty!33495)

(assert (not b!4791409))

(assert (not b!4791401))

(assert (not b!4791397))

(assert (not b!4791399))

(assert (not b!4791400))

(assert (not b!4791404))

(assert (not b!4791406))

(assert (not b!4791398))

(assert (not b!4791402))

(assert (not b!4791408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

