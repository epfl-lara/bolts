; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89804 () Bool)

(assert start!89804)

(declare-fun b!1028808 () Bool)

(declare-fun b_free!20587 () Bool)

(declare-fun b_next!20587 () Bool)

(assert (=> b!1028808 (= b_free!20587 (not b_next!20587))))

(declare-fun tp!72818 () Bool)

(declare-fun b_and!32911 () Bool)

(assert (=> b!1028808 (= tp!72818 b_and!32911)))

(declare-fun b!1028806 () Bool)

(declare-fun e!580819 () Bool)

(declare-fun e!580818 () Bool)

(assert (=> b!1028806 (= e!580819 e!580818)))

(declare-fun res!688398 () Bool)

(assert (=> b!1028806 (=> (not res!688398) (not e!580818))))

(declare-datatypes ((SeekEntryResult!9667 0))(
  ( (MissingZero!9667 (index!41038 (_ BitVec 32))) (Found!9667 (index!41039 (_ BitVec 32))) (Intermediate!9667 (undefined!10479 Bool) (index!41040 (_ BitVec 32)) (x!91534 (_ BitVec 32))) (Undefined!9667) (MissingVacant!9667 (index!41041 (_ BitVec 32))) )
))
(declare-fun lt!453319 () SeekEntryResult!9667)

(assert (=> b!1028806 (= res!688398 (is-Found!9667 lt!453319))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37283 0))(
  ( (V!37284 (val!12204 Int)) )
))
(declare-datatypes ((ValueCell!11450 0))(
  ( (ValueCellFull!11450 (v!14778 V!37283)) (EmptyCell!11450) )
))
(declare-datatypes ((array!64654 0))(
  ( (array!64655 (arr!31129 (Array (_ BitVec 32) (_ BitVec 64))) (size!31645 (_ BitVec 32))) )
))
(declare-datatypes ((array!64656 0))(
  ( (array!64657 (arr!31130 (Array (_ BitVec 32) ValueCell!11450)) (size!31646 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5494 0))(
  ( (LongMapFixedSize!5495 (defaultEntry!6109 Int) (mask!29850 (_ BitVec 32)) (extraKeys!5841 (_ BitVec 32)) (zeroValue!5945 V!37283) (minValue!5945 V!37283) (_size!2802 (_ BitVec 32)) (_keys!11265 array!64654) (_values!6132 array!64656) (_vacant!2802 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5494)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64654 (_ BitVec 32)) SeekEntryResult!9667)

(assert (=> b!1028806 (= lt!453319 (seekEntry!0 key!909 (_keys!11265 thiss!1427) (mask!29850 thiss!1427)))))

(declare-fun mapIsEmpty!37900 () Bool)

(declare-fun mapRes!37900 () Bool)

(assert (=> mapIsEmpty!37900 mapRes!37900))

(declare-fun b!1028807 () Bool)

(declare-fun e!580815 () Bool)

(declare-fun tp_is_empty!24307 () Bool)

(assert (=> b!1028807 (= e!580815 tp_is_empty!24307)))

(declare-fun res!688400 () Bool)

(assert (=> start!89804 (=> (not res!688400) (not e!580819))))

(declare-fun valid!2034 (LongMapFixedSize!5494) Bool)

(assert (=> start!89804 (= res!688400 (valid!2034 thiss!1427))))

(assert (=> start!89804 e!580819))

(declare-fun e!580816 () Bool)

(assert (=> start!89804 e!580816))

(assert (=> start!89804 true))

(declare-fun e!580820 () Bool)

(declare-fun array_inv!23947 (array!64654) Bool)

(declare-fun array_inv!23948 (array!64656) Bool)

(assert (=> b!1028808 (= e!580816 (and tp!72818 tp_is_empty!24307 (array_inv!23947 (_keys!11265 thiss!1427)) (array_inv!23948 (_values!6132 thiss!1427)) e!580820))))

(declare-fun b!1028809 () Bool)

(declare-fun e!580817 () Bool)

(declare-datatypes ((Unit!33554 0))(
  ( (Unit!33555) )
))
(declare-datatypes ((tuple2!15634 0))(
  ( (tuple2!15635 (_1!7827 Unit!33554) (_2!7827 LongMapFixedSize!5494)) )
))
(declare-fun lt!453316 () tuple2!15634)

(assert (=> b!1028809 (= e!580817 (or (not (= (size!31646 (_values!6132 (_2!7827 lt!453316))) (bvadd #b00000000000000000000000000000001 (mask!29850 (_2!7827 lt!453316))))) (not (= (size!31645 (_keys!11265 (_2!7827 lt!453316))) (size!31646 (_values!6132 (_2!7827 lt!453316))))) (bvsge (mask!29850 (_2!7827 lt!453316)) #b00000000000000000000000000000000)))))

(declare-fun b!1028810 () Bool)

(declare-fun e!580821 () Bool)

(assert (=> b!1028810 (= e!580820 (and e!580821 mapRes!37900))))

(declare-fun condMapEmpty!37900 () Bool)

(declare-fun mapDefault!37900 () ValueCell!11450)

