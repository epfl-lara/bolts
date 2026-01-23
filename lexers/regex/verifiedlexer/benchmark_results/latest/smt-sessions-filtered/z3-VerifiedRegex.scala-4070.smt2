; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218452 () Bool)

(assert start!218452)

(declare-fun b!2242055 () Bool)

(declare-fun b_free!65137 () Bool)

(declare-fun b_next!65841 () Bool)

(assert (=> b!2242055 (= b_free!65137 (not b_next!65841))))

(declare-fun tp!707099 () Bool)

(declare-fun b_and!175165 () Bool)

(assert (=> b!2242055 (= tp!707099 b_and!175165)))

(declare-fun b!2242052 () Bool)

(declare-fun b_free!65139 () Bool)

(declare-fun b_next!65843 () Bool)

(assert (=> b!2242052 (= b_free!65139 (not b_next!65843))))

(declare-fun tp!707102 () Bool)

(declare-fun b_and!175167 () Bool)

(assert (=> b!2242052 (= tp!707102 b_and!175167)))

(declare-fun mapNonEmpty!14843 () Bool)

(declare-fun mapRes!14843 () Bool)

(declare-fun tp!707096 () Bool)

(declare-fun tp!707103 () Bool)

(assert (=> mapNonEmpty!14843 (= mapRes!14843 (and tp!707096 tp!707103))))

