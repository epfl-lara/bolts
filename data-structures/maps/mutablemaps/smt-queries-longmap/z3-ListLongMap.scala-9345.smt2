; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111544 () Bool)

(assert start!111544)

(declare-fun b_free!30165 () Bool)

(declare-fun b_next!30165 () Bool)

(assert (=> start!111544 (= b_free!30165 (not b_next!30165))))

(declare-fun tp!105971 () Bool)

(declare-fun b_and!48499 () Bool)

(assert (=> start!111544 (= tp!105971 b_and!48499)))

(declare-fun b!1320004 () Bool)

(declare-fun res!876179 () Bool)

(declare-fun e!753052 () Bool)

(assert (=> b!1320004 (=> (not res!876179) (not e!753052))))

(declare-datatypes ((array!88867 0))(
  ( (array!88868 (arr!42903 (Array (_ BitVec 32) (_ BitVec 64))) (size!43454 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88867)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1320004 (= res!876179 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43454 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320005 () Bool)

(declare-fun res!876183 () Bool)

(assert (=> b!1320005 (=> (not res!876183) (not e!753052))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88867 (_ BitVec 32)) Bool)

(assert (=> b!1320005 (= res!876183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!876180 () Bool)

(assert (=> start!111544 (=> (not res!876180) (not e!753052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111544 (= res!876180 (validMask!0 mask!2019))))

(assert (=> start!111544 e!753052))

(declare-fun array_inv!32345 (array!88867) Bool)

(assert (=> start!111544 (array_inv!32345 _keys!1609)))

(assert (=> start!111544 true))

(declare-fun tp_is_empty!35985 () Bool)

(assert (=> start!111544 tp_is_empty!35985))

(declare-datatypes ((V!53083 0))(
  ( (V!53084 (val!18067 Int)) )
))
(declare-datatypes ((ValueCell!17094 0))(
  ( (ValueCellFull!17094 (v!20695 V!53083)) (EmptyCell!17094) )
))
(declare-datatypes ((array!88869 0))(
  ( (array!88870 (arr!42904 (Array (_ BitVec 32) ValueCell!17094)) (size!43455 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88869)

(declare-fun e!753051 () Bool)

(declare-fun array_inv!32346 (array!88869) Bool)

(assert (=> start!111544 (and (array_inv!32346 _values!1337) e!753051)))

(assert (=> start!111544 tp!105971))

(declare-fun mapIsEmpty!55625 () Bool)

(declare-fun mapRes!55625 () Bool)

(assert (=> mapIsEmpty!55625 mapRes!55625))

(declare-fun b!1320006 () Bool)

(declare-fun e!753050 () Bool)

(assert (=> b!1320006 (= e!753050 tp_is_empty!35985)))

(declare-fun b!1320007 () Bool)

(declare-fun res!876177 () Bool)

(assert (=> b!1320007 (=> (not res!876177) (not e!753052))))

(assert (=> b!1320007 (= res!876177 (and (= (size!43455 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43454 _keys!1609) (size!43455 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320008 () Bool)

(declare-fun e!753048 () Bool)

(assert (=> b!1320008 (= e!753048 tp_is_empty!35985)))

(declare-fun b!1320009 () Bool)

(declare-fun res!876182 () Bool)

(assert (=> b!1320009 (=> (not res!876182) (not e!753052))))

(declare-fun zeroValue!1279 () V!53083)

(declare-fun minValue!1279 () V!53083)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23424 0))(
  ( (tuple2!23425 (_1!11722 (_ BitVec 64)) (_2!11722 V!53083)) )
))
(declare-datatypes ((List!30607 0))(
  ( (Nil!30604) (Cons!30603 (h!31812 tuple2!23424) (t!44328 List!30607)) )
))
(declare-datatypes ((ListLongMap!21093 0))(
  ( (ListLongMap!21094 (toList!10562 List!30607)) )
))
(declare-fun contains!8653 (ListLongMap!21093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5506 (array!88867 array!88869 (_ BitVec 32) (_ BitVec 32) V!53083 V!53083 (_ BitVec 32) Int) ListLongMap!21093)

(assert (=> b!1320009 (= res!876182 (contains!8653 (getCurrentListMap!5506 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320010 () Bool)

(declare-fun res!876184 () Bool)

(assert (=> b!1320010 (=> (not res!876184) (not e!753052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320010 (= res!876184 (validKeyInArray!0 (select (arr!42903 _keys!1609) from!2000)))))

(declare-fun b!1320011 () Bool)

(declare-fun res!876178 () Bool)

(assert (=> b!1320011 (=> (not res!876178) (not e!753052))))

(declare-datatypes ((List!30608 0))(
  ( (Nil!30605) (Cons!30604 (h!31813 (_ BitVec 64)) (t!44329 List!30608)) )
))
(declare-fun arrayNoDuplicates!0 (array!88867 (_ BitVec 32) List!30608) Bool)

(assert (=> b!1320011 (= res!876178 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30605))))

(declare-fun b!1320012 () Bool)

(assert (=> b!1320012 (= e!753052 (not true))))

(declare-fun lt!586771 () ListLongMap!21093)

(assert (=> b!1320012 (contains!8653 lt!586771 k0!1164)))

(declare-datatypes ((Unit!43434 0))(
  ( (Unit!43435) )
))
(declare-fun lt!586770 () Unit!43434)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!132 ((_ BitVec 64) (_ BitVec 64) V!53083 ListLongMap!21093) Unit!43434)

(assert (=> b!1320012 (= lt!586770 (lemmaInListMapAfterAddingDiffThenInBefore!132 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586771))))

(declare-fun lt!586768 () ListLongMap!21093)

(assert (=> b!1320012 (contains!8653 lt!586768 k0!1164)))

(declare-fun lt!586769 () Unit!43434)

(assert (=> b!1320012 (= lt!586769 (lemmaInListMapAfterAddingDiffThenInBefore!132 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586768))))

(declare-fun +!4517 (ListLongMap!21093 tuple2!23424) ListLongMap!21093)

(assert (=> b!1320012 (= lt!586768 (+!4517 lt!586771 (tuple2!23425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6232 (array!88867 array!88869 (_ BitVec 32) (_ BitVec 32) V!53083 V!53083 (_ BitVec 32) Int) ListLongMap!21093)

(declare-fun get!21619 (ValueCell!17094 V!53083) V!53083)

(declare-fun dynLambda!3554 (Int (_ BitVec 64)) V!53083)

(assert (=> b!1320012 (= lt!586771 (+!4517 (getCurrentListMapNoExtraKeys!6232 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23425 (select (arr!42903 _keys!1609) from!2000) (get!21619 (select (arr!42904 _values!1337) from!2000) (dynLambda!3554 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320013 () Bool)

(assert (=> b!1320013 (= e!753051 (and e!753048 mapRes!55625))))

(declare-fun condMapEmpty!55625 () Bool)

(declare-fun mapDefault!55625 () ValueCell!17094)

(assert (=> b!1320013 (= condMapEmpty!55625 (= (arr!42904 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17094)) mapDefault!55625)))))

(declare-fun b!1320014 () Bool)

(declare-fun res!876181 () Bool)

(assert (=> b!1320014 (=> (not res!876181) (not e!753052))))

(assert (=> b!1320014 (= res!876181 (not (= (select (arr!42903 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapNonEmpty!55625 () Bool)

(declare-fun tp!105972 () Bool)

(assert (=> mapNonEmpty!55625 (= mapRes!55625 (and tp!105972 e!753050))))

(declare-fun mapValue!55625 () ValueCell!17094)

(declare-fun mapRest!55625 () (Array (_ BitVec 32) ValueCell!17094))

(declare-fun mapKey!55625 () (_ BitVec 32))

(assert (=> mapNonEmpty!55625 (= (arr!42904 _values!1337) (store mapRest!55625 mapKey!55625 mapValue!55625))))

(assert (= (and start!111544 res!876180) b!1320007))

(assert (= (and b!1320007 res!876177) b!1320005))

(assert (= (and b!1320005 res!876183) b!1320011))

(assert (= (and b!1320011 res!876178) b!1320004))

(assert (= (and b!1320004 res!876179) b!1320009))

(assert (= (and b!1320009 res!876182) b!1320014))

(assert (= (and b!1320014 res!876181) b!1320010))

(assert (= (and b!1320010 res!876184) b!1320012))

(assert (= (and b!1320013 condMapEmpty!55625) mapIsEmpty!55625))

(assert (= (and b!1320013 (not condMapEmpty!55625)) mapNonEmpty!55625))

(get-info :version)

(assert (= (and mapNonEmpty!55625 ((_ is ValueCellFull!17094) mapValue!55625)) b!1320006))

(assert (= (and b!1320013 ((_ is ValueCellFull!17094) mapDefault!55625)) b!1320008))

(assert (= start!111544 b!1320013))

(declare-fun b_lambda!23501 () Bool)

(assert (=> (not b_lambda!23501) (not b!1320012)))

(declare-fun t!44327 () Bool)

(declare-fun tb!11525 () Bool)

(assert (=> (and start!111544 (= defaultEntry!1340 defaultEntry!1340) t!44327) tb!11525))

(declare-fun result!24097 () Bool)

(assert (=> tb!11525 (= result!24097 tp_is_empty!35985)))

(assert (=> b!1320012 t!44327))

(declare-fun b_and!48501 () Bool)

(assert (= b_and!48499 (and (=> t!44327 result!24097) b_and!48501)))

(declare-fun m!1207711 () Bool)

(assert (=> mapNonEmpty!55625 m!1207711))

(declare-fun m!1207713 () Bool)

(assert (=> b!1320014 m!1207713))

(declare-fun m!1207715 () Bool)

(assert (=> b!1320011 m!1207715))

(declare-fun m!1207717 () Bool)

(assert (=> start!111544 m!1207717))

(declare-fun m!1207719 () Bool)

(assert (=> start!111544 m!1207719))

(declare-fun m!1207721 () Bool)

(assert (=> start!111544 m!1207721))

(declare-fun m!1207723 () Bool)

(assert (=> b!1320012 m!1207723))

(declare-fun m!1207725 () Bool)

(assert (=> b!1320012 m!1207725))

(declare-fun m!1207727 () Bool)

(assert (=> b!1320012 m!1207727))

(assert (=> b!1320012 m!1207727))

(declare-fun m!1207729 () Bool)

(assert (=> b!1320012 m!1207729))

(declare-fun m!1207731 () Bool)

(assert (=> b!1320012 m!1207731))

(declare-fun m!1207733 () Bool)

(assert (=> b!1320012 m!1207733))

(assert (=> b!1320012 m!1207729))

(declare-fun m!1207735 () Bool)

(assert (=> b!1320012 m!1207735))

(assert (=> b!1320012 m!1207723))

(declare-fun m!1207737 () Bool)

(assert (=> b!1320012 m!1207737))

(declare-fun m!1207739 () Bool)

(assert (=> b!1320012 m!1207739))

(declare-fun m!1207741 () Bool)

(assert (=> b!1320012 m!1207741))

(assert (=> b!1320012 m!1207713))

(declare-fun m!1207743 () Bool)

(assert (=> b!1320005 m!1207743))

(declare-fun m!1207745 () Bool)

(assert (=> b!1320009 m!1207745))

(assert (=> b!1320009 m!1207745))

(declare-fun m!1207747 () Bool)

(assert (=> b!1320009 m!1207747))

(assert (=> b!1320010 m!1207713))

(assert (=> b!1320010 m!1207713))

(declare-fun m!1207749 () Bool)

(assert (=> b!1320010 m!1207749))

(check-sat tp_is_empty!35985 (not b!1320010) (not b_next!30165) (not start!111544) (not b!1320012) (not b_lambda!23501) b_and!48501 (not b!1320005) (not mapNonEmpty!55625) (not b!1320011) (not b!1320009))
(check-sat b_and!48501 (not b_next!30165))
