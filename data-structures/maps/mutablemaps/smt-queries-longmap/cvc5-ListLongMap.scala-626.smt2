; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16116 () Bool)

(assert start!16116)

(declare-fun b!160088 () Bool)

(declare-fun b_free!3565 () Bool)

(declare-fun b_next!3565 () Bool)

(assert (=> b!160088 (= b_free!3565 (not b_next!3565))))

(declare-fun tp!13264 () Bool)

(declare-fun b_and!9997 () Bool)

(assert (=> b!160088 (= tp!13264 b_and!9997)))

(declare-fun b!160078 () Bool)

(declare-fun e!104713 () Bool)

(assert (=> b!160078 (= e!104713 false)))

(declare-fun lt!82082 () Bool)

(declare-datatypes ((V!4137 0))(
  ( (V!4138 (val!1728 Int)) )
))
(declare-datatypes ((ValueCell!1340 0))(
  ( (ValueCellFull!1340 (v!3589 V!4137)) (EmptyCell!1340) )
))
(declare-datatypes ((array!5812 0))(
  ( (array!5813 (arr!2750 (Array (_ BitVec 32) (_ BitVec 64))) (size!3034 (_ BitVec 32))) )
))
(declare-datatypes ((array!5814 0))(
  ( (array!5815 (arr!2751 (Array (_ BitVec 32) ValueCell!1340)) (size!3035 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1588 0))(
  ( (LongMapFixedSize!1589 (defaultEntry!3236 Int) (mask!7800 (_ BitVec 32)) (extraKeys!2977 (_ BitVec 32)) (zeroValue!3079 V!4137) (minValue!3079 V!4137) (_size!843 (_ BitVec 32)) (_keys!5037 array!5812) (_values!3219 array!5814) (_vacant!843 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1588)

(declare-datatypes ((List!1952 0))(
  ( (Nil!1949) (Cons!1948 (h!2561 (_ BitVec 64)) (t!6762 List!1952)) )
))
(declare-fun arrayNoDuplicates!0 (array!5812 (_ BitVec 32) List!1952) Bool)

(assert (=> b!160078 (= lt!82082 (arrayNoDuplicates!0 (_keys!5037 thiss!1248) #b00000000000000000000000000000000 Nil!1949))))

(declare-fun mapNonEmpty!5738 () Bool)

(declare-fun mapRes!5738 () Bool)

(declare-fun tp!13265 () Bool)

(declare-fun e!104714 () Bool)

(assert (=> mapNonEmpty!5738 (= mapRes!5738 (and tp!13265 e!104714))))

(declare-fun mapRest!5738 () (Array (_ BitVec 32) ValueCell!1340))

(declare-fun mapValue!5738 () ValueCell!1340)

(declare-fun mapKey!5738 () (_ BitVec 32))

(assert (=> mapNonEmpty!5738 (= (arr!2751 (_values!3219 thiss!1248)) (store mapRest!5738 mapKey!5738 mapValue!5738))))

(declare-fun b!160079 () Bool)

(declare-fun tp_is_empty!3367 () Bool)

(assert (=> b!160079 (= e!104714 tp_is_empty!3367)))

(declare-fun b!160080 () Bool)

(declare-fun e!104717 () Bool)

(assert (=> b!160080 (= e!104717 tp_is_empty!3367)))

(declare-fun b!160081 () Bool)

(declare-fun e!104712 () Bool)

(assert (=> b!160081 (= e!104712 (and e!104717 mapRes!5738))))

(declare-fun condMapEmpty!5738 () Bool)

(declare-fun mapDefault!5738 () ValueCell!1340)