(declare-datatypes ((C!13208 0))(
  ( (C!13209 (val!7652 Int)) )
))
(declare-datatypes ((Regex!6531 0))(
  ( (ElementMatch!6531 (c!356950 C!13208)) (Concat!10869 (regOne!13574 Regex!6531) (regTwo!13574 Regex!6531)) (EmptyExpr!6531) (Star!6531 (reg!6860 Regex!6531)) (EmptyLang!6531) (Union!6531 (regOne!13575 Regex!6531) (regTwo!13575 Regex!6531)) )
))
(declare-datatypes ((List!26563 0))(
  ( (Nil!26469) (Cons!26469 (h!31870 Regex!6531) (t!200003 List!26563)) )
))
(declare-datatypes ((Context!4158 0))(
  ( (Context!4159 (exprs!2579 List!26563)) )
))
(declare-datatypes ((tuple2!25940 0))(
  ( (tuple2!25941 (_1!15480 Context!4158) (_2!15480 C!13208)) )
))
(declare-datatypes ((array!11100 0))(
  ( (array!11101 (arr!4925 (Array (_ BitVec 32) (_ BitVec 64))) (size!20706 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25942 0))(
  ( (tuple2!25943 (_1!15481 tuple2!25940) (_2!15481 (InoxSet Context!4158))) )
))
(declare-datatypes ((List!26564 0))(
  ( (Nil!26470) (Cons!26470 (h!31871 tuple2!25942) (t!200004 List!26564)) )
))
(declare-datatypes ((array!11102 0))(
  ( (array!11103 (arr!4926 (Array (_ BitVec 32) List!26564)) (size!20707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6338 0))(
  ( (LongMapFixedSize!6339 (defaultEntry!3534 Int) (mask!7788 (_ BitVec 32)) (extraKeys!3417 (_ BitVec 32)) (zeroValue!3427 List!26564) (minValue!3427 List!26564) (_size!6385 (_ BitVec 32)) (_keys!3466 array!11100) (_values!3449 array!11102) (_vacant!3230 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12493 0))(
  ( (Cell!12494 (v!30110 LongMapFixedSize!6338)) )
))
(declare-datatypes ((MutLongMap!3169 0))(
  ( (LongMap!3169 (underlying!6539 Cell!12493)) (MutLongMapExt!3168 (__x!17733 Int)) )
))
(declare-datatypes ((Cell!12495 0))(
  ( (Cell!12496 (v!30111 MutLongMap!3169)) )
))
(declare-datatypes ((Hashable!3079 0))(
  ( (HashableExt!3078 (__x!17734 Int)) )
))
(declare-datatypes ((MutableMap!3079 0))(
  ( (MutableMapExt!3078 (__x!17735 Int)) (HashMap!3079 (underlying!6540 Cell!12495) (hashF!5002 Hashable!3079) (_size!6386 (_ BitVec 32)) (defaultValue!3241 Int)) )
))
(declare-datatypes ((CacheUp!2028 0))(
  ( (CacheUp!2029 (cache!3460 MutableMap!3079)) )
))
(declare-fun thiss!28603 () CacheUp!2028)

(declare-fun mapValue!14843 () List!26564)

(declare-fun mapKey!14843 () (_ BitVec 32))

(declare-fun mapRest!14843 () (Array (_ BitVec 32) List!26564))

(assert (=> mapNonEmpty!14843 (= (arr!4926 (_values!3449 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) (store mapRest!14843 mapKey!14843 mapValue!14843))))

(declare-fun mapIsEmpty!14843 () Bool)

(assert (=> mapIsEmpty!14843 mapRes!14843))

(declare-fun b!2242049 () Bool)

(declare-fun e!1433812 () Bool)

(declare-fun tp!707100 () Bool)

(assert (=> b!2242049 (= e!1433812 tp!707100)))

(declare-fun b!2242050 () Bool)

(declare-fun e!1433805 () Bool)

(declare-fun e!1433806 () Bool)

(assert (=> b!2242050 (= e!1433805 e!1433806)))

(declare-fun b!2242051 () Bool)

(declare-fun e!1433811 () Bool)

(declare-fun e!1433814 () Bool)

(assert (=> b!2242051 (= e!1433811 e!1433814)))

(declare-fun tp!707097 () Bool)

(declare-fun e!1433808 () Bool)

(declare-fun tp!707098 () Bool)

(declare-fun array_inv!3539 (array!11100) Bool)

(declare-fun array_inv!3540 (array!11102) Bool)

(assert (=> b!2242052 (= e!1433814 (and tp!707102 tp!707098 tp!707097 (array_inv!3539 (_keys!3466 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) (array_inv!3540 (_values!3449 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) e!1433808))))

(declare-fun b!2242053 () Bool)

(declare-fun e!1433807 () Bool)

(declare-fun valid!2382 (MutableMap!3079) Bool)

(assert (=> b!2242053 (= e!1433807 (not (valid!2382 (cache!3460 thiss!28603))))))

(declare-fun res!958076 () Bool)

(assert (=> start!218452 (=> (not res!958076) (not e!1433807))))

(declare-fun validCacheMapUp!310 (MutableMap!3079) Bool)

(assert (=> start!218452 (= res!958076 (validCacheMapUp!310 (cache!3460 thiss!28603)))))

(assert (=> start!218452 e!1433807))

(declare-fun inv!35946 (CacheUp!2028) Bool)

(assert (=> start!218452 (and (inv!35946 thiss!28603) e!1433805)))

(declare-fun ctx!36 () Context!4158)

(declare-fun inv!35947 (Context!4158) Bool)

(assert (=> start!218452 (and (inv!35947 ctx!36) e!1433812)))

(declare-fun tp_is_empty!10283 () Bool)

(assert (=> start!218452 tp_is_empty!10283))

(declare-fun b!2242054 () Bool)

(declare-fun e!1433813 () Bool)

(declare-fun e!1433809 () Bool)

(declare-fun lt!834735 () MutLongMap!3169)

(get-info :version)

(assert (=> b!2242054 (= e!1433813 (and e!1433809 ((_ is LongMap!3169) lt!834735)))))

(assert (=> b!2242054 (= lt!834735 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))

(assert (=> b!2242055 (= e!1433806 (and e!1433813 tp!707099))))

(declare-fun b!2242056 () Bool)

(declare-fun res!958075 () Bool)

(assert (=> b!2242056 (=> (not res!958075) (not e!1433807))))

(declare-fun a!922 () C!13208)

(declare-fun contains!4523 (MutableMap!3079 tuple2!25940) Bool)

(assert (=> b!2242056 (= res!958075 (contains!4523 (cache!3460 thiss!28603) (tuple2!25941 ctx!36 a!922)))))

(declare-fun b!2242057 () Bool)

(assert (=> b!2242057 (= e!1433809 e!1433811)))

(declare-fun b!2242058 () Bool)

(declare-fun tp!707101 () Bool)

(assert (=> b!2242058 (= e!1433808 (and tp!707101 mapRes!14843))))

(declare-fun condMapEmpty!14843 () Bool)

(declare-fun mapDefault!14843 () List!26564)

(assert (=> b!2242058 (= condMapEmpty!14843 (= (arr!4926 (_values!3449 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26564)) mapDefault!14843)))))

(declare-fun b!2242059 () Bool)

(declare-fun res!958074 () Bool)

(assert (=> b!2242059 (=> (not res!958074) (not e!1433807))))

(assert (=> b!2242059 (= res!958074 ((_ is HashMap!3079) (cache!3460 thiss!28603)))))

(assert (= (and start!218452 res!958076) b!2242056))

(assert (= (and b!2242056 res!958075) b!2242059))

(assert (= (and b!2242059 res!958074) b!2242053))

(assert (= (and b!2242058 condMapEmpty!14843) mapIsEmpty!14843))

(assert (= (and b!2242058 (not condMapEmpty!14843)) mapNonEmpty!14843))

(assert (= b!2242052 b!2242058))

(assert (= b!2242051 b!2242052))

(assert (= b!2242057 b!2242051))

(assert (= (and b!2242054 ((_ is LongMap!3169) (v!30111 (underlying!6540 (cache!3460 thiss!28603))))) b!2242057))

(assert (= b!2242055 b!2242054))

(assert (= (and b!2242050 ((_ is HashMap!3079) (cache!3460 thiss!28603))) b!2242055))

(assert (= start!218452 b!2242050))

(assert (= start!218452 b!2242049))

(declare-fun m!2674247 () Bool)

(assert (=> start!218452 m!2674247))

(declare-fun m!2674249 () Bool)

(assert (=> start!218452 m!2674249))

(declare-fun m!2674251 () Bool)

(assert (=> start!218452 m!2674251))

(declare-fun m!2674253 () Bool)

(assert (=> mapNonEmpty!14843 m!2674253))

(declare-fun m!2674255 () Bool)

(assert (=> b!2242056 m!2674255))

(declare-fun m!2674257 () Bool)

(assert (=> b!2242052 m!2674257))

(declare-fun m!2674259 () Bool)

(assert (=> b!2242052 m!2674259))

(declare-fun m!2674261 () Bool)

(assert (=> b!2242053 m!2674261))

(check-sat b_and!175167 (not start!218452) (not b!2242049) (not b!2242058) (not b!2242053) (not b_next!65841) tp_is_empty!10283 (not b_next!65843) (not b!2242056) (not b!2242052) b_and!175165 (not mapNonEmpty!14843))
(check-sat b_and!175165 b_and!175167 (not b_next!65843) (not b_next!65841))
(get-model)

(declare-fun d!665885 () Bool)

(declare-fun res!958081 () Bool)

(declare-fun e!1433817 () Bool)

(assert (=> d!665885 (=> (not res!958081) (not e!1433817))))

(declare-fun valid!2383 (MutLongMap!3169) Bool)

(assert (=> d!665885 (= res!958081 (valid!2383 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))

(assert (=> d!665885 (= (valid!2382 (cache!3460 thiss!28603)) e!1433817)))

(declare-fun b!2242064 () Bool)

(declare-fun res!958082 () Bool)

(assert (=> b!2242064 (=> (not res!958082) (not e!1433817))))

(declare-fun lambda!84876 () Int)

(declare-datatypes ((tuple2!25944 0))(
  ( (tuple2!25945 (_1!15482 (_ BitVec 64)) (_2!15482 List!26564)) )
))
(declare-datatypes ((List!26565 0))(
  ( (Nil!26471) (Cons!26471 (h!31872 tuple2!25944) (t!200005 List!26565)) )
))
(declare-fun forall!5457 (List!26565 Int) Bool)

(declare-datatypes ((ListLongMap!369 0))(
  ( (ListLongMap!370 (toList!1401 List!26565)) )
))
(declare-fun map!5488 (MutLongMap!3169) ListLongMap!369)

(assert (=> b!2242064 (= res!958082 (forall!5457 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))) lambda!84876))))

(declare-fun b!2242065 () Bool)

(declare-fun allKeysSameHashInMap!118 (ListLongMap!369 Hashable!3079) Bool)

(assert (=> b!2242065 (= e!1433817 (allKeysSameHashInMap!118 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))) (hashF!5002 (cache!3460 thiss!28603))))))

(assert (= (and d!665885 res!958081) b!2242064))

(assert (= (and b!2242064 res!958082) b!2242065))

(declare-fun m!2674263 () Bool)

(assert (=> d!665885 m!2674263))

(declare-fun m!2674265 () Bool)

(assert (=> b!2242064 m!2674265))

(declare-fun m!2674267 () Bool)

(assert (=> b!2242064 m!2674267))

(assert (=> b!2242065 m!2674265))

(assert (=> b!2242065 m!2674265))

(declare-fun m!2674269 () Bool)

(assert (=> b!2242065 m!2674269))

(assert (=> b!2242053 d!665885))

(declare-fun d!665887 () Bool)

(assert (=> d!665887 (= (array_inv!3539 (_keys!3466 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) (bvsge (size!20706 (_keys!3466 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2242052 d!665887))

(declare-fun d!665889 () Bool)

(assert (=> d!665889 (= (array_inv!3540 (_values!3449 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) (bvsge (size!20707 (_values!3449 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2242052 d!665889))

(declare-fun d!665891 () Bool)

(declare-fun res!958087 () Bool)

(declare-fun e!1433820 () Bool)

(assert (=> d!665891 (=> (not res!958087) (not e!1433820))))

(assert (=> d!665891 (= res!958087 (valid!2382 (cache!3460 thiss!28603)))))

(assert (=> d!665891 (= (validCacheMapUp!310 (cache!3460 thiss!28603)) e!1433820)))

(declare-fun b!2242070 () Bool)

(declare-fun res!958088 () Bool)

(assert (=> b!2242070 (=> (not res!958088) (not e!1433820))))

(declare-fun invariantList!395 (List!26564) Bool)

(declare-datatypes ((ListMap!887 0))(
  ( (ListMap!888 (toList!1402 List!26564)) )
))
(declare-fun map!5489 (MutableMap!3079) ListMap!887)

(assert (=> b!2242070 (= res!958088 (invariantList!395 (toList!1402 (map!5489 (cache!3460 thiss!28603)))))))

(declare-fun b!2242071 () Bool)

(declare-fun lambda!84879 () Int)

(declare-fun forall!5458 (List!26564 Int) Bool)

(assert (=> b!2242071 (= e!1433820 (forall!5458 (toList!1402 (map!5489 (cache!3460 thiss!28603))) lambda!84879))))

(assert (= (and d!665891 res!958087) b!2242070))

(assert (= (and b!2242070 res!958088) b!2242071))

(assert (=> d!665891 m!2674261))

(declare-fun m!2674272 () Bool)

(assert (=> b!2242070 m!2674272))

(declare-fun m!2674274 () Bool)

(assert (=> b!2242070 m!2674274))

(assert (=> b!2242071 m!2674272))

(declare-fun m!2674276 () Bool)

(assert (=> b!2242071 m!2674276))

(assert (=> start!218452 d!665891))

(declare-fun d!665893 () Bool)

(declare-fun res!958091 () Bool)

(declare-fun e!1433823 () Bool)

(assert (=> d!665893 (=> (not res!958091) (not e!1433823))))

(assert (=> d!665893 (= res!958091 ((_ is HashMap!3079) (cache!3460 thiss!28603)))))

(assert (=> d!665893 (= (inv!35946 thiss!28603) e!1433823)))

(declare-fun b!2242074 () Bool)

(assert (=> b!2242074 (= e!1433823 (validCacheMapUp!310 (cache!3460 thiss!28603)))))

(assert (= (and d!665893 res!958091) b!2242074))

(assert (=> b!2242074 m!2674247))

(assert (=> start!218452 d!665893))

(declare-fun d!665895 () Bool)

(declare-fun lambda!84882 () Int)

(declare-fun forall!5459 (List!26563 Int) Bool)

(assert (=> d!665895 (= (inv!35947 ctx!36) (forall!5459 (exprs!2579 ctx!36) lambda!84882))))

(declare-fun bs!454351 () Bool)

(assert (= bs!454351 d!665895))

(declare-fun m!2674278 () Bool)

(assert (=> bs!454351 m!2674278))

(assert (=> start!218452 d!665895))

(declare-fun bs!454352 () Bool)

(declare-fun b!2242101 () Bool)

(assert (= bs!454352 (and b!2242101 b!2242064)))

(declare-fun lambda!84885 () Int)

(assert (=> bs!454352 (= lambda!84885 lambda!84876)))

(declare-fun d!665897 () Bool)

(declare-fun lt!834795 () Bool)

(declare-fun contains!4524 (ListMap!887 tuple2!25940) Bool)

(assert (=> d!665897 (= lt!834795 (contains!4524 (map!5489 (cache!3460 thiss!28603)) (tuple2!25941 ctx!36 a!922)))))

(declare-fun e!1433842 () Bool)

(assert (=> d!665897 (= lt!834795 e!1433842)))

(declare-fun res!958099 () Bool)

(assert (=> d!665897 (=> (not res!958099) (not e!1433842))))

(declare-fun lt!834794 () (_ BitVec 64))

(declare-fun contains!4525 (MutLongMap!3169 (_ BitVec 64)) Bool)

(assert (=> d!665897 (= res!958099 (contains!4525 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794))))

(declare-datatypes ((Unit!39460 0))(
  ( (Unit!39461) )
))
(declare-fun lt!834785 () Unit!39460)

(declare-fun e!1433841 () Unit!39460)

(assert (=> d!665897 (= lt!834785 e!1433841)))

(declare-fun c!356959 () Bool)

(declare-fun extractMap!129 (List!26565) ListMap!887)

(assert (=> d!665897 (= c!356959 (contains!4524 (extractMap!129 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))) (tuple2!25941 ctx!36 a!922)))))

(declare-fun lt!834791 () Unit!39460)

(declare-fun e!1433838 () Unit!39460)

(assert (=> d!665897 (= lt!834791 e!1433838)))

(declare-fun c!356961 () Bool)

(assert (=> d!665897 (= c!356961 (contains!4525 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794))))

(declare-fun hash!596 (Hashable!3079 tuple2!25940) (_ BitVec 64))

(assert (=> d!665897 (= lt!834794 (hash!596 (hashF!5002 (cache!3460 thiss!28603)) (tuple2!25941 ctx!36 a!922)))))

(assert (=> d!665897 (valid!2382 (cache!3460 thiss!28603))))

(assert (=> d!665897 (= (contains!4523 (cache!3460 thiss!28603) (tuple2!25941 ctx!36 a!922)) lt!834795)))

(declare-fun bm!135356 () Bool)

(declare-fun call!135362 () ListLongMap!369)

(assert (=> bm!135356 (= call!135362 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))

(declare-fun b!2242097 () Bool)

(declare-fun e!1433843 () Unit!39460)

(declare-fun Unit!39462 () Unit!39460)

(assert (=> b!2242097 (= e!1433843 Unit!39462)))

(declare-fun b!2242098 () Bool)

(declare-fun Unit!39463 () Unit!39460)

(assert (=> b!2242098 (= e!1433838 Unit!39463)))

(declare-fun call!135365 () (_ BitVec 64))

(declare-fun bm!135357 () Bool)

(declare-fun call!135361 () List!26564)

(declare-fun lt!834782 () ListLongMap!369)

(declare-fun apply!6538 (ListLongMap!369 (_ BitVec 64)) List!26564)

(assert (=> bm!135357 (= call!135361 (apply!6538 (ite c!356959 lt!834782 call!135362) call!135365))))

(declare-fun bm!135358 () Bool)

(declare-fun call!135363 () Bool)

(declare-datatypes ((Option!5175 0))(
  ( (None!5174) (Some!5174 (v!30112 tuple2!25942)) )
))
(declare-fun call!135364 () Option!5175)

(declare-fun isDefined!4177 (Option!5175) Bool)

(assert (=> bm!135358 (= call!135363 (isDefined!4177 call!135364))))

(declare-fun bm!135359 () Bool)

(assert (=> bm!135359 (= call!135365 (hash!596 (hashF!5002 (cache!3460 thiss!28603)) (tuple2!25941 ctx!36 a!922)))))

(declare-fun b!2242099 () Bool)

(assert (=> b!2242099 false))

(declare-fun lt!834788 () Unit!39460)

(declare-fun lt!834780 () Unit!39460)

(assert (=> b!2242099 (= lt!834788 lt!834780)))

(declare-fun lt!834783 () ListLongMap!369)

(assert (=> b!2242099 (contains!4524 (extractMap!129 (toList!1401 lt!834783)) (tuple2!25941 ctx!36 a!922))))

(declare-fun lemmaInLongMapThenInGenericMap!49 (ListLongMap!369 tuple2!25940 Hashable!3079) Unit!39460)

(assert (=> b!2242099 (= lt!834780 (lemmaInLongMapThenInGenericMap!49 lt!834783 (tuple2!25941 ctx!36 a!922) (hashF!5002 (cache!3460 thiss!28603))))))

(assert (=> b!2242099 (= lt!834783 call!135362)))

(declare-fun Unit!39464 () Unit!39460)

(assert (=> b!2242099 (= e!1433843 Unit!39464)))

(declare-fun b!2242100 () Bool)

(assert (=> b!2242100 false))

(declare-fun lt!834790 () Unit!39460)

(declare-fun lt!834792 () Unit!39460)

(assert (=> b!2242100 (= lt!834790 lt!834792)))

(declare-fun lt!834786 () List!26565)

(declare-fun lt!834784 () List!26564)

(declare-fun contains!4526 (List!26565 tuple2!25944) Bool)

(assert (=> b!2242100 (contains!4526 lt!834786 (tuple2!25945 lt!834794 lt!834784))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!50 (List!26565 (_ BitVec 64) List!26564) Unit!39460)

(assert (=> b!2242100 (= lt!834792 (lemmaGetValueByKeyImpliesContainsTuple!50 lt!834786 lt!834794 lt!834784))))

(declare-fun apply!6539 (MutLongMap!3169 (_ BitVec 64)) List!26564)

(assert (=> b!2242100 (= lt!834784 (apply!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794))))

(assert (=> b!2242100 (= lt!834786 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))))

(declare-fun lt!834793 () Unit!39460)

(declare-fun lt!834778 () Unit!39460)

(assert (=> b!2242100 (= lt!834793 lt!834778)))

(declare-fun lt!834789 () List!26565)

(declare-datatypes ((Option!5176 0))(
  ( (None!5175) (Some!5175 (v!30113 List!26564)) )
))
(declare-fun isDefined!4178 (Option!5176) Bool)

(declare-fun getValueByKey!103 (List!26565 (_ BitVec 64)) Option!5176)

(assert (=> b!2242100 (isDefined!4178 (getValueByKey!103 lt!834789 lt!834794))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!67 (List!26565 (_ BitVec 64)) Unit!39460)

(assert (=> b!2242100 (= lt!834778 (lemmaContainsKeyImpliesGetValueByKeyDefined!67 lt!834789 lt!834794))))

(assert (=> b!2242100 (= lt!834789 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))))

(declare-fun lt!834777 () Unit!39460)

(declare-fun lt!834776 () Unit!39460)

(assert (=> b!2242100 (= lt!834777 lt!834776)))

(declare-fun lt!834779 () List!26565)

(declare-fun containsKey!98 (List!26565 (_ BitVec 64)) Bool)

(assert (=> b!2242100 (containsKey!98 lt!834779 lt!834794)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!50 (List!26565 (_ BitVec 64)) Unit!39460)

(assert (=> b!2242100 (= lt!834776 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!50 lt!834779 lt!834794))))

(assert (=> b!2242100 (= lt!834779 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))))))

(declare-fun e!1433840 () Unit!39460)

(declare-fun Unit!39465 () Unit!39460)

(assert (=> b!2242100 (= e!1433840 Unit!39465)))

(declare-fun bm!135360 () Bool)

(declare-fun getPair!49 (List!26564 tuple2!25940) Option!5175)

(assert (=> bm!135360 (= call!135364 (getPair!49 call!135361 (tuple2!25941 ctx!36 a!922)))))

(declare-fun forallContained!796 (List!26565 Int tuple2!25944) Unit!39460)

(assert (=> b!2242101 (= e!1433838 (forallContained!796 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))) lambda!84885 (tuple2!25945 lt!834794 (apply!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794))))))

(declare-fun c!356962 () Bool)

(assert (=> b!2242101 (= c!356962 (not (contains!4526 (toList!1401 (map!5488 (v!30111 (underlying!6540 (cache!3460 thiss!28603))))) (tuple2!25945 lt!834794 (apply!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794)))))))

(declare-fun lt!834781 () Unit!39460)

(assert (=> b!2242101 (= lt!834781 e!1433840)))

(declare-fun b!2242102 () Bool)

(assert (=> b!2242102 (= e!1433841 e!1433843)))

(declare-fun res!958100 () Bool)

(declare-fun call!135366 () Bool)

(assert (=> b!2242102 (= res!958100 call!135366)))

(declare-fun e!1433844 () Bool)

(assert (=> b!2242102 (=> (not res!958100) (not e!1433844))))

(declare-fun c!356960 () Bool)

(assert (=> b!2242102 (= c!356960 e!1433844)))

(declare-fun b!2242103 () Bool)

(assert (=> b!2242103 (= e!1433844 call!135363)))

(declare-fun bm!135361 () Bool)

(declare-fun contains!4527 (ListLongMap!369 (_ BitVec 64)) Bool)

(assert (=> bm!135361 (= call!135366 (contains!4527 (ite c!356959 lt!834782 call!135362) call!135365))))

(declare-fun b!2242104 () Bool)

(assert (=> b!2242104 (= e!1433842 (isDefined!4177 (getPair!49 (apply!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603))) lt!834794) (tuple2!25941 ctx!36 a!922))))))

(declare-fun b!2242105 () Bool)

(declare-fun Unit!39466 () Unit!39460)

(assert (=> b!2242105 (= e!1433840 Unit!39466)))

(declare-fun b!2242106 () Bool)

(declare-fun lt!834787 () Unit!39460)

(assert (=> b!2242106 (= e!1433841 lt!834787)))

(assert (=> b!2242106 (= lt!834782 call!135362)))

(declare-fun lemmaInGenericMapThenInLongMap!49 (ListLongMap!369 tuple2!25940 Hashable!3079) Unit!39460)

(assert (=> b!2242106 (= lt!834787 (lemmaInGenericMapThenInLongMap!49 lt!834782 (tuple2!25941 ctx!36 a!922) (hashF!5002 (cache!3460 thiss!28603))))))

(declare-fun res!958098 () Bool)

(assert (=> b!2242106 (= res!958098 call!135366)))

(declare-fun e!1433839 () Bool)

(assert (=> b!2242106 (=> (not res!958098) (not e!1433839))))

(assert (=> b!2242106 e!1433839))

(declare-fun b!2242107 () Bool)

(assert (=> b!2242107 (= e!1433839 call!135363)))

(assert (= (and d!665897 c!356961) b!2242101))

(assert (= (and d!665897 (not c!356961)) b!2242098))

(assert (= (and b!2242101 c!356962) b!2242100))

(assert (= (and b!2242101 (not c!356962)) b!2242105))

(assert (= (and d!665897 c!356959) b!2242106))

(assert (= (and d!665897 (not c!356959)) b!2242102))

(assert (= (and b!2242106 res!958098) b!2242107))

(assert (= (and b!2242102 res!958100) b!2242103))

(assert (= (and b!2242102 c!356960) b!2242099))

(assert (= (and b!2242102 (not c!356960)) b!2242097))

(assert (= (or b!2242106 b!2242107 b!2242102 b!2242103) bm!135359))

(assert (= (or b!2242106 b!2242102 b!2242103 b!2242099) bm!135356))

(assert (= (or b!2242106 b!2242102) bm!135361))

(assert (= (or b!2242107 b!2242103) bm!135357))

(assert (= (or b!2242107 b!2242103) bm!135360))

(assert (= (or b!2242107 b!2242103) bm!135358))

(assert (= (and d!665897 res!958099) b!2242104))

(declare-fun m!2674280 () Bool)

(assert (=> d!665897 m!2674280))

(assert (=> d!665897 m!2674272))

(declare-fun m!2674282 () Bool)

(assert (=> d!665897 m!2674282))

(declare-fun m!2674284 () Bool)

(assert (=> d!665897 m!2674284))

(assert (=> d!665897 m!2674272))

(assert (=> d!665897 m!2674261))

(assert (=> d!665897 m!2674265))

(declare-fun m!2674286 () Bool)

(assert (=> d!665897 m!2674286))

(assert (=> d!665897 m!2674280))

(declare-fun m!2674288 () Bool)

(assert (=> d!665897 m!2674288))

(declare-fun m!2674290 () Bool)

(assert (=> bm!135358 m!2674290))

(declare-fun m!2674292 () Bool)

(assert (=> bm!135360 m!2674292))

(declare-fun m!2674294 () Bool)

(assert (=> b!2242106 m!2674294))

(assert (=> b!2242101 m!2674265))

(declare-fun m!2674296 () Bool)

(assert (=> b!2242101 m!2674296))

(declare-fun m!2674298 () Bool)

(assert (=> b!2242101 m!2674298))

(declare-fun m!2674300 () Bool)

(assert (=> b!2242101 m!2674300))

(assert (=> bm!135356 m!2674265))

(assert (=> bm!135359 m!2674284))

(declare-fun m!2674302 () Bool)

(assert (=> b!2242100 m!2674302))

(declare-fun m!2674304 () Bool)

(assert (=> b!2242100 m!2674304))

(declare-fun m!2674306 () Bool)

(assert (=> b!2242100 m!2674306))

(declare-fun m!2674308 () Bool)

(assert (=> b!2242100 m!2674308))

(declare-fun m!2674310 () Bool)

(assert (=> b!2242100 m!2674310))

(assert (=> b!2242100 m!2674296))

(declare-fun m!2674312 () Bool)

(assert (=> b!2242100 m!2674312))

(declare-fun m!2674314 () Bool)

(assert (=> b!2242100 m!2674314))

(assert (=> b!2242100 m!2674265))

(assert (=> b!2242100 m!2674306))

(declare-fun m!2674316 () Bool)

(assert (=> b!2242099 m!2674316))

(assert (=> b!2242099 m!2674316))

(declare-fun m!2674318 () Bool)

(assert (=> b!2242099 m!2674318))

(declare-fun m!2674320 () Bool)

(assert (=> b!2242099 m!2674320))

(assert (=> b!2242104 m!2674296))

(assert (=> b!2242104 m!2674296))

(declare-fun m!2674322 () Bool)

(assert (=> b!2242104 m!2674322))

(assert (=> b!2242104 m!2674322))

(declare-fun m!2674324 () Bool)

(assert (=> b!2242104 m!2674324))

(declare-fun m!2674326 () Bool)

(assert (=> bm!135361 m!2674326))

(declare-fun m!2674328 () Bool)

(assert (=> bm!135357 m!2674328))

(assert (=> b!2242056 d!665897))

(declare-fun b!2242122 () Bool)

(declare-fun tp!707122 () Bool)

(declare-fun e!1433860 () Bool)

(declare-fun mapValue!14846 () List!26564)

(declare-fun setRes!20665 () Bool)

(declare-fun e!1433862 () Bool)

(assert (=> b!2242122 (= e!1433860 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 mapValue!14846)))) e!1433862 tp_is_empty!10283 setRes!20665 tp!707122))))

