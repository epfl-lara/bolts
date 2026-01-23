; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496724 () Bool)

(assert start!496724)

(declare-fun b!4806968 () Bool)

(declare-fun b_free!129931 () Bool)

(declare-fun b_next!130721 () Bool)

(assert (=> b!4806968 (= b_free!129931 (not b_next!130721))))

(declare-fun tp!1359260 () Bool)

(declare-fun b_and!341691 () Bool)

(assert (=> b!4806968 (= tp!1359260 b_and!341691)))

(declare-fun b!4806965 () Bool)

(declare-fun b_free!129933 () Bool)

(declare-fun b_next!130723 () Bool)

(assert (=> b!4806965 (= b_free!129933 (not b_next!130723))))

(declare-fun tp!1359259 () Bool)

(declare-fun b_and!341693 () Bool)

(assert (=> b!4806965 (= tp!1359259 b_and!341693)))

(declare-fun b!4806964 () Bool)

(declare-datatypes ((Unit!141283 0))(
  ( (Unit!141284) )
))
(declare-fun e!3002350 () Unit!141283)

(declare-fun Unit!141285 () Unit!141283)

(assert (=> b!4806964 (= e!3002350 Unit!141285)))

(declare-fun e!3002355 () Bool)

(declare-fun e!3002345 () Bool)

(assert (=> b!4806965 (= e!3002355 (and e!3002345 tp!1359259))))

(declare-fun mapIsEmpty!22124 () Bool)

(declare-fun mapRes!22124 () Bool)

(assert (=> mapIsEmpty!22124 mapRes!22124))

(declare-fun b!4806966 () Bool)

(declare-fun e!3002346 () Bool)

(declare-fun e!3002352 () Bool)

(assert (=> b!4806966 (= e!3002346 e!3002352)))

(declare-fun b!4806967 () Bool)

(declare-fun Unit!141286 () Unit!141283)

(assert (=> b!4806967 (= e!3002350 Unit!141286)))

(declare-fun lt!1960224 () Unit!141283)

(declare-datatypes ((K!16009 0))(
  ( (K!16010 (val!21113 Int)) )
))
(declare-datatypes ((V!16255 0))(
  ( (V!16256 (val!21114 Int)) )
))
(declare-datatypes ((tuple2!57182 0))(
  ( (tuple2!57183 (_1!31885 K!16009) (_2!31885 V!16255)) )
))
(declare-datatypes ((List!54544 0))(
  ( (Nil!54420) (Cons!54420 (h!60852 tuple2!57182) (t!362000 List!54544)) )
))
(declare-datatypes ((tuple2!57184 0))(
  ( (tuple2!57185 (_1!31886 (_ BitVec 64)) (_2!31886 List!54544)) )
))
(declare-datatypes ((List!54545 0))(
  ( (Nil!54421) (Cons!54421 (h!60853 tuple2!57184) (t!362001 List!54545)) )
))
(declare-datatypes ((ListLongMap!5499 0))(
  ( (ListLongMap!5500 (toList!7057 List!54545)) )
))
(declare-fun lt!1960223 () ListLongMap!5499)

(declare-fun lt!1960220 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!227 (List!54545 (_ BitVec 64)) Unit!141283)

(assert (=> b!4806967 (= lt!1960224 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!227 (toList!7057 lt!1960223) lt!1960220))))

(declare-fun containsKey!4092 (List!54545 (_ BitVec 64)) Bool)

(assert (=> b!4806967 (containsKey!4092 (toList!7057 lt!1960223) lt!1960220)))

(declare-fun lt!1960219 () Unit!141283)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2225 (List!54545 (_ BitVec 64)) Unit!141283)

(assert (=> b!4806967 (= lt!1960219 (lemmaContainsKeyImpliesGetValueByKeyDefined!2225 (toList!7057 lt!1960223) lt!1960220))))

(declare-datatypes ((Option!13240 0))(
  ( (None!13239) (Some!13239 (v!48641 List!54544)) )
))
(declare-fun isDefined!10379 (Option!13240) Bool)

(declare-fun getValueByKey!2437 (List!54545 (_ BitVec 64)) Option!13240)

(assert (=> b!4806967 (isDefined!10379 (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220))))

(declare-fun lt!1960225 () Unit!141283)

(declare-fun lt!1960222 () List!54544)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!956 (List!54545 (_ BitVec 64) List!54544) Unit!141283)

(assert (=> b!4806967 (= lt!1960225 (lemmaGetValueByKeyImpliesContainsTuple!956 (toList!7057 lt!1960223) lt!1960220 lt!1960222))))

(assert (=> b!4806967 false))

(declare-fun e!3002347 () Bool)

