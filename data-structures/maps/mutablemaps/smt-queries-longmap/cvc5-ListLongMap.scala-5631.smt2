; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73598 () Bool)

(assert start!73598)

(declare-fun b_free!14485 () Bool)

(declare-fun b_next!14485 () Bool)

(assert (=> start!73598 (= b_free!14485 (not b_next!14485))))

(declare-fun tp!50960 () Bool)

(declare-fun b_and!23967 () Bool)

(assert (=> start!73598 (= tp!50960 b_and!23967)))

(declare-fun mapIsEmpty!26531 () Bool)

(declare-fun mapRes!26531 () Bool)

(assert (=> mapIsEmpty!26531 mapRes!26531))

(declare-fun b!860299 () Bool)

(declare-fun e!479416 () Bool)

(declare-fun e!479413 () Bool)

(assert (=> b!860299 (= e!479416 (and e!479413 mapRes!26531))))

(declare-fun condMapEmpty!26531 () Bool)

(declare-datatypes ((V!27209 0))(
  ( (V!27210 (val!8358 Int)) )
))
(declare-datatypes ((ValueCell!7871 0))(
  ( (ValueCellFull!7871 (v!10779 V!27209)) (EmptyCell!7871) )
))
(declare-datatypes ((array!49398 0))(
  ( (array!49399 (arr!23726 (Array (_ BitVec 32) ValueCell!7871)) (size!24167 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49398)

(declare-fun mapDefault!26531 () ValueCell!7871)

