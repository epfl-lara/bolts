; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92008 () Bool)

(assert start!92008)

(declare-fun b!1045802 () Bool)

(declare-fun b_free!21145 () Bool)

(declare-fun b_next!21145 () Bool)

(assert (=> b!1045802 (= b_free!21145 (not b_next!21145))))

(declare-fun tp!74697 () Bool)

(declare-fun b_and!33803 () Bool)

(assert (=> b!1045802 (= tp!74697 b_and!33803)))

(declare-fun b!1045796 () Bool)

(declare-fun e!592903 () Bool)

(declare-fun e!592900 () Bool)

(assert (=> b!1045796 (= e!592903 e!592900)))

(declare-fun res!696356 () Bool)

(assert (=> b!1045796 (=> (not res!696356) (not e!592900))))

(declare-datatypes ((SeekEntryResult!9848 0))(
  ( (MissingZero!9848 (index!41762 (_ BitVec 32))) (Found!9848 (index!41763 (_ BitVec 32))) (Intermediate!9848 (undefined!10660 Bool) (index!41764 (_ BitVec 32)) (x!93417 (_ BitVec 32))) (Undefined!9848) (MissingVacant!9848 (index!41765 (_ BitVec 32))) )
))
(declare-fun lt!461820 () SeekEntryResult!9848)

(assert (=> b!1045796 (= res!696356 (is-Found!9848 lt!461820))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!38027 0))(
  ( (V!38028 (val!12483 Int)) )
))
(declare-datatypes ((ValueCell!11729 0))(
  ( (ValueCellFull!11729 (v!15081 V!38027)) (EmptyCell!11729) )
))
(declare-datatypes ((array!65892 0))(
  ( (array!65893 (arr!31687 (Array (_ BitVec 32) (_ BitVec 64))) (size!32223 (_ BitVec 32))) )
))
(declare-datatypes ((array!65894 0))(
  ( (array!65895 (arr!31688 (Array (_ BitVec 32) ValueCell!11729)) (size!32224 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6052 0))(
  ( (LongMapFixedSize!6053 (defaultEntry!6424 Int) (mask!30556 (_ BitVec 32)) (extraKeys!6152 (_ BitVec 32)) (zeroValue!6258 V!38027) (minValue!6258 V!38027) (_size!3081 (_ BitVec 32)) (_keys!11695 array!65892) (_values!6447 array!65894) (_vacant!3081 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6052)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65892 (_ BitVec 32)) SeekEntryResult!9848)

(assert (=> b!1045796 (= lt!461820 (seekEntry!0 key!909 (_keys!11695 thiss!1427) (mask!30556 thiss!1427)))))

(declare-fun b!1045797 () Bool)

(declare-fun res!696358 () Bool)

(declare-fun e!592902 () Bool)

(assert (=> b!1045797 (=> res!696358 e!592902)))

(declare-datatypes ((Unit!34156 0))(
  ( (Unit!34157) )
))
(declare-datatypes ((tuple2!15898 0))(
  ( (tuple2!15899 (_1!7959 Unit!34156) (_2!7959 LongMapFixedSize!6052)) )
))
(declare-fun lt!461821 () tuple2!15898)

(assert (=> b!1045797 (= res!696358 (or (not (= (size!32224 (_values!6447 (_2!7959 lt!461821))) (bvadd #b00000000000000000000000000000001 (mask!30556 (_2!7959 lt!461821))))) (not (= (size!32223 (_keys!11695 (_2!7959 lt!461821))) (size!32224 (_values!6447 (_2!7959 lt!461821))))) (bvslt (mask!30556 (_2!7959 lt!461821)) #b00000000000000000000000000000000) (bvslt (extraKeys!6152 (_2!7959 lt!461821)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6152 (_2!7959 lt!461821)) #b00000000000000000000000000000011)))))

(declare-fun b!1045798 () Bool)

(declare-fun e!592901 () Bool)

(declare-fun tp_is_empty!24865 () Bool)

(assert (=> b!1045798 (= e!592901 tp_is_empty!24865)))

(declare-fun mapIsEmpty!38942 () Bool)

(declare-fun mapRes!38942 () Bool)

(assert (=> mapIsEmpty!38942 mapRes!38942))

(declare-fun b!1045800 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65892 (_ BitVec 32)) Bool)

(assert (=> b!1045800 (= e!592902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11695 (_2!7959 lt!461821)) (mask!30556 (_2!7959 lt!461821))))))

(declare-fun b!1045801 () Bool)

(declare-fun e!592897 () Bool)

(assert (=> b!1045801 (= e!592897 (and e!592901 mapRes!38942))))

(declare-fun condMapEmpty!38942 () Bool)

(declare-fun mapDefault!38942 () ValueCell!11729)

