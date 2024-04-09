; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100492 () Bool)

(assert start!100492)

(declare-fun b_free!25779 () Bool)

(declare-fun b_next!25779 () Bool)

(assert (=> start!100492 (= b_free!25779 (not b_next!25779))))

(declare-fun tp!90328 () Bool)

(declare-fun b_and!42459 () Bool)

(assert (=> start!100492 (= tp!90328 b_and!42459)))

(declare-fun b!1199476 () Bool)

(declare-fun res!798477 () Bool)

(declare-fun e!681296 () Bool)

(assert (=> b!1199476 (=> (not res!798477) (not e!681296))))

(declare-datatypes ((array!77722 0))(
  ( (array!77723 (arr!37502 (Array (_ BitVec 32) (_ BitVec 64))) (size!38039 (_ BitVec 32))) )
))
(declare-fun lt!543745 () array!77722)

(declare-datatypes ((List!26552 0))(
  ( (Nil!26549) (Cons!26548 (h!27757 (_ BitVec 64)) (t!39318 List!26552)) )
))
(declare-fun arrayNoDuplicates!0 (array!77722 (_ BitVec 32) List!26552) Bool)

(assert (=> b!1199476 (= res!798477 (arrayNoDuplicates!0 lt!543745 #b00000000000000000000000000000000 Nil!26549))))

(declare-fun b!1199477 () Bool)

(declare-fun e!681301 () Bool)

(declare-fun tp_is_empty!30483 () Bool)

(assert (=> b!1199477 (= e!681301 tp_is_empty!30483)))

(declare-fun b!1199478 () Bool)

(declare-fun e!681297 () Bool)

(assert (=> b!1199478 (= e!681297 true)))

(declare-datatypes ((V!45771 0))(
  ( (V!45772 (val!15298 Int)) )
))
(declare-fun zeroValue!944 () V!45771)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!19720 0))(
  ( (tuple2!19721 (_1!9870 (_ BitVec 64)) (_2!9870 V!45771)) )
))
(declare-datatypes ((List!26553 0))(
  ( (Nil!26550) (Cons!26549 (h!27758 tuple2!19720) (t!39319 List!26553)) )
))
(declare-datatypes ((ListLongMap!17701 0))(
  ( (ListLongMap!17702 (toList!8866 List!26553)) )
))
(declare-fun lt!543744 () ListLongMap!17701)

(declare-datatypes ((ValueCell!14532 0))(
  ( (ValueCellFull!14532 (v!17937 V!45771)) (EmptyCell!14532) )
))
(declare-datatypes ((array!77724 0))(
  ( (array!77725 (arr!37503 (Array (_ BitVec 32) ValueCell!14532)) (size!38040 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77724)

(declare-fun minValue!944 () V!45771)

(declare-fun getCurrentListMapNoExtraKeys!5279 (array!77722 array!77724 (_ BitVec 32) (_ BitVec 32) V!45771 V!45771 (_ BitVec 32) Int) ListLongMap!17701)

(declare-fun dynLambda!3210 (Int (_ BitVec 64)) V!45771)

(assert (=> b!1199478 (= lt!543744 (getCurrentListMapNoExtraKeys!5279 lt!543745 (array!77725 (store (arr!37503 _values!996) i!673 (ValueCellFull!14532 (dynLambda!3210 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38040 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!77722)

(declare-fun lt!543742 () ListLongMap!17701)

(assert (=> b!1199478 (= lt!543742 (getCurrentListMapNoExtraKeys!5279 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199479 () Bool)

(declare-fun res!798482 () Bool)

(declare-fun e!681300 () Bool)

(assert (=> b!1199479 (=> (not res!798482) (not e!681300))))

(assert (=> b!1199479 (= res!798482 (and (= (size!38040 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38039 _keys!1208) (size!38040 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199480 () Bool)

(declare-fun res!798485 () Bool)

(assert (=> b!1199480 (=> (not res!798485) (not e!681300))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199480 (= res!798485 (validKeyInArray!0 k0!934))))

(declare-fun b!1199481 () Bool)

(assert (=> b!1199481 (= e!681300 e!681296)))

(declare-fun res!798481 () Bool)

(assert (=> b!1199481 (=> (not res!798481) (not e!681296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77722 (_ BitVec 32)) Bool)

(assert (=> b!1199481 (= res!798481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543745 mask!1564))))

(assert (=> b!1199481 (= lt!543745 (array!77723 (store (arr!37502 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38039 _keys!1208)))))

(declare-fun b!1199482 () Bool)

(declare-fun e!681299 () Bool)

(assert (=> b!1199482 (= e!681299 tp_is_empty!30483)))

(declare-fun mapIsEmpty!47567 () Bool)

(declare-fun mapRes!47567 () Bool)

(assert (=> mapIsEmpty!47567 mapRes!47567))

(declare-fun mapNonEmpty!47567 () Bool)

(declare-fun tp!90327 () Bool)

(assert (=> mapNonEmpty!47567 (= mapRes!47567 (and tp!90327 e!681301))))

(declare-fun mapValue!47567 () ValueCell!14532)

(declare-fun mapRest!47567 () (Array (_ BitVec 32) ValueCell!14532))

(declare-fun mapKey!47567 () (_ BitVec 32))

(assert (=> mapNonEmpty!47567 (= (arr!37503 _values!996) (store mapRest!47567 mapKey!47567 mapValue!47567))))

(declare-fun b!1199483 () Bool)

(declare-fun e!681298 () Bool)

(assert (=> b!1199483 (= e!681298 (and e!681299 mapRes!47567))))

(declare-fun condMapEmpty!47567 () Bool)

(declare-fun mapDefault!47567 () ValueCell!14532)

(assert (=> b!1199483 (= condMapEmpty!47567 (= (arr!37503 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14532)) mapDefault!47567)))))

(declare-fun b!1199485 () Bool)

(declare-fun res!798486 () Bool)

(assert (=> b!1199485 (=> (not res!798486) (not e!681300))))

(assert (=> b!1199485 (= res!798486 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38039 _keys!1208))))))

(declare-fun b!1199486 () Bool)

(declare-fun res!798480 () Bool)

(assert (=> b!1199486 (=> (not res!798480) (not e!681300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199486 (= res!798480 (validMask!0 mask!1564))))

(declare-fun b!1199487 () Bool)

(assert (=> b!1199487 (= e!681296 (not e!681297))))

(declare-fun res!798478 () Bool)

(assert (=> b!1199487 (=> res!798478 e!681297)))

(assert (=> b!1199487 (= res!798478 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199487 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39702 0))(
  ( (Unit!39703) )
))
(declare-fun lt!543743 () Unit!39702)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77722 (_ BitVec 64) (_ BitVec 32)) Unit!39702)

(assert (=> b!1199487 (= lt!543743 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199488 () Bool)

(declare-fun res!798483 () Bool)

(assert (=> b!1199488 (=> (not res!798483) (not e!681300))))

(assert (=> b!1199488 (= res!798483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199489 () Bool)

(declare-fun res!798476 () Bool)

(assert (=> b!1199489 (=> (not res!798476) (not e!681300))))

(assert (=> b!1199489 (= res!798476 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26549))))

(declare-fun res!798479 () Bool)

(assert (=> start!100492 (=> (not res!798479) (not e!681300))))

(assert (=> start!100492 (= res!798479 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38039 _keys!1208))))))

(assert (=> start!100492 e!681300))

(assert (=> start!100492 tp_is_empty!30483))

(declare-fun array_inv!28482 (array!77722) Bool)

(assert (=> start!100492 (array_inv!28482 _keys!1208)))

(assert (=> start!100492 true))

(assert (=> start!100492 tp!90328))

(declare-fun array_inv!28483 (array!77724) Bool)

(assert (=> start!100492 (and (array_inv!28483 _values!996) e!681298)))

(declare-fun b!1199484 () Bool)

(declare-fun res!798484 () Bool)

(assert (=> b!1199484 (=> (not res!798484) (not e!681300))))

(assert (=> b!1199484 (= res!798484 (= (select (arr!37502 _keys!1208) i!673) k0!934))))

(assert (= (and start!100492 res!798479) b!1199486))

(assert (= (and b!1199486 res!798480) b!1199479))

(assert (= (and b!1199479 res!798482) b!1199488))

(assert (= (and b!1199488 res!798483) b!1199489))

(assert (= (and b!1199489 res!798476) b!1199485))

(assert (= (and b!1199485 res!798486) b!1199480))

(assert (= (and b!1199480 res!798485) b!1199484))

(assert (= (and b!1199484 res!798484) b!1199481))

(assert (= (and b!1199481 res!798481) b!1199476))

(assert (= (and b!1199476 res!798477) b!1199487))

(assert (= (and b!1199487 (not res!798478)) b!1199478))

(assert (= (and b!1199483 condMapEmpty!47567) mapIsEmpty!47567))

(assert (= (and b!1199483 (not condMapEmpty!47567)) mapNonEmpty!47567))

(get-info :version)

(assert (= (and mapNonEmpty!47567 ((_ is ValueCellFull!14532) mapValue!47567)) b!1199477))

(assert (= (and b!1199483 ((_ is ValueCellFull!14532) mapDefault!47567)) b!1199482))

(assert (= start!100492 b!1199483))

(declare-fun b_lambda!20993 () Bool)

(assert (=> (not b_lambda!20993) (not b!1199478)))

(declare-fun t!39317 () Bool)

(declare-fun tb!10587 () Bool)

(assert (=> (and start!100492 (= defaultEntry!1004 defaultEntry!1004) t!39317) tb!10587))

(declare-fun result!21743 () Bool)

(assert (=> tb!10587 (= result!21743 tp_is_empty!30483)))

(assert (=> b!1199478 t!39317))

(declare-fun b_and!42461 () Bool)

(assert (= b_and!42459 (and (=> t!39317 result!21743) b_and!42461)))

(declare-fun m!1106045 () Bool)

(assert (=> start!100492 m!1106045))

(declare-fun m!1106047 () Bool)

(assert (=> start!100492 m!1106047))

(declare-fun m!1106049 () Bool)

(assert (=> b!1199488 m!1106049))

(declare-fun m!1106051 () Bool)

(assert (=> mapNonEmpty!47567 m!1106051))

(declare-fun m!1106053 () Bool)

(assert (=> b!1199489 m!1106053))

(declare-fun m!1106055 () Bool)

(assert (=> b!1199478 m!1106055))

(declare-fun m!1106057 () Bool)

(assert (=> b!1199478 m!1106057))

(declare-fun m!1106059 () Bool)

(assert (=> b!1199478 m!1106059))

(declare-fun m!1106061 () Bool)

(assert (=> b!1199478 m!1106061))

(declare-fun m!1106063 () Bool)

(assert (=> b!1199480 m!1106063))

(declare-fun m!1106065 () Bool)

(assert (=> b!1199487 m!1106065))

(declare-fun m!1106067 () Bool)

(assert (=> b!1199487 m!1106067))

(declare-fun m!1106069 () Bool)

(assert (=> b!1199486 m!1106069))

(declare-fun m!1106071 () Bool)

(assert (=> b!1199481 m!1106071))

(declare-fun m!1106073 () Bool)

(assert (=> b!1199481 m!1106073))

(declare-fun m!1106075 () Bool)

(assert (=> b!1199476 m!1106075))

(declare-fun m!1106077 () Bool)

(assert (=> b!1199484 m!1106077))

(check-sat (not b!1199478) (not b_next!25779) (not b!1199486) (not b!1199476) (not b!1199480) (not b!1199488) (not b!1199481) b_and!42461 tp_is_empty!30483 (not b!1199487) (not b_lambda!20993) (not start!100492) (not b!1199489) (not mapNonEmpty!47567))
(check-sat b_and!42461 (not b_next!25779))