(declare-datatypes ((array!18338 0))(
  ( (array!18339 (arr!8179 (Array (_ BitVec 32) (_ BitVec 64))) (size!36425 (_ BitVec 32))) )
))
(declare-datatypes ((array!18340 0))(
  ( (array!18341 (arr!8180 (Array (_ BitVec 32) List!54544)) (size!36426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9994 0))(
  ( (LongMapFixedSize!9995 (defaultEntry!5415 Int) (mask!14966 (_ BitVec 32)) (extraKeys!5272 (_ BitVec 32)) (zeroValue!5285 List!54544) (minValue!5285 List!54544) (_size!10019 (_ BitVec 32)) (_keys!5339 array!18338) (_values!5310 array!18340) (_vacant!5062 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19753 0))(
  ( (Cell!19754 (v!48642 LongMapFixedSize!9994)) )
))
(declare-datatypes ((MutLongMap!4997 0))(
  ( (LongMap!4997 (underlying!10201 Cell!19753)) (MutLongMapExt!4996 (__x!33089 Int)) )
))
(declare-datatypes ((Hashable!7008 0))(
  ( (HashableExt!7007 (__x!33090 Int)) )
))
(declare-datatypes ((Cell!19755 0))(
  ( (Cell!19756 (v!48643 MutLongMap!4997)) )
))
(declare-datatypes ((MutableMap!4881 0))(
  ( (MutableMapExt!4880 (__x!33091 Int)) (HashMap!4881 (underlying!10202 Cell!19755) (hashF!13276 Hashable!7008) (_size!10020 (_ BitVec 32)) (defaultValue!5052 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4881)

(declare-fun tp!1359263 () Bool)

(declare-fun tp!1359257 () Bool)

(declare-fun array_inv!5889 (array!18338) Bool)

(declare-fun array_inv!5890 (array!18340) Bool)

(assert (=> b!4806968 (= e!3002352 (and tp!1359260 tp!1359263 tp!1359257 (array_inv!5889 (_keys!5339 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) (array_inv!5890 (_values!5310 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) e!3002347))))

(declare-fun b!4806969 () Bool)

(declare-fun e!3002354 () Bool)

(declare-fun e!3002349 () Bool)

(assert (=> b!4806969 (= e!3002354 e!3002349)))

(declare-fun res!2045048 () Bool)

(assert (=> b!4806969 (=> (not res!2045048) (not e!3002349))))

(get-info :version)

(assert (=> b!4806969 (= res!2045048 ((_ is LongMap!4997) (v!48643 (underlying!10202 thiss!41921))))))

(declare-fun lt!1960218 () Unit!141283)

(assert (=> b!4806969 (= lt!1960218 e!3002350)))

(declare-fun c!819306 () Bool)

(declare-fun contains!18083 (List!54545 tuple2!57184) Bool)

(assert (=> b!4806969 (= c!819306 (not (contains!18083 (toList!7057 lt!1960223) (tuple2!57185 lt!1960220 lt!1960222))))))

(declare-fun apply!13079 (MutLongMap!4997 (_ BitVec 64)) List!54544)

(assert (=> b!4806969 (= lt!1960222 (apply!13079 (v!48643 (underlying!10202 thiss!41921)) lt!1960220))))

(declare-fun map!12329 (MutLongMap!4997) ListLongMap!5499)

(assert (=> b!4806969 (= lt!1960223 (map!12329 (v!48643 (underlying!10202 thiss!41921))))))

(declare-fun res!2045050 () Bool)

(declare-fun e!3002351 () Bool)

(assert (=> start!496724 (=> (not res!2045050) (not e!3002351))))

(assert (=> start!496724 (= res!2045050 ((_ is HashMap!4881) thiss!41921))))

(assert (=> start!496724 e!3002351))

(assert (=> start!496724 e!3002355))

(declare-fun tp_is_empty!33845 () Bool)

(assert (=> start!496724 tp_is_empty!33845))

(declare-fun b!4806970 () Bool)

(assert (=> b!4806970 (= e!3002351 e!3002354)))

(declare-fun res!2045051 () Bool)

(assert (=> b!4806970 (=> (not res!2045051) (not e!3002354))))

(declare-fun contains!18084 (MutLongMap!4997 (_ BitVec 64)) Bool)

(assert (=> b!4806970 (= res!2045051 (contains!18084 (v!48643 (underlying!10202 thiss!41921)) lt!1960220))))

(declare-fun key!1652 () K!16009)

(declare-fun hash!5074 (Hashable!7008 K!16009) (_ BitVec 64))

(assert (=> b!4806970 (= lt!1960220 (hash!5074 (hashF!13276 thiss!41921) key!1652))))

(declare-fun b!4806971 () Bool)

(declare-fun valid!4008 (MutLongMap!4997) Bool)

(assert (=> b!4806971 (= e!3002349 (not (valid!4008 (v!48643 (underlying!10202 thiss!41921)))))))

(declare-fun b!4806972 () Bool)

(declare-fun tp!1359258 () Bool)

(assert (=> b!4806972 (= e!3002347 (and tp!1359258 mapRes!22124))))

(declare-fun condMapEmpty!22124 () Bool)

(declare-fun mapDefault!22124 () List!54544)

(assert (=> b!4806972 (= condMapEmpty!22124 (= (arr!8180 (_values!5310 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54544)) mapDefault!22124)))))

(declare-fun b!4806973 () Bool)

(declare-fun res!2045049 () Bool)

(assert (=> b!4806973 (=> (not res!2045049) (not e!3002351))))

(declare-fun valid!4009 (MutableMap!4881) Bool)

(assert (=> b!4806973 (= res!2045049 (valid!4009 thiss!41921))))

(declare-fun b!4806974 () Bool)

(declare-fun e!3002348 () Bool)

(assert (=> b!4806974 (= e!3002348 e!3002346)))

(declare-fun mapNonEmpty!22124 () Bool)

(declare-fun tp!1359261 () Bool)

(declare-fun tp!1359262 () Bool)

(assert (=> mapNonEmpty!22124 (= mapRes!22124 (and tp!1359261 tp!1359262))))

(declare-fun mapRest!22124 () (Array (_ BitVec 32) List!54544))

(declare-fun mapKey!22124 () (_ BitVec 32))

(declare-fun mapValue!22124 () List!54544)

(assert (=> mapNonEmpty!22124 (= (arr!8180 (_values!5310 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) (store mapRest!22124 mapKey!22124 mapValue!22124))))

(declare-fun b!4806975 () Bool)

(declare-fun lt!1960221 () MutLongMap!4997)

(assert (=> b!4806975 (= e!3002345 (and e!3002348 ((_ is LongMap!4997) lt!1960221)))))

(assert (=> b!4806975 (= lt!1960221 (v!48643 (underlying!10202 thiss!41921)))))

(assert (= (and start!496724 res!2045050) b!4806973))

(assert (= (and b!4806973 res!2045049) b!4806970))

(assert (= (and b!4806970 res!2045051) b!4806969))

(assert (= (and b!4806969 c!819306) b!4806967))

(assert (= (and b!4806969 (not c!819306)) b!4806964))

(assert (= (and b!4806969 res!2045048) b!4806971))

(assert (= (and b!4806972 condMapEmpty!22124) mapIsEmpty!22124))

(assert (= (and b!4806972 (not condMapEmpty!22124)) mapNonEmpty!22124))

(assert (= b!4806968 b!4806972))

(assert (= b!4806966 b!4806968))

(assert (= b!4806974 b!4806966))

(assert (= (and b!4806975 ((_ is LongMap!4997) (v!48643 (underlying!10202 thiss!41921)))) b!4806974))

(assert (= b!4806965 b!4806975))

(assert (= (and start!496724 ((_ is HashMap!4881) thiss!41921)) b!4806965))

(declare-fun m!5793240 () Bool)

(assert (=> b!4806970 m!5793240))

(declare-fun m!5793242 () Bool)

(assert (=> b!4806970 m!5793242))

(declare-fun m!5793244 () Bool)

(assert (=> b!4806973 m!5793244))

(declare-fun m!5793246 () Bool)

(assert (=> mapNonEmpty!22124 m!5793246))

(declare-fun m!5793248 () Bool)

(assert (=> b!4806968 m!5793248))

(declare-fun m!5793250 () Bool)

(assert (=> b!4806968 m!5793250))

(declare-fun m!5793252 () Bool)

(assert (=> b!4806971 m!5793252))

(declare-fun m!5793254 () Bool)

(assert (=> b!4806967 m!5793254))

(declare-fun m!5793256 () Bool)

(assert (=> b!4806967 m!5793256))

(declare-fun m!5793258 () Bool)

(assert (=> b!4806967 m!5793258))

(declare-fun m!5793260 () Bool)

(assert (=> b!4806967 m!5793260))

(declare-fun m!5793262 () Bool)

(assert (=> b!4806967 m!5793262))

(assert (=> b!4806967 m!5793258))

(declare-fun m!5793264 () Bool)

(assert (=> b!4806967 m!5793264))

(declare-fun m!5793266 () Bool)

(assert (=> b!4806969 m!5793266))

(declare-fun m!5793268 () Bool)

(assert (=> b!4806969 m!5793268))

(declare-fun m!5793270 () Bool)

(assert (=> b!4806969 m!5793270))

(check-sat (not b!4806973) (not b!4806969) (not b!4806967) (not b!4806970) b_and!341693 (not mapNonEmpty!22124) (not b!4806968) (not b!4806971) tp_is_empty!33845 (not b!4806972) (not b_next!130721) b_and!341691 (not b_next!130723))
(check-sat b_and!341691 b_and!341693 (not b_next!130721) (not b_next!130723))
(get-model)

(declare-fun lt!1960228 () Bool)

(declare-fun d!1539815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9764 (List!54545) (InoxSet tuple2!57184))

(assert (=> d!1539815 (= lt!1960228 (select (content!9764 (toList!7057 lt!1960223)) (tuple2!57185 lt!1960220 lt!1960222)))))

(declare-fun e!3002361 () Bool)

(assert (=> d!1539815 (= lt!1960228 e!3002361)))

(declare-fun res!2045057 () Bool)

(assert (=> d!1539815 (=> (not res!2045057) (not e!3002361))))

(assert (=> d!1539815 (= res!2045057 ((_ is Cons!54421) (toList!7057 lt!1960223)))))

(assert (=> d!1539815 (= (contains!18083 (toList!7057 lt!1960223) (tuple2!57185 lt!1960220 lt!1960222)) lt!1960228)))

(declare-fun b!4806980 () Bool)

(declare-fun e!3002360 () Bool)

(assert (=> b!4806980 (= e!3002361 e!3002360)))

(declare-fun res!2045056 () Bool)

(assert (=> b!4806980 (=> res!2045056 e!3002360)))

(assert (=> b!4806980 (= res!2045056 (= (h!60853 (toList!7057 lt!1960223)) (tuple2!57185 lt!1960220 lt!1960222)))))

(declare-fun b!4806981 () Bool)

(assert (=> b!4806981 (= e!3002360 (contains!18083 (t!362001 (toList!7057 lt!1960223)) (tuple2!57185 lt!1960220 lt!1960222)))))

(assert (= (and d!1539815 res!2045057) b!4806980))

(assert (= (and b!4806980 (not res!2045056)) b!4806981))

(declare-fun m!5793272 () Bool)

(assert (=> d!1539815 m!5793272))

(declare-fun m!5793274 () Bool)

(assert (=> d!1539815 m!5793274))

(declare-fun m!5793276 () Bool)

(assert (=> b!4806981 m!5793276))

(assert (=> b!4806969 d!1539815))

(declare-fun d!1539817 () Bool)

(declare-fun e!3002364 () Bool)

(assert (=> d!1539817 e!3002364))

(declare-fun c!819309 () Bool)

(assert (=> d!1539817 (= c!819309 (contains!18084 (v!48643 (underlying!10202 thiss!41921)) lt!1960220))))

(declare-fun lt!1960231 () List!54544)

(declare-fun apply!13080 (LongMapFixedSize!9994 (_ BitVec 64)) List!54544)

(assert (=> d!1539817 (= lt!1960231 (apply!13080 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))) lt!1960220))))

(assert (=> d!1539817 (valid!4008 (v!48643 (underlying!10202 thiss!41921)))))

(assert (=> d!1539817 (= (apply!13079 (v!48643 (underlying!10202 thiss!41921)) lt!1960220) lt!1960231)))

(declare-fun b!4806986 () Bool)

(declare-fun get!18614 (Option!13240) List!54544)

(assert (=> b!4806986 (= e!3002364 (= lt!1960231 (get!18614 (getValueByKey!2437 (toList!7057 (map!12329 (v!48643 (underlying!10202 thiss!41921)))) lt!1960220))))))

(declare-fun b!4806987 () Bool)

(declare-fun dynLambda!22113 (Int (_ BitVec 64)) List!54544)

(assert (=> b!4806987 (= e!3002364 (= lt!1960231 (dynLambda!22113 (defaultEntry!5415 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))) lt!1960220)))))

(assert (=> b!4806987 ((_ is LongMap!4997) (v!48643 (underlying!10202 thiss!41921)))))

(assert (= (and d!1539817 c!819309) b!4806986))

(assert (= (and d!1539817 (not c!819309)) b!4806987))

(declare-fun b_lambda!188117 () Bool)

(assert (=> (not b_lambda!188117) (not b!4806987)))

(declare-fun t!362003 () Bool)

(declare-fun tb!257509 () Bool)

(assert (=> (and b!4806968 (= (defaultEntry!5415 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))) (defaultEntry!5415 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) t!362003) tb!257509))

(assert (=> b!4806987 t!362003))

(declare-fun result!319540 () Bool)

(declare-fun b_and!341695 () Bool)

(assert (= b_and!341691 (and (=> t!362003 result!319540) b_and!341695)))

(assert (=> d!1539817 m!5793240))

(declare-fun m!5793278 () Bool)

(assert (=> d!1539817 m!5793278))

(assert (=> d!1539817 m!5793252))

(assert (=> b!4806986 m!5793270))

(declare-fun m!5793280 () Bool)

(assert (=> b!4806986 m!5793280))

(assert (=> b!4806986 m!5793280))

(declare-fun m!5793282 () Bool)

(assert (=> b!4806986 m!5793282))

(declare-fun m!5793284 () Bool)

(assert (=> b!4806987 m!5793284))

(assert (=> b!4806969 d!1539817))

(declare-fun d!1539819 () Bool)

(declare-fun map!12330 (LongMapFixedSize!9994) ListLongMap!5499)

(assert (=> d!1539819 (= (map!12329 (v!48643 (underlying!10202 thiss!41921))) (map!12330 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))))))

(declare-fun bs!1159898 () Bool)

(assert (= bs!1159898 d!1539819))

(declare-fun m!5793286 () Bool)

(assert (=> bs!1159898 m!5793286))

(assert (=> b!4806969 d!1539819))

(declare-fun d!1539821 () Bool)

(declare-fun lt!1960234 () Bool)

(declare-fun contains!18085 (ListLongMap!5499 (_ BitVec 64)) Bool)

(assert (=> d!1539821 (= lt!1960234 (contains!18085 (map!12329 (v!48643 (underlying!10202 thiss!41921))) lt!1960220))))

(declare-fun contains!18086 (LongMapFixedSize!9994 (_ BitVec 64)) Bool)

(assert (=> d!1539821 (= lt!1960234 (contains!18086 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))) lt!1960220))))

