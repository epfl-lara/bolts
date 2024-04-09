; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100290 () Bool)

(assert start!100290)

(declare-fun b!1195763 () Bool)

(declare-fun res!795805 () Bool)

(declare-fun e!679487 () Bool)

(assert (=> b!1195763 (=> (not res!795805) (not e!679487))))

(declare-datatypes ((array!77404 0))(
  ( (array!77405 (arr!37345 (Array (_ BitVec 32) (_ BitVec 64))) (size!37882 (_ BitVec 32))) )
))
(declare-fun lt!542933 () array!77404)

(declare-datatypes ((List!26448 0))(
  ( (Nil!26445) (Cons!26444 (h!27653 (_ BitVec 64)) (t!39126 List!26448)) )
))
(declare-fun arrayNoDuplicates!0 (array!77404 (_ BitVec 32) List!26448) Bool)

(assert (=> b!1195763 (= res!795805 (arrayNoDuplicates!0 lt!542933 #b00000000000000000000000000000000 Nil!26445))))

(declare-fun b!1195764 () Bool)

(declare-fun res!795810 () Bool)

(declare-fun e!679489 () Bool)

(assert (=> b!1195764 (=> (not res!795810) (not e!679489))))

(declare-fun _keys!1208 () array!77404)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77404 (_ BitVec 32)) Bool)

(assert (=> b!1195764 (= res!795810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195765 () Bool)

(declare-fun res!795802 () Bool)

(assert (=> b!1195765 (=> (not res!795802) (not e!679489))))

(assert (=> b!1195765 (= res!795802 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26445))))

(declare-fun b!1195766 () Bool)

(declare-fun res!795809 () Bool)

(assert (=> b!1195766 (=> (not res!795809) (not e!679489))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45555 0))(
  ( (V!45556 (val!15217 Int)) )
))
(declare-datatypes ((ValueCell!14451 0))(
  ( (ValueCellFull!14451 (v!17856 V!45555)) (EmptyCell!14451) )
))
(declare-datatypes ((array!77406 0))(
  ( (array!77407 (arr!37346 (Array (_ BitVec 32) ValueCell!14451)) (size!37883 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77406)

(assert (=> b!1195766 (= res!795809 (and (= (size!37883 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37882 _keys!1208) (size!37883 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47318 () Bool)

(declare-fun mapRes!47318 () Bool)

(declare-fun tp!89929 () Bool)

(declare-fun e!679490 () Bool)

(assert (=> mapNonEmpty!47318 (= mapRes!47318 (and tp!89929 e!679490))))

(declare-fun mapKey!47318 () (_ BitVec 32))

(declare-fun mapRest!47318 () (Array (_ BitVec 32) ValueCell!14451))

(declare-fun mapValue!47318 () ValueCell!14451)

(assert (=> mapNonEmpty!47318 (= (arr!37346 _values!996) (store mapRest!47318 mapKey!47318 mapValue!47318))))

(declare-fun b!1195768 () Bool)

(assert (=> b!1195768 (= e!679487 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195768 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39592 0))(
  ( (Unit!39593) )
))
(declare-fun lt!542934 () Unit!39592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77404 (_ BitVec 64) (_ BitVec 32)) Unit!39592)

(assert (=> b!1195768 (= lt!542934 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47318 () Bool)

(assert (=> mapIsEmpty!47318 mapRes!47318))

(declare-fun b!1195769 () Bool)

(declare-fun res!795811 () Bool)

(assert (=> b!1195769 (=> (not res!795811) (not e!679489))))

(assert (=> b!1195769 (= res!795811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37882 _keys!1208))))))

(declare-fun b!1195770 () Bool)

(declare-fun e!679488 () Bool)

(declare-fun e!679492 () Bool)

(assert (=> b!1195770 (= e!679488 (and e!679492 mapRes!47318))))

(declare-fun condMapEmpty!47318 () Bool)

(declare-fun mapDefault!47318 () ValueCell!14451)

(assert (=> b!1195770 (= condMapEmpty!47318 (= (arr!37346 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14451)) mapDefault!47318)))))

(declare-fun b!1195771 () Bool)

(declare-fun tp_is_empty!30321 () Bool)

(assert (=> b!1195771 (= e!679492 tp_is_empty!30321)))

(declare-fun b!1195772 () Bool)

(declare-fun res!795808 () Bool)

(assert (=> b!1195772 (=> (not res!795808) (not e!679489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195772 (= res!795808 (validKeyInArray!0 k0!934))))

(declare-fun b!1195773 () Bool)

(declare-fun res!795807 () Bool)

(assert (=> b!1195773 (=> (not res!795807) (not e!679489))))

(assert (=> b!1195773 (= res!795807 (= (select (arr!37345 _keys!1208) i!673) k0!934))))

(declare-fun b!1195767 () Bool)

(declare-fun res!795804 () Bool)

(assert (=> b!1195767 (=> (not res!795804) (not e!679489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195767 (= res!795804 (validMask!0 mask!1564))))

(declare-fun res!795806 () Bool)

(assert (=> start!100290 (=> (not res!795806) (not e!679489))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100290 (= res!795806 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37882 _keys!1208))))))

(assert (=> start!100290 e!679489))

(declare-fun array_inv!28366 (array!77404) Bool)

(assert (=> start!100290 (array_inv!28366 _keys!1208)))

(assert (=> start!100290 true))

(declare-fun array_inv!28367 (array!77406) Bool)

(assert (=> start!100290 (and (array_inv!28367 _values!996) e!679488)))

(declare-fun b!1195774 () Bool)

(assert (=> b!1195774 (= e!679489 e!679487)))

(declare-fun res!795803 () Bool)

(assert (=> b!1195774 (=> (not res!795803) (not e!679487))))

(assert (=> b!1195774 (= res!795803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542933 mask!1564))))

(assert (=> b!1195774 (= lt!542933 (array!77405 (store (arr!37345 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37882 _keys!1208)))))

(declare-fun b!1195775 () Bool)

(assert (=> b!1195775 (= e!679490 tp_is_empty!30321)))

(assert (= (and start!100290 res!795806) b!1195767))

(assert (= (and b!1195767 res!795804) b!1195766))

(assert (= (and b!1195766 res!795809) b!1195764))

(assert (= (and b!1195764 res!795810) b!1195765))

(assert (= (and b!1195765 res!795802) b!1195769))

(assert (= (and b!1195769 res!795811) b!1195772))

(assert (= (and b!1195772 res!795808) b!1195773))

(assert (= (and b!1195773 res!795807) b!1195774))

(assert (= (and b!1195774 res!795803) b!1195763))

(assert (= (and b!1195763 res!795805) b!1195768))

(assert (= (and b!1195770 condMapEmpty!47318) mapIsEmpty!47318))

(assert (= (and b!1195770 (not condMapEmpty!47318)) mapNonEmpty!47318))

(get-info :version)

(assert (= (and mapNonEmpty!47318 ((_ is ValueCellFull!14451) mapValue!47318)) b!1195775))

(assert (= (and b!1195770 ((_ is ValueCellFull!14451) mapDefault!47318)) b!1195771))

(assert (= start!100290 b!1195770))

(declare-fun m!1103257 () Bool)

(assert (=> b!1195765 m!1103257))

(declare-fun m!1103259 () Bool)

(assert (=> b!1195772 m!1103259))

(declare-fun m!1103261 () Bool)

(assert (=> b!1195768 m!1103261))

(declare-fun m!1103263 () Bool)

(assert (=> b!1195768 m!1103263))

(declare-fun m!1103265 () Bool)

(assert (=> b!1195764 m!1103265))

(declare-fun m!1103267 () Bool)

(assert (=> b!1195767 m!1103267))

(declare-fun m!1103269 () Bool)

(assert (=> start!100290 m!1103269))

(declare-fun m!1103271 () Bool)

(assert (=> start!100290 m!1103271))

(declare-fun m!1103273 () Bool)

(assert (=> b!1195773 m!1103273))

(declare-fun m!1103275 () Bool)

(assert (=> b!1195763 m!1103275))

(declare-fun m!1103277 () Bool)

(assert (=> mapNonEmpty!47318 m!1103277))

(declare-fun m!1103279 () Bool)

(assert (=> b!1195774 m!1103279))

(declare-fun m!1103281 () Bool)

(assert (=> b!1195774 m!1103281))

(check-sat (not b!1195772) (not mapNonEmpty!47318) tp_is_empty!30321 (not b!1195765) (not start!100290) (not b!1195763) (not b!1195774) (not b!1195768) (not b!1195764) (not b!1195767))
(check-sat)
