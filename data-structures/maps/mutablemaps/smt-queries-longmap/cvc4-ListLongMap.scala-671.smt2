; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16546 () Bool)

(assert start!16546)

(declare-fun b!164441 () Bool)

(declare-fun b_free!3839 () Bool)

(declare-fun b_next!3839 () Bool)

(assert (=> b!164441 (= b_free!3839 (not b_next!3839))))

(declare-fun tp!14118 () Bool)

(declare-fun b_and!10271 () Bool)

(assert (=> b!164441 (= tp!14118 b_and!10271)))

(declare-fun res!77878 () Bool)

(declare-fun e!107896 () Bool)

(assert (=> start!16546 (=> (not res!77878) (not e!107896))))

(declare-datatypes ((V!4501 0))(
  ( (V!4502 (val!1865 Int)) )
))
(declare-datatypes ((ValueCell!1477 0))(
  ( (ValueCellFull!1477 (v!3726 V!4501)) (EmptyCell!1477) )
))
(declare-datatypes ((array!6378 0))(
  ( (array!6379 (arr!3024 (Array (_ BitVec 32) (_ BitVec 64))) (size!3312 (_ BitVec 32))) )
))
(declare-datatypes ((array!6380 0))(
  ( (array!6381 (arr!3025 (Array (_ BitVec 32) ValueCell!1477)) (size!3313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1862 0))(
  ( (LongMapFixedSize!1863 (defaultEntry!3373 Int) (mask!8064 (_ BitVec 32)) (extraKeys!3114 (_ BitVec 32)) (zeroValue!3216 V!4501) (minValue!3216 V!4501) (_size!980 (_ BitVec 32)) (_keys!5198 array!6378) (_values!3356 array!6380) (_vacant!980 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1862)

(declare-fun valid!821 (LongMapFixedSize!1862) Bool)

(assert (=> start!16546 (= res!77878 (valid!821 thiss!1248))))

(assert (=> start!16546 e!107896))

(declare-fun e!107898 () Bool)

(assert (=> start!16546 e!107898))

(assert (=> start!16546 true))

(declare-fun b!164436 () Bool)

(declare-fun res!77880 () Bool)

(declare-fun e!107893 () Bool)

(assert (=> b!164436 (=> (not res!77880) (not e!107893))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3024 0))(
  ( (tuple2!3025 (_1!1522 (_ BitVec 64)) (_2!1522 V!4501)) )
))
(declare-datatypes ((List!2030 0))(
  ( (Nil!2027) (Cons!2026 (h!2643 tuple2!3024) (t!6840 List!2030)) )
))
(declare-datatypes ((ListLongMap!1993 0))(
  ( (ListLongMap!1994 (toList!1012 List!2030)) )
))
(declare-fun contains!1048 (ListLongMap!1993 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!665 (array!6378 array!6380 (_ BitVec 32) (_ BitVec 32) V!4501 V!4501 (_ BitVec 32) Int) ListLongMap!1993)

(assert (=> b!164436 (= res!77880 (contains!1048 (getCurrentListMap!665 (_keys!5198 thiss!1248) (_values!3356 thiss!1248) (mask!8064 thiss!1248) (extraKeys!3114 thiss!1248) (zeroValue!3216 thiss!1248) (minValue!3216 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3373 thiss!1248)) key!828))))

(declare-fun b!164437 () Bool)

(declare-fun res!77877 () Bool)

(assert (=> b!164437 (=> (not res!77877) (not e!107896))))

(assert (=> b!164437 (= res!77877 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164438 () Bool)

(declare-fun res!77874 () Bool)

(assert (=> b!164438 (=> (not res!77874) (not e!107893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6378 (_ BitVec 32)) Bool)

(assert (=> b!164438 (= res!77874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5198 thiss!1248) (mask!8064 thiss!1248)))))

(declare-fun b!164439 () Bool)

(assert (=> b!164439 (= e!107896 e!107893)))

(declare-fun res!77875 () Bool)

(assert (=> b!164439 (=> (not res!77875) (not e!107893))))

(declare-datatypes ((SeekEntryResult!427 0))(
  ( (MissingZero!427 (index!3876 (_ BitVec 32))) (Found!427 (index!3877 (_ BitVec 32))) (Intermediate!427 (undefined!1239 Bool) (index!3878 (_ BitVec 32)) (x!18247 (_ BitVec 32))) (Undefined!427) (MissingVacant!427 (index!3879 (_ BitVec 32))) )
))
(declare-fun lt!82918 () SeekEntryResult!427)

(assert (=> b!164439 (= res!77875 (and (not (is-Undefined!427 lt!82918)) (not (is-MissingVacant!427 lt!82918)) (not (is-MissingZero!427 lt!82918)) (is-Found!427 lt!82918)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6378 (_ BitVec 32)) SeekEntryResult!427)

(assert (=> b!164439 (= lt!82918 (seekEntryOrOpen!0 key!828 (_keys!5198 thiss!1248) (mask!8064 thiss!1248)))))

(declare-fun b!164440 () Bool)

(declare-fun e!107897 () Bool)

(declare-fun tp_is_empty!3641 () Bool)

(assert (=> b!164440 (= e!107897 tp_is_empty!3641)))

(declare-fun e!107895 () Bool)

(declare-fun array_inv!1929 (array!6378) Bool)

(declare-fun array_inv!1930 (array!6380) Bool)

(assert (=> b!164441 (= e!107898 (and tp!14118 tp_is_empty!3641 (array_inv!1929 (_keys!5198 thiss!1248)) (array_inv!1930 (_values!3356 thiss!1248)) e!107895))))

(declare-fun b!164442 () Bool)

(assert (=> b!164442 (= e!107893 false)))

(declare-fun lt!82919 () Bool)

(declare-datatypes ((List!2031 0))(
  ( (Nil!2028) (Cons!2027 (h!2644 (_ BitVec 64)) (t!6841 List!2031)) )
))
(declare-fun arrayNoDuplicates!0 (array!6378 (_ BitVec 32) List!2031) Bool)

(assert (=> b!164442 (= lt!82919 (arrayNoDuplicates!0 (_keys!5198 thiss!1248) #b00000000000000000000000000000000 Nil!2028))))

(declare-fun mapIsEmpty!6180 () Bool)

(declare-fun mapRes!6180 () Bool)

(assert (=> mapIsEmpty!6180 mapRes!6180))

(declare-fun b!164443 () Bool)

(declare-fun res!77879 () Bool)

(assert (=> b!164443 (=> (not res!77879) (not e!107893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164443 (= res!77879 (validMask!0 (mask!8064 thiss!1248)))))

(declare-fun mapNonEmpty!6180 () Bool)

(declare-fun tp!14117 () Bool)

(declare-fun e!107894 () Bool)

(assert (=> mapNonEmpty!6180 (= mapRes!6180 (and tp!14117 e!107894))))

(declare-fun mapValue!6180 () ValueCell!1477)

(declare-fun mapKey!6180 () (_ BitVec 32))

(declare-fun mapRest!6180 () (Array (_ BitVec 32) ValueCell!1477))

(assert (=> mapNonEmpty!6180 (= (arr!3025 (_values!3356 thiss!1248)) (store mapRest!6180 mapKey!6180 mapValue!6180))))

(declare-fun b!164444 () Bool)

(assert (=> b!164444 (= e!107894 tp_is_empty!3641)))

(declare-fun b!164445 () Bool)

(declare-fun res!77876 () Bool)

(assert (=> b!164445 (=> (not res!77876) (not e!107893))))

(assert (=> b!164445 (= res!77876 (and (= (size!3313 (_values!3356 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8064 thiss!1248))) (= (size!3312 (_keys!5198 thiss!1248)) (size!3313 (_values!3356 thiss!1248))) (bvsge (mask!8064 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3114 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3114 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164446 () Bool)

(assert (=> b!164446 (= e!107895 (and e!107897 mapRes!6180))))

(declare-fun condMapEmpty!6180 () Bool)

(declare-fun mapDefault!6180 () ValueCell!1477)