(assert (=> d!1539821 (valid!4008 (v!48643 (underlying!10202 thiss!41921)))))

(assert (=> d!1539821 (= (contains!18084 (v!48643 (underlying!10202 thiss!41921)) lt!1960220) lt!1960234)))

(declare-fun bs!1159899 () Bool)

(assert (= bs!1159899 d!1539821))

(assert (=> bs!1159899 m!5793270))

(assert (=> bs!1159899 m!5793270))

(declare-fun m!5793288 () Bool)

(assert (=> bs!1159899 m!5793288))

(declare-fun m!5793290 () Bool)

(assert (=> bs!1159899 m!5793290))

(assert (=> bs!1159899 m!5793252))

(assert (=> b!4806970 d!1539821))

(declare-fun d!1539823 () Bool)

(declare-fun hash!5075 (Hashable!7008 K!16009) (_ BitVec 64))

(assert (=> d!1539823 (= (hash!5074 (hashF!13276 thiss!41921) key!1652) (hash!5075 (hashF!13276 thiss!41921) key!1652))))

(declare-fun bs!1159900 () Bool)

(assert (= bs!1159900 d!1539823))

(declare-fun m!5793292 () Bool)

(assert (=> bs!1159900 m!5793292))

(assert (=> b!4806970 d!1539823))

