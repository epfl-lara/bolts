; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111658 () Bool)

(assert start!111658)

(declare-fun b_free!30279 () Bool)

(declare-fun b_next!30279 () Bool)

(assert (=> start!111658 (= b_free!30279 (not b_next!30279))))

(declare-fun tp!106313 () Bool)

(declare-fun b_and!48727 () Bool)

(assert (=> start!111658 (= tp!106313 b_and!48727)))

(declare-fun b!1321999 () Bool)

(declare-fun res!877550 () Bool)

(declare-fun e!753907 () Bool)

(assert (=> b!1321999 (=> (not res!877550) (not e!753907))))

(declare-datatypes ((array!89081 0))(
  ( (array!89082 (arr!43010 (Array (_ BitVec 32) (_ BitVec 64))) (size!43561 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89081)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89081 (_ BitVec 32)) Bool)

(assert (=> b!1321999 (= res!877550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322000 () Bool)

(declare-fun e!753906 () Bool)

(declare-fun tp_is_empty!36099 () Bool)

(assert (=> b!1322000 (= e!753906 tp_is_empty!36099)))

(declare-fun b!1322001 () Bool)

(declare-fun e!753905 () Bool)

(declare-fun mapRes!55796 () Bool)

(assert (=> b!1322001 (= e!753905 (and e!753906 mapRes!55796))))

(declare-fun condMapEmpty!55796 () Bool)

(declare-datatypes ((V!53235 0))(
  ( (V!53236 (val!18124 Int)) )
))
(declare-datatypes ((ValueCell!17151 0))(
  ( (ValueCellFull!17151 (v!20752 V!53235)) (EmptyCell!17151) )
))
(declare-datatypes ((array!89083 0))(
  ( (array!89084 (arr!43011 (Array (_ BitVec 32) ValueCell!17151)) (size!43562 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89083)

(declare-fun mapDefault!55796 () ValueCell!17151)

(assert (=> b!1322001 (= condMapEmpty!55796 (= (arr!43011 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17151)) mapDefault!55796)))))

(declare-fun b!1322002 () Bool)

(declare-fun res!877549 () Bool)

(assert (=> b!1322002 (=> (not res!877549) (not e!753907))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322002 (= res!877549 (validKeyInArray!0 (select (arr!43010 _keys!1609) from!2000)))))

(declare-fun b!1322003 () Bool)

(declare-fun res!877551 () Bool)

(assert (=> b!1322003 (=> (not res!877551) (not e!753907))))

(declare-datatypes ((List!30687 0))(
  ( (Nil!30684) (Cons!30683 (h!31892 (_ BitVec 64)) (t!44522 List!30687)) )
))
(declare-fun arrayNoDuplicates!0 (array!89081 (_ BitVec 32) List!30687) Bool)

(assert (=> b!1322003 (= res!877551 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30684))))

(declare-fun mapNonEmpty!55796 () Bool)

(declare-fun tp!106314 () Bool)

(declare-fun e!753903 () Bool)

(assert (=> mapNonEmpty!55796 (= mapRes!55796 (and tp!106314 e!753903))))

(declare-fun mapKey!55796 () (_ BitVec 32))

(declare-fun mapValue!55796 () ValueCell!17151)

(declare-fun mapRest!55796 () (Array (_ BitVec 32) ValueCell!17151))

(assert (=> mapNonEmpty!55796 (= (arr!43011 _values!1337) (store mapRest!55796 mapKey!55796 mapValue!55796))))

(declare-fun b!1322004 () Bool)

(declare-fun res!877545 () Bool)

(assert (=> b!1322004 (=> (not res!877545) (not e!753907))))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1322004 (= res!877545 (not (= (select (arr!43010 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322005 () Bool)

(declare-fun res!877548 () Bool)

(assert (=> b!1322005 (=> (not res!877548) (not e!753907))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1322005 (= res!877548 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43561 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322006 () Bool)

(assert (=> b!1322006 (= e!753907 (not true))))

(declare-datatypes ((tuple2!23510 0))(
  ( (tuple2!23511 (_1!11765 (_ BitVec 64)) (_2!11765 V!53235)) )
))
(declare-datatypes ((List!30688 0))(
  ( (Nil!30685) (Cons!30684 (h!31893 tuple2!23510) (t!44523 List!30688)) )
))
(declare-datatypes ((ListLongMap!21179 0))(
  ( (ListLongMap!21180 (toList!10605 List!30688)) )
))
(declare-fun lt!587843 () ListLongMap!21179)

(declare-fun lt!587839 () tuple2!23510)

(declare-fun contains!8696 (ListLongMap!21179 (_ BitVec 64)) Bool)

(declare-fun +!4558 (ListLongMap!21179 tuple2!23510) ListLongMap!21179)

(assert (=> b!1322006 (contains!8696 (+!4558 lt!587843 lt!587839) k0!1164)))

(declare-fun zeroValue!1279 () V!53235)

(declare-datatypes ((Unit!43516 0))(
  ( (Unit!43517) )
))
(declare-fun lt!587838 () Unit!43516)

(declare-fun addStillContains!1139 (ListLongMap!21179 (_ BitVec 64) V!53235 (_ BitVec 64)) Unit!43516)

(assert (=> b!1322006 (= lt!587838 (addStillContains!1139 lt!587843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322006 (contains!8696 lt!587843 k0!1164)))

(declare-fun lt!587842 () V!53235)

(declare-fun lt!587840 () Unit!43516)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!173 ((_ BitVec 64) (_ BitVec 64) V!53235 ListLongMap!21179) Unit!43516)

(assert (=> b!1322006 (= lt!587840 (lemmaInListMapAfterAddingDiffThenInBefore!173 k0!1164 (select (arr!43010 _keys!1609) from!2000) lt!587842 lt!587843))))

(declare-fun lt!587837 () ListLongMap!21179)

(assert (=> b!1322006 (contains!8696 lt!587837 k0!1164)))

(declare-fun lt!587844 () Unit!43516)

(assert (=> b!1322006 (= lt!587844 (lemmaInListMapAfterAddingDiffThenInBefore!173 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587837))))

(declare-fun lt!587845 () ListLongMap!21179)

(assert (=> b!1322006 (contains!8696 lt!587845 k0!1164)))

(declare-fun lt!587841 () Unit!43516)

(declare-fun minValue!1279 () V!53235)

(assert (=> b!1322006 (= lt!587841 (lemmaInListMapAfterAddingDiffThenInBefore!173 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587845))))

(assert (=> b!1322006 (= lt!587845 (+!4558 lt!587837 lt!587839))))

(assert (=> b!1322006 (= lt!587839 (tuple2!23511 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322006 (= lt!587837 (+!4558 lt!587843 (tuple2!23511 (select (arr!43010 _keys!1609) from!2000) lt!587842)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21698 (ValueCell!17151 V!53235) V!53235)

(declare-fun dynLambda!3595 (Int (_ BitVec 64)) V!53235)

(assert (=> b!1322006 (= lt!587842 (get!21698 (select (arr!43011 _values!1337) from!2000) (dynLambda!3595 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6273 (array!89081 array!89083 (_ BitVec 32) (_ BitVec 32) V!53235 V!53235 (_ BitVec 32) Int) ListLongMap!21179)

(assert (=> b!1322006 (= lt!587843 (getCurrentListMapNoExtraKeys!6273 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapIsEmpty!55796 () Bool)

(assert (=> mapIsEmpty!55796 mapRes!55796))

(declare-fun b!1322007 () Bool)

(assert (=> b!1322007 (= e!753903 tp_is_empty!36099)))

(declare-fun b!1322008 () Bool)

(declare-fun res!877546 () Bool)

(assert (=> b!1322008 (=> (not res!877546) (not e!753907))))

(assert (=> b!1322008 (= res!877546 (and (= (size!43562 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43561 _keys!1609) (size!43562 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322009 () Bool)

(declare-fun res!877547 () Bool)

(assert (=> b!1322009 (=> (not res!877547) (not e!753907))))

(declare-fun getCurrentListMap!5545 (array!89081 array!89083 (_ BitVec 32) (_ BitVec 32) V!53235 V!53235 (_ BitVec 32) Int) ListLongMap!21179)

(assert (=> b!1322009 (= res!877547 (contains!8696 (getCurrentListMap!5545 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!877552 () Bool)

(assert (=> start!111658 (=> (not res!877552) (not e!753907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111658 (= res!877552 (validMask!0 mask!2019))))

(assert (=> start!111658 e!753907))

(declare-fun array_inv!32423 (array!89081) Bool)

(assert (=> start!111658 (array_inv!32423 _keys!1609)))

(assert (=> start!111658 true))

(assert (=> start!111658 tp_is_empty!36099))

(declare-fun array_inv!32424 (array!89083) Bool)

(assert (=> start!111658 (and (array_inv!32424 _values!1337) e!753905)))

(assert (=> start!111658 tp!106313))

(assert (= (and start!111658 res!877552) b!1322008))

(assert (= (and b!1322008 res!877546) b!1321999))

(assert (= (and b!1321999 res!877550) b!1322003))

(assert (= (and b!1322003 res!877551) b!1322005))

(assert (= (and b!1322005 res!877548) b!1322009))

(assert (= (and b!1322009 res!877547) b!1322004))

(assert (= (and b!1322004 res!877545) b!1322002))

(assert (= (and b!1322002 res!877549) b!1322006))

(assert (= (and b!1322001 condMapEmpty!55796) mapIsEmpty!55796))

(assert (= (and b!1322001 (not condMapEmpty!55796)) mapNonEmpty!55796))

(get-info :version)

(assert (= (and mapNonEmpty!55796 ((_ is ValueCellFull!17151) mapValue!55796)) b!1322007))

(assert (= (and b!1322001 ((_ is ValueCellFull!17151) mapDefault!55796)) b!1322000))

(assert (= start!111658 b!1322001))

(declare-fun b_lambda!23615 () Bool)

(assert (=> (not b_lambda!23615) (not b!1322006)))

(declare-fun t!44521 () Bool)

(declare-fun tb!11639 () Bool)

(assert (=> (and start!111658 (= defaultEntry!1340 defaultEntry!1340) t!44521) tb!11639))

(declare-fun result!24325 () Bool)

(assert (=> tb!11639 (= result!24325 tp_is_empty!36099)))

(assert (=> b!1322006 t!44521))

(declare-fun b_and!48729 () Bool)

(assert (= b_and!48727 (and (=> t!44521 result!24325) b_and!48729)))

(declare-fun m!1210181 () Bool)

(assert (=> b!1322002 m!1210181))

(assert (=> b!1322002 m!1210181))

(declare-fun m!1210183 () Bool)

(assert (=> b!1322002 m!1210183))

(declare-fun m!1210185 () Bool)

(assert (=> b!1321999 m!1210185))

(assert (=> b!1322004 m!1210181))

(declare-fun m!1210187 () Bool)

(assert (=> mapNonEmpty!55796 m!1210187))

(declare-fun m!1210189 () Bool)

(assert (=> b!1322006 m!1210189))

(declare-fun m!1210191 () Bool)

(assert (=> b!1322006 m!1210191))

(declare-fun m!1210193 () Bool)

(assert (=> b!1322006 m!1210193))

(declare-fun m!1210195 () Bool)

(assert (=> b!1322006 m!1210195))

(assert (=> b!1322006 m!1210181))

(declare-fun m!1210197 () Bool)

(assert (=> b!1322006 m!1210197))

(declare-fun m!1210199 () Bool)

(assert (=> b!1322006 m!1210199))

(declare-fun m!1210201 () Bool)

(assert (=> b!1322006 m!1210201))

(declare-fun m!1210203 () Bool)

(assert (=> b!1322006 m!1210203))

(declare-fun m!1210205 () Bool)

(assert (=> b!1322006 m!1210205))

(assert (=> b!1322006 m!1210181))

(declare-fun m!1210207 () Bool)

(assert (=> b!1322006 m!1210207))

(declare-fun m!1210209 () Bool)

(assert (=> b!1322006 m!1210209))

(declare-fun m!1210211 () Bool)

(assert (=> b!1322006 m!1210211))

(assert (=> b!1322006 m!1210195))

(declare-fun m!1210213 () Bool)

(assert (=> b!1322006 m!1210213))

(assert (=> b!1322006 m!1210205))

(assert (=> b!1322006 m!1210191))

(declare-fun m!1210215 () Bool)

(assert (=> b!1322006 m!1210215))

(declare-fun m!1210217 () Bool)

(assert (=> b!1322006 m!1210217))

(declare-fun m!1210219 () Bool)

(assert (=> b!1322003 m!1210219))

(declare-fun m!1210221 () Bool)

(assert (=> b!1322009 m!1210221))

(assert (=> b!1322009 m!1210221))

(declare-fun m!1210223 () Bool)

(assert (=> b!1322009 m!1210223))

(declare-fun m!1210225 () Bool)

(assert (=> start!111658 m!1210225))

(declare-fun m!1210227 () Bool)

(assert (=> start!111658 m!1210227))

(declare-fun m!1210229 () Bool)

(assert (=> start!111658 m!1210229))

(check-sat (not b!1322009) (not b_lambda!23615) (not start!111658) (not b_next!30279) (not b!1322006) (not b!1322003) tp_is_empty!36099 (not mapNonEmpty!55796) b_and!48729 (not b!1321999) (not b!1322002))
(check-sat b_and!48729 (not b_next!30279))
