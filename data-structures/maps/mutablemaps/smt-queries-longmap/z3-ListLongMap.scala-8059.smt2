; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99232 () Bool)

(assert start!99232)

(declare-fun b_free!24801 () Bool)

(declare-fun b_next!24801 () Bool)

(assert (=> start!99232 (= b_free!24801 (not b_next!24801))))

(declare-fun tp!87115 () Bool)

(declare-fun b_and!40465 () Bool)

(assert (=> start!99232 (= tp!87115 b_and!40465)))

(declare-fun b!1167813 () Bool)

(declare-fun res!774840 () Bool)

(declare-fun e!663775 () Bool)

(assert (=> b!1167813 (=> (not res!774840) (not e!663775))))

(declare-datatypes ((array!75440 0))(
  ( (array!75441 (arr!36367 (Array (_ BitVec 32) (_ BitVec 64))) (size!36904 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75440)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75440 (_ BitVec 32)) Bool)

(assert (=> b!1167813 (= res!774840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45821 () Bool)

(declare-fun mapRes!45821 () Bool)

(assert (=> mapIsEmpty!45821 mapRes!45821))

(declare-fun b!1167814 () Bool)

(declare-fun e!663773 () Bool)

(declare-fun e!663780 () Bool)

(assert (=> b!1167814 (= e!663773 (and e!663780 mapRes!45821))))

(declare-fun condMapEmpty!45821 () Bool)

(declare-datatypes ((V!44235 0))(
  ( (V!44236 (val!14722 Int)) )
))
(declare-datatypes ((ValueCell!13956 0))(
  ( (ValueCellFull!13956 (v!17360 V!44235)) (EmptyCell!13956) )
))
(declare-datatypes ((array!75442 0))(
  ( (array!75443 (arr!36368 (Array (_ BitVec 32) ValueCell!13956)) (size!36905 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75442)

(declare-fun mapDefault!45821 () ValueCell!13956)

(assert (=> b!1167814 (= condMapEmpty!45821 (= (arr!36368 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13956)) mapDefault!45821)))))

(declare-fun b!1167815 () Bool)

(declare-fun e!663776 () Bool)

(declare-fun e!663778 () Bool)

(assert (=> b!1167815 (= e!663776 e!663778)))

(declare-fun res!774843 () Bool)

(assert (=> b!1167815 (=> res!774843 e!663778)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167815 (= res!774843 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44235)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525749 () array!75440)

(declare-fun minValue!944 () V!44235)

(declare-datatypes ((tuple2!18868 0))(
  ( (tuple2!18869 (_1!9444 (_ BitVec 64)) (_2!9444 V!44235)) )
))
(declare-datatypes ((List!25643 0))(
  ( (Nil!25640) (Cons!25639 (h!26848 tuple2!18868) (t!37443 List!25643)) )
))
(declare-datatypes ((ListLongMap!16849 0))(
  ( (ListLongMap!16850 (toList!8440 List!25643)) )
))
(declare-fun lt!525750 () ListLongMap!16849)

(declare-fun lt!525748 () array!75442)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4873 (array!75440 array!75442 (_ BitVec 32) (_ BitVec 32) V!44235 V!44235 (_ BitVec 32) Int) ListLongMap!16849)

(assert (=> b!1167815 (= lt!525750 (getCurrentListMapNoExtraKeys!4873 lt!525749 lt!525748 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2865 (Int (_ BitVec 64)) V!44235)

(assert (=> b!1167815 (= lt!525748 (array!75443 (store (arr!36368 _values!996) i!673 (ValueCellFull!13956 (dynLambda!2865 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36905 _values!996)))))

(declare-fun lt!525752 () ListLongMap!16849)

(assert (=> b!1167815 (= lt!525752 (getCurrentListMapNoExtraKeys!4873 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167816 () Bool)

(declare-fun tp_is_empty!29331 () Bool)

(assert (=> b!1167816 (= e!663780 tp_is_empty!29331)))

(declare-fun mapNonEmpty!45821 () Bool)

(declare-fun tp!87114 () Bool)

(declare-fun e!663777 () Bool)

(assert (=> mapNonEmpty!45821 (= mapRes!45821 (and tp!87114 e!663777))))

(declare-fun mapRest!45821 () (Array (_ BitVec 32) ValueCell!13956))

(declare-fun mapKey!45821 () (_ BitVec 32))

(declare-fun mapValue!45821 () ValueCell!13956)

(assert (=> mapNonEmpty!45821 (= (arr!36368 _values!996) (store mapRest!45821 mapKey!45821 mapValue!45821))))

(declare-fun b!1167817 () Bool)

(assert (=> b!1167817 (= e!663778 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1471 (ListLongMap!16849 (_ BitVec 64)) ListLongMap!16849)

(assert (=> b!1167817 (= (getCurrentListMapNoExtraKeys!4873 lt!525749 lt!525748 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1471 (getCurrentListMapNoExtraKeys!4873 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38430 0))(
  ( (Unit!38431) )
))
(declare-fun lt!525753 () Unit!38430)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!695 (array!75440 array!75442 (_ BitVec 32) (_ BitVec 32) V!44235 V!44235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38430)

(assert (=> b!1167817 (= lt!525753 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!695 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167818 () Bool)

(declare-fun res!774844 () Bool)

(declare-fun e!663774 () Bool)

(assert (=> b!1167818 (=> (not res!774844) (not e!663774))))

(declare-datatypes ((List!25644 0))(
  ( (Nil!25641) (Cons!25640 (h!26849 (_ BitVec 64)) (t!37444 List!25644)) )
))
(declare-fun arrayNoDuplicates!0 (array!75440 (_ BitVec 32) List!25644) Bool)

(assert (=> b!1167818 (= res!774844 (arrayNoDuplicates!0 lt!525749 #b00000000000000000000000000000000 Nil!25641))))

(declare-fun b!1167819 () Bool)

(declare-fun res!774846 () Bool)

(assert (=> b!1167819 (=> (not res!774846) (not e!663775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167819 (= res!774846 (validKeyInArray!0 k0!934))))

(declare-fun b!1167820 () Bool)

(assert (=> b!1167820 (= e!663774 (not e!663776))))

(declare-fun res!774838 () Bool)

(assert (=> b!1167820 (=> res!774838 e!663776)))

(assert (=> b!1167820 (= res!774838 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167820 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525751 () Unit!38430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75440 (_ BitVec 64) (_ BitVec 32)) Unit!38430)

(assert (=> b!1167820 (= lt!525751 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167821 () Bool)

(declare-fun res!774839 () Bool)

(assert (=> b!1167821 (=> (not res!774839) (not e!663775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167821 (= res!774839 (validMask!0 mask!1564))))

(declare-fun b!1167823 () Bool)

(declare-fun res!774847 () Bool)

(assert (=> b!1167823 (=> (not res!774847) (not e!663775))))

(assert (=> b!1167823 (= res!774847 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36904 _keys!1208))))))

(declare-fun b!1167824 () Bool)

(assert (=> b!1167824 (= e!663777 tp_is_empty!29331)))

(declare-fun b!1167825 () Bool)

(assert (=> b!1167825 (= e!663775 e!663774)))

(declare-fun res!774842 () Bool)

(assert (=> b!1167825 (=> (not res!774842) (not e!663774))))

(assert (=> b!1167825 (= res!774842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525749 mask!1564))))

(assert (=> b!1167825 (= lt!525749 (array!75441 (store (arr!36367 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36904 _keys!1208)))))

(declare-fun b!1167826 () Bool)

(declare-fun res!774845 () Bool)

(assert (=> b!1167826 (=> (not res!774845) (not e!663775))))

(assert (=> b!1167826 (= res!774845 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25641))))

(declare-fun b!1167827 () Bool)

(declare-fun res!774848 () Bool)

(assert (=> b!1167827 (=> (not res!774848) (not e!663775))))

(assert (=> b!1167827 (= res!774848 (and (= (size!36905 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36904 _keys!1208) (size!36905 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!774841 () Bool)

(assert (=> start!99232 (=> (not res!774841) (not e!663775))))

(assert (=> start!99232 (= res!774841 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36904 _keys!1208))))))

(assert (=> start!99232 e!663775))

(assert (=> start!99232 tp_is_empty!29331))

(declare-fun array_inv!27680 (array!75440) Bool)

(assert (=> start!99232 (array_inv!27680 _keys!1208)))

(assert (=> start!99232 true))

(assert (=> start!99232 tp!87115))

(declare-fun array_inv!27681 (array!75442) Bool)

(assert (=> start!99232 (and (array_inv!27681 _values!996) e!663773)))

(declare-fun b!1167822 () Bool)

(declare-fun res!774837 () Bool)

(assert (=> b!1167822 (=> (not res!774837) (not e!663775))))

(assert (=> b!1167822 (= res!774837 (= (select (arr!36367 _keys!1208) i!673) k0!934))))

(assert (= (and start!99232 res!774841) b!1167821))

(assert (= (and b!1167821 res!774839) b!1167827))

(assert (= (and b!1167827 res!774848) b!1167813))

(assert (= (and b!1167813 res!774840) b!1167826))

(assert (= (and b!1167826 res!774845) b!1167823))

(assert (= (and b!1167823 res!774847) b!1167819))

(assert (= (and b!1167819 res!774846) b!1167822))

(assert (= (and b!1167822 res!774837) b!1167825))

(assert (= (and b!1167825 res!774842) b!1167818))

(assert (= (and b!1167818 res!774844) b!1167820))

(assert (= (and b!1167820 (not res!774838)) b!1167815))

(assert (= (and b!1167815 (not res!774843)) b!1167817))

(assert (= (and b!1167814 condMapEmpty!45821) mapIsEmpty!45821))

(assert (= (and b!1167814 (not condMapEmpty!45821)) mapNonEmpty!45821))

(get-info :version)

(assert (= (and mapNonEmpty!45821 ((_ is ValueCellFull!13956) mapValue!45821)) b!1167824))

(assert (= (and b!1167814 ((_ is ValueCellFull!13956) mapDefault!45821)) b!1167816))

(assert (= start!99232 b!1167814))

(declare-fun b_lambda!19925 () Bool)

(assert (=> (not b_lambda!19925) (not b!1167815)))

(declare-fun t!37442 () Bool)

(declare-fun tb!9621 () Bool)

(assert (=> (and start!99232 (= defaultEntry!1004 defaultEntry!1004) t!37442) tb!9621))

(declare-fun result!19799 () Bool)

(assert (=> tb!9621 (= result!19799 tp_is_empty!29331)))

(assert (=> b!1167815 t!37442))

(declare-fun b_and!40467 () Bool)

(assert (= b_and!40465 (and (=> t!37442 result!19799) b_and!40467)))

(declare-fun m!1075753 () Bool)

(assert (=> b!1167817 m!1075753))

(declare-fun m!1075755 () Bool)

(assert (=> b!1167817 m!1075755))

(assert (=> b!1167817 m!1075755))

(declare-fun m!1075757 () Bool)

(assert (=> b!1167817 m!1075757))

(declare-fun m!1075759 () Bool)

(assert (=> b!1167817 m!1075759))

(declare-fun m!1075761 () Bool)

(assert (=> b!1167821 m!1075761))

(declare-fun m!1075763 () Bool)

(assert (=> b!1167820 m!1075763))

(declare-fun m!1075765 () Bool)

(assert (=> b!1167820 m!1075765))

(declare-fun m!1075767 () Bool)

(assert (=> b!1167826 m!1075767))

(declare-fun m!1075769 () Bool)

(assert (=> b!1167825 m!1075769))

(declare-fun m!1075771 () Bool)

(assert (=> b!1167825 m!1075771))

(declare-fun m!1075773 () Bool)

(assert (=> b!1167818 m!1075773))

(declare-fun m!1075775 () Bool)

(assert (=> start!99232 m!1075775))

(declare-fun m!1075777 () Bool)

(assert (=> start!99232 m!1075777))

(declare-fun m!1075779 () Bool)

(assert (=> b!1167822 m!1075779))

(declare-fun m!1075781 () Bool)

(assert (=> b!1167819 m!1075781))

(declare-fun m!1075783 () Bool)

(assert (=> b!1167815 m!1075783))

(declare-fun m!1075785 () Bool)

(assert (=> b!1167815 m!1075785))

(declare-fun m!1075787 () Bool)

(assert (=> b!1167815 m!1075787))

(declare-fun m!1075789 () Bool)

(assert (=> b!1167815 m!1075789))

(declare-fun m!1075791 () Bool)

(assert (=> b!1167813 m!1075791))

(declare-fun m!1075793 () Bool)

(assert (=> mapNonEmpty!45821 m!1075793))

(check-sat (not b!1167813) (not b!1167825) (not b_next!24801) (not b!1167818) (not b!1167819) (not b!1167826) (not b!1167820) (not start!99232) (not b!1167817) tp_is_empty!29331 (not b!1167821) b_and!40467 (not mapNonEmpty!45821) (not b_lambda!19925) (not b!1167815))
(check-sat b_and!40467 (not b_next!24801))
