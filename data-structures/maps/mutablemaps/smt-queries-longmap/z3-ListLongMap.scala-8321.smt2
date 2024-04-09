; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101312 () Bool)

(assert start!101312)

(declare-fun b_free!26199 () Bool)

(declare-fun b_next!26199 () Bool)

(assert (=> start!101312 (= b_free!26199 (not b_next!26199))))

(declare-fun tp!91620 () Bool)

(declare-fun b_and!43525 () Bool)

(assert (=> start!101312 (= tp!91620 b_and!43525)))

(declare-fun b!1216604 () Bool)

(declare-fun res!807983 () Bool)

(declare-fun e!690746 () Bool)

(assert (=> b!1216604 (=> (not res!807983) (not e!690746))))

(declare-datatypes ((array!78552 0))(
  ( (array!78553 (arr!37907 (Array (_ BitVec 32) (_ BitVec 64))) (size!38444 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78552)

(declare-datatypes ((List!26896 0))(
  ( (Nil!26893) (Cons!26892 (h!28101 (_ BitVec 64)) (t!40082 List!26896)) )
))
(declare-fun arrayNoDuplicates!0 (array!78552 (_ BitVec 32) List!26896) Bool)

(assert (=> b!1216604 (= res!807983 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26893))))

(declare-fun b!1216605 () Bool)

(declare-fun res!807994 () Bool)

(assert (=> b!1216605 (=> (not res!807994) (not e!690746))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78552 (_ BitVec 32)) Bool)

(assert (=> b!1216605 (= res!807994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48229 () Bool)

(declare-fun mapRes!48229 () Bool)

(assert (=> mapIsEmpty!48229 mapRes!48229))

(declare-fun res!807989 () Bool)

(assert (=> start!101312 (=> (not res!807989) (not e!690746))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101312 (= res!807989 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38444 _keys!1208))))))

(assert (=> start!101312 e!690746))

(declare-fun tp_is_empty!30903 () Bool)

(assert (=> start!101312 tp_is_empty!30903))

(declare-fun array_inv!28762 (array!78552) Bool)

(assert (=> start!101312 (array_inv!28762 _keys!1208)))

(assert (=> start!101312 true))

(assert (=> start!101312 tp!91620))

(declare-datatypes ((V!46331 0))(
  ( (V!46332 (val!15508 Int)) )
))
(declare-datatypes ((ValueCell!14742 0))(
  ( (ValueCellFull!14742 (v!18162 V!46331)) (EmptyCell!14742) )
))
(declare-datatypes ((array!78554 0))(
  ( (array!78555 (arr!37908 (Array (_ BitVec 32) ValueCell!14742)) (size!38445 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78554)

(declare-fun e!690750 () Bool)

(declare-fun array_inv!28763 (array!78554) Bool)

(assert (=> start!101312 (and (array_inv!28763 _values!996) e!690750)))

(declare-fun b!1216606 () Bool)

(declare-fun e!690745 () Bool)

(assert (=> b!1216606 (= e!690745 tp_is_empty!30903)))

(declare-fun b!1216607 () Bool)

(declare-fun res!807984 () Bool)

(declare-fun e!690748 () Bool)

(assert (=> b!1216607 (=> (not res!807984) (not e!690748))))

(declare-fun lt!552930 () array!78552)

(assert (=> b!1216607 (= res!807984 (arrayNoDuplicates!0 lt!552930 #b00000000000000000000000000000000 Nil!26893))))

(declare-fun b!1216608 () Bool)

(assert (=> b!1216608 (= e!690746 e!690748)))

(declare-fun res!807992 () Bool)

(assert (=> b!1216608 (=> (not res!807992) (not e!690748))))

(assert (=> b!1216608 (= res!807992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552930 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216608 (= lt!552930 (array!78553 (store (arr!37907 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38444 _keys!1208)))))

(declare-fun b!1216609 () Bool)

(declare-fun e!690752 () Bool)

(declare-fun e!690747 () Bool)

(assert (=> b!1216609 (= e!690752 e!690747)))

(declare-fun res!807982 () Bool)

(assert (=> b!1216609 (=> res!807982 e!690747)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216609 (= res!807982 (not (validKeyInArray!0 (select (arr!37907 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!46331)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!552931 () array!78554)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46331)

(declare-datatypes ((tuple2!20074 0))(
  ( (tuple2!20075 (_1!10047 (_ BitVec 64)) (_2!10047 V!46331)) )
))
(declare-datatypes ((List!26897 0))(
  ( (Nil!26894) (Cons!26893 (h!28102 tuple2!20074) (t!40083 List!26897)) )
))
(declare-datatypes ((ListLongMap!18055 0))(
  ( (ListLongMap!18056 (toList!9043 List!26897)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5448 (array!78552 array!78554 (_ BitVec 32) (_ BitVec 32) V!46331 V!46331 (_ BitVec 32) Int) ListLongMap!18055)

(declare-fun -!1906 (ListLongMap!18055 (_ BitVec 64)) ListLongMap!18055)

(assert (=> b!1216609 (= (getCurrentListMapNoExtraKeys!5448 lt!552930 lt!552931 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1906 (getCurrentListMapNoExtraKeys!5448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!40270 0))(
  ( (Unit!40271) )
))
(declare-fun lt!552933 () Unit!40270)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1108 (array!78552 array!78554 (_ BitVec 32) (_ BitVec 32) V!46331 V!46331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40270)

(assert (=> b!1216609 (= lt!552933 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1108 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48229 () Bool)

(declare-fun tp!91619 () Bool)

(assert (=> mapNonEmpty!48229 (= mapRes!48229 (and tp!91619 e!690745))))

(declare-fun mapKey!48229 () (_ BitVec 32))

(declare-fun mapRest!48229 () (Array (_ BitVec 32) ValueCell!14742))

(declare-fun mapValue!48229 () ValueCell!14742)

(assert (=> mapNonEmpty!48229 (= (arr!37908 _values!996) (store mapRest!48229 mapKey!48229 mapValue!48229))))

(declare-fun b!1216610 () Bool)

(declare-fun e!690749 () Bool)

(assert (=> b!1216610 (= e!690749 tp_is_empty!30903)))

(declare-fun b!1216611 () Bool)

(declare-fun res!807987 () Bool)

(assert (=> b!1216611 (=> (not res!807987) (not e!690746))))

(assert (=> b!1216611 (= res!807987 (= (select (arr!37907 _keys!1208) i!673) k0!934))))

(declare-fun b!1216612 () Bool)

(declare-fun e!690751 () Bool)

(assert (=> b!1216612 (= e!690748 (not e!690751))))

(declare-fun res!807990 () Bool)

(assert (=> b!1216612 (=> res!807990 e!690751)))

(assert (=> b!1216612 (= res!807990 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216612 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!552934 () Unit!40270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78552 (_ BitVec 64) (_ BitVec 32)) Unit!40270)

(assert (=> b!1216612 (= lt!552934 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216613 () Bool)

(declare-fun res!807993 () Bool)

(assert (=> b!1216613 (=> (not res!807993) (not e!690746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216613 (= res!807993 (validMask!0 mask!1564))))

(declare-fun b!1216614 () Bool)

(declare-fun res!807985 () Bool)

(assert (=> b!1216614 (=> (not res!807985) (not e!690746))))

(assert (=> b!1216614 (= res!807985 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38444 _keys!1208))))))

(declare-fun b!1216615 () Bool)

(declare-fun res!807988 () Bool)

(assert (=> b!1216615 (=> (not res!807988) (not e!690746))))

(assert (=> b!1216615 (= res!807988 (and (= (size!38445 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38444 _keys!1208) (size!38445 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216616 () Bool)

(declare-fun res!807986 () Bool)

(assert (=> b!1216616 (=> (not res!807986) (not e!690746))))

(assert (=> b!1216616 (= res!807986 (validKeyInArray!0 k0!934))))

(declare-fun b!1216617 () Bool)

(assert (=> b!1216617 (= e!690747 (bvslt i!673 (size!38445 _values!996)))))

(declare-fun b!1216618 () Bool)

(assert (=> b!1216618 (= e!690750 (and e!690749 mapRes!48229))))

(declare-fun condMapEmpty!48229 () Bool)

(declare-fun mapDefault!48229 () ValueCell!14742)

(assert (=> b!1216618 (= condMapEmpty!48229 (= (arr!37908 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14742)) mapDefault!48229)))))

(declare-fun b!1216619 () Bool)

(assert (=> b!1216619 (= e!690751 e!690752)))

(declare-fun res!807991 () Bool)

(assert (=> b!1216619 (=> res!807991 e!690752)))

(assert (=> b!1216619 (= res!807991 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!552932 () ListLongMap!18055)

(assert (=> b!1216619 (= lt!552932 (getCurrentListMapNoExtraKeys!5448 lt!552930 lt!552931 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3356 (Int (_ BitVec 64)) V!46331)

(assert (=> b!1216619 (= lt!552931 (array!78555 (store (arr!37908 _values!996) i!673 (ValueCellFull!14742 (dynLambda!3356 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38445 _values!996)))))

(declare-fun lt!552935 () ListLongMap!18055)

(assert (=> b!1216619 (= lt!552935 (getCurrentListMapNoExtraKeys!5448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!101312 res!807989) b!1216613))

(assert (= (and b!1216613 res!807993) b!1216615))

(assert (= (and b!1216615 res!807988) b!1216605))

(assert (= (and b!1216605 res!807994) b!1216604))

(assert (= (and b!1216604 res!807983) b!1216614))

(assert (= (and b!1216614 res!807985) b!1216616))

(assert (= (and b!1216616 res!807986) b!1216611))

(assert (= (and b!1216611 res!807987) b!1216608))

(assert (= (and b!1216608 res!807992) b!1216607))

(assert (= (and b!1216607 res!807984) b!1216612))

(assert (= (and b!1216612 (not res!807990)) b!1216619))

(assert (= (and b!1216619 (not res!807991)) b!1216609))

(assert (= (and b!1216609 (not res!807982)) b!1216617))

(assert (= (and b!1216618 condMapEmpty!48229) mapIsEmpty!48229))

(assert (= (and b!1216618 (not condMapEmpty!48229)) mapNonEmpty!48229))

(get-info :version)

(assert (= (and mapNonEmpty!48229 ((_ is ValueCellFull!14742) mapValue!48229)) b!1216606))

(assert (= (and b!1216618 ((_ is ValueCellFull!14742) mapDefault!48229)) b!1216610))

(assert (= start!101312 b!1216618))

(declare-fun b_lambda!21885 () Bool)

(assert (=> (not b_lambda!21885) (not b!1216619)))

(declare-fun t!40081 () Bool)

(declare-fun tb!11007 () Bool)

(assert (=> (and start!101312 (= defaultEntry!1004 defaultEntry!1004) t!40081) tb!11007))

(declare-fun result!22603 () Bool)

(assert (=> tb!11007 (= result!22603 tp_is_empty!30903)))

(assert (=> b!1216619 t!40081))

(declare-fun b_and!43527 () Bool)

(assert (= b_and!43525 (and (=> t!40081 result!22603) b_and!43527)))

(declare-fun m!1121373 () Bool)

(assert (=> b!1216612 m!1121373))

(declare-fun m!1121375 () Bool)

(assert (=> b!1216612 m!1121375))

(declare-fun m!1121377 () Bool)

(assert (=> b!1216619 m!1121377))

(declare-fun m!1121379 () Bool)

(assert (=> b!1216619 m!1121379))

(declare-fun m!1121381 () Bool)

(assert (=> b!1216619 m!1121381))

(declare-fun m!1121383 () Bool)

(assert (=> b!1216619 m!1121383))

(declare-fun m!1121385 () Bool)

(assert (=> b!1216613 m!1121385))

(declare-fun m!1121387 () Bool)

(assert (=> b!1216616 m!1121387))

(declare-fun m!1121389 () Bool)

(assert (=> b!1216607 m!1121389))

(declare-fun m!1121391 () Bool)

(assert (=> mapNonEmpty!48229 m!1121391))

(declare-fun m!1121393 () Bool)

(assert (=> b!1216608 m!1121393))

(declare-fun m!1121395 () Bool)

(assert (=> b!1216608 m!1121395))

(declare-fun m!1121397 () Bool)

(assert (=> start!101312 m!1121397))

(declare-fun m!1121399 () Bool)

(assert (=> start!101312 m!1121399))

(declare-fun m!1121401 () Bool)

(assert (=> b!1216604 m!1121401))

(declare-fun m!1121403 () Bool)

(assert (=> b!1216609 m!1121403))

(declare-fun m!1121405 () Bool)

(assert (=> b!1216609 m!1121405))

(declare-fun m!1121407 () Bool)

(assert (=> b!1216609 m!1121407))

(assert (=> b!1216609 m!1121403))

(declare-fun m!1121409 () Bool)

(assert (=> b!1216609 m!1121409))

(declare-fun m!1121411 () Bool)

(assert (=> b!1216609 m!1121411))

(declare-fun m!1121413 () Bool)

(assert (=> b!1216609 m!1121413))

(assert (=> b!1216609 m!1121411))

(declare-fun m!1121415 () Bool)

(assert (=> b!1216611 m!1121415))

(declare-fun m!1121417 () Bool)

(assert (=> b!1216605 m!1121417))

(check-sat (not b_lambda!21885) (not b!1216612) (not b!1216613) (not b!1216607) (not b!1216609) (not b!1216605) (not start!101312) (not mapNonEmpty!48229) tp_is_empty!30903 (not b_next!26199) b_and!43527 (not b!1216604) (not b!1216619) (not b!1216616) (not b!1216608))
(check-sat b_and!43527 (not b_next!26199))
