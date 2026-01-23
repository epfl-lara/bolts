; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241890 () Bool)

(assert start!241890)

(declare-fun b!2479266 () Bool)

(declare-fun b_free!72137 () Bool)

(declare-fun b_next!72841 () Bool)

(assert (=> b!2479266 (= b_free!72137 (not b_next!72841))))

(declare-fun tp!793472 () Bool)

(declare-fun b_and!188377 () Bool)

(assert (=> b!2479266 (= tp!793472 b_and!188377)))

(declare-fun b!2479267 () Bool)

(declare-fun b_free!72139 () Bool)

(declare-fun b_next!72843 () Bool)

(assert (=> b!2479267 (= b_free!72139 (not b_next!72843))))

(declare-fun tp!793469 () Bool)

(declare-fun b_and!188379 () Bool)

(assert (=> b!2479267 (= tp!793469 b_and!188379)))

(declare-fun b!2479262 () Bool)

(declare-fun e!1573452 () Bool)

(declare-fun tp!793475 () Bool)

(declare-fun mapRes!15409 () Bool)

(assert (=> b!2479262 (= e!1573452 (and tp!793475 mapRes!15409))))

(declare-fun condMapEmpty!15409 () Bool)

(declare-datatypes ((Hashable!3230 0))(
  ( (HashableExt!3229 (__x!18866 Int)) )
))
(declare-datatypes ((K!5385 0))(
  ( (K!5386 (val!8783 Int)) )
))
(declare-datatypes ((V!5587 0))(
  ( (V!5588 (val!8784 Int)) )
))
(declare-datatypes ((tuple2!28568 0))(
  ( (tuple2!28569 (_1!16825 K!5385) (_2!16825 V!5587)) )
))
(declare-datatypes ((List!29128 0))(
  ( (Nil!29028) (Cons!29028 (h!34431 tuple2!28568) (t!210779 List!29128)) )
))
(declare-datatypes ((array!11731 0))(
  ( (array!11732 (arr!5230 (Array (_ BitVec 32) List!29128)) (size!22649 (_ BitVec 32))) )
))
(declare-datatypes ((array!11733 0))(
  ( (array!11734 (arr!5231 (Array (_ BitVec 32) (_ BitVec 64))) (size!22650 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6640 0))(
  ( (LongMapFixedSize!6641 (defaultEntry!3694 Int) (mask!8469 (_ BitVec 32)) (extraKeys!3568 (_ BitVec 32)) (zeroValue!3578 List!29128) (minValue!3578 List!29128) (_size!6687 (_ BitVec 32)) (_keys!3617 array!11733) (_values!3600 array!11731) (_vacant!3381 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13097 0))(
  ( (Cell!13098 (v!31334 LongMapFixedSize!6640)) )
))
(declare-datatypes ((MutLongMap!3320 0))(
  ( (LongMap!3320 (underlying!6847 Cell!13097)) (MutLongMapExt!3319 (__x!18867 Int)) )
))
(declare-datatypes ((Cell!13099 0))(
  ( (Cell!13100 (v!31335 MutLongMap!3320)) )
))
(declare-datatypes ((MutableMap!3230 0))(
  ( (MutableMapExt!3229 (__x!18868 Int)) (HashMap!3230 (underlying!6848 Cell!13099) (hashF!5173 Hashable!3230) (_size!6688 (_ BitVec 32)) (defaultValue!3392 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3230)

(declare-fun mapDefault!15409 () List!29128)

(assert (=> b!2479262 (= condMapEmpty!15409 (= (arr!5230 (_values!3600 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29128)) mapDefault!15409)))))

(declare-fun b!2479263 () Bool)

(declare-fun e!1573459 () Bool)

(declare-fun e!1573455 () Bool)

(assert (=> b!2479263 (= e!1573459 e!1573455)))

(declare-fun b!2479264 () Bool)

(declare-fun e!1573453 () Bool)

(assert (=> b!2479264 (= e!1573455 e!1573453)))

(declare-fun b!2479265 () Bool)

(declare-fun e!1573451 () Bool)

(declare-fun lt!886278 () MutLongMap!3320)

(get-info :version)

(assert (=> b!2479265 (= e!1573451 (and e!1573459 ((_ is LongMap!3320) lt!886278)))))

(assert (=> b!2479265 (= lt!886278 (v!31335 (underlying!6848 thiss!42540)))))

(declare-fun tp!793470 () Bool)

(declare-fun tp!793473 () Bool)

(declare-fun array_inv!3751 (array!11733) Bool)

(declare-fun array_inv!3752 (array!11731) Bool)

(assert (=> b!2479266 (= e!1573453 (and tp!793472 tp!793473 tp!793470 (array_inv!3751 (_keys!3617 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) (array_inv!3752 (_values!3600 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) e!1573452))))

(declare-fun e!1573450 () Bool)

(assert (=> b!2479267 (= e!1573450 (and e!1573451 tp!793469))))

(declare-fun b!2479268 () Bool)

(declare-fun res!1049412 () Bool)

(declare-fun e!1573460 () Bool)

(assert (=> b!2479268 (=> (not res!1049412) (not e!1573460))))

(declare-fun valid!2529 (MutableMap!3230) Bool)

(assert (=> b!2479268 (= res!1049412 (valid!2529 thiss!42540))))

(declare-fun b!2479269 () Bool)

(declare-fun e!1573457 () Bool)

(declare-fun e!1573456 () Bool)

(assert (=> b!2479269 (= e!1573457 e!1573456)))

(declare-fun res!1049411 () Bool)

(assert (=> b!2479269 (=> res!1049411 e!1573456)))

(declare-datatypes ((Unit!42450 0))(
  ( (Unit!42451) )
))
(declare-datatypes ((tuple2!28570 0))(
  ( (tuple2!28571 (_1!16826 Unit!42450) (_2!16826 MutableMap!3230)) )
))
(declare-fun lt!886270 () tuple2!28570)

(assert (=> b!2479269 (= res!1049411 (not ((_ is LongMap!3320) (v!31335 (underlying!6848 (_2!16826 lt!886270))))))))

(declare-fun e!1573454 () Bool)

(assert (=> b!2479269 e!1573454))

(declare-fun res!1049416 () Bool)

(assert (=> b!2479269 (=> (not res!1049416) (not e!1573454))))

(declare-datatypes ((tuple2!28572 0))(
  ( (tuple2!28573 (_1!16827 (_ BitVec 64)) (_2!16827 List!29128)) )
))
(declare-datatypes ((List!29129 0))(
  ( (Nil!29029) (Cons!29029 (h!34432 tuple2!28572) (t!210780 List!29129)) )
))
(declare-datatypes ((ListLongMap!459 0))(
  ( (ListLongMap!460 (toList!1514 List!29129)) )
))
(declare-fun lt!886267 () ListLongMap!459)

(declare-fun lambda!93655 () Int)

(declare-fun forall!5946 (List!29129 Int) Bool)

(assert (=> b!2479269 (= res!1049416 (forall!5946 (toList!1514 lt!886267) lambda!93655))))

(declare-fun lt!886276 () List!29128)

(declare-fun lt!886275 () ListLongMap!459)

(declare-fun lt!886281 () (_ BitVec 64))

(declare-fun +!66 (ListLongMap!459 tuple2!28572) ListLongMap!459)

(assert (=> b!2479269 (= lt!886267 (+!66 lt!886275 (tuple2!28573 lt!886281 lt!886276)))))

(declare-fun lt!886271 () Unit!42450)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!37 (ListLongMap!459 (_ BitVec 64) List!29128 Hashable!3230) Unit!42450)

(assert (=> b!2479269 (= lt!886271 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!37 lt!886275 lt!886281 lt!886276 (hashF!5173 (_2!16826 lt!886270))))))

(declare-fun allKeysSameHash!47 (List!29128 (_ BitVec 64) Hashable!3230) Bool)

(assert (=> b!2479269 (allKeysSameHash!47 lt!886276 lt!886281 (hashF!5173 (_2!16826 lt!886270)))))

(declare-fun lt!886277 () List!29128)

(declare-fun lt!886268 () Unit!42450)

(declare-fun key!2246 () K!5385)

(declare-fun lemmaRemovePairForKeyPreservesHash!41 (List!29128 K!5385 (_ BitVec 64) Hashable!3230) Unit!42450)

(assert (=> b!2479269 (= lt!886268 (lemmaRemovePairForKeyPreservesHash!41 lt!886277 key!2246 lt!886281 (hashF!5173 (_2!16826 lt!886270))))))

(assert (=> b!2479269 (allKeysSameHash!47 lt!886277 lt!886281 (hashF!5173 (_2!16826 lt!886270)))))

(declare-fun lt!886273 () Unit!42450)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!43 (List!29129 (_ BitVec 64) List!29128 Hashable!3230) Unit!42450)

(assert (=> b!2479269 (= lt!886273 (lemmaInLongMapAllKeySameHashThenForTuple!43 (toList!1514 lt!886275) lt!886281 lt!886277 (hashF!5173 (_2!16826 lt!886270))))))

(declare-fun res!1049415 () Bool)

(assert (=> start!241890 (=> (not res!1049415) (not e!1573460))))

(assert (=> start!241890 (= res!1049415 ((_ is HashMap!3230) thiss!42540))))

(assert (=> start!241890 e!1573460))

(assert (=> start!241890 e!1573450))

(declare-fun tp_is_empty!12157 () Bool)

(assert (=> start!241890 tp_is_empty!12157))

(declare-fun b!2479270 () Bool)

(declare-fun res!1049413 () Bool)

(assert (=> b!2479270 (=> (not res!1049413) (not e!1573460))))

(declare-fun contains!5025 (MutableMap!3230 K!5385) Bool)

(assert (=> b!2479270 (= res!1049413 (contains!5025 thiss!42540 key!2246))))

(declare-fun b!2479271 () Bool)

(declare-fun valid!2530 (MutLongMap!3320) Bool)

(assert (=> b!2479271 (= e!1573456 (valid!2530 (v!31335 (underlying!6848 (_2!16826 lt!886270)))))))

(declare-fun mapIsEmpty!15409 () Bool)

(assert (=> mapIsEmpty!15409 mapRes!15409))

(declare-fun mapNonEmpty!15409 () Bool)

(declare-fun tp!793474 () Bool)

(declare-fun tp!793471 () Bool)

(assert (=> mapNonEmpty!15409 (= mapRes!15409 (and tp!793474 tp!793471))))

(declare-fun mapRest!15409 () (Array (_ BitVec 32) List!29128))

(declare-fun mapValue!15409 () List!29128)

(declare-fun mapKey!15409 () (_ BitVec 32))

(assert (=> mapNonEmpty!15409 (= (arr!5230 (_values!3600 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) (store mapRest!15409 mapKey!15409 mapValue!15409))))

(declare-fun b!2479272 () Bool)

(declare-fun allKeysSameHashInMap!141 (ListLongMap!459 Hashable!3230) Bool)

(assert (=> b!2479272 (= e!1573454 (allKeysSameHashInMap!141 lt!886267 (hashF!5173 (_2!16826 lt!886270))))))

(declare-fun b!2479273 () Bool)

(assert (=> b!2479273 (= e!1573460 (not e!1573457))))

(declare-fun res!1049414 () Bool)

(assert (=> b!2479273 (=> res!1049414 e!1573457)))

(declare-datatypes ((tuple2!28574 0))(
  ( (tuple2!28575 (_1!16828 Bool) (_2!16828 MutLongMap!3320)) )
))
(declare-fun lt!886280 () tuple2!28574)

(assert (=> b!2479273 (= res!1049414 (not (_1!16828 lt!886280)))))

(declare-fun noDuplicateKeys!59 (List!29128) Bool)

(assert (=> b!2479273 (noDuplicateKeys!59 lt!886276)))

(declare-fun lt!886279 () Unit!42450)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!45 (List!29128 K!5385) Unit!42450)

(assert (=> b!2479273 (= lt!886279 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!45 lt!886277 key!2246))))

(declare-fun lt!886272 () Cell!13099)

(declare-fun Unit!42452 () Unit!42450)

(declare-fun Unit!42453 () Unit!42450)

(assert (=> b!2479273 (= lt!886270 (ite (_1!16828 lt!886280) (tuple2!28571 Unit!42452 (HashMap!3230 lt!886272 (hashF!5173 thiss!42540) (bvsub (_size!6688 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3392 thiss!42540))) (tuple2!28571 Unit!42453 (HashMap!3230 lt!886272 (hashF!5173 thiss!42540) (_size!6688 thiss!42540) (defaultValue!3392 thiss!42540)))))))

(assert (=> b!2479273 (= lt!886272 (Cell!13100 (_2!16828 lt!886280)))))

(declare-fun update!163 (MutLongMap!3320 (_ BitVec 64) List!29128) tuple2!28574)

(assert (=> b!2479273 (= lt!886280 (update!163 (v!31335 (underlying!6848 thiss!42540)) lt!886281 lt!886276))))

(declare-fun removePairForKey!49 (List!29128 K!5385) List!29128)

(assert (=> b!2479273 (= lt!886276 (removePairForKey!49 lt!886277 key!2246))))

(declare-datatypes ((ListMap!999 0))(
  ( (ListMap!1000 (toList!1515 List!29128)) )
))
(declare-fun lt!886274 () ListMap!999)

(declare-fun map!6112 (MutableMap!3230) ListMap!999)

(assert (=> b!2479273 (= lt!886274 (map!6112 thiss!42540))))

(declare-fun lt!886269 () Unit!42450)

(declare-fun forallContained!830 (List!29129 Int tuple2!28572) Unit!42450)

(assert (=> b!2479273 (= lt!886269 (forallContained!830 (toList!1514 lt!886275) lambda!93655 (tuple2!28573 lt!886281 lt!886277)))))

(declare-fun map!6113 (MutLongMap!3320) ListLongMap!459)

(assert (=> b!2479273 (= lt!886275 (map!6113 (v!31335 (underlying!6848 thiss!42540))))))

(declare-fun apply!6877 (MutLongMap!3320 (_ BitVec 64)) List!29128)

(assert (=> b!2479273 (= lt!886277 (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886281))))

(declare-fun hash!650 (Hashable!3230 K!5385) (_ BitVec 64))

(assert (=> b!2479273 (= lt!886281 (hash!650 (hashF!5173 thiss!42540) key!2246))))

(assert (= (and start!241890 res!1049415) b!2479268))

(assert (= (and b!2479268 res!1049412) b!2479270))

(assert (= (and b!2479270 res!1049413) b!2479273))

(assert (= (and b!2479273 (not res!1049414)) b!2479269))

(assert (= (and b!2479269 res!1049416) b!2479272))

(assert (= (and b!2479269 (not res!1049411)) b!2479271))

(assert (= (and b!2479262 condMapEmpty!15409) mapIsEmpty!15409))

(assert (= (and b!2479262 (not condMapEmpty!15409)) mapNonEmpty!15409))

(assert (= b!2479266 b!2479262))

(assert (= b!2479264 b!2479266))

(assert (= b!2479263 b!2479264))

(assert (= (and b!2479265 ((_ is LongMap!3320) (v!31335 (underlying!6848 thiss!42540)))) b!2479263))

(assert (= b!2479267 b!2479265))

(assert (= (and start!241890 ((_ is HashMap!3230) thiss!42540)) b!2479267))

(declare-fun m!2846941 () Bool)

(assert (=> b!2479273 m!2846941))

(declare-fun m!2846943 () Bool)

(assert (=> b!2479273 m!2846943))

(declare-fun m!2846945 () Bool)

(assert (=> b!2479273 m!2846945))

(declare-fun m!2846947 () Bool)

(assert (=> b!2479273 m!2846947))

(declare-fun m!2846949 () Bool)

(assert (=> b!2479273 m!2846949))

(declare-fun m!2846951 () Bool)

(assert (=> b!2479273 m!2846951))

(declare-fun m!2846953 () Bool)

(assert (=> b!2479273 m!2846953))

(declare-fun m!2846955 () Bool)

(assert (=> b!2479273 m!2846955))

(declare-fun m!2846957 () Bool)

(assert (=> b!2479273 m!2846957))

(declare-fun m!2846959 () Bool)

(assert (=> b!2479271 m!2846959))

(declare-fun m!2846961 () Bool)

(assert (=> b!2479272 m!2846961))

(declare-fun m!2846963 () Bool)

(assert (=> b!2479266 m!2846963))

(declare-fun m!2846965 () Bool)

(assert (=> b!2479266 m!2846965))

(declare-fun m!2846967 () Bool)

(assert (=> b!2479268 m!2846967))

(declare-fun m!2846969 () Bool)

(assert (=> mapNonEmpty!15409 m!2846969))

(declare-fun m!2846971 () Bool)

(assert (=> b!2479270 m!2846971))

(declare-fun m!2846973 () Bool)

(assert (=> b!2479269 m!2846973))

(declare-fun m!2846975 () Bool)

(assert (=> b!2479269 m!2846975))

(declare-fun m!2846977 () Bool)

(assert (=> b!2479269 m!2846977))

(declare-fun m!2846979 () Bool)

(assert (=> b!2479269 m!2846979))

(declare-fun m!2846981 () Bool)

(assert (=> b!2479269 m!2846981))

(declare-fun m!2846983 () Bool)

(assert (=> b!2479269 m!2846983))

(declare-fun m!2846985 () Bool)

(assert (=> b!2479269 m!2846985))

(check-sat (not b!2479262) (not b_next!72841) b_and!188377 tp_is_empty!12157 (not b!2479269) (not b_next!72843) (not b!2479268) b_and!188379 (not b!2479270) (not b!2479273) (not b!2479271) (not b!2479266) (not b!2479272) (not mapNonEmpty!15409))
(check-sat b_and!188379 b_and!188377 (not b_next!72841) (not b_next!72843))
(get-model)

(declare-fun d!712607 () Bool)

(declare-fun valid!2531 (LongMapFixedSize!6640) Bool)

(assert (=> d!712607 (= (valid!2530 (v!31335 (underlying!6848 (_2!16826 lt!886270)))) (valid!2531 (v!31334 (underlying!6847 (v!31335 (underlying!6848 (_2!16826 lt!886270)))))))))

(declare-fun bs!467283 () Bool)

(assert (= bs!467283 d!712607))

(declare-fun m!2846987 () Bool)

(assert (=> bs!467283 m!2846987))

(assert (=> b!2479271 d!712607))

(declare-fun d!712609 () Bool)

(assert (=> d!712609 (= (array_inv!3751 (_keys!3617 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) (bvsge (size!22650 (_keys!3617 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479266 d!712609))

(declare-fun d!712611 () Bool)

(assert (=> d!712611 (= (array_inv!3752 (_values!3600 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) (bvsge (size!22649 (_values!3600 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479266 d!712611))

(declare-fun d!712613 () Bool)

(declare-fun res!1049421 () Bool)

(declare-fun e!1573465 () Bool)

(assert (=> d!712613 (=> res!1049421 e!1573465)))

(assert (=> d!712613 (= res!1049421 ((_ is Nil!29029) (toList!1514 lt!886267)))))

(assert (=> d!712613 (= (forall!5946 (toList!1514 lt!886267) lambda!93655) e!1573465)))

(declare-fun b!2479278 () Bool)

(declare-fun e!1573466 () Bool)

(assert (=> b!2479278 (= e!1573465 e!1573466)))

(declare-fun res!1049422 () Bool)

(assert (=> b!2479278 (=> (not res!1049422) (not e!1573466))))

(declare-fun dynLambda!12456 (Int tuple2!28572) Bool)

(assert (=> b!2479278 (= res!1049422 (dynLambda!12456 lambda!93655 (h!34432 (toList!1514 lt!886267))))))

(declare-fun b!2479279 () Bool)

(assert (=> b!2479279 (= e!1573466 (forall!5946 (t!210780 (toList!1514 lt!886267)) lambda!93655))))

(assert (= (and d!712613 (not res!1049421)) b!2479278))

(assert (= (and b!2479278 res!1049422) b!2479279))

(declare-fun b_lambda!76051 () Bool)

(assert (=> (not b_lambda!76051) (not b!2479278)))

(declare-fun m!2846989 () Bool)

(assert (=> b!2479278 m!2846989))

(declare-fun m!2846991 () Bool)

(assert (=> b!2479279 m!2846991))

(assert (=> b!2479269 d!712613))

(declare-fun d!712615 () Bool)

(assert (=> d!712615 (allKeysSameHash!47 (removePairForKey!49 lt!886277 key!2246) lt!886281 (hashF!5173 (_2!16826 lt!886270)))))

(declare-fun lt!886284 () Unit!42450)

(declare-fun choose!14623 (List!29128 K!5385 (_ BitVec 64) Hashable!3230) Unit!42450)

(assert (=> d!712615 (= lt!886284 (choose!14623 lt!886277 key!2246 lt!886281 (hashF!5173 (_2!16826 lt!886270))))))

(assert (=> d!712615 (noDuplicateKeys!59 lt!886277)))

(assert (=> d!712615 (= (lemmaRemovePairForKeyPreservesHash!41 lt!886277 key!2246 lt!886281 (hashF!5173 (_2!16826 lt!886270))) lt!886284)))

(declare-fun bs!467284 () Bool)

(assert (= bs!467284 d!712615))

(assert (=> bs!467284 m!2846945))

(assert (=> bs!467284 m!2846945))

(declare-fun m!2846993 () Bool)

(assert (=> bs!467284 m!2846993))

(declare-fun m!2846995 () Bool)

(assert (=> bs!467284 m!2846995))

(declare-fun m!2846997 () Bool)

(assert (=> bs!467284 m!2846997))

(assert (=> b!2479269 d!712615))

(declare-fun bs!467285 () Bool)

(declare-fun d!712617 () Bool)

(assert (= bs!467285 (and d!712617 b!2479273)))

(declare-fun lambda!93658 () Int)

(assert (=> bs!467285 (not (= lambda!93658 lambda!93655))))

(assert (=> d!712617 true))

(assert (=> d!712617 (allKeysSameHash!47 lt!886277 lt!886281 (hashF!5173 (_2!16826 lt!886270)))))

(declare-fun lt!886287 () Unit!42450)

(declare-fun choose!14624 (List!29129 (_ BitVec 64) List!29128 Hashable!3230) Unit!42450)

(assert (=> d!712617 (= lt!886287 (choose!14624 (toList!1514 lt!886275) lt!886281 lt!886277 (hashF!5173 (_2!16826 lt!886270))))))

(assert (=> d!712617 (forall!5946 (toList!1514 lt!886275) lambda!93658)))

(assert (=> d!712617 (= (lemmaInLongMapAllKeySameHashThenForTuple!43 (toList!1514 lt!886275) lt!886281 lt!886277 (hashF!5173 (_2!16826 lt!886270))) lt!886287)))

(declare-fun bs!467286 () Bool)

(assert (= bs!467286 d!712617))

(assert (=> bs!467286 m!2846981))

(declare-fun m!2846999 () Bool)

(assert (=> bs!467286 m!2846999))

(declare-fun m!2847001 () Bool)

(assert (=> bs!467286 m!2847001))

(assert (=> b!2479269 d!712617))

(declare-fun d!712619 () Bool)

(assert (=> d!712619 true))

(assert (=> d!712619 true))

(declare-fun lambda!93661 () Int)

(declare-fun forall!5947 (List!29128 Int) Bool)

(assert (=> d!712619 (= (allKeysSameHash!47 lt!886276 lt!886281 (hashF!5173 (_2!16826 lt!886270))) (forall!5947 lt!886276 lambda!93661))))

(declare-fun bs!467287 () Bool)

(assert (= bs!467287 d!712619))

(declare-fun m!2847003 () Bool)

(assert (=> bs!467287 m!2847003))

(assert (=> b!2479269 d!712619))

(declare-fun bs!467288 () Bool)

(declare-fun d!712621 () Bool)

(assert (= bs!467288 (and d!712621 d!712619)))

(declare-fun lambda!93662 () Int)

(assert (=> bs!467288 (= lambda!93662 lambda!93661)))

(assert (=> d!712621 true))

(assert (=> d!712621 true))

(assert (=> d!712621 (= (allKeysSameHash!47 lt!886277 lt!886281 (hashF!5173 (_2!16826 lt!886270))) (forall!5947 lt!886277 lambda!93662))))

(declare-fun bs!467289 () Bool)

(assert (= bs!467289 d!712621))

(declare-fun m!2847005 () Bool)

(assert (=> bs!467289 m!2847005))

(assert (=> b!2479269 d!712621))

(declare-fun d!712623 () Bool)

(declare-fun e!1573469 () Bool)

(assert (=> d!712623 e!1573469))

(declare-fun res!1049427 () Bool)

(assert (=> d!712623 (=> (not res!1049427) (not e!1573469))))

(declare-fun lt!886298 () ListLongMap!459)

(declare-fun contains!5026 (ListLongMap!459 (_ BitVec 64)) Bool)

(assert (=> d!712623 (= res!1049427 (contains!5026 lt!886298 (_1!16827 (tuple2!28573 lt!886281 lt!886276))))))

(declare-fun lt!886299 () List!29129)

(assert (=> d!712623 (= lt!886298 (ListLongMap!460 lt!886299))))

(declare-fun lt!886296 () Unit!42450)

(declare-fun lt!886297 () Unit!42450)

(assert (=> d!712623 (= lt!886296 lt!886297)))

(declare-datatypes ((Option!5738 0))(
  ( (None!5737) (Some!5737 (v!31340 List!29128)) )
))
(declare-fun getValueByKey!131 (List!29129 (_ BitVec 64)) Option!5738)

(assert (=> d!712623 (= (getValueByKey!131 lt!886299 (_1!16827 (tuple2!28573 lt!886281 lt!886276))) (Some!5737 (_2!16827 (tuple2!28573 lt!886281 lt!886276))))))

(declare-fun lemmaContainsTupThenGetReturnValue!17 (List!29129 (_ BitVec 64) List!29128) Unit!42450)

(assert (=> d!712623 (= lt!886297 (lemmaContainsTupThenGetReturnValue!17 lt!886299 (_1!16827 (tuple2!28573 lt!886281 lt!886276)) (_2!16827 (tuple2!28573 lt!886281 lt!886276))))))

(declare-fun insertStrictlySorted!11 (List!29129 (_ BitVec 64) List!29128) List!29129)

(assert (=> d!712623 (= lt!886299 (insertStrictlySorted!11 (toList!1514 lt!886275) (_1!16827 (tuple2!28573 lt!886281 lt!886276)) (_2!16827 (tuple2!28573 lt!886281 lt!886276))))))

(assert (=> d!712623 (= (+!66 lt!886275 (tuple2!28573 lt!886281 lt!886276)) lt!886298)))

(declare-fun b!2479290 () Bool)

(declare-fun res!1049428 () Bool)

(assert (=> b!2479290 (=> (not res!1049428) (not e!1573469))))

(assert (=> b!2479290 (= res!1049428 (= (getValueByKey!131 (toList!1514 lt!886298) (_1!16827 (tuple2!28573 lt!886281 lt!886276))) (Some!5737 (_2!16827 (tuple2!28573 lt!886281 lt!886276)))))))

(declare-fun b!2479291 () Bool)

(declare-fun contains!5027 (List!29129 tuple2!28572) Bool)

(assert (=> b!2479291 (= e!1573469 (contains!5027 (toList!1514 lt!886298) (tuple2!28573 lt!886281 lt!886276)))))

(assert (= (and d!712623 res!1049427) b!2479290))

(assert (= (and b!2479290 res!1049428) b!2479291))

(declare-fun m!2847007 () Bool)

(assert (=> d!712623 m!2847007))

(declare-fun m!2847009 () Bool)

(assert (=> d!712623 m!2847009))

(declare-fun m!2847011 () Bool)

(assert (=> d!712623 m!2847011))

(declare-fun m!2847013 () Bool)

(assert (=> d!712623 m!2847013))

(declare-fun m!2847015 () Bool)

(assert (=> b!2479290 m!2847015))

(declare-fun m!2847017 () Bool)

(assert (=> b!2479291 m!2847017))

(assert (=> b!2479269 d!712623))

(declare-fun bs!467290 () Bool)

(declare-fun d!712625 () Bool)

(assert (= bs!467290 (and d!712625 b!2479273)))

(declare-fun lambda!93667 () Int)

(assert (=> bs!467290 (= lambda!93667 lambda!93655)))

(declare-fun bs!467291 () Bool)

(assert (= bs!467291 (and d!712625 d!712617)))

(assert (=> bs!467291 (not (= lambda!93667 lambda!93658))))

(declare-fun e!1573472 () Bool)

(assert (=> d!712625 e!1573472))

(declare-fun res!1049431 () Bool)

(assert (=> d!712625 (=> (not res!1049431) (not e!1573472))))

(declare-fun lt!886305 () ListLongMap!459)

(assert (=> d!712625 (= res!1049431 (forall!5946 (toList!1514 lt!886305) lambda!93667))))

(assert (=> d!712625 (= lt!886305 (+!66 lt!886275 (tuple2!28573 lt!886281 lt!886276)))))

(declare-fun lt!886304 () Unit!42450)

(declare-fun choose!14625 (ListLongMap!459 (_ BitVec 64) List!29128 Hashable!3230) Unit!42450)

(assert (=> d!712625 (= lt!886304 (choose!14625 lt!886275 lt!886281 lt!886276 (hashF!5173 (_2!16826 lt!886270))))))

(assert (=> d!712625 (forall!5946 (toList!1514 lt!886275) lambda!93667)))

(assert (=> d!712625 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!37 lt!886275 lt!886281 lt!886276 (hashF!5173 (_2!16826 lt!886270))) lt!886304)))

(declare-fun b!2479294 () Bool)

(assert (=> b!2479294 (= e!1573472 (allKeysSameHashInMap!141 lt!886305 (hashF!5173 (_2!16826 lt!886270))))))

(assert (= (and d!712625 res!1049431) b!2479294))

(declare-fun m!2847019 () Bool)

(assert (=> d!712625 m!2847019))

(assert (=> d!712625 m!2846973))

(declare-fun m!2847021 () Bool)

(assert (=> d!712625 m!2847021))

(declare-fun m!2847023 () Bool)

(assert (=> d!712625 m!2847023))

(declare-fun m!2847025 () Bool)

(assert (=> b!2479294 m!2847025))

(assert (=> b!2479269 d!712625))

(declare-fun b!2479306 () Bool)

(declare-fun e!1573477 () List!29128)

(assert (=> b!2479306 (= e!1573477 Nil!29028)))

(declare-fun b!2479304 () Bool)

(declare-fun e!1573478 () List!29128)

(assert (=> b!2479304 (= e!1573478 e!1573477)))

(declare-fun c!394364 () Bool)

(assert (=> b!2479304 (= c!394364 ((_ is Cons!29028) lt!886277))))

(declare-fun d!712627 () Bool)

(declare-fun lt!886308 () List!29128)

(declare-fun containsKey!125 (List!29128 K!5385) Bool)

(assert (=> d!712627 (not (containsKey!125 lt!886308 key!2246))))

(assert (=> d!712627 (= lt!886308 e!1573478)))

(declare-fun c!394365 () Bool)

(assert (=> d!712627 (= c!394365 (and ((_ is Cons!29028) lt!886277) (= (_1!16825 (h!34431 lt!886277)) key!2246)))))

(assert (=> d!712627 (noDuplicateKeys!59 lt!886277)))

(assert (=> d!712627 (= (removePairForKey!49 lt!886277 key!2246) lt!886308)))

(declare-fun b!2479303 () Bool)

(assert (=> b!2479303 (= e!1573478 (t!210779 lt!886277))))

(declare-fun b!2479305 () Bool)

(assert (=> b!2479305 (= e!1573477 (Cons!29028 (h!34431 lt!886277) (removePairForKey!49 (t!210779 lt!886277) key!2246)))))

(assert (= (and d!712627 c!394365) b!2479303))

(assert (= (and d!712627 (not c!394365)) b!2479304))

(assert (= (and b!2479304 c!394364) b!2479305))

(assert (= (and b!2479304 (not c!394364)) b!2479306))

(declare-fun m!2847027 () Bool)

(assert (=> d!712627 m!2847027))

(assert (=> d!712627 m!2846997))

(declare-fun m!2847029 () Bool)

(assert (=> b!2479305 m!2847029))

(assert (=> b!2479273 d!712627))

(declare-fun d!712629 () Bool)

(declare-fun hash!654 (Hashable!3230 K!5385) (_ BitVec 64))

(assert (=> d!712629 (= (hash!650 (hashF!5173 thiss!42540) key!2246) (hash!654 (hashF!5173 thiss!42540) key!2246))))

(declare-fun bs!467292 () Bool)

(assert (= bs!467292 d!712629))

(declare-fun m!2847031 () Bool)

(assert (=> bs!467292 m!2847031))

(assert (=> b!2479273 d!712629))

(declare-fun e!1573492 () Bool)

(declare-fun call!151863 () ListLongMap!459)

(declare-fun b!2479325 () Bool)

(declare-fun call!151864 () ListLongMap!459)

(assert (=> b!2479325 (= e!1573492 (= call!151863 (+!66 call!151864 (tuple2!28573 lt!886281 lt!886276))))))

(declare-fun b!2479326 () Bool)

(declare-fun e!1573491 () Bool)

(declare-fun e!1573489 () Bool)

(assert (=> b!2479326 (= e!1573491 e!1573489)))

(declare-fun c!394374 () Bool)

(declare-fun lt!886318 () tuple2!28574)

(assert (=> b!2479326 (= c!394374 (_1!16828 lt!886318))))

(declare-fun b!2479327 () Bool)

(declare-fun e!1573490 () tuple2!28574)

(declare-fun lt!886319 () tuple2!28574)

(assert (=> b!2479327 (= e!1573490 (tuple2!28575 false (_2!16828 lt!886319)))))

(declare-fun bm!151858 () Bool)

(assert (=> bm!151858 (= call!151864 (map!6113 (v!31335 (underlying!6848 thiss!42540))))))

(declare-fun d!712631 () Bool)

(assert (=> d!712631 e!1573491))

(declare-fun res!1049438 () Bool)

(assert (=> d!712631 (=> (not res!1049438) (not e!1573491))))

(assert (=> d!712631 (= res!1049438 ((_ is LongMap!3320) (_2!16828 lt!886318)))))

(assert (=> d!712631 (= lt!886318 e!1573490)))

(declare-fun c!394372 () Bool)

(assert (=> d!712631 (= c!394372 (_1!16828 lt!886319))))

(declare-fun e!1573493 () tuple2!28574)

(assert (=> d!712631 (= lt!886319 e!1573493)))

(declare-fun c!394373 () Bool)

(declare-fun imbalanced!12 (MutLongMap!3320) Bool)

(assert (=> d!712631 (= c!394373 (imbalanced!12 (v!31335 (underlying!6848 thiss!42540))))))

(assert (=> d!712631 (valid!2530 (v!31335 (underlying!6848 thiss!42540)))))

(assert (=> d!712631 (= (update!163 (v!31335 (underlying!6848 thiss!42540)) lt!886281 lt!886276) lt!886318)))

(declare-fun b!2479328 () Bool)

(declare-fun res!1049440 () Bool)

(assert (=> b!2479328 (=> (not res!1049440) (not e!1573491))))

(assert (=> b!2479328 (= res!1049440 (valid!2530 (_2!16828 lt!886318)))))

(declare-fun b!2479329 () Bool)

(assert (=> b!2479329 (= e!1573489 (= call!151863 call!151864))))

(declare-fun b!2479330 () Bool)

(declare-fun lt!886320 () tuple2!28574)

(assert (=> b!2479330 (= e!1573493 (tuple2!28575 (_1!16828 lt!886320) (_2!16828 lt!886320)))))

(declare-fun repack!16 (MutLongMap!3320) tuple2!28574)

(assert (=> b!2479330 (= lt!886320 (repack!16 (v!31335 (underlying!6848 thiss!42540))))))

(declare-fun b!2479331 () Bool)

(assert (=> b!2479331 (= e!1573489 e!1573492)))

(declare-fun res!1049439 () Bool)

(assert (=> b!2479331 (= res!1049439 (contains!5026 call!151863 lt!886281))))

(assert (=> b!2479331 (=> (not res!1049439) (not e!1573492))))

(declare-fun b!2479332 () Bool)

(assert (=> b!2479332 (= e!1573493 (tuple2!28575 true (v!31335 (underlying!6848 thiss!42540))))))

(declare-fun b!2479333 () Bool)

(declare-datatypes ((tuple2!28576 0))(
  ( (tuple2!28577 (_1!16829 Bool) (_2!16829 LongMapFixedSize!6640)) )
))
(declare-fun lt!886317 () tuple2!28576)

(assert (=> b!2479333 (= e!1573490 (tuple2!28575 (_1!16829 lt!886317) (LongMap!3320 (Cell!13098 (_2!16829 lt!886317)))))))

(declare-fun update!164 (LongMapFixedSize!6640 (_ BitVec 64) List!29128) tuple2!28576)

(assert (=> b!2479333 (= lt!886317 (update!164 (v!31334 (underlying!6847 (_2!16828 lt!886319))) lt!886281 lt!886276))))

(declare-fun bm!151859 () Bool)

(assert (=> bm!151859 (= call!151863 (map!6113 (_2!16828 lt!886318)))))

(assert (= (and d!712631 c!394373) b!2479330))

(assert (= (and d!712631 (not c!394373)) b!2479332))

(assert (= (and d!712631 c!394372) b!2479333))

(assert (= (and d!712631 (not c!394372)) b!2479327))

(assert (= (and d!712631 res!1049438) b!2479328))

(assert (= (and b!2479328 res!1049440) b!2479326))

(assert (= (and b!2479326 c!394374) b!2479331))

(assert (= (and b!2479326 (not c!394374)) b!2479329))

(assert (= (and b!2479331 res!1049439) b!2479325))

(assert (= (or b!2479325 b!2479329) bm!151858))

(assert (= (or b!2479331 b!2479325 b!2479329) bm!151859))

(declare-fun m!2847033 () Bool)

(assert (=> b!2479328 m!2847033))

(declare-fun m!2847035 () Bool)

(assert (=> bm!151859 m!2847035))

(declare-fun m!2847037 () Bool)

(assert (=> b!2479331 m!2847037))

(declare-fun m!2847039 () Bool)

(assert (=> b!2479330 m!2847039))

(assert (=> bm!151858 m!2846953))

(declare-fun m!2847041 () Bool)

(assert (=> d!712631 m!2847041))

(declare-fun m!2847043 () Bool)

(assert (=> d!712631 m!2847043))

(declare-fun m!2847045 () Bool)

(assert (=> b!2479325 m!2847045))

(declare-fun m!2847047 () Bool)

(assert (=> b!2479333 m!2847047))

(assert (=> b!2479273 d!712631))

(declare-fun d!712633 () Bool)

(declare-fun map!6114 (LongMapFixedSize!6640) ListLongMap!459)

(assert (=> d!712633 (= (map!6113 (v!31335 (underlying!6848 thiss!42540))) (map!6114 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540))))))))

(declare-fun bs!467293 () Bool)

(assert (= bs!467293 d!712633))

(declare-fun m!2847049 () Bool)

(assert (=> bs!467293 m!2847049))

(assert (=> b!2479273 d!712633))

(declare-fun d!712635 () Bool)

(declare-fun e!1573496 () Bool)

(assert (=> d!712635 e!1573496))

(declare-fun c!394377 () Bool)

(declare-fun contains!5028 (MutLongMap!3320 (_ BitVec 64)) Bool)

(assert (=> d!712635 (= c!394377 (contains!5028 (v!31335 (underlying!6848 thiss!42540)) lt!886281))))

(declare-fun lt!886323 () List!29128)

(declare-fun apply!6878 (LongMapFixedSize!6640 (_ BitVec 64)) List!29128)

(assert (=> d!712635 (= lt!886323 (apply!6878 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))) lt!886281))))

(assert (=> d!712635 (valid!2530 (v!31335 (underlying!6848 thiss!42540)))))

(assert (=> d!712635 (= (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886281) lt!886323)))

(declare-fun b!2479338 () Bool)

(declare-fun get!8950 (Option!5738) List!29128)

(assert (=> b!2479338 (= e!1573496 (= lt!886323 (get!8950 (getValueByKey!131 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))) lt!886281))))))

(declare-fun b!2479339 () Bool)

(declare-fun dynLambda!12457 (Int (_ BitVec 64)) List!29128)

(assert (=> b!2479339 (= e!1573496 (= lt!886323 (dynLambda!12457 (defaultEntry!3694 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540))))) lt!886281)))))