(declare-fun d!1539825 () Bool)

(assert (=> d!1539825 (= (array_inv!5889 (_keys!5339 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) (bvsge (size!36425 (_keys!5339 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806968 d!1539825))

(declare-fun d!1539827 () Bool)

(assert (=> d!1539827 (= (array_inv!5890 (_values!5310 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) (bvsge (size!36426 (_values!5310 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806968 d!1539827))

(declare-fun d!1539829 () Bool)

(declare-fun res!2045062 () Bool)

(declare-fun e!3002367 () Bool)

(assert (=> d!1539829 (=> (not res!2045062) (not e!3002367))))

(assert (=> d!1539829 (= res!2045062 (valid!4008 (v!48643 (underlying!10202 thiss!41921))))))

(assert (=> d!1539829 (= (valid!4009 thiss!41921) e!3002367)))

(declare-fun b!4806992 () Bool)

(declare-fun res!2045063 () Bool)

(assert (=> b!4806992 (=> (not res!2045063) (not e!3002367))))

(declare-fun lambda!233471 () Int)

(declare-fun forall!12371 (List!54545 Int) Bool)

(assert (=> b!4806992 (= res!2045063 (forall!12371 (toList!7057 (map!12329 (v!48643 (underlying!10202 thiss!41921)))) lambda!233471))))

(declare-fun b!4806993 () Bool)

(declare-fun allKeysSameHashInMap!2389 (ListLongMap!5499 Hashable!7008) Bool)

(assert (=> b!4806993 (= e!3002367 (allKeysSameHashInMap!2389 (map!12329 (v!48643 (underlying!10202 thiss!41921))) (hashF!13276 thiss!41921)))))

(assert (= (and d!1539829 res!2045062) b!4806992))

(assert (= (and b!4806992 res!2045063) b!4806993))

(assert (=> d!1539829 m!5793252))

(assert (=> b!4806992 m!5793270))

(declare-fun m!5793294 () Bool)

(assert (=> b!4806992 m!5793294))

(assert (=> b!4806993 m!5793270))

(assert (=> b!4806993 m!5793270))

(declare-fun m!5793296 () Bool)

(assert (=> b!4806993 m!5793296))

(assert (=> b!4806973 d!1539829))

(declare-fun b!4807002 () Bool)

(declare-fun e!3002372 () Option!13240)

(assert (=> b!4807002 (= e!3002372 (Some!13239 (_2!31886 (h!60853 (toList!7057 lt!1960223)))))))

(declare-fun b!4807005 () Bool)

(declare-fun e!3002373 () Option!13240)

(assert (=> b!4807005 (= e!3002373 None!13239)))

(declare-fun b!4807004 () Bool)

(assert (=> b!4807004 (= e!3002373 (getValueByKey!2437 (t!362001 (toList!7057 lt!1960223)) lt!1960220))))

(declare-fun b!4807003 () Bool)

(assert (=> b!4807003 (= e!3002372 e!3002373)))

(declare-fun c!819315 () Bool)

(assert (=> b!4807003 (= c!819315 (and ((_ is Cons!54421) (toList!7057 lt!1960223)) (not (= (_1!31886 (h!60853 (toList!7057 lt!1960223))) lt!1960220))))))

(declare-fun d!1539831 () Bool)

(declare-fun c!819314 () Bool)

(assert (=> d!1539831 (= c!819314 (and ((_ is Cons!54421) (toList!7057 lt!1960223)) (= (_1!31886 (h!60853 (toList!7057 lt!1960223))) lt!1960220)))))

(assert (=> d!1539831 (= (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220) e!3002372)))

(assert (= (and d!1539831 c!819314) b!4807002))

(assert (= (and d!1539831 (not c!819314)) b!4807003))

(assert (= (and b!4807003 c!819315) b!4807004))

(assert (= (and b!4807003 (not c!819315)) b!4807005))

(declare-fun m!5793298 () Bool)

(assert (=> b!4807004 m!5793298))

(assert (=> b!4806967 d!1539831))

(declare-fun d!1539833 () Bool)

(declare-fun res!2045068 () Bool)

(declare-fun e!3002378 () Bool)

(assert (=> d!1539833 (=> res!2045068 e!3002378)))

(assert (=> d!1539833 (= res!2045068 (and ((_ is Cons!54421) (toList!7057 lt!1960223)) (= (_1!31886 (h!60853 (toList!7057 lt!1960223))) lt!1960220)))))

(assert (=> d!1539833 (= (containsKey!4092 (toList!7057 lt!1960223) lt!1960220) e!3002378)))

(declare-fun b!4807010 () Bool)

(declare-fun e!3002379 () Bool)

(assert (=> b!4807010 (= e!3002378 e!3002379)))

(declare-fun res!2045069 () Bool)

(assert (=> b!4807010 (=> (not res!2045069) (not e!3002379))))

(assert (=> b!4807010 (= res!2045069 (and (or (not ((_ is Cons!54421) (toList!7057 lt!1960223))) (bvsle (_1!31886 (h!60853 (toList!7057 lt!1960223))) lt!1960220)) ((_ is Cons!54421) (toList!7057 lt!1960223)) (bvslt (_1!31886 (h!60853 (toList!7057 lt!1960223))) lt!1960220)))))

(declare-fun b!4807011 () Bool)

(assert (=> b!4807011 (= e!3002379 (containsKey!4092 (t!362001 (toList!7057 lt!1960223)) lt!1960220))))

(assert (= (and d!1539833 (not res!2045068)) b!4807010))

(assert (= (and b!4807010 res!2045069) b!4807011))

(declare-fun m!5793300 () Bool)

(assert (=> b!4807011 m!5793300))

(assert (=> b!4806967 d!1539833))

(declare-fun d!1539835 () Bool)

(assert (=> d!1539835 (isDefined!10379 (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220))))

(declare-fun lt!1960237 () Unit!141283)

(declare-fun choose!34802 (List!54545 (_ BitVec 64)) Unit!141283)

(assert (=> d!1539835 (= lt!1960237 (choose!34802 (toList!7057 lt!1960223) lt!1960220))))

(declare-fun e!3002382 () Bool)

(assert (=> d!1539835 e!3002382))

(declare-fun res!2045072 () Bool)

(assert (=> d!1539835 (=> (not res!2045072) (not e!3002382))))

(declare-fun isStrictlySorted!917 (List!54545) Bool)

(assert (=> d!1539835 (= res!2045072 (isStrictlySorted!917 (toList!7057 lt!1960223)))))

(assert (=> d!1539835 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2225 (toList!7057 lt!1960223) lt!1960220) lt!1960237)))

(declare-fun b!4807014 () Bool)

(assert (=> b!4807014 (= e!3002382 (containsKey!4092 (toList!7057 lt!1960223) lt!1960220))))

(assert (= (and d!1539835 res!2045072) b!4807014))

(assert (=> d!1539835 m!5793258))

(assert (=> d!1539835 m!5793258))

(assert (=> d!1539835 m!5793264))

(declare-fun m!5793302 () Bool)

(assert (=> d!1539835 m!5793302))

(declare-fun m!5793304 () Bool)

(assert (=> d!1539835 m!5793304))

(assert (=> b!4807014 m!5793260))

(assert (=> b!4806967 d!1539835))

(declare-fun d!1539837 () Bool)

(declare-fun isEmpty!29535 (Option!13240) Bool)

(assert (=> d!1539837 (= (isDefined!10379 (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220)) (not (isEmpty!29535 (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220))))))

(declare-fun bs!1159901 () Bool)

(assert (= bs!1159901 d!1539837))

(assert (=> bs!1159901 m!5793258))

(declare-fun m!5793306 () Bool)

(assert (=> bs!1159901 m!5793306))

(assert (=> b!4806967 d!1539837))

(declare-fun d!1539839 () Bool)

(assert (=> d!1539839 (containsKey!4092 (toList!7057 lt!1960223) lt!1960220)))

(declare-fun lt!1960240 () Unit!141283)

(declare-fun choose!34803 (List!54545 (_ BitVec 64)) Unit!141283)

(assert (=> d!1539839 (= lt!1960240 (choose!34803 (toList!7057 lt!1960223) lt!1960220))))

(declare-fun e!3002385 () Bool)

(assert (=> d!1539839 e!3002385))

(declare-fun res!2045075 () Bool)

(assert (=> d!1539839 (=> (not res!2045075) (not e!3002385))))

(assert (=> d!1539839 (= res!2045075 (isStrictlySorted!917 (toList!7057 lt!1960223)))))

(assert (=> d!1539839 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!227 (toList!7057 lt!1960223) lt!1960220) lt!1960240)))

(declare-fun b!4807017 () Bool)

(assert (=> b!4807017 (= e!3002385 (isDefined!10379 (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220)))))

(assert (= (and d!1539839 res!2045075) b!4807017))

(assert (=> d!1539839 m!5793260))

(declare-fun m!5793308 () Bool)

(assert (=> d!1539839 m!5793308))

(assert (=> d!1539839 m!5793304))

(assert (=> b!4807017 m!5793258))

(assert (=> b!4807017 m!5793258))

(assert (=> b!4807017 m!5793264))

(assert (=> b!4806967 d!1539839))

(declare-fun d!1539841 () Bool)

(assert (=> d!1539841 (contains!18083 (toList!7057 lt!1960223) (tuple2!57185 lt!1960220 lt!1960222))))

(declare-fun lt!1960243 () Unit!141283)

(declare-fun choose!34804 (List!54545 (_ BitVec 64) List!54544) Unit!141283)

(assert (=> d!1539841 (= lt!1960243 (choose!34804 (toList!7057 lt!1960223) lt!1960220 lt!1960222))))

(declare-fun e!3002388 () Bool)

(assert (=> d!1539841 e!3002388))

(declare-fun res!2045078 () Bool)

(assert (=> d!1539841 (=> (not res!2045078) (not e!3002388))))

(assert (=> d!1539841 (= res!2045078 (isStrictlySorted!917 (toList!7057 lt!1960223)))))

(assert (=> d!1539841 (= (lemmaGetValueByKeyImpliesContainsTuple!956 (toList!7057 lt!1960223) lt!1960220 lt!1960222) lt!1960243)))

(declare-fun b!4807020 () Bool)

(assert (=> b!4807020 (= e!3002388 (= (getValueByKey!2437 (toList!7057 lt!1960223) lt!1960220) (Some!13239 lt!1960222)))))

(assert (= (and d!1539841 res!2045078) b!4807020))

(assert (=> d!1539841 m!5793266))

(declare-fun m!5793310 () Bool)

(assert (=> d!1539841 m!5793310))

(assert (=> d!1539841 m!5793304))

(assert (=> b!4807020 m!5793258))

(assert (=> b!4806967 d!1539841))

(declare-fun d!1539843 () Bool)

(declare-fun valid!4010 (LongMapFixedSize!9994) Bool)

(assert (=> d!1539843 (= (valid!4008 (v!48643 (underlying!10202 thiss!41921))) (valid!4010 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))))))

(declare-fun bs!1159902 () Bool)

(assert (= bs!1159902 d!1539843))

(declare-fun m!5793312 () Bool)

(assert (=> bs!1159902 m!5793312))

(assert (=> b!4806971 d!1539843))

(declare-fun b!4807027 () Bool)

(declare-fun tp_is_empty!33847 () Bool)

(declare-fun e!3002393 () Bool)

(declare-fun tp!1359271 () Bool)

(assert (=> b!4807027 (= e!3002393 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359271))))

(declare-fun tp!1359270 () Bool)

(declare-fun e!3002394 () Bool)

(declare-fun b!4807028 () Bool)

(assert (=> b!4807028 (= e!3002394 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359270))))

(declare-fun mapIsEmpty!22127 () Bool)

(declare-fun mapRes!22127 () Bool)

(assert (=> mapIsEmpty!22127 mapRes!22127))

(declare-fun condMapEmpty!22127 () Bool)

(declare-fun mapDefault!22127 () List!54544)

(assert (=> mapNonEmpty!22124 (= condMapEmpty!22127 (= mapRest!22124 ((as const (Array (_ BitVec 32) List!54544)) mapDefault!22127)))))

(assert (=> mapNonEmpty!22124 (= tp!1359261 (and e!3002394 mapRes!22127))))

(declare-fun mapNonEmpty!22127 () Bool)

(declare-fun tp!1359272 () Bool)

(assert (=> mapNonEmpty!22127 (= mapRes!22127 (and tp!1359272 e!3002393))))

(declare-fun mapRest!22127 () (Array (_ BitVec 32) List!54544))

(declare-fun mapValue!22127 () List!54544)

(declare-fun mapKey!22127 () (_ BitVec 32))

(assert (=> mapNonEmpty!22127 (= mapRest!22124 (store mapRest!22127 mapKey!22127 mapValue!22127))))

(assert (= (and mapNonEmpty!22124 condMapEmpty!22127) mapIsEmpty!22127))

(assert (= (and mapNonEmpty!22124 (not condMapEmpty!22127)) mapNonEmpty!22127))

(assert (= (and mapNonEmpty!22127 ((_ is Cons!54420) mapValue!22127)) b!4807027))

(assert (= (and mapNonEmpty!22124 ((_ is Cons!54420) mapDefault!22127)) b!4807028))

(declare-fun m!5793314 () Bool)

(assert (=> mapNonEmpty!22127 m!5793314))

(declare-fun b!4807033 () Bool)

(declare-fun tp!1359275 () Bool)

(declare-fun e!3002397 () Bool)

(assert (=> b!4807033 (= e!3002397 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359275))))

(assert (=> mapNonEmpty!22124 (= tp!1359262 e!3002397)))

(assert (= (and mapNonEmpty!22124 ((_ is Cons!54420) mapValue!22124)) b!4807033))

(declare-fun tp!1359276 () Bool)

(declare-fun e!3002398 () Bool)

(declare-fun b!4807034 () Bool)

(assert (=> b!4807034 (= e!3002398 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359276))))

