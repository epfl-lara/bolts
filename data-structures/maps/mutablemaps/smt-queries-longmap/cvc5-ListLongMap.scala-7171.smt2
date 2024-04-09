; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91650 () Bool)

(assert start!91650)

(declare-fun b!1043024 () Bool)

(declare-fun b_free!21079 () Bool)

(declare-fun b_next!21079 () Bool)

(assert (=> b!1043024 (= b_free!21079 (not b_next!21079))))

(declare-fun tp!74472 () Bool)

(declare-fun b_and!33629 () Bool)

(assert (=> b!1043024 (= tp!74472 b_and!33629)))

(declare-fun e!590951 () Bool)

(declare-datatypes ((V!37939 0))(
  ( (V!37940 (val!12450 Int)) )
))
(declare-datatypes ((ValueCell!11696 0))(
  ( (ValueCellFull!11696 (v!15042 V!37939)) (EmptyCell!11696) )
))
(declare-datatypes ((array!65742 0))(
  ( (array!65743 (arr!31621 (Array (_ BitVec 32) (_ BitVec 64))) (size!32157 (_ BitVec 32))) )
))
(declare-datatypes ((array!65744 0))(
  ( (array!65745 (arr!31622 (Array (_ BitVec 32) ValueCell!11696)) (size!32158 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5986 0))(
  ( (LongMapFixedSize!5987 (defaultEntry!6375 Int) (mask!30451 (_ BitVec 32)) (extraKeys!6103 (_ BitVec 32)) (zeroValue!6209 V!37939) (minValue!6209 V!37939) (_size!3048 (_ BitVec 32)) (_keys!11628 array!65742) (_values!6398 array!65744) (_vacant!3048 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5986)

(declare-fun e!590955 () Bool)

(declare-fun tp_is_empty!24799 () Bool)

(declare-fun array_inv!24277 (array!65742) Bool)

(declare-fun array_inv!24278 (array!65744) Bool)

(assert (=> b!1043024 (= e!590955 (and tp!74472 tp_is_empty!24799 (array_inv!24277 (_keys!11628 thiss!1427)) (array_inv!24278 (_values!6398 thiss!1427)) e!590951))))

(declare-fun b!1043025 () Bool)

(declare-fun res!695013 () Bool)

(declare-fun e!590949 () Bool)

(assert (=> b!1043025 (=> res!695013 e!590949)))

(declare-datatypes ((List!22109 0))(
  ( (Nil!22106) (Cons!22105 (h!23313 (_ BitVec 64)) (t!31330 List!22109)) )
))
(declare-fun arrayNoDuplicates!0 (array!65742 (_ BitVec 32) List!22109) Bool)

(assert (=> b!1043025 (= res!695013 (not (arrayNoDuplicates!0 (_keys!11628 thiss!1427) #b00000000000000000000000000000000 Nil!22106)))))

(declare-datatypes ((SeekEntryResult!9825 0))(
  ( (MissingZero!9825 (index!41670 (_ BitVec 32))) (Found!9825 (index!41671 (_ BitVec 32))) (Intermediate!9825 (undefined!10637 Bool) (index!41672 (_ BitVec 32)) (x!93120 (_ BitVec 32))) (Undefined!9825) (MissingVacant!9825 (index!41673 (_ BitVec 32))) )
))
(declare-fun lt!459730 () SeekEntryResult!9825)

(declare-fun b!1043026 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043026 (= e!590949 (= (select (arr!31621 (_keys!11628 thiss!1427)) (index!41671 lt!459730)) key!909))))

(declare-fun mapIsEmpty!38816 () Bool)

(declare-fun mapRes!38816 () Bool)

(assert (=> mapIsEmpty!38816 mapRes!38816))

(declare-fun b!1043027 () Bool)

(declare-fun e!590953 () Bool)

(declare-fun e!590956 () Bool)

(assert (=> b!1043027 (= e!590953 e!590956)))

(declare-fun res!695007 () Bool)

(assert (=> b!1043027 (=> (not res!695007) (not e!590956))))

(assert (=> b!1043027 (= res!695007 (is-Found!9825 lt!459730))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65742 (_ BitVec 32)) SeekEntryResult!9825)

(assert (=> b!1043027 (= lt!459730 (seekEntry!0 key!909 (_keys!11628 thiss!1427) (mask!30451 thiss!1427)))))

(declare-fun b!1043028 () Bool)

(declare-fun e!590950 () Bool)

(assert (=> b!1043028 (= e!590951 (and e!590950 mapRes!38816))))

(declare-fun condMapEmpty!38816 () Bool)

(declare-fun mapDefault!38816 () ValueCell!11696)

