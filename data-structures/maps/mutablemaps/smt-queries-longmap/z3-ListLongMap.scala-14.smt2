; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470 () Bool)

(assert start!470)

(declare-fun b!2771 () Bool)

(declare-fun e!1118 () Bool)

(declare-datatypes ((array!67 0))(
  ( (array!68 (arr!31 (Array (_ BitVec 32) (_ BitVec 64))) (size!93 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!67)

(assert (=> b!2771 (= e!1118 (bvsgt #b00000000000000000000000000000000 (size!93 _keys!1806)))))

(declare-fun res!4834 () Bool)

(assert (=> start!470 (=> (not res!4834) (not e!1118))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!470 (= res!4834 (validMask!0 mask!2250))))

(assert (=> start!470 e!1118))

(assert (=> start!470 true))

(declare-datatypes ((V!269 0))(
  ( (V!270 (val!40 Int)) )
))
(declare-datatypes ((ValueCell!18 0))(
  ( (ValueCellFull!18 (v!1126 V!269)) (EmptyCell!18) )
))
(declare-datatypes ((array!69 0))(
  ( (array!70 (arr!32 (Array (_ BitVec 32) ValueCell!18)) (size!94 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!69)

(declare-fun e!1119 () Bool)

(declare-fun array_inv!17 (array!69) Bool)

(assert (=> start!470 (and (array_inv!17 _values!1492) e!1119)))

(declare-fun array_inv!18 (array!67) Bool)

(assert (=> start!470 (array_inv!18 _keys!1806)))

(declare-fun b!2772 () Bool)

(declare-fun e!1116 () Bool)

(declare-fun tp_is_empty!69 () Bool)

(assert (=> b!2772 (= e!1116 tp_is_empty!69)))

(declare-fun b!2773 () Bool)

(declare-fun res!4833 () Bool)

(assert (=> b!2773 (=> (not res!4833) (not e!1118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67 (_ BitVec 32)) Bool)

(assert (=> b!2773 (= res!4833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!47 () Bool)

(declare-fun mapRes!47 () Bool)

(assert (=> mapIsEmpty!47 mapRes!47))

(declare-fun b!2774 () Bool)

(declare-fun e!1115 () Bool)

(assert (=> b!2774 (= e!1115 tp_is_empty!69)))

(declare-fun mapNonEmpty!47 () Bool)

(declare-fun tp!287 () Bool)

(assert (=> mapNonEmpty!47 (= mapRes!47 (and tp!287 e!1116))))

(declare-fun mapRest!47 () (Array (_ BitVec 32) ValueCell!18))

(declare-fun mapValue!47 () ValueCell!18)

(declare-fun mapKey!47 () (_ BitVec 32))

(assert (=> mapNonEmpty!47 (= (arr!32 _values!1492) (store mapRest!47 mapKey!47 mapValue!47))))

(declare-fun b!2775 () Bool)

(declare-fun res!4835 () Bool)

(assert (=> b!2775 (=> (not res!4835) (not e!1118))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!2775 (= res!4835 (and (= (size!94 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!93 _keys!1806) (size!94 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!2776 () Bool)

(assert (=> b!2776 (= e!1119 (and e!1115 mapRes!47))))

(declare-fun condMapEmpty!47 () Bool)

(declare-fun mapDefault!47 () ValueCell!18)

(assert (=> b!2776 (= condMapEmpty!47 (= (arr!32 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!18)) mapDefault!47)))))

(assert (= (and start!470 res!4834) b!2775))

(assert (= (and b!2775 res!4835) b!2773))

(assert (= (and b!2773 res!4833) b!2771))

(assert (= (and b!2776 condMapEmpty!47) mapIsEmpty!47))

(assert (= (and b!2776 (not condMapEmpty!47)) mapNonEmpty!47))

(get-info :version)

(assert (= (and mapNonEmpty!47 ((_ is ValueCellFull!18) mapValue!47)) b!2772))

(assert (= (and b!2776 ((_ is ValueCellFull!18) mapDefault!47)) b!2774))

(assert (= start!470 b!2776))

(declare-fun m!1225 () Bool)

(assert (=> start!470 m!1225))

(declare-fun m!1227 () Bool)

(assert (=> start!470 m!1227))

(declare-fun m!1229 () Bool)

(assert (=> start!470 m!1229))

(declare-fun m!1231 () Bool)

(assert (=> b!2773 m!1231))

(declare-fun m!1233 () Bool)

(assert (=> mapNonEmpty!47 m!1233))

(check-sat (not b!2773) (not start!470) (not mapNonEmpty!47) tp_is_empty!69)
(check-sat)
(get-model)

(declare-fun b!2803 () Bool)

(declare-fun e!1143 () Bool)

(declare-fun e!1141 () Bool)

(assert (=> b!2803 (= e!1143 e!1141)))

(declare-fun c!176 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!2803 (= c!176 (validKeyInArray!0 (select (arr!31 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!2804 () Bool)

(declare-fun e!1142 () Bool)

(assert (=> b!2804 (= e!1141 e!1142)))

(declare-fun lt!385 () (_ BitVec 64))

(assert (=> b!2804 (= lt!385 (select (arr!31 _keys!1806) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!19 0))(
  ( (Unit!20) )
))
(declare-fun lt!386 () Unit!19)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67 (_ BitVec 64) (_ BitVec 32)) Unit!19)

(assert (=> b!2804 (= lt!386 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!385 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!2804 (arrayContainsKey!0 _keys!1806 lt!385 #b00000000000000000000000000000000)))

(declare-fun lt!384 () Unit!19)

(assert (=> b!2804 (= lt!384 lt!386)))

(declare-fun res!4849 () Bool)

(declare-datatypes ((SeekEntryResult!5 0))(
  ( (MissingZero!5 (index!2139 (_ BitVec 32))) (Found!5 (index!2140 (_ BitVec 32))) (Intermediate!5 (undefined!817 Bool) (index!2141 (_ BitVec 32)) (x!2159 (_ BitVec 32))) (Undefined!5) (MissingVacant!5 (index!2142 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67 (_ BitVec 32)) SeekEntryResult!5)

(assert (=> b!2804 (= res!4849 (= (seekEntryOrOpen!0 (select (arr!31 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!5 #b00000000000000000000000000000000)))))

(assert (=> b!2804 (=> (not res!4849) (not e!1142))))

(declare-fun d!573 () Bool)

(declare-fun res!4850 () Bool)

(assert (=> d!573 (=> res!4850 e!1143)))

(assert (=> d!573 (= res!4850 (bvsge #b00000000000000000000000000000000 (size!93 _keys!1806)))))

(assert (=> d!573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!1143)))

(declare-fun b!2805 () Bool)

(declare-fun call!32 () Bool)

(assert (=> b!2805 (= e!1142 call!32)))

(declare-fun b!2806 () Bool)

(assert (=> b!2806 (= e!1141 call!32)))

(declare-fun bm!29 () Bool)

(assert (=> bm!29 (= call!32 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(assert (= (and d!573 (not res!4850)) b!2803))

(assert (= (and b!2803 c!176) b!2804))

(assert (= (and b!2803 (not c!176)) b!2806))

(assert (= (and b!2804 res!4849) b!2805))

(assert (= (or b!2805 b!2806) bm!29))

(declare-fun m!1245 () Bool)

(assert (=> b!2803 m!1245))

(assert (=> b!2803 m!1245))

(declare-fun m!1247 () Bool)

(assert (=> b!2803 m!1247))

(assert (=> b!2804 m!1245))

(declare-fun m!1249 () Bool)

(assert (=> b!2804 m!1249))

(declare-fun m!1251 () Bool)

(assert (=> b!2804 m!1251))

(assert (=> b!2804 m!1245))

(declare-fun m!1253 () Bool)

(assert (=> b!2804 m!1253))

(declare-fun m!1255 () Bool)

(assert (=> bm!29 m!1255))

(assert (=> b!2773 d!573))

(declare-fun d!575 () Bool)

(assert (=> d!575 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!470 d!575))

(declare-fun d!577 () Bool)

(assert (=> d!577 (= (array_inv!17 _values!1492) (bvsge (size!94 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!470 d!577))

(declare-fun d!579 () Bool)

(assert (=> d!579 (= (array_inv!18 _keys!1806) (bvsge (size!93 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!470 d!579))

(declare-fun mapIsEmpty!53 () Bool)

(declare-fun mapRes!53 () Bool)

(assert (=> mapIsEmpty!53 mapRes!53))

(declare-fun condMapEmpty!53 () Bool)

(declare-fun mapDefault!53 () ValueCell!18)

(assert (=> mapNonEmpty!47 (= condMapEmpty!53 (= mapRest!47 ((as const (Array (_ BitVec 32) ValueCell!18)) mapDefault!53)))))

(declare-fun e!1148 () Bool)

(assert (=> mapNonEmpty!47 (= tp!287 (and e!1148 mapRes!53))))

(declare-fun b!2814 () Bool)

(assert (=> b!2814 (= e!1148 tp_is_empty!69)))

(declare-fun b!2813 () Bool)

(declare-fun e!1149 () Bool)

(assert (=> b!2813 (= e!1149 tp_is_empty!69)))

(declare-fun mapNonEmpty!53 () Bool)

(declare-fun tp!293 () Bool)

(assert (=> mapNonEmpty!53 (= mapRes!53 (and tp!293 e!1149))))

(declare-fun mapKey!53 () (_ BitVec 32))

(declare-fun mapRest!53 () (Array (_ BitVec 32) ValueCell!18))

(declare-fun mapValue!53 () ValueCell!18)

(assert (=> mapNonEmpty!53 (= mapRest!47 (store mapRest!53 mapKey!53 mapValue!53))))

(assert (= (and mapNonEmpty!47 condMapEmpty!53) mapIsEmpty!53))

(assert (= (and mapNonEmpty!47 (not condMapEmpty!53)) mapNonEmpty!53))

(assert (= (and mapNonEmpty!53 ((_ is ValueCellFull!18) mapValue!53)) b!2813))

(assert (= (and mapNonEmpty!47 ((_ is ValueCellFull!18) mapDefault!53)) b!2814))

(declare-fun m!1257 () Bool)

(assert (=> mapNonEmpty!53 m!1257))

(check-sat tp_is_empty!69 (not b!2804) (not mapNonEmpty!53) (not bm!29) (not b!2803))
(check-sat)
