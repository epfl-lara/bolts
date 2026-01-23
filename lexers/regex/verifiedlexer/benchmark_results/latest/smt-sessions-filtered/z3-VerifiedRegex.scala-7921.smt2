; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412880 () Bool)

(assert start!412880)

(declare-fun b_free!128037 () Bool)

(declare-fun b_next!128741 () Bool)

(assert (=> start!412880 (= b_free!128037 (not b_next!128741))))

(declare-fun tp!1321138 () Bool)

(declare-fun b_and!339369 () Bool)

(assert (=> start!412880 (= tp!1321138 b_and!339369)))

(declare-fun b!4300060 () Bool)

(declare-fun b_free!128039 () Bool)

(declare-fun b_next!128743 () Bool)

(assert (=> b!4300060 (= b_free!128039 (not b_next!128743))))

(declare-fun tp!1321142 () Bool)

(declare-fun b_and!339371 () Bool)

(assert (=> b!4300060 (= tp!1321142 b_and!339371)))

(declare-fun b!4300062 () Bool)

(declare-fun b_free!128041 () Bool)

(declare-fun b_next!128745 () Bool)

(assert (=> b!4300062 (= b_free!128041 (not b_next!128745))))

(declare-fun tp!1321144 () Bool)

(declare-fun b_and!339373 () Bool)

(assert (=> b!4300062 (= tp!1321144 b_and!339373)))

(declare-fun b!4300054 () Bool)

(declare-fun e!2672845 () Bool)

(declare-fun e!2672839 () Bool)

(assert (=> b!4300054 (= e!2672845 e!2672839)))

(declare-fun b!4300055 () Bool)

(declare-fun res!1762396 () Bool)

(declare-fun e!2672842 () Bool)

(assert (=> b!4300055 (=> (not res!1762396) (not e!2672842))))

