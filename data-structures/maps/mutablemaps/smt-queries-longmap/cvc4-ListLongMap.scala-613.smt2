; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15978 () Bool)

(assert start!15978)

(declare-fun b!158589 () Bool)

(declare-fun b_free!3491 () Bool)

(declare-fun b_next!3491 () Bool)

(assert (=> b!158589 (= b_free!3491 (not b_next!3491))))

(declare-fun tp!13030 () Bool)

(declare-fun b_and!9923 () Bool)

(assert (=> b!158589 (= tp!13030 b_and!9923)))

(declare-fun b!158583 () Bool)

(declare-fun res!74905 () Bool)

(declare-fun e!103870 () Bool)

(assert (=> b!158583 (=> (not res!74905) (not e!103870))))

(declare-datatypes ((V!4037 0))(
  ( (V!4038 (val!1691 Int)) )
))
(declare-datatypes ((ValueCell!1303 0))(
  ( (ValueCellFull!1303 (v!3552 V!4037)) (EmptyCell!1303) )
))
(declare-datatypes ((array!5656 0))(
  ( (array!5657 (arr!2676 (Array (_ BitVec 32) (_ BitVec 64))) (size!2959 (_ BitVec 32))) )
))
(declare-datatypes ((array!5658 0))(
  ( (array!5659 (arr!2677 (Array (_ BitVec 32) ValueCell!1303)) (size!2960 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1514 0))(
  ( (LongMapFixedSize!1515 (defaultEntry!3199 Int) (mask!7722 (_ BitVec 32)) (extraKeys!2940 (_ BitVec 32)) (zeroValue!3042 V!4037) (minValue!3042 V!4037) (_size!806 (_ BitVec 32)) (_keys!4990 array!5656) (_values!3182 array!5658) (_vacant!806 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1514)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158583 (= res!74905 (validMask!0 (mask!7722 thiss!1248)))))

(declare-fun b!158584 () Bool)

(assert (=> b!158584 (= e!103870 (and (= (size!2960 (_values!3182 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7722 thiss!1248))) (= (size!2959 (_keys!4990 thiss!1248)) (size!2960 (_values!3182 thiss!1248))) (bvsge (mask!7722 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2940 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!2940 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!74904 () Bool)

(assert (=> start!15978 (=> (not res!74904) (not e!103870))))

(declare-fun valid!710 (LongMapFixedSize!1514) Bool)

(assert (=> start!15978 (= res!74904 (valid!710 thiss!1248))))

(assert (=> start!15978 e!103870))

(declare-fun e!103869 () Bool)

(assert (=> start!15978 e!103869))

(assert (=> start!15978 true))

(declare-fun b!158585 () Bool)

(declare-fun e!103867 () Bool)

(declare-fun tp_is_empty!3293 () Bool)

(assert (=> b!158585 (= e!103867 tp_is_empty!3293)))

(declare-fun mapNonEmpty!5614 () Bool)

(declare-fun mapRes!5614 () Bool)

(declare-fun tp!13029 () Bool)

(assert (=> mapNonEmpty!5614 (= mapRes!5614 (and tp!13029 e!103867))))

(declare-fun mapKey!5614 () (_ BitVec 32))

(declare-fun mapRest!5614 () (Array (_ BitVec 32) ValueCell!1303))

(declare-fun mapValue!5614 () ValueCell!1303)

(assert (=> mapNonEmpty!5614 (= (arr!2677 (_values!3182 thiss!1248)) (store mapRest!5614 mapKey!5614 mapValue!5614))))

(declare-fun b!158586 () Bool)

(declare-fun e!103868 () Bool)

(assert (=> b!158586 (= e!103868 tp_is_empty!3293)))

(declare-fun b!158587 () Bool)

(declare-fun res!74903 () Bool)

(assert (=> b!158587 (=> (not res!74903) (not e!103870))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!312 0))(
  ( (MissingZero!312 (index!3416 (_ BitVec 32))) (Found!312 (index!3417 (_ BitVec 32))) (Intermediate!312 (undefined!1124 Bool) (index!3418 (_ BitVec 32)) (x!17519 (_ BitVec 32))) (Undefined!312) (MissingVacant!312 (index!3419 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5656 (_ BitVec 32)) SeekEntryResult!312)

(assert (=> b!158587 (= res!74903 (is-Undefined!312 (seekEntryOrOpen!0 key!828 (_keys!4990 thiss!1248) (mask!7722 thiss!1248))))))

(declare-fun mapIsEmpty!5614 () Bool)

(assert (=> mapIsEmpty!5614 mapRes!5614))

(declare-fun b!158588 () Bool)

(declare-fun res!74902 () Bool)

(assert (=> b!158588 (=> (not res!74902) (not e!103870))))

(assert (=> b!158588 (= res!74902 (not (= key!828 (bvneg key!828))))))

(declare-fun e!103872 () Bool)

(declare-fun array_inv!1695 (array!5656) Bool)

(declare-fun array_inv!1696 (array!5658) Bool)

(assert (=> b!158589 (= e!103869 (and tp!13030 tp_is_empty!3293 (array_inv!1695 (_keys!4990 thiss!1248)) (array_inv!1696 (_values!3182 thiss!1248)) e!103872))))

(declare-fun b!158590 () Bool)

(assert (=> b!158590 (= e!103872 (and e!103868 mapRes!5614))))

(declare-fun condMapEmpty!5614 () Bool)

(declare-fun mapDefault!5614 () ValueCell!1303)

