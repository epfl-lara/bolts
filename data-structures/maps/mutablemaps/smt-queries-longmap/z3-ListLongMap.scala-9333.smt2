; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111472 () Bool)

(assert start!111472)

(declare-fun b_free!30093 () Bool)

(declare-fun b_next!30093 () Bool)

(assert (=> start!111472 (= b_free!30093 (not b_next!30093))))

(declare-fun tp!105755 () Bool)

(declare-fun b_and!48355 () Bool)

(assert (=> start!111472 (= tp!105755 b_and!48355)))

(declare-fun b!1318744 () Bool)

(declare-fun res!875317 () Bool)

(declare-fun e!752511 () Bool)

(assert (=> b!1318744 (=> (not res!875317) (not e!752511))))

(declare-datatypes ((array!88725 0))(
  ( (array!88726 (arr!42832 (Array (_ BitVec 32) (_ BitVec 64))) (size!43383 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88725)

(declare-datatypes ((List!30547 0))(
  ( (Nil!30544) (Cons!30543 (h!31752 (_ BitVec 64)) (t!44196 List!30547)) )
))
(declare-fun arrayNoDuplicates!0 (array!88725 (_ BitVec 32) List!30547) Bool)

(assert (=> b!1318744 (= res!875317 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30544))))

(declare-fun mapIsEmpty!55517 () Bool)

(declare-fun mapRes!55517 () Bool)

(assert (=> mapIsEmpty!55517 mapRes!55517))

(declare-fun b!1318745 () Bool)

(declare-fun res!875313 () Bool)

(assert (=> b!1318745 (=> (not res!875313) (not e!752511))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88725 (_ BitVec 32)) Bool)

(assert (=> b!1318745 (= res!875313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55517 () Bool)

(declare-fun tp!105756 () Bool)

(declare-fun e!752509 () Bool)

(assert (=> mapNonEmpty!55517 (= mapRes!55517 (and tp!105756 e!752509))))

(declare-datatypes ((V!52987 0))(
  ( (V!52988 (val!18031 Int)) )
))
(declare-datatypes ((ValueCell!17058 0))(
  ( (ValueCellFull!17058 (v!20659 V!52987)) (EmptyCell!17058) )
))
(declare-fun mapRest!55517 () (Array (_ BitVec 32) ValueCell!17058))

(declare-datatypes ((array!88727 0))(
  ( (array!88728 (arr!42833 (Array (_ BitVec 32) ValueCell!17058)) (size!43384 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88727)

(declare-fun mapKey!55517 () (_ BitVec 32))

(declare-fun mapValue!55517 () ValueCell!17058)

(assert (=> mapNonEmpty!55517 (= (arr!42833 _values!1337) (store mapRest!55517 mapKey!55517 mapValue!55517))))

(declare-fun res!875314 () Bool)

(assert (=> start!111472 (=> (not res!875314) (not e!752511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111472 (= res!875314 (validMask!0 mask!2019))))

(assert (=> start!111472 e!752511))

(declare-fun array_inv!32291 (array!88725) Bool)

(assert (=> start!111472 (array_inv!32291 _keys!1609)))

(assert (=> start!111472 true))

(declare-fun tp_is_empty!35913 () Bool)

(assert (=> start!111472 tp_is_empty!35913))

(declare-fun e!752510 () Bool)

(declare-fun array_inv!32292 (array!88727) Bool)

(assert (=> start!111472 (and (array_inv!32292 _values!1337) e!752510)))

(assert (=> start!111472 tp!105755))

(declare-fun b!1318746 () Bool)

(declare-fun res!875319 () Bool)

(assert (=> b!1318746 (=> (not res!875319) (not e!752511))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52987)

(declare-fun minValue!1279 () V!52987)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23356 0))(
  ( (tuple2!23357 (_1!11688 (_ BitVec 64)) (_2!11688 V!52987)) )
))
(declare-datatypes ((List!30548 0))(
  ( (Nil!30545) (Cons!30544 (h!31753 tuple2!23356) (t!44197 List!30548)) )
))
(declare-datatypes ((ListLongMap!21025 0))(
  ( (ListLongMap!21026 (toList!10528 List!30548)) )
))
(declare-fun contains!8619 (ListLongMap!21025 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5483 (array!88725 array!88727 (_ BitVec 32) (_ BitVec 32) V!52987 V!52987 (_ BitVec 32) Int) ListLongMap!21025)

(assert (=> b!1318746 (= res!875319 (contains!8619 (getCurrentListMap!5483 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318747 () Bool)

(declare-fun res!875315 () Bool)

(assert (=> b!1318747 (=> (not res!875315) (not e!752511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318747 (= res!875315 (validKeyInArray!0 (select (arr!42832 _keys!1609) from!2000)))))

(declare-fun b!1318748 () Bool)

(declare-fun res!875318 () Bool)

(assert (=> b!1318748 (=> (not res!875318) (not e!752511))))

(assert (=> b!1318748 (= res!875318 (and (= (size!43384 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43383 _keys!1609) (size!43384 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318749 () Bool)

(declare-fun res!875320 () Bool)

(assert (=> b!1318749 (=> (not res!875320) (not e!752511))))

(assert (=> b!1318749 (= res!875320 (not (= (select (arr!42832 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318750 () Bool)

(declare-fun res!875316 () Bool)

(assert (=> b!1318750 (=> (not res!875316) (not e!752511))))

(assert (=> b!1318750 (= res!875316 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43383 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318751 () Bool)

(declare-fun e!752512 () Bool)

(assert (=> b!1318751 (= e!752510 (and e!752512 mapRes!55517))))

(declare-fun condMapEmpty!55517 () Bool)

(declare-fun mapDefault!55517 () ValueCell!17058)

(assert (=> b!1318751 (= condMapEmpty!55517 (= (arr!42833 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17058)) mapDefault!55517)))))

(declare-fun b!1318752 () Bool)

(assert (=> b!1318752 (= e!752509 tp_is_empty!35913)))

(declare-fun b!1318753 () Bool)

(assert (=> b!1318753 (= e!752512 tp_is_empty!35913)))

(declare-fun b!1318754 () Bool)

(assert (=> b!1318754 (= e!752511 (not true))))

(declare-fun lt!586471 () ListLongMap!21025)

(assert (=> b!1318754 (contains!8619 lt!586471 k0!1164)))

(declare-datatypes ((Unit!43374 0))(
  ( (Unit!43375) )
))
(declare-fun lt!586470 () Unit!43374)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!102 ((_ BitVec 64) (_ BitVec 64) V!52987 ListLongMap!21025) Unit!43374)

(assert (=> b!1318754 (= lt!586470 (lemmaInListMapAfterAddingDiffThenInBefore!102 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586471))))

(declare-fun +!4487 (ListLongMap!21025 tuple2!23356) ListLongMap!21025)

(declare-fun getCurrentListMapNoExtraKeys!6202 (array!88725 array!88727 (_ BitVec 32) (_ BitVec 32) V!52987 V!52987 (_ BitVec 32) Int) ListLongMap!21025)

(declare-fun get!21565 (ValueCell!17058 V!52987) V!52987)

(declare-fun dynLambda!3524 (Int (_ BitVec 64)) V!52987)

(assert (=> b!1318754 (= lt!586471 (+!4487 (+!4487 (getCurrentListMapNoExtraKeys!6202 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23357 (select (arr!42832 _keys!1609) from!2000) (get!21565 (select (arr!42833 _values!1337) from!2000) (dynLambda!3524 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23357 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (= (and start!111472 res!875314) b!1318748))

(assert (= (and b!1318748 res!875318) b!1318745))

(assert (= (and b!1318745 res!875313) b!1318744))

(assert (= (and b!1318744 res!875317) b!1318750))

(assert (= (and b!1318750 res!875316) b!1318746))

(assert (= (and b!1318746 res!875319) b!1318749))

(assert (= (and b!1318749 res!875320) b!1318747))

(assert (= (and b!1318747 res!875315) b!1318754))

(assert (= (and b!1318751 condMapEmpty!55517) mapIsEmpty!55517))

(assert (= (and b!1318751 (not condMapEmpty!55517)) mapNonEmpty!55517))

(get-info :version)

(assert (= (and mapNonEmpty!55517 ((_ is ValueCellFull!17058) mapValue!55517)) b!1318752))

(assert (= (and b!1318751 ((_ is ValueCellFull!17058) mapDefault!55517)) b!1318753))

(assert (= start!111472 b!1318751))

(declare-fun b_lambda!23429 () Bool)

(assert (=> (not b_lambda!23429) (not b!1318754)))

(declare-fun t!44195 () Bool)

(declare-fun tb!11453 () Bool)

(assert (=> (and start!111472 (= defaultEntry!1340 defaultEntry!1340) t!44195) tb!11453))

(declare-fun result!23953 () Bool)

(assert (=> tb!11453 (= result!23953 tp_is_empty!35913)))

(assert (=> b!1318754 t!44195))

(declare-fun b_and!48357 () Bool)

(assert (= b_and!48355 (and (=> t!44195 result!23953) b_and!48357)))

(declare-fun m!1206363 () Bool)

(assert (=> b!1318749 m!1206363))

(declare-fun m!1206365 () Bool)

(assert (=> b!1318744 m!1206365))

(assert (=> b!1318747 m!1206363))

(assert (=> b!1318747 m!1206363))

(declare-fun m!1206367 () Bool)

(assert (=> b!1318747 m!1206367))

(declare-fun m!1206369 () Bool)

(assert (=> b!1318746 m!1206369))

(assert (=> b!1318746 m!1206369))

(declare-fun m!1206371 () Bool)

(assert (=> b!1318746 m!1206371))

(declare-fun m!1206373 () Bool)

(assert (=> start!111472 m!1206373))

(declare-fun m!1206375 () Bool)

(assert (=> start!111472 m!1206375))

(declare-fun m!1206377 () Bool)

(assert (=> start!111472 m!1206377))

(declare-fun m!1206379 () Bool)

(assert (=> b!1318745 m!1206379))

(declare-fun m!1206381 () Bool)

(assert (=> b!1318754 m!1206381))

(declare-fun m!1206383 () Bool)

(assert (=> b!1318754 m!1206383))

(declare-fun m!1206385 () Bool)

(assert (=> b!1318754 m!1206385))

(assert (=> b!1318754 m!1206383))

(declare-fun m!1206387 () Bool)

(assert (=> b!1318754 m!1206387))

(declare-fun m!1206389 () Bool)

(assert (=> b!1318754 m!1206389))

(assert (=> b!1318754 m!1206387))

(declare-fun m!1206391 () Bool)

(assert (=> b!1318754 m!1206391))

(declare-fun m!1206393 () Bool)

(assert (=> b!1318754 m!1206393))

(assert (=> b!1318754 m!1206389))

(assert (=> b!1318754 m!1206385))

(declare-fun m!1206395 () Bool)

(assert (=> b!1318754 m!1206395))

(assert (=> b!1318754 m!1206363))

(declare-fun m!1206397 () Bool)

(assert (=> mapNonEmpty!55517 m!1206397))

(check-sat (not b!1318747) (not b!1318746) (not b!1318754) (not mapNonEmpty!55517) (not b_lambda!23429) (not b_next!30093) (not b!1318745) (not start!111472) tp_is_empty!35913 b_and!48357 (not b!1318744))
(check-sat b_and!48357 (not b_next!30093))
