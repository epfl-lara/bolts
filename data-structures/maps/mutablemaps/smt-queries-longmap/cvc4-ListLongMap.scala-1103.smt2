; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22712 () Bool)

(assert start!22712)

(declare-fun b!236887 () Bool)

(declare-fun b_free!6371 () Bool)

(declare-fun b_next!6371 () Bool)

(assert (=> b!236887 (= b_free!6371 (not b_next!6371))))

(declare-fun tp!22297 () Bool)

(declare-fun b_and!13335 () Bool)

(assert (=> b!236887 (= tp!22297 b_and!13335)))

(declare-fun b!236886 () Bool)

(declare-fun res!116152 () Bool)

(declare-fun e!153852 () Bool)

(assert (=> b!236886 (=> (not res!116152) (not e!153852))))

(declare-datatypes ((V!7957 0))(
  ( (V!7958 (val!3161 Int)) )
))
(declare-datatypes ((ValueCell!2773 0))(
  ( (ValueCellFull!2773 (v!5189 V!7957)) (EmptyCell!2773) )
))
(declare-datatypes ((array!11732 0))(
  ( (array!11733 (arr!5573 (Array (_ BitVec 32) ValueCell!2773)) (size!5912 (_ BitVec 32))) )
))
(declare-datatypes ((array!11734 0))(
  ( (array!11735 (arr!5574 (Array (_ BitVec 32) (_ BitVec 64))) (size!5913 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3446 0))(
  ( (LongMapFixedSize!3447 (defaultEntry!4400 Int) (mask!10401 (_ BitVec 32)) (extraKeys!4137 (_ BitVec 32)) (zeroValue!4241 V!7957) (minValue!4241 V!7957) (_size!1772 (_ BitVec 32)) (_keys!6487 array!11734) (_values!4383 array!11732) (_vacant!1772 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3446)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4654 0))(
  ( (tuple2!4655 (_1!2337 (_ BitVec 64)) (_2!2337 V!7957)) )
))
(declare-datatypes ((List!3580 0))(
  ( (Nil!3577) (Cons!3576 (h!4230 tuple2!4654) (t!8571 List!3580)) )
))
(declare-datatypes ((ListLongMap!3581 0))(
  ( (ListLongMap!3582 (toList!1806 List!3580)) )
))
(declare-fun contains!1682 (ListLongMap!3581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1329 (array!11734 array!11732 (_ BitVec 32) (_ BitVec 32) V!7957 V!7957 (_ BitVec 32) Int) ListLongMap!3581)

(assert (=> b!236886 (= res!116152 (not (contains!1682 (getCurrentListMap!1329 (_keys!6487 thiss!1504) (_values!4383 thiss!1504) (mask!10401 thiss!1504) (extraKeys!4137 thiss!1504) (zeroValue!4241 thiss!1504) (minValue!4241 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4400 thiss!1504)) key!932)))))

(declare-fun e!153850 () Bool)

(declare-fun e!153853 () Bool)

(declare-fun tp_is_empty!6233 () Bool)

(declare-fun array_inv!3669 (array!11734) Bool)

(declare-fun array_inv!3670 (array!11732) Bool)

(assert (=> b!236887 (= e!153853 (and tp!22297 tp_is_empty!6233 (array_inv!3669 (_keys!6487 thiss!1504)) (array_inv!3670 (_values!4383 thiss!1504)) e!153850))))

(declare-fun b!236888 () Bool)

(declare-fun e!153851 () Bool)

(assert (=> b!236888 (= e!153851 e!153852)))

(declare-fun res!116148 () Bool)

(assert (=> b!236888 (=> (not res!116148) (not e!153852))))

(declare-datatypes ((SeekEntryResult!1016 0))(
  ( (MissingZero!1016 (index!6234 (_ BitVec 32))) (Found!1016 (index!6235 (_ BitVec 32))) (Intermediate!1016 (undefined!1828 Bool) (index!6236 (_ BitVec 32)) (x!23924 (_ BitVec 32))) (Undefined!1016) (MissingVacant!1016 (index!6237 (_ BitVec 32))) )
))
(declare-fun lt!119811 () SeekEntryResult!1016)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236888 (= res!116148 (or (= lt!119811 (MissingZero!1016 index!297)) (= lt!119811 (MissingVacant!1016 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11734 (_ BitVec 32)) SeekEntryResult!1016)

(assert (=> b!236888 (= lt!119811 (seekEntryOrOpen!0 key!932 (_keys!6487 thiss!1504) (mask!10401 thiss!1504)))))

(declare-fun res!116150 () Bool)

(assert (=> start!22712 (=> (not res!116150) (not e!153851))))

(declare-fun valid!1351 (LongMapFixedSize!3446) Bool)

(assert (=> start!22712 (= res!116150 (valid!1351 thiss!1504))))

(assert (=> start!22712 e!153851))

(assert (=> start!22712 e!153853))

(assert (=> start!22712 true))

(declare-fun mapIsEmpty!10561 () Bool)

(declare-fun mapRes!10561 () Bool)

(assert (=> mapIsEmpty!10561 mapRes!10561))

(declare-fun mapNonEmpty!10561 () Bool)

(declare-fun tp!22296 () Bool)

(declare-fun e!153854 () Bool)

(assert (=> mapNonEmpty!10561 (= mapRes!10561 (and tp!22296 e!153854))))

(declare-fun mapRest!10561 () (Array (_ BitVec 32) ValueCell!2773))

(declare-fun mapKey!10561 () (_ BitVec 32))

(declare-fun mapValue!10561 () ValueCell!2773)

(assert (=> mapNonEmpty!10561 (= (arr!5573 (_values!4383 thiss!1504)) (store mapRest!10561 mapKey!10561 mapValue!10561))))

(declare-fun b!236889 () Bool)

(assert (=> b!236889 (= e!153852 (and (= (size!5912 (_values!4383 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10401 thiss!1504))) (= (size!5913 (_keys!6487 thiss!1504)) (size!5912 (_values!4383 thiss!1504))) (bvslt (mask!10401 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!236890 () Bool)

(declare-fun res!116151 () Bool)

(assert (=> b!236890 (=> (not res!116151) (not e!153852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236890 (= res!116151 (validMask!0 (mask!10401 thiss!1504)))))

(declare-fun b!236891 () Bool)

(assert (=> b!236891 (= e!153854 tp_is_empty!6233)))

(declare-fun b!236892 () Bool)

(declare-fun res!116149 () Bool)

(assert (=> b!236892 (=> (not res!116149) (not e!153851))))

(assert (=> b!236892 (= res!116149 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!236893 () Bool)

(declare-fun e!153856 () Bool)

(assert (=> b!236893 (= e!153850 (and e!153856 mapRes!10561))))

(declare-fun condMapEmpty!10561 () Bool)

(declare-fun mapDefault!10561 () ValueCell!2773)

