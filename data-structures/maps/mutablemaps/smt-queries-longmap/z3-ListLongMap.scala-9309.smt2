; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111316 () Bool)

(assert start!111316)

(declare-fun b!1316922 () Bool)

(declare-fun e!751395 () Bool)

(declare-fun tp_is_empty!35769 () Bool)

(assert (=> b!1316922 (= e!751395 tp_is_empty!35769)))

(declare-fun b!1316923 () Bool)

(declare-fun res!874190 () Bool)

(declare-fun e!751398 () Bool)

(assert (=> b!1316923 (=> (not res!874190) (not e!751398))))

(declare-datatypes ((List!30471 0))(
  ( (Nil!30468) (Cons!30467 (h!31676 (_ BitVec 64)) (t!44086 List!30471)) )
))
(declare-fun noDuplicate!2098 (List!30471) Bool)

(assert (=> b!1316923 (= res!874190 (noDuplicate!2098 Nil!30468))))

(declare-fun b!1316924 () Bool)

(declare-fun e!751399 () Bool)

(assert (=> b!1316924 (= e!751398 e!751399)))

(declare-fun res!874185 () Bool)

(assert (=> b!1316924 (=> res!874185 e!751399)))

(declare-fun contains!8590 (List!30471 (_ BitVec 64)) Bool)

