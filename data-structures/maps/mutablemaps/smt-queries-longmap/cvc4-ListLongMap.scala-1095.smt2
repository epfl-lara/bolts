; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22496 () Bool)

(assert start!22496)

(declare-fun b!235066 () Bool)

(declare-fun b_free!6323 () Bool)

(declare-fun b_next!6323 () Bool)

(assert (=> b!235066 (= b_free!6323 (not b_next!6323))))

(declare-fun tp!22133 () Bool)

(declare-fun b_and!13267 () Bool)

(assert (=> b!235066 (= tp!22133 b_and!13267)))

(declare-fun b!235062 () Bool)

(declare-fun res!115291 () Bool)

(declare-fun e!152680 () Bool)

(assert (=> b!235062 (=> (not res!115291) (not e!152680))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!235062 (= res!115291 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!115292 () Bool)

(assert (=> start!22496 (=> (not res!115292) (not e!152680))))

(declare-datatypes ((V!7893 0))(
  ( (V!7894 (val!3137 Int)) )
))
(declare-datatypes ((ValueCell!2749 0))(
  ( (ValueCellFull!2749 (v!5159 V!7893)) (EmptyCell!2749) )
))
(declare-datatypes ((array!11624 0))(
  ( (array!11625 (arr!5525 (Array (_ BitVec 32) ValueCell!2749)) (size!5862 (_ BitVec 32))) )
))
(declare-datatypes ((array!11626 0))(
  ( (array!11627 (arr!5526 (Array (_ BitVec 32) (_ BitVec 64))) (size!5863 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3398 0))(
  ( (LongMapFixedSize!3399 (defaultEntry!4368 Int) (mask!10330 (_ BitVec 32)) (extraKeys!4105 (_ BitVec 32)) (zeroValue!4209 V!7893) (minValue!4209 V!7893) (_size!1748 (_ BitVec 32)) (_keys!6440 array!11626) (_values!4351 array!11624) (_vacant!1748 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3398)

(declare-fun valid!1333 (LongMapFixedSize!3398) Bool)

(assert (=> start!22496 (= res!115292 (valid!1333 thiss!1504))))

(assert (=> start!22496 e!152680))

(declare-fun e!152681 () Bool)

(assert (=> start!22496 e!152681))

(assert (=> start!22496 true))

(declare-fun b!235063 () Bool)

(declare-fun e!152677 () Bool)

(assert (=> b!235063 (= e!152680 e!152677)))

(declare-fun res!115289 () Bool)

(assert (=> b!235063 (=> (not res!115289) (not e!152677))))

(declare-datatypes ((SeekEntryResult!995 0))(
  ( (MissingZero!995 (index!6150 (_ BitVec 32))) (Found!995 (index!6151 (_ BitVec 32))) (Intermediate!995 (undefined!1807 Bool) (index!6152 (_ BitVec 32)) (x!23763 (_ BitVec 32))) (Undefined!995) (MissingVacant!995 (index!6153 (_ BitVec 32))) )
))
(declare-fun lt!118952 () SeekEntryResult!995)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235063 (= res!115289 (or (= lt!118952 (MissingZero!995 index!297)) (= lt!118952 (MissingVacant!995 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11626 (_ BitVec 32)) SeekEntryResult!995)

(assert (=> b!235063 (= lt!118952 (seekEntryOrOpen!0 key!932 (_keys!6440 thiss!1504) (mask!10330 thiss!1504)))))

(declare-fun b!235064 () Bool)

(declare-fun e!152682 () Bool)

(declare-fun tp_is_empty!6185 () Bool)

(assert (=> b!235064 (= e!152682 tp_is_empty!6185)))

(declare-fun b!235065 () Bool)

(declare-fun res!115288 () Bool)

(assert (=> b!235065 (=> (not res!115288) (not e!152677))))

(assert (=> b!235065 (= res!115288 (and (= (size!5862 (_values!4351 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10330 thiss!1504))) (= (size!5863 (_keys!6440 thiss!1504)) (size!5862 (_values!4351 thiss!1504))) (bvsge (mask!10330 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4105 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4105 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!152678 () Bool)

(declare-fun array_inv!3633 (array!11626) Bool)

(declare-fun array_inv!3634 (array!11624) Bool)

(assert (=> b!235066 (= e!152681 (and tp!22133 tp_is_empty!6185 (array_inv!3633 (_keys!6440 thiss!1504)) (array_inv!3634 (_values!4351 thiss!1504)) e!152678))))

(declare-fun mapIsEmpty!10469 () Bool)

(declare-fun mapRes!10469 () Bool)

(assert (=> mapIsEmpty!10469 mapRes!10469))

(declare-fun b!235067 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11626 (_ BitVec 32)) Bool)

(assert (=> b!235067 (= e!152677 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6440 thiss!1504) (mask!10330 thiss!1504))))))

(declare-fun mapNonEmpty!10469 () Bool)

(declare-fun tp!22132 () Bool)

(declare-fun e!152679 () Bool)

(assert (=> mapNonEmpty!10469 (= mapRes!10469 (and tp!22132 e!152679))))

(declare-fun mapRest!10469 () (Array (_ BitVec 32) ValueCell!2749))

(declare-fun mapValue!10469 () ValueCell!2749)

(declare-fun mapKey!10469 () (_ BitVec 32))

(assert (=> mapNonEmpty!10469 (= (arr!5525 (_values!4351 thiss!1504)) (store mapRest!10469 mapKey!10469 mapValue!10469))))

(declare-fun b!235068 () Bool)

(assert (=> b!235068 (= e!152678 (and e!152682 mapRes!10469))))

(declare-fun condMapEmpty!10469 () Bool)

(declare-fun mapDefault!10469 () ValueCell!2749)

