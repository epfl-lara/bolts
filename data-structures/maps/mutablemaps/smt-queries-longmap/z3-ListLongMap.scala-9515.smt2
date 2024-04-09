; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112968 () Bool)

(assert start!112968)

(declare-fun mapNonEmpty!57208 () Bool)

(declare-fun mapRes!57208 () Bool)

(declare-fun tp!108908 () Bool)

(declare-fun e!762428 () Bool)

(assert (=> mapNonEmpty!57208 (= mapRes!57208 (and tp!108908 e!762428))))

(declare-datatypes ((V!54443 0))(
  ( (V!54444 (val!18577 Int)) )
))
(declare-datatypes ((ValueCell!17604 0))(
  ( (ValueCellFull!17604 (v!21222 V!54443)) (EmptyCell!17604) )
))
(declare-fun mapValue!57208 () ValueCell!17604)

(declare-fun mapRest!57208 () (Array (_ BitVec 32) ValueCell!17604))

(declare-fun mapKey!57208 () (_ BitVec 32))

(declare-datatypes ((array!90841 0))(
  ( (array!90842 (arr!43874 (Array (_ BitVec 32) ValueCell!17604)) (size!44425 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90841)

(assert (=> mapNonEmpty!57208 (= (arr!43874 _values!1303) (store mapRest!57208 mapKey!57208 mapValue!57208))))

(declare-fun b!1338767 () Bool)

(declare-fun res!888273 () Bool)

(declare-fun e!762429 () Bool)

(assert (=> b!1338767 (=> (not res!888273) (not e!762429))))

(declare-datatypes ((array!90843 0))(
  ( (array!90844 (arr!43875 (Array (_ BitVec 32) (_ BitVec 64))) (size!44426 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90843)

(assert (=> b!1338767 (= res!888273 (and (bvsle #b00000000000000000000000000000000 (size!44426 _keys!1571)) (bvslt (size!44426 _keys!1571) #b01111111111111111111111111111111)))))

(declare-fun b!1338768 () Bool)

(declare-fun res!888276 () Bool)

(assert (=> b!1338768 (=> (not res!888276) (not e!762429))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1338768 (= res!888276 (and (= (size!44425 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44426 _keys!1571) (size!44425 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!888274 () Bool)

(assert (=> start!112968 (=> (not res!888274) (not e!762429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112968 (= res!888274 (validMask!0 mask!1977))))

(assert (=> start!112968 e!762429))

(assert (=> start!112968 true))

(declare-fun e!762430 () Bool)

(declare-fun array_inv!33011 (array!90841) Bool)

(assert (=> start!112968 (and (array_inv!33011 _values!1303) e!762430)))

(declare-fun array_inv!33012 (array!90843) Bool)

(assert (=> start!112968 (array_inv!33012 _keys!1571)))

(declare-fun b!1338769 () Bool)

(declare-fun e!762432 () Bool)

(assert (=> b!1338769 (= e!762430 (and e!762432 mapRes!57208))))

(declare-fun condMapEmpty!57208 () Bool)

(declare-fun mapDefault!57208 () ValueCell!17604)

(assert (=> b!1338769 (= condMapEmpty!57208 (= (arr!43874 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17604)) mapDefault!57208)))))

(declare-fun b!1338770 () Bool)

(declare-datatypes ((List!31263 0))(
  ( (Nil!31260) (Cons!31259 (h!32468 (_ BitVec 64)) (t!45602 List!31263)) )
))
(declare-fun noDuplicate!2102 (List!31263) Bool)

(assert (=> b!1338770 (= e!762429 (not (noDuplicate!2102 Nil!31260)))))

(declare-fun b!1338771 () Bool)

(declare-fun res!888275 () Bool)

(assert (=> b!1338771 (=> (not res!888275) (not e!762429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90843 (_ BitVec 32)) Bool)

(assert (=> b!1338771 (= res!888275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1338772 () Bool)

(declare-fun tp_is_empty!37005 () Bool)

(assert (=> b!1338772 (= e!762432 tp_is_empty!37005)))

(declare-fun mapIsEmpty!57208 () Bool)

(assert (=> mapIsEmpty!57208 mapRes!57208))

(declare-fun b!1338773 () Bool)

(assert (=> b!1338773 (= e!762428 tp_is_empty!37005)))

(assert (= (and start!112968 res!888274) b!1338768))

(assert (= (and b!1338768 res!888276) b!1338771))

(assert (= (and b!1338771 res!888275) b!1338767))

(assert (= (and b!1338767 res!888273) b!1338770))

(assert (= (and b!1338769 condMapEmpty!57208) mapIsEmpty!57208))

(assert (= (and b!1338769 (not condMapEmpty!57208)) mapNonEmpty!57208))

(get-info :version)

(assert (= (and mapNonEmpty!57208 ((_ is ValueCellFull!17604) mapValue!57208)) b!1338773))

(assert (= (and b!1338769 ((_ is ValueCellFull!17604) mapDefault!57208)) b!1338772))

(assert (= start!112968 b!1338769))

(declare-fun m!1227063 () Bool)

(assert (=> mapNonEmpty!57208 m!1227063))

(declare-fun m!1227065 () Bool)

(assert (=> start!112968 m!1227065))

(declare-fun m!1227067 () Bool)

(assert (=> start!112968 m!1227067))

(declare-fun m!1227069 () Bool)

(assert (=> start!112968 m!1227069))

(declare-fun m!1227071 () Bool)

(assert (=> b!1338770 m!1227071))

(declare-fun m!1227073 () Bool)

(assert (=> b!1338771 m!1227073))

(check-sat tp_is_empty!37005 (not mapNonEmpty!57208) (not b!1338770) (not start!112968) (not b!1338771))
(check-sat)
(get-model)

(declare-fun d!144017 () Bool)

(declare-fun res!888293 () Bool)

(declare-fun e!762452 () Bool)

(assert (=> d!144017 (=> res!888293 e!762452)))

(assert (=> d!144017 (= res!888293 ((_ is Nil!31260) Nil!31260))))

(assert (=> d!144017 (= (noDuplicate!2102 Nil!31260) e!762452)))

(declare-fun b!1338799 () Bool)

(declare-fun e!762453 () Bool)

(assert (=> b!1338799 (= e!762452 e!762453)))

(declare-fun res!888294 () Bool)

(assert (=> b!1338799 (=> (not res!888294) (not e!762453))))

(declare-fun contains!9008 (List!31263 (_ BitVec 64)) Bool)

(assert (=> b!1338799 (= res!888294 (not (contains!9008 (t!45602 Nil!31260) (h!32468 Nil!31260))))))

(declare-fun b!1338800 () Bool)

(assert (=> b!1338800 (= e!762453 (noDuplicate!2102 (t!45602 Nil!31260)))))

(assert (= (and d!144017 (not res!888293)) b!1338799))

(assert (= (and b!1338799 res!888294) b!1338800))

(declare-fun m!1227087 () Bool)

(assert (=> b!1338799 m!1227087))

(declare-fun m!1227089 () Bool)

(assert (=> b!1338800 m!1227089))

(assert (=> b!1338770 d!144017))

(declare-fun b!1338809 () Bool)

(declare-fun e!762462 () Bool)

(declare-fun e!762460 () Bool)

(assert (=> b!1338809 (= e!762462 e!762460)))

(declare-fun lt!593742 () (_ BitVec 64))

(assert (=> b!1338809 (= lt!593742 (select (arr!43875 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43917 0))(
  ( (Unit!43918) )
))
(declare-fun lt!593741 () Unit!43917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90843 (_ BitVec 64) (_ BitVec 32)) Unit!43917)

(assert (=> b!1338809 (= lt!593741 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!593742 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1338809 (arrayContainsKey!0 _keys!1571 lt!593742 #b00000000000000000000000000000000)))

(declare-fun lt!593740 () Unit!43917)

(assert (=> b!1338809 (= lt!593740 lt!593741)))

(declare-fun res!888300 () Bool)

(declare-datatypes ((SeekEntryResult!10051 0))(
  ( (MissingZero!10051 (index!42574 (_ BitVec 32))) (Found!10051 (index!42575 (_ BitVec 32))) (Intermediate!10051 (undefined!10863 Bool) (index!42576 (_ BitVec 32)) (x!119593 (_ BitVec 32))) (Undefined!10051) (MissingVacant!10051 (index!42577 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90843 (_ BitVec 32)) SeekEntryResult!10051)

(assert (=> b!1338809 (= res!888300 (= (seekEntryOrOpen!0 (select (arr!43875 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10051 #b00000000000000000000000000000000)))))

(assert (=> b!1338809 (=> (not res!888300) (not e!762460))))

(declare-fun b!1338810 () Bool)

(declare-fun e!762461 () Bool)

(assert (=> b!1338810 (= e!762461 e!762462)))

(declare-fun c!126237 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1338810 (= c!126237 (validKeyInArray!0 (select (arr!43875 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1338811 () Bool)

(declare-fun call!65030 () Bool)

(assert (=> b!1338811 (= e!762462 call!65030)))

(declare-fun b!1338812 () Bool)

(assert (=> b!1338812 (= e!762460 call!65030)))

(declare-fun d!144019 () Bool)

(declare-fun res!888299 () Bool)

(assert (=> d!144019 (=> res!888299 e!762461)))

(assert (=> d!144019 (= res!888299 (bvsge #b00000000000000000000000000000000 (size!44426 _keys!1571)))))

(assert (=> d!144019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!762461)))

(declare-fun bm!65027 () Bool)

(assert (=> bm!65027 (= call!65030 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(assert (= (and d!144019 (not res!888299)) b!1338810))

(assert (= (and b!1338810 c!126237) b!1338809))

(assert (= (and b!1338810 (not c!126237)) b!1338811))

(assert (= (and b!1338809 res!888300) b!1338812))

(assert (= (or b!1338812 b!1338811) bm!65027))

(declare-fun m!1227091 () Bool)

(assert (=> b!1338809 m!1227091))

(declare-fun m!1227093 () Bool)

(assert (=> b!1338809 m!1227093))

(declare-fun m!1227095 () Bool)

(assert (=> b!1338809 m!1227095))

(assert (=> b!1338809 m!1227091))

(declare-fun m!1227097 () Bool)

(assert (=> b!1338809 m!1227097))

(assert (=> b!1338810 m!1227091))

(assert (=> b!1338810 m!1227091))

(declare-fun m!1227099 () Bool)

(assert (=> b!1338810 m!1227099))

(declare-fun m!1227101 () Bool)

(assert (=> bm!65027 m!1227101))

(assert (=> b!1338771 d!144019))

(declare-fun d!144021 () Bool)

(assert (=> d!144021 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!112968 d!144021))

(declare-fun d!144023 () Bool)

(assert (=> d!144023 (= (array_inv!33011 _values!1303) (bvsge (size!44425 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!112968 d!144023))

(declare-fun d!144025 () Bool)

(assert (=> d!144025 (= (array_inv!33012 _keys!1571) (bvsge (size!44426 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!112968 d!144025))

(declare-fun condMapEmpty!57214 () Bool)

(declare-fun mapDefault!57214 () ValueCell!17604)

(assert (=> mapNonEmpty!57208 (= condMapEmpty!57214 (= mapRest!57208 ((as const (Array (_ BitVec 32) ValueCell!17604)) mapDefault!57214)))))

(declare-fun e!762468 () Bool)

(declare-fun mapRes!57214 () Bool)

(assert (=> mapNonEmpty!57208 (= tp!108908 (and e!762468 mapRes!57214))))

(declare-fun mapIsEmpty!57214 () Bool)

(assert (=> mapIsEmpty!57214 mapRes!57214))

(declare-fun b!1338820 () Bool)

(assert (=> b!1338820 (= e!762468 tp_is_empty!37005)))

(declare-fun b!1338819 () Bool)

(declare-fun e!762467 () Bool)

(assert (=> b!1338819 (= e!762467 tp_is_empty!37005)))

(declare-fun mapNonEmpty!57214 () Bool)

(declare-fun tp!108914 () Bool)

(assert (=> mapNonEmpty!57214 (= mapRes!57214 (and tp!108914 e!762467))))

(declare-fun mapRest!57214 () (Array (_ BitVec 32) ValueCell!17604))

(declare-fun mapValue!57214 () ValueCell!17604)

(declare-fun mapKey!57214 () (_ BitVec 32))

(assert (=> mapNonEmpty!57214 (= mapRest!57208 (store mapRest!57214 mapKey!57214 mapValue!57214))))

(assert (= (and mapNonEmpty!57208 condMapEmpty!57214) mapIsEmpty!57214))

(assert (= (and mapNonEmpty!57208 (not condMapEmpty!57214)) mapNonEmpty!57214))

(assert (= (and mapNonEmpty!57214 ((_ is ValueCellFull!17604) mapValue!57214)) b!1338819))

(assert (= (and mapNonEmpty!57208 ((_ is ValueCellFull!17604) mapDefault!57214)) b!1338820))

(declare-fun m!1227103 () Bool)

(assert (=> mapNonEmpty!57214 m!1227103))

(check-sat tp_is_empty!37005 (not mapNonEmpty!57214) (not b!1338799) (not b!1338810) (not b!1338800) (not bm!65027) (not b!1338809))
(check-sat)
