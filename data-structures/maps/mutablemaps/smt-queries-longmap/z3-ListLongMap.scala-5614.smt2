; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73498 () Bool)

(assert start!73498)

(declare-fun b_free!14385 () Bool)

(declare-fun b_next!14385 () Bool)

(assert (=> start!73498 (= b_free!14385 (not b_next!14385))))

(declare-fun tp!50659 () Bool)

(declare-fun b_and!23767 () Bool)

(assert (=> start!73498 (= tp!50659 b_and!23767)))

(declare-fun b!857935 () Bool)

(declare-fun res!582943 () Bool)

(declare-fun e!478181 () Bool)

(assert (=> b!857935 (=> (not res!582943) (not e!478181))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49202 0))(
  ( (array!49203 (arr!23628 (Array (_ BitVec 32) (_ BitVec 64))) (size!24069 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49202)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857935 (= res!582943 (and (= (select (arr!23628 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857936 () Bool)

(declare-fun e!478179 () Bool)

(declare-fun e!478178 () Bool)

(declare-fun mapRes!26381 () Bool)

(assert (=> b!857936 (= e!478179 (and e!478178 mapRes!26381))))

(declare-fun condMapEmpty!26381 () Bool)

(declare-datatypes ((V!27075 0))(
  ( (V!27076 (val!8308 Int)) )
))
(declare-datatypes ((ValueCell!7821 0))(
  ( (ValueCellFull!7821 (v!10729 V!27075)) (EmptyCell!7821) )
))
(declare-datatypes ((array!49204 0))(
  ( (array!49205 (arr!23629 (Array (_ BitVec 32) ValueCell!7821)) (size!24070 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49204)

(declare-fun mapDefault!26381 () ValueCell!7821)

(assert (=> b!857936 (= condMapEmpty!26381 (= (arr!23629 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7821)) mapDefault!26381)))))

(declare-fun b!857937 () Bool)

(declare-fun tp_is_empty!16521 () Bool)

(assert (=> b!857937 (= e!478178 tp_is_empty!16521)))

(declare-fun b!857938 () Bool)

(declare-fun res!582942 () Bool)

(assert (=> b!857938 (=> (not res!582942) (not e!478181))))

(assert (=> b!857938 (= res!582942 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24069 _keys!868))))))

(declare-fun b!857939 () Bool)

(declare-fun res!582948 () Bool)

(assert (=> b!857939 (=> (not res!582948) (not e!478181))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49202 (_ BitVec 32)) Bool)

(assert (=> b!857939 (= res!582948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!582949 () Bool)

(assert (=> start!73498 (=> (not res!582949) (not e!478181))))

(assert (=> start!73498 (= res!582949 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24069 _keys!868))))))

(assert (=> start!73498 e!478181))

(assert (=> start!73498 tp_is_empty!16521))

(assert (=> start!73498 true))

(assert (=> start!73498 tp!50659))

(declare-fun array_inv!18692 (array!49202) Bool)

(assert (=> start!73498 (array_inv!18692 _keys!868)))

(declare-fun array_inv!18693 (array!49204) Bool)

(assert (=> start!73498 (and (array_inv!18693 _values!688) e!478179)))

(declare-fun b!857940 () Bool)

(declare-fun e!478176 () Bool)

(declare-fun e!478177 () Bool)

(assert (=> b!857940 (= e!478176 (not e!478177))))

(declare-fun res!582950 () Bool)

(assert (=> b!857940 (=> res!582950 e!478177)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857940 (= res!582950 (not (validKeyInArray!0 (select (arr!23628 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!10946 0))(
  ( (tuple2!10947 (_1!5483 (_ BitVec 64)) (_2!5483 V!27075)) )
))
(declare-datatypes ((List!16819 0))(
  ( (Nil!16816) (Cons!16815 (h!17946 tuple2!10946) (t!23478 List!16819)) )
))
(declare-datatypes ((ListLongMap!9729 0))(
  ( (ListLongMap!9730 (toList!4880 List!16819)) )
))
(declare-fun lt!386484 () ListLongMap!9729)

(declare-fun lt!386482 () ListLongMap!9729)

(assert (=> b!857940 (= lt!386484 lt!386482)))

(declare-fun v!557 () V!27075)

(declare-fun lt!386486 () ListLongMap!9729)

(declare-fun +!2186 (ListLongMap!9729 tuple2!10946) ListLongMap!9729)

(assert (=> b!857940 (= lt!386482 (+!2186 lt!386486 (tuple2!10947 k0!854 v!557)))))

(declare-fun lt!386481 () array!49204)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27075)

(declare-fun zeroValue!654 () V!27075)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2862 (array!49202 array!49204 (_ BitVec 32) (_ BitVec 32) V!27075 V!27075 (_ BitVec 32) Int) ListLongMap!9729)

(assert (=> b!857940 (= lt!386484 (getCurrentListMapNoExtraKeys!2862 _keys!868 lt!386481 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!857940 (= lt!386486 (getCurrentListMapNoExtraKeys!2862 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29214 0))(
  ( (Unit!29215) )
))
(declare-fun lt!386487 () Unit!29214)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!446 (array!49202 array!49204 (_ BitVec 32) (_ BitVec 32) V!27075 V!27075 (_ BitVec 32) (_ BitVec 64) V!27075 (_ BitVec 32) Int) Unit!29214)

(assert (=> b!857940 (= lt!386487 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!446 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857941 () Bool)

(declare-fun res!582946 () Bool)

(assert (=> b!857941 (=> (not res!582946) (not e!478181))))

(assert (=> b!857941 (= res!582946 (and (= (size!24070 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24069 _keys!868) (size!24070 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857942 () Bool)

(declare-fun res!582945 () Bool)

(assert (=> b!857942 (=> (not res!582945) (not e!478181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857942 (= res!582945 (validMask!0 mask!1196))))

(declare-fun b!857943 () Bool)

(assert (=> b!857943 (= e!478181 e!478176)))

(declare-fun res!582947 () Bool)

(assert (=> b!857943 (=> (not res!582947) (not e!478176))))

(assert (=> b!857943 (= res!582947 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386483 () ListLongMap!9729)

(assert (=> b!857943 (= lt!386483 (getCurrentListMapNoExtraKeys!2862 _keys!868 lt!386481 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857943 (= lt!386481 (array!49205 (store (arr!23629 _values!688) i!612 (ValueCellFull!7821 v!557)) (size!24070 _values!688)))))

(declare-fun lt!386485 () ListLongMap!9729)

(assert (=> b!857943 (= lt!386485 (getCurrentListMapNoExtraKeys!2862 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26381 () Bool)

(declare-fun tp!50660 () Bool)

(declare-fun e!478182 () Bool)

(assert (=> mapNonEmpty!26381 (= mapRes!26381 (and tp!50660 e!478182))))

(declare-fun mapValue!26381 () ValueCell!7821)

(declare-fun mapKey!26381 () (_ BitVec 32))

(declare-fun mapRest!26381 () (Array (_ BitVec 32) ValueCell!7821))

(assert (=> mapNonEmpty!26381 (= (arr!23629 _values!688) (store mapRest!26381 mapKey!26381 mapValue!26381))))

(declare-fun b!857944 () Bool)

(assert (=> b!857944 (= e!478177 true)))

(declare-fun get!12454 (ValueCell!7821 V!27075) V!27075)

(declare-fun dynLambda!1076 (Int (_ BitVec 64)) V!27075)

(assert (=> b!857944 (= lt!386483 (+!2186 lt!386482 (tuple2!10947 (select (arr!23628 _keys!868) from!1053) (get!12454 (select (arr!23629 _values!688) from!1053) (dynLambda!1076 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!857945 () Bool)

(declare-fun res!582951 () Bool)

(assert (=> b!857945 (=> (not res!582951) (not e!478181))))

(assert (=> b!857945 (= res!582951 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26381 () Bool)

(assert (=> mapIsEmpty!26381 mapRes!26381))

(declare-fun b!857946 () Bool)

(declare-fun res!582944 () Bool)

(assert (=> b!857946 (=> (not res!582944) (not e!478181))))

(declare-datatypes ((List!16820 0))(
  ( (Nil!16817) (Cons!16816 (h!17947 (_ BitVec 64)) (t!23479 List!16820)) )
))
(declare-fun arrayNoDuplicates!0 (array!49202 (_ BitVec 32) List!16820) Bool)

(assert (=> b!857946 (= res!582944 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16817))))

(declare-fun b!857947 () Bool)

(assert (=> b!857947 (= e!478182 tp_is_empty!16521)))

(assert (= (and start!73498 res!582949) b!857942))

(assert (= (and b!857942 res!582945) b!857941))

(assert (= (and b!857941 res!582946) b!857939))

(assert (= (and b!857939 res!582948) b!857946))

(assert (= (and b!857946 res!582944) b!857938))

(assert (= (and b!857938 res!582942) b!857945))

(assert (= (and b!857945 res!582951) b!857935))

(assert (= (and b!857935 res!582943) b!857943))

(assert (= (and b!857943 res!582947) b!857940))

(assert (= (and b!857940 (not res!582950)) b!857944))

(assert (= (and b!857936 condMapEmpty!26381) mapIsEmpty!26381))

(assert (= (and b!857936 (not condMapEmpty!26381)) mapNonEmpty!26381))

(get-info :version)

(assert (= (and mapNonEmpty!26381 ((_ is ValueCellFull!7821) mapValue!26381)) b!857947))

(assert (= (and b!857936 ((_ is ValueCellFull!7821) mapDefault!26381)) b!857937))

(assert (= start!73498 b!857936))

(declare-fun b_lambda!11767 () Bool)

(assert (=> (not b_lambda!11767) (not b!857944)))

(declare-fun t!23477 () Bool)

(declare-fun tb!4515 () Bool)

(assert (=> (and start!73498 (= defaultEntry!696 defaultEntry!696) t!23477) tb!4515))

(declare-fun result!8633 () Bool)

(assert (=> tb!4515 (= result!8633 tp_is_empty!16521)))

(assert (=> b!857944 t!23477))

(declare-fun b_and!23769 () Bool)

(assert (= b_and!23767 (and (=> t!23477 result!8633) b_and!23769)))

(declare-fun m!798745 () Bool)

(assert (=> mapNonEmpty!26381 m!798745))

(declare-fun m!798747 () Bool)

(assert (=> b!857939 m!798747))

(declare-fun m!798749 () Bool)

(assert (=> b!857940 m!798749))

(declare-fun m!798751 () Bool)

(assert (=> b!857940 m!798751))

(declare-fun m!798753 () Bool)

(assert (=> b!857940 m!798753))

(declare-fun m!798755 () Bool)

(assert (=> b!857940 m!798755))

(declare-fun m!798757 () Bool)

(assert (=> b!857940 m!798757))

(assert (=> b!857940 m!798755))

(declare-fun m!798759 () Bool)

(assert (=> b!857940 m!798759))

(declare-fun m!798761 () Bool)

(assert (=> start!73498 m!798761))

(declare-fun m!798763 () Bool)

(assert (=> start!73498 m!798763))

(declare-fun m!798765 () Bool)

(assert (=> b!857942 m!798765))

(declare-fun m!798767 () Bool)

(assert (=> b!857946 m!798767))

(declare-fun m!798769 () Bool)

(assert (=> b!857935 m!798769))

(declare-fun m!798771 () Bool)

(assert (=> b!857944 m!798771))

(declare-fun m!798773 () Bool)

(assert (=> b!857944 m!798773))

(declare-fun m!798775 () Bool)

(assert (=> b!857944 m!798775))

(declare-fun m!798777 () Bool)

(assert (=> b!857944 m!798777))

(assert (=> b!857944 m!798773))

(assert (=> b!857944 m!798755))

(assert (=> b!857944 m!798775))

(declare-fun m!798779 () Bool)

(assert (=> b!857943 m!798779))

(declare-fun m!798781 () Bool)

(assert (=> b!857943 m!798781))

(declare-fun m!798783 () Bool)

(assert (=> b!857943 m!798783))

(declare-fun m!798785 () Bool)

(assert (=> b!857945 m!798785))

(check-sat (not b!857942) (not b!857940) (not b!857946) (not start!73498) (not b!857943) (not b!857944) tp_is_empty!16521 (not b!857939) (not b_next!14385) (not b_lambda!11767) b_and!23769 (not mapNonEmpty!26381) (not b!857945))
(check-sat b_and!23769 (not b_next!14385))
