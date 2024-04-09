; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89430 () Bool)

(assert start!89430)

(declare-fun b!1024811 () Bool)

(declare-fun b_free!20393 () Bool)

(declare-fun b_next!20393 () Bool)

(assert (=> b!1024811 (= b_free!20393 (not b_next!20393))))

(declare-fun tp!72225 () Bool)

(declare-fun b_and!32657 () Bool)

(assert (=> b!1024811 (= tp!72225 b_and!32657)))

(declare-fun b!1024805 () Bool)

(declare-fun e!577777 () Bool)

(assert (=> b!1024805 (= e!577777 true)))

(declare-fun lt!450707 () Bool)

(declare-datatypes ((V!37023 0))(
  ( (V!37024 (val!12107 Int)) )
))
(declare-datatypes ((ValueCell!11353 0))(
  ( (ValueCellFull!11353 (v!14677 V!37023)) (EmptyCell!11353) )
))
(declare-datatypes ((array!64260 0))(
  ( (array!64261 (arr!30935 (Array (_ BitVec 32) (_ BitVec 64))) (size!31449 (_ BitVec 32))) )
))
(declare-datatypes ((array!64262 0))(
  ( (array!64263 (arr!30936 (Array (_ BitVec 32) ValueCell!11353)) (size!31450 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5300 0))(
  ( (LongMapFixedSize!5301 (defaultEntry!6002 Int) (mask!29655 (_ BitVec 32)) (extraKeys!5734 (_ BitVec 32)) (zeroValue!5838 V!37023) (minValue!5838 V!37023) (_size!2705 (_ BitVec 32)) (_keys!11146 array!64260) (_values!6025 array!64262) (_vacant!2705 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5300)

(declare-datatypes ((List!21844 0))(
  ( (Nil!21841) (Cons!21840 (h!23038 (_ BitVec 64)) (t!30913 List!21844)) )
))
(declare-fun arrayNoDuplicates!0 (array!64260 (_ BitVec 32) List!21844) Bool)

(assert (=> b!1024805 (= lt!450707 (arrayNoDuplicates!0 (_keys!11146 thiss!1427) #b00000000000000000000000000000000 Nil!21841))))

(declare-fun mapNonEmpty!37598 () Bool)

(declare-fun mapRes!37598 () Bool)

(declare-fun tp!72226 () Bool)

(declare-fun e!577779 () Bool)

(assert (=> mapNonEmpty!37598 (= mapRes!37598 (and tp!72226 e!577779))))

(declare-fun mapRest!37598 () (Array (_ BitVec 32) ValueCell!11353))

(declare-fun mapValue!37598 () ValueCell!11353)

(declare-fun mapKey!37598 () (_ BitVec 32))

(assert (=> mapNonEmpty!37598 (= (arr!30936 (_values!6025 thiss!1427)) (store mapRest!37598 mapKey!37598 mapValue!37598))))

(declare-fun b!1024806 () Bool)

(declare-fun res!686218 () Bool)

(declare-fun e!577783 () Bool)

(assert (=> b!1024806 (=> (not res!686218) (not e!577783))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024806 (= res!686218 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024807 () Bool)

(declare-fun res!686223 () Bool)

(assert (=> b!1024807 (=> res!686223 e!577777)))

(declare-fun contains!5972 (List!21844 (_ BitVec 64)) Bool)

(assert (=> b!1024807 (= res!686223 (contains!5972 Nil!21841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024808 () Bool)

(declare-fun e!577784 () Bool)

(assert (=> b!1024808 (= e!577783 e!577784)))

(declare-fun res!686221 () Bool)

(assert (=> b!1024808 (=> (not res!686221) (not e!577784))))

(declare-datatypes ((SeekEntryResult!9594 0))(
  ( (MissingZero!9594 (index!40746 (_ BitVec 32))) (Found!9594 (index!40747 (_ BitVec 32))) (Intermediate!9594 (undefined!10406 Bool) (index!40748 (_ BitVec 32)) (x!91107 (_ BitVec 32))) (Undefined!9594) (MissingVacant!9594 (index!40749 (_ BitVec 32))) )
))
(declare-fun lt!450708 () SeekEntryResult!9594)

(assert (=> b!1024808 (= res!686221 (is-Found!9594 lt!450708))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64260 (_ BitVec 32)) SeekEntryResult!9594)

(assert (=> b!1024808 (= lt!450708 (seekEntry!0 key!909 (_keys!11146 thiss!1427) (mask!29655 thiss!1427)))))

(declare-fun b!1024804 () Bool)

(declare-fun res!686219 () Bool)

(assert (=> b!1024804 (=> res!686219 e!577777)))

(declare-fun noDuplicate!1482 (List!21844) Bool)

(assert (=> b!1024804 (= res!686219 (not (noDuplicate!1482 Nil!21841)))))

(declare-fun res!686220 () Bool)

(assert (=> start!89430 (=> (not res!686220) (not e!577783))))

(declare-fun valid!1969 (LongMapFixedSize!5300) Bool)

(assert (=> start!89430 (= res!686220 (valid!1969 thiss!1427))))

(assert (=> start!89430 e!577783))

(declare-fun e!577778 () Bool)

(assert (=> start!89430 e!577778))

(assert (=> start!89430 true))

(declare-fun b!1024809 () Bool)

(declare-fun e!577781 () Bool)

(declare-fun tp_is_empty!24113 () Bool)

(assert (=> b!1024809 (= e!577781 tp_is_empty!24113)))

(declare-fun b!1024810 () Bool)

(declare-fun e!577780 () Bool)

(assert (=> b!1024810 (= e!577780 (and e!577781 mapRes!37598))))

(declare-fun condMapEmpty!37598 () Bool)

(declare-fun mapDefault!37598 () ValueCell!11353)

