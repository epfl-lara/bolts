; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16656 () Bool)

(assert start!16656)

(declare-fun b!166282 () Bool)

(declare-fun b_free!3949 () Bool)

(declare-fun b_next!3949 () Bool)

(assert (=> b!166282 (= b_free!3949 (not b_next!3949))))

(declare-fun tp!14447 () Bool)

(declare-fun b_and!10381 () Bool)

(assert (=> b!166282 (= tp!14447 b_and!10381)))

(declare-fun b!166273 () Bool)

(declare-fun res!79035 () Bool)

(declare-fun e!109085 () Bool)

(assert (=> b!166273 (=> (not res!79035) (not e!109085))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!166273 (= res!79035 (not (= key!828 (bvneg key!828))))))

(declare-fun res!79031 () Bool)

(assert (=> start!16656 (=> (not res!79031) (not e!109085))))

(declare-datatypes ((V!4649 0))(
  ( (V!4650 (val!1920 Int)) )
))
(declare-datatypes ((ValueCell!1532 0))(
  ( (ValueCellFull!1532 (v!3781 V!4649)) (EmptyCell!1532) )
))
(declare-datatypes ((array!6598 0))(
  ( (array!6599 (arr!3134 (Array (_ BitVec 32) (_ BitVec 64))) (size!3422 (_ BitVec 32))) )
))
(declare-datatypes ((array!6600 0))(
  ( (array!6601 (arr!3135 (Array (_ BitVec 32) ValueCell!1532)) (size!3423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1972 0))(
  ( (LongMapFixedSize!1973 (defaultEntry!3428 Int) (mask!8157 (_ BitVec 32)) (extraKeys!3169 (_ BitVec 32)) (zeroValue!3271 V!4649) (minValue!3271 V!4649) (_size!1035 (_ BitVec 32)) (_keys!5253 array!6598) (_values!3411 array!6600) (_vacant!1035 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1972)

(declare-fun valid!858 (LongMapFixedSize!1972) Bool)

(assert (=> start!16656 (= res!79031 (valid!858 thiss!1248))))

(assert (=> start!16656 e!109085))

(declare-fun e!109083 () Bool)

(assert (=> start!16656 e!109083))

(assert (=> start!16656 true))

(declare-fun b!166274 () Bool)

(declare-fun res!79030 () Bool)

(declare-fun e!109084 () Bool)

(assert (=> b!166274 (=> (not res!79030) (not e!109084))))

(assert (=> b!166274 (= res!79030 (and (= (size!3423 (_values!3411 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8157 thiss!1248))) (= (size!3422 (_keys!5253 thiss!1248)) (size!3423 (_values!3411 thiss!1248))) (bvsge (mask!8157 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3169 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3169 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166275 () Bool)

(declare-datatypes ((Unit!5052 0))(
  ( (Unit!5053) )
))
(declare-fun e!109088 () Unit!5052)

(declare-fun lt!83285 () Unit!5052)

(assert (=> b!166275 (= e!109088 lt!83285)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!86 (array!6598 array!6600 (_ BitVec 32) (_ BitVec 32) V!4649 V!4649 (_ BitVec 64) Int) Unit!5052)

(assert (=> b!166275 (= lt!83285 (lemmaInListMapThenSeekEntryOrOpenFindsIt!86 (_keys!5253 thiss!1248) (_values!3411 thiss!1248) (mask!8157 thiss!1248) (extraKeys!3169 thiss!1248) (zeroValue!3271 thiss!1248) (minValue!3271 thiss!1248) key!828 (defaultEntry!3428 thiss!1248)))))

(declare-fun res!79034 () Bool)

(declare-datatypes ((SeekEntryResult!463 0))(
  ( (MissingZero!463 (index!4020 (_ BitVec 32))) (Found!463 (index!4021 (_ BitVec 32))) (Intermediate!463 (undefined!1275 Bool) (index!4022 (_ BitVec 32)) (x!18435 (_ BitVec 32))) (Undefined!463) (MissingVacant!463 (index!4023 (_ BitVec 32))) )
))
(declare-fun lt!83283 () SeekEntryResult!463)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166275 (= res!79034 (inRange!0 (index!4021 lt!83283) (mask!8157 thiss!1248)))))

(declare-fun e!109081 () Bool)

(assert (=> b!166275 (=> (not res!79034) (not e!109081))))

(assert (=> b!166275 e!109081))

(declare-fun b!166276 () Bool)

(declare-fun e!109086 () Bool)

(declare-fun tp_is_empty!3751 () Bool)

(assert (=> b!166276 (= e!109086 tp_is_empty!3751)))

(declare-fun b!166277 () Bool)

(declare-fun e!109089 () Bool)

(assert (=> b!166277 (= e!109089 e!109084)))

(declare-fun res!79033 () Bool)

(assert (=> b!166277 (=> (not res!79033) (not e!109084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166277 (= res!79033 (validMask!0 (mask!8157 thiss!1248)))))

(declare-fun lt!83282 () Unit!5052)

(assert (=> b!166277 (= lt!83282 e!109088)))

(declare-fun c!30186 () Bool)

(declare-datatypes ((tuple2!3096 0))(
  ( (tuple2!3097 (_1!1558 (_ BitVec 64)) (_2!1558 V!4649)) )
))
(declare-datatypes ((List!2106 0))(
  ( (Nil!2103) (Cons!2102 (h!2719 tuple2!3096) (t!6916 List!2106)) )
))
(declare-datatypes ((ListLongMap!2065 0))(
  ( (ListLongMap!2066 (toList!1048 List!2106)) )
))
(declare-fun contains!1084 (ListLongMap!2065 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!701 (array!6598 array!6600 (_ BitVec 32) (_ BitVec 32) V!4649 V!4649 (_ BitVec 32) Int) ListLongMap!2065)

(assert (=> b!166277 (= c!30186 (contains!1084 (getCurrentListMap!701 (_keys!5253 thiss!1248) (_values!3411 thiss!1248) (mask!8157 thiss!1248) (extraKeys!3169 thiss!1248) (zeroValue!3271 thiss!1248) (minValue!3271 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3428 thiss!1248)) key!828))))

(declare-fun b!166278 () Bool)

(declare-fun Unit!5054 () Unit!5052)

(assert (=> b!166278 (= e!109088 Unit!5054)))

(declare-fun lt!83281 () Unit!5052)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!84 (array!6598 array!6600 (_ BitVec 32) (_ BitVec 32) V!4649 V!4649 (_ BitVec 64) Int) Unit!5052)

(assert (=> b!166278 (= lt!83281 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!84 (_keys!5253 thiss!1248) (_values!3411 thiss!1248) (mask!8157 thiss!1248) (extraKeys!3169 thiss!1248) (zeroValue!3271 thiss!1248) (minValue!3271 thiss!1248) key!828 (defaultEntry!3428 thiss!1248)))))

(assert (=> b!166278 false))

(declare-fun b!166279 () Bool)

(assert (=> b!166279 (= e!109081 (= (select (arr!3134 (_keys!5253 thiss!1248)) (index!4021 lt!83283)) key!828))))

(declare-fun b!166280 () Bool)

(declare-fun e!109082 () Bool)

(assert (=> b!166280 (= e!109082 tp_is_empty!3751)))

(declare-fun b!166281 () Bool)

(assert (=> b!166281 (= e!109084 false)))

(declare-fun lt!83284 () Bool)

(declare-datatypes ((List!2107 0))(
  ( (Nil!2104) (Cons!2103 (h!2720 (_ BitVec 64)) (t!6917 List!2107)) )
))
(declare-fun arrayNoDuplicates!0 (array!6598 (_ BitVec 32) List!2107) Bool)

(assert (=> b!166281 (= lt!83284 (arrayNoDuplicates!0 (_keys!5253 thiss!1248) #b00000000000000000000000000000000 Nil!2104))))

(declare-fun mapIsEmpty!6345 () Bool)

(declare-fun mapRes!6345 () Bool)

(assert (=> mapIsEmpty!6345 mapRes!6345))

(declare-fun e!109090 () Bool)

(declare-fun array_inv!1999 (array!6598) Bool)

(declare-fun array_inv!2000 (array!6600) Bool)

(assert (=> b!166282 (= e!109083 (and tp!14447 tp_is_empty!3751 (array_inv!1999 (_keys!5253 thiss!1248)) (array_inv!2000 (_values!3411 thiss!1248)) e!109090))))

(declare-fun mapNonEmpty!6345 () Bool)

(declare-fun tp!14448 () Bool)

(assert (=> mapNonEmpty!6345 (= mapRes!6345 (and tp!14448 e!109086))))

(declare-fun mapValue!6345 () ValueCell!1532)

(declare-fun mapRest!6345 () (Array (_ BitVec 32) ValueCell!1532))

(declare-fun mapKey!6345 () (_ BitVec 32))

(assert (=> mapNonEmpty!6345 (= (arr!3135 (_values!3411 thiss!1248)) (store mapRest!6345 mapKey!6345 mapValue!6345))))

(declare-fun b!166283 () Bool)

(assert (=> b!166283 (= e!109085 e!109089)))

(declare-fun res!79029 () Bool)

(assert (=> b!166283 (=> (not res!79029) (not e!109089))))

(assert (=> b!166283 (= res!79029 (and (not (is-Undefined!463 lt!83283)) (not (is-MissingVacant!463 lt!83283)) (not (is-MissingZero!463 lt!83283)) (is-Found!463 lt!83283)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6598 (_ BitVec 32)) SeekEntryResult!463)

(assert (=> b!166283 (= lt!83283 (seekEntryOrOpen!0 key!828 (_keys!5253 thiss!1248) (mask!8157 thiss!1248)))))

(declare-fun b!166284 () Bool)

(declare-fun res!79032 () Bool)

(assert (=> b!166284 (=> (not res!79032) (not e!109084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6598 (_ BitVec 32)) Bool)

(assert (=> b!166284 (= res!79032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5253 thiss!1248) (mask!8157 thiss!1248)))))

(declare-fun b!166285 () Bool)

(assert (=> b!166285 (= e!109090 (and e!109082 mapRes!6345))))

(declare-fun condMapEmpty!6345 () Bool)

(declare-fun mapDefault!6345 () ValueCell!1532)

