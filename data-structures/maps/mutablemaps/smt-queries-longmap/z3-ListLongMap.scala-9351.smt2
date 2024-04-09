; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111580 () Bool)

(assert start!111580)

(declare-fun b_free!30201 () Bool)

(declare-fun b_next!30201 () Bool)

(assert (=> start!111580 (= b_free!30201 (not b_next!30201))))

(declare-fun tp!106079 () Bool)

(declare-fun b_and!48571 () Bool)

(assert (=> start!111580 (= tp!106079 b_and!48571)))

(declare-fun b!1320634 () Bool)

(declare-fun res!876610 () Bool)

(declare-fun e!753320 () Bool)

(assert (=> b!1320634 (=> (not res!876610) (not e!753320))))

(declare-datatypes ((array!88935 0))(
  ( (array!88936 (arr!42937 (Array (_ BitVec 32) (_ BitVec 64))) (size!43488 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88935)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53131 0))(
  ( (V!53132 (val!18085 Int)) )
))
(declare-fun zeroValue!1279 () V!53131)

(declare-datatypes ((ValueCell!17112 0))(
  ( (ValueCellFull!17112 (v!20713 V!53131)) (EmptyCell!17112) )
))
(declare-datatypes ((array!88937 0))(
  ( (array!88938 (arr!42938 (Array (_ BitVec 32) ValueCell!17112)) (size!43489 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88937)

(declare-fun minValue!1279 () V!53131)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23452 0))(
  ( (tuple2!23453 (_1!11736 (_ BitVec 64)) (_2!11736 V!53131)) )
))
(declare-datatypes ((List!30634 0))(
  ( (Nil!30631) (Cons!30630 (h!31839 tuple2!23452) (t!44391 List!30634)) )
))
(declare-datatypes ((ListLongMap!21121 0))(
  ( (ListLongMap!21122 (toList!10576 List!30634)) )
))
(declare-fun contains!8667 (ListLongMap!21121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5519 (array!88935 array!88937 (_ BitVec 32) (_ BitVec 32) V!53131 V!53131 (_ BitVec 32) Int) ListLongMap!21121)

(assert (=> b!1320634 (= res!876610 (contains!8667 (getCurrentListMap!5519 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320635 () Bool)

(declare-fun res!876615 () Bool)

(assert (=> b!1320635 (=> (not res!876615) (not e!753320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88935 (_ BitVec 32)) Bool)

(assert (=> b!1320635 (= res!876615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55679 () Bool)

(declare-fun mapRes!55679 () Bool)

(declare-fun tp!106080 () Bool)

(declare-fun e!753319 () Bool)

(assert (=> mapNonEmpty!55679 (= mapRes!55679 (and tp!106080 e!753319))))

(declare-fun mapValue!55679 () ValueCell!17112)

(declare-fun mapKey!55679 () (_ BitVec 32))

(declare-fun mapRest!55679 () (Array (_ BitVec 32) ValueCell!17112))

(assert (=> mapNonEmpty!55679 (= (arr!42938 _values!1337) (store mapRest!55679 mapKey!55679 mapValue!55679))))

(declare-fun b!1320636 () Bool)

(declare-fun e!753322 () Bool)

(declare-fun e!753321 () Bool)

(assert (=> b!1320636 (= e!753322 (and e!753321 mapRes!55679))))

(declare-fun condMapEmpty!55679 () Bool)

(declare-fun mapDefault!55679 () ValueCell!17112)

(assert (=> b!1320636 (= condMapEmpty!55679 (= (arr!42938 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17112)) mapDefault!55679)))))

(declare-fun b!1320637 () Bool)

(declare-fun res!876609 () Bool)

(assert (=> b!1320637 (=> (not res!876609) (not e!753320))))

(assert (=> b!1320637 (= res!876609 (and (= (size!43489 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43488 _keys!1609) (size!43489 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320639 () Bool)

(declare-fun res!876614 () Bool)

(assert (=> b!1320639 (=> (not res!876614) (not e!753320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320639 (= res!876614 (validKeyInArray!0 (select (arr!42937 _keys!1609) from!2000)))))

(declare-fun b!1320640 () Bool)

(declare-fun tp_is_empty!36021 () Bool)

(assert (=> b!1320640 (= e!753321 tp_is_empty!36021)))

(declare-fun b!1320641 () Bool)

(assert (=> b!1320641 (= e!753319 tp_is_empty!36021)))

(declare-fun b!1320642 () Bool)

(declare-fun res!876613 () Bool)

(assert (=> b!1320642 (=> (not res!876613) (not e!753320))))

(declare-datatypes ((List!30635 0))(
  ( (Nil!30632) (Cons!30631 (h!31840 (_ BitVec 64)) (t!44392 List!30635)) )
))
(declare-fun arrayNoDuplicates!0 (array!88935 (_ BitVec 32) List!30635) Bool)

(assert (=> b!1320642 (= res!876613 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30632))))

(declare-fun b!1320643 () Bool)

(declare-fun res!876616 () Bool)

(assert (=> b!1320643 (=> (not res!876616) (not e!753320))))

(assert (=> b!1320643 (= res!876616 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43488 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!876611 () Bool)

(assert (=> start!111580 (=> (not res!876611) (not e!753320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111580 (= res!876611 (validMask!0 mask!2019))))

(assert (=> start!111580 e!753320))

(declare-fun array_inv!32373 (array!88935) Bool)

(assert (=> start!111580 (array_inv!32373 _keys!1609)))

(assert (=> start!111580 true))

(assert (=> start!111580 tp_is_empty!36021))

(declare-fun array_inv!32374 (array!88937) Bool)

(assert (=> start!111580 (and (array_inv!32374 _values!1337) e!753322)))

(assert (=> start!111580 tp!106079))

(declare-fun b!1320638 () Bool)

(assert (=> b!1320638 (= e!753320 (not true))))

(declare-fun lt!586987 () ListLongMap!21121)

(assert (=> b!1320638 (contains!8667 lt!586987 k0!1164)))

(declare-datatypes ((Unit!43460 0))(
  ( (Unit!43461) )
))
(declare-fun lt!586984 () Unit!43460)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!145 ((_ BitVec 64) (_ BitVec 64) V!53131 ListLongMap!21121) Unit!43460)

(assert (=> b!1320638 (= lt!586984 (lemmaInListMapAfterAddingDiffThenInBefore!145 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586987))))

(declare-fun lt!586986 () ListLongMap!21121)

(assert (=> b!1320638 (contains!8667 lt!586986 k0!1164)))

(declare-fun lt!586985 () Unit!43460)

(assert (=> b!1320638 (= lt!586985 (lemmaInListMapAfterAddingDiffThenInBefore!145 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586986))))

(declare-fun +!4530 (ListLongMap!21121 tuple2!23452) ListLongMap!21121)

(assert (=> b!1320638 (= lt!586986 (+!4530 lt!586987 (tuple2!23453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6245 (array!88935 array!88937 (_ BitVec 32) (_ BitVec 32) V!53131 V!53131 (_ BitVec 32) Int) ListLongMap!21121)

(declare-fun get!21644 (ValueCell!17112 V!53131) V!53131)

(declare-fun dynLambda!3567 (Int (_ BitVec 64)) V!53131)

(assert (=> b!1320638 (= lt!586987 (+!4530 (getCurrentListMapNoExtraKeys!6245 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23453 (select (arr!42937 _keys!1609) from!2000) (get!21644 (select (arr!42938 _values!1337) from!2000) (dynLambda!3567 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320644 () Bool)

(declare-fun res!876612 () Bool)

(assert (=> b!1320644 (=> (not res!876612) (not e!753320))))

(assert (=> b!1320644 (= res!876612 (not (= (select (arr!42937 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55679 () Bool)

(assert (=> mapIsEmpty!55679 mapRes!55679))

(assert (= (and start!111580 res!876611) b!1320637))

(assert (= (and b!1320637 res!876609) b!1320635))

(assert (= (and b!1320635 res!876615) b!1320642))

(assert (= (and b!1320642 res!876613) b!1320643))

(assert (= (and b!1320643 res!876616) b!1320634))

(assert (= (and b!1320634 res!876610) b!1320644))

(assert (= (and b!1320644 res!876612) b!1320639))

(assert (= (and b!1320639 res!876614) b!1320638))

(assert (= (and b!1320636 condMapEmpty!55679) mapIsEmpty!55679))

(assert (= (and b!1320636 (not condMapEmpty!55679)) mapNonEmpty!55679))

(get-info :version)

(assert (= (and mapNonEmpty!55679 ((_ is ValueCellFull!17112) mapValue!55679)) b!1320641))

(assert (= (and b!1320636 ((_ is ValueCellFull!17112) mapDefault!55679)) b!1320640))

(assert (= start!111580 b!1320636))

(declare-fun b_lambda!23537 () Bool)

(assert (=> (not b_lambda!23537) (not b!1320638)))

(declare-fun t!44390 () Bool)

(declare-fun tb!11561 () Bool)

(assert (=> (and start!111580 (= defaultEntry!1340 defaultEntry!1340) t!44390) tb!11561))

(declare-fun result!24169 () Bool)

(assert (=> tb!11561 (= result!24169 tp_is_empty!36021)))

(assert (=> b!1320638 t!44390))

(declare-fun b_and!48573 () Bool)

(assert (= b_and!48571 (and (=> t!44390 result!24169) b_and!48573)))

(declare-fun m!1208431 () Bool)

(assert (=> mapNonEmpty!55679 m!1208431))

(declare-fun m!1208433 () Bool)

(assert (=> b!1320638 m!1208433))

(declare-fun m!1208435 () Bool)

(assert (=> b!1320638 m!1208435))

(assert (=> b!1320638 m!1208433))

(declare-fun m!1208437 () Bool)

(assert (=> b!1320638 m!1208437))

(declare-fun m!1208439 () Bool)

(assert (=> b!1320638 m!1208439))

(declare-fun m!1208441 () Bool)

(assert (=> b!1320638 m!1208441))

(assert (=> b!1320638 m!1208439))

(assert (=> b!1320638 m!1208435))

(declare-fun m!1208443 () Bool)

(assert (=> b!1320638 m!1208443))

(declare-fun m!1208445 () Bool)

(assert (=> b!1320638 m!1208445))

(declare-fun m!1208447 () Bool)

(assert (=> b!1320638 m!1208447))

(declare-fun m!1208449 () Bool)

(assert (=> b!1320638 m!1208449))

(declare-fun m!1208451 () Bool)

(assert (=> b!1320638 m!1208451))

(declare-fun m!1208453 () Bool)

(assert (=> b!1320638 m!1208453))

(declare-fun m!1208455 () Bool)

(assert (=> b!1320642 m!1208455))

(declare-fun m!1208457 () Bool)

(assert (=> b!1320634 m!1208457))

(assert (=> b!1320634 m!1208457))

(declare-fun m!1208459 () Bool)

(assert (=> b!1320634 m!1208459))

(declare-fun m!1208461 () Bool)

(assert (=> b!1320635 m!1208461))

(assert (=> b!1320644 m!1208445))

(assert (=> b!1320639 m!1208445))

(assert (=> b!1320639 m!1208445))

(declare-fun m!1208463 () Bool)

(assert (=> b!1320639 m!1208463))

(declare-fun m!1208465 () Bool)

(assert (=> start!111580 m!1208465))

(declare-fun m!1208467 () Bool)

(assert (=> start!111580 m!1208467))

(declare-fun m!1208469 () Bool)

(assert (=> start!111580 m!1208469))

(check-sat (not b!1320642) b_and!48573 (not b!1320639) (not b!1320635) (not mapNonEmpty!55679) (not b_next!30201) tp_is_empty!36021 (not b!1320638) (not b!1320634) (not start!111580) (not b_lambda!23537))
(check-sat b_and!48573 (not b_next!30201))
