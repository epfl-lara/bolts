; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99936 () Bool)

(assert start!99936)

(declare-fun b_free!25479 () Bool)

(declare-fun b_next!25479 () Bool)

(assert (=> start!99936 (= b_free!25479 (not b_next!25479))))

(declare-fun tp!89151 () Bool)

(declare-fun b_and!41839 () Bool)

(assert (=> start!99936 (= tp!89151 b_and!41839)))

(declare-fun b!1188866 () Bool)

(declare-fun res!790601 () Bool)

(declare-fun e!675992 () Bool)

(assert (=> b!1188866 (=> (not res!790601) (not e!675992))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188866 (= res!790601 (validKeyInArray!0 k0!934))))

(declare-fun b!1188868 () Bool)

(declare-fun res!790608 () Bool)

(declare-fun e!675995 () Bool)

(assert (=> b!1188868 (=> (not res!790608) (not e!675995))))

(declare-datatypes ((array!76786 0))(
  ( (array!76787 (arr!37039 (Array (_ BitVec 32) (_ BitVec 64))) (size!37576 (_ BitVec 32))) )
))
(declare-fun lt!540817 () array!76786)

(declare-datatypes ((List!26230 0))(
  ( (Nil!26227) (Cons!26226 (h!27435 (_ BitVec 64)) (t!38708 List!26230)) )
))
(declare-fun arrayNoDuplicates!0 (array!76786 (_ BitVec 32) List!26230) Bool)