(assert (=> b!2479339 ((_ is LongMap!3320) (v!31335 (underlying!6848 thiss!42540)))))

(assert (= (and d!712635 c!394377) b!2479338))

(assert (= (and d!712635 (not c!394377)) b!2479339))

(declare-fun b_lambda!76053 () Bool)

(assert (=> (not b_lambda!76053) (not b!2479339)))

(declare-fun t!210782 () Bool)

(declare-fun tb!140369 () Bool)

(assert (=> (and b!2479266 (= (defaultEntry!3694 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540))))) (defaultEntry!3694 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540)))))) t!210782) tb!140369))

(assert (=> b!2479339 t!210782))

(declare-fun result!173294 () Bool)

(declare-fun b_and!188381 () Bool)

(assert (= b_and!188377 (and (=> t!210782 result!173294) b_and!188381)))

(declare-fun m!2847051 () Bool)

(assert (=> d!712635 m!2847051))

(declare-fun m!2847053 () Bool)

(assert (=> d!712635 m!2847053))

(assert (=> d!712635 m!2847043))

(assert (=> b!2479338 m!2846953))

(declare-fun m!2847055 () Bool)

(assert (=> b!2479338 m!2847055))

(assert (=> b!2479338 m!2847055))

(declare-fun m!2847057 () Bool)

