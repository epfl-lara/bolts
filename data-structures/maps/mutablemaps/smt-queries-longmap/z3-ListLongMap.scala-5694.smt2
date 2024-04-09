; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73978 () Bool)

(assert start!73978)

(declare-fun b_free!14865 () Bool)

(declare-fun b_next!14865 () Bool)

(assert (=> start!73978 (= b_free!14865 (not b_next!14865))))

(declare-fun tp!52099 () Bool)

(declare-fun b_and!24635 () Bool)

(assert (=> start!73978 (= tp!52099 b_and!24635)))

(declare-fun b!869073 () Bool)

(declare-fun res!590712 () Bool)

(declare-fun e!484033 () Bool)

(assert (=> b!869073 (=> (not res!590712) (not e!484033))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50134 0))(
  ( (array!50135 (arr!24094 (Array (_ BitVec 32) (_ BitVec 64))) (size!24535 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50134)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869073 (= res!590712 (and (= (select (arr!24094 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869074 () Bool)

(declare-fun e!484035 () Bool)

(assert (=> b!869074 (= e!484033 e!484035)))

(declare-fun res!590710 () Bool)

(assert (=> b!869074 (=> (not res!590710) (not e!484035))))

(assert (=> b!869074 (= res!590710 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27715 0))(
  ( (V!27716 (val!8548 Int)) )
))
(declare-datatypes ((ValueCell!8061 0))(
  ( (ValueCellFull!8061 (v!10969 V!27715)) (EmptyCell!8061) )
))
(declare-datatypes ((array!50136 0))(
  ( (array!50137 (arr!24095 (Array (_ BitVec 32) ValueCell!8061)) (size!24536 (_ BitVec 32))) )
))
(declare-fun lt!394675 () array!50136)

(declare-datatypes ((tuple2!11352 0))(
  ( (tuple2!11353 (_1!5686 (_ BitVec 64)) (_2!5686 V!27715)) )
))
(declare-datatypes ((List!17208 0))(
  ( (Nil!17205) (Cons!17204 (h!18335 tuple2!11352) (t!24253 List!17208)) )
))
(declare-datatypes ((ListLongMap!10135 0))(
  ( (ListLongMap!10136 (toList!5083 List!17208)) )
))
(declare-fun lt!394677 () ListLongMap!10135)

(declare-fun minValue!654 () V!27715)

(declare-fun zeroValue!654 () V!27715)

(declare-fun getCurrentListMapNoExtraKeys!3047 (array!50134 array!50136 (_ BitVec 32) (_ BitVec 32) V!27715 V!27715 (_ BitVec 32) Int) ListLongMap!10135)

(assert (=> b!869074 (= lt!394677 (getCurrentListMapNoExtraKeys!3047 _keys!868 lt!394675 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27715)

(declare-fun _values!688 () array!50136)

(assert (=> b!869074 (= lt!394675 (array!50137 (store (arr!24095 _values!688) i!612 (ValueCellFull!8061 v!557)) (size!24536 _values!688)))))

(declare-fun lt!394676 () ListLongMap!10135)

(assert (=> b!869074 (= lt!394676 (getCurrentListMapNoExtraKeys!3047 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27101 () Bool)

(declare-fun mapRes!27101 () Bool)

(assert (=> mapIsEmpty!27101 mapRes!27101))

(declare-fun b!869075 () Bool)

(declare-fun res!590706 () Bool)

(assert (=> b!869075 (=> (not res!590706) (not e!484033))))

(assert (=> b!869075 (= res!590706 (and (= (size!24536 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24535 _keys!868) (size!24536 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869076 () Bool)

(assert (=> b!869076 (= e!484035 (not true))))

(declare-fun +!2369 (ListLongMap!10135 tuple2!11352) ListLongMap!10135)

(assert (=> b!869076 (= (getCurrentListMapNoExtraKeys!3047 _keys!868 lt!394675 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2369 (getCurrentListMapNoExtraKeys!3047 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11353 k0!854 v!557)))))

(declare-datatypes ((Unit!29788 0))(
  ( (Unit!29789) )
))
(declare-fun lt!394674 () Unit!29788)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!600 (array!50134 array!50136 (_ BitVec 32) (_ BitVec 32) V!27715 V!27715 (_ BitVec 32) (_ BitVec 64) V!27715 (_ BitVec 32) Int) Unit!29788)

(assert (=> b!869076 (= lt!394674 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!600 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27101 () Bool)

(declare-fun tp!52100 () Bool)

(declare-fun e!484032 () Bool)

(assert (=> mapNonEmpty!27101 (= mapRes!27101 (and tp!52100 e!484032))))

(declare-fun mapKey!27101 () (_ BitVec 32))

(declare-fun mapRest!27101 () (Array (_ BitVec 32) ValueCell!8061))

(declare-fun mapValue!27101 () ValueCell!8061)

(assert (=> mapNonEmpty!27101 (= (arr!24095 _values!688) (store mapRest!27101 mapKey!27101 mapValue!27101))))

(declare-fun b!869077 () Bool)

(declare-fun tp_is_empty!17001 () Bool)

(assert (=> b!869077 (= e!484032 tp_is_empty!17001)))

(declare-fun b!869078 () Bool)

(declare-fun res!590704 () Bool)

(assert (=> b!869078 (=> (not res!590704) (not e!484033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869078 (= res!590704 (validKeyInArray!0 k0!854))))

(declare-fun b!869079 () Bool)

(declare-fun res!590707 () Bool)

(assert (=> b!869079 (=> (not res!590707) (not e!484033))))

(declare-datatypes ((List!17209 0))(
  ( (Nil!17206) (Cons!17205 (h!18336 (_ BitVec 64)) (t!24254 List!17209)) )
))
(declare-fun arrayNoDuplicates!0 (array!50134 (_ BitVec 32) List!17209) Bool)

(assert (=> b!869079 (= res!590707 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17206))))

(declare-fun b!869080 () Bool)

(declare-fun e!484030 () Bool)

(declare-fun e!484034 () Bool)

(assert (=> b!869080 (= e!484030 (and e!484034 mapRes!27101))))

(declare-fun condMapEmpty!27101 () Bool)

(declare-fun mapDefault!27101 () ValueCell!8061)

(assert (=> b!869080 (= condMapEmpty!27101 (= (arr!24095 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8061)) mapDefault!27101)))))

(declare-fun b!869081 () Bool)

(declare-fun res!590711 () Bool)

(assert (=> b!869081 (=> (not res!590711) (not e!484033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869081 (= res!590711 (validMask!0 mask!1196))))

(declare-fun res!590708 () Bool)

(assert (=> start!73978 (=> (not res!590708) (not e!484033))))

(assert (=> start!73978 (= res!590708 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24535 _keys!868))))))

(assert (=> start!73978 e!484033))

(assert (=> start!73978 tp_is_empty!17001))

(assert (=> start!73978 true))

(assert (=> start!73978 tp!52099))

(declare-fun array_inv!19008 (array!50134) Bool)

(assert (=> start!73978 (array_inv!19008 _keys!868)))

(declare-fun array_inv!19009 (array!50136) Bool)

(assert (=> start!73978 (and (array_inv!19009 _values!688) e!484030)))

(declare-fun b!869082 () Bool)

(declare-fun res!590709 () Bool)

(assert (=> b!869082 (=> (not res!590709) (not e!484033))))

(assert (=> b!869082 (= res!590709 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24535 _keys!868))))))

(declare-fun b!869083 () Bool)

(assert (=> b!869083 (= e!484034 tp_is_empty!17001)))

(declare-fun b!869084 () Bool)

(declare-fun res!590705 () Bool)

(assert (=> b!869084 (=> (not res!590705) (not e!484033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50134 (_ BitVec 32)) Bool)

(assert (=> b!869084 (= res!590705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73978 res!590708) b!869081))

(assert (= (and b!869081 res!590711) b!869075))

(assert (= (and b!869075 res!590706) b!869084))

(assert (= (and b!869084 res!590705) b!869079))

(assert (= (and b!869079 res!590707) b!869082))

(assert (= (and b!869082 res!590709) b!869078))

(assert (= (and b!869078 res!590704) b!869073))

(assert (= (and b!869073 res!590712) b!869074))

(assert (= (and b!869074 res!590710) b!869076))

(assert (= (and b!869080 condMapEmpty!27101) mapIsEmpty!27101))

(assert (= (and b!869080 (not condMapEmpty!27101)) mapNonEmpty!27101))

(get-info :version)

(assert (= (and mapNonEmpty!27101 ((_ is ValueCellFull!8061) mapValue!27101)) b!869077))

(assert (= (and b!869080 ((_ is ValueCellFull!8061) mapDefault!27101)) b!869083))

(assert (= start!73978 b!869080))

(declare-fun m!810751 () Bool)

(assert (=> b!869079 m!810751))

(declare-fun m!810753 () Bool)

(assert (=> b!869084 m!810753))

(declare-fun m!810755 () Bool)

(assert (=> mapNonEmpty!27101 m!810755))

(declare-fun m!810757 () Bool)

(assert (=> b!869073 m!810757))

(declare-fun m!810759 () Bool)

(assert (=> start!73978 m!810759))

(declare-fun m!810761 () Bool)

(assert (=> start!73978 m!810761))

(declare-fun m!810763 () Bool)

(assert (=> b!869074 m!810763))

(declare-fun m!810765 () Bool)

(assert (=> b!869074 m!810765))

(declare-fun m!810767 () Bool)

(assert (=> b!869074 m!810767))

(declare-fun m!810769 () Bool)

(assert (=> b!869076 m!810769))

(declare-fun m!810771 () Bool)

(assert (=> b!869076 m!810771))

(assert (=> b!869076 m!810771))

(declare-fun m!810773 () Bool)

(assert (=> b!869076 m!810773))

(declare-fun m!810775 () Bool)

(assert (=> b!869076 m!810775))

(declare-fun m!810777 () Bool)

(assert (=> b!869081 m!810777))

(declare-fun m!810779 () Bool)

(assert (=> b!869078 m!810779))

(check-sat (not b_next!14865) (not b!869078) (not b!869079) (not b!869074) (not b!869076) tp_is_empty!17001 (not start!73978) (not mapNonEmpty!27101) b_and!24635 (not b!869084) (not b!869081))
(check-sat b_and!24635 (not b_next!14865))
