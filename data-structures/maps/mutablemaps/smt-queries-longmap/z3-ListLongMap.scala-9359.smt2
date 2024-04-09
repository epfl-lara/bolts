; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111628 () Bool)

(assert start!111628)

(declare-fun b_free!30249 () Bool)

(declare-fun b_next!30249 () Bool)

(assert (=> start!111628 (= b_free!30249 (not b_next!30249))))

(declare-fun tp!106224 () Bool)

(declare-fun b_and!48667 () Bool)

(assert (=> start!111628 (= tp!106224 b_and!48667)))

(declare-fun b!1321474 () Bool)

(declare-fun res!877186 () Bool)

(declare-fun e!753682 () Bool)

(assert (=> b!1321474 (=> (not res!877186) (not e!753682))))

(declare-datatypes ((array!89023 0))(
  ( (array!89024 (arr!42981 (Array (_ BitVec 32) (_ BitVec 64))) (size!43532 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89023)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53195 0))(
  ( (V!53196 (val!18109 Int)) )
))
(declare-fun zeroValue!1279 () V!53195)

(declare-datatypes ((ValueCell!17136 0))(
  ( (ValueCellFull!17136 (v!20737 V!53195)) (EmptyCell!17136) )
))
(declare-datatypes ((array!89025 0))(
  ( (array!89026 (arr!42982 (Array (_ BitVec 32) ValueCell!17136)) (size!43533 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89025)

(declare-fun minValue!1279 () V!53195)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23484 0))(
  ( (tuple2!23485 (_1!11752 (_ BitVec 64)) (_2!11752 V!53195)) )
))
(declare-datatypes ((List!30663 0))(
  ( (Nil!30660) (Cons!30659 (h!31868 tuple2!23484) (t!44468 List!30663)) )
))
(declare-datatypes ((ListLongMap!21153 0))(
  ( (ListLongMap!21154 (toList!10592 List!30663)) )
))
(declare-fun contains!8683 (ListLongMap!21153 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5533 (array!89023 array!89025 (_ BitVec 32) (_ BitVec 32) V!53195 V!53195 (_ BitVec 32) Int) ListLongMap!21153)

(assert (=> b!1321474 (= res!877186 (contains!8683 (getCurrentListMap!5533 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321475 () Bool)

(declare-fun e!753678 () Bool)

(declare-fun tp_is_empty!36069 () Bool)

(assert (=> b!1321475 (= e!753678 tp_is_empty!36069)))

(declare-fun b!1321476 () Bool)

(declare-fun res!877190 () Bool)

(assert (=> b!1321476 (=> (not res!877190) (not e!753682))))

(assert (=> b!1321476 (= res!877190 (and (= (size!43533 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43532 _keys!1609) (size!43533 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321478 () Bool)

(declare-fun res!877185 () Bool)

(assert (=> b!1321478 (=> (not res!877185) (not e!753682))))

(assert (=> b!1321478 (= res!877185 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43532 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55751 () Bool)

(declare-fun mapRes!55751 () Bool)

(declare-fun tp!106223 () Bool)

(assert (=> mapNonEmpty!55751 (= mapRes!55751 (and tp!106223 e!753678))))

(declare-fun mapValue!55751 () ValueCell!17136)

(declare-fun mapRest!55751 () (Array (_ BitVec 32) ValueCell!17136))

(declare-fun mapKey!55751 () (_ BitVec 32))

(assert (=> mapNonEmpty!55751 (= (arr!42982 _values!1337) (store mapRest!55751 mapKey!55751 mapValue!55751))))

(declare-fun b!1321479 () Bool)

(declare-fun res!877189 () Bool)

(assert (=> b!1321479 (=> (not res!877189) (not e!753682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89023 (_ BitVec 32)) Bool)

(assert (=> b!1321479 (= res!877189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321480 () Bool)

(declare-fun res!877192 () Bool)

(assert (=> b!1321480 (=> (not res!877192) (not e!753682))))

(assert (=> b!1321480 (= res!877192 (not (= (select (arr!42981 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321481 () Bool)

(declare-fun e!753679 () Bool)

(assert (=> b!1321481 (= e!753679 tp_is_empty!36069)))

(declare-fun mapIsEmpty!55751 () Bool)

(assert (=> mapIsEmpty!55751 mapRes!55751))

(declare-fun b!1321477 () Bool)

(declare-fun e!753681 () Bool)

(assert (=> b!1321477 (= e!753681 (and e!753679 mapRes!55751))))

(declare-fun condMapEmpty!55751 () Bool)

(declare-fun mapDefault!55751 () ValueCell!17136)

(assert (=> b!1321477 (= condMapEmpty!55751 (= (arr!42982 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17136)) mapDefault!55751)))))

(declare-fun res!877191 () Bool)

(assert (=> start!111628 (=> (not res!877191) (not e!753682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111628 (= res!877191 (validMask!0 mask!2019))))

(assert (=> start!111628 e!753682))

(declare-fun array_inv!32407 (array!89023) Bool)

(assert (=> start!111628 (array_inv!32407 _keys!1609)))

(assert (=> start!111628 true))

(assert (=> start!111628 tp_is_empty!36069))

(declare-fun array_inv!32408 (array!89025) Bool)

(assert (=> start!111628 (and (array_inv!32408 _values!1337) e!753681)))

(assert (=> start!111628 tp!106224))

(declare-fun b!1321482 () Bool)

(declare-fun res!877188 () Bool)

(assert (=> b!1321482 (=> (not res!877188) (not e!753682))))

(declare-datatypes ((List!30664 0))(
  ( (Nil!30661) (Cons!30660 (h!31869 (_ BitVec 64)) (t!44469 List!30664)) )
))
(declare-fun arrayNoDuplicates!0 (array!89023 (_ BitVec 32) List!30664) Bool)

(assert (=> b!1321482 (= res!877188 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30661))))

(declare-fun b!1321483 () Bool)

(assert (=> b!1321483 (= e!753682 (not true))))

(declare-fun lt!587478 () ListLongMap!21153)

(assert (=> b!1321483 (contains!8683 lt!587478 k0!1164)))

(declare-datatypes ((Unit!43490 0))(
  ( (Unit!43491) )
))
(declare-fun lt!587479 () Unit!43490)

(declare-fun lt!587477 () V!53195)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!160 ((_ BitVec 64) (_ BitVec 64) V!53195 ListLongMap!21153) Unit!43490)

(assert (=> b!1321483 (= lt!587479 (lemmaInListMapAfterAddingDiffThenInBefore!160 k0!1164 (select (arr!42981 _keys!1609) from!2000) lt!587477 lt!587478))))

(declare-fun lt!587480 () ListLongMap!21153)

(assert (=> b!1321483 (contains!8683 lt!587480 k0!1164)))

(declare-fun lt!587476 () Unit!43490)

(assert (=> b!1321483 (= lt!587476 (lemmaInListMapAfterAddingDiffThenInBefore!160 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587480))))

(declare-fun lt!587481 () ListLongMap!21153)

(assert (=> b!1321483 (contains!8683 lt!587481 k0!1164)))

(declare-fun lt!587482 () Unit!43490)

(assert (=> b!1321483 (= lt!587482 (lemmaInListMapAfterAddingDiffThenInBefore!160 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587481))))

(declare-fun +!4545 (ListLongMap!21153 tuple2!23484) ListLongMap!21153)

(assert (=> b!1321483 (= lt!587481 (+!4545 lt!587480 (tuple2!23485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321483 (= lt!587480 (+!4545 lt!587478 (tuple2!23485 (select (arr!42981 _keys!1609) from!2000) lt!587477)))))

(declare-fun get!21675 (ValueCell!17136 V!53195) V!53195)

(declare-fun dynLambda!3582 (Int (_ BitVec 64)) V!53195)

(assert (=> b!1321483 (= lt!587477 (get!21675 (select (arr!42982 _values!1337) from!2000) (dynLambda!3582 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6260 (array!89023 array!89025 (_ BitVec 32) (_ BitVec 32) V!53195 V!53195 (_ BitVec 32) Int) ListLongMap!21153)

(assert (=> b!1321483 (= lt!587478 (getCurrentListMapNoExtraKeys!6260 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321484 () Bool)

(declare-fun res!877187 () Bool)

(assert (=> b!1321484 (=> (not res!877187) (not e!753682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321484 (= res!877187 (validKeyInArray!0 (select (arr!42981 _keys!1609) from!2000)))))

(assert (= (and start!111628 res!877191) b!1321476))

(assert (= (and b!1321476 res!877190) b!1321479))

(assert (= (and b!1321479 res!877189) b!1321482))

(assert (= (and b!1321482 res!877188) b!1321478))

(assert (= (and b!1321478 res!877185) b!1321474))

(assert (= (and b!1321474 res!877186) b!1321480))

(assert (= (and b!1321480 res!877192) b!1321484))

(assert (= (and b!1321484 res!877187) b!1321483))

(assert (= (and b!1321477 condMapEmpty!55751) mapIsEmpty!55751))

(assert (= (and b!1321477 (not condMapEmpty!55751)) mapNonEmpty!55751))

(get-info :version)

(assert (= (and mapNonEmpty!55751 ((_ is ValueCellFull!17136) mapValue!55751)) b!1321475))

(assert (= (and b!1321477 ((_ is ValueCellFull!17136) mapDefault!55751)) b!1321481))

(assert (= start!111628 b!1321477))

(declare-fun b_lambda!23585 () Bool)

(assert (=> (not b_lambda!23585) (not b!1321483)))

(declare-fun t!44467 () Bool)

(declare-fun tb!11609 () Bool)

(assert (=> (and start!111628 (= defaultEntry!1340 defaultEntry!1340) t!44467) tb!11609))

(declare-fun result!24265 () Bool)

(assert (=> tb!11609 (= result!24265 tp_is_empty!36069)))

(assert (=> b!1321483 t!44467))

(declare-fun b_and!48669 () Bool)

(assert (= b_and!48667 (and (=> t!44467 result!24265) b_and!48669)))

(declare-fun m!1209479 () Bool)

(assert (=> b!1321482 m!1209479))

(declare-fun m!1209481 () Bool)

(assert (=> b!1321484 m!1209481))

(assert (=> b!1321484 m!1209481))

(declare-fun m!1209483 () Bool)

(assert (=> b!1321484 m!1209483))

(declare-fun m!1209485 () Bool)

(assert (=> b!1321479 m!1209485))

(declare-fun m!1209487 () Bool)

(assert (=> start!111628 m!1209487))

(declare-fun m!1209489 () Bool)

(assert (=> start!111628 m!1209489))

(declare-fun m!1209491 () Bool)

(assert (=> start!111628 m!1209491))

(declare-fun m!1209493 () Bool)

(assert (=> mapNonEmpty!55751 m!1209493))

(declare-fun m!1209495 () Bool)

(assert (=> b!1321483 m!1209495))

(declare-fun m!1209497 () Bool)

(assert (=> b!1321483 m!1209497))

(declare-fun m!1209499 () Bool)

(assert (=> b!1321483 m!1209499))

(declare-fun m!1209501 () Bool)

(assert (=> b!1321483 m!1209501))

(declare-fun m!1209503 () Bool)

(assert (=> b!1321483 m!1209503))

(assert (=> b!1321483 m!1209481))

(declare-fun m!1209505 () Bool)

(assert (=> b!1321483 m!1209505))

(assert (=> b!1321483 m!1209501))

(assert (=> b!1321483 m!1209497))

(declare-fun m!1209507 () Bool)

(assert (=> b!1321483 m!1209507))

(assert (=> b!1321483 m!1209481))

(declare-fun m!1209509 () Bool)

(assert (=> b!1321483 m!1209509))

(declare-fun m!1209511 () Bool)

(assert (=> b!1321483 m!1209511))

(declare-fun m!1209513 () Bool)

(assert (=> b!1321483 m!1209513))

(declare-fun m!1209515 () Bool)

(assert (=> b!1321483 m!1209515))

(declare-fun m!1209517 () Bool)

(assert (=> b!1321483 m!1209517))

(assert (=> b!1321480 m!1209481))

(declare-fun m!1209519 () Bool)

(assert (=> b!1321474 m!1209519))

(assert (=> b!1321474 m!1209519))

(declare-fun m!1209521 () Bool)

(assert (=> b!1321474 m!1209521))

(check-sat (not b!1321474) (not b!1321479) tp_is_empty!36069 (not start!111628) (not b_lambda!23585) (not b!1321482) (not mapNonEmpty!55751) b_and!48669 (not b!1321483) (not b_next!30249) (not b!1321484))
(check-sat b_and!48669 (not b_next!30249))
