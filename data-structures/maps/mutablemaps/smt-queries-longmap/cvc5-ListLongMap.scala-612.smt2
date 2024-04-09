; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15944 () Bool)

(assert start!15944)

(declare-fun b!158330 () Bool)

(declare-fun b_free!3481 () Bool)

(declare-fun b_next!3481 () Bool)

(assert (=> b!158330 (= b_free!3481 (not b_next!3481))))

(declare-fun tp!12996 () Bool)

(declare-fun b_and!9913 () Bool)

(assert (=> b!158330 (= tp!12996 b_and!9913)))

(declare-fun res!74799 () Bool)

(declare-fun e!103704 () Bool)

(assert (=> start!15944 (=> (not res!74799) (not e!103704))))

(declare-datatypes ((V!4025 0))(
  ( (V!4026 (val!1686 Int)) )
))
(declare-datatypes ((ValueCell!1298 0))(
  ( (ValueCellFull!1298 (v!3547 V!4025)) (EmptyCell!1298) )
))
(declare-datatypes ((array!5634 0))(
  ( (array!5635 (arr!2666 (Array (_ BitVec 32) (_ BitVec 64))) (size!2948 (_ BitVec 32))) )
))
(declare-datatypes ((array!5636 0))(
  ( (array!5637 (arr!2667 (Array (_ BitVec 32) ValueCell!1298)) (size!2949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1504 0))(
  ( (LongMapFixedSize!1505 (defaultEntry!3194 Int) (mask!7709 (_ BitVec 32)) (extraKeys!2935 (_ BitVec 32)) (zeroValue!3037 V!4025) (minValue!3037 V!4025) (_size!801 (_ BitVec 32)) (_keys!4981 array!5634) (_values!3177 array!5636) (_vacant!801 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1504)

(declare-fun valid!706 (LongMapFixedSize!1504) Bool)

(assert (=> start!15944 (= res!74799 (valid!706 thiss!1248))))

(assert (=> start!15944 e!103704))

(declare-fun e!103708 () Bool)

(assert (=> start!15944 e!103708))

(assert (=> start!15944 true))

(declare-fun tp_is_empty!3283 () Bool)

(declare-fun e!103705 () Bool)

(declare-fun array_inv!1687 (array!5634) Bool)

(declare-fun array_inv!1688 (array!5636) Bool)

(assert (=> b!158330 (= e!103708 (and tp!12996 tp_is_empty!3283 (array_inv!1687 (_keys!4981 thiss!1248)) (array_inv!1688 (_values!3177 thiss!1248)) e!103705))))

(declare-fun b!158331 () Bool)

(assert (=> b!158331 (= e!103704 (and (= (size!2949 (_values!3177 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7709 thiss!1248))) (= (size!2948 (_keys!4981 thiss!1248)) (size!2949 (_values!3177 thiss!1248))) (bvsge (mask!7709 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!2935 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!158332 () Bool)

(declare-fun e!103706 () Bool)

(assert (=> b!158332 (= e!103706 tp_is_empty!3283)))

(declare-fun b!158333 () Bool)

(declare-fun res!74797 () Bool)

(assert (=> b!158333 (=> (not res!74797) (not e!103704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158333 (= res!74797 (validMask!0 (mask!7709 thiss!1248)))))

(declare-fun b!158334 () Bool)

(declare-fun e!103703 () Bool)

(assert (=> b!158334 (= e!103703 tp_is_empty!3283)))

(declare-fun b!158335 () Bool)

(declare-fun res!74796 () Bool)

(assert (=> b!158335 (=> (not res!74796) (not e!103704))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!308 0))(
  ( (MissingZero!308 (index!3400 (_ BitVec 32))) (Found!308 (index!3401 (_ BitVec 32))) (Intermediate!308 (undefined!1120 Bool) (index!3402 (_ BitVec 32)) (x!17490 (_ BitVec 32))) (Undefined!308) (MissingVacant!308 (index!3403 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5634 (_ BitVec 32)) SeekEntryResult!308)

(assert (=> b!158335 (= res!74796 (is-Undefined!308 (seekEntryOrOpen!0 key!828 (_keys!4981 thiss!1248) (mask!7709 thiss!1248))))))

(declare-fun mapNonEmpty!5595 () Bool)

(declare-fun mapRes!5595 () Bool)

(declare-fun tp!12995 () Bool)

(assert (=> mapNonEmpty!5595 (= mapRes!5595 (and tp!12995 e!103703))))

(declare-fun mapKey!5595 () (_ BitVec 32))

(declare-fun mapValue!5595 () ValueCell!1298)

(declare-fun mapRest!5595 () (Array (_ BitVec 32) ValueCell!1298))

(assert (=> mapNonEmpty!5595 (= (arr!2667 (_values!3177 thiss!1248)) (store mapRest!5595 mapKey!5595 mapValue!5595))))

(declare-fun b!158336 () Bool)

(declare-fun res!74798 () Bool)

(assert (=> b!158336 (=> (not res!74798) (not e!103704))))

(assert (=> b!158336 (= res!74798 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158337 () Bool)

(assert (=> b!158337 (= e!103705 (and e!103706 mapRes!5595))))

(declare-fun condMapEmpty!5595 () Bool)

(declare-fun mapDefault!5595 () ValueCell!1298)

