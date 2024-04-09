; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73492 () Bool)

(assert start!73492)

(declare-fun b_free!14379 () Bool)

(declare-fun b_next!14379 () Bool)

(assert (=> start!73492 (= b_free!14379 (not b_next!14379))))

(declare-fun tp!50641 () Bool)

(declare-fun b_and!23755 () Bool)

(assert (=> start!73492 (= tp!50641 b_and!23755)))

(declare-fun b!857812 () Bool)

(declare-fun e!478114 () Bool)

(declare-fun tp_is_empty!16515 () Bool)

(assert (=> b!857812 (= e!478114 tp_is_empty!16515)))

(declare-fun res!582856 () Bool)

(declare-fun e!478116 () Bool)

(assert (=> start!73492 (=> (not res!582856) (not e!478116))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49192 0))(
  ( (array!49193 (arr!23623 (Array (_ BitVec 32) (_ BitVec 64))) (size!24064 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49192)

(assert (=> start!73492 (= res!582856 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24064 _keys!868))))))

(assert (=> start!73492 e!478116))

(assert (=> start!73492 tp_is_empty!16515))

(assert (=> start!73492 true))

(assert (=> start!73492 tp!50641))

(declare-fun array_inv!18690 (array!49192) Bool)

(assert (=> start!73492 (array_inv!18690 _keys!868)))

