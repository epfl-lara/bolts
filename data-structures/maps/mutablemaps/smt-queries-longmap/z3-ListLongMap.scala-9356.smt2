; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111610 () Bool)

(assert start!111610)

(declare-fun b_free!30231 () Bool)

(declare-fun b_next!30231 () Bool)

(assert (=> start!111610 (= b_free!30231 (not b_next!30231))))

(declare-fun tp!106170 () Bool)

(declare-fun b_and!48631 () Bool)

(assert (=> start!111610 (= tp!106170 b_and!48631)))

(declare-fun b!1321159 () Bool)

(declare-fun res!876976 () Bool)

(declare-fun e!753544 () Bool)

(assert (=> b!1321159 (=> (not res!876976) (not e!753544))))

(declare-datatypes ((array!88993 0))(
  ( (array!88994 (arr!42966 (Array (_ BitVec 32) (_ BitVec 64))) (size!43517 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88993)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88993 (_ BitVec 32)) Bool)

(assert (=> b!1321159 (= res!876976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321160 () Bool)

(declare-fun e!753545 () Bool)

(declare-fun tp_is_empty!36051 () Bool)

(assert (=> b!1321160 (= e!753545 tp_is_empty!36051)))

(declare-fun mapIsEmpty!55724 () Bool)

(declare-fun mapRes!55724 () Bool)

(assert (=> mapIsEmpty!55724 mapRes!55724))

(declare-fun b!1321161 () Bool)

(declare-fun res!876975 () Bool)

(assert (=> b!1321161 (=> (not res!876975) (not e!753544))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1321161 (= res!876975 (not (= (select (arr!42966 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321163 () Bool)

(declare-fun res!876971 () Bool)

(assert (=> b!1321163 (=> (not res!876971) (not e!753544))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1321163 (= res!876971 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43517 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321164 () Bool)

(declare-fun res!876970 () Bool)

(assert (=> b!1321164 (=> (not res!876970) (not e!753544))))

(declare-datatypes ((List!30655 0))(
  ( (Nil!30652) (Cons!30651 (h!31860 (_ BitVec 64)) (t!44442 List!30655)) )
))
(declare-fun arrayNoDuplicates!0 (array!88993 (_ BitVec 32) List!30655) Bool)

(assert (=> b!1321164 (= res!876970 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30652))))

(declare-fun b!1321165 () Bool)

(declare-fun res!876974 () Bool)

(assert (=> b!1321165 (=> (not res!876974) (not e!753544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321165 (= res!876974 (validKeyInArray!0 (select (arr!42966 _keys!1609) from!2000)))))

(declare-fun res!876973 () Bool)

(assert (=> start!111610 (=> (not res!876973) (not e!753544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111610 (= res!876973 (validMask!0 mask!2019))))

(assert (=> start!111610 e!753544))

(declare-fun array_inv!32395 (array!88993) Bool)

(assert (=> start!111610 (array_inv!32395 _keys!1609)))

(assert (=> start!111610 true))

(assert (=> start!111610 tp_is_empty!36051))

(declare-datatypes ((V!53171 0))(
  ( (V!53172 (val!18100 Int)) )
))
(declare-datatypes ((ValueCell!17127 0))(
  ( (ValueCellFull!17127 (v!20728 V!53171)) (EmptyCell!17127) )
))
(declare-datatypes ((array!88995 0))(
  ( (array!88996 (arr!42967 (Array (_ BitVec 32) ValueCell!17127)) (size!43518 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88995)

(declare-fun e!753543 () Bool)

(declare-fun array_inv!32396 (array!88995) Bool)

(assert (=> start!111610 (and (array_inv!32396 _values!1337) e!753543)))

(assert (=> start!111610 tp!106170))

(declare-fun b!1321162 () Bool)

(assert (=> b!1321162 (= e!753543 (and e!753545 mapRes!55724))))

(declare-fun condMapEmpty!55724 () Bool)

(declare-fun mapDefault!55724 () ValueCell!17127)

(assert (=> b!1321162 (= condMapEmpty!55724 (= (arr!42967 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17127)) mapDefault!55724)))))

(declare-fun b!1321166 () Bool)

(declare-fun e!753547 () Bool)

(assert (=> b!1321166 (= e!753547 tp_is_empty!36051)))

(declare-fun mapNonEmpty!55724 () Bool)

(declare-fun tp!106169 () Bool)

(assert (=> mapNonEmpty!55724 (= mapRes!55724 (and tp!106169 e!753547))))

(declare-fun mapRest!55724 () (Array (_ BitVec 32) ValueCell!17127))

(declare-fun mapValue!55724 () ValueCell!17127)

(declare-fun mapKey!55724 () (_ BitVec 32))

(assert (=> mapNonEmpty!55724 (= (arr!42967 _values!1337) (store mapRest!55724 mapKey!55724 mapValue!55724))))

(declare-fun b!1321167 () Bool)

(assert (=> b!1321167 (= e!753544 (not true))))

(declare-datatypes ((tuple2!23474 0))(
  ( (tuple2!23475 (_1!11747 (_ BitVec 64)) (_2!11747 V!53171)) )
))
(declare-datatypes ((List!30656 0))(
  ( (Nil!30653) (Cons!30652 (h!31861 tuple2!23474) (t!44443 List!30656)) )
))
(declare-datatypes ((ListLongMap!21143 0))(
  ( (ListLongMap!21144 (toList!10587 List!30656)) )
))
(declare-fun lt!587292 () ListLongMap!21143)

(declare-fun contains!8678 (ListLongMap!21143 (_ BitVec 64)) Bool)

(assert (=> b!1321167 (contains!8678 lt!587292 k0!1164)))

(declare-datatypes ((Unit!43482 0))(
  ( (Unit!43483) )
))
(declare-fun lt!587287 () Unit!43482)

(declare-fun lt!587293 () V!53171)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!156 ((_ BitVec 64) (_ BitVec 64) V!53171 ListLongMap!21143) Unit!43482)

(assert (=> b!1321167 (= lt!587287 (lemmaInListMapAfterAddingDiffThenInBefore!156 k0!1164 (select (arr!42966 _keys!1609) from!2000) lt!587293 lt!587292))))

(declare-fun lt!587290 () ListLongMap!21143)

(assert (=> b!1321167 (contains!8678 lt!587290 k0!1164)))

(declare-fun zeroValue!1279 () V!53171)

(declare-fun lt!587289 () Unit!43482)

(assert (=> b!1321167 (= lt!587289 (lemmaInListMapAfterAddingDiffThenInBefore!156 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587290))))

(declare-fun lt!587291 () ListLongMap!21143)

(assert (=> b!1321167 (contains!8678 lt!587291 k0!1164)))

(declare-fun lt!587288 () Unit!43482)

(declare-fun minValue!1279 () V!53171)

(assert (=> b!1321167 (= lt!587288 (lemmaInListMapAfterAddingDiffThenInBefore!156 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587291))))

(declare-fun +!4541 (ListLongMap!21143 tuple2!23474) ListLongMap!21143)

(assert (=> b!1321167 (= lt!587291 (+!4541 lt!587290 (tuple2!23475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321167 (= lt!587290 (+!4541 lt!587292 (tuple2!23475 (select (arr!42966 _keys!1609) from!2000) lt!587293)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21665 (ValueCell!17127 V!53171) V!53171)

(declare-fun dynLambda!3578 (Int (_ BitVec 64)) V!53171)

(assert (=> b!1321167 (= lt!587293 (get!21665 (select (arr!42967 _values!1337) from!2000) (dynLambda!3578 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6256 (array!88993 array!88995 (_ BitVec 32) (_ BitVec 32) V!53171 V!53171 (_ BitVec 32) Int) ListLongMap!21143)

(assert (=> b!1321167 (= lt!587292 (getCurrentListMapNoExtraKeys!6256 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321168 () Bool)

(declare-fun res!876972 () Bool)

(assert (=> b!1321168 (=> (not res!876972) (not e!753544))))

(declare-fun getCurrentListMap!5528 (array!88993 array!88995 (_ BitVec 32) (_ BitVec 32) V!53171 V!53171 (_ BitVec 32) Int) ListLongMap!21143)

(assert (=> b!1321168 (= res!876972 (contains!8678 (getCurrentListMap!5528 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321169 () Bool)

(declare-fun res!876969 () Bool)

(assert (=> b!1321169 (=> (not res!876969) (not e!753544))))

(assert (=> b!1321169 (= res!876969 (and (= (size!43518 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43517 _keys!1609) (size!43518 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111610 res!876973) b!1321169))

(assert (= (and b!1321169 res!876969) b!1321159))

(assert (= (and b!1321159 res!876976) b!1321164))

(assert (= (and b!1321164 res!876970) b!1321163))

(assert (= (and b!1321163 res!876971) b!1321168))

(assert (= (and b!1321168 res!876972) b!1321161))

(assert (= (and b!1321161 res!876975) b!1321165))

(assert (= (and b!1321165 res!876974) b!1321167))

(assert (= (and b!1321162 condMapEmpty!55724) mapIsEmpty!55724))

(assert (= (and b!1321162 (not condMapEmpty!55724)) mapNonEmpty!55724))

(get-info :version)

(assert (= (and mapNonEmpty!55724 ((_ is ValueCellFull!17127) mapValue!55724)) b!1321166))

(assert (= (and b!1321162 ((_ is ValueCellFull!17127) mapDefault!55724)) b!1321160))

(assert (= start!111610 b!1321162))

(declare-fun b_lambda!23567 () Bool)

(assert (=> (not b_lambda!23567) (not b!1321167)))

(declare-fun t!44441 () Bool)

(declare-fun tb!11591 () Bool)

(assert (=> (and start!111610 (= defaultEntry!1340 defaultEntry!1340) t!44441) tb!11591))

(declare-fun result!24229 () Bool)

(assert (=> tb!11591 (= result!24229 tp_is_empty!36051)))

(assert (=> b!1321167 t!44441))

(declare-fun b_and!48633 () Bool)

(assert (= b_and!48631 (and (=> t!44441 result!24229) b_and!48633)))

(declare-fun m!1209083 () Bool)

(assert (=> start!111610 m!1209083))

(declare-fun m!1209085 () Bool)

(assert (=> start!111610 m!1209085))

(declare-fun m!1209087 () Bool)

(assert (=> start!111610 m!1209087))

(declare-fun m!1209089 () Bool)

(assert (=> b!1321168 m!1209089))

(assert (=> b!1321168 m!1209089))

(declare-fun m!1209091 () Bool)

(assert (=> b!1321168 m!1209091))

(declare-fun m!1209093 () Bool)

(assert (=> b!1321167 m!1209093))

(declare-fun m!1209095 () Bool)

(assert (=> b!1321167 m!1209095))

(declare-fun m!1209097 () Bool)

(assert (=> b!1321167 m!1209097))

(declare-fun m!1209099 () Bool)

(assert (=> b!1321167 m!1209099))

(declare-fun m!1209101 () Bool)

(assert (=> b!1321167 m!1209101))

(declare-fun m!1209103 () Bool)

(assert (=> b!1321167 m!1209103))

(declare-fun m!1209105 () Bool)

(assert (=> b!1321167 m!1209105))

(declare-fun m!1209107 () Bool)

(assert (=> b!1321167 m!1209107))

(assert (=> b!1321167 m!1209101))

(declare-fun m!1209109 () Bool)

(assert (=> b!1321167 m!1209109))

(declare-fun m!1209111 () Bool)

(assert (=> b!1321167 m!1209111))

(declare-fun m!1209113 () Bool)

(assert (=> b!1321167 m!1209113))

(declare-fun m!1209115 () Bool)

(assert (=> b!1321167 m!1209115))

(assert (=> b!1321167 m!1209109))

(declare-fun m!1209117 () Bool)

(assert (=> b!1321167 m!1209117))

(assert (=> b!1321167 m!1209103))

(declare-fun m!1209119 () Bool)

(assert (=> mapNonEmpty!55724 m!1209119))

(declare-fun m!1209121 () Bool)

(assert (=> b!1321164 m!1209121))

(assert (=> b!1321165 m!1209103))

(assert (=> b!1321165 m!1209103))

(declare-fun m!1209123 () Bool)

(assert (=> b!1321165 m!1209123))

(assert (=> b!1321161 m!1209103))

(declare-fun m!1209125 () Bool)

(assert (=> b!1321159 m!1209125))

(check-sat (not start!111610) (not b!1321168) (not b!1321165) (not mapNonEmpty!55724) (not b!1321167) (not b_lambda!23567) (not b!1321164) (not b!1321159) (not b_next!30231) b_and!48633 tp_is_empty!36051)
(check-sat b_and!48633 (not b_next!30231))
