; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16662 () Bool)

(assert start!16662)

(declare-fun b!166396 () Bool)

(declare-fun b_free!3955 () Bool)

(declare-fun b_next!3955 () Bool)

(assert (=> b!166396 (= b_free!3955 (not b_next!3955))))

(declare-fun tp!14466 () Bool)

(declare-fun b_and!10387 () Bool)

(assert (=> b!166396 (= tp!14466 b_and!10387)))

(declare-fun b!166390 () Bool)

(declare-fun e!109173 () Bool)

(declare-fun e!109178 () Bool)

(assert (=> b!166390 (= e!109173 e!109178)))

(declare-fun res!79095 () Bool)

(assert (=> b!166390 (=> (not res!79095) (not e!109178))))

(declare-datatypes ((SeekEntryResult!466 0))(
  ( (MissingZero!466 (index!4032 (_ BitVec 32))) (Found!466 (index!4033 (_ BitVec 32))) (Intermediate!466 (undefined!1278 Bool) (index!4034 (_ BitVec 32)) (x!18446 (_ BitVec 32))) (Undefined!466) (MissingVacant!466 (index!4035 (_ BitVec 32))) )
))
(declare-fun lt!83330 () SeekEntryResult!466)

(assert (=> b!166390 (= res!79095 (and (not (is-Undefined!466 lt!83330)) (not (is-MissingVacant!466 lt!83330)) (not (is-MissingZero!466 lt!83330)) (is-Found!466 lt!83330)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4657 0))(
  ( (V!4658 (val!1923 Int)) )
))
(declare-datatypes ((ValueCell!1535 0))(
  ( (ValueCellFull!1535 (v!3784 V!4657)) (EmptyCell!1535) )
))
(declare-datatypes ((array!6610 0))(
  ( (array!6611 (arr!3140 (Array (_ BitVec 32) (_ BitVec 64))) (size!3428 (_ BitVec 32))) )
))
(declare-datatypes ((array!6612 0))(
  ( (array!6613 (arr!3141 (Array (_ BitVec 32) ValueCell!1535)) (size!3429 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1978 0))(
  ( (LongMapFixedSize!1979 (defaultEntry!3431 Int) (mask!8162 (_ BitVec 32)) (extraKeys!3172 (_ BitVec 32)) (zeroValue!3274 V!4657) (minValue!3274 V!4657) (_size!1038 (_ BitVec 32)) (_keys!5256 array!6610) (_values!3414 array!6612) (_vacant!1038 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1978)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6610 (_ BitVec 32)) SeekEntryResult!466)

(assert (=> b!166390 (= lt!83330 (seekEntryOrOpen!0 key!828 (_keys!5256 thiss!1248) (mask!8162 thiss!1248)))))

(declare-fun b!166391 () Bool)

(declare-fun e!109175 () Bool)

(assert (=> b!166391 (= e!109178 e!109175)))

(declare-fun res!79092 () Bool)

(assert (=> b!166391 (=> (not res!79092) (not e!109175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166391 (= res!79092 (validMask!0 (mask!8162 thiss!1248)))))

(declare-datatypes ((Unit!5058 0))(
  ( (Unit!5059) )
))
(declare-fun lt!83328 () Unit!5058)

(declare-fun e!109180 () Unit!5058)

(assert (=> b!166391 (= lt!83328 e!109180)))

(declare-fun c!30195 () Bool)

(declare-datatypes ((tuple2!3100 0))(
  ( (tuple2!3101 (_1!1560 (_ BitVec 64)) (_2!1560 V!4657)) )
))
(declare-datatypes ((List!2111 0))(
  ( (Nil!2108) (Cons!2107 (h!2724 tuple2!3100) (t!6921 List!2111)) )
))
(declare-datatypes ((ListLongMap!2069 0))(
  ( (ListLongMap!2070 (toList!1050 List!2111)) )
))
(declare-fun contains!1086 (ListLongMap!2069 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!703 (array!6610 array!6612 (_ BitVec 32) (_ BitVec 32) V!4657 V!4657 (_ BitVec 32) Int) ListLongMap!2069)

(assert (=> b!166391 (= c!30195 (contains!1086 (getCurrentListMap!703 (_keys!5256 thiss!1248) (_values!3414 thiss!1248) (mask!8162 thiss!1248) (extraKeys!3172 thiss!1248) (zeroValue!3274 thiss!1248) (minValue!3274 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3431 thiss!1248)) key!828))))

(declare-fun b!166392 () Bool)

(assert (=> b!166392 (= e!109175 false)))

(declare-fun lt!83326 () Bool)

(declare-datatypes ((List!2112 0))(
  ( (Nil!2109) (Cons!2108 (h!2725 (_ BitVec 64)) (t!6922 List!2112)) )
))
(declare-fun arrayNoDuplicates!0 (array!6610 (_ BitVec 32) List!2112) Bool)

(assert (=> b!166392 (= lt!83326 (arrayNoDuplicates!0 (_keys!5256 thiss!1248) #b00000000000000000000000000000000 Nil!2109))))

(declare-fun b!166393 () Bool)

(declare-fun lt!83329 () Unit!5058)

(assert (=> b!166393 (= e!109180 lt!83329)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!88 (array!6610 array!6612 (_ BitVec 32) (_ BitVec 32) V!4657 V!4657 (_ BitVec 64) Int) Unit!5058)

(assert (=> b!166393 (= lt!83329 (lemmaInListMapThenSeekEntryOrOpenFindsIt!88 (_keys!5256 thiss!1248) (_values!3414 thiss!1248) (mask!8162 thiss!1248) (extraKeys!3172 thiss!1248) (zeroValue!3274 thiss!1248) (minValue!3274 thiss!1248) key!828 (defaultEntry!3431 thiss!1248)))))

(declare-fun res!79094 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166393 (= res!79094 (inRange!0 (index!4033 lt!83330) (mask!8162 thiss!1248)))))

(declare-fun e!109176 () Bool)

(assert (=> b!166393 (=> (not res!79094) (not e!109176))))

(assert (=> b!166393 e!109176))

(declare-fun b!166394 () Bool)

(declare-fun res!79096 () Bool)

(assert (=> b!166394 (=> (not res!79096) (not e!109175))))

(assert (=> b!166394 (= res!79096 (and (= (size!3429 (_values!3414 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8162 thiss!1248))) (= (size!3428 (_keys!5256 thiss!1248)) (size!3429 (_values!3414 thiss!1248))) (bvsge (mask!8162 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3172 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3172 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166395 () Bool)

(assert (=> b!166395 (= e!109176 (= (select (arr!3140 (_keys!5256 thiss!1248)) (index!4033 lt!83330)) key!828))))

(declare-fun mapNonEmpty!6354 () Bool)

(declare-fun mapRes!6354 () Bool)

(declare-fun tp!14465 () Bool)

(declare-fun e!109172 () Bool)

(assert (=> mapNonEmpty!6354 (= mapRes!6354 (and tp!14465 e!109172))))

(declare-fun mapRest!6354 () (Array (_ BitVec 32) ValueCell!1535))

(declare-fun mapKey!6354 () (_ BitVec 32))

(declare-fun mapValue!6354 () ValueCell!1535)

(assert (=> mapNonEmpty!6354 (= (arr!3141 (_values!3414 thiss!1248)) (store mapRest!6354 mapKey!6354 mapValue!6354))))

(declare-fun e!109171 () Bool)

(declare-fun e!109174 () Bool)

(declare-fun tp_is_empty!3757 () Bool)

(declare-fun array_inv!2005 (array!6610) Bool)

(declare-fun array_inv!2006 (array!6612) Bool)

(assert (=> b!166396 (= e!109174 (and tp!14466 tp_is_empty!3757 (array_inv!2005 (_keys!5256 thiss!1248)) (array_inv!2006 (_values!3414 thiss!1248)) e!109171))))

(declare-fun mapIsEmpty!6354 () Bool)

(assert (=> mapIsEmpty!6354 mapRes!6354))

(declare-fun b!166397 () Bool)

(assert (=> b!166397 (= e!109172 tp_is_empty!3757)))

(declare-fun b!166398 () Bool)

(declare-fun e!109179 () Bool)

(assert (=> b!166398 (= e!109179 tp_is_empty!3757)))

(declare-fun b!166399 () Bool)

(assert (=> b!166399 (= e!109171 (and e!109179 mapRes!6354))))

(declare-fun condMapEmpty!6354 () Bool)

(declare-fun mapDefault!6354 () ValueCell!1535)

