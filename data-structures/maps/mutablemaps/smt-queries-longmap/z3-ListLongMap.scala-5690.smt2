; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73954 () Bool)

(assert start!73954)

(declare-fun b_free!14841 () Bool)

(declare-fun b_next!14841 () Bool)

(assert (=> start!73954 (= b_free!14841 (not b_next!14841))))

(declare-fun tp!52028 () Bool)

(declare-fun b_and!24611 () Bool)

(assert (=> start!73954 (= tp!52028 b_and!24611)))

(declare-fun b!868641 () Bool)

(declare-fun res!590385 () Bool)

(declare-fun e!483818 () Bool)

(assert (=> b!868641 (=> (not res!590385) (not e!483818))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50088 0))(
  ( (array!50089 (arr!24071 (Array (_ BitVec 32) (_ BitVec 64))) (size!24512 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50088)

(assert (=> b!868641 (= res!590385 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24512 _keys!868))))))

(declare-fun b!868642 () Bool)

(declare-fun res!590382 () Bool)

(assert (=> b!868642 (=> (not res!590382) (not e!483818))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868642 (= res!590382 (and (= (select (arr!24071 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868643 () Bool)

(declare-fun e!483817 () Bool)

(assert (=> b!868643 (= e!483818 e!483817)))

(declare-fun res!590387 () Bool)

(assert (=> b!868643 (=> (not res!590387) (not e!483817))))

(assert (=> b!868643 (= res!590387 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27683 0))(
  ( (V!27684 (val!8536 Int)) )
))
(declare-datatypes ((ValueCell!8049 0))(
  ( (ValueCellFull!8049 (v!10957 V!27683)) (EmptyCell!8049) )
))
(declare-datatypes ((array!50090 0))(
  ( (array!50091 (arr!24072 (Array (_ BitVec 32) ValueCell!8049)) (size!24513 (_ BitVec 32))) )
))
(declare-fun lt!394532 () array!50090)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27683)

(declare-fun zeroValue!654 () V!27683)

(declare-datatypes ((tuple2!11332 0))(
  ( (tuple2!11333 (_1!5676 (_ BitVec 64)) (_2!5676 V!27683)) )
))
(declare-datatypes ((List!17191 0))(
  ( (Nil!17188) (Cons!17187 (h!18318 tuple2!11332) (t!24236 List!17191)) )
))
(declare-datatypes ((ListLongMap!10115 0))(
  ( (ListLongMap!10116 (toList!5073 List!17191)) )
))
(declare-fun lt!394530 () ListLongMap!10115)

(declare-fun getCurrentListMapNoExtraKeys!3037 (array!50088 array!50090 (_ BitVec 32) (_ BitVec 32) V!27683 V!27683 (_ BitVec 32) Int) ListLongMap!10115)

(assert (=> b!868643 (= lt!394530 (getCurrentListMapNoExtraKeys!3037 _keys!868 lt!394532 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27683)

(declare-fun _values!688 () array!50090)

(assert (=> b!868643 (= lt!394532 (array!50091 (store (arr!24072 _values!688) i!612 (ValueCellFull!8049 v!557)) (size!24513 _values!688)))))

(declare-fun lt!394533 () ListLongMap!10115)

(assert (=> b!868643 (= lt!394533 (getCurrentListMapNoExtraKeys!3037 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868644 () Bool)

(declare-fun e!483816 () Bool)

(declare-fun e!483819 () Bool)

(declare-fun mapRes!27065 () Bool)

(assert (=> b!868644 (= e!483816 (and e!483819 mapRes!27065))))

(declare-fun condMapEmpty!27065 () Bool)

(declare-fun mapDefault!27065 () ValueCell!8049)

(assert (=> b!868644 (= condMapEmpty!27065 (= (arr!24072 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8049)) mapDefault!27065)))))

(declare-fun b!868645 () Bool)

(declare-fun res!590386 () Bool)

(assert (=> b!868645 (=> (not res!590386) (not e!483818))))

(assert (=> b!868645 (= res!590386 (and (= (size!24513 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24512 _keys!868) (size!24513 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27065 () Bool)

(assert (=> mapIsEmpty!27065 mapRes!27065))

(declare-fun b!868647 () Bool)

(declare-fun res!590384 () Bool)

(assert (=> b!868647 (=> (not res!590384) (not e!483818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868647 (= res!590384 (validMask!0 mask!1196))))

(declare-fun b!868648 () Bool)

(assert (=> b!868648 (= e!483817 (not true))))

(declare-fun +!2362 (ListLongMap!10115 tuple2!11332) ListLongMap!10115)

(assert (=> b!868648 (= (getCurrentListMapNoExtraKeys!3037 _keys!868 lt!394532 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2362 (getCurrentListMapNoExtraKeys!3037 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11333 k0!854 v!557)))))

(declare-datatypes ((Unit!29774 0))(
  ( (Unit!29775) )
))
(declare-fun lt!394531 () Unit!29774)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!593 (array!50088 array!50090 (_ BitVec 32) (_ BitVec 32) V!27683 V!27683 (_ BitVec 32) (_ BitVec 64) V!27683 (_ BitVec 32) Int) Unit!29774)

(assert (=> b!868648 (= lt!394531 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!593 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868649 () Bool)

(declare-fun e!483815 () Bool)

(declare-fun tp_is_empty!16977 () Bool)

(assert (=> b!868649 (= e!483815 tp_is_empty!16977)))

(declare-fun b!868650 () Bool)

(declare-fun res!590388 () Bool)

(assert (=> b!868650 (=> (not res!590388) (not e!483818))))

(declare-datatypes ((List!17192 0))(
  ( (Nil!17189) (Cons!17188 (h!18319 (_ BitVec 64)) (t!24237 List!17192)) )
))
(declare-fun arrayNoDuplicates!0 (array!50088 (_ BitVec 32) List!17192) Bool)

(assert (=> b!868650 (= res!590388 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17189))))

(declare-fun mapNonEmpty!27065 () Bool)

(declare-fun tp!52027 () Bool)

(assert (=> mapNonEmpty!27065 (= mapRes!27065 (and tp!52027 e!483815))))

(declare-fun mapValue!27065 () ValueCell!8049)

(declare-fun mapRest!27065 () (Array (_ BitVec 32) ValueCell!8049))

(declare-fun mapKey!27065 () (_ BitVec 32))

(assert (=> mapNonEmpty!27065 (= (arr!24072 _values!688) (store mapRest!27065 mapKey!27065 mapValue!27065))))

(declare-fun b!868646 () Bool)

(assert (=> b!868646 (= e!483819 tp_is_empty!16977)))

(declare-fun res!590383 () Bool)

(assert (=> start!73954 (=> (not res!590383) (not e!483818))))

(assert (=> start!73954 (= res!590383 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24512 _keys!868))))))

(assert (=> start!73954 e!483818))

(assert (=> start!73954 tp_is_empty!16977))

(assert (=> start!73954 true))

(assert (=> start!73954 tp!52028))

(declare-fun array_inv!18990 (array!50088) Bool)

(assert (=> start!73954 (array_inv!18990 _keys!868)))

(declare-fun array_inv!18991 (array!50090) Bool)

(assert (=> start!73954 (and (array_inv!18991 _values!688) e!483816)))

(declare-fun b!868651 () Bool)

(declare-fun res!590380 () Bool)

(assert (=> b!868651 (=> (not res!590380) (not e!483818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868651 (= res!590380 (validKeyInArray!0 k0!854))))

(declare-fun b!868652 () Bool)

(declare-fun res!590381 () Bool)

(assert (=> b!868652 (=> (not res!590381) (not e!483818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50088 (_ BitVec 32)) Bool)

(assert (=> b!868652 (= res!590381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73954 res!590383) b!868647))

(assert (= (and b!868647 res!590384) b!868645))

(assert (= (and b!868645 res!590386) b!868652))

(assert (= (and b!868652 res!590381) b!868650))

(assert (= (and b!868650 res!590388) b!868641))

(assert (= (and b!868641 res!590385) b!868651))

(assert (= (and b!868651 res!590380) b!868642))

(assert (= (and b!868642 res!590382) b!868643))

(assert (= (and b!868643 res!590387) b!868648))

(assert (= (and b!868644 condMapEmpty!27065) mapIsEmpty!27065))

(assert (= (and b!868644 (not condMapEmpty!27065)) mapNonEmpty!27065))

(get-info :version)

(assert (= (and mapNonEmpty!27065 ((_ is ValueCellFull!8049) mapValue!27065)) b!868649))

(assert (= (and b!868644 ((_ is ValueCellFull!8049) mapDefault!27065)) b!868646))

(assert (= start!73954 b!868644))

(declare-fun m!810391 () Bool)

(assert (=> b!868651 m!810391))

(declare-fun m!810393 () Bool)

(assert (=> b!868652 m!810393))

(declare-fun m!810395 () Bool)

(assert (=> b!868648 m!810395))

(declare-fun m!810397 () Bool)

(assert (=> b!868648 m!810397))

(assert (=> b!868648 m!810397))

(declare-fun m!810399 () Bool)

(assert (=> b!868648 m!810399))

(declare-fun m!810401 () Bool)

(assert (=> b!868648 m!810401))

(declare-fun m!810403 () Bool)

(assert (=> b!868643 m!810403))

(declare-fun m!810405 () Bool)

(assert (=> b!868643 m!810405))

(declare-fun m!810407 () Bool)

(assert (=> b!868643 m!810407))

(declare-fun m!810409 () Bool)

(assert (=> b!868650 m!810409))

(declare-fun m!810411 () Bool)

(assert (=> b!868647 m!810411))

(declare-fun m!810413 () Bool)

(assert (=> mapNonEmpty!27065 m!810413))

(declare-fun m!810415 () Bool)

(assert (=> b!868642 m!810415))

(declare-fun m!810417 () Bool)

(assert (=> start!73954 m!810417))

(declare-fun m!810419 () Bool)

(assert (=> start!73954 m!810419))

(check-sat (not b!868643) (not mapNonEmpty!27065) (not b!868652) b_and!24611 (not b!868650) (not b!868647) tp_is_empty!16977 (not b_next!14841) (not b!868648) (not b!868651) (not start!73954))
(check-sat b_and!24611 (not b_next!14841))
