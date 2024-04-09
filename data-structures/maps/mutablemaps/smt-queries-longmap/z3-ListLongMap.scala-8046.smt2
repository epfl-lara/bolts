; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99154 () Bool)

(assert start!99154)

(declare-fun b_free!24723 () Bool)

(declare-fun b_next!24723 () Bool)

(assert (=> start!99154 (= b_free!24723 (not b_next!24723))))

(declare-fun tp!86880 () Bool)

(declare-fun b_and!40309 () Bool)

(assert (=> start!99154 (= tp!86880 b_and!40309)))

(declare-fun b!1165980 () Bool)

(declare-fun res!773436 () Bool)

(declare-fun e!662843 () Bool)

(assert (=> b!1165980 (=> (not res!773436) (not e!662843))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165980 (= res!773436 (validMask!0 mask!1564))))

(declare-fun b!1165981 () Bool)

(declare-fun e!662839 () Bool)

(declare-fun e!662838 () Bool)

(assert (=> b!1165981 (= e!662839 e!662838)))

(declare-fun res!773435 () Bool)

(assert (=> b!1165981 (=> res!773435 e!662838)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165981 (= res!773435 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44131 0))(
  ( (V!44132 (val!14683 Int)) )
))
(declare-fun zeroValue!944 () V!44131)

(declare-datatypes ((ValueCell!13917 0))(
  ( (ValueCellFull!13917 (v!17321 V!44131)) (EmptyCell!13917) )
))
(declare-datatypes ((array!75288 0))(
  ( (array!75289 (arr!36291 (Array (_ BitVec 32) ValueCell!13917)) (size!36828 (_ BitVec 32))) )
))
(declare-fun lt!525049 () array!75288)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44131)

(declare-datatypes ((tuple2!18806 0))(
  ( (tuple2!18807 (_1!9413 (_ BitVec 64)) (_2!9413 V!44131)) )
))
(declare-datatypes ((List!25581 0))(
  ( (Nil!25578) (Cons!25577 (h!26786 tuple2!18806) (t!37303 List!25581)) )
))
(declare-datatypes ((ListLongMap!16787 0))(
  ( (ListLongMap!16788 (toList!8409 List!25581)) )
))
(declare-fun lt!525051 () ListLongMap!16787)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!75290 0))(
  ( (array!75291 (arr!36292 (Array (_ BitVec 32) (_ BitVec 64))) (size!36829 (_ BitVec 32))) )
))
(declare-fun lt!525050 () array!75290)

(declare-fun getCurrentListMapNoExtraKeys!4842 (array!75290 array!75288 (_ BitVec 32) (_ BitVec 32) V!44131 V!44131 (_ BitVec 32) Int) ListLongMap!16787)

