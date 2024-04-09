; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90906 () Bool)

(assert start!90906)

(declare-fun b!1038547 () Bool)

(declare-fun b_free!20951 () Bool)

(declare-fun b_next!20951 () Bool)

(assert (=> b!1038547 (= b_free!20951 (not b_next!20951))))

(declare-fun tp!74018 () Bool)

(declare-fun b_and!33501 () Bool)

(assert (=> b!1038547 (= tp!74018 b_and!33501)))

(declare-fun e!587711 () Bool)

(declare-datatypes ((V!37767 0))(
  ( (V!37768 (val!12386 Int)) )
))
(declare-datatypes ((ValueCell!11632 0))(
  ( (ValueCellFull!11632 (v!14973 V!37767)) (EmptyCell!11632) )
))
(declare-datatypes ((array!65442 0))(
  ( (array!65443 (arr!31493 (Array (_ BitVec 32) (_ BitVec 64))) (size!32024 (_ BitVec 32))) )
))
(declare-datatypes ((array!65444 0))(
  ( (array!65445 (arr!31494 (Array (_ BitVec 32) ValueCell!11632)) (size!32025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5858 0))(
  ( (LongMapFixedSize!5859 (defaultEntry!6311 Int) (mask!30248 (_ BitVec 32)) (extraKeys!6039 (_ BitVec 32)) (zeroValue!6145 V!37767) (minValue!6145 V!37767) (_size!2984 (_ BitVec 32)) (_keys!11510 array!65442) (_values!6334 array!65444) (_vacant!2984 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5858)

(declare-fun e!587712 () Bool)

(declare-fun tp_is_empty!24671 () Bool)

(declare-fun array_inv!24189 (array!65442) Bool)

(declare-fun array_inv!24190 (array!65444) Bool)

(assert (=> b!1038547 (= e!587711 (and tp!74018 tp_is_empty!24671 (array_inv!24189 (_keys!11510 thiss!1427)) (array_inv!24190 (_values!6334 thiss!1427)) e!587712))))

(declare-fun b!1038548 () Bool)

(declare-fun e!587710 () Bool)

(declare-fun e!587716 () Bool)

(assert (=> b!1038548 (= e!587710 e!587716)))

(declare-fun res!692858 () Bool)

(assert (=> b!1038548 (=> (not res!692858) (not e!587716))))

(declare-datatypes ((SeekEntryResult!9772 0))(
  ( (MissingZero!9772 (index!41458 (_ BitVec 32))) (Found!9772 (index!41459 (_ BitVec 32))) (Intermediate!9772 (undefined!10584 Bool) (index!41460 (_ BitVec 32)) (x!92670 (_ BitVec 32))) (Undefined!9772) (MissingVacant!9772 (index!41461 (_ BitVec 32))) )
))
(declare-fun lt!457779 () SeekEntryResult!9772)

(assert (=> b!1038548 (= res!692858 (is-Found!9772 lt!457779))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65442 (_ BitVec 32)) SeekEntryResult!9772)

(assert (=> b!1038548 (= lt!457779 (seekEntry!0 key!909 (_keys!11510 thiss!1427) (mask!30248 thiss!1427)))))

(declare-fun mapIsEmpty!38553 () Bool)

(declare-fun mapRes!38553 () Bool)

(assert (=> mapIsEmpty!38553 mapRes!38553))

(declare-fun b!1038549 () Bool)

(declare-fun e!587713 () Bool)

(assert (=> b!1038549 (= e!587713 tp_is_empty!24671)))

(declare-fun b!1038550 () Bool)

(declare-fun e!587714 () Bool)

(assert (=> b!1038550 (= e!587712 (and e!587714 mapRes!38553))))

(declare-fun condMapEmpty!38553 () Bool)

(declare-fun mapDefault!38553 () ValueCell!11632)

