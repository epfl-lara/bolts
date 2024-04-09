; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90306 () Bool)

(assert start!90306)

(declare-fun b!1033347 () Bool)

(declare-fun b_free!20789 () Bool)

(declare-fun b_next!20789 () Bool)

(assert (=> b!1033347 (= b_free!20789 (not b_next!20789))))

(declare-fun tp!73462 () Bool)

(declare-fun b_and!33275 () Bool)

(assert (=> b!1033347 (= tp!73462 b_and!33275)))

(declare-fun b!1033340 () Bool)

(declare-fun e!584110 () Bool)

(declare-fun e!584108 () Bool)

(declare-fun mapRes!38240 () Bool)

(assert (=> b!1033340 (= e!584110 (and e!584108 mapRes!38240))))

(declare-fun condMapEmpty!38240 () Bool)

(declare-datatypes ((V!37551 0))(
  ( (V!37552 (val!12305 Int)) )
))
(declare-datatypes ((ValueCell!11551 0))(
  ( (ValueCellFull!11551 (v!14883 V!37551)) (EmptyCell!11551) )
))
(declare-datatypes ((array!65078 0))(
  ( (array!65079 (arr!31331 (Array (_ BitVec 32) (_ BitVec 64))) (size!31854 (_ BitVec 32))) )
))
(declare-datatypes ((array!65080 0))(
  ( (array!65081 (arr!31332 (Array (_ BitVec 32) ValueCell!11551)) (size!31855 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5696 0))(
  ( (LongMapFixedSize!5697 (defaultEntry!6222 Int) (mask!30066 (_ BitVec 32)) (extraKeys!5954 (_ BitVec 32)) (zeroValue!6058 V!37551) (minValue!6058 V!37551) (_size!2903 (_ BitVec 32)) (_keys!11397 array!65078) (_values!6245 array!65080) (_vacant!2903 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5696)

(declare-fun mapDefault!38240 () ValueCell!11551)

