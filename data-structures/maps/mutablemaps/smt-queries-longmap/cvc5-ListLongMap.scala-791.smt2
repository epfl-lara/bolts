; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18822 () Bool)

(assert start!18822)

(declare-fun b!185867 () Bool)

(declare-fun b_free!4585 () Bool)

(declare-fun b_next!4585 () Bool)

(assert (=> b!185867 (= b_free!4585 (not b_next!4585))))

(declare-fun tp!16553 () Bool)

(declare-fun b_and!11205 () Bool)

(assert (=> b!185867 (= tp!16553 b_and!11205)))

(declare-fun mapIsEmpty!7497 () Bool)

(declare-fun mapRes!7497 () Bool)

(assert (=> mapIsEmpty!7497 mapRes!7497))

(declare-fun b!185863 () Bool)

(declare-datatypes ((Unit!5597 0))(
  ( (Unit!5598) )
))
(declare-fun e!122328 () Unit!5597)

(declare-fun lt!91919 () Unit!5597)

(assert (=> b!185863 (= e!122328 lt!91919)))

(declare-datatypes ((V!5457 0))(
  ( (V!5458 (val!2223 Int)) )
))
(declare-datatypes ((ValueCell!1835 0))(
  ( (ValueCellFull!1835 (v!4130 V!5457)) (EmptyCell!1835) )
))
(declare-datatypes ((array!7922 0))(
  ( (array!7923 (arr!3740 (Array (_ BitVec 32) (_ BitVec 64))) (size!4056 (_ BitVec 32))) )
))
(declare-datatypes ((array!7924 0))(
  ( (array!7925 (arr!3741 (Array (_ BitVec 32) ValueCell!1835)) (size!4057 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2578 0))(
  ( (LongMapFixedSize!2579 (defaultEntry!3791 Int) (mask!8908 (_ BitVec 32)) (extraKeys!3528 (_ BitVec 32)) (zeroValue!3632 V!5457) (minValue!3632 V!5457) (_size!1338 (_ BitVec 32)) (_keys!5732 array!7922) (_values!3774 array!7924) (_vacant!1338 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2578)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!143 (array!7922 array!7924 (_ BitVec 32) (_ BitVec 32) V!5457 V!5457 (_ BitVec 64) Int) Unit!5597)

(assert (=> b!185863 (= lt!91919 (lemmaInListMapThenSeekEntryOrOpenFindsIt!143 (_keys!5732 thiss!1248) (_values!3774 thiss!1248) (mask!8908 thiss!1248) (extraKeys!3528 thiss!1248) (zeroValue!3632 thiss!1248) (minValue!3632 thiss!1248) key!828 (defaultEntry!3791 thiss!1248)))))

(declare-fun res!87954 () Bool)

(declare-datatypes ((SeekEntryResult!649 0))(
  ( (MissingZero!649 (index!4766 (_ BitVec 32))) (Found!649 (index!4767 (_ BitVec 32))) (Intermediate!649 (undefined!1461 Bool) (index!4768 (_ BitVec 32)) (x!20195 (_ BitVec 32))) (Undefined!649) (MissingVacant!649 (index!4769 (_ BitVec 32))) )
))
(declare-fun lt!91921 () SeekEntryResult!649)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!185863 (= res!87954 (inRange!0 (index!4767 lt!91921) (mask!8908 thiss!1248)))))

(declare-fun e!122321 () Bool)

(assert (=> b!185863 (=> (not res!87954) (not e!122321))))

(assert (=> b!185863 e!122321))

(declare-fun mapNonEmpty!7497 () Bool)

(declare-fun tp!16554 () Bool)

(declare-fun e!122327 () Bool)

(assert (=> mapNonEmpty!7497 (= mapRes!7497 (and tp!16554 e!122327))))

(declare-fun mapValue!7497 () ValueCell!1835)

(declare-fun mapKey!7497 () (_ BitVec 32))

(declare-fun mapRest!7497 () (Array (_ BitVec 32) ValueCell!1835))

(assert (=> mapNonEmpty!7497 (= (arr!3741 (_values!3774 thiss!1248)) (store mapRest!7497 mapKey!7497 mapValue!7497))))

(declare-fun b!185864 () Bool)

(declare-fun e!122325 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185864 (= e!122325 (not (validMask!0 (mask!8908 thiss!1248))))))

(declare-fun lt!91918 () Unit!5597)

(assert (=> b!185864 (= lt!91918 e!122328)))

(declare-fun c!33306 () Bool)

(declare-datatypes ((tuple2!3458 0))(
  ( (tuple2!3459 (_1!1739 (_ BitVec 64)) (_2!1739 V!5457)) )
))
(declare-datatypes ((List!2390 0))(
  ( (Nil!2387) (Cons!2386 (h!3019 tuple2!3458) (t!7282 List!2390)) )
))
(declare-datatypes ((ListLongMap!2389 0))(
  ( (ListLongMap!2390 (toList!1210 List!2390)) )
))
(declare-fun contains!1300 (ListLongMap!2389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!853 (array!7922 array!7924 (_ BitVec 32) (_ BitVec 32) V!5457 V!5457 (_ BitVec 32) Int) ListLongMap!2389)

(assert (=> b!185864 (= c!33306 (contains!1300 (getCurrentListMap!853 (_keys!5732 thiss!1248) (_values!3774 thiss!1248) (mask!8908 thiss!1248) (extraKeys!3528 thiss!1248) (zeroValue!3632 thiss!1248) (minValue!3632 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3791 thiss!1248)) key!828))))

(declare-fun b!185865 () Bool)

(declare-fun res!87956 () Bool)

(declare-fun e!122326 () Bool)

(assert (=> b!185865 (=> (not res!87956) (not e!122326))))

(assert (=> b!185865 (= res!87956 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185866 () Bool)

(declare-fun e!122324 () Bool)

(declare-fun e!122320 () Bool)

(assert (=> b!185866 (= e!122324 (and e!122320 mapRes!7497))))

(declare-fun condMapEmpty!7497 () Bool)

(declare-fun mapDefault!7497 () ValueCell!1835)

