; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111300 () Bool)

(assert start!111300)

(declare-fun b!1316823 () Bool)

(declare-fun res!874128 () Bool)

(declare-fun e!751326 () Bool)

(assert (=> b!1316823 (=> (not res!874128) (not e!751326))))

(declare-datatypes ((array!88437 0))(
  ( (array!88438 (arr!42690 (Array (_ BitVec 32) (_ BitVec 64))) (size!43241 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88437)

(assert (=> b!1316823 (= res!874128 (and (bvsle #b00000000000000000000000000000000 (size!43241 _keys!1609)) (bvslt (size!43241 _keys!1609) #b01111111111111111111111111111111)))))

(declare-fun res!874129 () Bool)

(assert (=> start!111300 (=> (not res!874129) (not e!751326))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111300 (= res!874129 (validMask!0 mask!2019))))

(assert (=> start!111300 e!751326))

(assert (=> start!111300 true))

(declare-datatypes ((V!52787 0))(
  ( (V!52788 (val!17956 Int)) )
))
(declare-datatypes ((ValueCell!16983 0))(
  ( (ValueCellFull!16983 (v!20583 V!52787)) (EmptyCell!16983) )
))
(declare-datatypes ((array!88439 0))(
  ( (array!88440 (arr!42691 (Array (_ BitVec 32) ValueCell!16983)) (size!43242 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88439)

(declare-fun e!751328 () Bool)

(declare-fun array_inv!32205 (array!88439) Bool)

(assert (=> start!111300 (and (array_inv!32205 _values!1337) e!751328)))

(declare-fun array_inv!32206 (array!88437) Bool)

(assert (=> start!111300 (array_inv!32206 _keys!1609)))

(declare-fun mapIsEmpty!55286 () Bool)

(declare-fun mapRes!55286 () Bool)

(assert (=> mapIsEmpty!55286 mapRes!55286))

(declare-fun b!1316824 () Bool)

(declare-fun e!751324 () Bool)

(assert (=> b!1316824 (= e!751328 (and e!751324 mapRes!55286))))

(declare-fun condMapEmpty!55286 () Bool)

(declare-fun mapDefault!55286 () ValueCell!16983)

(assert (=> b!1316824 (= condMapEmpty!55286 (= (arr!42691 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16983)) mapDefault!55286)))))

(declare-fun b!1316825 () Bool)

(declare-fun res!874127 () Bool)

(assert (=> b!1316825 (=> (not res!874127) (not e!751326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88437 (_ BitVec 32)) Bool)

(assert (=> b!1316825 (= res!874127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55286 () Bool)

(declare-fun tp!105393 () Bool)

(declare-fun e!751327 () Bool)

(assert (=> mapNonEmpty!55286 (= mapRes!55286 (and tp!105393 e!751327))))

(declare-fun mapValue!55286 () ValueCell!16983)

(declare-fun mapKey!55286 () (_ BitVec 32))

(declare-fun mapRest!55286 () (Array (_ BitVec 32) ValueCell!16983))

(assert (=> mapNonEmpty!55286 (= (arr!42691 _values!1337) (store mapRest!55286 mapKey!55286 mapValue!55286))))

(declare-fun b!1316826 () Bool)

(declare-fun tp_is_empty!35763 () Bool)

(assert (=> b!1316826 (= e!751324 tp_is_empty!35763)))

(declare-fun b!1316827 () Bool)

(assert (=> b!1316827 (= e!751327 tp_is_empty!35763)))

(declare-fun b!1316828 () Bool)

(declare-fun res!874130 () Bool)

(assert (=> b!1316828 (=> (not res!874130) (not e!751326))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1316828 (= res!874130 (and (= (size!43242 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43241 _keys!1609) (size!43242 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1316829 () Bool)

(declare-datatypes ((List!30468 0))(
  ( (Nil!30465) (Cons!30464 (h!31673 (_ BitVec 64)) (t!44083 List!30468)) )
))
(declare-fun noDuplicate!2095 (List!30468) Bool)

(assert (=> b!1316829 (= e!751326 (not (noDuplicate!2095 Nil!30465)))))

(assert (= (and start!111300 res!874129) b!1316828))

(assert (= (and b!1316828 res!874130) b!1316825))

(assert (= (and b!1316825 res!874127) b!1316823))

(assert (= (and b!1316823 res!874128) b!1316829))

(assert (= (and b!1316824 condMapEmpty!55286) mapIsEmpty!55286))

(assert (= (and b!1316824 (not condMapEmpty!55286)) mapNonEmpty!55286))

(get-info :version)

(assert (= (and mapNonEmpty!55286 ((_ is ValueCellFull!16983) mapValue!55286)) b!1316827))

(assert (= (and b!1316824 ((_ is ValueCellFull!16983) mapDefault!55286)) b!1316826))

(assert (= start!111300 b!1316824))

(declare-fun m!1204901 () Bool)

(assert (=> start!111300 m!1204901))

(declare-fun m!1204903 () Bool)

(assert (=> start!111300 m!1204903))

(declare-fun m!1204905 () Bool)

(assert (=> start!111300 m!1204905))

(declare-fun m!1204907 () Bool)

(assert (=> b!1316825 m!1204907))

(declare-fun m!1204909 () Bool)

(assert (=> mapNonEmpty!55286 m!1204909))

(declare-fun m!1204911 () Bool)

(assert (=> b!1316829 m!1204911))

(check-sat (not start!111300) (not mapNonEmpty!55286) (not b!1316825) tp_is_empty!35763 (not b!1316829))
(check-sat)
(get-model)

(declare-fun d!142615 () Bool)

(assert (=> d!142615 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111300 d!142615))

(declare-fun d!142617 () Bool)

(assert (=> d!142617 (= (array_inv!32205 _values!1337) (bvsge (size!43242 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111300 d!142617))

(declare-fun d!142619 () Bool)

(assert (=> d!142619 (= (array_inv!32206 _keys!1609) (bvsge (size!43241 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111300 d!142619))

(declare-fun b!1316859 () Bool)

(declare-fun e!751351 () Bool)

(declare-fun e!751350 () Bool)

(assert (=> b!1316859 (= e!751351 e!751350)))

(declare-fun c!125579 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316859 (= c!125579 (validKeyInArray!0 (select (arr!42690 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1316860 () Bool)

(declare-fun e!751352 () Bool)

(declare-fun call!64677 () Bool)

(assert (=> b!1316860 (= e!751352 call!64677)))

(declare-fun b!1316861 () Bool)

(assert (=> b!1316861 (= e!751350 call!64677)))

(declare-fun d!142621 () Bool)

(declare-fun res!874147 () Bool)

(assert (=> d!142621 (=> res!874147 e!751351)))

(assert (=> d!142621 (= res!874147 (bvsge #b00000000000000000000000000000000 (size!43241 _keys!1609)))))

(assert (=> d!142621 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!751351)))

(declare-fun b!1316862 () Bool)

(assert (=> b!1316862 (= e!751350 e!751352)))

(declare-fun lt!586228 () (_ BitVec 64))

(assert (=> b!1316862 (= lt!586228 (select (arr!42690 _keys!1609) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43360 0))(
  ( (Unit!43361) )
))
(declare-fun lt!586229 () Unit!43360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!88437 (_ BitVec 64) (_ BitVec 32)) Unit!43360)

(assert (=> b!1316862 (= lt!586229 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!586228 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!88437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1316862 (arrayContainsKey!0 _keys!1609 lt!586228 #b00000000000000000000000000000000)))

(declare-fun lt!586230 () Unit!43360)

(assert (=> b!1316862 (= lt!586230 lt!586229)))

(declare-fun res!874148 () Bool)

(declare-datatypes ((SeekEntryResult!10035 0))(
  ( (MissingZero!10035 (index!42510 (_ BitVec 32))) (Found!10035 (index!42511 (_ BitVec 32))) (Intermediate!10035 (undefined!10847 Bool) (index!42512 (_ BitVec 32)) (x!117073 (_ BitVec 32))) (Undefined!10035) (MissingVacant!10035 (index!42513 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!88437 (_ BitVec 32)) SeekEntryResult!10035)

(assert (=> b!1316862 (= res!874148 (= (seekEntryOrOpen!0 (select (arr!42690 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10035 #b00000000000000000000000000000000)))))

(assert (=> b!1316862 (=> (not res!874148) (not e!751352))))

(declare-fun bm!64674 () Bool)

(assert (=> bm!64674 (= call!64677 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(assert (= (and d!142621 (not res!874147)) b!1316859))

(assert (= (and b!1316859 c!125579) b!1316862))

(assert (= (and b!1316859 (not c!125579)) b!1316861))

(assert (= (and b!1316862 res!874148) b!1316860))

(assert (= (or b!1316860 b!1316861) bm!64674))

(declare-fun m!1204925 () Bool)

(assert (=> b!1316859 m!1204925))

(assert (=> b!1316859 m!1204925))

(declare-fun m!1204927 () Bool)

(assert (=> b!1316859 m!1204927))

(assert (=> b!1316862 m!1204925))

(declare-fun m!1204929 () Bool)

(assert (=> b!1316862 m!1204929))

(declare-fun m!1204931 () Bool)

(assert (=> b!1316862 m!1204931))

(assert (=> b!1316862 m!1204925))

(declare-fun m!1204933 () Bool)

(assert (=> b!1316862 m!1204933))

(declare-fun m!1204935 () Bool)

(assert (=> bm!64674 m!1204935))

(assert (=> b!1316825 d!142621))

(declare-fun d!142623 () Bool)

(declare-fun res!874153 () Bool)

(declare-fun e!751357 () Bool)

(assert (=> d!142623 (=> res!874153 e!751357)))

(assert (=> d!142623 (= res!874153 ((_ is Nil!30465) Nil!30465))))

(assert (=> d!142623 (= (noDuplicate!2095 Nil!30465) e!751357)))

(declare-fun b!1316867 () Bool)

(declare-fun e!751358 () Bool)

(assert (=> b!1316867 (= e!751357 e!751358)))

(declare-fun res!874154 () Bool)

(assert (=> b!1316867 (=> (not res!874154) (not e!751358))))

(declare-fun contains!8588 (List!30468 (_ BitVec 64)) Bool)

(assert (=> b!1316867 (= res!874154 (not (contains!8588 (t!44083 Nil!30465) (h!31673 Nil!30465))))))

(declare-fun b!1316868 () Bool)

(assert (=> b!1316868 (= e!751358 (noDuplicate!2095 (t!44083 Nil!30465)))))

(assert (= (and d!142623 (not res!874153)) b!1316867))

(assert (= (and b!1316867 res!874154) b!1316868))

(declare-fun m!1204937 () Bool)

(assert (=> b!1316867 m!1204937))

(declare-fun m!1204939 () Bool)

(assert (=> b!1316868 m!1204939))

(assert (=> b!1316829 d!142623))

(declare-fun b!1316875 () Bool)

(declare-fun e!751363 () Bool)

(assert (=> b!1316875 (= e!751363 tp_is_empty!35763)))

(declare-fun b!1316876 () Bool)

(declare-fun e!751364 () Bool)

(assert (=> b!1316876 (= e!751364 tp_is_empty!35763)))

(declare-fun condMapEmpty!55292 () Bool)

(declare-fun mapDefault!55292 () ValueCell!16983)

(assert (=> mapNonEmpty!55286 (= condMapEmpty!55292 (= mapRest!55286 ((as const (Array (_ BitVec 32) ValueCell!16983)) mapDefault!55292)))))

(declare-fun mapRes!55292 () Bool)

(assert (=> mapNonEmpty!55286 (= tp!105393 (and e!751364 mapRes!55292))))

(declare-fun mapIsEmpty!55292 () Bool)

(assert (=> mapIsEmpty!55292 mapRes!55292))

(declare-fun mapNonEmpty!55292 () Bool)

(declare-fun tp!105399 () Bool)

(assert (=> mapNonEmpty!55292 (= mapRes!55292 (and tp!105399 e!751363))))

(declare-fun mapValue!55292 () ValueCell!16983)

(declare-fun mapRest!55292 () (Array (_ BitVec 32) ValueCell!16983))

(declare-fun mapKey!55292 () (_ BitVec 32))

(assert (=> mapNonEmpty!55292 (= mapRest!55286 (store mapRest!55292 mapKey!55292 mapValue!55292))))

(assert (= (and mapNonEmpty!55286 condMapEmpty!55292) mapIsEmpty!55292))

(assert (= (and mapNonEmpty!55286 (not condMapEmpty!55292)) mapNonEmpty!55292))

(assert (= (and mapNonEmpty!55292 ((_ is ValueCellFull!16983) mapValue!55292)) b!1316875))

(assert (= (and mapNonEmpty!55286 ((_ is ValueCellFull!16983) mapDefault!55292)) b!1316876))

(declare-fun m!1204941 () Bool)

(assert (=> mapNonEmpty!55292 m!1204941))

(check-sat (not mapNonEmpty!55292) (not b!1316868) (not b!1316862) (not bm!64674) tp_is_empty!35763 (not b!1316859) (not b!1316867))
(check-sat)