(assert (=> b!4806968 (= tp!1359263 e!3002398)))

(assert (= (and b!4806968 ((_ is Cons!54420) (zeroValue!5285 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))))) b!4807034))

(declare-fun e!3002399 () Bool)

(declare-fun b!4807035 () Bool)

(declare-fun tp!1359277 () Bool)

(assert (=> b!4807035 (= e!3002399 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359277))))

(assert (=> b!4806968 (= tp!1359257 e!3002399)))

(assert (= (and b!4806968 ((_ is Cons!54420) (minValue!5285 (v!48642 (underlying!10201 (v!48643 (underlying!10202 thiss!41921))))))) b!4807035))

(declare-fun tp!1359278 () Bool)

(declare-fun b!4807036 () Bool)

(declare-fun e!3002400 () Bool)

(assert (=> b!4807036 (= e!3002400 (and tp_is_empty!33845 tp_is_empty!33847 tp!1359278))))

(assert (=> b!4806972 (= tp!1359258 e!3002400)))

(assert (= (and b!4806972 ((_ is Cons!54420) mapDefault!22124)) b!4807036))

(declare-fun b_lambda!188119 () Bool)

(assert (= b_lambda!188117 (or (and b!4806968 b_free!129931) b_lambda!188119)))

(check-sat (not b_next!130721) (not d!1539823) (not b!4807017) tp_is_empty!33847 (not b_next!130723) (not b!4806981) (not b!4807020) b_and!341693 (not b!4806986) (not d!1539829) (not b!4807011) (not tb!257509) (not b!4807027) (not b!4807004) b_and!341695 (not d!1539819) (not d!1539843) (not b!4806993) (not d!1539815) (not b!4807035) (not d!1539841) (not b!4807034) tp_is_empty!33845 (not b!4807028) (not d!1539817) (not mapNonEmpty!22127) (not d!1539839) (not b!4807033) (not d!1539837) (not b!4807036) (not d!1539835) (not d!1539821) (not b_lambda!188119) (not b!4806992) (not b!4807014))
(check-sat b_and!341695 b_and!341693 (not b_next!130721) (not b_next!130723))