(declare-fun condSetEmpty!20665 () Bool)

(assert (=> b!2242122 (= condSetEmpty!20665 (= (_2!15481 (h!31871 mapValue!14846)) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun setIsEmpty!20664 () Bool)

(assert (=> setIsEmpty!20664 setRes!20665))

(declare-fun b!2242123 () Bool)

(declare-fun e!1433861 () Bool)

(declare-fun tp!707130 () Bool)

(assert (=> b!2242123 (= e!1433861 tp!707130)))

(declare-fun mapNonEmpty!14846 () Bool)

(declare-fun mapRes!14846 () Bool)

(declare-fun tp!707127 () Bool)

(assert (=> mapNonEmpty!14846 (= mapRes!14846 (and tp!707127 e!1433860))))

(declare-fun mapRest!14846 () (Array (_ BitVec 32) List!26564))

(declare-fun mapKey!14846 () (_ BitVec 32))

(assert (=> mapNonEmpty!14846 (= mapRest!14843 (store mapRest!14846 mapKey!14846 mapValue!14846))))

(declare-fun b!2242124 () Bool)

(declare-fun tp!707124 () Bool)

(assert (=> b!2242124 (= e!1433862 tp!707124)))

(declare-fun setElem!20664 () Context!4158)

(declare-fun tp!707128 () Bool)

(declare-fun setNonEmpty!20664 () Bool)

(assert (=> setNonEmpty!20664 (= setRes!20665 (and tp!707128 (inv!35947 setElem!20664) e!1433861))))

(declare-fun setRest!20664 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20664 (= (_2!15481 (h!31871 mapValue!14846)) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20664 true) setRest!20664))))

