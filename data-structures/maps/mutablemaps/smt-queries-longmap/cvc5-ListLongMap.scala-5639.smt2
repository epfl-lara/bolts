; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73646 () Bool)

(assert start!73646)

(declare-fun b_free!14533 () Bool)

(declare-fun b_next!14533 () Bool)

(assert (=> start!73646 (= b_free!14533 (not b_next!14533))))

(declare-fun tp!51103 () Bool)

(declare-fun b_and!24063 () Bool)

(assert (=> start!73646 (= tp!51103 b_and!24063)))

(declare-fun b!861459 () Bool)

(declare-fun e!480008 () Bool)

(declare-fun e!480003 () Bool)

(declare-fun mapRes!26603 () Bool)

(assert (=> b!861459 (= e!480008 (and e!480003 mapRes!26603))))

(declare-fun condMapEmpty!26603 () Bool)

(declare-datatypes ((V!27273 0))(
  ( (V!27274 (val!8382 Int)) )
))
(declare-datatypes ((ValueCell!7895 0))(
  ( (ValueCellFull!7895 (v!10803 V!27273)) (EmptyCell!7895) )
))
(declare-datatypes ((array!49486 0))(
  ( (array!49487 (arr!23770 (Array (_ BitVec 32) ValueCell!7895)) (size!24211 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49486)

(declare-fun mapDefault!26603 () ValueCell!7895)

