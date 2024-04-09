; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73774 () Bool)

(assert start!73774)

(declare-fun b_free!14661 () Bool)

(declare-fun b_next!14661 () Bool)

(assert (=> start!73774 (= b_free!14661 (not b_next!14661))))

(declare-fun tp!51487 () Bool)

(declare-fun b_and!24319 () Bool)

(assert (=> start!73774 (= tp!51487 b_and!24319)))

(declare-fun b!864625 () Bool)

(declare-fun res!587621 () Bool)

(declare-fun e!481698 () Bool)

(assert (=> b!864625 (=> (not res!587621) (not e!481698))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49738 0))(
  ( (array!49739 (arr!23896 (Array (_ BitVec 32) (_ BitVec 64))) (size!24337 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49738)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864625 (= res!587621 (and (= (select (arr!23896 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864626 () Bool)

(declare-fun res!587628 () Bool)

(assert (=> b!864626 (=> (not res!587628) (not e!481698))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27443 0))(
  ( (V!27444 (val!8446 Int)) )
))
(declare-datatypes ((ValueCell!7959 0))(
  ( (ValueCellFull!7959 (v!10867 V!27443)) (EmptyCell!7959) )
))
(declare-datatypes ((array!49740 0))(
  ( (array!49741 (arr!23897 (Array (_ BitVec 32) ValueCell!7959)) (size!24338 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49740)

(assert (=> b!864626 (= res!587628 (and (= (size!24338 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24337 _keys!868) (size!24338 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864627 () Bool)

(declare-datatypes ((Unit!29560 0))(
  ( (Unit!29561) )
))
(declare-fun e!481699 () Unit!29560)

(declare-fun Unit!29562 () Unit!29560)

(assert (=> b!864627 (= e!481699 Unit!29562)))

(declare-fun res!587618 () Bool)

(assert (=> start!73774 (=> (not res!587618) (not e!481698))))

(assert (=> start!73774 (= res!587618 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24337 _keys!868))))))

(assert (=> start!73774 e!481698))

(declare-fun tp_is_empty!16797 () Bool)

(assert (=> start!73774 tp_is_empty!16797))

(assert (=> start!73774 true))

(assert (=> start!73774 tp!51487))

(declare-fun array_inv!18874 (array!49738) Bool)

(assert (=> start!73774 (array_inv!18874 _keys!868)))

(declare-fun e!481703 () Bool)

(declare-fun array_inv!18875 (array!49740) Bool)

(assert (=> start!73774 (and (array_inv!18875 _values!688) e!481703)))

(declare-fun b!864628 () Bool)

(declare-fun e!481702 () Bool)

(declare-fun mapRes!26795 () Bool)

(assert (=> b!864628 (= e!481703 (and e!481702 mapRes!26795))))

(declare-fun condMapEmpty!26795 () Bool)

(declare-fun mapDefault!26795 () ValueCell!7959)

(assert (=> b!864628 (= condMapEmpty!26795 (= (arr!23897 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7959)) mapDefault!26795)))))

(declare-fun b!864629 () Bool)

(declare-fun e!481697 () Bool)

(declare-fun e!481696 () Bool)

(assert (=> b!864629 (= e!481697 e!481696)))

(declare-fun res!587622 () Bool)

(assert (=> b!864629 (=> res!587622 e!481696)))

(assert (=> b!864629 (= res!587622 (= k0!854 (select (arr!23896 _keys!868) from!1053)))))

(assert (=> b!864629 (not (= (select (arr!23896 _keys!868) from!1053) k0!854))))

(declare-fun lt!391473 () Unit!29560)

(assert (=> b!864629 (= lt!391473 e!481699)))

(declare-fun c!92130 () Bool)

(assert (=> b!864629 (= c!92130 (= (select (arr!23896 _keys!868) from!1053) k0!854))))

(declare-datatypes ((tuple2!11188 0))(
  ( (tuple2!11189 (_1!5604 (_ BitVec 64)) (_2!5604 V!27443)) )
))
(declare-datatypes ((List!17054 0))(
  ( (Nil!17051) (Cons!17050 (h!18181 tuple2!11188) (t!23989 List!17054)) )
))
(declare-datatypes ((ListLongMap!9971 0))(
  ( (ListLongMap!9972 (toList!5001 List!17054)) )
))
(declare-fun lt!391472 () ListLongMap!9971)

(declare-fun lt!391459 () ListLongMap!9971)

(assert (=> b!864629 (= lt!391472 lt!391459)))

(declare-fun lt!391469 () ListLongMap!9971)

(declare-fun lt!391470 () tuple2!11188)

(declare-fun +!2297 (ListLongMap!9971 tuple2!11188) ListLongMap!9971)

(assert (=> b!864629 (= lt!391459 (+!2297 lt!391469 lt!391470))))

(declare-fun lt!391467 () V!27443)

(assert (=> b!864629 (= lt!391470 (tuple2!11189 (select (arr!23896 _keys!868) from!1053) lt!391467))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12637 (ValueCell!7959 V!27443) V!27443)

(declare-fun dynLambda!1167 (Int (_ BitVec 64)) V!27443)

(assert (=> b!864629 (= lt!391467 (get!12637 (select (arr!23897 _values!688) from!1053) (dynLambda!1167 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864630 () Bool)

(declare-fun e!481704 () Bool)

(assert (=> b!864630 (= e!481698 e!481704)))

(declare-fun res!587624 () Bool)

(assert (=> b!864630 (=> (not res!587624) (not e!481704))))

(assert (=> b!864630 (= res!587624 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!391462 () array!49740)

(declare-fun minValue!654 () V!27443)

(declare-fun zeroValue!654 () V!27443)

(declare-fun getCurrentListMapNoExtraKeys!2973 (array!49738 array!49740 (_ BitVec 32) (_ BitVec 32) V!27443 V!27443 (_ BitVec 32) Int) ListLongMap!9971)

(assert (=> b!864630 (= lt!391472 (getCurrentListMapNoExtraKeys!2973 _keys!868 lt!391462 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27443)

(assert (=> b!864630 (= lt!391462 (array!49741 (store (arr!23897 _values!688) i!612 (ValueCellFull!7959 v!557)) (size!24338 _values!688)))))

(declare-fun lt!391460 () ListLongMap!9971)

(assert (=> b!864630 (= lt!391460 (getCurrentListMapNoExtraKeys!2973 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864631 () Bool)

(declare-fun res!587619 () Bool)

(assert (=> b!864631 (=> (not res!587619) (not e!481698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864631 (= res!587619 (validMask!0 mask!1196))))

(declare-fun b!864632 () Bool)

(assert (=> b!864632 (= e!481696 true)))

(declare-fun lt!391458 () ListLongMap!9971)

(declare-fun lt!391465 () tuple2!11188)

(assert (=> b!864632 (= lt!391459 (+!2297 (+!2297 lt!391458 lt!391470) lt!391465))))

(declare-fun lt!391468 () Unit!29560)

(declare-fun addCommutativeForDiffKeys!505 (ListLongMap!9971 (_ BitVec 64) V!27443 (_ BitVec 64) V!27443) Unit!29560)

(assert (=> b!864632 (= lt!391468 (addCommutativeForDiffKeys!505 lt!391458 k0!854 v!557 (select (arr!23896 _keys!868) from!1053) lt!391467))))

(declare-fun b!864633 () Bool)

(declare-fun e!481701 () Bool)

(assert (=> b!864633 (= e!481701 tp_is_empty!16797)))

(declare-fun b!864634 () Bool)

(declare-fun res!587623 () Bool)

(assert (=> b!864634 (=> (not res!587623) (not e!481698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864634 (= res!587623 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26795 () Bool)

(declare-fun tp!51488 () Bool)

(assert (=> mapNonEmpty!26795 (= mapRes!26795 (and tp!51488 e!481701))))

(declare-fun mapValue!26795 () ValueCell!7959)

(declare-fun mapRest!26795 () (Array (_ BitVec 32) ValueCell!7959))

(declare-fun mapKey!26795 () (_ BitVec 32))

(assert (=> mapNonEmpty!26795 (= (arr!23897 _values!688) (store mapRest!26795 mapKey!26795 mapValue!26795))))

(declare-fun b!864635 () Bool)

(assert (=> b!864635 (= e!481702 tp_is_empty!16797)))

(declare-fun b!864636 () Bool)

(declare-fun Unit!29563 () Unit!29560)

(assert (=> b!864636 (= e!481699 Unit!29563)))

(declare-fun lt!391466 () Unit!29560)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49738 (_ BitVec 32) (_ BitVec 32)) Unit!29560)

(assert (=> b!864636 (= lt!391466 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17055 0))(
  ( (Nil!17052) (Cons!17051 (h!18182 (_ BitVec 64)) (t!23990 List!17055)) )
))
(declare-fun arrayNoDuplicates!0 (array!49738 (_ BitVec 32) List!17055) Bool)

(assert (=> b!864636 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17052)))

(declare-fun lt!391464 () Unit!29560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29560)

(assert (=> b!864636 (= lt!391464 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864636 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391471 () Unit!29560)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49738 (_ BitVec 64) (_ BitVec 32) List!17055) Unit!29560)

(assert (=> b!864636 (= lt!391471 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17052))))

(assert (=> b!864636 false))

(declare-fun b!864637 () Bool)

(declare-fun res!587626 () Bool)

(assert (=> b!864637 (=> (not res!587626) (not e!481698))))

(assert (=> b!864637 (= res!587626 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24337 _keys!868))))))

(declare-fun b!864638 () Bool)

(declare-fun res!587625 () Bool)

(assert (=> b!864638 (=> (not res!587625) (not e!481698))))

(assert (=> b!864638 (= res!587625 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17052))))

(declare-fun mapIsEmpty!26795 () Bool)

(assert (=> mapIsEmpty!26795 mapRes!26795))

(declare-fun b!864639 () Bool)

(assert (=> b!864639 (= e!481704 (not e!481697))))

(declare-fun res!587620 () Bool)

(assert (=> b!864639 (=> res!587620 e!481697)))

(assert (=> b!864639 (= res!587620 (not (validKeyInArray!0 (select (arr!23896 _keys!868) from!1053))))))

(declare-fun lt!391461 () ListLongMap!9971)

(assert (=> b!864639 (= lt!391461 lt!391469)))

(assert (=> b!864639 (= lt!391469 (+!2297 lt!391458 lt!391465))))

(assert (=> b!864639 (= lt!391461 (getCurrentListMapNoExtraKeys!2973 _keys!868 lt!391462 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864639 (= lt!391465 (tuple2!11189 k0!854 v!557))))

(assert (=> b!864639 (= lt!391458 (getCurrentListMapNoExtraKeys!2973 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391463 () Unit!29560)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!539 (array!49738 array!49740 (_ BitVec 32) (_ BitVec 32) V!27443 V!27443 (_ BitVec 32) (_ BitVec 64) V!27443 (_ BitVec 32) Int) Unit!29560)

(assert (=> b!864639 (= lt!391463 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!539 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864640 () Bool)

(declare-fun res!587627 () Bool)

(assert (=> b!864640 (=> (not res!587627) (not e!481698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49738 (_ BitVec 32)) Bool)

(assert (=> b!864640 (= res!587627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73774 res!587618) b!864631))

(assert (= (and b!864631 res!587619) b!864626))

(assert (= (and b!864626 res!587628) b!864640))

(assert (= (and b!864640 res!587627) b!864638))

(assert (= (and b!864638 res!587625) b!864637))

(assert (= (and b!864637 res!587626) b!864634))

(assert (= (and b!864634 res!587623) b!864625))

(assert (= (and b!864625 res!587621) b!864630))

(assert (= (and b!864630 res!587624) b!864639))

(assert (= (and b!864639 (not res!587620)) b!864629))

(assert (= (and b!864629 c!92130) b!864636))

(assert (= (and b!864629 (not c!92130)) b!864627))

(assert (= (and b!864629 (not res!587622)) b!864632))

(assert (= (and b!864628 condMapEmpty!26795) mapIsEmpty!26795))

(assert (= (and b!864628 (not condMapEmpty!26795)) mapNonEmpty!26795))

(get-info :version)

(assert (= (and mapNonEmpty!26795 ((_ is ValueCellFull!7959) mapValue!26795)) b!864633))

(assert (= (and b!864628 ((_ is ValueCellFull!7959) mapDefault!26795)) b!864635))

(assert (= start!73774 b!864628))

(declare-fun b_lambda!12043 () Bool)

(assert (=> (not b_lambda!12043) (not b!864629)))

(declare-fun t!23988 () Bool)

(declare-fun tb!4791 () Bool)

(assert (=> (and start!73774 (= defaultEntry!696 defaultEntry!696) t!23988) tb!4791))

(declare-fun result!9185 () Bool)

(assert (=> tb!4791 (= result!9185 tp_is_empty!16797)))

(assert (=> b!864629 t!23988))

(declare-fun b_and!24321 () Bool)

(assert (= b_and!24319 (and (=> t!23988 result!9185) b_and!24321)))

(declare-fun m!806123 () Bool)

(assert (=> b!864639 m!806123))

(declare-fun m!806125 () Bool)

(assert (=> b!864639 m!806125))

(declare-fun m!806127 () Bool)

(assert (=> b!864639 m!806127))

(declare-fun m!806129 () Bool)

(assert (=> b!864639 m!806129))

(declare-fun m!806131 () Bool)

(assert (=> b!864639 m!806131))

(assert (=> b!864639 m!806129))

(declare-fun m!806133 () Bool)

(assert (=> b!864639 m!806133))

(declare-fun m!806135 () Bool)

(assert (=> b!864636 m!806135))

(declare-fun m!806137 () Bool)

(assert (=> b!864636 m!806137))

(declare-fun m!806139 () Bool)

(assert (=> b!864636 m!806139))

(declare-fun m!806141 () Bool)

(assert (=> b!864636 m!806141))

(declare-fun m!806143 () Bool)

(assert (=> b!864636 m!806143))

(declare-fun m!806145 () Bool)

(assert (=> b!864630 m!806145))

(declare-fun m!806147 () Bool)

(assert (=> b!864630 m!806147))

(declare-fun m!806149 () Bool)

(assert (=> b!864630 m!806149))

(declare-fun m!806151 () Bool)

(assert (=> b!864632 m!806151))

(assert (=> b!864632 m!806151))

(declare-fun m!806153 () Bool)

(assert (=> b!864632 m!806153))

(assert (=> b!864632 m!806129))

(assert (=> b!864632 m!806129))

(declare-fun m!806155 () Bool)

(assert (=> b!864632 m!806155))

(declare-fun m!806157 () Bool)

(assert (=> b!864631 m!806157))

(declare-fun m!806159 () Bool)

(assert (=> mapNonEmpty!26795 m!806159))

(declare-fun m!806161 () Bool)

(assert (=> b!864640 m!806161))

(declare-fun m!806163 () Bool)

(assert (=> b!864629 m!806163))

(declare-fun m!806165 () Bool)

(assert (=> b!864629 m!806165))

(declare-fun m!806167 () Bool)

(assert (=> b!864629 m!806167))

(assert (=> b!864629 m!806163))

(assert (=> b!864629 m!806129))

(assert (=> b!864629 m!806165))

(declare-fun m!806169 () Bool)

(assert (=> b!864629 m!806169))

(declare-fun m!806171 () Bool)

(assert (=> b!864634 m!806171))

(declare-fun m!806173 () Bool)

(assert (=> b!864625 m!806173))

(declare-fun m!806175 () Bool)

(assert (=> start!73774 m!806175))

(declare-fun m!806177 () Bool)

(assert (=> start!73774 m!806177))

(declare-fun m!806179 () Bool)

(assert (=> b!864638 m!806179))

(check-sat (not b!864636) (not b!864629) b_and!24321 tp_is_empty!16797 (not b_lambda!12043) (not b!864632) (not start!73774) (not b!864638) (not b!864630) (not b_next!14661) (not b!864634) (not b!864631) (not mapNonEmpty!26795) (not b!864640) (not b!864639))
(check-sat b_and!24321 (not b_next!14661))
