; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16572 () Bool)

(assert start!16572)

(declare-fun b!164868 () Bool)

(declare-fun b_free!3865 () Bool)

(declare-fun b_next!3865 () Bool)

(assert (=> b!164868 (= b_free!3865 (not b_next!3865))))

(declare-fun tp!14196 () Bool)

(declare-fun b_and!10297 () Bool)

(assert (=> b!164868 (= tp!14196 b_and!10297)))

(declare-fun res!78147 () Bool)

(declare-fun e!108169 () Bool)

(assert (=> start!16572 (=> (not res!78147) (not e!108169))))

(declare-datatypes ((V!4537 0))(
  ( (V!4538 (val!1878 Int)) )
))
(declare-datatypes ((ValueCell!1490 0))(
  ( (ValueCellFull!1490 (v!3739 V!4537)) (EmptyCell!1490) )
))
(declare-datatypes ((array!6430 0))(
  ( (array!6431 (arr!3050 (Array (_ BitVec 32) (_ BitVec 64))) (size!3338 (_ BitVec 32))) )
))
(declare-datatypes ((array!6432 0))(
  ( (array!6433 (arr!3051 (Array (_ BitVec 32) ValueCell!1490)) (size!3339 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1888 0))(
  ( (LongMapFixedSize!1889 (defaultEntry!3386 Int) (mask!8087 (_ BitVec 32)) (extraKeys!3127 (_ BitVec 32)) (zeroValue!3229 V!4537) (minValue!3229 V!4537) (_size!993 (_ BitVec 32)) (_keys!5211 array!6430) (_values!3369 array!6432) (_vacant!993 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1888)

(declare-fun valid!830 (LongMapFixedSize!1888) Bool)

(assert (=> start!16572 (= res!78147 (valid!830 thiss!1248))))

(assert (=> start!16572 e!108169))

(declare-fun e!108171 () Bool)

(assert (=> start!16572 e!108171))

(assert (=> start!16572 true))

(declare-fun b!164865 () Bool)

(declare-fun e!108172 () Bool)

(declare-fun tp_is_empty!3667 () Bool)

(assert (=> b!164865 (= e!108172 tp_is_empty!3667)))

(declare-fun b!164866 () Bool)

(declare-fun res!78149 () Bool)

(declare-fun e!108170 () Bool)

(assert (=> b!164866 (=> (not res!78149) (not e!108170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164866 (= res!78149 (validMask!0 (mask!8087 thiss!1248)))))

(declare-fun b!164867 () Bool)

(assert (=> b!164867 (= e!108170 false)))

(declare-fun lt!82997 () Bool)

(declare-datatypes ((List!2048 0))(
  ( (Nil!2045) (Cons!2044 (h!2661 (_ BitVec 64)) (t!6858 List!2048)) )
))
(declare-fun arrayNoDuplicates!0 (array!6430 (_ BitVec 32) List!2048) Bool)

(assert (=> b!164867 (= lt!82997 (arrayNoDuplicates!0 (_keys!5211 thiss!1248) #b00000000000000000000000000000000 Nil!2045))))

(declare-fun mapNonEmpty!6219 () Bool)

(declare-fun mapRes!6219 () Bool)

(declare-fun tp!14195 () Bool)

(declare-fun e!108168 () Bool)

(assert (=> mapNonEmpty!6219 (= mapRes!6219 (and tp!14195 e!108168))))

(declare-fun mapRest!6219 () (Array (_ BitVec 32) ValueCell!1490))

(declare-fun mapValue!6219 () ValueCell!1490)

(declare-fun mapKey!6219 () (_ BitVec 32))

(assert (=> mapNonEmpty!6219 (= (arr!3051 (_values!3369 thiss!1248)) (store mapRest!6219 mapKey!6219 mapValue!6219))))

(declare-fun mapIsEmpty!6219 () Bool)

(assert (=> mapIsEmpty!6219 mapRes!6219))

(declare-fun e!108167 () Bool)

(declare-fun array_inv!1947 (array!6430) Bool)

(declare-fun array_inv!1948 (array!6432) Bool)

(assert (=> b!164868 (= e!108171 (and tp!14196 tp_is_empty!3667 (array_inv!1947 (_keys!5211 thiss!1248)) (array_inv!1948 (_values!3369 thiss!1248)) e!108167))))

(declare-fun b!164869 () Bool)

(declare-fun res!78151 () Bool)

(assert (=> b!164869 (=> (not res!78151) (not e!108170))))

(assert (=> b!164869 (= res!78151 (and (= (size!3339 (_values!3369 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8087 thiss!1248))) (= (size!3338 (_keys!5211 thiss!1248)) (size!3339 (_values!3369 thiss!1248))) (bvsge (mask!8087 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3127 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3127 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164870 () Bool)

(declare-fun res!78150 () Bool)

(assert (=> b!164870 (=> (not res!78150) (not e!108170))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3042 0))(
  ( (tuple2!3043 (_1!1531 (_ BitVec 64)) (_2!1531 V!4537)) )
))
(declare-datatypes ((List!2049 0))(
  ( (Nil!2046) (Cons!2045 (h!2662 tuple2!3042) (t!6859 List!2049)) )
))
(declare-datatypes ((ListLongMap!2011 0))(
  ( (ListLongMap!2012 (toList!1021 List!2049)) )
))
(declare-fun contains!1057 (ListLongMap!2011 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!674 (array!6430 array!6432 (_ BitVec 32) (_ BitVec 32) V!4537 V!4537 (_ BitVec 32) Int) ListLongMap!2011)

(assert (=> b!164870 (= res!78150 (contains!1057 (getCurrentListMap!674 (_keys!5211 thiss!1248) (_values!3369 thiss!1248) (mask!8087 thiss!1248) (extraKeys!3127 thiss!1248) (zeroValue!3229 thiss!1248) (minValue!3229 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3386 thiss!1248)) key!828))))

(declare-fun b!164871 () Bool)

(assert (=> b!164871 (= e!108167 (and e!108172 mapRes!6219))))

(declare-fun condMapEmpty!6219 () Bool)

(declare-fun mapDefault!6219 () ValueCell!1490)

