; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21500 () Bool)

(assert start!21500)

(declare-fun b!215570 () Bool)

(declare-fun b_free!5725 () Bool)

(declare-fun b_next!5725 () Bool)

(assert (=> b!215570 (= b_free!5725 (not b_next!5725))))

(declare-fun tp!20293 () Bool)

(declare-fun b_and!12633 () Bool)

(assert (=> b!215570 (= tp!20293 b_and!12633)))

(declare-fun mapIsEmpty!9526 () Bool)

(declare-fun mapRes!9526 () Bool)

(assert (=> mapIsEmpty!9526 mapRes!9526))

(declare-fun b!215568 () Bool)

(declare-fun e!140254 () Bool)

(declare-fun tp_is_empty!5587 () Bool)

(assert (=> b!215568 (= e!140254 tp_is_empty!5587)))

(declare-fun res!105454 () Bool)

(declare-fun e!140250 () Bool)

(assert (=> start!21500 (=> (not res!105454) (not e!140250))))

(declare-datatypes ((V!7097 0))(
  ( (V!7098 (val!2838 Int)) )
))
(declare-datatypes ((ValueCell!2450 0))(
  ( (ValueCellFull!2450 (v!4852 V!7097)) (EmptyCell!2450) )
))
(declare-datatypes ((array!10402 0))(
  ( (array!10403 (arr!4927 (Array (_ BitVec 32) ValueCell!2450)) (size!5257 (_ BitVec 32))) )
))
(declare-datatypes ((array!10404 0))(
  ( (array!10405 (arr!4928 (Array (_ BitVec 32) (_ BitVec 64))) (size!5258 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2800 0))(
  ( (LongMapFixedSize!2801 (defaultEntry!4050 Int) (mask!9756 (_ BitVec 32)) (extraKeys!3787 (_ BitVec 32)) (zeroValue!3891 V!7097) (minValue!3891 V!7097) (_size!1449 (_ BitVec 32)) (_keys!6085 array!10404) (_values!4033 array!10402) (_vacant!1449 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2800)

(declare-fun valid!1132 (LongMapFixedSize!2800) Bool)

(assert (=> start!21500 (= res!105454 (valid!1132 thiss!1504))))

(assert (=> start!21500 e!140250))

(declare-fun e!140252 () Bool)

(assert (=> start!21500 e!140252))

(assert (=> start!21500 true))

(declare-fun b!215569 () Bool)

(declare-fun e!140251 () Bool)

(assert (=> b!215569 (= e!140250 e!140251)))

(declare-fun res!105453 () Bool)

(assert (=> b!215569 (=> (not res!105453) (not e!140251))))

(declare-datatypes ((SeekEntryResult!743 0))(
  ( (MissingZero!743 (index!5142 (_ BitVec 32))) (Found!743 (index!5143 (_ BitVec 32))) (Intermediate!743 (undefined!1555 Bool) (index!5144 (_ BitVec 32)) (x!22541 (_ BitVec 32))) (Undefined!743) (MissingVacant!743 (index!5145 (_ BitVec 32))) )
))
(declare-fun lt!111013 () SeekEntryResult!743)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215569 (= res!105453 (or (= lt!111013 (MissingZero!743 index!297)) (= lt!111013 (MissingVacant!743 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10404 (_ BitVec 32)) SeekEntryResult!743)

(assert (=> b!215569 (= lt!111013 (seekEntryOrOpen!0 key!932 (_keys!6085 thiss!1504) (mask!9756 thiss!1504)))))

(declare-fun e!140249 () Bool)

(declare-fun array_inv!3251 (array!10404) Bool)

(declare-fun array_inv!3252 (array!10402) Bool)

(assert (=> b!215570 (= e!140252 (and tp!20293 tp_is_empty!5587 (array_inv!3251 (_keys!6085 thiss!1504)) (array_inv!3252 (_values!4033 thiss!1504)) e!140249))))

(declare-fun b!215571 () Bool)

(assert (=> b!215571 (= e!140251 (and (= (size!5257 (_values!4033 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9756 thiss!1504))) (= (size!5258 (_keys!6085 thiss!1504)) (size!5257 (_values!4033 thiss!1504))) (bvsge (mask!9756 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3787 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215572 () Bool)

(declare-fun res!105451 () Bool)

(assert (=> b!215572 (=> (not res!105451) (not e!140250))))

(assert (=> b!215572 (= res!105451 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!215573 () Bool)

(declare-fun res!105452 () Bool)

(assert (=> b!215573 (=> (not res!105452) (not e!140251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215573 (= res!105452 (validMask!0 (mask!9756 thiss!1504)))))

(declare-fun b!215574 () Bool)

(assert (=> b!215574 (= e!140249 (and e!140254 mapRes!9526))))

(declare-fun condMapEmpty!9526 () Bool)

(declare-fun mapDefault!9526 () ValueCell!2450)

