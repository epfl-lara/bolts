; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108308 () Bool)

(assert start!108308)

(declare-fun b!1278175 () Bool)

(declare-fun e!730134 () Bool)

(declare-fun tp_is_empty!33489 () Bool)

(assert (=> b!1278175 (= e!730134 tp_is_empty!33489)))

(declare-fun mapIsEmpty!51776 () Bool)

(declare-fun mapRes!51776 () Bool)

(assert (=> mapIsEmpty!51776 mapRes!51776))

(declare-fun b!1278176 () Bool)

(declare-fun res!849271 () Bool)

(declare-fun e!730135 () Bool)

(assert (=> b!1278176 (=> (not res!849271) (not e!730135))))

(declare-datatypes ((array!84013 0))(
  ( (array!84014 (arr!40509 (Array (_ BitVec 32) (_ BitVec 64))) (size!41060 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84013)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84013 (_ BitVec 32)) Bool)

(assert (=> b!1278176 (= res!849271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!849272 () Bool)

(assert (=> start!108308 (=> (not res!849272) (not e!730135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108308 (= res!849272 (validMask!0 mask!2175))))

(assert (=> start!108308 e!730135))

(assert (=> start!108308 true))

(declare-datatypes ((V!49755 0))(
  ( (V!49756 (val!16819 Int)) )
))
(declare-datatypes ((ValueCell!15846 0))(
  ( (ValueCellFull!15846 (v!19416 V!49755)) (EmptyCell!15846) )
))
(declare-datatypes ((array!84015 0))(
  ( (array!84016 (arr!40510 (Array (_ BitVec 32) ValueCell!15846)) (size!41061 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84015)

(declare-fun e!730133 () Bool)

(declare-fun array_inv!30747 (array!84015) Bool)

(assert (=> start!108308 (and (array_inv!30747 _values!1445) e!730133)))

(declare-fun array_inv!30748 (array!84013) Bool)

(assert (=> start!108308 (array_inv!30748 _keys!1741)))

(declare-fun b!1278177 () Bool)

(assert (=> b!1278177 (= e!730133 (and e!730134 mapRes!51776))))

(declare-fun condMapEmpty!51776 () Bool)

(declare-fun mapDefault!51776 () ValueCell!15846)

(assert (=> b!1278177 (= condMapEmpty!51776 (= (arr!40510 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15846)) mapDefault!51776)))))

(declare-fun b!1278178 () Bool)

(declare-fun res!849273 () Bool)

(assert (=> b!1278178 (=> (not res!849273) (not e!730135))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278178 (= res!849273 (and (= (size!41061 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41060 _keys!1741) (size!41061 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278179 () Bool)

(assert (=> b!1278179 (= e!730135 (and (bvsle #b00000000000000000000000000000000 (size!41060 _keys!1741)) (bvsge (size!41060 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278180 () Bool)

(declare-fun e!730132 () Bool)

(assert (=> b!1278180 (= e!730132 tp_is_empty!33489)))

(declare-fun mapNonEmpty!51776 () Bool)

(declare-fun tp!98751 () Bool)

(assert (=> mapNonEmpty!51776 (= mapRes!51776 (and tp!98751 e!730132))))

(declare-fun mapRest!51776 () (Array (_ BitVec 32) ValueCell!15846))

(declare-fun mapValue!51776 () ValueCell!15846)

(declare-fun mapKey!51776 () (_ BitVec 32))

(assert (=> mapNonEmpty!51776 (= (arr!40510 _values!1445) (store mapRest!51776 mapKey!51776 mapValue!51776))))

(assert (= (and start!108308 res!849272) b!1278178))

(assert (= (and b!1278178 res!849273) b!1278176))

(assert (= (and b!1278176 res!849271) b!1278179))

(assert (= (and b!1278177 condMapEmpty!51776) mapIsEmpty!51776))

(assert (= (and b!1278177 (not condMapEmpty!51776)) mapNonEmpty!51776))

(get-info :version)

(assert (= (and mapNonEmpty!51776 ((_ is ValueCellFull!15846) mapValue!51776)) b!1278180))

(assert (= (and b!1278177 ((_ is ValueCellFull!15846) mapDefault!51776)) b!1278175))

(assert (= start!108308 b!1278177))

(declare-fun m!1173591 () Bool)

(assert (=> b!1278176 m!1173591))

(declare-fun m!1173593 () Bool)

(assert (=> start!108308 m!1173593))

(declare-fun m!1173595 () Bool)

(assert (=> start!108308 m!1173595))

(declare-fun m!1173597 () Bool)

(assert (=> start!108308 m!1173597))

(declare-fun m!1173599 () Bool)

(assert (=> mapNonEmpty!51776 m!1173599))

(check-sat (not b!1278176) (not start!108308) (not mapNonEmpty!51776) tp_is_empty!33489)
(check-sat)
(get-model)

(declare-fun b!1278207 () Bool)

(declare-fun e!730160 () Bool)

(declare-fun e!730159 () Bool)

(assert (=> b!1278207 (= e!730160 e!730159)))

(declare-fun c!123975 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1278207 (= c!123975 (validKeyInArray!0 (select (arr!40509 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1278208 () Bool)

(declare-fun e!730158 () Bool)

(declare-fun call!62706 () Bool)

(assert (=> b!1278208 (= e!730158 call!62706)))

(declare-fun d!140441 () Bool)

(declare-fun res!849287 () Bool)

(assert (=> d!140441 (=> res!849287 e!730160)))

(assert (=> d!140441 (= res!849287 (bvsge #b00000000000000000000000000000000 (size!41060 _keys!1741)))))

(assert (=> d!140441 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!730160)))

(declare-fun bm!62703 () Bool)

(assert (=> bm!62703 (= call!62706 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1278209 () Bool)

(assert (=> b!1278209 (= e!730159 e!730158)))

(declare-fun lt!575797 () (_ BitVec 64))

(assert (=> b!1278209 (= lt!575797 (select (arr!40509 _keys!1741) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42331 0))(
  ( (Unit!42332) )
))
(declare-fun lt!575798 () Unit!42331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!84013 (_ BitVec 64) (_ BitVec 32)) Unit!42331)

(assert (=> b!1278209 (= lt!575798 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!575797 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!84013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1278209 (arrayContainsKey!0 _keys!1741 lt!575797 #b00000000000000000000000000000000)))

(declare-fun lt!575799 () Unit!42331)

(assert (=> b!1278209 (= lt!575799 lt!575798)))

(declare-fun res!849288 () Bool)

(declare-datatypes ((SeekEntryResult!10006 0))(
  ( (MissingZero!10006 (index!42394 (_ BitVec 32))) (Found!10006 (index!42395 (_ BitVec 32))) (Intermediate!10006 (undefined!10818 Bool) (index!42396 (_ BitVec 32)) (x!113300 (_ BitVec 32))) (Undefined!10006) (MissingVacant!10006 (index!42397 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!84013 (_ BitVec 32)) SeekEntryResult!10006)

(assert (=> b!1278209 (= res!849288 (= (seekEntryOrOpen!0 (select (arr!40509 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10006 #b00000000000000000000000000000000)))))

(assert (=> b!1278209 (=> (not res!849288) (not e!730158))))

(declare-fun b!1278210 () Bool)

(assert (=> b!1278210 (= e!730159 call!62706)))

(assert (= (and d!140441 (not res!849287)) b!1278207))

(assert (= (and b!1278207 c!123975) b!1278209))

(assert (= (and b!1278207 (not c!123975)) b!1278210))

(assert (= (and b!1278209 res!849288) b!1278208))

(assert (= (or b!1278208 b!1278210) bm!62703))

(declare-fun m!1173611 () Bool)

(assert (=> b!1278207 m!1173611))

(assert (=> b!1278207 m!1173611))

(declare-fun m!1173613 () Bool)

(assert (=> b!1278207 m!1173613))

(declare-fun m!1173615 () Bool)

(assert (=> bm!62703 m!1173615))

(assert (=> b!1278209 m!1173611))

(declare-fun m!1173617 () Bool)

(assert (=> b!1278209 m!1173617))

(declare-fun m!1173619 () Bool)

(assert (=> b!1278209 m!1173619))

(assert (=> b!1278209 m!1173611))

(declare-fun m!1173621 () Bool)

(assert (=> b!1278209 m!1173621))

(assert (=> b!1278176 d!140441))

(declare-fun d!140443 () Bool)

(assert (=> d!140443 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108308 d!140443))

(declare-fun d!140445 () Bool)

(assert (=> d!140445 (= (array_inv!30747 _values!1445) (bvsge (size!41061 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108308 d!140445))

(declare-fun d!140447 () Bool)

(assert (=> d!140447 (= (array_inv!30748 _keys!1741) (bvsge (size!41060 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108308 d!140447))

(declare-fun mapIsEmpty!51782 () Bool)

(declare-fun mapRes!51782 () Bool)

(assert (=> mapIsEmpty!51782 mapRes!51782))

(declare-fun b!1278217 () Bool)

(declare-fun e!730166 () Bool)

(assert (=> b!1278217 (= e!730166 tp_is_empty!33489)))

(declare-fun condMapEmpty!51782 () Bool)

(declare-fun mapDefault!51782 () ValueCell!15846)

(assert (=> mapNonEmpty!51776 (= condMapEmpty!51782 (= mapRest!51776 ((as const (Array (_ BitVec 32) ValueCell!15846)) mapDefault!51782)))))

(declare-fun e!730165 () Bool)

(assert (=> mapNonEmpty!51776 (= tp!98751 (and e!730165 mapRes!51782))))

(declare-fun mapNonEmpty!51782 () Bool)

(declare-fun tp!98757 () Bool)

(assert (=> mapNonEmpty!51782 (= mapRes!51782 (and tp!98757 e!730166))))

(declare-fun mapRest!51782 () (Array (_ BitVec 32) ValueCell!15846))

(declare-fun mapValue!51782 () ValueCell!15846)

(declare-fun mapKey!51782 () (_ BitVec 32))

(assert (=> mapNonEmpty!51782 (= mapRest!51776 (store mapRest!51782 mapKey!51782 mapValue!51782))))

(declare-fun b!1278218 () Bool)

(assert (=> b!1278218 (= e!730165 tp_is_empty!33489)))

(assert (= (and mapNonEmpty!51776 condMapEmpty!51782) mapIsEmpty!51782))

(assert (= (and mapNonEmpty!51776 (not condMapEmpty!51782)) mapNonEmpty!51782))

(assert (= (and mapNonEmpty!51782 ((_ is ValueCellFull!15846) mapValue!51782)) b!1278217))

(assert (= (and mapNonEmpty!51776 ((_ is ValueCellFull!15846) mapDefault!51782)) b!1278218))

(declare-fun m!1173623 () Bool)

(assert (=> mapNonEmpty!51782 m!1173623))

(check-sat (not b!1278207) tp_is_empty!33489 (not bm!62703) (not mapNonEmpty!51782) (not b!1278209))
(check-sat)
