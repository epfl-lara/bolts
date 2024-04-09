; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111802 () Bool)

(assert start!111802)

(declare-fun b_free!30423 () Bool)

(declare-fun b_next!30423 () Bool)

(assert (=> start!111802 (= b_free!30423 (not b_next!30423))))

(declare-fun tp!106745 () Bool)

(declare-fun b_and!48971 () Bool)

(assert (=> start!111802 (= tp!106745 b_and!48971)))

(declare-fun b!1324271 () Bool)

(declare-fun e!754983 () Bool)

(declare-fun tp_is_empty!36243 () Bool)

(assert (=> b!1324271 (= e!754983 tp_is_empty!36243)))

(declare-fun b!1324272 () Bool)

(declare-fun res!879073 () Bool)

(declare-fun e!754987 () Bool)

(assert (=> b!1324272 (=> (not res!879073) (not e!754987))))

(declare-datatypes ((array!89355 0))(
  ( (array!89356 (arr!43147 (Array (_ BitVec 32) (_ BitVec 64))) (size!43698 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89355)

(declare-datatypes ((List!30783 0))(
  ( (Nil!30780) (Cons!30779 (h!31988 (_ BitVec 64)) (t!44716 List!30783)) )
))
(declare-fun arrayNoDuplicates!0 (array!89355 (_ BitVec 32) List!30783) Bool)

(assert (=> b!1324272 (= res!879073 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30780))))

(declare-fun b!1324273 () Bool)

(declare-fun e!754985 () Bool)

(declare-fun mapRes!56012 () Bool)

(assert (=> b!1324273 (= e!754985 (and e!754983 mapRes!56012))))

(declare-fun condMapEmpty!56012 () Bool)

(declare-datatypes ((V!53427 0))(
  ( (V!53428 (val!18196 Int)) )
))
(declare-datatypes ((ValueCell!17223 0))(
  ( (ValueCellFull!17223 (v!20824 V!53427)) (EmptyCell!17223) )
))
(declare-datatypes ((array!89357 0))(
  ( (array!89358 (arr!43148 (Array (_ BitVec 32) ValueCell!17223)) (size!43699 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89357)

(declare-fun mapDefault!56012 () ValueCell!17223)

(assert (=> b!1324273 (= condMapEmpty!56012 (= (arr!43148 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17223)) mapDefault!56012)))))

(declare-fun b!1324274 () Bool)

(declare-fun e!754984 () Bool)

(assert (=> b!1324274 (= e!754984 tp_is_empty!36243)))

(declare-fun b!1324275 () Bool)

(declare-fun res!879070 () Bool)

(assert (=> b!1324275 (=> (not res!879070) (not e!754987))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1324275 (= res!879070 (and (= (size!43699 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43698 _keys!1609) (size!43699 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324276 () Bool)

(declare-fun res!879072 () Bool)

(assert (=> b!1324276 (=> (not res!879072) (not e!754987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89355 (_ BitVec 32)) Bool)

(assert (=> b!1324276 (= res!879072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324277 () Bool)

(declare-fun res!879071 () Bool)

(assert (=> b!1324277 (=> (not res!879071) (not e!754987))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324277 (= res!879071 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43698 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324278 () Bool)

(assert (=> b!1324278 (= e!754987 false)))

(declare-fun zeroValue!1279 () V!53427)

(declare-fun minValue!1279 () V!53427)

(declare-fun lt!589399 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23610 0))(
  ( (tuple2!23611 (_1!11815 (_ BitVec 64)) (_2!11815 V!53427)) )
))
(declare-datatypes ((List!30784 0))(
  ( (Nil!30781) (Cons!30780 (h!31989 tuple2!23610) (t!44717 List!30784)) )
))
(declare-datatypes ((ListLongMap!21279 0))(
  ( (ListLongMap!21280 (toList!10655 List!30784)) )
))
(declare-fun contains!8746 (ListLongMap!21279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5592 (array!89355 array!89357 (_ BitVec 32) (_ BitVec 32) V!53427 V!53427 (_ BitVec 32) Int) ListLongMap!21279)

(assert (=> b!1324278 (= lt!589399 (contains!8746 (getCurrentListMap!5592 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!56012 () Bool)

(assert (=> mapIsEmpty!56012 mapRes!56012))

(declare-fun res!879069 () Bool)

(assert (=> start!111802 (=> (not res!879069) (not e!754987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111802 (= res!879069 (validMask!0 mask!2019))))

(assert (=> start!111802 e!754987))

(declare-fun array_inv!32515 (array!89355) Bool)

(assert (=> start!111802 (array_inv!32515 _keys!1609)))

(assert (=> start!111802 true))

(assert (=> start!111802 tp_is_empty!36243))

(declare-fun array_inv!32516 (array!89357) Bool)

(assert (=> start!111802 (and (array_inv!32516 _values!1337) e!754985)))

(assert (=> start!111802 tp!106745))

(declare-fun mapNonEmpty!56012 () Bool)

(declare-fun tp!106746 () Bool)

(assert (=> mapNonEmpty!56012 (= mapRes!56012 (and tp!106746 e!754984))))

(declare-fun mapRest!56012 () (Array (_ BitVec 32) ValueCell!17223))

(declare-fun mapValue!56012 () ValueCell!17223)

(declare-fun mapKey!56012 () (_ BitVec 32))

(assert (=> mapNonEmpty!56012 (= (arr!43148 _values!1337) (store mapRest!56012 mapKey!56012 mapValue!56012))))

(assert (= (and start!111802 res!879069) b!1324275))

(assert (= (and b!1324275 res!879070) b!1324276))

(assert (= (and b!1324276 res!879072) b!1324272))

(assert (= (and b!1324272 res!879073) b!1324277))

(assert (= (and b!1324277 res!879071) b!1324278))

(assert (= (and b!1324273 condMapEmpty!56012) mapIsEmpty!56012))

(assert (= (and b!1324273 (not condMapEmpty!56012)) mapNonEmpty!56012))

(get-info :version)

(assert (= (and mapNonEmpty!56012 ((_ is ValueCellFull!17223) mapValue!56012)) b!1324274))

(assert (= (and b!1324273 ((_ is ValueCellFull!17223) mapDefault!56012)) b!1324271))

(assert (= start!111802 b!1324273))

(declare-fun m!1213195 () Bool)

(assert (=> b!1324272 m!1213195))

(declare-fun m!1213197 () Bool)

(assert (=> b!1324278 m!1213197))

(assert (=> b!1324278 m!1213197))

(declare-fun m!1213199 () Bool)

(assert (=> b!1324278 m!1213199))

(declare-fun m!1213201 () Bool)

(assert (=> b!1324276 m!1213201))

(declare-fun m!1213203 () Bool)

(assert (=> start!111802 m!1213203))

(declare-fun m!1213205 () Bool)

(assert (=> start!111802 m!1213205))

(declare-fun m!1213207 () Bool)

(assert (=> start!111802 m!1213207))

(declare-fun m!1213209 () Bool)

(assert (=> mapNonEmpty!56012 m!1213209))

(check-sat (not start!111802) tp_is_empty!36243 (not b!1324272) (not b!1324276) (not b_next!30423) (not b!1324278) (not mapNonEmpty!56012) b_and!48971)
(check-sat b_and!48971 (not b_next!30423))