(declare-datatypes ((K!9054 0))(
  ( (K!9055 (val!15501 Int)) )
))
(declare-datatypes ((V!9256 0))(
  ( (V!9257 (val!15502 Int)) )
))
(declare-datatypes ((tuple2!45906 0))(
  ( (tuple2!45907 (_1!26232 K!9054) (_2!26232 V!9256)) )
))
(declare-datatypes ((List!48065 0))(
  ( (Nil!47941) (Cons!47941 (h!53361 tuple2!45906) (t!354790 List!48065)) )
))
(declare-datatypes ((array!16198 0))(
  ( (array!16199 (arr!7231 (Array (_ BitVec 32) (_ BitVec 64))) (size!35270 (_ BitVec 32))) )
))
(declare-datatypes ((array!16200 0))(
  ( (array!16201 (arr!7232 (Array (_ BitVec 32) List!48065)) (size!35271 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9046 0))(
  ( (LongMapFixedSize!9047 (defaultEntry!4908 Int) (mask!13013 (_ BitVec 32)) (extraKeys!4772 (_ BitVec 32)) (zeroValue!4782 List!48065) (minValue!4782 List!48065) (_size!9089 (_ BitVec 32)) (_keys!4823 array!16198) (_values!4804 array!16200) (_vacant!4584 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17901 0))(
  ( (Cell!17902 (v!41911 LongMapFixedSize!9046)) )
))
(declare-datatypes ((MutLongMap!4523 0))(
  ( (LongMap!4523 (underlying!9275 Cell!17901)) (MutLongMapExt!4522 (__x!29594 Int)) )
))
(declare-datatypes ((Hashable!4439 0))(
  ( (HashableExt!4438 (__x!29595 Int)) )
))
(declare-datatypes ((Cell!17903 0))(
  ( (Cell!17904 (v!41912 MutLongMap!4523)) )
))
(declare-datatypes ((MutableMap!4429 0))(
  ( (MutableMapExt!4428 (__x!29596 Int)) (HashMap!4429 (underlying!9276 Cell!17903) (hashF!6471 Hashable!4439) (_size!9090 (_ BitVec 32)) (defaultValue!4600 Int)) )
))
(declare-fun hm!64 () MutableMap!4429)

(declare-fun valid!3504 (MutableMap!4429) Bool)

(assert (=> b!4300055 (= res!1762396 (valid!3504 hm!64))))

(declare-fun b!4300056 () Bool)

(declare-fun e!2672840 () Bool)

(declare-fun e!2672841 () Bool)

(assert (=> b!4300056 (= e!2672840 e!2672841)))

(declare-fun res!1762397 () Bool)

(assert (=> b!4300056 (=> (not res!1762397) (not e!2672841))))

(declare-datatypes ((tuple2!45908 0))(
  ( (tuple2!45909 (_1!26233 Bool) (_2!26233 MutableMap!4429)) )
))
(declare-fun lt!1522104 () tuple2!45908)

(assert (=> b!4300056 (= res!1762397 (_1!26233 lt!1522104))))

(declare-fun k0!1716 () K!9054)

(declare-fun v!9471 () V!9256)

(declare-fun update!334 (MutableMap!4429 K!9054 V!9256) tuple2!45908)

(assert (=> b!4300056 (= lt!1522104 (update!334 hm!64 k0!1716 v!9471))))

(declare-datatypes ((ListMap!1481 0))(
  ( (ListMap!1482 (toList!2197 List!48065)) )
))
(declare-fun lt!1522107 () ListMap!1481)

(declare-fun lt!1522103 () ListMap!1481)

(declare-fun lt!1522108 () tuple2!45906)

(declare-fun +!176 (ListMap!1481 tuple2!45906) ListMap!1481)

(assert (=> b!4300056 (= lt!1522107 (+!176 lt!1522103 lt!1522108))))

(declare-fun b!4300057 () Bool)

(declare-fun e!2672835 () Bool)

(assert (=> b!4300057 (= e!2672841 e!2672835)))

(declare-fun res!1762394 () Bool)

(assert (=> b!4300057 (=> (not res!1762394) (not e!2672835))))

(declare-fun lt!1522106 () ListMap!1481)

(declare-fun eq!102 (ListMap!1481 ListMap!1481) Bool)

(assert (=> b!4300057 (= res!1762394 (eq!102 lt!1522106 lt!1522107))))

(declare-fun map!9900 (MutableMap!4429) ListMap!1481)

(assert (=> b!4300057 (= lt!1522106 (map!9900 (_2!26233 lt!1522104)))))

(declare-fun mapIsEmpty!20316 () Bool)

(declare-fun mapRes!20316 () Bool)

(assert (=> mapIsEmpty!20316 mapRes!20316))

(declare-fun b!4300058 () Bool)

(declare-fun e!2672843 () Bool)

(declare-fun invariantList!542 (List!48065) Bool)

(assert (=> b!4300058 (= e!2672843 (invariantList!542 (toList!2197 lt!1522106)))))

(declare-fun b!4300059 () Bool)

(declare-fun e!2672844 () Bool)

(assert (=> b!4300059 (= e!2672844 e!2672840)))

(declare-fun res!1762393 () Bool)

(assert (=> b!4300059 (=> (not res!1762393) (not e!2672840))))

(declare-fun p!6034 () Int)

(declare-fun dynLambda!20360 (Int tuple2!45906) Bool)

(assert (=> b!4300059 (= res!1762393 (dynLambda!20360 p!6034 lt!1522108))))

(assert (=> b!4300059 (= lt!1522108 (tuple2!45907 k0!1716 v!9471))))

(declare-fun e!2672833 () Bool)

(declare-fun e!2672837 () Bool)

(assert (=> b!4300060 (= e!2672833 (and e!2672837 tp!1321142))))

(declare-fun b!4300061 () Bool)

(assert (=> b!4300061 (= e!2672835 (not e!2672843))))

(declare-fun res!1762399 () Bool)

(assert (=> b!4300061 (=> res!1762399 e!2672843)))

(declare-fun forall!8632 (List!48065 Int) Bool)

(assert (=> b!4300061 (= res!1762399 (not (forall!8632 (toList!2197 lt!1522107) p!6034)))))

(declare-fun insertNoDuplicatedKeys!25 (List!48065 K!9054 V!9256) List!48065)

(assert (=> b!4300061 (forall!8632 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66839 0))(
  ( (Unit!66840) )
))
(declare-fun lt!1522109 () Unit!66839)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!12 (List!48065 K!9054 V!9256 Int) Unit!66839)

(assert (=> b!4300061 (= lt!1522109 (lemmaInsertNoDuplicatedKeysPreservesForall!12 (toList!2197 lt!1522103) k0!1716 v!9471 p!6034))))

(declare-fun res!1762395 () Bool)

(assert (=> start!412880 (=> (not res!1762395) (not e!2672842))))

(get-info :version)

(assert (=> start!412880 (= res!1762395 ((_ is HashMap!4429) hm!64))))

(assert (=> start!412880 e!2672842))

(assert (=> start!412880 e!2672833))

(declare-fun tp_is_empty!23265 () Bool)

(assert (=> start!412880 tp_is_empty!23265))

(declare-fun tp_is_empty!23267 () Bool)

(assert (=> start!412880 tp_is_empty!23267))

(assert (=> start!412880 tp!1321138))

(declare-fun e!2672838 () Bool)

(declare-fun tp!1321139 () Bool)

(declare-fun tp!1321140 () Bool)

(declare-fun array_inv!5179 (array!16198) Bool)

(declare-fun array_inv!5180 (array!16200) Bool)

(assert (=> b!4300062 (= e!2672839 (and tp!1321144 tp!1321140 tp!1321139 (array_inv!5179 (_keys!4823 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) (array_inv!5180 (_values!4804 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) e!2672838))))

(declare-fun mapNonEmpty!20316 () Bool)

(declare-fun tp!1321141 () Bool)

(declare-fun tp!1321143 () Bool)

(assert (=> mapNonEmpty!20316 (= mapRes!20316 (and tp!1321141 tp!1321143))))

(declare-fun mapKey!20316 () (_ BitVec 32))

(declare-fun mapValue!20316 () List!48065)

(declare-fun mapRest!20316 () (Array (_ BitVec 32) List!48065))

(assert (=> mapNonEmpty!20316 (= (arr!7232 (_values!4804 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) (store mapRest!20316 mapKey!20316 mapValue!20316))))

(declare-fun b!4300063 () Bool)

(declare-fun e!2672836 () Bool)

(declare-fun lt!1522105 () MutLongMap!4523)

(assert (=> b!4300063 (= e!2672837 (and e!2672836 ((_ is LongMap!4523) lt!1522105)))))

(assert (=> b!4300063 (= lt!1522105 (v!41912 (underlying!9276 hm!64)))))

(declare-fun b!4300064 () Bool)

(assert (=> b!4300064 (= e!2672842 e!2672844)))

(declare-fun res!1762398 () Bool)

(assert (=> b!4300064 (=> (not res!1762398) (not e!2672844))))

(assert (=> b!4300064 (= res!1762398 (forall!8632 (toList!2197 lt!1522103) p!6034))))

(assert (=> b!4300064 (= lt!1522103 (map!9900 hm!64))))

(declare-fun b!4300065 () Bool)

(declare-fun tp!1321137 () Bool)

(assert (=> b!4300065 (= e!2672838 (and tp!1321137 mapRes!20316))))

(declare-fun condMapEmpty!20316 () Bool)

(declare-fun mapDefault!20316 () List!48065)

(assert (=> b!4300065 (= condMapEmpty!20316 (= (arr!7232 (_values!4804 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) ((as const (Array (_ BitVec 32) List!48065)) mapDefault!20316)))))

(declare-fun b!4300066 () Bool)

(assert (=> b!4300066 (= e!2672836 e!2672845)))

(assert (= (and start!412880 res!1762395) b!4300055))

(assert (= (and b!4300055 res!1762396) b!4300064))

(assert (= (and b!4300064 res!1762398) b!4300059))

(assert (= (and b!4300059 res!1762393) b!4300056))

(assert (= (and b!4300056 res!1762397) b!4300057))

(assert (= (and b!4300057 res!1762394) b!4300061))

(assert (= (and b!4300061 (not res!1762399)) b!4300058))

(assert (= (and b!4300065 condMapEmpty!20316) mapIsEmpty!20316))

(assert (= (and b!4300065 (not condMapEmpty!20316)) mapNonEmpty!20316))

(assert (= b!4300062 b!4300065))

(assert (= b!4300054 b!4300062))

(assert (= b!4300066 b!4300054))

(assert (= (and b!4300063 ((_ is LongMap!4523) (v!41912 (underlying!9276 hm!64)))) b!4300066))

(assert (= b!4300060 b!4300063))

(assert (= (and start!412880 ((_ is HashMap!4429) hm!64)) b!4300060))

(declare-fun b_lambda!126333 () Bool)

(assert (=> (not b_lambda!126333) (not b!4300059)))

(declare-fun t!354789 () Bool)

(declare-fun tb!257209 () Bool)

(assert (=> (and start!412880 (= p!6034 p!6034) t!354789) tb!257209))

(declare-fun result!314494 () Bool)

(assert (=> tb!257209 (= result!314494 true)))

(assert (=> b!4300059 t!354789))

(declare-fun b_and!339375 () Bool)

(assert (= b_and!339369 (and (=> t!354789 result!314494) b_and!339375)))

(declare-fun m!4892261 () Bool)

(assert (=> b!4300062 m!4892261))

(declare-fun m!4892263 () Bool)

(assert (=> b!4300062 m!4892263))

(declare-fun m!4892265 () Bool)

(assert (=> b!4300056 m!4892265))

(declare-fun m!4892267 () Bool)

(assert (=> b!4300056 m!4892267))

(declare-fun m!4892269 () Bool)

(assert (=> b!4300058 m!4892269))

(declare-fun m!4892271 () Bool)

(assert (=> b!4300064 m!4892271))

(declare-fun m!4892273 () Bool)

(assert (=> b!4300064 m!4892273))

(declare-fun m!4892275 () Bool)

(assert (=> b!4300059 m!4892275))

(declare-fun m!4892277 () Bool)

(assert (=> b!4300055 m!4892277))

(declare-fun m!4892279 () Bool)

(assert (=> b!4300061 m!4892279))

(declare-fun m!4892281 () Bool)

(assert (=> b!4300061 m!4892281))

(assert (=> b!4300061 m!4892281))

(declare-fun m!4892283 () Bool)

(assert (=> b!4300061 m!4892283))

(declare-fun m!4892285 () Bool)

(assert (=> b!4300061 m!4892285))

(declare-fun m!4892287 () Bool)

(assert (=> b!4300057 m!4892287))

(declare-fun m!4892289 () Bool)

(assert (=> b!4300057 m!4892289))

(declare-fun m!4892291 () Bool)

(assert (=> mapNonEmpty!20316 m!4892291))

(check-sat (not b!4300061) (not mapNonEmpty!20316) (not b!4300064) b_and!339375 (not b_next!128743) (not b!4300055) (not b_next!128741) (not b!4300056) b_and!339373 (not b!4300058) tp_is_empty!23267 (not b!4300065) (not b!4300057) b_and!339371 (not b!4300062) (not b_lambda!126333) tp_is_empty!23265 (not b_next!128745))
(check-sat b_and!339375 (not b_next!128743) (not b_next!128741) b_and!339371 b_and!339373 (not b_next!128745))
(get-model)

(declare-fun b_lambda!126335 () Bool)

(assert (= b_lambda!126333 (or (and start!412880 b_free!128037) b_lambda!126335)))

(check-sat (not b!4300061) (not mapNonEmpty!20316) (not b!4300064) b_and!339375 (not b_next!128743) (not b!4300055) (not b_next!128741) (not b!4300056) (not b!4300058) tp_is_empty!23267 (not b!4300065) (not b!4300057) b_and!339371 (not b!4300062) (not b_lambda!126335) b_and!339373 tp_is_empty!23265 (not b_next!128745))
(check-sat b_and!339375 (not b_next!128743) (not b_next!128741) b_and!339371 b_and!339373 (not b_next!128745))
(get-model)

(declare-fun d!1266602 () Bool)

(declare-fun res!1762404 () Bool)

(declare-fun e!2672848 () Bool)

(assert (=> d!1266602 (=> (not res!1762404) (not e!2672848))))

(declare-fun valid!3505 (MutLongMap!4523) Bool)

(assert (=> d!1266602 (= res!1762404 (valid!3505 (v!41912 (underlying!9276 hm!64))))))

(assert (=> d!1266602 (= (valid!3504 hm!64) e!2672848)))

(declare-fun b!4300071 () Bool)

(declare-fun res!1762405 () Bool)

(assert (=> b!4300071 (=> (not res!1762405) (not e!2672848))))

(declare-fun lambda!131979 () Int)

(declare-datatypes ((tuple2!45910 0))(
  ( (tuple2!45911 (_1!26234 (_ BitVec 64)) (_2!26234 List!48065)) )
))
(declare-datatypes ((List!48066 0))(
  ( (Nil!47942) (Cons!47942 (h!53362 tuple2!45910) (t!354797 List!48066)) )
))
(declare-fun forall!8633 (List!48066 Int) Bool)

(declare-datatypes ((ListLongMap!807 0))(
  ( (ListLongMap!808 (toList!2198 List!48066)) )
))
(declare-fun map!9901 (MutLongMap!4523) ListLongMap!807)

(assert (=> b!4300071 (= res!1762405 (forall!8633 (toList!2198 (map!9901 (v!41912 (underlying!9276 hm!64)))) lambda!131979))))

(declare-fun b!4300072 () Bool)

(declare-fun allKeysSameHashInMap!272 (ListLongMap!807 Hashable!4439) Bool)

(assert (=> b!4300072 (= e!2672848 (allKeysSameHashInMap!272 (map!9901 (v!41912 (underlying!9276 hm!64))) (hashF!6471 hm!64)))))

(assert (= (and d!1266602 res!1762404) b!4300071))

(assert (= (and b!4300071 res!1762405) b!4300072))

(declare-fun m!4892293 () Bool)

(assert (=> d!1266602 m!4892293))

(declare-fun m!4892295 () Bool)

(assert (=> b!4300071 m!4892295))

(declare-fun m!4892297 () Bool)

(assert (=> b!4300071 m!4892297))

(assert (=> b!4300072 m!4892295))

(assert (=> b!4300072 m!4892295))

(declare-fun m!4892299 () Bool)

(assert (=> b!4300072 m!4892299))

(assert (=> b!4300055 d!1266602))

(declare-fun d!1266604 () Bool)

(declare-fun res!1762410 () Bool)

(declare-fun e!2672853 () Bool)

(assert (=> d!1266604 (=> res!1762410 e!2672853)))

(assert (=> d!1266604 (= res!1762410 ((_ is Nil!47941) (toList!2197 lt!1522103)))))

(assert (=> d!1266604 (= (forall!8632 (toList!2197 lt!1522103) p!6034) e!2672853)))

(declare-fun b!4300077 () Bool)

(declare-fun e!2672854 () Bool)

(assert (=> b!4300077 (= e!2672853 e!2672854)))

(declare-fun res!1762411 () Bool)

(assert (=> b!4300077 (=> (not res!1762411) (not e!2672854))))

(assert (=> b!4300077 (= res!1762411 (dynLambda!20360 p!6034 (h!53361 (toList!2197 lt!1522103))))))

(declare-fun b!4300078 () Bool)

(assert (=> b!4300078 (= e!2672854 (forall!8632 (t!354790 (toList!2197 lt!1522103)) p!6034))))

(assert (= (and d!1266604 (not res!1762410)) b!4300077))

(assert (= (and b!4300077 res!1762411) b!4300078))

(declare-fun b_lambda!126337 () Bool)

(assert (=> (not b_lambda!126337) (not b!4300077)))

(declare-fun t!354792 () Bool)

(declare-fun tb!257211 () Bool)

(assert (=> (and start!412880 (= p!6034 p!6034) t!354792) tb!257211))

(declare-fun result!314496 () Bool)

(assert (=> tb!257211 (= result!314496 true)))

(assert (=> b!4300077 t!354792))

(declare-fun b_and!339377 () Bool)

(assert (= b_and!339375 (and (=> t!354792 result!314496) b_and!339377)))

(declare-fun m!4892301 () Bool)

(assert (=> b!4300077 m!4892301))

(declare-fun m!4892303 () Bool)

(assert (=> b!4300078 m!4892303))

(assert (=> b!4300064 d!1266604))

(declare-fun d!1266606 () Bool)

(declare-fun lt!1522112 () ListMap!1481)

(assert (=> d!1266606 (invariantList!542 (toList!2197 lt!1522112))))

(declare-fun extractMap!272 (List!48066) ListMap!1481)

(assert (=> d!1266606 (= lt!1522112 (extractMap!272 (toList!2198 (map!9901 (v!41912 (underlying!9276 hm!64))))))))

(assert (=> d!1266606 (valid!3504 hm!64)))

(assert (=> d!1266606 (= (map!9900 hm!64) lt!1522112)))

(declare-fun bs!603971 () Bool)

(assert (= bs!603971 d!1266606))

(declare-fun m!4892305 () Bool)

(assert (=> bs!603971 m!4892305))

(assert (=> bs!603971 m!4892295))

(declare-fun m!4892307 () Bool)

(assert (=> bs!603971 m!4892307))

(assert (=> bs!603971 m!4892277))

(assert (=> b!4300064 d!1266606))

(declare-fun d!1266608 () Bool)

(declare-fun res!1762412 () Bool)

(declare-fun e!2672855 () Bool)

(assert (=> d!1266608 (=> res!1762412 e!2672855)))

(assert (=> d!1266608 (= res!1762412 ((_ is Nil!47941) (toList!2197 lt!1522107)))))

(assert (=> d!1266608 (= (forall!8632 (toList!2197 lt!1522107) p!6034) e!2672855)))

(declare-fun b!4300079 () Bool)

(declare-fun e!2672856 () Bool)

(assert (=> b!4300079 (= e!2672855 e!2672856)))

(declare-fun res!1762413 () Bool)

(assert (=> b!4300079 (=> (not res!1762413) (not e!2672856))))

(assert (=> b!4300079 (= res!1762413 (dynLambda!20360 p!6034 (h!53361 (toList!2197 lt!1522107))))))

(declare-fun b!4300080 () Bool)

(assert (=> b!4300080 (= e!2672856 (forall!8632 (t!354790 (toList!2197 lt!1522107)) p!6034))))

(assert (= (and d!1266608 (not res!1762412)) b!4300079))

(assert (= (and b!4300079 res!1762413) b!4300080))

(declare-fun b_lambda!126339 () Bool)

(assert (=> (not b_lambda!126339) (not b!4300079)))

(declare-fun t!354794 () Bool)

(declare-fun tb!257213 () Bool)

(assert (=> (and start!412880 (= p!6034 p!6034) t!354794) tb!257213))

(declare-fun result!314498 () Bool)

(assert (=> tb!257213 (= result!314498 true)))

(assert (=> b!4300079 t!354794))

(declare-fun b_and!339379 () Bool)

(assert (= b_and!339377 (and (=> t!354794 result!314498) b_and!339379)))

(declare-fun m!4892309 () Bool)

(assert (=> b!4300079 m!4892309))

(declare-fun m!4892311 () Bool)

(assert (=> b!4300080 m!4892311))

(assert (=> b!4300061 d!1266608))

(declare-fun d!1266610 () Bool)

(declare-fun res!1762414 () Bool)

(declare-fun e!2672857 () Bool)

(assert (=> d!1266610 (=> res!1762414 e!2672857)))

(assert (=> d!1266610 (= res!1762414 ((_ is Nil!47941) (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471)))))

(assert (=> d!1266610 (= (forall!8632 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471) p!6034) e!2672857)))

(declare-fun b!4300081 () Bool)

(declare-fun e!2672858 () Bool)

(assert (=> b!4300081 (= e!2672857 e!2672858)))

(declare-fun res!1762415 () Bool)

(assert (=> b!4300081 (=> (not res!1762415) (not e!2672858))))

(assert (=> b!4300081 (= res!1762415 (dynLambda!20360 p!6034 (h!53361 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471))))))

(declare-fun b!4300082 () Bool)

(assert (=> b!4300082 (= e!2672858 (forall!8632 (t!354790 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266610 (not res!1762414)) b!4300081))

(assert (= (and b!4300081 res!1762415) b!4300082))

(declare-fun b_lambda!126341 () Bool)

(assert (=> (not b_lambda!126341) (not b!4300081)))

(declare-fun t!354796 () Bool)

(declare-fun tb!257215 () Bool)

(assert (=> (and start!412880 (= p!6034 p!6034) t!354796) tb!257215))

(declare-fun result!314500 () Bool)

(assert (=> tb!257215 (= result!314500 true)))

(assert (=> b!4300081 t!354796))

(declare-fun b_and!339381 () Bool)

(assert (= b_and!339379 (and (=> t!354796 result!314500) b_and!339381)))

(declare-fun m!4892313 () Bool)

(assert (=> b!4300081 m!4892313))

(declare-fun m!4892315 () Bool)

(assert (=> b!4300082 m!4892315))

(assert (=> b!4300061 d!1266610))

(declare-fun b!4300111 () Bool)

(declare-fun e!2672877 () List!48065)

(assert (=> b!4300111 (= e!2672877 Nil!47941)))

(declare-fun b!4300112 () Bool)

(declare-fun res!1762426 () Bool)

(declare-fun e!2672879 () Bool)

(assert (=> b!4300112 (=> (not res!1762426) (not e!2672879))))

(declare-fun lt!1522140 () List!48065)

(declare-fun contains!9865 (List!48065 tuple2!45906) Bool)

(assert (=> b!4300112 (= res!1762426 (contains!9865 lt!1522140 (tuple2!45907 k0!1716 v!9471)))))

(declare-fun b!4300113 () Bool)

(declare-fun e!2672878 () List!48065)

(declare-fun call!296181 () List!48065)

(assert (=> b!4300113 (= e!2672878 call!296181)))

(declare-fun bm!296176 () Bool)

(declare-fun call!296184 () List!48065)

(assert (=> bm!296176 (= call!296181 call!296184)))

(declare-fun d!1266612 () Bool)

(assert (=> d!1266612 e!2672879))

(declare-fun res!1762427 () Bool)

(assert (=> d!1266612 (=> (not res!1762427) (not e!2672879))))

(assert (=> d!1266612 (= res!1762427 (invariantList!542 lt!1522140))))

(declare-fun e!2672876 () List!48065)

(assert (=> d!1266612 (= lt!1522140 e!2672876)))

(declare-fun c!731442 () Bool)

(assert (=> d!1266612 (= c!731442 (and ((_ is Cons!47941) (toList!2197 lt!1522103)) (= (_1!26232 (h!53361 (toList!2197 lt!1522103))) k0!1716)))))

(assert (=> d!1266612 (invariantList!542 (toList!2197 lt!1522103))))

(assert (=> d!1266612 (= (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471) lt!1522140)))

(declare-fun b!4300114 () Bool)

(declare-fun e!2672875 () Bool)

(declare-fun containsKey!234 (List!48065 K!9054) Bool)

(assert (=> b!4300114 (= e!2672875 (not (containsKey!234 (toList!2197 lt!1522103) k0!1716)))))

(declare-fun b!4300115 () Bool)

(assert (=> b!4300115 (= e!2672877 (insertNoDuplicatedKeys!25 (t!354790 (toList!2197 lt!1522103)) k0!1716 v!9471))))

(declare-fun b!4300116 () Bool)

(declare-fun e!2672874 () Unit!66839)

(declare-fun Unit!66841 () Unit!66839)

(assert (=> b!4300116 (= e!2672874 Unit!66841)))

(declare-fun c!731446 () Bool)

(declare-fun bm!296177 () Bool)

(declare-fun c!731443 () Bool)

(declare-fun $colon$colon!655 (List!48065 tuple2!45906) List!48065)

(assert (=> bm!296177 (= call!296184 ($colon$colon!655 (ite c!731442 (t!354790 (toList!2197 lt!1522103)) (ite c!731446 (toList!2197 lt!1522103) e!2672877)) (ite (or c!731442 c!731446) (tuple2!45907 k0!1716 v!9471) (ite c!731443 (h!53361 (toList!2197 lt!1522103)) (tuple2!45907 k0!1716 v!9471)))))))

(declare-datatypes ((List!48067 0))(
  ( (Nil!47943) (Cons!47943 (h!53363 K!9054) (t!354798 List!48067)) )
))
(declare-fun call!296182 () List!48067)

(declare-fun lt!1522136 () List!48065)

(declare-fun bm!296178 () Bool)

(declare-fun getKeysList!32 (List!48065) List!48067)

(assert (=> bm!296178 (= call!296182 (getKeysList!32 (ite c!731442 (toList!2197 lt!1522103) lt!1522136)))))

(declare-fun b!4300117 () Bool)

(assert (=> b!4300117 false))

(declare-fun lt!1522135 () Unit!66839)

(declare-fun lt!1522139 () Unit!66839)

(assert (=> b!4300117 (= lt!1522135 lt!1522139)))

(assert (=> b!4300117 (containsKey!234 (t!354790 (toList!2197 lt!1522103)) (_1!26232 (h!53361 (toList!2197 lt!1522103))))))

(declare-fun lemmaInGetKeysListThenContainsKey!29 (List!48065 K!9054) Unit!66839)

(assert (=> b!4300117 (= lt!1522139 (lemmaInGetKeysListThenContainsKey!29 (t!354790 (toList!2197 lt!1522103)) (_1!26232 (h!53361 (toList!2197 lt!1522103)))))))

(declare-fun lt!1522141 () Unit!66839)

(declare-fun lt!1522144 () Unit!66839)

(assert (=> b!4300117 (= lt!1522141 lt!1522144)))

(declare-fun contains!9866 (List!48067 K!9054) Bool)

(assert (=> b!4300117 (contains!9866 call!296182 (_1!26232 (h!53361 (toList!2197 lt!1522103))))))

(declare-fun lemmaInListThenGetKeysListContains!29 (List!48065 K!9054) Unit!66839)

(assert (=> b!4300117 (= lt!1522144 (lemmaInListThenGetKeysListContains!29 lt!1522136 (_1!26232 (h!53361 (toList!2197 lt!1522103)))))))

(assert (=> b!4300117 (= lt!1522136 (insertNoDuplicatedKeys!25 (t!354790 (toList!2197 lt!1522103)) k0!1716 v!9471))))

(declare-fun Unit!66842 () Unit!66839)

(assert (=> b!4300117 (= e!2672874 Unit!66842)))

(declare-fun b!4300118 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7532 (List!48067) (InoxSet K!9054))

(assert (=> b!4300118 (= e!2672879 (= (content!7532 (getKeysList!32 lt!1522140)) ((_ map or) (content!7532 (getKeysList!32 (toList!2197 lt!1522103))) (store ((as const (Array K!9054 Bool)) false) k0!1716 true))))))

(declare-fun b!4300119 () Bool)

(declare-fun e!2672873 () List!48065)

(declare-fun lt!1522137 () List!48065)

(assert (=> b!4300119 (= e!2672873 lt!1522137)))

(declare-fun call!296183 () List!48065)

(assert (=> b!4300119 (= lt!1522137 call!296183)))

(declare-fun c!731445 () Bool)

(assert (=> b!4300119 (= c!731445 (containsKey!234 (insertNoDuplicatedKeys!25 (t!354790 (toList!2197 lt!1522103)) k0!1716 v!9471) (_1!26232 (h!53361 (toList!2197 lt!1522103)))))))

(declare-fun lt!1522143 () Unit!66839)

(assert (=> b!4300119 (= lt!1522143 e!2672874)))

(declare-fun b!4300120 () Bool)

(assert (=> b!4300120 (= c!731443 ((_ is Cons!47941) (toList!2197 lt!1522103)))))

(assert (=> b!4300120 (= e!2672878 e!2672873)))

(declare-fun bm!296179 () Bool)

(assert (=> bm!296179 (= call!296183 call!296181)))

(declare-fun c!731444 () Bool)

(assert (=> bm!296179 (= c!731444 c!731443)))

(declare-fun b!4300121 () Bool)

(declare-fun res!1762425 () Bool)

(assert (=> b!4300121 (=> (not res!1762425) (not e!2672879))))

(assert (=> b!4300121 (= res!1762425 (containsKey!234 lt!1522140 k0!1716))))

(declare-fun b!4300122 () Bool)

(assert (=> b!4300122 (= e!2672876 call!296184)))

(declare-fun lt!1522142 () List!48067)

(assert (=> b!4300122 (= lt!1522142 call!296182)))

(declare-fun lt!1522138 () Unit!66839)

(declare-fun lemmaSubseqRefl!59 (List!48067) Unit!66839)

(assert (=> b!4300122 (= lt!1522138 (lemmaSubseqRefl!59 lt!1522142))))

(declare-fun subseq!575 (List!48067 List!48067) Bool)

(assert (=> b!4300122 (subseq!575 lt!1522142 lt!1522142)))

(declare-fun lt!1522145 () Unit!66839)

(assert (=> b!4300122 (= lt!1522145 lt!1522138)))

(declare-fun b!4300123 () Bool)

(assert (=> b!4300123 (= e!2672876 e!2672878)))

(declare-fun res!1762424 () Bool)

(assert (=> b!4300123 (= res!1762424 ((_ is Cons!47941) (toList!2197 lt!1522103)))))

(assert (=> b!4300123 (=> (not res!1762424) (not e!2672875))))

(assert (=> b!4300123 (= c!731446 e!2672875)))

(declare-fun b!4300124 () Bool)

(assert (=> b!4300124 (= e!2672873 call!296183)))

(assert (= (and d!1266612 c!731442) b!4300122))

(assert (= (and d!1266612 (not c!731442)) b!4300123))

(assert (= (and b!4300123 res!1762424) b!4300114))

(assert (= (and b!4300123 c!731446) b!4300113))

(assert (= (and b!4300123 (not c!731446)) b!4300120))

(assert (= (and b!4300120 c!731443) b!4300119))

(assert (= (and b!4300120 (not c!731443)) b!4300124))

(assert (= (and b!4300119 c!731445) b!4300117))

(assert (= (and b!4300119 (not c!731445)) b!4300116))

(assert (= (or b!4300119 b!4300124) bm!296179))

(assert (= (and bm!296179 c!731444) b!4300115))

(assert (= (and bm!296179 (not c!731444)) b!4300111))

(assert (= (or b!4300113 bm!296179) bm!296176))

(assert (= (or b!4300122 b!4300117) bm!296178))

(assert (= (or b!4300122 bm!296176) bm!296177))

(assert (= (and d!1266612 res!1762427) b!4300121))

(assert (= (and b!4300121 res!1762425) b!4300112))

(assert (= (and b!4300112 res!1762426) b!4300118))

(declare-fun m!4892317 () Bool)

(assert (=> b!4300114 m!4892317))

(declare-fun m!4892319 () Bool)

(assert (=> b!4300118 m!4892319))

(declare-fun m!4892321 () Bool)

(assert (=> b!4300118 m!4892321))

(declare-fun m!4892323 () Bool)

(assert (=> b!4300118 m!4892323))

(assert (=> b!4300118 m!4892323))

(declare-fun m!4892325 () Bool)

(assert (=> b!4300118 m!4892325))

(assert (=> b!4300118 m!4892319))

(declare-fun m!4892327 () Bool)

(assert (=> b!4300118 m!4892327))

(declare-fun m!4892329 () Bool)

(assert (=> b!4300117 m!4892329))

(declare-fun m!4892331 () Bool)

(assert (=> b!4300117 m!4892331))

(declare-fun m!4892333 () Bool)

(assert (=> b!4300117 m!4892333))

(declare-fun m!4892335 () Bool)

(assert (=> b!4300117 m!4892335))

(declare-fun m!4892337 () Bool)

(assert (=> b!4300117 m!4892337))

(declare-fun m!4892339 () Bool)

(assert (=> b!4300112 m!4892339))

(declare-fun m!4892341 () Bool)

(assert (=> d!1266612 m!4892341))

(declare-fun m!4892343 () Bool)

(assert (=> d!1266612 m!4892343))

(declare-fun m!4892345 () Bool)

(assert (=> b!4300121 m!4892345))

(declare-fun m!4892347 () Bool)

(assert (=> bm!296177 m!4892347))

(declare-fun m!4892349 () Bool)

(assert (=> b!4300122 m!4892349))

(declare-fun m!4892351 () Bool)

(assert (=> b!4300122 m!4892351))

(assert (=> b!4300115 m!4892329))

(declare-fun m!4892353 () Bool)

(assert (=> bm!296178 m!4892353))

(assert (=> b!4300119 m!4892329))

(assert (=> b!4300119 m!4892329))

(declare-fun m!4892355 () Bool)

(assert (=> b!4300119 m!4892355))

(assert (=> b!4300061 d!1266612))

(declare-fun d!1266614 () Bool)

(assert (=> d!1266614 (forall!8632 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) k0!1716 v!9471) p!6034)))

(declare-fun lt!1522148 () Unit!66839)

(declare-fun choose!26169 (List!48065 K!9054 V!9256 Int) Unit!66839)

(assert (=> d!1266614 (= lt!1522148 (choose!26169 (toList!2197 lt!1522103) k0!1716 v!9471 p!6034))))

(assert (=> d!1266614 (invariantList!542 (toList!2197 lt!1522103))))

(assert (=> d!1266614 (= (lemmaInsertNoDuplicatedKeysPreservesForall!12 (toList!2197 lt!1522103) k0!1716 v!9471 p!6034) lt!1522148)))

(declare-fun bs!603972 () Bool)

(assert (= bs!603972 d!1266614))

(assert (=> bs!603972 m!4892281))

(assert (=> bs!603972 m!4892281))

(assert (=> bs!603972 m!4892283))

(declare-fun m!4892357 () Bool)

(assert (=> bs!603972 m!4892357))

(assert (=> bs!603972 m!4892343))

(assert (=> b!4300061 d!1266614))

(declare-fun bs!603973 () Bool)

(declare-fun b!4300164 () Bool)

(assert (= bs!603973 (and b!4300164 b!4300071)))

(declare-fun lambda!131988 () Int)

(assert (=> bs!603973 (= lambda!131988 lambda!131979)))

(declare-fun bs!603974 () Bool)

(declare-fun b!4300174 () Bool)

(assert (= bs!603974 (and b!4300174 b!4300071)))

(declare-fun lambda!131989 () Int)

(assert (=> bs!603974 (= lambda!131989 lambda!131979)))

(declare-fun bs!603975 () Bool)

(assert (= bs!603975 (and b!4300174 b!4300164)))

(assert (=> bs!603975 (= lambda!131989 lambda!131988)))

(declare-fun d!1266616 () Bool)

(declare-fun e!2672909 () Bool)

(assert (=> d!1266616 e!2672909))

(declare-fun res!1762442 () Bool)

(assert (=> d!1266616 (=> (not res!1762442) (not e!2672909))))

(declare-fun lt!1522293 () tuple2!45908)

(assert (=> d!1266616 (= res!1762442 ((_ is HashMap!4429) (_2!26233 lt!1522293)))))

(declare-fun lt!1522268 () tuple2!45908)

(assert (=> d!1266616 (= lt!1522293 (tuple2!45909 (_1!26233 lt!1522268) (_2!26233 lt!1522268)))))

(declare-fun e!2672905 () tuple2!45908)

(assert (=> d!1266616 (= lt!1522268 e!2672905)))

(declare-fun c!731467 () Bool)

(declare-fun contains!9867 (MutableMap!4429 K!9054) Bool)

(assert (=> d!1266616 (= c!731467 (contains!9867 hm!64 k0!1716))))

(declare-fun lt!1522271 () ListLongMap!807)

(assert (=> d!1266616 (= lt!1522271 (map!9901 (v!41912 (underlying!9276 hm!64))))))

(declare-fun lt!1522276 () ListMap!1481)

(assert (=> d!1266616 (= lt!1522276 (map!9900 hm!64))))

(assert (=> d!1266616 (valid!3504 hm!64)))

(assert (=> d!1266616 (= (update!334 hm!64 k0!1716 v!9471) lt!1522293)))

(declare-fun b!4300163 () Bool)

(declare-fun e!2672908 () Bool)

(declare-fun call!296265 () Bool)

(assert (=> b!4300163 (= e!2672908 call!296265)))

(declare-datatypes ((tuple2!45912 0))(
  ( (tuple2!45913 (_1!26235 Bool) (_2!26235 MutLongMap!4523)) )
))
(declare-fun lt!1522287 () tuple2!45912)

(declare-fun lt!1522281 () tuple2!45912)

(declare-fun call!296264 () ListLongMap!807)

(declare-fun bm!296242 () Bool)

(assert (=> bm!296242 (= call!296264 (map!9901 (ite c!731467 (_2!26235 lt!1522287) (_2!26235 lt!1522281))))))

(declare-fun call!296248 () Bool)

(assert (=> b!4300164 call!296248))

(declare-fun lt!1522265 () Unit!66839)

(declare-fun Unit!66843 () Unit!66839)

(assert (=> b!4300164 (= lt!1522265 Unit!66843)))

(declare-fun call!296272 () Bool)

(assert (=> b!4300164 call!296272))

(declare-fun lt!1522297 () Unit!66839)

(declare-fun Unit!66844 () Unit!66839)

(assert (=> b!4300164 (= lt!1522297 Unit!66844)))

(declare-fun call!296269 () Bool)

(assert (=> b!4300164 call!296269))

(declare-fun lt!1522309 () Unit!66839)

(declare-fun lt!1522270 () Unit!66839)

(assert (=> b!4300164 (= lt!1522309 lt!1522270)))

(declare-fun call!296276 () Bool)

(declare-fun call!296254 () Bool)

(assert (=> b!4300164 (= call!296276 call!296254)))

(declare-fun call!296263 () Unit!66839)

(assert (=> b!4300164 (= lt!1522270 call!296263)))

(declare-fun lt!1522305 () ListMap!1481)

(declare-fun call!296252 () ListMap!1481)

(assert (=> b!4300164 (= lt!1522305 call!296252)))

(declare-fun lt!1522303 () ListMap!1481)

(declare-fun call!296258 () ListMap!1481)

(assert (=> b!4300164 (= lt!1522303 call!296258)))

(declare-fun lt!1522301 () Unit!66839)

(declare-fun lt!1522300 () Unit!66839)

(assert (=> b!4300164 (= lt!1522301 lt!1522300)))

(declare-fun call!296277 () Bool)

(assert (=> b!4300164 call!296277))

(declare-fun lt!1522267 () List!48065)

(declare-fun lt!1522312 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!36 (ListLongMap!807 (_ BitVec 64) List!48065 K!9054 V!9256 Hashable!4439) Unit!66839)

(assert (=> b!4300164 (= lt!1522300 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!36 lt!1522271 lt!1522312 lt!1522267 k0!1716 v!9471 (hashF!6471 hm!64)))))

(declare-fun lt!1522266 () Unit!66839)

(declare-fun lt!1522274 () Unit!66839)

(assert (=> b!4300164 (= lt!1522266 lt!1522274)))

(declare-fun e!2672903 () Bool)

(assert (=> b!4300164 e!2672903))

(declare-fun res!1762438 () Bool)

(assert (=> b!4300164 (=> (not res!1762438) (not e!2672903))))

(declare-fun call!296249 () Bool)

(assert (=> b!4300164 (= res!1762438 call!296249)))

(declare-fun lt!1522292 () ListLongMap!807)

(declare-fun call!296253 () ListLongMap!807)

(assert (=> b!4300164 (= lt!1522292 call!296253)))

(declare-fun call!296260 () Unit!66839)

(assert (=> b!4300164 (= lt!1522274 call!296260)))

(declare-fun lt!1522264 () Unit!66839)

(declare-fun Unit!66845 () Unit!66839)

(assert (=> b!4300164 (= lt!1522264 Unit!66845)))

(declare-fun noDuplicateKeys!152 (List!48065) Bool)

(assert (=> b!4300164 (noDuplicateKeys!152 lt!1522267)))

(declare-fun lt!1522306 () Unit!66839)

(declare-fun Unit!66846 () Unit!66839)

(assert (=> b!4300164 (= lt!1522306 Unit!66846)))

(declare-fun call!296275 () List!48065)

(declare-fun containsKey!235 (List!48065 K!9054) Bool)

(assert (=> b!4300164 (not (containsKey!235 call!296275 k0!1716))))

(declare-fun lt!1522283 () Unit!66839)

(declare-fun Unit!66847 () Unit!66839)

(assert (=> b!4300164 (= lt!1522283 Unit!66847)))

(declare-fun lt!1522299 () Unit!66839)

(declare-fun lt!1522286 () Unit!66839)

(assert (=> b!4300164 (= lt!1522299 lt!1522286)))

(assert (=> b!4300164 (noDuplicateKeys!152 call!296275)))

(declare-fun lt!1522289 () List!48065)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!129 (List!48065 K!9054) Unit!66839)

(assert (=> b!4300164 (= lt!1522286 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!129 lt!1522289 k0!1716))))

(declare-fun lt!1522295 () Unit!66839)

(declare-fun lt!1522294 () Unit!66839)

(assert (=> b!4300164 (= lt!1522295 lt!1522294)))

(declare-fun call!296257 () Bool)

(assert (=> b!4300164 call!296257))

(declare-fun call!296259 () Unit!66839)

(assert (=> b!4300164 (= lt!1522294 call!296259)))

(declare-fun lt!1522288 () Unit!66839)

(declare-fun lt!1522291 () Unit!66839)

(assert (=> b!4300164 (= lt!1522288 lt!1522291)))

(declare-fun call!296247 () Bool)

(assert (=> b!4300164 call!296247))

(declare-fun call!296250 () Unit!66839)

(assert (=> b!4300164 (= lt!1522291 call!296250)))

(declare-fun e!2672906 () Unit!66839)

(declare-fun Unit!66848 () Unit!66839)

(assert (=> b!4300164 (= e!2672906 Unit!66848)))

(declare-fun b!4300165 () Bool)

(assert (=> b!4300165 (= e!2672903 call!296265)))

(declare-fun b!4300166 () Bool)

(declare-fun e!2672902 () Bool)

(declare-fun call!296262 () Bool)

(assert (=> b!4300166 (= e!2672902 call!296262)))

(declare-fun b!4300167 () Bool)

(declare-fun e!2672911 () Bool)

(assert (=> b!4300167 (= e!2672911 call!296262)))

(declare-fun bm!296243 () Bool)

(declare-fun lt!1522296 () ListMap!1481)

(declare-fun lt!1522308 () ListMap!1481)

(declare-fun lemmaEquivalentThenSameContains!36 (ListMap!1481 ListMap!1481 K!9054) Unit!66839)

(assert (=> bm!296243 (= call!296263 (lemmaEquivalentThenSameContains!36 (ite c!731467 lt!1522303 lt!1522308) (ite c!731467 lt!1522305 lt!1522296) k0!1716))))

(declare-fun b!4300168 () Bool)

(declare-fun e!2672904 () Unit!66839)

(declare-fun lt!1522259 () Unit!66839)

(assert (=> b!4300168 (= e!2672904 lt!1522259)))

(declare-fun lt!1522261 () Unit!66839)

(assert (=> b!4300168 (= lt!1522261 call!296250)))

(assert (=> b!4300168 call!296247))

(declare-fun lt!1522277 () Unit!66839)

(assert (=> b!4300168 (= lt!1522277 lt!1522261)))

(assert (=> b!4300168 (= lt!1522259 call!296259)))

(assert (=> b!4300168 call!296257))

(declare-fun b!4300169 () Bool)

(declare-fun e!2672907 () List!48065)

(assert (=> b!4300169 (= e!2672907 Nil!47941)))

(declare-fun lt!1522310 () List!48065)

(declare-fun lt!1522282 () (_ BitVec 64))

(declare-fun bm!296244 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!111 (List!48065 K!9054 (_ BitVec 64) Hashable!4439) Unit!66839)

(assert (=> bm!296244 (= call!296259 (lemmaRemovePairForKeyPreservesHash!111 (ite c!731467 lt!1522289 lt!1522310) k0!1716 (ite c!731467 lt!1522312 lt!1522282) (hashF!6471 hm!64)))))

(declare-fun call!296270 () ListMap!1481)

(declare-fun call!296251 () ListMap!1481)

(declare-fun bm!296245 () Bool)

(assert (=> bm!296245 (= call!296270 (+!176 call!296251 (tuple2!45907 k0!1716 v!9471)))))

(declare-fun bm!296246 () Bool)

(assert (=> bm!296246 (= call!296272 (allKeysSameHashInMap!272 call!296264 (hashF!6471 hm!64)))))

(declare-fun bm!296247 () Bool)

(declare-fun lt!1522311 () ListLongMap!807)

(assert (=> bm!296247 (= call!296249 (forall!8633 (ite c!731467 (toList!2198 lt!1522292) (toList!2198 lt!1522311)) (ite c!731467 lambda!131988 lambda!131989)))))

(declare-fun call!296267 () ListMap!1481)

(declare-fun bm!296248 () Bool)

(declare-fun contains!9868 (ListMap!1481 K!9054) Bool)

(assert (=> bm!296248 (= call!296254 (contains!9868 (ite c!731467 lt!1522305 call!296267) k0!1716))))

(declare-fun bm!296249 () Bool)

(declare-fun removePairForKey!141 (List!48065 K!9054) List!48065)

(assert (=> bm!296249 (= call!296275 (removePairForKey!141 (ite c!731467 lt!1522289 lt!1522310) k0!1716))))

(declare-fun b!4300170 () Bool)

(assert (=> b!4300170 (= e!2672909 e!2672911)))

(declare-fun c!731464 () Bool)

(assert (=> b!4300170 (= c!731464 (_1!26233 lt!1522293))))

(declare-fun bm!296250 () Bool)

(declare-fun call!296273 () ListMap!1481)

(assert (=> bm!296250 (= call!296277 (eq!102 call!296273 call!296270))))

(declare-fun call!296261 () ListMap!1481)

(declare-fun b!4300171 () Bool)

(declare-fun e!2672910 () ListMap!1481)

(assert (=> b!4300171 (= e!2672910 (+!176 call!296261 (tuple2!45907 k0!1716 v!9471)))))

(declare-fun bm!296251 () Bool)

(assert (=> bm!296251 (= call!296273 (extractMap!272 (toList!2198 call!296253)))))

(declare-fun b!4300172 () Bool)

(assert (=> b!4300172 (= call!296267 lt!1522276)))

(declare-fun lt!1522269 () Unit!66839)

(declare-fun Unit!66849 () Unit!66839)

(assert (=> b!4300172 (= lt!1522269 Unit!66849)))

(declare-fun call!296255 () Bool)

(assert (=> b!4300172 call!296255))

(declare-fun e!2672912 () Unit!66839)

(declare-fun Unit!66850 () Unit!66839)

(assert (=> b!4300172 (= e!2672912 Unit!66850)))

(declare-fun b!4300173 () Bool)

(declare-fun lt!1522280 () MutableMap!4429)

(declare-datatypes ((tuple2!45914 0))(
  ( (tuple2!45915 (_1!26236 Unit!66839) (_2!26236 MutableMap!4429)) )
))
(declare-fun Unit!66851 () Unit!66839)

(declare-fun Unit!66852 () Unit!66839)

(assert (=> b!4300173 (= e!2672905 (tuple2!45909 (_1!26235 lt!1522287) (_2!26236 (ite false (tuple2!45915 Unit!66851 (HashMap!4429 (Cell!17904 (_2!26235 lt!1522287)) (hashF!6471 hm!64) (bvadd (_size!9090 hm!64) #b00000000000000000000000000000001) (defaultValue!4600 hm!64))) (tuple2!45915 Unit!66852 lt!1522280)))))))

(declare-fun call!296256 () (_ BitVec 64))

(assert (=> b!4300173 (= lt!1522312 call!296256)))

(declare-fun call!296268 () List!48065)

(assert (=> b!4300173 (= lt!1522289 call!296268)))

(assert (=> b!4300173 (= lt!1522267 (Cons!47941 (tuple2!45907 k0!1716 v!9471) call!296275))))

(declare-fun call!296266 () tuple2!45912)

(assert (=> b!4300173 (= lt!1522287 call!296266)))

(assert (=> b!4300173 (= lt!1522280 (HashMap!4429 (Cell!17904 (_2!26235 lt!1522287)) (hashF!6471 hm!64) (_size!9090 hm!64) (defaultValue!4600 hm!64)))))

(declare-fun c!731465 () Bool)

(assert (=> b!4300173 (= c!731465 (_1!26235 lt!1522287))))

(declare-fun lt!1522304 () Unit!66839)

(assert (=> b!4300173 (= lt!1522304 e!2672906)))

(declare-fun bm!296252 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!115 (List!48066 (_ BitVec 64) List!48065 Hashable!4439) Unit!66839)

(assert (=> bm!296252 (= call!296250 (lemmaInLongMapAllKeySameHashThenForTuple!115 (toList!2198 lt!1522271) (ite c!731467 lt!1522312 lt!1522282) (ite c!731467 lt!1522289 lt!1522310) (hashF!6471 hm!64)))))

(declare-fun bm!296253 () Bool)

(assert (=> bm!296253 (= call!296251 (extractMap!272 (toList!2198 lt!1522271)))))

(declare-fun bm!296254 () Bool)

(declare-fun lt!1522272 () List!48065)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!102 (ListLongMap!807 (_ BitVec 64) List!48065 Hashable!4439) Unit!66839)

(assert (=> bm!296254 (= call!296260 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!102 lt!1522271 (ite c!731467 lt!1522312 lt!1522282) (ite c!731467 lt!1522267 lt!1522272) (hashF!6471 hm!64)))))

(declare-fun bm!296255 () Bool)

(assert (=> bm!296255 (= call!296248 (eq!102 (ite c!731467 call!296258 call!296267) call!296252))))

(declare-fun bm!296256 () Bool)

(declare-fun update!335 (MutLongMap!4523 (_ BitVec 64) List!48065) tuple2!45912)

(assert (=> bm!296256 (= call!296266 (update!335 (v!41912 (underlying!9276 hm!64)) (ite c!731467 lt!1522312 lt!1522282) (ite c!731467 lt!1522267 lt!1522272)))))

(declare-fun bm!296257 () Bool)

(declare-fun allKeysSameHash!124 (List!48065 (_ BitVec 64) Hashable!4439) Bool)

(assert (=> bm!296257 (= call!296247 (allKeysSameHash!124 (ite c!731467 lt!1522289 lt!1522310) (ite c!731467 lt!1522312 lt!1522282) (hashF!6471 hm!64)))))

(declare-fun lt!1522262 () MutableMap!4429)

(declare-fun bm!296258 () Bool)

(assert (=> bm!296258 (= call!296255 (valid!3504 (ite c!731467 lt!1522280 lt!1522262)))))

(assert (=> b!4300174 call!296254))

(declare-fun lt!1522302 () Unit!66839)

(declare-fun Unit!66853 () Unit!66839)

(assert (=> b!4300174 (= lt!1522302 Unit!66853)))

(assert (=> b!4300174 (contains!9868 call!296252 k0!1716)))

(declare-fun lt!1522285 () Unit!66839)

(declare-fun lt!1522273 () Unit!66839)

(assert (=> b!4300174 (= lt!1522285 lt!1522273)))

(assert (=> b!4300174 (= (contains!9868 lt!1522308 k0!1716) call!296276)))

(assert (=> b!4300174 (= lt!1522273 call!296263)))

(assert (=> b!4300174 (= lt!1522296 call!296252)))

(assert (=> b!4300174 (= lt!1522308 call!296267)))

(declare-fun lt!1522278 () Unit!66839)

(declare-fun Unit!66854 () Unit!66839)

(assert (=> b!4300174 (= lt!1522278 Unit!66854)))

(assert (=> b!4300174 call!296248))

(declare-fun lt!1522313 () Unit!66839)

(declare-fun Unit!66855 () Unit!66839)

(assert (=> b!4300174 (= lt!1522313 Unit!66855)))

(assert (=> b!4300174 call!296272))

(declare-fun lt!1522284 () Unit!66839)

(declare-fun Unit!66856 () Unit!66839)

(assert (=> b!4300174 (= lt!1522284 Unit!66856)))

(assert (=> b!4300174 call!296269))

(declare-fun lt!1522298 () Unit!66839)

(declare-fun lt!1522260 () Unit!66839)

(assert (=> b!4300174 (= lt!1522298 lt!1522260)))

(assert (=> b!4300174 call!296277))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!36 (ListLongMap!807 (_ BitVec 64) List!48065 K!9054 V!9256 Hashable!4439) Unit!66839)

(assert (=> b!4300174 (= lt!1522260 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!36 lt!1522271 lt!1522282 lt!1522272 k0!1716 v!9471 (hashF!6471 hm!64)))))

(declare-fun lt!1522279 () Unit!66839)

(declare-fun lt!1522307 () Unit!66839)

(assert (=> b!4300174 (= lt!1522279 lt!1522307)))

(assert (=> b!4300174 e!2672908))

(declare-fun res!1762440 () Bool)

(assert (=> b!4300174 (=> (not res!1762440) (not e!2672908))))

(assert (=> b!4300174 (= res!1762440 call!296249)))

(assert (=> b!4300174 (= lt!1522311 call!296253)))

(assert (=> b!4300174 (= lt!1522307 call!296260)))

(declare-fun lt!1522275 () Unit!66839)

(assert (=> b!4300174 (= lt!1522275 e!2672904)))

(declare-fun c!731462 () Bool)

(declare-fun isEmpty!28048 (List!48065) Bool)

(assert (=> b!4300174 (= c!731462 (not (isEmpty!28048 lt!1522310)))))

(declare-fun Unit!66857 () Unit!66839)

(assert (=> b!4300174 (= e!2672912 Unit!66857)))

(declare-fun bm!296259 () Bool)

(assert (=> bm!296259 (= call!296252 (+!176 lt!1522276 (tuple2!45907 k0!1716 v!9471)))))

(declare-fun call!296274 () ListMap!1481)

(declare-fun bm!296260 () Bool)

(assert (=> bm!296260 (= call!296274 (map!9900 (ite c!731467 lt!1522280 lt!1522262)))))

(declare-fun bm!296261 () Bool)

(declare-fun +!177 (ListLongMap!807 tuple2!45910) ListLongMap!807)

(assert (=> bm!296261 (= call!296253 (+!177 lt!1522271 (ite c!731467 (tuple2!45911 lt!1522312 lt!1522267) (tuple2!45911 lt!1522282 lt!1522272))))))

(declare-fun b!4300175 () Bool)

(assert (=> b!4300175 (= e!2672910 call!296261)))

(declare-fun bm!296262 () Bool)

(assert (=> bm!296262 (= call!296267 call!296274)))

(declare-fun b!4300176 () Bool)

(assert (=> b!4300176 (= e!2672907 call!296268)))

(declare-fun b!4300177 () Bool)

(declare-fun res!1762441 () Bool)

(assert (=> b!4300177 (=> (not res!1762441) (not e!2672909))))

(assert (=> b!4300177 (= res!1762441 (valid!3504 (_2!26233 lt!1522293)))))

(declare-fun b!4300178 () Bool)

(declare-fun Unit!66858 () Unit!66839)

(assert (=> b!4300178 (= e!2672904 Unit!66858)))

(declare-fun bm!296263 () Bool)

(assert (=> bm!296263 (= call!296257 (allKeysSameHash!124 call!296275 (ite c!731467 lt!1522312 lt!1522282) (hashF!6471 hm!64)))))

(declare-fun bm!296264 () Bool)

(declare-fun call!296271 () ListMap!1481)

(assert (=> bm!296264 (= call!296271 (map!9900 (_2!26233 lt!1522293)))))

(declare-fun bm!296265 () Bool)

(declare-fun apply!10877 (MutLongMap!4523 (_ BitVec 64)) List!48065)

(assert (=> bm!296265 (= call!296268 (apply!10877 (v!41912 (underlying!9276 hm!64)) (ite c!731467 lt!1522312 lt!1522282)))))

(declare-fun bm!296266 () Bool)

(assert (=> bm!296266 (= call!296276 (contains!9868 (ite c!731467 lt!1522303 lt!1522296) k0!1716))))

(declare-fun b!4300179 () Bool)

(assert (=> b!4300179 (= e!2672911 e!2672902)))

(declare-fun res!1762439 () Bool)

(assert (=> b!4300179 (= res!1762439 (contains!9868 call!296271 k0!1716))))

(assert (=> b!4300179 (=> (not res!1762439) (not e!2672902))))

(declare-fun bm!296267 () Bool)

(assert (=> bm!296267 (= call!296269 (forall!8633 (toList!2198 call!296264) (ite c!731467 lambda!131988 lambda!131989)))))

(declare-fun b!4300180 () Bool)

(declare-fun Unit!66859 () Unit!66839)

(declare-fun Unit!66860 () Unit!66839)

(assert (=> b!4300180 (= e!2672905 (tuple2!45909 (_1!26235 lt!1522281) (_2!26236 (ite (_1!26235 lt!1522281) (tuple2!45915 Unit!66859 (HashMap!4429 (Cell!17904 (_2!26235 lt!1522281)) (hashF!6471 hm!64) (bvadd (_size!9090 hm!64) #b00000000000000000000000000000001) (defaultValue!4600 hm!64))) (tuple2!45915 Unit!66860 lt!1522262)))))))

(assert (=> b!4300180 (= lt!1522282 call!296256)))

(declare-fun c!731461 () Bool)

(declare-fun contains!9869 (MutLongMap!4523 (_ BitVec 64)) Bool)

(assert (=> b!4300180 (= c!731461 (contains!9869 (v!41912 (underlying!9276 hm!64)) lt!1522282))))

(assert (=> b!4300180 (= lt!1522310 e!2672907)))

(assert (=> b!4300180 (= lt!1522272 (Cons!47941 (tuple2!45907 k0!1716 v!9471) lt!1522310))))

(assert (=> b!4300180 (= lt!1522281 call!296266)))

(assert (=> b!4300180 (= lt!1522262 (HashMap!4429 (Cell!17904 (_2!26235 lt!1522281)) (hashF!6471 hm!64) (_size!9090 hm!64) (defaultValue!4600 hm!64)))))

(declare-fun c!731466 () Bool)

(assert (=> b!4300180 (= c!731466 (_1!26235 lt!1522281))))

(declare-fun lt!1522290 () Unit!66839)

(assert (=> b!4300180 (= lt!1522290 e!2672912)))

(declare-fun bm!296268 () Bool)

(assert (=> bm!296268 (= call!296258 call!296274)))

(declare-fun bm!296269 () Bool)

(declare-fun hash!840 (Hashable!4439 K!9054) (_ BitVec 64))

(assert (=> bm!296269 (= call!296256 (hash!840 (hashF!6471 hm!64) k0!1716))))

(declare-fun b!4300181 () Bool)

(assert (=> b!4300181 (= call!296258 lt!1522276)))

(declare-fun lt!1522263 () Unit!66839)

(declare-fun Unit!66861 () Unit!66839)

(assert (=> b!4300181 (= lt!1522263 Unit!66861)))

(assert (=> b!4300181 call!296255))

(declare-fun Unit!66862 () Unit!66839)

(assert (=> b!4300181 (= e!2672906 Unit!66862)))

(declare-fun bm!296270 () Bool)

(assert (=> bm!296270 (= call!296262 (eq!102 call!296271 e!2672910))))

(declare-fun c!731463 () Bool)

(assert (=> bm!296270 (= c!731463 c!731464)))

(declare-fun bm!296271 () Bool)

(assert (=> bm!296271 (= call!296261 (map!9900 hm!64))))

(declare-fun bm!296272 () Bool)

(assert (=> bm!296272 (= call!296265 (allKeysSameHashInMap!272 (ite c!731467 lt!1522292 lt!1522311) (hashF!6471 hm!64)))))

(assert (= (and d!1266616 c!731467) b!4300173))

(assert (= (and d!1266616 (not c!731467)) b!4300180))

(assert (= (and b!4300173 c!731465) b!4300164))

(assert (= (and b!4300173 (not c!731465)) b!4300181))

(assert (= (and b!4300164 res!1762438) b!4300165))

(assert (= (or b!4300164 b!4300181) bm!296268))

(assert (= (and b!4300180 c!731461) b!4300176))

(assert (= (and b!4300180 (not c!731461)) b!4300169))

(assert (= (and b!4300180 c!731466) b!4300174))

(assert (= (and b!4300180 (not c!731466)) b!4300172))

(assert (= (and b!4300174 c!731462) b!4300168))

(assert (= (and b!4300174 (not c!731462)) b!4300178))

(assert (= (and b!4300174 res!1762440) b!4300163))

(assert (= (or b!4300174 b!4300172) bm!296262))

(assert (= (or bm!296268 bm!296262) bm!296260))

(assert (= (or b!4300164 b!4300168) bm!296257))

(assert (= (or b!4300164 b!4300174) bm!296242))

(assert (= (or b!4300173 b!4300180) bm!296269))

(assert (= (or b!4300164 b!4300174) bm!296253))

(assert (= (or b!4300173 b!4300176) bm!296265))

(assert (= (or b!4300164 b!4300168) bm!296252))

(assert (= (or b!4300164 b!4300174) bm!296259))

(assert (= (or b!4300181 b!4300172) bm!296258))

(assert (= (or b!4300164 b!4300174) bm!296247))

(assert (= (or b!4300164 b!4300174) bm!296248))

(assert (= (or b!4300165 b!4300163) bm!296272))

(assert (= (or b!4300164 b!4300174) bm!296243))

(assert (= (or b!4300164 b!4300174) bm!296254))

(assert (= (or b!4300173 b!4300180) bm!296256))

(assert (= (or b!4300164 b!4300174) bm!296261))

(assert (= (or b!4300164 b!4300173 b!4300168) bm!296249))

(assert (= (or b!4300164 b!4300174) bm!296266))

(assert (= (or b!4300164 b!4300168) bm!296244))

(assert (= (or b!4300164 b!4300174) bm!296267))

(assert (= (or b!4300164 b!4300174) bm!296246))

(assert (= (or b!4300164 b!4300174) bm!296255))

(assert (= (or b!4300164 b!4300174) bm!296245))

(assert (= (or b!4300164 b!4300174) bm!296251))

(assert (= (or b!4300164 b!4300168) bm!296263))

(assert (= (or b!4300164 b!4300174) bm!296250))

(assert (= (and d!1266616 res!1762442) b!4300177))

(assert (= (and b!4300177 res!1762441) b!4300170))

(assert (= (and b!4300170 c!731464) b!4300179))

(assert (= (and b!4300170 (not c!731464)) b!4300167))

(assert (= (and b!4300179 res!1762439) b!4300166))

(assert (= (or b!4300166 b!4300167) bm!296271))

(assert (= (or b!4300179 b!4300166 b!4300167) bm!296264))

(assert (= (or b!4300166 b!4300167) bm!296270))

(assert (= (and bm!296270 c!731463) b!4300171))

(assert (= (and bm!296270 (not c!731463)) b!4300175))

(declare-fun m!4892359 () Bool)

(assert (=> bm!296251 m!4892359))

(declare-fun m!4892361 () Bool)

(assert (=> bm!296253 m!4892361))

(declare-fun m!4892363 () Bool)

(assert (=> bm!296260 m!4892363))

(declare-fun m!4892365 () Bool)

(assert (=> bm!296265 m!4892365))

(declare-fun m!4892367 () Bool)

(assert (=> bm!296244 m!4892367))

(declare-fun m!4892369 () Bool)

(assert (=> bm!296270 m!4892369))

(declare-fun m!4892371 () Bool)

(assert (=> bm!296246 m!4892371))

(declare-fun m!4892373 () Bool)

(assert (=> bm!296248 m!4892373))

(declare-fun m!4892375 () Bool)

(assert (=> bm!296258 m!4892375))

(declare-fun m!4892377 () Bool)

(assert (=> bm!296249 m!4892377))

(declare-fun m!4892379 () Bool)

(assert (=> bm!296263 m!4892379))

(declare-fun m!4892381 () Bool)

(assert (=> d!1266616 m!4892381))

(assert (=> d!1266616 m!4892295))

(assert (=> d!1266616 m!4892273))

(assert (=> d!1266616 m!4892277))

(declare-fun m!4892383 () Bool)

(assert (=> b!4300164 m!4892383))

(declare-fun m!4892385 () Bool)

(assert (=> b!4300164 m!4892385))

(declare-fun m!4892387 () Bool)

(assert (=> b!4300164 m!4892387))

(declare-fun m!4892389 () Bool)

(assert (=> b!4300164 m!4892389))

(declare-fun m!4892391 () Bool)

(assert (=> b!4300164 m!4892391))

(declare-fun m!4892393 () Bool)

(assert (=> b!4300180 m!4892393))

(declare-fun m!4892395 () Bool)

(assert (=> bm!296252 m!4892395))

(declare-fun m!4892397 () Bool)

(assert (=> b!4300174 m!4892397))

(declare-fun m!4892399 () Bool)

(assert (=> b!4300174 m!4892399))

(declare-fun m!4892401 () Bool)

(assert (=> b!4300174 m!4892401))

(declare-fun m!4892403 () Bool)

(assert (=> b!4300174 m!4892403))

(assert (=> bm!296271 m!4892273))

(declare-fun m!4892405 () Bool)

(assert (=> bm!296261 m!4892405))

(declare-fun m!4892407 () Bool)

(assert (=> bm!296256 m!4892407))

(declare-fun m!4892409 () Bool)

(assert (=> bm!296267 m!4892409))

(declare-fun m!4892411 () Bool)

(assert (=> bm!296245 m!4892411))

(declare-fun m!4892413 () Bool)

(assert (=> bm!296247 m!4892413))

(declare-fun m!4892415 () Bool)

(assert (=> bm!296257 m!4892415))

(declare-fun m!4892417 () Bool)

(assert (=> b!4300179 m!4892417))

(declare-fun m!4892419 () Bool)

(assert (=> bm!296264 m!4892419))

(declare-fun m!4892421 () Bool)

(assert (=> bm!296243 m!4892421))

(declare-fun m!4892423 () Bool)

(assert (=> bm!296269 m!4892423))

(declare-fun m!4892425 () Bool)

(assert (=> bm!296259 m!4892425))

(declare-fun m!4892427 () Bool)

(assert (=> bm!296266 m!4892427))

(declare-fun m!4892429 () Bool)

(assert (=> bm!296254 m!4892429))

(declare-fun m!4892431 () Bool)

(assert (=> bm!296255 m!4892431))

(declare-fun m!4892433 () Bool)

(assert (=> bm!296272 m!4892433))

(declare-fun m!4892435 () Bool)

(assert (=> b!4300171 m!4892435))

(declare-fun m!4892437 () Bool)

(assert (=> bm!296242 m!4892437))

(declare-fun m!4892439 () Bool)

(assert (=> b!4300177 m!4892439))

(declare-fun m!4892441 () Bool)

(assert (=> bm!296250 m!4892441))

(assert (=> b!4300056 d!1266616))

(declare-fun d!1266618 () Bool)

(declare-fun e!2672915 () Bool)

(assert (=> d!1266618 e!2672915))

(declare-fun res!1762448 () Bool)

(assert (=> d!1266618 (=> (not res!1762448) (not e!2672915))))

(declare-fun lt!1522325 () ListMap!1481)

(assert (=> d!1266618 (= res!1762448 (contains!9868 lt!1522325 (_1!26232 lt!1522108)))))

(declare-fun lt!1522324 () List!48065)

(assert (=> d!1266618 (= lt!1522325 (ListMap!1482 lt!1522324))))

(declare-fun lt!1522322 () Unit!66839)

(declare-fun lt!1522323 () Unit!66839)

(assert (=> d!1266618 (= lt!1522322 lt!1522323)))

(declare-datatypes ((Option!10164 0))(
  ( (None!10163) (Some!10163 (v!41914 V!9256)) )
))
(declare-fun getValueByKey!213 (List!48065 K!9054) Option!10164)

(assert (=> d!1266618 (= (getValueByKey!213 lt!1522324 (_1!26232 lt!1522108)) (Some!10163 (_2!26232 lt!1522108)))))

(declare-fun lemmaContainsTupThenGetReturnValue!44 (List!48065 K!9054 V!9256) Unit!66839)

(assert (=> d!1266618 (= lt!1522323 (lemmaContainsTupThenGetReturnValue!44 lt!1522324 (_1!26232 lt!1522108) (_2!26232 lt!1522108)))))

(assert (=> d!1266618 (= lt!1522324 (insertNoDuplicatedKeys!25 (toList!2197 lt!1522103) (_1!26232 lt!1522108) (_2!26232 lt!1522108)))))

(assert (=> d!1266618 (= (+!176 lt!1522103 lt!1522108) lt!1522325)))

(declare-fun b!4300186 () Bool)

(declare-fun res!1762447 () Bool)

(assert (=> b!4300186 (=> (not res!1762447) (not e!2672915))))

(assert (=> b!4300186 (= res!1762447 (= (getValueByKey!213 (toList!2197 lt!1522325) (_1!26232 lt!1522108)) (Some!10163 (_2!26232 lt!1522108))))))

(declare-fun b!4300187 () Bool)

(assert (=> b!4300187 (= e!2672915 (contains!9865 (toList!2197 lt!1522325) lt!1522108))))

(assert (= (and d!1266618 res!1762448) b!4300186))

(assert (= (and b!4300186 res!1762447) b!4300187))

(declare-fun m!4892443 () Bool)

(assert (=> d!1266618 m!4892443))

(declare-fun m!4892445 () Bool)

(assert (=> d!1266618 m!4892445))

(declare-fun m!4892447 () Bool)

(assert (=> d!1266618 m!4892447))

(declare-fun m!4892449 () Bool)

(assert (=> d!1266618 m!4892449))

(declare-fun m!4892451 () Bool)

(assert (=> b!4300186 m!4892451))

(declare-fun m!4892453 () Bool)

(assert (=> b!4300187 m!4892453))

(assert (=> b!4300056 d!1266618))

(declare-fun d!1266620 () Bool)

(assert (=> d!1266620 (= (array_inv!5179 (_keys!4823 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) (bvsge (size!35270 (_keys!4823 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300062 d!1266620))

(declare-fun d!1266622 () Bool)

(assert (=> d!1266622 (= (array_inv!5180 (_values!4804 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) (bvsge (size!35271 (_values!4804 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300062 d!1266622))

(declare-fun d!1266624 () Bool)

(declare-fun content!7533 (List!48065) (InoxSet tuple2!45906))

(assert (=> d!1266624 (= (eq!102 lt!1522106 lt!1522107) (= (content!7533 (toList!2197 lt!1522106)) (content!7533 (toList!2197 lt!1522107))))))

(declare-fun bs!603976 () Bool)

(assert (= bs!603976 d!1266624))

(declare-fun m!4892455 () Bool)

(assert (=> bs!603976 m!4892455))

(declare-fun m!4892457 () Bool)

(assert (=> bs!603976 m!4892457))

(assert (=> b!4300057 d!1266624))

(declare-fun d!1266626 () Bool)

(declare-fun lt!1522326 () ListMap!1481)

(assert (=> d!1266626 (invariantList!542 (toList!2197 lt!1522326))))

(assert (=> d!1266626 (= lt!1522326 (extractMap!272 (toList!2198 (map!9901 (v!41912 (underlying!9276 (_2!26233 lt!1522104)))))))))

(assert (=> d!1266626 (valid!3504 (_2!26233 lt!1522104))))

(assert (=> d!1266626 (= (map!9900 (_2!26233 lt!1522104)) lt!1522326)))

(declare-fun bs!603977 () Bool)

(assert (= bs!603977 d!1266626))

(declare-fun m!4892459 () Bool)

(assert (=> bs!603977 m!4892459))

(declare-fun m!4892461 () Bool)

(assert (=> bs!603977 m!4892461))

(declare-fun m!4892463 () Bool)

(assert (=> bs!603977 m!4892463))

(declare-fun m!4892465 () Bool)

(assert (=> bs!603977 m!4892465))

(assert (=> b!4300057 d!1266626))

(declare-fun d!1266628 () Bool)

(declare-fun noDuplicatedKeys!92 (List!48065) Bool)

(assert (=> d!1266628 (= (invariantList!542 (toList!2197 lt!1522106)) (noDuplicatedKeys!92 (toList!2197 lt!1522106)))))

(declare-fun bs!603978 () Bool)

(assert (= bs!603978 d!1266628))

(declare-fun m!4892467 () Bool)

(assert (=> bs!603978 m!4892467))

(assert (=> b!4300058 d!1266628))

(declare-fun e!2672918 () Bool)

(declare-fun tp!1321147 () Bool)

(declare-fun b!4300192 () Bool)

(assert (=> b!4300192 (= e!2672918 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321147))))

(assert (=> b!4300065 (= tp!1321137 e!2672918)))

(assert (= (and b!4300065 ((_ is Cons!47941) mapDefault!20316)) b!4300192))

(declare-fun e!2672919 () Bool)

(declare-fun b!4300193 () Bool)

(declare-fun tp!1321148 () Bool)

(assert (=> b!4300193 (= e!2672919 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321148))))

(assert (=> b!4300062 (= tp!1321140 e!2672919)))

(assert (= (and b!4300062 ((_ is Cons!47941) (zeroValue!4782 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64))))))) b!4300193))

(declare-fun tp!1321149 () Bool)

(declare-fun b!4300194 () Bool)

(declare-fun e!2672920 () Bool)

(assert (=> b!4300194 (= e!2672920 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321149))))

(assert (=> b!4300062 (= tp!1321139 e!2672920)))

(assert (= (and b!4300062 ((_ is Cons!47941) (minValue!4782 (v!41911 (underlying!9275 (v!41912 (underlying!9276 hm!64))))))) b!4300194))

(declare-fun b!4300202 () Bool)

(declare-fun e!2672926 () Bool)

(declare-fun tp!1321158 () Bool)

(assert (=> b!4300202 (= e!2672926 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321158))))

(declare-fun mapIsEmpty!20319 () Bool)

(declare-fun mapRes!20319 () Bool)

(assert (=> mapIsEmpty!20319 mapRes!20319))

(declare-fun e!2672925 () Bool)

(declare-fun tp!1321156 () Bool)

(declare-fun b!4300201 () Bool)

(assert (=> b!4300201 (= e!2672925 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321156))))

(declare-fun mapNonEmpty!20319 () Bool)

(declare-fun tp!1321157 () Bool)

(assert (=> mapNonEmpty!20319 (= mapRes!20319 (and tp!1321157 e!2672925))))

(declare-fun mapKey!20319 () (_ BitVec 32))

(declare-fun mapRest!20319 () (Array (_ BitVec 32) List!48065))

(declare-fun mapValue!20319 () List!48065)

(assert (=> mapNonEmpty!20319 (= mapRest!20316 (store mapRest!20319 mapKey!20319 mapValue!20319))))

(declare-fun condMapEmpty!20319 () Bool)

(declare-fun mapDefault!20319 () List!48065)

(assert (=> mapNonEmpty!20316 (= condMapEmpty!20319 (= mapRest!20316 ((as const (Array (_ BitVec 32) List!48065)) mapDefault!20319)))))

(assert (=> mapNonEmpty!20316 (= tp!1321141 (and e!2672926 mapRes!20319))))

(assert (= (and mapNonEmpty!20316 condMapEmpty!20319) mapIsEmpty!20319))

(assert (= (and mapNonEmpty!20316 (not condMapEmpty!20319)) mapNonEmpty!20319))

(assert (= (and mapNonEmpty!20319 ((_ is Cons!47941) mapValue!20319)) b!4300201))

(assert (= (and mapNonEmpty!20316 ((_ is Cons!47941) mapDefault!20319)) b!4300202))

(declare-fun m!4892469 () Bool)

(assert (=> mapNonEmpty!20319 m!4892469))

(declare-fun e!2672927 () Bool)

(declare-fun b!4300203 () Bool)

(declare-fun tp!1321159 () Bool)

(assert (=> b!4300203 (= e!2672927 (and tp_is_empty!23265 tp_is_empty!23267 tp!1321159))))

(assert (=> mapNonEmpty!20316 (= tp!1321143 e!2672927)))

(assert (= (and mapNonEmpty!20316 ((_ is Cons!47941) mapValue!20316)) b!4300203))

(declare-fun b_lambda!126343 () Bool)

(assert (= b_lambda!126339 (or (and start!412880 b_free!128037) b_lambda!126343)))

(declare-fun b_lambda!126345 () Bool)

(assert (= b_lambda!126341 (or (and start!412880 b_free!128037) b_lambda!126345)))

(declare-fun b_lambda!126347 () Bool)

(assert (= b_lambda!126337 (or (and start!412880 b_free!128037) b_lambda!126347)))

(check-sat (not b!4300080) (not b!4300118) (not b!4300164) (not bm!296248) (not bm!296178) (not bm!296253) (not d!1266624) (not bm!296272) (not b!4300179) (not bm!296243) (not b!4300202) (not bm!296251) (not b!4300180) (not d!1266618) (not b!4300078) (not d!1266614) (not bm!296269) (not bm!296260) (not bm!296261) (not bm!296257) (not bm!296263) (not b!4300122) (not bm!296258) (not bm!296265) (not b!4300072) (not bm!296244) b_and!339381 (not bm!296255) (not d!1266606) (not b!4300117) (not b!4300171) (not bm!296266) (not b_lambda!126347) (not b!4300201) (not b_lambda!126343) (not bm!296242) (not bm!296245) (not b!4300082) (not b_next!128743) (not b!4300119) (not bm!296267) (not bm!296177) (not b!4300187) (not b_lambda!126345) (not d!1266602) (not b!4300174) (not b_next!128741) (not d!1266626) (not bm!296270) (not b!4300177) (not b!4300114) (not mapNonEmpty!20319) (not b!4300071) (not b!4300115) (not d!1266628) (not bm!296246) b_and!339371 (not b!4300121) (not bm!296271) (not bm!296250) (not b_lambda!126335) (not bm!296252) b_and!339373 (not bm!296264) (not b!4300203) (not bm!296254) (not d!1266616) (not b!4300192) (not b!4300112) (not bm!296256) (not b!4300193) (not b!4300186) (not b!4300194) (not d!1266612) tp_is_empty!23265 (not b_next!128745) (not bm!296247) (not bm!296249) tp_is_empty!23267 (not bm!296259))
(check-sat b_and!339381 (not b_next!128743) (not b_next!128741) b_and!339371 b_and!339373 (not b_next!128745))
