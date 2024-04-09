; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35960 () Bool)

(assert start!35960)

(declare-fun mapIsEmpty!14070 () Bool)

(declare-fun mapRes!14070 () Bool)

(assert (=> mapIsEmpty!14070 mapRes!14070))

(declare-fun b!361065 () Bool)

(declare-fun res!200919 () Bool)

(declare-fun e!221100 () Bool)

(assert (=> b!361065 (=> (not res!200919) (not e!221100))))

(declare-datatypes ((array!20257 0))(
  ( (array!20258 (arr!9615 (Array (_ BitVec 32) (_ BitVec 64))) (size!9967 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20257)

(assert (=> b!361065 (= res!200919 (and (bvsle #b00000000000000000000000000000000 (size!9967 _keys!1541)) (bvslt (size!9967 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun res!200922 () Bool)

(assert (=> start!35960 (=> (not res!200922) (not e!221100))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35960 (= res!200922 (validMask!0 mask!1943))))

(assert (=> start!35960 e!221100))

(assert (=> start!35960 true))

(declare-datatypes ((V!12133 0))(
  ( (V!12134 (val!4228 Int)) )
))
(declare-datatypes ((ValueCell!3840 0))(
  ( (ValueCellFull!3840 (v!6418 V!12133)) (EmptyCell!3840) )
))
(declare-datatypes ((array!20259 0))(
  ( (array!20260 (arr!9616 (Array (_ BitVec 32) ValueCell!3840)) (size!9968 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20259)

(declare-fun e!221097 () Bool)

(declare-fun array_inv!7068 (array!20259) Bool)

(assert (=> start!35960 (and (array_inv!7068 _values!1277) e!221097)))

(declare-fun array_inv!7069 (array!20257) Bool)

(assert (=> start!35960 (array_inv!7069 _keys!1541)))

(declare-fun b!361066 () Bool)

(declare-fun e!221098 () Bool)

(declare-fun tp_is_empty!8367 () Bool)

(assert (=> b!361066 (= e!221098 tp_is_empty!8367)))

(declare-fun b!361067 () Bool)

(declare-fun res!200921 () Bool)

(assert (=> b!361067 (=> (not res!200921) (not e!221100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20257 (_ BitVec 32)) Bool)

(assert (=> b!361067 (= res!200921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361068 () Bool)

(assert (=> b!361068 (= e!221097 (and e!221098 mapRes!14070))))

(declare-fun condMapEmpty!14070 () Bool)

(declare-fun mapDefault!14070 () ValueCell!3840)

(assert (=> b!361068 (= condMapEmpty!14070 (= (arr!9616 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3840)) mapDefault!14070)))))

(declare-fun mapNonEmpty!14070 () Bool)

(declare-fun tp!28146 () Bool)

(declare-fun e!221101 () Bool)

(assert (=> mapNonEmpty!14070 (= mapRes!14070 (and tp!28146 e!221101))))

(declare-fun mapRest!14070 () (Array (_ BitVec 32) ValueCell!3840))

(declare-fun mapValue!14070 () ValueCell!3840)

(declare-fun mapKey!14070 () (_ BitVec 32))

(assert (=> mapNonEmpty!14070 (= (arr!9616 _values!1277) (store mapRest!14070 mapKey!14070 mapValue!14070))))

(declare-fun b!361069 () Bool)

(declare-datatypes ((List!5528 0))(
  ( (Nil!5525) (Cons!5524 (h!6380 (_ BitVec 64)) (t!10686 List!5528)) )
))
(declare-fun noDuplicate!180 (List!5528) Bool)

(assert (=> b!361069 (= e!221100 (not (noDuplicate!180 Nil!5525)))))

(declare-fun b!361070 () Bool)

(assert (=> b!361070 (= e!221101 tp_is_empty!8367)))

(declare-fun b!361071 () Bool)

(declare-fun res!200920 () Bool)

(assert (=> b!361071 (=> (not res!200920) (not e!221100))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361071 (= res!200920 (and (= (size!9968 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9967 _keys!1541) (size!9968 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(assert (= (and start!35960 res!200922) b!361071))

(assert (= (and b!361071 res!200920) b!361067))

(assert (= (and b!361067 res!200921) b!361065))

(assert (= (and b!361065 res!200919) b!361069))

(assert (= (and b!361068 condMapEmpty!14070) mapIsEmpty!14070))

(assert (= (and b!361068 (not condMapEmpty!14070)) mapNonEmpty!14070))

(get-info :version)

(assert (= (and mapNonEmpty!14070 ((_ is ValueCellFull!3840) mapValue!14070)) b!361070))

(assert (= (and b!361068 ((_ is ValueCellFull!3840) mapDefault!14070)) b!361066))

(assert (= start!35960 b!361068))

(declare-fun m!357995 () Bool)

(assert (=> start!35960 m!357995))

(declare-fun m!357997 () Bool)

(assert (=> start!35960 m!357997))

(declare-fun m!357999 () Bool)

(assert (=> start!35960 m!357999))

(declare-fun m!358001 () Bool)

(assert (=> b!361067 m!358001))

(declare-fun m!358003 () Bool)

(assert (=> mapNonEmpty!14070 m!358003))

(declare-fun m!358005 () Bool)

(assert (=> b!361069 m!358005))

(check-sat tp_is_empty!8367 (not b!361069) (not b!361067) (not start!35960) (not mapNonEmpty!14070))
(check-sat)
(get-model)

(declare-fun d!71777 () Bool)

(declare-fun res!200939 () Bool)

(declare-fun e!221121 () Bool)

(assert (=> d!71777 (=> res!200939 e!221121)))

(assert (=> d!71777 (= res!200939 ((_ is Nil!5525) Nil!5525))))

(assert (=> d!71777 (= (noDuplicate!180 Nil!5525) e!221121)))

(declare-fun b!361097 () Bool)

(declare-fun e!221122 () Bool)

(assert (=> b!361097 (= e!221121 e!221122)))

(declare-fun res!200940 () Bool)

(assert (=> b!361097 (=> (not res!200940) (not e!221122))))

(declare-fun contains!2425 (List!5528 (_ BitVec 64)) Bool)

(assert (=> b!361097 (= res!200940 (not (contains!2425 (t!10686 Nil!5525) (h!6380 Nil!5525))))))

(declare-fun b!361098 () Bool)

(assert (=> b!361098 (= e!221122 (noDuplicate!180 (t!10686 Nil!5525)))))

(assert (= (and d!71777 (not res!200939)) b!361097))

(assert (= (and b!361097 res!200940) b!361098))

(declare-fun m!358019 () Bool)

(assert (=> b!361097 m!358019))

(declare-fun m!358021 () Bool)

(assert (=> b!361098 m!358021))

(assert (=> b!361069 d!71777))

(declare-fun d!71779 () Bool)

(assert (=> d!71779 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!35960 d!71779))

(declare-fun d!71781 () Bool)

(assert (=> d!71781 (= (array_inv!7068 _values!1277) (bvsge (size!9968 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!35960 d!71781))

(declare-fun d!71783 () Bool)

(assert (=> d!71783 (= (array_inv!7069 _keys!1541) (bvsge (size!9967 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!35960 d!71783))

(declare-fun d!71785 () Bool)

(declare-fun res!200946 () Bool)

(declare-fun e!221131 () Bool)

(assert (=> d!71785 (=> res!200946 e!221131)))

(assert (=> d!71785 (= res!200946 (bvsge #b00000000000000000000000000000000 (size!9967 _keys!1541)))))

(assert (=> d!71785 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221131)))

(declare-fun b!361107 () Bool)

(declare-fun e!221130 () Bool)

(declare-fun e!221129 () Bool)

(assert (=> b!361107 (= e!221130 e!221129)))

(declare-fun lt!166502 () (_ BitVec 64))

(assert (=> b!361107 (= lt!166502 (select (arr!9615 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11101 0))(
  ( (Unit!11102) )
))
(declare-fun lt!166503 () Unit!11101)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20257 (_ BitVec 64) (_ BitVec 32)) Unit!11101)

(assert (=> b!361107 (= lt!166503 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166502 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361107 (arrayContainsKey!0 _keys!1541 lt!166502 #b00000000000000000000000000000000)))

(declare-fun lt!166504 () Unit!11101)

(assert (=> b!361107 (= lt!166504 lt!166503)))

(declare-fun res!200945 () Bool)

(declare-datatypes ((SeekEntryResult!3482 0))(
  ( (MissingZero!3482 (index!16107 (_ BitVec 32))) (Found!3482 (index!16108 (_ BitVec 32))) (Intermediate!3482 (undefined!4294 Bool) (index!16109 (_ BitVec 32)) (x!35983 (_ BitVec 32))) (Undefined!3482) (MissingVacant!3482 (index!16110 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20257 (_ BitVec 32)) SeekEntryResult!3482)

(assert (=> b!361107 (= res!200945 (= (seekEntryOrOpen!0 (select (arr!9615 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3482 #b00000000000000000000000000000000)))))

(assert (=> b!361107 (=> (not res!200945) (not e!221129))))

(declare-fun b!361108 () Bool)

(assert (=> b!361108 (= e!221131 e!221130)))

(declare-fun c!53645 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361108 (= c!53645 (validKeyInArray!0 (select (arr!9615 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361109 () Bool)

(declare-fun call!27170 () Bool)

(assert (=> b!361109 (= e!221129 call!27170)))

(declare-fun b!361110 () Bool)

(assert (=> b!361110 (= e!221130 call!27170)))

(declare-fun bm!27167 () Bool)

(assert (=> bm!27167 (= call!27170 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(assert (= (and d!71785 (not res!200946)) b!361108))

(assert (= (and b!361108 c!53645) b!361107))

(assert (= (and b!361108 (not c!53645)) b!361110))

(assert (= (and b!361107 res!200945) b!361109))

(assert (= (or b!361109 b!361110) bm!27167))

(declare-fun m!358023 () Bool)

(assert (=> b!361107 m!358023))

(declare-fun m!358025 () Bool)

(assert (=> b!361107 m!358025))

(declare-fun m!358027 () Bool)

(assert (=> b!361107 m!358027))

(assert (=> b!361107 m!358023))

(declare-fun m!358029 () Bool)

(assert (=> b!361107 m!358029))

(assert (=> b!361108 m!358023))

(assert (=> b!361108 m!358023))

(declare-fun m!358031 () Bool)

(assert (=> b!361108 m!358031))

(declare-fun m!358033 () Bool)

(assert (=> bm!27167 m!358033))

(assert (=> b!361067 d!71785))

(declare-fun mapNonEmpty!14076 () Bool)

(declare-fun mapRes!14076 () Bool)

(declare-fun tp!28152 () Bool)

(declare-fun e!221137 () Bool)

(assert (=> mapNonEmpty!14076 (= mapRes!14076 (and tp!28152 e!221137))))

(declare-fun mapKey!14076 () (_ BitVec 32))

(declare-fun mapValue!14076 () ValueCell!3840)

(declare-fun mapRest!14076 () (Array (_ BitVec 32) ValueCell!3840))

(assert (=> mapNonEmpty!14076 (= mapRest!14070 (store mapRest!14076 mapKey!14076 mapValue!14076))))

(declare-fun b!361118 () Bool)

(declare-fun e!221136 () Bool)

(assert (=> b!361118 (= e!221136 tp_is_empty!8367)))

(declare-fun condMapEmpty!14076 () Bool)

(declare-fun mapDefault!14076 () ValueCell!3840)

(assert (=> mapNonEmpty!14070 (= condMapEmpty!14076 (= mapRest!14070 ((as const (Array (_ BitVec 32) ValueCell!3840)) mapDefault!14076)))))

(assert (=> mapNonEmpty!14070 (= tp!28146 (and e!221136 mapRes!14076))))

(declare-fun b!361117 () Bool)

(assert (=> b!361117 (= e!221137 tp_is_empty!8367)))

(declare-fun mapIsEmpty!14076 () Bool)

(assert (=> mapIsEmpty!14076 mapRes!14076))

(assert (= (and mapNonEmpty!14070 condMapEmpty!14076) mapIsEmpty!14076))

(assert (= (and mapNonEmpty!14070 (not condMapEmpty!14076)) mapNonEmpty!14076))

(assert (= (and mapNonEmpty!14076 ((_ is ValueCellFull!3840) mapValue!14076)) b!361117))

(assert (= (and mapNonEmpty!14070 ((_ is ValueCellFull!3840) mapDefault!14076)) b!361118))

(declare-fun m!358035 () Bool)

(assert (=> mapNonEmpty!14076 m!358035))

(check-sat (not bm!27167) (not b!361108) (not b!361097) tp_is_empty!8367 (not b!361107) (not b!361098) (not mapNonEmpty!14076))
(check-sat)
