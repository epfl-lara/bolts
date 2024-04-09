; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99178 () Bool)

(assert start!99178)

(declare-fun b_free!24747 () Bool)

(declare-fun b_next!24747 () Bool)

(assert (=> start!99178 (= b_free!24747 (not b_next!24747))))

(declare-fun tp!86952 () Bool)

(declare-fun b_and!40357 () Bool)

(assert (=> start!99178 (= tp!86952 b_and!40357)))

(declare-fun mapNonEmpty!45740 () Bool)

(declare-fun mapRes!45740 () Bool)

(declare-fun tp!86953 () Bool)

(declare-fun e!663125 () Bool)

(assert (=> mapNonEmpty!45740 (= mapRes!45740 (and tp!86953 e!663125))))

(declare-fun mapKey!45740 () (_ BitVec 32))

(declare-datatypes ((V!44163 0))(
  ( (V!44164 (val!14695 Int)) )
))
(declare-datatypes ((ValueCell!13929 0))(
  ( (ValueCellFull!13929 (v!17333 V!44163)) (EmptyCell!13929) )
))
(declare-fun mapRest!45740 () (Array (_ BitVec 32) ValueCell!13929))

(declare-fun mapValue!45740 () ValueCell!13929)

(declare-datatypes ((array!75332 0))(
  ( (array!75333 (arr!36313 (Array (_ BitVec 32) ValueCell!13929)) (size!36850 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75332)

(assert (=> mapNonEmpty!45740 (= (arr!36313 _values!996) (store mapRest!45740 mapKey!45740 mapValue!45740))))

(declare-fun b!1166544 () Bool)

(declare-fun e!663129 () Bool)

(declare-fun e!663130 () Bool)

(assert (=> b!1166544 (= e!663129 e!663130)))

(declare-fun res!773874 () Bool)

(assert (=> b!1166544 (=> (not res!773874) (not e!663130))))

(declare-datatypes ((array!75334 0))(
  ( (array!75335 (arr!36314 (Array (_ BitVec 32) (_ BitVec 64))) (size!36851 (_ BitVec 32))) )
))
(declare-fun lt!525262 () array!75334)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75334 (_ BitVec 32)) Bool)

(assert (=> b!1166544 (= res!773874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525262 mask!1564))))

(declare-fun _keys!1208 () array!75334)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166544 (= lt!525262 (array!75335 (store (arr!36314 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36851 _keys!1208)))))

(declare-fun b!1166545 () Bool)

(declare-fun e!663127 () Bool)

(assert (=> b!1166545 (= e!663127 true)))

