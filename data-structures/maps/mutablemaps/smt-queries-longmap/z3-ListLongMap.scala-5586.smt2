; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73330 () Bool)

(assert start!73330)

(declare-fun b_free!14217 () Bool)

(declare-fun b_next!14217 () Bool)

(assert (=> start!73330 (= b_free!14217 (not b_next!14217))))

(declare-fun tp!50155 () Bool)

(declare-fun b_and!23591 () Bool)

(assert (=> start!73330 (= tp!50155 b_and!23591)))

(declare-fun b!854956 () Bool)

(declare-fun res!580727 () Bool)

(declare-fun e!476717 () Bool)

(assert (=> b!854956 (=> (not res!580727) (not e!476717))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48882 0))(
  ( (array!48883 (arr!23468 (Array (_ BitVec 32) (_ BitVec 64))) (size!23909 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48882)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!854956 (= res!580727 (and (= (select (arr!23468 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854957 () Bool)

(declare-fun res!580729 () Bool)

(assert (=> b!854957 (=> (not res!580729) (not e!476717))))

(declare-datatypes ((List!16701 0))(
  ( (Nil!16698) (Cons!16697 (h!17828 (_ BitVec 64)) (t!23350 List!16701)) )
))
(declare-fun arrayNoDuplicates!0 (array!48882 (_ BitVec 32) List!16701) Bool)

(assert (=> b!854957 (= res!580729 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16698))))

(declare-fun res!580732 () Bool)

(assert (=> start!73330 (=> (not res!580732) (not e!476717))))

(assert (=> start!73330 (= res!580732 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23909 _keys!868))))))

(assert (=> start!73330 e!476717))

(declare-fun tp_is_empty!16353 () Bool)

(assert (=> start!73330 tp_is_empty!16353))

(assert (=> start!73330 true))

(assert (=> start!73330 tp!50155))

(declare-fun array_inv!18580 (array!48882) Bool)

(assert (=> start!73330 (array_inv!18580 _keys!868)))

(declare-datatypes ((V!26851 0))(
  ( (V!26852 (val!8224 Int)) )
))
(declare-datatypes ((ValueCell!7737 0))(
  ( (ValueCellFull!7737 (v!10645 V!26851)) (EmptyCell!7737) )
))
(declare-datatypes ((array!48884 0))(
  ( (array!48885 (arr!23469 (Array (_ BitVec 32) ValueCell!7737)) (size!23910 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48884)

(declare-fun e!476721 () Bool)

(declare-fun array_inv!18581 (array!48884) Bool)

(assert (=> start!73330 (and (array_inv!18581 _values!688) e!476721)))

(declare-fun mapNonEmpty!26129 () Bool)

(declare-fun mapRes!26129 () Bool)

(declare-fun tp!50156 () Bool)

(declare-fun e!476718 () Bool)

(assert (=> mapNonEmpty!26129 (= mapRes!26129 (and tp!50156 e!476718))))

(declare-fun mapKey!26129 () (_ BitVec 32))

(declare-fun mapRest!26129 () (Array (_ BitVec 32) ValueCell!7737))

(declare-fun mapValue!26129 () ValueCell!7737)

(assert (=> mapNonEmpty!26129 (= (arr!23469 _values!688) (store mapRest!26129 mapKey!26129 mapValue!26129))))

(declare-fun b!854958 () Bool)

(declare-fun res!580731 () Bool)

(assert (=> b!854958 (=> (not res!580731) (not e!476717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854958 (= res!580731 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26129 () Bool)

(assert (=> mapIsEmpty!26129 mapRes!26129))

(declare-fun b!854959 () Bool)

(declare-fun e!476720 () Bool)

(assert (=> b!854959 (= e!476720 tp_is_empty!16353)))

(declare-fun b!854960 () Bool)

(assert (=> b!854960 (= e!476721 (and e!476720 mapRes!26129))))

(declare-fun condMapEmpty!26129 () Bool)

(declare-fun mapDefault!26129 () ValueCell!7737)

(assert (=> b!854960 (= condMapEmpty!26129 (= (arr!23469 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7737)) mapDefault!26129)))))

(declare-fun b!854961 () Bool)

(assert (=> b!854961 (= e!476718 tp_is_empty!16353)))

(declare-fun b!854962 () Bool)

(declare-fun res!580733 () Bool)

(assert (=> b!854962 (=> (not res!580733) (not e!476717))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854962 (= res!580733 (validMask!0 mask!1196))))

(declare-fun b!854963 () Bool)

(declare-fun res!580730 () Bool)

(assert (=> b!854963 (=> (not res!580730) (not e!476717))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!854963 (= res!580730 (and (= (size!23910 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23909 _keys!868) (size!23910 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854964 () Bool)

(declare-fun res!580728 () Bool)

(assert (=> b!854964 (=> (not res!580728) (not e!476717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48882 (_ BitVec 32)) Bool)

(assert (=> b!854964 (= res!580728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!854965 () Bool)

(declare-fun res!580734 () Bool)

(assert (=> b!854965 (=> (not res!580734) (not e!476717))))

(assert (=> b!854965 (= res!580734 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23909 _keys!868))))))

(declare-fun b!854966 () Bool)

(assert (=> b!854966 (= e!476717 false)))

(declare-fun v!557 () V!26851)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10828 0))(
  ( (tuple2!10829 (_1!5424 (_ BitVec 64)) (_2!5424 V!26851)) )
))
(declare-datatypes ((List!16702 0))(
  ( (Nil!16699) (Cons!16698 (h!17829 tuple2!10828) (t!23351 List!16702)) )
))
(declare-datatypes ((ListLongMap!9611 0))(
  ( (ListLongMap!9612 (toList!4821 List!16702)) )
))
(declare-fun lt!385584 () ListLongMap!9611)

(declare-fun minValue!654 () V!26851)

(declare-fun zeroValue!654 () V!26851)

(declare-fun getCurrentListMapNoExtraKeys!2803 (array!48882 array!48884 (_ BitVec 32) (_ BitVec 32) V!26851 V!26851 (_ BitVec 32) Int) ListLongMap!9611)

(assert (=> b!854966 (= lt!385584 (getCurrentListMapNoExtraKeys!2803 _keys!868 (array!48885 (store (arr!23469 _values!688) i!612 (ValueCellFull!7737 v!557)) (size!23910 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385583 () ListLongMap!9611)

(assert (=> b!854966 (= lt!385583 (getCurrentListMapNoExtraKeys!2803 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73330 res!580732) b!854962))

(assert (= (and b!854962 res!580733) b!854963))

(assert (= (and b!854963 res!580730) b!854964))

(assert (= (and b!854964 res!580728) b!854957))

(assert (= (and b!854957 res!580729) b!854965))

(assert (= (and b!854965 res!580734) b!854958))

(assert (= (and b!854958 res!580731) b!854956))

(assert (= (and b!854956 res!580727) b!854966))

(assert (= (and b!854960 condMapEmpty!26129) mapIsEmpty!26129))

(assert (= (and b!854960 (not condMapEmpty!26129)) mapNonEmpty!26129))

(get-info :version)

(assert (= (and mapNonEmpty!26129 ((_ is ValueCellFull!7737) mapValue!26129)) b!854961))

(assert (= (and b!854960 ((_ is ValueCellFull!7737) mapDefault!26129)) b!854959))

(assert (= start!73330 b!854960))

(declare-fun m!796373 () Bool)

(assert (=> b!854958 m!796373))

(declare-fun m!796375 () Bool)

(assert (=> b!854966 m!796375))

(declare-fun m!796377 () Bool)

(assert (=> b!854966 m!796377))

(declare-fun m!796379 () Bool)

(assert (=> b!854966 m!796379))

(declare-fun m!796381 () Bool)

(assert (=> b!854962 m!796381))

(declare-fun m!796383 () Bool)

(assert (=> b!854964 m!796383))

(declare-fun m!796385 () Bool)

(assert (=> start!73330 m!796385))

(declare-fun m!796387 () Bool)

(assert (=> start!73330 m!796387))

(declare-fun m!796389 () Bool)

(assert (=> b!854956 m!796389))

(declare-fun m!796391 () Bool)

(assert (=> b!854957 m!796391))

(declare-fun m!796393 () Bool)

(assert (=> mapNonEmpty!26129 m!796393))

(check-sat tp_is_empty!16353 (not b!854966) (not mapNonEmpty!26129) (not b!854958) (not b_next!14217) (not b!854957) (not b!854962) (not b!854964) (not start!73330) b_and!23591)
(check-sat b_and!23591 (not b_next!14217))
