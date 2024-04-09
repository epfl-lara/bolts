; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73988 () Bool)

(assert start!73988)

(declare-fun b_free!14875 () Bool)

(declare-fun b_next!14875 () Bool)

(assert (=> start!73988 (= b_free!14875 (not b_next!14875))))

(declare-fun tp!52130 () Bool)

(declare-fun b_and!24645 () Bool)

(assert (=> start!73988 (= tp!52130 b_and!24645)))

(declare-fun b!869253 () Bool)

(declare-fun res!590839 () Bool)

(declare-fun e!484121 () Bool)

(assert (=> b!869253 (=> (not res!590839) (not e!484121))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50154 0))(
  ( (array!50155 (arr!24104 (Array (_ BitVec 32) (_ BitVec 64))) (size!24545 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50154)

(declare-datatypes ((V!27729 0))(
  ( (V!27730 (val!8553 Int)) )
))
(declare-datatypes ((ValueCell!8066 0))(
  ( (ValueCellFull!8066 (v!10974 V!27729)) (EmptyCell!8066) )
))
(declare-datatypes ((array!50156 0))(
  ( (array!50157 (arr!24105 (Array (_ BitVec 32) ValueCell!8066)) (size!24546 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50156)

(assert (=> b!869253 (= res!590839 (and (= (size!24546 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24545 _keys!868) (size!24546 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27116 () Bool)

(declare-fun mapRes!27116 () Bool)

(declare-fun tp!52129 () Bool)

(declare-fun e!484120 () Bool)

(assert (=> mapNonEmpty!27116 (= mapRes!27116 (and tp!52129 e!484120))))

(declare-fun mapValue!27116 () ValueCell!8066)

(declare-fun mapRest!27116 () (Array (_ BitVec 32) ValueCell!8066))

(declare-fun mapKey!27116 () (_ BitVec 32))

(assert (=> mapNonEmpty!27116 (= (arr!24105 _values!688) (store mapRest!27116 mapKey!27116 mapValue!27116))))

(declare-fun b!869254 () Bool)

(declare-fun e!484125 () Bool)

(assert (=> b!869254 (= e!484125 (not true))))

(declare-fun lt!394736 () array!50156)

(declare-fun v!557 () V!27729)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!27729)

(declare-fun zeroValue!654 () V!27729)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!11356 0))(
  ( (tuple2!11357 (_1!5688 (_ BitVec 64)) (_2!5688 V!27729)) )
))
(declare-datatypes ((List!17214 0))(
  ( (Nil!17211) (Cons!17210 (h!18341 tuple2!11356) (t!24259 List!17214)) )
))
(declare-datatypes ((ListLongMap!10139 0))(
  ( (ListLongMap!10140 (toList!5085 List!17214)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3049 (array!50154 array!50156 (_ BitVec 32) (_ BitVec 32) V!27729 V!27729 (_ BitVec 32) Int) ListLongMap!10139)

(declare-fun +!2371 (ListLongMap!10139 tuple2!11356) ListLongMap!10139)

(assert (=> b!869254 (= (getCurrentListMapNoExtraKeys!3049 _keys!868 lt!394736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2371 (getCurrentListMapNoExtraKeys!3049 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11357 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29792 0))(
  ( (Unit!29793) )
))
(declare-fun lt!394735 () Unit!29792)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!602 (array!50154 array!50156 (_ BitVec 32) (_ BitVec 32) V!27729 V!27729 (_ BitVec 32) (_ BitVec 64) V!27729 (_ BitVec 32) Int) Unit!29792)

(assert (=> b!869254 (= lt!394735 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!602 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869255 () Bool)

(assert (=> b!869255 (= e!484121 e!484125)))

(declare-fun res!590845 () Bool)

(assert (=> b!869255 (=> (not res!590845) (not e!484125))))

(assert (=> b!869255 (= res!590845 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394737 () ListLongMap!10139)

(assert (=> b!869255 (= lt!394737 (getCurrentListMapNoExtraKeys!3049 _keys!868 lt!394736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!869255 (= lt!394736 (array!50157 (store (arr!24105 _values!688) i!612 (ValueCellFull!8066 v!557)) (size!24546 _values!688)))))

(declare-fun lt!394734 () ListLongMap!10139)

(assert (=> b!869255 (= lt!394734 (getCurrentListMapNoExtraKeys!3049 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27116 () Bool)

(assert (=> mapIsEmpty!27116 mapRes!27116))

(declare-fun b!869256 () Bool)

(declare-fun res!590840 () Bool)

(assert (=> b!869256 (=> (not res!590840) (not e!484121))))

(assert (=> b!869256 (= res!590840 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24545 _keys!868))))))

(declare-fun b!869257 () Bool)

(declare-fun e!484122 () Bool)

(declare-fun tp_is_empty!17011 () Bool)

(assert (=> b!869257 (= e!484122 tp_is_empty!17011)))

(declare-fun b!869258 () Bool)

(declare-fun res!590846 () Bool)

(assert (=> b!869258 (=> (not res!590846) (not e!484121))))

(declare-datatypes ((List!17215 0))(
  ( (Nil!17212) (Cons!17211 (h!18342 (_ BitVec 64)) (t!24260 List!17215)) )
))
(declare-fun arrayNoDuplicates!0 (array!50154 (_ BitVec 32) List!17215) Bool)

(assert (=> b!869258 (= res!590846 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17212))))

(declare-fun b!869259 () Bool)

(assert (=> b!869259 (= e!484120 tp_is_empty!17011)))

(declare-fun b!869260 () Bool)

(declare-fun res!590847 () Bool)

(assert (=> b!869260 (=> (not res!590847) (not e!484121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50154 (_ BitVec 32)) Bool)

(assert (=> b!869260 (= res!590847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869261 () Bool)

(declare-fun res!590844 () Bool)

(assert (=> b!869261 (=> (not res!590844) (not e!484121))))

(assert (=> b!869261 (= res!590844 (and (= (select (arr!24104 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!590842 () Bool)

(assert (=> start!73988 (=> (not res!590842) (not e!484121))))

(assert (=> start!73988 (= res!590842 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24545 _keys!868))))))

(assert (=> start!73988 e!484121))

(assert (=> start!73988 tp_is_empty!17011))

(assert (=> start!73988 true))

(assert (=> start!73988 tp!52130))

(declare-fun array_inv!19012 (array!50154) Bool)

(assert (=> start!73988 (array_inv!19012 _keys!868)))

(declare-fun e!484123 () Bool)

(declare-fun array_inv!19013 (array!50156) Bool)

(assert (=> start!73988 (and (array_inv!19013 _values!688) e!484123)))

(declare-fun b!869262 () Bool)

(declare-fun res!590843 () Bool)

(assert (=> b!869262 (=> (not res!590843) (not e!484121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869262 (= res!590843 (validMask!0 mask!1196))))

(declare-fun b!869263 () Bool)

(declare-fun res!590841 () Bool)

(assert (=> b!869263 (=> (not res!590841) (not e!484121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869263 (= res!590841 (validKeyInArray!0 k!854))))

(declare-fun b!869264 () Bool)

(assert (=> b!869264 (= e!484123 (and e!484122 mapRes!27116))))

(declare-fun condMapEmpty!27116 () Bool)

(declare-fun mapDefault!27116 () ValueCell!8066)

