; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3382 () Bool)

(assert start!3382)

(declare-fun b!48276 () Bool)

(declare-fun b_free!1349 () Bool)

(declare-fun b_next!1349 () Bool)

(assert (=> b!48276 (= b_free!1349 (not b_next!1349))))

(declare-fun tp!32580 () Bool)

(declare-fun b_and!1385 () Bool)

(assert (=> b!48276 (= tp!32580 b_and!1385)))

(declare-fun b!48280 () Bool)

(declare-fun b_free!1351 () Bool)

(declare-fun b_next!1351 () Bool)

(assert (=> b!48280 (= b_free!1351 (not b_next!1351))))

(declare-fun tp!32579 () Bool)

(declare-fun b_and!1387 () Bool)

(assert (=> b!48280 (= tp!32579 b_and!1387)))

(declare-fun b!48273 () Bool)

(declare-fun e!28043 () Bool)

(declare-fun tp!32582 () Bool)

(declare-fun mapRes!1153 () Bool)

(assert (=> b!48273 (= e!28043 (and tp!32582 mapRes!1153))))

(declare-fun condMapEmpty!1153 () Bool)

(declare-datatypes ((K!590 0))(
  ( (K!591 (val!272 Int)) )
))
(declare-datatypes ((V!644 0))(
  ( (V!645 (val!273 Int)) )
))
(declare-datatypes ((tuple2!1062 0))(
  ( (tuple2!1063 (_1!738 K!590) (_2!738 V!644)) )
))
(declare-datatypes ((List!835 0))(
  ( (Nil!829) (Cons!829 (h!6225 tuple2!1062) (t!17032 List!835)) )
))
(declare-datatypes ((array!1004 0))(
  ( (array!1005 (arr!472 (Array (_ BitVec 32) (_ BitVec 64))) (size!821 (_ BitVec 32))) )
))
(declare-datatypes ((array!1006 0))(
  ( (array!1007 (arr!473 (Array (_ BitVec 32) List!835)) (size!822 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!586 0))(
  ( (LongMapFixedSize!587 (defaultEntry!632 Int) (mask!1031 (_ BitVec 32)) (extraKeys!539 (_ BitVec 32)) (zeroValue!549 List!835) (minValue!549 List!835) (_size!719 (_ BitVec 32)) (_keys!584 array!1004) (_values!571 array!1006) (_vacant!354 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1161 0))(
  ( (Cell!1162 (v!12601 LongMapFixedSize!586)) )
))
(declare-datatypes ((MutLongMap!293 0))(
  ( (LongMap!293 (underlying!785 Cell!1161)) (MutLongMapExt!292 (__x!1392 Int)) )
))
(declare-datatypes ((Hashable!289 0))(
  ( (HashableExt!288 (__x!1393 Int)) )
))
(declare-datatypes ((Cell!1163 0))(
  ( (Cell!1164 (v!12602 MutLongMap!293)) )
))
(declare-datatypes ((MutableMap!289 0))(
  ( (MutableMapExt!288 (__x!1394 Int)) (HashMap!289 (underlying!786 Cell!1163) (hashF!2158 Hashable!289) (_size!720 (_ BitVec 32)) (defaultValue!438 Int)) )
))
(declare-fun thiss!47822 () MutableMap!289)

(declare-fun mapDefault!1153 () List!835)

(assert (=> b!48273 (= condMapEmpty!1153 (= (arr!473 (_values!571 (v!12601 (underlying!785 (v!12602 (underlying!786 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!835)) mapDefault!1153)))))

(declare-fun b!48274 () Bool)

(declare-fun e!28040 () Bool)

(declare-fun e!28045 () Bool)

(declare-fun lt!6933 () MutLongMap!293)

(get-info :version)

(assert (=> b!48274 (= e!28040 (and e!28045 ((_ is LongMap!293) lt!6933)))))

(assert (=> b!48274 (= lt!6933 (v!12602 (underlying!786 thiss!47822)))))

(declare-fun b!48275 () Bool)

(declare-fun res!32078 () Bool)

(declare-fun e!28044 () Bool)

(assert (=> b!48275 (=> (not res!32078) (not e!28044))))

(assert (=> b!48275 (= res!32078 (not ((_ is MutableMapExt!288) thiss!47822)))))

(declare-fun res!32077 () Bool)

(assert (=> start!3382 (=> (not res!32077) (not e!28044))))

(declare-fun valid!267 (MutableMap!289) Bool)

(assert (=> start!3382 (= res!32077 (valid!267 thiss!47822))))

(assert (=> start!3382 e!28044))

(declare-fun e!28039 () Bool)

(assert (=> start!3382 e!28039))

(declare-fun tp_is_empty!455 () Bool)

(assert (=> start!3382 tp_is_empty!455))

(declare-fun tp_is_empty!457 () Bool)

(assert (=> start!3382 tp_is_empty!457))

(declare-fun tp!32581 () Bool)

(declare-fun e!28042 () Bool)

(declare-fun tp!32585 () Bool)

(declare-fun array_inv!321 (array!1004) Bool)

(declare-fun array_inv!322 (array!1006) Bool)

(assert (=> b!48276 (= e!28042 (and tp!32580 tp!32581 tp!32585 (array_inv!321 (_keys!584 (v!12601 (underlying!785 (v!12602 (underlying!786 thiss!47822)))))) (array_inv!322 (_values!571 (v!12601 (underlying!785 (v!12602 (underlying!786 thiss!47822)))))) e!28043))))

(declare-fun mapNonEmpty!1153 () Bool)

(declare-fun tp!32584 () Bool)

(declare-fun tp!32583 () Bool)

(assert (=> mapNonEmpty!1153 (= mapRes!1153 (and tp!32584 tp!32583))))

(declare-fun mapRest!1153 () (Array (_ BitVec 32) List!835))

(declare-fun mapKey!1153 () (_ BitVec 32))

(declare-fun mapValue!1153 () List!835)

(assert (=> mapNonEmpty!1153 (= (arr!473 (_values!571 (v!12601 (underlying!785 (v!12602 (underlying!786 thiss!47822)))))) (store mapRest!1153 mapKey!1153 mapValue!1153))))

(declare-fun b!48277 () Bool)

(declare-fun e!28041 () Bool)

(assert (=> b!48277 (= e!28045 e!28041)))

(declare-fun mapIsEmpty!1153 () Bool)

(assert (=> mapIsEmpty!1153 mapRes!1153))

(declare-fun b!48278 () Bool)

(assert (=> b!48278 (= e!28041 e!28042)))

(declare-fun b!48279 () Bool)

(assert (=> b!48279 (= e!28044 false)))

(declare-fun lt!6934 () Bool)

(declare-fun key!7227 () K!590)

(declare-fun v!11804 () V!644)

(declare-datatypes ((tuple2!1064 0))(
  ( (tuple2!1065 (_1!739 Bool) (_2!739 MutableMap!289)) )
))
(declare-fun update!28 (MutableMap!289 K!590 V!644) tuple2!1064)

(assert (=> b!48279 (= lt!6934 (valid!267 (_2!739 (update!28 thiss!47822 key!7227 v!11804))))))

(assert (=> b!48280 (= e!28039 (and e!28040 tp!32579))))

(assert (= (and start!3382 res!32077) b!48275))

(assert (= (and b!48275 res!32078) b!48279))

(assert (= (and b!48273 condMapEmpty!1153) mapIsEmpty!1153))

(assert (= (and b!48273 (not condMapEmpty!1153)) mapNonEmpty!1153))

(assert (= b!48276 b!48273))

(assert (= b!48278 b!48276))

(assert (= b!48277 b!48278))

(assert (= (and b!48274 ((_ is LongMap!293) (v!12602 (underlying!786 thiss!47822)))) b!48277))

(assert (= b!48280 b!48274))

(assert (= (and start!3382 ((_ is HashMap!289) thiss!47822)) b!48280))

(declare-fun m!22096 () Bool)

(assert (=> start!3382 m!22096))

(declare-fun m!22098 () Bool)

(assert (=> b!48276 m!22098))

(declare-fun m!22100 () Bool)

(assert (=> b!48276 m!22100))

(declare-fun m!22102 () Bool)

(assert (=> mapNonEmpty!1153 m!22102))

(declare-fun m!22104 () Bool)

(assert (=> b!48279 m!22104))

(declare-fun m!22106 () Bool)

(assert (=> b!48279 m!22106))

(check-sat b_and!1387 (not b_next!1349) (not mapNonEmpty!1153) (not b_next!1351) tp_is_empty!457 (not b!48279) b_and!1385 (not b!48276) tp_is_empty!455 (not b!48273) (not start!3382))
(check-sat b_and!1385 b_and!1387 (not b_next!1351) (not b_next!1349))
