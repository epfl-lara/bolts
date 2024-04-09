; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111670 () Bool)

(assert start!111670)

(declare-fun b_free!30291 () Bool)

(declare-fun b_next!30291 () Bool)

(assert (=> start!111670 (= b_free!30291 (not b_next!30291))))

(declare-fun tp!106350 () Bool)

(declare-fun b_and!48751 () Bool)

(assert (=> start!111670 (= tp!106350 b_and!48751)))

(declare-fun b!1322209 () Bool)

(declare-fun res!877690 () Bool)

(declare-fun e!753996 () Bool)

(assert (=> b!1322209 (=> (not res!877690) (not e!753996))))

(declare-datatypes ((array!89103 0))(
  ( (array!89104 (arr!43021 (Array (_ BitVec 32) (_ BitVec 64))) (size!43572 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89103)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53251 0))(
  ( (V!53252 (val!18130 Int)) )
))
(declare-fun zeroValue!1279 () V!53251)

(declare-datatypes ((ValueCell!17157 0))(
  ( (ValueCellFull!17157 (v!20758 V!53251)) (EmptyCell!17157) )
))
(declare-datatypes ((array!89105 0))(
  ( (array!89106 (arr!43022 (Array (_ BitVec 32) ValueCell!17157)) (size!43573 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89105)

(declare-fun minValue!1279 () V!53251)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23520 0))(
  ( (tuple2!23521 (_1!11770 (_ BitVec 64)) (_2!11770 V!53251)) )
))
(declare-datatypes ((List!30695 0))(
  ( (Nil!30692) (Cons!30691 (h!31900 tuple2!23520) (t!44542 List!30695)) )
))
(declare-datatypes ((ListLongMap!21189 0))(
  ( (ListLongMap!21190 (toList!10610 List!30695)) )
))
(declare-fun contains!8701 (ListLongMap!21189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5550 (array!89103 array!89105 (_ BitVec 32) (_ BitVec 32) V!53251 V!53251 (_ BitVec 32) Int) ListLongMap!21189)

(assert (=> b!1322209 (= res!877690 (contains!8701 (getCurrentListMap!5550 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322210 () Bool)

(declare-fun e!753995 () Bool)

(declare-fun e!753994 () Bool)

(declare-fun mapRes!55814 () Bool)

(assert (=> b!1322210 (= e!753995 (and e!753994 mapRes!55814))))

(declare-fun condMapEmpty!55814 () Bool)

(declare-fun mapDefault!55814 () ValueCell!17157)

(assert (=> b!1322210 (= condMapEmpty!55814 (= (arr!43022 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17157)) mapDefault!55814)))))

(declare-fun b!1322211 () Bool)

(declare-fun res!877689 () Bool)

(assert (=> b!1322211 (=> (not res!877689) (not e!753996))))

(assert (=> b!1322211 (= res!877689 (and (= (size!43573 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43572 _keys!1609) (size!43573 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55814 () Bool)

(declare-fun tp!106349 () Bool)

(declare-fun e!753997 () Bool)

(assert (=> mapNonEmpty!55814 (= mapRes!55814 (and tp!106349 e!753997))))

(declare-fun mapKey!55814 () (_ BitVec 32))

(declare-fun mapValue!55814 () ValueCell!17157)

(declare-fun mapRest!55814 () (Array (_ BitVec 32) ValueCell!17157))

(assert (=> mapNonEmpty!55814 (= (arr!43022 _values!1337) (store mapRest!55814 mapKey!55814 mapValue!55814))))

(declare-fun b!1322212 () Bool)

(declare-fun res!877694 () Bool)

(assert (=> b!1322212 (=> (not res!877694) (not e!753996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89103 (_ BitVec 32)) Bool)

(assert (=> b!1322212 (= res!877694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322213 () Bool)

(declare-fun res!877696 () Bool)

(assert (=> b!1322213 (=> (not res!877696) (not e!753996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322213 (= res!877696 (validKeyInArray!0 (select (arr!43021 _keys!1609) from!2000)))))

(declare-fun res!877691 () Bool)

(assert (=> start!111670 (=> (not res!877691) (not e!753996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111670 (= res!877691 (validMask!0 mask!2019))))

(assert (=> start!111670 e!753996))

(declare-fun array_inv!32431 (array!89103) Bool)

(assert (=> start!111670 (array_inv!32431 _keys!1609)))

(assert (=> start!111670 true))

(declare-fun tp_is_empty!36111 () Bool)

(assert (=> start!111670 tp_is_empty!36111))

(declare-fun array_inv!32432 (array!89105) Bool)

(assert (=> start!111670 (and (array_inv!32432 _values!1337) e!753995)))

(assert (=> start!111670 tp!106350))

(declare-fun b!1322214 () Bool)

(declare-fun res!877693 () Bool)

(assert (=> b!1322214 (=> (not res!877693) (not e!753996))))

(assert (=> b!1322214 (= res!877693 (not (= (select (arr!43021 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55814 () Bool)

(assert (=> mapIsEmpty!55814 mapRes!55814))

(declare-fun b!1322215 () Bool)

(assert (=> b!1322215 (= e!753996 (not true))))

(declare-fun lt!588004 () ListLongMap!21189)

(declare-fun lt!588000 () tuple2!23520)

(declare-fun +!4560 (ListLongMap!21189 tuple2!23520) ListLongMap!21189)

(assert (=> b!1322215 (contains!8701 (+!4560 lt!588004 lt!588000) k0!1164)))

(declare-datatypes ((Unit!43520 0))(
  ( (Unit!43521) )
))
(declare-fun lt!587999 () Unit!43520)

(declare-fun addStillContains!1141 (ListLongMap!21189 (_ BitVec 64) V!53251 (_ BitVec 64)) Unit!43520)

(assert (=> b!1322215 (= lt!587999 (addStillContains!1141 lt!588004 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322215 (contains!8701 lt!588004 k0!1164)))

(declare-fun lt!588001 () Unit!43520)

(declare-fun lt!588002 () V!53251)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!175 ((_ BitVec 64) (_ BitVec 64) V!53251 ListLongMap!21189) Unit!43520)

(assert (=> b!1322215 (= lt!588001 (lemmaInListMapAfterAddingDiffThenInBefore!175 k0!1164 (select (arr!43021 _keys!1609) from!2000) lt!588002 lt!588004))))

(declare-fun lt!588006 () ListLongMap!21189)

(assert (=> b!1322215 (contains!8701 lt!588006 k0!1164)))

(declare-fun lt!588005 () Unit!43520)

(assert (=> b!1322215 (= lt!588005 (lemmaInListMapAfterAddingDiffThenInBefore!175 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588006))))

(declare-fun lt!588007 () ListLongMap!21189)

(assert (=> b!1322215 (contains!8701 lt!588007 k0!1164)))

(declare-fun lt!588003 () Unit!43520)

(assert (=> b!1322215 (= lt!588003 (lemmaInListMapAfterAddingDiffThenInBefore!175 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588007))))

(assert (=> b!1322215 (= lt!588007 (+!4560 lt!588006 lt!588000))))

(assert (=> b!1322215 (= lt!588000 (tuple2!23521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322215 (= lt!588006 (+!4560 lt!588004 (tuple2!23521 (select (arr!43021 _keys!1609) from!2000) lt!588002)))))

(declare-fun get!21704 (ValueCell!17157 V!53251) V!53251)

(declare-fun dynLambda!3597 (Int (_ BitVec 64)) V!53251)

(assert (=> b!1322215 (= lt!588002 (get!21704 (select (arr!43022 _values!1337) from!2000) (dynLambda!3597 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6275 (array!89103 array!89105 (_ BitVec 32) (_ BitVec 32) V!53251 V!53251 (_ BitVec 32) Int) ListLongMap!21189)

(assert (=> b!1322215 (= lt!588004 (getCurrentListMapNoExtraKeys!6275 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322216 () Bool)

(declare-fun res!877695 () Bool)

(assert (=> b!1322216 (=> (not res!877695) (not e!753996))))

(assert (=> b!1322216 (= res!877695 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43572 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322217 () Bool)

(declare-fun res!877692 () Bool)

(assert (=> b!1322217 (=> (not res!877692) (not e!753996))))

(declare-datatypes ((List!30696 0))(
  ( (Nil!30693) (Cons!30692 (h!31901 (_ BitVec 64)) (t!44543 List!30696)) )
))
(declare-fun arrayNoDuplicates!0 (array!89103 (_ BitVec 32) List!30696) Bool)

(assert (=> b!1322217 (= res!877692 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30693))))

(declare-fun b!1322218 () Bool)

(assert (=> b!1322218 (= e!753997 tp_is_empty!36111)))

(declare-fun b!1322219 () Bool)

(assert (=> b!1322219 (= e!753994 tp_is_empty!36111)))

(assert (= (and start!111670 res!877691) b!1322211))

(assert (= (and b!1322211 res!877689) b!1322212))

(assert (= (and b!1322212 res!877694) b!1322217))

(assert (= (and b!1322217 res!877692) b!1322216))

(assert (= (and b!1322216 res!877695) b!1322209))

(assert (= (and b!1322209 res!877690) b!1322214))

(assert (= (and b!1322214 res!877693) b!1322213))

(assert (= (and b!1322213 res!877696) b!1322215))

(assert (= (and b!1322210 condMapEmpty!55814) mapIsEmpty!55814))

(assert (= (and b!1322210 (not condMapEmpty!55814)) mapNonEmpty!55814))

(get-info :version)

(assert (= (and mapNonEmpty!55814 ((_ is ValueCellFull!17157) mapValue!55814)) b!1322218))

(assert (= (and b!1322210 ((_ is ValueCellFull!17157) mapDefault!55814)) b!1322219))

(assert (= start!111670 b!1322210))

(declare-fun b_lambda!23627 () Bool)

(assert (=> (not b_lambda!23627) (not b!1322215)))

(declare-fun t!44541 () Bool)

(declare-fun tb!11651 () Bool)

(assert (=> (and start!111670 (= defaultEntry!1340 defaultEntry!1340) t!44541) tb!11651))

(declare-fun result!24349 () Bool)

(assert (=> tb!11651 (= result!24349 tp_is_empty!36111)))

(assert (=> b!1322215 t!44541))

(declare-fun b_and!48753 () Bool)

(assert (= b_and!48751 (and (=> t!44541 result!24349) b_and!48753)))

(declare-fun m!1210481 () Bool)

(assert (=> b!1322209 m!1210481))

(assert (=> b!1322209 m!1210481))

(declare-fun m!1210483 () Bool)

(assert (=> b!1322209 m!1210483))

(declare-fun m!1210485 () Bool)

(assert (=> start!111670 m!1210485))

(declare-fun m!1210487 () Bool)

(assert (=> start!111670 m!1210487))

(declare-fun m!1210489 () Bool)

(assert (=> start!111670 m!1210489))

(declare-fun m!1210491 () Bool)

(assert (=> b!1322217 m!1210491))

(declare-fun m!1210493 () Bool)

(assert (=> mapNonEmpty!55814 m!1210493))

(declare-fun m!1210495 () Bool)

(assert (=> b!1322212 m!1210495))

(declare-fun m!1210497 () Bool)

(assert (=> b!1322214 m!1210497))

(declare-fun m!1210499 () Bool)

(assert (=> b!1322215 m!1210499))

(declare-fun m!1210501 () Bool)

(assert (=> b!1322215 m!1210501))

(assert (=> b!1322215 m!1210497))

(declare-fun m!1210503 () Bool)

(assert (=> b!1322215 m!1210503))

(declare-fun m!1210505 () Bool)

(assert (=> b!1322215 m!1210505))

(declare-fun m!1210507 () Bool)

(assert (=> b!1322215 m!1210507))

(declare-fun m!1210509 () Bool)

(assert (=> b!1322215 m!1210509))

(assert (=> b!1322215 m!1210507))

(declare-fun m!1210511 () Bool)

(assert (=> b!1322215 m!1210511))

(assert (=> b!1322215 m!1210497))

(declare-fun m!1210513 () Bool)

(assert (=> b!1322215 m!1210513))

(declare-fun m!1210515 () Bool)

(assert (=> b!1322215 m!1210515))

(declare-fun m!1210517 () Bool)

(assert (=> b!1322215 m!1210517))

(declare-fun m!1210519 () Bool)

(assert (=> b!1322215 m!1210519))

(declare-fun m!1210521 () Bool)

(assert (=> b!1322215 m!1210521))

(assert (=> b!1322215 m!1210517))

(assert (=> b!1322215 m!1210501))

(declare-fun m!1210523 () Bool)

(assert (=> b!1322215 m!1210523))

(declare-fun m!1210525 () Bool)

(assert (=> b!1322215 m!1210525))

(declare-fun m!1210527 () Bool)

(assert (=> b!1322215 m!1210527))

(assert (=> b!1322213 m!1210497))

(assert (=> b!1322213 m!1210497))

(declare-fun m!1210529 () Bool)

(assert (=> b!1322213 m!1210529))

(check-sat b_and!48753 (not b!1322217) (not b!1322209) (not b!1322212) (not b!1322215) (not b_next!30291) tp_is_empty!36111 (not mapNonEmpty!55814) (not b_lambda!23627) (not b!1322213) (not start!111670))
(check-sat b_and!48753 (not b_next!30291))