(assert (=> b!2479338 m!2847057))

(declare-fun m!2847059 () Bool)

(assert (=> b!2479339 m!2847059))

(assert (=> b!2479273 d!712635))

(declare-fun d!712637 () Bool)

(assert (=> d!712637 (noDuplicateKeys!59 (removePairForKey!49 lt!886277 key!2246))))

(declare-fun lt!886326 () Unit!42450)

(declare-fun choose!14626 (List!29128 K!5385) Unit!42450)

(assert (=> d!712637 (= lt!886326 (choose!14626 lt!886277 key!2246))))

(assert (=> d!712637 (noDuplicateKeys!59 lt!886277)))

(assert (=> d!712637 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!45 lt!886277 key!2246) lt!886326)))

(declare-fun bs!467294 () Bool)

(assert (= bs!467294 d!712637))

(assert (=> bs!467294 m!2846945))

(assert (=> bs!467294 m!2846945))

(declare-fun m!2847061 () Bool)

(assert (=> bs!467294 m!2847061))

(declare-fun m!2847063 () Bool)

(assert (=> bs!467294 m!2847063))

(assert (=> bs!467294 m!2846997))

(assert (=> b!2479273 d!712637))

(declare-fun d!712639 () Bool)

(declare-fun res!1049445 () Bool)

