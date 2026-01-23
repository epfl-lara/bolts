; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503558 () Bool)

(assert start!503558)

(declare-fun b!4839633 () Bool)

(assert (=> b!4839633 true))

(declare-fun b!4839631 () Bool)

(declare-fun res!2063002 () Bool)

(declare-fun e!3024572 () Bool)

(assert (=> b!4839631 (=> (not res!2063002) (not e!3024572))))

(declare-datatypes ((K!17079 0))(
  ( (K!17080 (val!21969 Int)) )
))
(declare-datatypes ((V!17325 0))(
  ( (V!17326 (val!21970 Int)) )
))
(declare-datatypes ((tuple2!58810 0))(
  ( (tuple2!58811 (_1!32699 K!17079) (_2!32699 V!17325)) )
))
(declare-datatypes ((List!55452 0))(
  ( (Nil!55328) (Cons!55328 (h!61763 tuple2!58810) (t!362948 List!55452)) )
))
(declare-datatypes ((tuple2!58812 0))(
  ( (tuple2!58813 (_1!32700 (_ BitVec 64)) (_2!32700 List!55452)) )
))
(declare-datatypes ((List!55453 0))(
  ( (Nil!55329) (Cons!55329 (h!61764 tuple2!58812) (t!362949 List!55453)) )
))
(declare-datatypes ((ListLongMap!6271 0))(
  ( (ListLongMap!6272 (toList!7731 List!55453)) )
))
(declare-fun lm!2671 () ListLongMap!6271)

(declare-fun key!6540 () K!17079)

(declare-fun containsKeyBiggerList!688 (List!55453 K!17079) Bool)

(assert (=> b!4839631 (= res!2063002 (containsKeyBiggerList!688 (toList!7731 lm!2671) key!6540))))

(declare-fun b!4839632 () Bool)

(declare-fun e!3024576 () Bool)

(declare-fun e!3024574 () Bool)

(assert (=> b!4839632 (= e!3024576 e!3024574)))

(declare-fun res!2063001 () Bool)

(assert (=> b!4839632 (=> res!2063001 e!3024574)))

(declare-datatypes ((ListMap!7085 0))(
  ( (ListMap!7086 (toList!7732 List!55452)) )
))
(declare-fun lt!1984217 () ListMap!7085)

(declare-fun contains!19087 (ListMap!7085 K!17079) Bool)

(assert (=> b!4839632 (= res!2063001 (not (contains!19087 lt!1984217 key!6540)))))

(declare-fun lt!1984222 () ListLongMap!6271)

(declare-fun extractMap!2762 (List!55453) ListMap!7085)

(assert (=> b!4839632 (contains!19087 (extractMap!2762 (toList!7731 lt!1984222)) key!6540)))

(declare-datatypes ((Unit!144943 0))(
  ( (Unit!144944) )
))
(declare-fun lt!1984216 () Unit!144943)

(declare-datatypes ((Hashable!7404 0))(
  ( (HashableExt!7403 (__x!33679 Int)) )
))
(declare-fun hashF!1662 () Hashable!7404)

(declare-fun lemmaListContainsThenExtractedMapContains!748 (ListLongMap!6271 K!17079 Hashable!7404) Unit!144943)

(assert (=> b!4839632 (= lt!1984216 (lemmaListContainsThenExtractedMapContains!748 lt!1984222 key!6540 hashF!1662))))

(declare-fun tail!9485 (ListLongMap!6271) ListLongMap!6271)

(assert (=> b!4839632 (= lt!1984222 (tail!9485 lm!2671))))

(declare-fun lambda!240640 () Int)

(declare-fun forall!12823 (List!55453 Int) Bool)

(assert (=> b!4839633 (= e!3024574 (forall!12823 (toList!7731 lm!2671) lambda!240640))))

(declare-fun lambda!240641 () Int)

(declare-fun lt!1984220 () tuple2!58810)

(declare-fun lt!1984223 () Unit!144943)

(declare-fun forallContained!4488 (List!55452 Int tuple2!58810) Unit!144943)

(assert (=> b!4839633 (= lt!1984223 (forallContained!4488 (toList!7732 lt!1984217) lambda!240641 lt!1984220))))

