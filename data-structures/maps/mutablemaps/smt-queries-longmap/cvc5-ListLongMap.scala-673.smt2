; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16554 () Bool)

(assert start!16554)

(declare-fun b!164570 () Bool)

(declare-fun b_free!3847 () Bool)

(declare-fun b_next!3847 () Bool)

(assert (=> b!164570 (= b_free!3847 (not b_next!3847))))

(declare-fun tp!14142 () Bool)

(declare-fun b_and!10279 () Bool)

(assert (=> b!164570 (= tp!14142 b_and!10279)))

(declare-fun b!164568 () Bool)

(declare-fun e!107979 () Bool)

(declare-fun e!107977 () Bool)

(assert (=> b!164568 (= e!107979 e!107977)))

(declare-fun res!77959 () Bool)

(assert (=> b!164568 (=> (not res!77959) (not e!107977))))

(declare-datatypes ((SeekEntryResult!430 0))(
  ( (MissingZero!430 (index!3888 (_ BitVec 32))) (Found!430 (index!3889 (_ BitVec 32))) (Intermediate!430 (undefined!1242 Bool) (index!3890 (_ BitVec 32)) (x!18266 (_ BitVec 32))) (Undefined!430) (MissingVacant!430 (index!3891 (_ BitVec 32))) )
))
(declare-fun lt!82943 () SeekEntryResult!430)

