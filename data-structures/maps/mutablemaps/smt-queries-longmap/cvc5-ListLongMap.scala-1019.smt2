; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21726 () Bool)

(assert start!21726)

(declare-fun b!218216 () Bool)

(declare-fun b_free!5863 () Bool)

(declare-fun b_next!5863 () Bool)

(assert (=> b!218216 (= b_free!5863 (not b_next!5863))))

(declare-fun tp!20723 () Bool)

(declare-fun b_and!12771 () Bool)

(assert (=> b!218216 (= tp!20723 b_and!12771)))

(declare-fun b!218207 () Bool)

(declare-fun res!106985 () Bool)

(declare-fun e!141952 () Bool)

(assert (=> b!218207 (=> (not res!106985) (not e!141952))))

(declare-datatypes ((V!7281 0))(
  ( (V!7282 (val!2907 Int)) )
))
(declare-datatypes ((ValueCell!2519 0))(
  ( (ValueCellFull!2519 (v!4921 V!7281)) (EmptyCell!2519) )
))
(declare-datatypes ((array!10688 0))(
  ( (array!10689 (arr!5065 (Array (_ BitVec 32) ValueCell!2519)) (size!5397 (_ BitVec 32))) )
))
(declare-datatypes ((array!10690 0))(
  ( (array!10691 (arr!5066 (Array (_ BitVec 32) (_ BitVec 64))) (size!5398 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2938 0))(
  ( (LongMapFixedSize!2939 (defaultEntry!4119 Int) (mask!9892 (_ BitVec 32)) (extraKeys!3856 (_ BitVec 32)) (zeroValue!3960 V!7281) (minValue!3960 V!7281) (_size!1518 (_ BitVec 32)) (_keys!6168 array!10690) (_values!4102 array!10688) (_vacant!1518 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2938)

(assert (=> b!218207 (= res!106985 (and (= (size!5397 (_values!4102 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9892 thiss!1504))) (= (size!5398 (_keys!6168 thiss!1504)) (size!5397 (_values!4102 thiss!1504))) (bvsge (mask!9892 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3856 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3856 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!106984 () Bool)

(declare-fun e!141955 () Bool)

(assert (=> start!21726 (=> (not res!106984) (not e!141955))))

(declare-fun valid!1183 (LongMapFixedSize!2938) Bool)

(assert (=> start!21726 (= res!106984 (valid!1183 thiss!1504))))

(assert (=> start!21726 e!141955))

(declare-fun e!141953 () Bool)

(assert (=> start!21726 e!141953))

(assert (=> start!21726 true))

(declare-fun b!218208 () Bool)

(assert (=> b!218208 (= e!141955 e!141952)))

(declare-fun res!106986 () Bool)

(assert (=> b!218208 (=> (not res!106986) (not e!141952))))

(declare-datatypes ((SeekEntryResult!794 0))(
  ( (MissingZero!794 (index!5346 (_ BitVec 32))) (Found!794 (index!5347 (_ BitVec 32))) (Intermediate!794 (undefined!1606 Bool) (index!5348 (_ BitVec 32)) (x!22834 (_ BitVec 32))) (Undefined!794) (MissingVacant!794 (index!5349 (_ BitVec 32))) )
))
(declare-fun lt!111516 () SeekEntryResult!794)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218208 (= res!106986 (or (= lt!111516 (MissingZero!794 index!297)) (= lt!111516 (MissingVacant!794 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10690 (_ BitVec 32)) SeekEntryResult!794)

(assert (=> b!218208 (= lt!111516 (seekEntryOrOpen!0 key!932 (_keys!6168 thiss!1504) (mask!9892 thiss!1504)))))

(declare-fun b!218209 () Bool)

(declare-fun e!141951 () Bool)

(declare-fun tp_is_empty!5725 () Bool)

(assert (=> b!218209 (= e!141951 tp_is_empty!5725)))

(declare-fun b!218210 () Bool)

(declare-fun res!106982 () Bool)

(assert (=> b!218210 (=> (not res!106982) (not e!141952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218210 (= res!106982 (validMask!0 (mask!9892 thiss!1504)))))

(declare-fun b!218211 () Bool)

(declare-fun res!106983 () Bool)

(assert (=> b!218211 (=> (not res!106983) (not e!141952))))

(declare-datatypes ((tuple2!4316 0))(
  ( (tuple2!4317 (_1!2168 (_ BitVec 64)) (_2!2168 V!7281)) )
))
(declare-datatypes ((List!3246 0))(
  ( (Nil!3243) (Cons!3242 (h!3889 tuple2!4316) (t!8209 List!3246)) )
))
(declare-datatypes ((ListLongMap!3243 0))(
  ( (ListLongMap!3244 (toList!1637 List!3246)) )
))
(declare-fun contains!1472 (ListLongMap!3243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1160 (array!10690 array!10688 (_ BitVec 32) (_ BitVec 32) V!7281 V!7281 (_ BitVec 32) Int) ListLongMap!3243)

(assert (=> b!218211 (= res!106983 (not (contains!1472 (getCurrentListMap!1160 (_keys!6168 thiss!1504) (_values!4102 thiss!1504) (mask!9892 thiss!1504) (extraKeys!3856 thiss!1504) (zeroValue!3960 thiss!1504) (minValue!3960 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4119 thiss!1504)) key!932)))))

(declare-fun b!218212 () Bool)

(declare-fun res!106980 () Bool)

(assert (=> b!218212 (=> (not res!106980) (not e!141955))))

(assert (=> b!218212 (= res!106980 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218213 () Bool)

(declare-fun e!141956 () Bool)

(declare-fun e!141957 () Bool)

(declare-fun mapRes!9750 () Bool)

(assert (=> b!218213 (= e!141956 (and e!141957 mapRes!9750))))

(declare-fun condMapEmpty!9750 () Bool)

(declare-fun mapDefault!9750 () ValueCell!2519)