(declare-fun contains!19088 (List!55452 tuple2!58810) Bool)

(assert (=> b!4839633 (contains!19088 (toList!7732 lt!1984217) lt!1984220)))

(declare-fun lt!1984219 () V!17325)

(assert (=> b!4839633 (= lt!1984220 (tuple2!58811 key!6540 lt!1984219))))

(declare-fun lt!1984218 () Unit!144943)

(declare-fun lemmaGetValueImpliesTupleContained!731 (ListMap!7085 K!17079 V!17325) Unit!144943)

(assert (=> b!4839633 (= lt!1984218 (lemmaGetValueImpliesTupleContained!731 lt!1984217 key!6540 lt!1984219))))

(declare-datatypes ((Option!13607 0))(
  ( (None!13606) (Some!13606 (v!49332 V!17325)) )
))
(declare-fun get!18940 (Option!13607) V!17325)

(declare-fun getValueByKey!2705 (List!55452 K!17079) Option!13607)

(assert (=> b!4839633 (= lt!1984219 (get!18940 (getValueByKey!2705 (toList!7732 lt!1984217) key!6540)))))

(declare-fun b!4839634 () Bool)

(declare-fun res!2063008 () Bool)

(assert (=> b!4839634 (=> (not res!2063008) (not e!3024572))))

(declare-fun e!3024573 () Bool)

(assert (=> b!4839634 (= res!2063008 e!3024573)))

(declare-fun res!2063004 () Bool)

(assert (=> b!4839634 (=> res!2063004 e!3024573)))

(get-info :version)

(assert (=> b!4839634 (= res!2063004 (not ((_ is Cons!55329) (toList!7731 lm!2671))))))

(declare-fun b!4839635 () Bool)

(declare-fun e!3024575 () Bool)

(declare-fun tp!1363744 () Bool)

(assert (=> b!4839635 (= e!3024575 tp!1363744)))

(declare-fun b!4839636 () Bool)

(declare-fun containsKey!4568 (List!55452 K!17079) Bool)

(assert (=> b!4839636 (= e!3024573 (not (containsKey!4568 (_2!32700 (h!61764 (toList!7731 lm!2671))) key!6540)))))

(declare-fun res!2063003 () Bool)

(assert (=> start!503558 (=> (not res!2063003) (not e!3024572))))

(assert (=> start!503558 (= res!2063003 (forall!12823 (toList!7731 lm!2671) lambda!240640))))

(assert (=> start!503558 e!3024572))

(declare-fun inv!70979 (ListLongMap!6271) Bool)

(assert (=> start!503558 (and (inv!70979 lm!2671) e!3024575)))

(assert (=> start!503558 true))

(declare-fun tp_is_empty!34911 () Bool)

(assert (=> start!503558 tp_is_empty!34911))

(declare-fun b!4839637 () Bool)

(declare-fun res!2063007 () Bool)

(assert (=> b!4839637 (=> (not res!2063007) (not e!3024572))))

(declare-fun allKeysSameHashInMap!2720 (ListLongMap!6271 Hashable!7404) Bool)

(assert (=> b!4839637 (= res!2063007 (allKeysSameHashInMap!2720 lm!2671 hashF!1662))))

(declare-fun b!4839638 () Bool)

(declare-fun e!3024571 () Bool)

(assert (=> b!4839638 (= e!3024571 (not e!3024576))))

(declare-fun res!2063006 () Bool)

(assert (=> b!4839638 (=> res!2063006 e!3024576)))

(assert (=> b!4839638 (= res!2063006 (not (containsKeyBiggerList!688 (t!362949 (toList!7731 lm!2671)) key!6540)))))

(declare-fun tail!9486 (List!55453) List!55453)

(assert (=> b!4839638 (containsKeyBiggerList!688 (tail!9486 (toList!7731 lm!2671)) key!6540)))

(declare-fun lt!1984215 () Unit!144943)

(declare-fun lemmaInBiggerListButNotHeadThenTail!48 (ListLongMap!6271 K!17079 Hashable!7404) Unit!144943)

