; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74084 () Bool)

(assert start!74084)

(declare-fun b_free!14971 () Bool)

(declare-fun b_next!14971 () Bool)

(assert (=> start!74084 (= b_free!14971 (not b_next!14971))))

(declare-fun tp!52417 () Bool)

(declare-fun b_and!24741 () Bool)

(assert (=> start!74084 (= tp!52417 b_and!24741)))

(declare-fun b!870981 () Bool)

(declare-fun e!484985 () Bool)

(declare-fun e!484989 () Bool)

(declare-fun mapRes!27260 () Bool)

(assert (=> b!870981 (= e!484985 (and e!484989 mapRes!27260))))

(declare-fun condMapEmpty!27260 () Bool)

(declare-datatypes ((V!27857 0))(
  ( (V!27858 (val!8601 Int)) )
))
(declare-datatypes ((ValueCell!8114 0))(
  ( (ValueCellFull!8114 (v!11022 V!27857)) (EmptyCell!8114) )
))
(declare-datatypes ((array!50344 0))(
  ( (array!50345 (arr!24199 (Array (_ BitVec 32) ValueCell!8114)) (size!24640 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50344)

(declare-fun mapDefault!27260 () ValueCell!8114)

