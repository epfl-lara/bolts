; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15868 () Bool)

(assert start!15868)

(declare-fun b!157817 () Bool)

(declare-fun b_free!3463 () Bool)

(declare-fun b_next!3463 () Bool)

(assert (=> b!157817 (= b_free!3463 (not b_next!3463))))

(declare-fun tp!12931 () Bool)

(declare-fun b_and!9895 () Bool)

(assert (=> b!157817 (= tp!12931 b_and!9895)))

(declare-fun mapIsEmpty!5557 () Bool)

(declare-fun mapRes!5557 () Bool)

(assert (=> mapIsEmpty!5557 mapRes!5557))

(declare-fun b!157813 () Bool)

(declare-fun res!74587 () Bool)

(declare-fun e!103375 () Bool)

(assert (=> b!157813 (=> (not res!74587) (not e!103375))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157813 (= res!74587 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157814 () Bool)

(declare-fun e!103376 () Bool)

(declare-fun tp_is_empty!3265 () Bool)

(assert (=> b!157814 (= e!103376 tp_is_empty!3265)))

(declare-fun b!157815 () Bool)

(declare-fun res!74590 () Bool)

(assert (=> b!157815 (=> (not res!74590) (not e!103375))))

(declare-datatypes ((V!4001 0))(
  ( (V!4002 (val!1677 Int)) )
))
(declare-datatypes ((ValueCell!1289 0))(
  ( (ValueCellFull!1289 (v!3538 V!4001)) (EmptyCell!1289) )
))
(declare-datatypes ((array!5592 0))(
  ( (array!5593 (arr!2648 (Array (_ BitVec 32) (_ BitVec 64))) (size!2928 (_ BitVec 32))) )
))
(declare-datatypes ((array!5594 0))(
  ( (array!5595 (arr!2649 (Array (_ BitVec 32) ValueCell!1289)) (size!2929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1486 0))(
  ( (LongMapFixedSize!1487 (defaultEntry!3185 Int) (mask!7680 (_ BitVec 32)) (extraKeys!2926 (_ BitVec 32)) (zeroValue!3028 V!4001) (minValue!3028 V!4001) (_size!792 (_ BitVec 32)) (_keys!4963 array!5592) (_values!3168 array!5594) (_vacant!792 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1486)

(declare-datatypes ((SeekEntryResult!302 0))(
  ( (MissingZero!302 (index!3376 (_ BitVec 32))) (Found!302 (index!3377 (_ BitVec 32))) (Intermediate!302 (undefined!1114 Bool) (index!3378 (_ BitVec 32)) (x!17418 (_ BitVec 32))) (Undefined!302) (MissingVacant!302 (index!3379 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5592 (_ BitVec 32)) SeekEntryResult!302)

(assert (=> b!157815 (= res!74590 (is-Undefined!302 (seekEntryOrOpen!0 key!828 (_keys!4963 thiss!1248) (mask!7680 thiss!1248))))))

(declare-fun b!157816 () Bool)

(declare-fun e!103379 () Bool)

(assert (=> b!157816 (= e!103379 tp_is_empty!3265)))

(declare-fun e!103380 () Bool)

(declare-fun e!103378 () Bool)

(declare-fun array_inv!1675 (array!5592) Bool)

(declare-fun array_inv!1676 (array!5594) Bool)

(assert (=> b!157817 (= e!103380 (and tp!12931 tp_is_empty!3265 (array_inv!1675 (_keys!4963 thiss!1248)) (array_inv!1676 (_values!3168 thiss!1248)) e!103378))))

(declare-fun b!157818 () Bool)

(assert (=> b!157818 (= e!103378 (and e!103379 mapRes!5557))))

(declare-fun condMapEmpty!5557 () Bool)

(declare-fun mapDefault!5557 () ValueCell!1289)

