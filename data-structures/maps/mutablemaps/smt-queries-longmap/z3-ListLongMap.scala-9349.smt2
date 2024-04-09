; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111568 () Bool)

(assert start!111568)

(declare-fun b_free!30189 () Bool)

(declare-fun b_next!30189 () Bool)

(assert (=> start!111568 (= b_free!30189 (not b_next!30189))))

(declare-fun tp!106043 () Bool)

(declare-fun b_and!48547 () Bool)

(assert (=> start!111568 (= tp!106043 b_and!48547)))

(declare-fun mapIsEmpty!55661 () Bool)

(declare-fun mapRes!55661 () Bool)

(assert (=> mapIsEmpty!55661 mapRes!55661))

(declare-fun b!1320424 () Bool)

(declare-fun e!753231 () Bool)

(declare-fun e!753229 () Bool)

(assert (=> b!1320424 (= e!753231 (and e!753229 mapRes!55661))))

(declare-fun condMapEmpty!55661 () Bool)

(declare-datatypes ((V!53115 0))(
  ( (V!53116 (val!18079 Int)) )
))
(declare-datatypes ((ValueCell!17106 0))(
  ( (ValueCellFull!17106 (v!20707 V!53115)) (EmptyCell!17106) )
))
(declare-datatypes ((array!88913 0))(
  ( (array!88914 (arr!42926 (Array (_ BitVec 32) ValueCell!17106)) (size!43477 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88913)

(declare-fun mapDefault!55661 () ValueCell!17106)

(assert (=> b!1320424 (= condMapEmpty!55661 (= (arr!42926 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17106)) mapDefault!55661)))))

(declare-fun res!876468 () Bool)

(declare-fun e!753228 () Bool)

(assert (=> start!111568 (=> (not res!876468) (not e!753228))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111568 (= res!876468 (validMask!0 mask!2019))))

(assert (=> start!111568 e!753228))

(declare-datatypes ((array!88915 0))(
  ( (array!88916 (arr!42927 (Array (_ BitVec 32) (_ BitVec 64))) (size!43478 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88915)

(declare-fun array_inv!32363 (array!88915) Bool)

(assert (=> start!111568 (array_inv!32363 _keys!1609)))

(assert (=> start!111568 true))

(declare-fun tp_is_empty!36009 () Bool)

(assert (=> start!111568 tp_is_empty!36009))

(declare-fun array_inv!32364 (array!88913) Bool)

(assert (=> start!111568 (and (array_inv!32364 _values!1337) e!753231)))

(assert (=> start!111568 tp!106043))

(declare-fun b!1320425 () Bool)

(declare-fun res!876471 () Bool)

(assert (=> b!1320425 (=> (not res!876471) (not e!753228))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1320425 (= res!876471 (not (= (select (arr!42927 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1320426 () Bool)

(declare-fun res!876469 () Bool)

(assert (=> b!1320426 (=> (not res!876469) (not e!753228))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53115)

(declare-fun minValue!1279 () V!53115)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23444 0))(
  ( (tuple2!23445 (_1!11732 (_ BitVec 64)) (_2!11732 V!53115)) )
))
(declare-datatypes ((List!30625 0))(
  ( (Nil!30622) (Cons!30621 (h!31830 tuple2!23444) (t!44370 List!30625)) )
))
(declare-datatypes ((ListLongMap!21113 0))(
  ( (ListLongMap!21114 (toList!10572 List!30625)) )
))
(declare-fun contains!8663 (ListLongMap!21113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5515 (array!88915 array!88913 (_ BitVec 32) (_ BitVec 32) V!53115 V!53115 (_ BitVec 32) Int) ListLongMap!21113)

(assert (=> b!1320426 (= res!876469 (contains!8663 (getCurrentListMap!5515 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55661 () Bool)

(declare-fun tp!106044 () Bool)

(declare-fun e!753232 () Bool)

(assert (=> mapNonEmpty!55661 (= mapRes!55661 (and tp!106044 e!753232))))

(declare-fun mapRest!55661 () (Array (_ BitVec 32) ValueCell!17106))

(declare-fun mapValue!55661 () ValueCell!17106)

(declare-fun mapKey!55661 () (_ BitVec 32))

(assert (=> mapNonEmpty!55661 (= (arr!42926 _values!1337) (store mapRest!55661 mapKey!55661 mapValue!55661))))

(declare-fun b!1320427 () Bool)

(declare-fun res!876472 () Bool)

(assert (=> b!1320427 (=> (not res!876472) (not e!753228))))

(assert (=> b!1320427 (= res!876472 (and (= (size!43477 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43478 _keys!1609) (size!43477 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320428 () Bool)

(declare-fun res!876466 () Bool)

(assert (=> b!1320428 (=> (not res!876466) (not e!753228))))

(assert (=> b!1320428 (= res!876466 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43478 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320429 () Bool)

(declare-fun res!876465 () Bool)

(assert (=> b!1320429 (=> (not res!876465) (not e!753228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320429 (= res!876465 (validKeyInArray!0 (select (arr!42927 _keys!1609) from!2000)))))

(declare-fun b!1320430 () Bool)

(assert (=> b!1320430 (= e!753229 tp_is_empty!36009)))

(declare-fun b!1320431 () Bool)

(assert (=> b!1320431 (= e!753228 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!586912 () ListLongMap!21113)

(assert (=> b!1320431 (contains!8663 lt!586912 k0!1164)))

(declare-datatypes ((Unit!43452 0))(
  ( (Unit!43453) )
))
(declare-fun lt!586914 () Unit!43452)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!141 ((_ BitVec 64) (_ BitVec 64) V!53115 ListLongMap!21113) Unit!43452)

(assert (=> b!1320431 (= lt!586914 (lemmaInListMapAfterAddingDiffThenInBefore!141 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586912))))

(declare-fun lt!586915 () ListLongMap!21113)

(assert (=> b!1320431 (contains!8663 lt!586915 k0!1164)))

(declare-fun lt!586913 () Unit!43452)

(assert (=> b!1320431 (= lt!586913 (lemmaInListMapAfterAddingDiffThenInBefore!141 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586915))))

(declare-fun +!4526 (ListLongMap!21113 tuple2!23444) ListLongMap!21113)

(assert (=> b!1320431 (= lt!586915 (+!4526 lt!586912 (tuple2!23445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6241 (array!88915 array!88913 (_ BitVec 32) (_ BitVec 32) V!53115 V!53115 (_ BitVec 32) Int) ListLongMap!21113)

(declare-fun get!21636 (ValueCell!17106 V!53115) V!53115)

(declare-fun dynLambda!3563 (Int (_ BitVec 64)) V!53115)

(assert (=> b!1320431 (= lt!586912 (+!4526 (getCurrentListMapNoExtraKeys!6241 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23445 (select (arr!42927 _keys!1609) from!2000) (get!21636 (select (arr!42926 _values!1337) from!2000) (dynLambda!3563 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320432 () Bool)

(declare-fun res!876467 () Bool)

(assert (=> b!1320432 (=> (not res!876467) (not e!753228))))

(declare-datatypes ((List!30626 0))(
  ( (Nil!30623) (Cons!30622 (h!31831 (_ BitVec 64)) (t!44371 List!30626)) )
))
(declare-fun arrayNoDuplicates!0 (array!88915 (_ BitVec 32) List!30626) Bool)

(assert (=> b!1320432 (= res!876467 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30623))))

(declare-fun b!1320433 () Bool)

(assert (=> b!1320433 (= e!753232 tp_is_empty!36009)))

(declare-fun b!1320434 () Bool)

(declare-fun res!876470 () Bool)

(assert (=> b!1320434 (=> (not res!876470) (not e!753228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88915 (_ BitVec 32)) Bool)

(assert (=> b!1320434 (= res!876470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111568 res!876468) b!1320427))

(assert (= (and b!1320427 res!876472) b!1320434))

(assert (= (and b!1320434 res!876470) b!1320432))

(assert (= (and b!1320432 res!876467) b!1320428))

(assert (= (and b!1320428 res!876466) b!1320426))

(assert (= (and b!1320426 res!876469) b!1320425))

(assert (= (and b!1320425 res!876471) b!1320429))

(assert (= (and b!1320429 res!876465) b!1320431))

(assert (= (and b!1320424 condMapEmpty!55661) mapIsEmpty!55661))

(assert (= (and b!1320424 (not condMapEmpty!55661)) mapNonEmpty!55661))

(get-info :version)

(assert (= (and mapNonEmpty!55661 ((_ is ValueCellFull!17106) mapValue!55661)) b!1320433))

(assert (= (and b!1320424 ((_ is ValueCellFull!17106) mapDefault!55661)) b!1320430))

(assert (= start!111568 b!1320424))

(declare-fun b_lambda!23525 () Bool)

(assert (=> (not b_lambda!23525) (not b!1320431)))

(declare-fun t!44369 () Bool)

(declare-fun tb!11549 () Bool)

(assert (=> (and start!111568 (= defaultEntry!1340 defaultEntry!1340) t!44369) tb!11549))

(declare-fun result!24145 () Bool)

(assert (=> tb!11549 (= result!24145 tp_is_empty!36009)))

(assert (=> b!1320431 t!44369))

(declare-fun b_and!48549 () Bool)

(assert (= b_and!48547 (and (=> t!44369 result!24145) b_and!48549)))

(declare-fun m!1208191 () Bool)

(assert (=> b!1320432 m!1208191))

(declare-fun m!1208193 () Bool)

(assert (=> b!1320426 m!1208193))

(assert (=> b!1320426 m!1208193))

(declare-fun m!1208195 () Bool)

(assert (=> b!1320426 m!1208195))

(declare-fun m!1208197 () Bool)

(assert (=> b!1320434 m!1208197))

(declare-fun m!1208199 () Bool)

(assert (=> b!1320425 m!1208199))

(declare-fun m!1208201 () Bool)

(assert (=> start!111568 m!1208201))

(declare-fun m!1208203 () Bool)

(assert (=> start!111568 m!1208203))

(declare-fun m!1208205 () Bool)

(assert (=> start!111568 m!1208205))

(declare-fun m!1208207 () Bool)

(assert (=> mapNonEmpty!55661 m!1208207))

(declare-fun m!1208209 () Bool)

(assert (=> b!1320431 m!1208209))

(declare-fun m!1208211 () Bool)

(assert (=> b!1320431 m!1208211))

(assert (=> b!1320431 m!1208209))

(declare-fun m!1208213 () Bool)

(assert (=> b!1320431 m!1208213))

(declare-fun m!1208215 () Bool)

(assert (=> b!1320431 m!1208215))

(declare-fun m!1208217 () Bool)

(assert (=> b!1320431 m!1208217))

(declare-fun m!1208219 () Bool)

(assert (=> b!1320431 m!1208219))

(assert (=> b!1320431 m!1208219))

(assert (=> b!1320431 m!1208211))

(declare-fun m!1208221 () Bool)

(assert (=> b!1320431 m!1208221))

(declare-fun m!1208223 () Bool)

(assert (=> b!1320431 m!1208223))

(declare-fun m!1208225 () Bool)

(assert (=> b!1320431 m!1208225))

(declare-fun m!1208227 () Bool)

(assert (=> b!1320431 m!1208227))

(assert (=> b!1320431 m!1208199))

(assert (=> b!1320429 m!1208199))

(assert (=> b!1320429 m!1208199))

(declare-fun m!1208229 () Bool)

(assert (=> b!1320429 m!1208229))

(check-sat (not b_lambda!23525) (not b!1320431) (not b!1320432) (not mapNonEmpty!55661) (not b!1320429) b_and!48549 (not start!111568) (not b_next!30189) tp_is_empty!36009 (not b!1320426) (not b!1320434))
(check-sat b_and!48549 (not b_next!30189))
