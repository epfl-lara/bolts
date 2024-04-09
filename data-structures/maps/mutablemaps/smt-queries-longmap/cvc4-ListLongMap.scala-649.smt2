; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16258 () Bool)

(assert start!16258)

(declare-fun b!162047 () Bool)

(declare-fun b_free!3707 () Bool)

(declare-fun b_next!3707 () Bool)

(assert (=> b!162047 (= b_free!3707 (not b_next!3707))))

(declare-fun tp!13691 () Bool)

(declare-fun b_and!10139 () Bool)

(assert (=> b!162047 (= tp!13691 b_and!10139)))

(declare-fun e!106089 () Bool)

(declare-fun tp_is_empty!3509 () Bool)

(declare-fun e!106088 () Bool)

(declare-datatypes ((V!4325 0))(
  ( (V!4326 (val!1799 Int)) )
))
(declare-datatypes ((ValueCell!1411 0))(
  ( (ValueCellFull!1411 (v!3660 V!4325)) (EmptyCell!1411) )
))
(declare-datatypes ((array!6096 0))(
  ( (array!6097 (arr!2892 (Array (_ BitVec 32) (_ BitVec 64))) (size!3176 (_ BitVec 32))) )
))
(declare-datatypes ((array!6098 0))(
  ( (array!6099 (arr!2893 (Array (_ BitVec 32) ValueCell!1411)) (size!3177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1730 0))(
  ( (LongMapFixedSize!1731 (defaultEntry!3307 Int) (mask!7917 (_ BitVec 32)) (extraKeys!3048 (_ BitVec 32)) (zeroValue!3150 V!4325) (minValue!3150 V!4325) (_size!914 (_ BitVec 32)) (_keys!5108 array!6096) (_values!3290 array!6098) (_vacant!914 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1730)

(declare-fun array_inv!1843 (array!6096) Bool)

(declare-fun array_inv!1844 (array!6098) Bool)

(assert (=> b!162047 (= e!106088 (and tp!13691 tp_is_empty!3509 (array_inv!1843 (_keys!5108 thiss!1248)) (array_inv!1844 (_values!3290 thiss!1248)) e!106089))))

(declare-fun mapNonEmpty!5951 () Bool)

(declare-fun mapRes!5951 () Bool)

(declare-fun tp!13690 () Bool)

(declare-fun e!106091 () Bool)

(assert (=> mapNonEmpty!5951 (= mapRes!5951 (and tp!13690 e!106091))))

(declare-fun mapValue!5951 () ValueCell!1411)

(declare-fun mapRest!5951 () (Array (_ BitVec 32) ValueCell!1411))

(declare-fun mapKey!5951 () (_ BitVec 32))

(assert (=> mapNonEmpty!5951 (= (arr!2893 (_values!3290 thiss!1248)) (store mapRest!5951 mapKey!5951 mapValue!5951))))

(declare-fun b!162048 () Bool)

(declare-fun e!106090 () Bool)

(assert (=> b!162048 (= e!106090 tp_is_empty!3509)))

(declare-fun b!162049 () Bool)

(assert (=> b!162049 (= e!106091 tp_is_empty!3509)))

(declare-fun mapIsEmpty!5951 () Bool)

(assert (=> mapIsEmpty!5951 mapRes!5951))

(declare-fun b!162051 () Bool)

(declare-fun e!106094 () Bool)

(declare-fun e!106092 () Bool)

(assert (=> b!162051 (= e!106094 e!106092)))

(declare-fun res!76787 () Bool)

(assert (=> b!162051 (=> (not res!76787) (not e!106092))))

(declare-datatypes ((SeekEntryResult!380 0))(
  ( (MissingZero!380 (index!3688 (_ BitVec 32))) (Found!380 (index!3689 (_ BitVec 32))) (Intermediate!380 (undefined!1192 Bool) (index!3690 (_ BitVec 32)) (x!17916 (_ BitVec 32))) (Undefined!380) (MissingVacant!380 (index!3691 (_ BitVec 32))) )
))
(declare-fun lt!82394 () SeekEntryResult!380)

(assert (=> b!162051 (= res!76787 (and (not (is-Undefined!380 lt!82394)) (is-MissingVacant!380 lt!82394)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6096 (_ BitVec 32)) SeekEntryResult!380)

(assert (=> b!162051 (= lt!82394 (seekEntryOrOpen!0 key!828 (_keys!5108 thiss!1248) (mask!7917 thiss!1248)))))

(declare-fun b!162052 () Bool)

(declare-fun res!76785 () Bool)

(assert (=> b!162052 (=> (not res!76785) (not e!106094))))

(assert (=> b!162052 (= res!76785 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162053 () Bool)

(assert (=> b!162053 (= e!106089 (and e!106090 mapRes!5951))))

(declare-fun condMapEmpty!5951 () Bool)

(declare-fun mapDefault!5951 () ValueCell!1411)

