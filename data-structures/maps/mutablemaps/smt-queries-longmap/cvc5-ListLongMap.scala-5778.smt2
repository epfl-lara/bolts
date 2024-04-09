; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74598 () Bool)

(assert start!74598)

(declare-fun b_free!15259 () Bool)

(declare-fun b_next!15259 () Bool)

(assert (=> start!74598 (= b_free!15259 (not b_next!15259))))

(declare-fun tp!53459 () Bool)

(declare-fun b_and!25153 () Bool)

(assert (=> start!74598 (= tp!53459 b_and!25153)))

(declare-fun b!878459 () Bool)

(declare-fun res!596924 () Bool)

(declare-fun e!488927 () Bool)

(assert (=> b!878459 (=> (not res!596924) (not e!488927))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51112 0))(
  ( (array!51113 (arr!24578 (Array (_ BitVec 32) (_ BitVec 64))) (size!25019 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51112)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878459 (= res!596924 (and (= (select (arr!24578 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878460 () Bool)

(declare-fun e!488925 () Bool)

(declare-fun e!488928 () Bool)

(declare-fun mapRes!27870 () Bool)

(assert (=> b!878460 (= e!488925 (and e!488928 mapRes!27870))))

(declare-fun condMapEmpty!27870 () Bool)

(declare-datatypes ((V!28385 0))(
  ( (V!28386 (val!8799 Int)) )
))
(declare-datatypes ((ValueCell!8312 0))(
  ( (ValueCellFull!8312 (v!11235 V!28385)) (EmptyCell!8312) )
))
(declare-datatypes ((array!51114 0))(
  ( (array!51115 (arr!24579 (Array (_ BitVec 32) ValueCell!8312)) (size!25020 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51114)

(declare-fun mapDefault!27870 () ValueCell!8312)

