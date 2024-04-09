; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112940 () Bool)

(assert start!112940)

(declare-fun b!1338614 () Bool)

(declare-fun e!762308 () Bool)

(declare-fun tp_is_empty!36993 () Bool)

(assert (=> b!1338614 (= e!762308 tp_is_empty!36993)))

(declare-fun res!888203 () Bool)

(declare-fun e!762311 () Bool)

(assert (=> start!112940 (=> (not res!888203) (not e!762311))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112940 (= res!888203 (validMask!0 mask!1977))))

(assert (=> start!112940 e!762311))

(assert (=> start!112940 true))

(declare-datatypes ((V!54427 0))(
  ( (V!54428 (val!18571 Int)) )
))
(declare-datatypes ((ValueCell!17598 0))(
  ( (ValueCellFull!17598 (v!21216 V!54427)) (EmptyCell!17598) )
))
(declare-datatypes ((array!90817 0))(
  ( (array!90818 (arr!43864 (Array (_ BitVec 32) ValueCell!17598)) (size!44415 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90817)

(declare-fun e!762309 () Bool)

(declare-fun array_inv!33003 (array!90817) Bool)

(assert (=> start!112940 (and (array_inv!33003 _values!1303) e!762309)))

(declare-datatypes ((array!90819 0))(
  ( (array!90820 (arr!43865 (Array (_ BitVec 32) (_ BitVec 64))) (size!44416 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90819)

(declare-fun array_inv!33004 (array!90819) Bool)

(assert (=> start!112940 (array_inv!33004 _keys!1571)))

(declare-fun b!1338615 () Bool)

(assert (=> b!1338615 (= e!762311 (bvsgt #b00000000000000000000000000000000 (size!44416 _keys!1571)))))

(declare-fun mapIsEmpty!57184 () Bool)

(declare-fun mapRes!57184 () Bool)

(assert (=> mapIsEmpty!57184 mapRes!57184))

(declare-fun mapNonEmpty!57184 () Bool)

(declare-fun tp!108884 () Bool)

(assert (=> mapNonEmpty!57184 (= mapRes!57184 (and tp!108884 e!762308))))

(declare-fun mapRest!57184 () (Array (_ BitVec 32) ValueCell!17598))

(declare-fun mapKey!57184 () (_ BitVec 32))

(declare-fun mapValue!57184 () ValueCell!17598)

(assert (=> mapNonEmpty!57184 (= (arr!43864 _values!1303) (store mapRest!57184 mapKey!57184 mapValue!57184))))

(declare-fun b!1338616 () Bool)

(declare-fun e!762312 () Bool)

(assert (=> b!1338616 (= e!762312 tp_is_empty!36993)))

(declare-fun b!1338617 () Bool)

(assert (=> b!1338617 (= e!762309 (and e!762312 mapRes!57184))))

(declare-fun condMapEmpty!57184 () Bool)

(declare-fun mapDefault!57184 () ValueCell!17598)

(assert (=> b!1338617 (= condMapEmpty!57184 (= (arr!43864 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17598)) mapDefault!57184)))))

(declare-fun b!1338618 () Bool)

(declare-fun res!888204 () Bool)

(assert (=> b!1338618 (=> (not res!888204) (not e!762311))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338618 (= res!888204 (and (= (size!44415 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44416 _keys!1571) (size!44415 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338619 () Bool)

(declare-fun res!888202 () Bool)

(assert (=> b!1338619 (=> (not res!888202) (not e!762311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90819 (_ BitVec 32)) Bool)

(assert (=> b!1338619 (= res!888202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!112940 res!888203) b!1338618))

(assert (= (and b!1338618 res!888204) b!1338619))

(assert (= (and b!1338619 res!888202) b!1338615))

(assert (= (and b!1338617 condMapEmpty!57184) mapIsEmpty!57184))

(assert (= (and b!1338617 (not condMapEmpty!57184)) mapNonEmpty!57184))

(get-info :version)

(assert (= (and mapNonEmpty!57184 ((_ is ValueCellFull!17598) mapValue!57184)) b!1338614))

(assert (= (and b!1338617 ((_ is ValueCellFull!17598) mapDefault!57184)) b!1338616))

(assert (= start!112940 b!1338617))

(declare-fun m!1226973 () Bool)

(assert (=> start!112940 m!1226973))

(declare-fun m!1226975 () Bool)

(assert (=> start!112940 m!1226975))

(declare-fun m!1226977 () Bool)

(assert (=> start!112940 m!1226977))

(declare-fun m!1226979 () Bool)

(assert (=> mapNonEmpty!57184 m!1226979))

(declare-fun m!1226981 () Bool)

(assert (=> b!1338619 m!1226981))

(check-sat (not start!112940) (not b!1338619) (not mapNonEmpty!57184) tp_is_empty!36993)
(check-sat)
(get-model)

(declare-fun d!143997 () Bool)

(assert (=> d!143997 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!112940 d!143997))

(declare-fun d!143999 () Bool)

(assert (=> d!143999 (= (array_inv!33003 _values!1303) (bvsge (size!44415 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!112940 d!143999))

(declare-fun d!144001 () Bool)

(assert (=> d!144001 (= (array_inv!33004 _keys!1571) (bvsge (size!44416 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!112940 d!144001))

(declare-fun b!1338646 () Bool)

(declare-fun e!762335 () Bool)

(declare-fun e!762336 () Bool)

(assert (=> b!1338646 (= e!762335 e!762336)))

(declare-fun c!126231 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1338646 (= c!126231 (validKeyInArray!0 (select (arr!43865 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1338647 () Bool)

(declare-fun call!65024 () Bool)

(assert (=> b!1338647 (= e!762336 call!65024)))

(declare-fun bm!65021 () Bool)

(assert (=> bm!65021 (= call!65024 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun d!144003 () Bool)

(declare-fun res!888219 () Bool)

(assert (=> d!144003 (=> res!888219 e!762335)))

(assert (=> d!144003 (= res!888219 (bvsge #b00000000000000000000000000000000 (size!44416 _keys!1571)))))

(assert (=> d!144003 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!762335)))

(declare-fun b!1338648 () Bool)

(declare-fun e!762334 () Bool)

(assert (=> b!1338648 (= e!762334 call!65024)))

(declare-fun b!1338649 () Bool)

(assert (=> b!1338649 (= e!762336 e!762334)))

(declare-fun lt!593724 () (_ BitVec 64))

(assert (=> b!1338649 (= lt!593724 (select (arr!43865 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43913 0))(
  ( (Unit!43914) )
))
(declare-fun lt!593722 () Unit!43913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90819 (_ BitVec 64) (_ BitVec 32)) Unit!43913)

(assert (=> b!1338649 (= lt!593722 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!593724 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1338649 (arrayContainsKey!0 _keys!1571 lt!593724 #b00000000000000000000000000000000)))

(declare-fun lt!593723 () Unit!43913)

(assert (=> b!1338649 (= lt!593723 lt!593722)))

(declare-fun res!888218 () Bool)

(declare-datatypes ((SeekEntryResult!10049 0))(
  ( (MissingZero!10049 (index!42566 (_ BitVec 32))) (Found!10049 (index!42567 (_ BitVec 32))) (Intermediate!10049 (undefined!10861 Bool) (index!42568 (_ BitVec 32)) (x!119571 (_ BitVec 32))) (Undefined!10049) (MissingVacant!10049 (index!42569 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90819 (_ BitVec 32)) SeekEntryResult!10049)

(assert (=> b!1338649 (= res!888218 (= (seekEntryOrOpen!0 (select (arr!43865 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10049 #b00000000000000000000000000000000)))))

(assert (=> b!1338649 (=> (not res!888218) (not e!762334))))

(assert (= (and d!144003 (not res!888219)) b!1338646))

(assert (= (and b!1338646 c!126231) b!1338649))

(assert (= (and b!1338646 (not c!126231)) b!1338647))

(assert (= (and b!1338649 res!888218) b!1338648))

(assert (= (or b!1338648 b!1338647) bm!65021))

(declare-fun m!1226993 () Bool)

(assert (=> b!1338646 m!1226993))

(assert (=> b!1338646 m!1226993))

(declare-fun m!1226995 () Bool)

(assert (=> b!1338646 m!1226995))

(declare-fun m!1226997 () Bool)

(assert (=> bm!65021 m!1226997))

(assert (=> b!1338649 m!1226993))

(declare-fun m!1226999 () Bool)

(assert (=> b!1338649 m!1226999))

(declare-fun m!1227001 () Bool)

(assert (=> b!1338649 m!1227001))

(assert (=> b!1338649 m!1226993))

(declare-fun m!1227003 () Bool)

(assert (=> b!1338649 m!1227003))

(assert (=> b!1338619 d!144003))

(declare-fun b!1338656 () Bool)

(declare-fun e!762342 () Bool)

(assert (=> b!1338656 (= e!762342 tp_is_empty!36993)))

(declare-fun b!1338657 () Bool)

(declare-fun e!762341 () Bool)

(assert (=> b!1338657 (= e!762341 tp_is_empty!36993)))

(declare-fun mapIsEmpty!57190 () Bool)

(declare-fun mapRes!57190 () Bool)

(assert (=> mapIsEmpty!57190 mapRes!57190))

(declare-fun mapNonEmpty!57190 () Bool)

(declare-fun tp!108890 () Bool)

(assert (=> mapNonEmpty!57190 (= mapRes!57190 (and tp!108890 e!762342))))

(declare-fun mapRest!57190 () (Array (_ BitVec 32) ValueCell!17598))

(declare-fun mapValue!57190 () ValueCell!17598)

(declare-fun mapKey!57190 () (_ BitVec 32))

(assert (=> mapNonEmpty!57190 (= mapRest!57184 (store mapRest!57190 mapKey!57190 mapValue!57190))))

(declare-fun condMapEmpty!57190 () Bool)

(declare-fun mapDefault!57190 () ValueCell!17598)

(assert (=> mapNonEmpty!57184 (= condMapEmpty!57190 (= mapRest!57184 ((as const (Array (_ BitVec 32) ValueCell!17598)) mapDefault!57190)))))

(assert (=> mapNonEmpty!57184 (= tp!108884 (and e!762341 mapRes!57190))))

(assert (= (and mapNonEmpty!57184 condMapEmpty!57190) mapIsEmpty!57190))

(assert (= (and mapNonEmpty!57184 (not condMapEmpty!57190)) mapNonEmpty!57190))

(assert (= (and mapNonEmpty!57190 ((_ is ValueCellFull!17598) mapValue!57190)) b!1338656))

(assert (= (and mapNonEmpty!57184 ((_ is ValueCellFull!17598) mapDefault!57190)) b!1338657))

(declare-fun m!1227005 () Bool)

(assert (=> mapNonEmpty!57190 m!1227005))

(check-sat (not b!1338649) (not b!1338646) tp_is_empty!36993 (not mapNonEmpty!57190) (not bm!65021))
(check-sat)