(declare-fun b!2242125 () Bool)

(declare-fun e!1433859 () Bool)

(declare-fun tp!707123 () Bool)

(assert (=> b!2242125 (= e!1433859 tp!707123)))

(declare-fun b!2242126 () Bool)

(declare-fun setRes!20664 () Bool)

(declare-fun e!1433857 () Bool)

(declare-fun mapDefault!14846 () List!26564)

(declare-fun e!1433858 () Bool)

(declare-fun tp!707126 () Bool)

(assert (=> b!2242126 (= e!1433857 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 mapDefault!14846)))) e!1433858 tp_is_empty!10283 setRes!20664 tp!707126))))

(declare-fun condSetEmpty!20664 () Bool)

(assert (=> b!2242126 (= condSetEmpty!20664 (= (_2!15481 (h!31871 mapDefault!14846)) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun b!2242127 () Bool)

(declare-fun tp!707125 () Bool)

(assert (=> b!2242127 (= e!1433858 tp!707125)))

(declare-fun condMapEmpty!14846 () Bool)

(assert (=> mapNonEmpty!14843 (= condMapEmpty!14846 (= mapRest!14843 ((as const (Array (_ BitVec 32) List!26564)) mapDefault!14846)))))

(assert (=> mapNonEmpty!14843 (= tp!707096 (and e!1433857 mapRes!14846))))

(declare-fun setNonEmpty!20665 () Bool)

(declare-fun setElem!20665 () Context!4158)

(declare-fun tp!707129 () Bool)

(assert (=> setNonEmpty!20665 (= setRes!20664 (and tp!707129 (inv!35947 setElem!20665) e!1433859))))

(declare-fun setRest!20665 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20665 (= (_2!15481 (h!31871 mapDefault!14846)) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20665 true) setRest!20665))))

