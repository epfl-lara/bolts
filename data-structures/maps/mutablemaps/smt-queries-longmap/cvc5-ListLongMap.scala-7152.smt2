; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90992 () Bool)

(assert start!90992)

(declare-fun b!1039066 () Bool)

(declare-fun b_free!20965 () Bool)

(declare-fun b_next!20965 () Bool)

(assert (=> b!1039066 (= b_free!20965 (not b_next!20965))))

(declare-fun tp!74070 () Bool)

(declare-fun b_and!33515 () Bool)

(assert (=> b!1039066 (= tp!74070 b_and!33515)))

(declare-fun b!1039064 () Bool)

(declare-fun res!693088 () Bool)

(declare-fun e!588085 () Bool)

(assert (=> b!1039064 (=> res!693088 e!588085)))

(declare-datatypes ((V!37787 0))(
  ( (V!37788 (val!12393 Int)) )
))
(declare-datatypes ((ValueCell!11639 0))(
  ( (ValueCellFull!11639 (v!14981 V!37787)) (EmptyCell!11639) )
))
(declare-datatypes ((array!65476 0))(
  ( (array!65477 (arr!31507 (Array (_ BitVec 32) (_ BitVec 64))) (size!32039 (_ BitVec 32))) )
))
(declare-datatypes ((array!65478 0))(
  ( (array!65479 (arr!31508 (Array (_ BitVec 32) ValueCell!11639)) (size!32040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5872 0))(
  ( (LongMapFixedSize!5873 (defaultEntry!6318 Int) (mask!30271 (_ BitVec 32)) (extraKeys!6046 (_ BitVec 32)) (zeroValue!6152 V!37787) (minValue!6152 V!37787) (_size!2991 (_ BitVec 32)) (_keys!11523 array!65476) (_values!6341 array!65478) (_vacant!2991 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5872)

(declare-datatypes ((SeekEntryResult!9778 0))(
  ( (MissingZero!9778 (index!41482 (_ BitVec 32))) (Found!9778 (index!41483 (_ BitVec 32))) (Intermediate!9778 (undefined!10590 Bool) (index!41484 (_ BitVec 32)) (x!92733 (_ BitVec 32))) (Undefined!9778) (MissingVacant!9778 (index!41485 (_ BitVec 32))) )
))
(declare-fun lt!457962 () SeekEntryResult!9778)

(assert (=> b!1039064 (= res!693088 (or (not (= (size!32039 (_keys!11523 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30271 thiss!1427)))) (bvslt (index!41483 lt!457962) #b00000000000000000000000000000000) (bvsge (index!41483 lt!457962) (size!32039 (_keys!11523 thiss!1427)))))))

(declare-fun b!1039065 () Bool)

(declare-fun e!588083 () Bool)

(declare-fun tp_is_empty!24685 () Bool)

(assert (=> b!1039065 (= e!588083 tp_is_empty!24685)))

(declare-fun mapNonEmpty!38584 () Bool)

(declare-fun mapRes!38584 () Bool)

(declare-fun tp!74069 () Bool)

(assert (=> mapNonEmpty!38584 (= mapRes!38584 (and tp!74069 e!588083))))

(declare-fun mapKey!38584 () (_ BitVec 32))

(declare-fun mapRest!38584 () (Array (_ BitVec 32) ValueCell!11639))

(declare-fun mapValue!38584 () ValueCell!11639)

(assert (=> mapNonEmpty!38584 (= (arr!31508 (_values!6341 thiss!1427)) (store mapRest!38584 mapKey!38584 mapValue!38584))))

(declare-fun res!693089 () Bool)

(declare-fun e!588088 () Bool)

(assert (=> start!90992 (=> (not res!693089) (not e!588088))))

(declare-fun valid!2161 (LongMapFixedSize!5872) Bool)

(assert (=> start!90992 (= res!693089 (valid!2161 thiss!1427))))

(assert (=> start!90992 e!588088))

(declare-fun e!588084 () Bool)

(assert (=> start!90992 e!588084))

(assert (=> start!90992 true))

(declare-fun e!588081 () Bool)

(declare-fun array_inv!24199 (array!65476) Bool)

(declare-fun array_inv!24200 (array!65478) Bool)

(assert (=> b!1039066 (= e!588084 (and tp!74070 tp_is_empty!24685 (array_inv!24199 (_keys!11523 thiss!1427)) (array_inv!24200 (_values!6341 thiss!1427)) e!588081))))

(declare-fun b!1039067 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039067 (= e!588085 (validKeyInArray!0 (select (arr!31507 (_keys!11523 thiss!1427)) (index!41483 lt!457962))))))

(declare-fun mapIsEmpty!38584 () Bool)

(assert (=> mapIsEmpty!38584 mapRes!38584))

(declare-fun b!1039068 () Bool)

(declare-fun res!693086 () Bool)

(assert (=> b!1039068 (=> (not res!693086) (not e!588088))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039068 (= res!693086 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039069 () Bool)

(declare-fun e!588087 () Bool)

(assert (=> b!1039069 (= e!588088 e!588087)))

(declare-fun res!693085 () Bool)

(assert (=> b!1039069 (=> (not res!693085) (not e!588087))))

(assert (=> b!1039069 (= res!693085 (is-Found!9778 lt!457962))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65476 (_ BitVec 32)) SeekEntryResult!9778)

(assert (=> b!1039069 (= lt!457962 (seekEntry!0 key!909 (_keys!11523 thiss!1427) (mask!30271 thiss!1427)))))

(declare-fun b!1039070 () Bool)

(declare-fun e!588086 () Bool)

(assert (=> b!1039070 (= e!588086 tp_is_empty!24685)))

(declare-fun b!1039071 () Bool)

(assert (=> b!1039071 (= e!588081 (and e!588086 mapRes!38584))))

(declare-fun condMapEmpty!38584 () Bool)

(declare-fun mapDefault!38584 () ValueCell!11639)