(assert (=> b!4839638 (= lt!1984215 (lemmaInBiggerListButNotHeadThenTail!48 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4839639 () Bool)

(declare-fun res!2063005 () Bool)

(assert (=> b!4839639 (=> (not res!2063005) (not e!3024572))))

(assert (=> b!4839639 (= res!2063005 ((_ is Cons!55329) (toList!7731 lm!2671)))))

(declare-fun b!4839640 () Bool)

(assert (=> b!4839640 (= e!3024572 e!3024571)))

(declare-fun res!2063000 () Bool)

(assert (=> b!4839640 (=> (not res!2063000) (not e!3024571))))

(declare-fun lt!1984221 () ListMap!7085)

(declare-fun addToMapMapFromBucket!1902 (List!55452 ListMap!7085) ListMap!7085)

(assert (=> b!4839640 (= res!2063000 (= lt!1984221 (addToMapMapFromBucket!1902 (_2!32700 (h!61764 (toList!7731 lm!2671))) lt!1984217)))))

(assert (=> b!4839640 (= lt!1984221 (extractMap!2762 (toList!7731 lm!2671)))))

(assert (=> b!4839640 (= lt!1984217 (extractMap!2762 (t!362949 (toList!7731 lm!2671))))))

(assert (= (and start!503558 res!2063003) b!4839637))

(assert (= (and b!4839637 res!2063007) b!4839631))

(assert (= (and b!4839631 res!2063002) b!4839634))

(assert (= (and b!4839634 (not res!2063004)) b!4839636))

(assert (= (and b!4839634 res!2063008) b!4839639))

(assert (= (and b!4839639 res!2063005) b!4839640))

(assert (= (and b!4839640 res!2063000) b!4839638))

(assert (= (and b!4839638 (not res!2063006)) b!4839632))

(assert (= (and b!4839632 (not res!2063001)) b!4839633))

(assert (= start!503558 b!4839635))

(declare-fun m!5835382 () Bool)

(assert (=> start!503558 m!5835382))

(declare-fun m!5835384 () Bool)

(assert (=> start!503558 m!5835384))

(declare-fun m!5835386 () Bool)

(assert (=> b!4839632 m!5835386))

(declare-fun m!5835388 () Bool)

(assert (=> b!4839632 m!5835388))

(assert (=> b!4839632 m!5835386))

(declare-fun m!5835390 () Bool)

(assert (=> b!4839632 m!5835390))

(declare-fun m!5835392 () Bool)

(assert (=> b!4839632 m!5835392))

(declare-fun m!5835394 () Bool)

(assert (=> b!4839632 m!5835394))

(declare-fun m!5835396 () Bool)

(assert (=> b!4839640 m!5835396))

(declare-fun m!5835398 () Bool)

(assert (=> b!4839640 m!5835398))

(declare-fun m!5835400 () Bool)

(assert (=> b!4839640 m!5835400))

(declare-fun m!5835402 () Bool)

(assert (=> b!4839631 m!5835402))

(declare-fun m!5835404 () Bool)

(assert (=> b!4839637 m!5835404))

(declare-fun m!5835406 () Bool)

(assert (=> b!4839638 m!5835406))

(declare-fun m!5835408 () Bool)

(assert (=> b!4839638 m!5835408))

(assert (=> b!4839638 m!5835408))

(declare-fun m!5835410 () Bool)

(assert (=> b!4839638 m!5835410))

(declare-fun m!5835412 () Bool)

(assert (=> b!4839638 m!5835412))

(declare-fun m!5835414 () Bool)

(assert (=> b!4839633 m!5835414))

(declare-fun m!5835416 () Bool)

(assert (=> b!4839633 m!5835416))

(assert (=> b!4839633 m!5835414))

(declare-fun m!5835418 () Bool)

(assert (=> b!4839633 m!5835418))

(declare-fun m!5835420 () Bool)

(assert (=> b!4839633 m!5835420))

(declare-fun m!5835422 () Bool)

(assert (=> b!4839633 m!5835422))

(assert (=> b!4839633 m!5835382))

(declare-fun m!5835424 () Bool)

(assert (=> b!4839636 m!5835424))

(check-sat (not b!4839633) (not b!4839635) (not b!4839636) (not b!4839631) (not b!4839632) (not b!4839638) tp_is_empty!34911 (not b!4839637) (not b!4839640) (not start!503558))
(check-sat)
