; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74070 () Bool)

(assert start!74070)

(declare-fun b_free!14957 () Bool)

(declare-fun b_next!14957 () Bool)

(assert (=> start!74070 (= b_free!14957 (not b_next!14957))))

(declare-fun tp!52375 () Bool)

(declare-fun b_and!24727 () Bool)

(assert (=> start!74070 (= tp!52375 b_and!24727)))

(declare-fun b!870729 () Bool)

(declare-fun e!484858 () Bool)

(declare-fun e!484863 () Bool)

(declare-fun mapRes!27239 () Bool)

(assert (=> b!870729 (= e!484858 (and e!484863 mapRes!27239))))

(declare-fun condMapEmpty!27239 () Bool)

(declare-datatypes ((V!27837 0))(
  ( (V!27838 (val!8594 Int)) )
))
(declare-datatypes ((ValueCell!8107 0))(
  ( (ValueCellFull!8107 (v!11015 V!27837)) (EmptyCell!8107) )
))
(declare-datatypes ((array!50318 0))(
  ( (array!50319 (arr!24186 (Array (_ BitVec 32) ValueCell!8107)) (size!24627 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50318)

(declare-fun mapDefault!27239 () ValueCell!8107)

