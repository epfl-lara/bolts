; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89154 () Bool)

(assert start!89154)

(declare-fun b!1021635 () Bool)

(declare-fun b_free!20159 () Bool)

(declare-fun b_next!20159 () Bool)

(assert (=> b!1021635 (= b_free!20159 (not b_next!20159))))

(declare-fun tp!71512 () Bool)

(declare-fun b_and!32375 () Bool)

(assert (=> b!1021635 (= tp!71512 b_and!32375)))

(declare-fun mapNonEmpty!37236 () Bool)

(declare-fun mapRes!37236 () Bool)

(declare-fun tp!71513 () Bool)

(declare-fun e!575474 () Bool)

(assert (=> mapNonEmpty!37236 (= mapRes!37236 (and tp!71513 e!575474))))

(declare-datatypes ((V!36711 0))(
  ( (V!36712 (val!11990 Int)) )
))
(declare-datatypes ((ValueCell!11236 0))(
  ( (ValueCellFull!11236 (v!14560 V!36711)) (EmptyCell!11236) )
))
(declare-fun mapValue!37236 () ValueCell!11236)

(declare-fun mapRest!37236 () (Array (_ BitVec 32) ValueCell!11236))

(declare-datatypes ((array!63786 0))(
  ( (array!63787 (arr!30701 (Array (_ BitVec 32) (_ BitVec 64))) (size!31213 (_ BitVec 32))) )
))
(declare-datatypes ((array!63788 0))(
  ( (array!63789 (arr!30702 (Array (_ BitVec 32) ValueCell!11236)) (size!31214 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5066 0))(
  ( (LongMapFixedSize!5067 (defaultEntry!5885 Int) (mask!29455 (_ BitVec 32)) (extraKeys!5617 (_ BitVec 32)) (zeroValue!5721 V!36711) (minValue!5721 V!36711) (_size!2588 (_ BitVec 32)) (_keys!11027 array!63786) (_values!5908 array!63788) (_vacant!2588 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5066)

(declare-fun mapKey!37236 () (_ BitVec 32))

(assert (=> mapNonEmpty!37236 (= (arr!30702 (_values!5908 thiss!1427)) (store mapRest!37236 mapKey!37236 mapValue!37236))))

(declare-fun b!1021631 () Bool)

(declare-fun res!684576 () Bool)

(declare-fun e!575477 () Bool)

(assert (=> b!1021631 (=> (not res!684576) (not e!575477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021631 (= res!684576 (validMask!0 (mask!29455 thiss!1427)))))

(declare-fun b!1021632 () Bool)

(declare-fun e!575475 () Bool)

(declare-fun e!575478 () Bool)

(assert (=> b!1021632 (= e!575475 (and e!575478 mapRes!37236))))

(declare-fun condMapEmpty!37236 () Bool)

(declare-fun mapDefault!37236 () ValueCell!11236)