(assert (=> b!164568 (= res!77959 (and (not (is-Undefined!430 lt!82943)) (not (is-MissingVacant!430 lt!82943)) (not (is-MissingZero!430 lt!82943)) (is-Found!430 lt!82943)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4513 0))(
  ( (V!4514 (val!1869 Int)) )
))
(declare-datatypes ((ValueCell!1481 0))(
  ( (ValueCellFull!1481 (v!3730 V!4513)) (EmptyCell!1481) )
))
(declare-datatypes ((array!6394 0))(
  ( (array!6395 (arr!3032 (Array (_ BitVec 32) (_ BitVec 64))) (size!3320 (_ BitVec 32))) )
))
(declare-datatypes ((array!6396 0))(
  ( (array!6397 (arr!3033 (Array (_ BitVec 32) ValueCell!1481)) (size!3321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1870 0))(
  ( (LongMapFixedSize!1871 (defaultEntry!3377 Int) (mask!8072 (_ BitVec 32)) (extraKeys!3118 (_ BitVec 32)) (zeroValue!3220 V!4513) (minValue!3220 V!4513) (_size!984 (_ BitVec 32)) (_keys!5202 array!6394) (_values!3360 array!6396) (_vacant!984 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1870)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6394 (_ BitVec 32)) SeekEntryResult!430)

(assert (=> b!164568 (= lt!82943 (seekEntryOrOpen!0 key!828 (_keys!5202 thiss!1248) (mask!8072 thiss!1248)))))

(declare-fun b!164569 () Bool)

(declare-fun res!77963 () Bool)

(assert (=> b!164569 (=> (not res!77963) (not e!107977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6394 (_ BitVec 32)) Bool)

(assert (=> b!164569 (= res!77963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5202 thiss!1248) (mask!8072 thiss!1248)))))

(declare-fun e!107980 () Bool)

(declare-fun tp_is_empty!3649 () Bool)

(declare-fun e!107981 () Bool)

(declare-fun array_inv!1935 (array!6394) Bool)

(declare-fun array_inv!1936 (array!6396) Bool)

(assert (=> b!164570 (= e!107981 (and tp!14142 tp_is_empty!3649 (array_inv!1935 (_keys!5202 thiss!1248)) (array_inv!1936 (_values!3360 thiss!1248)) e!107980))))

(declare-fun b!164571 () Bool)

(declare-fun res!77964 () Bool)

(assert (=> b!164571 (=> (not res!77964) (not e!107977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164571 (= res!77964 (validMask!0 (mask!8072 thiss!1248)))))

(declare-fun mapIsEmpty!6192 () Bool)

(declare-fun mapRes!6192 () Bool)

(assert (=> mapIsEmpty!6192 mapRes!6192))

(declare-fun b!164572 () Bool)

(assert (=> b!164572 (= e!107977 false)))

(declare-fun lt!82942 () Bool)

(declare-datatypes ((List!2036 0))(
  ( (Nil!2033) (Cons!2032 (h!2649 (_ BitVec 64)) (t!6846 List!2036)) )
))
(declare-fun arrayNoDuplicates!0 (array!6394 (_ BitVec 32) List!2036) Bool)

(assert (=> b!164572 (= lt!82942 (arrayNoDuplicates!0 (_keys!5202 thiss!1248) #b00000000000000000000000000000000 Nil!2033))))

(declare-fun mapNonEmpty!6192 () Bool)

(declare-fun tp!14141 () Bool)

(declare-fun e!107983 () Bool)

(assert (=> mapNonEmpty!6192 (= mapRes!6192 (and tp!14141 e!107983))))

(declare-fun mapKey!6192 () (_ BitVec 32))

(declare-fun mapValue!6192 () ValueCell!1481)

(declare-fun mapRest!6192 () (Array (_ BitVec 32) ValueCell!1481))

(assert (=> mapNonEmpty!6192 (= (arr!3033 (_values!3360 thiss!1248)) (store mapRest!6192 mapKey!6192 mapValue!6192))))

(declare-fun b!164573 () Bool)

(assert (=> b!164573 (= e!107983 tp_is_empty!3649)))

(declare-fun b!164574 () Bool)

(declare-fun res!77961 () Bool)

(assert (=> b!164574 (=> (not res!77961) (not e!107977))))

(declare-datatypes ((tuple2!3030 0))(
  ( (tuple2!3031 (_1!1525 (_ BitVec 64)) (_2!1525 V!4513)) )
))
(declare-datatypes ((List!2037 0))(
  ( (Nil!2034) (Cons!2033 (h!2650 tuple2!3030) (t!6847 List!2037)) )
))
(declare-datatypes ((ListLongMap!1999 0))(
  ( (ListLongMap!2000 (toList!1015 List!2037)) )
))
(declare-fun contains!1051 (ListLongMap!1999 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!668 (array!6394 array!6396 (_ BitVec 32) (_ BitVec 32) V!4513 V!4513 (_ BitVec 32) Int) ListLongMap!1999)

(assert (=> b!164574 (= res!77961 (contains!1051 (getCurrentListMap!668 (_keys!5202 thiss!1248) (_values!3360 thiss!1248) (mask!8072 thiss!1248) (extraKeys!3118 thiss!1248) (zeroValue!3220 thiss!1248) (minValue!3220 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3377 thiss!1248)) key!828))))

(declare-fun res!77962 () Bool)

(assert (=> start!16554 (=> (not res!77962) (not e!107979))))

(declare-fun valid!825 (LongMapFixedSize!1870) Bool)

(assert (=> start!16554 (= res!77962 (valid!825 thiss!1248))))

(assert (=> start!16554 e!107979))

(assert (=> start!16554 e!107981))

(assert (=> start!16554 true))

(declare-fun b!164575 () Bool)

(declare-fun res!77960 () Bool)

(assert (=> b!164575 (=> (not res!77960) (not e!107977))))

(assert (=> b!164575 (= res!77960 (and (= (size!3321 (_values!3360 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8072 thiss!1248))) (= (size!3320 (_keys!5202 thiss!1248)) (size!3321 (_values!3360 thiss!1248))) (bvsge (mask!8072 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3118 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3118 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164576 () Bool)

(declare-fun e!107982 () Bool)

(assert (=> b!164576 (= e!107982 tp_is_empty!3649)))

(declare-fun b!164577 () Bool)

(declare-fun res!77958 () Bool)

(assert (=> b!164577 (=> (not res!77958) (not e!107979))))

(assert (=> b!164577 (= res!77958 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164578 () Bool)

(assert (=> b!164578 (= e!107980 (and e!107982 mapRes!6192))))

(declare-fun condMapEmpty!6192 () Bool)

(declare-fun mapDefault!6192 () ValueCell!1481)

