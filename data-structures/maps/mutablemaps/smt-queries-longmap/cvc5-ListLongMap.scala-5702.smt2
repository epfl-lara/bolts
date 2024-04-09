; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74024 () Bool)

(assert start!74024)

(declare-fun b_free!14911 () Bool)

(declare-fun b_next!14911 () Bool)

(assert (=> start!74024 (= b_free!14911 (not b_next!14911))))

(declare-fun tp!52238 () Bool)

(declare-fun b_and!24681 () Bool)

(assert (=> start!74024 (= tp!52238 b_and!24681)))

(declare-fun b!869901 () Bool)

(declare-fun res!591328 () Bool)

(declare-fun e!484445 () Bool)

(assert (=> b!869901 (=> (not res!591328) (not e!484445))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50226 0))(
  ( (array!50227 (arr!24140 (Array (_ BitVec 32) (_ BitVec 64))) (size!24581 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50226)

(assert (=> b!869901 (= res!591328 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24581 _keys!868))))))

(declare-fun b!869902 () Bool)

(declare-fun e!484449 () Bool)

(declare-fun e!484447 () Bool)

(declare-fun mapRes!27170 () Bool)

(assert (=> b!869902 (= e!484449 (and e!484447 mapRes!27170))))

(declare-fun condMapEmpty!27170 () Bool)

(declare-datatypes ((V!27777 0))(
  ( (V!27778 (val!8571 Int)) )
))
(declare-datatypes ((ValueCell!8084 0))(
  ( (ValueCellFull!8084 (v!10992 V!27777)) (EmptyCell!8084) )
))
(declare-datatypes ((array!50228 0))(
  ( (array!50229 (arr!24141 (Array (_ BitVec 32) ValueCell!8084)) (size!24582 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50228)

(declare-fun mapDefault!27170 () ValueCell!8084)

