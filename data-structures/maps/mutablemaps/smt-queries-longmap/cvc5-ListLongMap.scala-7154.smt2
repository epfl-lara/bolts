; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91044 () Bool)

(assert start!91044)

(declare-fun b!1039409 () Bool)

(declare-fun b_free!20977 () Bool)

(declare-fun b_next!20977 () Bool)

(assert (=> b!1039409 (= b_free!20977 (not b_next!20977))))

(declare-fun tp!74112 () Bool)

(declare-fun b_and!33527 () Bool)

(assert (=> b!1039409 (= tp!74112 b_and!33527)))

(declare-fun mapNonEmpty!38608 () Bool)

(declare-fun mapRes!38608 () Bool)

(declare-fun tp!74111 () Bool)

(declare-fun e!588326 () Bool)

(assert (=> mapNonEmpty!38608 (= mapRes!38608 (and tp!74111 e!588326))))

(declare-datatypes ((V!37803 0))(
  ( (V!37804 (val!12399 Int)) )
))
(declare-datatypes ((ValueCell!11645 0))(
  ( (ValueCellFull!11645 (v!14987 V!37803)) (EmptyCell!11645) )
))
(declare-fun mapRest!38608 () (Array (_ BitVec 32) ValueCell!11645))

(declare-fun mapValue!38608 () ValueCell!11645)

(declare-datatypes ((array!65504 0))(
  ( (array!65505 (arr!31519 (Array (_ BitVec 32) (_ BitVec 64))) (size!32051 (_ BitVec 32))) )
))
(declare-datatypes ((array!65506 0))(
  ( (array!65507 (arr!31520 (Array (_ BitVec 32) ValueCell!11645)) (size!32052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5884 0))(
  ( (LongMapFixedSize!5885 (defaultEntry!6324 Int) (mask!30285 (_ BitVec 32)) (extraKeys!6052 (_ BitVec 32)) (zeroValue!6158 V!37803) (minValue!6158 V!37803) (_size!2997 (_ BitVec 32)) (_keys!11531 array!65504) (_values!6347 array!65506) (_vacant!2997 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5884)

(declare-fun mapKey!38608 () (_ BitVec 32))

(assert (=> mapNonEmpty!38608 (= (arr!31520 (_values!6347 thiss!1427)) (store mapRest!38608 mapKey!38608 mapValue!38608))))

(declare-fun b!1039406 () Bool)

(declare-fun e!588327 () Bool)

(declare-fun e!588323 () Bool)

(assert (=> b!1039406 (= e!588327 (and e!588323 mapRes!38608))))

(declare-fun condMapEmpty!38608 () Bool)

(declare-fun mapDefault!38608 () ValueCell!11645)

