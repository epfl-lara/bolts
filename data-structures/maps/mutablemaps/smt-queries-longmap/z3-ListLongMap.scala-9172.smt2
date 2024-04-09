; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110296 () Bool)

(assert start!110296)

(declare-fun b_free!29307 () Bool)

(declare-fun b_next!29307 () Bool)

(assert (=> start!110296 (= b_free!29307 (not b_next!29307))))

(declare-fun tp!103087 () Bool)

(declare-fun b_and!47513 () Bool)

(assert (=> start!110296 (= tp!103087 b_and!47513)))

(declare-fun bm!64386 () Bool)

(declare-datatypes ((Unit!43175 0))(
  ( (Unit!43176) )
))
(declare-fun call!64396 () Unit!43175)

(declare-fun call!64392 () Unit!43175)

(assert (=> bm!64386 (= call!64396 call!64392)))

(declare-fun b!1305131 () Bool)

(declare-fun res!866776 () Bool)

(declare-fun e!744484 () Bool)

(assert (=> b!1305131 (=> (not res!866776) (not e!744484))))

(declare-datatypes ((V!51699 0))(
  ( (V!51700 (val!17548 Int)) )
))
(declare-fun zeroValue!1387 () V!51699)

(declare-datatypes ((ValueCell!16575 0))(
  ( (ValueCellFull!16575 (v!20168 V!51699)) (EmptyCell!16575) )
))
(declare-datatypes ((array!86875 0))(
  ( (array!86876 (arr!41920 (Array (_ BitVec 32) ValueCell!16575)) (size!42471 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86875)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86877 0))(
  ( (array!86878 (arr!41921 (Array (_ BitVec 32) (_ BitVec 64))) (size!42472 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86877)

(declare-fun minValue!1387 () V!51699)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22810 0))(
  ( (tuple2!22811 (_1!11415 (_ BitVec 64)) (_2!11415 V!51699)) )
))
(declare-datatypes ((List!29958 0))(
  ( (Nil!29955) (Cons!29954 (h!31163 tuple2!22810) (t!43567 List!29958)) )
))
(declare-datatypes ((ListLongMap!20479 0))(
  ( (ListLongMap!20480 (toList!10255 List!29958)) )
))
(declare-fun contains!8334 (ListLongMap!20479 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5212 (array!86877 array!86875 (_ BitVec 32) (_ BitVec 32) V!51699 V!51699 (_ BitVec 32) Int) ListLongMap!20479)

(assert (=> b!1305131 (= res!866776 (contains!8334 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun lt!584223 () ListLongMap!20479)

(declare-fun c!125297 () Bool)

(declare-fun bm!64387 () Bool)

(declare-fun call!64397 () Bool)

(declare-fun call!64394 () ListLongMap!20479)

(assert (=> bm!64387 (= call!64397 (contains!8334 (ite c!125297 lt!584223 call!64394) k0!1205))))

(declare-fun b!1305132 () Bool)

(declare-fun call!64393 () Bool)

(assert (=> b!1305132 call!64393))

(declare-fun lt!584225 () Unit!43175)

(assert (=> b!1305132 (= lt!584225 call!64396)))

(declare-fun call!64389 () Bool)

(assert (=> b!1305132 (not call!64389)))

(declare-fun lt!584229 () Unit!43175)

(declare-fun call!64395 () Unit!43175)

(assert (=> b!1305132 (= lt!584229 call!64395)))

(declare-fun lt!584221 () ListLongMap!20479)

(declare-fun call!64391 () ListLongMap!20479)

(assert (=> b!1305132 (= lt!584221 call!64391)))

(declare-fun e!744486 () Unit!43175)

(assert (=> b!1305132 (= e!744486 lt!584225)))

(declare-fun b!1305133 () Bool)

(assert (=> b!1305133 (= e!744484 (not false))))

(declare-fun lt!584217 () Unit!43175)

(declare-fun e!744482 () Unit!43175)

(assert (=> b!1305133 (= lt!584217 e!744482)))

(declare-fun lt!584222 () Bool)

(assert (=> b!1305133 (= c!125297 (and (not lt!584222) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1305133 (= lt!584222 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1305133 (not (contains!8334 (ListLongMap!20480 Nil!29955) k0!1205))))

(declare-fun lt!584215 () Unit!43175)

(declare-fun emptyContainsNothing!235 ((_ BitVec 64)) Unit!43175)

(assert (=> b!1305133 (= lt!584215 (emptyContainsNothing!235 k0!1205))))

(declare-fun bm!64388 () Bool)

(declare-fun call!64390 () Bool)

(assert (=> bm!64388 (= call!64393 call!64390)))

(declare-fun b!1305134 () Bool)

(declare-fun e!744487 () Unit!43175)

(declare-fun Unit!43177 () Unit!43175)

(assert (=> b!1305134 (= e!744487 Unit!43177)))

(declare-fun b!1305135 () Bool)

(declare-fun res!866775 () Bool)

(assert (=> b!1305135 (=> (not res!866775) (not e!744484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86877 (_ BitVec 32)) Bool)

(assert (=> b!1305135 (= res!866775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun c!125299 () Bool)

(declare-fun lt!584216 () ListLongMap!20479)

(declare-fun bm!64389 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!92 ((_ BitVec 64) (_ BitVec 64) V!51699 ListLongMap!20479) Unit!43175)

(assert (=> bm!64389 (= call!64392 (lemmaInListMapAfterAddingDiffThenInBefore!92 k0!1205 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))))

(declare-fun bm!64390 () Bool)

(declare-fun call!64398 () ListLongMap!20479)

(assert (=> bm!64390 (= call!64391 call!64398)))

(declare-fun b!1305136 () Bool)

(declare-fun res!866778 () Bool)

(assert (=> b!1305136 (=> (not res!866778) (not e!744484))))

(assert (=> b!1305136 (= res!866778 (and (= (size!42471 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42472 _keys!1741) (size!42471 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!866773 () Bool)

(assert (=> start!110296 (=> (not res!866773) (not e!744484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110296 (= res!866773 (validMask!0 mask!2175))))

(assert (=> start!110296 e!744484))

(declare-fun tp_is_empty!34947 () Bool)

(assert (=> start!110296 tp_is_empty!34947))

(assert (=> start!110296 true))

(declare-fun e!744489 () Bool)

(declare-fun array_inv!31699 (array!86875) Bool)

(assert (=> start!110296 (and (array_inv!31699 _values!1445) e!744489)))

(declare-fun array_inv!31700 (array!86877) Bool)

(assert (=> start!110296 (array_inv!31700 _keys!1741)))

(assert (=> start!110296 tp!103087))

(declare-fun b!1305137 () Bool)

(declare-fun res!866777 () Bool)

(assert (=> b!1305137 (=> (not res!866777) (not e!744484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305137 (= res!866777 (not (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144))))))

(declare-fun bm!64391 () Bool)

(assert (=> bm!64391 (= call!64389 call!64397)))

(declare-fun bm!64392 () Bool)

(declare-fun call!64399 () ListLongMap!20479)

(assert (=> bm!64392 (= call!64394 call!64399)))

(declare-fun b!1305138 () Bool)

(declare-fun res!866771 () Bool)

(assert (=> b!1305138 (=> (not res!866771) (not e!744484))))

(declare-datatypes ((List!29959 0))(
  ( (Nil!29956) (Cons!29955 (h!31164 (_ BitVec 64)) (t!43568 List!29959)) )
))
(declare-fun arrayNoDuplicates!0 (array!86877 (_ BitVec 32) List!29959) Bool)

(assert (=> b!1305138 (= res!866771 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29956))))

(declare-fun b!1305139 () Bool)

(declare-fun c!125298 () Bool)

(assert (=> b!1305139 (= c!125298 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!584222))))

(assert (=> b!1305139 (= e!744486 e!744487)))

(declare-fun b!1305140 () Bool)

(declare-fun lt!584220 () Unit!43175)

(assert (=> b!1305140 (= e!744487 lt!584220)))

(assert (=> b!1305140 (= lt!584216 call!64391)))

(declare-fun lt!584214 () Unit!43175)

(assert (=> b!1305140 (= lt!584214 call!64395)))

(assert (=> b!1305140 (not call!64389)))

(assert (=> b!1305140 (= lt!584220 call!64396)))

(assert (=> b!1305140 call!64393))

(declare-fun mapIsEmpty!54027 () Bool)

(declare-fun mapRes!54027 () Bool)

(assert (=> mapIsEmpty!54027 mapRes!54027))

(declare-fun b!1305141 () Bool)

(declare-fun res!866774 () Bool)

(assert (=> b!1305141 (=> (not res!866774) (not e!744484))))

(assert (=> b!1305141 (= res!866774 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42472 _keys!1741))))))

(declare-fun call!64400 () Unit!43175)

(declare-fun bm!64393 () Bool)

(declare-fun addStillNotContains!496 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> bm!64393 (= call!64400 (addStillNotContains!496 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) k0!1205))))

(declare-fun b!1305142 () Bool)

(declare-fun lt!584218 () Unit!43175)

(assert (=> b!1305142 (= e!744482 lt!584218)))

(assert (=> b!1305142 (= lt!584223 call!64398)))

(declare-fun lt!584224 () Unit!43175)

(assert (=> b!1305142 (= lt!584224 call!64400)))

(declare-fun lt!584219 () ListLongMap!20479)

(declare-fun +!4472 (ListLongMap!20479 tuple2!22810) ListLongMap!20479)

(assert (=> b!1305142 (= lt!584219 (+!4472 lt!584223 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (=> b!1305142 (not call!64390)))

(declare-fun lt!584228 () Unit!43175)

(assert (=> b!1305142 (= lt!584228 (addStillNotContains!496 lt!584223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1305142 (not (contains!8334 call!64399 k0!1205))))

(declare-fun lt!584227 () Unit!43175)

(assert (=> b!1305142 (= lt!584227 (lemmaInListMapAfterAddingDiffThenInBefore!92 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584219))))

(assert (=> b!1305142 false))

(assert (=> b!1305142 (= lt!584218 call!64392)))

(declare-fun lt!584226 () Bool)

(assert (=> b!1305142 (= lt!584226 call!64397)))

(declare-fun b!1305143 () Bool)

(declare-fun e!744488 () Bool)

(assert (=> b!1305143 (= e!744488 tp_is_empty!34947)))

(declare-fun b!1305144 () Bool)

(declare-fun e!744483 () Bool)

(assert (=> b!1305144 (= e!744489 (and e!744483 mapRes!54027))))

(declare-fun condMapEmpty!54027 () Bool)

(declare-fun mapDefault!54027 () ValueCell!16575)

(assert (=> b!1305144 (= condMapEmpty!54027 (= (arr!41920 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16575)) mapDefault!54027)))))

(declare-fun bm!64394 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6189 (array!86877 array!86875 (_ BitVec 32) (_ BitVec 32) V!51699 V!51699 (_ BitVec 32) Int) ListLongMap!20479)

(assert (=> bm!64394 (= call!64398 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!54027 () Bool)

(declare-fun tp!103086 () Bool)

(assert (=> mapNonEmpty!54027 (= mapRes!54027 (and tp!103086 e!744488))))

(declare-fun mapValue!54027 () ValueCell!16575)

(declare-fun mapRest!54027 () (Array (_ BitVec 32) ValueCell!16575))

(declare-fun mapKey!54027 () (_ BitVec 32))

(assert (=> mapNonEmpty!54027 (= (arr!41920 _values!1445) (store mapRest!54027 mapKey!54027 mapValue!54027))))

(declare-fun bm!64395 () Bool)

(assert (=> bm!64395 (= call!64390 (contains!8334 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)) k0!1205))))

(declare-fun bm!64396 () Bool)

(assert (=> bm!64396 (= call!64399 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1305145 () Bool)

(assert (=> b!1305145 (= e!744483 tp_is_empty!34947)))

(declare-fun b!1305146 () Bool)

(declare-fun res!866772 () Bool)

(assert (=> b!1305146 (=> (not res!866772) (not e!744484))))

(assert (=> b!1305146 (= res!866772 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741))))))

(declare-fun b!1305147 () Bool)

(assert (=> b!1305147 (= e!744482 e!744486)))

(assert (=> b!1305147 (= c!125299 (and (not lt!584222) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64397 () Bool)

(assert (=> bm!64397 (= call!64395 call!64400)))

(assert (= (and start!110296 res!866773) b!1305136))

(assert (= (and b!1305136 res!866778) b!1305135))

(assert (= (and b!1305135 res!866775) b!1305138))

(assert (= (and b!1305138 res!866771) b!1305146))

(assert (= (and b!1305146 res!866772) b!1305131))

(assert (= (and b!1305131 res!866776) b!1305141))

(assert (= (and b!1305141 res!866774) b!1305137))

(assert (= (and b!1305137 res!866777) b!1305133))

(assert (= (and b!1305133 c!125297) b!1305142))

(assert (= (and b!1305133 (not c!125297)) b!1305147))

(assert (= (and b!1305147 c!125299) b!1305132))

(assert (= (and b!1305147 (not c!125299)) b!1305139))

(assert (= (and b!1305139 c!125298) b!1305140))

(assert (= (and b!1305139 (not c!125298)) b!1305134))

(assert (= (or b!1305132 b!1305140) bm!64397))

(assert (= (or b!1305132 b!1305140) bm!64390))

(assert (= (or b!1305132 b!1305140) bm!64392))

(assert (= (or b!1305132 b!1305140) bm!64388))

(assert (= (or b!1305132 b!1305140) bm!64386))

(assert (= (or b!1305132 b!1305140) bm!64391))

(assert (= (or b!1305142 bm!64397) bm!64393))

(assert (= (or b!1305142 bm!64386) bm!64389))

(assert (= (or b!1305142 bm!64392) bm!64396))

(assert (= (or b!1305142 bm!64391) bm!64387))

(assert (= (or b!1305142 bm!64388) bm!64395))

(assert (= (or b!1305142 bm!64390) bm!64394))

(assert (= (and b!1305144 condMapEmpty!54027) mapIsEmpty!54027))

(assert (= (and b!1305144 (not condMapEmpty!54027)) mapNonEmpty!54027))

(get-info :version)

(assert (= (and mapNonEmpty!54027 ((_ is ValueCellFull!16575) mapValue!54027)) b!1305143))

(assert (= (and b!1305144 ((_ is ValueCellFull!16575) mapDefault!54027)) b!1305145))

(assert (= start!110296 b!1305144))

(declare-fun m!1196169 () Bool)

(assert (=> bm!64387 m!1196169))

(declare-fun m!1196171 () Bool)

(assert (=> bm!64393 m!1196171))

(declare-fun m!1196173 () Bool)

(assert (=> bm!64394 m!1196173))

(declare-fun m!1196175 () Bool)

(assert (=> b!1305138 m!1196175))

(declare-fun m!1196177 () Bool)

(assert (=> start!110296 m!1196177))

(declare-fun m!1196179 () Bool)

(assert (=> start!110296 m!1196179))

(declare-fun m!1196181 () Bool)

(assert (=> start!110296 m!1196181))

(declare-fun m!1196183 () Bool)

(assert (=> b!1305135 m!1196183))

(declare-fun m!1196185 () Bool)

(assert (=> b!1305131 m!1196185))

(assert (=> b!1305131 m!1196185))

(declare-fun m!1196187 () Bool)

(assert (=> b!1305131 m!1196187))

(declare-fun m!1196189 () Bool)

(assert (=> b!1305133 m!1196189))

(declare-fun m!1196191 () Bool)

(assert (=> b!1305133 m!1196191))

(declare-fun m!1196193 () Bool)

(assert (=> mapNonEmpty!54027 m!1196193))

(declare-fun m!1196195 () Bool)

(assert (=> bm!64389 m!1196195))

(declare-fun m!1196197 () Bool)

(assert (=> bm!64395 m!1196197))

(declare-fun m!1196199 () Bool)

(assert (=> bm!64396 m!1196199))

(declare-fun m!1196201 () Bool)

(assert (=> b!1305137 m!1196201))

(assert (=> b!1305137 m!1196201))

(declare-fun m!1196203 () Bool)

(assert (=> b!1305137 m!1196203))

(declare-fun m!1196205 () Bool)

(assert (=> b!1305142 m!1196205))

(declare-fun m!1196207 () Bool)

(assert (=> b!1305142 m!1196207))

(declare-fun m!1196209 () Bool)

(assert (=> b!1305142 m!1196209))

(declare-fun m!1196211 () Bool)

(assert (=> b!1305142 m!1196211))

(check-sat b_and!47513 (not bm!64393) (not start!110296) (not bm!64396) (not bm!64395) (not b!1305142) (not mapNonEmpty!54027) (not b!1305131) (not b!1305133) (not bm!64387) (not b!1305138) (not b!1305137) (not bm!64389) (not b_next!29307) (not bm!64394) tp_is_empty!34947 (not b!1305135))
(check-sat b_and!47513 (not b_next!29307))
(get-model)

(declare-fun b!1305207 () Bool)

(declare-fun e!744521 () Bool)

(declare-fun e!744520 () Bool)

(assert (=> b!1305207 (= e!744521 e!744520)))

(declare-fun lt!584284 () (_ BitVec 64))

(assert (=> b!1305207 (= lt!584284 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!584286 () Unit!43175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86877 (_ BitVec 64) (_ BitVec 32)) Unit!43175)

(assert (=> b!1305207 (= lt!584286 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!584284 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1305207 (arrayContainsKey!0 _keys!1741 lt!584284 #b00000000000000000000000000000000)))

(declare-fun lt!584285 () Unit!43175)

(assert (=> b!1305207 (= lt!584285 lt!584286)))

(declare-fun res!866808 () Bool)

(declare-datatypes ((SeekEntryResult!10026 0))(
  ( (MissingZero!10026 (index!42474 (_ BitVec 32))) (Found!10026 (index!42475 (_ BitVec 32))) (Intermediate!10026 (undefined!10838 Bool) (index!42476 (_ BitVec 32)) (x!115922 (_ BitVec 32))) (Undefined!10026) (MissingVacant!10026 (index!42477 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86877 (_ BitVec 32)) SeekEntryResult!10026)

(assert (=> b!1305207 (= res!866808 (= (seekEntryOrOpen!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10026 #b00000000000000000000000000000000)))))

(assert (=> b!1305207 (=> (not res!866808) (not e!744520))))

(declare-fun bm!64436 () Bool)

(declare-fun call!64439 () Bool)

(assert (=> bm!64436 (= call!64439 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1305208 () Bool)

(assert (=> b!1305208 (= e!744521 call!64439)))

(declare-fun b!1305210 () Bool)

(declare-fun e!744522 () Bool)

(assert (=> b!1305210 (= e!744522 e!744521)))

(declare-fun c!125311 () Bool)

(assert (=> b!1305210 (= c!125311 (validKeyInArray!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141895 () Bool)

(declare-fun res!866807 () Bool)

(assert (=> d!141895 (=> res!866807 e!744522)))

(assert (=> d!141895 (= res!866807 (bvsge #b00000000000000000000000000000000 (size!42472 _keys!1741)))))

(assert (=> d!141895 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!744522)))

(declare-fun b!1305209 () Bool)

(assert (=> b!1305209 (= e!744520 call!64439)))

(assert (= (and d!141895 (not res!866807)) b!1305210))

(assert (= (and b!1305210 c!125311) b!1305207))

(assert (= (and b!1305210 (not c!125311)) b!1305208))

(assert (= (and b!1305207 res!866808) b!1305209))

(assert (= (or b!1305209 b!1305208) bm!64436))

(declare-fun m!1196257 () Bool)

(assert (=> b!1305207 m!1196257))

(declare-fun m!1196259 () Bool)

(assert (=> b!1305207 m!1196259))

(declare-fun m!1196261 () Bool)

(assert (=> b!1305207 m!1196261))

(assert (=> b!1305207 m!1196257))

(declare-fun m!1196263 () Bool)

(assert (=> b!1305207 m!1196263))

(declare-fun m!1196265 () Bool)

(assert (=> bm!64436 m!1196265))

(assert (=> b!1305210 m!1196257))

(assert (=> b!1305210 m!1196257))

(declare-fun m!1196267 () Bool)

(assert (=> b!1305210 m!1196267))

(assert (=> b!1305135 d!141895))

(declare-fun d!141897 () Bool)

(declare-fun e!744525 () Bool)

(assert (=> d!141897 e!744525))

(declare-fun res!866814 () Bool)

(assert (=> d!141897 (=> (not res!866814) (not e!744525))))

(declare-fun lt!584297 () ListLongMap!20479)

(assert (=> d!141897 (= res!866814 (contains!8334 lt!584297 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun lt!584295 () List!29958)

(assert (=> d!141897 (= lt!584297 (ListLongMap!20480 lt!584295))))

(declare-fun lt!584298 () Unit!43175)

(declare-fun lt!584296 () Unit!43175)

(assert (=> d!141897 (= lt!584298 lt!584296)))

(declare-datatypes ((Option!762 0))(
  ( (Some!761 (v!20170 V!51699)) (None!760) )
))
(declare-fun getValueByKey!711 (List!29958 (_ BitVec 64)) Option!762)

(assert (=> d!141897 (= (getValueByKey!711 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) (Some!761 (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!355 (List!29958 (_ BitVec 64) V!51699) Unit!43175)

(assert (=> d!141897 (= lt!584296 (lemmaContainsTupThenGetReturnValue!355 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun insertStrictlySorted!484 (List!29958 (_ BitVec 64) V!51699) List!29958)

(assert (=> d!141897 (= lt!584295 (insertStrictlySorted!484 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (=> d!141897 (= (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) lt!584297)))

(declare-fun b!1305215 () Bool)

(declare-fun res!866813 () Bool)

(assert (=> b!1305215 (=> (not res!866813) (not e!744525))))

(assert (=> b!1305215 (= res!866813 (= (getValueByKey!711 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) (Some!761 (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(declare-fun b!1305216 () Bool)

(declare-fun contains!8336 (List!29958 tuple2!22810) Bool)

(assert (=> b!1305216 (= e!744525 (contains!8336 (toList!10255 lt!584297) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (= (and d!141897 res!866814) b!1305215))

(assert (= (and b!1305215 res!866813) b!1305216))

(declare-fun m!1196269 () Bool)

(assert (=> d!141897 m!1196269))

(declare-fun m!1196271 () Bool)

(assert (=> d!141897 m!1196271))

(declare-fun m!1196273 () Bool)

(assert (=> d!141897 m!1196273))

(declare-fun m!1196275 () Bool)

(assert (=> d!141897 m!1196275))

(declare-fun m!1196277 () Bool)

(assert (=> b!1305215 m!1196277))

(declare-fun m!1196279 () Bool)

(assert (=> b!1305216 m!1196279))

(assert (=> bm!64396 d!141897))

(declare-fun d!141899 () Bool)

(declare-fun e!744526 () Bool)

(assert (=> d!141899 e!744526))

(declare-fun res!866816 () Bool)

(assert (=> d!141899 (=> (not res!866816) (not e!744526))))

(declare-fun lt!584301 () ListLongMap!20479)

(assert (=> d!141899 (= res!866816 (contains!8334 lt!584301 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!584299 () List!29958)

(assert (=> d!141899 (= lt!584301 (ListLongMap!20480 lt!584299))))

(declare-fun lt!584302 () Unit!43175)

(declare-fun lt!584300 () Unit!43175)

(assert (=> d!141899 (= lt!584302 lt!584300)))

(assert (=> d!141899 (= (getValueByKey!711 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141899 (= lt!584300 (lemmaContainsTupThenGetReturnValue!355 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141899 (= lt!584299 (insertStrictlySorted!484 (toList!10255 lt!584223) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141899 (= (+!4472 lt!584223 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!584301)))

(declare-fun b!1305217 () Bool)

(declare-fun res!866815 () Bool)

(assert (=> b!1305217 (=> (not res!866815) (not e!744526))))

(assert (=> b!1305217 (= res!866815 (= (getValueByKey!711 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1305218 () Bool)

(assert (=> b!1305218 (= e!744526 (contains!8336 (toList!10255 lt!584301) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141899 res!866816) b!1305217))

(assert (= (and b!1305217 res!866815) b!1305218))

(declare-fun m!1196281 () Bool)

(assert (=> d!141899 m!1196281))

(declare-fun m!1196283 () Bool)

(assert (=> d!141899 m!1196283))

(declare-fun m!1196285 () Bool)

(assert (=> d!141899 m!1196285))

(declare-fun m!1196287 () Bool)

(assert (=> d!141899 m!1196287))

(declare-fun m!1196289 () Bool)

(assert (=> b!1305217 m!1196289))

(declare-fun m!1196291 () Bool)

(assert (=> b!1305218 m!1196291))

(assert (=> b!1305142 d!141899))

(declare-fun d!141901 () Bool)

(assert (=> d!141901 (not (contains!8334 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!584305 () Unit!43175)

(declare-fun choose!1944 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> d!141901 (= lt!584305 (choose!1944 lt!584223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun e!744529 () Bool)

(assert (=> d!141901 e!744529))

(declare-fun res!866819 () Bool)

(assert (=> d!141901 (=> (not res!866819) (not e!744529))))

(assert (=> d!141901 (= res!866819 (not (contains!8334 lt!584223 k0!1205)))))

(assert (=> d!141901 (= (addStillNotContains!496 lt!584223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205) lt!584305)))

(declare-fun b!1305222 () Bool)

(assert (=> b!1305222 (= e!744529 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141901 res!866819) b!1305222))

(declare-fun m!1196293 () Bool)

(assert (=> d!141901 m!1196293))

(assert (=> d!141901 m!1196293))

(declare-fun m!1196295 () Bool)

(assert (=> d!141901 m!1196295))

(declare-fun m!1196297 () Bool)

(assert (=> d!141901 m!1196297))

(declare-fun m!1196299 () Bool)

(assert (=> d!141901 m!1196299))

(assert (=> b!1305142 d!141901))

(declare-fun d!141903 () Bool)

(declare-fun e!744535 () Bool)

(assert (=> d!141903 e!744535))

(declare-fun res!866822 () Bool)

(assert (=> d!141903 (=> res!866822 e!744535)))

(declare-fun lt!584314 () Bool)

(assert (=> d!141903 (= res!866822 (not lt!584314))))

(declare-fun lt!584316 () Bool)

(assert (=> d!141903 (= lt!584314 lt!584316)))

(declare-fun lt!584317 () Unit!43175)

(declare-fun e!744534 () Unit!43175)

(assert (=> d!141903 (= lt!584317 e!744534)))

(declare-fun c!125314 () Bool)

(assert (=> d!141903 (= c!125314 lt!584316)))

(declare-fun containsKey!729 (List!29958 (_ BitVec 64)) Bool)

(assert (=> d!141903 (= lt!584316 (containsKey!729 (toList!10255 call!64399) k0!1205))))

(assert (=> d!141903 (= (contains!8334 call!64399 k0!1205) lt!584314)))

(declare-fun b!1305229 () Bool)

(declare-fun lt!584315 () Unit!43175)

(assert (=> b!1305229 (= e!744534 lt!584315)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!474 (List!29958 (_ BitVec 64)) Unit!43175)

(assert (=> b!1305229 (= lt!584315 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 call!64399) k0!1205))))

(declare-fun isDefined!514 (Option!762) Bool)

(assert (=> b!1305229 (isDefined!514 (getValueByKey!711 (toList!10255 call!64399) k0!1205))))

(declare-fun b!1305230 () Bool)

(declare-fun Unit!43181 () Unit!43175)

(assert (=> b!1305230 (= e!744534 Unit!43181)))

(declare-fun b!1305231 () Bool)

(assert (=> b!1305231 (= e!744535 (isDefined!514 (getValueByKey!711 (toList!10255 call!64399) k0!1205)))))

(assert (= (and d!141903 c!125314) b!1305229))

(assert (= (and d!141903 (not c!125314)) b!1305230))

(assert (= (and d!141903 (not res!866822)) b!1305231))

(declare-fun m!1196301 () Bool)

(assert (=> d!141903 m!1196301))

(declare-fun m!1196303 () Bool)

(assert (=> b!1305229 m!1196303))

(declare-fun m!1196305 () Bool)

(assert (=> b!1305229 m!1196305))

(assert (=> b!1305229 m!1196305))

(declare-fun m!1196307 () Bool)

(assert (=> b!1305229 m!1196307))

(assert (=> b!1305231 m!1196305))

(assert (=> b!1305231 m!1196305))

(assert (=> b!1305231 m!1196307))

(assert (=> b!1305142 d!141903))

(declare-fun d!141905 () Bool)

(assert (=> d!141905 (contains!8334 lt!584219 k0!1205)))

(declare-fun lt!584320 () Unit!43175)

(declare-fun choose!1945 ((_ BitVec 64) (_ BitVec 64) V!51699 ListLongMap!20479) Unit!43175)

(assert (=> d!141905 (= lt!584320 (choose!1945 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584219))))

(assert (=> d!141905 (contains!8334 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205)))

(assert (=> d!141905 (= (lemmaInListMapAfterAddingDiffThenInBefore!92 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584219) lt!584320)))

(declare-fun bs!37173 () Bool)

(assert (= bs!37173 d!141905))

(declare-fun m!1196309 () Bool)

(assert (=> bs!37173 m!1196309))

(declare-fun m!1196311 () Bool)

(assert (=> bs!37173 m!1196311))

(declare-fun m!1196313 () Bool)

(assert (=> bs!37173 m!1196313))

(assert (=> bs!37173 m!1196313))

(declare-fun m!1196315 () Bool)

(assert (=> bs!37173 m!1196315))

(assert (=> b!1305142 d!141905))

(declare-fun d!141907 () Bool)

(assert (=> d!141907 (not (contains!8334 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) k0!1205))))

(declare-fun lt!584321 () Unit!43175)

(assert (=> d!141907 (= lt!584321 (choose!1944 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) k0!1205))))

(declare-fun e!744536 () Bool)

(assert (=> d!141907 e!744536))

(declare-fun res!866823 () Bool)

(assert (=> d!141907 (=> (not res!866823) (not e!744536))))

(assert (=> d!141907 (= res!866823 (not (contains!8334 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) k0!1205)))))

(assert (=> d!141907 (= (addStillNotContains!496 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) k0!1205) lt!584321)))

(declare-fun b!1305232 () Bool)

(assert (=> b!1305232 (= e!744536 (not (= (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) k0!1205)))))

(assert (= (and d!141907 res!866823) b!1305232))

(declare-fun m!1196317 () Bool)

(assert (=> d!141907 m!1196317))

(assert (=> d!141907 m!1196317))

(declare-fun m!1196319 () Bool)

(assert (=> d!141907 m!1196319))

(declare-fun m!1196321 () Bool)

(assert (=> d!141907 m!1196321))

(declare-fun m!1196323 () Bool)

(assert (=> d!141907 m!1196323))

(assert (=> bm!64393 d!141907))

(declare-fun d!141909 () Bool)

(assert (=> d!141909 (contains!8334 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) k0!1205)))

(declare-fun lt!584322 () Unit!43175)

(assert (=> d!141909 (= lt!584322 (choose!1945 k0!1205 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))))

(assert (=> d!141909 (contains!8334 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) k0!1205)))

(assert (=> d!141909 (= (lemmaInListMapAfterAddingDiffThenInBefore!92 k0!1205 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) lt!584322)))

(declare-fun bs!37174 () Bool)

(assert (= bs!37174 d!141909))

(assert (=> bs!37174 m!1196323))

(declare-fun m!1196325 () Bool)

(assert (=> bs!37174 m!1196325))

(assert (=> bs!37174 m!1196317))

(assert (=> bs!37174 m!1196317))

(assert (=> bs!37174 m!1196319))

(assert (=> bm!64389 d!141909))

(declare-fun d!141911 () Bool)

(declare-fun e!744538 () Bool)

(assert (=> d!141911 e!744538))

(declare-fun res!866824 () Bool)

(assert (=> d!141911 (=> res!866824 e!744538)))

(declare-fun lt!584323 () Bool)

(assert (=> d!141911 (= res!866824 (not lt!584323))))

(declare-fun lt!584325 () Bool)

(assert (=> d!141911 (= lt!584323 lt!584325)))

(declare-fun lt!584326 () Unit!43175)

(declare-fun e!744537 () Unit!43175)

(assert (=> d!141911 (= lt!584326 e!744537)))

(declare-fun c!125315 () Bool)

(assert (=> d!141911 (= c!125315 lt!584325)))

(assert (=> d!141911 (= lt!584325 (containsKey!729 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141911 (= (contains!8334 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!584323)))

(declare-fun b!1305233 () Bool)

(declare-fun lt!584324 () Unit!43175)

(assert (=> b!1305233 (= e!744537 lt!584324)))

(assert (=> b!1305233 (= lt!584324 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1305233 (isDefined!514 (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1305234 () Bool)

(declare-fun Unit!43182 () Unit!43175)

(assert (=> b!1305234 (= e!744537 Unit!43182)))

(declare-fun b!1305235 () Bool)

(assert (=> b!1305235 (= e!744538 (isDefined!514 (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141911 c!125315) b!1305233))

(assert (= (and d!141911 (not c!125315)) b!1305234))

(assert (= (and d!141911 (not res!866824)) b!1305235))

(declare-fun m!1196327 () Bool)

(assert (=> d!141911 m!1196327))

(declare-fun m!1196329 () Bool)

(assert (=> b!1305233 m!1196329))

(declare-fun m!1196331 () Bool)

(assert (=> b!1305233 m!1196331))

(assert (=> b!1305233 m!1196331))

(declare-fun m!1196333 () Bool)

(assert (=> b!1305233 m!1196333))

(assert (=> b!1305235 m!1196331))

(assert (=> b!1305235 m!1196331))

(assert (=> b!1305235 m!1196333))

(assert (=> b!1305131 d!141911))

(declare-fun b!1305278 () Bool)

(declare-fun e!744565 () Unit!43175)

(declare-fun lt!584378 () Unit!43175)

(assert (=> b!1305278 (= e!744565 lt!584378)))

(declare-fun lt!584391 () ListLongMap!20479)

(assert (=> b!1305278 (= lt!584391 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584373 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584384 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584384 (select (arr!41921 _keys!1741) from!2144))))

(declare-fun lt!584383 () Unit!43175)

(declare-fun addStillContains!1130 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> b!1305278 (= lt!584383 (addStillContains!1130 lt!584391 lt!584373 zeroValue!1387 lt!584384))))

(assert (=> b!1305278 (contains!8334 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387)) lt!584384)))

(declare-fun lt!584371 () Unit!43175)

(assert (=> b!1305278 (= lt!584371 lt!584383)))

(declare-fun lt!584377 () ListLongMap!20479)

(assert (=> b!1305278 (= lt!584377 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584390 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584390 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584380 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584380 (select (arr!41921 _keys!1741) from!2144))))

(declare-fun lt!584388 () Unit!43175)

(declare-fun addApplyDifferent!564 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> b!1305278 (= lt!584388 (addApplyDifferent!564 lt!584377 lt!584390 minValue!1387 lt!584380))))

(declare-fun apply!1061 (ListLongMap!20479 (_ BitVec 64)) V!51699)

(assert (=> b!1305278 (= (apply!1061 (+!4472 lt!584377 (tuple2!22811 lt!584390 minValue!1387)) lt!584380) (apply!1061 lt!584377 lt!584380))))

(declare-fun lt!584372 () Unit!43175)

(assert (=> b!1305278 (= lt!584372 lt!584388)))

(declare-fun lt!584381 () ListLongMap!20479)

(assert (=> b!1305278 (= lt!584381 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584374 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584374 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584392 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584392 (select (arr!41921 _keys!1741) from!2144))))

(declare-fun lt!584375 () Unit!43175)

(assert (=> b!1305278 (= lt!584375 (addApplyDifferent!564 lt!584381 lt!584374 zeroValue!1387 lt!584392))))

(assert (=> b!1305278 (= (apply!1061 (+!4472 lt!584381 (tuple2!22811 lt!584374 zeroValue!1387)) lt!584392) (apply!1061 lt!584381 lt!584392))))

(declare-fun lt!584389 () Unit!43175)

(assert (=> b!1305278 (= lt!584389 lt!584375)))

(declare-fun lt!584376 () ListLongMap!20479)

(assert (=> b!1305278 (= lt!584376 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584382 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584382 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584379 () (_ BitVec 64))

(assert (=> b!1305278 (= lt!584379 (select (arr!41921 _keys!1741) from!2144))))

(assert (=> b!1305278 (= lt!584378 (addApplyDifferent!564 lt!584376 lt!584382 minValue!1387 lt!584379))))

(assert (=> b!1305278 (= (apply!1061 (+!4472 lt!584376 (tuple2!22811 lt!584382 minValue!1387)) lt!584379) (apply!1061 lt!584376 lt!584379))))

(declare-fun b!1305279 () Bool)

(declare-fun e!744575 () Bool)

(declare-fun e!744574 () Bool)

(assert (=> b!1305279 (= e!744575 e!744574)))

(declare-fun res!866846 () Bool)

(declare-fun call!64456 () Bool)

(assert (=> b!1305279 (= res!866846 call!64456)))

(assert (=> b!1305279 (=> (not res!866846) (not e!744574))))

(declare-fun b!1305280 () Bool)

(declare-fun e!744576 () ListLongMap!20479)

(declare-fun call!64454 () ListLongMap!20479)

(assert (=> b!1305280 (= e!744576 call!64454)))

(declare-fun b!1305281 () Bool)

(assert (=> b!1305281 (= e!744575 (not call!64456))))

(declare-fun bm!64451 () Bool)

(declare-fun call!64458 () Bool)

(declare-fun lt!584385 () ListLongMap!20479)

(assert (=> bm!64451 (= call!64458 (contains!8334 lt!584385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64452 () Bool)

(assert (=> bm!64452 (= call!64456 (contains!8334 lt!584385 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64453 () Bool)

(declare-fun call!64455 () ListLongMap!20479)

(declare-fun call!64460 () ListLongMap!20479)

(declare-fun c!125330 () Bool)

(declare-fun call!64459 () ListLongMap!20479)

(declare-fun c!125331 () Bool)

(assert (=> bm!64453 (= call!64460 (+!4472 (ite c!125331 call!64459 (ite c!125330 call!64455 call!64454)) (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1305283 () Bool)

(declare-fun e!744570 () Bool)

(declare-fun get!21226 (ValueCell!16575 V!51699) V!51699)

(declare-fun dynLambda!3513 (Int (_ BitVec 64)) V!51699)

(assert (=> b!1305283 (= e!744570 (= (apply!1061 lt!584385 (select (arr!41921 _keys!1741) from!2144)) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1305283 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42471 _values!1445)))))

(assert (=> b!1305283 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun b!1305284 () Bool)

(declare-fun e!744568 () ListLongMap!20479)

(declare-fun e!744573 () ListLongMap!20479)

(assert (=> b!1305284 (= e!744568 e!744573)))

(assert (=> b!1305284 (= c!125330 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64454 () Bool)

(declare-fun call!64457 () ListLongMap!20479)

(assert (=> bm!64454 (= call!64457 call!64460)))

(declare-fun b!1305285 () Bool)

(assert (=> b!1305285 (= e!744576 call!64457)))

(declare-fun b!1305286 () Bool)

(declare-fun e!744577 () Bool)

(assert (=> b!1305286 (= e!744577 (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144)))))

(declare-fun bm!64455 () Bool)

(assert (=> bm!64455 (= call!64459 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1305287 () Bool)

(declare-fun e!744571 () Bool)

(assert (=> b!1305287 (= e!744571 (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144)))))

(declare-fun b!1305288 () Bool)

(declare-fun res!866843 () Bool)

(declare-fun e!744566 () Bool)

(assert (=> b!1305288 (=> (not res!866843) (not e!744566))))

(declare-fun e!744569 () Bool)

(assert (=> b!1305288 (= res!866843 e!744569)))

(declare-fun c!125332 () Bool)

(assert (=> b!1305288 (= c!125332 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1305289 () Bool)

(assert (=> b!1305289 (= e!744568 (+!4472 call!64460 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1305290 () Bool)

(assert (=> b!1305290 (= e!744574 (= (apply!1061 lt!584385 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun bm!64456 () Bool)

(assert (=> bm!64456 (= call!64454 call!64455)))

(declare-fun b!1305291 () Bool)

(declare-fun Unit!43183 () Unit!43175)

(assert (=> b!1305291 (= e!744565 Unit!43183)))

(declare-fun b!1305292 () Bool)

(assert (=> b!1305292 (= e!744566 e!744575)))

(declare-fun c!125329 () Bool)

(assert (=> b!1305292 (= c!125329 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1305293 () Bool)

(declare-fun e!744572 () Bool)

(assert (=> b!1305293 (= e!744572 e!744570)))

(declare-fun res!866848 () Bool)

(assert (=> b!1305293 (=> (not res!866848) (not e!744570))))

(assert (=> b!1305293 (= res!866848 (contains!8334 lt!584385 (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> b!1305293 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun b!1305294 () Bool)

(declare-fun res!866851 () Bool)

(assert (=> b!1305294 (=> (not res!866851) (not e!744566))))

(assert (=> b!1305294 (= res!866851 e!744572)))

(declare-fun res!866849 () Bool)

(assert (=> b!1305294 (=> res!866849 e!744572)))

(assert (=> b!1305294 (= res!866849 (not e!744577))))

(declare-fun res!866850 () Bool)

(assert (=> b!1305294 (=> (not res!866850) (not e!744577))))

(assert (=> b!1305294 (= res!866850 (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun b!1305295 () Bool)

(assert (=> b!1305295 (= e!744569 (not call!64458))))

(declare-fun d!141913 () Bool)

(assert (=> d!141913 e!744566))

(declare-fun res!866844 () Bool)

(assert (=> d!141913 (=> (not res!866844) (not e!744566))))

(assert (=> d!141913 (= res!866844 (or (bvsge from!2144 (size!42472 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741)))))))

(declare-fun lt!584386 () ListLongMap!20479)

(assert (=> d!141913 (= lt!584385 lt!584386)))

(declare-fun lt!584387 () Unit!43175)

(assert (=> d!141913 (= lt!584387 e!744565)))

(declare-fun c!125328 () Bool)

(assert (=> d!141913 (= c!125328 e!744571)))

(declare-fun res!866847 () Bool)

(assert (=> d!141913 (=> (not res!866847) (not e!744571))))

(assert (=> d!141913 (= res!866847 (bvslt from!2144 (size!42472 _keys!1741)))))

(assert (=> d!141913 (= lt!584386 e!744568)))

(assert (=> d!141913 (= c!125331 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141913 (validMask!0 mask!2175)))

(assert (=> d!141913 (= (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!584385)))

(declare-fun b!1305282 () Bool)

(declare-fun c!125333 () Bool)

(assert (=> b!1305282 (= c!125333 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1305282 (= e!744573 e!744576)))

(declare-fun bm!64457 () Bool)

(assert (=> bm!64457 (= call!64455 call!64459)))

(declare-fun b!1305296 () Bool)

(declare-fun e!744567 () Bool)

(assert (=> b!1305296 (= e!744569 e!744567)))

(declare-fun res!866845 () Bool)

(assert (=> b!1305296 (= res!866845 call!64458)))

(assert (=> b!1305296 (=> (not res!866845) (not e!744567))))

(declare-fun b!1305297 () Bool)

(assert (=> b!1305297 (= e!744573 call!64457)))

(declare-fun b!1305298 () Bool)

(assert (=> b!1305298 (= e!744567 (= (apply!1061 lt!584385 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(assert (= (and d!141913 c!125331) b!1305289))

(assert (= (and d!141913 (not c!125331)) b!1305284))

(assert (= (and b!1305284 c!125330) b!1305297))

(assert (= (and b!1305284 (not c!125330)) b!1305282))

(assert (= (and b!1305282 c!125333) b!1305285))

(assert (= (and b!1305282 (not c!125333)) b!1305280))

(assert (= (or b!1305285 b!1305280) bm!64456))

(assert (= (or b!1305297 bm!64456) bm!64457))

(assert (= (or b!1305297 b!1305285) bm!64454))

(assert (= (or b!1305289 bm!64457) bm!64455))

(assert (= (or b!1305289 bm!64454) bm!64453))

(assert (= (and d!141913 res!866847) b!1305287))

(assert (= (and d!141913 c!125328) b!1305278))

(assert (= (and d!141913 (not c!125328)) b!1305291))

(assert (= (and d!141913 res!866844) b!1305294))

(assert (= (and b!1305294 res!866850) b!1305286))

(assert (= (and b!1305294 (not res!866849)) b!1305293))

(assert (= (and b!1305293 res!866848) b!1305283))

(assert (= (and b!1305294 res!866851) b!1305288))

(assert (= (and b!1305288 c!125332) b!1305296))

(assert (= (and b!1305288 (not c!125332)) b!1305295))

(assert (= (and b!1305296 res!866845) b!1305298))

(assert (= (or b!1305296 b!1305295) bm!64451))

(assert (= (and b!1305288 res!866843) b!1305292))

(assert (= (and b!1305292 c!125329) b!1305279))

(assert (= (and b!1305292 (not c!125329)) b!1305281))

(assert (= (and b!1305279 res!866846) b!1305290))

(assert (= (or b!1305279 b!1305281) bm!64452))

(declare-fun b_lambda!23349 () Bool)

(assert (=> (not b_lambda!23349) (not b!1305283)))

(declare-fun t!43571 () Bool)

(declare-fun tb!11415 () Bool)

(assert (=> (and start!110296 (= defaultEntry!1448 defaultEntry!1448) t!43571) tb!11415))

(declare-fun result!23851 () Bool)

(assert (=> tb!11415 (= result!23851 tp_is_empty!34947)))

(assert (=> b!1305283 t!43571))

(declare-fun b_and!47517 () Bool)

(assert (= b_and!47513 (and (=> t!43571 result!23851) b_and!47517)))

(declare-fun m!1196335 () Bool)

(assert (=> b!1305298 m!1196335))

(declare-fun m!1196337 () Bool)

(assert (=> b!1305278 m!1196337))

(declare-fun m!1196339 () Bool)

(assert (=> b!1305278 m!1196339))

(declare-fun m!1196341 () Bool)

(assert (=> b!1305278 m!1196341))

(declare-fun m!1196343 () Bool)

(assert (=> b!1305278 m!1196343))

(declare-fun m!1196345 () Bool)

(assert (=> b!1305278 m!1196345))

(declare-fun m!1196347 () Bool)

(assert (=> b!1305278 m!1196347))

(assert (=> b!1305278 m!1196337))

(assert (=> b!1305278 m!1196345))

(declare-fun m!1196349 () Bool)

(assert (=> b!1305278 m!1196349))

(declare-fun m!1196351 () Bool)

(assert (=> b!1305278 m!1196351))

(assert (=> b!1305278 m!1196201))

(assert (=> b!1305278 m!1196349))

(declare-fun m!1196353 () Bool)

(assert (=> b!1305278 m!1196353))

(assert (=> b!1305278 m!1196343))

(declare-fun m!1196355 () Bool)

(assert (=> b!1305278 m!1196355))

(declare-fun m!1196357 () Bool)

(assert (=> b!1305278 m!1196357))

(declare-fun m!1196359 () Bool)

(assert (=> b!1305278 m!1196359))

(declare-fun m!1196361 () Bool)

(assert (=> b!1305278 m!1196361))

(declare-fun m!1196363 () Bool)

(assert (=> b!1305278 m!1196363))

(declare-fun m!1196365 () Bool)

(assert (=> b!1305278 m!1196365))

(assert (=> b!1305278 m!1196173))

(declare-fun m!1196367 () Bool)

(assert (=> b!1305290 m!1196367))

(declare-fun m!1196369 () Bool)

(assert (=> bm!64452 m!1196369))

(assert (=> bm!64455 m!1196173))

(assert (=> b!1305286 m!1196201))

(assert (=> b!1305286 m!1196201))

(assert (=> b!1305286 m!1196203))

(assert (=> b!1305287 m!1196201))

(assert (=> b!1305287 m!1196201))

(assert (=> b!1305287 m!1196203))

(assert (=> d!141913 m!1196177))

(declare-fun m!1196371 () Bool)

(assert (=> bm!64451 m!1196371))

(assert (=> b!1305293 m!1196201))

(assert (=> b!1305293 m!1196201))

(declare-fun m!1196373 () Bool)

(assert (=> b!1305293 m!1196373))

(declare-fun m!1196375 () Bool)

(assert (=> b!1305289 m!1196375))

(declare-fun m!1196377 () Bool)

(assert (=> bm!64453 m!1196377))

(declare-fun m!1196379 () Bool)

(assert (=> b!1305283 m!1196379))

(declare-fun m!1196381 () Bool)

(assert (=> b!1305283 m!1196381))

(assert (=> b!1305283 m!1196201))

(declare-fun m!1196383 () Bool)

(assert (=> b!1305283 m!1196383))

(assert (=> b!1305283 m!1196381))

(assert (=> b!1305283 m!1196379))

(declare-fun m!1196385 () Bool)

(assert (=> b!1305283 m!1196385))

(assert (=> b!1305283 m!1196201))

(assert (=> b!1305131 d!141913))

(declare-fun b!1305325 () Bool)

(declare-fun e!744598 () ListLongMap!20479)

(declare-fun e!744594 () ListLongMap!20479)

(assert (=> b!1305325 (= e!744598 e!744594)))

(declare-fun c!125344 () Bool)

(assert (=> b!1305325 (= c!125344 (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144)))))

(declare-fun b!1305326 () Bool)

(declare-fun e!744596 () Bool)

(declare-fun lt!584407 () ListLongMap!20479)

(assert (=> b!1305326 (= e!744596 (= lt!584407 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1305327 () Bool)

(declare-fun e!744595 () Bool)

(declare-fun e!744592 () Bool)

(assert (=> b!1305327 (= e!744595 e!744592)))

(declare-fun c!125343 () Bool)

(declare-fun e!744597 () Bool)

(assert (=> b!1305327 (= c!125343 e!744597)))

(declare-fun res!866863 () Bool)

(assert (=> b!1305327 (=> (not res!866863) (not e!744597))))

(assert (=> b!1305327 (= res!866863 (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun b!1305328 () Bool)

(assert (=> b!1305328 (= e!744597 (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> b!1305328 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1305329 () Bool)

(declare-fun call!64463 () ListLongMap!20479)

(assert (=> b!1305329 (= e!744594 call!64463)))

(declare-fun d!141915 () Bool)

(assert (=> d!141915 e!744595))

(declare-fun res!866862 () Bool)

(assert (=> d!141915 (=> (not res!866862) (not e!744595))))

(assert (=> d!141915 (= res!866862 (not (contains!8334 lt!584407 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141915 (= lt!584407 e!744598)))

(declare-fun c!125345 () Bool)

(assert (=> d!141915 (= c!125345 (bvsge from!2144 (size!42472 _keys!1741)))))

(assert (=> d!141915 (validMask!0 mask!2175)))

(assert (=> d!141915 (= (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!584407)))

(declare-fun b!1305330 () Bool)

(assert (=> b!1305330 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741)))))

(assert (=> b!1305330 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42471 _values!1445)))))

(declare-fun e!744593 () Bool)

(assert (=> b!1305330 (= e!744593 (= (apply!1061 lt!584407 (select (arr!41921 _keys!1741) from!2144)) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1305331 () Bool)

(declare-fun isEmpty!1073 (ListLongMap!20479) Bool)

(assert (=> b!1305331 (= e!744596 (isEmpty!1073 lt!584407))))

(declare-fun b!1305332 () Bool)

(declare-fun res!866860 () Bool)

(assert (=> b!1305332 (=> (not res!866860) (not e!744595))))

(assert (=> b!1305332 (= res!866860 (not (contains!8334 lt!584407 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1305333 () Bool)

(assert (=> b!1305333 (= e!744598 (ListLongMap!20480 Nil!29955))))

(declare-fun b!1305334 () Bool)

(declare-fun lt!584411 () Unit!43175)

(declare-fun lt!584408 () Unit!43175)

(assert (=> b!1305334 (= lt!584411 lt!584408)))

(declare-fun lt!584412 () V!51699)

(declare-fun lt!584413 () (_ BitVec 64))

(declare-fun lt!584410 () (_ BitVec 64))

(declare-fun lt!584409 () ListLongMap!20479)

(assert (=> b!1305334 (not (contains!8334 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412)) lt!584410))))

(assert (=> b!1305334 (= lt!584408 (addStillNotContains!496 lt!584409 lt!584413 lt!584412 lt!584410))))

(assert (=> b!1305334 (= lt!584410 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1305334 (= lt!584412 (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1305334 (= lt!584413 (select (arr!41921 _keys!1741) from!2144))))

(assert (=> b!1305334 (= lt!584409 call!64463)))

(assert (=> b!1305334 (= e!744594 (+!4472 call!64463 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1305335 () Bool)

(assert (=> b!1305335 (= e!744592 e!744593)))

(assert (=> b!1305335 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun res!866861 () Bool)

(assert (=> b!1305335 (= res!866861 (contains!8334 lt!584407 (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> b!1305335 (=> (not res!866861) (not e!744593))))

(declare-fun b!1305336 () Bool)

(assert (=> b!1305336 (= e!744592 e!744596)))

(declare-fun c!125342 () Bool)

(assert (=> b!1305336 (= c!125342 (bvslt from!2144 (size!42472 _keys!1741)))))

(declare-fun bm!64460 () Bool)

(assert (=> bm!64460 (= call!64463 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(assert (= (and d!141915 c!125345) b!1305333))

(assert (= (and d!141915 (not c!125345)) b!1305325))

(assert (= (and b!1305325 c!125344) b!1305334))

(assert (= (and b!1305325 (not c!125344)) b!1305329))

(assert (= (or b!1305334 b!1305329) bm!64460))

(assert (= (and d!141915 res!866862) b!1305332))

(assert (= (and b!1305332 res!866860) b!1305327))

(assert (= (and b!1305327 res!866863) b!1305328))

(assert (= (and b!1305327 c!125343) b!1305335))

(assert (= (and b!1305327 (not c!125343)) b!1305336))

(assert (= (and b!1305335 res!866861) b!1305330))

(assert (= (and b!1305336 c!125342) b!1305326))

(assert (= (and b!1305336 (not c!125342)) b!1305331))

(declare-fun b_lambda!23351 () Bool)

(assert (=> (not b_lambda!23351) (not b!1305330)))

(assert (=> b!1305330 t!43571))

(declare-fun b_and!47519 () Bool)

(assert (= b_and!47517 (and (=> t!43571 result!23851) b_and!47519)))

(declare-fun b_lambda!23353 () Bool)

(assert (=> (not b_lambda!23353) (not b!1305334)))

(assert (=> b!1305334 t!43571))

(declare-fun b_and!47521 () Bool)

(assert (= b_and!47519 (and (=> t!43571 result!23851) b_and!47521)))

(assert (=> b!1305328 m!1196201))

(assert (=> b!1305328 m!1196201))

(assert (=> b!1305328 m!1196203))

(assert (=> b!1305325 m!1196201))

(assert (=> b!1305325 m!1196201))

(assert (=> b!1305325 m!1196203))

(assert (=> b!1305330 m!1196381))

(assert (=> b!1305330 m!1196381))

(assert (=> b!1305330 m!1196379))

(assert (=> b!1305330 m!1196385))

(assert (=> b!1305330 m!1196201))

(declare-fun m!1196387 () Bool)

(assert (=> b!1305330 m!1196387))

(assert (=> b!1305330 m!1196201))

(assert (=> b!1305330 m!1196379))

(declare-fun m!1196389 () Bool)

(assert (=> b!1305326 m!1196389))

(declare-fun m!1196391 () Bool)

(assert (=> b!1305331 m!1196391))

(declare-fun m!1196393 () Bool)

(assert (=> b!1305332 m!1196393))

(assert (=> b!1305334 m!1196381))

(declare-fun m!1196395 () Bool)

(assert (=> b!1305334 m!1196395))

(assert (=> b!1305334 m!1196395))

(declare-fun m!1196397 () Bool)

(assert (=> b!1305334 m!1196397))

(declare-fun m!1196399 () Bool)

(assert (=> b!1305334 m!1196399))

(assert (=> b!1305334 m!1196201))

(assert (=> b!1305334 m!1196379))

(declare-fun m!1196401 () Bool)

(assert (=> b!1305334 m!1196401))

(assert (=> b!1305334 m!1196381))

(assert (=> b!1305334 m!1196379))

(assert (=> b!1305334 m!1196385))

(assert (=> b!1305335 m!1196201))

(assert (=> b!1305335 m!1196201))

(declare-fun m!1196403 () Bool)

(assert (=> b!1305335 m!1196403))

(assert (=> bm!64460 m!1196389))

(declare-fun m!1196405 () Bool)

(assert (=> d!141915 m!1196405))

(assert (=> d!141915 m!1196177))

(assert (=> bm!64394 d!141915))

(declare-fun d!141917 () Bool)

(assert (=> d!141917 (= (validKeyInArray!0 (select (arr!41921 _keys!1741) from!2144)) (and (not (= (select (arr!41921 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41921 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1305137 d!141917))

(declare-fun d!141919 () Bool)

(assert (=> d!141919 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110296 d!141919))

(declare-fun d!141921 () Bool)

(assert (=> d!141921 (= (array_inv!31699 _values!1445) (bvsge (size!42471 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110296 d!141921))

(declare-fun d!141923 () Bool)

(assert (=> d!141923 (= (array_inv!31700 _keys!1741) (bvsge (size!42472 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110296 d!141923))

(declare-fun d!141925 () Bool)

(declare-fun e!744600 () Bool)

(assert (=> d!141925 e!744600))

(declare-fun res!866864 () Bool)

(assert (=> d!141925 (=> res!866864 e!744600)))

(declare-fun lt!584414 () Bool)

(assert (=> d!141925 (= res!866864 (not lt!584414))))

(declare-fun lt!584416 () Bool)

(assert (=> d!141925 (= lt!584414 lt!584416)))

(declare-fun lt!584417 () Unit!43175)

(declare-fun e!744599 () Unit!43175)

(assert (=> d!141925 (= lt!584417 e!744599)))

(declare-fun c!125346 () Bool)

(assert (=> d!141925 (= c!125346 lt!584416)))

(assert (=> d!141925 (= lt!584416 (containsKey!729 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(assert (=> d!141925 (= (contains!8334 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)) k0!1205) lt!584414)))

(declare-fun b!1305337 () Bool)

(declare-fun lt!584415 () Unit!43175)

(assert (=> b!1305337 (= e!744599 lt!584415)))

(assert (=> b!1305337 (= lt!584415 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(assert (=> b!1305337 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(declare-fun b!1305338 () Bool)

(declare-fun Unit!43184 () Unit!43175)

(assert (=> b!1305338 (= e!744599 Unit!43184)))

(declare-fun b!1305339 () Bool)

(assert (=> b!1305339 (= e!744600 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205)))))

(assert (= (and d!141925 c!125346) b!1305337))

(assert (= (and d!141925 (not c!125346)) b!1305338))

(assert (= (and d!141925 (not res!866864)) b!1305339))

(declare-fun m!1196407 () Bool)

(assert (=> d!141925 m!1196407))

(declare-fun m!1196409 () Bool)

(assert (=> b!1305337 m!1196409))

(declare-fun m!1196411 () Bool)

(assert (=> b!1305337 m!1196411))

(assert (=> b!1305337 m!1196411))

(declare-fun m!1196413 () Bool)

(assert (=> b!1305337 m!1196413))

(assert (=> b!1305339 m!1196411))

(assert (=> b!1305339 m!1196411))

(assert (=> b!1305339 m!1196413))

(assert (=> bm!64395 d!141925))

(declare-fun b!1305350 () Bool)

(declare-fun e!744611 () Bool)

(declare-fun contains!8337 (List!29959 (_ BitVec 64)) Bool)

(assert (=> b!1305350 (= e!744611 (contains!8337 Nil!29956 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305351 () Bool)

(declare-fun e!744609 () Bool)

(declare-fun e!744612 () Bool)

(assert (=> b!1305351 (= e!744609 e!744612)))

(declare-fun c!125349 () Bool)

(assert (=> b!1305351 (= c!125349 (validKeyInArray!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64463 () Bool)

(declare-fun call!64466 () Bool)

(assert (=> bm!64463 (= call!64466 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125349 (Cons!29955 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) Nil!29956) Nil!29956)))))

(declare-fun b!1305353 () Bool)

(assert (=> b!1305353 (= e!744612 call!64466)))

(declare-fun b!1305354 () Bool)

(assert (=> b!1305354 (= e!744612 call!64466)))

(declare-fun b!1305352 () Bool)

(declare-fun e!744610 () Bool)

(assert (=> b!1305352 (= e!744610 e!744609)))

(declare-fun res!866871 () Bool)

(assert (=> b!1305352 (=> (not res!866871) (not e!744609))))

(assert (=> b!1305352 (= res!866871 (not e!744611))))

(declare-fun res!866872 () Bool)

(assert (=> b!1305352 (=> (not res!866872) (not e!744611))))

(assert (=> b!1305352 (= res!866872 (validKeyInArray!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141927 () Bool)

(declare-fun res!866873 () Bool)

(assert (=> d!141927 (=> res!866873 e!744610)))

(assert (=> d!141927 (= res!866873 (bvsge #b00000000000000000000000000000000 (size!42472 _keys!1741)))))

(assert (=> d!141927 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29956) e!744610)))

(assert (= (and d!141927 (not res!866873)) b!1305352))

(assert (= (and b!1305352 res!866872) b!1305350))

(assert (= (and b!1305352 res!866871) b!1305351))

(assert (= (and b!1305351 c!125349) b!1305353))

(assert (= (and b!1305351 (not c!125349)) b!1305354))

(assert (= (or b!1305353 b!1305354) bm!64463))

(assert (=> b!1305350 m!1196257))

(assert (=> b!1305350 m!1196257))

(declare-fun m!1196415 () Bool)

(assert (=> b!1305350 m!1196415))

(assert (=> b!1305351 m!1196257))

(assert (=> b!1305351 m!1196257))

(assert (=> b!1305351 m!1196267))

(assert (=> bm!64463 m!1196257))

(declare-fun m!1196417 () Bool)

(assert (=> bm!64463 m!1196417))

(assert (=> b!1305352 m!1196257))

(assert (=> b!1305352 m!1196257))

(assert (=> b!1305352 m!1196267))

(assert (=> b!1305138 d!141927))

(declare-fun d!141929 () Bool)

(declare-fun e!744614 () Bool)

(assert (=> d!141929 e!744614))

(declare-fun res!866874 () Bool)

(assert (=> d!141929 (=> res!866874 e!744614)))

(declare-fun lt!584418 () Bool)

(assert (=> d!141929 (= res!866874 (not lt!584418))))

(declare-fun lt!584420 () Bool)

(assert (=> d!141929 (= lt!584418 lt!584420)))

(declare-fun lt!584421 () Unit!43175)

(declare-fun e!744613 () Unit!43175)

(assert (=> d!141929 (= lt!584421 e!744613)))

(declare-fun c!125350 () Bool)

(assert (=> d!141929 (= c!125350 lt!584420)))

(assert (=> d!141929 (= lt!584420 (containsKey!729 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(assert (=> d!141929 (= (contains!8334 (ListLongMap!20480 Nil!29955) k0!1205) lt!584418)))

(declare-fun b!1305355 () Bool)

(declare-fun lt!584419 () Unit!43175)

(assert (=> b!1305355 (= e!744613 lt!584419)))

(assert (=> b!1305355 (= lt!584419 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(assert (=> b!1305355 (isDefined!514 (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(declare-fun b!1305356 () Bool)

(declare-fun Unit!43185 () Unit!43175)

(assert (=> b!1305356 (= e!744613 Unit!43185)))

(declare-fun b!1305357 () Bool)

(assert (=> b!1305357 (= e!744614 (isDefined!514 (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205)))))

(assert (= (and d!141929 c!125350) b!1305355))

(assert (= (and d!141929 (not c!125350)) b!1305356))

(assert (= (and d!141929 (not res!866874)) b!1305357))

(declare-fun m!1196419 () Bool)

(assert (=> d!141929 m!1196419))

(declare-fun m!1196421 () Bool)

(assert (=> b!1305355 m!1196421))

(declare-fun m!1196423 () Bool)

(assert (=> b!1305355 m!1196423))

(assert (=> b!1305355 m!1196423))

(declare-fun m!1196425 () Bool)

(assert (=> b!1305355 m!1196425))

(assert (=> b!1305357 m!1196423))

(assert (=> b!1305357 m!1196423))

(assert (=> b!1305357 m!1196425))

(assert (=> b!1305133 d!141929))

(declare-fun d!141931 () Bool)

(assert (=> d!141931 (not (contains!8334 (ListLongMap!20480 Nil!29955) k0!1205))))

(declare-fun lt!584424 () Unit!43175)

(declare-fun choose!1946 ((_ BitVec 64)) Unit!43175)

(assert (=> d!141931 (= lt!584424 (choose!1946 k0!1205))))

(assert (=> d!141931 (= (emptyContainsNothing!235 k0!1205) lt!584424)))

(declare-fun bs!37175 () Bool)

(assert (= bs!37175 d!141931))

(assert (=> bs!37175 m!1196189))

(declare-fun m!1196427 () Bool)

(assert (=> bs!37175 m!1196427))

(assert (=> b!1305133 d!141931))

(declare-fun d!141933 () Bool)

(declare-fun e!744616 () Bool)

(assert (=> d!141933 e!744616))

(declare-fun res!866875 () Bool)

(assert (=> d!141933 (=> res!866875 e!744616)))

(declare-fun lt!584425 () Bool)

(assert (=> d!141933 (= res!866875 (not lt!584425))))

(declare-fun lt!584427 () Bool)

(assert (=> d!141933 (= lt!584425 lt!584427)))

(declare-fun lt!584428 () Unit!43175)

(declare-fun e!744615 () Unit!43175)

(assert (=> d!141933 (= lt!584428 e!744615)))

(declare-fun c!125351 () Bool)

(assert (=> d!141933 (= c!125351 lt!584427)))

(assert (=> d!141933 (= lt!584427 (containsKey!729 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(assert (=> d!141933 (= (contains!8334 (ite c!125297 lt!584223 call!64394) k0!1205) lt!584425)))

(declare-fun b!1305358 () Bool)

(declare-fun lt!584426 () Unit!43175)

(assert (=> b!1305358 (= e!744615 lt!584426)))

(assert (=> b!1305358 (= lt!584426 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(assert (=> b!1305358 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(declare-fun b!1305359 () Bool)

(declare-fun Unit!43186 () Unit!43175)

(assert (=> b!1305359 (= e!744615 Unit!43186)))

(declare-fun b!1305360 () Bool)

(assert (=> b!1305360 (= e!744616 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205)))))

(assert (= (and d!141933 c!125351) b!1305358))

(assert (= (and d!141933 (not c!125351)) b!1305359))

(assert (= (and d!141933 (not res!866875)) b!1305360))

(declare-fun m!1196429 () Bool)

(assert (=> d!141933 m!1196429))

(declare-fun m!1196431 () Bool)

(assert (=> b!1305358 m!1196431))

(declare-fun m!1196433 () Bool)

(assert (=> b!1305358 m!1196433))

(assert (=> b!1305358 m!1196433))

(declare-fun m!1196435 () Bool)

(assert (=> b!1305358 m!1196435))

(assert (=> b!1305360 m!1196433))

(assert (=> b!1305360 m!1196433))

(assert (=> b!1305360 m!1196435))

(assert (=> bm!64387 d!141933))

(declare-fun condMapEmpty!54033 () Bool)

(declare-fun mapDefault!54033 () ValueCell!16575)

(assert (=> mapNonEmpty!54027 (= condMapEmpty!54033 (= mapRest!54027 ((as const (Array (_ BitVec 32) ValueCell!16575)) mapDefault!54033)))))

(declare-fun e!744621 () Bool)

(declare-fun mapRes!54033 () Bool)

(assert (=> mapNonEmpty!54027 (= tp!103086 (and e!744621 mapRes!54033))))

(declare-fun mapIsEmpty!54033 () Bool)

(assert (=> mapIsEmpty!54033 mapRes!54033))

(declare-fun mapNonEmpty!54033 () Bool)

(declare-fun tp!103096 () Bool)

(declare-fun e!744622 () Bool)

(assert (=> mapNonEmpty!54033 (= mapRes!54033 (and tp!103096 e!744622))))

(declare-fun mapRest!54033 () (Array (_ BitVec 32) ValueCell!16575))

(declare-fun mapKey!54033 () (_ BitVec 32))

(declare-fun mapValue!54033 () ValueCell!16575)

(assert (=> mapNonEmpty!54033 (= mapRest!54027 (store mapRest!54033 mapKey!54033 mapValue!54033))))

(declare-fun b!1305367 () Bool)

(assert (=> b!1305367 (= e!744622 tp_is_empty!34947)))

(declare-fun b!1305368 () Bool)

(assert (=> b!1305368 (= e!744621 tp_is_empty!34947)))

(assert (= (and mapNonEmpty!54027 condMapEmpty!54033) mapIsEmpty!54033))

(assert (= (and mapNonEmpty!54027 (not condMapEmpty!54033)) mapNonEmpty!54033))

(assert (= (and mapNonEmpty!54033 ((_ is ValueCellFull!16575) mapValue!54033)) b!1305367))

(assert (= (and mapNonEmpty!54027 ((_ is ValueCellFull!16575) mapDefault!54033)) b!1305368))

(declare-fun m!1196437 () Bool)

(assert (=> mapNonEmpty!54033 m!1196437))

(declare-fun b_lambda!23355 () Bool)

(assert (= b_lambda!23349 (or (and start!110296 b_free!29307) b_lambda!23355)))

(declare-fun b_lambda!23357 () Bool)

(assert (= b_lambda!23353 (or (and start!110296 b_free!29307) b_lambda!23357)))

(declare-fun b_lambda!23359 () Bool)

(assert (= b_lambda!23351 (or (and start!110296 b_free!29307) b_lambda!23359)))

(check-sat (not b!1305216) (not d!141907) (not b!1305290) (not b!1305278) (not d!141901) (not b_lambda!23355) (not d!141915) (not b_lambda!23359) (not b!1305337) (not b!1305326) (not b!1305350) (not d!141899) (not b!1305357) (not bm!64436) (not b!1305351) (not b!1305325) (not b!1305287) (not b!1305328) (not b!1305283) (not d!141925) (not b!1305352) (not b!1305335) (not b!1305286) (not d!141913) (not b!1305332) (not b!1305233) (not b_next!29307) (not d!141931) (not mapNonEmpty!54033) (not b!1305235) (not b!1305298) b_and!47521 (not b!1305207) (not b!1305339) (not d!141909) (not bm!64453) (not bm!64451) (not b!1305210) (not b!1305229) (not b!1305293) (not b_lambda!23357) (not b!1305218) (not d!141911) (not bm!64455) (not b!1305289) (not bm!64460) (not d!141929) (not b!1305215) (not bm!64463) (not b!1305231) (not d!141903) (not b!1305217) (not b!1305330) tp_is_empty!34947 (not d!141905) (not bm!64452) (not b!1305331) (not d!141897) (not b!1305358) (not d!141933) (not b!1305355) (not b!1305334) (not b!1305360))
(check-sat b_and!47521 (not b_next!29307))
(get-model)

(declare-fun d!141935 () Bool)

(declare-fun isEmpty!1074 (Option!762) Bool)

(assert (=> d!141935 (= (isDefined!514 (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1074 (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37176 () Bool)

(assert (= bs!37176 d!141935))

(assert (=> bs!37176 m!1196331))

(declare-fun m!1196439 () Bool)

(assert (=> bs!37176 m!1196439))

(assert (=> b!1305235 d!141935))

(declare-fun b!1305377 () Bool)

(declare-fun e!744627 () Option!762)

(assert (=> b!1305377 (= e!744627 (Some!761 (_2!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(declare-fun b!1305380 () Bool)

(declare-fun e!744628 () Option!762)

(assert (=> b!1305380 (= e!744628 None!760)))

(declare-fun b!1305378 () Bool)

(assert (=> b!1305378 (= e!744627 e!744628)))

(declare-fun c!125357 () Bool)

(assert (=> b!1305378 (= c!125357 (and ((_ is Cons!29954) (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun d!141937 () Bool)

(declare-fun c!125356 () Bool)

(assert (=> d!141937 (= c!125356 (and ((_ is Cons!29954) (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141937 (= (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744627)))

(declare-fun b!1305379 () Bool)

(assert (=> b!1305379 (= e!744628 (getValueByKey!711 (t!43567 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141937 c!125356) b!1305377))

(assert (= (and d!141937 (not c!125356)) b!1305378))

(assert (= (and b!1305378 c!125357) b!1305379))

(assert (= (and b!1305378 (not c!125357)) b!1305380))

(declare-fun m!1196441 () Bool)

(assert (=> b!1305379 m!1196441))

(assert (=> b!1305235 d!141937))

(declare-fun d!141939 () Bool)

(declare-fun get!21227 (Option!762) V!51699)

(assert (=> d!141939 (= (apply!1061 lt!584385 (select (arr!41921 _keys!1741) from!2144)) (get!21227 (getValueByKey!711 (toList!10255 lt!584385) (select (arr!41921 _keys!1741) from!2144))))))

(declare-fun bs!37177 () Bool)

(assert (= bs!37177 d!141939))

(assert (=> bs!37177 m!1196201))

(declare-fun m!1196443 () Bool)

(assert (=> bs!37177 m!1196443))

(assert (=> bs!37177 m!1196443))

(declare-fun m!1196445 () Bool)

(assert (=> bs!37177 m!1196445))

(assert (=> b!1305283 d!141939))

(declare-fun d!141941 () Bool)

(declare-fun c!125360 () Bool)

(assert (=> d!141941 (= c!125360 ((_ is ValueCellFull!16575) (select (arr!41920 _values!1445) from!2144)))))

(declare-fun e!744631 () V!51699)

(assert (=> d!141941 (= (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) e!744631)))

(declare-fun b!1305385 () Bool)

(declare-fun get!21228 (ValueCell!16575 V!51699) V!51699)

(assert (=> b!1305385 (= e!744631 (get!21228 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1305386 () Bool)

(declare-fun get!21229 (ValueCell!16575 V!51699) V!51699)

(assert (=> b!1305386 (= e!744631 (get!21229 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141941 c!125360) b!1305385))

(assert (= (and d!141941 (not c!125360)) b!1305386))

(assert (=> b!1305385 m!1196381))

(assert (=> b!1305385 m!1196379))

(declare-fun m!1196447 () Bool)

(assert (=> b!1305385 m!1196447))

(assert (=> b!1305386 m!1196381))

(assert (=> b!1305386 m!1196379))

(declare-fun m!1196449 () Bool)

(assert (=> b!1305386 m!1196449))

(assert (=> b!1305283 d!141941))

(declare-fun d!141943 () Bool)

(assert (=> d!141943 (= (apply!1061 lt!584385 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21227 (getValueByKey!711 (toList!10255 lt!584385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37178 () Bool)

(assert (= bs!37178 d!141943))

(declare-fun m!1196451 () Bool)

(assert (=> bs!37178 m!1196451))

(assert (=> bs!37178 m!1196451))

(declare-fun m!1196453 () Bool)

(assert (=> bs!37178 m!1196453))

(assert (=> b!1305298 d!141943))

(declare-fun d!141945 () Bool)

(assert (=> d!141945 (isDefined!514 (getValueByKey!711 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!584431 () Unit!43175)

(declare-fun choose!1947 (List!29958 (_ BitVec 64)) Unit!43175)

(assert (=> d!141945 (= lt!584431 (choose!1947 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!744634 () Bool)

(assert (=> d!141945 e!744634))

(declare-fun res!866878 () Bool)

(assert (=> d!141945 (=> (not res!866878) (not e!744634))))

(declare-fun isStrictlySorted!871 (List!29958) Bool)

(assert (=> d!141945 (= res!866878 (isStrictlySorted!871 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141945 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!584431)))

(declare-fun b!1305389 () Bool)

(assert (=> b!1305389 (= e!744634 (containsKey!729 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141945 res!866878) b!1305389))

(assert (=> d!141945 m!1196331))

(assert (=> d!141945 m!1196331))

(assert (=> d!141945 m!1196333))

(declare-fun m!1196455 () Bool)

(assert (=> d!141945 m!1196455))

(declare-fun m!1196457 () Bool)

(assert (=> d!141945 m!1196457))

(assert (=> b!1305389 m!1196327))

(assert (=> b!1305233 d!141945))

(assert (=> b!1305233 d!141935))

(assert (=> b!1305233 d!141937))

(declare-fun d!141947 () Bool)

(declare-fun e!744636 () Bool)

(assert (=> d!141947 e!744636))

(declare-fun res!866879 () Bool)

(assert (=> d!141947 (=> res!866879 e!744636)))

(declare-fun lt!584432 () Bool)

(assert (=> d!141947 (= res!866879 (not lt!584432))))

(declare-fun lt!584434 () Bool)

(assert (=> d!141947 (= lt!584432 lt!584434)))

(declare-fun lt!584435 () Unit!43175)

(declare-fun e!744635 () Unit!43175)

(assert (=> d!141947 (= lt!584435 e!744635)))

(declare-fun c!125361 () Bool)

(assert (=> d!141947 (= c!125361 lt!584434)))

(assert (=> d!141947 (= lt!584434 (containsKey!729 (toList!10255 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> d!141947 (= (contains!8334 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205) lt!584432)))

(declare-fun b!1305390 () Bool)

(declare-fun lt!584433 () Unit!43175)

(assert (=> b!1305390 (= e!744635 lt!584433)))

(assert (=> b!1305390 (= lt!584433 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> b!1305390 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-fun b!1305391 () Bool)

(declare-fun Unit!43187 () Unit!43175)

(assert (=> b!1305391 (= e!744635 Unit!43187)))

(declare-fun b!1305392 () Bool)

(assert (=> b!1305392 (= e!744636 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205)))))

(assert (= (and d!141947 c!125361) b!1305390))

(assert (= (and d!141947 (not c!125361)) b!1305391))

(assert (= (and d!141947 (not res!866879)) b!1305392))

(declare-fun m!1196459 () Bool)

(assert (=> d!141947 m!1196459))

(declare-fun m!1196461 () Bool)

(assert (=> b!1305390 m!1196461))

(declare-fun m!1196463 () Bool)

(assert (=> b!1305390 m!1196463))

(assert (=> b!1305390 m!1196463))

(declare-fun m!1196465 () Bool)

(assert (=> b!1305390 m!1196465))

(assert (=> b!1305392 m!1196463))

(assert (=> b!1305392 m!1196463))

(assert (=> b!1305392 m!1196465))

(assert (=> d!141901 d!141947))

(declare-fun d!141949 () Bool)

(declare-fun e!744637 () Bool)

(assert (=> d!141949 e!744637))

(declare-fun res!866881 () Bool)

(assert (=> d!141949 (=> (not res!866881) (not e!744637))))

(declare-fun lt!584438 () ListLongMap!20479)

(assert (=> d!141949 (= res!866881 (contains!8334 lt!584438 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!584436 () List!29958)

(assert (=> d!141949 (= lt!584438 (ListLongMap!20480 lt!584436))))

(declare-fun lt!584439 () Unit!43175)

(declare-fun lt!584437 () Unit!43175)

(assert (=> d!141949 (= lt!584439 lt!584437)))

(assert (=> d!141949 (= (getValueByKey!711 lt!584436 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141949 (= lt!584437 (lemmaContainsTupThenGetReturnValue!355 lt!584436 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141949 (= lt!584436 (insertStrictlySorted!484 (toList!10255 lt!584223) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141949 (= (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!584438)))

(declare-fun b!1305393 () Bool)

(declare-fun res!866880 () Bool)

(assert (=> b!1305393 (=> (not res!866880) (not e!744637))))

(assert (=> b!1305393 (= res!866880 (= (getValueByKey!711 (toList!10255 lt!584438) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1305394 () Bool)

(assert (=> b!1305394 (= e!744637 (contains!8336 (toList!10255 lt!584438) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141949 res!866881) b!1305393))

(assert (= (and b!1305393 res!866880) b!1305394))

(declare-fun m!1196467 () Bool)

(assert (=> d!141949 m!1196467))

(declare-fun m!1196469 () Bool)

(assert (=> d!141949 m!1196469))

(declare-fun m!1196471 () Bool)

(assert (=> d!141949 m!1196471))

(declare-fun m!1196473 () Bool)

(assert (=> d!141949 m!1196473))

(declare-fun m!1196475 () Bool)

(assert (=> b!1305393 m!1196475))

(declare-fun m!1196477 () Bool)

(assert (=> b!1305394 m!1196477))

(assert (=> d!141901 d!141949))

(declare-fun d!141951 () Bool)

(assert (=> d!141951 (not (contains!8334 (+!4472 lt!584223 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(assert (=> d!141951 true))

(declare-fun _$36!381 () Unit!43175)

(assert (=> d!141951 (= (choose!1944 lt!584223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205) _$36!381)))

(declare-fun bs!37179 () Bool)

(assert (= bs!37179 d!141951))

(assert (=> bs!37179 m!1196293))

(assert (=> bs!37179 m!1196293))

(assert (=> bs!37179 m!1196295))

(assert (=> d!141901 d!141951))

(declare-fun d!141953 () Bool)

(declare-fun e!744639 () Bool)

(assert (=> d!141953 e!744639))

(declare-fun res!866882 () Bool)

(assert (=> d!141953 (=> res!866882 e!744639)))

(declare-fun lt!584440 () Bool)

(assert (=> d!141953 (= res!866882 (not lt!584440))))

(declare-fun lt!584442 () Bool)

(assert (=> d!141953 (= lt!584440 lt!584442)))

(declare-fun lt!584443 () Unit!43175)

(declare-fun e!744638 () Unit!43175)

(assert (=> d!141953 (= lt!584443 e!744638)))

(declare-fun c!125362 () Bool)

(assert (=> d!141953 (= c!125362 lt!584442)))

(assert (=> d!141953 (= lt!584442 (containsKey!729 (toList!10255 lt!584223) k0!1205))))

(assert (=> d!141953 (= (contains!8334 lt!584223 k0!1205) lt!584440)))

(declare-fun b!1305396 () Bool)

(declare-fun lt!584441 () Unit!43175)

(assert (=> b!1305396 (= e!744638 lt!584441)))

(assert (=> b!1305396 (= lt!584441 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584223) k0!1205))))

(assert (=> b!1305396 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584223) k0!1205))))

(declare-fun b!1305397 () Bool)

(declare-fun Unit!43188 () Unit!43175)

(assert (=> b!1305397 (= e!744638 Unit!43188)))

(declare-fun b!1305398 () Bool)

(assert (=> b!1305398 (= e!744639 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584223) k0!1205)))))

(assert (= (and d!141953 c!125362) b!1305396))

(assert (= (and d!141953 (not c!125362)) b!1305397))

(assert (= (and d!141953 (not res!866882)) b!1305398))

(declare-fun m!1196479 () Bool)

(assert (=> d!141953 m!1196479))

(declare-fun m!1196481 () Bool)

(assert (=> b!1305396 m!1196481))

(declare-fun m!1196483 () Bool)

(assert (=> b!1305396 m!1196483))

(assert (=> b!1305396 m!1196483))

(declare-fun m!1196485 () Bool)

(assert (=> b!1305396 m!1196485))

(assert (=> b!1305398 m!1196483))

(assert (=> b!1305398 m!1196483))

(assert (=> b!1305398 m!1196485))

(assert (=> d!141901 d!141953))

(declare-fun d!141955 () Bool)

(declare-fun e!744641 () Bool)

(assert (=> d!141955 e!744641))

(declare-fun res!866883 () Bool)

(assert (=> d!141955 (=> res!866883 e!744641)))

(declare-fun lt!584444 () Bool)

(assert (=> d!141955 (= res!866883 (not lt!584444))))

(declare-fun lt!584446 () Bool)

(assert (=> d!141955 (= lt!584444 lt!584446)))

(declare-fun lt!584447 () Unit!43175)

(declare-fun e!744640 () Unit!43175)

(assert (=> d!141955 (= lt!584447 e!744640)))

(declare-fun c!125363 () Bool)

(assert (=> d!141955 (= c!125363 lt!584446)))

(assert (=> d!141955 (= lt!584446 (containsKey!729 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141955 (= (contains!8334 lt!584301 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!584444)))

(declare-fun b!1305399 () Bool)

(declare-fun lt!584445 () Unit!43175)

(assert (=> b!1305399 (= e!744640 lt!584445)))

(assert (=> b!1305399 (= lt!584445 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> b!1305399 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1305400 () Bool)

(declare-fun Unit!43189 () Unit!43175)

(assert (=> b!1305400 (= e!744640 Unit!43189)))

(declare-fun b!1305401 () Bool)

(assert (=> b!1305401 (= e!744641 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (= (and d!141955 c!125363) b!1305399))

(assert (= (and d!141955 (not c!125363)) b!1305400))

(assert (= (and d!141955 (not res!866883)) b!1305401))

(declare-fun m!1196487 () Bool)

(assert (=> d!141955 m!1196487))

(declare-fun m!1196489 () Bool)

(assert (=> b!1305399 m!1196489))

(assert (=> b!1305399 m!1196289))

(assert (=> b!1305399 m!1196289))

(declare-fun m!1196491 () Bool)

(assert (=> b!1305399 m!1196491))

(assert (=> b!1305401 m!1196289))

(assert (=> b!1305401 m!1196289))

(assert (=> b!1305401 m!1196491))

(assert (=> d!141899 d!141955))

(declare-fun b!1305402 () Bool)

(declare-fun e!744642 () Option!762)

(assert (=> b!1305402 (= e!744642 (Some!761 (_2!11415 (h!31163 lt!584299))))))

(declare-fun b!1305405 () Bool)

(declare-fun e!744643 () Option!762)

(assert (=> b!1305405 (= e!744643 None!760)))

(declare-fun b!1305403 () Bool)

(assert (=> b!1305403 (= e!744642 e!744643)))

(declare-fun c!125365 () Bool)

(assert (=> b!1305403 (= c!125365 (and ((_ is Cons!29954) lt!584299) (not (= (_1!11415 (h!31163 lt!584299)) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun d!141957 () Bool)

(declare-fun c!125364 () Bool)

(assert (=> d!141957 (= c!125364 (and ((_ is Cons!29954) lt!584299) (= (_1!11415 (h!31163 lt!584299)) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (=> d!141957 (= (getValueByKey!711 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) e!744642)))

(declare-fun b!1305404 () Bool)

(assert (=> b!1305404 (= e!744643 (getValueByKey!711 (t!43567 lt!584299) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (= (and d!141957 c!125364) b!1305402))

(assert (= (and d!141957 (not c!125364)) b!1305403))

(assert (= (and b!1305403 c!125365) b!1305404))

(assert (= (and b!1305403 (not c!125365)) b!1305405))

(declare-fun m!1196493 () Bool)

(assert (=> b!1305404 m!1196493))

(assert (=> d!141899 d!141957))

(declare-fun d!141959 () Bool)

(assert (=> d!141959 (= (getValueByKey!711 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!584450 () Unit!43175)

(declare-fun choose!1948 (List!29958 (_ BitVec 64) V!51699) Unit!43175)

(assert (=> d!141959 (= lt!584450 (choose!1948 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun e!744646 () Bool)

(assert (=> d!141959 e!744646))

(declare-fun res!866888 () Bool)

(assert (=> d!141959 (=> (not res!866888) (not e!744646))))

(assert (=> d!141959 (= res!866888 (isStrictlySorted!871 lt!584299))))

(assert (=> d!141959 (= (lemmaContainsTupThenGetReturnValue!355 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!584450)))

(declare-fun b!1305410 () Bool)

(declare-fun res!866889 () Bool)

(assert (=> b!1305410 (=> (not res!866889) (not e!744646))))

(assert (=> b!1305410 (= res!866889 (containsKey!729 lt!584299 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1305411 () Bool)

(assert (=> b!1305411 (= e!744646 (contains!8336 lt!584299 (tuple2!22811 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (= (and d!141959 res!866888) b!1305410))

(assert (= (and b!1305410 res!866889) b!1305411))

(assert (=> d!141959 m!1196283))

(declare-fun m!1196495 () Bool)

(assert (=> d!141959 m!1196495))

(declare-fun m!1196497 () Bool)

(assert (=> d!141959 m!1196497))

(declare-fun m!1196499 () Bool)

(assert (=> b!1305410 m!1196499))

(declare-fun m!1196501 () Bool)

(assert (=> b!1305411 m!1196501))

(assert (=> d!141899 d!141959))

(declare-fun b!1305432 () Bool)

(declare-fun e!744660 () Bool)

(declare-fun lt!584453 () List!29958)

(assert (=> b!1305432 (= e!744660 (contains!8336 lt!584453 (tuple2!22811 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1305433 () Bool)

(declare-fun e!744658 () List!29958)

(declare-fun call!64474 () List!29958)

(assert (=> b!1305433 (= e!744658 call!64474)))

(declare-fun b!1305434 () Bool)

(declare-fun e!744659 () List!29958)

(assert (=> b!1305434 (= e!744659 e!744658)))

(declare-fun c!125374 () Bool)

(assert (=> b!1305434 (= c!125374 (and ((_ is Cons!29954) (toList!10255 lt!584223)) (= (_1!11415 (h!31163 (toList!10255 lt!584223))) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun bm!64470 () Bool)

(declare-fun call!64473 () List!29958)

(assert (=> bm!64470 (= call!64474 call!64473)))

(declare-fun b!1305435 () Bool)

(declare-fun c!125377 () Bool)

(assert (=> b!1305435 (= c!125377 (and ((_ is Cons!29954) (toList!10255 lt!584223)) (bvsgt (_1!11415 (h!31163 (toList!10255 lt!584223))) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun e!744661 () List!29958)

(assert (=> b!1305435 (= e!744658 e!744661)))

(declare-fun bm!64471 () Bool)

(declare-fun call!64475 () List!29958)

(assert (=> bm!64471 (= call!64475 call!64474)))

(declare-fun b!1305436 () Bool)

(assert (=> b!1305436 (= e!744659 call!64473)))

(declare-fun c!125375 () Bool)

(declare-fun e!744657 () List!29958)

(declare-fun bm!64472 () Bool)

(declare-fun $colon$colon!670 (List!29958 tuple2!22810) List!29958)

(assert (=> bm!64472 (= call!64473 ($colon$colon!670 e!744657 (ite c!125375 (h!31163 (toList!10255 lt!584223)) (tuple2!22811 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun c!125376 () Bool)

(assert (=> bm!64472 (= c!125376 c!125375)))

(declare-fun d!141961 () Bool)

(assert (=> d!141961 e!744660))

(declare-fun res!866894 () Bool)

(assert (=> d!141961 (=> (not res!866894) (not e!744660))))

(assert (=> d!141961 (= res!866894 (isStrictlySorted!871 lt!584453))))

(assert (=> d!141961 (= lt!584453 e!744659)))

(assert (=> d!141961 (= c!125375 (and ((_ is Cons!29954) (toList!10255 lt!584223)) (bvslt (_1!11415 (h!31163 (toList!10255 lt!584223))) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (=> d!141961 (isStrictlySorted!871 (toList!10255 lt!584223))))

(assert (=> d!141961 (= (insertStrictlySorted!484 (toList!10255 lt!584223) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!584453)))

(declare-fun b!1305437 () Bool)

(assert (=> b!1305437 (= e!744661 call!64475)))

(declare-fun b!1305438 () Bool)

(assert (=> b!1305438 (= e!744657 (ite c!125374 (t!43567 (toList!10255 lt!584223)) (ite c!125377 (Cons!29954 (h!31163 (toList!10255 lt!584223)) (t!43567 (toList!10255 lt!584223))) Nil!29955)))))

(declare-fun b!1305439 () Bool)

(assert (=> b!1305439 (= e!744657 (insertStrictlySorted!484 (t!43567 (toList!10255 lt!584223)) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1305440 () Bool)

(assert (=> b!1305440 (= e!744661 call!64475)))

(declare-fun b!1305441 () Bool)

(declare-fun res!866895 () Bool)

(assert (=> b!1305441 (=> (not res!866895) (not e!744660))))

(assert (=> b!1305441 (= res!866895 (containsKey!729 lt!584453 (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (= (and d!141961 c!125375) b!1305436))

(assert (= (and d!141961 (not c!125375)) b!1305434))

(assert (= (and b!1305434 c!125374) b!1305433))

(assert (= (and b!1305434 (not c!125374)) b!1305435))

(assert (= (and b!1305435 c!125377) b!1305440))

(assert (= (and b!1305435 (not c!125377)) b!1305437))

(assert (= (or b!1305440 b!1305437) bm!64471))

(assert (= (or b!1305433 bm!64471) bm!64470))

(assert (= (or b!1305436 bm!64470) bm!64472))

(assert (= (and bm!64472 c!125376) b!1305439))

(assert (= (and bm!64472 (not c!125376)) b!1305438))

(assert (= (and d!141961 res!866894) b!1305441))

(assert (= (and b!1305441 res!866895) b!1305432))

(declare-fun m!1196503 () Bool)

(assert (=> bm!64472 m!1196503))

(declare-fun m!1196505 () Bool)

(assert (=> b!1305432 m!1196505))

(declare-fun m!1196507 () Bool)

(assert (=> b!1305441 m!1196507))

(declare-fun m!1196509 () Bool)

(assert (=> d!141961 m!1196509))

(declare-fun m!1196511 () Bool)

(assert (=> d!141961 m!1196511))

(declare-fun m!1196513 () Bool)

(assert (=> b!1305439 m!1196513))

(assert (=> d!141899 d!141961))

(declare-fun d!141963 () Bool)

(assert (=> d!141963 (isDefined!514 (getValueByKey!711 (toList!10255 call!64399) k0!1205))))

(declare-fun lt!584454 () Unit!43175)

(assert (=> d!141963 (= lt!584454 (choose!1947 (toList!10255 call!64399) k0!1205))))

(declare-fun e!744662 () Bool)

(assert (=> d!141963 e!744662))

(declare-fun res!866896 () Bool)

(assert (=> d!141963 (=> (not res!866896) (not e!744662))))

(assert (=> d!141963 (= res!866896 (isStrictlySorted!871 (toList!10255 call!64399)))))

(assert (=> d!141963 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 call!64399) k0!1205) lt!584454)))

(declare-fun b!1305442 () Bool)

(assert (=> b!1305442 (= e!744662 (containsKey!729 (toList!10255 call!64399) k0!1205))))

(assert (= (and d!141963 res!866896) b!1305442))

(assert (=> d!141963 m!1196305))

(assert (=> d!141963 m!1196305))

(assert (=> d!141963 m!1196307))

(declare-fun m!1196515 () Bool)

(assert (=> d!141963 m!1196515))

(declare-fun m!1196517 () Bool)

(assert (=> d!141963 m!1196517))

(assert (=> b!1305442 m!1196301))

(assert (=> b!1305229 d!141963))

(declare-fun d!141965 () Bool)

(assert (=> d!141965 (= (isDefined!514 (getValueByKey!711 (toList!10255 call!64399) k0!1205)) (not (isEmpty!1074 (getValueByKey!711 (toList!10255 call!64399) k0!1205))))))

(declare-fun bs!37180 () Bool)

(assert (= bs!37180 d!141965))

(assert (=> bs!37180 m!1196305))

(declare-fun m!1196519 () Bool)

(assert (=> bs!37180 m!1196519))

(assert (=> b!1305229 d!141965))

(declare-fun b!1305443 () Bool)

(declare-fun e!744663 () Option!762)

(assert (=> b!1305443 (= e!744663 (Some!761 (_2!11415 (h!31163 (toList!10255 call!64399)))))))

(declare-fun b!1305446 () Bool)

(declare-fun e!744664 () Option!762)

(assert (=> b!1305446 (= e!744664 None!760)))

(declare-fun b!1305444 () Bool)

(assert (=> b!1305444 (= e!744663 e!744664)))

(declare-fun c!125379 () Bool)

(assert (=> b!1305444 (= c!125379 (and ((_ is Cons!29954) (toList!10255 call!64399)) (not (= (_1!11415 (h!31163 (toList!10255 call!64399))) k0!1205))))))

(declare-fun d!141967 () Bool)

(declare-fun c!125378 () Bool)

(assert (=> d!141967 (= c!125378 (and ((_ is Cons!29954) (toList!10255 call!64399)) (= (_1!11415 (h!31163 (toList!10255 call!64399))) k0!1205)))))

(assert (=> d!141967 (= (getValueByKey!711 (toList!10255 call!64399) k0!1205) e!744663)))

(declare-fun b!1305445 () Bool)

(assert (=> b!1305445 (= e!744664 (getValueByKey!711 (t!43567 (toList!10255 call!64399)) k0!1205))))

(assert (= (and d!141967 c!125378) b!1305443))

(assert (= (and d!141967 (not c!125378)) b!1305444))

(assert (= (and b!1305444 c!125379) b!1305445))

(assert (= (and b!1305444 (not c!125379)) b!1305446))

(declare-fun m!1196521 () Bool)

(assert (=> b!1305445 m!1196521))

(assert (=> b!1305229 d!141967))

(declare-fun d!141969 () Bool)

(declare-fun res!866901 () Bool)

(declare-fun e!744669 () Bool)

(assert (=> d!141969 (=> res!866901 e!744669)))

(assert (=> d!141969 (= res!866901 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) k0!1205)))))

(assert (=> d!141969 (= (containsKey!729 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205) e!744669)))

(declare-fun b!1305451 () Bool)

(declare-fun e!744670 () Bool)

(assert (=> b!1305451 (= e!744669 e!744670)))

(declare-fun res!866902 () Bool)

(assert (=> b!1305451 (=> (not res!866902) (not e!744670))))

(assert (=> b!1305451 (= res!866902 (and (or (not ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) (bvsle (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) k0!1205)) ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) (bvslt (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) k0!1205)))))

(declare-fun b!1305452 () Bool)

(assert (=> b!1305452 (= e!744670 (containsKey!729 (t!43567 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) k0!1205))))

(assert (= (and d!141969 (not res!866901)) b!1305451))

(assert (= (and b!1305451 res!866902) b!1305452))

(declare-fun m!1196523 () Bool)

(assert (=> b!1305452 m!1196523))

(assert (=> d!141925 d!141969))

(declare-fun d!141971 () Bool)

(assert (=> d!141971 (arrayContainsKey!0 _keys!1741 lt!584284 #b00000000000000000000000000000000)))

(declare-fun lt!584457 () Unit!43175)

(declare-fun choose!13 (array!86877 (_ BitVec 64) (_ BitVec 32)) Unit!43175)

(assert (=> d!141971 (= lt!584457 (choose!13 _keys!1741 lt!584284 #b00000000000000000000000000000000))))

(assert (=> d!141971 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!141971 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!584284 #b00000000000000000000000000000000) lt!584457)))

(declare-fun bs!37181 () Bool)

(assert (= bs!37181 d!141971))

(assert (=> bs!37181 m!1196261))

(declare-fun m!1196525 () Bool)

(assert (=> bs!37181 m!1196525))

(assert (=> b!1305207 d!141971))

(declare-fun d!141973 () Bool)

(declare-fun res!866907 () Bool)

(declare-fun e!744675 () Bool)

(assert (=> d!141973 (=> res!866907 e!744675)))

(assert (=> d!141973 (= res!866907 (= (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) lt!584284))))

(assert (=> d!141973 (= (arrayContainsKey!0 _keys!1741 lt!584284 #b00000000000000000000000000000000) e!744675)))

(declare-fun b!1305457 () Bool)

(declare-fun e!744676 () Bool)

(assert (=> b!1305457 (= e!744675 e!744676)))

(declare-fun res!866908 () Bool)

(assert (=> b!1305457 (=> (not res!866908) (not e!744676))))

(assert (=> b!1305457 (= res!866908 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(declare-fun b!1305458 () Bool)

(assert (=> b!1305458 (= e!744676 (arrayContainsKey!0 _keys!1741 lt!584284 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!141973 (not res!866907)) b!1305457))

(assert (= (and b!1305457 res!866908) b!1305458))

(assert (=> d!141973 m!1196257))

(declare-fun m!1196527 () Bool)

(assert (=> b!1305458 m!1196527))

(assert (=> b!1305207 d!141973))

(declare-fun b!1305471 () Bool)

(declare-fun c!125386 () Bool)

(declare-fun lt!584466 () (_ BitVec 64))

(assert (=> b!1305471 (= c!125386 (= lt!584466 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!744684 () SeekEntryResult!10026)

(declare-fun e!744685 () SeekEntryResult!10026)

(assert (=> b!1305471 (= e!744684 e!744685)))

(declare-fun b!1305472 () Bool)

(declare-fun lt!584465 () SeekEntryResult!10026)

(assert (=> b!1305472 (= e!744685 (MissingZero!10026 (index!42476 lt!584465)))))

(declare-fun b!1305473 () Bool)

(declare-fun e!744683 () SeekEntryResult!10026)

(assert (=> b!1305473 (= e!744683 e!744684)))

(assert (=> b!1305473 (= lt!584466 (select (arr!41921 _keys!1741) (index!42476 lt!584465)))))

(declare-fun c!125388 () Bool)

(assert (=> b!1305473 (= c!125388 (= lt!584466 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305475 () Bool)

(assert (=> b!1305475 (= e!744684 (Found!10026 (index!42476 lt!584465)))))

(declare-fun b!1305476 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86877 (_ BitVec 32)) SeekEntryResult!10026)

(assert (=> b!1305476 (= e!744685 (seekKeyOrZeroReturnVacant!0 (x!115922 lt!584465) (index!42476 lt!584465) (index!42476 lt!584465) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(declare-fun b!1305474 () Bool)

(assert (=> b!1305474 (= e!744683 Undefined!10026)))

(declare-fun d!141975 () Bool)

(declare-fun lt!584464 () SeekEntryResult!10026)

(assert (=> d!141975 (and (or ((_ is Undefined!10026) lt!584464) (not ((_ is Found!10026) lt!584464)) (and (bvsge (index!42475 lt!584464) #b00000000000000000000000000000000) (bvslt (index!42475 lt!584464) (size!42472 _keys!1741)))) (or ((_ is Undefined!10026) lt!584464) ((_ is Found!10026) lt!584464) (not ((_ is MissingZero!10026) lt!584464)) (and (bvsge (index!42474 lt!584464) #b00000000000000000000000000000000) (bvslt (index!42474 lt!584464) (size!42472 _keys!1741)))) (or ((_ is Undefined!10026) lt!584464) ((_ is Found!10026) lt!584464) ((_ is MissingZero!10026) lt!584464) (not ((_ is MissingVacant!10026) lt!584464)) (and (bvsge (index!42477 lt!584464) #b00000000000000000000000000000000) (bvslt (index!42477 lt!584464) (size!42472 _keys!1741)))) (or ((_ is Undefined!10026) lt!584464) (ite ((_ is Found!10026) lt!584464) (= (select (arr!41921 _keys!1741) (index!42475 lt!584464)) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10026) lt!584464) (= (select (arr!41921 _keys!1741) (index!42474 lt!584464)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10026) lt!584464) (= (select (arr!41921 _keys!1741) (index!42477 lt!584464)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141975 (= lt!584464 e!744683)))

(declare-fun c!125387 () Bool)

(assert (=> d!141975 (= c!125387 (and ((_ is Intermediate!10026) lt!584465) (undefined!10838 lt!584465)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86877 (_ BitVec 32)) SeekEntryResult!10026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!141975 (= lt!584465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) mask!2175) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(assert (=> d!141975 (validMask!0 mask!2175)))

(assert (=> d!141975 (= (seekEntryOrOpen!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) lt!584464)))

(assert (= (and d!141975 c!125387) b!1305474))

(assert (= (and d!141975 (not c!125387)) b!1305473))

(assert (= (and b!1305473 c!125388) b!1305475))

(assert (= (and b!1305473 (not c!125388)) b!1305471))

(assert (= (and b!1305471 c!125386) b!1305472))

(assert (= (and b!1305471 (not c!125386)) b!1305476))

(declare-fun m!1196529 () Bool)

(assert (=> b!1305473 m!1196529))

(assert (=> b!1305476 m!1196257))

(declare-fun m!1196531 () Bool)

(assert (=> b!1305476 m!1196531))

(declare-fun m!1196533 () Bool)

(assert (=> d!141975 m!1196533))

(assert (=> d!141975 m!1196177))

(declare-fun m!1196535 () Bool)

(assert (=> d!141975 m!1196535))

(assert (=> d!141975 m!1196257))

(declare-fun m!1196537 () Bool)

(assert (=> d!141975 m!1196537))

(declare-fun m!1196539 () Bool)

(assert (=> d!141975 m!1196539))

(assert (=> d!141975 m!1196537))

(assert (=> d!141975 m!1196257))

(declare-fun m!1196541 () Bool)

(assert (=> d!141975 m!1196541))

(assert (=> b!1305207 d!141975))

(declare-fun d!141977 () Bool)

(declare-fun e!744687 () Bool)

(assert (=> d!141977 e!744687))

(declare-fun res!866909 () Bool)

(assert (=> d!141977 (=> res!866909 e!744687)))

(declare-fun lt!584467 () Bool)

(assert (=> d!141977 (= res!866909 (not lt!584467))))

(declare-fun lt!584469 () Bool)

(assert (=> d!141977 (= lt!584467 lt!584469)))

(declare-fun lt!584470 () Unit!43175)

(declare-fun e!744686 () Unit!43175)

(assert (=> d!141977 (= lt!584470 e!744686)))

(declare-fun c!125389 () Bool)

(assert (=> d!141977 (= c!125389 lt!584469)))

(assert (=> d!141977 (= lt!584469 (containsKey!729 (toList!10255 lt!584407) (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> d!141977 (= (contains!8334 lt!584407 (select (arr!41921 _keys!1741) from!2144)) lt!584467)))

(declare-fun b!1305477 () Bool)

(declare-fun lt!584468 () Unit!43175)

(assert (=> b!1305477 (= e!744686 lt!584468)))

(assert (=> b!1305477 (= lt!584468 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584407) (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> b!1305477 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) (select (arr!41921 _keys!1741) from!2144)))))

(declare-fun b!1305478 () Bool)

(declare-fun Unit!43190 () Unit!43175)

(assert (=> b!1305478 (= e!744686 Unit!43190)))

(declare-fun b!1305479 () Bool)

(assert (=> b!1305479 (= e!744687 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) (select (arr!41921 _keys!1741) from!2144))))))

(assert (= (and d!141977 c!125389) b!1305477))

(assert (= (and d!141977 (not c!125389)) b!1305478))

(assert (= (and d!141977 (not res!866909)) b!1305479))

(assert (=> d!141977 m!1196201))

(declare-fun m!1196543 () Bool)

(assert (=> d!141977 m!1196543))

(assert (=> b!1305477 m!1196201))

(declare-fun m!1196545 () Bool)

(assert (=> b!1305477 m!1196545))

(assert (=> b!1305477 m!1196201))

(declare-fun m!1196547 () Bool)

(assert (=> b!1305477 m!1196547))

(assert (=> b!1305477 m!1196547))

(declare-fun m!1196549 () Bool)

(assert (=> b!1305477 m!1196549))

(assert (=> b!1305479 m!1196201))

(assert (=> b!1305479 m!1196547))

(assert (=> b!1305479 m!1196547))

(assert (=> b!1305479 m!1196549))

(assert (=> b!1305335 d!141977))

(declare-fun b!1305480 () Bool)

(declare-fun e!744694 () ListLongMap!20479)

(declare-fun e!744690 () ListLongMap!20479)

(assert (=> b!1305480 (= e!744694 e!744690)))

(declare-fun c!125392 () Bool)

(assert (=> b!1305480 (= c!125392 (validKeyInArray!0 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(declare-fun e!744692 () Bool)

(declare-fun lt!584471 () ListLongMap!20479)

(declare-fun b!1305481 () Bool)

(assert (=> b!1305481 (= e!744692 (= lt!584471 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1305482 () Bool)

(declare-fun e!744691 () Bool)

(declare-fun e!744688 () Bool)

(assert (=> b!1305482 (= e!744691 e!744688)))

(declare-fun c!125391 () Bool)

(declare-fun e!744693 () Bool)

(assert (=> b!1305482 (= c!125391 e!744693)))

(declare-fun res!866913 () Bool)

(assert (=> b!1305482 (=> (not res!866913) (not e!744693))))

(assert (=> b!1305482 (= res!866913 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(declare-fun b!1305483 () Bool)

(assert (=> b!1305483 (= e!744693 (validKeyInArray!0 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1305483 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1305484 () Bool)

(declare-fun call!64476 () ListLongMap!20479)

(assert (=> b!1305484 (= e!744690 call!64476)))

(declare-fun d!141979 () Bool)

(assert (=> d!141979 e!744691))

(declare-fun res!866912 () Bool)

(assert (=> d!141979 (=> (not res!866912) (not e!744691))))

(assert (=> d!141979 (= res!866912 (not (contains!8334 lt!584471 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141979 (= lt!584471 e!744694)))

(declare-fun c!125393 () Bool)

(assert (=> d!141979 (= c!125393 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(assert (=> d!141979 (validMask!0 mask!2175)))

(assert (=> d!141979 (= (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) lt!584471)))

(declare-fun b!1305485 () Bool)

(assert (=> b!1305485 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(assert (=> b!1305485 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42471 _values!1445)))))

(declare-fun e!744689 () Bool)

(assert (=> b!1305485 (= e!744689 (= (apply!1061 lt!584471 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))) (get!21226 (select (arr!41920 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1305486 () Bool)

(assert (=> b!1305486 (= e!744692 (isEmpty!1073 lt!584471))))

(declare-fun b!1305487 () Bool)

(declare-fun res!866910 () Bool)

(assert (=> b!1305487 (=> (not res!866910) (not e!744691))))

(assert (=> b!1305487 (= res!866910 (not (contains!8334 lt!584471 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1305488 () Bool)

(assert (=> b!1305488 (= e!744694 (ListLongMap!20480 Nil!29955))))

(declare-fun b!1305489 () Bool)

(declare-fun lt!584475 () Unit!43175)

(declare-fun lt!584472 () Unit!43175)

(assert (=> b!1305489 (= lt!584475 lt!584472)))

(declare-fun lt!584474 () (_ BitVec 64))

(declare-fun lt!584477 () (_ BitVec 64))

(declare-fun lt!584473 () ListLongMap!20479)

(declare-fun lt!584476 () V!51699)

(assert (=> b!1305489 (not (contains!8334 (+!4472 lt!584473 (tuple2!22811 lt!584477 lt!584476)) lt!584474))))

(assert (=> b!1305489 (= lt!584472 (addStillNotContains!496 lt!584473 lt!584477 lt!584476 lt!584474))))

(assert (=> b!1305489 (= lt!584474 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1305489 (= lt!584476 (get!21226 (select (arr!41920 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1305489 (= lt!584477 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (=> b!1305489 (= lt!584473 call!64476)))

(assert (=> b!1305489 (= e!744690 (+!4472 call!64476 (tuple2!22811 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)) (get!21226 (select (arr!41920 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1305490 () Bool)

(assert (=> b!1305490 (= e!744688 e!744689)))

(assert (=> b!1305490 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(declare-fun res!866911 () Bool)

(assert (=> b!1305490 (= res!866911 (contains!8334 lt!584471 (select (arr!41921 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1305490 (=> (not res!866911) (not e!744689))))

(declare-fun b!1305491 () Bool)

(assert (=> b!1305491 (= e!744688 e!744692)))

(declare-fun c!125390 () Bool)

(assert (=> b!1305491 (= c!125390 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(declare-fun bm!64473 () Bool)

(assert (=> bm!64473 (= call!64476 (getCurrentListMapNoExtraKeys!6189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448))))

(assert (= (and d!141979 c!125393) b!1305488))

(assert (= (and d!141979 (not c!125393)) b!1305480))

(assert (= (and b!1305480 c!125392) b!1305489))

(assert (= (and b!1305480 (not c!125392)) b!1305484))

(assert (= (or b!1305489 b!1305484) bm!64473))

(assert (= (and d!141979 res!866912) b!1305487))

(assert (= (and b!1305487 res!866910) b!1305482))

(assert (= (and b!1305482 res!866913) b!1305483))

(assert (= (and b!1305482 c!125391) b!1305490))

(assert (= (and b!1305482 (not c!125391)) b!1305491))

(assert (= (and b!1305490 res!866911) b!1305485))

(assert (= (and b!1305491 c!125390) b!1305481))

(assert (= (and b!1305491 (not c!125390)) b!1305486))

(declare-fun b_lambda!23361 () Bool)

(assert (=> (not b_lambda!23361) (not b!1305485)))

(assert (=> b!1305485 t!43571))

(declare-fun b_and!47523 () Bool)

(assert (= b_and!47521 (and (=> t!43571 result!23851) b_and!47523)))

(declare-fun b_lambda!23363 () Bool)

(assert (=> (not b_lambda!23363) (not b!1305489)))

(assert (=> b!1305489 t!43571))

(declare-fun b_and!47525 () Bool)

(assert (= b_and!47523 (and (=> t!43571 result!23851) b_and!47525)))

(declare-fun m!1196551 () Bool)

(assert (=> b!1305483 m!1196551))

(assert (=> b!1305483 m!1196551))

(declare-fun m!1196553 () Bool)

(assert (=> b!1305483 m!1196553))

(assert (=> b!1305480 m!1196551))

(assert (=> b!1305480 m!1196551))

(assert (=> b!1305480 m!1196553))

(declare-fun m!1196555 () Bool)

(assert (=> b!1305485 m!1196555))

(assert (=> b!1305485 m!1196555))

(assert (=> b!1305485 m!1196379))

(declare-fun m!1196557 () Bool)

(assert (=> b!1305485 m!1196557))

(assert (=> b!1305485 m!1196551))

(declare-fun m!1196559 () Bool)

(assert (=> b!1305485 m!1196559))

(assert (=> b!1305485 m!1196551))

(assert (=> b!1305485 m!1196379))

(declare-fun m!1196561 () Bool)

(assert (=> b!1305481 m!1196561))

(declare-fun m!1196563 () Bool)

(assert (=> b!1305486 m!1196563))

(declare-fun m!1196565 () Bool)

(assert (=> b!1305487 m!1196565))

(assert (=> b!1305489 m!1196555))

(declare-fun m!1196567 () Bool)

(assert (=> b!1305489 m!1196567))

(assert (=> b!1305489 m!1196567))

(declare-fun m!1196569 () Bool)

(assert (=> b!1305489 m!1196569))

(declare-fun m!1196571 () Bool)

(assert (=> b!1305489 m!1196571))

(assert (=> b!1305489 m!1196551))

(assert (=> b!1305489 m!1196379))

(declare-fun m!1196573 () Bool)

(assert (=> b!1305489 m!1196573))

(assert (=> b!1305489 m!1196555))

(assert (=> b!1305489 m!1196379))

(assert (=> b!1305489 m!1196557))

(assert (=> b!1305490 m!1196551))

(assert (=> b!1305490 m!1196551))

(declare-fun m!1196575 () Bool)

(assert (=> b!1305490 m!1196575))

(assert (=> bm!64473 m!1196561))

(declare-fun m!1196577 () Bool)

(assert (=> d!141979 m!1196577))

(assert (=> d!141979 m!1196177))

(assert (=> bm!64460 d!141979))

(assert (=> d!141931 d!141929))

(declare-fun d!141981 () Bool)

(assert (=> d!141981 (not (contains!8334 (ListLongMap!20480 Nil!29955) k0!1205))))

(assert (=> d!141981 true))

(declare-fun _$29!204 () Unit!43175)

(assert (=> d!141981 (= (choose!1946 k0!1205) _$29!204)))

(declare-fun bs!37182 () Bool)

(assert (= bs!37182 d!141981))

(assert (=> bs!37182 m!1196189))

(assert (=> d!141931 d!141981))

(declare-fun d!141983 () Bool)

(assert (=> d!141983 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(declare-fun lt!584478 () Unit!43175)

(assert (=> d!141983 (= lt!584478 (choose!1947 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(declare-fun e!744695 () Bool)

(assert (=> d!141983 e!744695))

(declare-fun res!866914 () Bool)

(assert (=> d!141983 (=> (not res!866914) (not e!744695))))

(assert (=> d!141983 (= res!866914 (isStrictlySorted!871 (toList!10255 (ite c!125297 lt!584223 call!64394))))))

(assert (=> d!141983 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205) lt!584478)))

(declare-fun b!1305492 () Bool)

(assert (=> b!1305492 (= e!744695 (containsKey!729 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))

(assert (= (and d!141983 res!866914) b!1305492))

(assert (=> d!141983 m!1196433))

(assert (=> d!141983 m!1196433))

(assert (=> d!141983 m!1196435))

(declare-fun m!1196579 () Bool)

(assert (=> d!141983 m!1196579))

(declare-fun m!1196581 () Bool)

(assert (=> d!141983 m!1196581))

(assert (=> b!1305492 m!1196429))

(assert (=> b!1305358 d!141983))

(declare-fun d!141985 () Bool)

(assert (=> d!141985 (= (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205)) (not (isEmpty!1074 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205))))))

(declare-fun bs!37183 () Bool)

(assert (= bs!37183 d!141985))

(assert (=> bs!37183 m!1196433))

(declare-fun m!1196583 () Bool)

(assert (=> bs!37183 m!1196583))

(assert (=> b!1305358 d!141985))

(declare-fun b!1305493 () Bool)

(declare-fun e!744696 () Option!762)

(assert (=> b!1305493 (= e!744696 (Some!761 (_2!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394))))))))

(declare-fun b!1305496 () Bool)

(declare-fun e!744697 () Option!762)

(assert (=> b!1305496 (= e!744697 None!760)))

(declare-fun b!1305494 () Bool)

(assert (=> b!1305494 (= e!744696 e!744697)))

(declare-fun c!125395 () Bool)

(assert (=> b!1305494 (= c!125395 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 call!64394))) (not (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394)))) k0!1205))))))

(declare-fun c!125394 () Bool)

(declare-fun d!141987 () Bool)

(assert (=> d!141987 (= c!125394 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 call!64394))) (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394)))) k0!1205)))))

(assert (=> d!141987 (= (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205) e!744696)))

(declare-fun b!1305495 () Bool)

(assert (=> b!1305495 (= e!744697 (getValueByKey!711 (t!43567 (toList!10255 (ite c!125297 lt!584223 call!64394))) k0!1205))))

(assert (= (and d!141987 c!125394) b!1305493))

(assert (= (and d!141987 (not c!125394)) b!1305494))

(assert (= (and b!1305494 c!125395) b!1305495))

(assert (= (and b!1305494 (not c!125395)) b!1305496))

(declare-fun m!1196585 () Bool)

(assert (=> b!1305495 m!1196585))

(assert (=> b!1305358 d!141987))

(assert (=> b!1305360 d!141985))

(assert (=> b!1305360 d!141987))

(declare-fun d!141989 () Bool)

(declare-fun e!744699 () Bool)

(assert (=> d!141989 e!744699))

(declare-fun res!866915 () Bool)

(assert (=> d!141989 (=> res!866915 e!744699)))

(declare-fun lt!584479 () Bool)

(assert (=> d!141989 (= res!866915 (not lt!584479))))

(declare-fun lt!584481 () Bool)

(assert (=> d!141989 (= lt!584479 lt!584481)))

(declare-fun lt!584482 () Unit!43175)

(declare-fun e!744698 () Unit!43175)

(assert (=> d!141989 (= lt!584482 e!744698)))

(declare-fun c!125396 () Bool)

(assert (=> d!141989 (= c!125396 lt!584481)))

(assert (=> d!141989 (= lt!584481 (containsKey!729 (toList!10255 lt!584385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141989 (= (contains!8334 lt!584385 #b0000000000000000000000000000000000000000000000000000000000000000) lt!584479)))

(declare-fun b!1305497 () Bool)

(declare-fun lt!584480 () Unit!43175)

(assert (=> b!1305497 (= e!744698 lt!584480)))

(assert (=> b!1305497 (= lt!584480 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1305497 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1305498 () Bool)

(declare-fun Unit!43191 () Unit!43175)

(assert (=> b!1305498 (= e!744698 Unit!43191)))

(declare-fun b!1305499 () Bool)

(assert (=> b!1305499 (= e!744699 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141989 c!125396) b!1305497))

(assert (= (and d!141989 (not c!125396)) b!1305498))

(assert (= (and d!141989 (not res!866915)) b!1305499))

(declare-fun m!1196587 () Bool)

(assert (=> d!141989 m!1196587))

(declare-fun m!1196589 () Bool)

(assert (=> b!1305497 m!1196589))

(assert (=> b!1305497 m!1196451))

(assert (=> b!1305497 m!1196451))

(declare-fun m!1196591 () Bool)

(assert (=> b!1305497 m!1196591))

(assert (=> b!1305499 m!1196451))

(assert (=> b!1305499 m!1196451))

(assert (=> b!1305499 m!1196591))

(assert (=> bm!64451 d!141989))

(declare-fun d!141991 () Bool)

(declare-fun res!866916 () Bool)

(declare-fun e!744700 () Bool)

(assert (=> d!141991 (=> res!866916 e!744700)))

(assert (=> d!141991 (= res!866916 (and ((_ is Cons!29954) (toList!10255 call!64399)) (= (_1!11415 (h!31163 (toList!10255 call!64399))) k0!1205)))))

(assert (=> d!141991 (= (containsKey!729 (toList!10255 call!64399) k0!1205) e!744700)))

(declare-fun b!1305500 () Bool)

(declare-fun e!744701 () Bool)

(assert (=> b!1305500 (= e!744700 e!744701)))

(declare-fun res!866917 () Bool)

(assert (=> b!1305500 (=> (not res!866917) (not e!744701))))

(assert (=> b!1305500 (= res!866917 (and (or (not ((_ is Cons!29954) (toList!10255 call!64399))) (bvsle (_1!11415 (h!31163 (toList!10255 call!64399))) k0!1205)) ((_ is Cons!29954) (toList!10255 call!64399)) (bvslt (_1!11415 (h!31163 (toList!10255 call!64399))) k0!1205)))))

(declare-fun b!1305501 () Bool)

(assert (=> b!1305501 (= e!744701 (containsKey!729 (t!43567 (toList!10255 call!64399)) k0!1205))))

(assert (= (and d!141991 (not res!866916)) b!1305500))

(assert (= (and b!1305500 res!866917) b!1305501))

(declare-fun m!1196593 () Bool)

(assert (=> b!1305501 m!1196593))

(assert (=> d!141903 d!141991))

(declare-fun d!141993 () Bool)

(assert (=> d!141993 (= (apply!1061 lt!584385 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21227 (getValueByKey!711 (toList!10255 lt!584385) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37184 () Bool)

(assert (= bs!37184 d!141993))

(declare-fun m!1196595 () Bool)

(assert (=> bs!37184 m!1196595))

(assert (=> bs!37184 m!1196595))

(declare-fun m!1196597 () Bool)

(assert (=> bs!37184 m!1196597))

(assert (=> b!1305290 d!141993))

(declare-fun d!141995 () Bool)

(declare-fun isEmpty!1075 (List!29958) Bool)

(assert (=> d!141995 (= (isEmpty!1073 lt!584407) (isEmpty!1075 (toList!10255 lt!584407)))))

(declare-fun bs!37185 () Bool)

(assert (= bs!37185 d!141995))

(declare-fun m!1196599 () Bool)

(assert (=> bs!37185 m!1196599))

(assert (=> b!1305331 d!141995))

(declare-fun d!141997 () Bool)

(declare-fun lt!584485 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!655 (List!29958) (InoxSet tuple2!22810))

(assert (=> d!141997 (= lt!584485 (select (content!655 (toList!10255 lt!584301)) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun e!744706 () Bool)

(assert (=> d!141997 (= lt!584485 e!744706)))

(declare-fun res!866923 () Bool)

(assert (=> d!141997 (=> (not res!866923) (not e!744706))))

(assert (=> d!141997 (= res!866923 ((_ is Cons!29954) (toList!10255 lt!584301)))))

(assert (=> d!141997 (= (contains!8336 (toList!10255 lt!584301) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!584485)))

(declare-fun b!1305506 () Bool)

(declare-fun e!744707 () Bool)

(assert (=> b!1305506 (= e!744706 e!744707)))

(declare-fun res!866922 () Bool)

(assert (=> b!1305506 (=> res!866922 e!744707)))

(assert (=> b!1305506 (= res!866922 (= (h!31163 (toList!10255 lt!584301)) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1305507 () Bool)

(assert (=> b!1305507 (= e!744707 (contains!8336 (t!43567 (toList!10255 lt!584301)) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141997 res!866923) b!1305506))

(assert (= (and b!1305506 (not res!866922)) b!1305507))

(declare-fun m!1196601 () Bool)

(assert (=> d!141997 m!1196601))

(declare-fun m!1196603 () Bool)

(assert (=> d!141997 m!1196603))

(declare-fun m!1196605 () Bool)

(assert (=> b!1305507 m!1196605))

(assert (=> b!1305218 d!141997))

(declare-fun d!141999 () Bool)

(declare-fun e!744709 () Bool)

(assert (=> d!141999 e!744709))

(declare-fun res!866924 () Bool)

(assert (=> d!141999 (=> res!866924 e!744709)))

(declare-fun lt!584486 () Bool)

(assert (=> d!141999 (= res!866924 (not lt!584486))))

(declare-fun lt!584488 () Bool)

(assert (=> d!141999 (= lt!584486 lt!584488)))

(declare-fun lt!584489 () Unit!43175)

(declare-fun e!744708 () Unit!43175)

(assert (=> d!141999 (= lt!584489 e!744708)))

(declare-fun c!125397 () Bool)

(assert (=> d!141999 (= c!125397 lt!584488)))

(assert (=> d!141999 (= lt!584488 (containsKey!729 (toList!10255 lt!584385) (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> d!141999 (= (contains!8334 lt!584385 (select (arr!41921 _keys!1741) from!2144)) lt!584486)))

(declare-fun b!1305508 () Bool)

(declare-fun lt!584487 () Unit!43175)

(assert (=> b!1305508 (= e!744708 lt!584487)))

(assert (=> b!1305508 (= lt!584487 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584385) (select (arr!41921 _keys!1741) from!2144)))))

(assert (=> b!1305508 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) (select (arr!41921 _keys!1741) from!2144)))))

(declare-fun b!1305509 () Bool)

(declare-fun Unit!43192 () Unit!43175)

(assert (=> b!1305509 (= e!744708 Unit!43192)))

(declare-fun b!1305510 () Bool)

(assert (=> b!1305510 (= e!744709 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) (select (arr!41921 _keys!1741) from!2144))))))

(assert (= (and d!141999 c!125397) b!1305508))

(assert (= (and d!141999 (not c!125397)) b!1305509))

(assert (= (and d!141999 (not res!866924)) b!1305510))

(assert (=> d!141999 m!1196201))

(declare-fun m!1196607 () Bool)

(assert (=> d!141999 m!1196607))

(assert (=> b!1305508 m!1196201))

(declare-fun m!1196609 () Bool)

(assert (=> b!1305508 m!1196609))

(assert (=> b!1305508 m!1196201))

(assert (=> b!1305508 m!1196443))

(assert (=> b!1305508 m!1196443))

(declare-fun m!1196611 () Bool)

(assert (=> b!1305508 m!1196611))

(assert (=> b!1305510 m!1196201))

(assert (=> b!1305510 m!1196443))

(assert (=> b!1305510 m!1196443))

(assert (=> b!1305510 m!1196611))

(assert (=> b!1305293 d!141999))

(declare-fun d!142001 () Bool)

(assert (=> d!142001 (contains!8334 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387)) lt!584384)))

(declare-fun lt!584492 () Unit!43175)

(declare-fun choose!1949 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> d!142001 (= lt!584492 (choose!1949 lt!584391 lt!584373 zeroValue!1387 lt!584384))))

(assert (=> d!142001 (contains!8334 lt!584391 lt!584384)))

(assert (=> d!142001 (= (addStillContains!1130 lt!584391 lt!584373 zeroValue!1387 lt!584384) lt!584492)))

(declare-fun bs!37186 () Bool)

(assert (= bs!37186 d!142001))

(assert (=> bs!37186 m!1196337))

(assert (=> bs!37186 m!1196337))

(assert (=> bs!37186 m!1196339))

(declare-fun m!1196613 () Bool)

(assert (=> bs!37186 m!1196613))

(declare-fun m!1196615 () Bool)

(assert (=> bs!37186 m!1196615))

(assert (=> b!1305278 d!142001))

(declare-fun d!142003 () Bool)

(assert (=> d!142003 (= (apply!1061 (+!4472 lt!584376 (tuple2!22811 lt!584382 minValue!1387)) lt!584379) (apply!1061 lt!584376 lt!584379))))

(declare-fun lt!584495 () Unit!43175)

(declare-fun choose!1950 (ListLongMap!20479 (_ BitVec 64) V!51699 (_ BitVec 64)) Unit!43175)

(assert (=> d!142003 (= lt!584495 (choose!1950 lt!584376 lt!584382 minValue!1387 lt!584379))))

(declare-fun e!744712 () Bool)

(assert (=> d!142003 e!744712))

(declare-fun res!866927 () Bool)

(assert (=> d!142003 (=> (not res!866927) (not e!744712))))

(assert (=> d!142003 (= res!866927 (contains!8334 lt!584376 lt!584379))))

(assert (=> d!142003 (= (addApplyDifferent!564 lt!584376 lt!584382 minValue!1387 lt!584379) lt!584495)))

(declare-fun b!1305515 () Bool)

(assert (=> b!1305515 (= e!744712 (not (= lt!584379 lt!584382)))))

(assert (= (and d!142003 res!866927) b!1305515))

(assert (=> d!142003 m!1196343))

(assert (=> d!142003 m!1196343))

(assert (=> d!142003 m!1196355))

(assert (=> d!142003 m!1196341))

(declare-fun m!1196617 () Bool)

(assert (=> d!142003 m!1196617))

(declare-fun m!1196619 () Bool)

(assert (=> d!142003 m!1196619))

(assert (=> b!1305278 d!142003))

(declare-fun d!142005 () Bool)

(declare-fun e!744713 () Bool)

(assert (=> d!142005 e!744713))

(declare-fun res!866929 () Bool)

(assert (=> d!142005 (=> (not res!866929) (not e!744713))))

(declare-fun lt!584498 () ListLongMap!20479)

(assert (=> d!142005 (= res!866929 (contains!8334 lt!584498 (_1!11415 (tuple2!22811 lt!584373 zeroValue!1387))))))

(declare-fun lt!584496 () List!29958)

(assert (=> d!142005 (= lt!584498 (ListLongMap!20480 lt!584496))))

(declare-fun lt!584499 () Unit!43175)

(declare-fun lt!584497 () Unit!43175)

(assert (=> d!142005 (= lt!584499 lt!584497)))

(assert (=> d!142005 (= (getValueByKey!711 lt!584496 (_1!11415 (tuple2!22811 lt!584373 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584373 zeroValue!1387))))))

(assert (=> d!142005 (= lt!584497 (lemmaContainsTupThenGetReturnValue!355 lt!584496 (_1!11415 (tuple2!22811 lt!584373 zeroValue!1387)) (_2!11415 (tuple2!22811 lt!584373 zeroValue!1387))))))

(assert (=> d!142005 (= lt!584496 (insertStrictlySorted!484 (toList!10255 lt!584391) (_1!11415 (tuple2!22811 lt!584373 zeroValue!1387)) (_2!11415 (tuple2!22811 lt!584373 zeroValue!1387))))))

(assert (=> d!142005 (= (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387)) lt!584498)))

(declare-fun b!1305516 () Bool)

(declare-fun res!866928 () Bool)

(assert (=> b!1305516 (=> (not res!866928) (not e!744713))))

(assert (=> b!1305516 (= res!866928 (= (getValueByKey!711 (toList!10255 lt!584498) (_1!11415 (tuple2!22811 lt!584373 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584373 zeroValue!1387)))))))

(declare-fun b!1305517 () Bool)

(assert (=> b!1305517 (= e!744713 (contains!8336 (toList!10255 lt!584498) (tuple2!22811 lt!584373 zeroValue!1387)))))

(assert (= (and d!142005 res!866929) b!1305516))

(assert (= (and b!1305516 res!866928) b!1305517))

(declare-fun m!1196621 () Bool)

(assert (=> d!142005 m!1196621))

(declare-fun m!1196623 () Bool)

(assert (=> d!142005 m!1196623))

(declare-fun m!1196625 () Bool)

(assert (=> d!142005 m!1196625))

(declare-fun m!1196627 () Bool)

(assert (=> d!142005 m!1196627))

(declare-fun m!1196629 () Bool)

(assert (=> b!1305516 m!1196629))

(declare-fun m!1196631 () Bool)

(assert (=> b!1305517 m!1196631))

(assert (=> b!1305278 d!142005))

(declare-fun d!142007 () Bool)

(declare-fun e!744715 () Bool)

(assert (=> d!142007 e!744715))

(declare-fun res!866930 () Bool)

(assert (=> d!142007 (=> res!866930 e!744715)))

(declare-fun lt!584500 () Bool)

(assert (=> d!142007 (= res!866930 (not lt!584500))))

(declare-fun lt!584502 () Bool)

(assert (=> d!142007 (= lt!584500 lt!584502)))

(declare-fun lt!584503 () Unit!43175)

(declare-fun e!744714 () Unit!43175)

(assert (=> d!142007 (= lt!584503 e!744714)))

(declare-fun c!125398 () Bool)

(assert (=> d!142007 (= c!125398 lt!584502)))

(assert (=> d!142007 (= lt!584502 (containsKey!729 (toList!10255 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387))) lt!584384))))

(assert (=> d!142007 (= (contains!8334 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387)) lt!584384) lt!584500)))

(declare-fun b!1305518 () Bool)

(declare-fun lt!584501 () Unit!43175)

(assert (=> b!1305518 (= e!744714 lt!584501)))

(assert (=> b!1305518 (= lt!584501 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387))) lt!584384))))

(assert (=> b!1305518 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387))) lt!584384))))

(declare-fun b!1305519 () Bool)

(declare-fun Unit!43193 () Unit!43175)

(assert (=> b!1305519 (= e!744714 Unit!43193)))

(declare-fun b!1305520 () Bool)

(assert (=> b!1305520 (= e!744715 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584391 (tuple2!22811 lt!584373 zeroValue!1387))) lt!584384)))))

(assert (= (and d!142007 c!125398) b!1305518))

(assert (= (and d!142007 (not c!125398)) b!1305519))

(assert (= (and d!142007 (not res!866930)) b!1305520))

(declare-fun m!1196633 () Bool)

(assert (=> d!142007 m!1196633))

(declare-fun m!1196635 () Bool)

(assert (=> b!1305518 m!1196635))

(declare-fun m!1196637 () Bool)

(assert (=> b!1305518 m!1196637))

(assert (=> b!1305518 m!1196637))

(declare-fun m!1196639 () Bool)

(assert (=> b!1305518 m!1196639))

(assert (=> b!1305520 m!1196637))

(assert (=> b!1305520 m!1196637))

(assert (=> b!1305520 m!1196639))

(assert (=> b!1305278 d!142007))

(declare-fun d!142009 () Bool)

(assert (=> d!142009 (= (apply!1061 (+!4472 lt!584376 (tuple2!22811 lt!584382 minValue!1387)) lt!584379) (get!21227 (getValueByKey!711 (toList!10255 (+!4472 lt!584376 (tuple2!22811 lt!584382 minValue!1387))) lt!584379)))))

(declare-fun bs!37187 () Bool)

(assert (= bs!37187 d!142009))

(declare-fun m!1196641 () Bool)

(assert (=> bs!37187 m!1196641))

(assert (=> bs!37187 m!1196641))

(declare-fun m!1196643 () Bool)

(assert (=> bs!37187 m!1196643))

(assert (=> b!1305278 d!142009))

(declare-fun d!142011 () Bool)

(assert (=> d!142011 (= (apply!1061 (+!4472 lt!584381 (tuple2!22811 lt!584374 zeroValue!1387)) lt!584392) (get!21227 (getValueByKey!711 (toList!10255 (+!4472 lt!584381 (tuple2!22811 lt!584374 zeroValue!1387))) lt!584392)))))

(declare-fun bs!37188 () Bool)

(assert (= bs!37188 d!142011))

(declare-fun m!1196645 () Bool)

(assert (=> bs!37188 m!1196645))

(assert (=> bs!37188 m!1196645))

(declare-fun m!1196647 () Bool)

(assert (=> bs!37188 m!1196647))

(assert (=> b!1305278 d!142011))

(declare-fun d!142013 () Bool)

(assert (=> d!142013 (= (apply!1061 lt!584381 lt!584392) (get!21227 (getValueByKey!711 (toList!10255 lt!584381) lt!584392)))))

(declare-fun bs!37189 () Bool)

(assert (= bs!37189 d!142013))

(declare-fun m!1196649 () Bool)

(assert (=> bs!37189 m!1196649))

(assert (=> bs!37189 m!1196649))

(declare-fun m!1196651 () Bool)

(assert (=> bs!37189 m!1196651))

(assert (=> b!1305278 d!142013))

(declare-fun d!142015 () Bool)

(assert (=> d!142015 (= (apply!1061 (+!4472 lt!584381 (tuple2!22811 lt!584374 zeroValue!1387)) lt!584392) (apply!1061 lt!584381 lt!584392))))

(declare-fun lt!584504 () Unit!43175)

(assert (=> d!142015 (= lt!584504 (choose!1950 lt!584381 lt!584374 zeroValue!1387 lt!584392))))

(declare-fun e!744716 () Bool)

(assert (=> d!142015 e!744716))

(declare-fun res!866931 () Bool)

(assert (=> d!142015 (=> (not res!866931) (not e!744716))))

(assert (=> d!142015 (= res!866931 (contains!8334 lt!584381 lt!584392))))

(assert (=> d!142015 (= (addApplyDifferent!564 lt!584381 lt!584374 zeroValue!1387 lt!584392) lt!584504)))

(declare-fun b!1305521 () Bool)

(assert (=> b!1305521 (= e!744716 (not (= lt!584392 lt!584374)))))

(assert (= (and d!142015 res!866931) b!1305521))

(assert (=> d!142015 m!1196345))

(assert (=> d!142015 m!1196345))

(assert (=> d!142015 m!1196347))

(assert (=> d!142015 m!1196361))

(declare-fun m!1196653 () Bool)

(assert (=> d!142015 m!1196653))

(declare-fun m!1196655 () Bool)

(assert (=> d!142015 m!1196655))

(assert (=> b!1305278 d!142015))

(declare-fun d!142017 () Bool)

(assert (=> d!142017 (= (apply!1061 lt!584377 lt!584380) (get!21227 (getValueByKey!711 (toList!10255 lt!584377) lt!584380)))))

(declare-fun bs!37190 () Bool)

(assert (= bs!37190 d!142017))

(declare-fun m!1196657 () Bool)

(assert (=> bs!37190 m!1196657))

(assert (=> bs!37190 m!1196657))

(declare-fun m!1196659 () Bool)

(assert (=> bs!37190 m!1196659))

(assert (=> b!1305278 d!142017))

(declare-fun d!142019 () Bool)

(declare-fun e!744717 () Bool)

(assert (=> d!142019 e!744717))

(declare-fun res!866933 () Bool)

(assert (=> d!142019 (=> (not res!866933) (not e!744717))))

(declare-fun lt!584507 () ListLongMap!20479)

(assert (=> d!142019 (= res!866933 (contains!8334 lt!584507 (_1!11415 (tuple2!22811 lt!584382 minValue!1387))))))

(declare-fun lt!584505 () List!29958)

(assert (=> d!142019 (= lt!584507 (ListLongMap!20480 lt!584505))))

(declare-fun lt!584508 () Unit!43175)

(declare-fun lt!584506 () Unit!43175)

(assert (=> d!142019 (= lt!584508 lt!584506)))

(assert (=> d!142019 (= (getValueByKey!711 lt!584505 (_1!11415 (tuple2!22811 lt!584382 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584382 minValue!1387))))))

(assert (=> d!142019 (= lt!584506 (lemmaContainsTupThenGetReturnValue!355 lt!584505 (_1!11415 (tuple2!22811 lt!584382 minValue!1387)) (_2!11415 (tuple2!22811 lt!584382 minValue!1387))))))

(assert (=> d!142019 (= lt!584505 (insertStrictlySorted!484 (toList!10255 lt!584376) (_1!11415 (tuple2!22811 lt!584382 minValue!1387)) (_2!11415 (tuple2!22811 lt!584382 minValue!1387))))))

(assert (=> d!142019 (= (+!4472 lt!584376 (tuple2!22811 lt!584382 minValue!1387)) lt!584507)))

(declare-fun b!1305522 () Bool)

(declare-fun res!866932 () Bool)

(assert (=> b!1305522 (=> (not res!866932) (not e!744717))))

(assert (=> b!1305522 (= res!866932 (= (getValueByKey!711 (toList!10255 lt!584507) (_1!11415 (tuple2!22811 lt!584382 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584382 minValue!1387)))))))

(declare-fun b!1305523 () Bool)

(assert (=> b!1305523 (= e!744717 (contains!8336 (toList!10255 lt!584507) (tuple2!22811 lt!584382 minValue!1387)))))

(assert (= (and d!142019 res!866933) b!1305522))

(assert (= (and b!1305522 res!866932) b!1305523))

(declare-fun m!1196661 () Bool)

(assert (=> d!142019 m!1196661))

(declare-fun m!1196663 () Bool)

(assert (=> d!142019 m!1196663))

(declare-fun m!1196665 () Bool)

(assert (=> d!142019 m!1196665))

(declare-fun m!1196667 () Bool)

(assert (=> d!142019 m!1196667))

(declare-fun m!1196669 () Bool)

(assert (=> b!1305522 m!1196669))

(declare-fun m!1196671 () Bool)

(assert (=> b!1305523 m!1196671))

(assert (=> b!1305278 d!142019))

(declare-fun d!142021 () Bool)

(assert (=> d!142021 (= (apply!1061 lt!584376 lt!584379) (get!21227 (getValueByKey!711 (toList!10255 lt!584376) lt!584379)))))

(declare-fun bs!37191 () Bool)

(assert (= bs!37191 d!142021))

(declare-fun m!1196673 () Bool)

(assert (=> bs!37191 m!1196673))

(assert (=> bs!37191 m!1196673))

(declare-fun m!1196675 () Bool)

(assert (=> bs!37191 m!1196675))

(assert (=> b!1305278 d!142021))

(declare-fun d!142023 () Bool)

(declare-fun e!744718 () Bool)

(assert (=> d!142023 e!744718))

(declare-fun res!866935 () Bool)

(assert (=> d!142023 (=> (not res!866935) (not e!744718))))

(declare-fun lt!584511 () ListLongMap!20479)

(assert (=> d!142023 (= res!866935 (contains!8334 lt!584511 (_1!11415 (tuple2!22811 lt!584390 minValue!1387))))))

(declare-fun lt!584509 () List!29958)

(assert (=> d!142023 (= lt!584511 (ListLongMap!20480 lt!584509))))

(declare-fun lt!584512 () Unit!43175)

(declare-fun lt!584510 () Unit!43175)

(assert (=> d!142023 (= lt!584512 lt!584510)))

(assert (=> d!142023 (= (getValueByKey!711 lt!584509 (_1!11415 (tuple2!22811 lt!584390 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584390 minValue!1387))))))

(assert (=> d!142023 (= lt!584510 (lemmaContainsTupThenGetReturnValue!355 lt!584509 (_1!11415 (tuple2!22811 lt!584390 minValue!1387)) (_2!11415 (tuple2!22811 lt!584390 minValue!1387))))))

(assert (=> d!142023 (= lt!584509 (insertStrictlySorted!484 (toList!10255 lt!584377) (_1!11415 (tuple2!22811 lt!584390 minValue!1387)) (_2!11415 (tuple2!22811 lt!584390 minValue!1387))))))

(assert (=> d!142023 (= (+!4472 lt!584377 (tuple2!22811 lt!584390 minValue!1387)) lt!584511)))

(declare-fun b!1305524 () Bool)

(declare-fun res!866934 () Bool)

(assert (=> b!1305524 (=> (not res!866934) (not e!744718))))

(assert (=> b!1305524 (= res!866934 (= (getValueByKey!711 (toList!10255 lt!584511) (_1!11415 (tuple2!22811 lt!584390 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584390 minValue!1387)))))))

(declare-fun b!1305525 () Bool)

(assert (=> b!1305525 (= e!744718 (contains!8336 (toList!10255 lt!584511) (tuple2!22811 lt!584390 minValue!1387)))))

(assert (= (and d!142023 res!866935) b!1305524))

(assert (= (and b!1305524 res!866934) b!1305525))

(declare-fun m!1196677 () Bool)

(assert (=> d!142023 m!1196677))

(declare-fun m!1196679 () Bool)

(assert (=> d!142023 m!1196679))

(declare-fun m!1196681 () Bool)

(assert (=> d!142023 m!1196681))

(declare-fun m!1196683 () Bool)

(assert (=> d!142023 m!1196683))

(declare-fun m!1196685 () Bool)

(assert (=> b!1305524 m!1196685))

(declare-fun m!1196687 () Bool)

(assert (=> b!1305525 m!1196687))

(assert (=> b!1305278 d!142023))

(assert (=> b!1305278 d!141915))

(declare-fun d!142025 () Bool)

(assert (=> d!142025 (= (apply!1061 (+!4472 lt!584377 (tuple2!22811 lt!584390 minValue!1387)) lt!584380) (get!21227 (getValueByKey!711 (toList!10255 (+!4472 lt!584377 (tuple2!22811 lt!584390 minValue!1387))) lt!584380)))))

(declare-fun bs!37192 () Bool)

(assert (= bs!37192 d!142025))

(declare-fun m!1196689 () Bool)

(assert (=> bs!37192 m!1196689))

(assert (=> bs!37192 m!1196689))

(declare-fun m!1196691 () Bool)

(assert (=> bs!37192 m!1196691))

(assert (=> b!1305278 d!142025))

(declare-fun d!142027 () Bool)

(declare-fun e!744719 () Bool)

(assert (=> d!142027 e!744719))

(declare-fun res!866937 () Bool)

(assert (=> d!142027 (=> (not res!866937) (not e!744719))))

(declare-fun lt!584515 () ListLongMap!20479)

(assert (=> d!142027 (= res!866937 (contains!8334 lt!584515 (_1!11415 (tuple2!22811 lt!584374 zeroValue!1387))))))

(declare-fun lt!584513 () List!29958)

(assert (=> d!142027 (= lt!584515 (ListLongMap!20480 lt!584513))))

(declare-fun lt!584516 () Unit!43175)

(declare-fun lt!584514 () Unit!43175)

(assert (=> d!142027 (= lt!584516 lt!584514)))

(assert (=> d!142027 (= (getValueByKey!711 lt!584513 (_1!11415 (tuple2!22811 lt!584374 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584374 zeroValue!1387))))))

(assert (=> d!142027 (= lt!584514 (lemmaContainsTupThenGetReturnValue!355 lt!584513 (_1!11415 (tuple2!22811 lt!584374 zeroValue!1387)) (_2!11415 (tuple2!22811 lt!584374 zeroValue!1387))))))

(assert (=> d!142027 (= lt!584513 (insertStrictlySorted!484 (toList!10255 lt!584381) (_1!11415 (tuple2!22811 lt!584374 zeroValue!1387)) (_2!11415 (tuple2!22811 lt!584374 zeroValue!1387))))))

(assert (=> d!142027 (= (+!4472 lt!584381 (tuple2!22811 lt!584374 zeroValue!1387)) lt!584515)))

(declare-fun b!1305526 () Bool)

(declare-fun res!866936 () Bool)

(assert (=> b!1305526 (=> (not res!866936) (not e!744719))))

(assert (=> b!1305526 (= res!866936 (= (getValueByKey!711 (toList!10255 lt!584515) (_1!11415 (tuple2!22811 lt!584374 zeroValue!1387))) (Some!761 (_2!11415 (tuple2!22811 lt!584374 zeroValue!1387)))))))

(declare-fun b!1305527 () Bool)

(assert (=> b!1305527 (= e!744719 (contains!8336 (toList!10255 lt!584515) (tuple2!22811 lt!584374 zeroValue!1387)))))

(assert (= (and d!142027 res!866937) b!1305526))

(assert (= (and b!1305526 res!866936) b!1305527))

(declare-fun m!1196693 () Bool)

(assert (=> d!142027 m!1196693))

(declare-fun m!1196695 () Bool)

(assert (=> d!142027 m!1196695))

(declare-fun m!1196697 () Bool)

(assert (=> d!142027 m!1196697))

(declare-fun m!1196699 () Bool)

(assert (=> d!142027 m!1196699))

(declare-fun m!1196701 () Bool)

(assert (=> b!1305526 m!1196701))

(declare-fun m!1196703 () Bool)

(assert (=> b!1305527 m!1196703))

(assert (=> b!1305278 d!142027))

(declare-fun d!142029 () Bool)

(assert (=> d!142029 (= (apply!1061 (+!4472 lt!584377 (tuple2!22811 lt!584390 minValue!1387)) lt!584380) (apply!1061 lt!584377 lt!584380))))

(declare-fun lt!584517 () Unit!43175)

(assert (=> d!142029 (= lt!584517 (choose!1950 lt!584377 lt!584390 minValue!1387 lt!584380))))

(declare-fun e!744720 () Bool)

(assert (=> d!142029 e!744720))

(declare-fun res!866938 () Bool)

(assert (=> d!142029 (=> (not res!866938) (not e!744720))))

(assert (=> d!142029 (= res!866938 (contains!8334 lt!584377 lt!584380))))

(assert (=> d!142029 (= (addApplyDifferent!564 lt!584377 lt!584390 minValue!1387 lt!584380) lt!584517)))

(declare-fun b!1305528 () Bool)

(assert (=> b!1305528 (= e!744720 (not (= lt!584380 lt!584390)))))

(assert (= (and d!142029 res!866938) b!1305528))

(assert (=> d!142029 m!1196349))

(assert (=> d!142029 m!1196349))

(assert (=> d!142029 m!1196353))

(assert (=> d!142029 m!1196359))

(declare-fun m!1196705 () Bool)

(assert (=> d!142029 m!1196705))

(declare-fun m!1196707 () Bool)

(assert (=> d!142029 m!1196707))

(assert (=> b!1305278 d!142029))

(declare-fun d!142031 () Bool)

(assert (=> d!142031 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(declare-fun lt!584518 () Unit!43175)

(assert (=> d!142031 (= lt!584518 (choose!1947 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(declare-fun e!744721 () Bool)

(assert (=> d!142031 e!744721))

(declare-fun res!866939 () Bool)

(assert (=> d!142031 (=> (not res!866939) (not e!744721))))

(assert (=> d!142031 (= res!866939 (isStrictlySorted!871 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))))))

(assert (=> d!142031 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205) lt!584518)))

(declare-fun b!1305529 () Bool)

(assert (=> b!1305529 (= e!744721 (containsKey!729 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(assert (= (and d!142031 res!866939) b!1305529))

(assert (=> d!142031 m!1196411))

(assert (=> d!142031 m!1196411))

(assert (=> d!142031 m!1196413))

(declare-fun m!1196709 () Bool)

(assert (=> d!142031 m!1196709))

(declare-fun m!1196711 () Bool)

(assert (=> d!142031 m!1196711))

(assert (=> b!1305529 m!1196407))

(assert (=> b!1305337 d!142031))

(declare-fun d!142033 () Bool)

(assert (=> d!142033 (= (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205)) (not (isEmpty!1074 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205))))))

(declare-fun bs!37193 () Bool)

(assert (= bs!37193 d!142033))

(assert (=> bs!37193 m!1196411))

(declare-fun m!1196713 () Bool)

(assert (=> bs!37193 m!1196713))

(assert (=> b!1305337 d!142033))

(declare-fun b!1305530 () Bool)

(declare-fun e!744722 () Option!762)

(assert (=> b!1305530 (= e!744722 (Some!761 (_2!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))))))))

(declare-fun b!1305533 () Bool)

(declare-fun e!744723 () Option!762)

(assert (=> b!1305533 (= e!744723 None!760)))

(declare-fun b!1305531 () Bool)

(assert (=> b!1305531 (= e!744722 e!744723)))

(declare-fun c!125400 () Bool)

(assert (=> b!1305531 (= c!125400 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) (not (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) k0!1205))))))

(declare-fun c!125399 () Bool)

(declare-fun d!142035 () Bool)

(assert (=> d!142035 (= c!125399 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))))) k0!1205)))))

(assert (=> d!142035 (= (getValueByKey!711 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216))) k0!1205) e!744722)))

(declare-fun b!1305532 () Bool)

(assert (=> b!1305532 (= e!744723 (getValueByKey!711 (t!43567 (toList!10255 (ite c!125297 lt!584219 (ite c!125299 lt!584221 lt!584216)))) k0!1205))))

(assert (= (and d!142035 c!125399) b!1305530))

(assert (= (and d!142035 (not c!125399)) b!1305531))

(assert (= (and b!1305531 c!125400) b!1305532))

(assert (= (and b!1305531 (not c!125400)) b!1305533))

(declare-fun m!1196715 () Bool)

(assert (=> b!1305532 m!1196715))

(assert (=> b!1305337 d!142035))

(assert (=> b!1305339 d!142033))

(assert (=> b!1305339 d!142035))

(declare-fun d!142037 () Bool)

(declare-fun e!744725 () Bool)

(assert (=> d!142037 e!744725))

(declare-fun res!866940 () Bool)

(assert (=> d!142037 (=> res!866940 e!744725)))

(declare-fun lt!584519 () Bool)

(assert (=> d!142037 (= res!866940 (not lt!584519))))

(declare-fun lt!584521 () Bool)

(assert (=> d!142037 (= lt!584519 lt!584521)))

(declare-fun lt!584522 () Unit!43175)

(declare-fun e!744724 () Unit!43175)

(assert (=> d!142037 (= lt!584522 e!744724)))

(declare-fun c!125401 () Bool)

(assert (=> d!142037 (= c!125401 lt!584521)))

(assert (=> d!142037 (= lt!584521 (containsKey!729 (toList!10255 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) k0!1205))))

(assert (=> d!142037 (= (contains!8334 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) k0!1205) lt!584519)))

(declare-fun b!1305534 () Bool)

(declare-fun lt!584520 () Unit!43175)

(assert (=> b!1305534 (= e!744724 lt!584520)))

(assert (=> b!1305534 (= lt!584520 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) k0!1205))))

(assert (=> b!1305534 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) k0!1205))))

(declare-fun b!1305535 () Bool)

(declare-fun Unit!43194 () Unit!43175)

(assert (=> b!1305535 (= e!744724 Unit!43194)))

(declare-fun b!1305536 () Bool)

(assert (=> b!1305536 (= e!744725 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) k0!1205)))))

(assert (= (and d!142037 c!125401) b!1305534))

(assert (= (and d!142037 (not c!125401)) b!1305535))

(assert (= (and d!142037 (not res!866940)) b!1305536))

(declare-fun m!1196717 () Bool)

(assert (=> d!142037 m!1196717))

(declare-fun m!1196719 () Bool)

(assert (=> b!1305534 m!1196719))

(declare-fun m!1196721 () Bool)

(assert (=> b!1305534 m!1196721))

(assert (=> b!1305534 m!1196721))

(declare-fun m!1196723 () Bool)

(assert (=> b!1305534 m!1196723))

(assert (=> b!1305536 m!1196721))

(assert (=> b!1305536 m!1196721))

(assert (=> b!1305536 m!1196723))

(assert (=> d!141907 d!142037))

(declare-fun d!142039 () Bool)

(declare-fun e!744726 () Bool)

(assert (=> d!142039 e!744726))

(declare-fun res!866942 () Bool)

(assert (=> d!142039 (=> (not res!866942) (not e!744726))))

(declare-fun lt!584525 () ListLongMap!20479)

(assert (=> d!142039 (= res!866942 (contains!8334 lt!584525 (_1!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))))))

(declare-fun lt!584523 () List!29958)

(assert (=> d!142039 (= lt!584525 (ListLongMap!20480 lt!584523))))

(declare-fun lt!584526 () Unit!43175)

(declare-fun lt!584524 () Unit!43175)

(assert (=> d!142039 (= lt!584526 lt!584524)))

(assert (=> d!142039 (= (getValueByKey!711 lt!584523 (_1!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) (Some!761 (_2!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))))))

(assert (=> d!142039 (= lt!584524 (lemmaContainsTupThenGetReturnValue!355 lt!584523 (_1!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) (_2!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))))))

(assert (=> d!142039 (= lt!584523 (insertStrictlySorted!484 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) (_1!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) (_2!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))))))

(assert (=> d!142039 (= (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) lt!584525)))

(declare-fun b!1305537 () Bool)

(declare-fun res!866941 () Bool)

(assert (=> b!1305537 (=> (not res!866941) (not e!744726))))

(assert (=> b!1305537 (= res!866941 (= (getValueByKey!711 (toList!10255 lt!584525) (_1!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387)))) (Some!761 (_2!11415 (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))))))))

(declare-fun b!1305538 () Bool)

(assert (=> b!1305538 (= e!744726 (contains!8336 (toList!10255 lt!584525) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))))))

(assert (= (and d!142039 res!866942) b!1305537))

(assert (= (and b!1305537 res!866941) b!1305538))

(declare-fun m!1196725 () Bool)

(assert (=> d!142039 m!1196725))

(declare-fun m!1196727 () Bool)

(assert (=> d!142039 m!1196727))

(declare-fun m!1196729 () Bool)

(assert (=> d!142039 m!1196729))

(declare-fun m!1196731 () Bool)

(assert (=> d!142039 m!1196731))

(declare-fun m!1196733 () Bool)

(assert (=> b!1305537 m!1196733))

(declare-fun m!1196735 () Bool)

(assert (=> b!1305538 m!1196735))

(assert (=> d!141907 d!142039))

(declare-fun d!142041 () Bool)

(assert (=> d!142041 (not (contains!8334 (+!4472 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (tuple2!22811 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387))) k0!1205))))

(assert (=> d!142041 true))

(declare-fun _$36!382 () Unit!43175)

(assert (=> d!142041 (= (choose!1944 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) k0!1205) _$36!382)))

(declare-fun bs!37194 () Bool)

(assert (= bs!37194 d!142041))

(assert (=> bs!37194 m!1196317))

(assert (=> bs!37194 m!1196317))

(assert (=> bs!37194 m!1196319))

(assert (=> d!141907 d!142041))

(declare-fun d!142043 () Bool)

(declare-fun e!744728 () Bool)

(assert (=> d!142043 e!744728))

(declare-fun res!866943 () Bool)

(assert (=> d!142043 (=> res!866943 e!744728)))

(declare-fun lt!584527 () Bool)

(assert (=> d!142043 (= res!866943 (not lt!584527))))

(declare-fun lt!584529 () Bool)

(assert (=> d!142043 (= lt!584527 lt!584529)))

(declare-fun lt!584530 () Unit!43175)

(declare-fun e!744727 () Unit!43175)

(assert (=> d!142043 (= lt!584530 e!744727)))

(declare-fun c!125402 () Bool)

(assert (=> d!142043 (= c!125402 lt!584529)))

(assert (=> d!142043 (= lt!584529 (containsKey!729 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(assert (=> d!142043 (= (contains!8334 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) k0!1205) lt!584527)))

(declare-fun b!1305539 () Bool)

(declare-fun lt!584528 () Unit!43175)

(assert (=> b!1305539 (= e!744727 lt!584528)))

(assert (=> b!1305539 (= lt!584528 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(assert (=> b!1305539 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) k0!1205))))

(declare-fun b!1305540 () Bool)

(declare-fun Unit!43195 () Unit!43175)

(assert (=> b!1305540 (= e!744727 Unit!43195)))

(declare-fun b!1305541 () Bool)

(assert (=> b!1305541 (= e!744728 (isDefined!514 (getValueByKey!711 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) k0!1205)))))

(assert (= (and d!142043 c!125402) b!1305539))

(assert (= (and d!142043 (not c!125402)) b!1305540))

(assert (= (and d!142043 (not res!866943)) b!1305541))

(declare-fun m!1196737 () Bool)

(assert (=> d!142043 m!1196737))

(declare-fun m!1196739 () Bool)

(assert (=> b!1305539 m!1196739))

(declare-fun m!1196741 () Bool)

(assert (=> b!1305539 m!1196741))

(assert (=> b!1305539 m!1196741))

(declare-fun m!1196743 () Bool)

(assert (=> b!1305539 m!1196743))

(assert (=> b!1305541 m!1196741))

(assert (=> b!1305541 m!1196741))

(assert (=> b!1305541 m!1196743))

(assert (=> d!141907 d!142043))

(assert (=> b!1305325 d!141917))

(declare-fun d!142045 () Bool)

(declare-fun lt!584533 () Bool)

(declare-fun content!656 (List!29959) (InoxSet (_ BitVec 64)))

(assert (=> d!142045 (= lt!584533 (select (content!656 Nil!29956) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun e!744734 () Bool)

(assert (=> d!142045 (= lt!584533 e!744734)))

(declare-fun res!866948 () Bool)

(assert (=> d!142045 (=> (not res!866948) (not e!744734))))

(assert (=> d!142045 (= res!866948 ((_ is Cons!29955) Nil!29956))))

(assert (=> d!142045 (= (contains!8337 Nil!29956 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)) lt!584533)))

(declare-fun b!1305546 () Bool)

(declare-fun e!744733 () Bool)

(assert (=> b!1305546 (= e!744734 e!744733)))

(declare-fun res!866949 () Bool)

(assert (=> b!1305546 (=> res!866949 e!744733)))

(assert (=> b!1305546 (= res!866949 (= (h!31164 Nil!29956) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305547 () Bool)

(assert (=> b!1305547 (= e!744733 (contains!8337 (t!43568 Nil!29956) (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!142045 res!866948) b!1305546))

(assert (= (and b!1305546 (not res!866949)) b!1305547))

(declare-fun m!1196745 () Bool)

(assert (=> d!142045 m!1196745))

(assert (=> d!142045 m!1196257))

(declare-fun m!1196747 () Bool)

(assert (=> d!142045 m!1196747))

(assert (=> b!1305547 m!1196257))

(declare-fun m!1196749 () Bool)

(assert (=> b!1305547 m!1196749))

(assert (=> b!1305350 d!142045))

(declare-fun d!142047 () Bool)

(assert (=> d!142047 (isDefined!514 (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(declare-fun lt!584534 () Unit!43175)

(assert (=> d!142047 (= lt!584534 (choose!1947 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(declare-fun e!744735 () Bool)

(assert (=> d!142047 e!744735))

(declare-fun res!866950 () Bool)

(assert (=> d!142047 (=> (not res!866950) (not e!744735))))

(assert (=> d!142047 (= res!866950 (isStrictlySorted!871 (toList!10255 (ListLongMap!20480 Nil!29955))))))

(assert (=> d!142047 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205) lt!584534)))

(declare-fun b!1305548 () Bool)

(assert (=> b!1305548 (= e!744735 (containsKey!729 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))

(assert (= (and d!142047 res!866950) b!1305548))

(assert (=> d!142047 m!1196423))

(assert (=> d!142047 m!1196423))

(assert (=> d!142047 m!1196425))

(declare-fun m!1196751 () Bool)

(assert (=> d!142047 m!1196751))

(declare-fun m!1196753 () Bool)

(assert (=> d!142047 m!1196753))

(assert (=> b!1305548 m!1196419))

(assert (=> b!1305355 d!142047))

(declare-fun d!142049 () Bool)

(assert (=> d!142049 (= (isDefined!514 (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205)) (not (isEmpty!1074 (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205))))))

(declare-fun bs!37195 () Bool)

(assert (= bs!37195 d!142049))

(assert (=> bs!37195 m!1196423))

(declare-fun m!1196755 () Bool)

(assert (=> bs!37195 m!1196755))

(assert (=> b!1305355 d!142049))

(declare-fun b!1305549 () Bool)

(declare-fun e!744736 () Option!762)

(assert (=> b!1305549 (= e!744736 (Some!761 (_2!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955))))))))

(declare-fun b!1305552 () Bool)

(declare-fun e!744737 () Option!762)

(assert (=> b!1305552 (= e!744737 None!760)))

(declare-fun b!1305550 () Bool)

(assert (=> b!1305550 (= e!744736 e!744737)))

(declare-fun c!125404 () Bool)

(assert (=> b!1305550 (= c!125404 (and ((_ is Cons!29954) (toList!10255 (ListLongMap!20480 Nil!29955))) (not (= (_1!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955)))) k0!1205))))))

(declare-fun d!142051 () Bool)

(declare-fun c!125403 () Bool)

(assert (=> d!142051 (= c!125403 (and ((_ is Cons!29954) (toList!10255 (ListLongMap!20480 Nil!29955))) (= (_1!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955)))) k0!1205)))))

(assert (=> d!142051 (= (getValueByKey!711 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205) e!744736)))

(declare-fun b!1305551 () Bool)

(assert (=> b!1305551 (= e!744737 (getValueByKey!711 (t!43567 (toList!10255 (ListLongMap!20480 Nil!29955))) k0!1205))))

(assert (= (and d!142051 c!125403) b!1305549))

(assert (= (and d!142051 (not c!125403)) b!1305550))

(assert (= (and b!1305550 c!125404) b!1305551))

(assert (= (and b!1305550 (not c!125404)) b!1305552))

(declare-fun m!1196757 () Bool)

(assert (=> b!1305551 m!1196757))

(assert (=> b!1305355 d!142051))

(assert (=> bm!64455 d!141915))

(declare-fun d!142053 () Bool)

(declare-fun e!744739 () Bool)

(assert (=> d!142053 e!744739))

(declare-fun res!866951 () Bool)

(assert (=> d!142053 (=> res!866951 e!744739)))

(declare-fun lt!584535 () Bool)

(assert (=> d!142053 (= res!866951 (not lt!584535))))

(declare-fun lt!584537 () Bool)

(assert (=> d!142053 (= lt!584535 lt!584537)))

(declare-fun lt!584538 () Unit!43175)

(declare-fun e!744738 () Unit!43175)

(assert (=> d!142053 (= lt!584538 e!744738)))

(declare-fun c!125405 () Bool)

(assert (=> d!142053 (= c!125405 lt!584537)))

(assert (=> d!142053 (= lt!584537 (containsKey!729 (toList!10255 lt!584407) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142053 (= (contains!8334 lt!584407 #b0000000000000000000000000000000000000000000000000000000000000000) lt!584535)))

(declare-fun b!1305553 () Bool)

(declare-fun lt!584536 () Unit!43175)

(assert (=> b!1305553 (= e!744738 lt!584536)))

(assert (=> b!1305553 (= lt!584536 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584407) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1305553 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1305554 () Bool)

(declare-fun Unit!43196 () Unit!43175)

(assert (=> b!1305554 (= e!744738 Unit!43196)))

(declare-fun b!1305555 () Bool)

(assert (=> b!1305555 (= e!744739 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142053 c!125405) b!1305553))

(assert (= (and d!142053 (not c!125405)) b!1305554))

(assert (= (and d!142053 (not res!866951)) b!1305555))

(declare-fun m!1196759 () Bool)

(assert (=> d!142053 m!1196759))

(declare-fun m!1196761 () Bool)

(assert (=> b!1305553 m!1196761))

(declare-fun m!1196763 () Bool)

(assert (=> b!1305553 m!1196763))

(assert (=> b!1305553 m!1196763))

(declare-fun m!1196765 () Bool)

(assert (=> b!1305553 m!1196765))

(assert (=> b!1305555 m!1196763))

(assert (=> b!1305555 m!1196763))

(assert (=> b!1305555 m!1196765))

(assert (=> d!141915 d!142053))

(assert (=> d!141915 d!141919))

(declare-fun lt!584539 () Bool)

(declare-fun d!142055 () Bool)

(assert (=> d!142055 (= lt!584539 (select (content!655 (toList!10255 lt!584297)) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun e!744740 () Bool)

(assert (=> d!142055 (= lt!584539 e!744740)))

(declare-fun res!866953 () Bool)

(assert (=> d!142055 (=> (not res!866953) (not e!744740))))

(assert (=> d!142055 (= res!866953 ((_ is Cons!29954) (toList!10255 lt!584297)))))

(assert (=> d!142055 (= (contains!8336 (toList!10255 lt!584297) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) lt!584539)))

(declare-fun b!1305556 () Bool)

(declare-fun e!744741 () Bool)

(assert (=> b!1305556 (= e!744740 e!744741)))

(declare-fun res!866952 () Bool)

(assert (=> b!1305556 (=> res!866952 e!744741)))

(assert (=> b!1305556 (= res!866952 (= (h!31163 (toList!10255 lt!584297)) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1305557 () Bool)

(assert (=> b!1305557 (= e!744741 (contains!8336 (t!43567 (toList!10255 lt!584297)) (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (= (and d!142055 res!866953) b!1305556))

(assert (= (and b!1305556 (not res!866952)) b!1305557))

(declare-fun m!1196767 () Bool)

(assert (=> d!142055 m!1196767))

(declare-fun m!1196769 () Bool)

(assert (=> d!142055 m!1196769))

(declare-fun m!1196771 () Bool)

(assert (=> b!1305557 m!1196771))

(assert (=> b!1305216 d!142055))

(declare-fun d!142057 () Bool)

(assert (=> d!142057 (= (validKeyInArray!0 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000)) (and (not (= (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1305352 d!142057))

(assert (=> b!1305357 d!142049))

(assert (=> b!1305357 d!142051))

(declare-fun d!142059 () Bool)

(declare-fun e!744742 () Bool)

(assert (=> d!142059 e!744742))

(declare-fun res!866955 () Bool)

(assert (=> d!142059 (=> (not res!866955) (not e!744742))))

(declare-fun lt!584542 () ListLongMap!20479)

(assert (=> d!142059 (= res!866955 (contains!8334 lt!584542 (_1!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun lt!584540 () List!29958)

(assert (=> d!142059 (= lt!584542 (ListLongMap!20480 lt!584540))))

(declare-fun lt!584543 () Unit!43175)

(declare-fun lt!584541 () Unit!43175)

(assert (=> d!142059 (= lt!584543 lt!584541)))

(assert (=> d!142059 (= (getValueByKey!711 lt!584540 (_1!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!761 (_2!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!142059 (= lt!584541 (lemmaContainsTupThenGetReturnValue!355 lt!584540 (_1!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!142059 (= lt!584540 (insertStrictlySorted!484 (toList!10255 (ite c!125331 call!64459 (ite c!125330 call!64455 call!64454))) (_1!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!142059 (= (+!4472 (ite c!125331 call!64459 (ite c!125330 call!64455 call!64454)) (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) lt!584542)))

(declare-fun b!1305558 () Bool)

(declare-fun res!866954 () Bool)

(assert (=> b!1305558 (=> (not res!866954) (not e!744742))))

(assert (=> b!1305558 (= res!866954 (= (getValueByKey!711 (toList!10255 lt!584542) (_1!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!761 (_2!11415 (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1305559 () Bool)

(assert (=> b!1305559 (= e!744742 (contains!8336 (toList!10255 lt!584542) (ite (or c!125331 c!125330) (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!142059 res!866955) b!1305558))

(assert (= (and b!1305558 res!866954) b!1305559))

(declare-fun m!1196773 () Bool)

(assert (=> d!142059 m!1196773))

(declare-fun m!1196775 () Bool)

(assert (=> d!142059 m!1196775))

(declare-fun m!1196777 () Bool)

(assert (=> d!142059 m!1196777))

(declare-fun m!1196779 () Bool)

(assert (=> d!142059 m!1196779))

(declare-fun m!1196781 () Bool)

(assert (=> b!1305558 m!1196781))

(declare-fun m!1196783 () Bool)

(assert (=> b!1305559 m!1196783))

(assert (=> bm!64453 d!142059))

(declare-fun d!142061 () Bool)

(declare-fun e!744744 () Bool)

(assert (=> d!142061 e!744744))

(declare-fun res!866956 () Bool)

(assert (=> d!142061 (=> res!866956 e!744744)))

(declare-fun lt!584544 () Bool)

(assert (=> d!142061 (= res!866956 (not lt!584544))))

(declare-fun lt!584546 () Bool)

(assert (=> d!142061 (= lt!584544 lt!584546)))

(declare-fun lt!584547 () Unit!43175)

(declare-fun e!744743 () Unit!43175)

(assert (=> d!142061 (= lt!584547 e!744743)))

(declare-fun c!125406 () Bool)

(assert (=> d!142061 (= c!125406 lt!584546)))

(assert (=> d!142061 (= lt!584546 (containsKey!729 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (=> d!142061 (= (contains!8334 lt!584297 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) lt!584544)))

(declare-fun b!1305560 () Bool)

(declare-fun lt!584545 () Unit!43175)

(assert (=> b!1305560 (= e!744743 lt!584545)))

(assert (=> b!1305560 (= lt!584545 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (=> b!1305560 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1305561 () Bool)

(declare-fun Unit!43197 () Unit!43175)

(assert (=> b!1305561 (= e!744743 Unit!43197)))

(declare-fun b!1305562 () Bool)

(assert (=> b!1305562 (= e!744744 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(assert (= (and d!142061 c!125406) b!1305560))

(assert (= (and d!142061 (not c!125406)) b!1305561))

(assert (= (and d!142061 (not res!866956)) b!1305562))

(declare-fun m!1196785 () Bool)

(assert (=> d!142061 m!1196785))

(declare-fun m!1196787 () Bool)

(assert (=> b!1305560 m!1196787))

(assert (=> b!1305560 m!1196277))

(assert (=> b!1305560 m!1196277))

(declare-fun m!1196789 () Bool)

(assert (=> b!1305560 m!1196789))

(assert (=> b!1305562 m!1196277))

(assert (=> b!1305562 m!1196277))

(assert (=> b!1305562 m!1196789))

(assert (=> d!141897 d!142061))

(declare-fun b!1305563 () Bool)

(declare-fun e!744745 () Option!762)

(assert (=> b!1305563 (= e!744745 (Some!761 (_2!11415 (h!31163 lt!584295))))))

(declare-fun b!1305566 () Bool)

(declare-fun e!744746 () Option!762)

(assert (=> b!1305566 (= e!744746 None!760)))

(declare-fun b!1305564 () Bool)

(assert (=> b!1305564 (= e!744745 e!744746)))

(declare-fun c!125408 () Bool)

(assert (=> b!1305564 (= c!125408 (and ((_ is Cons!29954) lt!584295) (not (= (_1!11415 (h!31163 lt!584295)) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))))

(declare-fun c!125407 () Bool)

(declare-fun d!142063 () Bool)

(assert (=> d!142063 (= c!125407 (and ((_ is Cons!29954) lt!584295) (= (_1!11415 (h!31163 lt!584295)) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(assert (=> d!142063 (= (getValueByKey!711 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) e!744745)))

(declare-fun b!1305565 () Bool)

(assert (=> b!1305565 (= e!744746 (getValueByKey!711 (t!43567 lt!584295) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (= (and d!142063 c!125407) b!1305563))

(assert (= (and d!142063 (not c!125407)) b!1305564))

(assert (= (and b!1305564 c!125408) b!1305565))

(assert (= (and b!1305564 (not c!125408)) b!1305566))

(declare-fun m!1196791 () Bool)

(assert (=> b!1305565 m!1196791))

(assert (=> d!141897 d!142063))

(declare-fun d!142065 () Bool)

(assert (=> d!142065 (= (getValueByKey!711 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) (Some!761 (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun lt!584548 () Unit!43175)

(assert (=> d!142065 (= lt!584548 (choose!1948 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun e!744747 () Bool)

(assert (=> d!142065 e!744747))

(declare-fun res!866957 () Bool)

(assert (=> d!142065 (=> (not res!866957) (not e!744747))))

(assert (=> d!142065 (= res!866957 (isStrictlySorted!871 lt!584295))))

(assert (=> d!142065 (= (lemmaContainsTupThenGetReturnValue!355 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) lt!584548)))

(declare-fun b!1305567 () Bool)

(declare-fun res!866958 () Bool)

(assert (=> b!1305567 (=> (not res!866958) (not e!744747))))

(assert (=> b!1305567 (= res!866958 (containsKey!729 lt!584295 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1305568 () Bool)

(assert (=> b!1305568 (= e!744747 (contains!8336 lt!584295 (tuple2!22811 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(assert (= (and d!142065 res!866957) b!1305567))

(assert (= (and b!1305567 res!866958) b!1305568))

(assert (=> d!142065 m!1196271))

(declare-fun m!1196793 () Bool)

(assert (=> d!142065 m!1196793))

(declare-fun m!1196795 () Bool)

(assert (=> d!142065 m!1196795))

(declare-fun m!1196797 () Bool)

(assert (=> b!1305567 m!1196797))

(declare-fun m!1196799 () Bool)

(assert (=> b!1305568 m!1196799))

(assert (=> d!141897 d!142065))

(declare-fun b!1305569 () Bool)

(declare-fun e!744751 () Bool)

(declare-fun lt!584549 () List!29958)

(assert (=> b!1305569 (= e!744751 (contains!8336 lt!584549 (tuple2!22811 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(declare-fun b!1305570 () Bool)

(declare-fun e!744749 () List!29958)

(declare-fun call!64478 () List!29958)

(assert (=> b!1305570 (= e!744749 call!64478)))

(declare-fun b!1305571 () Bool)

(declare-fun e!744750 () List!29958)

(assert (=> b!1305571 (= e!744750 e!744749)))

(declare-fun c!125409 () Bool)

(assert (=> b!1305571 (= c!125409 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(declare-fun bm!64474 () Bool)

(declare-fun call!64477 () List!29958)

(assert (=> bm!64474 (= call!64478 call!64477)))

(declare-fun c!125412 () Bool)

(declare-fun b!1305572 () Bool)

(assert (=> b!1305572 (= c!125412 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (bvsgt (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(declare-fun e!744752 () List!29958)

(assert (=> b!1305572 (= e!744749 e!744752)))

(declare-fun bm!64475 () Bool)

(declare-fun call!64479 () List!29958)

(assert (=> bm!64475 (= call!64479 call!64478)))

(declare-fun b!1305573 () Bool)

(assert (=> b!1305573 (= e!744750 call!64477)))

(declare-fun bm!64476 () Bool)

(declare-fun e!744748 () List!29958)

(declare-fun c!125410 () Bool)

(assert (=> bm!64476 (= call!64477 ($colon$colon!670 e!744748 (ite c!125410 (h!31163 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (tuple2!22811 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))))

(declare-fun c!125411 () Bool)

(assert (=> bm!64476 (= c!125411 c!125410)))

(declare-fun d!142067 () Bool)

(assert (=> d!142067 e!744751))

(declare-fun res!866959 () Bool)

(assert (=> d!142067 (=> (not res!866959) (not e!744751))))

(assert (=> d!142067 (= res!866959 (isStrictlySorted!871 lt!584549))))

(assert (=> d!142067 (= lt!584549 e!744750)))

(assert (=> d!142067 (= c!125410 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (bvslt (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(assert (=> d!142067 (isStrictlySorted!871 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))))

(assert (=> d!142067 (= (insertStrictlySorted!484 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) lt!584549)))

(declare-fun b!1305574 () Bool)

(assert (=> b!1305574 (= e!744752 call!64479)))

(declare-fun b!1305575 () Bool)

(assert (=> b!1305575 (= e!744748 (ite c!125409 (t!43567 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (ite c!125412 (Cons!29954 (h!31163 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (t!43567 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))))) Nil!29955)))))

(declare-fun b!1305576 () Bool)

(assert (=> b!1305576 (= e!744748 (insertStrictlySorted!484 (t!43567 (toList!10255 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (_2!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1305577 () Bool)

(assert (=> b!1305577 (= e!744752 call!64479)))

(declare-fun b!1305578 () Bool)

(declare-fun res!866960 () Bool)

(assert (=> b!1305578 (=> (not res!866960) (not e!744751))))

(assert (=> b!1305578 (= res!866960 (containsKey!729 lt!584549 (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (= (and d!142067 c!125410) b!1305573))

(assert (= (and d!142067 (not c!125410)) b!1305571))

(assert (= (and b!1305571 c!125409) b!1305570))

(assert (= (and b!1305571 (not c!125409)) b!1305572))

(assert (= (and b!1305572 c!125412) b!1305577))

(assert (= (and b!1305572 (not c!125412)) b!1305574))

(assert (= (or b!1305577 b!1305574) bm!64475))

(assert (= (or b!1305570 bm!64475) bm!64474))

(assert (= (or b!1305573 bm!64474) bm!64476))

(assert (= (and bm!64476 c!125411) b!1305576))

(assert (= (and bm!64476 (not c!125411)) b!1305575))

(assert (= (and d!142067 res!866959) b!1305578))

(assert (= (and b!1305578 res!866960) b!1305569))

(declare-fun m!1196801 () Bool)

(assert (=> bm!64476 m!1196801))

(declare-fun m!1196803 () Bool)

(assert (=> b!1305569 m!1196803))

(declare-fun m!1196805 () Bool)

(assert (=> b!1305578 m!1196805))

(declare-fun m!1196807 () Bool)

(assert (=> d!142067 m!1196807))

(declare-fun m!1196809 () Bool)

(assert (=> d!142067 m!1196809))

(declare-fun m!1196811 () Bool)

(assert (=> b!1305576 m!1196811))

(assert (=> d!141897 d!142067))

(declare-fun b!1305579 () Bool)

(declare-fun e!744754 () Bool)

(declare-fun e!744753 () Bool)

(assert (=> b!1305579 (= e!744754 e!744753)))

(declare-fun lt!584550 () (_ BitVec 64))

(assert (=> b!1305579 (= lt!584550 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!584552 () Unit!43175)

(assert (=> b!1305579 (= lt!584552 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!584550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1305579 (arrayContainsKey!0 _keys!1741 lt!584550 #b00000000000000000000000000000000)))

(declare-fun lt!584551 () Unit!43175)

(assert (=> b!1305579 (= lt!584551 lt!584552)))

(declare-fun res!866962 () Bool)

(assert (=> b!1305579 (= res!866962 (= (seekEntryOrOpen!0 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1741 mask!2175) (Found!10026 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1305579 (=> (not res!866962) (not e!744753))))

(declare-fun bm!64477 () Bool)

(declare-fun call!64480 () Bool)

(assert (=> bm!64477 (= call!64480 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1305580 () Bool)

(assert (=> b!1305580 (= e!744754 call!64480)))

(declare-fun b!1305582 () Bool)

(declare-fun e!744755 () Bool)

(assert (=> b!1305582 (= e!744755 e!744754)))

(declare-fun c!125413 () Bool)

(assert (=> b!1305582 (= c!125413 (validKeyInArray!0 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!142069 () Bool)

(declare-fun res!866961 () Bool)

(assert (=> d!142069 (=> res!866961 e!744755)))

(assert (=> d!142069 (= res!866961 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(assert (=> d!142069 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175) e!744755)))

(declare-fun b!1305581 () Bool)

(assert (=> b!1305581 (= e!744753 call!64480)))

(assert (= (and d!142069 (not res!866961)) b!1305582))

(assert (= (and b!1305582 c!125413) b!1305579))

(assert (= (and b!1305582 (not c!125413)) b!1305580))

(assert (= (and b!1305579 res!866962) b!1305581))

(assert (= (or b!1305581 b!1305580) bm!64477))

(declare-fun m!1196813 () Bool)

(assert (=> b!1305579 m!1196813))

(declare-fun m!1196815 () Bool)

(assert (=> b!1305579 m!1196815))

(declare-fun m!1196817 () Bool)

(assert (=> b!1305579 m!1196817))

(assert (=> b!1305579 m!1196813))

(declare-fun m!1196819 () Bool)

(assert (=> b!1305579 m!1196819))

(declare-fun m!1196821 () Bool)

(assert (=> bm!64477 m!1196821))

(assert (=> b!1305582 m!1196813))

(assert (=> b!1305582 m!1196813))

(declare-fun m!1196823 () Bool)

(assert (=> b!1305582 m!1196823))

(assert (=> bm!64436 d!142069))

(declare-fun d!142071 () Bool)

(declare-fun res!866963 () Bool)

(declare-fun e!744756 () Bool)

(assert (=> d!142071 (=> res!866963 e!744756)))

(assert (=> d!142071 (= res!866963 (and ((_ is Cons!29954) (toList!10255 (ListLongMap!20480 Nil!29955))) (= (_1!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955)))) k0!1205)))))

(assert (=> d!142071 (= (containsKey!729 (toList!10255 (ListLongMap!20480 Nil!29955)) k0!1205) e!744756)))

(declare-fun b!1305583 () Bool)

(declare-fun e!744757 () Bool)

(assert (=> b!1305583 (= e!744756 e!744757)))

(declare-fun res!866964 () Bool)

(assert (=> b!1305583 (=> (not res!866964) (not e!744757))))

(assert (=> b!1305583 (= res!866964 (and (or (not ((_ is Cons!29954) (toList!10255 (ListLongMap!20480 Nil!29955)))) (bvsle (_1!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955)))) k0!1205)) ((_ is Cons!29954) (toList!10255 (ListLongMap!20480 Nil!29955))) (bvslt (_1!11415 (h!31163 (toList!10255 (ListLongMap!20480 Nil!29955)))) k0!1205)))))

(declare-fun b!1305584 () Bool)

(assert (=> b!1305584 (= e!744757 (containsKey!729 (t!43567 (toList!10255 (ListLongMap!20480 Nil!29955))) k0!1205))))

(assert (= (and d!142071 (not res!866963)) b!1305583))

(assert (= (and b!1305583 res!866964) b!1305584))

(declare-fun m!1196825 () Bool)

(assert (=> b!1305584 m!1196825))

(assert (=> d!141929 d!142071))

(declare-fun d!142073 () Bool)

(declare-fun e!744759 () Bool)

(assert (=> d!142073 e!744759))

(declare-fun res!866965 () Bool)

(assert (=> d!142073 (=> res!866965 e!744759)))

(declare-fun lt!584553 () Bool)

(assert (=> d!142073 (= res!866965 (not lt!584553))))

(declare-fun lt!584555 () Bool)

(assert (=> d!142073 (= lt!584553 lt!584555)))

(declare-fun lt!584556 () Unit!43175)

(declare-fun e!744758 () Unit!43175)

(assert (=> d!142073 (= lt!584556 e!744758)))

(declare-fun c!125414 () Bool)

(assert (=> d!142073 (= c!125414 lt!584555)))

(assert (=> d!142073 (= lt!584555 (containsKey!729 (toList!10255 lt!584385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142073 (= (contains!8334 lt!584385 #b1000000000000000000000000000000000000000000000000000000000000000) lt!584553)))

(declare-fun b!1305585 () Bool)

(declare-fun lt!584554 () Unit!43175)

(assert (=> b!1305585 (= e!744758 lt!584554)))

(assert (=> b!1305585 (= lt!584554 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1305585 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1305586 () Bool)

(declare-fun Unit!43198 () Unit!43175)

(assert (=> b!1305586 (= e!744758 Unit!43198)))

(declare-fun b!1305587 () Bool)

(assert (=> b!1305587 (= e!744759 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584385) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142073 c!125414) b!1305585))

(assert (= (and d!142073 (not c!125414)) b!1305586))

(assert (= (and d!142073 (not res!866965)) b!1305587))

(declare-fun m!1196827 () Bool)

(assert (=> d!142073 m!1196827))

(declare-fun m!1196829 () Bool)

(assert (=> b!1305585 m!1196829))

(assert (=> b!1305585 m!1196595))

(assert (=> b!1305585 m!1196595))

(declare-fun m!1196831 () Bool)

(assert (=> b!1305585 m!1196831))

(assert (=> b!1305587 m!1196595))

(assert (=> b!1305587 m!1196595))

(assert (=> b!1305587 m!1196831))

(assert (=> bm!64452 d!142073))

(assert (=> d!141913 d!141919))

(declare-fun d!142075 () Bool)

(assert (=> d!142075 (= (apply!1061 lt!584407 (select (arr!41921 _keys!1741) from!2144)) (get!21227 (getValueByKey!711 (toList!10255 lt!584407) (select (arr!41921 _keys!1741) from!2144))))))

(declare-fun bs!37196 () Bool)

(assert (= bs!37196 d!142075))

(assert (=> bs!37196 m!1196201))

(assert (=> bs!37196 m!1196547))

(assert (=> bs!37196 m!1196547))

(declare-fun m!1196833 () Bool)

(assert (=> bs!37196 m!1196833))

(assert (=> b!1305330 d!142075))

(assert (=> b!1305330 d!141941))

(declare-fun d!142077 () Bool)

(declare-fun res!866966 () Bool)

(declare-fun e!744760 () Bool)

(assert (=> d!142077 (=> res!866966 e!744760)))

(assert (=> d!142077 (= res!866966 (and ((_ is Cons!29954) (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!142077 (= (containsKey!729 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744760)))

(declare-fun b!1305588 () Bool)

(declare-fun e!744761 () Bool)

(assert (=> b!1305588 (= e!744760 e!744761)))

(declare-fun res!866967 () Bool)

(assert (=> b!1305588 (=> (not res!866967) (not e!744761))))

(assert (=> b!1305588 (= res!866967 (and (or (not ((_ is Cons!29954) (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29954) (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11415 (h!31163 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1305589 () Bool)

(assert (=> b!1305589 (= e!744761 (containsKey!729 (t!43567 (toList!10255 (getCurrentListMap!5212 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!142077 (not res!866966)) b!1305588))

(assert (= (and b!1305588 res!866967) b!1305589))

(declare-fun m!1196835 () Bool)

(assert (=> b!1305589 m!1196835))

(assert (=> d!141911 d!142077))

(declare-fun b!1305590 () Bool)

(declare-fun e!744762 () Option!762)

(assert (=> b!1305590 (= e!744762 (Some!761 (_2!11415 (h!31163 (toList!10255 lt!584301)))))))

(declare-fun b!1305593 () Bool)

(declare-fun e!744763 () Option!762)

(assert (=> b!1305593 (= e!744763 None!760)))

(declare-fun b!1305591 () Bool)

(assert (=> b!1305591 (= e!744762 e!744763)))

(declare-fun c!125416 () Bool)

(assert (=> b!1305591 (= c!125416 (and ((_ is Cons!29954) (toList!10255 lt!584301)) (not (= (_1!11415 (h!31163 (toList!10255 lt!584301))) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun d!142079 () Bool)

(declare-fun c!125415 () Bool)

(assert (=> d!142079 (= c!125415 (and ((_ is Cons!29954) (toList!10255 lt!584301)) (= (_1!11415 (h!31163 (toList!10255 lt!584301))) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (=> d!142079 (= (getValueByKey!711 (toList!10255 lt!584301) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) e!744762)))

(declare-fun b!1305592 () Bool)

(assert (=> b!1305592 (= e!744763 (getValueByKey!711 (t!43567 (toList!10255 lt!584301)) (_1!11415 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (= (and d!142079 c!125415) b!1305590))

(assert (= (and d!142079 (not c!125415)) b!1305591))

(assert (= (and b!1305591 c!125416) b!1305592))

(assert (= (and b!1305591 (not c!125416)) b!1305593))

(declare-fun m!1196837 () Bool)

(assert (=> b!1305592 m!1196837))

(assert (=> b!1305217 d!142079))

(declare-fun d!142081 () Bool)

(declare-fun e!744765 () Bool)

(assert (=> d!142081 e!744765))

(declare-fun res!866968 () Bool)

(assert (=> d!142081 (=> res!866968 e!744765)))

(declare-fun lt!584557 () Bool)

(assert (=> d!142081 (= res!866968 (not lt!584557))))

(declare-fun lt!584559 () Bool)

(assert (=> d!142081 (= lt!584557 lt!584559)))

(declare-fun lt!584560 () Unit!43175)

(declare-fun e!744764 () Unit!43175)

(assert (=> d!142081 (= lt!584560 e!744764)))

(declare-fun c!125417 () Bool)

(assert (=> d!142081 (= c!125417 lt!584559)))

(assert (=> d!142081 (= lt!584559 (containsKey!729 (toList!10255 lt!584219) k0!1205))))

(assert (=> d!142081 (= (contains!8334 lt!584219 k0!1205) lt!584557)))

(declare-fun b!1305594 () Bool)

(declare-fun lt!584558 () Unit!43175)

(assert (=> b!1305594 (= e!744764 lt!584558)))

(assert (=> b!1305594 (= lt!584558 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584219) k0!1205))))

(assert (=> b!1305594 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584219) k0!1205))))

(declare-fun b!1305595 () Bool)

(declare-fun Unit!43199 () Unit!43175)

(assert (=> b!1305595 (= e!744764 Unit!43199)))

(declare-fun b!1305596 () Bool)

(assert (=> b!1305596 (= e!744765 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584219) k0!1205)))))

(assert (= (and d!142081 c!125417) b!1305594))

(assert (= (and d!142081 (not c!125417)) b!1305595))

(assert (= (and d!142081 (not res!866968)) b!1305596))

(declare-fun m!1196839 () Bool)

(assert (=> d!142081 m!1196839))

(declare-fun m!1196841 () Bool)

(assert (=> b!1305594 m!1196841))

(declare-fun m!1196843 () Bool)

(assert (=> b!1305594 m!1196843))

(assert (=> b!1305594 m!1196843))

(declare-fun m!1196845 () Bool)

(assert (=> b!1305594 m!1196845))

(assert (=> b!1305596 m!1196843))

(assert (=> b!1305596 m!1196843))

(assert (=> b!1305596 m!1196845))

(assert (=> d!141905 d!142081))

(declare-fun d!142083 () Bool)

(assert (=> d!142083 (contains!8334 lt!584219 k0!1205)))

(assert (=> d!142083 true))

(declare-fun _$21!124 () Unit!43175)

(assert (=> d!142083 (= (choose!1945 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584219) _$21!124)))

(declare-fun bs!37197 () Bool)

(assert (= bs!37197 d!142083))

(assert (=> bs!37197 m!1196309))

(assert (=> d!141905 d!142083))

(declare-fun d!142085 () Bool)

(declare-fun e!744767 () Bool)

(assert (=> d!142085 e!744767))

(declare-fun res!866969 () Bool)

(assert (=> d!142085 (=> res!866969 e!744767)))

(declare-fun lt!584561 () Bool)

(assert (=> d!142085 (= res!866969 (not lt!584561))))

(declare-fun lt!584563 () Bool)

(assert (=> d!142085 (= lt!584561 lt!584563)))

(declare-fun lt!584564 () Unit!43175)

(declare-fun e!744766 () Unit!43175)

(assert (=> d!142085 (= lt!584564 e!744766)))

(declare-fun c!125418 () Bool)

(assert (=> d!142085 (= c!125418 lt!584563)))

(assert (=> d!142085 (= lt!584563 (containsKey!729 (toList!10255 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> d!142085 (= (contains!8334 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205) lt!584561)))

(declare-fun b!1305597 () Bool)

(declare-fun lt!584562 () Unit!43175)

(assert (=> b!1305597 (= e!744766 lt!584562)))

(assert (=> b!1305597 (= lt!584562 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> b!1305597 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-fun b!1305598 () Bool)

(declare-fun Unit!43200 () Unit!43175)

(assert (=> b!1305598 (= e!744766 Unit!43200)))

(declare-fun b!1305599 () Bool)

(assert (=> b!1305599 (= e!744767 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205)))))

(assert (= (and d!142085 c!125418) b!1305597))

(assert (= (and d!142085 (not c!125418)) b!1305598))

(assert (= (and d!142085 (not res!866969)) b!1305599))

(declare-fun m!1196847 () Bool)

(assert (=> d!142085 m!1196847))

(declare-fun m!1196849 () Bool)

(assert (=> b!1305597 m!1196849))

(declare-fun m!1196851 () Bool)

(assert (=> b!1305597 m!1196851))

(assert (=> b!1305597 m!1196851))

(declare-fun m!1196853 () Bool)

(assert (=> b!1305597 m!1196853))

(assert (=> b!1305599 m!1196851))

(assert (=> b!1305599 m!1196851))

(assert (=> b!1305599 m!1196853))

(assert (=> d!141905 d!142085))

(declare-fun d!142087 () Bool)

(declare-fun e!744768 () Bool)

(assert (=> d!142087 e!744768))

(declare-fun res!866971 () Bool)

(assert (=> d!142087 (=> (not res!866971) (not e!744768))))

(declare-fun lt!584567 () ListLongMap!20479)

(assert (=> d!142087 (= res!866971 (contains!8334 lt!584567 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!584565 () List!29958)

(assert (=> d!142087 (= lt!584567 (ListLongMap!20480 lt!584565))))

(declare-fun lt!584568 () Unit!43175)

(declare-fun lt!584566 () Unit!43175)

(assert (=> d!142087 (= lt!584568 lt!584566)))

(assert (=> d!142087 (= (getValueByKey!711 lt!584565 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142087 (= lt!584566 (lemmaContainsTupThenGetReturnValue!355 lt!584565 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142087 (= lt!584565 (insertStrictlySorted!484 (toList!10255 lt!584219) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142087 (= (+!4472 lt!584219 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!584567)))

(declare-fun b!1305600 () Bool)

(declare-fun res!866970 () Bool)

(assert (=> b!1305600 (=> (not res!866970) (not e!744768))))

(assert (=> b!1305600 (= res!866970 (= (getValueByKey!711 (toList!10255 lt!584567) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1305601 () Bool)

(assert (=> b!1305601 (= e!744768 (contains!8336 (toList!10255 lt!584567) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!142087 res!866971) b!1305600))

(assert (= (and b!1305600 res!866970) b!1305601))

(declare-fun m!1196855 () Bool)

(assert (=> d!142087 m!1196855))

(declare-fun m!1196857 () Bool)

(assert (=> d!142087 m!1196857))

(declare-fun m!1196859 () Bool)

(assert (=> d!142087 m!1196859))

(declare-fun m!1196861 () Bool)

(assert (=> d!142087 m!1196861))

(declare-fun m!1196863 () Bool)

(assert (=> b!1305600 m!1196863))

(declare-fun m!1196865 () Bool)

(assert (=> b!1305601 m!1196865))

(assert (=> d!141905 d!142087))

(declare-fun d!142089 () Bool)

(declare-fun e!744770 () Bool)

(assert (=> d!142089 e!744770))

(declare-fun res!866972 () Bool)

(assert (=> d!142089 (=> res!866972 e!744770)))

(declare-fun lt!584569 () Bool)

(assert (=> d!142089 (= res!866972 (not lt!584569))))

(declare-fun lt!584571 () Bool)

(assert (=> d!142089 (= lt!584569 lt!584571)))

(declare-fun lt!584572 () Unit!43175)

(declare-fun e!744769 () Unit!43175)

(assert (=> d!142089 (= lt!584572 e!744769)))

(declare-fun c!125419 () Bool)

(assert (=> d!142089 (= c!125419 lt!584571)))

(assert (=> d!142089 (= lt!584571 (containsKey!729 (toList!10255 lt!584407) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142089 (= (contains!8334 lt!584407 #b1000000000000000000000000000000000000000000000000000000000000000) lt!584569)))

(declare-fun b!1305602 () Bool)

(declare-fun lt!584570 () Unit!43175)

(assert (=> b!1305602 (= e!744769 lt!584570)))

(assert (=> b!1305602 (= lt!584570 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 lt!584407) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1305602 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1305603 () Bool)

(declare-fun Unit!43201 () Unit!43175)

(assert (=> b!1305603 (= e!744769 Unit!43201)))

(declare-fun b!1305604 () Bool)

(assert (=> b!1305604 (= e!744770 (isDefined!514 (getValueByKey!711 (toList!10255 lt!584407) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142089 c!125419) b!1305602))

(assert (= (and d!142089 (not c!125419)) b!1305603))

(assert (= (and d!142089 (not res!866972)) b!1305604))

(declare-fun m!1196867 () Bool)

(assert (=> d!142089 m!1196867))

(declare-fun m!1196869 () Bool)

(assert (=> b!1305602 m!1196869))

(declare-fun m!1196871 () Bool)

(assert (=> b!1305602 m!1196871))

(assert (=> b!1305602 m!1196871))

(declare-fun m!1196873 () Bool)

(assert (=> b!1305602 m!1196873))

(assert (=> b!1305604 m!1196871))

(assert (=> b!1305604 m!1196871))

(assert (=> b!1305604 m!1196873))

(assert (=> b!1305332 d!142089))

(declare-fun d!142091 () Bool)

(declare-fun e!744772 () Bool)

(assert (=> d!142091 e!744772))

(declare-fun res!866973 () Bool)

(assert (=> d!142091 (=> res!866973 e!744772)))

(declare-fun lt!584573 () Bool)

(assert (=> d!142091 (= res!866973 (not lt!584573))))

(declare-fun lt!584575 () Bool)

(assert (=> d!142091 (= lt!584573 lt!584575)))

(declare-fun lt!584576 () Unit!43175)

(declare-fun e!744771 () Unit!43175)

(assert (=> d!142091 (= lt!584576 e!744771)))

(declare-fun c!125420 () Bool)

(assert (=> d!142091 (= c!125420 lt!584575)))

(assert (=> d!142091 (= lt!584575 (containsKey!729 (toList!10255 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412))) lt!584410))))

(assert (=> d!142091 (= (contains!8334 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412)) lt!584410) lt!584573)))

(declare-fun b!1305605 () Bool)

(declare-fun lt!584574 () Unit!43175)

(assert (=> b!1305605 (= e!744771 lt!584574)))

(assert (=> b!1305605 (= lt!584574 (lemmaContainsKeyImpliesGetValueByKeyDefined!474 (toList!10255 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412))) lt!584410))))

(assert (=> b!1305605 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412))) lt!584410))))

(declare-fun b!1305606 () Bool)

(declare-fun Unit!43202 () Unit!43175)

(assert (=> b!1305606 (= e!744771 Unit!43202)))

(declare-fun b!1305607 () Bool)

(assert (=> b!1305607 (= e!744772 (isDefined!514 (getValueByKey!711 (toList!10255 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412))) lt!584410)))))

(assert (= (and d!142091 c!125420) b!1305605))

(assert (= (and d!142091 (not c!125420)) b!1305606))

(assert (= (and d!142091 (not res!866973)) b!1305607))

(declare-fun m!1196875 () Bool)

(assert (=> d!142091 m!1196875))

(declare-fun m!1196877 () Bool)

(assert (=> b!1305605 m!1196877))

(declare-fun m!1196879 () Bool)

(assert (=> b!1305605 m!1196879))

(assert (=> b!1305605 m!1196879))

(declare-fun m!1196881 () Bool)

(assert (=> b!1305605 m!1196881))

(assert (=> b!1305607 m!1196879))

(assert (=> b!1305607 m!1196879))

(assert (=> b!1305607 m!1196881))

(assert (=> b!1305334 d!142091))

(declare-fun d!142093 () Bool)

(declare-fun e!744773 () Bool)

(assert (=> d!142093 e!744773))

(declare-fun res!866975 () Bool)

(assert (=> d!142093 (=> (not res!866975) (not e!744773))))

(declare-fun lt!584579 () ListLongMap!20479)

(assert (=> d!142093 (= res!866975 (contains!8334 lt!584579 (_1!11415 (tuple2!22811 lt!584413 lt!584412))))))

(declare-fun lt!584577 () List!29958)

(assert (=> d!142093 (= lt!584579 (ListLongMap!20480 lt!584577))))

(declare-fun lt!584580 () Unit!43175)

(declare-fun lt!584578 () Unit!43175)

(assert (=> d!142093 (= lt!584580 lt!584578)))

(assert (=> d!142093 (= (getValueByKey!711 lt!584577 (_1!11415 (tuple2!22811 lt!584413 lt!584412))) (Some!761 (_2!11415 (tuple2!22811 lt!584413 lt!584412))))))

(assert (=> d!142093 (= lt!584578 (lemmaContainsTupThenGetReturnValue!355 lt!584577 (_1!11415 (tuple2!22811 lt!584413 lt!584412)) (_2!11415 (tuple2!22811 lt!584413 lt!584412))))))

(assert (=> d!142093 (= lt!584577 (insertStrictlySorted!484 (toList!10255 lt!584409) (_1!11415 (tuple2!22811 lt!584413 lt!584412)) (_2!11415 (tuple2!22811 lt!584413 lt!584412))))))

(assert (=> d!142093 (= (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412)) lt!584579)))

(declare-fun b!1305608 () Bool)

(declare-fun res!866974 () Bool)

(assert (=> b!1305608 (=> (not res!866974) (not e!744773))))

(assert (=> b!1305608 (= res!866974 (= (getValueByKey!711 (toList!10255 lt!584579) (_1!11415 (tuple2!22811 lt!584413 lt!584412))) (Some!761 (_2!11415 (tuple2!22811 lt!584413 lt!584412)))))))

(declare-fun b!1305609 () Bool)

(assert (=> b!1305609 (= e!744773 (contains!8336 (toList!10255 lt!584579) (tuple2!22811 lt!584413 lt!584412)))))

(assert (= (and d!142093 res!866975) b!1305608))

(assert (= (and b!1305608 res!866974) b!1305609))

(declare-fun m!1196883 () Bool)

(assert (=> d!142093 m!1196883))

(declare-fun m!1196885 () Bool)

(assert (=> d!142093 m!1196885))

(declare-fun m!1196887 () Bool)

(assert (=> d!142093 m!1196887))

(declare-fun m!1196889 () Bool)

(assert (=> d!142093 m!1196889))

(declare-fun m!1196891 () Bool)

(assert (=> b!1305608 m!1196891))

(declare-fun m!1196893 () Bool)

(assert (=> b!1305609 m!1196893))

(assert (=> b!1305334 d!142093))

(declare-fun d!142095 () Bool)

(declare-fun e!744774 () Bool)

(assert (=> d!142095 e!744774))

(declare-fun res!866977 () Bool)

(assert (=> d!142095 (=> (not res!866977) (not e!744774))))

(declare-fun lt!584583 () ListLongMap!20479)

(assert (=> d!142095 (= res!866977 (contains!8334 lt!584583 (_1!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!584581 () List!29958)

(assert (=> d!142095 (= lt!584583 (ListLongMap!20480 lt!584581))))

(declare-fun lt!584584 () Unit!43175)

(declare-fun lt!584582 () Unit!43175)

(assert (=> d!142095 (= lt!584584 lt!584582)))

(assert (=> d!142095 (= (getValueByKey!711 lt!584581 (_1!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!761 (_2!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142095 (= lt!584582 (lemmaContainsTupThenGetReturnValue!355 lt!584581 (_1!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142095 (= lt!584581 (insertStrictlySorted!484 (toList!10255 call!64463) (_1!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142095 (= (+!4472 call!64463 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!584583)))

(declare-fun b!1305610 () Bool)

(declare-fun res!866976 () Bool)

(assert (=> b!1305610 (=> (not res!866976) (not e!744774))))

(assert (=> b!1305610 (= res!866976 (= (getValueByKey!711 (toList!10255 lt!584583) (_1!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!761 (_2!11415 (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1305611 () Bool)

(assert (=> b!1305611 (= e!744774 (contains!8336 (toList!10255 lt!584583) (tuple2!22811 (select (arr!41921 _keys!1741) from!2144) (get!21226 (select (arr!41920 _values!1445) from!2144) (dynLambda!3513 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!142095 res!866977) b!1305610))

(assert (= (and b!1305610 res!866976) b!1305611))

(declare-fun m!1196895 () Bool)

(assert (=> d!142095 m!1196895))

(declare-fun m!1196897 () Bool)

(assert (=> d!142095 m!1196897))

(declare-fun m!1196899 () Bool)

(assert (=> d!142095 m!1196899))

(declare-fun m!1196901 () Bool)

(assert (=> d!142095 m!1196901))

(declare-fun m!1196903 () Bool)

(assert (=> b!1305610 m!1196903))

(declare-fun m!1196905 () Bool)

(assert (=> b!1305611 m!1196905))

(assert (=> b!1305334 d!142095))

(declare-fun d!142097 () Bool)

(assert (=> d!142097 (not (contains!8334 (+!4472 lt!584409 (tuple2!22811 lt!584413 lt!584412)) lt!584410))))

(declare-fun lt!584585 () Unit!43175)

(assert (=> d!142097 (= lt!584585 (choose!1944 lt!584409 lt!584413 lt!584412 lt!584410))))

(declare-fun e!744775 () Bool)

(assert (=> d!142097 e!744775))

(declare-fun res!866978 () Bool)

(assert (=> d!142097 (=> (not res!866978) (not e!744775))))

(assert (=> d!142097 (= res!866978 (not (contains!8334 lt!584409 lt!584410)))))

(assert (=> d!142097 (= (addStillNotContains!496 lt!584409 lt!584413 lt!584412 lt!584410) lt!584585)))

(declare-fun b!1305612 () Bool)

(assert (=> b!1305612 (= e!744775 (not (= lt!584413 lt!584410)))))

(assert (= (and d!142097 res!866978) b!1305612))

(assert (=> d!142097 m!1196395))

(assert (=> d!142097 m!1196395))

(assert (=> d!142097 m!1196397))

(declare-fun m!1196907 () Bool)

(assert (=> d!142097 m!1196907))

(declare-fun m!1196909 () Bool)

(assert (=> d!142097 m!1196909))

(assert (=> b!1305334 d!142097))

(assert (=> b!1305334 d!141941))

(assert (=> d!141909 d!142043))

(declare-fun d!142099 () Bool)

(assert (=> d!142099 (contains!8334 (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216)) k0!1205)))

(assert (=> d!142099 true))

(declare-fun _$21!125 () Unit!43175)

(assert (=> d!142099 (= (choose!1945 k0!1205 (ite (or c!125297 c!125299) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125297 c!125299) zeroValue!1387 minValue!1387) (ite c!125297 lt!584223 (ite c!125299 lt!584221 lt!584216))) _$21!125)))

(declare-fun bs!37198 () Bool)

(assert (= bs!37198 d!142099))

(assert (=> bs!37198 m!1196323))

(assert (=> d!141909 d!142099))

(assert (=> d!141909 d!142037))

(assert (=> d!141909 d!142039))

(assert (=> b!1305210 d!142057))

(assert (=> b!1305231 d!141965))

(assert (=> b!1305231 d!141967))

(assert (=> b!1305326 d!141979))

(assert (=> b!1305351 d!142057))

(assert (=> b!1305286 d!141917))

(declare-fun d!142101 () Bool)

(declare-fun res!866979 () Bool)

(declare-fun e!744776 () Bool)

(assert (=> d!142101 (=> res!866979 e!744776)))

(assert (=> d!142101 (= res!866979 (and ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 call!64394))) (= (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394)))) k0!1205)))))

(assert (=> d!142101 (= (containsKey!729 (toList!10255 (ite c!125297 lt!584223 call!64394)) k0!1205) e!744776)))

(declare-fun b!1305613 () Bool)

(declare-fun e!744777 () Bool)

(assert (=> b!1305613 (= e!744776 e!744777)))

(declare-fun res!866980 () Bool)

(assert (=> b!1305613 (=> (not res!866980) (not e!744777))))

(assert (=> b!1305613 (= res!866980 (and (or (not ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 call!64394)))) (bvsle (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394)))) k0!1205)) ((_ is Cons!29954) (toList!10255 (ite c!125297 lt!584223 call!64394))) (bvslt (_1!11415 (h!31163 (toList!10255 (ite c!125297 lt!584223 call!64394)))) k0!1205)))))

(declare-fun b!1305614 () Bool)

(assert (=> b!1305614 (= e!744777 (containsKey!729 (t!43567 (toList!10255 (ite c!125297 lt!584223 call!64394))) k0!1205))))

(assert (= (and d!142101 (not res!866979)) b!1305613))

(assert (= (and b!1305613 res!866980) b!1305614))

(declare-fun m!1196911 () Bool)

(assert (=> b!1305614 m!1196911))

(assert (=> d!141933 d!142101))

(declare-fun d!142103 () Bool)

(declare-fun e!744778 () Bool)

(assert (=> d!142103 e!744778))

(declare-fun res!866982 () Bool)

(assert (=> d!142103 (=> (not res!866982) (not e!744778))))

(declare-fun lt!584588 () ListLongMap!20479)

(assert (=> d!142103 (= res!866982 (contains!8334 lt!584588 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!584586 () List!29958)

(assert (=> d!142103 (= lt!584588 (ListLongMap!20480 lt!584586))))

(declare-fun lt!584589 () Unit!43175)

(declare-fun lt!584587 () Unit!43175)

(assert (=> d!142103 (= lt!584589 lt!584587)))

(assert (=> d!142103 (= (getValueByKey!711 lt!584586 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142103 (= lt!584587 (lemmaContainsTupThenGetReturnValue!355 lt!584586 (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142103 (= lt!584586 (insertStrictlySorted!484 (toList!10255 call!64460) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!142103 (= (+!4472 call!64460 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!584588)))

(declare-fun b!1305615 () Bool)

(declare-fun res!866981 () Bool)

(assert (=> b!1305615 (=> (not res!866981) (not e!744778))))

(assert (=> b!1305615 (= res!866981 (= (getValueByKey!711 (toList!10255 lt!584588) (_1!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!761 (_2!11415 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1305616 () Bool)

(assert (=> b!1305616 (= e!744778 (contains!8336 (toList!10255 lt!584588) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!142103 res!866982) b!1305615))

(assert (= (and b!1305615 res!866981) b!1305616))

(declare-fun m!1196913 () Bool)

(assert (=> d!142103 m!1196913))

(declare-fun m!1196915 () Bool)

(assert (=> d!142103 m!1196915))

(declare-fun m!1196917 () Bool)

(assert (=> d!142103 m!1196917))

(declare-fun m!1196919 () Bool)

(assert (=> d!142103 m!1196919))

(declare-fun m!1196921 () Bool)

(assert (=> b!1305615 m!1196921))

(declare-fun m!1196923 () Bool)

(assert (=> b!1305616 m!1196923))

(assert (=> b!1305289 d!142103))

(assert (=> b!1305287 d!141917))

(declare-fun b!1305617 () Bool)

(declare-fun e!744779 () Option!762)

(assert (=> b!1305617 (= e!744779 (Some!761 (_2!11415 (h!31163 (toList!10255 lt!584297)))))))

(declare-fun b!1305620 () Bool)

(declare-fun e!744780 () Option!762)

(assert (=> b!1305620 (= e!744780 None!760)))

(declare-fun b!1305618 () Bool)

(assert (=> b!1305618 (= e!744779 e!744780)))

(declare-fun c!125422 () Bool)

(assert (=> b!1305618 (= c!125422 (and ((_ is Cons!29954) (toList!10255 lt!584297)) (not (= (_1!11415 (h!31163 (toList!10255 lt!584297))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))))

(declare-fun d!142105 () Bool)

(declare-fun c!125421 () Bool)

(assert (=> d!142105 (= c!125421 (and ((_ is Cons!29954) (toList!10255 lt!584297)) (= (_1!11415 (h!31163 (toList!10255 lt!584297))) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))))

(assert (=> d!142105 (= (getValueByKey!711 (toList!10255 lt!584297) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))) e!744779)))

(declare-fun b!1305619 () Bool)

(assert (=> b!1305619 (= e!744780 (getValueByKey!711 (t!43567 (toList!10255 lt!584297)) (_1!11415 (ite c!125297 (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125299 (tuple2!22811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(assert (= (and d!142105 c!125421) b!1305617))

(assert (= (and d!142105 (not c!125421)) b!1305618))

(assert (= (and b!1305618 c!125422) b!1305619))

(assert (= (and b!1305618 (not c!125422)) b!1305620))

(declare-fun m!1196925 () Bool)

(assert (=> b!1305619 m!1196925))

(assert (=> b!1305215 d!142105))

(assert (=> b!1305328 d!141917))

(declare-fun b!1305621 () Bool)

(declare-fun e!744783 () Bool)

(assert (=> b!1305621 (= e!744783 (contains!8337 (ite c!125349 (Cons!29955 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) Nil!29956) Nil!29956) (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1305622 () Bool)

(declare-fun e!744781 () Bool)

(declare-fun e!744784 () Bool)

(assert (=> b!1305622 (= e!744781 e!744784)))

(declare-fun c!125423 () Bool)

(assert (=> b!1305622 (= c!125423 (validKeyInArray!0 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!64478 () Bool)

(declare-fun call!64481 () Bool)

(assert (=> bm!64478 (= call!64481 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125423 (Cons!29955 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125349 (Cons!29955 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) Nil!29956) Nil!29956)) (ite c!125349 (Cons!29955 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) Nil!29956) Nil!29956))))))

(declare-fun b!1305624 () Bool)

(assert (=> b!1305624 (= e!744784 call!64481)))

(declare-fun b!1305625 () Bool)

(assert (=> b!1305625 (= e!744784 call!64481)))

(declare-fun b!1305623 () Bool)

(declare-fun e!744782 () Bool)

(assert (=> b!1305623 (= e!744782 e!744781)))

(declare-fun res!866983 () Bool)

(assert (=> b!1305623 (=> (not res!866983) (not e!744781))))

(assert (=> b!1305623 (= res!866983 (not e!744783))))

(declare-fun res!866984 () Bool)

(assert (=> b!1305623 (=> (not res!866984) (not e!744783))))

(assert (=> b!1305623 (= res!866984 (validKeyInArray!0 (select (arr!41921 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!142107 () Bool)

(declare-fun res!866985 () Bool)

(assert (=> d!142107 (=> res!866985 e!744782)))

(assert (=> d!142107 (= res!866985 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42472 _keys!1741)))))

(assert (=> d!142107 (= (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125349 (Cons!29955 (select (arr!41921 _keys!1741) #b00000000000000000000000000000000) Nil!29956) Nil!29956)) e!744782)))

(assert (= (and d!142107 (not res!866985)) b!1305623))

(assert (= (and b!1305623 res!866984) b!1305621))

(assert (= (and b!1305623 res!866983) b!1305622))

(assert (= (and b!1305622 c!125423) b!1305624))

(assert (= (and b!1305622 (not c!125423)) b!1305625))

(assert (= (or b!1305624 b!1305625) bm!64478))

(assert (=> b!1305621 m!1196813))

(assert (=> b!1305621 m!1196813))

(declare-fun m!1196927 () Bool)

(assert (=> b!1305621 m!1196927))

(assert (=> b!1305622 m!1196813))

(assert (=> b!1305622 m!1196813))

(assert (=> b!1305622 m!1196823))

(assert (=> bm!64478 m!1196813))

(declare-fun m!1196929 () Bool)

(assert (=> bm!64478 m!1196929))

(assert (=> b!1305623 m!1196813))

(assert (=> b!1305623 m!1196813))

(assert (=> b!1305623 m!1196823))

(assert (=> bm!64463 d!142107))

(declare-fun condMapEmpty!54034 () Bool)

(declare-fun mapDefault!54034 () ValueCell!16575)

(assert (=> mapNonEmpty!54033 (= condMapEmpty!54034 (= mapRest!54033 ((as const (Array (_ BitVec 32) ValueCell!16575)) mapDefault!54034)))))

(declare-fun e!744785 () Bool)

(declare-fun mapRes!54034 () Bool)

(assert (=> mapNonEmpty!54033 (= tp!103096 (and e!744785 mapRes!54034))))

(declare-fun mapIsEmpty!54034 () Bool)

(assert (=> mapIsEmpty!54034 mapRes!54034))

(declare-fun mapNonEmpty!54034 () Bool)

(declare-fun tp!103097 () Bool)

(declare-fun e!744786 () Bool)

(assert (=> mapNonEmpty!54034 (= mapRes!54034 (and tp!103097 e!744786))))

(declare-fun mapKey!54034 () (_ BitVec 32))

(declare-fun mapValue!54034 () ValueCell!16575)

(declare-fun mapRest!54034 () (Array (_ BitVec 32) ValueCell!16575))

(assert (=> mapNonEmpty!54034 (= mapRest!54033 (store mapRest!54034 mapKey!54034 mapValue!54034))))

(declare-fun b!1305626 () Bool)

(assert (=> b!1305626 (= e!744786 tp_is_empty!34947)))

(declare-fun b!1305627 () Bool)

(assert (=> b!1305627 (= e!744785 tp_is_empty!34947)))

(assert (= (and mapNonEmpty!54033 condMapEmpty!54034) mapIsEmpty!54034))

(assert (= (and mapNonEmpty!54033 (not condMapEmpty!54034)) mapNonEmpty!54034))

(assert (= (and mapNonEmpty!54034 ((_ is ValueCellFull!16575) mapValue!54034)) b!1305626))

(assert (= (and mapNonEmpty!54033 ((_ is ValueCellFull!16575) mapDefault!54034)) b!1305627))

(declare-fun m!1196931 () Bool)

(assert (=> mapNonEmpty!54034 m!1196931))

(declare-fun b_lambda!23365 () Bool)

(assert (= b_lambda!23363 (or (and start!110296 b_free!29307) b_lambda!23365)))

(declare-fun b_lambda!23367 () Bool)

(assert (= b_lambda!23361 (or (and start!110296 b_free!29307) b_lambda!23367)))

(check-sat (not b!1305539) (not b!1305458) (not b!1305567) (not b_lambda!23359) (not d!142009) (not b!1305551) (not b!1305584) (not b!1305605) (not d!141951) (not b!1305480) (not b!1305558) (not b!1305527) (not b!1305600) (not d!142055) (not b!1305386) (not d!142089) (not b!1305555) (not b!1305608) (not b!1305585) (not d!142029) (not d!142061) (not d!142039) (not b!1305622) (not b!1305508) (not b!1305599) (not b!1305442) (not b!1305565) (not b!1305609) (not b!1305452) (not b!1305489) (not d!141943) (not d!142015) (not b!1305562) (not d!142097) (not b!1305379) (not d!141947) (not b!1305559) (not b!1305501) (not b!1305597) (not b!1305394) (not d!141981) (not d!142059) (not b!1305525) (not d!142095) (not b!1305619) (not d!141999) (not b!1305516) (not d!142031) (not b!1305576) (not b!1305602) (not b!1305507) (not d!142041) (not b!1305393) (not d!141965) (not b!1305485) (not bm!64472) (not bm!64477) (not b_next!29307) (not d!142099) (not d!142019) (not d!142103) (not d!142081) (not b!1305510) (not b!1305404) (not b!1305524) (not b!1305439) (not d!142087) (not d!142013) (not b!1305615) (not b!1305410) (not d!141989) (not d!141945) (not b!1305594) (not d!142043) (not b!1305399) (not b!1305396) (not b!1305490) (not b!1305578) (not b!1305579) (not b!1305492) (not b!1305445) (not b!1305411) (not b!1305611) (not b!1305536) (not d!141955) (not b!1305518) (not d!142007) (not d!142075) (not b!1305532) (not d!141995) (not d!141949) (not d!141963) (not b!1305432) (not d!142083) (not d!142049) (not d!142053) (not d!141939) (not d!142017) (not b!1305623) (not b_lambda!23357) (not d!142085) (not b!1305497) (not b!1305616) (not b!1305398) (not bm!64478) (not mapNonEmpty!54034) (not b!1305541) (not b!1305569) (not b!1305479) (not d!142033) (not b!1305401) (not b!1305621) (not d!141971) (not b!1305486) (not b!1305487) (not d!141993) (not b!1305592) (not b!1305557) (not b!1305582) (not b!1305483) (not b!1305587) (not b!1305477) b_and!47525 (not d!141935) (not b!1305610) (not b!1305604) (not d!141977) (not b!1305495) (not b_lambda!23367) (not d!142037) (not d!141975) (not d!142091) (not d!142047) (not b!1305441) (not d!142001) (not b!1305553) (not b!1305526) (not b!1305568) (not d!142045) (not b!1305560) (not d!141953) (not b!1305614) (not d!141985) (not d!142003) (not b!1305385) (not d!142025) (not b!1305607) (not b!1305517) (not b!1305601) (not bm!64473) (not d!142005) (not b!1305520) (not d!141979) (not b!1305529) (not d!142023) (not d!141983) tp_is_empty!34947 (not b!1305476) (not b!1305547) (not d!142065) (not d!142021) (not b!1305596) (not b!1305534) (not b!1305523) (not d!141961) (not d!141997) (not d!142073) (not b!1305392) (not b!1305390) (not b!1305537) (not b_lambda!23355) (not b_lambda!23365) (not d!142011) (not d!142027) (not b!1305548) (not b!1305538) (not d!142093) (not b!1305481) (not b!1305522) (not b!1305499) (not b!1305589) (not bm!64476) (not b!1305389) (not d!141959) (not d!142067))
(check-sat b_and!47525 (not b_next!29307))
