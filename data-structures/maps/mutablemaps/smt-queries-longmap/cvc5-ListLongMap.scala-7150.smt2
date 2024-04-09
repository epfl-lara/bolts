; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90944 () Bool)

(assert start!90944)

(declare-fun b!1038756 () Bool)

(declare-fun b_free!20953 () Bool)

(declare-fun b_next!20953 () Bool)

(assert (=> b!1038756 (= b_free!20953 (not b_next!20953))))

(declare-fun tp!74028 () Bool)

(declare-fun b_and!33503 () Bool)

(assert (=> b!1038756 (= tp!74028 b_and!33503)))

(declare-fun e!587846 () Bool)

(declare-fun tp_is_empty!24673 () Bool)

(declare-datatypes ((V!37771 0))(
  ( (V!37772 (val!12387 Int)) )
))
(declare-datatypes ((ValueCell!11633 0))(
  ( (ValueCellFull!11633 (v!14975 V!37771)) (EmptyCell!11633) )
))
(declare-datatypes ((array!65448 0))(
  ( (array!65449 (arr!31495 (Array (_ BitVec 32) (_ BitVec 64))) (size!32027 (_ BitVec 32))) )
))
(declare-datatypes ((array!65450 0))(
  ( (array!65451 (arr!31496 (Array (_ BitVec 32) ValueCell!11633)) (size!32028 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5860 0))(
  ( (LongMapFixedSize!5861 (defaultEntry!6312 Int) (mask!30257 (_ BitVec 32)) (extraKeys!6040 (_ BitVec 32)) (zeroValue!6146 V!37771) (minValue!6146 V!37771) (_size!2985 (_ BitVec 32)) (_keys!11515 array!65448) (_values!6335 array!65450) (_vacant!2985 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5860)

(declare-fun e!587843 () Bool)

(declare-fun array_inv!24191 (array!65448) Bool)

(declare-fun array_inv!24192 (array!65450) Bool)

(assert (=> b!1038756 (= e!587846 (and tp!74028 tp_is_empty!24673 (array_inv!24191 (_keys!11515 thiss!1427)) (array_inv!24192 (_values!6335 thiss!1427)) e!587843))))

(declare-fun b!1038757 () Bool)

(declare-fun e!587847 () Bool)

(declare-datatypes ((SeekEntryResult!9773 0))(
  ( (MissingZero!9773 (index!41462 (_ BitVec 32))) (Found!9773 (index!41463 (_ BitVec 32))) (Intermediate!9773 (undefined!10585 Bool) (index!41464 (_ BitVec 32)) (x!92696 (_ BitVec 32))) (Undefined!9773) (MissingVacant!9773 (index!41465 (_ BitVec 32))) )
))
(declare-fun lt!457849 () SeekEntryResult!9773)

(assert (=> b!1038757 (= e!587847 (or (not (= (size!32027 (_keys!11515 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30257 thiss!1427)))) (bvsge (index!41463 lt!457849) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38560 () Bool)

(declare-fun mapRes!38560 () Bool)

(assert (=> mapIsEmpty!38560 mapRes!38560))

(declare-fun res!692947 () Bool)

(declare-fun e!587848 () Bool)

(assert (=> start!90944 (=> (not res!692947) (not e!587848))))

(declare-fun valid!2158 (LongMapFixedSize!5860) Bool)

(assert (=> start!90944 (= res!692947 (valid!2158 thiss!1427))))

(assert (=> start!90944 e!587848))

(assert (=> start!90944 e!587846))

(assert (=> start!90944 true))

(declare-fun b!1038758 () Bool)

(declare-fun res!692946 () Bool)

(assert (=> b!1038758 (=> (not res!692946) (not e!587848))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038758 (= res!692946 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038759 () Bool)

(declare-fun e!587845 () Bool)

(assert (=> b!1038759 (= e!587845 tp_is_empty!24673)))

(declare-fun b!1038760 () Bool)

(declare-fun e!587844 () Bool)

(assert (=> b!1038760 (= e!587848 e!587844)))

(declare-fun res!692948 () Bool)

(assert (=> b!1038760 (=> (not res!692948) (not e!587844))))

(assert (=> b!1038760 (= res!692948 (is-Found!9773 lt!457849))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65448 (_ BitVec 32)) SeekEntryResult!9773)

(assert (=> b!1038760 (= lt!457849 (seekEntry!0 key!909 (_keys!11515 thiss!1427) (mask!30257 thiss!1427)))))

(declare-fun mapNonEmpty!38560 () Bool)

(declare-fun tp!74027 () Bool)

(assert (=> mapNonEmpty!38560 (= mapRes!38560 (and tp!74027 e!587845))))

(declare-fun mapRest!38560 () (Array (_ BitVec 32) ValueCell!11633))

(declare-fun mapKey!38560 () (_ BitVec 32))

(declare-fun mapValue!38560 () ValueCell!11633)

(assert (=> mapNonEmpty!38560 (= (arr!31496 (_values!6335 thiss!1427)) (store mapRest!38560 mapKey!38560 mapValue!38560))))

(declare-fun b!1038761 () Bool)

(declare-fun e!587849 () Bool)

(assert (=> b!1038761 (= e!587843 (and e!587849 mapRes!38560))))

(declare-fun condMapEmpty!38560 () Bool)

(declare-fun mapDefault!38560 () ValueCell!11633)

