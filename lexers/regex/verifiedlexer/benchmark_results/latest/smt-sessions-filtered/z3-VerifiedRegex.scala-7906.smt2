; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412614 () Bool)

(assert start!412614)

(declare-fun b_free!127857 () Bool)

(declare-fun b_next!128561 () Bool)

(assert (=> start!412614 (= b_free!127857 (not b_next!128561))))

(declare-fun tp!1320239 () Bool)

(declare-fun b_and!339085 () Bool)

(assert (=> start!412614 (= tp!1320239 b_and!339085)))

(declare-fun b!4297648 () Bool)

(declare-fun b_free!127859 () Bool)

(declare-fun b_next!128563 () Bool)

(assert (=> b!4297648 (= b_free!127859 (not b_next!128563))))

(declare-fun tp!1320240 () Bool)

(declare-fun b_and!339087 () Bool)

(assert (=> b!4297648 (= tp!1320240 b_and!339087)))

(declare-fun b!4297643 () Bool)

(declare-fun b_free!127861 () Bool)

(declare-fun b_next!128565 () Bool)

(assert (=> b!4297643 (= b_free!127861 (not b_next!128565))))

(declare-fun tp!1320242 () Bool)

(declare-fun b_and!339089 () Bool)

(assert (=> b!4297643 (= tp!1320242 b_and!339089)))

(declare-fun b!4297640 () Bool)

(declare-fun e!2671009 () Bool)

(declare-fun e!2671007 () Bool)

(assert (=> b!4297640 (= e!2671009 e!2671007)))

(declare-fun b!4297641 () Bool)

(declare-fun e!2671005 () Bool)

(declare-fun e!2671010 () Bool)

(assert (=> b!4297641 (= e!2671005 e!2671010)))

(declare-fun res!1761403 () Bool)

(assert (=> b!4297641 (=> (not res!1761403) (not e!2671010))))

(declare-datatypes ((K!8979 0))(
  ( (K!8980 (val!15441 Int)) )
))
(declare-datatypes ((V!9181 0))(
  ( (V!9182 (val!15442 Int)) )
))
(declare-datatypes ((tuple2!45722 0))(
  ( (tuple2!45723 (_1!26140 K!8979) (_2!26140 V!9181)) )
))
(declare-datatypes ((List!48018 0))(
  ( (Nil!47894) (Cons!47894 (h!53314 tuple2!45722) (t!354639 List!48018)) )
))
(declare-datatypes ((ListMap!1427 0))(
  ( (ListMap!1428 (toList!2158 List!48018)) )
))
(declare-fun lt!1519191 () ListMap!1427)

(declare-fun p!6034 () Int)

(declare-fun forall!8597 (List!48018 Int) Bool)

(assert (=> b!4297641 (= res!1761403 (forall!8597 (toList!2158 lt!1519191) p!6034))))

