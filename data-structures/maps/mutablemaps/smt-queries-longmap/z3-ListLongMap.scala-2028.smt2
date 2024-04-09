; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35312 () Bool)

(assert start!35312)

(declare-fun b!353481 () Bool)

(declare-fun e!216530 () Bool)

(declare-fun tp_is_empty!7791 () Bool)

(assert (=> b!353481 (= e!216530 tp_is_empty!7791)))

(declare-fun b!353482 () Bool)

(declare-fun e!216531 () Bool)

(declare-datatypes ((List!5294 0))(
  ( (Nil!5291) (Cons!5290 (h!6146 (_ BitVec 64)) (t!10452 List!5294)) )
))
(declare-fun noDuplicate!177 (List!5294) Bool)

(assert (=> b!353482 (= e!216531 (not (noDuplicate!177 Nil!5291)))))

(declare-fun b!353483 () Bool)

(declare-fun e!216534 () Bool)

(declare-fun mapRes!13185 () Bool)

(assert (=> b!353483 (= e!216534 (and e!216530 mapRes!13185))))

(declare-fun condMapEmpty!13185 () Bool)

(declare-datatypes ((V!11365 0))(
  ( (V!11366 (val!3940 Int)) )
))
(declare-datatypes ((ValueCell!3552 0))(
  ( (ValueCellFull!3552 (v!6129 V!11365)) (EmptyCell!3552) )
))
(declare-datatypes ((array!19135 0))(
  ( (array!19136 (arr!9061 (Array (_ BitVec 32) ValueCell!3552)) (size!9413 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19135)

(declare-fun mapDefault!13185 () ValueCell!3552)

(assert (=> b!353483 (= condMapEmpty!13185 (= (arr!9061 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3552)) mapDefault!13185)))))

(declare-fun mapIsEmpty!13185 () Bool)

(assert (=> mapIsEmpty!13185 mapRes!13185))

(declare-fun b!353484 () Bool)

(declare-fun res!196034 () Bool)

(assert (=> b!353484 (=> (not res!196034) (not e!216531))))

(declare-datatypes ((array!19137 0))(
  ( (array!19138 (arr!9062 (Array (_ BitVec 32) (_ BitVec 64))) (size!9414 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19137)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19137 (_ BitVec 32)) Bool)

(assert (=> b!353484 (= res!196034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353485 () Bool)

(declare-fun e!216532 () Bool)

(assert (=> b!353485 (= e!216532 tp_is_empty!7791)))

(declare-fun res!196033 () Bool)

(assert (=> start!35312 (=> (not res!196033) (not e!216531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35312 (= res!196033 (validMask!0 mask!1842))))

(assert (=> start!35312 e!216531))

(assert (=> start!35312 true))

(declare-fun array_inv!6670 (array!19135) Bool)

(assert (=> start!35312 (and (array_inv!6670 _values!1208) e!216534)))

(declare-fun array_inv!6671 (array!19137) Bool)

(assert (=> start!35312 (array_inv!6671 _keys!1456)))

(declare-fun b!353486 () Bool)

(declare-fun res!196031 () Bool)

(assert (=> b!353486 (=> (not res!196031) (not e!216531))))

(assert (=> b!353486 (= res!196031 (and (bvsle #b00000000000000000000000000000000 (size!9414 _keys!1456)) (bvslt (size!9414 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!13185 () Bool)

(declare-fun tp!27081 () Bool)

(assert (=> mapNonEmpty!13185 (= mapRes!13185 (and tp!27081 e!216532))))

(declare-fun mapRest!13185 () (Array (_ BitVec 32) ValueCell!3552))

(declare-fun mapValue!13185 () ValueCell!3552)

(declare-fun mapKey!13185 () (_ BitVec 32))

(assert (=> mapNonEmpty!13185 (= (arr!9061 _values!1208) (store mapRest!13185 mapKey!13185 mapValue!13185))))

(declare-fun b!353487 () Bool)

(declare-fun res!196032 () Bool)

(assert (=> b!353487 (=> (not res!196032) (not e!216531))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353487 (= res!196032 (and (= (size!9413 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9414 _keys!1456) (size!9413 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35312 res!196033) b!353487))

(assert (= (and b!353487 res!196032) b!353484))

(assert (= (and b!353484 res!196034) b!353486))

(assert (= (and b!353486 res!196031) b!353482))

(assert (= (and b!353483 condMapEmpty!13185) mapIsEmpty!13185))

(assert (= (and b!353483 (not condMapEmpty!13185)) mapNonEmpty!13185))

(get-info :version)

(assert (= (and mapNonEmpty!13185 ((_ is ValueCellFull!3552) mapValue!13185)) b!353485))

(assert (= (and b!353483 ((_ is ValueCellFull!3552) mapDefault!13185)) b!353481))

(assert (= start!35312 b!353483))

(declare-fun m!352805 () Bool)

(assert (=> b!353482 m!352805))

(declare-fun m!352807 () Bool)

(assert (=> b!353484 m!352807))

(declare-fun m!352809 () Bool)

(assert (=> start!35312 m!352809))

(declare-fun m!352811 () Bool)

(assert (=> start!35312 m!352811))

(declare-fun m!352813 () Bool)

(assert (=> start!35312 m!352813))

(declare-fun m!352815 () Bool)

(assert (=> mapNonEmpty!13185 m!352815))

(check-sat (not b!353484) (not start!35312) (not b!353482) (not mapNonEmpty!13185) tp_is_empty!7791)
(check-sat)
(get-model)

(declare-fun d!71509 () Bool)

(assert (=> d!71509 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35312 d!71509))

(declare-fun d!71511 () Bool)

(assert (=> d!71511 (= (array_inv!6670 _values!1208) (bvsge (size!9413 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35312 d!71511))

(declare-fun d!71513 () Bool)

(assert (=> d!71513 (= (array_inv!6671 _keys!1456) (bvsge (size!9414 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35312 d!71513))

(declare-fun d!71515 () Bool)

(declare-fun res!196051 () Bool)

(declare-fun e!216554 () Bool)

(assert (=> d!71515 (=> res!196051 e!216554)))

(assert (=> d!71515 (= res!196051 ((_ is Nil!5291) Nil!5291))))

(assert (=> d!71515 (= (noDuplicate!177 Nil!5291) e!216554)))

(declare-fun b!353513 () Bool)

(declare-fun e!216555 () Bool)

(assert (=> b!353513 (= e!216554 e!216555)))

(declare-fun res!196052 () Bool)

(assert (=> b!353513 (=> (not res!196052) (not e!216555))))

(declare-fun contains!2379 (List!5294 (_ BitVec 64)) Bool)

(assert (=> b!353513 (= res!196052 (not (contains!2379 (t!10452 Nil!5291) (h!6146 Nil!5291))))))

(declare-fun b!353514 () Bool)

(assert (=> b!353514 (= e!216555 (noDuplicate!177 (t!10452 Nil!5291)))))

(assert (= (and d!71515 (not res!196051)) b!353513))

(assert (= (and b!353513 res!196052) b!353514))

(declare-fun m!352829 () Bool)

(assert (=> b!353513 m!352829))

(declare-fun m!352831 () Bool)

(assert (=> b!353514 m!352831))

(assert (=> b!353482 d!71515))

(declare-fun b!353523 () Bool)

(declare-fun e!216564 () Bool)

(declare-fun e!216563 () Bool)

(assert (=> b!353523 (= e!216564 e!216563)))

(declare-fun lt!165559 () (_ BitVec 64))

(assert (=> b!353523 (= lt!165559 (select (arr!9062 _keys!1456) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10919 0))(
  ( (Unit!10920) )
))
(declare-fun lt!165560 () Unit!10919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19137 (_ BitVec 64) (_ BitVec 32)) Unit!10919)

(assert (=> b!353523 (= lt!165560 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!165559 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353523 (arrayContainsKey!0 _keys!1456 lt!165559 #b00000000000000000000000000000000)))

(declare-fun lt!165561 () Unit!10919)

(assert (=> b!353523 (= lt!165561 lt!165560)))

(declare-fun res!196057 () Bool)

(declare-datatypes ((SeekEntryResult!3476 0))(
  ( (MissingZero!3476 (index!16083 (_ BitVec 32))) (Found!3476 (index!16084 (_ BitVec 32))) (Intermediate!3476 (undefined!4288 Bool) (index!16085 (_ BitVec 32)) (x!35195 (_ BitVec 32))) (Undefined!3476) (MissingVacant!3476 (index!16086 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19137 (_ BitVec 32)) SeekEntryResult!3476)

(assert (=> b!353523 (= res!196057 (= (seekEntryOrOpen!0 (select (arr!9062 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3476 #b00000000000000000000000000000000)))))

(assert (=> b!353523 (=> (not res!196057) (not e!216563))))

(declare-fun b!353524 () Bool)

(declare-fun e!216562 () Bool)

(assert (=> b!353524 (= e!216562 e!216564)))

(declare-fun c!53621 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353524 (= c!53621 (validKeyInArray!0 (select (arr!9062 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!353525 () Bool)

(declare-fun call!27146 () Bool)

(assert (=> b!353525 (= e!216564 call!27146)))

(declare-fun d!71517 () Bool)

(declare-fun res!196058 () Bool)

(assert (=> d!71517 (=> res!196058 e!216562)))

(assert (=> d!71517 (= res!196058 (bvsge #b00000000000000000000000000000000 (size!9414 _keys!1456)))))

(assert (=> d!71517 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!216562)))

(declare-fun bm!27143 () Bool)

(assert (=> bm!27143 (= call!27146 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(declare-fun b!353526 () Bool)

(assert (=> b!353526 (= e!216563 call!27146)))

(assert (= (and d!71517 (not res!196058)) b!353524))

(assert (= (and b!353524 c!53621) b!353523))

(assert (= (and b!353524 (not c!53621)) b!353525))

(assert (= (and b!353523 res!196057) b!353526))

(assert (= (or b!353526 b!353525) bm!27143))

(declare-fun m!352833 () Bool)

(assert (=> b!353523 m!352833))

(declare-fun m!352835 () Bool)

(assert (=> b!353523 m!352835))

(declare-fun m!352837 () Bool)

(assert (=> b!353523 m!352837))

(assert (=> b!353523 m!352833))

(declare-fun m!352839 () Bool)

(assert (=> b!353523 m!352839))

(assert (=> b!353524 m!352833))

(assert (=> b!353524 m!352833))

(declare-fun m!352841 () Bool)

(assert (=> b!353524 m!352841))

(declare-fun m!352843 () Bool)

(assert (=> bm!27143 m!352843))

(assert (=> b!353484 d!71517))

(declare-fun b!353533 () Bool)

(declare-fun e!216570 () Bool)

(assert (=> b!353533 (= e!216570 tp_is_empty!7791)))

(declare-fun b!353534 () Bool)

(declare-fun e!216569 () Bool)

(assert (=> b!353534 (= e!216569 tp_is_empty!7791)))

(declare-fun condMapEmpty!13191 () Bool)

(declare-fun mapDefault!13191 () ValueCell!3552)

(assert (=> mapNonEmpty!13185 (= condMapEmpty!13191 (= mapRest!13185 ((as const (Array (_ BitVec 32) ValueCell!3552)) mapDefault!13191)))))

(declare-fun mapRes!13191 () Bool)

(assert (=> mapNonEmpty!13185 (= tp!27081 (and e!216569 mapRes!13191))))

(declare-fun mapIsEmpty!13191 () Bool)

(assert (=> mapIsEmpty!13191 mapRes!13191))

(declare-fun mapNonEmpty!13191 () Bool)

(declare-fun tp!27087 () Bool)

(assert (=> mapNonEmpty!13191 (= mapRes!13191 (and tp!27087 e!216570))))

(declare-fun mapKey!13191 () (_ BitVec 32))

(declare-fun mapValue!13191 () ValueCell!3552)

(declare-fun mapRest!13191 () (Array (_ BitVec 32) ValueCell!3552))

(assert (=> mapNonEmpty!13191 (= mapRest!13185 (store mapRest!13191 mapKey!13191 mapValue!13191))))

(assert (= (and mapNonEmpty!13185 condMapEmpty!13191) mapIsEmpty!13191))

(assert (= (and mapNonEmpty!13185 (not condMapEmpty!13191)) mapNonEmpty!13191))

(assert (= (and mapNonEmpty!13191 ((_ is ValueCellFull!3552) mapValue!13191)) b!353533))

(assert (= (and mapNonEmpty!13185 ((_ is ValueCellFull!3552) mapDefault!13191)) b!353534))

(declare-fun m!352845 () Bool)

(assert (=> mapNonEmpty!13191 m!352845))

(check-sat (not b!353514) (not b!353523) tp_is_empty!7791 (not b!353513) (not bm!27143) (not mapNonEmpty!13191) (not b!353524))
(check-sat)
