; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99696 () Bool)

(assert start!99696)

(declare-fun b_free!25239 () Bool)

(declare-fun b_next!25239 () Bool)

(assert (=> start!99696 (= b_free!25239 (not b_next!25239))))

(declare-fun tp!88432 () Bool)

(declare-fun b_and!41359 () Bool)

(assert (=> start!99696 (= tp!88432 b_and!41359)))

(declare-fun b!1181631 () Bool)

(declare-fun res!785332 () Bool)

(declare-fun e!671844 () Bool)

(assert (=> b!1181631 (=> (not res!785332) (not e!671844))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181631 (= res!785332 (validKeyInArray!0 k0!934))))

(declare-fun b!1181632 () Bool)

(declare-fun e!671837 () Bool)

(assert (=> b!1181632 (= e!671837 true)))

(declare-datatypes ((V!44819 0))(
  ( (V!44820 (val!14941 Int)) )
))
(declare-datatypes ((tuple2!19264 0))(
  ( (tuple2!19265 (_1!9642 (_ BitVec 64)) (_2!9642 V!44819)) )
))
(declare-datatypes ((List!26024 0))(
  ( (Nil!26021) (Cons!26020 (h!27229 tuple2!19264) (t!38262 List!26024)) )
))
(declare-datatypes ((ListLongMap!17245 0))(
  ( (ListLongMap!17246 (toList!8638 List!26024)) )
))
(declare-fun lt!534526 () ListLongMap!17245)

(declare-fun lt!534517 () ListLongMap!17245)

(declare-fun -!1627 (ListLongMap!17245 (_ BitVec 64)) ListLongMap!17245)

(assert (=> b!1181632 (= (-!1627 lt!534526 k0!934) lt!534517)))