(declare-datatypes ((V!27067 0))(
  ( (V!27068 (val!8305 Int)) )
))
(declare-datatypes ((ValueCell!7818 0))(
  ( (ValueCellFull!7818 (v!10726 V!27067)) (EmptyCell!7818) )
))
(declare-datatypes ((array!49194 0))(
  ( (array!49195 (arr!23624 (Array (_ BitVec 32) ValueCell!7818)) (size!24065 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49194)

(declare-fun e!478113 () Bool)

(declare-fun array_inv!18691 (array!49194) Bool)

(assert (=> start!73492 (and (array_inv!18691 _values!688) e!478113)))

(declare-fun b!857813 () Bool)

(declare-fun mapRes!26372 () Bool)

(assert (=> b!857813 (= e!478113 (and e!478114 mapRes!26372))))

(declare-fun condMapEmpty!26372 () Bool)

(declare-fun mapDefault!26372 () ValueCell!7818)

(assert (=> b!857813 (= condMapEmpty!26372 (= (arr!23624 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7818)) mapDefault!26372)))))

(declare-fun b!857814 () Bool)

(declare-fun res!582857 () Bool)

(assert (=> b!857814 (=> (not res!582857) (not e!478116))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49192 (_ BitVec 32)) Bool)

(assert (=> b!857814 (= res!582857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26372 () Bool)

(declare-fun tp!50642 () Bool)

(declare-fun e!478119 () Bool)

(assert (=> mapNonEmpty!26372 (= mapRes!26372 (and tp!50642 e!478119))))

(declare-fun mapKey!26372 () (_ BitVec 32))

(declare-fun mapRest!26372 () (Array (_ BitVec 32) ValueCell!7818))

(declare-fun mapValue!26372 () ValueCell!7818)

(assert (=> mapNonEmpty!26372 (= (arr!23624 _values!688) (store mapRest!26372 mapKey!26372 mapValue!26372))))

(declare-fun b!857815 () Bool)

(declare-fun res!582852 () Bool)

(assert (=> b!857815 (=> (not res!582852) (not e!478116))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!857815 (= res!582852 (and (= (select (arr!23623 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857816 () Bool)

(assert (=> b!857816 (= e!478119 tp_is_empty!16515)))

(declare-fun b!857817 () Bool)

(declare-fun res!582854 () Bool)

(assert (=> b!857817 (=> (not res!582854) (not e!478116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857817 (= res!582854 (validMask!0 mask!1196))))

(declare-fun b!857818 () Bool)

(declare-fun res!582861 () Bool)

(assert (=> b!857818 (=> (not res!582861) (not e!478116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857818 (= res!582861 (validKeyInArray!0 k0!854))))

(declare-fun b!857819 () Bool)

(declare-fun e!478118 () Bool)

(declare-fun e!478117 () Bool)

(assert (=> b!857819 (= e!478118 (not e!478117))))

(declare-fun res!582855 () Bool)

(assert (=> b!857819 (=> res!582855 e!478117)))

(assert (=> b!857819 (= res!582855 (not (validKeyInArray!0 (select (arr!23623 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!10942 0))(
  ( (tuple2!10943 (_1!5481 (_ BitVec 64)) (_2!5481 V!27067)) )
))
(declare-datatypes ((List!16815 0))(
  ( (Nil!16812) (Cons!16811 (h!17942 tuple2!10942) (t!23468 List!16815)) )
))
(declare-datatypes ((ListLongMap!9725 0))(
  ( (ListLongMap!9726 (toList!4878 List!16815)) )
))
(declare-fun lt!386424 () ListLongMap!9725)

(declare-fun lt!386418 () ListLongMap!9725)

(assert (=> b!857819 (= lt!386424 lt!386418)))

(declare-fun v!557 () V!27067)

(declare-fun lt!386419 () ListLongMap!9725)

(declare-fun +!2185 (ListLongMap!9725 tuple2!10942) ListLongMap!9725)

(assert (=> b!857819 (= lt!386418 (+!2185 lt!386419 (tuple2!10943 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27067)

(declare-fun zeroValue!654 () V!27067)

(declare-fun lt!386420 () array!49194)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2860 (array!49192 array!49194 (_ BitVec 32) (_ BitVec 32) V!27067 V!27067 (_ BitVec 32) Int) ListLongMap!9725)

(assert (=> b!857819 (= lt!386424 (getCurrentListMapNoExtraKeys!2860 _keys!868 lt!386420 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!857819 (= lt!386419 (getCurrentListMapNoExtraKeys!2860 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29212 0))(
  ( (Unit!29213) )
))
(declare-fun lt!386422 () Unit!29212)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!445 (array!49192 array!49194 (_ BitVec 32) (_ BitVec 32) V!27067 V!27067 (_ BitVec 32) (_ BitVec 64) V!27067 (_ BitVec 32) Int) Unit!29212)

(assert (=> b!857819 (= lt!386422 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!445 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857820 () Bool)

(declare-fun res!582859 () Bool)

(assert (=> b!857820 (=> (not res!582859) (not e!478116))))

(assert (=> b!857820 (= res!582859 (and (= (size!24065 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24064 _keys!868) (size!24065 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857821 () Bool)

(declare-fun res!582858 () Bool)

(assert (=> b!857821 (=> (not res!582858) (not e!478116))))

(assert (=> b!857821 (= res!582858 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24064 _keys!868))))))

(declare-fun b!857822 () Bool)

(declare-fun res!582853 () Bool)

(assert (=> b!857822 (=> (not res!582853) (not e!478116))))

(declare-datatypes ((List!16816 0))(
  ( (Nil!16813) (Cons!16812 (h!17943 (_ BitVec 64)) (t!23469 List!16816)) )
))
(declare-fun arrayNoDuplicates!0 (array!49192 (_ BitVec 32) List!16816) Bool)

(assert (=> b!857822 (= res!582853 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16813))))

(declare-fun b!857823 () Bool)

(assert (=> b!857823 (= e!478116 e!478118)))

(declare-fun res!582860 () Bool)

(assert (=> b!857823 (=> (not res!582860) (not e!478118))))

(assert (=> b!857823 (= res!582860 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386421 () ListLongMap!9725)

(assert (=> b!857823 (= lt!386421 (getCurrentListMapNoExtraKeys!2860 _keys!868 lt!386420 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857823 (= lt!386420 (array!49195 (store (arr!23624 _values!688) i!612 (ValueCellFull!7818 v!557)) (size!24065 _values!688)))))

(declare-fun lt!386423 () ListLongMap!9725)

(assert (=> b!857823 (= lt!386423 (getCurrentListMapNoExtraKeys!2860 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26372 () Bool)

(assert (=> mapIsEmpty!26372 mapRes!26372))

(declare-fun b!857824 () Bool)

(assert (=> b!857824 (= e!478117 true)))

(declare-fun get!12451 (ValueCell!7818 V!27067) V!27067)

(declare-fun dynLambda!1075 (Int (_ BitVec 64)) V!27067)

(assert (=> b!857824 (= lt!386421 (+!2185 lt!386418 (tuple2!10943 (select (arr!23623 _keys!868) from!1053) (get!12451 (select (arr!23624 _values!688) from!1053) (dynLambda!1075 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!73492 res!582856) b!857817))

(assert (= (and b!857817 res!582854) b!857820))

(assert (= (and b!857820 res!582859) b!857814))

(assert (= (and b!857814 res!582857) b!857822))

(assert (= (and b!857822 res!582853) b!857821))

(assert (= (and b!857821 res!582858) b!857818))

(assert (= (and b!857818 res!582861) b!857815))

(assert (= (and b!857815 res!582852) b!857823))

(assert (= (and b!857823 res!582860) b!857819))

(assert (= (and b!857819 (not res!582855)) b!857824))

(assert (= (and b!857813 condMapEmpty!26372) mapIsEmpty!26372))

(assert (= (and b!857813 (not condMapEmpty!26372)) mapNonEmpty!26372))

(get-info :version)

(assert (= (and mapNonEmpty!26372 ((_ is ValueCellFull!7818) mapValue!26372)) b!857816))

(assert (= (and b!857813 ((_ is ValueCellFull!7818) mapDefault!26372)) b!857812))

(assert (= start!73492 b!857813))

(declare-fun b_lambda!11761 () Bool)

(assert (=> (not b_lambda!11761) (not b!857824)))

(declare-fun t!23467 () Bool)

(declare-fun tb!4509 () Bool)

(assert (=> (and start!73492 (= defaultEntry!696 defaultEntry!696) t!23467) tb!4509))

(declare-fun result!8621 () Bool)

(assert (=> tb!4509 (= result!8621 tp_is_empty!16515)))

(assert (=> b!857824 t!23467))

(declare-fun b_and!23757 () Bool)

(assert (= b_and!23755 (and (=> t!23467 result!8621) b_and!23757)))

(declare-fun m!798619 () Bool)

(assert (=> b!857819 m!798619))

(declare-fun m!798621 () Bool)

(assert (=> b!857819 m!798621))

(declare-fun m!798623 () Bool)

(assert (=> b!857819 m!798623))

(declare-fun m!798625 () Bool)

(assert (=> b!857819 m!798625))

(assert (=> b!857819 m!798623))

(declare-fun m!798627 () Bool)

(assert (=> b!857819 m!798627))

(declare-fun m!798629 () Bool)

(assert (=> b!857819 m!798629))

(declare-fun m!798631 () Bool)

(assert (=> mapNonEmpty!26372 m!798631))

(declare-fun m!798633 () Bool)

(assert (=> b!857822 m!798633))

(declare-fun m!798635 () Bool)

(assert (=> b!857818 m!798635))

(declare-fun m!798637 () Bool)

(assert (=> b!857823 m!798637))

(declare-fun m!798639 () Bool)

(assert (=> b!857823 m!798639))

(declare-fun m!798641 () Bool)

(assert (=> b!857823 m!798641))

(declare-fun m!798643 () Bool)

(assert (=> b!857824 m!798643))

(declare-fun m!798645 () Bool)

(assert (=> b!857824 m!798645))

(declare-fun m!798647 () Bool)

(assert (=> b!857824 m!798647))

(assert (=> b!857824 m!798643))

(declare-fun m!798649 () Bool)

(assert (=> b!857824 m!798649))

(assert (=> b!857824 m!798623))

(assert (=> b!857824 m!798645))

(declare-fun m!798651 () Bool)

(assert (=> start!73492 m!798651))

(declare-fun m!798653 () Bool)

(assert (=> start!73492 m!798653))

(declare-fun m!798655 () Bool)

(assert (=> b!857814 m!798655))

(declare-fun m!798657 () Bool)

(assert (=> b!857817 m!798657))

(declare-fun m!798659 () Bool)

(assert (=> b!857815 m!798659))

(check-sat (not b_next!14379) (not b!857823) (not b!857818) (not b!857814) (not mapNonEmpty!26372) b_and!23757 (not b!857819) (not start!73492) (not b!857817) tp_is_empty!16515 (not b!857822) (not b_lambda!11761) (not b!857824))
(check-sat b_and!23757 (not b_next!14379))
