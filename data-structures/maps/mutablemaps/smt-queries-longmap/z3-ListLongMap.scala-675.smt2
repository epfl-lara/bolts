; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16568 () Bool)

(assert start!16568)

(declare-fun b!164802 () Bool)

(declare-fun b_free!3861 () Bool)

(declare-fun b_next!3861 () Bool)

(assert (=> b!164802 (= b_free!3861 (not b_next!3861))))

(declare-fun tp!14184 () Bool)

(declare-fun b_and!10293 () Bool)

(assert (=> b!164802 (= tp!14184 b_and!10293)))

(declare-fun b!164799 () Bool)

(declare-fun res!78106 () Bool)

(declare-fun e!108124 () Bool)

(assert (=> b!164799 (=> (not res!78106) (not e!108124))))

(declare-datatypes ((V!4531 0))(
  ( (V!4532 (val!1876 Int)) )
))
(declare-datatypes ((ValueCell!1488 0))(
  ( (ValueCellFull!1488 (v!3737 V!4531)) (EmptyCell!1488) )
))
(declare-datatypes ((array!6422 0))(
  ( (array!6423 (arr!3046 (Array (_ BitVec 32) (_ BitVec 64))) (size!3334 (_ BitVec 32))) )
))
(declare-datatypes ((array!6424 0))(
  ( (array!6425 (arr!3047 (Array (_ BitVec 32) ValueCell!1488)) (size!3335 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1884 0))(
  ( (LongMapFixedSize!1885 (defaultEntry!3384 Int) (mask!8083 (_ BitVec 32)) (extraKeys!3125 (_ BitVec 32)) (zeroValue!3227 V!4531) (minValue!3227 V!4531) (_size!991 (_ BitVec 32)) (_keys!5209 array!6422) (_values!3367 array!6424) (_vacant!991 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1884)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3040 0))(
  ( (tuple2!3041 (_1!1530 (_ BitVec 64)) (_2!1530 V!4531)) )
))
(declare-datatypes ((List!2046 0))(
  ( (Nil!2043) (Cons!2042 (h!2659 tuple2!3040) (t!6856 List!2046)) )
))
(declare-datatypes ((ListLongMap!2009 0))(
  ( (ListLongMap!2010 (toList!1020 List!2046)) )
))
(declare-fun contains!1056 (ListLongMap!2009 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!673 (array!6422 array!6424 (_ BitVec 32) (_ BitVec 32) V!4531 V!4531 (_ BitVec 32) Int) ListLongMap!2009)

(assert (=> b!164799 (= res!78106 (contains!1056 (getCurrentListMap!673 (_keys!5209 thiss!1248) (_values!3367 thiss!1248) (mask!8083 thiss!1248) (extraKeys!3125 thiss!1248) (zeroValue!3227 thiss!1248) (minValue!3227 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3384 thiss!1248)) key!828))))

(declare-fun b!164800 () Bool)

(declare-fun e!108130 () Bool)

(assert (=> b!164800 (= e!108130 e!108124)))

(declare-fun res!78110 () Bool)

(assert (=> b!164800 (=> (not res!78110) (not e!108124))))

(declare-datatypes ((SeekEntryResult!434 0))(
  ( (MissingZero!434 (index!3904 (_ BitVec 32))) (Found!434 (index!3905 (_ BitVec 32))) (Intermediate!434 (undefined!1246 Bool) (index!3906 (_ BitVec 32)) (x!18286 (_ BitVec 32))) (Undefined!434) (MissingVacant!434 (index!3907 (_ BitVec 32))) )
))
(declare-fun lt!82984 () SeekEntryResult!434)

(get-info :version)

(assert (=> b!164800 (= res!78110 (and (not ((_ is Undefined!434) lt!82984)) (not ((_ is MissingVacant!434) lt!82984)) (not ((_ is MissingZero!434) lt!82984)) ((_ is Found!434) lt!82984)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6422 (_ BitVec 32)) SeekEntryResult!434)

(assert (=> b!164800 (= lt!82984 (seekEntryOrOpen!0 key!828 (_keys!5209 thiss!1248) (mask!8083 thiss!1248)))))

(declare-fun res!78108 () Bool)

(assert (=> start!16568 (=> (not res!78108) (not e!108130))))

(declare-fun valid!829 (LongMapFixedSize!1884) Bool)

(assert (=> start!16568 (= res!78108 (valid!829 thiss!1248))))

(assert (=> start!16568 e!108130))

(declare-fun e!108125 () Bool)

(assert (=> start!16568 e!108125))

(assert (=> start!16568 true))

(declare-fun mapIsEmpty!6213 () Bool)

(declare-fun mapRes!6213 () Bool)

(assert (=> mapIsEmpty!6213 mapRes!6213))

(declare-fun b!164801 () Bool)

(declare-fun res!78111 () Bool)

(assert (=> b!164801 (=> (not res!78111) (not e!108124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6422 (_ BitVec 32)) Bool)

(assert (=> b!164801 (= res!78111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5209 thiss!1248) (mask!8083 thiss!1248)))))

(declare-fun tp_is_empty!3663 () Bool)

(declare-fun e!108129 () Bool)

(declare-fun array_inv!1945 (array!6422) Bool)

(declare-fun array_inv!1946 (array!6424) Bool)

(assert (=> b!164802 (= e!108125 (and tp!14184 tp_is_empty!3663 (array_inv!1945 (_keys!5209 thiss!1248)) (array_inv!1946 (_values!3367 thiss!1248)) e!108129))))

(declare-fun b!164803 () Bool)

(declare-fun res!78109 () Bool)

(assert (=> b!164803 (=> (not res!78109) (not e!108130))))

(assert (=> b!164803 (= res!78109 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164804 () Bool)

(declare-fun e!108128 () Bool)

(assert (=> b!164804 (= e!108128 tp_is_empty!3663)))

(declare-fun b!164805 () Bool)

(assert (=> b!164805 (= e!108124 false)))

(declare-fun lt!82985 () Bool)

(declare-datatypes ((List!2047 0))(
  ( (Nil!2044) (Cons!2043 (h!2660 (_ BitVec 64)) (t!6857 List!2047)) )
))
(declare-fun arrayNoDuplicates!0 (array!6422 (_ BitVec 32) List!2047) Bool)

(assert (=> b!164805 (= lt!82985 (arrayNoDuplicates!0 (_keys!5209 thiss!1248) #b00000000000000000000000000000000 Nil!2044))))

(declare-fun b!164806 () Bool)

(declare-fun e!108126 () Bool)

(assert (=> b!164806 (= e!108126 tp_is_empty!3663)))

(declare-fun b!164807 () Bool)

(assert (=> b!164807 (= e!108129 (and e!108128 mapRes!6213))))

(declare-fun condMapEmpty!6213 () Bool)

(declare-fun mapDefault!6213 () ValueCell!1488)

(assert (=> b!164807 (= condMapEmpty!6213 (= (arr!3047 (_values!3367 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1488)) mapDefault!6213)))))

(declare-fun b!164808 () Bool)

(declare-fun res!78107 () Bool)

(assert (=> b!164808 (=> (not res!78107) (not e!108124))))

(assert (=> b!164808 (= res!78107 (and (= (size!3335 (_values!3367 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8083 thiss!1248))) (= (size!3334 (_keys!5209 thiss!1248)) (size!3335 (_values!3367 thiss!1248))) (bvsge (mask!8083 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3125 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3125 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6213 () Bool)

(declare-fun tp!14183 () Bool)

(assert (=> mapNonEmpty!6213 (= mapRes!6213 (and tp!14183 e!108126))))

(declare-fun mapRest!6213 () (Array (_ BitVec 32) ValueCell!1488))

(declare-fun mapValue!6213 () ValueCell!1488)

(declare-fun mapKey!6213 () (_ BitVec 32))

(assert (=> mapNonEmpty!6213 (= (arr!3047 (_values!3367 thiss!1248)) (store mapRest!6213 mapKey!6213 mapValue!6213))))

(declare-fun b!164809 () Bool)

(declare-fun res!78105 () Bool)

(assert (=> b!164809 (=> (not res!78105) (not e!108124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164809 (= res!78105 (validMask!0 (mask!8083 thiss!1248)))))

(assert (= (and start!16568 res!78108) b!164803))

(assert (= (and b!164803 res!78109) b!164800))

(assert (= (and b!164800 res!78110) b!164799))

(assert (= (and b!164799 res!78106) b!164809))

(assert (= (and b!164809 res!78105) b!164808))

(assert (= (and b!164808 res!78107) b!164801))

(assert (= (and b!164801 res!78111) b!164805))

(assert (= (and b!164807 condMapEmpty!6213) mapIsEmpty!6213))

(assert (= (and b!164807 (not condMapEmpty!6213)) mapNonEmpty!6213))

(assert (= (and mapNonEmpty!6213 ((_ is ValueCellFull!1488) mapValue!6213)) b!164806))

(assert (= (and b!164807 ((_ is ValueCellFull!1488) mapDefault!6213)) b!164804))

(assert (= b!164802 b!164807))

(assert (= start!16568 b!164802))

(declare-fun m!194869 () Bool)

(assert (=> b!164809 m!194869))

(declare-fun m!194871 () Bool)

(assert (=> b!164800 m!194871))

(declare-fun m!194873 () Bool)

(assert (=> mapNonEmpty!6213 m!194873))

(declare-fun m!194875 () Bool)

(assert (=> b!164799 m!194875))

(assert (=> b!164799 m!194875))

(declare-fun m!194877 () Bool)

(assert (=> b!164799 m!194877))

(declare-fun m!194879 () Bool)

(assert (=> start!16568 m!194879))

(declare-fun m!194881 () Bool)

(assert (=> b!164801 m!194881))

(declare-fun m!194883 () Bool)

(assert (=> b!164802 m!194883))

(declare-fun m!194885 () Bool)

(assert (=> b!164802 m!194885))

(declare-fun m!194887 () Bool)

(assert (=> b!164805 m!194887))

(check-sat (not b!164800) (not start!16568) (not b!164802) tp_is_empty!3663 (not b!164801) (not b!164809) (not mapNonEmpty!6213) b_and!10293 (not b!164805) (not b_next!3861) (not b!164799))
(check-sat b_and!10293 (not b_next!3861))