(declare-fun mapIsEmpty!14846 () Bool)

(assert (=> mapIsEmpty!14846 mapRes!14846))

(declare-fun setIsEmpty!20665 () Bool)

(assert (=> setIsEmpty!20665 setRes!20664))

(assert (= (and mapNonEmpty!14843 condMapEmpty!14846) mapIsEmpty!14846))

(assert (= (and mapNonEmpty!14843 (not condMapEmpty!14846)) mapNonEmpty!14846))

(assert (= b!2242122 b!2242124))

(assert (= (and b!2242122 condSetEmpty!20665) setIsEmpty!20664))

(assert (= (and b!2242122 (not condSetEmpty!20665)) setNonEmpty!20664))

(assert (= setNonEmpty!20664 b!2242123))

(assert (= (and mapNonEmpty!14846 ((_ is Cons!26470) mapValue!14846)) b!2242122))

(assert (= b!2242126 b!2242127))

(assert (= (and b!2242126 condSetEmpty!20664) setIsEmpty!20665))

(assert (= (and b!2242126 (not condSetEmpty!20664)) setNonEmpty!20665))

(assert (= setNonEmpty!20665 b!2242125))

(assert (= (and mapNonEmpty!14843 ((_ is Cons!26470) mapDefault!14846)) b!2242126))