(declare-fun e!1573501 () Bool)

(assert (=> d!712639 (=> res!1049445 e!1573501)))

(assert (=> d!712639 (= res!1049445 (not ((_ is Cons!29028) lt!886276)))))

(assert (=> d!712639 (= (noDuplicateKeys!59 lt!886276) e!1573501)))

(declare-fun b!2479344 () Bool)

(declare-fun e!1573502 () Bool)

(assert (=> b!2479344 (= e!1573501 e!1573502)))

(declare-fun res!1049446 () Bool)

(assert (=> b!2479344 (=> (not res!1049446) (not e!1573502))))

(assert (=> b!2479344 (= res!1049446 (not (containsKey!125 (t!210779 lt!886276) (_1!16825 (h!34431 lt!886276)))))))

(declare-fun b!2479345 () Bool)

(assert (=> b!2479345 (= e!1573502 (noDuplicateKeys!59 (t!210779 lt!886276)))))

(assert (= (and d!712639 (not res!1049445)) b!2479344))

(assert (= (and b!2479344 res!1049446) b!2479345))

(declare-fun m!2847065 () Bool)

(assert (=> b!2479344 m!2847065))

(declare-fun m!2847067 () Bool)

(assert (=> b!2479345 m!2847067))

(assert (=> b!2479273 d!712639))

