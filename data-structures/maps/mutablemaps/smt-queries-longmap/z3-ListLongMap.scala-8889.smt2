; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107974 () Bool)

(assert start!107974)

(declare-fun b!1275244 () Bool)

(declare-fun e!728008 () Bool)

(declare-fun e!728006 () Bool)

(declare-fun mapRes!51389 () Bool)

(assert (=> b!1275244 (= e!728008 (and e!728006 mapRes!51389))))

(declare-fun condMapEmpty!51389 () Bool)

(declare-datatypes ((V!49435 0))(
  ( (V!49436 (val!16699 Int)) )
))
(declare-datatypes ((ValueCell!15726 0))(
  ( (ValueCellFull!15726 (v!19293 V!49435)) (EmptyCell!15726) )
))
(declare-datatypes ((array!83547 0))(
  ( (array!83548 (arr!40285 (Array (_ BitVec 32) ValueCell!15726)) (size!40836 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83547)

(declare-fun mapDefault!51389 () ValueCell!15726)

(assert (=> b!1275244 (= condMapEmpty!51389 (= (arr!40285 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15726)) mapDefault!51389)))))

(declare-fun res!847725 () Bool)

(declare-fun e!728010 () Bool)

(assert (=> start!107974 (=> (not res!847725) (not e!728010))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107974 (= res!847725 (validMask!0 mask!1805))))

(assert (=> start!107974 e!728010))

(assert (=> start!107974 true))

(declare-fun array_inv!30571 (array!83547) Bool)

(assert (=> start!107974 (and (array_inv!30571 _values!1187) e!728008)))

(declare-datatypes ((array!83549 0))(
  ( (array!83550 (arr!40286 (Array (_ BitVec 32) (_ BitVec 64))) (size!40837 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83549)

(declare-fun array_inv!30572 (array!83549) Bool)

(assert (=> start!107974 (array_inv!30572 _keys!1427)))

(declare-fun b!1275245 () Bool)

(declare-fun tp_is_empty!33249 () Bool)

(assert (=> b!1275245 (= e!728006 tp_is_empty!33249)))

(declare-fun b!1275246 () Bool)

(assert (=> b!1275246 (= e!728010 (bvsgt #b00000000000000000000000000000000 (size!40837 _keys!1427)))))

(declare-fun mapIsEmpty!51389 () Bool)

(assert (=> mapIsEmpty!51389 mapRes!51389))

(declare-fun b!1275247 () Bool)

(declare-fun e!728007 () Bool)

(assert (=> b!1275247 (= e!728007 tp_is_empty!33249)))

(declare-fun b!1275248 () Bool)

(declare-fun res!847726 () Bool)

(assert (=> b!1275248 (=> (not res!847726) (not e!728010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83549 (_ BitVec 32)) Bool)

(assert (=> b!1275248 (= res!847726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275249 () Bool)

(declare-fun res!847724 () Bool)

(assert (=> b!1275249 (=> (not res!847724) (not e!728010))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275249 (= res!847724 (and (= (size!40836 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40837 _keys!1427) (size!40836 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51389 () Bool)

(declare-fun tp!98148 () Bool)

(assert (=> mapNonEmpty!51389 (= mapRes!51389 (and tp!98148 e!728007))))

(declare-fun mapRest!51389 () (Array (_ BitVec 32) ValueCell!15726))

(declare-fun mapKey!51389 () (_ BitVec 32))

(declare-fun mapValue!51389 () ValueCell!15726)

(assert (=> mapNonEmpty!51389 (= (arr!40285 _values!1187) (store mapRest!51389 mapKey!51389 mapValue!51389))))

(assert (= (and start!107974 res!847725) b!1275249))

(assert (= (and b!1275249 res!847724) b!1275248))

(assert (= (and b!1275248 res!847726) b!1275246))

(assert (= (and b!1275244 condMapEmpty!51389) mapIsEmpty!51389))

(assert (= (and b!1275244 (not condMapEmpty!51389)) mapNonEmpty!51389))

(get-info :version)

(assert (= (and mapNonEmpty!51389 ((_ is ValueCellFull!15726) mapValue!51389)) b!1275247))

(assert (= (and b!1275244 ((_ is ValueCellFull!15726) mapDefault!51389)) b!1275245))

(assert (= start!107974 b!1275244))

(declare-fun m!1171573 () Bool)

(assert (=> start!107974 m!1171573))

(declare-fun m!1171575 () Bool)

(assert (=> start!107974 m!1171575))

(declare-fun m!1171577 () Bool)

(assert (=> start!107974 m!1171577))

(declare-fun m!1171579 () Bool)

(assert (=> b!1275248 m!1171579))

(declare-fun m!1171581 () Bool)

(assert (=> mapNonEmpty!51389 m!1171581))

(check-sat (not start!107974) (not b!1275248) (not mapNonEmpty!51389) tp_is_empty!33249)
(check-sat)
(get-model)

(declare-fun d!140265 () Bool)

(assert (=> d!140265 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!107974 d!140265))

(declare-fun d!140267 () Bool)

(assert (=> d!140267 (= (array_inv!30571 _values!1187) (bvsge (size!40836 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!107974 d!140267))

(declare-fun d!140269 () Bool)

(assert (=> d!140269 (= (array_inv!30572 _keys!1427) (bvsge (size!40837 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!107974 d!140269))

(declare-fun b!1275276 () Bool)

(declare-fun e!728032 () Bool)

(declare-fun call!62631 () Bool)

(assert (=> b!1275276 (= e!728032 call!62631)))

(declare-fun b!1275277 () Bool)

(declare-fun e!728034 () Bool)

(assert (=> b!1275277 (= e!728034 e!728032)))

(declare-fun lt!575274 () (_ BitVec 64))

(assert (=> b!1275277 (= lt!575274 (select (arr!40286 _keys!1427) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42295 0))(
  ( (Unit!42296) )
))
(declare-fun lt!575276 () Unit!42295)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83549 (_ BitVec 64) (_ BitVec 32)) Unit!42295)

(assert (=> b!1275277 (= lt!575276 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575274 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1275277 (arrayContainsKey!0 _keys!1427 lt!575274 #b00000000000000000000000000000000)))

(declare-fun lt!575275 () Unit!42295)

(assert (=> b!1275277 (= lt!575275 lt!575276)))

(declare-fun res!847740 () Bool)

(declare-datatypes ((SeekEntryResult!9998 0))(
  ( (MissingZero!9998 (index!42362 (_ BitVec 32))) (Found!9998 (index!42363 (_ BitVec 32))) (Intermediate!9998 (undefined!10810 Bool) (index!42364 (_ BitVec 32)) (x!112938 (_ BitVec 32))) (Undefined!9998) (MissingVacant!9998 (index!42365 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83549 (_ BitVec 32)) SeekEntryResult!9998)

(assert (=> b!1275277 (= res!847740 (= (seekEntryOrOpen!0 (select (arr!40286 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!9998 #b00000000000000000000000000000000)))))

(assert (=> b!1275277 (=> (not res!847740) (not e!728032))))

(declare-fun bm!62628 () Bool)

(assert (=> bm!62628 (= call!62631 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun d!140271 () Bool)

(declare-fun res!847741 () Bool)

(declare-fun e!728033 () Bool)

(assert (=> d!140271 (=> res!847741 e!728033)))

(assert (=> d!140271 (= res!847741 (bvsge #b00000000000000000000000000000000 (size!40837 _keys!1427)))))

(assert (=> d!140271 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!728033)))

(declare-fun b!1275278 () Bool)

(assert (=> b!1275278 (= e!728034 call!62631)))

(declare-fun b!1275279 () Bool)

(assert (=> b!1275279 (= e!728033 e!728034)))

(declare-fun c!123861 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1275279 (= c!123861 (validKeyInArray!0 (select (arr!40286 _keys!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!140271 (not res!847741)) b!1275279))

(assert (= (and b!1275279 c!123861) b!1275277))

(assert (= (and b!1275279 (not c!123861)) b!1275278))

(assert (= (and b!1275277 res!847740) b!1275276))

(assert (= (or b!1275276 b!1275278) bm!62628))

(declare-fun m!1171593 () Bool)

(assert (=> b!1275277 m!1171593))

(declare-fun m!1171595 () Bool)

(assert (=> b!1275277 m!1171595))

(declare-fun m!1171597 () Bool)

(assert (=> b!1275277 m!1171597))

(assert (=> b!1275277 m!1171593))

(declare-fun m!1171599 () Bool)

(assert (=> b!1275277 m!1171599))

(declare-fun m!1171601 () Bool)

(assert (=> bm!62628 m!1171601))

(assert (=> b!1275279 m!1171593))

(assert (=> b!1275279 m!1171593))

(declare-fun m!1171603 () Bool)

(assert (=> b!1275279 m!1171603))

(assert (=> b!1275248 d!140271))

(declare-fun mapIsEmpty!51395 () Bool)

(declare-fun mapRes!51395 () Bool)

(assert (=> mapIsEmpty!51395 mapRes!51395))

(declare-fun b!1275287 () Bool)

(declare-fun e!728040 () Bool)

(assert (=> b!1275287 (= e!728040 tp_is_empty!33249)))

(declare-fun b!1275286 () Bool)

(declare-fun e!728039 () Bool)

(assert (=> b!1275286 (= e!728039 tp_is_empty!33249)))

(declare-fun mapNonEmpty!51395 () Bool)

(declare-fun tp!98154 () Bool)

(assert (=> mapNonEmpty!51395 (= mapRes!51395 (and tp!98154 e!728039))))

(declare-fun mapValue!51395 () ValueCell!15726)

(declare-fun mapRest!51395 () (Array (_ BitVec 32) ValueCell!15726))

(declare-fun mapKey!51395 () (_ BitVec 32))

(assert (=> mapNonEmpty!51395 (= mapRest!51389 (store mapRest!51395 mapKey!51395 mapValue!51395))))

(declare-fun condMapEmpty!51395 () Bool)

(declare-fun mapDefault!51395 () ValueCell!15726)

(assert (=> mapNonEmpty!51389 (= condMapEmpty!51395 (= mapRest!51389 ((as const (Array (_ BitVec 32) ValueCell!15726)) mapDefault!51395)))))

(assert (=> mapNonEmpty!51389 (= tp!98148 (and e!728040 mapRes!51395))))

(assert (= (and mapNonEmpty!51389 condMapEmpty!51395) mapIsEmpty!51395))

(assert (= (and mapNonEmpty!51389 (not condMapEmpty!51395)) mapNonEmpty!51395))

(assert (= (and mapNonEmpty!51395 ((_ is ValueCellFull!15726) mapValue!51395)) b!1275286))

(assert (= (and mapNonEmpty!51389 ((_ is ValueCellFull!15726) mapDefault!51395)) b!1275287))

(declare-fun m!1171605 () Bool)

(assert (=> mapNonEmpty!51395 m!1171605))

(check-sat (not b!1275277) (not b!1275279) (not mapNonEmpty!51395) tp_is_empty!33249 (not bm!62628))
(check-sat)
