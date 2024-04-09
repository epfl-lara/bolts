; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99088 () Bool)

(assert start!99088)

(declare-fun b_free!24657 () Bool)

(declare-fun b_next!24657 () Bool)

(assert (=> start!99088 (= b_free!24657 (not b_next!24657))))

(declare-fun tp!86682 () Bool)

(declare-fun b_and!40177 () Bool)

(assert (=> start!99088 (= tp!86682 b_and!40177)))

(declare-fun mapIsEmpty!45605 () Bool)

(declare-fun mapRes!45605 () Bool)

(assert (=> mapIsEmpty!45605 mapRes!45605))

(declare-fun b!1164514 () Bool)

(declare-fun res!772335 () Bool)

(declare-fun e!662131 () Bool)

(assert (=> b!1164514 (=> (not res!772335) (not e!662131))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164514 (= res!772335 (validMask!0 mask!1564))))

(declare-fun b!1164515 () Bool)

(declare-fun res!772337 () Bool)

(assert (=> b!1164515 (=> (not res!772337) (not e!662131))))

(declare-datatypes ((array!75158 0))(
  ( (array!75159 (arr!36226 (Array (_ BitVec 32) (_ BitVec 64))) (size!36763 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75158)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75158 (_ BitVec 32)) Bool)

(assert (=> b!1164515 (= res!772337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!772330 () Bool)

(assert (=> start!99088 (=> (not res!772330) (not e!662131))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99088 (= res!772330 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36763 _keys!1208))))))

(assert (=> start!99088 e!662131))

(declare-fun tp_is_empty!29187 () Bool)

(assert (=> start!99088 tp_is_empty!29187))

(declare-fun array_inv!27584 (array!75158) Bool)

(assert (=> start!99088 (array_inv!27584 _keys!1208)))

(assert (=> start!99088 true))

(assert (=> start!99088 tp!86682))

(declare-datatypes ((V!44043 0))(
  ( (V!44044 (val!14650 Int)) )
))
(declare-datatypes ((ValueCell!13884 0))(
  ( (ValueCellFull!13884 (v!17288 V!44043)) (EmptyCell!13884) )
))
(declare-datatypes ((array!75160 0))(
  ( (array!75161 (arr!36227 (Array (_ BitVec 32) ValueCell!13884)) (size!36764 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75160)

(declare-fun e!662132 () Bool)

(declare-fun array_inv!27585 (array!75160) Bool)

(assert (=> start!99088 (and (array_inv!27585 _values!996) e!662132)))

(declare-fun mapNonEmpty!45605 () Bool)

(declare-fun tp!86683 () Bool)

(declare-fun e!662134 () Bool)

(assert (=> mapNonEmpty!45605 (= mapRes!45605 (and tp!86683 e!662134))))

(declare-fun mapKey!45605 () (_ BitVec 32))

(declare-fun mapValue!45605 () ValueCell!13884)

(declare-fun mapRest!45605 () (Array (_ BitVec 32) ValueCell!13884))

(assert (=> mapNonEmpty!45605 (= (arr!36227 _values!996) (store mapRest!45605 mapKey!45605 mapValue!45605))))

(declare-fun b!1164516 () Bool)

(assert (=> b!1164516 (= e!662134 tp_is_empty!29187)))

(declare-fun b!1164517 () Bool)

(declare-fun e!662133 () Bool)

(assert (=> b!1164517 (= e!662133 tp_is_empty!29187)))

(declare-fun b!1164518 () Bool)

(declare-fun e!662136 () Bool)

(declare-fun e!662135 () Bool)

(assert (=> b!1164518 (= e!662136 (not e!662135))))

(declare-fun res!772339 () Bool)

(assert (=> b!1164518 (=> res!772339 e!662135)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164518 (= res!772339 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164518 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38324 0))(
  ( (Unit!38325) )
))
(declare-fun lt!524624 () Unit!38324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75158 (_ BitVec 64) (_ BitVec 32)) Unit!38324)

(assert (=> b!1164518 (= lt!524624 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164519 () Bool)

(assert (=> b!1164519 (= e!662135 true)))

(declare-datatypes ((tuple2!18758 0))(
  ( (tuple2!18759 (_1!9389 (_ BitVec 64)) (_2!9389 V!44043)) )
))
(declare-datatypes ((List!25533 0))(
  ( (Nil!25530) (Cons!25529 (h!26738 tuple2!18758) (t!37189 List!25533)) )
))
(declare-datatypes ((ListLongMap!16739 0))(
  ( (ListLongMap!16740 (toList!8385 List!25533)) )
))
(declare-fun lt!524622 () ListLongMap!16739)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44043)

(declare-fun zeroValue!944 () V!44043)

(declare-fun lt!524625 () array!75158)

(declare-fun getCurrentListMapNoExtraKeys!4818 (array!75158 array!75160 (_ BitVec 32) (_ BitVec 32) V!44043 V!44043 (_ BitVec 32) Int) ListLongMap!16739)

(declare-fun dynLambda!2815 (Int (_ BitVec 64)) V!44043)

(assert (=> b!1164519 (= lt!524622 (getCurrentListMapNoExtraKeys!4818 lt!524625 (array!75161 (store (arr!36227 _values!996) i!673 (ValueCellFull!13884 (dynLambda!2815 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36764 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524623 () ListLongMap!16739)

(assert (=> b!1164519 (= lt!524623 (getCurrentListMapNoExtraKeys!4818 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164520 () Bool)

(declare-fun res!772331 () Bool)

(assert (=> b!1164520 (=> (not res!772331) (not e!662131))))

(assert (=> b!1164520 (= res!772331 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36763 _keys!1208))))))

(declare-fun b!1164521 () Bool)

(declare-fun res!772333 () Bool)

(assert (=> b!1164521 (=> (not res!772333) (not e!662131))))

(assert (=> b!1164521 (= res!772333 (and (= (size!36764 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36763 _keys!1208) (size!36764 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164522 () Bool)

(declare-fun res!772334 () Bool)

(assert (=> b!1164522 (=> (not res!772334) (not e!662131))))

(declare-datatypes ((List!25534 0))(
  ( (Nil!25531) (Cons!25530 (h!26739 (_ BitVec 64)) (t!37190 List!25534)) )
))
(declare-fun arrayNoDuplicates!0 (array!75158 (_ BitVec 32) List!25534) Bool)

(assert (=> b!1164522 (= res!772334 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25531))))

(declare-fun b!1164523 () Bool)

(declare-fun res!772338 () Bool)

(assert (=> b!1164523 (=> (not res!772338) (not e!662131))))

(assert (=> b!1164523 (= res!772338 (= (select (arr!36226 _keys!1208) i!673) k0!934))))

(declare-fun b!1164524 () Bool)

(assert (=> b!1164524 (= e!662132 (and e!662133 mapRes!45605))))

(declare-fun condMapEmpty!45605 () Bool)

(declare-fun mapDefault!45605 () ValueCell!13884)

(assert (=> b!1164524 (= condMapEmpty!45605 (= (arr!36227 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13884)) mapDefault!45605)))))

(declare-fun b!1164525 () Bool)

(declare-fun res!772340 () Bool)

(assert (=> b!1164525 (=> (not res!772340) (not e!662131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164525 (= res!772340 (validKeyInArray!0 k0!934))))

(declare-fun b!1164526 () Bool)

(declare-fun res!772332 () Bool)

(assert (=> b!1164526 (=> (not res!772332) (not e!662136))))

(assert (=> b!1164526 (= res!772332 (arrayNoDuplicates!0 lt!524625 #b00000000000000000000000000000000 Nil!25531))))

(declare-fun b!1164527 () Bool)

(assert (=> b!1164527 (= e!662131 e!662136)))

(declare-fun res!772336 () Bool)

(assert (=> b!1164527 (=> (not res!772336) (not e!662136))))

(assert (=> b!1164527 (= res!772336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524625 mask!1564))))

(assert (=> b!1164527 (= lt!524625 (array!75159 (store (arr!36226 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36763 _keys!1208)))))

(assert (= (and start!99088 res!772330) b!1164514))

(assert (= (and b!1164514 res!772335) b!1164521))

(assert (= (and b!1164521 res!772333) b!1164515))

(assert (= (and b!1164515 res!772337) b!1164522))

(assert (= (and b!1164522 res!772334) b!1164520))

(assert (= (and b!1164520 res!772331) b!1164525))

(assert (= (and b!1164525 res!772340) b!1164523))

(assert (= (and b!1164523 res!772338) b!1164527))

(assert (= (and b!1164527 res!772336) b!1164526))

(assert (= (and b!1164526 res!772332) b!1164518))

(assert (= (and b!1164518 (not res!772339)) b!1164519))

(assert (= (and b!1164524 condMapEmpty!45605) mapIsEmpty!45605))

(assert (= (and b!1164524 (not condMapEmpty!45605)) mapNonEmpty!45605))

(get-info :version)

(assert (= (and mapNonEmpty!45605 ((_ is ValueCellFull!13884) mapValue!45605)) b!1164516))

(assert (= (and b!1164524 ((_ is ValueCellFull!13884) mapDefault!45605)) b!1164517))

(assert (= start!99088 b!1164524))

(declare-fun b_lambda!19781 () Bool)

(assert (=> (not b_lambda!19781) (not b!1164519)))

(declare-fun t!37188 () Bool)

(declare-fun tb!9477 () Bool)

(assert (=> (and start!99088 (= defaultEntry!1004 defaultEntry!1004) t!37188) tb!9477))

(declare-fun result!19511 () Bool)

(assert (=> tb!9477 (= result!19511 tp_is_empty!29187)))

(assert (=> b!1164519 t!37188))

(declare-fun b_and!40179 () Bool)

(assert (= b_and!40177 (and (=> t!37188 result!19511) b_and!40179)))

(declare-fun m!1072961 () Bool)

(assert (=> b!1164525 m!1072961))

(declare-fun m!1072963 () Bool)

(assert (=> b!1164522 m!1072963))

(declare-fun m!1072965 () Bool)

(assert (=> start!99088 m!1072965))

(declare-fun m!1072967 () Bool)

(assert (=> start!99088 m!1072967))

(declare-fun m!1072969 () Bool)

(assert (=> b!1164526 m!1072969))

(declare-fun m!1072971 () Bool)

(assert (=> b!1164527 m!1072971))

(declare-fun m!1072973 () Bool)

(assert (=> b!1164527 m!1072973))

(declare-fun m!1072975 () Bool)

(assert (=> mapNonEmpty!45605 m!1072975))

(declare-fun m!1072977 () Bool)

(assert (=> b!1164515 m!1072977))

(declare-fun m!1072979 () Bool)

(assert (=> b!1164519 m!1072979))

(declare-fun m!1072981 () Bool)

(assert (=> b!1164519 m!1072981))

(declare-fun m!1072983 () Bool)

(assert (=> b!1164519 m!1072983))

(declare-fun m!1072985 () Bool)

(assert (=> b!1164519 m!1072985))

(declare-fun m!1072987 () Bool)

(assert (=> b!1164514 m!1072987))

(declare-fun m!1072989 () Bool)

(assert (=> b!1164523 m!1072989))

(declare-fun m!1072991 () Bool)

(assert (=> b!1164518 m!1072991))

(declare-fun m!1072993 () Bool)

(assert (=> b!1164518 m!1072993))

(check-sat (not b!1164525) (not b!1164518) (not b!1164526) (not b!1164515) (not b!1164514) (not b!1164519) tp_is_empty!29187 (not b_lambda!19781) (not mapNonEmpty!45605) (not b_next!24657) (not b!1164527) b_and!40179 (not b!1164522) (not start!99088))
(check-sat b_and!40179 (not b_next!24657))