(declare-fun d!712641 () Bool)

(declare-fun lt!886329 () ListMap!999)

(declare-fun invariantList!405 (List!29128) Bool)

(assert (=> d!712641 (invariantList!405 (toList!1515 lt!886329))))

(declare-fun extractMap!152 (List!29129) ListMap!999)

(assert (=> d!712641 (= lt!886329 (extractMap!152 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540))))))))

(assert (=> d!712641 (valid!2529 thiss!42540)))

(assert (=> d!712641 (= (map!6112 thiss!42540) lt!886329)))

(declare-fun bs!467295 () Bool)

(assert (= bs!467295 d!712641))

(declare-fun m!2847069 () Bool)

(assert (=> bs!467295 m!2847069))

(assert (=> bs!467295 m!2846953))

(declare-fun m!2847071 () Bool)

(assert (=> bs!467295 m!2847071))

(assert (=> bs!467295 m!2846967))

(assert (=> b!2479273 d!712641))

(declare-fun d!712643 () Bool)

(assert (=> d!712643 (dynLambda!12456 lambda!93655 (tuple2!28573 lt!886281 lt!886277))))

(declare-fun lt!886332 () Unit!42450)

(declare-fun choose!14627 (List!29129 Int tuple2!28572) Unit!42450)

(assert (=> d!712643 (= lt!886332 (choose!14627 (toList!1514 lt!886275) lambda!93655 (tuple2!28573 lt!886281 lt!886277)))))