(assert (=> b!1316924 (= res!874185 (contains!8590 Nil!30468 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!55298 () Bool)

(declare-fun mapRes!55298 () Bool)

(declare-fun tp!105405 () Bool)

(declare-fun e!751396 () Bool)

(assert (=> mapNonEmpty!55298 (= mapRes!55298 (and tp!105405 e!751396))))

(declare-datatypes ((V!52795 0))(
  ( (V!52796 (val!17959 Int)) )
))
(declare-datatypes ((ValueCell!16986 0))(
  ( (ValueCellFull!16986 (v!20586 V!52795)) (EmptyCell!16986) )
))
(declare-fun mapRest!55298 () (Array (_ BitVec 32) ValueCell!16986))

(declare-fun mapKey!55298 () (_ BitVec 32))

(declare-datatypes ((array!88451 0))(
  ( (array!88452 (arr!42696 (Array (_ BitVec 32) ValueCell!16986)) (size!43247 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88451)

(declare-fun mapValue!55298 () ValueCell!16986)

(assert (=> mapNonEmpty!55298 (= (arr!42696 _values!1337) (store mapRest!55298 mapKey!55298 mapValue!55298))))

(declare-fun b!1316925 () Bool)

(assert (=> b!1316925 (= e!751396 tp_is_empty!35769)))

(declare-fun b!1316926 () Bool)

(assert (=> b!1316926 (= e!751399 (contains!8590 Nil!30468 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316928 () Bool)

(declare-fun res!874187 () Bool)

(assert (=> b!1316928 (=> (not res!874187) (not e!751398))))

(declare-datatypes ((array!88453 0))(
  ( (array!88454 (arr!42697 (Array (_ BitVec 32) (_ BitVec 64))) (size!43248 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88453)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1316928 (= res!874187 (and (= (size!43247 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43248 _keys!1609) (size!43247 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55298 () Bool)

(assert (=> mapIsEmpty!55298 mapRes!55298))

(declare-fun b!1316929 () Bool)

(declare-fun e!751397 () Bool)

(assert (=> b!1316929 (= e!751397 (and e!751395 mapRes!55298))))

(declare-fun condMapEmpty!55298 () Bool)

(declare-fun mapDefault!55298 () ValueCell!16986)

(assert (=> b!1316929 (= condMapEmpty!55298 (= (arr!42696 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16986)) mapDefault!55298)))))

(declare-fun b!1316930 () Bool)

(declare-fun res!874188 () Bool)

(assert (=> b!1316930 (=> (not res!874188) (not e!751398))))

(assert (=> b!1316930 (= res!874188 (and (bvsle #b00000000000000000000000000000000 (size!43248 _keys!1609)) (bvslt (size!43248 _keys!1609) #b01111111111111111111111111111111)))))

(declare-fun b!1316927 () Bool)

(declare-fun res!874189 () Bool)

(assert (=> b!1316927 (=> (not res!874189) (not e!751398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88453 (_ BitVec 32)) Bool)

(assert (=> b!1316927 (= res!874189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!874186 () Bool)

(assert (=> start!111316 (=> (not res!874186) (not e!751398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111316 (= res!874186 (validMask!0 mask!2019))))

(assert (=> start!111316 e!751398))

(assert (=> start!111316 true))

(declare-fun array_inv!32211 (array!88451) Bool)

(assert (=> start!111316 (and (array_inv!32211 _values!1337) e!751397)))

(declare-fun array_inv!32212 (array!88453) Bool)

(assert (=> start!111316 (array_inv!32212 _keys!1609)))

(assert (= (and start!111316 res!874186) b!1316928))

(assert (= (and b!1316928 res!874187) b!1316927))

(assert (= (and b!1316927 res!874189) b!1316930))

(assert (= (and b!1316930 res!874188) b!1316923))

(assert (= (and b!1316923 res!874190) b!1316924))

(assert (= (and b!1316924 (not res!874185)) b!1316926))

(assert (= (and b!1316929 condMapEmpty!55298) mapIsEmpty!55298))

(assert (= (and b!1316929 (not condMapEmpty!55298)) mapNonEmpty!55298))

(get-info :version)

(assert (= (and mapNonEmpty!55298 ((_ is ValueCellFull!16986) mapValue!55298)) b!1316925))

(assert (= (and b!1316929 ((_ is ValueCellFull!16986) mapDefault!55298)) b!1316922))

(assert (= start!111316 b!1316929))

(declare-fun m!1204959 () Bool)

(assert (=> start!111316 m!1204959))

(declare-fun m!1204961 () Bool)

(assert (=> start!111316 m!1204961))

(declare-fun m!1204963 () Bool)

(assert (=> start!111316 m!1204963))

(declare-fun m!1204965 () Bool)

(assert (=> b!1316924 m!1204965))

(declare-fun m!1204967 () Bool)

(assert (=> b!1316927 m!1204967))

(declare-fun m!1204969 () Bool)

(assert (=> b!1316926 m!1204969))

(declare-fun m!1204971 () Bool)

(assert (=> b!1316923 m!1204971))

(declare-fun m!1204973 () Bool)

(assert (=> mapNonEmpty!55298 m!1204973))

(check-sat (not b!1316926) (not b!1316927) (not mapNonEmpty!55298) (not b!1316924) (not start!111316) tp_is_empty!35769 (not b!1316923))
(check-sat)
(get-model)

(declare-fun d!142627 () Bool)

(declare-fun lt!586233 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!659 (List!30471) (InoxSet (_ BitVec 64)))

(assert (=> d!142627 (= lt!586233 (select (content!659 Nil!30468) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!751423 () Bool)

(assert (=> d!142627 (= lt!586233 e!751423)))

(declare-fun res!874213 () Bool)

(assert (=> d!142627 (=> (not res!874213) (not e!751423))))

(assert (=> d!142627 (= res!874213 ((_ is Cons!30467) Nil!30468))))

(assert (=> d!142627 (= (contains!8590 Nil!30468 #b0000000000000000000000000000000000000000000000000000000000000000) lt!586233)))

(declare-fun b!1316962 () Bool)

(declare-fun e!751424 () Bool)

(assert (=> b!1316962 (= e!751423 e!751424)))

(declare-fun res!874214 () Bool)

(assert (=> b!1316962 (=> res!874214 e!751424)))

(assert (=> b!1316962 (= res!874214 (= (h!31676 Nil!30468) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316963 () Bool)

(assert (=> b!1316963 (= e!751424 (contains!8590 (t!44086 Nil!30468) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!142627 res!874213) b!1316962))

(assert (= (and b!1316962 (not res!874214)) b!1316963))

(declare-fun m!1204991 () Bool)

(assert (=> d!142627 m!1204991))

(declare-fun m!1204993 () Bool)

(assert (=> d!142627 m!1204993))

(declare-fun m!1204995 () Bool)

(assert (=> b!1316963 m!1204995))

(assert (=> b!1316924 d!142627))

(declare-fun d!142629 () Bool)

(declare-fun res!874219 () Bool)

(declare-fun e!751429 () Bool)

(assert (=> d!142629 (=> res!874219 e!751429)))

(assert (=> d!142629 (= res!874219 ((_ is Nil!30468) Nil!30468))))

(assert (=> d!142629 (= (noDuplicate!2098 Nil!30468) e!751429)))

(declare-fun b!1316968 () Bool)

(declare-fun e!751430 () Bool)

(assert (=> b!1316968 (= e!751429 e!751430)))

(declare-fun res!874220 () Bool)

(assert (=> b!1316968 (=> (not res!874220) (not e!751430))))

(assert (=> b!1316968 (= res!874220 (not (contains!8590 (t!44086 Nil!30468) (h!31676 Nil!30468))))))

(declare-fun b!1316969 () Bool)

(assert (=> b!1316969 (= e!751430 (noDuplicate!2098 (t!44086 Nil!30468)))))

(assert (= (and d!142629 (not res!874219)) b!1316968))

(assert (= (and b!1316968 res!874220) b!1316969))

(declare-fun m!1204997 () Bool)

(assert (=> b!1316968 m!1204997))

(declare-fun m!1204999 () Bool)

(assert (=> b!1316969 m!1204999))

(assert (=> b!1316923 d!142629))

(declare-fun b!1316978 () Bool)

(declare-fun e!751438 () Bool)

(declare-fun e!751437 () Bool)

(assert (=> b!1316978 (= e!751438 e!751437)))

(declare-fun c!125582 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316978 (= c!125582 (validKeyInArray!0 (select (arr!42697 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun d!142631 () Bool)

(declare-fun res!874226 () Bool)

(assert (=> d!142631 (=> res!874226 e!751438)))

(assert (=> d!142631 (= res!874226 (bvsge #b00000000000000000000000000000000 (size!43248 _keys!1609)))))

(assert (=> d!142631 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!751438)))

(declare-fun b!1316979 () Bool)

(declare-fun call!64680 () Bool)

(assert (=> b!1316979 (= e!751437 call!64680)))

(declare-fun bm!64677 () Bool)

(assert (=> bm!64677 (= call!64680 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1316980 () Bool)

(declare-fun e!751439 () Bool)

(assert (=> b!1316980 (= e!751439 call!64680)))

(declare-fun b!1316981 () Bool)

(assert (=> b!1316981 (= e!751437 e!751439)))

(declare-fun lt!586242 () (_ BitVec 64))

(assert (=> b!1316981 (= lt!586242 (select (arr!42697 _keys!1609) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43362 0))(
  ( (Unit!43363) )
))
(declare-fun lt!586240 () Unit!43362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!88453 (_ BitVec 64) (_ BitVec 32)) Unit!43362)

(assert (=> b!1316981 (= lt!586240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!586242 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!88453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1316981 (arrayContainsKey!0 _keys!1609 lt!586242 #b00000000000000000000000000000000)))

(declare-fun lt!586241 () Unit!43362)

(assert (=> b!1316981 (= lt!586241 lt!586240)))

(declare-fun res!874225 () Bool)

(declare-datatypes ((SeekEntryResult!10036 0))(
  ( (MissingZero!10036 (index!42514 (_ BitVec 32))) (Found!10036 (index!42515 (_ BitVec 32))) (Intermediate!10036 (undefined!10848 Bool) (index!42516 (_ BitVec 32)) (x!117084 (_ BitVec 32))) (Undefined!10036) (MissingVacant!10036 (index!42517 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!88453 (_ BitVec 32)) SeekEntryResult!10036)

(assert (=> b!1316981 (= res!874225 (= (seekEntryOrOpen!0 (select (arr!42697 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10036 #b00000000000000000000000000000000)))))

(assert (=> b!1316981 (=> (not res!874225) (not e!751439))))

(assert (= (and d!142631 (not res!874226)) b!1316978))

(assert (= (and b!1316978 c!125582) b!1316981))

(assert (= (and b!1316978 (not c!125582)) b!1316979))

(assert (= (and b!1316981 res!874225) b!1316980))

(assert (= (or b!1316980 b!1316979) bm!64677))

(declare-fun m!1205001 () Bool)

(assert (=> b!1316978 m!1205001))

(assert (=> b!1316978 m!1205001))

(declare-fun m!1205003 () Bool)

(assert (=> b!1316978 m!1205003))

(declare-fun m!1205005 () Bool)

(assert (=> bm!64677 m!1205005))

(assert (=> b!1316981 m!1205001))

(declare-fun m!1205007 () Bool)

(assert (=> b!1316981 m!1205007))

(declare-fun m!1205009 () Bool)

(assert (=> b!1316981 m!1205009))

(assert (=> b!1316981 m!1205001))

(declare-fun m!1205011 () Bool)

(assert (=> b!1316981 m!1205011))

(assert (=> b!1316927 d!142631))

(declare-fun d!142633 () Bool)

(declare-fun lt!586243 () Bool)

(assert (=> d!142633 (= lt!586243 (select (content!659 Nil!30468) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!751440 () Bool)

(assert (=> d!142633 (= lt!586243 e!751440)))

(declare-fun res!874227 () Bool)

(assert (=> d!142633 (=> (not res!874227) (not e!751440))))

(assert (=> d!142633 (= res!874227 ((_ is Cons!30467) Nil!30468))))

(assert (=> d!142633 (= (contains!8590 Nil!30468 #b1000000000000000000000000000000000000000000000000000000000000000) lt!586243)))

(declare-fun b!1316982 () Bool)

(declare-fun e!751441 () Bool)

(assert (=> b!1316982 (= e!751440 e!751441)))

(declare-fun res!874228 () Bool)

(assert (=> b!1316982 (=> res!874228 e!751441)))

(assert (=> b!1316982 (= res!874228 (= (h!31676 Nil!30468) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316983 () Bool)

(assert (=> b!1316983 (= e!751441 (contains!8590 (t!44086 Nil!30468) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!142633 res!874227) b!1316982))

(assert (= (and b!1316982 (not res!874228)) b!1316983))

(assert (=> d!142633 m!1204991))

(declare-fun m!1205013 () Bool)

(assert (=> d!142633 m!1205013))

(declare-fun m!1205015 () Bool)

(assert (=> b!1316983 m!1205015))

(assert (=> b!1316926 d!142633))

(declare-fun d!142635 () Bool)

(assert (=> d!142635 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111316 d!142635))

(declare-fun d!142637 () Bool)

(assert (=> d!142637 (= (array_inv!32211 _values!1337) (bvsge (size!43247 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111316 d!142637))

(declare-fun d!142639 () Bool)

(assert (=> d!142639 (= (array_inv!32212 _keys!1609) (bvsge (size!43248 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111316 d!142639))

(declare-fun b!1316990 () Bool)

(declare-fun e!751447 () Bool)

(assert (=> b!1316990 (= e!751447 tp_is_empty!35769)))

(declare-fun mapNonEmpty!55304 () Bool)

(declare-fun mapRes!55304 () Bool)

(declare-fun tp!105411 () Bool)

(assert (=> mapNonEmpty!55304 (= mapRes!55304 (and tp!105411 e!751447))))

(declare-fun mapRest!55304 () (Array (_ BitVec 32) ValueCell!16986))

(declare-fun mapKey!55304 () (_ BitVec 32))

(declare-fun mapValue!55304 () ValueCell!16986)

(assert (=> mapNonEmpty!55304 (= mapRest!55298 (store mapRest!55304 mapKey!55304 mapValue!55304))))

(declare-fun b!1316991 () Bool)

(declare-fun e!751446 () Bool)

(assert (=> b!1316991 (= e!751446 tp_is_empty!35769)))

(declare-fun condMapEmpty!55304 () Bool)

(declare-fun mapDefault!55304 () ValueCell!16986)

(assert (=> mapNonEmpty!55298 (= condMapEmpty!55304 (= mapRest!55298 ((as const (Array (_ BitVec 32) ValueCell!16986)) mapDefault!55304)))))

(assert (=> mapNonEmpty!55298 (= tp!105405 (and e!751446 mapRes!55304))))

(declare-fun mapIsEmpty!55304 () Bool)

(assert (=> mapIsEmpty!55304 mapRes!55304))

(assert (= (and mapNonEmpty!55298 condMapEmpty!55304) mapIsEmpty!55304))

(assert (= (and mapNonEmpty!55298 (not condMapEmpty!55304)) mapNonEmpty!55304))

(assert (= (and mapNonEmpty!55304 ((_ is ValueCellFull!16986) mapValue!55304)) b!1316990))

(assert (= (and mapNonEmpty!55298 ((_ is ValueCellFull!16986) mapDefault!55304)) b!1316991))

(declare-fun m!1205017 () Bool)

(assert (=> mapNonEmpty!55304 m!1205017))

(check-sat (not bm!64677) (not b!1316968) (not b!1316983) (not b!1316963) (not d!142627) (not b!1316969) (not b!1316981) (not d!142633) (not mapNonEmpty!55304) (not b!1316978) tp_is_empty!35769)
(check-sat)
