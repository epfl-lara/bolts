; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73718 () Bool)

(assert start!73718)

(declare-fun b_free!14605 () Bool)

(declare-fun b_next!14605 () Bool)

(assert (=> start!73718 (= b_free!14605 (not b_next!14605))))

(declare-fun tp!51319 () Bool)

(declare-fun b_and!24207 () Bool)

(assert (=> start!73718 (= tp!51319 b_and!24207)))

(declare-fun b!863225 () Bool)

(declare-fun e!480943 () Bool)

(declare-fun e!480941 () Bool)

(declare-fun mapRes!26711 () Bool)

(assert (=> b!863225 (= e!480943 (and e!480941 mapRes!26711))))

(declare-fun condMapEmpty!26711 () Bool)

(declare-datatypes ((V!27369 0))(
  ( (V!27370 (val!8418 Int)) )
))
(declare-datatypes ((ValueCell!7931 0))(
  ( (ValueCellFull!7931 (v!10839 V!27369)) (EmptyCell!7931) )
))
(declare-datatypes ((array!49628 0))(
  ( (array!49629 (arr!23841 (Array (_ BitVec 32) ValueCell!7931)) (size!24282 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49628)

(declare-fun mapDefault!26711 () ValueCell!7931)