(declare-fun e!1573505 () Bool)

(assert (=> d!712643 e!1573505))

(declare-fun res!1049449 () Bool)

(assert (=> d!712643 (=> (not res!1049449) (not e!1573505))))

(assert (=> d!712643 (= res!1049449 (forall!5946 (toList!1514 lt!886275) lambda!93655))))

(assert (=> d!712643 (= (forallContained!830 (toList!1514 lt!886275) lambda!93655 (tuple2!28573 lt!886281 lt!886277)) lt!886332)))

(declare-fun b!2479348 () Bool)

(assert (=> b!2479348 (= e!1573505 (contains!5027 (toList!1514 lt!886275) (tuple2!28573 lt!886281 lt!886277)))))

(assert (= (and d!712643 res!1049449) b!2479348))

(declare-fun b_lambda!76055 () Bool)

(assert (=> (not b_lambda!76055) (not d!712643)))

(declare-fun m!2847073 () Bool)

(assert (=> d!712643 m!2847073))

(declare-fun m!2847075 () Bool)

(assert (=> d!712643 m!2847075))

(declare-fun m!2847077 () Bool)

(assert (=> d!712643 m!2847077))

(declare-fun m!2847079 () Bool)

(assert (=> b!2479348 m!2847079))

(assert (=> b!2479273 d!712643))

(declare-fun bs!467296 () Bool)

(declare-fun b!2479378 () Bool)

(assert (= bs!467296 (and b!2479378 b!2479273)))

(declare-fun lambda!93670 () Int)

(assert (=> bs!467296 (= lambda!93670 lambda!93655)))

(declare-fun bs!467297 () Bool)

(assert (= bs!467297 (and b!2479378 d!712617)))

(assert (=> bs!467297 (not (= lambda!93670 lambda!93658))))

(declare-fun bs!467298 () Bool)

(assert (= bs!467298 (and b!2479378 d!712625)))

(assert (=> bs!467298 (= lambda!93670 lambda!93667)))

(declare-fun b!2479371 () Bool)

(declare-fun e!1573521 () Bool)

(declare-fun call!151882 () Bool)

(assert (=> b!2479371 (= e!1573521 call!151882)))

(declare-fun b!2479372 () Bool)

(declare-fun e!1573526 () Unit!42450)

(declare-fun Unit!42454 () Unit!42450)

(assert (=> b!2479372 (= e!1573526 Unit!42454)))

(declare-fun b!2479373 () Bool)

(declare-fun e!1573522 () Unit!42450)

(declare-fun e!1573524 () Unit!42450)

(assert (=> b!2479373 (= e!1573522 e!1573524)))

(declare-fun res!1049458 () Bool)

(declare-fun call!151877 () Bool)

(assert (=> b!2479373 (= res!1049458 call!151877)))

(declare-fun e!1573523 () Bool)

(assert (=> b!2479373 (=> (not res!1049458) (not e!1573523))))

(declare-fun c!394387 () Bool)

(assert (=> b!2479373 (= c!394387 e!1573523)))

(declare-fun bm!151872 () Bool)

(declare-datatypes ((Option!5739 0))(
  ( (None!5738) (Some!5738 (v!31341 tuple2!28568)) )
))
(declare-fun call!151881 () Option!5739)

(declare-fun call!151879 () List!29128)

(declare-fun getPair!64 (List!29128 K!5385) Option!5739)

(assert (=> bm!151872 (= call!151881 (getPair!64 call!151879 key!2246))))

(declare-fun d!712645 () Bool)

(declare-fun lt!886385 () Bool)

(declare-fun contains!5029 (ListMap!999 K!5385) Bool)

(assert (=> d!712645 (= lt!886385 (contains!5029 (map!6112 thiss!42540) key!2246))))

(declare-fun e!1573520 () Bool)

(assert (=> d!712645 (= lt!886385 e!1573520)))

(declare-fun res!1049456 () Bool)

(assert (=> d!712645 (=> (not res!1049456) (not e!1573520))))

(declare-fun lt!886373 () (_ BitVec 64))

(assert (=> d!712645 (= res!1049456 (contains!5028 (v!31335 (underlying!6848 thiss!42540)) lt!886373))))

(declare-fun lt!886390 () Unit!42450)

(assert (=> d!712645 (= lt!886390 e!1573522)))

(declare-fun c!394388 () Bool)

(assert (=> d!712645 (= c!394388 (contains!5029 (extractMap!152 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540))))) key!2246))))

(declare-fun lt!886380 () Unit!42450)

(declare-fun e!1573525 () Unit!42450)

(assert (=> d!712645 (= lt!886380 e!1573525)))

(declare-fun c!394386 () Bool)

(assert (=> d!712645 (= c!394386 (contains!5028 (v!31335 (underlying!6848 thiss!42540)) lt!886373))))

(assert (=> d!712645 (= lt!886373 (hash!650 (hashF!5173 thiss!42540) key!2246))))

(assert (=> d!712645 (valid!2529 thiss!42540)))

(assert (=> d!712645 (= (contains!5025 thiss!42540 key!2246) lt!886385)))

(declare-fun b!2479374 () Bool)

(declare-fun Unit!42455 () Unit!42450)

(assert (=> b!2479374 (= e!1573525 Unit!42455)))

(declare-fun bm!151873 () Bool)

(declare-fun isDefined!4560 (Option!5739) Bool)

(assert (=> bm!151873 (= call!151882 (isDefined!4560 call!151881))))

(declare-fun b!2479375 () Bool)

(assert (=> b!2479375 false))

(declare-fun lt!886376 () Unit!42450)

(declare-fun lt!886378 () Unit!42450)

(assert (=> b!2479375 (= lt!886376 lt!886378)))

(declare-fun lt!886392 () List!29129)

(declare-fun lt!886381 () List!29128)

(assert (=> b!2479375 (contains!5027 lt!886392 (tuple2!28573 lt!886373 lt!886381))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!65 (List!29129 (_ BitVec 64) List!29128) Unit!42450)

(assert (=> b!2479375 (= lt!886378 (lemmaGetValueByKeyImpliesContainsTuple!65 lt!886392 lt!886373 lt!886381))))

(assert (=> b!2479375 (= lt!886381 (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886373))))

(assert (=> b!2479375 (= lt!886392 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))))))

(declare-fun lt!886389 () Unit!42450)

(declare-fun lt!886387 () Unit!42450)

(assert (=> b!2479375 (= lt!886389 lt!886387)))

(declare-fun lt!886375 () List!29129)

(declare-fun isDefined!4561 (Option!5738) Bool)

(assert (=> b!2479375 (isDefined!4561 (getValueByKey!131 lt!886375 lt!886373))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!88 (List!29129 (_ BitVec 64)) Unit!42450)

(assert (=> b!2479375 (= lt!886387 (lemmaContainsKeyImpliesGetValueByKeyDefined!88 lt!886375 lt!886373))))

(assert (=> b!2479375 (= lt!886375 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))))))

(declare-fun lt!886388 () Unit!42450)

(declare-fun lt!886384 () Unit!42450)

(assert (=> b!2479375 (= lt!886388 lt!886384)))

(declare-fun lt!886383 () List!29129)

(declare-fun containsKey!126 (List!29129 (_ BitVec 64)) Bool)

(assert (=> b!2479375 (containsKey!126 lt!886383 lt!886373)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!65 (List!29129 (_ BitVec 64)) Unit!42450)

(assert (=> b!2479375 (= lt!886384 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!65 lt!886383 lt!886373))))

(assert (=> b!2479375 (= lt!886383 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))))))

(declare-fun Unit!42456 () Unit!42450)

(assert (=> b!2479375 (= e!1573526 Unit!42456)))

(declare-fun b!2479376 () Bool)

(declare-fun Unit!42457 () Unit!42450)

(assert (=> b!2479376 (= e!1573524 Unit!42457)))

(declare-fun bm!151874 () Bool)

(declare-fun call!151878 () ListLongMap!459)