(declare-fun m!2674330 () Bool)

(assert (=> mapNonEmpty!14846 m!2674330))

(declare-fun m!2674332 () Bool)

(assert (=> setNonEmpty!20665 m!2674332))

(declare-fun m!2674334 () Bool)

(assert (=> setNonEmpty!20664 m!2674334))

(declare-fun m!2674336 () Bool)

(assert (=> b!2242126 m!2674336))

(declare-fun m!2674338 () Bool)

(assert (=> b!2242122 m!2674338))

(declare-fun b!2242136 () Bool)

(declare-fun e!1433871 () Bool)

(declare-fun tp!707140 () Bool)

(assert (=> b!2242136 (= e!1433871 tp!707140)))

(declare-fun e!1433870 () Bool)

(assert (=> mapNonEmpty!14843 (= tp!707103 e!1433870)))

(declare-fun setElem!20668 () Context!4158)

(declare-fun setRes!20668 () Bool)

(declare-fun tp!707142 () Bool)

(declare-fun setNonEmpty!20668 () Bool)

(assert (=> setNonEmpty!20668 (= setRes!20668 (and tp!707142 (inv!35947 setElem!20668) e!1433871))))

(declare-fun setRest!20668 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20668 (= (_2!15481 (h!31871 mapValue!14843)) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20668 true) setRest!20668))))

