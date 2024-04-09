; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91654 () Bool)

(assert start!91654)

(declare-fun b!1043109 () Bool)

(declare-fun b_free!21083 () Bool)

(declare-fun b_next!21083 () Bool)

(assert (=> b!1043109 (= b_free!21083 (not b_next!21083))))

(declare-fun tp!74485 () Bool)

(declare-fun b_and!33633 () Bool)

(assert (=> b!1043109 (= tp!74485 b_and!33633)))

(declare-fun b!1043102 () Bool)

(declare-fun res!695065 () Bool)

(declare-fun e!591002 () Bool)

(assert (=> b!1043102 (=> res!695065 e!591002)))

(declare-datatypes ((V!37943 0))(
  ( (V!37944 (val!12452 Int)) )
))
(declare-datatypes ((ValueCell!11698 0))(
  ( (ValueCellFull!11698 (v!15044 V!37943)) (EmptyCell!11698) )
))
(declare-datatypes ((array!65750 0))(
  ( (array!65751 (arr!31625 (Array (_ BitVec 32) (_ BitVec 64))) (size!32161 (_ BitVec 32))) )
))
(declare-datatypes ((array!65752 0))(
  ( (array!65753 (arr!31626 (Array (_ BitVec 32) ValueCell!11698)) (size!32162 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5990 0))(
  ( (LongMapFixedSize!5991 (defaultEntry!6377 Int) (mask!30453 (_ BitVec 32)) (extraKeys!6105 (_ BitVec 32)) (zeroValue!6211 V!37943) (minValue!6211 V!37943) (_size!3050 (_ BitVec 32)) (_keys!11630 array!65750) (_values!6400 array!65752) (_vacant!3050 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5990)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65750 (_ BitVec 32)) Bool)

(assert (=> b!1043102 (= res!695065 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11630 thiss!1427) (mask!30453 thiss!1427))))))

(declare-fun mapNonEmpty!38822 () Bool)

(declare-fun mapRes!38822 () Bool)

(declare-fun tp!74484 () Bool)

(declare-fun e!591001 () Bool)

(assert (=> mapNonEmpty!38822 (= mapRes!38822 (and tp!74484 e!591001))))

(declare-fun mapRest!38822 () (Array (_ BitVec 32) ValueCell!11698))

(declare-fun mapKey!38822 () (_ BitVec 32))

(declare-fun mapValue!38822 () ValueCell!11698)

(assert (=> mapNonEmpty!38822 (= (arr!31626 (_values!6400 thiss!1427)) (store mapRest!38822 mapKey!38822 mapValue!38822))))

(declare-fun b!1043103 () Bool)

(declare-fun res!695062 () Bool)

(assert (=> b!1043103 (=> res!695062 e!591002)))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1043103 (= res!695062 (not (validKeyInArray!0 key!909)))))

(declare-fun b!1043105 () Bool)

(declare-fun e!590999 () Bool)

(declare-fun e!591004 () Bool)

(assert (=> b!1043105 (= e!590999 (and e!591004 mapRes!38822))))

(declare-fun condMapEmpty!38822 () Bool)

(declare-fun mapDefault!38822 () ValueCell!11698)

