; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84870 () Bool)

(assert start!84870)

(declare-fun b!991514 () Bool)

(declare-fun e!559254 () Bool)

(declare-fun tp_is_empty!23343 () Bool)

(assert (=> b!991514 (= e!559254 tp_is_empty!23343)))

(declare-fun b!991515 () Bool)

(declare-fun e!559255 () Bool)

(declare-datatypes ((List!20975 0))(
  ( (Nil!20972) (Cons!20971 (h!22133 (_ BitVec 64)) (t!29966 List!20975)) )
))
(declare-fun noDuplicate!1387 (List!20975) Bool)

(assert (=> b!991515 (= e!559255 (not (noDuplicate!1387 Nil!20972)))))

(declare-fun b!991516 () Bool)

(declare-fun res!662864 () Bool)

(assert (=> b!991516 (=> (not res!662864) (not e!559255))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36107 0))(
  ( (V!36108 (val!11722 Int)) )
))
(declare-datatypes ((ValueCell!11190 0))(
  ( (ValueCellFull!11190 (v!14298 V!36107)) (EmptyCell!11190) )
))
(declare-datatypes ((array!62639 0))(
  ( (array!62640 (arr!30162 (Array (_ BitVec 32) ValueCell!11190)) (size!30642 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62639)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62641 0))(
  ( (array!62642 (arr!30163 (Array (_ BitVec 32) (_ BitVec 64))) (size!30643 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62641)

(assert (=> b!991516 (= res!662864 (and (= (size!30642 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30643 _keys!1945) (size!30642 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991517 () Bool)

(declare-fun res!662863 () Bool)

(assert (=> b!991517 (=> (not res!662863) (not e!559255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62641 (_ BitVec 32)) Bool)

(assert (=> b!991517 (= res!662863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991518 () Bool)

(declare-fun e!559257 () Bool)

(declare-fun e!559253 () Bool)

(declare-fun mapRes!37080 () Bool)

(assert (=> b!991518 (= e!559257 (and e!559253 mapRes!37080))))

(declare-fun condMapEmpty!37080 () Bool)

(declare-fun mapDefault!37080 () ValueCell!11190)

(assert (=> b!991518 (= condMapEmpty!37080 (= (arr!30162 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11190)) mapDefault!37080)))))

(declare-fun b!991519 () Bool)

(declare-fun res!662862 () Bool)

(assert (=> b!991519 (=> (not res!662862) (not e!559255))))

(assert (=> b!991519 (= res!662862 (and (bvsle #b00000000000000000000000000000000 (size!30643 _keys!1945)) (bvslt (size!30643 _keys!1945) #b01111111111111111111111111111111)))))

(declare-fun b!991520 () Bool)

(assert (=> b!991520 (= e!559253 tp_is_empty!23343)))

(declare-fun mapIsEmpty!37080 () Bool)

(assert (=> mapIsEmpty!37080 mapRes!37080))

(declare-fun res!662861 () Bool)

(assert (=> start!84870 (=> (not res!662861) (not e!559255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84870 (= res!662861 (validMask!0 mask!2471))))

(assert (=> start!84870 e!559255))

(assert (=> start!84870 true))

(declare-fun array_inv!23157 (array!62639) Bool)

(assert (=> start!84870 (and (array_inv!23157 _values!1551) e!559257)))

(declare-fun array_inv!23158 (array!62641) Bool)

(assert (=> start!84870 (array_inv!23158 _keys!1945)))

(declare-fun mapNonEmpty!37080 () Bool)

(declare-fun tp!70152 () Bool)

(assert (=> mapNonEmpty!37080 (= mapRes!37080 (and tp!70152 e!559254))))

(declare-fun mapRest!37080 () (Array (_ BitVec 32) ValueCell!11190))

(declare-fun mapKey!37080 () (_ BitVec 32))

(declare-fun mapValue!37080 () ValueCell!11190)

(assert (=> mapNonEmpty!37080 (= (arr!30162 _values!1551) (store mapRest!37080 mapKey!37080 mapValue!37080))))

(assert (= (and start!84870 res!662861) b!991516))

(assert (= (and b!991516 res!662864) b!991517))

(assert (= (and b!991517 res!662863) b!991519))

(assert (= (and b!991519 res!662862) b!991515))

(assert (= (and b!991518 condMapEmpty!37080) mapIsEmpty!37080))

(assert (= (and b!991518 (not condMapEmpty!37080)) mapNonEmpty!37080))

(get-info :version)

(assert (= (and mapNonEmpty!37080 ((_ is ValueCellFull!11190) mapValue!37080)) b!991514))

(assert (= (and b!991518 ((_ is ValueCellFull!11190) mapDefault!37080)) b!991520))

(assert (= start!84870 b!991518))

(declare-fun m!919479 () Bool)

(assert (=> b!991515 m!919479))

(declare-fun m!919481 () Bool)

(assert (=> b!991517 m!919481))

(declare-fun m!919483 () Bool)

(assert (=> start!84870 m!919483))

(declare-fun m!919485 () Bool)

(assert (=> start!84870 m!919485))

(declare-fun m!919487 () Bool)

(assert (=> start!84870 m!919487))

(declare-fun m!919489 () Bool)

(assert (=> mapNonEmpty!37080 m!919489))

(check-sat tp_is_empty!23343 (not b!991517) (not b!991515) (not start!84870) (not mapNonEmpty!37080))
(check-sat)
(get-model)

(declare-fun d!117889 () Bool)

(assert (=> d!117889 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84870 d!117889))

(declare-fun d!117891 () Bool)

(assert (=> d!117891 (= (array_inv!23157 _values!1551) (bvsge (size!30642 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84870 d!117891))

(declare-fun d!117893 () Bool)

(assert (=> d!117893 (= (array_inv!23158 _keys!1945) (bvsge (size!30643 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84870 d!117893))

(declare-fun d!117895 () Bool)

(declare-fun res!662881 () Bool)

(declare-fun e!559277 () Bool)

(assert (=> d!117895 (=> res!662881 e!559277)))

(assert (=> d!117895 (= res!662881 ((_ is Nil!20972) Nil!20972))))

(assert (=> d!117895 (= (noDuplicate!1387 Nil!20972) e!559277)))

(declare-fun b!991546 () Bool)

(declare-fun e!559278 () Bool)

(assert (=> b!991546 (= e!559277 e!559278)))

(declare-fun res!662882 () Bool)

(assert (=> b!991546 (=> (not res!662882) (not e!559278))))

(declare-fun contains!5738 (List!20975 (_ BitVec 64)) Bool)

(assert (=> b!991546 (= res!662882 (not (contains!5738 (t!29966 Nil!20972) (h!22133 Nil!20972))))))

(declare-fun b!991547 () Bool)

(assert (=> b!991547 (= e!559278 (noDuplicate!1387 (t!29966 Nil!20972)))))

(assert (= (and d!117895 (not res!662881)) b!991546))

(assert (= (and b!991546 res!662882) b!991547))

(declare-fun m!919503 () Bool)

(assert (=> b!991546 m!919503))

(declare-fun m!919505 () Bool)

(assert (=> b!991547 m!919505))

(assert (=> b!991515 d!117895))

(declare-fun b!991557 () Bool)

(declare-fun e!559286 () Bool)

(declare-fun call!42082 () Bool)

(assert (=> b!991557 (= e!559286 call!42082)))

(declare-fun b!991558 () Bool)

(declare-fun e!559287 () Bool)

(assert (=> b!991558 (= e!559286 e!559287)))

(declare-fun lt!439955 () (_ BitVec 64))

(assert (=> b!991558 (= lt!439955 (select (arr!30163 _keys!1945) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32854 0))(
  ( (Unit!32855) )
))
(declare-fun lt!439954 () Unit!32854)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62641 (_ BitVec 64) (_ BitVec 32)) Unit!32854)

(assert (=> b!991558 (= lt!439954 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1945 lt!439955 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991558 (arrayContainsKey!0 _keys!1945 lt!439955 #b00000000000000000000000000000000)))

(declare-fun lt!439953 () Unit!32854)

(assert (=> b!991558 (= lt!439953 lt!439954)))

(declare-fun res!662888 () Bool)

(declare-datatypes ((SeekEntryResult!9204 0))(
  ( (MissingZero!9204 (index!39186 (_ BitVec 32))) (Found!9204 (index!39187 (_ BitVec 32))) (Intermediate!9204 (undefined!10016 Bool) (index!39188 (_ BitVec 32)) (x!86268 (_ BitVec 32))) (Undefined!9204) (MissingVacant!9204 (index!39189 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62641 (_ BitVec 32)) SeekEntryResult!9204)

(assert (=> b!991558 (= res!662888 (= (seekEntryOrOpen!0 (select (arr!30163 _keys!1945) #b00000000000000000000000000000000) _keys!1945 mask!2471) (Found!9204 #b00000000000000000000000000000000)))))

(assert (=> b!991558 (=> (not res!662888) (not e!559287))))

(declare-fun b!991559 () Bool)

(assert (=> b!991559 (= e!559287 call!42082)))

(declare-fun bm!42079 () Bool)

(assert (=> bm!42079 (= call!42082 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1945 mask!2471))))

(declare-fun b!991556 () Bool)

(declare-fun e!559285 () Bool)

(assert (=> b!991556 (= e!559285 e!559286)))

(declare-fun c!100551 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991556 (= c!100551 (validKeyInArray!0 (select (arr!30163 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun d!117897 () Bool)

(declare-fun res!662887 () Bool)

(assert (=> d!117897 (=> res!662887 e!559285)))

(assert (=> d!117897 (= res!662887 (bvsge #b00000000000000000000000000000000 (size!30643 _keys!1945)))))

(assert (=> d!117897 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471) e!559285)))

(assert (= (and d!117897 (not res!662887)) b!991556))

(assert (= (and b!991556 c!100551) b!991558))

(assert (= (and b!991556 (not c!100551)) b!991557))

(assert (= (and b!991558 res!662888) b!991559))

(assert (= (or b!991559 b!991557) bm!42079))

(declare-fun m!919507 () Bool)

(assert (=> b!991558 m!919507))

(declare-fun m!919509 () Bool)

(assert (=> b!991558 m!919509))

(declare-fun m!919511 () Bool)

(assert (=> b!991558 m!919511))

(assert (=> b!991558 m!919507))

(declare-fun m!919513 () Bool)

(assert (=> b!991558 m!919513))

(declare-fun m!919515 () Bool)

(assert (=> bm!42079 m!919515))

(assert (=> b!991556 m!919507))

(assert (=> b!991556 m!919507))

(declare-fun m!919517 () Bool)

(assert (=> b!991556 m!919517))

(assert (=> b!991517 d!117897))

(declare-fun b!991566 () Bool)

(declare-fun e!559292 () Bool)

(assert (=> b!991566 (= e!559292 tp_is_empty!23343)))

(declare-fun b!991567 () Bool)

(declare-fun e!559293 () Bool)

(assert (=> b!991567 (= e!559293 tp_is_empty!23343)))

(declare-fun mapNonEmpty!37086 () Bool)

(declare-fun mapRes!37086 () Bool)

(declare-fun tp!70158 () Bool)

(assert (=> mapNonEmpty!37086 (= mapRes!37086 (and tp!70158 e!559292))))

(declare-fun mapValue!37086 () ValueCell!11190)

(declare-fun mapKey!37086 () (_ BitVec 32))

(declare-fun mapRest!37086 () (Array (_ BitVec 32) ValueCell!11190))

(assert (=> mapNonEmpty!37086 (= mapRest!37080 (store mapRest!37086 mapKey!37086 mapValue!37086))))

(declare-fun condMapEmpty!37086 () Bool)

(declare-fun mapDefault!37086 () ValueCell!11190)

(assert (=> mapNonEmpty!37080 (= condMapEmpty!37086 (= mapRest!37080 ((as const (Array (_ BitVec 32) ValueCell!11190)) mapDefault!37086)))))

(assert (=> mapNonEmpty!37080 (= tp!70152 (and e!559293 mapRes!37086))))

(declare-fun mapIsEmpty!37086 () Bool)

(assert (=> mapIsEmpty!37086 mapRes!37086))

(assert (= (and mapNonEmpty!37080 condMapEmpty!37086) mapIsEmpty!37086))

(assert (= (and mapNonEmpty!37080 (not condMapEmpty!37086)) mapNonEmpty!37086))

(assert (= (and mapNonEmpty!37086 ((_ is ValueCellFull!11190) mapValue!37086)) b!991566))

(assert (= (and mapNonEmpty!37080 ((_ is ValueCellFull!11190) mapDefault!37086)) b!991567))

(declare-fun m!919519 () Bool)

(assert (=> mapNonEmpty!37086 m!919519))

(check-sat tp_is_empty!23343 (not b!991547) (not b!991546) (not b!991556) (not bm!42079) (not b!991558) (not mapNonEmpty!37086))
(check-sat)