(declare-fun b!2242137 () Bool)

(declare-fun e!1433869 () Bool)

(declare-fun tp!707139 () Bool)

(assert (=> b!2242137 (= e!1433869 tp!707139)))

(declare-fun tp!707141 () Bool)

(declare-fun b!2242138 () Bool)

(assert (=> b!2242138 (= e!1433870 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 mapValue!14843)))) e!1433869 tp_is_empty!10283 setRes!20668 tp!707141))))

(declare-fun condSetEmpty!20668 () Bool)

(assert (=> b!2242138 (= condSetEmpty!20668 (= (_2!15481 (h!31871 mapValue!14843)) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun setIsEmpty!20668 () Bool)

(assert (=> setIsEmpty!20668 setRes!20668))

(assert (= b!2242138 b!2242137))

(assert (= (and b!2242138 condSetEmpty!20668) setIsEmpty!20668))

(assert (= (and b!2242138 (not condSetEmpty!20668)) setNonEmpty!20668))

(assert (= setNonEmpty!20668 b!2242136))

(assert (= (and mapNonEmpty!14843 ((_ is Cons!26470) mapValue!14843)) b!2242138))

(declare-fun m!2674340 () Bool)

(assert (=> setNonEmpty!20668 m!2674340))

(declare-fun m!2674342 () Bool)

(assert (=> b!2242138 m!2674342))

(declare-fun b!2242139 () Bool)

(declare-fun e!1433874 () Bool)

(declare-fun tp!707144 () Bool)

(assert (=> b!2242139 (= e!1433874 tp!707144)))

(declare-fun e!1433873 () Bool)

(assert (=> b!2242058 (= tp!707101 e!1433873)))

(declare-fun setElem!20669 () Context!4158)

(declare-fun setNonEmpty!20669 () Bool)

(declare-fun tp!707146 () Bool)

(declare-fun setRes!20669 () Bool)

(assert (=> setNonEmpty!20669 (= setRes!20669 (and tp!707146 (inv!35947 setElem!20669) e!1433874))))

(declare-fun setRest!20669 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20669 (= (_2!15481 (h!31871 mapDefault!14843)) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20669 true) setRest!20669))))

(declare-fun b!2242140 () Bool)

(declare-fun e!1433872 () Bool)

(declare-fun tp!707143 () Bool)

(assert (=> b!2242140 (= e!1433872 tp!707143)))

(declare-fun b!2242141 () Bool)

(declare-fun tp!707145 () Bool)

(assert (=> b!2242141 (= e!1433873 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 mapDefault!14843)))) e!1433872 tp_is_empty!10283 setRes!20669 tp!707145))))

(declare-fun condSetEmpty!20669 () Bool)

(assert (=> b!2242141 (= condSetEmpty!20669 (= (_2!15481 (h!31871 mapDefault!14843)) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun setIsEmpty!20669 () Bool)

(assert (=> setIsEmpty!20669 setRes!20669))

(assert (= b!2242141 b!2242140))

(assert (= (and b!2242141 condSetEmpty!20669) setIsEmpty!20669))

(assert (= (and b!2242141 (not condSetEmpty!20669)) setNonEmpty!20669))

(assert (= setNonEmpty!20669 b!2242139))

(assert (= (and b!2242058 ((_ is Cons!26470) mapDefault!14843)) b!2242141))

(declare-fun m!2674344 () Bool)

(assert (=> setNonEmpty!20669 m!2674344))

(declare-fun m!2674346 () Bool)

(assert (=> b!2242141 m!2674346))

(declare-fun b!2242142 () Bool)

(declare-fun e!1433877 () Bool)

(declare-fun tp!707148 () Bool)

(assert (=> b!2242142 (= e!1433877 tp!707148)))

(declare-fun e!1433876 () Bool)

(assert (=> b!2242052 (= tp!707098 e!1433876)))

(declare-fun setNonEmpty!20670 () Bool)

(declare-fun setElem!20670 () Context!4158)

(declare-fun tp!707150 () Bool)

(declare-fun setRes!20670 () Bool)

(assert (=> setNonEmpty!20670 (= setRes!20670 (and tp!707150 (inv!35947 setElem!20670) e!1433877))))

(declare-fun setRest!20670 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20670 (= (_2!15481 (h!31871 (zeroValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20670 true) setRest!20670))))

(declare-fun b!2242143 () Bool)

(declare-fun e!1433875 () Bool)

(declare-fun tp!707147 () Bool)

(assert (=> b!2242143 (= e!1433875 tp!707147)))

(declare-fun tp!707149 () Bool)

(declare-fun b!2242144 () Bool)

(assert (=> b!2242144 (= e!1433876 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 (zeroValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))))) e!1433875 tp_is_empty!10283 setRes!20670 tp!707149))))

