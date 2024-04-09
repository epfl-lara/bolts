; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108018 () Bool)

(assert start!108018)

(declare-fun b!1275496 () Bool)

(declare-fun e!728200 () Bool)

(declare-fun e!728197 () Bool)

(declare-fun mapRes!51425 () Bool)

(assert (=> b!1275496 (= e!728200 (and e!728197 mapRes!51425))))

(declare-fun condMapEmpty!51425 () Bool)

(declare-datatypes ((V!49459 0))(
  ( (V!49460 (val!16708 Int)) )
))
(declare-datatypes ((ValueCell!15735 0))(
  ( (ValueCellFull!15735 (v!19302 V!49459)) (EmptyCell!15735) )
))
(declare-datatypes ((array!83587 0))(
  ( (array!83588 (arr!40302 (Array (_ BitVec 32) ValueCell!15735)) (size!40853 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83587)

(declare-fun mapDefault!51425 () ValueCell!15735)

(assert (=> b!1275496 (= condMapEmpty!51425 (= (arr!40302 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15735)) mapDefault!51425)))))

(declare-fun b!1275497 () Bool)

(declare-fun res!847856 () Bool)

(declare-fun e!728198 () Bool)

(assert (=> b!1275497 (=> (not res!847856) (not e!728198))))

(declare-datatypes ((List!28780 0))(
  ( (Nil!28777) (Cons!28776 (h!29985 (_ BitVec 64)) (t!42323 List!28780)) )
))
(declare-fun noDuplicate!2082 (List!28780) Bool)

(assert (=> b!1275497 (= res!847856 (noDuplicate!2082 Nil!28777))))

(declare-fun b!1275498 () Bool)

(declare-fun tp_is_empty!33267 () Bool)

(assert (=> b!1275498 (= e!728197 tp_is_empty!33267)))

(declare-fun b!1275499 () Bool)

(declare-fun e!728199 () Bool)

(assert (=> b!1275499 (= e!728198 e!728199)))

(declare-fun res!847853 () Bool)

(assert (=> b!1275499 (=> res!847853 e!728199)))

(declare-fun contains!7701 (List!28780 (_ BitVec 64)) Bool)

(assert (=> b!1275499 (= res!847853 (contains!7701 Nil!28777 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275500 () Bool)

(declare-fun res!847855 () Bool)

(assert (=> b!1275500 (=> (not res!847855) (not e!728198))))

(declare-datatypes ((array!83589 0))(
  ( (array!83590 (arr!40303 (Array (_ BitVec 32) (_ BitVec 64))) (size!40854 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83589)

(assert (=> b!1275500 (= res!847855 (and (bvsle #b00000000000000000000000000000000 (size!40854 _keys!1427)) (bvslt (size!40854 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51425 () Bool)

(declare-fun tp!98184 () Bool)

(declare-fun e!728202 () Bool)

(assert (=> mapNonEmpty!51425 (= mapRes!51425 (and tp!98184 e!728202))))

(declare-fun mapRest!51425 () (Array (_ BitVec 32) ValueCell!15735))

(declare-fun mapKey!51425 () (_ BitVec 32))

(declare-fun mapValue!51425 () ValueCell!15735)

(assert (=> mapNonEmpty!51425 (= (arr!40302 _values!1187) (store mapRest!51425 mapKey!51425 mapValue!51425))))

(declare-fun b!1275501 () Bool)

(assert (=> b!1275501 (= e!728202 tp_is_empty!33267)))

(declare-fun b!1275502 () Bool)

(assert (=> b!1275502 (= e!728199 (contains!7701 Nil!28777 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275503 () Bool)

(declare-fun res!847854 () Bool)

(assert (=> b!1275503 (=> (not res!847854) (not e!728198))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83589 (_ BitVec 32)) Bool)

(assert (=> b!1275503 (= res!847854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275504 () Bool)

(declare-fun res!847858 () Bool)

(assert (=> b!1275504 (=> (not res!847858) (not e!728198))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275504 (= res!847858 (and (= (size!40853 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40854 _keys!1427) (size!40853 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51425 () Bool)

(assert (=> mapIsEmpty!51425 mapRes!51425))

(declare-fun res!847857 () Bool)

(assert (=> start!108018 (=> (not res!847857) (not e!728198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108018 (= res!847857 (validMask!0 mask!1805))))

(assert (=> start!108018 e!728198))

(assert (=> start!108018 true))

(declare-fun array_inv!30585 (array!83587) Bool)

(assert (=> start!108018 (and (array_inv!30585 _values!1187) e!728200)))

(declare-fun array_inv!30586 (array!83589) Bool)

(assert (=> start!108018 (array_inv!30586 _keys!1427)))

(assert (= (and start!108018 res!847857) b!1275504))

(assert (= (and b!1275504 res!847858) b!1275503))

(assert (= (and b!1275503 res!847854) b!1275500))

(assert (= (and b!1275500 res!847855) b!1275497))

(assert (= (and b!1275497 res!847856) b!1275499))

(assert (= (and b!1275499 (not res!847853)) b!1275502))

(assert (= (and b!1275496 condMapEmpty!51425) mapIsEmpty!51425))

(assert (= (and b!1275496 (not condMapEmpty!51425)) mapNonEmpty!51425))

(get-info :version)

(assert (= (and mapNonEmpty!51425 ((_ is ValueCellFull!15735) mapValue!51425)) b!1275501))

(assert (= (and b!1275496 ((_ is ValueCellFull!15735) mapDefault!51425)) b!1275498))

(assert (= start!108018 b!1275496))

(declare-fun m!1171721 () Bool)

(assert (=> mapNonEmpty!51425 m!1171721))

(declare-fun m!1171723 () Bool)

(assert (=> b!1275497 m!1171723))

(declare-fun m!1171725 () Bool)

(assert (=> start!108018 m!1171725))

(declare-fun m!1171727 () Bool)

(assert (=> start!108018 m!1171727))

(declare-fun m!1171729 () Bool)

(assert (=> start!108018 m!1171729))

(declare-fun m!1171731 () Bool)

(assert (=> b!1275503 m!1171731))

(declare-fun m!1171733 () Bool)

(assert (=> b!1275499 m!1171733))

(declare-fun m!1171735 () Bool)

(assert (=> b!1275502 m!1171735))

(check-sat (not b!1275503) tp_is_empty!33267 (not start!108018) (not b!1275499) (not b!1275497) (not mapNonEmpty!51425) (not b!1275502))
(check-sat)
(get-model)

(declare-fun d!140297 () Bool)

(declare-fun res!847882 () Bool)

(declare-fun e!728228 () Bool)

(assert (=> d!140297 (=> res!847882 e!728228)))

(assert (=> d!140297 (= res!847882 (bvsge #b00000000000000000000000000000000 (size!40854 _keys!1427)))))

(assert (=> d!140297 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!728228)))

(declare-fun b!1275540 () Bool)

(declare-fun e!728229 () Bool)

(assert (=> b!1275540 (= e!728228 e!728229)))

(declare-fun c!123870 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1275540 (= c!123870 (validKeyInArray!0 (select (arr!40303 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun bm!62637 () Bool)

(declare-fun call!62640 () Bool)

(assert (=> bm!62637 (= call!62640 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun b!1275541 () Bool)

(assert (=> b!1275541 (= e!728229 call!62640)))

(declare-fun b!1275542 () Bool)

(declare-fun e!728227 () Bool)

(assert (=> b!1275542 (= e!728227 call!62640)))

(declare-fun b!1275543 () Bool)

(assert (=> b!1275543 (= e!728229 e!728227)))

(declare-fun lt!575303 () (_ BitVec 64))

(assert (=> b!1275543 (= lt!575303 (select (arr!40303 _keys!1427) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42301 0))(
  ( (Unit!42302) )
))
(declare-fun lt!575302 () Unit!42301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83589 (_ BitVec 64) (_ BitVec 32)) Unit!42301)

(assert (=> b!1275543 (= lt!575302 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575303 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1275543 (arrayContainsKey!0 _keys!1427 lt!575303 #b00000000000000000000000000000000)))

(declare-fun lt!575301 () Unit!42301)

(assert (=> b!1275543 (= lt!575301 lt!575302)))

(declare-fun res!847881 () Bool)

(declare-datatypes ((SeekEntryResult!10001 0))(
  ( (MissingZero!10001 (index!42374 (_ BitVec 32))) (Found!10001 (index!42375 (_ BitVec 32))) (Intermediate!10001 (undefined!10813 Bool) (index!42376 (_ BitVec 32)) (x!112971 (_ BitVec 32))) (Undefined!10001) (MissingVacant!10001 (index!42377 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83589 (_ BitVec 32)) SeekEntryResult!10001)

(assert (=> b!1275543 (= res!847881 (= (seekEntryOrOpen!0 (select (arr!40303 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!10001 #b00000000000000000000000000000000)))))

(assert (=> b!1275543 (=> (not res!847881) (not e!728227))))

(assert (= (and d!140297 (not res!847882)) b!1275540))

(assert (= (and b!1275540 c!123870) b!1275543))

(assert (= (and b!1275540 (not c!123870)) b!1275541))

(assert (= (and b!1275543 res!847881) b!1275542))

(assert (= (or b!1275542 b!1275541) bm!62637))

(declare-fun m!1171753 () Bool)

(assert (=> b!1275540 m!1171753))

(assert (=> b!1275540 m!1171753))

(declare-fun m!1171755 () Bool)

(assert (=> b!1275540 m!1171755))

(declare-fun m!1171757 () Bool)

(assert (=> bm!62637 m!1171757))

(assert (=> b!1275543 m!1171753))

(declare-fun m!1171759 () Bool)

(assert (=> b!1275543 m!1171759))

(declare-fun m!1171761 () Bool)

(assert (=> b!1275543 m!1171761))

(assert (=> b!1275543 m!1171753))

(declare-fun m!1171763 () Bool)

(assert (=> b!1275543 m!1171763))

(assert (=> b!1275503 d!140297))

(declare-fun d!140299 () Bool)

(declare-fun lt!575306 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!648 (List!28780) (InoxSet (_ BitVec 64)))

(assert (=> d!140299 (= lt!575306 (select (content!648 Nil!28777) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!728235 () Bool)

(assert (=> d!140299 (= lt!575306 e!728235)))

(declare-fun res!847888 () Bool)

(assert (=> d!140299 (=> (not res!847888) (not e!728235))))

(assert (=> d!140299 (= res!847888 ((_ is Cons!28776) Nil!28777))))

(assert (=> d!140299 (= (contains!7701 Nil!28777 #b1000000000000000000000000000000000000000000000000000000000000000) lt!575306)))

(declare-fun b!1275548 () Bool)

(declare-fun e!728234 () Bool)

(assert (=> b!1275548 (= e!728235 e!728234)))

(declare-fun res!847887 () Bool)

(assert (=> b!1275548 (=> res!847887 e!728234)))

(assert (=> b!1275548 (= res!847887 (= (h!29985 Nil!28777) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275549 () Bool)

(assert (=> b!1275549 (= e!728234 (contains!7701 (t!42323 Nil!28777) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140299 res!847888) b!1275548))

(assert (= (and b!1275548 (not res!847887)) b!1275549))

(declare-fun m!1171765 () Bool)

(assert (=> d!140299 m!1171765))

(declare-fun m!1171767 () Bool)

(assert (=> d!140299 m!1171767))

(declare-fun m!1171769 () Bool)

(assert (=> b!1275549 m!1171769))

(assert (=> b!1275502 d!140299))

(declare-fun d!140301 () Bool)

(declare-fun res!847893 () Bool)

(declare-fun e!728240 () Bool)

(assert (=> d!140301 (=> res!847893 e!728240)))

(assert (=> d!140301 (= res!847893 ((_ is Nil!28777) Nil!28777))))

(assert (=> d!140301 (= (noDuplicate!2082 Nil!28777) e!728240)))

(declare-fun b!1275554 () Bool)

(declare-fun e!728241 () Bool)

(assert (=> b!1275554 (= e!728240 e!728241)))

(declare-fun res!847894 () Bool)

(assert (=> b!1275554 (=> (not res!847894) (not e!728241))))

(assert (=> b!1275554 (= res!847894 (not (contains!7701 (t!42323 Nil!28777) (h!29985 Nil!28777))))))

(declare-fun b!1275555 () Bool)

(assert (=> b!1275555 (= e!728241 (noDuplicate!2082 (t!42323 Nil!28777)))))

(assert (= (and d!140301 (not res!847893)) b!1275554))

(assert (= (and b!1275554 res!847894) b!1275555))

(declare-fun m!1171771 () Bool)

(assert (=> b!1275554 m!1171771))

(declare-fun m!1171773 () Bool)

(assert (=> b!1275555 m!1171773))

(assert (=> b!1275497 d!140301))

(declare-fun d!140303 () Bool)

(declare-fun lt!575307 () Bool)

(assert (=> d!140303 (= lt!575307 (select (content!648 Nil!28777) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!728243 () Bool)

(assert (=> d!140303 (= lt!575307 e!728243)))

(declare-fun res!847896 () Bool)

(assert (=> d!140303 (=> (not res!847896) (not e!728243))))

(assert (=> d!140303 (= res!847896 ((_ is Cons!28776) Nil!28777))))

(assert (=> d!140303 (= (contains!7701 Nil!28777 #b0000000000000000000000000000000000000000000000000000000000000000) lt!575307)))

(declare-fun b!1275556 () Bool)

(declare-fun e!728242 () Bool)

(assert (=> b!1275556 (= e!728243 e!728242)))

(declare-fun res!847895 () Bool)

(assert (=> b!1275556 (=> res!847895 e!728242)))

(assert (=> b!1275556 (= res!847895 (= (h!29985 Nil!28777) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275557 () Bool)

(assert (=> b!1275557 (= e!728242 (contains!7701 (t!42323 Nil!28777) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140303 res!847896) b!1275556))

(assert (= (and b!1275556 (not res!847895)) b!1275557))

(assert (=> d!140303 m!1171765))

(declare-fun m!1171775 () Bool)

(assert (=> d!140303 m!1171775))

(declare-fun m!1171777 () Bool)

(assert (=> b!1275557 m!1171777))

(assert (=> b!1275499 d!140303))

(declare-fun d!140305 () Bool)

(assert (=> d!140305 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!108018 d!140305))

(declare-fun d!140307 () Bool)

(assert (=> d!140307 (= (array_inv!30585 _values!1187) (bvsge (size!40853 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!108018 d!140307))

(declare-fun d!140309 () Bool)

(assert (=> d!140309 (= (array_inv!30586 _keys!1427) (bvsge (size!40854 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!108018 d!140309))

(declare-fun b!1275565 () Bool)

(declare-fun e!728248 () Bool)

(assert (=> b!1275565 (= e!728248 tp_is_empty!33267)))

(declare-fun b!1275564 () Bool)

(declare-fun e!728249 () Bool)

(assert (=> b!1275564 (= e!728249 tp_is_empty!33267)))

(declare-fun condMapEmpty!51431 () Bool)

(declare-fun mapDefault!51431 () ValueCell!15735)

(assert (=> mapNonEmpty!51425 (= condMapEmpty!51431 (= mapRest!51425 ((as const (Array (_ BitVec 32) ValueCell!15735)) mapDefault!51431)))))

(declare-fun mapRes!51431 () Bool)

(assert (=> mapNonEmpty!51425 (= tp!98184 (and e!728248 mapRes!51431))))

(declare-fun mapIsEmpty!51431 () Bool)

(assert (=> mapIsEmpty!51431 mapRes!51431))

(declare-fun mapNonEmpty!51431 () Bool)

(declare-fun tp!98190 () Bool)

(assert (=> mapNonEmpty!51431 (= mapRes!51431 (and tp!98190 e!728249))))

(declare-fun mapRest!51431 () (Array (_ BitVec 32) ValueCell!15735))

(declare-fun mapValue!51431 () ValueCell!15735)

(declare-fun mapKey!51431 () (_ BitVec 32))

(assert (=> mapNonEmpty!51431 (= mapRest!51425 (store mapRest!51431 mapKey!51431 mapValue!51431))))

(assert (= (and mapNonEmpty!51425 condMapEmpty!51431) mapIsEmpty!51431))

(assert (= (and mapNonEmpty!51425 (not condMapEmpty!51431)) mapNonEmpty!51431))

(assert (= (and mapNonEmpty!51431 ((_ is ValueCellFull!15735) mapValue!51431)) b!1275564))

(assert (= (and mapNonEmpty!51425 ((_ is ValueCellFull!15735) mapDefault!51431)) b!1275565))

(declare-fun m!1171779 () Bool)

(assert (=> mapNonEmpty!51431 m!1171779))

(check-sat (not bm!62637) (not b!1275557) tp_is_empty!33267 (not b!1275555) (not b!1275543) (not mapNonEmpty!51431) (not b!1275540) (not b!1275554) (not b!1275549) (not d!140299) (not d!140303))
(check-sat)
