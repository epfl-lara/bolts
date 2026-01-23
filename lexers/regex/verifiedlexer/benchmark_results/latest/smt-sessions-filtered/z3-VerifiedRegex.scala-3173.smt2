; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185604 () Bool)

(assert start!185604)

(declare-fun b!1859098 () Bool)

(declare-fun b_free!51995 () Bool)

(declare-fun b_next!52699 () Bool)

(assert (=> b!1859098 (= b_free!51995 (not b_next!52699))))

(declare-fun tp!529945 () Bool)

(declare-fun b_and!144263 () Bool)

(assert (=> b!1859098 (= tp!529945 b_and!144263)))

(declare-fun b!1859097 () Bool)

(declare-fun e!1187253 () Bool)

(declare-fun e!1187252 () Bool)

(assert (=> b!1859097 (= e!1187253 e!1187252)))

(declare-fun res!832688 () Bool)

(declare-fun e!1187256 () Bool)

(assert (=> start!185604 (=> (not res!832688) (not e!1187256))))

(declare-datatypes ((V!3908 0))(
  ( (V!3909 (val!5902 Int)) )
))
(declare-datatypes ((array!6597 0))(
  ( (array!6598 (arr!2930 (Array (_ BitVec 32) (_ BitVec 64))) (size!16315 (_ BitVec 32))) )
))
(declare-datatypes ((array!6599 0))(
  ( (array!6600 (arr!2931 (Array (_ BitVec 32) V!3908)) (size!16316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3832 0))(
  ( (LongMapFixedSize!3833 (defaultEntry!2281 Int) (mask!5638 (_ BitVec 32)) (extraKeys!2164 (_ BitVec 32)) (zeroValue!2174 V!3908) (minValue!2174 V!3908) (_size!3894 (_ BitVec 32)) (_keys!2213 array!6597) (_values!2196 array!6599) (_vacant!1977 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7511 0))(
  ( (Cell!7512 (v!26062 LongMapFixedSize!3832)) )
))
(declare-datatypes ((MutLongMap!1916 0))(
  ( (LongMap!1916 (underlying!4034 Cell!7511)) (MutLongMapExt!1915 (__x!12985 Int)) )
))
(declare-fun thiss!47327 () MutLongMap!1916)

(get-info :version)

(assert (=> start!185604 (= res!832688 ((_ is LongMap!1916) thiss!47327))))

(assert (=> start!185604 e!1187256))

(declare-fun e!1187257 () Bool)

(assert (=> start!185604 e!1187257))

(assert (=> start!185604 true))

(declare-fun tp_is_empty!8599 () Bool)

(declare-fun e!1187255 () Bool)

(declare-fun array_inv!2107 (array!6597) Bool)

(declare-fun array_inv!2108 (array!6599) Bool)

(assert (=> b!1859098 (= e!1187252 (and tp!529945 tp_is_empty!8599 (array_inv!2107 (_keys!2213 (v!26062 (underlying!4034 thiss!47327)))) (array_inv!2108 (_values!2196 (v!26062 (underlying!4034 thiss!47327)))) e!1187255))))

(declare-fun b!1859099 () Bool)

(declare-fun res!832687 () Bool)

(assert (=> b!1859099 (=> (not res!832687) (not e!1187256))))

(declare-fun valid!1545 (MutLongMap!1916) Bool)

(assert (=> b!1859099 (= res!832687 (valid!1545 thiss!47327))))

(declare-fun b!1859100 () Bool)

(assert (=> b!1859100 (= e!1187256 false)))

(declare-fun lt!717398 () Bool)

(declare-fun key!7027 () (_ BitVec 64))

(declare-datatypes ((tuple2!19894 0))(
  ( (tuple2!19895 (_1!11374 Bool) (_2!11374 LongMapFixedSize!3832)) )
))
(declare-fun remove!60 (LongMapFixedSize!3832 (_ BitVec 64)) tuple2!19894)

(assert (=> b!1859100 (= lt!717398 (valid!1545 (LongMap!1916 (Cell!7512 (_2!11374 (remove!60 (v!26062 (underlying!4034 thiss!47327)) key!7027))))))))

(declare-fun b!1859101 () Bool)

(assert (=> b!1859101 (= e!1187257 e!1187253)))

(declare-fun b!1859102 () Bool)

(declare-fun mapRes!8903 () Bool)

(assert (=> b!1859102 (= e!1187255 (and tp_is_empty!8599 mapRes!8903))))

(declare-fun condMapEmpty!8903 () Bool)

(declare-fun mapDefault!8903 () V!3908)

(assert (=> b!1859102 (= condMapEmpty!8903 (= (arr!2931 (_values!2196 (v!26062 (underlying!4034 thiss!47327)))) ((as const (Array (_ BitVec 32) V!3908)) mapDefault!8903)))))

(declare-fun mapNonEmpty!8903 () Bool)

(declare-fun tp!529944 () Bool)

(assert (=> mapNonEmpty!8903 (= mapRes!8903 (and tp!529944 tp_is_empty!8599))))

(declare-fun mapKey!8903 () (_ BitVec 32))

(declare-fun mapValue!8903 () V!3908)

(declare-fun mapRest!8903 () (Array (_ BitVec 32) V!3908))

(assert (=> mapNonEmpty!8903 (= (arr!2931 (_values!2196 (v!26062 (underlying!4034 thiss!47327)))) (store mapRest!8903 mapKey!8903 mapValue!8903))))

(declare-fun mapIsEmpty!8903 () Bool)

(assert (=> mapIsEmpty!8903 mapRes!8903))

(assert (= (and start!185604 res!832688) b!1859099))

(assert (= (and b!1859099 res!832687) b!1859100))

(assert (= (and b!1859102 condMapEmpty!8903) mapIsEmpty!8903))

(assert (= (and b!1859102 (not condMapEmpty!8903)) mapNonEmpty!8903))

(assert (= b!1859098 b!1859102))

(assert (= b!1859097 b!1859098))

(assert (= b!1859101 b!1859097))

(assert (= (and start!185604 ((_ is LongMap!1916) thiss!47327)) b!1859101))

(declare-fun m!2282513 () Bool)

(assert (=> b!1859098 m!2282513))

(declare-fun m!2282515 () Bool)

(assert (=> b!1859098 m!2282515))

(declare-fun m!2282517 () Bool)

(assert (=> b!1859099 m!2282517))

(declare-fun m!2282519 () Bool)

(assert (=> b!1859100 m!2282519))

(declare-fun m!2282521 () Bool)

(assert (=> b!1859100 m!2282521))

(declare-fun m!2282523 () Bool)

(assert (=> mapNonEmpty!8903 m!2282523))

(check-sat b_and!144263 (not mapNonEmpty!8903) (not b_next!52699) tp_is_empty!8599 (not b!1859098) (not b!1859099) (not b!1859100))
(check-sat b_and!144263 (not b_next!52699))
