; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89724 () Bool)

(assert start!89724)

(declare-fun b!1028245 () Bool)

(declare-fun b_free!20581 () Bool)

(declare-fun b_next!20581 () Bool)

(assert (=> b!1028245 (= b_free!20581 (not b_next!20581))))

(declare-fun tp!72796 () Bool)

(declare-fun b_and!32881 () Bool)

(assert (=> b!1028245 (= tp!72796 b_and!32881)))

(declare-fun tp_is_empty!24301 () Bool)

(declare-datatypes ((V!37275 0))(
  ( (V!37276 (val!12201 Int)) )
))
(declare-datatypes ((ValueCell!11447 0))(
  ( (ValueCellFull!11447 (v!14773 V!37275)) (EmptyCell!11447) )
))
(declare-datatypes ((array!64640 0))(
  ( (array!64641 (arr!31123 (Array (_ BitVec 32) (_ BitVec 64))) (size!31638 (_ BitVec 32))) )
))
(declare-datatypes ((array!64642 0))(
  ( (array!64643 (arr!31124 (Array (_ BitVec 32) ValueCell!11447)) (size!31639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5488 0))(
  ( (LongMapFixedSize!5489 (defaultEntry!6102 Int) (mask!29832 (_ BitVec 32)) (extraKeys!5834 (_ BitVec 32)) (zeroValue!5938 V!37275) (minValue!5938 V!37275) (_size!2799 (_ BitVec 32)) (_keys!11253 array!64640) (_values!6125 array!64642) (_vacant!2799 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5488)

(declare-fun e!580451 () Bool)

(declare-fun e!580445 () Bool)

(declare-fun array_inv!23943 (array!64640) Bool)

(declare-fun array_inv!23944 (array!64642) Bool)

(assert (=> b!1028245 (= e!580445 (and tp!72796 tp_is_empty!24301 (array_inv!23943 (_keys!11253 thiss!1427)) (array_inv!23944 (_values!6125 thiss!1427)) e!580451))))

(declare-fun b!1028246 () Bool)

(declare-fun e!580448 () Bool)

(declare-datatypes ((Unit!33534 0))(
  ( (Unit!33535) )
))
(declare-datatypes ((tuple2!15626 0))(
  ( (tuple2!15627 (_1!7823 Unit!33534) (_2!7823 LongMapFixedSize!5488)) )
))
(declare-fun lt!452896 () tuple2!15626)

(assert (=> b!1028246 (= e!580448 (or (not (= (size!31639 (_values!6125 (_2!7823 lt!452896))) (bvadd #b00000000000000000000000000000001 (mask!29832 (_2!7823 lt!452896))))) (= (size!31638 (_keys!11253 (_2!7823 lt!452896))) (size!31639 (_values!6125 (_2!7823 lt!452896))))))))

(declare-fun b!1028247 () Bool)

(declare-fun res!688147 () Bool)

(declare-fun e!580452 () Bool)

(assert (=> b!1028247 (=> (not res!688147) (not e!580452))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1028247 (= res!688147 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37887 () Bool)

(declare-fun mapRes!37887 () Bool)

(assert (=> mapIsEmpty!37887 mapRes!37887))

(declare-fun b!1028248 () Bool)

(declare-fun e!580446 () Bool)

(assert (=> b!1028248 (= e!580446 tp_is_empty!24301)))

(declare-fun b!1028249 () Bool)

(declare-fun e!580449 () Bool)

(assert (=> b!1028249 (= e!580452 e!580449)))

(declare-fun res!688148 () Bool)

(assert (=> b!1028249 (=> (not res!688148) (not e!580449))))

(declare-datatypes ((SeekEntryResult!9665 0))(
  ( (MissingZero!9665 (index!41030 (_ BitVec 32))) (Found!9665 (index!41031 (_ BitVec 32))) (Intermediate!9665 (undefined!10477 Bool) (index!41032 (_ BitVec 32)) (x!91488 (_ BitVec 32))) (Undefined!9665) (MissingVacant!9665 (index!41033 (_ BitVec 32))) )
))
(declare-fun lt!452894 () SeekEntryResult!9665)

(assert (=> b!1028249 (= res!688148 (is-Found!9665 lt!452894))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64640 (_ BitVec 32)) SeekEntryResult!9665)

(assert (=> b!1028249 (= lt!452894 (seekEntry!0 key!909 (_keys!11253 thiss!1427) (mask!29832 thiss!1427)))))

(declare-fun res!688150 () Bool)

(assert (=> start!89724 (=> (not res!688150) (not e!580452))))

(declare-fun valid!2032 (LongMapFixedSize!5488) Bool)

(assert (=> start!89724 (= res!688150 (valid!2032 thiss!1427))))

(assert (=> start!89724 e!580452))

(assert (=> start!89724 e!580445))

(assert (=> start!89724 true))

(declare-fun b!1028250 () Bool)

(declare-fun e!580450 () Bool)

(assert (=> b!1028250 (= e!580450 tp_is_empty!24301)))

(declare-fun b!1028251 () Bool)

(assert (=> b!1028251 (= e!580451 (and e!580450 mapRes!37887))))

(declare-fun condMapEmpty!37887 () Bool)

(declare-fun mapDefault!37887 () ValueCell!11447)

