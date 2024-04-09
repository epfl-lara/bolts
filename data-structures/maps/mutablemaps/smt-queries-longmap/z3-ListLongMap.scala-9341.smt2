; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111520 () Bool)

(assert start!111520)

(declare-fun b_free!30141 () Bool)

(declare-fun b_next!30141 () Bool)

(assert (=> start!111520 (= b_free!30141 (not b_next!30141))))

(declare-fun tp!105899 () Bool)

(declare-fun b_and!48451 () Bool)

(assert (=> start!111520 (= tp!105899 b_and!48451)))

(declare-fun b!1319584 () Bool)

(declare-fun res!875892 () Bool)

(declare-fun e!752870 () Bool)

(assert (=> b!1319584 (=> (not res!875892) (not e!752870))))

(declare-datatypes ((array!88821 0))(
  ( (array!88822 (arr!42880 (Array (_ BitVec 32) (_ BitVec 64))) (size!43431 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88821)

(declare-datatypes ((List!30587 0))(
  ( (Nil!30584) (Cons!30583 (h!31792 (_ BitVec 64)) (t!44284 List!30587)) )
))
(declare-fun arrayNoDuplicates!0 (array!88821 (_ BitVec 32) List!30587) Bool)

(assert (=> b!1319584 (= res!875892 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30584))))

(declare-fun b!1319585 () Bool)

(declare-fun res!875891 () Bool)

(assert (=> b!1319585 (=> (not res!875891) (not e!752870))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1319585 (= res!875891 (not (= (select (arr!42880 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319586 () Bool)

(declare-fun e!752872 () Bool)

(declare-fun tp_is_empty!35961 () Bool)

(assert (=> b!1319586 (= e!752872 tp_is_empty!35961)))

(declare-fun b!1319587 () Bool)

(declare-fun e!752871 () Bool)

(assert (=> b!1319587 (= e!752871 tp_is_empty!35961)))

(declare-fun mapNonEmpty!55589 () Bool)

(declare-fun mapRes!55589 () Bool)

(declare-fun tp!105900 () Bool)

(assert (=> mapNonEmpty!55589 (= mapRes!55589 (and tp!105900 e!752872))))

(declare-datatypes ((V!53051 0))(
  ( (V!53052 (val!18055 Int)) )
))
(declare-datatypes ((ValueCell!17082 0))(
  ( (ValueCellFull!17082 (v!20683 V!53051)) (EmptyCell!17082) )
))
(declare-fun mapValue!55589 () ValueCell!17082)

(declare-datatypes ((array!88823 0))(
  ( (array!88824 (arr!42881 (Array (_ BitVec 32) ValueCell!17082)) (size!43432 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88823)

(declare-fun mapRest!55589 () (Array (_ BitVec 32) ValueCell!17082))

(declare-fun mapKey!55589 () (_ BitVec 32))

(assert (=> mapNonEmpty!55589 (= (arr!42881 _values!1337) (store mapRest!55589 mapKey!55589 mapValue!55589))))

(declare-fun b!1319588 () Bool)

(declare-fun res!875894 () Bool)

(assert (=> b!1319588 (=> (not res!875894) (not e!752870))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88821 (_ BitVec 32)) Bool)

(assert (=> b!1319588 (= res!875894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319590 () Bool)

(declare-fun e!752868 () Bool)

(assert (=> b!1319590 (= e!752868 (and e!752871 mapRes!55589))))

(declare-fun condMapEmpty!55589 () Bool)

(declare-fun mapDefault!55589 () ValueCell!17082)

(assert (=> b!1319590 (= condMapEmpty!55589 (= (arr!42881 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17082)) mapDefault!55589)))))

(declare-fun b!1319591 () Bool)

(assert (=> b!1319591 (= e!752870 (not true))))

(declare-datatypes ((tuple2!23402 0))(
  ( (tuple2!23403 (_1!11711 (_ BitVec 64)) (_2!11711 V!53051)) )
))
(declare-datatypes ((List!30588 0))(
  ( (Nil!30585) (Cons!30584 (h!31793 tuple2!23402) (t!44285 List!30588)) )
))
(declare-datatypes ((ListLongMap!21071 0))(
  ( (ListLongMap!21072 (toList!10551 List!30588)) )
))
(declare-fun lt!586626 () ListLongMap!21071)

(declare-fun contains!8642 (ListLongMap!21071 (_ BitVec 64)) Bool)

(assert (=> b!1319591 (contains!8642 lt!586626 k0!1164)))

(declare-fun zeroValue!1279 () V!53051)

(declare-datatypes ((Unit!43414 0))(
  ( (Unit!43415) )
))
(declare-fun lt!586624 () Unit!43414)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!122 ((_ BitVec 64) (_ BitVec 64) V!53051 ListLongMap!21071) Unit!43414)

(assert (=> b!1319591 (= lt!586624 (lemmaInListMapAfterAddingDiffThenInBefore!122 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586626))))

(declare-fun lt!586627 () ListLongMap!21071)

(assert (=> b!1319591 (contains!8642 lt!586627 k0!1164)))

(declare-fun lt!586625 () Unit!43414)

(declare-fun minValue!1279 () V!53051)

(assert (=> b!1319591 (= lt!586625 (lemmaInListMapAfterAddingDiffThenInBefore!122 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586627))))

(declare-fun +!4507 (ListLongMap!21071 tuple2!23402) ListLongMap!21071)

(assert (=> b!1319591 (= lt!586627 (+!4507 lt!586626 (tuple2!23403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6222 (array!88821 array!88823 (_ BitVec 32) (_ BitVec 32) V!53051 V!53051 (_ BitVec 32) Int) ListLongMap!21071)

(declare-fun get!21601 (ValueCell!17082 V!53051) V!53051)

(declare-fun dynLambda!3544 (Int (_ BitVec 64)) V!53051)

(assert (=> b!1319591 (= lt!586626 (+!4507 (getCurrentListMapNoExtraKeys!6222 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23403 (select (arr!42880 _keys!1609) from!2000) (get!21601 (select (arr!42881 _values!1337) from!2000) (dynLambda!3544 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319592 () Bool)

(declare-fun res!875890 () Bool)

(assert (=> b!1319592 (=> (not res!875890) (not e!752870))))

(assert (=> b!1319592 (= res!875890 (and (= (size!43432 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43431 _keys!1609) (size!43432 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319589 () Bool)

(declare-fun res!875889 () Bool)

(assert (=> b!1319589 (=> (not res!875889) (not e!752870))))

(declare-fun getCurrentListMap!5497 (array!88821 array!88823 (_ BitVec 32) (_ BitVec 32) V!53051 V!53051 (_ BitVec 32) Int) ListLongMap!21071)

(assert (=> b!1319589 (= res!875889 (contains!8642 (getCurrentListMap!5497 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!875895 () Bool)

(assert (=> start!111520 (=> (not res!875895) (not e!752870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111520 (= res!875895 (validMask!0 mask!2019))))

(assert (=> start!111520 e!752870))

(declare-fun array_inv!32329 (array!88821) Bool)

(assert (=> start!111520 (array_inv!32329 _keys!1609)))

(assert (=> start!111520 true))

(assert (=> start!111520 tp_is_empty!35961))

(declare-fun array_inv!32330 (array!88823) Bool)

(assert (=> start!111520 (and (array_inv!32330 _values!1337) e!752868)))

(assert (=> start!111520 tp!105899))

(declare-fun b!1319593 () Bool)

(declare-fun res!875893 () Bool)

(assert (=> b!1319593 (=> (not res!875893) (not e!752870))))

(assert (=> b!1319593 (= res!875893 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43431 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319594 () Bool)

(declare-fun res!875896 () Bool)

(assert (=> b!1319594 (=> (not res!875896) (not e!752870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319594 (= res!875896 (validKeyInArray!0 (select (arr!42880 _keys!1609) from!2000)))))

(declare-fun mapIsEmpty!55589 () Bool)

(assert (=> mapIsEmpty!55589 mapRes!55589))

(assert (= (and start!111520 res!875895) b!1319592))

(assert (= (and b!1319592 res!875890) b!1319588))

(assert (= (and b!1319588 res!875894) b!1319584))

(assert (= (and b!1319584 res!875892) b!1319593))

(assert (= (and b!1319593 res!875893) b!1319589))

(assert (= (and b!1319589 res!875889) b!1319585))

(assert (= (and b!1319585 res!875891) b!1319594))

(assert (= (and b!1319594 res!875896) b!1319591))

(assert (= (and b!1319590 condMapEmpty!55589) mapIsEmpty!55589))

(assert (= (and b!1319590 (not condMapEmpty!55589)) mapNonEmpty!55589))

(get-info :version)

(assert (= (and mapNonEmpty!55589 ((_ is ValueCellFull!17082) mapValue!55589)) b!1319586))

(assert (= (and b!1319590 ((_ is ValueCellFull!17082) mapDefault!55589)) b!1319587))

(assert (= start!111520 b!1319590))

(declare-fun b_lambda!23477 () Bool)

(assert (=> (not b_lambda!23477) (not b!1319591)))

(declare-fun t!44283 () Bool)

(declare-fun tb!11501 () Bool)

(assert (=> (and start!111520 (= defaultEntry!1340 defaultEntry!1340) t!44283) tb!11501))

(declare-fun result!24049 () Bool)

(assert (=> tb!11501 (= result!24049 tp_is_empty!35961)))

(assert (=> b!1319591 t!44283))

(declare-fun b_and!48453 () Bool)

(assert (= b_and!48451 (and (=> t!44283 result!24049) b_and!48453)))

(declare-fun m!1207231 () Bool)

(assert (=> b!1319588 m!1207231))

(declare-fun m!1207233 () Bool)

(assert (=> b!1319584 m!1207233))

(declare-fun m!1207235 () Bool)

(assert (=> start!111520 m!1207235))

(declare-fun m!1207237 () Bool)

(assert (=> start!111520 m!1207237))

(declare-fun m!1207239 () Bool)

(assert (=> start!111520 m!1207239))

(declare-fun m!1207241 () Bool)

(assert (=> b!1319589 m!1207241))

(assert (=> b!1319589 m!1207241))

(declare-fun m!1207243 () Bool)

(assert (=> b!1319589 m!1207243))

(declare-fun m!1207245 () Bool)

(assert (=> mapNonEmpty!55589 m!1207245))

(declare-fun m!1207247 () Bool)

(assert (=> b!1319591 m!1207247))

(declare-fun m!1207249 () Bool)

(assert (=> b!1319591 m!1207249))

(declare-fun m!1207251 () Bool)

(assert (=> b!1319591 m!1207251))

(declare-fun m!1207253 () Bool)

(assert (=> b!1319591 m!1207253))

(assert (=> b!1319591 m!1207249))

(declare-fun m!1207255 () Bool)

(assert (=> b!1319591 m!1207255))

(declare-fun m!1207257 () Bool)

(assert (=> b!1319591 m!1207257))

(declare-fun m!1207259 () Bool)

(assert (=> b!1319591 m!1207259))

(declare-fun m!1207261 () Bool)

(assert (=> b!1319591 m!1207261))

(assert (=> b!1319591 m!1207259))

(assert (=> b!1319591 m!1207253))

(declare-fun m!1207263 () Bool)

(assert (=> b!1319591 m!1207263))

(declare-fun m!1207265 () Bool)

(assert (=> b!1319591 m!1207265))

(declare-fun m!1207267 () Bool)

(assert (=> b!1319591 m!1207267))

(assert (=> b!1319585 m!1207267))

(assert (=> b!1319594 m!1207267))

(assert (=> b!1319594 m!1207267))

(declare-fun m!1207269 () Bool)

(assert (=> b!1319594 m!1207269))

(check-sat (not b!1319584) tp_is_empty!35961 b_and!48453 (not mapNonEmpty!55589) (not b!1319589) (not b!1319594) (not start!111520) (not b_lambda!23477) (not b!1319588) (not b_next!30141) (not b!1319591))
(check-sat b_and!48453 (not b_next!30141))
