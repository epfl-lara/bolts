; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91176 () Bool)

(assert start!91176)

(declare-fun b!1040249 () Bool)

(declare-fun b_free!21007 () Bool)

(declare-fun b_next!21007 () Bool)

(assert (=> b!1040249 (= b_free!21007 (not b_next!21007))))

(declare-fun tp!74217 () Bool)

(declare-fun b_and!33557 () Bool)

(assert (=> b!1040249 (= tp!74217 b_and!33557)))

(declare-fun e!588957 () Bool)

(declare-fun e!588956 () Bool)

(declare-datatypes ((V!37843 0))(
  ( (V!37844 (val!12414 Int)) )
))
(declare-datatypes ((ValueCell!11660 0))(
  ( (ValueCellFull!11660 (v!15002 V!37843)) (EmptyCell!11660) )
))
(declare-datatypes ((array!65574 0))(
  ( (array!65575 (arr!31549 (Array (_ BitVec 32) (_ BitVec 64))) (size!32081 (_ BitVec 32))) )
))
(declare-datatypes ((array!65576 0))(
  ( (array!65577 (arr!31550 (Array (_ BitVec 32) ValueCell!11660)) (size!32082 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5914 0))(
  ( (LongMapFixedSize!5915 (defaultEntry!6339 Int) (mask!30325 (_ BitVec 32)) (extraKeys!6067 (_ BitVec 32)) (zeroValue!6173 V!37843) (minValue!6173 V!37843) (_size!3012 (_ BitVec 32)) (_keys!11556 array!65574) (_values!6362 array!65576) (_vacant!3012 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5914)

(declare-fun tp_is_empty!24727 () Bool)

(declare-fun array_inv!24223 (array!65574) Bool)

(declare-fun array_inv!24224 (array!65576) Bool)

(assert (=> b!1040249 (= e!588956 (and tp!74217 tp_is_empty!24727 (array_inv!24223 (_keys!11556 thiss!1427)) (array_inv!24224 (_values!6362 thiss!1427)) e!588957))))

(declare-fun mapIsEmpty!38668 () Bool)

(declare-fun mapRes!38668 () Bool)

(assert (=> mapIsEmpty!38668 mapRes!38668))

(declare-fun b!1040250 () Bool)

(declare-fun e!588960 () Bool)

(assert (=> b!1040250 (= e!588960 tp_is_empty!24727)))

(declare-fun b!1040251 () Bool)

(declare-fun res!693650 () Bool)

(declare-fun e!588959 () Bool)

(assert (=> b!1040251 (=> (not res!693650) (not e!588959))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1040251 (= res!693650 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040252 () Bool)

(declare-fun e!588961 () Bool)

(assert (=> b!1040252 (= e!588959 e!588961)))

(declare-fun res!693647 () Bool)

(assert (=> b!1040252 (=> (not res!693647) (not e!588961))))

(declare-datatypes ((SeekEntryResult!9794 0))(
  ( (MissingZero!9794 (index!41546 (_ BitVec 32))) (Found!9794 (index!41547 (_ BitVec 32))) (Intermediate!9794 (undefined!10606 Bool) (index!41548 (_ BitVec 32)) (x!92861 (_ BitVec 32))) (Undefined!9794) (MissingVacant!9794 (index!41549 (_ BitVec 32))) )
))
(declare-fun lt!458464 () SeekEntryResult!9794)

(assert (=> b!1040252 (= res!693647 (is-Found!9794 lt!458464))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65574 (_ BitVec 32)) SeekEntryResult!9794)

(assert (=> b!1040252 (= lt!458464 (seekEntry!0 key!909 (_keys!11556 thiss!1427) (mask!30325 thiss!1427)))))

(declare-fun res!693648 () Bool)

(assert (=> start!91176 (=> (not res!693648) (not e!588959))))

(declare-fun valid!2176 (LongMapFixedSize!5914) Bool)

(assert (=> start!91176 (= res!693648 (valid!2176 thiss!1427))))

(assert (=> start!91176 e!588959))

(assert (=> start!91176 e!588956))

(assert (=> start!91176 true))

(declare-fun b!1040253 () Bool)

(assert (=> b!1040253 (= e!588957 (and e!588960 mapRes!38668))))

(declare-fun condMapEmpty!38668 () Bool)

(declare-fun mapDefault!38668 () ValueCell!11660)

