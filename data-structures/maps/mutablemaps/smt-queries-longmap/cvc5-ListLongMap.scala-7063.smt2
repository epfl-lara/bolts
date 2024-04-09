; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89468 () Bool)

(assert start!89468)

(declare-fun b!1025434 () Bool)

(declare-fun b_free!20431 () Bool)

(declare-fun b_next!20431 () Bool)

(assert (=> b!1025434 (= b_free!20431 (not b_next!20431))))

(declare-fun tp!72340 () Bool)

(declare-fun b_and!32695 () Bool)

(assert (=> b!1025434 (= tp!72340 b_and!32695)))

(declare-fun b!1025431 () Bool)

(declare-fun e!578234 () Bool)

(declare-fun tp_is_empty!24151 () Bool)

(assert (=> b!1025431 (= e!578234 tp_is_empty!24151)))

(declare-fun b!1025432 () Bool)

(declare-fun e!578236 () Bool)

(assert (=> b!1025432 (= e!578236 tp_is_empty!24151)))

(declare-fun b!1025433 () Bool)

(declare-fun e!578240 () Bool)

(declare-fun mapRes!37655 () Bool)

(assert (=> b!1025433 (= e!578240 (and e!578236 mapRes!37655))))

(declare-fun condMapEmpty!37655 () Bool)

(declare-datatypes ((V!37075 0))(
  ( (V!37076 (val!12126 Int)) )
))
(declare-datatypes ((ValueCell!11372 0))(
  ( (ValueCellFull!11372 (v!14696 V!37075)) (EmptyCell!11372) )
))
(declare-datatypes ((array!64336 0))(
  ( (array!64337 (arr!30973 (Array (_ BitVec 32) (_ BitVec 64))) (size!31487 (_ BitVec 32))) )
))
(declare-datatypes ((array!64338 0))(
  ( (array!64339 (arr!30974 (Array (_ BitVec 32) ValueCell!11372)) (size!31488 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5338 0))(
  ( (LongMapFixedSize!5339 (defaultEntry!6021 Int) (mask!29688 (_ BitVec 32)) (extraKeys!5753 (_ BitVec 32)) (zeroValue!5857 V!37075) (minValue!5857 V!37075) (_size!2724 (_ BitVec 32)) (_keys!11165 array!64336) (_values!6044 array!64338) (_vacant!2724 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5338)

(declare-fun mapDefault!37655 () ValueCell!11372)

