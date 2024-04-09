; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21348 () Bool)

(assert start!21348)

(declare-fun b!214577 () Bool)

(declare-fun b_free!5687 () Bool)

(declare-fun b_next!5687 () Bool)

(assert (=> b!214577 (= b_free!5687 (not b_next!5687))))

(declare-fun tp!20155 () Bool)

(declare-fun b_and!12595 () Bool)

(assert (=> b!214577 (= tp!20155 b_and!12595)))

(declare-fun res!105050 () Bool)

(declare-fun e!139575 () Bool)

(assert (=> start!21348 (=> (not res!105050) (not e!139575))))

(declare-datatypes ((V!7045 0))(
  ( (V!7046 (val!2819 Int)) )
))
(declare-datatypes ((ValueCell!2431 0))(
  ( (ValueCellFull!2431 (v!4833 V!7045)) (EmptyCell!2431) )
))
(declare-datatypes ((array!10312 0))(
  ( (array!10313 (arr!4889 (Array (_ BitVec 32) ValueCell!2431)) (size!5216 (_ BitVec 32))) )
))
(declare-datatypes ((array!10314 0))(
  ( (array!10315 (arr!4890 (Array (_ BitVec 32) (_ BitVec 64))) (size!5217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2762 0))(
  ( (LongMapFixedSize!2763 (defaultEntry!4031 Int) (mask!9697 (_ BitVec 32)) (extraKeys!3768 (_ BitVec 32)) (zeroValue!3872 V!7045) (minValue!3872 V!7045) (_size!1430 (_ BitVec 32)) (_keys!6050 array!10314) (_values!4014 array!10312) (_vacant!1430 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2762)

(declare-fun valid!1122 (LongMapFixedSize!2762) Bool)

(assert (=> start!21348 (= res!105050 (valid!1122 thiss!1504))))

(assert (=> start!21348 e!139575))

(declare-fun e!139578 () Bool)

(assert (=> start!21348 e!139578))

(assert (=> start!21348 true))

(declare-fun mapIsEmpty!9445 () Bool)

(declare-fun mapRes!9445 () Bool)

(assert (=> mapIsEmpty!9445 mapRes!9445))

(declare-fun mapNonEmpty!9445 () Bool)

(declare-fun tp!20154 () Bool)

(declare-fun e!139577 () Bool)

(assert (=> mapNonEmpty!9445 (= mapRes!9445 (and tp!20154 e!139577))))

(declare-fun mapKey!9445 () (_ BitVec 32))

(declare-fun mapValue!9445 () ValueCell!2431)

(declare-fun mapRest!9445 () (Array (_ BitVec 32) ValueCell!2431))

(assert (=> mapNonEmpty!9445 (= (arr!4889 (_values!4014 thiss!1504)) (store mapRest!9445 mapKey!9445 mapValue!9445))))

(declare-fun b!214573 () Bool)

(declare-fun res!105051 () Bool)

(assert (=> b!214573 (=> (not res!105051) (not e!139575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214573 (= res!105051 (validMask!0 (mask!9697 thiss!1504)))))

(declare-fun b!214574 () Bool)

(assert (=> b!214574 (= e!139575 (bvslt (mask!9697 thiss!1504) #b00000000000000000000000000000000))))

(declare-fun b!214575 () Bool)

(declare-fun e!139580 () Bool)

(declare-fun tp_is_empty!5549 () Bool)

(assert (=> b!214575 (= e!139580 tp_is_empty!5549)))

(declare-fun b!214576 () Bool)

(declare-fun res!105052 () Bool)

(assert (=> b!214576 (=> (not res!105052) (not e!139575))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!731 0))(
  ( (MissingZero!731 (index!5094 (_ BitVec 32))) (Found!731 (index!5095 (_ BitVec 32))) (Intermediate!731 (undefined!1543 Bool) (index!5096 (_ BitVec 32)) (x!22390 (_ BitVec 32))) (Undefined!731) (MissingVacant!731 (index!5097 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10314 (_ BitVec 32)) SeekEntryResult!731)

(assert (=> b!214576 (= res!105052 (not (= (seekEntryOrOpen!0 key!932 (_keys!6050 thiss!1504) (mask!9697 thiss!1504)) (MissingZero!731 index!297))))))

(declare-fun e!139579 () Bool)

(declare-fun array_inv!3225 (array!10314) Bool)

(declare-fun array_inv!3226 (array!10312) Bool)

(assert (=> b!214577 (= e!139578 (and tp!20155 tp_is_empty!5549 (array_inv!3225 (_keys!6050 thiss!1504)) (array_inv!3226 (_values!4014 thiss!1504)) e!139579))))

(declare-fun b!214578 () Bool)

(assert (=> b!214578 (= e!139579 (and e!139580 mapRes!9445))))

(declare-fun condMapEmpty!9445 () Bool)

(declare-fun mapDefault!9445 () ValueCell!2431)

