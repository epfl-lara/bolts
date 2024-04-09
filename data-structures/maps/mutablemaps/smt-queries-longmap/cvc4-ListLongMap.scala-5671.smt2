; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73842 () Bool)

(assert start!73842)

(declare-fun b_free!14729 () Bool)

(declare-fun b_next!14729 () Bool)

(assert (=> start!73842 (= b_free!14729 (not b_next!14729))))

(declare-fun tp!51692 () Bool)

(declare-fun b_and!24455 () Bool)

(assert (=> start!73842 (= tp!51692 b_and!24455)))

(declare-fun mapNonEmpty!26897 () Bool)

(declare-fun mapRes!26897 () Bool)

(declare-fun tp!51691 () Bool)

(declare-fun e!482615 () Bool)

(assert (=> mapNonEmpty!26897 (= mapRes!26897 (and tp!51691 e!482615))))

(declare-datatypes ((V!27533 0))(
  ( (V!27534 (val!8480 Int)) )
))
(declare-datatypes ((ValueCell!7993 0))(
  ( (ValueCellFull!7993 (v!10901 V!27533)) (EmptyCell!7993) )
))
(declare-fun mapRest!26897 () (Array (_ BitVec 32) ValueCell!7993))

(declare-fun mapValue!26897 () ValueCell!7993)

(declare-fun mapKey!26897 () (_ BitVec 32))

(declare-datatypes ((array!49872 0))(
  ( (array!49873 (arr!23963 (Array (_ BitVec 32) ValueCell!7993)) (size!24404 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49872)

(assert (=> mapNonEmpty!26897 (= (arr!23963 _values!688) (store mapRest!26897 mapKey!26897 mapValue!26897))))

(declare-fun b!866325 () Bool)

(declare-fun e!482616 () Bool)

(declare-fun e!482617 () Bool)

(assert (=> b!866325 (= e!482616 (and e!482617 mapRes!26897))))

(declare-fun condMapEmpty!26897 () Bool)

(declare-fun mapDefault!26897 () ValueCell!7993)

