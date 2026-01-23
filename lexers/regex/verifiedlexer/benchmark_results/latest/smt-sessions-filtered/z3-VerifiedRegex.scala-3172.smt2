; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185600 () Bool)

(assert start!185600)

(declare-fun b!1859061 () Bool)

(declare-fun b_free!51991 () Bool)

(declare-fun b_next!52695 () Bool)

(assert (=> b!1859061 (= b_free!51991 (not b_next!52695))))

(declare-fun tp!529932 () Bool)

(declare-fun b_and!144259 () Bool)

(assert (=> b!1859061 (= tp!529932 b_and!144259)))

(declare-datatypes ((V!3903 0))(
  ( (V!3904 (val!5900 Int)) )
))
(declare-datatypes ((array!6589 0))(
  ( (array!6590 (arr!2926 (Array (_ BitVec 32) (_ BitVec 64))) (size!16311 (_ BitVec 32))) )
))
(declare-datatypes ((array!6591 0))(
  ( (array!6592 (arr!2927 (Array (_ BitVec 32) V!3903)) (size!16312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3828 0))(
  ( (LongMapFixedSize!3829 (defaultEntry!2279 Int) (mask!5635 (_ BitVec 32)) (extraKeys!2162 (_ BitVec 32)) (zeroValue!2172 V!3903) (minValue!2172 V!3903) (_size!3892 (_ BitVec 32)) (_keys!2211 array!6589) (_values!2194 array!6591) (_vacant!1975 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7507 0))(
  ( (Cell!7508 (v!26060 LongMapFixedSize!3828)) )
))
(declare-datatypes ((MutLongMap!1914 0))(
  ( (LongMap!1914 (underlying!4032 Cell!7507)) (MutLongMapExt!1913 (__x!12983 Int)) )
))
(declare-fun thiss!47327 () MutLongMap!1914)

(declare-fun e!1187219 () Bool)

(declare-fun tp_is_empty!8595 () Bool)

(declare-fun e!1187220 () Bool)

(declare-fun array_inv!2105 (array!6589) Bool)

(declare-fun array_inv!2106 (array!6591) Bool)

(assert (=> b!1859061 (= e!1187220 (and tp!529932 tp_is_empty!8595 (array_inv!2105 (_keys!2211 (v!26060 (underlying!4032 thiss!47327)))) (array_inv!2106 (_values!2194 (v!26060 (underlying!4032 thiss!47327)))) e!1187219))))

(declare-fun b!1859062 () Bool)

(declare-fun e!1187221 () Bool)

(assert (=> b!1859062 (= e!1187221 false)))

(declare-datatypes ((tuple2!19892 0))(
  ( (tuple2!19893 (_1!11373 Bool) (_2!11373 LongMapFixedSize!3828)) )
))
(declare-fun lt!717392 () tuple2!19892)

(declare-fun key!7027 () (_ BitVec 64))

(declare-fun remove!59 (LongMapFixedSize!3828 (_ BitVec 64)) tuple2!19892)

(assert (=> b!1859062 (= lt!717392 (remove!59 (v!26060 (underlying!4032 thiss!47327)) key!7027))))

(declare-fun res!832676 () Bool)

(assert (=> start!185600 (=> (not res!832676) (not e!1187221))))

(get-info :version)

(assert (=> start!185600 (= res!832676 ((_ is LongMap!1914) thiss!47327))))

(assert (=> start!185600 e!1187221))

(declare-fun e!1187218 () Bool)

(assert (=> start!185600 e!1187218))

(assert (=> start!185600 true))

(declare-fun mapIsEmpty!8897 () Bool)

(declare-fun mapRes!8897 () Bool)

(assert (=> mapIsEmpty!8897 mapRes!8897))

(declare-fun b!1859063 () Bool)

(declare-fun res!832675 () Bool)

(assert (=> b!1859063 (=> (not res!832675) (not e!1187221))))

(declare-fun valid!1544 (MutLongMap!1914) Bool)

(assert (=> b!1859063 (= res!832675 (valid!1544 thiss!47327))))

(declare-fun b!1859064 () Bool)

(declare-fun e!1187217 () Bool)

(assert (=> b!1859064 (= e!1187217 e!1187220)))

(declare-fun mapNonEmpty!8897 () Bool)

(declare-fun tp!529933 () Bool)

(assert (=> mapNonEmpty!8897 (= mapRes!8897 (and tp!529933 tp_is_empty!8595))))

(declare-fun mapKey!8897 () (_ BitVec 32))

(declare-fun mapValue!8897 () V!3903)

(declare-fun mapRest!8897 () (Array (_ BitVec 32) V!3903))

(assert (=> mapNonEmpty!8897 (= (arr!2927 (_values!2194 (v!26060 (underlying!4032 thiss!47327)))) (store mapRest!8897 mapKey!8897 mapValue!8897))))

(declare-fun b!1859065 () Bool)

(assert (=> b!1859065 (= e!1187219 (and tp_is_empty!8595 mapRes!8897))))

(declare-fun condMapEmpty!8897 () Bool)

(declare-fun mapDefault!8897 () V!3903)

(assert (=> b!1859065 (= condMapEmpty!8897 (= (arr!2927 (_values!2194 (v!26060 (underlying!4032 thiss!47327)))) ((as const (Array (_ BitVec 32) V!3903)) mapDefault!8897)))))

(declare-fun b!1859066 () Bool)

(assert (=> b!1859066 (= e!1187218 e!1187217)))

(assert (= (and start!185600 res!832676) b!1859063))

(assert (= (and b!1859063 res!832675) b!1859062))

(assert (= (and b!1859065 condMapEmpty!8897) mapIsEmpty!8897))

(assert (= (and b!1859065 (not condMapEmpty!8897)) mapNonEmpty!8897))

(assert (= b!1859061 b!1859065))

(assert (= b!1859064 b!1859061))

(assert (= b!1859066 b!1859064))

(assert (= (and start!185600 ((_ is LongMap!1914) thiss!47327)) b!1859066))

(declare-fun m!2282491 () Bool)

(assert (=> b!1859061 m!2282491))

(declare-fun m!2282493 () Bool)

(assert (=> b!1859061 m!2282493))

(declare-fun m!2282495 () Bool)

(assert (=> b!1859062 m!2282495))

(declare-fun m!2282497 () Bool)

(assert (=> b!1859063 m!2282497))

(declare-fun m!2282499 () Bool)

(assert (=> mapNonEmpty!8897 m!2282499))

(check-sat (not mapNonEmpty!8897) (not b!1859061) (not b_next!52695) (not b!1859063) tp_is_empty!8595 b_and!144259 (not b!1859062))
(check-sat b_and!144259 (not b_next!52695))