(assert (=> b!1165981 (= lt!525051 (getCurrentListMapNoExtraKeys!4842 lt!525050 lt!525049 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75288)

(declare-fun dynLambda!2837 (Int (_ BitVec 64)) V!44131)

(assert (=> b!1165981 (= lt!525049 (array!75289 (store (arr!36291 _values!996) i!673 (ValueCellFull!13917 (dynLambda!2837 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36828 _values!996)))))

(declare-fun _keys!1208 () array!75290)

(declare-fun lt!525048 () ListLongMap!16787)

(assert (=> b!1165981 (= lt!525048 (getCurrentListMapNoExtraKeys!4842 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165982 () Bool)

(declare-fun res!773442 () Bool)

(assert (=> b!1165982 (=> (not res!773442) (not e!662843))))

(assert (=> b!1165982 (= res!773442 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36829 _keys!1208))))))

(declare-fun b!1165983 () Bool)

(declare-fun e!662840 () Bool)

(assert (=> b!1165983 (= e!662843 e!662840)))

(declare-fun res!773437 () Bool)

(assert (=> b!1165983 (=> (not res!773437) (not e!662840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75290 (_ BitVec 32)) Bool)

(assert (=> b!1165983 (= res!773437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525050 mask!1564))))

(assert (=> b!1165983 (= lt!525050 (array!75291 (store (arr!36292 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36829 _keys!1208)))))

(declare-fun b!1165984 () Bool)

(declare-fun res!773433 () Bool)

(assert (=> b!1165984 (=> (not res!773433) (not e!662843))))

(assert (=> b!1165984 (= res!773433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165985 () Bool)

(declare-fun e!662842 () Bool)

(declare-fun tp_is_empty!29253 () Bool)

(assert (=> b!1165985 (= e!662842 tp_is_empty!29253)))

(declare-fun b!1165986 () Bool)

(declare-fun res!773434 () Bool)

(assert (=> b!1165986 (=> (not res!773434) (not e!662843))))

(assert (=> b!1165986 (= res!773434 (and (= (size!36828 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36829 _keys!1208) (size!36828 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165987 () Bool)

(declare-fun res!773441 () Bool)

(assert (=> b!1165987 (=> (not res!773441) (not e!662840))))

(declare-datatypes ((List!25582 0))(
  ( (Nil!25579) (Cons!25578 (h!26787 (_ BitVec 64)) (t!37304 List!25582)) )
))
(declare-fun arrayNoDuplicates!0 (array!75290 (_ BitVec 32) List!25582) Bool)

(assert (=> b!1165987 (= res!773441 (arrayNoDuplicates!0 lt!525050 #b00000000000000000000000000000000 Nil!25579))))

(declare-fun mapNonEmpty!45704 () Bool)

(declare-fun mapRes!45704 () Bool)

(declare-fun tp!86881 () Bool)

(declare-fun e!662844 () Bool)

(assert (=> mapNonEmpty!45704 (= mapRes!45704 (and tp!86881 e!662844))))

(declare-fun mapValue!45704 () ValueCell!13917)

(declare-fun mapRest!45704 () (Array (_ BitVec 32) ValueCell!13917))

(declare-fun mapKey!45704 () (_ BitVec 32))

(assert (=> mapNonEmpty!45704 (= (arr!36291 _values!996) (store mapRest!45704 mapKey!45704 mapValue!45704))))

(declare-fun res!773438 () Bool)

(assert (=> start!99154 (=> (not res!773438) (not e!662843))))

(assert (=> start!99154 (= res!773438 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36829 _keys!1208))))))

(assert (=> start!99154 e!662843))

(assert (=> start!99154 tp_is_empty!29253))

(declare-fun array_inv!27628 (array!75290) Bool)

(assert (=> start!99154 (array_inv!27628 _keys!1208)))

(assert (=> start!99154 true))

(assert (=> start!99154 tp!86880))

(declare-fun e!662841 () Bool)

(declare-fun array_inv!27629 (array!75288) Bool)

(assert (=> start!99154 (and (array_inv!27629 _values!996) e!662841)))

(declare-fun b!1165988 () Bool)

(declare-fun res!773440 () Bool)

(assert (=> b!1165988 (=> (not res!773440) (not e!662843))))

(assert (=> b!1165988 (= res!773440 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25579))))

(declare-fun b!1165989 () Bool)

(assert (=> b!1165989 (= e!662838 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1446 (ListLongMap!16787 (_ BitVec 64)) ListLongMap!16787)

(assert (=> b!1165989 (= (getCurrentListMapNoExtraKeys!4842 lt!525050 lt!525049 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1446 (getCurrentListMapNoExtraKeys!4842 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38370 0))(
  ( (Unit!38371) )
))
(declare-fun lt!525047 () Unit!38370)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!670 (array!75290 array!75288 (_ BitVec 32) (_ BitVec 32) V!44131 V!44131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38370)

(assert (=> b!1165989 (= lt!525047 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!670 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1165990 () Bool)

(declare-fun res!773443 () Bool)

(assert (=> b!1165990 (=> (not res!773443) (not e!662843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165990 (= res!773443 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45704 () Bool)

(assert (=> mapIsEmpty!45704 mapRes!45704))

(declare-fun b!1165991 () Bool)

(assert (=> b!1165991 (= e!662841 (and e!662842 mapRes!45704))))

(declare-fun condMapEmpty!45704 () Bool)

(declare-fun mapDefault!45704 () ValueCell!13917)

(assert (=> b!1165991 (= condMapEmpty!45704 (= (arr!36291 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13917)) mapDefault!45704)))))

(declare-fun b!1165992 () Bool)

(assert (=> b!1165992 (= e!662844 tp_is_empty!29253)))

(declare-fun b!1165993 () Bool)

(declare-fun res!773439 () Bool)

(assert (=> b!1165993 (=> (not res!773439) (not e!662843))))

(assert (=> b!1165993 (= res!773439 (= (select (arr!36292 _keys!1208) i!673) k0!934))))

(declare-fun b!1165994 () Bool)

(assert (=> b!1165994 (= e!662840 (not e!662839))))

(declare-fun res!773444 () Bool)

(assert (=> b!1165994 (=> res!773444 e!662839)))

(assert (=> b!1165994 (= res!773444 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165994 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525046 () Unit!38370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75290 (_ BitVec 64) (_ BitVec 32)) Unit!38370)

(assert (=> b!1165994 (= lt!525046 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99154 res!773438) b!1165980))

(assert (= (and b!1165980 res!773436) b!1165986))

(assert (= (and b!1165986 res!773434) b!1165984))

(assert (= (and b!1165984 res!773433) b!1165988))

(assert (= (and b!1165988 res!773440) b!1165982))

(assert (= (and b!1165982 res!773442) b!1165990))

(assert (= (and b!1165990 res!773443) b!1165993))

(assert (= (and b!1165993 res!773439) b!1165983))

(assert (= (and b!1165983 res!773437) b!1165987))

(assert (= (and b!1165987 res!773441) b!1165994))

(assert (= (and b!1165994 (not res!773444)) b!1165981))

(assert (= (and b!1165981 (not res!773435)) b!1165989))

(assert (= (and b!1165991 condMapEmpty!45704) mapIsEmpty!45704))

(assert (= (and b!1165991 (not condMapEmpty!45704)) mapNonEmpty!45704))

(get-info :version)

(assert (= (and mapNonEmpty!45704 ((_ is ValueCellFull!13917) mapValue!45704)) b!1165992))

(assert (= (and b!1165991 ((_ is ValueCellFull!13917) mapDefault!45704)) b!1165985))

(assert (= start!99154 b!1165991))

(declare-fun b_lambda!19847 () Bool)

(assert (=> (not b_lambda!19847) (not b!1165981)))

(declare-fun t!37302 () Bool)

(declare-fun tb!9543 () Bool)

(assert (=> (and start!99154 (= defaultEntry!1004 defaultEntry!1004) t!37302) tb!9543))

(declare-fun result!19643 () Bool)

(assert (=> tb!9543 (= result!19643 tp_is_empty!29253)))

(assert (=> b!1165981 t!37302))

(declare-fun b_and!40311 () Bool)

(assert (= b_and!40309 (and (=> t!37302 result!19643) b_and!40311)))

(declare-fun m!1074115 () Bool)

(assert (=> b!1165987 m!1074115))

(declare-fun m!1074117 () Bool)

(assert (=> start!99154 m!1074117))

(declare-fun m!1074119 () Bool)

(assert (=> start!99154 m!1074119))

(declare-fun m!1074121 () Bool)

(assert (=> b!1165989 m!1074121))

(declare-fun m!1074123 () Bool)

(assert (=> b!1165989 m!1074123))

(assert (=> b!1165989 m!1074123))

(declare-fun m!1074125 () Bool)

(assert (=> b!1165989 m!1074125))

(declare-fun m!1074127 () Bool)

(assert (=> b!1165989 m!1074127))

(declare-fun m!1074129 () Bool)

(assert (=> b!1165988 m!1074129))

(declare-fun m!1074131 () Bool)

(assert (=> b!1165993 m!1074131))

(declare-fun m!1074133 () Bool)

(assert (=> mapNonEmpty!45704 m!1074133))

(declare-fun m!1074135 () Bool)

(assert (=> b!1165994 m!1074135))

(declare-fun m!1074137 () Bool)

(assert (=> b!1165994 m!1074137))

(declare-fun m!1074139 () Bool)

(assert (=> b!1165984 m!1074139))

(declare-fun m!1074141 () Bool)

(assert (=> b!1165990 m!1074141))

(declare-fun m!1074143 () Bool)

(assert (=> b!1165983 m!1074143))

(declare-fun m!1074145 () Bool)

(assert (=> b!1165983 m!1074145))

(declare-fun m!1074147 () Bool)

(assert (=> b!1165980 m!1074147))

(declare-fun m!1074149 () Bool)

(assert (=> b!1165981 m!1074149))

(declare-fun m!1074151 () Bool)

(assert (=> b!1165981 m!1074151))

(declare-fun m!1074153 () Bool)

(assert (=> b!1165981 m!1074153))

(declare-fun m!1074155 () Bool)

(assert (=> b!1165981 m!1074155))

(check-sat (not b!1165987) (not b_next!24723) (not b!1165981) (not b!1165994) (not b_lambda!19847) (not b!1165988) (not b!1165980) (not b!1165984) (not mapNonEmpty!45704) (not start!99154) (not b!1165990) (not b!1165989) tp_is_empty!29253 b_and!40311 (not b!1165983))
(check-sat b_and!40311 (not b_next!24723))
