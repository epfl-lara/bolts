; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15718 () Bool)

(assert start!15718)

(declare-fun b!156601 () Bool)

(declare-fun b_free!3373 () Bool)

(declare-fun b_next!3373 () Bool)

(assert (=> b!156601 (= b_free!3373 (not b_next!3373))))

(declare-fun tp!12643 () Bool)

(declare-fun b_and!9805 () Bool)

(assert (=> b!156601 (= tp!12643 b_and!9805)))

(declare-fun mapNonEmpty!5405 () Bool)

(declare-fun mapRes!5405 () Bool)

(declare-fun tp!12644 () Bool)

(declare-fun e!102430 () Bool)

(assert (=> mapNonEmpty!5405 (= mapRes!5405 (and tp!12644 e!102430))))

(declare-fun mapKey!5405 () (_ BitVec 32))

(declare-datatypes ((V!3881 0))(
  ( (V!3882 (val!1632 Int)) )
))
(declare-datatypes ((ValueCell!1244 0))(
  ( (ValueCellFull!1244 (v!3493 V!3881)) (EmptyCell!1244) )
))
(declare-fun mapRest!5405 () (Array (_ BitVec 32) ValueCell!1244))

(declare-fun mapValue!5405 () ValueCell!1244)

(declare-datatypes ((array!5402 0))(
  ( (array!5403 (arr!2558 (Array (_ BitVec 32) (_ BitVec 64))) (size!2836 (_ BitVec 32))) )
))
(declare-datatypes ((array!5404 0))(
  ( (array!5405 (arr!2559 (Array (_ BitVec 32) ValueCell!1244)) (size!2837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1396 0))(
  ( (LongMapFixedSize!1397 (defaultEntry!3140 Int) (mask!7597 (_ BitVec 32)) (extraKeys!2881 (_ BitVec 32)) (zeroValue!2983 V!3881) (minValue!2983 V!3881) (_size!747 (_ BitVec 32)) (_keys!4915 array!5402) (_values!3123 array!5404) (_vacant!747 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1396)

(assert (=> mapNonEmpty!5405 (= (arr!2559 (_values!3123 thiss!1248)) (store mapRest!5405 mapKey!5405 mapValue!5405))))

(declare-fun b!156598 () Bool)

(declare-fun res!74024 () Bool)

(declare-fun e!102431 () Bool)

(assert (=> b!156598 (=> (not res!74024) (not e!102431))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156598 (= res!74024 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156599 () Bool)

(declare-fun e!102434 () Bool)

(declare-fun tp_is_empty!3175 () Bool)

(assert (=> b!156599 (= e!102434 tp_is_empty!3175)))

(declare-fun b!156600 () Bool)

(assert (=> b!156600 (= e!102430 tp_is_empty!3175)))

(declare-fun e!102433 () Bool)

(declare-fun e!102432 () Bool)

(declare-fun array_inv!1613 (array!5402) Bool)

(declare-fun array_inv!1614 (array!5404) Bool)

(assert (=> b!156601 (= e!102433 (and tp!12643 tp_is_empty!3175 (array_inv!1613 (_keys!4915 thiss!1248)) (array_inv!1614 (_values!3123 thiss!1248)) e!102432))))

(declare-fun b!156602 () Bool)

(declare-fun res!74022 () Bool)

(assert (=> b!156602 (=> (not res!74022) (not e!102431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5402 (_ BitVec 32)) Bool)

(assert (=> b!156602 (= res!74022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4915 thiss!1248) (mask!7597 thiss!1248)))))

(declare-fun b!156603 () Bool)

(assert (=> b!156603 (= e!102431 false)))

(declare-fun lt!81596 () Bool)

(declare-datatypes ((List!1875 0))(
  ( (Nil!1872) (Cons!1871 (h!2480 (_ BitVec 64)) (t!6685 List!1875)) )
))
(declare-fun arrayNoDuplicates!0 (array!5402 (_ BitVec 32) List!1875) Bool)

(assert (=> b!156603 (= lt!81596 (arrayNoDuplicates!0 (_keys!4915 thiss!1248) #b00000000000000000000000000000000 Nil!1872))))

(declare-fun mapIsEmpty!5405 () Bool)

(assert (=> mapIsEmpty!5405 mapRes!5405))

(declare-fun b!156604 () Bool)

(declare-fun res!74026 () Bool)

(assert (=> b!156604 (=> (not res!74026) (not e!102431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156604 (= res!74026 (validMask!0 (mask!7597 thiss!1248)))))

(declare-fun res!74025 () Bool)

(assert (=> start!15718 (=> (not res!74025) (not e!102431))))

(declare-fun valid!670 (LongMapFixedSize!1396) Bool)

(assert (=> start!15718 (= res!74025 (valid!670 thiss!1248))))

(assert (=> start!15718 e!102431))

(assert (=> start!15718 e!102433))

(assert (=> start!15718 true))

(declare-fun b!156605 () Bool)

(assert (=> b!156605 (= e!102432 (and e!102434 mapRes!5405))))

(declare-fun condMapEmpty!5405 () Bool)

(declare-fun mapDefault!5405 () ValueCell!1244)