(declare-fun zeroValue!944 () V!44163)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525266 () array!75332)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!44163)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18822 0))(
  ( (tuple2!18823 (_1!9421 (_ BitVec 64)) (_2!9421 V!44163)) )
))
(declare-datatypes ((List!25598 0))(
  ( (Nil!25595) (Cons!25594 (h!26803 tuple2!18822) (t!37344 List!25598)) )
))
(declare-datatypes ((ListLongMap!16803 0))(
  ( (ListLongMap!16804 (toList!8417 List!25598)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4850 (array!75334 array!75332 (_ BitVec 32) (_ BitVec 32) V!44163 V!44163 (_ BitVec 32) Int) ListLongMap!16803)

(declare-fun -!1453 (ListLongMap!16803 (_ BitVec 64)) ListLongMap!16803)

(assert (=> b!1166545 (= (getCurrentListMapNoExtraKeys!4850 lt!525262 lt!525266 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1453 (getCurrentListMapNoExtraKeys!4850 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38388 0))(
  ( (Unit!38389) )
))
(declare-fun lt!525264 () Unit!38388)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!677 (array!75334 array!75332 (_ BitVec 32) (_ BitVec 32) V!44163 V!44163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38388)

(assert (=> b!1166545 (= lt!525264 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!677 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166546 () Bool)

(declare-fun e!663132 () Bool)

(declare-fun tp_is_empty!29277 () Bool)

(assert (=> b!1166546 (= e!663132 tp_is_empty!29277)))

(declare-fun b!1166547 () Bool)

(declare-fun res!773867 () Bool)

(assert (=> b!1166547 (=> (not res!773867) (not e!663129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166547 (= res!773867 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45740 () Bool)

(assert (=> mapIsEmpty!45740 mapRes!45740))

(declare-fun b!1166549 () Bool)

(declare-fun res!773869 () Bool)

(assert (=> b!1166549 (=> (not res!773869) (not e!663129))))

(declare-datatypes ((List!25599 0))(
  ( (Nil!25596) (Cons!25595 (h!26804 (_ BitVec 64)) (t!37345 List!25599)) )
))
(declare-fun arrayNoDuplicates!0 (array!75334 (_ BitVec 32) List!25599) Bool)

(assert (=> b!1166549 (= res!773869 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25596))))

(declare-fun b!1166550 () Bool)

(assert (=> b!1166550 (= e!663125 tp_is_empty!29277)))

(declare-fun b!1166551 () Bool)

(declare-fun res!773865 () Bool)

(assert (=> b!1166551 (=> (not res!773865) (not e!663129))))

(assert (=> b!1166551 (= res!773865 (and (= (size!36850 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36851 _keys!1208) (size!36850 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166552 () Bool)

(declare-fun res!773871 () Bool)

(assert (=> b!1166552 (=> (not res!773871) (not e!663129))))

(assert (=> b!1166552 (= res!773871 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36851 _keys!1208))))))

(declare-fun b!1166553 () Bool)

(declare-fun e!663131 () Bool)

(assert (=> b!1166553 (= e!663131 e!663127)))

(declare-fun res!773876 () Bool)

(assert (=> b!1166553 (=> res!773876 e!663127)))

(assert (=> b!1166553 (= res!773876 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525265 () ListLongMap!16803)

(assert (=> b!1166553 (= lt!525265 (getCurrentListMapNoExtraKeys!4850 lt!525262 lt!525266 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2845 (Int (_ BitVec 64)) V!44163)

(assert (=> b!1166553 (= lt!525266 (array!75333 (store (arr!36313 _values!996) i!673 (ValueCellFull!13929 (dynLambda!2845 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36850 _values!996)))))

(declare-fun lt!525267 () ListLongMap!16803)

(assert (=> b!1166553 (= lt!525267 (getCurrentListMapNoExtraKeys!4850 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166554 () Bool)

(declare-fun res!773870 () Bool)

(assert (=> b!1166554 (=> (not res!773870) (not e!663129))))

(assert (=> b!1166554 (= res!773870 (= (select (arr!36314 _keys!1208) i!673) k0!934))))

(declare-fun b!1166555 () Bool)

(declare-fun res!773872 () Bool)

(assert (=> b!1166555 (=> (not res!773872) (not e!663129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166555 (= res!773872 (validKeyInArray!0 k0!934))))

(declare-fun b!1166556 () Bool)

(declare-fun e!663128 () Bool)

(assert (=> b!1166556 (= e!663128 (and e!663132 mapRes!45740))))

(declare-fun condMapEmpty!45740 () Bool)

(declare-fun mapDefault!45740 () ValueCell!13929)

(assert (=> b!1166556 (= condMapEmpty!45740 (= (arr!36313 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13929)) mapDefault!45740)))))

(declare-fun b!1166557 () Bool)

(assert (=> b!1166557 (= e!663130 (not e!663131))))

(declare-fun res!773866 () Bool)

(assert (=> b!1166557 (=> res!773866 e!663131)))

(assert (=> b!1166557 (= res!773866 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166557 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525263 () Unit!38388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75334 (_ BitVec 64) (_ BitVec 32)) Unit!38388)

(assert (=> b!1166557 (= lt!525263 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166558 () Bool)

(declare-fun res!773875 () Bool)

(assert (=> b!1166558 (=> (not res!773875) (not e!663130))))

(assert (=> b!1166558 (= res!773875 (arrayNoDuplicates!0 lt!525262 #b00000000000000000000000000000000 Nil!25596))))

(declare-fun res!773868 () Bool)

(assert (=> start!99178 (=> (not res!773868) (not e!663129))))

(assert (=> start!99178 (= res!773868 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36851 _keys!1208))))))

(assert (=> start!99178 e!663129))

(assert (=> start!99178 tp_is_empty!29277))

(declare-fun array_inv!27644 (array!75334) Bool)

(assert (=> start!99178 (array_inv!27644 _keys!1208)))

(assert (=> start!99178 true))

(assert (=> start!99178 tp!86952))

(declare-fun array_inv!27645 (array!75332) Bool)

(assert (=> start!99178 (and (array_inv!27645 _values!996) e!663128)))

(declare-fun b!1166548 () Bool)

(declare-fun res!773873 () Bool)

(assert (=> b!1166548 (=> (not res!773873) (not e!663129))))

(assert (=> b!1166548 (= res!773873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99178 res!773868) b!1166547))

(assert (= (and b!1166547 res!773867) b!1166551))

(assert (= (and b!1166551 res!773865) b!1166548))

(assert (= (and b!1166548 res!773873) b!1166549))

(assert (= (and b!1166549 res!773869) b!1166552))

(assert (= (and b!1166552 res!773871) b!1166555))

(assert (= (and b!1166555 res!773872) b!1166554))

(assert (= (and b!1166554 res!773870) b!1166544))

(assert (= (and b!1166544 res!773874) b!1166558))

(assert (= (and b!1166558 res!773875) b!1166557))

(assert (= (and b!1166557 (not res!773866)) b!1166553))

(assert (= (and b!1166553 (not res!773876)) b!1166545))

(assert (= (and b!1166556 condMapEmpty!45740) mapIsEmpty!45740))

(assert (= (and b!1166556 (not condMapEmpty!45740)) mapNonEmpty!45740))

(get-info :version)

(assert (= (and mapNonEmpty!45740 ((_ is ValueCellFull!13929) mapValue!45740)) b!1166550))

(assert (= (and b!1166556 ((_ is ValueCellFull!13929) mapDefault!45740)) b!1166546))

(assert (= start!99178 b!1166556))

(declare-fun b_lambda!19871 () Bool)

(assert (=> (not b_lambda!19871) (not b!1166553)))

(declare-fun t!37343 () Bool)

(declare-fun tb!9567 () Bool)

(assert (=> (and start!99178 (= defaultEntry!1004 defaultEntry!1004) t!37343) tb!9567))

(declare-fun result!19691 () Bool)

(assert (=> tb!9567 (= result!19691 tp_is_empty!29277)))

(assert (=> b!1166553 t!37343))

(declare-fun b_and!40359 () Bool)

(assert (= b_and!40357 (and (=> t!37343 result!19691) b_and!40359)))

(declare-fun m!1074619 () Bool)

(assert (=> b!1166544 m!1074619))

(declare-fun m!1074621 () Bool)

(assert (=> b!1166544 m!1074621))

(declare-fun m!1074623 () Bool)

(assert (=> b!1166554 m!1074623))

(declare-fun m!1074625 () Bool)

(assert (=> mapNonEmpty!45740 m!1074625))

(declare-fun m!1074627 () Bool)

(assert (=> b!1166547 m!1074627))

(declare-fun m!1074629 () Bool)

(assert (=> b!1166548 m!1074629))

(declare-fun m!1074631 () Bool)

(assert (=> b!1166555 m!1074631))

(declare-fun m!1074633 () Bool)

(assert (=> b!1166553 m!1074633))

(declare-fun m!1074635 () Bool)

(assert (=> b!1166553 m!1074635))

(declare-fun m!1074637 () Bool)

(assert (=> b!1166553 m!1074637))

(declare-fun m!1074639 () Bool)

(assert (=> b!1166553 m!1074639))

(declare-fun m!1074641 () Bool)

(assert (=> start!99178 m!1074641))

(declare-fun m!1074643 () Bool)

(assert (=> start!99178 m!1074643))

(declare-fun m!1074645 () Bool)

(assert (=> b!1166545 m!1074645))

(declare-fun m!1074647 () Bool)

(assert (=> b!1166545 m!1074647))

(assert (=> b!1166545 m!1074647))

(declare-fun m!1074649 () Bool)

(assert (=> b!1166545 m!1074649))

(declare-fun m!1074651 () Bool)

(assert (=> b!1166545 m!1074651))

(declare-fun m!1074653 () Bool)

(assert (=> b!1166549 m!1074653))

(declare-fun m!1074655 () Bool)

(assert (=> b!1166558 m!1074655))

(declare-fun m!1074657 () Bool)

(assert (=> b!1166557 m!1074657))

(declare-fun m!1074659 () Bool)

(assert (=> b!1166557 m!1074659))

(check-sat (not b!1166555) (not b_lambda!19871) (not b!1166557) (not b!1166548) b_and!40359 (not b_next!24747) (not b!1166547) (not b!1166553) tp_is_empty!29277 (not mapNonEmpty!45740) (not start!99178) (not b!1166544) (not b!1166549) (not b!1166558) (not b!1166545))
(check-sat b_and!40359 (not b_next!24747))
