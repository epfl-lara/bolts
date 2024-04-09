; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19408 () Bool)

(assert start!19408)

(declare-fun b!190605 () Bool)

(declare-fun b_free!4669 () Bool)

(declare-fun b_next!4669 () Bool)

(assert (=> b!190605 (= b_free!4669 (not b_next!4669))))

(declare-fun tp!16850 () Bool)

(declare-fun b_and!11345 () Bool)

(assert (=> b!190605 (= tp!16850 b_and!11345)))

(declare-fun b!190601 () Bool)

(declare-datatypes ((Unit!5758 0))(
  ( (Unit!5759) )
))
(declare-fun e!125445 () Unit!5758)

(declare-fun Unit!5760 () Unit!5758)

(assert (=> b!190601 (= e!125445 Unit!5760)))

(declare-fun lt!94557 () Unit!5758)

(declare-datatypes ((V!5569 0))(
  ( (V!5570 (val!2265 Int)) )
))
(declare-datatypes ((ValueCell!1877 0))(
  ( (ValueCellFull!1877 (v!4193 V!5569)) (EmptyCell!1877) )
))
(declare-datatypes ((array!8116 0))(
  ( (array!8117 (arr!3824 (Array (_ BitVec 32) (_ BitVec 64))) (size!4145 (_ BitVec 32))) )
))
(declare-datatypes ((array!8118 0))(
  ( (array!8119 (arr!3825 (Array (_ BitVec 32) ValueCell!1877)) (size!4146 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2662 0))(
  ( (LongMapFixedSize!2663 (defaultEntry!3891 Int) (mask!9098 (_ BitVec 32)) (extraKeys!3628 (_ BitVec 32)) (zeroValue!3732 V!5569) (minValue!3732 V!5569) (_size!1380 (_ BitVec 32)) (_keys!5864 array!8116) (_values!3874 array!8118) (_vacant!1380 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2662)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!174 (array!8116 array!8118 (_ BitVec 32) (_ BitVec 32) V!5569 V!5569 (_ BitVec 64) Int) Unit!5758)

(assert (=> b!190601 (= lt!94557 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!174 (_keys!5864 thiss!1248) (_values!3874 thiss!1248) (mask!9098 thiss!1248) (extraKeys!3628 thiss!1248) (zeroValue!3732 thiss!1248) (minValue!3732 thiss!1248) key!828 (defaultEntry!3891 thiss!1248)))))

(assert (=> b!190601 false))

(declare-fun b!190602 () Bool)

(declare-fun e!125441 () Bool)

(declare-fun tp_is_empty!4441 () Bool)

(assert (=> b!190602 (= e!125441 tp_is_empty!4441)))

(declare-fun b!190603 () Bool)

(declare-fun e!125440 () Bool)

(assert (=> b!190603 (= e!125440 tp_is_empty!4441)))

(declare-fun b!190604 () Bool)

(declare-fun res!90118 () Bool)

(declare-fun e!125439 () Bool)

(assert (=> b!190604 (=> (not res!90118) (not e!125439))))

(assert (=> b!190604 (= res!90118 (not (= key!828 (bvneg key!828))))))

(declare-fun e!125438 () Bool)

(declare-fun e!125443 () Bool)

(declare-fun array_inv!2471 (array!8116) Bool)

(declare-fun array_inv!2472 (array!8118) Bool)

(assert (=> b!190605 (= e!125438 (and tp!16850 tp_is_empty!4441 (array_inv!2471 (_keys!5864 thiss!1248)) (array_inv!2472 (_values!3874 thiss!1248)) e!125443))))

(declare-fun mapIsEmpty!7667 () Bool)

(declare-fun mapRes!7667 () Bool)

(assert (=> mapIsEmpty!7667 mapRes!7667))

(declare-fun res!90116 () Bool)

(assert (=> start!19408 (=> (not res!90116) (not e!125439))))

(declare-fun valid!1085 (LongMapFixedSize!2662) Bool)

(assert (=> start!19408 (= res!90116 (valid!1085 thiss!1248))))

(assert (=> start!19408 e!125439))

(assert (=> start!19408 e!125438))

(assert (=> start!19408 true))

(assert (=> start!19408 tp_is_empty!4441))

(declare-fun mapNonEmpty!7667 () Bool)

(declare-fun tp!16849 () Bool)

(assert (=> mapNonEmpty!7667 (= mapRes!7667 (and tp!16849 e!125441))))

(declare-fun mapRest!7667 () (Array (_ BitVec 32) ValueCell!1877))

(declare-fun mapValue!7667 () ValueCell!1877)

(declare-fun mapKey!7667 () (_ BitVec 32))

(assert (=> mapNonEmpty!7667 (= (arr!3825 (_values!3874 thiss!1248)) (store mapRest!7667 mapKey!7667 mapValue!7667))))

(declare-fun b!190606 () Bool)

(assert (=> b!190606 (= e!125443 (and e!125440 mapRes!7667))))

(declare-fun condMapEmpty!7667 () Bool)

(declare-fun mapDefault!7667 () ValueCell!1877)