(assert (=> bm!151874 (= call!151878 (map!6113 (v!31335 (underlying!6848 thiss!42540))))))

(declare-fun b!2479377 () Bool)

(assert (=> b!2479377 (= e!1573520 (isDefined!4560 (getPair!64 (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886373) key!2246)))))

(assert (=> b!2479378 (= e!1573525 (forallContained!830 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))) lambda!93670 (tuple2!28573 lt!886373 (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886373))))))

(declare-fun c!394389 () Bool)

(assert (=> b!2479378 (= c!394389 (not (contains!5027 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))) (tuple2!28573 lt!886373 (apply!6877 (v!31335 (underlying!6848 thiss!42540)) lt!886373)))))))

(declare-fun lt!886391 () Unit!42450)

(assert (=> b!2479378 (= lt!886391 e!1573526)))

(declare-fun b!2479379 () Bool)

(assert (=> b!2479379 false))

(declare-fun lt!886386 () Unit!42450)

(declare-fun lt!886379 () Unit!42450)

(assert (=> b!2479379 (= lt!886386 lt!886379)))

(declare-fun lt!886382 () ListLongMap!459)

(assert (=> b!2479379 (contains!5029 (extractMap!152 (toList!1514 lt!886382)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!64 (ListLongMap!459 K!5385 Hashable!3230) Unit!42450)

(assert (=> b!2479379 (= lt!886379 (lemmaInLongMapThenInGenericMap!64 lt!886382 key!2246 (hashF!5173 thiss!42540)))))

(assert (=> b!2479379 (= lt!886382 call!151878)))

(declare-fun Unit!42458 () Unit!42450)

(assert (=> b!2479379 (= e!1573524 Unit!42458)))

(declare-fun b!2479380 () Bool)

(assert (=> b!2479380 (= e!1573523 call!151882)))

(declare-fun lt!886377 () ListLongMap!459)

(declare-fun call!151880 () (_ BitVec 64))

(declare-fun bm!151875 () Bool)

(declare-fun apply!6879 (ListLongMap!459 (_ BitVec 64)) List!29128)

(assert (=> bm!151875 (= call!151879 (apply!6879 (ite c!394388 lt!886377 call!151878) call!151880))))

(declare-fun bm!151876 () Bool)

(assert (=> bm!151876 (= call!151880 (hash!650 (hashF!5173 thiss!42540) key!2246))))

(declare-fun b!2479381 () Bool)

(declare-fun lt!886374 () Unit!42450)

(assert (=> b!2479381 (= e!1573522 lt!886374)))

(assert (=> b!2479381 (= lt!886377 call!151878)))

(declare-fun lemmaInGenericMapThenInLongMap!64 (ListLongMap!459 K!5385 Hashable!3230) Unit!42450)

(assert (=> b!2479381 (= lt!886374 (lemmaInGenericMapThenInLongMap!64 lt!886377 key!2246 (hashF!5173 thiss!42540)))))

(declare-fun res!1049457 () Bool)

(assert (=> b!2479381 (= res!1049457 call!151877)))

(assert (=> b!2479381 (=> (not res!1049457) (not e!1573521))))

(assert (=> b!2479381 e!1573521))

(declare-fun bm!151877 () Bool)

(assert (=> bm!151877 (= call!151877 (contains!5026 (ite c!394388 lt!886377 call!151878) call!151880))))

(assert (= (and d!712645 c!394386) b!2479378))

(assert (= (and d!712645 (not c!394386)) b!2479374))

(assert (= (and b!2479378 c!394389) b!2479375))

(assert (= (and b!2479378 (not c!394389)) b!2479372))

(assert (= (and d!712645 c!394388) b!2479381))

(assert (= (and d!712645 (not c!394388)) b!2479373))

(assert (= (and b!2479381 res!1049457) b!2479371))

(assert (= (and b!2479373 res!1049458) b!2479380))

(assert (= (and b!2479373 c!394387) b!2479379))

(assert (= (and b!2479373 (not c!394387)) b!2479376))

(assert (= (or b!2479381 b!2479371 b!2479373 b!2479380) bm!151876))

(assert (= (or b!2479381 b!2479373 b!2479380 b!2479379) bm!151874))

(assert (= (or b!2479371 b!2479380) bm!151875))

(assert (= (or b!2479381 b!2479373) bm!151877))

(assert (= (or b!2479371 b!2479380) bm!151872))

(assert (= (or b!2479371 b!2479380) bm!151873))

(assert (= (and d!712645 res!1049456) b!2479377))

(declare-fun m!2847081 () Bool)

(assert (=> bm!151873 m!2847081))

(assert (=> b!2479378 m!2846953))

(declare-fun m!2847083 () Bool)

(assert (=> b!2479378 m!2847083))

(declare-fun m!2847085 () Bool)

(assert (=> b!2479378 m!2847085))

(declare-fun m!2847087 () Bool)

(assert (=> b!2479378 m!2847087))

(declare-fun m!2847089 () Bool)

(assert (=> b!2479379 m!2847089))

(assert (=> b!2479379 m!2847089))

(declare-fun m!2847091 () Bool)

(assert (=> b!2479379 m!2847091))

(declare-fun m!2847093 () Bool)

(assert (=> b!2479379 m!2847093))

(declare-fun m!2847095 () Bool)

(assert (=> b!2479381 m!2847095))

(declare-fun m!2847097 () Bool)

(assert (=> bm!151877 m!2847097))

(declare-fun m!2847099 () Bool)

(assert (=> bm!151875 m!2847099))

(assert (=> b!2479377 m!2847083))

(assert (=> b!2479377 m!2847083))

(declare-fun m!2847101 () Bool)

(assert (=> b!2479377 m!2847101))

(assert (=> b!2479377 m!2847101))

(declare-fun m!2847103 () Bool)

(assert (=> b!2479377 m!2847103))

(assert (=> bm!151876 m!2846949))

(assert (=> bm!151874 m!2846953))

(assert (=> d!712645 m!2846947))

(declare-fun m!2847105 () Bool)

(assert (=> d!712645 m!2847105))

(assert (=> d!712645 m!2846967))

(assert (=> d!712645 m!2846949))

(declare-fun m!2847107 () Bool)

(assert (=> d!712645 m!2847107))

(assert (=> d!712645 m!2846947))

(assert (=> d!712645 m!2846953))

(assert (=> d!712645 m!2847071))

(assert (=> d!712645 m!2847071))

(declare-fun m!2847109 () Bool)

(assert (=> d!712645 m!2847109))

(declare-fun m!2847111 () Bool)

(assert (=> b!2479375 m!2847111))

(declare-fun m!2847113 () Bool)

(assert (=> b!2479375 m!2847113))

(assert (=> b!2479375 m!2847113))

(declare-fun m!2847115 () Bool)

(assert (=> b!2479375 m!2847115))

(declare-fun m!2847117 () Bool)

(assert (=> b!2479375 m!2847117))

(declare-fun m!2847119 () Bool)

(assert (=> b!2479375 m!2847119))

(declare-fun m!2847121 () Bool)

(assert (=> b!2479375 m!2847121))

(assert (=> b!2479375 m!2847083))

(declare-fun m!2847123 () Bool)

(assert (=> b!2479375 m!2847123))

(assert (=> b!2479375 m!2846953))

(declare-fun m!2847125 () Bool)

(assert (=> bm!151872 m!2847125))

(assert (=> b!2479270 d!712645))

(declare-fun bs!467299 () Bool)

(declare-fun b!2479386 () Bool)

(assert (= bs!467299 (and b!2479386 b!2479273)))

(declare-fun lambda!93673 () Int)

(assert (=> bs!467299 (= lambda!93673 lambda!93655)))

(declare-fun bs!467300 () Bool)

(assert (= bs!467300 (and b!2479386 d!712617)))

(assert (=> bs!467300 (not (= lambda!93673 lambda!93658))))

(declare-fun bs!467301 () Bool)

(assert (= bs!467301 (and b!2479386 d!712625)))

(assert (=> bs!467301 (= lambda!93673 lambda!93667)))

(declare-fun bs!467302 () Bool)

(assert (= bs!467302 (and b!2479386 b!2479378)))

(assert (=> bs!467302 (= lambda!93673 lambda!93670)))

(declare-fun d!712647 () Bool)

(declare-fun res!1049463 () Bool)

(declare-fun e!1573529 () Bool)

(assert (=> d!712647 (=> (not res!1049463) (not e!1573529))))

(assert (=> d!712647 (= res!1049463 (valid!2530 (v!31335 (underlying!6848 thiss!42540))))))

(assert (=> d!712647 (= (valid!2529 thiss!42540) e!1573529)))

(declare-fun res!1049464 () Bool)

(assert (=> b!2479386 (=> (not res!1049464) (not e!1573529))))

(assert (=> b!2479386 (= res!1049464 (forall!5946 (toList!1514 (map!6113 (v!31335 (underlying!6848 thiss!42540)))) lambda!93673))))

(declare-fun b!2479387 () Bool)

(assert (=> b!2479387 (= e!1573529 (allKeysSameHashInMap!141 (map!6113 (v!31335 (underlying!6848 thiss!42540))) (hashF!5173 thiss!42540)))))

(assert (= (and d!712647 res!1049463) b!2479386))

(assert (= (and b!2479386 res!1049464) b!2479387))

(assert (=> d!712647 m!2847043))

(assert (=> b!2479386 m!2846953))

(declare-fun m!2847127 () Bool)

(assert (=> b!2479386 m!2847127))

(assert (=> b!2479387 m!2846953))

(assert (=> b!2479387 m!2846953))

(declare-fun m!2847129 () Bool)

(assert (=> b!2479387 m!2847129))

(assert (=> b!2479268 d!712647))

(declare-fun bs!467303 () Bool)

(declare-fun d!712649 () Bool)

(assert (= bs!467303 (and d!712649 b!2479273)))

(declare-fun lambda!93676 () Int)

(assert (=> bs!467303 (not (= lambda!93676 lambda!93655))))

(declare-fun bs!467304 () Bool)

(assert (= bs!467304 (and d!712649 b!2479378)))

(assert (=> bs!467304 (not (= lambda!93676 lambda!93670))))

(declare-fun bs!467305 () Bool)

(assert (= bs!467305 (and d!712649 d!712625)))

(assert (=> bs!467305 (not (= lambda!93676 lambda!93667))))

(declare-fun bs!467306 () Bool)

(assert (= bs!467306 (and d!712649 b!2479386)))

(assert (=> bs!467306 (not (= lambda!93676 lambda!93673))))

(declare-fun bs!467307 () Bool)

(assert (= bs!467307 (and d!712649 d!712617)))

(assert (=> bs!467307 (= lambda!93676 lambda!93658)))

(assert (=> d!712649 true))

(assert (=> d!712649 (= (allKeysSameHashInMap!141 lt!886267 (hashF!5173 (_2!16826 lt!886270))) (forall!5946 (toList!1514 lt!886267) lambda!93676))))

(declare-fun bs!467308 () Bool)

(assert (= bs!467308 d!712649))

(declare-fun m!2847131 () Bool)

(assert (=> bs!467308 m!2847131))

(assert (=> b!2479272 d!712649))

(declare-fun b!2479392 () Bool)

(declare-fun tp_is_empty!12159 () Bool)

(declare-fun e!1573532 () Bool)

(declare-fun tp!793478 () Bool)

(assert (=> b!2479392 (= e!1573532 (and tp_is_empty!12157 tp_is_empty!12159 tp!793478))))

(assert (=> b!2479266 (= tp!793473 e!1573532)))

(assert (= (and b!2479266 ((_ is Cons!29028) (zeroValue!3578 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540))))))) b!2479392))

