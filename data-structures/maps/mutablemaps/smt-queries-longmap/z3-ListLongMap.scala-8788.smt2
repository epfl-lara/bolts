; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106960 () Bool)

(assert start!106960)

(declare-fun mapNonEmpty!50536 () Bool)

(declare-fun mapRes!50536 () Bool)

(declare-fun tp!96716 () Bool)

(declare-fun e!722556 () Bool)

(assert (=> mapNonEmpty!50536 (= mapRes!50536 (and tp!96716 e!722556))))

(declare-datatypes ((V!48717 0))(
  ( (V!48718 (val!16396 Int)) )
))
(declare-datatypes ((ValueCell!15468 0))(
  ( (ValueCellFull!15468 (v!19030 V!48717)) (EmptyCell!15468) )
))
(declare-datatypes ((array!82535 0))(
  ( (array!82536 (arr!39803 (Array (_ BitVec 32) ValueCell!15468)) (size!40340 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82535)

(declare-fun mapRest!50536 () (Array (_ BitVec 32) ValueCell!15468))

(declare-fun mapKey!50536 () (_ BitVec 32))

(declare-fun mapValue!50536 () ValueCell!15468)

(assert (=> mapNonEmpty!50536 (= (arr!39803 _values!1134) (store mapRest!50536 mapKey!50536 mapValue!50536))))

(declare-fun b!1268071 () Bool)

(declare-fun tp_is_empty!32643 () Bool)

(assert (=> b!1268071 (= e!722556 tp_is_empty!32643)))

(declare-fun b!1268072 () Bool)

(declare-fun res!844120 () Bool)

(declare-fun e!722557 () Bool)

(assert (=> b!1268072 (=> (not res!844120) (not e!722557))))

(declare-datatypes ((array!82537 0))(
  ( (array!82538 (arr!39804 (Array (_ BitVec 32) (_ BitVec 64))) (size!40341 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82537)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82537 (_ BitVec 32)) Bool)

(assert (=> b!1268072 (= res!844120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268073 () Bool)

(declare-fun e!722558 () Bool)

(declare-fun e!722555 () Bool)

(assert (=> b!1268073 (= e!722558 (and e!722555 mapRes!50536))))

(declare-fun condMapEmpty!50536 () Bool)

(declare-fun mapDefault!50536 () ValueCell!15468)

(assert (=> b!1268073 (= condMapEmpty!50536 (= (arr!39803 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15468)) mapDefault!50536)))))

(declare-fun b!1268074 () Bool)

(assert (=> b!1268074 (= e!722557 (and (bvsle #b00000000000000000000000000000000 (size!40341 _keys!1364)) (bvsge (size!40341 _keys!1364) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!50536 () Bool)

(assert (=> mapIsEmpty!50536 mapRes!50536))

(declare-fun res!844122 () Bool)

(assert (=> start!106960 (=> (not res!844122) (not e!722557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106960 (= res!844122 (validMask!0 mask!1730))))

(assert (=> start!106960 e!722557))

(declare-fun array_inv!30247 (array!82535) Bool)

(assert (=> start!106960 (and (array_inv!30247 _values!1134) e!722558)))

(assert (=> start!106960 true))

(declare-fun array_inv!30248 (array!82537) Bool)

(assert (=> start!106960 (array_inv!30248 _keys!1364)))

(declare-fun b!1268075 () Bool)

(declare-fun res!844121 () Bool)

(assert (=> b!1268075 (=> (not res!844121) (not e!722557))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268075 (= res!844121 (and (= (size!40340 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40341 _keys!1364) (size!40340 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268076 () Bool)

(assert (=> b!1268076 (= e!722555 tp_is_empty!32643)))

(assert (= (and start!106960 res!844122) b!1268075))

(assert (= (and b!1268075 res!844121) b!1268072))

(assert (= (and b!1268072 res!844120) b!1268074))

(assert (= (and b!1268073 condMapEmpty!50536) mapIsEmpty!50536))

(assert (= (and b!1268073 (not condMapEmpty!50536)) mapNonEmpty!50536))

(get-info :version)

(assert (= (and mapNonEmpty!50536 ((_ is ValueCellFull!15468) mapValue!50536)) b!1268071))

(assert (= (and b!1268073 ((_ is ValueCellFull!15468) mapDefault!50536)) b!1268076))

(assert (= start!106960 b!1268073))

(declare-fun m!1167057 () Bool)

(assert (=> mapNonEmpty!50536 m!1167057))

(declare-fun m!1167059 () Bool)

(assert (=> b!1268072 m!1167059))

(declare-fun m!1167061 () Bool)

(assert (=> start!106960 m!1167061))

(declare-fun m!1167063 () Bool)

(assert (=> start!106960 m!1167063))

(declare-fun m!1167065 () Bool)

(assert (=> start!106960 m!1167065))

(check-sat (not b!1268072) (not start!106960) (not mapNonEmpty!50536) tp_is_empty!32643)
(check-sat)
(get-model)

(declare-fun b!1268103 () Bool)

(declare-fun e!722581 () Bool)

(declare-fun e!722582 () Bool)

(assert (=> b!1268103 (= e!722581 e!722582)))

(declare-fun c!123569 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1268103 (= c!123569 (validKeyInArray!0 (select (arr!39804 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun bm!62502 () Bool)

(declare-fun call!62505 () Bool)

(assert (=> bm!62502 (= call!62505 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(declare-fun d!139567 () Bool)

(declare-fun res!844137 () Bool)

(assert (=> d!139567 (=> res!844137 e!722581)))

(assert (=> d!139567 (= res!844137 (bvsge #b00000000000000000000000000000000 (size!40341 _keys!1364)))))

(assert (=> d!139567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!722581)))

(declare-fun b!1268104 () Bool)

(assert (=> b!1268104 (= e!722582 call!62505)))

(declare-fun b!1268105 () Bool)

(declare-fun e!722583 () Bool)

(assert (=> b!1268105 (= e!722583 call!62505)))

(declare-fun b!1268106 () Bool)

(assert (=> b!1268106 (= e!722582 e!722583)))

(declare-fun lt!574334 () (_ BitVec 64))

(assert (=> b!1268106 (= lt!574334 (select (arr!39804 _keys!1364) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42178 0))(
  ( (Unit!42179) )
))
(declare-fun lt!574336 () Unit!42178)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82537 (_ BitVec 64) (_ BitVec 32)) Unit!42178)

(assert (=> b!1268106 (= lt!574336 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574334 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1268106 (arrayContainsKey!0 _keys!1364 lt!574334 #b00000000000000000000000000000000)))

(declare-fun lt!574335 () Unit!42178)

(assert (=> b!1268106 (= lt!574335 lt!574336)))

(declare-fun res!844136 () Bool)

(declare-datatypes ((SeekEntryResult!9981 0))(
  ( (MissingZero!9981 (index!42294 (_ BitVec 32))) (Found!9981 (index!42295 (_ BitVec 32))) (Intermediate!9981 (undefined!10793 Bool) (index!42296 (_ BitVec 32)) (x!111837 (_ BitVec 32))) (Undefined!9981) (MissingVacant!9981 (index!42297 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82537 (_ BitVec 32)) SeekEntryResult!9981)

(assert (=> b!1268106 (= res!844136 (= (seekEntryOrOpen!0 (select (arr!39804 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9981 #b00000000000000000000000000000000)))))

(assert (=> b!1268106 (=> (not res!844136) (not e!722583))))

(assert (= (and d!139567 (not res!844137)) b!1268103))

(assert (= (and b!1268103 c!123569) b!1268106))

(assert (= (and b!1268103 (not c!123569)) b!1268104))

(assert (= (and b!1268106 res!844136) b!1268105))

(assert (= (or b!1268105 b!1268104) bm!62502))

(declare-fun m!1167077 () Bool)

(assert (=> b!1268103 m!1167077))

(assert (=> b!1268103 m!1167077))

(declare-fun m!1167079 () Bool)

(assert (=> b!1268103 m!1167079))

(declare-fun m!1167081 () Bool)

(assert (=> bm!62502 m!1167081))

(assert (=> b!1268106 m!1167077))

(declare-fun m!1167083 () Bool)

(assert (=> b!1268106 m!1167083))

(declare-fun m!1167085 () Bool)

(assert (=> b!1268106 m!1167085))

(assert (=> b!1268106 m!1167077))

(declare-fun m!1167087 () Bool)

(assert (=> b!1268106 m!1167087))

(assert (=> b!1268072 d!139567))

(declare-fun d!139569 () Bool)

(assert (=> d!139569 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!106960 d!139569))

(declare-fun d!139571 () Bool)

(assert (=> d!139571 (= (array_inv!30247 _values!1134) (bvsge (size!40340 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!106960 d!139571))

(declare-fun d!139573 () Bool)

(assert (=> d!139573 (= (array_inv!30248 _keys!1364) (bvsge (size!40341 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!106960 d!139573))

(declare-fun mapIsEmpty!50542 () Bool)

(declare-fun mapRes!50542 () Bool)

(assert (=> mapIsEmpty!50542 mapRes!50542))

(declare-fun b!1268113 () Bool)

(declare-fun e!722589 () Bool)

(assert (=> b!1268113 (= e!722589 tp_is_empty!32643)))

(declare-fun mapNonEmpty!50542 () Bool)

(declare-fun tp!96722 () Bool)

(assert (=> mapNonEmpty!50542 (= mapRes!50542 (and tp!96722 e!722589))))

(declare-fun mapKey!50542 () (_ BitVec 32))

(declare-fun mapRest!50542 () (Array (_ BitVec 32) ValueCell!15468))

(declare-fun mapValue!50542 () ValueCell!15468)

(assert (=> mapNonEmpty!50542 (= mapRest!50536 (store mapRest!50542 mapKey!50542 mapValue!50542))))

(declare-fun condMapEmpty!50542 () Bool)

(declare-fun mapDefault!50542 () ValueCell!15468)

(assert (=> mapNonEmpty!50536 (= condMapEmpty!50542 (= mapRest!50536 ((as const (Array (_ BitVec 32) ValueCell!15468)) mapDefault!50542)))))

(declare-fun e!722588 () Bool)

(assert (=> mapNonEmpty!50536 (= tp!96716 (and e!722588 mapRes!50542))))

(declare-fun b!1268114 () Bool)

(assert (=> b!1268114 (= e!722588 tp_is_empty!32643)))

(assert (= (and mapNonEmpty!50536 condMapEmpty!50542) mapIsEmpty!50542))

(assert (= (and mapNonEmpty!50536 (not condMapEmpty!50542)) mapNonEmpty!50542))

(assert (= (and mapNonEmpty!50542 ((_ is ValueCellFull!15468) mapValue!50542)) b!1268113))

(assert (= (and mapNonEmpty!50536 ((_ is ValueCellFull!15468) mapDefault!50542)) b!1268114))

(declare-fun m!1167089 () Bool)

(assert (=> mapNonEmpty!50542 m!1167089))

(check-sat (not b!1268103) (not b!1268106) (not bm!62502) (not mapNonEmpty!50542) tp_is_empty!32643)
(check-sat)
