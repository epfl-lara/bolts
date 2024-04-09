; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111466 () Bool)

(assert start!111466)

(declare-fun b_free!30087 () Bool)

(declare-fun b_next!30087 () Bool)

(assert (=> start!111466 (= b_free!30087 (not b_next!30087))))

(declare-fun tp!105738 () Bool)

(declare-fun b_and!48343 () Bool)

(assert (=> start!111466 (= tp!105738 b_and!48343)))

(declare-fun b!1318639 () Bool)

(declare-fun res!875247 () Bool)

(declare-fun e!752464 () Bool)

(assert (=> b!1318639 (=> (not res!875247) (not e!752464))))

(declare-datatypes ((array!88715 0))(
  ( (array!88716 (arr!42827 (Array (_ BitVec 32) (_ BitVec 64))) (size!43378 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88715)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52979 0))(
  ( (V!52980 (val!18028 Int)) )
))
(declare-fun zeroValue!1279 () V!52979)

(declare-datatypes ((ValueCell!17055 0))(
  ( (ValueCellFull!17055 (v!20656 V!52979)) (EmptyCell!17055) )
))
(declare-datatypes ((array!88717 0))(
  ( (array!88718 (arr!42828 (Array (_ BitVec 32) ValueCell!17055)) (size!43379 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88717)

(declare-fun minValue!1279 () V!52979)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23352 0))(
  ( (tuple2!23353 (_1!11686 (_ BitVec 64)) (_2!11686 V!52979)) )
))
(declare-datatypes ((List!30543 0))(
  ( (Nil!30540) (Cons!30539 (h!31748 tuple2!23352) (t!44186 List!30543)) )
))
(declare-datatypes ((ListLongMap!21021 0))(
  ( (ListLongMap!21022 (toList!10526 List!30543)) )
))
(declare-fun contains!8617 (ListLongMap!21021 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5481 (array!88715 array!88717 (_ BitVec 32) (_ BitVec 32) V!52979 V!52979 (_ BitVec 32) Int) ListLongMap!21021)

(assert (=> b!1318639 (= res!875247 (contains!8617 (getCurrentListMap!5481 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318640 () Bool)

(assert (=> b!1318640 (= e!752464 (not true))))

(declare-fun lt!586453 () ListLongMap!21021)

(assert (=> b!1318640 (contains!8617 lt!586453 k0!1164)))

(declare-datatypes ((Unit!43370 0))(
  ( (Unit!43371) )
))
(declare-fun lt!586452 () Unit!43370)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!100 ((_ BitVec 64) (_ BitVec 64) V!52979 ListLongMap!21021) Unit!43370)

(assert (=> b!1318640 (= lt!586452 (lemmaInListMapAfterAddingDiffThenInBefore!100 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586453))))

(declare-fun +!4485 (ListLongMap!21021 tuple2!23352) ListLongMap!21021)

(declare-fun getCurrentListMapNoExtraKeys!6200 (array!88715 array!88717 (_ BitVec 32) (_ BitVec 32) V!52979 V!52979 (_ BitVec 32) Int) ListLongMap!21021)

(declare-fun get!21561 (ValueCell!17055 V!52979) V!52979)

(declare-fun dynLambda!3522 (Int (_ BitVec 64)) V!52979)

(assert (=> b!1318640 (= lt!586453 (+!4485 (+!4485 (getCurrentListMapNoExtraKeys!6200 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23353 (select (arr!42827 _keys!1609) from!2000) (get!21561 (select (arr!42828 _values!1337) from!2000) (dynLambda!3522 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!55508 () Bool)

(declare-fun mapRes!55508 () Bool)

(declare-fun tp!105737 () Bool)

(declare-fun e!752465 () Bool)

(assert (=> mapNonEmpty!55508 (= mapRes!55508 (and tp!105737 e!752465))))

(declare-fun mapValue!55508 () ValueCell!17055)

(declare-fun mapKey!55508 () (_ BitVec 32))

(declare-fun mapRest!55508 () (Array (_ BitVec 32) ValueCell!17055))

(assert (=> mapNonEmpty!55508 (= (arr!42828 _values!1337) (store mapRest!55508 mapKey!55508 mapValue!55508))))

(declare-fun b!1318641 () Bool)

(declare-fun res!875246 () Bool)

(assert (=> b!1318641 (=> (not res!875246) (not e!752464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318641 (= res!875246 (validKeyInArray!0 (select (arr!42827 _keys!1609) from!2000)))))

(declare-fun b!1318642 () Bool)

(declare-fun res!875248 () Bool)

(assert (=> b!1318642 (=> (not res!875248) (not e!752464))))

(assert (=> b!1318642 (= res!875248 (and (= (size!43379 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43378 _keys!1609) (size!43379 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318643 () Bool)

(declare-fun res!875245 () Bool)

(assert (=> b!1318643 (=> (not res!875245) (not e!752464))))

(declare-datatypes ((List!30544 0))(
  ( (Nil!30541) (Cons!30540 (h!31749 (_ BitVec 64)) (t!44187 List!30544)) )
))
(declare-fun arrayNoDuplicates!0 (array!88715 (_ BitVec 32) List!30544) Bool)

(assert (=> b!1318643 (= res!875245 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30541))))

(declare-fun mapIsEmpty!55508 () Bool)

(assert (=> mapIsEmpty!55508 mapRes!55508))

(declare-fun b!1318645 () Bool)

(declare-fun res!875242 () Bool)

(assert (=> b!1318645 (=> (not res!875242) (not e!752464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88715 (_ BitVec 32)) Bool)

(assert (=> b!1318645 (= res!875242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318646 () Bool)

(declare-fun e!752467 () Bool)

(declare-fun tp_is_empty!35907 () Bool)

(assert (=> b!1318646 (= e!752467 tp_is_empty!35907)))

(declare-fun b!1318647 () Bool)

(declare-fun res!875241 () Bool)

(assert (=> b!1318647 (=> (not res!875241) (not e!752464))))

(assert (=> b!1318647 (= res!875241 (not (= (select (arr!42827 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318648 () Bool)

(declare-fun res!875244 () Bool)

(assert (=> b!1318648 (=> (not res!875244) (not e!752464))))

(assert (=> b!1318648 (= res!875244 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43378 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318649 () Bool)

(declare-fun e!752463 () Bool)

(assert (=> b!1318649 (= e!752463 (and e!752467 mapRes!55508))))

(declare-fun condMapEmpty!55508 () Bool)

(declare-fun mapDefault!55508 () ValueCell!17055)

(assert (=> b!1318649 (= condMapEmpty!55508 (= (arr!42828 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17055)) mapDefault!55508)))))

(declare-fun res!875243 () Bool)

(assert (=> start!111466 (=> (not res!875243) (not e!752464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111466 (= res!875243 (validMask!0 mask!2019))))

(assert (=> start!111466 e!752464))

(declare-fun array_inv!32289 (array!88715) Bool)

(assert (=> start!111466 (array_inv!32289 _keys!1609)))

(assert (=> start!111466 true))

(assert (=> start!111466 tp_is_empty!35907))

(declare-fun array_inv!32290 (array!88717) Bool)

(assert (=> start!111466 (and (array_inv!32290 _values!1337) e!752463)))

(assert (=> start!111466 tp!105738))

(declare-fun b!1318644 () Bool)

(assert (=> b!1318644 (= e!752465 tp_is_empty!35907)))

(assert (= (and start!111466 res!875243) b!1318642))

(assert (= (and b!1318642 res!875248) b!1318645))

(assert (= (and b!1318645 res!875242) b!1318643))

(assert (= (and b!1318643 res!875245) b!1318648))

(assert (= (and b!1318648 res!875244) b!1318639))

(assert (= (and b!1318639 res!875247) b!1318647))

(assert (= (and b!1318647 res!875241) b!1318641))

(assert (= (and b!1318641 res!875246) b!1318640))

(assert (= (and b!1318649 condMapEmpty!55508) mapIsEmpty!55508))

(assert (= (and b!1318649 (not condMapEmpty!55508)) mapNonEmpty!55508))

(get-info :version)

(assert (= (and mapNonEmpty!55508 ((_ is ValueCellFull!17055) mapValue!55508)) b!1318644))

(assert (= (and b!1318649 ((_ is ValueCellFull!17055) mapDefault!55508)) b!1318646))

(assert (= start!111466 b!1318649))

(declare-fun b_lambda!23423 () Bool)

(assert (=> (not b_lambda!23423) (not b!1318640)))

(declare-fun t!44185 () Bool)

(declare-fun tb!11447 () Bool)

(assert (=> (and start!111466 (= defaultEntry!1340 defaultEntry!1340) t!44185) tb!11447))

(declare-fun result!23941 () Bool)

(assert (=> tb!11447 (= result!23941 tp_is_empty!35907)))

(assert (=> b!1318640 t!44185))

(declare-fun b_and!48345 () Bool)

(assert (= b_and!48343 (and (=> t!44185 result!23941) b_and!48345)))

(declare-fun m!1206255 () Bool)

(assert (=> b!1318645 m!1206255))

(declare-fun m!1206257 () Bool)

(assert (=> b!1318641 m!1206257))

(assert (=> b!1318641 m!1206257))

(declare-fun m!1206259 () Bool)

(assert (=> b!1318641 m!1206259))

(declare-fun m!1206261 () Bool)

(assert (=> b!1318643 m!1206261))

(declare-fun m!1206263 () Bool)

(assert (=> start!111466 m!1206263))

(declare-fun m!1206265 () Bool)

(assert (=> start!111466 m!1206265))

(declare-fun m!1206267 () Bool)

(assert (=> start!111466 m!1206267))

(declare-fun m!1206269 () Bool)

(assert (=> mapNonEmpty!55508 m!1206269))

(assert (=> b!1318647 m!1206257))

(declare-fun m!1206271 () Bool)

(assert (=> b!1318640 m!1206271))

(declare-fun m!1206273 () Bool)

(assert (=> b!1318640 m!1206273))

(declare-fun m!1206275 () Bool)

(assert (=> b!1318640 m!1206275))

(assert (=> b!1318640 m!1206271))

(declare-fun m!1206277 () Bool)

(assert (=> b!1318640 m!1206277))

(declare-fun m!1206279 () Bool)

(assert (=> b!1318640 m!1206279))

(declare-fun m!1206281 () Bool)

(assert (=> b!1318640 m!1206281))

(assert (=> b!1318640 m!1206277))

(declare-fun m!1206283 () Bool)

(assert (=> b!1318640 m!1206283))

(assert (=> b!1318640 m!1206281))

(assert (=> b!1318640 m!1206275))

(declare-fun m!1206285 () Bool)

(assert (=> b!1318640 m!1206285))

(assert (=> b!1318640 m!1206257))

(declare-fun m!1206287 () Bool)

(assert (=> b!1318639 m!1206287))

(assert (=> b!1318639 m!1206287))

(declare-fun m!1206289 () Bool)

(assert (=> b!1318639 m!1206289))

(check-sat (not start!111466) (not b!1318643) (not b!1318645) (not b!1318641) tp_is_empty!35907 (not b!1318640) (not mapNonEmpty!55508) b_and!48345 (not b_lambda!23423) (not b!1318639) (not b_next!30087))
(check-sat b_and!48345 (not b_next!30087))
