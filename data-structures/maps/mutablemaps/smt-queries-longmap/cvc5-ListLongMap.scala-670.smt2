; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16536 () Bool)

(assert start!16536)

(declare-fun b!164279 () Bool)

(declare-fun b_free!3829 () Bool)

(declare-fun b_next!3829 () Bool)

(assert (=> b!164279 (= b_free!3829 (not b_next!3829))))

(declare-fun tp!14087 () Bool)

(declare-fun b_and!10261 () Bool)

(assert (=> b!164279 (= tp!14087 b_and!10261)))

(declare-fun b!164271 () Bool)

(declare-fun e!107791 () Bool)

(declare-fun e!107793 () Bool)

(assert (=> b!164271 (= e!107791 e!107793)))

(declare-fun res!77774 () Bool)

(assert (=> b!164271 (=> (not res!77774) (not e!107793))))

(declare-datatypes ((SeekEntryResult!423 0))(
  ( (MissingZero!423 (index!3860 (_ BitVec 32))) (Found!423 (index!3861 (_ BitVec 32))) (Intermediate!423 (undefined!1235 Bool) (index!3862 (_ BitVec 32)) (x!18235 (_ BitVec 32))) (Undefined!423) (MissingVacant!423 (index!3863 (_ BitVec 32))) )
))
(declare-fun lt!82889 () SeekEntryResult!423)

(assert (=> b!164271 (= res!77774 (and (not (is-Undefined!423 lt!82889)) (not (is-MissingVacant!423 lt!82889)) (not (is-MissingZero!423 lt!82889)) (is-Found!423 lt!82889)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4489 0))(
  ( (V!4490 (val!1860 Int)) )
))
(declare-datatypes ((ValueCell!1472 0))(
  ( (ValueCellFull!1472 (v!3721 V!4489)) (EmptyCell!1472) )
))
(declare-datatypes ((array!6358 0))(
  ( (array!6359 (arr!3014 (Array (_ BitVec 32) (_ BitVec 64))) (size!3302 (_ BitVec 32))) )
))
(declare-datatypes ((array!6360 0))(
  ( (array!6361 (arr!3015 (Array (_ BitVec 32) ValueCell!1472)) (size!3303 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1852 0))(
  ( (LongMapFixedSize!1853 (defaultEntry!3368 Int) (mask!8057 (_ BitVec 32)) (extraKeys!3109 (_ BitVec 32)) (zeroValue!3211 V!4489) (minValue!3211 V!4489) (_size!975 (_ BitVec 32)) (_keys!5193 array!6358) (_values!3351 array!6360) (_vacant!975 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1852)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6358 (_ BitVec 32)) SeekEntryResult!423)

(assert (=> b!164271 (= lt!82889 (seekEntryOrOpen!0 key!828 (_keys!5193 thiss!1248) (mask!8057 thiss!1248)))))

(declare-fun b!164272 () Bool)

(declare-fun res!77769 () Bool)

(assert (=> b!164272 (=> (not res!77769) (not e!107793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164272 (= res!77769 (validMask!0 (mask!8057 thiss!1248)))))

(declare-fun res!77771 () Bool)

(assert (=> start!16536 (=> (not res!77771) (not e!107791))))

(declare-fun valid!816 (LongMapFixedSize!1852) Bool)

(assert (=> start!16536 (= res!77771 (valid!816 thiss!1248))))

(assert (=> start!16536 e!107791))

(declare-fun e!107789 () Bool)

(assert (=> start!16536 e!107789))

(assert (=> start!16536 true))

(declare-fun b!164273 () Bool)

(declare-fun res!77773 () Bool)

(assert (=> b!164273 (=> (not res!77773) (not e!107793))))

(declare-datatypes ((tuple2!3014 0))(
  ( (tuple2!3015 (_1!1517 (_ BitVec 64)) (_2!1517 V!4489)) )
))
(declare-datatypes ((List!2021 0))(
  ( (Nil!2018) (Cons!2017 (h!2634 tuple2!3014) (t!6831 List!2021)) )
))
(declare-datatypes ((ListLongMap!1983 0))(
  ( (ListLongMap!1984 (toList!1007 List!2021)) )
))
(declare-fun contains!1043 (ListLongMap!1983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!660 (array!6358 array!6360 (_ BitVec 32) (_ BitVec 32) V!4489 V!4489 (_ BitVec 32) Int) ListLongMap!1983)

(assert (=> b!164273 (= res!77773 (contains!1043 (getCurrentListMap!660 (_keys!5193 thiss!1248) (_values!3351 thiss!1248) (mask!8057 thiss!1248) (extraKeys!3109 thiss!1248) (zeroValue!3211 thiss!1248) (minValue!3211 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3368 thiss!1248)) key!828))))

(declare-fun b!164274 () Bool)

(declare-fun res!77770 () Bool)

(assert (=> b!164274 (=> (not res!77770) (not e!107791))))

(assert (=> b!164274 (= res!77770 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164275 () Bool)

(declare-fun e!107794 () Bool)

(declare-fun e!107790 () Bool)

(declare-fun mapRes!6165 () Bool)

(assert (=> b!164275 (= e!107794 (and e!107790 mapRes!6165))))

(declare-fun condMapEmpty!6165 () Bool)

(declare-fun mapDefault!6165 () ValueCell!1472)

