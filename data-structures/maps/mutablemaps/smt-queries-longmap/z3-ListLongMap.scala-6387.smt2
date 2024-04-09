; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82126 () Bool)

(assert start!82126)

(declare-fun b!956998 () Bool)

(declare-fun e!539405 () Bool)

(declare-fun tp_is_empty!21099 () Bool)

(assert (=> b!956998 (= e!539405 tp_is_empty!21099)))

(declare-fun mapNonEmpty!33622 () Bool)

(declare-fun mapRes!33622 () Bool)

(declare-fun tp!64228 () Bool)

(assert (=> mapNonEmpty!33622 (= mapRes!33622 (and tp!64228 e!539405))))

(declare-datatypes ((V!33115 0))(
  ( (V!33116 (val!10600 Int)) )
))
(declare-datatypes ((ValueCell!10068 0))(
  ( (ValueCellFull!10068 (v!13156 V!33115)) (EmptyCell!10068) )
))
(declare-fun mapRest!33622 () (Array (_ BitVec 32) ValueCell!10068))

(declare-datatypes ((array!58319 0))(
  ( (array!58320 (arr!28031 (Array (_ BitVec 32) ValueCell!10068)) (size!28511 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58319)

(declare-fun mapKey!33622 () (_ BitVec 32))

(declare-fun mapValue!33622 () ValueCell!10068)

(assert (=> mapNonEmpty!33622 (= (arr!28031 _values!1386) (store mapRest!33622 mapKey!33622 mapValue!33622))))

(declare-fun res!640782 () Bool)

(declare-fun e!539406 () Bool)

(assert (=> start!82126 (=> (not res!640782) (not e!539406))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82126 (= res!640782 (validMask!0 mask!2088))))

(assert (=> start!82126 e!539406))

(assert (=> start!82126 true))

(declare-fun e!539407 () Bool)

(declare-fun array_inv!21693 (array!58319) Bool)

(assert (=> start!82126 (and (array_inv!21693 _values!1386) e!539407)))

(declare-datatypes ((array!58321 0))(
  ( (array!58322 (arr!28032 (Array (_ BitVec 32) (_ BitVec 64))) (size!28512 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58321)

(declare-fun array_inv!21694 (array!58321) Bool)

(assert (=> start!82126 (array_inv!21694 _keys!1668)))

(declare-fun b!956999 () Bool)

(declare-fun res!640781 () Bool)

(assert (=> b!956999 (=> (not res!640781) (not e!539406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58321 (_ BitVec 32)) Bool)

(assert (=> b!956999 (= res!640781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957000 () Bool)

(declare-fun e!539408 () Bool)

(assert (=> b!957000 (= e!539408 tp_is_empty!21099)))

(declare-fun b!957001 () Bool)

(declare-datatypes ((List!19641 0))(
  ( (Nil!19638) (Cons!19637 (h!20799 (_ BitVec 64)) (t!28012 List!19641)) )
))
(declare-fun noDuplicate!1367 (List!19641) Bool)

(assert (=> b!957001 (= e!539406 (not (noDuplicate!1367 Nil!19638)))))

(declare-fun b!957002 () Bool)

(assert (=> b!957002 (= e!539407 (and e!539408 mapRes!33622))))

(declare-fun condMapEmpty!33622 () Bool)

(declare-fun mapDefault!33622 () ValueCell!10068)

(assert (=> b!957002 (= condMapEmpty!33622 (= (arr!28031 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10068)) mapDefault!33622)))))

(declare-fun b!957003 () Bool)

(declare-fun res!640783 () Bool)

(assert (=> b!957003 (=> (not res!640783) (not e!539406))))

(assert (=> b!957003 (= res!640783 (and (bvsle #b00000000000000000000000000000000 (size!28512 _keys!1668)) (bvslt (size!28512 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!33622 () Bool)

(assert (=> mapIsEmpty!33622 mapRes!33622))

(declare-fun b!957004 () Bool)

(declare-fun res!640780 () Bool)

(assert (=> b!957004 (=> (not res!640780) (not e!539406))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957004 (= res!640780 (and (= (size!28511 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28512 _keys!1668) (size!28511 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(assert (= (and start!82126 res!640782) b!957004))

(assert (= (and b!957004 res!640780) b!956999))

(assert (= (and b!956999 res!640781) b!957003))

(assert (= (and b!957003 res!640783) b!957001))

(assert (= (and b!957002 condMapEmpty!33622) mapIsEmpty!33622))

(assert (= (and b!957002 (not condMapEmpty!33622)) mapNonEmpty!33622))

(get-info :version)

(assert (= (and mapNonEmpty!33622 ((_ is ValueCellFull!10068) mapValue!33622)) b!956998))

(assert (= (and b!957002 ((_ is ValueCellFull!10068) mapDefault!33622)) b!957000))

(assert (= start!82126 b!957002))

(declare-fun m!888179 () Bool)

(assert (=> mapNonEmpty!33622 m!888179))

(declare-fun m!888181 () Bool)

(assert (=> start!82126 m!888181))

(declare-fun m!888183 () Bool)

(assert (=> start!82126 m!888183))

(declare-fun m!888185 () Bool)

(assert (=> start!82126 m!888185))

(declare-fun m!888187 () Bool)

(assert (=> b!956999 m!888187))

(declare-fun m!888189 () Bool)

(assert (=> b!957001 m!888189))

(check-sat (not mapNonEmpty!33622) (not b!956999) (not start!82126) (not b!957001) tp_is_empty!21099)
(check-sat)
(get-model)

(declare-fun d!115813 () Bool)

(declare-fun res!640801 () Bool)

(declare-fun e!539432 () Bool)

(assert (=> d!115813 (=> res!640801 e!539432)))

(assert (=> d!115813 (= res!640801 (bvsge #b00000000000000000000000000000000 (size!28512 _keys!1668)))))

(assert (=> d!115813 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088) e!539432)))

(declare-fun bm!41711 () Bool)

(declare-fun call!41714 () Bool)

(assert (=> bm!41711 (= call!41714 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1668 mask!2088))))

(declare-fun b!957034 () Bool)

(declare-fun e!539433 () Bool)

(declare-fun e!539431 () Bool)

(assert (=> b!957034 (= e!539433 e!539431)))

(declare-fun lt!430234 () (_ BitVec 64))

(assert (=> b!957034 (= lt!430234 (select (arr!28032 _keys!1668) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32139 0))(
  ( (Unit!32140) )
))
(declare-fun lt!430233 () Unit!32139)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58321 (_ BitVec 64) (_ BitVec 32)) Unit!32139)

(assert (=> b!957034 (= lt!430233 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1668 lt!430234 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!957034 (arrayContainsKey!0 _keys!1668 lt!430234 #b00000000000000000000000000000000)))

(declare-fun lt!430232 () Unit!32139)

(assert (=> b!957034 (= lt!430232 lt!430233)))

(declare-fun res!640800 () Bool)

(declare-datatypes ((SeekEntryResult!9179 0))(
  ( (MissingZero!9179 (index!39086 (_ BitVec 32))) (Found!9179 (index!39087 (_ BitVec 32))) (Intermediate!9179 (undefined!9991 Bool) (index!39088 (_ BitVec 32)) (x!82480 (_ BitVec 32))) (Undefined!9179) (MissingVacant!9179 (index!39089 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58321 (_ BitVec 32)) SeekEntryResult!9179)

(assert (=> b!957034 (= res!640800 (= (seekEntryOrOpen!0 (select (arr!28032 _keys!1668) #b00000000000000000000000000000000) _keys!1668 mask!2088) (Found!9179 #b00000000000000000000000000000000)))))

(assert (=> b!957034 (=> (not res!640800) (not e!539431))))

(declare-fun b!957035 () Bool)

(assert (=> b!957035 (= e!539433 call!41714)))

(declare-fun b!957036 () Bool)

(assert (=> b!957036 (= e!539431 call!41714)))

(declare-fun b!957037 () Bool)

(assert (=> b!957037 (= e!539432 e!539433)))

(declare-fun c!99820 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957037 (= c!99820 (validKeyInArray!0 (select (arr!28032 _keys!1668) #b00000000000000000000000000000000)))))

(assert (= (and d!115813 (not res!640801)) b!957037))

(assert (= (and b!957037 c!99820) b!957034))

(assert (= (and b!957037 (not c!99820)) b!957035))

(assert (= (and b!957034 res!640800) b!957036))

(assert (= (or b!957036 b!957035) bm!41711))

(declare-fun m!888203 () Bool)

(assert (=> bm!41711 m!888203))

(declare-fun m!888205 () Bool)

(assert (=> b!957034 m!888205))

(declare-fun m!888207 () Bool)

(assert (=> b!957034 m!888207))

(declare-fun m!888209 () Bool)

(assert (=> b!957034 m!888209))

(assert (=> b!957034 m!888205))

(declare-fun m!888211 () Bool)

(assert (=> b!957034 m!888211))

(assert (=> b!957037 m!888205))

(assert (=> b!957037 m!888205))

(declare-fun m!888213 () Bool)

(assert (=> b!957037 m!888213))

(assert (=> b!956999 d!115813))

(declare-fun d!115815 () Bool)

(assert (=> d!115815 (= (validMask!0 mask!2088) (and (or (= mask!2088 #b00000000000000000000000000000111) (= mask!2088 #b00000000000000000000000000001111) (= mask!2088 #b00000000000000000000000000011111) (= mask!2088 #b00000000000000000000000000111111) (= mask!2088 #b00000000000000000000000001111111) (= mask!2088 #b00000000000000000000000011111111) (= mask!2088 #b00000000000000000000000111111111) (= mask!2088 #b00000000000000000000001111111111) (= mask!2088 #b00000000000000000000011111111111) (= mask!2088 #b00000000000000000000111111111111) (= mask!2088 #b00000000000000000001111111111111) (= mask!2088 #b00000000000000000011111111111111) (= mask!2088 #b00000000000000000111111111111111) (= mask!2088 #b00000000000000001111111111111111) (= mask!2088 #b00000000000000011111111111111111) (= mask!2088 #b00000000000000111111111111111111) (= mask!2088 #b00000000000001111111111111111111) (= mask!2088 #b00000000000011111111111111111111) (= mask!2088 #b00000000000111111111111111111111) (= mask!2088 #b00000000001111111111111111111111) (= mask!2088 #b00000000011111111111111111111111) (= mask!2088 #b00000000111111111111111111111111) (= mask!2088 #b00000001111111111111111111111111) (= mask!2088 #b00000011111111111111111111111111) (= mask!2088 #b00000111111111111111111111111111) (= mask!2088 #b00001111111111111111111111111111) (= mask!2088 #b00011111111111111111111111111111) (= mask!2088 #b00111111111111111111111111111111)) (bvsle mask!2088 #b00111111111111111111111111111111)))))

(assert (=> start!82126 d!115815))

(declare-fun d!115817 () Bool)

(assert (=> d!115817 (= (array_inv!21693 _values!1386) (bvsge (size!28511 _values!1386) #b00000000000000000000000000000000))))

(assert (=> start!82126 d!115817))

(declare-fun d!115819 () Bool)

(assert (=> d!115819 (= (array_inv!21694 _keys!1668) (bvsge (size!28512 _keys!1668) #b00000000000000000000000000000000))))

(assert (=> start!82126 d!115819))

(declare-fun d!115821 () Bool)

(declare-fun res!640806 () Bool)

(declare-fun e!539438 () Bool)

(assert (=> d!115821 (=> res!640806 e!539438)))

(assert (=> d!115821 (= res!640806 ((_ is Nil!19638) Nil!19638))))

(assert (=> d!115821 (= (noDuplicate!1367 Nil!19638) e!539438)))

(declare-fun b!957042 () Bool)

(declare-fun e!539439 () Bool)

(assert (=> b!957042 (= e!539438 e!539439)))

(declare-fun res!640807 () Bool)

(assert (=> b!957042 (=> (not res!640807) (not e!539439))))

(declare-fun contains!5320 (List!19641 (_ BitVec 64)) Bool)

(assert (=> b!957042 (= res!640807 (not (contains!5320 (t!28012 Nil!19638) (h!20799 Nil!19638))))))

(declare-fun b!957043 () Bool)

(assert (=> b!957043 (= e!539439 (noDuplicate!1367 (t!28012 Nil!19638)))))

(assert (= (and d!115821 (not res!640806)) b!957042))

(assert (= (and b!957042 res!640807) b!957043))

(declare-fun m!888215 () Bool)

(assert (=> b!957042 m!888215))

(declare-fun m!888217 () Bool)

(assert (=> b!957043 m!888217))

(assert (=> b!957001 d!115821))

(declare-fun mapNonEmpty!33628 () Bool)

(declare-fun mapRes!33628 () Bool)

(declare-fun tp!64234 () Bool)

(declare-fun e!539445 () Bool)

(assert (=> mapNonEmpty!33628 (= mapRes!33628 (and tp!64234 e!539445))))

(declare-fun mapRest!33628 () (Array (_ BitVec 32) ValueCell!10068))

(declare-fun mapValue!33628 () ValueCell!10068)

(declare-fun mapKey!33628 () (_ BitVec 32))

(assert (=> mapNonEmpty!33628 (= mapRest!33622 (store mapRest!33628 mapKey!33628 mapValue!33628))))

(declare-fun condMapEmpty!33628 () Bool)

(declare-fun mapDefault!33628 () ValueCell!10068)

(assert (=> mapNonEmpty!33622 (= condMapEmpty!33628 (= mapRest!33622 ((as const (Array (_ BitVec 32) ValueCell!10068)) mapDefault!33628)))))

(declare-fun e!539444 () Bool)

(assert (=> mapNonEmpty!33622 (= tp!64228 (and e!539444 mapRes!33628))))

(declare-fun mapIsEmpty!33628 () Bool)

(assert (=> mapIsEmpty!33628 mapRes!33628))

(declare-fun b!957050 () Bool)

(assert (=> b!957050 (= e!539445 tp_is_empty!21099)))

(declare-fun b!957051 () Bool)

(assert (=> b!957051 (= e!539444 tp_is_empty!21099)))

(assert (= (and mapNonEmpty!33622 condMapEmpty!33628) mapIsEmpty!33628))

(assert (= (and mapNonEmpty!33622 (not condMapEmpty!33628)) mapNonEmpty!33628))

(assert (= (and mapNonEmpty!33628 ((_ is ValueCellFull!10068) mapValue!33628)) b!957050))

(assert (= (and mapNonEmpty!33622 ((_ is ValueCellFull!10068) mapDefault!33628)) b!957051))

(declare-fun m!888219 () Bool)

(assert (=> mapNonEmpty!33628 m!888219))

(check-sat (not b!957034) tp_is_empty!21099 (not b!957042) (not b!957037) (not b!957043) (not mapNonEmpty!33628) (not bm!41711))
(check-sat)
