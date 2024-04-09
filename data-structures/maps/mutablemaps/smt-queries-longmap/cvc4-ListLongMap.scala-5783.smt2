; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74632 () Bool)

(assert start!74632)

(declare-fun b_free!15293 () Bool)

(declare-fun b_next!15293 () Bool)

(assert (=> start!74632 (= b_free!15293 (not b_next!15293))))

(declare-fun tp!53562 () Bool)

(declare-fun b_and!25191 () Bool)

(assert (=> start!74632 (= tp!53562 b_and!25191)))

(declare-fun b!879103 () Bool)

(declare-fun res!597411 () Bool)

(declare-fun e!489260 () Bool)

(assert (=> b!879103 (=> (not res!597411) (not e!489260))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51180 0))(
  ( (array!51181 (arr!24612 (Array (_ BitVec 32) (_ BitVec 64))) (size!25053 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51180)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879103 (= res!597411 (and (= (select (arr!24612 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879104 () Bool)

(declare-fun e!489263 () Bool)

(declare-fun e!489259 () Bool)

(declare-fun mapRes!27921 () Bool)

(assert (=> b!879104 (= e!489263 (and e!489259 mapRes!27921))))

(declare-fun condMapEmpty!27921 () Bool)

(declare-datatypes ((V!28429 0))(
  ( (V!28430 (val!8816 Int)) )
))
(declare-datatypes ((ValueCell!8329 0))(
  ( (ValueCellFull!8329 (v!11252 V!28429)) (EmptyCell!8329) )
))
(declare-datatypes ((array!51182 0))(
  ( (array!51183 (arr!24613 (Array (_ BitVec 32) ValueCell!8329)) (size!25054 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51182)

(declare-fun mapDefault!27921 () ValueCell!8329)

