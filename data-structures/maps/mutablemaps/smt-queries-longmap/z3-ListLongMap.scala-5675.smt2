; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73864 () Bool)

(assert start!73864)

(declare-fun b_free!14751 () Bool)

(declare-fun b_next!14751 () Bool)

(assert (=> start!73864 (= b_free!14751 (not b_next!14751))))

(declare-fun tp!51758 () Bool)

(declare-fun b_and!24499 () Bool)

(assert (=> start!73864 (= tp!51758 b_and!24499)))

(declare-fun b!866875 () Bool)

(declare-datatypes ((Unit!29709 0))(
  ( (Unit!29710) )
))
(declare-fun e!482915 () Unit!29709)

(declare-fun Unit!29711 () Unit!29709)

(assert (=> b!866875 (= e!482915 Unit!29711)))

(declare-fun mapNonEmpty!26930 () Bool)

(declare-fun mapRes!26930 () Bool)

(declare-fun tp!51757 () Bool)

(declare-fun e!482916 () Bool)

(assert (=> mapNonEmpty!26930 (= mapRes!26930 (and tp!51757 e!482916))))

(declare-datatypes ((V!27563 0))(
  ( (V!27564 (val!8491 Int)) )
))
(declare-datatypes ((ValueCell!8004 0))(
  ( (ValueCellFull!8004 (v!10912 V!27563)) (EmptyCell!8004) )
))
(declare-fun mapRest!26930 () (Array (_ BitVec 32) ValueCell!8004))

(declare-fun mapKey!26930 () (_ BitVec 32))

(declare-fun mapValue!26930 () ValueCell!8004)

