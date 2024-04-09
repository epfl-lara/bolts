; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90762 () Bool)

(assert start!90762)

(declare-fun b!1037367 () Bool)

(declare-fun b_free!20903 () Bool)

(declare-fun b_next!20903 () Bool)

(assert (=> b!1037367 (= b_free!20903 (not b_next!20903))))

(declare-fun tp!73856 () Bool)

(declare-fun b_and!33453 () Bool)

(assert (=> b!1037367 (= tp!73856 b_and!33453)))

(declare-fun b!1037363 () Bool)

(declare-fun e!586859 () Bool)

(declare-fun e!586861 () Bool)

(declare-fun mapRes!38463 () Bool)

(assert (=> b!1037363 (= e!586859 (and e!586861 mapRes!38463))))

(declare-fun condMapEmpty!38463 () Bool)

(declare-datatypes ((V!37703 0))(
  ( (V!37704 (val!12362 Int)) )
))
(declare-datatypes ((ValueCell!11608 0))(
  ( (ValueCellFull!11608 (v!14946 V!37703)) (EmptyCell!11608) )
))
(declare-datatypes ((array!65334 0))(
  ( (array!65335 (arr!31445 (Array (_ BitVec 32) (_ BitVec 64))) (size!31976 (_ BitVec 32))) )
))
(declare-datatypes ((array!65336 0))(
  ( (array!65337 (arr!31446 (Array (_ BitVec 32) ValueCell!11608)) (size!31977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5810 0))(
  ( (LongMapFixedSize!5811 (defaultEntry!6287 Int) (mask!30201 (_ BitVec 32)) (extraKeys!6015 (_ BitVec 32)) (zeroValue!6121 V!37703) (minValue!6121 V!37703) (_size!2960 (_ BitVec 32)) (_keys!11480 array!65334) (_values!6310 array!65336) (_vacant!2960 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5810)

(declare-fun mapDefault!38463 () ValueCell!11608)

