; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74660 () Bool)

(assert start!74660)

(declare-fun b_free!15301 () Bool)

(declare-fun b_next!15301 () Bool)

(assert (=> start!74660 (= b_free!15301 (not b_next!15301))))

(declare-fun tp!53589 () Bool)

(declare-fun b_and!25223 () Bool)

(assert (=> start!74660 (= tp!53589 b_and!25223)))

(declare-fun b!879397 () Bool)

(declare-fun res!597576 () Bool)

(declare-fun e!489428 () Bool)

(assert (=> b!879397 (=> (not res!597576) (not e!489428))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51198 0))(
  ( (array!51199 (arr!24620 (Array (_ BitVec 32) (_ BitVec 64))) (size!25061 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51198)

(assert (=> b!879397 (= res!597576 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25061 _keys!868))))))

(declare-fun b!879398 () Bool)

(declare-fun res!597578 () Bool)

(assert (=> b!879398 (=> (not res!597578) (not e!489428))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879398 (= res!597578 (and (= (select (arr!24620 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879399 () Bool)

(declare-fun e!489429 () Bool)

(declare-fun e!489426 () Bool)

(declare-fun mapRes!27936 () Bool)

(assert (=> b!879399 (= e!489429 (and e!489426 mapRes!27936))))

(declare-fun condMapEmpty!27936 () Bool)

(declare-datatypes ((V!28441 0))(
  ( (V!28442 (val!8820 Int)) )
))
(declare-datatypes ((ValueCell!8333 0))(
  ( (ValueCellFull!8333 (v!11260 V!28441)) (EmptyCell!8333) )
))
(declare-datatypes ((array!51200 0))(
  ( (array!51201 (arr!24621 (Array (_ BitVec 32) ValueCell!8333)) (size!25062 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51200)

(declare-fun mapDefault!27936 () ValueCell!8333)

