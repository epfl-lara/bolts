; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73964 () Bool)

(assert start!73964)

(declare-fun b_free!14851 () Bool)

(declare-fun b_next!14851 () Bool)

(assert (=> start!73964 (= b_free!14851 (not b_next!14851))))

(declare-fun tp!52058 () Bool)

(declare-fun b_and!24621 () Bool)

(assert (=> start!73964 (= tp!52058 b_and!24621)))

(declare-fun res!590522 () Bool)

(declare-fun e!483905 () Bool)

(assert (=> start!73964 (=> (not res!590522) (not e!483905))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50108 0))(
  ( (array!50109 (arr!24081 (Array (_ BitVec 32) (_ BitVec 64))) (size!24522 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50108)

(assert (=> start!73964 (= res!590522 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24522 _keys!868))))))

(assert (=> start!73964 e!483905))

(declare-fun tp_is_empty!16987 () Bool)

(assert (=> start!73964 tp_is_empty!16987))

(assert (=> start!73964 true))

(assert (=> start!73964 tp!52058))

(declare-fun array_inv!18998 (array!50108) Bool)

(assert (=> start!73964 (array_inv!18998 _keys!868)))

(declare-datatypes ((V!27697 0))(
  ( (V!27698 (val!8541 Int)) )
))
(declare-datatypes ((ValueCell!8054 0))(
  ( (ValueCellFull!8054 (v!10962 V!27697)) (EmptyCell!8054) )
))
(declare-datatypes ((array!50110 0))(
  ( (array!50111 (arr!24082 (Array (_ BitVec 32) ValueCell!8054)) (size!24523 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50110)

(declare-fun e!483908 () Bool)

(declare-fun array_inv!18999 (array!50110) Bool)

(assert (=> start!73964 (and (array_inv!18999 _values!688) e!483908)))

(declare-fun b!868821 () Bool)

(declare-fun e!483907 () Bool)

(assert (=> b!868821 (= e!483907 (not true))))

(declare-fun v!557 () V!27697)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394590 () array!50110)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!27697)

(declare-fun zeroValue!654 () V!27697)

(declare-datatypes ((tuple2!11342 0))(
  ( (tuple2!11343 (_1!5681 (_ BitVec 64)) (_2!5681 V!27697)) )
))
(declare-datatypes ((List!17199 0))(
  ( (Nil!17196) (Cons!17195 (h!18326 tuple2!11342) (t!24244 List!17199)) )
))
(declare-datatypes ((ListLongMap!10125 0))(
  ( (ListLongMap!10126 (toList!5078 List!17199)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3042 (array!50108 array!50110 (_ BitVec 32) (_ BitVec 32) V!27697 V!27697 (_ BitVec 32) Int) ListLongMap!10125)

(declare-fun +!2365 (ListLongMap!10125 tuple2!11342) ListLongMap!10125)

(assert (=> b!868821 (= (getCurrentListMapNoExtraKeys!3042 _keys!868 lt!394590 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2365 (getCurrentListMapNoExtraKeys!3042 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11343 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29780 0))(
  ( (Unit!29781) )
))
(declare-fun lt!394593 () Unit!29780)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!596 (array!50108 array!50110 (_ BitVec 32) (_ BitVec 32) V!27697 V!27697 (_ BitVec 32) (_ BitVec 64) V!27697 (_ BitVec 32) Int) Unit!29780)

(assert (=> b!868821 (= lt!394593 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!596 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27080 () Bool)

(declare-fun mapRes!27080 () Bool)

(declare-fun tp!52057 () Bool)

(declare-fun e!483904 () Bool)

(assert (=> mapNonEmpty!27080 (= mapRes!27080 (and tp!52057 e!483904))))

(declare-fun mapRest!27080 () (Array (_ BitVec 32) ValueCell!8054))

(declare-fun mapValue!27080 () ValueCell!8054)

(declare-fun mapKey!27080 () (_ BitVec 32))

(assert (=> mapNonEmpty!27080 (= (arr!24082 _values!688) (store mapRest!27080 mapKey!27080 mapValue!27080))))

(declare-fun b!868822 () Bool)

(declare-fun e!483909 () Bool)

(assert (=> b!868822 (= e!483909 tp_is_empty!16987)))

(declare-fun b!868823 () Bool)

(declare-fun res!590519 () Bool)

(assert (=> b!868823 (=> (not res!590519) (not e!483905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868823 (= res!590519 (validKeyInArray!0 k!854))))

(declare-fun b!868824 () Bool)

(declare-fun res!590518 () Bool)

(assert (=> b!868824 (=> (not res!590518) (not e!483905))))

(declare-datatypes ((List!17200 0))(
  ( (Nil!17197) (Cons!17196 (h!18327 (_ BitVec 64)) (t!24245 List!17200)) )
))
(declare-fun arrayNoDuplicates!0 (array!50108 (_ BitVec 32) List!17200) Bool)

(assert (=> b!868824 (= res!590518 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17197))))

(declare-fun b!868825 () Bool)

(assert (=> b!868825 (= e!483905 e!483907)))

(declare-fun res!590516 () Bool)

(assert (=> b!868825 (=> (not res!590516) (not e!483907))))

(assert (=> b!868825 (= res!590516 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394591 () ListLongMap!10125)

(assert (=> b!868825 (= lt!394591 (getCurrentListMapNoExtraKeys!3042 _keys!868 lt!394590 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868825 (= lt!394590 (array!50111 (store (arr!24082 _values!688) i!612 (ValueCellFull!8054 v!557)) (size!24523 _values!688)))))

(declare-fun lt!394592 () ListLongMap!10125)

(assert (=> b!868825 (= lt!394592 (getCurrentListMapNoExtraKeys!3042 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868826 () Bool)

(assert (=> b!868826 (= e!483904 tp_is_empty!16987)))

(declare-fun b!868827 () Bool)

(assert (=> b!868827 (= e!483908 (and e!483909 mapRes!27080))))

(declare-fun condMapEmpty!27080 () Bool)

(declare-fun mapDefault!27080 () ValueCell!8054)