(declare-fun condSetEmpty!20670 () Bool)

(assert (=> b!2242144 (= condSetEmpty!20670 (= (_2!15481 (h!31871 (zeroValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun setIsEmpty!20670 () Bool)

(assert (=> setIsEmpty!20670 setRes!20670))

(assert (= b!2242144 b!2242143))

(assert (= (and b!2242144 condSetEmpty!20670) setIsEmpty!20670))

(assert (= (and b!2242144 (not condSetEmpty!20670)) setNonEmpty!20670))

(assert (= setNonEmpty!20670 b!2242142))

(assert (= (and b!2242052 ((_ is Cons!26470) (zeroValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) b!2242144))

(declare-fun m!2674348 () Bool)

(assert (=> setNonEmpty!20670 m!2674348))

(declare-fun m!2674350 () Bool)

(assert (=> b!2242144 m!2674350))

(declare-fun b!2242145 () Bool)

(declare-fun e!1433880 () Bool)

(declare-fun tp!707152 () Bool)

(assert (=> b!2242145 (= e!1433880 tp!707152)))

(declare-fun e!1433879 () Bool)

(assert (=> b!2242052 (= tp!707097 e!1433879)))

(declare-fun setElem!20671 () Context!4158)

(declare-fun setNonEmpty!20671 () Bool)

(declare-fun tp!707154 () Bool)

(declare-fun setRes!20671 () Bool)

(assert (=> setNonEmpty!20671 (= setRes!20671 (and tp!707154 (inv!35947 setElem!20671) e!1433880))))

(declare-fun setRest!20671 () (InoxSet Context!4158))

(assert (=> setNonEmpty!20671 (= (_2!15481 (h!31871 (minValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4158 Bool)) false) setElem!20671 true) setRest!20671))))

(declare-fun b!2242146 () Bool)

(declare-fun e!1433878 () Bool)

(declare-fun tp!707151 () Bool)

(assert (=> b!2242146 (= e!1433878 tp!707151)))

(declare-fun b!2242147 () Bool)

(declare-fun tp!707153 () Bool)

(assert (=> b!2242147 (= e!1433879 (and (inv!35947 (_1!15480 (_1!15481 (h!31871 (minValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))))) e!1433878 tp_is_empty!10283 setRes!20671 tp!707153))))

(declare-fun condSetEmpty!20671 () Bool)

(assert (=> b!2242147 (= condSetEmpty!20671 (= (_2!15481 (h!31871 (minValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) ((as const (Array Context!4158 Bool)) false)))))

(declare-fun setIsEmpty!20671 () Bool)

(assert (=> setIsEmpty!20671 setRes!20671))

(assert (= b!2242147 b!2242146))

(assert (= (and b!2242147 condSetEmpty!20671) setIsEmpty!20671))

(assert (= (and b!2242147 (not condSetEmpty!20671)) setNonEmpty!20671))

(assert (= setNonEmpty!20671 b!2242145))

(assert (= (and b!2242052 ((_ is Cons!26470) (minValue!3427 (v!30110 (underlying!6539 (v!30111 (underlying!6540 (cache!3460 thiss!28603)))))))) b!2242147))

(declare-fun m!2674352 () Bool)

(assert (=> setNonEmpty!20671 m!2674352))

(declare-fun m!2674354 () Bool)

(assert (=> b!2242147 m!2674354))

(declare-fun b!2242152 () Bool)

(declare-fun e!1433883 () Bool)

(declare-fun tp!707159 () Bool)

(declare-fun tp!707160 () Bool)

(assert (=> b!2242152 (= e!1433883 (and tp!707159 tp!707160))))

(assert (=> b!2242049 (= tp!707100 e!1433883)))

(assert (= (and b!2242049 ((_ is Cons!26469) (exprs!2579 ctx!36))) b!2242152))

(check-sat (not b!2242145) (not b!2242070) (not b!2242104) (not b!2242127) (not d!665895) (not bm!135357) (not b_next!65841) (not b!2242099) (not b!2242074) (not b!2242101) (not setNonEmpty!20668) (not b!2242124) (not b!2242139) (not setNonEmpty!20670) (not b!2242071) b_and!175167 (not bm!135361) (not setNonEmpty!20669) (not b!2242152) tp_is_empty!10283 (not b_next!65843) (not b!2242136) (not setNonEmpty!20664) (not b!2242144) (not b!2242122) (not b!2242143) (not b!2242140) (not b!2242137) b_and!175165 (not bm!135358) (not b!2242126) (not b!2242123) (not d!665897) (not bm!135360) (not b!2242141) (not mapNonEmpty!14846) (not b!2242147) (not b!2242142) (not setNonEmpty!20665) (not b!2242106) (not setNonEmpty!20671) (not b!2242146) (not b!2242138) (not b!2242064) (not bm!135359) (not b!2242065) (not d!665891) (not b!2242125) (not d!665885) (not bm!135356) (not b!2242100))
(check-sat b_and!175165 b_and!175167 (not b_next!65843) (not b_next!65841))
