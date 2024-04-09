; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97840 () Bool)

(assert start!97840)

(declare-fun b_free!23505 () Bool)

(declare-fun b_next!23505 () Bool)

(assert (=> start!97840 (= b_free!23505 (not b_next!23505))))

(declare-fun tp!83219 () Bool)

(declare-fun b_and!37815 () Bool)

(assert (=> start!97840 (= tp!83219 b_and!37815)))

(declare-fun mapIsEmpty!43870 () Bool)

(declare-fun mapRes!43870 () Bool)

(assert (=> mapIsEmpty!43870 mapRes!43870))

(declare-fun b!1119008 () Bool)

(declare-fun e!637364 () Bool)

(declare-fun e!637368 () Bool)

(assert (=> b!1119008 (= e!637364 (not e!637368))))

(declare-fun res!747512 () Bool)

(assert (=> b!1119008 (=> res!747512 e!637368)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119008 (= res!747512 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72898 0))(
  ( (array!72899 (arr!35098 (Array (_ BitVec 32) (_ BitVec 64))) (size!35635 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72898)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119008 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36633 0))(
  ( (Unit!36634) )
))
(declare-fun lt!497622 () Unit!36633)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72898 (_ BitVec 64) (_ BitVec 32)) Unit!36633)

(assert (=> b!1119008 (= lt!497622 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119009 () Bool)

(declare-fun e!637365 () Bool)

(declare-fun tp_is_empty!28035 () Bool)

(assert (=> b!1119009 (= e!637365 tp_is_empty!28035)))

(declare-fun b!1119010 () Bool)

(declare-fun res!747506 () Bool)

(declare-fun e!637366 () Bool)

(assert (=> b!1119010 (=> (not res!747506) (not e!637366))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72898 (_ BitVec 32)) Bool)

(assert (=> b!1119010 (= res!747506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119011 () Bool)

(declare-fun res!747508 () Bool)

(assert (=> b!1119011 (=> (not res!747508) (not e!637366))))

(declare-datatypes ((List!24543 0))(
  ( (Nil!24540) (Cons!24539 (h!25748 (_ BitVec 64)) (t!35047 List!24543)) )
))
(declare-fun arrayNoDuplicates!0 (array!72898 (_ BitVec 32) List!24543) Bool)

(assert (=> b!1119011 (= res!747508 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24540))))

(declare-fun b!1119013 () Bool)

(assert (=> b!1119013 (= e!637366 e!637364)))

(declare-fun res!747514 () Bool)

(assert (=> b!1119013 (=> (not res!747514) (not e!637364))))

(declare-fun lt!497621 () array!72898)

(assert (=> b!1119013 (= res!747514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497621 mask!1564))))

(assert (=> b!1119013 (= lt!497621 (array!72899 (store (arr!35098 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35635 _keys!1208)))))

(declare-fun mapNonEmpty!43870 () Bool)

(declare-fun tp!83220 () Bool)

(declare-fun e!637367 () Bool)

(assert (=> mapNonEmpty!43870 (= mapRes!43870 (and tp!83220 e!637367))))

(declare-datatypes ((V!42507 0))(
  ( (V!42508 (val!14074 Int)) )
))
(declare-datatypes ((ValueCell!13308 0))(
  ( (ValueCellFull!13308 (v!16708 V!42507)) (EmptyCell!13308) )
))
(declare-fun mapRest!43870 () (Array (_ BitVec 32) ValueCell!13308))

(declare-fun mapKey!43870 () (_ BitVec 32))

(declare-fun mapValue!43870 () ValueCell!13308)

(declare-datatypes ((array!72900 0))(
  ( (array!72901 (arr!35099 (Array (_ BitVec 32) ValueCell!13308)) (size!35636 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72900)

(assert (=> mapNonEmpty!43870 (= (arr!35099 _values!996) (store mapRest!43870 mapKey!43870 mapValue!43870))))

(declare-fun b!1119014 () Bool)

(declare-fun res!747516 () Bool)

(assert (=> b!1119014 (=> (not res!747516) (not e!637366))))

(assert (=> b!1119014 (= res!747516 (= (select (arr!35098 _keys!1208) i!673) k0!934))))

(declare-fun b!1119015 () Bool)

(declare-fun res!747511 () Bool)

(assert (=> b!1119015 (=> (not res!747511) (not e!637366))))

(assert (=> b!1119015 (= res!747511 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35635 _keys!1208))))))

(declare-fun b!1119016 () Bool)

(declare-fun e!637369 () Bool)

(assert (=> b!1119016 (= e!637369 (and e!637365 mapRes!43870))))

(declare-fun condMapEmpty!43870 () Bool)

(declare-fun mapDefault!43870 () ValueCell!13308)

(assert (=> b!1119016 (= condMapEmpty!43870 (= (arr!35099 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13308)) mapDefault!43870)))))

(declare-fun b!1119017 () Bool)

(assert (=> b!1119017 (= e!637367 tp_is_empty!28035)))

(declare-fun res!747515 () Bool)

(assert (=> start!97840 (=> (not res!747515) (not e!637366))))

(assert (=> start!97840 (= res!747515 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35635 _keys!1208))))))