(declare-datatypes ((array!49914 0))(
  ( (array!49915 (arr!23984 (Array (_ BitVec 32) ValueCell!8004)) (size!24425 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49914)

(assert (=> mapNonEmpty!26930 (= (arr!23984 _values!688) (store mapRest!26930 mapKey!26930 mapValue!26930))))

(declare-fun b!866876 () Bool)

(declare-fun res!589111 () Bool)

(declare-fun e!482912 () Bool)

(assert (=> b!866876 (=> (not res!589111) (not e!482912))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866876 (= res!589111 (validMask!0 mask!1196))))

(declare-fun b!866877 () Bool)

(declare-fun res!589107 () Bool)

(assert (=> b!866877 (=> (not res!589107) (not e!482912))))

(declare-datatypes ((array!49916 0))(
  ( (array!49917 (arr!23985 (Array (_ BitVec 32) (_ BitVec 64))) (size!24426 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49916)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49916 (_ BitVec 32)) Bool)

(assert (=> b!866877 (= res!589107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866878 () Bool)

(declare-fun res!589105 () Bool)

(assert (=> b!866878 (=> (not res!589105) (not e!482912))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866878 (= res!589105 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24426 _keys!868))))))

(declare-fun b!866879 () Bool)

(declare-fun tp_is_empty!16887 () Bool)

(assert (=> b!866879 (= e!482916 tp_is_empty!16887)))

(declare-fun b!866880 () Bool)

(declare-fun res!589103 () Bool)

(assert (=> b!866880 (=> (not res!589103) (not e!482912))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866880 (= res!589103 (and (= (select (arr!23985 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866881 () Bool)

(declare-fun res!589112 () Bool)

(assert (=> b!866881 (=> (not res!589112) (not e!482912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866881 (= res!589112 (validKeyInArray!0 k0!854))))

(declare-fun b!866882 () Bool)

(declare-fun Unit!29712 () Unit!29709)

(assert (=> b!866882 (= e!482915 Unit!29712)))

(declare-fun lt!393627 () Unit!29709)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49916 (_ BitVec 32) (_ BitVec 32)) Unit!29709)

(assert (=> b!866882 (= lt!393627 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17131 0))(
  ( (Nil!17128) (Cons!17127 (h!18258 (_ BitVec 64)) (t!24156 List!17131)) )
))
(declare-fun arrayNoDuplicates!0 (array!49916 (_ BitVec 32) List!17131) Bool)

(assert (=> b!866882 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17128)))

(declare-fun lt!393619 () Unit!29709)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49916 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29709)

(assert (=> b!866882 (= lt!393619 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866882 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393633 () Unit!29709)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49916 (_ BitVec 64) (_ BitVec 32) List!17131) Unit!29709)

(assert (=> b!866882 (= lt!393633 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17128))))

(assert (=> b!866882 false))

(declare-fun b!866883 () Bool)

(declare-fun e!482911 () Bool)

(declare-fun e!482918 () Bool)

(assert (=> b!866883 (= e!482911 (and e!482918 mapRes!26930))))

(declare-fun condMapEmpty!26930 () Bool)

(declare-fun mapDefault!26930 () ValueCell!8004)

(assert (=> b!866883 (= condMapEmpty!26930 (= (arr!23984 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8004)) mapDefault!26930)))))

(declare-fun b!866884 () Bool)

(declare-fun e!482919 () Bool)

(assert (=> b!866884 (= e!482912 e!482919)))

(declare-fun res!589108 () Bool)

(assert (=> b!866884 (=> (not res!589108) (not e!482919))))

(assert (=> b!866884 (= res!589108 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!393618 () array!49914)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27563)

(declare-fun zeroValue!654 () V!27563)

(declare-datatypes ((tuple2!11268 0))(
  ( (tuple2!11269 (_1!5644 (_ BitVec 64)) (_2!5644 V!27563)) )
))
(declare-datatypes ((List!17132 0))(
  ( (Nil!17129) (Cons!17128 (h!18259 tuple2!11268) (t!24157 List!17132)) )
))
(declare-datatypes ((ListLongMap!10051 0))(
  ( (ListLongMap!10052 (toList!5041 List!17132)) )
))
(declare-fun lt!393626 () ListLongMap!10051)

(declare-fun getCurrentListMapNoExtraKeys!3006 (array!49916 array!49914 (_ BitVec 32) (_ BitVec 32) V!27563 V!27563 (_ BitVec 32) Int) ListLongMap!10051)

(assert (=> b!866884 (= lt!393626 (getCurrentListMapNoExtraKeys!3006 _keys!868 lt!393618 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27563)

(assert (=> b!866884 (= lt!393618 (array!49915 (store (arr!23984 _values!688) i!612 (ValueCellFull!8004 v!557)) (size!24425 _values!688)))))

(declare-fun lt!393621 () ListLongMap!10051)

(assert (=> b!866884 (= lt!393621 (getCurrentListMapNoExtraKeys!3006 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866885 () Bool)

(declare-fun res!589109 () Bool)

(assert (=> b!866885 (=> (not res!589109) (not e!482912))))

(assert (=> b!866885 (= res!589109 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17128))))

(declare-fun mapIsEmpty!26930 () Bool)

(assert (=> mapIsEmpty!26930 mapRes!26930))

(declare-fun b!866886 () Bool)

(declare-fun e!482917 () Bool)

(assert (=> b!866886 (= e!482917 true)))

(declare-fun lt!393623 () ListLongMap!10051)

(declare-fun lt!393625 () ListLongMap!10051)

(declare-fun lt!393624 () tuple2!11268)

(declare-fun lt!393629 () tuple2!11268)

(declare-fun +!2336 (ListLongMap!10051 tuple2!11268) ListLongMap!10051)

(assert (=> b!866886 (= lt!393625 (+!2336 (+!2336 lt!393623 lt!393624) lt!393629))))

(declare-fun lt!393628 () V!27563)

(declare-fun lt!393631 () Unit!29709)

(declare-fun addCommutativeForDiffKeys!537 (ListLongMap!10051 (_ BitVec 64) V!27563 (_ BitVec 64) V!27563) Unit!29709)

(assert (=> b!866886 (= lt!393631 (addCommutativeForDiffKeys!537 lt!393623 k0!854 v!557 (select (arr!23985 _keys!868) from!1053) lt!393628))))

(declare-fun b!866887 () Bool)

(assert (=> b!866887 (= e!482918 tp_is_empty!16887)))

(declare-fun b!866888 () Bool)

(declare-fun e!482913 () Bool)

(assert (=> b!866888 (= e!482913 e!482917)))

(declare-fun res!589104 () Bool)

(assert (=> b!866888 (=> res!589104 e!482917)))

(assert (=> b!866888 (= res!589104 (= k0!854 (select (arr!23985 _keys!868) from!1053)))))

(assert (=> b!866888 (not (= (select (arr!23985 _keys!868) from!1053) k0!854))))

(declare-fun lt!393630 () Unit!29709)

(assert (=> b!866888 (= lt!393630 e!482915)))

(declare-fun c!92265 () Bool)

(assert (=> b!866888 (= c!92265 (= (select (arr!23985 _keys!868) from!1053) k0!854))))

(assert (=> b!866888 (= lt!393626 lt!393625)))

(declare-fun lt!393620 () ListLongMap!10051)

(assert (=> b!866888 (= lt!393625 (+!2336 lt!393620 lt!393624))))

(assert (=> b!866888 (= lt!393624 (tuple2!11269 (select (arr!23985 _keys!868) from!1053) lt!393628))))

(declare-fun get!12702 (ValueCell!8004 V!27563) V!27563)

(declare-fun dynLambda!1202 (Int (_ BitVec 64)) V!27563)

(assert (=> b!866888 (= lt!393628 (get!12702 (select (arr!23984 _values!688) from!1053) (dynLambda!1202 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866889 () Bool)

(declare-fun res!589110 () Bool)

(assert (=> b!866889 (=> (not res!589110) (not e!482912))))

(assert (=> b!866889 (= res!589110 (and (= (size!24425 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24426 _keys!868) (size!24425 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!589113 () Bool)

(assert (=> start!73864 (=> (not res!589113) (not e!482912))))

(assert (=> start!73864 (= res!589113 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24426 _keys!868))))))

(assert (=> start!73864 e!482912))

(assert (=> start!73864 tp_is_empty!16887))

(assert (=> start!73864 true))

(assert (=> start!73864 tp!51758))

(declare-fun array_inv!18938 (array!49916) Bool)

(assert (=> start!73864 (array_inv!18938 _keys!868)))

(declare-fun array_inv!18939 (array!49914) Bool)

(assert (=> start!73864 (and (array_inv!18939 _values!688) e!482911)))

(declare-fun b!866890 () Bool)

(assert (=> b!866890 (= e!482919 (not e!482913))))

(declare-fun res!589106 () Bool)

(assert (=> b!866890 (=> res!589106 e!482913)))

(assert (=> b!866890 (= res!589106 (not (validKeyInArray!0 (select (arr!23985 _keys!868) from!1053))))))

(declare-fun lt!393632 () ListLongMap!10051)

(assert (=> b!866890 (= lt!393632 lt!393620)))

(assert (=> b!866890 (= lt!393620 (+!2336 lt!393623 lt!393629))))

(assert (=> b!866890 (= lt!393632 (getCurrentListMapNoExtraKeys!3006 _keys!868 lt!393618 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866890 (= lt!393629 (tuple2!11269 k0!854 v!557))))

(assert (=> b!866890 (= lt!393623 (getCurrentListMapNoExtraKeys!3006 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393622 () Unit!29709)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!569 (array!49916 array!49914 (_ BitVec 32) (_ BitVec 32) V!27563 V!27563 (_ BitVec 32) (_ BitVec 64) V!27563 (_ BitVec 32) Int) Unit!29709)

(assert (=> b!866890 (= lt!393622 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!569 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73864 res!589113) b!866876))

(assert (= (and b!866876 res!589111) b!866889))

(assert (= (and b!866889 res!589110) b!866877))

(assert (= (and b!866877 res!589107) b!866885))

(assert (= (and b!866885 res!589109) b!866878))

(assert (= (and b!866878 res!589105) b!866881))

(assert (= (and b!866881 res!589112) b!866880))

(assert (= (and b!866880 res!589103) b!866884))

(assert (= (and b!866884 res!589108) b!866890))

(assert (= (and b!866890 (not res!589106)) b!866888))

(assert (= (and b!866888 c!92265) b!866882))

(assert (= (and b!866888 (not c!92265)) b!866875))

(assert (= (and b!866888 (not res!589104)) b!866886))

(assert (= (and b!866883 condMapEmpty!26930) mapIsEmpty!26930))

(assert (= (and b!866883 (not condMapEmpty!26930)) mapNonEmpty!26930))

(get-info :version)

(assert (= (and mapNonEmpty!26930 ((_ is ValueCellFull!8004) mapValue!26930)) b!866879))

(assert (= (and b!866883 ((_ is ValueCellFull!8004) mapDefault!26930)) b!866887))

(assert (= start!73864 b!866883))

(declare-fun b_lambda!12133 () Bool)

(assert (=> (not b_lambda!12133) (not b!866888)))

(declare-fun t!24155 () Bool)

(declare-fun tb!4881 () Bool)

(assert (=> (and start!73864 (= defaultEntry!696 defaultEntry!696) t!24155) tb!4881))

(declare-fun result!9365 () Bool)

(assert (=> tb!4881 (= result!9365 tp_is_empty!16887)))

(assert (=> b!866888 t!24155))

(declare-fun b_and!24501 () Bool)

(assert (= b_and!24499 (and (=> t!24155 result!9365) b_and!24501)))

(declare-fun m!808733 () Bool)

(assert (=> b!866888 m!808733))

(declare-fun m!808735 () Bool)

(assert (=> b!866888 m!808735))

(declare-fun m!808737 () Bool)

(assert (=> b!866888 m!808737))

(declare-fun m!808739 () Bool)

(assert (=> b!866888 m!808739))

(assert (=> b!866888 m!808735))

(declare-fun m!808741 () Bool)

(assert (=> b!866888 m!808741))

(assert (=> b!866888 m!808737))

(declare-fun m!808743 () Bool)

(assert (=> b!866877 m!808743))

(declare-fun m!808745 () Bool)

(assert (=> b!866881 m!808745))

(declare-fun m!808747 () Bool)

(assert (=> b!866890 m!808747))

(declare-fun m!808749 () Bool)

(assert (=> b!866890 m!808749))

(declare-fun m!808751 () Bool)

(assert (=> b!866890 m!808751))

(assert (=> b!866890 m!808741))

(declare-fun m!808753 () Bool)

(assert (=> b!866890 m!808753))

(assert (=> b!866890 m!808741))

(declare-fun m!808755 () Bool)

(assert (=> b!866890 m!808755))

(declare-fun m!808757 () Bool)

(assert (=> b!866886 m!808757))

(assert (=> b!866886 m!808757))

(declare-fun m!808759 () Bool)

(assert (=> b!866886 m!808759))

(assert (=> b!866886 m!808741))

(assert (=> b!866886 m!808741))

(declare-fun m!808761 () Bool)

(assert (=> b!866886 m!808761))

(declare-fun m!808763 () Bool)

(assert (=> b!866884 m!808763))

(declare-fun m!808765 () Bool)

(assert (=> b!866884 m!808765))

(declare-fun m!808767 () Bool)

(assert (=> b!866884 m!808767))

(declare-fun m!808769 () Bool)

(assert (=> b!866880 m!808769))

(declare-fun m!808771 () Bool)

(assert (=> b!866882 m!808771))

(declare-fun m!808773 () Bool)

(assert (=> b!866882 m!808773))

(declare-fun m!808775 () Bool)

(assert (=> b!866882 m!808775))

(declare-fun m!808777 () Bool)

(assert (=> b!866882 m!808777))

(declare-fun m!808779 () Bool)

(assert (=> b!866882 m!808779))

(declare-fun m!808781 () Bool)

(assert (=> mapNonEmpty!26930 m!808781))

(declare-fun m!808783 () Bool)

(assert (=> b!866885 m!808783))

(declare-fun m!808785 () Bool)

(assert (=> b!866876 m!808785))

(declare-fun m!808787 () Bool)

(assert (=> start!73864 m!808787))

(declare-fun m!808789 () Bool)

(assert (=> start!73864 m!808789))

(check-sat (not b!866882) (not b!866884) (not b!866888) (not start!73864) (not b!866881) (not b_lambda!12133) (not b!866876) (not b_next!14751) (not mapNonEmpty!26930) (not b!866886) b_and!24501 tp_is_empty!16887 (not b!866890) (not b!866885) (not b!866877))
(check-sat b_and!24501 (not b_next!14751))
