; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74048 () Bool)

(assert start!74048)

(declare-fun b_free!14935 () Bool)

(declare-fun b_next!14935 () Bool)

(assert (=> start!74048 (= b_free!14935 (not b_next!14935))))

(declare-fun tp!52310 () Bool)

(declare-fun b_and!24705 () Bool)

(assert (=> start!74048 (= tp!52310 b_and!24705)))

(declare-fun res!591654 () Bool)

(declare-fun e!484662 () Bool)

(assert (=> start!74048 (=> (not res!591654) (not e!484662))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50274 0))(
  ( (array!50275 (arr!24164 (Array (_ BitVec 32) (_ BitVec 64))) (size!24605 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50274)

(assert (=> start!74048 (= res!591654 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24605 _keys!868))))))

(assert (=> start!74048 e!484662))

(declare-fun tp_is_empty!17071 () Bool)

(assert (=> start!74048 tp_is_empty!17071))

(assert (=> start!74048 true))

(assert (=> start!74048 tp!52310))

(declare-fun array_inv!19056 (array!50274) Bool)

(assert (=> start!74048 (array_inv!19056 _keys!868)))

(declare-datatypes ((V!27809 0))(
  ( (V!27810 (val!8583 Int)) )
))
(declare-datatypes ((ValueCell!8096 0))(
  ( (ValueCellFull!8096 (v!11004 V!27809)) (EmptyCell!8096) )
))
(declare-datatypes ((array!50276 0))(
  ( (array!50277 (arr!24165 (Array (_ BitVec 32) ValueCell!8096)) (size!24606 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50276)

(declare-fun e!484660 () Bool)

(declare-fun array_inv!19057 (array!50276) Bool)

(assert (=> start!74048 (and (array_inv!19057 _values!688) e!484660)))

(declare-fun b!870333 () Bool)

(declare-fun res!591650 () Bool)

(assert (=> b!870333 (=> (not res!591650) (not e!484662))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870333 (= res!591650 (validMask!0 mask!1196))))

(declare-fun b!870334 () Bool)

(declare-fun e!484664 () Bool)

(assert (=> b!870334 (= e!484664 tp_is_empty!17071)))

(declare-fun b!870335 () Bool)

(declare-fun res!591656 () Bool)

(assert (=> b!870335 (=> (not res!591656) (not e!484662))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870335 (= res!591656 (validKeyInArray!0 k!854))))

(declare-fun b!870336 () Bool)

(declare-fun e!484661 () Bool)

(assert (=> b!870336 (= e!484661 tp_is_empty!17071)))

(declare-fun b!870337 () Bool)

(declare-fun res!591651 () Bool)

(assert (=> b!870337 (=> (not res!591651) (not e!484662))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!870337 (= res!591651 (and (= (size!24606 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24605 _keys!868) (size!24606 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870338 () Bool)

(declare-fun mapRes!27206 () Bool)

(assert (=> b!870338 (= e!484660 (and e!484664 mapRes!27206))))

(declare-fun condMapEmpty!27206 () Bool)

(declare-fun mapDefault!27206 () ValueCell!8096)

