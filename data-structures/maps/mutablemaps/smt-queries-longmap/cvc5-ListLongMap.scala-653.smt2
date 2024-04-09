; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16278 () Bool)

(assert start!16278)

(declare-fun b!162237 () Bool)

(declare-fun b_free!3727 () Bool)

(declare-fun b_next!3727 () Bool)

(assert (=> b!162237 (= b_free!3727 (not b_next!3727))))

(declare-fun tp!13750 () Bool)

(declare-fun b_and!10159 () Bool)

(assert (=> b!162237 (= tp!13750 b_and!10159)))

(declare-fun mapNonEmpty!5981 () Bool)

(declare-fun mapRes!5981 () Bool)

(declare-fun tp!13751 () Bool)

(declare-fun e!106279 () Bool)

(assert (=> mapNonEmpty!5981 (= mapRes!5981 (and tp!13751 e!106279))))

(declare-datatypes ((V!4353 0))(
  ( (V!4354 (val!1809 Int)) )
))
(declare-datatypes ((ValueCell!1421 0))(
  ( (ValueCellFull!1421 (v!3670 V!4353)) (EmptyCell!1421) )
))
(declare-fun mapValue!5981 () ValueCell!1421)

(declare-fun mapRest!5981 () (Array (_ BitVec 32) ValueCell!1421))

(declare-datatypes ((array!6136 0))(
  ( (array!6137 (arr!2912 (Array (_ BitVec 32) (_ BitVec 64))) (size!3196 (_ BitVec 32))) )
))
(declare-datatypes ((array!6138 0))(
  ( (array!6139 (arr!2913 (Array (_ BitVec 32) ValueCell!1421)) (size!3197 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1750 0))(
  ( (LongMapFixedSize!1751 (defaultEntry!3317 Int) (mask!7935 (_ BitVec 32)) (extraKeys!3058 (_ BitVec 32)) (zeroValue!3160 V!4353) (minValue!3160 V!4353) (_size!924 (_ BitVec 32)) (_keys!5118 array!6136) (_values!3300 array!6138) (_vacant!924 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1750)

(declare-fun mapKey!5981 () (_ BitVec 32))

(assert (=> mapNonEmpty!5981 (= (arr!2913 (_values!3300 thiss!1248)) (store mapRest!5981 mapKey!5981 mapValue!5981))))

(declare-fun e!106282 () Bool)

(declare-fun tp_is_empty!3529 () Bool)

(declare-fun e!106281 () Bool)

(declare-fun array_inv!1853 (array!6136) Bool)

(declare-fun array_inv!1854 (array!6138) Bool)

(assert (=> b!162237 (= e!106282 (and tp!13750 tp_is_empty!3529 (array_inv!1853 (_keys!5118 thiss!1248)) (array_inv!1854 (_values!3300 thiss!1248)) e!106281))))

(declare-fun b!162238 () Bool)

(declare-fun e!106283 () Bool)

(declare-datatypes ((SeekEntryResult!388 0))(
  ( (MissingZero!388 (index!3720 (_ BitVec 32))) (Found!388 (index!3721 (_ BitVec 32))) (Intermediate!388 (undefined!1200 Bool) (index!3722 (_ BitVec 32)) (x!17956 (_ BitVec 32))) (Undefined!388) (MissingVacant!388 (index!3723 (_ BitVec 32))) )
))
(declare-fun lt!82433 () SeekEntryResult!388)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162238 (= e!106283 (and (not (is-Undefined!388 lt!82433)) (not (is-MissingVacant!388 lt!82433)) (is-MissingZero!388 lt!82433) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6136 (_ BitVec 32)) SeekEntryResult!388)

(assert (=> b!162238 (= lt!82433 (seekEntryOrOpen!0 key!828 (_keys!5118 thiss!1248) (mask!7935 thiss!1248)))))

(declare-fun mapIsEmpty!5981 () Bool)

(assert (=> mapIsEmpty!5981 mapRes!5981))

(declare-fun b!162239 () Bool)

(declare-fun e!106280 () Bool)

(assert (=> b!162239 (= e!106281 (and e!106280 mapRes!5981))))

(declare-fun condMapEmpty!5981 () Bool)

(declare-fun mapDefault!5981 () ValueCell!1421)

