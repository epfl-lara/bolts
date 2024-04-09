; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111556 () Bool)

(assert start!111556)

(declare-fun b_free!30177 () Bool)

(declare-fun b_next!30177 () Bool)

(assert (=> start!111556 (= b_free!30177 (not b_next!30177))))

(declare-fun tp!106007 () Bool)

(declare-fun b_and!48523 () Bool)

(assert (=> start!111556 (= tp!106007 b_and!48523)))

(declare-fun b!1320214 () Bool)

(declare-fun e!753138 () Bool)

(declare-fun e!753140 () Bool)

(declare-fun mapRes!55643 () Bool)

(assert (=> b!1320214 (= e!753138 (and e!753140 mapRes!55643))))

(declare-fun condMapEmpty!55643 () Bool)

(declare-datatypes ((V!53099 0))(
  ( (V!53100 (val!18073 Int)) )
))
(declare-datatypes ((ValueCell!17100 0))(
  ( (ValueCellFull!17100 (v!20701 V!53099)) (EmptyCell!17100) )
))
(declare-datatypes ((array!88889 0))(
  ( (array!88890 (arr!42914 (Array (_ BitVec 32) ValueCell!17100)) (size!43465 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88889)

(declare-fun mapDefault!55643 () ValueCell!17100)

(assert (=> b!1320214 (= condMapEmpty!55643 (= (arr!42914 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17100)) mapDefault!55643)))))

(declare-fun b!1320215 () Bool)

(declare-fun res!876322 () Bool)

(declare-fun e!753142 () Bool)

(assert (=> b!1320215 (=> (not res!876322) (not e!753142))))

(declare-datatypes ((array!88891 0))(
  ( (array!88892 (arr!42915 (Array (_ BitVec 32) (_ BitVec 64))) (size!43466 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88891)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1320215 (= res!876322 (not (= (select (arr!42915 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1320216 () Bool)

(declare-fun res!876328 () Bool)

(assert (=> b!1320216 (=> (not res!876328) (not e!753142))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1320216 (= res!876328 (and (= (size!43465 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43466 _keys!1609) (size!43465 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320217 () Bool)

(declare-fun res!876325 () Bool)

(assert (=> b!1320217 (=> (not res!876325) (not e!753142))))

(declare-datatypes ((List!30616 0))(
  ( (Nil!30613) (Cons!30612 (h!31821 (_ BitVec 64)) (t!44349 List!30616)) )
))
(declare-fun arrayNoDuplicates!0 (array!88891 (_ BitVec 32) List!30616) Bool)

(assert (=> b!1320217 (= res!876325 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30613))))

(declare-fun res!876326 () Bool)

(assert (=> start!111556 (=> (not res!876326) (not e!753142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111556 (= res!876326 (validMask!0 mask!2019))))

(assert (=> start!111556 e!753142))

(declare-fun array_inv!32353 (array!88891) Bool)

(assert (=> start!111556 (array_inv!32353 _keys!1609)))

(assert (=> start!111556 true))

(declare-fun tp_is_empty!35997 () Bool)

(assert (=> start!111556 tp_is_empty!35997))

(declare-fun array_inv!32354 (array!88889) Bool)

(assert (=> start!111556 (and (array_inv!32354 _values!1337) e!753138)))

(assert (=> start!111556 tp!106007))

(declare-fun b!1320218 () Bool)

(assert (=> b!1320218 (= e!753140 tp_is_empty!35997)))

(declare-fun b!1320219 () Bool)

(declare-fun res!876327 () Bool)

(assert (=> b!1320219 (=> (not res!876327) (not e!753142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320219 (= res!876327 (validKeyInArray!0 (select (arr!42915 _keys!1609) from!2000)))))

(declare-fun b!1320220 () Bool)

(declare-fun res!876321 () Bool)

(assert (=> b!1320220 (=> (not res!876321) (not e!753142))))

(assert (=> b!1320220 (= res!876321 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43466 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320221 () Bool)

(declare-fun res!876324 () Bool)

(assert (=> b!1320221 (=> (not res!876324) (not e!753142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88891 (_ BitVec 32)) Bool)

(assert (=> b!1320221 (= res!876324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320222 () Bool)

(assert (=> b!1320222 (= e!753142 (not true))))

(declare-datatypes ((tuple2!23434 0))(
  ( (tuple2!23435 (_1!11727 (_ BitVec 64)) (_2!11727 V!53099)) )
))
(declare-datatypes ((List!30617 0))(
  ( (Nil!30614) (Cons!30613 (h!31822 tuple2!23434) (t!44350 List!30617)) )
))
(declare-datatypes ((ListLongMap!21103 0))(
  ( (ListLongMap!21104 (toList!10567 List!30617)) )
))
(declare-fun lt!586842 () ListLongMap!21103)

(declare-fun contains!8658 (ListLongMap!21103 (_ BitVec 64)) Bool)

(assert (=> b!1320222 (contains!8658 lt!586842 k0!1164)))

(declare-datatypes ((Unit!43442 0))(
  ( (Unit!43443) )
))
(declare-fun lt!586843 () Unit!43442)

(declare-fun zeroValue!1279 () V!53099)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!136 ((_ BitVec 64) (_ BitVec 64) V!53099 ListLongMap!21103) Unit!43442)

(assert (=> b!1320222 (= lt!586843 (lemmaInListMapAfterAddingDiffThenInBefore!136 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586842))))

(declare-fun lt!586840 () ListLongMap!21103)

(assert (=> b!1320222 (contains!8658 lt!586840 k0!1164)))

(declare-fun lt!586841 () Unit!43442)

(declare-fun minValue!1279 () V!53099)

(assert (=> b!1320222 (= lt!586841 (lemmaInListMapAfterAddingDiffThenInBefore!136 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586840))))

(declare-fun +!4521 (ListLongMap!21103 tuple2!23434) ListLongMap!21103)

(assert (=> b!1320222 (= lt!586840 (+!4521 lt!586842 (tuple2!23435 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6236 (array!88891 array!88889 (_ BitVec 32) (_ BitVec 32) V!53099 V!53099 (_ BitVec 32) Int) ListLongMap!21103)

(declare-fun get!21627 (ValueCell!17100 V!53099) V!53099)

(declare-fun dynLambda!3558 (Int (_ BitVec 64)) V!53099)

(assert (=> b!1320222 (= lt!586842 (+!4521 (getCurrentListMapNoExtraKeys!6236 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23435 (select (arr!42915 _keys!1609) from!2000) (get!21627 (select (arr!42914 _values!1337) from!2000) (dynLambda!3558 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!55643 () Bool)

(declare-fun tp!106008 () Bool)

(declare-fun e!753141 () Bool)

(assert (=> mapNonEmpty!55643 (= mapRes!55643 (and tp!106008 e!753141))))

(declare-fun mapValue!55643 () ValueCell!17100)

(declare-fun mapKey!55643 () (_ BitVec 32))

(declare-fun mapRest!55643 () (Array (_ BitVec 32) ValueCell!17100))

(assert (=> mapNonEmpty!55643 (= (arr!42914 _values!1337) (store mapRest!55643 mapKey!55643 mapValue!55643))))

(declare-fun mapIsEmpty!55643 () Bool)

(assert (=> mapIsEmpty!55643 mapRes!55643))

(declare-fun b!1320223 () Bool)

(declare-fun res!876323 () Bool)

(assert (=> b!1320223 (=> (not res!876323) (not e!753142))))

(declare-fun getCurrentListMap!5510 (array!88891 array!88889 (_ BitVec 32) (_ BitVec 32) V!53099 V!53099 (_ BitVec 32) Int) ListLongMap!21103)

(assert (=> b!1320223 (= res!876323 (contains!8658 (getCurrentListMap!5510 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320224 () Bool)

(assert (=> b!1320224 (= e!753141 tp_is_empty!35997)))

(assert (= (and start!111556 res!876326) b!1320216))

(assert (= (and b!1320216 res!876328) b!1320221))

(assert (= (and b!1320221 res!876324) b!1320217))

(assert (= (and b!1320217 res!876325) b!1320220))

(assert (= (and b!1320220 res!876321) b!1320223))

(assert (= (and b!1320223 res!876323) b!1320215))

(assert (= (and b!1320215 res!876322) b!1320219))

(assert (= (and b!1320219 res!876327) b!1320222))

(assert (= (and b!1320214 condMapEmpty!55643) mapIsEmpty!55643))

(assert (= (and b!1320214 (not condMapEmpty!55643)) mapNonEmpty!55643))

(get-info :version)

(assert (= (and mapNonEmpty!55643 ((_ is ValueCellFull!17100) mapValue!55643)) b!1320224))

(assert (= (and b!1320214 ((_ is ValueCellFull!17100) mapDefault!55643)) b!1320218))

(assert (= start!111556 b!1320214))

(declare-fun b_lambda!23513 () Bool)

(assert (=> (not b_lambda!23513) (not b!1320222)))

(declare-fun t!44348 () Bool)

(declare-fun tb!11537 () Bool)

(assert (=> (and start!111556 (= defaultEntry!1340 defaultEntry!1340) t!44348) tb!11537))

(declare-fun result!24121 () Bool)

(assert (=> tb!11537 (= result!24121 tp_is_empty!35997)))

(assert (=> b!1320222 t!44348))

(declare-fun b_and!48525 () Bool)

(assert (= b_and!48523 (and (=> t!44348 result!24121) b_and!48525)))

(declare-fun m!1207951 () Bool)

(assert (=> b!1320222 m!1207951))

(declare-fun m!1207953 () Bool)

(assert (=> b!1320222 m!1207953))

(declare-fun m!1207955 () Bool)

(assert (=> b!1320222 m!1207955))

(declare-fun m!1207957 () Bool)

(assert (=> b!1320222 m!1207957))

(declare-fun m!1207959 () Bool)

(assert (=> b!1320222 m!1207959))

(declare-fun m!1207961 () Bool)

(assert (=> b!1320222 m!1207961))

(declare-fun m!1207963 () Bool)

(assert (=> b!1320222 m!1207963))

(assert (=> b!1320222 m!1207961))

(assert (=> b!1320222 m!1207955))

(declare-fun m!1207965 () Bool)

(assert (=> b!1320222 m!1207965))

(declare-fun m!1207967 () Bool)

(assert (=> b!1320222 m!1207967))

(declare-fun m!1207969 () Bool)

(assert (=> b!1320222 m!1207969))

(assert (=> b!1320222 m!1207957))

(declare-fun m!1207971 () Bool)

(assert (=> b!1320222 m!1207971))

(assert (=> b!1320219 m!1207967))

(assert (=> b!1320219 m!1207967))

(declare-fun m!1207973 () Bool)

(assert (=> b!1320219 m!1207973))

(declare-fun m!1207975 () Bool)

(assert (=> mapNonEmpty!55643 m!1207975))

(declare-fun m!1207977 () Bool)

(assert (=> b!1320223 m!1207977))

(assert (=> b!1320223 m!1207977))

(declare-fun m!1207979 () Bool)

(assert (=> b!1320223 m!1207979))

(declare-fun m!1207981 () Bool)

(assert (=> start!111556 m!1207981))

(declare-fun m!1207983 () Bool)

(assert (=> start!111556 m!1207983))

(declare-fun m!1207985 () Bool)

(assert (=> start!111556 m!1207985))

(declare-fun m!1207987 () Bool)

(assert (=> b!1320217 m!1207987))

(declare-fun m!1207989 () Bool)

(assert (=> b!1320221 m!1207989))

(assert (=> b!1320215 m!1207967))

(check-sat (not mapNonEmpty!55643) (not b_lambda!23513) (not b!1320223) (not b_next!30177) (not b!1320221) tp_is_empty!35997 (not b!1320217) b_and!48525 (not b!1320222) (not b!1320219) (not start!111556))
(check-sat b_and!48525 (not b_next!30177))
