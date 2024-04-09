; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99226 () Bool)

(assert start!99226)

(declare-fun b_free!24795 () Bool)

(declare-fun b_next!24795 () Bool)

(assert (=> start!99226 (= b_free!24795 (not b_next!24795))))

(declare-fun tp!87097 () Bool)

(declare-fun b_and!40453 () Bool)

(assert (=> start!99226 (= tp!87097 b_and!40453)))

(declare-fun b!1167672 () Bool)

(declare-fun e!663707 () Bool)

(declare-fun e!663701 () Bool)

(assert (=> b!1167672 (= e!663707 e!663701)))

(declare-fun res!774734 () Bool)

(assert (=> b!1167672 (=> res!774734 e!663701)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167672 (= res!774734 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44227 0))(
  ( (V!44228 (val!14719 Int)) )
))
(declare-fun zeroValue!944 () V!44227)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!75428 0))(
  ( (array!75429 (arr!36361 (Array (_ BitVec 32) (_ BitVec 64))) (size!36898 (_ BitVec 32))) )
))
(declare-fun lt!525697 () array!75428)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18862 0))(
  ( (tuple2!18863 (_1!9441 (_ BitVec 64)) (_2!9441 V!44227)) )
))
(declare-datatypes ((List!25638 0))(
  ( (Nil!25635) (Cons!25634 (h!26843 tuple2!18862) (t!37432 List!25638)) )
))
(declare-datatypes ((ListLongMap!16843 0))(
  ( (ListLongMap!16844 (toList!8437 List!25638)) )
))
(declare-fun lt!525699 () ListLongMap!16843)

(declare-datatypes ((ValueCell!13953 0))(
  ( (ValueCellFull!13953 (v!17357 V!44227)) (EmptyCell!13953) )
))
(declare-datatypes ((array!75430 0))(
  ( (array!75431 (arr!36362 (Array (_ BitVec 32) ValueCell!13953)) (size!36899 (_ BitVec 32))) )
))
(declare-fun lt!525694 () array!75430)

(declare-fun minValue!944 () V!44227)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4870 (array!75428 array!75430 (_ BitVec 32) (_ BitVec 32) V!44227 V!44227 (_ BitVec 32) Int) ListLongMap!16843)

