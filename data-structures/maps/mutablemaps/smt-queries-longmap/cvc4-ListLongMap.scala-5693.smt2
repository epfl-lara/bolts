; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73974 () Bool)

(assert start!73974)

(declare-fun b_free!14861 () Bool)

(declare-fun b_next!14861 () Bool)

(assert (=> start!73974 (= b_free!14861 (not b_next!14861))))

(declare-fun tp!52087 () Bool)

(declare-fun b_and!24631 () Bool)

(assert (=> start!73974 (= tp!52087 b_and!24631)))

(declare-fun mapIsEmpty!27095 () Bool)

(declare-fun mapRes!27095 () Bool)

(assert (=> mapIsEmpty!27095 mapRes!27095))

(declare-fun res!590651 () Bool)

(declare-fun e!483994 () Bool)

(assert (=> start!73974 (=> (not res!590651) (not e!483994))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50126 0))(
  ( (array!50127 (arr!24090 (Array (_ BitVec 32) (_ BitVec 64))) (size!24531 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50126)

(assert (=> start!73974 (= res!590651 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24531 _keys!868))))))

(assert (=> start!73974 e!483994))

(declare-fun tp_is_empty!16997 () Bool)

(assert (=> start!73974 tp_is_empty!16997))

(assert (=> start!73974 true))

(assert (=> start!73974 tp!52087))

(declare-fun array_inv!19004 (array!50126) Bool)

(assert (=> start!73974 (array_inv!19004 _keys!868)))

(declare-datatypes ((V!27709 0))(
  ( (V!27710 (val!8546 Int)) )
))
(declare-datatypes ((ValueCell!8059 0))(
  ( (ValueCellFull!8059 (v!10967 V!27709)) (EmptyCell!8059) )
))
(declare-datatypes ((array!50128 0))(
  ( (array!50129 (arr!24091 (Array (_ BitVec 32) ValueCell!8059)) (size!24532 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50128)

(declare-fun e!483998 () Bool)

(declare-fun array_inv!19005 (array!50128) Bool)

(assert (=> start!73974 (and (array_inv!19005 _values!688) e!483998)))

(declare-fun b!869001 () Bool)

(declare-fun e!483997 () Bool)

(assert (=> b!869001 (= e!483994 e!483997)))

(declare-fun res!590655 () Bool)

(assert (=> b!869001 (=> (not res!590655) (not e!483997))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869001 (= res!590655 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394650 () array!50128)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11350 0))(
  ( (tuple2!11351 (_1!5685 (_ BitVec 64)) (_2!5685 V!27709)) )
))
(declare-datatypes ((List!17207 0))(
  ( (Nil!17204) (Cons!17203 (h!18334 tuple2!11350) (t!24252 List!17207)) )
))
(declare-datatypes ((ListLongMap!10133 0))(
  ( (ListLongMap!10134 (toList!5082 List!17207)) )
))
(declare-fun lt!394653 () ListLongMap!10133)

(declare-fun minValue!654 () V!27709)

(declare-fun zeroValue!654 () V!27709)

(declare-fun getCurrentListMapNoExtraKeys!3046 (array!50126 array!50128 (_ BitVec 32) (_ BitVec 32) V!27709 V!27709 (_ BitVec 32) Int) ListLongMap!10133)

(assert (=> b!869001 (= lt!394653 (getCurrentListMapNoExtraKeys!3046 _keys!868 lt!394650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27709)

(assert (=> b!869001 (= lt!394650 (array!50129 (store (arr!24091 _values!688) i!612 (ValueCellFull!8059 v!557)) (size!24532 _values!688)))))

(declare-fun lt!394651 () ListLongMap!10133)

(assert (=> b!869001 (= lt!394651 (getCurrentListMapNoExtraKeys!3046 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869002 () Bool)

(declare-fun res!590657 () Bool)

(assert (=> b!869002 (=> (not res!590657) (not e!483994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50126 (_ BitVec 32)) Bool)

(assert (=> b!869002 (= res!590657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869003 () Bool)

(assert (=> b!869003 (= e!483997 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2368 (ListLongMap!10133 tuple2!11350) ListLongMap!10133)

(assert (=> b!869003 (= (getCurrentListMapNoExtraKeys!3046 _keys!868 lt!394650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2368 (getCurrentListMapNoExtraKeys!3046 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11351 k!854 v!557)))))

(declare-datatypes ((Unit!29786 0))(
  ( (Unit!29787) )
))
(declare-fun lt!394652 () Unit!29786)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!599 (array!50126 array!50128 (_ BitVec 32) (_ BitVec 32) V!27709 V!27709 (_ BitVec 32) (_ BitVec 64) V!27709 (_ BitVec 32) Int) Unit!29786)

(assert (=> b!869003 (= lt!394652 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!599 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869004 () Bool)

(declare-fun res!590654 () Bool)

(assert (=> b!869004 (=> (not res!590654) (not e!483994))))

(assert (=> b!869004 (= res!590654 (and (= (select (arr!24090 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869005 () Bool)

(declare-fun e!483996 () Bool)

(assert (=> b!869005 (= e!483998 (and e!483996 mapRes!27095))))

(declare-fun condMapEmpty!27095 () Bool)

(declare-fun mapDefault!27095 () ValueCell!8059)

