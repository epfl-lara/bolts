; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89474 () Bool)

(assert start!89474)

(declare-fun b!1025540 () Bool)

(declare-fun b_free!20437 () Bool)

(declare-fun b_next!20437 () Bool)

(assert (=> b!1025540 (= b_free!20437 (not b_next!20437))))

(declare-fun tp!72357 () Bool)

(declare-fun b_and!32701 () Bool)

(assert (=> b!1025540 (= tp!72357 b_and!32701)))

(declare-fun b!1025530 () Bool)

(declare-fun e!578306 () Bool)

(declare-fun e!578307 () Bool)

(declare-fun mapRes!37664 () Bool)

(assert (=> b!1025530 (= e!578306 (and e!578307 mapRes!37664))))

(declare-fun condMapEmpty!37664 () Bool)

(declare-datatypes ((V!37083 0))(
  ( (V!37084 (val!12129 Int)) )
))
(declare-datatypes ((ValueCell!11375 0))(
  ( (ValueCellFull!11375 (v!14699 V!37083)) (EmptyCell!11375) )
))
(declare-datatypes ((array!64348 0))(
  ( (array!64349 (arr!30979 (Array (_ BitVec 32) (_ BitVec 64))) (size!31493 (_ BitVec 32))) )
))
(declare-datatypes ((array!64350 0))(
  ( (array!64351 (arr!30980 (Array (_ BitVec 32) ValueCell!11375)) (size!31494 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5344 0))(
  ( (LongMapFixedSize!5345 (defaultEntry!6024 Int) (mask!29693 (_ BitVec 32)) (extraKeys!5756 (_ BitVec 32)) (zeroValue!5860 V!37083) (minValue!5860 V!37083) (_size!2727 (_ BitVec 32)) (_keys!11168 array!64348) (_values!6047 array!64350) (_vacant!2727 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5344)

(declare-fun mapDefault!37664 () ValueCell!11375)

