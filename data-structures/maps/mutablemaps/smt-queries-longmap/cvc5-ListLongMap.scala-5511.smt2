; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72878 () Bool)

(assert start!72878)

(declare-fun b_free!13765 () Bool)

(declare-fun b_next!13765 () Bool)

(assert (=> start!72878 (= b_free!13765 (not b_next!13765))))

(declare-fun tp!48799 () Bool)

(declare-fun b_and!22869 () Bool)

(assert (=> start!72878 (= tp!48799 b_and!22869)))

(declare-fun b!845356 () Bool)

(declare-fun res!574404 () Bool)

(declare-fun e!471943 () Bool)

(assert (=> b!845356 (=> (not res!574404) (not e!471943))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845356 (= res!574404 (validMask!0 mask!1196))))

(declare-fun b!845357 () Bool)

(declare-fun e!471944 () Bool)

(declare-fun e!471942 () Bool)

(declare-fun mapRes!25451 () Bool)

(assert (=> b!845357 (= e!471944 (and e!471942 mapRes!25451))))

(declare-fun condMapEmpty!25451 () Bool)

(declare-datatypes ((V!26249 0))(
  ( (V!26250 (val!7998 Int)) )
))
(declare-datatypes ((ValueCell!7511 0))(
  ( (ValueCellFull!7511 (v!10419 V!26249)) (EmptyCell!7511) )
))
(declare-datatypes ((array!48006 0))(
  ( (array!48007 (arr!23030 (Array (_ BitVec 32) ValueCell!7511)) (size!23471 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48006)

(declare-fun mapDefault!25451 () ValueCell!7511)

