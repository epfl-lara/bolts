; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416728 () Bool)

(assert start!416728)

(declare-fun b!4327104 () Bool)

(declare-fun b_free!129117 () Bool)

(declare-fun b_next!129821 () Bool)

(assert (=> b!4327104 (= b_free!129117 (not b_next!129821))))

(declare-fun tp!1327862 () Bool)

(declare-fun b_and!340707 () Bool)

(assert (=> b!4327104 (= tp!1327862 b_and!340707)))

(declare-fun b!4327095 () Bool)

(declare-fun e!2692476 () Bool)

(declare-fun e!2692478 () Bool)

(assert (=> b!4327095 (= e!2692476 e!2692478)))

(declare-fun res!1773216 () Bool)

(assert (=> b!4327095 (=> (not res!1773216) (not e!2692478))))

(declare-datatypes ((V!9931 0))(
  ( (V!9932 (val!16034 Int)) )
))
(declare-datatypes ((array!17416 0))(
  ( (array!17417 (arr!7771 (Array (_ BitVec 32) V!9931)) (size!35811 (_ BitVec 32))) )
))
(declare-datatypes ((array!17418 0))(
  ( (array!17419 (arr!7772 (Array (_ BitVec 32) (_ BitVec 64))) (size!35812 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9586 0))(
  ( (LongMapFixedSize!9587 (defaultEntry!5199 Int) (mask!13454 (_ BitVec 32)) (extraKeys!5058 (_ BitVec 32)) (zeroValue!5070 V!9931) (minValue!5070 V!9931) (_size!9625 (_ BitVec 32)) (_keys!5120 array!17418) (_values!5094 array!17416) (_vacant!4857 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18967 0))(
  ( (Cell!18968 (v!42946 LongMapFixedSize!9586)) )
))
(declare-datatypes ((MutLongMap!4793 0))(
  ( (LongMap!4793 (underlying!9808 Cell!18967)) (MutLongMapExt!4792 (__x!30390 Int)) )
))
(declare-datatypes ((tuple2!47442 0))(
  ( (tuple2!47443 (_1!27010 Bool) (_2!27010 MutLongMap!4793)) )
))
(declare-fun lt!1544325 () tuple2!47442)

(assert (=> b!4327095 (= res!1773216 (_1!27010 lt!1544325))))

(declare-fun e!2692483 () tuple2!47442)

(assert (=> b!4327095 (= lt!1544325 e!2692483)))

(declare-fun c!736241 () Bool)

(declare-fun thiss!47260 () MutLongMap!4793)

(declare-fun imbalanced!97 (MutLongMap!4793) Bool)

(assert (=> b!4327095 (= c!736241 (imbalanced!97 thiss!47260))))

(declare-fun b!4327096 () Bool)

(declare-fun e!2692484 () Bool)

(declare-fun e!2692477 () Bool)

(assert (=> b!4327096 (= e!2692484 e!2692477)))

(declare-fun b!4327097 () Bool)

(assert (=> b!4327097 (= e!2692483 (tuple2!47443 true thiss!47260))))

(declare-fun res!1773219 () Bool)

(assert (=> start!416728 (=> (not res!1773219) (not e!2692476))))

(get-info :version)

(assert (=> start!416728 (= res!1773219 ((_ is LongMap!4793) thiss!47260))))

(assert (=> start!416728 e!2692476))

(declare-fun e!2692480 () Bool)

(assert (=> start!416728 e!2692480))

(assert (=> start!416728 true))

(declare-fun tp_is_empty!24255 () Bool)

(assert (=> start!416728 tp_is_empty!24255))

(declare-fun b!4327098 () Bool)

(declare-fun e!2692479 () Bool)

(declare-fun mapRes!21346 () Bool)

(assert (=> b!4327098 (= e!2692479 (and tp_is_empty!24255 mapRes!21346))))

(declare-fun condMapEmpty!21346 () Bool)

(declare-fun mapDefault!21346 () V!9931)

(assert (=> b!4327098 (= condMapEmpty!21346 (= (arr!7771 (_values!5094 (v!42946 (underlying!9808 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9931)) mapDefault!21346)))))

(declare-fun b!4327099 () Bool)

(declare-fun e!2692481 () Bool)

(assert (=> b!4327099 (= e!2692481 false)))

(declare-fun lt!1544326 () Bool)

(declare-fun lt!1544324 () MutLongMap!4793)

(declare-fun key!7012 () (_ BitVec 64))

(declare-datatypes ((tuple2!47444 0))(
  ( (tuple2!47445 (_1!27011 (_ BitVec 64)) (_2!27011 V!9931)) )
))
(declare-datatypes ((List!48576 0))(
  ( (Nil!48452) (Cons!48452 (h!53921 tuple2!47444) (t!355486 List!48576)) )
))
(declare-datatypes ((ListLongMap!1237 0))(
  ( (ListLongMap!1238 (toList!2619 List!48576)) )
))
(declare-fun contains!10548 (ListLongMap!1237 (_ BitVec 64)) Bool)

(declare-fun map!10499 (MutLongMap!4793) ListLongMap!1237)

(assert (=> b!4327099 (= lt!1544326 (contains!10548 (map!10499 lt!1544324) key!7012))))

(declare-fun mapIsEmpty!21346 () Bool)

(assert (=> mapIsEmpty!21346 mapRes!21346))

(declare-fun b!4327100 () Bool)

(declare-fun res!1773218 () Bool)

(assert (=> b!4327100 (=> (not res!1773218) (not e!2692481))))

(declare-datatypes ((tuple2!47446 0))(
  ( (tuple2!47447 (_1!27012 Bool) (_2!27012 LongMapFixedSize!9586)) )
))
(declare-fun lt!1544327 () tuple2!47446)

(assert (=> b!4327100 (= res!1773218 (_1!27012 lt!1544327))))

(declare-fun b!4327101 () Bool)

(assert (=> b!4327101 (= e!2692478 e!2692481)))

(declare-fun res!1773217 () Bool)

(assert (=> b!4327101 (=> (not res!1773217) (not e!2692481))))

(declare-fun valid!3811 (MutLongMap!4793) Bool)

(assert (=> b!4327101 (= res!1773217 (valid!3811 lt!1544324))))

(assert (=> b!4327101 (= lt!1544324 (LongMap!4793 (Cell!18968 (_2!27012 lt!1544327))))))

(declare-fun v!11761 () V!9931)

(declare-fun update!571 (LongMapFixedSize!9586 (_ BitVec 64) V!9931) tuple2!47446)

(assert (=> b!4327101 (= lt!1544327 (update!571 (v!42946 (underlying!9808 (_2!27010 lt!1544325))) key!7012 v!11761))))

(declare-fun b!4327102 () Bool)

(declare-fun repack!100 (MutLongMap!4793) tuple2!47442)

(assert (=> b!4327102 (= e!2692483 (repack!100 thiss!47260))))

(declare-fun b!4327103 () Bool)

(assert (=> b!4327103 (= e!2692480 e!2692484)))

(declare-fun mapNonEmpty!21346 () Bool)

(declare-fun tp!1327861 () Bool)

(assert (=> mapNonEmpty!21346 (= mapRes!21346 (and tp!1327861 tp_is_empty!24255))))

(declare-fun mapValue!21346 () V!9931)

(declare-fun mapRest!21346 () (Array (_ BitVec 32) V!9931))

(declare-fun mapKey!21346 () (_ BitVec 32))

(assert (=> mapNonEmpty!21346 (= (arr!7771 (_values!5094 (v!42946 (underlying!9808 thiss!47260)))) (store mapRest!21346 mapKey!21346 mapValue!21346))))

(declare-fun array_inv!5599 (array!17418) Bool)

(declare-fun array_inv!5600 (array!17416) Bool)

(assert (=> b!4327104 (= e!2692477 (and tp!1327862 tp_is_empty!24255 (array_inv!5599 (_keys!5120 (v!42946 (underlying!9808 thiss!47260)))) (array_inv!5600 (_values!5094 (v!42946 (underlying!9808 thiss!47260)))) e!2692479))))

(declare-fun b!4327105 () Bool)

(declare-fun res!1773220 () Bool)

(assert (=> b!4327105 (=> (not res!1773220) (not e!2692476))))

(assert (=> b!4327105 (= res!1773220 (valid!3811 thiss!47260))))

(assert (= (and start!416728 res!1773219) b!4327105))

(assert (= (and b!4327105 res!1773220) b!4327095))

(assert (= (and b!4327095 c!736241) b!4327102))

(assert (= (and b!4327095 (not c!736241)) b!4327097))

(assert (= (and b!4327095 res!1773216) b!4327101))

(assert (= (and b!4327101 res!1773217) b!4327100))

(assert (= (and b!4327100 res!1773218) b!4327099))

(assert (= (and b!4327098 condMapEmpty!21346) mapIsEmpty!21346))

(assert (= (and b!4327098 (not condMapEmpty!21346)) mapNonEmpty!21346))

(assert (= b!4327104 b!4327098))

(assert (= b!4327096 b!4327104))

(assert (= b!4327103 b!4327096))

(assert (= (and start!416728 ((_ is LongMap!4793) thiss!47260)) b!4327103))

(declare-fun m!4922085 () Bool)

(assert (=> b!4327095 m!4922085))

(declare-fun m!4922087 () Bool)

(assert (=> b!4327099 m!4922087))

(assert (=> b!4327099 m!4922087))

(declare-fun m!4922089 () Bool)

(assert (=> b!4327099 m!4922089))

(declare-fun m!4922091 () Bool)

(assert (=> b!4327105 m!4922091))

(declare-fun m!4922093 () Bool)

(assert (=> b!4327104 m!4922093))

(declare-fun m!4922095 () Bool)

(assert (=> b!4327104 m!4922095))

(declare-fun m!4922097 () Bool)

(assert (=> b!4327101 m!4922097))

(declare-fun m!4922099 () Bool)

(assert (=> b!4327101 m!4922099))

(declare-fun m!4922101 () Bool)

(assert (=> b!4327102 m!4922101))

(declare-fun m!4922103 () Bool)

(assert (=> mapNonEmpty!21346 m!4922103))

(check-sat (not b!4327095) (not b!4327099) (not mapNonEmpty!21346) (not b!4327105) b_and!340707 (not b_next!129821) (not b!4327104) tp_is_empty!24255 (not b!4327101) (not b!4327102))
(check-sat b_and!340707 (not b_next!129821))