(declare-datatypes ((array!16054 0))(
  ( (array!16055 (arr!7171 (Array (_ BitVec 32) (_ BitVec 64))) (size!35210 (_ BitVec 32))) )
))
(declare-datatypes ((array!16056 0))(
  ( (array!16057 (arr!7172 (Array (_ BitVec 32) List!48018)) (size!35211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8986 0))(
  ( (LongMapFixedSize!8987 (defaultEntry!4878 Int) (mask!12968 (_ BitVec 32)) (extraKeys!4742 (_ BitVec 32)) (zeroValue!4752 List!48018) (minValue!4752 List!48018) (_size!9029 (_ BitVec 32)) (_keys!4793 array!16054) (_values!4774 array!16056) (_vacant!4554 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17781 0))(
  ( (Cell!17782 (v!41827 LongMapFixedSize!8986)) )
))
(declare-datatypes ((MutLongMap!4493 0))(
  ( (LongMap!4493 (underlying!9215 Cell!17781)) (MutLongMapExt!4492 (__x!29504 Int)) )
))
(declare-datatypes ((Hashable!4409 0))(
  ( (HashableExt!4408 (__x!29505 Int)) )
))
(declare-datatypes ((Cell!17783 0))(
  ( (Cell!17784 (v!41828 MutLongMap!4493)) )
))
(declare-datatypes ((MutableMap!4399 0))(
  ( (MutableMapExt!4398 (__x!29506 Int)) (HashMap!4399 (underlying!9216 Cell!17783) (hashF!6441 Hashable!4409) (_size!9030 (_ BitVec 32)) (defaultValue!4570 Int)) )
))
(declare-fun hm!64 () MutableMap!4399)

(declare-fun map!9850 (MutableMap!4399) ListMap!1427)

(assert (=> b!4297641 (= lt!1519191 (map!9850 hm!64))))

(declare-fun b!4297642 () Bool)

(declare-fun e!2671011 () Bool)

(assert (=> b!4297642 (= e!2671007 e!2671011)))

(declare-fun e!2671004 () Bool)

(declare-fun tp!1320238 () Bool)

(declare-fun tp!1320244 () Bool)

(declare-fun array_inv!5141 (array!16054) Bool)

(declare-fun array_inv!5142 (array!16056) Bool)

(assert (=> b!4297643 (= e!2671011 (and tp!1320242 tp!1320244 tp!1320238 (array_inv!5141 (_keys!4793 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) (array_inv!5142 (_values!4774 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) e!2671004))))

(declare-fun b!4297645 () Bool)

(declare-fun e!2671008 () Bool)

(assert (=> b!4297645 (= e!2671010 e!2671008)))

(declare-fun res!1761402 () Bool)

(assert (=> b!4297645 (=> (not res!1761402) (not e!2671008))))

(declare-fun lt!1519187 () tuple2!45722)

(declare-fun dynLambda!20338 (Int tuple2!45722) Bool)

(assert (=> b!4297645 (= res!1761402 (dynLambda!20338 p!6034 lt!1519187))))

(declare-fun k0!1716 () K!8979)

(declare-fun v!9471 () V!9181)

(assert (=> b!4297645 (= lt!1519187 (tuple2!45723 k0!1716 v!9471))))

(declare-fun b!4297646 () Bool)

(declare-fun tp!1320241 () Bool)

(declare-fun mapRes!20190 () Bool)

(assert (=> b!4297646 (= e!2671004 (and tp!1320241 mapRes!20190))))

(declare-fun condMapEmpty!20190 () Bool)

(declare-fun mapDefault!20190 () List!48018)

(assert (=> b!4297646 (= condMapEmpty!20190 (= (arr!7172 (_values!4774 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) ((as const (Array (_ BitVec 32) List!48018)) mapDefault!20190)))))

(declare-fun b!4297647 () Bool)

(declare-fun e!2671012 () Bool)

(declare-datatypes ((tuple2!45724 0))(
  ( (tuple2!45725 (_1!26141 Bool) (_2!26141 MutableMap!4399)) )
))
(declare-fun lt!1519190 () tuple2!45724)

(declare-fun valid!3471 (MutableMap!4399) Bool)

(assert (=> b!4297647 (= e!2671012 (not (valid!3471 (_2!26141 lt!1519190))))))

(declare-fun e!2671006 () Bool)

(declare-fun e!2671002 () Bool)

(assert (=> b!4297648 (= e!2671006 (and e!2671002 tp!1320240))))

(declare-fun mapNonEmpty!20190 () Bool)

(declare-fun tp!1320237 () Bool)

(declare-fun tp!1320243 () Bool)

(assert (=> mapNonEmpty!20190 (= mapRes!20190 (and tp!1320237 tp!1320243))))

(declare-fun mapRest!20190 () (Array (_ BitVec 32) List!48018))

(declare-fun mapKey!20190 () (_ BitVec 32))

(declare-fun mapValue!20190 () List!48018)

(assert (=> mapNonEmpty!20190 (= (arr!7172 (_values!4774 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) (store mapRest!20190 mapKey!20190 mapValue!20190))))

(declare-fun b!4297649 () Bool)

(declare-fun res!1761404 () Bool)

(assert (=> b!4297649 (=> (not res!1761404) (not e!2671005))))

(assert (=> b!4297649 (= res!1761404 (valid!3471 hm!64))))

(declare-fun mapIsEmpty!20190 () Bool)

(assert (=> mapIsEmpty!20190 mapRes!20190))

(declare-fun b!4297650 () Bool)

(declare-fun lt!1519189 () MutLongMap!4493)

(get-info :version)

(assert (=> b!4297650 (= e!2671002 (and e!2671009 ((_ is LongMap!4493) lt!1519189)))))

(assert (=> b!4297650 (= lt!1519189 (v!41828 (underlying!9216 hm!64)))))

(declare-fun b!4297644 () Bool)

(assert (=> b!4297644 (= e!2671008 e!2671012)))

(declare-fun res!1761405 () Bool)

(assert (=> b!4297644 (=> (not res!1761405) (not e!2671012))))

(assert (=> b!4297644 (= res!1761405 (and (_1!26141 lt!1519190) ((_ is HashMap!4399) (_2!26141 lt!1519190))))))

(declare-fun update!299 (MutableMap!4399 K!8979 V!9181) tuple2!45724)

(assert (=> b!4297644 (= lt!1519190 (update!299 hm!64 k0!1716 v!9471))))

(declare-fun lt!1519188 () ListMap!1427)

(declare-fun +!141 (ListMap!1427 tuple2!45722) ListMap!1427)

(assert (=> b!4297644 (= lt!1519188 (+!141 lt!1519191 lt!1519187))))

(declare-fun res!1761401 () Bool)

(assert (=> start!412614 (=> (not res!1761401) (not e!2671005))))

(assert (=> start!412614 (= res!1761401 ((_ is HashMap!4399) hm!64))))

(assert (=> start!412614 e!2671005))

(assert (=> start!412614 e!2671006))

(declare-fun tp_is_empty!23145 () Bool)

(assert (=> start!412614 tp_is_empty!23145))

(declare-fun tp_is_empty!23147 () Bool)

(assert (=> start!412614 tp_is_empty!23147))

(assert (=> start!412614 tp!1320239))

(assert (= (and start!412614 res!1761401) b!4297649))

(assert (= (and b!4297649 res!1761404) b!4297641))

(assert (= (and b!4297641 res!1761403) b!4297645))

(assert (= (and b!4297645 res!1761402) b!4297644))

(assert (= (and b!4297644 res!1761405) b!4297647))

(assert (= (and b!4297646 condMapEmpty!20190) mapIsEmpty!20190))

(assert (= (and b!4297646 (not condMapEmpty!20190)) mapNonEmpty!20190))

(assert (= b!4297643 b!4297646))

(assert (= b!4297642 b!4297643))

(assert (= b!4297640 b!4297642))

(assert (= (and b!4297650 ((_ is LongMap!4493) (v!41828 (underlying!9216 hm!64)))) b!4297640))

(assert (= b!4297648 b!4297650))

(assert (= (and start!412614 ((_ is HashMap!4399) hm!64)) b!4297648))

(declare-fun b_lambda!126161 () Bool)

(assert (=> (not b_lambda!126161) (not b!4297645)))

(declare-fun t!354638 () Bool)

(declare-fun tb!257105 () Bool)

(assert (=> (and start!412614 (= p!6034 p!6034) t!354638) tb!257105))

(declare-fun result!314342 () Bool)

(assert (=> tb!257105 (= result!314342 true)))

(assert (=> b!4297645 t!354638))

(declare-fun b_and!339091 () Bool)

(assert (= b_and!339085 (and (=> t!354638 result!314342) b_and!339091)))

(declare-fun m!4889735 () Bool)

(assert (=> b!4297649 m!4889735))

(declare-fun m!4889737 () Bool)

(assert (=> b!4297647 m!4889737))

(declare-fun m!4889739 () Bool)

(assert (=> mapNonEmpty!20190 m!4889739))

(declare-fun m!4889741 () Bool)

(assert (=> b!4297644 m!4889741))

(declare-fun m!4889743 () Bool)

(assert (=> b!4297644 m!4889743))

(declare-fun m!4889745 () Bool)

(assert (=> b!4297643 m!4889745))

(declare-fun m!4889747 () Bool)

(assert (=> b!4297643 m!4889747))

(declare-fun m!4889749 () Bool)

(assert (=> b!4297645 m!4889749))

(declare-fun m!4889751 () Bool)

(assert (=> b!4297641 m!4889751))

(declare-fun m!4889753 () Bool)

(assert (=> b!4297641 m!4889753))

(check-sat (not b!4297649) (not b_next!128561) (not b!4297647) tp_is_empty!23147 (not b_next!128563) b_and!339087 (not b_lambda!126161) b_and!339091 (not b!4297644) b_and!339089 (not b_next!128565) (not b!4297646) (not mapNonEmpty!20190) (not b!4297643) (not b!4297641) tp_is_empty!23145)
(check-sat (not b_next!128561) (not b_next!128563) b_and!339087 b_and!339091 b_and!339089 (not b_next!128565))
(get-model)

(declare-fun b_lambda!126163 () Bool)

(assert (= b_lambda!126161 (or (and start!412614 b_free!127857) b_lambda!126163)))

(check-sat (not b!4297649) (not b!4297647) tp_is_empty!23147 (not b_next!128563) b_and!339087 b_and!339091 (not b!4297644) b_and!339089 (not b_next!128565) (not b!4297646) (not b_lambda!126163) (not b_next!128561) (not mapNonEmpty!20190) (not b!4297643) (not b!4297641) tp_is_empty!23145)
(check-sat (not b_next!128561) (not b_next!128563) b_and!339087 b_and!339091 b_and!339089 (not b_next!128565))
(get-model)

(declare-fun d!1266337 () Bool)

(assert (=> d!1266337 (= (array_inv!5141 (_keys!4793 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) (bvsge (size!35210 (_keys!4793 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297643 d!1266337))

(declare-fun d!1266339 () Bool)

(assert (=> d!1266339 (= (array_inv!5142 (_values!4774 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) (bvsge (size!35211 (_values!4774 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297643 d!1266339))

(declare-fun bs!603859 () Bool)

(declare-fun b!4297690 () Bool)

(declare-fun b!4297693 () Bool)

(assert (= bs!603859 (and b!4297690 b!4297693)))

(declare-fun lambda!131826 () Int)

(declare-fun lambda!131825 () Int)

(assert (=> bs!603859 (= lambda!131826 lambda!131825)))

(declare-fun bm!295054 () Bool)

(declare-fun call!295064 () ListMap!1427)

(declare-fun call!295074 () ListMap!1427)

(assert (=> bm!295054 (= call!295064 call!295074)))

(declare-fun b!4297689 () Bool)

(declare-datatypes ((Unit!66547 0))(
  ( (Unit!66548) )
))
(declare-fun e!2671037 () Unit!66547)

(declare-fun lt!1519333 () Unit!66547)

(assert (=> b!4297689 (= e!2671037 lt!1519333)))

(declare-fun lt!1519329 () Unit!66547)

(declare-fun call!295060 () Unit!66547)

(assert (=> b!4297689 (= lt!1519329 call!295060)))

(declare-fun call!295075 () Bool)

(assert (=> b!4297689 call!295075))

(declare-fun lt!1519306 () Unit!66547)

(assert (=> b!4297689 (= lt!1519306 lt!1519329)))

(declare-fun call!295086 () Unit!66547)

(assert (=> b!4297689 (= lt!1519333 call!295086)))

(declare-fun call!295082 () Bool)

(assert (=> b!4297689 call!295082))

(declare-fun lt!1519316 () ListMap!1427)

(declare-fun call!295076 () Unit!66547)

(declare-fun lt!1519328 () ListMap!1427)

(declare-fun lt!1519321 () ListMap!1427)

(declare-fun c!731101 () Bool)

(declare-fun lt!1519350 () ListMap!1427)

(declare-fun bm!295055 () Bool)

(declare-fun lemmaEquivalentThenSameContains!24 (ListMap!1427 ListMap!1427 K!8979) Unit!66547)

(assert (=> bm!295055 (= call!295076 (lemmaEquivalentThenSameContains!24 (ite c!731101 lt!1519350 lt!1519328) (ite c!731101 lt!1519321 lt!1519316) k0!1716))))

(declare-fun call!295071 () Bool)

(assert (=> b!4297690 call!295071))

(declare-fun lt!1519344 () Unit!66547)

(declare-fun Unit!66549 () Unit!66547)

(assert (=> b!4297690 (= lt!1519344 Unit!66549)))

(declare-fun call!295070 () ListMap!1427)

(declare-fun contains!9812 (ListMap!1427 K!8979) Bool)

(assert (=> b!4297690 (contains!9812 call!295070 k0!1716)))

(declare-fun lt!1519303 () Unit!66547)

(declare-fun lt!1519308 () Unit!66547)

(assert (=> b!4297690 (= lt!1519303 lt!1519308)))

(declare-fun call!295088 () Bool)

(assert (=> b!4297690 (= (contains!9812 lt!1519328 k0!1716) call!295088)))

(assert (=> b!4297690 (= lt!1519308 call!295076)))

(assert (=> b!4297690 (= lt!1519316 call!295070)))

(assert (=> b!4297690 (= lt!1519328 call!295064)))

(declare-fun lt!1519330 () Unit!66547)

(declare-fun Unit!66550 () Unit!66547)

(assert (=> b!4297690 (= lt!1519330 Unit!66550)))

(declare-fun call!295084 () Bool)

(assert (=> b!4297690 call!295084))

(declare-fun lt!1519355 () Unit!66547)

(declare-fun Unit!66551 () Unit!66547)

(assert (=> b!4297690 (= lt!1519355 Unit!66551)))

(declare-fun call!295087 () Bool)

(assert (=> b!4297690 call!295087))

(declare-fun lt!1519315 () Unit!66547)

(declare-fun Unit!66552 () Unit!66547)

(assert (=> b!4297690 (= lt!1519315 Unit!66552)))

(declare-fun call!295081 () Bool)

(assert (=> b!4297690 call!295081))

(declare-fun lt!1519317 () Unit!66547)

(declare-fun lt!1519312 () Unit!66547)

(assert (=> b!4297690 (= lt!1519317 lt!1519312)))

(declare-fun call!295068 () Bool)

(assert (=> b!4297690 call!295068))

(declare-fun lt!1519314 () List!48018)

(declare-fun lt!1519352 () (_ BitVec 64))

(declare-datatypes ((tuple2!45726 0))(
  ( (tuple2!45727 (_1!26142 (_ BitVec 64)) (_2!26142 List!48018)) )
))
(declare-datatypes ((List!48019 0))(
  ( (Nil!47895) (Cons!47895 (h!53315 tuple2!45726) (t!354642 List!48019)) )
))
(declare-datatypes ((ListLongMap!783 0))(
  ( (ListLongMap!784 (toList!2159 List!48019)) )
))
(declare-fun lt!1519310 () ListLongMap!783)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!24 (ListLongMap!783 (_ BitVec 64) List!48018 K!8979 V!9181 Hashable!4409) Unit!66547)

(assert (=> b!4297690 (= lt!1519312 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!24 lt!1519310 lt!1519352 lt!1519314 k0!1716 v!9471 (hashF!6441 hm!64)))))

(declare-fun lt!1519349 () Unit!66547)

(declare-fun lt!1519334 () Unit!66547)

(assert (=> b!4297690 (= lt!1519349 lt!1519334)))

(declare-fun e!2671038 () Bool)

(assert (=> b!4297690 e!2671038))

(declare-fun res!1761417 () Bool)

(assert (=> b!4297690 (=> (not res!1761417) (not e!2671038))))

(declare-fun call!295072 () Bool)

(assert (=> b!4297690 (= res!1761417 call!295072)))

(declare-fun lt!1519302 () ListLongMap!783)

(declare-fun call!295069 () ListLongMap!783)

(assert (=> b!4297690 (= lt!1519302 call!295069)))

(declare-fun call!295067 () Unit!66547)

(assert (=> b!4297690 (= lt!1519334 call!295067)))

(declare-fun lt!1519307 () Unit!66547)

(assert (=> b!4297690 (= lt!1519307 e!2671037)))

(declare-fun c!731102 () Bool)

(declare-fun lt!1519309 () List!48018)

(declare-fun isEmpty!28036 (List!48018) Bool)

(assert (=> b!4297690 (= c!731102 (not (isEmpty!28036 lt!1519309)))))

(declare-fun e!2671036 () Unit!66547)

(declare-fun Unit!66553 () Unit!66547)

(assert (=> b!4297690 (= e!2671036 Unit!66553)))

(declare-fun b!4297691 () Bool)

(declare-fun e!2671043 () List!48018)

(declare-fun call!295063 () List!48018)

(assert (=> b!4297691 (= e!2671043 call!295063)))

(declare-fun bm!295056 () Bool)

(declare-fun call!295073 () ListMap!1427)

(declare-fun eq!85 (ListMap!1427 ListMap!1427) Bool)

(assert (=> bm!295056 (= call!295084 (eq!85 (ite c!731101 call!295073 call!295064) call!295070))))

(declare-fun b!4297692 () Bool)

(declare-fun e!2671035 () Bool)

(declare-fun call!295083 () Bool)

(assert (=> b!4297692 (= e!2671035 call!295083)))

(declare-fun bm!295057 () Bool)

(declare-fun call!295079 () ListMap!1427)

(declare-fun extractMap!260 (List!48019) ListMap!1427)

(assert (=> bm!295057 (= call!295079 (extractMap!260 (toList!2159 call!295069)))))

(declare-fun lt!1519324 () List!48018)

(declare-fun bm!295058 () Bool)

(declare-datatypes ((tuple2!45728 0))(
  ( (tuple2!45729 (_1!26143 Bool) (_2!26143 MutLongMap!4493)) )
))
(declare-fun call!295077 () tuple2!45728)

(declare-fun lt!1519327 () (_ BitVec 64))

(declare-fun update!300 (MutLongMap!4493 (_ BitVec 64) List!48018) tuple2!45728)

(assert (=> bm!295058 (= call!295077 (update!300 (v!41828 (underlying!9216 hm!64)) (ite c!731101 lt!1519327 lt!1519352) (ite c!731101 lt!1519324 lt!1519314)))))

(declare-fun bm!295059 () Bool)

(assert (=> bm!295059 (= call!295088 (contains!9812 (ite c!731101 lt!1519321 lt!1519316) k0!1716))))

(declare-fun bm!295060 () Bool)

(declare-fun +!142 (ListLongMap!783 tuple2!45726) ListLongMap!783)

(assert (=> bm!295060 (= call!295069 (+!142 lt!1519310 (ite c!731101 (tuple2!45727 lt!1519327 lt!1519324) (tuple2!45727 lt!1519352 lt!1519314))))))

(assert (=> b!4297693 call!295084))

(declare-fun lt!1519339 () Unit!66547)

(declare-fun Unit!66554 () Unit!66547)

(assert (=> b!4297693 (= lt!1519339 Unit!66554)))

(assert (=> b!4297693 call!295087))

(declare-fun lt!1519332 () Unit!66547)

(declare-fun Unit!66555 () Unit!66547)

(assert (=> b!4297693 (= lt!1519332 Unit!66555)))

(assert (=> b!4297693 call!295081))

(declare-fun lt!1519346 () Unit!66547)

(declare-fun lt!1519335 () Unit!66547)

(assert (=> b!4297693 (= lt!1519346 lt!1519335)))

(assert (=> b!4297693 (= call!295071 call!295088)))

(assert (=> b!4297693 (= lt!1519335 call!295076)))

(assert (=> b!4297693 (= lt!1519321 call!295070)))

(assert (=> b!4297693 (= lt!1519350 call!295073)))

(declare-fun lt!1519320 () Unit!66547)

(declare-fun lt!1519337 () Unit!66547)

(assert (=> b!4297693 (= lt!1519320 lt!1519337)))

(assert (=> b!4297693 call!295068))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!24 (ListLongMap!783 (_ BitVec 64) List!48018 K!8979 V!9181 Hashable!4409) Unit!66547)

(assert (=> b!4297693 (= lt!1519337 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!24 lt!1519310 lt!1519327 lt!1519324 k0!1716 v!9471 (hashF!6441 hm!64)))))

(declare-fun lt!1519342 () Unit!66547)

(declare-fun lt!1519356 () Unit!66547)

(assert (=> b!4297693 (= lt!1519342 lt!1519356)))

(assert (=> b!4297693 e!2671035))

(declare-fun res!1761419 () Bool)

(assert (=> b!4297693 (=> (not res!1761419) (not e!2671035))))

(assert (=> b!4297693 (= res!1761419 call!295072)))

(declare-fun lt!1519343 () ListLongMap!783)

(assert (=> b!4297693 (= lt!1519343 call!295069)))

(assert (=> b!4297693 (= lt!1519356 call!295067)))

(declare-fun lt!1519348 () Unit!66547)

(declare-fun Unit!66556 () Unit!66547)

(assert (=> b!4297693 (= lt!1519348 Unit!66556)))

(declare-fun noDuplicateKeys!140 (List!48018) Bool)

(assert (=> b!4297693 (noDuplicateKeys!140 lt!1519324)))

(declare-fun lt!1519311 () Unit!66547)

(declare-fun Unit!66557 () Unit!66547)

(assert (=> b!4297693 (= lt!1519311 Unit!66557)))

(declare-fun call!295062 () List!48018)

(declare-fun containsKey!217 (List!48018 K!8979) Bool)

(assert (=> b!4297693 (not (containsKey!217 call!295062 k0!1716))))

(declare-fun lt!1519347 () Unit!66547)

(declare-fun Unit!66558 () Unit!66547)

(assert (=> b!4297693 (= lt!1519347 Unit!66558)))

(declare-fun lt!1519338 () Unit!66547)

(declare-fun lt!1519336 () Unit!66547)

(assert (=> b!4297693 (= lt!1519338 lt!1519336)))

(assert (=> b!4297693 (noDuplicateKeys!140 call!295062)))

(declare-fun lt!1519304 () List!48018)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!117 (List!48018 K!8979) Unit!66547)

(assert (=> b!4297693 (= lt!1519336 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!117 lt!1519304 k0!1716))))

(declare-fun lt!1519345 () Unit!66547)

(declare-fun lt!1519313 () Unit!66547)

(assert (=> b!4297693 (= lt!1519345 lt!1519313)))

(assert (=> b!4297693 call!295082))

(assert (=> b!4297693 (= lt!1519313 call!295086)))

(declare-fun lt!1519323 () Unit!66547)

(declare-fun lt!1519341 () Unit!66547)

(assert (=> b!4297693 (= lt!1519323 lt!1519341)))

(assert (=> b!4297693 call!295075))

(assert (=> b!4297693 (= lt!1519341 call!295060)))

(declare-fun e!2671045 () Unit!66547)

(declare-fun Unit!66559 () Unit!66547)

(assert (=> b!4297693 (= e!2671045 Unit!66559)))

(declare-fun bm!295061 () Bool)

(declare-fun forall!8598 (List!48019 Int) Bool)

(assert (=> bm!295061 (= call!295072 (forall!8598 (ite c!731101 (toList!2159 lt!1519343) (toList!2159 lt!1519302)) (ite c!731101 lambda!131825 lambda!131826)))))

(declare-fun bm!295062 () Bool)

(declare-fun lt!1519331 () ListMap!1427)

(assert (=> bm!295062 (= call!295070 (+!141 lt!1519331 (tuple2!45723 k0!1716 v!9471)))))

(declare-fun bm!295063 () Bool)

(declare-fun allKeysSameHash!112 (List!48018 (_ BitVec 64) Hashable!4409) Bool)

(assert (=> bm!295063 (= call!295082 (allKeysSameHash!112 call!295062 (ite c!731101 lt!1519327 lt!1519352) (hashF!6441 hm!64)))))

(declare-fun b!4297694 () Bool)

(assert (=> b!4297694 (= call!295064 lt!1519331)))

(declare-fun lt!1519322 () Unit!66547)

(declare-fun Unit!66560 () Unit!66547)

(assert (=> b!4297694 (= lt!1519322 Unit!66560)))

(declare-fun call!295078 () Bool)

(assert (=> b!4297694 call!295078))

(declare-fun Unit!66561 () Unit!66547)

(assert (=> b!4297694 (= e!2671036 Unit!66561)))

(declare-fun bm!295064 () Bool)

(declare-fun call!295085 () ListMap!1427)

(assert (=> bm!295064 (= call!295068 (eq!85 call!295079 call!295085))))

(declare-fun lt!1519354 () tuple2!45728)

(declare-fun bm!295065 () Bool)

(declare-fun call!295080 () ListLongMap!783)

(declare-fun lt!1519340 () tuple2!45728)

(declare-fun map!9851 (MutLongMap!4493) ListLongMap!783)

(assert (=> bm!295065 (= call!295080 (map!9851 (ite c!731101 (_2!26143 lt!1519340) (_2!26143 lt!1519354))))))

(declare-fun bm!295066 () Bool)

(declare-fun removePairForKey!129 (List!48018 K!8979) List!48018)

(assert (=> bm!295066 (= call!295062 (removePairForKey!129 (ite c!731101 lt!1519304 lt!1519309) k0!1716))))

(declare-fun b!4297695 () Bool)

(assert (=> b!4297695 (= e!2671038 call!295083)))

(declare-fun e!2671039 () tuple2!45724)

(declare-fun b!4297696 () Bool)

(declare-fun lt!1519305 () MutableMap!4399)

(declare-datatypes ((tuple2!45730 0))(
  ( (tuple2!45731 (_1!26144 Unit!66547) (_2!26144 MutableMap!4399)) )
))
(declare-fun Unit!66562 () Unit!66547)

(declare-fun Unit!66563 () Unit!66547)

(assert (=> b!4297696 (= e!2671039 (tuple2!45725 (_1!26143 lt!1519340) (_2!26144 (ite false (tuple2!45731 Unit!66562 (HashMap!4399 (Cell!17784 (_2!26143 lt!1519340)) (hashF!6441 hm!64) (bvadd (_size!9030 hm!64) #b00000000000000000000000000000001) (defaultValue!4570 hm!64))) (tuple2!45731 Unit!66563 lt!1519305)))))))

(declare-fun call!295061 () (_ BitVec 64))

(assert (=> b!4297696 (= lt!1519327 call!295061)))

(assert (=> b!4297696 (= lt!1519304 call!295063)))

(assert (=> b!4297696 (= lt!1519324 (Cons!47894 (tuple2!45723 k0!1716 v!9471) call!295062))))

(assert (=> b!4297696 (= lt!1519340 call!295077)))

(assert (=> b!4297696 (= lt!1519305 (HashMap!4399 (Cell!17784 (_2!26143 lt!1519340)) (hashF!6441 hm!64) (_size!9030 hm!64) (defaultValue!4570 hm!64)))))

(declare-fun c!731104 () Bool)

(assert (=> b!4297696 (= c!731104 (_1!26143 lt!1519340))))

(declare-fun lt!1519325 () Unit!66547)

(assert (=> b!4297696 (= lt!1519325 e!2671045)))

(declare-fun bm!295067 () Bool)

(declare-fun call!295065 () ListMap!1427)

(assert (=> bm!295067 (= call!295065 (map!9850 hm!64))))

(declare-fun bm!295068 () Bool)

(declare-fun call!295089 () ListMap!1427)

(declare-fun lt!1519353 () tuple2!45724)

(assert (=> bm!295068 (= call!295089 (map!9850 (_2!26141 lt!1519353)))))

(declare-fun bm!295069 () Bool)

(declare-fun lt!1519326 () MutableMap!4399)

(assert (=> bm!295069 (= call!295074 (map!9850 (ite c!731101 lt!1519305 lt!1519326)))))

(declare-fun b!4297697 () Bool)

(assert (=> b!4297697 (= call!295073 lt!1519331)))

(declare-fun lt!1519318 () Unit!66547)

(declare-fun Unit!66564 () Unit!66547)

(assert (=> b!4297697 (= lt!1519318 Unit!66564)))

(assert (=> b!4297697 call!295078))

(declare-fun Unit!66565 () Unit!66547)

(assert (=> b!4297697 (= e!2671045 Unit!66565)))

(declare-fun bm!295070 () Bool)

(declare-fun apply!10865 (MutLongMap!4493 (_ BitVec 64)) List!48018)

(assert (=> bm!295070 (= call!295063 (apply!10865 (v!41828 (underlying!9216 hm!64)) (ite c!731101 lt!1519327 lt!1519352)))))

(declare-fun b!4297698 () Bool)

(declare-fun Unit!66566 () Unit!66547)

(declare-fun Unit!66567 () Unit!66547)

(assert (=> b!4297698 (= e!2671039 (tuple2!45725 (_1!26143 lt!1519354) (_2!26144 (ite (_1!26143 lt!1519354) (tuple2!45731 Unit!66566 (HashMap!4399 (Cell!17784 (_2!26143 lt!1519354)) (hashF!6441 hm!64) (bvadd (_size!9030 hm!64) #b00000000000000000000000000000001) (defaultValue!4570 hm!64))) (tuple2!45731 Unit!66567 lt!1519326)))))))

(assert (=> b!4297698 (= lt!1519352 call!295061)))

(declare-fun c!731106 () Bool)

(declare-fun contains!9813 (MutLongMap!4493 (_ BitVec 64)) Bool)

(assert (=> b!4297698 (= c!731106 (contains!9813 (v!41828 (underlying!9216 hm!64)) lt!1519352))))

(assert (=> b!4297698 (= lt!1519309 e!2671043)))

(assert (=> b!4297698 (= lt!1519314 (Cons!47894 (tuple2!45723 k0!1716 v!9471) lt!1519309))))

(assert (=> b!4297698 (= lt!1519354 call!295077)))

(assert (=> b!4297698 (= lt!1519326 (HashMap!4399 (Cell!17784 (_2!26143 lt!1519354)) (hashF!6441 hm!64) (_size!9030 hm!64) (defaultValue!4570 hm!64)))))

(declare-fun c!731105 () Bool)

(assert (=> b!4297698 (= c!731105 (_1!26143 lt!1519354))))

(declare-fun lt!1519319 () Unit!66547)

(assert (=> b!4297698 (= lt!1519319 e!2671036)))

(declare-fun bm!295071 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!103 (List!48019 (_ BitVec 64) List!48018 Hashable!4409) Unit!66547)

(assert (=> bm!295071 (= call!295060 (lemmaInLongMapAllKeySameHashThenForTuple!103 (toList!2159 lt!1519310) (ite c!731101 lt!1519327 lt!1519352) (ite c!731101 lt!1519304 lt!1519309) (hashF!6441 hm!64)))))

(declare-fun bm!295072 () Bool)

(assert (=> bm!295072 (= call!295071 (contains!9812 (ite c!731101 lt!1519350 call!295064) k0!1716))))

(declare-fun bm!295073 () Bool)

(declare-fun hash!828 (Hashable!4409 K!8979) (_ BitVec 64))

(assert (=> bm!295073 (= call!295061 (hash!828 (hashF!6441 hm!64) k0!1716))))

(declare-fun bm!295074 () Bool)

(assert (=> bm!295074 (= call!295081 (forall!8598 (toList!2159 call!295080) (ite c!731101 lambda!131825 lambda!131826)))))

(declare-fun e!2671041 () ListMap!1427)

(declare-fun b!4297699 () Bool)

(assert (=> b!4297699 (= e!2671041 (+!141 call!295065 (tuple2!45723 k0!1716 v!9471)))))

(declare-fun b!4297700 () Bool)

(declare-fun Unit!66568 () Unit!66547)

(assert (=> b!4297700 (= e!2671037 Unit!66568)))

(declare-fun bm!295075 () Bool)

(declare-fun call!295066 () ListMap!1427)

(assert (=> bm!295075 (= call!295066 (extractMap!260 (toList!2159 lt!1519310)))))

(declare-fun b!4297701 () Bool)

(declare-fun e!2671044 () Bool)

(declare-fun e!2671040 () Bool)

(assert (=> b!4297701 (= e!2671044 e!2671040)))

(declare-fun res!1761416 () Bool)

(assert (=> b!4297701 (= res!1761416 (contains!9812 call!295089 k0!1716))))

(assert (=> b!4297701 (=> (not res!1761416) (not e!2671040))))

(declare-fun b!4297702 () Bool)

(declare-fun res!1761418 () Bool)

(declare-fun e!2671042 () Bool)

(assert (=> b!4297702 (=> (not res!1761418) (not e!2671042))))

(assert (=> b!4297702 (= res!1761418 (valid!3471 (_2!26141 lt!1519353)))))

(declare-fun bm!295076 () Bool)

(assert (=> bm!295076 (= call!295085 (+!141 call!295066 (tuple2!45723 k0!1716 v!9471)))))

(declare-fun b!4297703 () Bool)

(assert (=> b!4297703 (= e!2671041 call!295065)))

(declare-fun bm!295077 () Bool)

(declare-fun call!295059 () Bool)

(assert (=> bm!295077 (= call!295059 (eq!85 call!295089 e!2671041))))

(declare-fun c!731103 () Bool)

(declare-fun c!731107 () Bool)

(assert (=> bm!295077 (= c!731103 c!731107)))

(declare-fun b!4297704 () Bool)

(assert (=> b!4297704 (= e!2671044 call!295059)))

(declare-fun bm!295078 () Bool)

(assert (=> bm!295078 (= call!295075 (allKeysSameHash!112 (ite c!731101 lt!1519304 lt!1519309) (ite c!731101 lt!1519327 lt!1519352) (hashF!6441 hm!64)))))

(declare-fun d!1266341 () Bool)

(assert (=> d!1266341 e!2671042))

(declare-fun res!1761420 () Bool)

(assert (=> d!1266341 (=> (not res!1761420) (not e!2671042))))

(assert (=> d!1266341 (= res!1761420 ((_ is HashMap!4399) (_2!26141 lt!1519353)))))

(declare-fun lt!1519351 () tuple2!45724)

(assert (=> d!1266341 (= lt!1519353 (tuple2!45725 (_1!26141 lt!1519351) (_2!26141 lt!1519351)))))

(assert (=> d!1266341 (= lt!1519351 e!2671039)))

(declare-fun contains!9814 (MutableMap!4399 K!8979) Bool)

(assert (=> d!1266341 (= c!731101 (contains!9814 hm!64 k0!1716))))

(assert (=> d!1266341 (= lt!1519310 (map!9851 (v!41828 (underlying!9216 hm!64))))))

(assert (=> d!1266341 (= lt!1519331 (map!9850 hm!64))))

(assert (=> d!1266341 (valid!3471 hm!64)))

(assert (=> d!1266341 (= (update!299 hm!64 k0!1716 v!9471) lt!1519353)))

(declare-fun b!4297705 () Bool)

(assert (=> b!4297705 (= e!2671042 e!2671044)))

(assert (=> b!4297705 (= c!731107 (_1!26141 lt!1519353))))

(declare-fun b!4297706 () Bool)

(assert (=> b!4297706 (= e!2671043 Nil!47894)))

(declare-fun bm!295079 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!90 (ListLongMap!783 (_ BitVec 64) List!48018 Hashable!4409) Unit!66547)

(assert (=> bm!295079 (= call!295067 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!90 lt!1519310 (ite c!731101 lt!1519327 lt!1519352) (ite c!731101 lt!1519324 lt!1519314) (hashF!6441 hm!64)))))

(declare-fun bm!295080 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!99 (List!48018 K!8979 (_ BitVec 64) Hashable!4409) Unit!66547)

(assert (=> bm!295080 (= call!295086 (lemmaRemovePairForKeyPreservesHash!99 (ite c!731101 lt!1519304 lt!1519309) k0!1716 (ite c!731101 lt!1519327 lt!1519352) (hashF!6441 hm!64)))))

(declare-fun bm!295081 () Bool)

(assert (=> bm!295081 (= call!295073 call!295074)))

(declare-fun bm!295082 () Bool)

(declare-fun allKeysSameHashInMap!260 (ListLongMap!783 Hashable!4409) Bool)

(assert (=> bm!295082 (= call!295083 (allKeysSameHashInMap!260 (ite c!731101 lt!1519343 lt!1519302) (hashF!6441 hm!64)))))

(declare-fun bm!295083 () Bool)

(assert (=> bm!295083 (= call!295078 (valid!3471 (ite c!731101 lt!1519305 lt!1519326)))))

(declare-fun b!4297707 () Bool)

(assert (=> b!4297707 (= e!2671040 call!295059)))

(declare-fun bm!295084 () Bool)

(assert (=> bm!295084 (= call!295087 (allKeysSameHashInMap!260 call!295080 (hashF!6441 hm!64)))))

(assert (= (and d!1266341 c!731101) b!4297696))

(assert (= (and d!1266341 (not c!731101)) b!4297698))

(assert (= (and b!4297696 c!731104) b!4297693))

(assert (= (and b!4297696 (not c!731104)) b!4297697))

(assert (= (and b!4297693 res!1761419) b!4297692))

(assert (= (or b!4297693 b!4297697) bm!295081))

(assert (= (and b!4297698 c!731106) b!4297691))

(assert (= (and b!4297698 (not c!731106)) b!4297706))

(assert (= (and b!4297698 c!731105) b!4297690))

(assert (= (and b!4297698 (not c!731105)) b!4297694))

(assert (= (and b!4297690 c!731102) b!4297689))

(assert (= (and b!4297690 (not c!731102)) b!4297700))

(assert (= (and b!4297690 res!1761417) b!4297695))

(assert (= (or b!4297690 b!4297694) bm!295054))

(assert (= (or b!4297693 b!4297690) bm!295072))

(assert (= (or b!4297696 b!4297698) bm!295058))

(assert (= (or b!4297693 b!4297696 b!4297689) bm!295066))

(assert (= (or b!4297693 b!4297689) bm!295080))

(assert (= (or b!4297693 b!4297690) bm!295055))

(assert (= (or b!4297693 b!4297689) bm!295078))

(assert (= (or b!4297693 b!4297689) bm!295071))

(assert (= (or b!4297693 b!4297690) bm!295079))

(assert (= (or b!4297693 b!4297690) bm!295060))

(assert (= (or b!4297693 b!4297690) bm!295059))

(assert (= (or b!4297696 b!4297691) bm!295070))

(assert (= (or b!4297696 b!4297698) bm!295073))

(assert (= (or b!4297692 b!4297695) bm!295082))

(assert (= (or b!4297693 b!4297690) bm!295075))

(assert (= (or b!4297693 b!4297690) bm!295065))

(assert (= (or b!4297693 b!4297690) bm!295062))

(assert (= (or bm!295081 bm!295054) bm!295069))

(assert (= (or b!4297693 b!4297690) bm!295061))

(assert (= (or b!4297697 b!4297694) bm!295083))

(assert (= (or b!4297693 b!4297690) bm!295074))

(assert (= (or b!4297693 b!4297690) bm!295057))

(assert (= (or b!4297693 b!4297689) bm!295063))

(assert (= (or b!4297693 b!4297690) bm!295056))

(assert (= (or b!4297693 b!4297690) bm!295084))

(assert (= (or b!4297693 b!4297690) bm!295076))

(assert (= (or b!4297693 b!4297690) bm!295064))

(assert (= (and d!1266341 res!1761420) b!4297702))

(assert (= (and b!4297702 res!1761418) b!4297705))

(assert (= (and b!4297705 c!731107) b!4297701))

(assert (= (and b!4297705 (not c!731107)) b!4297704))

(assert (= (and b!4297701 res!1761416) b!4297707))

(assert (= (or b!4297701 b!4297707 b!4297704) bm!295068))

(assert (= (or b!4297707 b!4297704) bm!295067))

(assert (= (or b!4297707 b!4297704) bm!295077))

(assert (= (and bm!295077 c!731103) b!4297699))

(assert (= (and bm!295077 (not c!731103)) b!4297703))

(declare-fun m!4889755 () Bool)

(assert (=> bm!295056 m!4889755))

(declare-fun m!4889757 () Bool)

(assert (=> bm!295064 m!4889757))

(declare-fun m!4889759 () Bool)

(assert (=> bm!295083 m!4889759))

(declare-fun m!4889761 () Bool)

(assert (=> b!4297702 m!4889761))

(declare-fun m!4889763 () Bool)

(assert (=> bm!295065 m!4889763))

(declare-fun m!4889765 () Bool)

(assert (=> bm!295077 m!4889765))

(declare-fun m!4889767 () Bool)

(assert (=> bm!295080 m!4889767))

(declare-fun m!4889769 () Bool)

(assert (=> bm!295058 m!4889769))

(declare-fun m!4889771 () Bool)

(assert (=> bm!295055 m!4889771))

(declare-fun m!4889773 () Bool)

(assert (=> d!1266341 m!4889773))

(declare-fun m!4889775 () Bool)

(assert (=> d!1266341 m!4889775))

(assert (=> d!1266341 m!4889753))

(assert (=> d!1266341 m!4889735))

(declare-fun m!4889777 () Bool)

(assert (=> bm!295069 m!4889777))

(declare-fun m!4889779 () Bool)

(assert (=> bm!295059 m!4889779))

(assert (=> bm!295067 m!4889753))

(declare-fun m!4889781 () Bool)

(assert (=> b!4297699 m!4889781))

(declare-fun m!4889783 () Bool)

(assert (=> bm!295075 m!4889783))

(declare-fun m!4889785 () Bool)

(assert (=> bm!295061 m!4889785))

(declare-fun m!4889787 () Bool)

(assert (=> bm!295072 m!4889787))

(declare-fun m!4889789 () Bool)

(assert (=> bm!295062 m!4889789))

(declare-fun m!4889791 () Bool)

(assert (=> bm!295076 m!4889791))

(declare-fun m!4889793 () Bool)

(assert (=> b!4297690 m!4889793))

(declare-fun m!4889795 () Bool)

(assert (=> b!4297690 m!4889795))

(declare-fun m!4889797 () Bool)

(assert (=> b!4297690 m!4889797))

(declare-fun m!4889799 () Bool)

(assert (=> b!4297690 m!4889799))

(declare-fun m!4889801 () Bool)

(assert (=> bm!295078 m!4889801))

(declare-fun m!4889803 () Bool)

(assert (=> bm!295070 m!4889803))

(declare-fun m!4889805 () Bool)

(assert (=> bm!295071 m!4889805))

(declare-fun m!4889807 () Bool)

(assert (=> bm!295060 m!4889807))

(declare-fun m!4889809 () Bool)

(assert (=> bm!295074 m!4889809))

(declare-fun m!4889811 () Bool)

(assert (=> bm!295084 m!4889811))

(declare-fun m!4889813 () Bool)

(assert (=> b!4297698 m!4889813))

(declare-fun m!4889815 () Bool)

(assert (=> bm!295073 m!4889815))

(declare-fun m!4889817 () Bool)

(assert (=> bm!295068 m!4889817))

(declare-fun m!4889819 () Bool)

(assert (=> bm!295057 m!4889819))

(declare-fun m!4889821 () Bool)

(assert (=> bm!295079 m!4889821))

(declare-fun m!4889823 () Bool)

(assert (=> b!4297701 m!4889823))

(declare-fun m!4889825 () Bool)

(assert (=> b!4297693 m!4889825))

(declare-fun m!4889827 () Bool)

(assert (=> b!4297693 m!4889827))

(declare-fun m!4889829 () Bool)

(assert (=> b!4297693 m!4889829))

(declare-fun m!4889831 () Bool)

(assert (=> b!4297693 m!4889831))

(declare-fun m!4889833 () Bool)

(assert (=> b!4297693 m!4889833))

(declare-fun m!4889835 () Bool)

(assert (=> bm!295066 m!4889835))

(declare-fun m!4889837 () Bool)

(assert (=> bm!295082 m!4889837))

(declare-fun m!4889839 () Bool)

(assert (=> bm!295063 m!4889839))

(assert (=> b!4297644 d!1266341))

(declare-fun d!1266343 () Bool)

(declare-fun e!2671048 () Bool)

(assert (=> d!1266343 e!2671048))

(declare-fun res!1761426 () Bool)

(assert (=> d!1266343 (=> (not res!1761426) (not e!2671048))))

(declare-fun lt!1519367 () ListMap!1427)

(assert (=> d!1266343 (= res!1761426 (contains!9812 lt!1519367 (_1!26140 lt!1519187)))))

(declare-fun lt!1519368 () List!48018)

(assert (=> d!1266343 (= lt!1519367 (ListMap!1428 lt!1519368))))

(declare-fun lt!1519366 () Unit!66547)

(declare-fun lt!1519365 () Unit!66547)

(assert (=> d!1266343 (= lt!1519366 lt!1519365)))

(declare-datatypes ((Option!10152 0))(
  ( (None!10151) (Some!10151 (v!41830 V!9181)) )
))
(declare-fun getValueByKey!201 (List!48018 K!8979) Option!10152)

(assert (=> d!1266343 (= (getValueByKey!201 lt!1519368 (_1!26140 lt!1519187)) (Some!10151 (_2!26140 lt!1519187)))))

(declare-fun lemmaContainsTupThenGetReturnValue!32 (List!48018 K!8979 V!9181) Unit!66547)

(assert (=> d!1266343 (= lt!1519365 (lemmaContainsTupThenGetReturnValue!32 lt!1519368 (_1!26140 lt!1519187) (_2!26140 lt!1519187)))))

(declare-fun insertNoDuplicatedKeys!7 (List!48018 K!8979 V!9181) List!48018)

(assert (=> d!1266343 (= lt!1519368 (insertNoDuplicatedKeys!7 (toList!2158 lt!1519191) (_1!26140 lt!1519187) (_2!26140 lt!1519187)))))

(assert (=> d!1266343 (= (+!141 lt!1519191 lt!1519187) lt!1519367)))

(declare-fun b!4297712 () Bool)

(declare-fun res!1761425 () Bool)

(assert (=> b!4297712 (=> (not res!1761425) (not e!2671048))))

(assert (=> b!4297712 (= res!1761425 (= (getValueByKey!201 (toList!2158 lt!1519367) (_1!26140 lt!1519187)) (Some!10151 (_2!26140 lt!1519187))))))

(declare-fun b!4297713 () Bool)

(declare-fun contains!9815 (List!48018 tuple2!45722) Bool)

(assert (=> b!4297713 (= e!2671048 (contains!9815 (toList!2158 lt!1519367) lt!1519187))))

(assert (= (and d!1266343 res!1761426) b!4297712))

(assert (= (and b!4297712 res!1761425) b!4297713))

(declare-fun m!4889841 () Bool)

(assert (=> d!1266343 m!4889841))

(declare-fun m!4889843 () Bool)

(assert (=> d!1266343 m!4889843))

(declare-fun m!4889845 () Bool)

(assert (=> d!1266343 m!4889845))

(declare-fun m!4889847 () Bool)

(assert (=> d!1266343 m!4889847))

(declare-fun m!4889849 () Bool)

(assert (=> b!4297712 m!4889849))

(declare-fun m!4889851 () Bool)

(assert (=> b!4297713 m!4889851))

(assert (=> b!4297644 d!1266343))

(declare-fun bs!603860 () Bool)

(declare-fun b!4297718 () Bool)

(assert (= bs!603860 (and b!4297718 b!4297693)))

(declare-fun lambda!131829 () Int)

(assert (=> bs!603860 (= lambda!131829 lambda!131825)))

(declare-fun bs!603861 () Bool)

(assert (= bs!603861 (and b!4297718 b!4297690)))

(assert (=> bs!603861 (= lambda!131829 lambda!131826)))

(declare-fun d!1266345 () Bool)

(declare-fun res!1761431 () Bool)

(declare-fun e!2671051 () Bool)

(assert (=> d!1266345 (=> (not res!1761431) (not e!2671051))))

(declare-fun valid!3472 (MutLongMap!4493) Bool)

(assert (=> d!1266345 (= res!1761431 (valid!3472 (v!41828 (underlying!9216 hm!64))))))

(assert (=> d!1266345 (= (valid!3471 hm!64) e!2671051)))

(declare-fun res!1761432 () Bool)

(assert (=> b!4297718 (=> (not res!1761432) (not e!2671051))))

(assert (=> b!4297718 (= res!1761432 (forall!8598 (toList!2159 (map!9851 (v!41828 (underlying!9216 hm!64)))) lambda!131829))))

(declare-fun b!4297719 () Bool)

(assert (=> b!4297719 (= e!2671051 (allKeysSameHashInMap!260 (map!9851 (v!41828 (underlying!9216 hm!64))) (hashF!6441 hm!64)))))

(assert (= (and d!1266345 res!1761431) b!4297718))

(assert (= (and b!4297718 res!1761432) b!4297719))

(declare-fun m!4889853 () Bool)

(assert (=> d!1266345 m!4889853))

(assert (=> b!4297718 m!4889775))

(declare-fun m!4889855 () Bool)

(assert (=> b!4297718 m!4889855))

(assert (=> b!4297719 m!4889775))

(assert (=> b!4297719 m!4889775))

(declare-fun m!4889857 () Bool)

(assert (=> b!4297719 m!4889857))

(assert (=> b!4297649 d!1266345))

(declare-fun d!1266347 () Bool)

(declare-fun res!1761437 () Bool)

(declare-fun e!2671056 () Bool)

(assert (=> d!1266347 (=> res!1761437 e!2671056)))

(assert (=> d!1266347 (= res!1761437 ((_ is Nil!47894) (toList!2158 lt!1519191)))))

(assert (=> d!1266347 (= (forall!8597 (toList!2158 lt!1519191) p!6034) e!2671056)))

(declare-fun b!4297724 () Bool)

(declare-fun e!2671057 () Bool)

(assert (=> b!4297724 (= e!2671056 e!2671057)))

(declare-fun res!1761438 () Bool)

(assert (=> b!4297724 (=> (not res!1761438) (not e!2671057))))

(assert (=> b!4297724 (= res!1761438 (dynLambda!20338 p!6034 (h!53314 (toList!2158 lt!1519191))))))

(declare-fun b!4297725 () Bool)

(assert (=> b!4297725 (= e!2671057 (forall!8597 (t!354639 (toList!2158 lt!1519191)) p!6034))))

(assert (= (and d!1266347 (not res!1761437)) b!4297724))

(assert (= (and b!4297724 res!1761438) b!4297725))

(declare-fun b_lambda!126165 () Bool)

(assert (=> (not b_lambda!126165) (not b!4297724)))

(declare-fun t!354641 () Bool)

(declare-fun tb!257107 () Bool)

(assert (=> (and start!412614 (= p!6034 p!6034) t!354641) tb!257107))

(declare-fun result!314344 () Bool)

(assert (=> tb!257107 (= result!314344 true)))

(assert (=> b!4297724 t!354641))

(declare-fun b_and!339093 () Bool)

(assert (= b_and!339091 (and (=> t!354641 result!314344) b_and!339093)))

(declare-fun m!4889859 () Bool)

(assert (=> b!4297724 m!4889859))

(declare-fun m!4889861 () Bool)

(assert (=> b!4297725 m!4889861))

(assert (=> b!4297641 d!1266347))

(declare-fun d!1266349 () Bool)

(declare-fun lt!1519371 () ListMap!1427)

(declare-fun invariantList!526 (List!48018) Bool)

(assert (=> d!1266349 (invariantList!526 (toList!2158 lt!1519371))))

(assert (=> d!1266349 (= lt!1519371 (extractMap!260 (toList!2159 (map!9851 (v!41828 (underlying!9216 hm!64))))))))

(assert (=> d!1266349 (valid!3471 hm!64)))

(assert (=> d!1266349 (= (map!9850 hm!64) lt!1519371)))

(declare-fun bs!603862 () Bool)

(assert (= bs!603862 d!1266349))

(declare-fun m!4889863 () Bool)

(assert (=> bs!603862 m!4889863))

(assert (=> bs!603862 m!4889775))

(declare-fun m!4889865 () Bool)

(assert (=> bs!603862 m!4889865))

(assert (=> bs!603862 m!4889735))

(assert (=> b!4297641 d!1266349))

(declare-fun bs!603863 () Bool)

(declare-fun b!4297726 () Bool)

(assert (= bs!603863 (and b!4297726 b!4297693)))

(declare-fun lambda!131830 () Int)

(assert (=> bs!603863 (= lambda!131830 lambda!131825)))

(declare-fun bs!603864 () Bool)

(assert (= bs!603864 (and b!4297726 b!4297690)))

(assert (=> bs!603864 (= lambda!131830 lambda!131826)))

(declare-fun bs!603865 () Bool)

(assert (= bs!603865 (and b!4297726 b!4297718)))

(assert (=> bs!603865 (= lambda!131830 lambda!131829)))

(declare-fun d!1266351 () Bool)

(declare-fun res!1761439 () Bool)

(declare-fun e!2671058 () Bool)

(assert (=> d!1266351 (=> (not res!1761439) (not e!2671058))))

(assert (=> d!1266351 (= res!1761439 (valid!3472 (v!41828 (underlying!9216 (_2!26141 lt!1519190)))))))

(assert (=> d!1266351 (= (valid!3471 (_2!26141 lt!1519190)) e!2671058)))

(declare-fun res!1761440 () Bool)

(assert (=> b!4297726 (=> (not res!1761440) (not e!2671058))))

(assert (=> b!4297726 (= res!1761440 (forall!8598 (toList!2159 (map!9851 (v!41828 (underlying!9216 (_2!26141 lt!1519190))))) lambda!131830))))

(declare-fun b!4297727 () Bool)

(assert (=> b!4297727 (= e!2671058 (allKeysSameHashInMap!260 (map!9851 (v!41828 (underlying!9216 (_2!26141 lt!1519190)))) (hashF!6441 (_2!26141 lt!1519190))))))

(assert (= (and d!1266351 res!1761439) b!4297726))

(assert (= (and b!4297726 res!1761440) b!4297727))

(declare-fun m!4889867 () Bool)

(assert (=> d!1266351 m!4889867))

(declare-fun m!4889869 () Bool)

(assert (=> b!4297726 m!4889869))

(declare-fun m!4889871 () Bool)

(assert (=> b!4297726 m!4889871))

(assert (=> b!4297727 m!4889869))

(assert (=> b!4297727 m!4889869))

(declare-fun m!4889873 () Bool)

(assert (=> b!4297727 m!4889873))

(assert (=> b!4297647 d!1266351))

(declare-fun tp!1320247 () Bool)

(declare-fun b!4297732 () Bool)

(declare-fun e!2671061 () Bool)

(assert (=> b!4297732 (= e!2671061 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320247))))

(assert (=> b!4297643 (= tp!1320244 e!2671061)))

(assert (= (and b!4297643 ((_ is Cons!47894) (zeroValue!4752 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64))))))) b!4297732))

(declare-fun e!2671062 () Bool)

(declare-fun tp!1320248 () Bool)

(declare-fun b!4297733 () Bool)

(assert (=> b!4297733 (= e!2671062 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320248))))

(assert (=> b!4297643 (= tp!1320238 e!2671062)))

(assert (= (and b!4297643 ((_ is Cons!47894) (minValue!4752 (v!41827 (underlying!9215 (v!41828 (underlying!9216 hm!64))))))) b!4297733))

(declare-fun condMapEmpty!20193 () Bool)

(declare-fun mapDefault!20193 () List!48018)

(assert (=> mapNonEmpty!20190 (= condMapEmpty!20193 (= mapRest!20190 ((as const (Array (_ BitVec 32) List!48018)) mapDefault!20193)))))

(declare-fun e!2671068 () Bool)

(declare-fun mapRes!20193 () Bool)

(assert (=> mapNonEmpty!20190 (= tp!1320237 (and e!2671068 mapRes!20193))))

(declare-fun mapIsEmpty!20193 () Bool)

(assert (=> mapIsEmpty!20193 mapRes!20193))

(declare-fun mapNonEmpty!20193 () Bool)

(declare-fun tp!1320255 () Bool)

(declare-fun e!2671067 () Bool)

(assert (=> mapNonEmpty!20193 (= mapRes!20193 (and tp!1320255 e!2671067))))

(declare-fun mapRest!20193 () (Array (_ BitVec 32) List!48018))

(declare-fun mapKey!20193 () (_ BitVec 32))

(declare-fun mapValue!20193 () List!48018)

(assert (=> mapNonEmpty!20193 (= mapRest!20190 (store mapRest!20193 mapKey!20193 mapValue!20193))))

(declare-fun b!4297741 () Bool)

(declare-fun tp!1320256 () Bool)

(assert (=> b!4297741 (= e!2671068 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320256))))

(declare-fun b!4297740 () Bool)

(declare-fun tp!1320257 () Bool)

(assert (=> b!4297740 (= e!2671067 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320257))))

(assert (= (and mapNonEmpty!20190 condMapEmpty!20193) mapIsEmpty!20193))

(assert (= (and mapNonEmpty!20190 (not condMapEmpty!20193)) mapNonEmpty!20193))

(assert (= (and mapNonEmpty!20193 ((_ is Cons!47894) mapValue!20193)) b!4297740))

(assert (= (and mapNonEmpty!20190 ((_ is Cons!47894) mapDefault!20193)) b!4297741))

(declare-fun m!4889875 () Bool)

(assert (=> mapNonEmpty!20193 m!4889875))

(declare-fun e!2671069 () Bool)

(declare-fun tp!1320258 () Bool)

(declare-fun b!4297742 () Bool)

(assert (=> b!4297742 (= e!2671069 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320258))))

(assert (=> mapNonEmpty!20190 (= tp!1320243 e!2671069)))

(assert (= (and mapNonEmpty!20190 ((_ is Cons!47894) mapValue!20190)) b!4297742))

(declare-fun tp!1320259 () Bool)

(declare-fun b!4297743 () Bool)

(declare-fun e!2671070 () Bool)

(assert (=> b!4297743 (= e!2671070 (and tp_is_empty!23145 tp_is_empty!23147 tp!1320259))))

(assert (=> b!4297646 (= tp!1320241 e!2671070)))

(assert (= (and b!4297646 ((_ is Cons!47894) mapDefault!20190)) b!4297743))

(declare-fun b_lambda!126167 () Bool)

(assert (= b_lambda!126165 (or (and start!412614 b_free!127857) b_lambda!126167)))

(check-sat (not bm!295062) (not bm!295063) (not bm!295065) (not b!4297712) (not b!4297713) (not b_next!128563) (not b_lambda!126167) (not mapNonEmpty!20193) (not b!4297732) (not b!4297741) (not bm!295064) (not bm!295079) (not bm!295067) (not bm!295080) (not bm!295069) (not b!4297742) (not b_lambda!126163) (not b!4297725) (not b!4297698) (not b_next!128561) (not b!4297701) (not bm!295082) (not b!4297733) (not bm!295071) (not bm!295057) (not b!4297719) (not b!4297690) (not bm!295068) tp_is_empty!23147 (not bm!295061) (not bm!295056) (not bm!295060) (not d!1266341) (not bm!295058) (not bm!295077) (not bm!295072) (not d!1266345) (not bm!295074) (not bm!295073) (not b!4297727) b_and!339087 (not bm!295084) tp_is_empty!23145 (not b!4297726) (not bm!295070) (not bm!295078) (not b!4297740) (not d!1266349) (not b!4297718) (not bm!295076) (not bm!295066) (not bm!295083) (not d!1266343) (not bm!295059) (not b!4297702) (not d!1266351) (not b!4297699) b_and!339089 (not bm!295055) (not b!4297693) (not b_next!128565) (not b!4297743) (not bm!295075) b_and!339093)
(check-sat (not b_next!128561) (not b_next!128563) b_and!339087 b_and!339089 (not b_next!128565) b_and!339093)
