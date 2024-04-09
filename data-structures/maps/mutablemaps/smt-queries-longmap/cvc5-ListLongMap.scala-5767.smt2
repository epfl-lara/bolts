; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74532 () Bool)

(assert start!74532)

(declare-fun b_free!15193 () Bool)

(declare-fun b_next!15193 () Bool)

(assert (=> start!74532 (= b_free!15193 (not b_next!15193))))

(declare-fun tp!53261 () Bool)

(declare-fun b_and!25087 () Bool)

(assert (=> start!74532 (= tp!53261 b_and!25087)))

(declare-fun b!877370 () Bool)

(declare-fun res!596129 () Bool)

(declare-fun e!488431 () Bool)

(assert (=> b!877370 (=> (not res!596129) (not e!488431))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28297 0))(
  ( (V!28298 (val!8766 Int)) )
))
(declare-datatypes ((ValueCell!8279 0))(
  ( (ValueCellFull!8279 (v!11202 V!28297)) (EmptyCell!8279) )
))
(declare-datatypes ((array!50984 0))(
  ( (array!50985 (arr!24514 (Array (_ BitVec 32) ValueCell!8279)) (size!24955 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50984)

(declare-datatypes ((array!50986 0))(
  ( (array!50987 (arr!24515 (Array (_ BitVec 32) (_ BitVec 64))) (size!24956 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50986)

(assert (=> b!877370 (= res!596129 (and (= (size!24955 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24956 _keys!868) (size!24955 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27771 () Bool)

(declare-fun mapRes!27771 () Bool)

(assert (=> mapIsEmpty!27771 mapRes!27771))

(declare-fun b!877371 () Bool)

(declare-fun e!488429 () Bool)

(declare-fun e!488433 () Bool)

(assert (=> b!877371 (= e!488429 (and e!488433 mapRes!27771))))

(declare-fun condMapEmpty!27771 () Bool)

(declare-fun mapDefault!27771 () ValueCell!8279)