(declare-fun tp!793479 () Bool)

(declare-fun b!2479393 () Bool)

(declare-fun e!1573533 () Bool)

(assert (=> b!2479393 (= e!1573533 (and tp_is_empty!12157 tp_is_empty!12159 tp!793479))))

(assert (=> b!2479266 (= tp!793470 e!1573533)))

(assert (= (and b!2479266 ((_ is Cons!29028) (minValue!3578 (v!31334 (underlying!6847 (v!31335 (underlying!6848 thiss!42540))))))) b!2479393))

(declare-fun tp!793487 () Bool)

(declare-fun b!2479401 () Bool)

(declare-fun e!1573538 () Bool)

(assert (=> b!2479401 (= e!1573538 (and tp_is_empty!12157 tp_is_empty!12159 tp!793487))))

(declare-fun condMapEmpty!15412 () Bool)

(declare-fun mapDefault!15412 () List!29128)

(assert (=> mapNonEmpty!15409 (= condMapEmpty!15412 (= mapRest!15409 ((as const (Array (_ BitVec 32) List!29128)) mapDefault!15412)))))

(declare-fun mapRes!15412 () Bool)

(assert (=> mapNonEmpty!15409 (= tp!793474 (and e!1573538 mapRes!15412))))

(declare-fun mapIsEmpty!15412 () Bool)

(assert (=> mapIsEmpty!15412 mapRes!15412))

(declare-fun mapNonEmpty!15412 () Bool)

(declare-fun tp!793488 () Bool)

(declare-fun e!1573539 () Bool)

(assert (=> mapNonEmpty!15412 (= mapRes!15412 (and tp!793488 e!1573539))))

(declare-fun mapKey!15412 () (_ BitVec 32))

(declare-fun mapValue!15412 () List!29128)

(declare-fun mapRest!15412 () (Array (_ BitVec 32) List!29128))

(assert (=> mapNonEmpty!15412 (= mapRest!15409 (store mapRest!15412 mapKey!15412 mapValue!15412))))

(declare-fun tp!793486 () Bool)

(declare-fun b!2479400 () Bool)

(assert (=> b!2479400 (= e!1573539 (and tp_is_empty!12157 tp_is_empty!12159 tp!793486))))

(assert (= (and mapNonEmpty!15409 condMapEmpty!15412) mapIsEmpty!15412))

(assert (= (and mapNonEmpty!15409 (not condMapEmpty!15412)) mapNonEmpty!15412))

(assert (= (and mapNonEmpty!15412 ((_ is Cons!29028) mapValue!15412)) b!2479400))

(assert (= (and mapNonEmpty!15409 ((_ is Cons!29028) mapDefault!15412)) b!2479401))

(declare-fun m!2847133 () Bool)

(assert (=> mapNonEmpty!15412 m!2847133))

(declare-fun e!1573540 () Bool)

(declare-fun tp!793489 () Bool)

(declare-fun b!2479402 () Bool)

(assert (=> b!2479402 (= e!1573540 (and tp_is_empty!12157 tp_is_empty!12159 tp!793489))))

(assert (=> mapNonEmpty!15409 (= tp!793471 e!1573540)))

(assert (= (and mapNonEmpty!15409 ((_ is Cons!29028) mapValue!15409)) b!2479402))

(declare-fun b!2479403 () Bool)

(declare-fun tp!793490 () Bool)

(declare-fun e!1573541 () Bool)

(assert (=> b!2479403 (= e!1573541 (and tp_is_empty!12157 tp_is_empty!12159 tp!793490))))

(assert (=> b!2479262 (= tp!793475 e!1573541)))

(assert (= (and b!2479262 ((_ is Cons!29028) mapDefault!15409)) b!2479403))

(declare-fun b_lambda!76057 () Bool)

(assert (= b_lambda!76055 (or b!2479273 b_lambda!76057)))

(declare-fun bs!467309 () Bool)

(declare-fun d!712651 () Bool)

(assert (= bs!467309 (and d!712651 b!2479273)))

(assert (=> bs!467309 (= (dynLambda!12456 lambda!93655 (tuple2!28573 lt!886281 lt!886277)) (noDuplicateKeys!59 (_2!16827 (tuple2!28573 lt!886281 lt!886277))))))

(declare-fun m!2847135 () Bool)

(assert (=> bs!467309 m!2847135))

(assert (=> d!712643 d!712651))

(declare-fun b_lambda!76059 () Bool)

(assert (= b_lambda!76051 (or b!2479273 b_lambda!76059)))

(declare-fun bs!467310 () Bool)

(declare-fun d!712653 () Bool)

(assert (= bs!467310 (and d!712653 b!2479273)))

(assert (=> bs!467310 (= (dynLambda!12456 lambda!93655 (h!34432 (toList!1514 lt!886267))) (noDuplicateKeys!59 (_2!16827 (h!34432 (toList!1514 lt!886267)))))))

(declare-fun m!2847137 () Bool)

(assert (=> bs!467310 m!2847137))

(assert (=> b!2479278 d!712653))

(declare-fun b_lambda!76061 () Bool)

(assert (= b_lambda!76053 (or (and b!2479266 b_free!72137) b_lambda!76061)))

(check-sat (not bs!467310) (not bm!151874) (not b!2479348) (not b!2479338) (not bm!151877) (not mapNonEmpty!15412) (not d!712617) (not bs!467309) (not b_next!72843) (not b!2479393) (not d!712635) (not d!712629) (not b!2479387) (not b!2479330) (not b!2479333) (not b!2479401) (not d!712607) (not bm!151873) (not d!712641) (not b!2479305) (not b_lambda!76061) (not b!2479328) (not b!2479386) (not d!712643) (not d!712627) (not b!2479291) (not b_next!72841) (not d!712623) (not d!712619) (not b_lambda!76057) (not bm!151875) (not d!712649) (not b!2479403) (not d!712615) (not b!2479392) (not tb!140369) (not bm!151858) (not b!2479344) (not b!2479377) (not bm!151872) (not d!712645) tp_is_empty!12157 b_and!188381 (not bm!151859) (not b!2479325) (not d!712647) (not b!2479402) (not d!712633) (not b!2479375) (not b!2479345) (not b!2479279) (not d!712625) tp_is_empty!12159 (not b!2479378) (not b!2479381) (not b!2479400) b_and!188379 (not bm!151876) (not b_lambda!76059) (not b!2479379) (not d!712621) (not b!2479290) (not d!712631) (not b!2479294) (not d!712637) (not b!2479331))
(check-sat b_and!188379 b_and!188381 (not b_next!72841) (not b_next!72843))