(assert (=> start!97840 e!637366))

(assert (=> start!97840 tp_is_empty!28035))

(declare-fun array_inv!26828 (array!72898) Bool)

(assert (=> start!97840 (array_inv!26828 _keys!1208)))

(assert (=> start!97840 true))

(assert (=> start!97840 tp!83219))

(declare-fun array_inv!26829 (array!72900) Bool)

(assert (=> start!97840 (and (array_inv!26829 _values!996) e!637369)))

(declare-fun b!1119012 () Bool)

(declare-fun res!747507 () Bool)

(assert (=> b!1119012 (=> (not res!747507) (not e!637366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119012 (= res!747507 (validKeyInArray!0 k0!934))))

(declare-fun b!1119018 () Bool)

(declare-fun res!747509 () Bool)

(assert (=> b!1119018 (=> (not res!747509) (not e!637366))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1119018 (= res!747509 (and (= (size!35636 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35635 _keys!1208) (size!35636 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119019 () Bool)

(assert (=> b!1119019 (= e!637368 true)))

(declare-fun zeroValue!944 () V!42507)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42507)

(declare-datatypes ((tuple2!17706 0))(
  ( (tuple2!17707 (_1!8863 (_ BitVec 64)) (_2!8863 V!42507)) )
))
(declare-datatypes ((List!24544 0))(
  ( (Nil!24541) (Cons!24540 (h!25749 tuple2!17706) (t!35048 List!24544)) )
))
(declare-datatypes ((ListLongMap!15687 0))(
  ( (ListLongMap!15688 (toList!7859 List!24544)) )
))
(declare-fun lt!497619 () ListLongMap!15687)

(declare-fun getCurrentListMapNoExtraKeys!4320 (array!72898 array!72900 (_ BitVec 32) (_ BitVec 32) V!42507 V!42507 (_ BitVec 32) Int) ListLongMap!15687)

(declare-fun dynLambda!2422 (Int (_ BitVec 64)) V!42507)

(assert (=> b!1119019 (= lt!497619 (getCurrentListMapNoExtraKeys!4320 lt!497621 (array!72901 (store (arr!35099 _values!996) i!673 (ValueCellFull!13308 (dynLambda!2422 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35636 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497620 () ListLongMap!15687)

(assert (=> b!1119019 (= lt!497620 (getCurrentListMapNoExtraKeys!4320 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119020 () Bool)

(declare-fun res!747510 () Bool)

(assert (=> b!1119020 (=> (not res!747510) (not e!637364))))

(assert (=> b!1119020 (= res!747510 (arrayNoDuplicates!0 lt!497621 #b00000000000000000000000000000000 Nil!24540))))

(declare-fun b!1119021 () Bool)

(declare-fun res!747513 () Bool)

(assert (=> b!1119021 (=> (not res!747513) (not e!637366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119021 (= res!747513 (validMask!0 mask!1564))))

(assert (= (and start!97840 res!747515) b!1119021))

(assert (= (and b!1119021 res!747513) b!1119018))

(assert (= (and b!1119018 res!747509) b!1119010))

(assert (= (and b!1119010 res!747506) b!1119011))

(assert (= (and b!1119011 res!747508) b!1119015))

(assert (= (and b!1119015 res!747511) b!1119012))

(assert (= (and b!1119012 res!747507) b!1119014))

(assert (= (and b!1119014 res!747516) b!1119013))

(assert (= (and b!1119013 res!747514) b!1119020))

(assert (= (and b!1119020 res!747510) b!1119008))

(assert (= (and b!1119008 (not res!747512)) b!1119019))

(assert (= (and b!1119016 condMapEmpty!43870) mapIsEmpty!43870))

(assert (= (and b!1119016 (not condMapEmpty!43870)) mapNonEmpty!43870))

(get-info :version)

(assert (= (and mapNonEmpty!43870 ((_ is ValueCellFull!13308) mapValue!43870)) b!1119017))

(assert (= (and b!1119016 ((_ is ValueCellFull!13308) mapDefault!43870)) b!1119009))

(assert (= start!97840 b!1119016))

(declare-fun b_lambda!18509 () Bool)

(assert (=> (not b_lambda!18509) (not b!1119019)))

(declare-fun t!35046 () Bool)

(declare-fun tb!8325 () Bool)

(assert (=> (and start!97840 (= defaultEntry!1004 defaultEntry!1004) t!35046) tb!8325))

(declare-fun result!17203 () Bool)

(assert (=> tb!8325 (= result!17203 tp_is_empty!28035)))

(assert (=> b!1119019 t!35046))

(declare-fun b_and!37817 () Bool)

(assert (= b_and!37815 (and (=> t!35046 result!17203) b_and!37817)))

(declare-fun m!1034495 () Bool)

(assert (=> b!1119019 m!1034495))

(declare-fun m!1034497 () Bool)

(assert (=> b!1119019 m!1034497))

(declare-fun m!1034499 () Bool)

(assert (=> b!1119019 m!1034499))

(declare-fun m!1034501 () Bool)

(assert (=> b!1119019 m!1034501))

(declare-fun m!1034503 () Bool)

(assert (=> b!1119008 m!1034503))

(declare-fun m!1034505 () Bool)

(assert (=> b!1119008 m!1034505))

(declare-fun m!1034507 () Bool)

(assert (=> b!1119011 m!1034507))

(declare-fun m!1034509 () Bool)

(assert (=> b!1119020 m!1034509))

(declare-fun m!1034511 () Bool)

(assert (=> mapNonEmpty!43870 m!1034511))

(declare-fun m!1034513 () Bool)

(assert (=> b!1119013 m!1034513))

(declare-fun m!1034515 () Bool)

(assert (=> b!1119013 m!1034515))

(declare-fun m!1034517 () Bool)

(assert (=> b!1119012 m!1034517))

(declare-fun m!1034519 () Bool)

(assert (=> b!1119021 m!1034519))

(declare-fun m!1034521 () Bool)

(assert (=> start!97840 m!1034521))

(declare-fun m!1034523 () Bool)

(assert (=> start!97840 m!1034523))

(declare-fun m!1034525 () Bool)

(assert (=> b!1119014 m!1034525))

(declare-fun m!1034527 () Bool)

(assert (=> b!1119010 m!1034527))

(check-sat (not b_lambda!18509) (not b!1119012) (not b!1119021) (not b_next!23505) (not b!1119020) (not b!1119013) (not b!1119008) (not b!1119010) (not b!1119019) (not start!97840) (not b!1119011) b_and!37817 tp_is_empty!28035 (not mapNonEmpty!43870))
(check-sat b_and!37817 (not b_next!23505))
