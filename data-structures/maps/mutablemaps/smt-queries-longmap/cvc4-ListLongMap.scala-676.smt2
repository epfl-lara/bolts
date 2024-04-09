; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16576 () Bool)

(assert start!16576)

(declare-fun b!164935 () Bool)

(declare-fun b_free!3869 () Bool)

(declare-fun b_next!3869 () Bool)

(assert (=> b!164935 (= b_free!3869 (not b_next!3869))))

(declare-fun tp!14207 () Bool)

(declare-fun b_and!10301 () Bool)

(assert (=> b!164935 (= tp!14207 b_and!10301)))

(declare-fun b!164931 () Bool)

(declare-fun res!78192 () Bool)

(declare-fun e!108210 () Bool)

(assert (=> b!164931 (=> (not res!78192) (not e!108210))))

(declare-datatypes ((V!4541 0))(
  ( (V!4542 (val!1880 Int)) )
))
(declare-datatypes ((ValueCell!1492 0))(
  ( (ValueCellFull!1492 (v!3741 V!4541)) (EmptyCell!1492) )
))
(declare-datatypes ((array!6438 0))(
  ( (array!6439 (arr!3054 (Array (_ BitVec 32) (_ BitVec 64))) (size!3342 (_ BitVec 32))) )
))
(declare-datatypes ((array!6440 0))(
  ( (array!6441 (arr!3055 (Array (_ BitVec 32) ValueCell!1492)) (size!3343 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1892 0))(
  ( (LongMapFixedSize!1893 (defaultEntry!3388 Int) (mask!8089 (_ BitVec 32)) (extraKeys!3129 (_ BitVec 32)) (zeroValue!3231 V!4541) (minValue!3231 V!4541) (_size!995 (_ BitVec 32)) (_keys!5213 array!6438) (_values!3371 array!6440) (_vacant!995 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1892)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164931 (= res!78192 (validMask!0 (mask!8089 thiss!1248)))))

(declare-fun b!164932 () Bool)

(declare-fun e!108213 () Bool)

(assert (=> b!164932 (= e!108213 e!108210)))

(declare-fun res!78191 () Bool)

(assert (=> b!164932 (=> (not res!78191) (not e!108210))))

(declare-datatypes ((SeekEntryResult!436 0))(
  ( (MissingZero!436 (index!3912 (_ BitVec 32))) (Found!436 (index!3913 (_ BitVec 32))) (Intermediate!436 (undefined!1248 Bool) (index!3914 (_ BitVec 32)) (x!18296 (_ BitVec 32))) (Undefined!436) (MissingVacant!436 (index!3915 (_ BitVec 32))) )
))
(declare-fun lt!83009 () SeekEntryResult!436)

(assert (=> b!164932 (= res!78191 (and (not (is-Undefined!436 lt!83009)) (not (is-MissingVacant!436 lt!83009)) (not (is-MissingZero!436 lt!83009)) (is-Found!436 lt!83009)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6438 (_ BitVec 32)) SeekEntryResult!436)

(assert (=> b!164932 (= lt!83009 (seekEntryOrOpen!0 key!828 (_keys!5213 thiss!1248) (mask!8089 thiss!1248)))))

(declare-fun b!164933 () Bool)

(declare-fun res!78193 () Bool)

(assert (=> b!164933 (=> (not res!78193) (not e!108210))))

(declare-datatypes ((tuple2!3046 0))(
  ( (tuple2!3047 (_1!1533 (_ BitVec 64)) (_2!1533 V!4541)) )
))
(declare-datatypes ((List!2052 0))(
  ( (Nil!2049) (Cons!2048 (h!2665 tuple2!3046) (t!6862 List!2052)) )
))
(declare-datatypes ((ListLongMap!2015 0))(
  ( (ListLongMap!2016 (toList!1023 List!2052)) )
))
(declare-fun contains!1059 (ListLongMap!2015 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!676 (array!6438 array!6440 (_ BitVec 32) (_ BitVec 32) V!4541 V!4541 (_ BitVec 32) Int) ListLongMap!2015)

(assert (=> b!164933 (= res!78193 (contains!1059 (getCurrentListMap!676 (_keys!5213 thiss!1248) (_values!3371 thiss!1248) (mask!8089 thiss!1248) (extraKeys!3129 thiss!1248) (zeroValue!3231 thiss!1248) (minValue!3231 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3388 thiss!1248)) key!828))))

(declare-fun b!164934 () Bool)

(declare-fun e!108209 () Bool)

(declare-fun tp_is_empty!3671 () Bool)

(assert (=> b!164934 (= e!108209 tp_is_empty!3671)))

(declare-fun e!108208 () Bool)

(declare-fun e!108212 () Bool)

(declare-fun array_inv!1951 (array!6438) Bool)

(declare-fun array_inv!1952 (array!6440) Bool)

(assert (=> b!164935 (= e!108212 (and tp!14207 tp_is_empty!3671 (array_inv!1951 (_keys!5213 thiss!1248)) (array_inv!1952 (_values!3371 thiss!1248)) e!108208))))

(declare-fun b!164936 () Bool)

(declare-fun res!78194 () Bool)

(assert (=> b!164936 (=> (not res!78194) (not e!108213))))

(assert (=> b!164936 (= res!78194 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6225 () Bool)

(declare-fun mapRes!6225 () Bool)

(assert (=> mapIsEmpty!6225 mapRes!6225))

(declare-fun b!164937 () Bool)

(declare-fun e!108214 () Bool)

(assert (=> b!164937 (= e!108208 (and e!108214 mapRes!6225))))

(declare-fun condMapEmpty!6225 () Bool)

(declare-fun mapDefault!6225 () ValueCell!1492)

