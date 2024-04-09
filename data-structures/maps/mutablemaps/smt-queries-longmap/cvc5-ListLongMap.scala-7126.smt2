; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90450 () Bool)

(assert start!90450)

(declare-fun b!1034738 () Bool)

(declare-fun b_free!20809 () Bool)

(declare-fun b_next!20809 () Bool)

(assert (=> b!1034738 (= b_free!20809 (not b_next!20809))))

(declare-fun tp!73537 () Bool)

(declare-fun b_and!33327 () Bool)

(assert (=> b!1034738 (= tp!73537 b_and!33327)))

(declare-fun res!691108 () Bool)

(declare-fun e!585009 () Bool)

(assert (=> start!90450 (=> (not res!691108) (not e!585009))))

(declare-datatypes ((V!37579 0))(
  ( (V!37580 (val!12315 Int)) )
))
(declare-datatypes ((ValueCell!11561 0))(
  ( (ValueCellFull!11561 (v!14896 V!37579)) (EmptyCell!11561) )
))
(declare-datatypes ((array!65126 0))(
  ( (array!65127 (arr!31351 (Array (_ BitVec 32) (_ BitVec 64))) (size!31876 (_ BitVec 32))) )
))
(declare-datatypes ((array!65128 0))(
  ( (array!65129 (arr!31352 (Array (_ BitVec 32) ValueCell!11561)) (size!31877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5716 0))(
  ( (LongMapFixedSize!5717 (defaultEntry!6236 Int) (mask!30097 (_ BitVec 32)) (extraKeys!5966 (_ BitVec 32)) (zeroValue!6070 V!37579) (minValue!6072 V!37579) (_size!2913 (_ BitVec 32)) (_keys!11416 array!65126) (_values!6259 array!65128) (_vacant!2913 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5716)

(declare-fun valid!2109 (LongMapFixedSize!5716) Bool)

(assert (=> start!90450 (= res!691108 (valid!2109 thiss!1427))))

(assert (=> start!90450 e!585009))

(declare-fun e!585010 () Bool)

(assert (=> start!90450 e!585010))

(assert (=> start!90450 true))

(declare-fun mapNonEmpty!38285 () Bool)

(declare-fun mapRes!38285 () Bool)

(declare-fun tp!73536 () Bool)

(declare-fun e!585011 () Bool)

(assert (=> mapNonEmpty!38285 (= mapRes!38285 (and tp!73536 e!585011))))

(declare-fun mapRest!38285 () (Array (_ BitVec 32) ValueCell!11561))

(declare-fun mapValue!38285 () ValueCell!11561)

(declare-fun mapKey!38285 () (_ BitVec 32))

(assert (=> mapNonEmpty!38285 (= (arr!31352 (_values!6259 thiss!1427)) (store mapRest!38285 mapKey!38285 mapValue!38285))))

(declare-fun b!1034734 () Bool)

(assert (=> b!1034734 (= e!585009 (not (= (size!31877 (_values!6259 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30097 thiss!1427)))))))

(declare-fun b!1034735 () Bool)

(declare-fun e!585007 () Bool)

(declare-fun e!585012 () Bool)

(assert (=> b!1034735 (= e!585007 (and e!585012 mapRes!38285))))

(declare-fun condMapEmpty!38285 () Bool)

(declare-fun mapDefault!38285 () ValueCell!11561)

