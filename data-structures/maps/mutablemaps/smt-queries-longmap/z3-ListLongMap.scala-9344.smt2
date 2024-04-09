; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111538 () Bool)

(assert start!111538)

(declare-fun b_free!30159 () Bool)

(declare-fun b_next!30159 () Bool)

(assert (=> start!111538 (= b_free!30159 (not b_next!30159))))

(declare-fun tp!105953 () Bool)

(declare-fun b_and!48487 () Bool)

(assert (=> start!111538 (= tp!105953 b_and!48487)))

(declare-fun b!1319899 () Bool)

(declare-fun res!876110 () Bool)

(declare-fun e!753005 () Bool)

(assert (=> b!1319899 (=> (not res!876110) (not e!753005))))

(declare-datatypes ((array!88855 0))(
  ( (array!88856 (arr!42897 (Array (_ BitVec 32) (_ BitVec 64))) (size!43448 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88855)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53075 0))(
  ( (V!53076 (val!18064 Int)) )
))
(declare-datatypes ((ValueCell!17091 0))(
  ( (ValueCellFull!17091 (v!20692 V!53075)) (EmptyCell!17091) )
))
(declare-datatypes ((array!88857 0))(
  ( (array!88858 (arr!42898 (Array (_ BitVec 32) ValueCell!17091)) (size!43449 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88857)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319899 (= res!876110 (and (= (size!43449 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43448 _keys!1609) (size!43449 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319900 () Bool)

(declare-fun res!876111 () Bool)

(assert (=> b!1319900 (=> (not res!876111) (not e!753005))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319900 (= res!876111 (validKeyInArray!0 (select (arr!42897 _keys!1609) from!2000)))))

(declare-fun b!1319901 () Bool)

(declare-fun res!876112 () Bool)

(assert (=> b!1319901 (=> (not res!876112) (not e!753005))))

(declare-fun zeroValue!1279 () V!53075)

(declare-fun minValue!1279 () V!53075)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23418 0))(
  ( (tuple2!23419 (_1!11719 (_ BitVec 64)) (_2!11719 V!53075)) )
))
(declare-datatypes ((List!30602 0))(
  ( (Nil!30599) (Cons!30598 (h!31807 tuple2!23418) (t!44317 List!30602)) )
))
(declare-datatypes ((ListLongMap!21087 0))(
  ( (ListLongMap!21088 (toList!10559 List!30602)) )
))
(declare-fun contains!8650 (ListLongMap!21087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5503 (array!88855 array!88857 (_ BitVec 32) (_ BitVec 32) V!53075 V!53075 (_ BitVec 32) Int) ListLongMap!21087)

(assert (=> b!1319901 (= res!876112 (contains!8650 (getCurrentListMap!5503 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55616 () Bool)

(declare-fun mapRes!55616 () Bool)

(declare-fun tp!105954 () Bool)

(declare-fun e!753007 () Bool)

(assert (=> mapNonEmpty!55616 (= mapRes!55616 (and tp!105954 e!753007))))

(declare-fun mapRest!55616 () (Array (_ BitVec 32) ValueCell!17091))

(declare-fun mapKey!55616 () (_ BitVec 32))

(declare-fun mapValue!55616 () ValueCell!17091)

(assert (=> mapNonEmpty!55616 (= (arr!42898 _values!1337) (store mapRest!55616 mapKey!55616 mapValue!55616))))

(declare-fun b!1319903 () Bool)

(declare-fun res!876105 () Bool)

(assert (=> b!1319903 (=> (not res!876105) (not e!753005))))

(declare-datatypes ((List!30603 0))(
  ( (Nil!30600) (Cons!30599 (h!31808 (_ BitVec 64)) (t!44318 List!30603)) )
))
(declare-fun arrayNoDuplicates!0 (array!88855 (_ BitVec 32) List!30603) Bool)

(assert (=> b!1319903 (= res!876105 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30600))))

(declare-fun mapIsEmpty!55616 () Bool)

(assert (=> mapIsEmpty!55616 mapRes!55616))

(declare-fun b!1319904 () Bool)

(assert (=> b!1319904 (= e!753005 (not true))))

(declare-fun lt!586733 () ListLongMap!21087)

(assert (=> b!1319904 (contains!8650 lt!586733 k0!1164)))

(declare-datatypes ((Unit!43430 0))(
  ( (Unit!43431) )
))
(declare-fun lt!586732 () Unit!43430)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!130 ((_ BitVec 64) (_ BitVec 64) V!53075 ListLongMap!21087) Unit!43430)

(assert (=> b!1319904 (= lt!586732 (lemmaInListMapAfterAddingDiffThenInBefore!130 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586733))))

(declare-fun lt!586735 () ListLongMap!21087)

(assert (=> b!1319904 (contains!8650 lt!586735 k0!1164)))

(declare-fun lt!586734 () Unit!43430)

(assert (=> b!1319904 (= lt!586734 (lemmaInListMapAfterAddingDiffThenInBefore!130 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586735))))

(declare-fun +!4515 (ListLongMap!21087 tuple2!23418) ListLongMap!21087)

(assert (=> b!1319904 (= lt!586735 (+!4515 lt!586733 (tuple2!23419 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6230 (array!88855 array!88857 (_ BitVec 32) (_ BitVec 32) V!53075 V!53075 (_ BitVec 32) Int) ListLongMap!21087)

(declare-fun get!21615 (ValueCell!17091 V!53075) V!53075)

(declare-fun dynLambda!3552 (Int (_ BitVec 64)) V!53075)

(assert (=> b!1319904 (= lt!586733 (+!4515 (getCurrentListMapNoExtraKeys!6230 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23419 (select (arr!42897 _keys!1609) from!2000) (get!21615 (select (arr!42898 _values!1337) from!2000) (dynLambda!3552 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319905 () Bool)

(declare-fun res!876107 () Bool)

(assert (=> b!1319905 (=> (not res!876107) (not e!753005))))

(assert (=> b!1319905 (= res!876107 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43448 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319906 () Bool)

(declare-fun res!876108 () Bool)

(assert (=> b!1319906 (=> (not res!876108) (not e!753005))))

(assert (=> b!1319906 (= res!876108 (not (= (select (arr!42897 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319907 () Bool)

(declare-fun res!876109 () Bool)

(assert (=> b!1319907 (=> (not res!876109) (not e!753005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88855 (_ BitVec 32)) Bool)

(assert (=> b!1319907 (= res!876109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319908 () Bool)

(declare-fun e!753003 () Bool)

(declare-fun e!753004 () Bool)

(assert (=> b!1319908 (= e!753003 (and e!753004 mapRes!55616))))

(declare-fun condMapEmpty!55616 () Bool)

(declare-fun mapDefault!55616 () ValueCell!17091)

(assert (=> b!1319908 (= condMapEmpty!55616 (= (arr!42898 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17091)) mapDefault!55616)))))

(declare-fun b!1319909 () Bool)

(declare-fun tp_is_empty!35979 () Bool)

(assert (=> b!1319909 (= e!753004 tp_is_empty!35979)))

(declare-fun res!876106 () Bool)

(assert (=> start!111538 (=> (not res!876106) (not e!753005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111538 (= res!876106 (validMask!0 mask!2019))))

(assert (=> start!111538 e!753005))

(declare-fun array_inv!32341 (array!88855) Bool)

(assert (=> start!111538 (array_inv!32341 _keys!1609)))

(assert (=> start!111538 true))

(assert (=> start!111538 tp_is_empty!35979))

(declare-fun array_inv!32342 (array!88857) Bool)

(assert (=> start!111538 (and (array_inv!32342 _values!1337) e!753003)))

(assert (=> start!111538 tp!105953))

(declare-fun b!1319902 () Bool)

(assert (=> b!1319902 (= e!753007 tp_is_empty!35979)))

(assert (= (and start!111538 res!876106) b!1319899))

(assert (= (and b!1319899 res!876110) b!1319907))

(assert (= (and b!1319907 res!876109) b!1319903))

(assert (= (and b!1319903 res!876105) b!1319905))

(assert (= (and b!1319905 res!876107) b!1319901))

(assert (= (and b!1319901 res!876112) b!1319906))

(assert (= (and b!1319906 res!876108) b!1319900))

(assert (= (and b!1319900 res!876111) b!1319904))

(assert (= (and b!1319908 condMapEmpty!55616) mapIsEmpty!55616))

(assert (= (and b!1319908 (not condMapEmpty!55616)) mapNonEmpty!55616))

(get-info :version)

(assert (= (and mapNonEmpty!55616 ((_ is ValueCellFull!17091) mapValue!55616)) b!1319902))

(assert (= (and b!1319908 ((_ is ValueCellFull!17091) mapDefault!55616)) b!1319909))

(assert (= start!111538 b!1319908))

(declare-fun b_lambda!23495 () Bool)

(assert (=> (not b_lambda!23495) (not b!1319904)))

(declare-fun t!44316 () Bool)

(declare-fun tb!11519 () Bool)

(assert (=> (and start!111538 (= defaultEntry!1340 defaultEntry!1340) t!44316) tb!11519))

(declare-fun result!24085 () Bool)

(assert (=> tb!11519 (= result!24085 tp_is_empty!35979)))

(assert (=> b!1319904 t!44316))

(declare-fun b_and!48489 () Bool)

(assert (= b_and!48487 (and (=> t!44316 result!24085) b_and!48489)))

(declare-fun m!1207591 () Bool)

(assert (=> b!1319900 m!1207591))

(assert (=> b!1319900 m!1207591))

(declare-fun m!1207593 () Bool)

(assert (=> b!1319900 m!1207593))

(declare-fun m!1207595 () Bool)

(assert (=> b!1319904 m!1207595))

(declare-fun m!1207597 () Bool)

(assert (=> b!1319904 m!1207597))

(declare-fun m!1207599 () Bool)

(assert (=> b!1319904 m!1207599))

(declare-fun m!1207601 () Bool)

(assert (=> b!1319904 m!1207601))

(assert (=> b!1319904 m!1207597))

(declare-fun m!1207603 () Bool)

(assert (=> b!1319904 m!1207603))

(declare-fun m!1207605 () Bool)

(assert (=> b!1319904 m!1207605))

(declare-fun m!1207607 () Bool)

(assert (=> b!1319904 m!1207607))

(assert (=> b!1319904 m!1207601))

(declare-fun m!1207609 () Bool)

(assert (=> b!1319904 m!1207609))

(assert (=> b!1319904 m!1207591))

(declare-fun m!1207611 () Bool)

(assert (=> b!1319904 m!1207611))

(assert (=> b!1319904 m!1207607))

(declare-fun m!1207613 () Bool)

(assert (=> b!1319904 m!1207613))

(declare-fun m!1207615 () Bool)

(assert (=> b!1319901 m!1207615))

(assert (=> b!1319901 m!1207615))

(declare-fun m!1207617 () Bool)

(assert (=> b!1319901 m!1207617))

(declare-fun m!1207619 () Bool)

(assert (=> start!111538 m!1207619))

(declare-fun m!1207621 () Bool)

(assert (=> start!111538 m!1207621))

(declare-fun m!1207623 () Bool)

(assert (=> start!111538 m!1207623))

(declare-fun m!1207625 () Bool)

(assert (=> b!1319903 m!1207625))

(assert (=> b!1319906 m!1207591))

(declare-fun m!1207627 () Bool)

(assert (=> b!1319907 m!1207627))

(declare-fun m!1207629 () Bool)

(assert (=> mapNonEmpty!55616 m!1207629))

(check-sat (not b!1319900) (not start!111538) (not b!1319907) tp_is_empty!35979 b_and!48489 (not b!1319901) (not mapNonEmpty!55616) (not b!1319904) (not b_next!30159) (not b_lambda!23495) (not b!1319903))
(check-sat b_and!48489 (not b_next!30159))
