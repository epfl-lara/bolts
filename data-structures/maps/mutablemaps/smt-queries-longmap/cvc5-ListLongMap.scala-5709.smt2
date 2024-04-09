; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74066 () Bool)

(assert start!74066)

(declare-fun b_free!14953 () Bool)

(declare-fun b_next!14953 () Bool)

(assert (=> start!74066 (= b_free!14953 (not b_next!14953))))

(declare-fun tp!52364 () Bool)

(declare-fun b_and!24723 () Bool)

(assert (=> start!74066 (= tp!52364 b_and!24723)))

(declare-fun b!870657 () Bool)

(declare-fun res!591892 () Bool)

(declare-fun e!484823 () Bool)

(assert (=> b!870657 (=> (not res!591892) (not e!484823))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870657 (= res!591892 (validKeyInArray!0 k!854))))

(declare-fun b!870658 () Bool)

(declare-fun res!591893 () Bool)

(assert (=> b!870658 (=> (not res!591893) (not e!484823))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50310 0))(
  ( (array!50311 (arr!24182 (Array (_ BitVec 32) (_ BitVec 64))) (size!24623 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50310)

(assert (=> b!870658 (= res!591893 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24623 _keys!868))))))

(declare-fun b!870659 () Bool)

(declare-fun e!484822 () Bool)

(declare-fun e!484824 () Bool)

(declare-fun mapRes!27233 () Bool)

(assert (=> b!870659 (= e!484822 (and e!484824 mapRes!27233))))

(declare-fun condMapEmpty!27233 () Bool)

(declare-datatypes ((V!27833 0))(
  ( (V!27834 (val!8592 Int)) )
))
(declare-datatypes ((ValueCell!8105 0))(
  ( (ValueCellFull!8105 (v!11013 V!27833)) (EmptyCell!8105) )
))
(declare-datatypes ((array!50312 0))(
  ( (array!50313 (arr!24183 (Array (_ BitVec 32) ValueCell!8105)) (size!24624 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50312)

(declare-fun mapDefault!27233 () ValueCell!8105)