(assert (=> b!1167672 (= lt!525699 (getCurrentListMapNoExtraKeys!4870 lt!525697 lt!525694 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75430)

(declare-fun dynLambda!2862 (Int (_ BitVec 64)) V!44227)

(assert (=> b!1167672 (= lt!525694 (array!75431 (store (arr!36362 _values!996) i!673 (ValueCellFull!13953 (dynLambda!2862 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36899 _values!996)))))

(declare-fun _keys!1208 () array!75428)

(declare-fun lt!525695 () ListLongMap!16843)

(assert (=> b!1167672 (= lt!525695 (getCurrentListMapNoExtraKeys!4870 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167673 () Bool)

(declare-fun e!663706 () Bool)

(declare-fun e!663703 () Bool)

(declare-fun mapRes!45812 () Bool)

(assert (=> b!1167673 (= e!663706 (and e!663703 mapRes!45812))))

(declare-fun condMapEmpty!45812 () Bool)

(declare-fun mapDefault!45812 () ValueCell!13953)

(assert (=> b!1167673 (= condMapEmpty!45812 (= (arr!36362 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13953)) mapDefault!45812)))))

(declare-fun b!1167674 () Bool)

(declare-fun e!663708 () Bool)

(declare-fun tp_is_empty!29325 () Bool)

(assert (=> b!1167674 (= e!663708 tp_is_empty!29325)))

(declare-fun b!1167675 () Bool)

(declare-fun res!774737 () Bool)

(declare-fun e!663705 () Bool)

(assert (=> b!1167675 (=> (not res!774737) (not e!663705))))

(declare-datatypes ((List!25639 0))(
  ( (Nil!25636) (Cons!25635 (h!26844 (_ BitVec 64)) (t!37433 List!25639)) )
))
(declare-fun arrayNoDuplicates!0 (array!75428 (_ BitVec 32) List!25639) Bool)

(assert (=> b!1167675 (= res!774737 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25636))))

(declare-fun mapIsEmpty!45812 () Bool)

(assert (=> mapIsEmpty!45812 mapRes!45812))

(declare-fun b!1167676 () Bool)

(declare-fun res!774736 () Bool)

(assert (=> b!1167676 (=> (not res!774736) (not e!663705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167676 (= res!774736 (validMask!0 mask!1564))))

(declare-fun res!774729 () Bool)

(assert (=> start!99226 (=> (not res!774729) (not e!663705))))

(assert (=> start!99226 (= res!774729 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36898 _keys!1208))))))

(assert (=> start!99226 e!663705))

(assert (=> start!99226 tp_is_empty!29325))

(declare-fun array_inv!27676 (array!75428) Bool)

(assert (=> start!99226 (array_inv!27676 _keys!1208)))

(assert (=> start!99226 true))

(assert (=> start!99226 tp!87097))

(declare-fun array_inv!27677 (array!75430) Bool)

(assert (=> start!99226 (and (array_inv!27677 _values!996) e!663706)))

(declare-fun b!1167677 () Bool)

(declare-fun res!774733 () Bool)

(assert (=> b!1167677 (=> (not res!774733) (not e!663705))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167677 (= res!774733 (validKeyInArray!0 k0!934))))

(declare-fun b!1167678 () Bool)

(assert (=> b!1167678 (= e!663701 true)))

(declare-fun -!1469 (ListLongMap!16843 (_ BitVec 64)) ListLongMap!16843)

(assert (=> b!1167678 (= (getCurrentListMapNoExtraKeys!4870 lt!525697 lt!525694 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1469 (getCurrentListMapNoExtraKeys!4870 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38426 0))(
  ( (Unit!38427) )
))
(declare-fun lt!525696 () Unit!38426)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!693 (array!75428 array!75430 (_ BitVec 32) (_ BitVec 32) V!44227 V!44227 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38426)

(assert (=> b!1167678 (= lt!525696 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!693 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45812 () Bool)

(declare-fun tp!87096 () Bool)

(assert (=> mapNonEmpty!45812 (= mapRes!45812 (and tp!87096 e!663708))))

(declare-fun mapRest!45812 () (Array (_ BitVec 32) ValueCell!13953))

(declare-fun mapKey!45812 () (_ BitVec 32))

(declare-fun mapValue!45812 () ValueCell!13953)

(assert (=> mapNonEmpty!45812 (= (arr!36362 _values!996) (store mapRest!45812 mapKey!45812 mapValue!45812))))

(declare-fun b!1167679 () Bool)

(declare-fun e!663704 () Bool)

(assert (=> b!1167679 (= e!663704 (not e!663707))))

(declare-fun res!774738 () Bool)

(assert (=> b!1167679 (=> res!774738 e!663707)))

(assert (=> b!1167679 (= res!774738 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167679 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525698 () Unit!38426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75428 (_ BitVec 64) (_ BitVec 32)) Unit!38426)

(assert (=> b!1167679 (= lt!525698 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167680 () Bool)

(declare-fun res!774732 () Bool)

(assert (=> b!1167680 (=> (not res!774732) (not e!663705))))

(assert (=> b!1167680 (= res!774732 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36898 _keys!1208))))))

(declare-fun b!1167681 () Bool)

(assert (=> b!1167681 (= e!663703 tp_is_empty!29325)))

(declare-fun b!1167682 () Bool)

(declare-fun res!774730 () Bool)

(assert (=> b!1167682 (=> (not res!774730) (not e!663705))))

(assert (=> b!1167682 (= res!774730 (= (select (arr!36361 _keys!1208) i!673) k0!934))))

(declare-fun b!1167683 () Bool)

(declare-fun res!774735 () Bool)

(assert (=> b!1167683 (=> (not res!774735) (not e!663705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75428 (_ BitVec 32)) Bool)

(assert (=> b!1167683 (= res!774735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167684 () Bool)

(assert (=> b!1167684 (= e!663705 e!663704)))

(declare-fun res!774739 () Bool)

(assert (=> b!1167684 (=> (not res!774739) (not e!663704))))

(assert (=> b!1167684 (= res!774739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525697 mask!1564))))

(assert (=> b!1167684 (= lt!525697 (array!75429 (store (arr!36361 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36898 _keys!1208)))))

(declare-fun b!1167685 () Bool)

(declare-fun res!774740 () Bool)

(assert (=> b!1167685 (=> (not res!774740) (not e!663705))))

(assert (=> b!1167685 (= res!774740 (and (= (size!36899 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36898 _keys!1208) (size!36899 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167686 () Bool)

(declare-fun res!774731 () Bool)

(assert (=> b!1167686 (=> (not res!774731) (not e!663704))))

(assert (=> b!1167686 (= res!774731 (arrayNoDuplicates!0 lt!525697 #b00000000000000000000000000000000 Nil!25636))))

(assert (= (and start!99226 res!774729) b!1167676))

(assert (= (and b!1167676 res!774736) b!1167685))

(assert (= (and b!1167685 res!774740) b!1167683))

(assert (= (and b!1167683 res!774735) b!1167675))

(assert (= (and b!1167675 res!774737) b!1167680))

(assert (= (and b!1167680 res!774732) b!1167677))

(assert (= (and b!1167677 res!774733) b!1167682))

(assert (= (and b!1167682 res!774730) b!1167684))

(assert (= (and b!1167684 res!774739) b!1167686))

(assert (= (and b!1167686 res!774731) b!1167679))

(assert (= (and b!1167679 (not res!774738)) b!1167672))

(assert (= (and b!1167672 (not res!774734)) b!1167678))

(assert (= (and b!1167673 condMapEmpty!45812) mapIsEmpty!45812))

(assert (= (and b!1167673 (not condMapEmpty!45812)) mapNonEmpty!45812))

(get-info :version)

(assert (= (and mapNonEmpty!45812 ((_ is ValueCellFull!13953) mapValue!45812)) b!1167674))

(assert (= (and b!1167673 ((_ is ValueCellFull!13953) mapDefault!45812)) b!1167681))

(assert (= start!99226 b!1167673))

(declare-fun b_lambda!19919 () Bool)

(assert (=> (not b_lambda!19919) (not b!1167672)))

(declare-fun t!37431 () Bool)

(declare-fun tb!9615 () Bool)

(assert (=> (and start!99226 (= defaultEntry!1004 defaultEntry!1004) t!37431) tb!9615))

(declare-fun result!19787 () Bool)

(assert (=> tb!9615 (= result!19787 tp_is_empty!29325)))

(assert (=> b!1167672 t!37431))

(declare-fun b_and!40455 () Bool)

(assert (= b_and!40453 (and (=> t!37431 result!19787) b_and!40455)))

(declare-fun m!1075627 () Bool)

(assert (=> b!1167676 m!1075627))

(declare-fun m!1075629 () Bool)

(assert (=> b!1167682 m!1075629))

(declare-fun m!1075631 () Bool)

(assert (=> b!1167675 m!1075631))

(declare-fun m!1075633 () Bool)

(assert (=> start!99226 m!1075633))

(declare-fun m!1075635 () Bool)

(assert (=> start!99226 m!1075635))

(declare-fun m!1075637 () Bool)

(assert (=> mapNonEmpty!45812 m!1075637))

(declare-fun m!1075639 () Bool)

(assert (=> b!1167684 m!1075639))

(declare-fun m!1075641 () Bool)

(assert (=> b!1167684 m!1075641))

(declare-fun m!1075643 () Bool)

(assert (=> b!1167683 m!1075643))

(declare-fun m!1075645 () Bool)

(assert (=> b!1167672 m!1075645))

(declare-fun m!1075647 () Bool)

(assert (=> b!1167672 m!1075647))

(declare-fun m!1075649 () Bool)

(assert (=> b!1167672 m!1075649))

(declare-fun m!1075651 () Bool)

(assert (=> b!1167672 m!1075651))

(declare-fun m!1075653 () Bool)

(assert (=> b!1167677 m!1075653))

(declare-fun m!1075655 () Bool)

(assert (=> b!1167679 m!1075655))

(declare-fun m!1075657 () Bool)

(assert (=> b!1167679 m!1075657))

(declare-fun m!1075659 () Bool)

(assert (=> b!1167678 m!1075659))

(declare-fun m!1075661 () Bool)

(assert (=> b!1167678 m!1075661))

(assert (=> b!1167678 m!1075661))

(declare-fun m!1075663 () Bool)

(assert (=> b!1167678 m!1075663))

(declare-fun m!1075665 () Bool)

(assert (=> b!1167678 m!1075665))

(declare-fun m!1075667 () Bool)

(assert (=> b!1167686 m!1075667))

(check-sat (not b!1167679) (not b_next!24795) tp_is_empty!29325 (not b!1167676) (not b!1167672) (not mapNonEmpty!45812) (not b!1167677) (not start!99226) (not b!1167683) (not b!1167686) (not b!1167684) b_and!40455 (not b_lambda!19919) (not b!1167675) (not b!1167678))
(check-sat b_and!40455 (not b_next!24795))
