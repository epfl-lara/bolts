; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74036 () Bool)

(assert start!74036)

(declare-fun b_free!14923 () Bool)

(declare-fun b_next!14923 () Bool)

(assert (=> start!74036 (= b_free!14923 (not b_next!14923))))

(declare-fun tp!52274 () Bool)

(declare-fun b_and!24693 () Bool)

(assert (=> start!74036 (= tp!52274 b_and!24693)))

(declare-fun b!870117 () Bool)

(declare-fun res!591491 () Bool)

(declare-fun e!484557 () Bool)

(assert (=> b!870117 (=> (not res!591491) (not e!484557))))

(declare-datatypes ((array!50250 0))(
  ( (array!50251 (arr!24152 (Array (_ BitVec 32) (_ BitVec 64))) (size!24593 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50250)

(declare-datatypes ((List!17251 0))(
  ( (Nil!17248) (Cons!17247 (h!18378 (_ BitVec 64)) (t!24296 List!17251)) )
))
(declare-fun arrayNoDuplicates!0 (array!50250 (_ BitVec 32) List!17251) Bool)

(assert (=> b!870117 (= res!591491 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17248))))

(declare-fun b!870118 () Bool)

(declare-fun e!484556 () Bool)

(declare-fun e!484552 () Bool)

(declare-fun mapRes!27188 () Bool)

(assert (=> b!870118 (= e!484556 (and e!484552 mapRes!27188))))

(declare-fun condMapEmpty!27188 () Bool)

(declare-datatypes ((V!27793 0))(
  ( (V!27794 (val!8577 Int)) )
))
(declare-datatypes ((ValueCell!8090 0))(
  ( (ValueCellFull!8090 (v!10998 V!27793)) (EmptyCell!8090) )
))
(declare-datatypes ((array!50252 0))(
  ( (array!50253 (arr!24153 (Array (_ BitVec 32) ValueCell!8090)) (size!24594 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50252)

(declare-fun mapDefault!27188 () ValueCell!8090)

