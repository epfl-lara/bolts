; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108294 () Bool)

(assert start!108294)

(declare-fun b!1278101 () Bool)

(declare-fun e!730074 () Bool)

(declare-datatypes ((array!83999 0))(
  ( (array!84000 (arr!40503 (Array (_ BitVec 32) (_ BitVec 64))) (size!41054 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83999)

(assert (=> b!1278101 (= e!730074 (bvsgt #b00000000000000000000000000000000 (size!41054 _keys!1741)))))

(declare-fun b!1278102 () Bool)

(declare-fun res!849239 () Bool)

(assert (=> b!1278102 (=> (not res!849239) (not e!730074))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49747 0))(
  ( (V!49748 (val!16816 Int)) )
))
(declare-datatypes ((ValueCell!15843 0))(
  ( (ValueCellFull!15843 (v!19413 V!49747)) (EmptyCell!15843) )
))
(declare-datatypes ((array!84001 0))(
  ( (array!84002 (arr!40504 (Array (_ BitVec 32) ValueCell!15843)) (size!41055 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84001)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278102 (= res!849239 (and (= (size!41055 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41054 _keys!1741) (size!41055 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278103 () Bool)

(declare-fun e!730072 () Bool)

(declare-fun tp_is_empty!33483 () Bool)

(assert (=> b!1278103 (= e!730072 tp_is_empty!33483)))

(declare-fun res!849238 () Bool)

(assert (=> start!108294 (=> (not res!849238) (not e!730074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108294 (= res!849238 (validMask!0 mask!2175))))

(assert (=> start!108294 e!730074))

(assert (=> start!108294 true))

(declare-fun e!730073 () Bool)

(declare-fun array_inv!30743 (array!84001) Bool)

(assert (=> start!108294 (and (array_inv!30743 _values!1445) e!730073)))

(declare-fun array_inv!30744 (array!83999) Bool)

(assert (=> start!108294 (array_inv!30744 _keys!1741)))

(declare-fun mapIsEmpty!51764 () Bool)

(declare-fun mapRes!51764 () Bool)

(assert (=> mapIsEmpty!51764 mapRes!51764))

(declare-fun b!1278104 () Bool)

(assert (=> b!1278104 (= e!730073 (and e!730072 mapRes!51764))))

(declare-fun condMapEmpty!51764 () Bool)

(declare-fun mapDefault!51764 () ValueCell!15843)

(assert (=> b!1278104 (= condMapEmpty!51764 (= (arr!40504 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15843)) mapDefault!51764)))))

(declare-fun mapNonEmpty!51764 () Bool)

(declare-fun tp!98739 () Bool)

(declare-fun e!730076 () Bool)

(assert (=> mapNonEmpty!51764 (= mapRes!51764 (and tp!98739 e!730076))))

(declare-fun mapValue!51764 () ValueCell!15843)

(declare-fun mapKey!51764 () (_ BitVec 32))

(declare-fun mapRest!51764 () (Array (_ BitVec 32) ValueCell!15843))

(assert (=> mapNonEmpty!51764 (= (arr!40504 _values!1445) (store mapRest!51764 mapKey!51764 mapValue!51764))))

(declare-fun b!1278105 () Bool)

(declare-fun res!849240 () Bool)

(assert (=> b!1278105 (=> (not res!849240) (not e!730074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83999 (_ BitVec 32)) Bool)

(assert (=> b!1278105 (= res!849240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278106 () Bool)

(assert (=> b!1278106 (= e!730076 tp_is_empty!33483)))

(assert (= (and start!108294 res!849238) b!1278102))

(assert (= (and b!1278102 res!849239) b!1278105))

(assert (= (and b!1278105 res!849240) b!1278101))

(assert (= (and b!1278104 condMapEmpty!51764) mapIsEmpty!51764))

(assert (= (and b!1278104 (not condMapEmpty!51764)) mapNonEmpty!51764))

(get-info :version)

(assert (= (and mapNonEmpty!51764 ((_ is ValueCellFull!15843) mapValue!51764)) b!1278106))

(assert (= (and b!1278104 ((_ is ValueCellFull!15843) mapDefault!51764)) b!1278103))

(assert (= start!108294 b!1278104))

(declare-fun m!1173547 () Bool)

(assert (=> start!108294 m!1173547))

(declare-fun m!1173549 () Bool)

(assert (=> start!108294 m!1173549))

(declare-fun m!1173551 () Bool)

(assert (=> start!108294 m!1173551))

(declare-fun m!1173553 () Bool)

(assert (=> mapNonEmpty!51764 m!1173553))

(declare-fun m!1173555 () Bool)

(assert (=> b!1278105 m!1173555))

(check-sat (not b!1278105) (not start!108294) (not mapNonEmpty!51764) tp_is_empty!33483)
(check-sat)
(get-model)

(declare-fun d!140431 () Bool)

(declare-fun res!849255 () Bool)

(declare-fun e!730099 () Bool)

(assert (=> d!140431 (=> res!849255 e!730099)))

(assert (=> d!140431 (= res!849255 (bvsge #b00000000000000000000000000000000 (size!41054 _keys!1741)))))

(assert (=> d!140431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!730099)))

(declare-fun bm!62700 () Bool)

(declare-fun call!62703 () Bool)

(assert (=> bm!62700 (= call!62703 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1278133 () Bool)

(declare-fun e!730100 () Bool)

(assert (=> b!1278133 (= e!730100 call!62703)))

(declare-fun b!1278134 () Bool)

(declare-fun e!730098 () Bool)

(assert (=> b!1278134 (= e!730098 e!730100)))

(declare-fun lt!575789 () (_ BitVec 64))

(assert (=> b!1278134 (= lt!575789 (select (arr!40503 _keys!1741) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42329 0))(
  ( (Unit!42330) )
))
(declare-fun lt!575788 () Unit!42329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83999 (_ BitVec 64) (_ BitVec 32)) Unit!42329)

(assert (=> b!1278134 (= lt!575788 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!575789 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1278134 (arrayContainsKey!0 _keys!1741 lt!575789 #b00000000000000000000000000000000)))

(declare-fun lt!575790 () Unit!42329)

(assert (=> b!1278134 (= lt!575790 lt!575788)))

(declare-fun res!849254 () Bool)

(declare-datatypes ((SeekEntryResult!10005 0))(
  ( (MissingZero!10005 (index!42390 (_ BitVec 32))) (Found!10005 (index!42391 (_ BitVec 32))) (Intermediate!10005 (undefined!10817 Bool) (index!42392 (_ BitVec 32)) (x!113289 (_ BitVec 32))) (Undefined!10005) (MissingVacant!10005 (index!42393 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83999 (_ BitVec 32)) SeekEntryResult!10005)

(assert (=> b!1278134 (= res!849254 (= (seekEntryOrOpen!0 (select (arr!40503 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10005 #b00000000000000000000000000000000)))))

(assert (=> b!1278134 (=> (not res!849254) (not e!730100))))

(declare-fun b!1278135 () Bool)

(assert (=> b!1278135 (= e!730098 call!62703)))

(declare-fun b!1278136 () Bool)

(assert (=> b!1278136 (= e!730099 e!730098)))

(declare-fun c!123972 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1278136 (= c!123972 (validKeyInArray!0 (select (arr!40503 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!140431 (not res!849255)) b!1278136))

(assert (= (and b!1278136 c!123972) b!1278134))

(assert (= (and b!1278136 (not c!123972)) b!1278135))

(assert (= (and b!1278134 res!849254) b!1278133))

(assert (= (or b!1278133 b!1278135) bm!62700))

(declare-fun m!1173567 () Bool)

(assert (=> bm!62700 m!1173567))

(declare-fun m!1173569 () Bool)

(assert (=> b!1278134 m!1173569))

(declare-fun m!1173571 () Bool)

(assert (=> b!1278134 m!1173571))

(declare-fun m!1173573 () Bool)

(assert (=> b!1278134 m!1173573))

(assert (=> b!1278134 m!1173569))

(declare-fun m!1173575 () Bool)

(assert (=> b!1278134 m!1173575))

(assert (=> b!1278136 m!1173569))

(assert (=> b!1278136 m!1173569))

(declare-fun m!1173577 () Bool)

(assert (=> b!1278136 m!1173577))

(assert (=> b!1278105 d!140431))

(declare-fun d!140433 () Bool)

(assert (=> d!140433 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108294 d!140433))

(declare-fun d!140435 () Bool)

(assert (=> d!140435 (= (array_inv!30743 _values!1445) (bvsge (size!41055 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108294 d!140435))

(declare-fun d!140437 () Bool)

(assert (=> d!140437 (= (array_inv!30744 _keys!1741) (bvsge (size!41054 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108294 d!140437))

(declare-fun b!1278144 () Bool)

(declare-fun e!730106 () Bool)

(assert (=> b!1278144 (= e!730106 tp_is_empty!33483)))

(declare-fun mapNonEmpty!51770 () Bool)

(declare-fun mapRes!51770 () Bool)

(declare-fun tp!98745 () Bool)

(declare-fun e!730105 () Bool)

(assert (=> mapNonEmpty!51770 (= mapRes!51770 (and tp!98745 e!730105))))

(declare-fun mapKey!51770 () (_ BitVec 32))

(declare-fun mapValue!51770 () ValueCell!15843)

(declare-fun mapRest!51770 () (Array (_ BitVec 32) ValueCell!15843))

(assert (=> mapNonEmpty!51770 (= mapRest!51764 (store mapRest!51770 mapKey!51770 mapValue!51770))))

(declare-fun mapIsEmpty!51770 () Bool)

(assert (=> mapIsEmpty!51770 mapRes!51770))

(declare-fun b!1278143 () Bool)

(assert (=> b!1278143 (= e!730105 tp_is_empty!33483)))

(declare-fun condMapEmpty!51770 () Bool)

(declare-fun mapDefault!51770 () ValueCell!15843)

(assert (=> mapNonEmpty!51764 (= condMapEmpty!51770 (= mapRest!51764 ((as const (Array (_ BitVec 32) ValueCell!15843)) mapDefault!51770)))))

(assert (=> mapNonEmpty!51764 (= tp!98739 (and e!730106 mapRes!51770))))

(assert (= (and mapNonEmpty!51764 condMapEmpty!51770) mapIsEmpty!51770))

(assert (= (and mapNonEmpty!51764 (not condMapEmpty!51770)) mapNonEmpty!51770))

(assert (= (and mapNonEmpty!51770 ((_ is ValueCellFull!15843) mapValue!51770)) b!1278143))

(assert (= (and mapNonEmpty!51764 ((_ is ValueCellFull!15843) mapDefault!51770)) b!1278144))

(declare-fun m!1173579 () Bool)

(assert (=> mapNonEmpty!51770 m!1173579))

(check-sat (not b!1278136) (not bm!62700) (not mapNonEmpty!51770) tp_is_empty!33483 (not b!1278134))
(check-sat)
