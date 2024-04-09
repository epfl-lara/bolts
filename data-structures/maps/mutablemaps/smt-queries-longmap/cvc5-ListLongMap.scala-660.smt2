; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16320 () Bool)

(assert start!16320)

(declare-fun b!162704 () Bool)

(declare-fun b_free!3769 () Bool)

(declare-fun b_next!3769 () Bool)

(assert (=> b!162704 (= b_free!3769 (not b_next!3769))))

(declare-fun tp!13876 () Bool)

(declare-fun b_and!10201 () Bool)

(assert (=> b!162704 (= tp!13876 b_and!10201)))

(declare-fun b!162698 () Bool)

(declare-fun res!77065 () Bool)

(declare-fun e!106722 () Bool)

(assert (=> b!162698 (=> (not res!77065) (not e!106722))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162698 (= res!77065 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162699 () Bool)

(declare-fun e!106723 () Bool)

(declare-datatypes ((V!4409 0))(
  ( (V!4410 (val!1830 Int)) )
))
(declare-datatypes ((ValueCell!1442 0))(
  ( (ValueCellFull!1442 (v!3691 V!4409)) (EmptyCell!1442) )
))
(declare-datatypes ((array!6220 0))(
  ( (array!6221 (arr!2954 (Array (_ BitVec 32) (_ BitVec 64))) (size!3238 (_ BitVec 32))) )
))
(declare-datatypes ((array!6222 0))(
  ( (array!6223 (arr!2955 (Array (_ BitVec 32) ValueCell!1442)) (size!3239 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1792 0))(
  ( (LongMapFixedSize!1793 (defaultEntry!3338 Int) (mask!7970 (_ BitVec 32)) (extraKeys!3079 (_ BitVec 32)) (zeroValue!3181 V!4409) (minValue!3181 V!4409) (_size!945 (_ BitVec 32)) (_keys!5139 array!6220) (_values!3321 array!6222) (_vacant!945 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1792)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!162699 (= e!106723 (not (validMask!0 (mask!7970 thiss!1248))))))

(declare-fun b!162700 () Bool)

(declare-fun e!106726 () Bool)

(declare-fun tp_is_empty!3571 () Bool)

(assert (=> b!162700 (= e!106726 tp_is_empty!3571)))

(declare-fun mapNonEmpty!6044 () Bool)

(declare-fun mapRes!6044 () Bool)

(declare-fun tp!13877 () Bool)

(assert (=> mapNonEmpty!6044 (= mapRes!6044 (and tp!13877 e!106726))))

(declare-fun mapValue!6044 () ValueCell!1442)

(declare-fun mapRest!6044 () (Array (_ BitVec 32) ValueCell!1442))

(declare-fun mapKey!6044 () (_ BitVec 32))

(assert (=> mapNonEmpty!6044 (= (arr!2955 (_values!3321 thiss!1248)) (store mapRest!6044 mapKey!6044 mapValue!6044))))

(declare-fun b!162701 () Bool)

(declare-fun e!106721 () Bool)

(assert (=> b!162701 (= e!106721 tp_is_empty!3571)))

(declare-fun b!162702 () Bool)

(declare-fun e!106727 () Bool)

(assert (=> b!162702 (= e!106727 (and e!106721 mapRes!6044))))

(declare-fun condMapEmpty!6044 () Bool)

(declare-fun mapDefault!6044 () ValueCell!1442)

