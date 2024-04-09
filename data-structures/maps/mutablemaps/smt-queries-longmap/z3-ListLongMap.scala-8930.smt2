; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108322 () Bool)

(assert start!108322)

(declare-fun b!1278254 () Bool)

(declare-fun e!730193 () Bool)

(declare-fun tp_is_empty!33495 () Bool)

(assert (=> b!1278254 (= e!730193 tp_is_empty!33495)))

(declare-fun b!1278255 () Bool)

(declare-fun e!730195 () Bool)

(declare-fun e!730194 () Bool)

(declare-fun mapRes!51788 () Bool)

(assert (=> b!1278255 (= e!730195 (and e!730194 mapRes!51788))))

(declare-fun condMapEmpty!51788 () Bool)

(declare-datatypes ((V!49763 0))(
  ( (V!49764 (val!16822 Int)) )
))
(declare-datatypes ((ValueCell!15849 0))(
  ( (ValueCellFull!15849 (v!19419 V!49763)) (EmptyCell!15849) )
))
(declare-datatypes ((array!84027 0))(
  ( (array!84028 (arr!40515 (Array (_ BitVec 32) ValueCell!15849)) (size!41066 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84027)

(declare-fun mapDefault!51788 () ValueCell!15849)

(assert (=> b!1278255 (= condMapEmpty!51788 (= (arr!40515 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15849)) mapDefault!51788)))))

(declare-fun b!1278256 () Bool)

(declare-fun res!849311 () Bool)

(declare-fun e!730192 () Bool)

(assert (=> b!1278256 (=> (not res!849311) (not e!730192))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84029 0))(
  ( (array!84030 (arr!40516 (Array (_ BitVec 32) (_ BitVec 64))) (size!41067 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84029)

(assert (=> b!1278256 (= res!849311 (and (= (size!41066 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41067 _keys!1741) (size!41066 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849310 () Bool)

(assert (=> start!108322 (=> (not res!849310) (not e!730192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108322 (= res!849310 (validMask!0 mask!2175))))

(assert (=> start!108322 e!730192))

(assert (=> start!108322 true))

(declare-fun array_inv!30753 (array!84027) Bool)

(assert (=> start!108322 (and (array_inv!30753 _values!1445) e!730195)))

(declare-fun array_inv!30754 (array!84029) Bool)

(assert (=> start!108322 (array_inv!30754 _keys!1741)))

(declare-fun b!1278257 () Bool)

(assert (=> b!1278257 (= e!730194 tp_is_empty!33495)))

(declare-fun mapIsEmpty!51788 () Bool)

(assert (=> mapIsEmpty!51788 mapRes!51788))

(declare-fun mapNonEmpty!51788 () Bool)

(declare-fun tp!98763 () Bool)

(assert (=> mapNonEmpty!51788 (= mapRes!51788 (and tp!98763 e!730193))))

(declare-fun mapRest!51788 () (Array (_ BitVec 32) ValueCell!15849))

(declare-fun mapKey!51788 () (_ BitVec 32))

(declare-fun mapValue!51788 () ValueCell!15849)

(assert (=> mapNonEmpty!51788 (= (arr!40515 _values!1445) (store mapRest!51788 mapKey!51788 mapValue!51788))))

(declare-fun b!1278258 () Bool)

(declare-datatypes ((List!28900 0))(
  ( (Nil!28897) (Cons!28896 (h!30105 (_ BitVec 64)) (t!42447 List!28900)) )
))
(declare-fun noDuplicate!2085 (List!28900) Bool)

(assert (=> b!1278258 (= e!730192 (not (noDuplicate!2085 Nil!28897)))))

(declare-fun b!1278259 () Bool)

(declare-fun res!849312 () Bool)

(assert (=> b!1278259 (=> (not res!849312) (not e!730192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84029 (_ BitVec 32)) Bool)

(assert (=> b!1278259 (= res!849312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278260 () Bool)

(declare-fun res!849309 () Bool)

(assert (=> b!1278260 (=> (not res!849309) (not e!730192))))

(assert (=> b!1278260 (= res!849309 (and (bvsle #b00000000000000000000000000000000 (size!41067 _keys!1741)) (bvslt (size!41067 _keys!1741) #b01111111111111111111111111111111)))))

(assert (= (and start!108322 res!849310) b!1278256))

(assert (= (and b!1278256 res!849311) b!1278259))

(assert (= (and b!1278259 res!849312) b!1278260))

(assert (= (and b!1278260 res!849309) b!1278258))

(assert (= (and b!1278255 condMapEmpty!51788) mapIsEmpty!51788))

(assert (= (and b!1278255 (not condMapEmpty!51788)) mapNonEmpty!51788))

(get-info :version)

(assert (= (and mapNonEmpty!51788 ((_ is ValueCellFull!15849) mapValue!51788)) b!1278254))

(assert (= (and b!1278255 ((_ is ValueCellFull!15849) mapDefault!51788)) b!1278257))

(assert (= start!108322 b!1278255))

(declare-fun m!1173637 () Bool)

(assert (=> start!108322 m!1173637))

(declare-fun m!1173639 () Bool)

(assert (=> start!108322 m!1173639))

(declare-fun m!1173641 () Bool)

(assert (=> start!108322 m!1173641))

(declare-fun m!1173643 () Bool)

(assert (=> mapNonEmpty!51788 m!1173643))

(declare-fun m!1173645 () Bool)

(assert (=> b!1278258 m!1173645))

(declare-fun m!1173647 () Bool)

(assert (=> b!1278259 m!1173647))

(check-sat (not b!1278259) (not start!108322) (not b!1278258) tp_is_empty!33495 (not mapNonEmpty!51788))
(check-sat)
(get-model)

(declare-fun b!1278290 () Bool)

(declare-fun e!730218 () Bool)

(declare-fun e!730219 () Bool)

(assert (=> b!1278290 (= e!730218 e!730219)))

(declare-fun c!123978 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1278290 (= c!123978 (validKeyInArray!0 (select (arr!40516 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!62706 () Bool)

(declare-fun call!62709 () Bool)

(assert (=> bm!62706 (= call!62709 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1278291 () Bool)

(declare-fun e!730220 () Bool)

(assert (=> b!1278291 (= e!730220 call!62709)))

(declare-fun d!140451 () Bool)

(declare-fun res!849330 () Bool)

(assert (=> d!140451 (=> res!849330 e!730218)))

(assert (=> d!140451 (= res!849330 (bvsge #b00000000000000000000000000000000 (size!41067 _keys!1741)))))

(assert (=> d!140451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!730218)))

(declare-fun b!1278292 () Bool)

(assert (=> b!1278292 (= e!730219 call!62709)))

(declare-fun b!1278293 () Bool)

(assert (=> b!1278293 (= e!730219 e!730220)))

(declare-fun lt!575807 () (_ BitVec 64))

(assert (=> b!1278293 (= lt!575807 (select (arr!40516 _keys!1741) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42333 0))(
  ( (Unit!42334) )
))
(declare-fun lt!575806 () Unit!42333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!84029 (_ BitVec 64) (_ BitVec 32)) Unit!42333)

(assert (=> b!1278293 (= lt!575806 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!575807 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!84029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1278293 (arrayContainsKey!0 _keys!1741 lt!575807 #b00000000000000000000000000000000)))

(declare-fun lt!575808 () Unit!42333)

(assert (=> b!1278293 (= lt!575808 lt!575806)))

(declare-fun res!849329 () Bool)

(declare-datatypes ((SeekEntryResult!10007 0))(
  ( (MissingZero!10007 (index!42398 (_ BitVec 32))) (Found!10007 (index!42399 (_ BitVec 32))) (Intermediate!10007 (undefined!10819 Bool) (index!42400 (_ BitVec 32)) (x!113311 (_ BitVec 32))) (Undefined!10007) (MissingVacant!10007 (index!42401 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!84029 (_ BitVec 32)) SeekEntryResult!10007)

(assert (=> b!1278293 (= res!849329 (= (seekEntryOrOpen!0 (select (arr!40516 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10007 #b00000000000000000000000000000000)))))

(assert (=> b!1278293 (=> (not res!849329) (not e!730220))))

(assert (= (and d!140451 (not res!849330)) b!1278290))

(assert (= (and b!1278290 c!123978) b!1278293))

(assert (= (and b!1278290 (not c!123978)) b!1278292))

(assert (= (and b!1278293 res!849329) b!1278291))

(assert (= (or b!1278291 b!1278292) bm!62706))

(declare-fun m!1173661 () Bool)

(assert (=> b!1278290 m!1173661))

(assert (=> b!1278290 m!1173661))

(declare-fun m!1173663 () Bool)

(assert (=> b!1278290 m!1173663))

(declare-fun m!1173665 () Bool)

(assert (=> bm!62706 m!1173665))

(assert (=> b!1278293 m!1173661))

(declare-fun m!1173667 () Bool)

(assert (=> b!1278293 m!1173667))

(declare-fun m!1173669 () Bool)

(assert (=> b!1278293 m!1173669))

(assert (=> b!1278293 m!1173661))

(declare-fun m!1173671 () Bool)

(assert (=> b!1278293 m!1173671))

(assert (=> b!1278259 d!140451))

(declare-fun d!140453 () Bool)

(declare-fun res!849335 () Bool)

(declare-fun e!730225 () Bool)

(assert (=> d!140453 (=> res!849335 e!730225)))

(assert (=> d!140453 (= res!849335 ((_ is Nil!28897) Nil!28897))))

(assert (=> d!140453 (= (noDuplicate!2085 Nil!28897) e!730225)))

(declare-fun b!1278298 () Bool)

(declare-fun e!730226 () Bool)

(assert (=> b!1278298 (= e!730225 e!730226)))

(declare-fun res!849336 () Bool)

(assert (=> b!1278298 (=> (not res!849336) (not e!730226))))

(declare-fun contains!7754 (List!28900 (_ BitVec 64)) Bool)

(assert (=> b!1278298 (= res!849336 (not (contains!7754 (t!42447 Nil!28897) (h!30105 Nil!28897))))))

(declare-fun b!1278299 () Bool)

(assert (=> b!1278299 (= e!730226 (noDuplicate!2085 (t!42447 Nil!28897)))))

(assert (= (and d!140453 (not res!849335)) b!1278298))

(assert (= (and b!1278298 res!849336) b!1278299))

(declare-fun m!1173673 () Bool)

(assert (=> b!1278298 m!1173673))

(declare-fun m!1173675 () Bool)

(assert (=> b!1278299 m!1173675))

(assert (=> b!1278258 d!140453))

(declare-fun d!140455 () Bool)

(assert (=> d!140455 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108322 d!140455))

(declare-fun d!140457 () Bool)

(assert (=> d!140457 (= (array_inv!30753 _values!1445) (bvsge (size!41066 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108322 d!140457))

(declare-fun d!140459 () Bool)

(assert (=> d!140459 (= (array_inv!30754 _keys!1741) (bvsge (size!41067 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108322 d!140459))

(declare-fun b!1278307 () Bool)

(declare-fun e!730232 () Bool)

(assert (=> b!1278307 (= e!730232 tp_is_empty!33495)))

(declare-fun condMapEmpty!51794 () Bool)

(declare-fun mapDefault!51794 () ValueCell!15849)

(assert (=> mapNonEmpty!51788 (= condMapEmpty!51794 (= mapRest!51788 ((as const (Array (_ BitVec 32) ValueCell!15849)) mapDefault!51794)))))

(declare-fun mapRes!51794 () Bool)

(assert (=> mapNonEmpty!51788 (= tp!98763 (and e!730232 mapRes!51794))))

(declare-fun mapNonEmpty!51794 () Bool)

(declare-fun tp!98769 () Bool)

(declare-fun e!730231 () Bool)

(assert (=> mapNonEmpty!51794 (= mapRes!51794 (and tp!98769 e!730231))))

(declare-fun mapKey!51794 () (_ BitVec 32))

(declare-fun mapRest!51794 () (Array (_ BitVec 32) ValueCell!15849))

(declare-fun mapValue!51794 () ValueCell!15849)

(assert (=> mapNonEmpty!51794 (= mapRest!51788 (store mapRest!51794 mapKey!51794 mapValue!51794))))

(declare-fun b!1278306 () Bool)

(assert (=> b!1278306 (= e!730231 tp_is_empty!33495)))

(declare-fun mapIsEmpty!51794 () Bool)

(assert (=> mapIsEmpty!51794 mapRes!51794))

(assert (= (and mapNonEmpty!51788 condMapEmpty!51794) mapIsEmpty!51794))

(assert (= (and mapNonEmpty!51788 (not condMapEmpty!51794)) mapNonEmpty!51794))

(assert (= (and mapNonEmpty!51794 ((_ is ValueCellFull!15849) mapValue!51794)) b!1278306))

(assert (= (and mapNonEmpty!51788 ((_ is ValueCellFull!15849) mapDefault!51794)) b!1278307))

(declare-fun m!1173677 () Bool)

(assert (=> mapNonEmpty!51794 m!1173677))

(check-sat (not b!1278290) (not b!1278298) (not b!1278293) tp_is_empty!33495 (not mapNonEmpty!51794) (not b!1278299) (not bm!62706))
(check-sat)
