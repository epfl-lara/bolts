; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97900 () Bool)

(assert start!97900)

(declare-fun b_free!23565 () Bool)

(declare-fun b_next!23565 () Bool)

(assert (=> start!97900 (= b_free!23565 (not b_next!23565))))

(declare-fun tp!83400 () Bool)

(declare-fun b_and!37935 () Bool)

(assert (=> start!97900 (= tp!83400 b_and!37935)))

(declare-fun res!748506 () Bool)

(declare-fun e!637995 () Bool)

(assert (=> start!97900 (=> (not res!748506) (not e!637995))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73016 0))(
  ( (array!73017 (arr!35157 (Array (_ BitVec 32) (_ BitVec 64))) (size!35694 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73016)

(assert (=> start!97900 (= res!748506 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35694 _keys!1208))))))

(assert (=> start!97900 e!637995))

(declare-fun tp_is_empty!28095 () Bool)

(assert (=> start!97900 tp_is_empty!28095))

(declare-fun array_inv!26870 (array!73016) Bool)

(assert (=> start!97900 (array_inv!26870 _keys!1208)))

(assert (=> start!97900 true))

(assert (=> start!97900 tp!83400))

(declare-datatypes ((V!42587 0))(
  ( (V!42588 (val!14104 Int)) )
))
(declare-datatypes ((ValueCell!13338 0))(
  ( (ValueCellFull!13338 (v!16738 V!42587)) (EmptyCell!13338) )
))
(declare-datatypes ((array!73018 0))(
  ( (array!73019 (arr!35158 (Array (_ BitVec 32) ValueCell!13338)) (size!35695 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73018)

(declare-fun e!637998 () Bool)

(declare-fun array_inv!26871 (array!73018) Bool)

(assert (=> start!97900 (and (array_inv!26871 _values!996) e!637998)))

(declare-fun b!1120328 () Bool)

(declare-fun e!638000 () Bool)

(assert (=> b!1120328 (= e!638000 tp_is_empty!28095)))

(declare-fun b!1120329 () Bool)

(declare-fun res!748505 () Bool)

(assert (=> b!1120329 (=> (not res!748505) (not e!637995))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1120329 (= res!748505 (and (= (size!35695 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35694 _keys!1208) (size!35695 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120330 () Bool)

(declare-fun e!637997 () Bool)

(assert (=> b!1120330 (= e!637995 e!637997)))

(declare-fun res!748496 () Bool)

(assert (=> b!1120330 (=> (not res!748496) (not e!637997))))

(declare-fun lt!497982 () array!73016)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73016 (_ BitVec 32)) Bool)

(assert (=> b!1120330 (= res!748496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497982 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120330 (= lt!497982 (array!73017 (store (arr!35157 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35694 _keys!1208)))))

(declare-fun b!1120331 () Bool)

(declare-fun res!748497 () Bool)

(assert (=> b!1120331 (=> (not res!748497) (not e!637995))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1120331 (= res!748497 (= (select (arr!35157 _keys!1208) i!673) k0!934))))

(declare-fun b!1120332 () Bool)

(declare-fun res!748501 () Bool)

(assert (=> b!1120332 (=> (not res!748501) (not e!637995))))

(declare-datatypes ((List!24590 0))(
  ( (Nil!24587) (Cons!24586 (h!25795 (_ BitVec 64)) (t!35154 List!24590)) )
))
(declare-fun arrayNoDuplicates!0 (array!73016 (_ BitVec 32) List!24590) Bool)

(assert (=> b!1120332 (= res!748501 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24587))))

(declare-fun b!1120333 () Bool)

(declare-fun res!748503 () Bool)

(assert (=> b!1120333 (=> (not res!748503) (not e!637995))))

(assert (=> b!1120333 (= res!748503 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35694 _keys!1208))))))

(declare-fun b!1120334 () Bool)

(declare-fun res!748500 () Bool)

(assert (=> b!1120334 (=> (not res!748500) (not e!637995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120334 (= res!748500 (validKeyInArray!0 k0!934))))

(declare-fun b!1120335 () Bool)

(declare-fun res!748504 () Bool)

(assert (=> b!1120335 (=> (not res!748504) (not e!637995))))

(assert (=> b!1120335 (= res!748504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120336 () Bool)

(declare-fun mapRes!43960 () Bool)

(assert (=> b!1120336 (= e!637998 (and e!638000 mapRes!43960))))

(declare-fun condMapEmpty!43960 () Bool)

(declare-fun mapDefault!43960 () ValueCell!13338)

(assert (=> b!1120336 (= condMapEmpty!43960 (= (arr!35158 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13338)) mapDefault!43960)))))

(declare-fun mapNonEmpty!43960 () Bool)

(declare-fun tp!83399 () Bool)

(declare-fun e!637994 () Bool)

(assert (=> mapNonEmpty!43960 (= mapRes!43960 (and tp!83399 e!637994))))

(declare-fun mapKey!43960 () (_ BitVec 32))

(declare-fun mapValue!43960 () ValueCell!13338)

(declare-fun mapRest!43960 () (Array (_ BitVec 32) ValueCell!13338))

(assert (=> mapNonEmpty!43960 (= (arr!35158 _values!996) (store mapRest!43960 mapKey!43960 mapValue!43960))))

(declare-fun mapIsEmpty!43960 () Bool)

(assert (=> mapIsEmpty!43960 mapRes!43960))

(declare-fun b!1120337 () Bool)

(declare-fun res!748499 () Bool)

(assert (=> b!1120337 (=> (not res!748499) (not e!637997))))

(assert (=> b!1120337 (= res!748499 (arrayNoDuplicates!0 lt!497982 #b00000000000000000000000000000000 Nil!24587))))

(declare-fun b!1120338 () Bool)

(declare-fun res!748502 () Bool)

(assert (=> b!1120338 (=> (not res!748502) (not e!637995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120338 (= res!748502 (validMask!0 mask!1564))))

(declare-fun b!1120339 () Bool)

(declare-fun e!637996 () Bool)

(assert (=> b!1120339 (= e!637997 (not e!637996))))

(declare-fun res!748498 () Bool)

(assert (=> b!1120339 (=> res!748498 e!637996)))

(assert (=> b!1120339 (= res!748498 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120339 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36683 0))(
  ( (Unit!36684) )
))
(declare-fun lt!497980 () Unit!36683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73016 (_ BitVec 64) (_ BitVec 32)) Unit!36683)

(assert (=> b!1120339 (= lt!497980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120340 () Bool)

(assert (=> b!1120340 (= e!637996 true)))

(declare-fun zeroValue!944 () V!42587)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42587)

(declare-datatypes ((tuple2!17750 0))(
  ( (tuple2!17751 (_1!8885 (_ BitVec 64)) (_2!8885 V!42587)) )
))
(declare-datatypes ((List!24591 0))(
  ( (Nil!24588) (Cons!24587 (h!25796 tuple2!17750) (t!35155 List!24591)) )
))
(declare-datatypes ((ListLongMap!15731 0))(
  ( (ListLongMap!15732 (toList!7881 List!24591)) )
))
(declare-fun lt!497981 () ListLongMap!15731)

(declare-fun getCurrentListMapNoExtraKeys!4342 (array!73016 array!73018 (_ BitVec 32) (_ BitVec 32) V!42587 V!42587 (_ BitVec 32) Int) ListLongMap!15731)

(declare-fun dynLambda!2444 (Int (_ BitVec 64)) V!42587)

(assert (=> b!1120340 (= lt!497981 (getCurrentListMapNoExtraKeys!4342 lt!497982 (array!73019 (store (arr!35158 _values!996) i!673 (ValueCellFull!13338 (dynLambda!2444 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35695 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497979 () ListLongMap!15731)

(assert (=> b!1120340 (= lt!497979 (getCurrentListMapNoExtraKeys!4342 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120341 () Bool)

(assert (=> b!1120341 (= e!637994 tp_is_empty!28095)))

(assert (= (and start!97900 res!748506) b!1120338))

(assert (= (and b!1120338 res!748502) b!1120329))

(assert (= (and b!1120329 res!748505) b!1120335))

(assert (= (and b!1120335 res!748504) b!1120332))

(assert (= (and b!1120332 res!748501) b!1120333))

(assert (= (and b!1120333 res!748503) b!1120334))

(assert (= (and b!1120334 res!748500) b!1120331))

(assert (= (and b!1120331 res!748497) b!1120330))

(assert (= (and b!1120330 res!748496) b!1120337))

(assert (= (and b!1120337 res!748499) b!1120339))

(assert (= (and b!1120339 (not res!748498)) b!1120340))

(assert (= (and b!1120336 condMapEmpty!43960) mapIsEmpty!43960))

(assert (= (and b!1120336 (not condMapEmpty!43960)) mapNonEmpty!43960))

(get-info :version)

(assert (= (and mapNonEmpty!43960 ((_ is ValueCellFull!13338) mapValue!43960)) b!1120341))

(assert (= (and b!1120336 ((_ is ValueCellFull!13338) mapDefault!43960)) b!1120328))

(assert (= start!97900 b!1120336))

(declare-fun b_lambda!18569 () Bool)

(assert (=> (not b_lambda!18569) (not b!1120340)))

(declare-fun t!35153 () Bool)

(declare-fun tb!8385 () Bool)

(assert (=> (and start!97900 (= defaultEntry!1004 defaultEntry!1004) t!35153) tb!8385))

(declare-fun result!17323 () Bool)

(assert (=> tb!8385 (= result!17323 tp_is_empty!28095)))

(assert (=> b!1120340 t!35153))

(declare-fun b_and!37937 () Bool)

(assert (= b_and!37935 (and (=> t!35153 result!17323) b_and!37937)))

(declare-fun m!1035515 () Bool)

(assert (=> b!1120332 m!1035515))

(declare-fun m!1035517 () Bool)

(assert (=> b!1120335 m!1035517))

(declare-fun m!1035519 () Bool)

(assert (=> b!1120330 m!1035519))

(declare-fun m!1035521 () Bool)

(assert (=> b!1120330 m!1035521))

(declare-fun m!1035523 () Bool)

(assert (=> b!1120338 m!1035523))

(declare-fun m!1035525 () Bool)

(assert (=> start!97900 m!1035525))

(declare-fun m!1035527 () Bool)

(assert (=> start!97900 m!1035527))

(declare-fun m!1035529 () Bool)

(assert (=> b!1120340 m!1035529))

(declare-fun m!1035531 () Bool)

(assert (=> b!1120340 m!1035531))

(declare-fun m!1035533 () Bool)

(assert (=> b!1120340 m!1035533))

(declare-fun m!1035535 () Bool)

(assert (=> b!1120340 m!1035535))

(declare-fun m!1035537 () Bool)

(assert (=> b!1120331 m!1035537))

(declare-fun m!1035539 () Bool)

(assert (=> b!1120337 m!1035539))

(declare-fun m!1035541 () Bool)

(assert (=> b!1120339 m!1035541))

(declare-fun m!1035543 () Bool)

(assert (=> b!1120339 m!1035543))

(declare-fun m!1035545 () Bool)

(assert (=> mapNonEmpty!43960 m!1035545))

(declare-fun m!1035547 () Bool)

(assert (=> b!1120334 m!1035547))

(check-sat (not b_next!23565) (not start!97900) (not b!1120339) (not b!1120334) (not b!1120330) (not b!1120340) (not b!1120332) (not b!1120338) b_and!37937 (not b_lambda!18569) (not b!1120335) (not b!1120337) (not mapNonEmpty!43960) tp_is_empty!28095)
(check-sat b_and!37937 (not b_next!23565))