(declare-datatypes ((array!76306 0))(
  ( (array!76307 (arr!36799 (Array (_ BitVec 32) (_ BitVec 64))) (size!37336 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76306)

(declare-fun lt!534516 () ListLongMap!17245)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!534527 () V!44819)

(declare-datatypes ((Unit!39005 0))(
  ( (Unit!39006) )
))
(declare-fun lt!534518 () Unit!39005)

(declare-fun addRemoveCommutativeForDiffKeys!146 (ListLongMap!17245 (_ BitVec 64) V!44819 (_ BitVec 64)) Unit!39005)

(assert (=> b!1181632 (= lt!534518 (addRemoveCommutativeForDiffKeys!146 lt!534516 (select (arr!36799 _keys!1208) from!1455) lt!534527 k0!934))))

(declare-fun lt!534511 () ListLongMap!17245)

(declare-fun lt!534519 () ListLongMap!17245)

(declare-fun lt!534512 () ListLongMap!17245)

(assert (=> b!1181632 (and (= lt!534512 lt!534526) (= lt!534519 lt!534511))))

(declare-fun lt!534515 () tuple2!19264)

(declare-fun +!3856 (ListLongMap!17245 tuple2!19264) ListLongMap!17245)

(assert (=> b!1181632 (= lt!534526 (+!3856 lt!534516 lt!534515))))

(assert (=> b!1181632 (not (= (select (arr!36799 _keys!1208) from!1455) k0!934))))

(declare-fun lt!534525 () Unit!39005)

(declare-fun e!671835 () Unit!39005)

(assert (=> b!1181632 (= lt!534525 e!671835)))

(declare-fun c!116930 () Bool)

(assert (=> b!1181632 (= c!116930 (= (select (arr!36799 _keys!1208) from!1455) k0!934))))

(declare-fun e!671843 () Bool)

(assert (=> b!1181632 e!671843))

(declare-fun res!785338 () Bool)

(assert (=> b!1181632 (=> (not res!785338) (not e!671843))))

(declare-fun lt!534521 () ListLongMap!17245)

(assert (=> b!1181632 (= res!785338 (= lt!534521 lt!534517))))

(assert (=> b!1181632 (= lt!534517 (+!3856 lt!534519 lt!534515))))

(assert (=> b!1181632 (= lt!534515 (tuple2!19265 (select (arr!36799 _keys!1208) from!1455) lt!534527))))

(declare-fun lt!534524 () V!44819)

(declare-datatypes ((ValueCell!14175 0))(
  ( (ValueCellFull!14175 (v!17580 V!44819)) (EmptyCell!14175) )
))
(declare-datatypes ((array!76308 0))(
  ( (array!76309 (arr!36800 (Array (_ BitVec 32) ValueCell!14175)) (size!37337 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76308)

(declare-fun get!18858 (ValueCell!14175 V!44819) V!44819)

(assert (=> b!1181632 (= lt!534527 (get!18858 (select (arr!36800 _values!996) from!1455) lt!534524))))

(declare-fun b!1181633 () Bool)

(declare-fun res!785329 () Bool)

(assert (=> b!1181633 (=> (not res!785329) (not e!671844))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181633 (= res!785329 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37336 _keys!1208))))))

(declare-fun b!1181634 () Bool)

(declare-fun res!785324 () Bool)

(assert (=> b!1181634 (=> (not res!785324) (not e!671844))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1181634 (= res!785324 (and (= (size!37337 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37336 _keys!1208) (size!37337 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46481 () Bool)

(declare-fun mapRes!46481 () Bool)

(assert (=> mapIsEmpty!46481 mapRes!46481))

(declare-fun b!1181636 () Bool)

(declare-fun Unit!39007 () Unit!39005)

(assert (=> b!1181636 (= e!671835 Unit!39007)))

(declare-fun lt!534522 () Unit!39005)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76306 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39005)

(assert (=> b!1181636 (= lt!534522 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181636 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534520 () Unit!39005)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76306 (_ BitVec 32) (_ BitVec 32)) Unit!39005)

(assert (=> b!1181636 (= lt!534520 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26025 0))(
  ( (Nil!26022) (Cons!26021 (h!27230 (_ BitVec 64)) (t!38263 List!26025)) )
))
(declare-fun arrayNoDuplicates!0 (array!76306 (_ BitVec 32) List!26025) Bool)

(assert (=> b!1181636 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26022)))

(declare-fun lt!534514 () Unit!39005)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76306 (_ BitVec 64) (_ BitVec 32) List!26025) Unit!39005)

(assert (=> b!1181636 (= lt!534514 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26022))))

(assert (=> b!1181636 false))

(declare-fun e!671839 () Bool)

(declare-fun b!1181637 () Bool)

(assert (=> b!1181637 (= e!671839 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181638 () Bool)

(declare-fun res!785331 () Bool)

(declare-fun e!671836 () Bool)

(assert (=> b!1181638 (=> (not res!785331) (not e!671836))))

(declare-fun lt!534513 () array!76306)

(assert (=> b!1181638 (= res!785331 (arrayNoDuplicates!0 lt!534513 #b00000000000000000000000000000000 Nil!26022))))

(declare-fun b!1181639 () Bool)

(declare-fun e!671845 () Bool)

(declare-fun tp_is_empty!29769 () Bool)

(assert (=> b!1181639 (= e!671845 tp_is_empty!29769)))

(declare-fun b!1181640 () Bool)

(declare-fun e!671838 () Bool)

(assert (=> b!1181640 (= e!671838 e!671837)))

(declare-fun res!785333 () Bool)

(assert (=> b!1181640 (=> res!785333 e!671837)))

(assert (=> b!1181640 (= res!785333 (not (validKeyInArray!0 (select (arr!36799 _keys!1208) from!1455))))))

(assert (=> b!1181640 (= lt!534511 lt!534519)))

(assert (=> b!1181640 (= lt!534519 (-!1627 lt!534516 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44819)

(declare-fun lt!534528 () array!76308)

(declare-fun zeroValue!944 () V!44819)

(declare-fun getCurrentListMapNoExtraKeys!5062 (array!76306 array!76308 (_ BitVec 32) (_ BitVec 32) V!44819 V!44819 (_ BitVec 32) Int) ListLongMap!17245)

(assert (=> b!1181640 (= lt!534511 (getCurrentListMapNoExtraKeys!5062 lt!534513 lt!534528 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181640 (= lt!534516 (getCurrentListMapNoExtraKeys!5062 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534523 () Unit!39005)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!850 (array!76306 array!76308 (_ BitVec 32) (_ BitVec 32) V!44819 V!44819 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39005)

(assert (=> b!1181640 (= lt!534523 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!850 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181641 () Bool)

(declare-fun res!785325 () Bool)

(assert (=> b!1181641 (=> (not res!785325) (not e!671844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181641 (= res!785325 (validMask!0 mask!1564))))

(declare-fun b!1181642 () Bool)

(declare-fun res!785326 () Bool)

(assert (=> b!1181642 (=> (not res!785326) (not e!671844))))

(assert (=> b!1181642 (= res!785326 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26022))))

(declare-fun mapNonEmpty!46481 () Bool)

(declare-fun tp!88431 () Bool)

(declare-fun e!671842 () Bool)

(assert (=> mapNonEmpty!46481 (= mapRes!46481 (and tp!88431 e!671842))))

(declare-fun mapKey!46481 () (_ BitVec 32))

(declare-fun mapValue!46481 () ValueCell!14175)

(declare-fun mapRest!46481 () (Array (_ BitVec 32) ValueCell!14175))

(assert (=> mapNonEmpty!46481 (= (arr!36800 _values!996) (store mapRest!46481 mapKey!46481 mapValue!46481))))

(declare-fun b!1181643 () Bool)

(declare-fun e!671840 () Bool)

(assert (=> b!1181643 (= e!671840 (and e!671845 mapRes!46481))))

(declare-fun condMapEmpty!46481 () Bool)

(declare-fun mapDefault!46481 () ValueCell!14175)

(assert (=> b!1181643 (= condMapEmpty!46481 (= (arr!36800 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14175)) mapDefault!46481)))))

(declare-fun b!1181644 () Bool)

(assert (=> b!1181644 (= e!671842 tp_is_empty!29769)))

(declare-fun b!1181635 () Bool)

(declare-fun e!671834 () Bool)

(assert (=> b!1181635 (= e!671834 e!671838)))

(declare-fun res!785337 () Bool)

(assert (=> b!1181635 (=> res!785337 e!671838)))

(assert (=> b!1181635 (= res!785337 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1181635 (= lt!534521 (getCurrentListMapNoExtraKeys!5062 lt!534513 lt!534528 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1181635 (= lt!534528 (array!76309 (store (arr!36800 _values!996) i!673 (ValueCellFull!14175 lt!534524)) (size!37337 _values!996)))))

(declare-fun dynLambda!3030 (Int (_ BitVec 64)) V!44819)

(assert (=> b!1181635 (= lt!534524 (dynLambda!3030 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1181635 (= lt!534512 (getCurrentListMapNoExtraKeys!5062 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!785336 () Bool)

(assert (=> start!99696 (=> (not res!785336) (not e!671844))))

(assert (=> start!99696 (= res!785336 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37336 _keys!1208))))))

(assert (=> start!99696 e!671844))

(assert (=> start!99696 tp_is_empty!29769))

(declare-fun array_inv!27978 (array!76306) Bool)

(assert (=> start!99696 (array_inv!27978 _keys!1208)))

(assert (=> start!99696 true))

(assert (=> start!99696 tp!88432))

(declare-fun array_inv!27979 (array!76308) Bool)

(assert (=> start!99696 (and (array_inv!27979 _values!996) e!671840)))

(declare-fun b!1181645 () Bool)

(declare-fun Unit!39008 () Unit!39005)

(assert (=> b!1181645 (= e!671835 Unit!39008)))

(declare-fun b!1181646 () Bool)

(assert (=> b!1181646 (= e!671836 (not e!671834))))

(declare-fun res!785328 () Bool)

(assert (=> b!1181646 (=> res!785328 e!671834)))

(assert (=> b!1181646 (= res!785328 (bvsgt from!1455 i!673))))

(assert (=> b!1181646 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!534510 () Unit!39005)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76306 (_ BitVec 64) (_ BitVec 32)) Unit!39005)

(assert (=> b!1181646 (= lt!534510 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181647 () Bool)

(declare-fun res!785330 () Bool)

(assert (=> b!1181647 (=> (not res!785330) (not e!671844))))

(assert (=> b!1181647 (= res!785330 (= (select (arr!36799 _keys!1208) i!673) k0!934))))

(declare-fun b!1181648 () Bool)

(assert (=> b!1181648 (= e!671844 e!671836)))

(declare-fun res!785334 () Bool)

(assert (=> b!1181648 (=> (not res!785334) (not e!671836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76306 (_ BitVec 32)) Bool)

(assert (=> b!1181648 (= res!785334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534513 mask!1564))))

(assert (=> b!1181648 (= lt!534513 (array!76307 (store (arr!36799 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37336 _keys!1208)))))

(declare-fun b!1181649 () Bool)

(declare-fun res!785335 () Bool)

(assert (=> b!1181649 (=> (not res!785335) (not e!671844))))

(assert (=> b!1181649 (= res!785335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181650 () Bool)

(assert (=> b!1181650 (= e!671843 e!671839)))

(declare-fun res!785327 () Bool)

(assert (=> b!1181650 (=> res!785327 e!671839)))

(assert (=> b!1181650 (= res!785327 (not (= (select (arr!36799 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!99696 res!785336) b!1181641))

(assert (= (and b!1181641 res!785325) b!1181634))

(assert (= (and b!1181634 res!785324) b!1181649))

(assert (= (and b!1181649 res!785335) b!1181642))

(assert (= (and b!1181642 res!785326) b!1181633))

(assert (= (and b!1181633 res!785329) b!1181631))

(assert (= (and b!1181631 res!785332) b!1181647))

(assert (= (and b!1181647 res!785330) b!1181648))

(assert (= (and b!1181648 res!785334) b!1181638))

(assert (= (and b!1181638 res!785331) b!1181646))

(assert (= (and b!1181646 (not res!785328)) b!1181635))

(assert (= (and b!1181635 (not res!785337)) b!1181640))

(assert (= (and b!1181640 (not res!785333)) b!1181632))

(assert (= (and b!1181632 res!785338) b!1181650))

(assert (= (and b!1181650 (not res!785327)) b!1181637))

(assert (= (and b!1181632 c!116930) b!1181636))

(assert (= (and b!1181632 (not c!116930)) b!1181645))

(assert (= (and b!1181643 condMapEmpty!46481) mapIsEmpty!46481))

(assert (= (and b!1181643 (not condMapEmpty!46481)) mapNonEmpty!46481))

(get-info :version)

(assert (= (and mapNonEmpty!46481 ((_ is ValueCellFull!14175) mapValue!46481)) b!1181644))

(assert (= (and b!1181643 ((_ is ValueCellFull!14175) mapDefault!46481)) b!1181639))

(assert (= start!99696 b!1181643))

(declare-fun b_lambda!20401 () Bool)

(assert (=> (not b_lambda!20401) (not b!1181635)))

(declare-fun t!38261 () Bool)

(declare-fun tb!10059 () Bool)

(assert (=> (and start!99696 (= defaultEntry!1004 defaultEntry!1004) t!38261) tb!10059))

(declare-fun result!20677 () Bool)

(assert (=> tb!10059 (= result!20677 tp_is_empty!29769)))

(assert (=> b!1181635 t!38261))

(declare-fun b_and!41361 () Bool)

(assert (= b_and!41359 (and (=> t!38261 result!20677) b_and!41361)))

(declare-fun m!1089615 () Bool)

(assert (=> b!1181649 m!1089615))

(declare-fun m!1089617 () Bool)

(assert (=> b!1181631 m!1089617))

(declare-fun m!1089619 () Bool)

(assert (=> start!99696 m!1089619))

(declare-fun m!1089621 () Bool)

(assert (=> start!99696 m!1089621))

(declare-fun m!1089623 () Bool)

(assert (=> b!1181646 m!1089623))

(declare-fun m!1089625 () Bool)

(assert (=> b!1181646 m!1089625))

(declare-fun m!1089627 () Bool)

(assert (=> mapNonEmpty!46481 m!1089627))

(declare-fun m!1089629 () Bool)

(assert (=> b!1181647 m!1089629))

(declare-fun m!1089631 () Bool)

(assert (=> b!1181650 m!1089631))

(declare-fun m!1089633 () Bool)

(assert (=> b!1181635 m!1089633))

(declare-fun m!1089635 () Bool)

(assert (=> b!1181635 m!1089635))

(declare-fun m!1089637 () Bool)

(assert (=> b!1181635 m!1089637))

(declare-fun m!1089639 () Bool)

(assert (=> b!1181635 m!1089639))

(declare-fun m!1089641 () Bool)

(assert (=> b!1181636 m!1089641))

(declare-fun m!1089643 () Bool)

(assert (=> b!1181636 m!1089643))

(declare-fun m!1089645 () Bool)

(assert (=> b!1181636 m!1089645))

(declare-fun m!1089647 () Bool)

(assert (=> b!1181636 m!1089647))

(declare-fun m!1089649 () Bool)

(assert (=> b!1181636 m!1089649))

(declare-fun m!1089651 () Bool)

(assert (=> b!1181641 m!1089651))

(declare-fun m!1089653 () Bool)

(assert (=> b!1181640 m!1089653))

(declare-fun m!1089655 () Bool)

(assert (=> b!1181640 m!1089655))

(declare-fun m!1089657 () Bool)

(assert (=> b!1181640 m!1089657))

(declare-fun m!1089659 () Bool)

(assert (=> b!1181640 m!1089659))

(assert (=> b!1181640 m!1089631))

(declare-fun m!1089661 () Bool)

(assert (=> b!1181640 m!1089661))

(assert (=> b!1181640 m!1089631))

(declare-fun m!1089663 () Bool)

(assert (=> b!1181642 m!1089663))

(declare-fun m!1089665 () Bool)

(assert (=> b!1181648 m!1089665))

(declare-fun m!1089667 () Bool)

(assert (=> b!1181648 m!1089667))

(declare-fun m!1089669 () Bool)

(assert (=> b!1181638 m!1089669))

(declare-fun m!1089671 () Bool)

(assert (=> b!1181632 m!1089671))

(declare-fun m!1089673 () Bool)

(assert (=> b!1181632 m!1089673))

(declare-fun m!1089675 () Bool)

(assert (=> b!1181632 m!1089675))

(declare-fun m!1089677 () Bool)

(assert (=> b!1181632 m!1089677))

(assert (=> b!1181632 m!1089673))

(declare-fun m!1089679 () Bool)

(assert (=> b!1181632 m!1089679))

(assert (=> b!1181632 m!1089631))

(declare-fun m!1089681 () Bool)

(assert (=> b!1181632 m!1089681))

(assert (=> b!1181632 m!1089631))

(declare-fun m!1089683 () Bool)

(assert (=> b!1181637 m!1089683))

(check-sat (not b_next!25239) (not b!1181637) (not start!99696) tp_is_empty!29769 (not b!1181631) (not b!1181632) (not b!1181635) (not b!1181646) (not b!1181648) b_and!41361 (not mapNonEmpty!46481) (not b!1181649) (not b!1181640) (not b_lambda!20401) (not b!1181636) (not b!1181641) (not b!1181642) (not b!1181638))
(check-sat b_and!41361 (not b_next!25239))
