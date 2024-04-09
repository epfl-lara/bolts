; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112112 () Bool)

(assert start!112112)

(declare-fun mapNonEmpty!56260 () Bool)

(declare-fun mapRes!56260 () Bool)

(declare-fun tp!107168 () Bool)

(declare-fun e!756764 () Bool)

(assert (=> mapNonEmpty!56260 (= mapRes!56260 (and tp!107168 e!756764))))

(declare-datatypes ((V!53627 0))(
  ( (V!53628 (val!18271 Int)) )
))
(declare-datatypes ((ValueCell!17298 0))(
  ( (ValueCellFull!17298 (v!20905 V!53627)) (EmptyCell!17298) )
))
(declare-datatypes ((array!89653 0))(
  ( (array!89654 (arr!43289 (Array (_ BitVec 32) ValueCell!17298)) (size!43840 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89653)

(declare-fun mapRest!56260 () (Array (_ BitVec 32) ValueCell!17298))

(declare-fun mapValue!56260 () ValueCell!17298)

(declare-fun mapKey!56260 () (_ BitVec 32))

(assert (=> mapNonEmpty!56260 (= (arr!43289 _values!1320) (store mapRest!56260 mapKey!56260 mapValue!56260))))

(declare-fun b!1327502 () Bool)

(declare-fun e!756767 () Bool)

(declare-fun tp_is_empty!36393 () Bool)

(assert (=> b!1327502 (= e!756767 tp_is_empty!36393)))

(declare-fun b!1327503 () Bool)

(assert (=> b!1327503 (= e!756764 tp_is_empty!36393)))

(declare-fun b!1327504 () Bool)

(declare-fun res!880968 () Bool)

(declare-fun e!756765 () Bool)

(assert (=> b!1327504 (=> (not res!880968) (not e!756765))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89655 0))(
  ( (array!89656 (arr!43290 (Array (_ BitVec 32) (_ BitVec 64))) (size!43841 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89655)

(assert (=> b!1327504 (= res!880968 (and (= (size!43840 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43841 _keys!1590) (size!43840 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56260 () Bool)

(assert (=> mapIsEmpty!56260 mapRes!56260))

(declare-fun b!1327505 () Bool)

(declare-fun e!756766 () Bool)

(assert (=> b!1327505 (= e!756765 e!756766)))

(declare-fun res!880967 () Bool)

(assert (=> b!1327505 (=> res!880967 e!756766)))

(declare-datatypes ((List!30871 0))(
  ( (Nil!30868) (Cons!30867 (h!32076 (_ BitVec 64)) (t!44884 List!30871)) )
))
(declare-fun contains!8801 (List!30871 (_ BitVec 64)) Bool)

(assert (=> b!1327505 (= res!880967 (contains!8801 Nil!30868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327506 () Bool)

(assert (=> b!1327506 (= e!756766 (contains!8801 Nil!30868 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!880966 () Bool)

(assert (=> start!112112 (=> (not res!880966) (not e!756765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112112 (= res!880966 (validMask!0 mask!1998))))

(assert (=> start!112112 e!756765))

(assert (=> start!112112 true))

(declare-fun e!756763 () Bool)

(declare-fun array_inv!32617 (array!89653) Bool)

(assert (=> start!112112 (and (array_inv!32617 _values!1320) e!756763)))

(declare-fun array_inv!32618 (array!89655) Bool)

(assert (=> start!112112 (array_inv!32618 _keys!1590)))

(declare-fun b!1327507 () Bool)

(declare-fun res!880964 () Bool)

(assert (=> b!1327507 (=> (not res!880964) (not e!756765))))

(assert (=> b!1327507 (= res!880964 (and (bvsle #b00000000000000000000000000000000 (size!43841 _keys!1590)) (bvslt (size!43841 _keys!1590) #b01111111111111111111111111111111)))))

(declare-fun b!1327508 () Bool)

(declare-fun res!880963 () Bool)

(assert (=> b!1327508 (=> (not res!880963) (not e!756765))))

(declare-fun noDuplicate!2100 (List!30871) Bool)

(assert (=> b!1327508 (= res!880963 (noDuplicate!2100 Nil!30868))))

(declare-fun b!1327509 () Bool)

(assert (=> b!1327509 (= e!756763 (and e!756767 mapRes!56260))))

(declare-fun condMapEmpty!56260 () Bool)

(declare-fun mapDefault!56260 () ValueCell!17298)

(assert (=> b!1327509 (= condMapEmpty!56260 (= (arr!43289 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17298)) mapDefault!56260)))))

(declare-fun b!1327510 () Bool)

(declare-fun res!880965 () Bool)

(assert (=> b!1327510 (=> (not res!880965) (not e!756765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89655 (_ BitVec 32)) Bool)

(assert (=> b!1327510 (= res!880965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112112 res!880966) b!1327504))

(assert (= (and b!1327504 res!880968) b!1327510))

(assert (= (and b!1327510 res!880965) b!1327507))

(assert (= (and b!1327507 res!880964) b!1327508))

(assert (= (and b!1327508 res!880963) b!1327505))

(assert (= (and b!1327505 (not res!880967)) b!1327506))

(assert (= (and b!1327509 condMapEmpty!56260) mapIsEmpty!56260))

(assert (= (and b!1327509 (not condMapEmpty!56260)) mapNonEmpty!56260))

(get-info :version)

(assert (= (and mapNonEmpty!56260 ((_ is ValueCellFull!17298) mapValue!56260)) b!1327503))

(assert (= (and b!1327509 ((_ is ValueCellFull!17298) mapDefault!56260)) b!1327502))

(assert (= start!112112 b!1327509))

(declare-fun m!1216797 () Bool)

(assert (=> b!1327508 m!1216797))

(declare-fun m!1216799 () Bool)

(assert (=> b!1327510 m!1216799))

(declare-fun m!1216801 () Bool)

(assert (=> mapNonEmpty!56260 m!1216801))

(declare-fun m!1216803 () Bool)

(assert (=> b!1327505 m!1216803))

(declare-fun m!1216805 () Bool)

(assert (=> b!1327506 m!1216805))

(declare-fun m!1216807 () Bool)

(assert (=> start!112112 m!1216807))

(declare-fun m!1216809 () Bool)

(assert (=> start!112112 m!1216809))

(declare-fun m!1216811 () Bool)

(assert (=> start!112112 m!1216811))

(check-sat (not mapNonEmpty!56260) (not b!1327506) tp_is_empty!36393 (not b!1327510) (not start!112112) (not b!1327508) (not b!1327505))
(check-sat)
(get-model)

(declare-fun d!143255 () Bool)

(declare-fun res!880992 () Bool)

(declare-fun e!756794 () Bool)

(assert (=> d!143255 (=> res!880992 e!756794)))

(assert (=> d!143255 (= res!880992 (bvsge #b00000000000000000000000000000000 (size!43841 _keys!1590)))))

(assert (=> d!143255 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!756794)))

(declare-fun b!1327546 () Bool)

(declare-fun e!756792 () Bool)

(assert (=> b!1327546 (= e!756794 e!756792)))

(declare-fun c!125843 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1327546 (= c!125843 (validKeyInArray!0 (select (arr!43290 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun bm!64815 () Bool)

(declare-fun call!64818 () Bool)

(assert (=> bm!64815 (= call!64818 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun b!1327547 () Bool)

(declare-fun e!756793 () Bool)

(assert (=> b!1327547 (= e!756792 e!756793)))

(declare-fun lt!590660 () (_ BitVec 64))

(assert (=> b!1327547 (= lt!590660 (select (arr!43290 _keys!1590) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43667 0))(
  ( (Unit!43668) )
))
(declare-fun lt!590662 () Unit!43667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89655 (_ BitVec 64) (_ BitVec 32)) Unit!43667)

(assert (=> b!1327547 (= lt!590662 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!590660 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1327547 (arrayContainsKey!0 _keys!1590 lt!590660 #b00000000000000000000000000000000)))

(declare-fun lt!590661 () Unit!43667)

(assert (=> b!1327547 (= lt!590661 lt!590662)))

(declare-fun res!880991 () Bool)

(declare-datatypes ((SeekEntryResult!10043 0))(
  ( (MissingZero!10043 (index!42542 (_ BitVec 32))) (Found!10043 (index!42543 (_ BitVec 32))) (Intermediate!10043 (undefined!10855 Bool) (index!42544 (_ BitVec 32)) (x!118370 (_ BitVec 32))) (Undefined!10043) (MissingVacant!10043 (index!42545 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89655 (_ BitVec 32)) SeekEntryResult!10043)

(assert (=> b!1327547 (= res!880991 (= (seekEntryOrOpen!0 (select (arr!43290 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10043 #b00000000000000000000000000000000)))))

(assert (=> b!1327547 (=> (not res!880991) (not e!756793))))

(declare-fun b!1327548 () Bool)

(assert (=> b!1327548 (= e!756793 call!64818)))

(declare-fun b!1327549 () Bool)

(assert (=> b!1327549 (= e!756792 call!64818)))

(assert (= (and d!143255 (not res!880992)) b!1327546))

(assert (= (and b!1327546 c!125843) b!1327547))

(assert (= (and b!1327546 (not c!125843)) b!1327549))

(assert (= (and b!1327547 res!880991) b!1327548))

(assert (= (or b!1327548 b!1327549) bm!64815))

(declare-fun m!1216829 () Bool)

(assert (=> b!1327546 m!1216829))

(assert (=> b!1327546 m!1216829))

(declare-fun m!1216831 () Bool)

(assert (=> b!1327546 m!1216831))

(declare-fun m!1216833 () Bool)

(assert (=> bm!64815 m!1216833))

(assert (=> b!1327547 m!1216829))

(declare-fun m!1216835 () Bool)

(assert (=> b!1327547 m!1216835))

(declare-fun m!1216837 () Bool)

(assert (=> b!1327547 m!1216837))

(assert (=> b!1327547 m!1216829))

(declare-fun m!1216839 () Bool)

(assert (=> b!1327547 m!1216839))

(assert (=> b!1327510 d!143255))

(declare-fun d!143257 () Bool)

(declare-fun lt!590665 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!663 (List!30871) (InoxSet (_ BitVec 64)))

(assert (=> d!143257 (= lt!590665 (select (content!663 Nil!30868) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!756800 () Bool)

(assert (=> d!143257 (= lt!590665 e!756800)))

(declare-fun res!880998 () Bool)

(assert (=> d!143257 (=> (not res!880998) (not e!756800))))

(assert (=> d!143257 (= res!880998 ((_ is Cons!30867) Nil!30868))))

(assert (=> d!143257 (= (contains!8801 Nil!30868 #b0000000000000000000000000000000000000000000000000000000000000000) lt!590665)))

(declare-fun b!1327554 () Bool)

(declare-fun e!756799 () Bool)

(assert (=> b!1327554 (= e!756800 e!756799)))

(declare-fun res!880997 () Bool)

(assert (=> b!1327554 (=> res!880997 e!756799)))

(assert (=> b!1327554 (= res!880997 (= (h!32076 Nil!30868) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327555 () Bool)

(assert (=> b!1327555 (= e!756799 (contains!8801 (t!44884 Nil!30868) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143257 res!880998) b!1327554))

(assert (= (and b!1327554 (not res!880997)) b!1327555))

(declare-fun m!1216841 () Bool)

(assert (=> d!143257 m!1216841))

(declare-fun m!1216843 () Bool)

(assert (=> d!143257 m!1216843))

(declare-fun m!1216845 () Bool)

(assert (=> b!1327555 m!1216845))

(assert (=> b!1327505 d!143257))

(declare-fun d!143259 () Bool)

(declare-fun lt!590666 () Bool)

(assert (=> d!143259 (= lt!590666 (select (content!663 Nil!30868) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!756802 () Bool)

(assert (=> d!143259 (= lt!590666 e!756802)))

(declare-fun res!881000 () Bool)

(assert (=> d!143259 (=> (not res!881000) (not e!756802))))

(assert (=> d!143259 (= res!881000 ((_ is Cons!30867) Nil!30868))))

(assert (=> d!143259 (= (contains!8801 Nil!30868 #b1000000000000000000000000000000000000000000000000000000000000000) lt!590666)))

(declare-fun b!1327556 () Bool)

(declare-fun e!756801 () Bool)

(assert (=> b!1327556 (= e!756802 e!756801)))

(declare-fun res!880999 () Bool)

(assert (=> b!1327556 (=> res!880999 e!756801)))

(assert (=> b!1327556 (= res!880999 (= (h!32076 Nil!30868) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327557 () Bool)

(assert (=> b!1327557 (= e!756801 (contains!8801 (t!44884 Nil!30868) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143259 res!881000) b!1327556))

(assert (= (and b!1327556 (not res!880999)) b!1327557))

(assert (=> d!143259 m!1216841))

(declare-fun m!1216847 () Bool)

(assert (=> d!143259 m!1216847))

(declare-fun m!1216849 () Bool)

(assert (=> b!1327557 m!1216849))

(assert (=> b!1327506 d!143259))

(declare-fun d!143261 () Bool)

(assert (=> d!143261 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112112 d!143261))

(declare-fun d!143263 () Bool)

(assert (=> d!143263 (= (array_inv!32617 _values!1320) (bvsge (size!43840 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112112 d!143263))

(declare-fun d!143265 () Bool)

(assert (=> d!143265 (= (array_inv!32618 _keys!1590) (bvsge (size!43841 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112112 d!143265))

(declare-fun d!143267 () Bool)

(declare-fun res!881005 () Bool)

(declare-fun e!756807 () Bool)

(assert (=> d!143267 (=> res!881005 e!756807)))

(assert (=> d!143267 (= res!881005 ((_ is Nil!30868) Nil!30868))))

(assert (=> d!143267 (= (noDuplicate!2100 Nil!30868) e!756807)))

(declare-fun b!1327562 () Bool)

(declare-fun e!756808 () Bool)

(assert (=> b!1327562 (= e!756807 e!756808)))

(declare-fun res!881006 () Bool)

(assert (=> b!1327562 (=> (not res!881006) (not e!756808))))

(assert (=> b!1327562 (= res!881006 (not (contains!8801 (t!44884 Nil!30868) (h!32076 Nil!30868))))))

(declare-fun b!1327563 () Bool)

(assert (=> b!1327563 (= e!756808 (noDuplicate!2100 (t!44884 Nil!30868)))))

(assert (= (and d!143267 (not res!881005)) b!1327562))

(assert (= (and b!1327562 res!881006) b!1327563))

(declare-fun m!1216851 () Bool)

(assert (=> b!1327562 m!1216851))

(declare-fun m!1216853 () Bool)

(assert (=> b!1327563 m!1216853))

(assert (=> b!1327508 d!143267))

(declare-fun b!1327570 () Bool)

(declare-fun e!756813 () Bool)

(assert (=> b!1327570 (= e!756813 tp_is_empty!36393)))

(declare-fun b!1327571 () Bool)

(declare-fun e!756814 () Bool)

(assert (=> b!1327571 (= e!756814 tp_is_empty!36393)))

(declare-fun condMapEmpty!56266 () Bool)

(declare-fun mapDefault!56266 () ValueCell!17298)

(assert (=> mapNonEmpty!56260 (= condMapEmpty!56266 (= mapRest!56260 ((as const (Array (_ BitVec 32) ValueCell!17298)) mapDefault!56266)))))

(declare-fun mapRes!56266 () Bool)

(assert (=> mapNonEmpty!56260 (= tp!107168 (and e!756814 mapRes!56266))))

(declare-fun mapIsEmpty!56266 () Bool)

(assert (=> mapIsEmpty!56266 mapRes!56266))

(declare-fun mapNonEmpty!56266 () Bool)

(declare-fun tp!107174 () Bool)

(assert (=> mapNonEmpty!56266 (= mapRes!56266 (and tp!107174 e!756813))))

(declare-fun mapValue!56266 () ValueCell!17298)

(declare-fun mapKey!56266 () (_ BitVec 32))

(declare-fun mapRest!56266 () (Array (_ BitVec 32) ValueCell!17298))

(assert (=> mapNonEmpty!56266 (= mapRest!56260 (store mapRest!56266 mapKey!56266 mapValue!56266))))

(assert (= (and mapNonEmpty!56260 condMapEmpty!56266) mapIsEmpty!56266))

(assert (= (and mapNonEmpty!56260 (not condMapEmpty!56266)) mapNonEmpty!56266))

(assert (= (and mapNonEmpty!56266 ((_ is ValueCellFull!17298) mapValue!56266)) b!1327570))

(assert (= (and mapNonEmpty!56260 ((_ is ValueCellFull!17298) mapDefault!56266)) b!1327571))

(declare-fun m!1216855 () Bool)

(assert (=> mapNonEmpty!56266 m!1216855))

(check-sat (not b!1327562) (not b!1327555) (not mapNonEmpty!56266) (not d!143257) (not b!1327547) tp_is_empty!36393 (not b!1327557) (not bm!64815) (not b!1327546) (not b!1327563) (not d!143259))
(check-sat)
