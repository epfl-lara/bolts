; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73968 () Bool)

(assert start!73968)

(declare-fun b_free!14855 () Bool)

(declare-fun b_next!14855 () Bool)

(assert (=> start!73968 (= b_free!14855 (not b_next!14855))))

(declare-fun tp!52069 () Bool)

(declare-fun b_and!24625 () Bool)

(assert (=> start!73968 (= tp!52069 b_and!24625)))

(declare-fun b!868893 () Bool)

(declare-fun e!483943 () Bool)

(declare-fun e!483945 () Bool)

(declare-fun mapRes!27086 () Bool)

(assert (=> b!868893 (= e!483943 (and e!483945 mapRes!27086))))

(declare-fun condMapEmpty!27086 () Bool)

(declare-datatypes ((V!27701 0))(
  ( (V!27702 (val!8543 Int)) )
))
(declare-datatypes ((ValueCell!8056 0))(
  ( (ValueCellFull!8056 (v!10964 V!27701)) (EmptyCell!8056) )
))
(declare-datatypes ((array!50116 0))(
  ( (array!50117 (arr!24085 (Array (_ BitVec 32) ValueCell!8056)) (size!24526 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50116)

(declare-fun mapDefault!27086 () ValueCell!8056)

