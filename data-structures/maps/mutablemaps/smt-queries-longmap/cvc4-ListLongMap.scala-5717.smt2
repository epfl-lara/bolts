; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74118 () Bool)

(assert start!74118)

(declare-fun b_free!14999 () Bool)

(declare-fun b_next!14999 () Bool)

(assert (=> start!74118 (= b_free!14999 (not b_next!14999))))

(declare-fun tp!52511 () Bool)

(declare-fun b_and!24769 () Bool)

(assert (=> start!74118 (= tp!52511 b_and!24769)))

(declare-fun b!871558 () Bool)

(declare-fun e!485284 () Bool)

(declare-fun tp_is_empty!17141 () Bool)

(assert (=> b!871558 (= e!485284 tp_is_empty!17141)))

(declare-fun b!871559 () Bool)

(declare-fun res!592544 () Bool)

(declare-fun e!485286 () Bool)

(assert (=> b!871559 (=> (not res!592544) (not e!485286))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50410 0))(
  ( (array!50411 (arr!24232 (Array (_ BitVec 32) (_ BitVec 64))) (size!24673 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50410)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!871559 (= res!592544 (and (= (select (arr!24232 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!871560 () Bool)

(declare-fun e!485285 () Bool)

(declare-fun mapRes!27311 () Bool)

(assert (=> b!871560 (= e!485285 (and e!485284 mapRes!27311))))

(declare-fun condMapEmpty!27311 () Bool)

(declare-datatypes ((V!27901 0))(
  ( (V!27902 (val!8618 Int)) )
))
(declare-datatypes ((ValueCell!8131 0))(
  ( (ValueCellFull!8131 (v!11039 V!27901)) (EmptyCell!8131) )
))
(declare-datatypes ((array!50412 0))(
  ( (array!50413 (arr!24233 (Array (_ BitVec 32) ValueCell!8131)) (size!24674 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50412)

(declare-fun mapDefault!27311 () ValueCell!8131)