(assert (=> b!1188868 (= res!790608 (arrayNoDuplicates!0 lt!540817 #b00000000000000000000000000000000 Nil!26227))))

(declare-fun b!1188869 () Bool)

(declare-fun res!790606 () Bool)

(assert (=> b!1188869 (=> (not res!790606) (not e!675992))))

(declare-fun _keys!1208 () array!76786)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76786 (_ BitVec 32)) Bool)

(assert (=> b!1188869 (= res!790606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188870 () Bool)

(declare-fun e!675990 () Bool)

(assert (=> b!1188870 (= e!675990 true)))

(declare-datatypes ((V!45139 0))(
  ( (V!45140 (val!15061 Int)) )
))
(declare-fun zeroValue!944 () V!45139)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14295 0))(
  ( (ValueCellFull!14295 (v!17700 V!45139)) (EmptyCell!14295) )
))
(declare-datatypes ((array!76788 0))(
  ( (array!76789 (arr!37040 (Array (_ BitVec 32) ValueCell!14295)) (size!37577 (_ BitVec 32))) )
))
(declare-fun lt!540819 () array!76788)

(declare-fun _values!996 () array!76788)

(declare-fun minValue!944 () V!45139)

(declare-datatypes ((tuple2!19470 0))(
  ( (tuple2!19471 (_1!9745 (_ BitVec 64)) (_2!9745 V!45139)) )
))
(declare-datatypes ((List!26231 0))(
  ( (Nil!26228) (Cons!26227 (h!27436 tuple2!19470) (t!38709 List!26231)) )
))
(declare-datatypes ((ListLongMap!17451 0))(
  ( (ListLongMap!17452 (toList!8741 List!26231)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5155 (array!76786 array!76788 (_ BitVec 32) (_ BitVec 32) V!45139 V!45139 (_ BitVec 32) Int) ListLongMap!17451)

(declare-fun -!1725 (ListLongMap!17451 (_ BitVec 64)) ListLongMap!17451)

(assert (=> b!1188870 (= (getCurrentListMapNoExtraKeys!5155 lt!540817 lt!540819 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1725 (getCurrentListMapNoExtraKeys!5155 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39374 0))(
  ( (Unit!39375) )
))
(declare-fun lt!540818 () Unit!39374)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!931 (array!76786 array!76788 (_ BitVec 32) (_ BitVec 32) V!45139 V!45139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39374)

(assert (=> b!1188870 (= lt!540818 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!931 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188871 () Bool)

(declare-fun e!675993 () Bool)

(assert (=> b!1188871 (= e!675993 e!675990)))

(declare-fun res!790609 () Bool)

(assert (=> b!1188871 (=> res!790609 e!675990)))

(assert (=> b!1188871 (= res!790609 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540820 () ListLongMap!17451)

(assert (=> b!1188871 (= lt!540820 (getCurrentListMapNoExtraKeys!5155 lt!540817 lt!540819 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3109 (Int (_ BitVec 64)) V!45139)

(assert (=> b!1188871 (= lt!540819 (array!76789 (store (arr!37040 _values!996) i!673 (ValueCellFull!14295 (dynLambda!3109 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37577 _values!996)))))

(declare-fun lt!540821 () ListLongMap!17451)

(assert (=> b!1188871 (= lt!540821 (getCurrentListMapNoExtraKeys!5155 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46841 () Bool)

(declare-fun mapRes!46841 () Bool)

(declare-fun tp!89152 () Bool)

(declare-fun e!675996 () Bool)

(assert (=> mapNonEmpty!46841 (= mapRes!46841 (and tp!89152 e!675996))))

(declare-fun mapKey!46841 () (_ BitVec 32))

(declare-fun mapValue!46841 () ValueCell!14295)

(declare-fun mapRest!46841 () (Array (_ BitVec 32) ValueCell!14295))

(assert (=> mapNonEmpty!46841 (= (arr!37040 _values!996) (store mapRest!46841 mapKey!46841 mapValue!46841))))

(declare-fun b!1188872 () Bool)

(declare-fun res!790612 () Bool)

(assert (=> b!1188872 (=> (not res!790612) (not e!675992))))

(assert (=> b!1188872 (= res!790612 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26227))))

(declare-fun b!1188873 () Bool)

(declare-fun res!790605 () Bool)

(assert (=> b!1188873 (=> (not res!790605) (not e!675992))))

(assert (=> b!1188873 (= res!790605 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37576 _keys!1208))))))

(declare-fun b!1188867 () Bool)

(declare-fun e!675991 () Bool)

(declare-fun tp_is_empty!30009 () Bool)

(assert (=> b!1188867 (= e!675991 tp_is_empty!30009)))

(declare-fun res!790611 () Bool)

(assert (=> start!99936 (=> (not res!790611) (not e!675992))))

(assert (=> start!99936 (= res!790611 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37576 _keys!1208))))))

(assert (=> start!99936 e!675992))

(assert (=> start!99936 tp_is_empty!30009))

(declare-fun array_inv!28146 (array!76786) Bool)

(assert (=> start!99936 (array_inv!28146 _keys!1208)))

(assert (=> start!99936 true))

(assert (=> start!99936 tp!89151))

(declare-fun e!675997 () Bool)

(declare-fun array_inv!28147 (array!76788) Bool)

(assert (=> start!99936 (and (array_inv!28147 _values!996) e!675997)))

(declare-fun b!1188874 () Bool)

(declare-fun res!790604 () Bool)

(assert (=> b!1188874 (=> (not res!790604) (not e!675992))))

(assert (=> b!1188874 (= res!790604 (= (select (arr!37039 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46841 () Bool)

(assert (=> mapIsEmpty!46841 mapRes!46841))

(declare-fun b!1188875 () Bool)

(assert (=> b!1188875 (= e!675996 tp_is_empty!30009)))

(declare-fun b!1188876 () Bool)

(declare-fun res!790610 () Bool)

(assert (=> b!1188876 (=> (not res!790610) (not e!675992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188876 (= res!790610 (validMask!0 mask!1564))))

(declare-fun b!1188877 () Bool)

(declare-fun res!790603 () Bool)

(assert (=> b!1188877 (=> (not res!790603) (not e!675992))))

(assert (=> b!1188877 (= res!790603 (and (= (size!37577 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37576 _keys!1208) (size!37577 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188878 () Bool)

(assert (=> b!1188878 (= e!675995 (not e!675993))))

(declare-fun res!790607 () Bool)

(assert (=> b!1188878 (=> res!790607 e!675993)))

(assert (=> b!1188878 (= res!790607 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188878 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!540822 () Unit!39374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76786 (_ BitVec 64) (_ BitVec 32)) Unit!39374)

(assert (=> b!1188878 (= lt!540822 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188879 () Bool)

(assert (=> b!1188879 (= e!675997 (and e!675991 mapRes!46841))))

(declare-fun condMapEmpty!46841 () Bool)

(declare-fun mapDefault!46841 () ValueCell!14295)

(assert (=> b!1188879 (= condMapEmpty!46841 (= (arr!37040 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14295)) mapDefault!46841)))))

(declare-fun b!1188880 () Bool)

(assert (=> b!1188880 (= e!675992 e!675995)))

(declare-fun res!790602 () Bool)

(assert (=> b!1188880 (=> (not res!790602) (not e!675995))))

(assert (=> b!1188880 (= res!790602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540817 mask!1564))))

(assert (=> b!1188880 (= lt!540817 (array!76787 (store (arr!37039 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37576 _keys!1208)))))

(assert (= (and start!99936 res!790611) b!1188876))

(assert (= (and b!1188876 res!790610) b!1188877))

(assert (= (and b!1188877 res!790603) b!1188869))

(assert (= (and b!1188869 res!790606) b!1188872))

(assert (= (and b!1188872 res!790612) b!1188873))

(assert (= (and b!1188873 res!790605) b!1188866))

(assert (= (and b!1188866 res!790601) b!1188874))

(assert (= (and b!1188874 res!790604) b!1188880))

(assert (= (and b!1188880 res!790602) b!1188868))

(assert (= (and b!1188868 res!790608) b!1188878))

(assert (= (and b!1188878 (not res!790607)) b!1188871))

(assert (= (and b!1188871 (not res!790609)) b!1188870))

(assert (= (and b!1188879 condMapEmpty!46841) mapIsEmpty!46841))

(assert (= (and b!1188879 (not condMapEmpty!46841)) mapNonEmpty!46841))

(get-info :version)

(assert (= (and mapNonEmpty!46841 ((_ is ValueCellFull!14295) mapValue!46841)) b!1188875))

(assert (= (and b!1188879 ((_ is ValueCellFull!14295) mapDefault!46841)) b!1188867))

(assert (= start!99936 b!1188879))

(declare-fun b_lambda!20641 () Bool)

(assert (=> (not b_lambda!20641) (not b!1188871)))

(declare-fun t!38707 () Bool)

(declare-fun tb!10299 () Bool)

(assert (=> (and start!99936 (= defaultEntry!1004 defaultEntry!1004) t!38707) tb!10299))

(declare-fun result!21157 () Bool)

(assert (=> tb!10299 (= result!21157 tp_is_empty!30009)))

(assert (=> b!1188871 t!38707))

(declare-fun b_and!41841 () Bool)

(assert (= b_and!41839 (and (=> t!38707 result!21157) b_and!41841)))

(declare-fun m!1097651 () Bool)

(assert (=> b!1188871 m!1097651))

(declare-fun m!1097653 () Bool)

(assert (=> b!1188871 m!1097653))

(declare-fun m!1097655 () Bool)

(assert (=> b!1188871 m!1097655))

(declare-fun m!1097657 () Bool)

(assert (=> b!1188871 m!1097657))

(declare-fun m!1097659 () Bool)

(assert (=> b!1188878 m!1097659))

(declare-fun m!1097661 () Bool)

(assert (=> b!1188878 m!1097661))

(declare-fun m!1097663 () Bool)

(assert (=> mapNonEmpty!46841 m!1097663))

(declare-fun m!1097665 () Bool)

(assert (=> start!99936 m!1097665))

(declare-fun m!1097667 () Bool)

(assert (=> start!99936 m!1097667))

(declare-fun m!1097669 () Bool)

(assert (=> b!1188874 m!1097669))

(declare-fun m!1097671 () Bool)

(assert (=> b!1188868 m!1097671))

(declare-fun m!1097673 () Bool)

(assert (=> b!1188870 m!1097673))

(declare-fun m!1097675 () Bool)

(assert (=> b!1188870 m!1097675))

(assert (=> b!1188870 m!1097675))

(declare-fun m!1097677 () Bool)

(assert (=> b!1188870 m!1097677))

(declare-fun m!1097679 () Bool)

(assert (=> b!1188870 m!1097679))

(declare-fun m!1097681 () Bool)

(assert (=> b!1188872 m!1097681))

(declare-fun m!1097683 () Bool)

(assert (=> b!1188880 m!1097683))

(declare-fun m!1097685 () Bool)

(assert (=> b!1188880 m!1097685))

(declare-fun m!1097687 () Bool)

(assert (=> b!1188866 m!1097687))

(declare-fun m!1097689 () Bool)

(assert (=> b!1188876 m!1097689))

(declare-fun m!1097691 () Bool)

(assert (=> b!1188869 m!1097691))

(check-sat (not b!1188870) (not b_lambda!20641) (not b!1188872) (not b!1188869) (not b!1188871) b_and!41841 tp_is_empty!30009 (not b!1188880) (not start!99936) (not b!1188868) (not b!1188876) (not b_next!25479) (not b!1188878) (not mapNonEmpty!46841) (not b!1188866))
(check-sat b_and!41841 (not b_next!25479))
