; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16584 () Bool)

(assert start!16584)

(declare-fun b!165065 () Bool)

(declare-fun b_free!3877 () Bool)

(declare-fun b_next!3877 () Bool)

(assert (=> b!165065 (= b_free!3877 (not b_next!3877))))

(declare-fun tp!14232 () Bool)

(declare-fun b_and!10309 () Bool)

(assert (=> b!165065 (= tp!14232 b_and!10309)))

(declare-fun b!165063 () Bool)

(declare-fun e!108296 () Bool)

(declare-fun tp_is_empty!3679 () Bool)

(assert (=> b!165063 (= e!108296 tp_is_empty!3679)))

(declare-fun b!165064 () Bool)

(declare-fun res!78276 () Bool)

(declare-fun e!108295 () Bool)

(assert (=> b!165064 (=> (not res!78276) (not e!108295))))

(declare-datatypes ((V!4553 0))(
  ( (V!4554 (val!1884 Int)) )
))
(declare-datatypes ((ValueCell!1496 0))(
  ( (ValueCellFull!1496 (v!3745 V!4553)) (EmptyCell!1496) )
))
(declare-datatypes ((array!6454 0))(
  ( (array!6455 (arr!3062 (Array (_ BitVec 32) (_ BitVec 64))) (size!3350 (_ BitVec 32))) )
))
(declare-datatypes ((array!6456 0))(
  ( (array!6457 (arr!3063 (Array (_ BitVec 32) ValueCell!1496)) (size!3351 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1900 0))(
  ( (LongMapFixedSize!1901 (defaultEntry!3392 Int) (mask!8097 (_ BitVec 32)) (extraKeys!3133 (_ BitVec 32)) (zeroValue!3235 V!4553) (minValue!3235 V!4553) (_size!999 (_ BitVec 32)) (_keys!5217 array!6454) (_values!3375 array!6456) (_vacant!999 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1900)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165064 (= res!78276 (validMask!0 (mask!8097 thiss!1248)))))

(declare-fun mapIsEmpty!6237 () Bool)

(declare-fun mapRes!6237 () Bool)

(assert (=> mapIsEmpty!6237 mapRes!6237))

(declare-fun mapNonEmpty!6237 () Bool)

(declare-fun tp!14231 () Bool)

(assert (=> mapNonEmpty!6237 (= mapRes!6237 (and tp!14231 e!108296))))

(declare-fun mapValue!6237 () ValueCell!1496)

(declare-fun mapKey!6237 () (_ BitVec 32))

(declare-fun mapRest!6237 () (Array (_ BitVec 32) ValueCell!1496))

(assert (=> mapNonEmpty!6237 (= (arr!3063 (_values!3375 thiss!1248)) (store mapRest!6237 mapKey!6237 mapValue!6237))))

(declare-fun b!165066 () Bool)

(declare-fun e!108293 () Bool)

(assert (=> b!165066 (= e!108293 e!108295)))

(declare-fun res!78279 () Bool)

(assert (=> b!165066 (=> (not res!78279) (not e!108295))))

(declare-datatypes ((SeekEntryResult!438 0))(
  ( (MissingZero!438 (index!3920 (_ BitVec 32))) (Found!438 (index!3921 (_ BitVec 32))) (Intermediate!438 (undefined!1250 Bool) (index!3922 (_ BitVec 32)) (x!18314 (_ BitVec 32))) (Undefined!438) (MissingVacant!438 (index!3923 (_ BitVec 32))) )
))
(declare-fun lt!83033 () SeekEntryResult!438)

(assert (=> b!165066 (= res!78279 (and (not (is-Undefined!438 lt!83033)) (not (is-MissingVacant!438 lt!83033)) (not (is-MissingZero!438 lt!83033)) (is-Found!438 lt!83033)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6454 (_ BitVec 32)) SeekEntryResult!438)

(assert (=> b!165066 (= lt!83033 (seekEntryOrOpen!0 key!828 (_keys!5217 thiss!1248) (mask!8097 thiss!1248)))))

(declare-fun b!165067 () Bool)

(declare-fun res!78278 () Bool)

(assert (=> b!165067 (=> (not res!78278) (not e!108295))))

(assert (=> b!165067 (= res!78278 (and (= (size!3351 (_values!3375 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8097 thiss!1248))) (= (size!3350 (_keys!5217 thiss!1248)) (size!3351 (_values!3375 thiss!1248))) (bvsge (mask!8097 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3133 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3133 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165068 () Bool)

(declare-fun res!78277 () Bool)

(assert (=> b!165068 (=> (not res!78277) (not e!108293))))

(assert (=> b!165068 (= res!78277 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165069 () Bool)

(declare-fun e!108298 () Bool)

(declare-fun e!108297 () Bool)

(assert (=> b!165069 (= e!108298 (and e!108297 mapRes!6237))))

(declare-fun condMapEmpty!6237 () Bool)

(declare-fun mapDefault!6237 () ValueCell!1496)

