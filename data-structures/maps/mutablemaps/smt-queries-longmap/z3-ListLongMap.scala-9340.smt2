; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111514 () Bool)

(assert start!111514)

(declare-fun b_free!30135 () Bool)

(declare-fun b_next!30135 () Bool)

(assert (=> start!111514 (= b_free!30135 (not b_next!30135))))

(declare-fun tp!105882 () Bool)

(declare-fun b_and!48439 () Bool)

(assert (=> start!111514 (= tp!105882 b_and!48439)))

(declare-fun b!1319479 () Bool)

(declare-fun res!875823 () Bool)

(declare-fun e!752824 () Bool)

(assert (=> b!1319479 (=> (not res!875823) (not e!752824))))

(declare-datatypes ((array!88809 0))(
  ( (array!88810 (arr!42874 (Array (_ BitVec 32) (_ BitVec 64))) (size!43425 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88809)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88809 (_ BitVec 32)) Bool)

(assert (=> b!1319479 (= res!875823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!875819 () Bool)

(assert (=> start!111514 (=> (not res!875819) (not e!752824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111514 (= res!875819 (validMask!0 mask!2019))))

(assert (=> start!111514 e!752824))

(declare-fun array_inv!32323 (array!88809) Bool)

(assert (=> start!111514 (array_inv!32323 _keys!1609)))

(assert (=> start!111514 true))

(declare-fun tp_is_empty!35955 () Bool)

(assert (=> start!111514 tp_is_empty!35955))

(declare-datatypes ((V!53043 0))(
  ( (V!53044 (val!18052 Int)) )
))
(declare-datatypes ((ValueCell!17079 0))(
  ( (ValueCellFull!17079 (v!20680 V!53043)) (EmptyCell!17079) )
))
(declare-datatypes ((array!88811 0))(
  ( (array!88812 (arr!42875 (Array (_ BitVec 32) ValueCell!17079)) (size!43426 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88811)

(declare-fun e!752826 () Bool)

(declare-fun array_inv!32324 (array!88811) Bool)

(assert (=> start!111514 (and (array_inv!32324 _values!1337) e!752826)))

(assert (=> start!111514 tp!105882))

(declare-fun b!1319480 () Bool)

(declare-fun res!875818 () Bool)

(assert (=> b!1319480 (=> (not res!875818) (not e!752824))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319480 (= res!875818 (validKeyInArray!0 (select (arr!42874 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55580 () Bool)

(declare-fun mapRes!55580 () Bool)

(declare-fun tp!105881 () Bool)

(declare-fun e!752823 () Bool)

(assert (=> mapNonEmpty!55580 (= mapRes!55580 (and tp!105881 e!752823))))

(declare-fun mapValue!55580 () ValueCell!17079)

(declare-fun mapKey!55580 () (_ BitVec 32))

(declare-fun mapRest!55580 () (Array (_ BitVec 32) ValueCell!17079))

(assert (=> mapNonEmpty!55580 (= (arr!42875 _values!1337) (store mapRest!55580 mapKey!55580 mapValue!55580))))

(declare-fun b!1319481 () Bool)

(declare-fun res!875821 () Bool)

(assert (=> b!1319481 (=> (not res!875821) (not e!752824))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1319481 (= res!875821 (and (= (size!43426 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43425 _keys!1609) (size!43426 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319482 () Bool)

(assert (=> b!1319482 (= e!752824 (not true))))

(declare-datatypes ((tuple2!23396 0))(
  ( (tuple2!23397 (_1!11708 (_ BitVec 64)) (_2!11708 V!53043)) )
))
(declare-datatypes ((List!30583 0))(
  ( (Nil!30580) (Cons!30579 (h!31788 tuple2!23396) (t!44274 List!30583)) )
))
(declare-datatypes ((ListLongMap!21065 0))(
  ( (ListLongMap!21066 (toList!10548 List!30583)) )
))
(declare-fun lt!586597 () ListLongMap!21065)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8639 (ListLongMap!21065 (_ BitVec 64)) Bool)

(assert (=> b!1319482 (contains!8639 lt!586597 k0!1164)))

(declare-datatypes ((Unit!43410 0))(
  ( (Unit!43411) )
))
(declare-fun lt!586596 () Unit!43410)

(declare-fun minValue!1279 () V!53043)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!120 ((_ BitVec 64) (_ BitVec 64) V!53043 ListLongMap!21065) Unit!43410)

(assert (=> b!1319482 (= lt!586596 (lemmaInListMapAfterAddingDiffThenInBefore!120 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586597))))

(declare-fun zeroValue!1279 () V!53043)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4505 (ListLongMap!21065 tuple2!23396) ListLongMap!21065)

(declare-fun getCurrentListMapNoExtraKeys!6220 (array!88809 array!88811 (_ BitVec 32) (_ BitVec 32) V!53043 V!53043 (_ BitVec 32) Int) ListLongMap!21065)

(declare-fun get!21597 (ValueCell!17079 V!53043) V!53043)

(declare-fun dynLambda!3542 (Int (_ BitVec 64)) V!53043)

(assert (=> b!1319482 (= lt!586597 (+!4505 (+!4505 (getCurrentListMapNoExtraKeys!6220 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23397 (select (arr!42874 _keys!1609) from!2000) (get!21597 (select (arr!42875 _values!1337) from!2000) (dynLambda!3542 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23397 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapIsEmpty!55580 () Bool)

(assert (=> mapIsEmpty!55580 mapRes!55580))

(declare-fun b!1319483 () Bool)

(declare-fun res!875822 () Bool)

(assert (=> b!1319483 (=> (not res!875822) (not e!752824))))

(assert (=> b!1319483 (= res!875822 (not (= (select (arr!42874 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319484 () Bool)

(declare-fun e!752827 () Bool)

(assert (=> b!1319484 (= e!752826 (and e!752827 mapRes!55580))))

(declare-fun condMapEmpty!55580 () Bool)

(declare-fun mapDefault!55580 () ValueCell!17079)

(assert (=> b!1319484 (= condMapEmpty!55580 (= (arr!42875 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17079)) mapDefault!55580)))))

(declare-fun b!1319485 () Bool)

(assert (=> b!1319485 (= e!752823 tp_is_empty!35955)))

(declare-fun b!1319486 () Bool)

(declare-fun res!875824 () Bool)

(assert (=> b!1319486 (=> (not res!875824) (not e!752824))))

(declare-datatypes ((List!30584 0))(
  ( (Nil!30581) (Cons!30580 (h!31789 (_ BitVec 64)) (t!44275 List!30584)) )
))
(declare-fun arrayNoDuplicates!0 (array!88809 (_ BitVec 32) List!30584) Bool)

(assert (=> b!1319486 (= res!875824 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30581))))

(declare-fun b!1319487 () Bool)

(declare-fun res!875820 () Bool)

(assert (=> b!1319487 (=> (not res!875820) (not e!752824))))

(assert (=> b!1319487 (= res!875820 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43425 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319488 () Bool)

(declare-fun res!875817 () Bool)

(assert (=> b!1319488 (=> (not res!875817) (not e!752824))))

(declare-fun getCurrentListMap!5495 (array!88809 array!88811 (_ BitVec 32) (_ BitVec 32) V!53043 V!53043 (_ BitVec 32) Int) ListLongMap!21065)

(assert (=> b!1319488 (= res!875817 (contains!8639 (getCurrentListMap!5495 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1319489 () Bool)

(assert (=> b!1319489 (= e!752827 tp_is_empty!35955)))

(assert (= (and start!111514 res!875819) b!1319481))

(assert (= (and b!1319481 res!875821) b!1319479))

(assert (= (and b!1319479 res!875823) b!1319486))

(assert (= (and b!1319486 res!875824) b!1319487))

(assert (= (and b!1319487 res!875820) b!1319488))

(assert (= (and b!1319488 res!875817) b!1319483))

(assert (= (and b!1319483 res!875822) b!1319480))

(assert (= (and b!1319480 res!875818) b!1319482))

(assert (= (and b!1319484 condMapEmpty!55580) mapIsEmpty!55580))

(assert (= (and b!1319484 (not condMapEmpty!55580)) mapNonEmpty!55580))

(get-info :version)

(assert (= (and mapNonEmpty!55580 ((_ is ValueCellFull!17079) mapValue!55580)) b!1319485))

(assert (= (and b!1319484 ((_ is ValueCellFull!17079) mapDefault!55580)) b!1319489))

(assert (= start!111514 b!1319484))

(declare-fun b_lambda!23471 () Bool)

(assert (=> (not b_lambda!23471) (not b!1319482)))

(declare-fun t!44273 () Bool)

(declare-fun tb!11495 () Bool)

(assert (=> (and start!111514 (= defaultEntry!1340 defaultEntry!1340) t!44273) tb!11495))

(declare-fun result!24037 () Bool)

(assert (=> tb!11495 (= result!24037 tp_is_empty!35955)))

(assert (=> b!1319482 t!44273))

(declare-fun b_and!48441 () Bool)

(assert (= b_and!48439 (and (=> t!44273 result!24037) b_and!48441)))

(declare-fun m!1207119 () Bool)

(assert (=> b!1319479 m!1207119))

(declare-fun m!1207121 () Bool)

(assert (=> mapNonEmpty!55580 m!1207121))

(declare-fun m!1207123 () Bool)

(assert (=> b!1319486 m!1207123))

(declare-fun m!1207125 () Bool)

(assert (=> b!1319483 m!1207125))

(assert (=> b!1319480 m!1207125))

(assert (=> b!1319480 m!1207125))

(declare-fun m!1207127 () Bool)

(assert (=> b!1319480 m!1207127))

(declare-fun m!1207129 () Bool)

(assert (=> b!1319482 m!1207129))

(declare-fun m!1207131 () Bool)

(assert (=> b!1319482 m!1207131))

(declare-fun m!1207133 () Bool)

(assert (=> b!1319482 m!1207133))

(assert (=> b!1319482 m!1207131))

(declare-fun m!1207135 () Bool)

(assert (=> b!1319482 m!1207135))

(declare-fun m!1207137 () Bool)

(assert (=> b!1319482 m!1207137))

(assert (=> b!1319482 m!1207137))

(assert (=> b!1319482 m!1207133))

(declare-fun m!1207139 () Bool)

(assert (=> b!1319482 m!1207139))

(assert (=> b!1319482 m!1207125))

(assert (=> b!1319482 m!1207135))

(declare-fun m!1207141 () Bool)

(assert (=> b!1319482 m!1207141))

(declare-fun m!1207143 () Bool)

(assert (=> b!1319482 m!1207143))

(declare-fun m!1207145 () Bool)

(assert (=> b!1319488 m!1207145))

(assert (=> b!1319488 m!1207145))

(declare-fun m!1207147 () Bool)

(assert (=> b!1319488 m!1207147))

(declare-fun m!1207149 () Bool)

(assert (=> start!111514 m!1207149))

(declare-fun m!1207151 () Bool)

(assert (=> start!111514 m!1207151))

(declare-fun m!1207153 () Bool)

(assert (=> start!111514 m!1207153))

(check-sat (not b!1319479) (not b_next!30135) (not b!1319488) (not b_lambda!23471) (not b!1319486) b_and!48441 (not mapNonEmpty!55580) (not b!1319480) (not start!111514) (not b!1319482) tp_is_empty!35955)
(check-sat b_and!48441 (not b_next!30135))
