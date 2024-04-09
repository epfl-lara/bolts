; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108338 () Bool)

(assert start!108338)

(declare-fun b!1278353 () Bool)

(declare-fun res!849367 () Bool)

(declare-fun e!730264 () Bool)

(assert (=> b!1278353 (=> (not res!849367) (not e!730264))))

(declare-datatypes ((array!84041 0))(
  ( (array!84042 (arr!40521 (Array (_ BitVec 32) (_ BitVec 64))) (size!41072 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84041)

(assert (=> b!1278353 (= res!849367 (and (bvsle #b00000000000000000000000000000000 (size!41072 _keys!1741)) (bvslt (size!41072 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278354 () Bool)

(declare-fun res!849369 () Bool)

(assert (=> b!1278354 (=> (not res!849369) (not e!730264))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84041 (_ BitVec 32)) Bool)

(assert (=> b!1278354 (= res!849369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51800 () Bool)

(declare-fun mapRes!51800 () Bool)

(assert (=> mapIsEmpty!51800 mapRes!51800))

(declare-fun b!1278355 () Bool)

(declare-fun e!730267 () Bool)

(declare-datatypes ((List!28903 0))(
  ( (Nil!28900) (Cons!28899 (h!30108 (_ BitVec 64)) (t!42450 List!28903)) )
))
(declare-fun contains!7756 (List!28903 (_ BitVec 64)) Bool)

(assert (=> b!1278355 (= e!730267 (contains!7756 Nil!28900 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278356 () Bool)

(declare-fun e!730266 () Bool)

(declare-fun tp_is_empty!33501 () Bool)

(assert (=> b!1278356 (= e!730266 tp_is_empty!33501)))

(declare-fun mapNonEmpty!51800 () Bool)

(declare-fun tp!98775 () Bool)

(assert (=> mapNonEmpty!51800 (= mapRes!51800 (and tp!98775 e!730266))))

(declare-datatypes ((V!49771 0))(
  ( (V!49772 (val!16825 Int)) )
))
(declare-datatypes ((ValueCell!15852 0))(
  ( (ValueCellFull!15852 (v!19422 V!49771)) (EmptyCell!15852) )
))
(declare-fun mapRest!51800 () (Array (_ BitVec 32) ValueCell!15852))

(declare-datatypes ((array!84043 0))(
  ( (array!84044 (arr!40522 (Array (_ BitVec 32) ValueCell!15852)) (size!41073 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84043)

(declare-fun mapKey!51800 () (_ BitVec 32))

(declare-fun mapValue!51800 () ValueCell!15852)

(assert (=> mapNonEmpty!51800 (= (arr!40522 _values!1445) (store mapRest!51800 mapKey!51800 mapValue!51800))))

(declare-fun b!1278357 () Bool)

(declare-fun res!849371 () Bool)

(assert (=> b!1278357 (=> (not res!849371) (not e!730264))))

(declare-fun noDuplicate!2088 (List!28903) Bool)

(assert (=> b!1278357 (= res!849371 (noDuplicate!2088 Nil!28900))))

(declare-fun res!849372 () Bool)

(assert (=> start!108338 (=> (not res!849372) (not e!730264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108338 (= res!849372 (validMask!0 mask!2175))))

(assert (=> start!108338 e!730264))

(assert (=> start!108338 true))

(declare-fun e!730263 () Bool)

(declare-fun array_inv!30757 (array!84043) Bool)

(assert (=> start!108338 (and (array_inv!30757 _values!1445) e!730263)))

(declare-fun array_inv!30758 (array!84041) Bool)

(assert (=> start!108338 (array_inv!30758 _keys!1741)))

(declare-fun b!1278358 () Bool)

(assert (=> b!1278358 (= e!730264 e!730267)))

(declare-fun res!849368 () Bool)

(assert (=> b!1278358 (=> res!849368 e!730267)))

(assert (=> b!1278358 (= res!849368 (contains!7756 Nil!28900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278359 () Bool)

(declare-fun e!730265 () Bool)

(assert (=> b!1278359 (= e!730265 tp_is_empty!33501)))

(declare-fun b!1278360 () Bool)

(declare-fun res!849370 () Bool)

(assert (=> b!1278360 (=> (not res!849370) (not e!730264))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278360 (= res!849370 (and (= (size!41073 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41072 _keys!1741) (size!41073 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278361 () Bool)

(assert (=> b!1278361 (= e!730263 (and e!730265 mapRes!51800))))

(declare-fun condMapEmpty!51800 () Bool)

(declare-fun mapDefault!51800 () ValueCell!15852)

(assert (=> b!1278361 (= condMapEmpty!51800 (= (arr!40522 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15852)) mapDefault!51800)))))

(assert (= (and start!108338 res!849372) b!1278360))

(assert (= (and b!1278360 res!849370) b!1278354))

(assert (= (and b!1278354 res!849369) b!1278353))

(assert (= (and b!1278353 res!849367) b!1278357))

(assert (= (and b!1278357 res!849371) b!1278358))

(assert (= (and b!1278358 (not res!849368)) b!1278355))

(assert (= (and b!1278361 condMapEmpty!51800) mapIsEmpty!51800))

(assert (= (and b!1278361 (not condMapEmpty!51800)) mapNonEmpty!51800))

(get-info :version)

(assert (= (and mapNonEmpty!51800 ((_ is ValueCellFull!15852) mapValue!51800)) b!1278356))

(assert (= (and b!1278361 ((_ is ValueCellFull!15852) mapDefault!51800)) b!1278359))

(assert (= start!108338 b!1278361))

(declare-fun m!1173695 () Bool)

(assert (=> b!1278354 m!1173695))

(declare-fun m!1173697 () Bool)

(assert (=> start!108338 m!1173697))

(declare-fun m!1173699 () Bool)

(assert (=> start!108338 m!1173699))

(declare-fun m!1173701 () Bool)

(assert (=> start!108338 m!1173701))

(declare-fun m!1173703 () Bool)

(assert (=> b!1278357 m!1173703))

(declare-fun m!1173705 () Bool)

(assert (=> mapNonEmpty!51800 m!1173705))

(declare-fun m!1173707 () Bool)

(assert (=> b!1278355 m!1173707))

(declare-fun m!1173709 () Bool)

(assert (=> b!1278358 m!1173709))

(check-sat (not b!1278354) tp_is_empty!33501 (not b!1278355) (not b!1278358) (not b!1278357) (not start!108338) (not mapNonEmpty!51800))
(check-sat)
(get-model)

(declare-fun b!1278397 () Bool)

(declare-fun e!730295 () Bool)

(declare-fun call!62712 () Bool)

(assert (=> b!1278397 (= e!730295 call!62712)))

(declare-fun b!1278398 () Bool)

(declare-fun e!730294 () Bool)

(assert (=> b!1278398 (= e!730294 e!730295)))

(declare-fun lt!575816 () (_ BitVec 64))

(assert (=> b!1278398 (= lt!575816 (select (arr!40521 _keys!1741) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42335 0))(
  ( (Unit!42336) )
))
(declare-fun lt!575815 () Unit!42335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!84041 (_ BitVec 64) (_ BitVec 32)) Unit!42335)

(assert (=> b!1278398 (= lt!575815 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!575816 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!84041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1278398 (arrayContainsKey!0 _keys!1741 lt!575816 #b00000000000000000000000000000000)))

(declare-fun lt!575817 () Unit!42335)

(assert (=> b!1278398 (= lt!575817 lt!575815)))

(declare-fun res!849395 () Bool)

(declare-datatypes ((SeekEntryResult!10008 0))(
  ( (MissingZero!10008 (index!42402 (_ BitVec 32))) (Found!10008 (index!42403 (_ BitVec 32))) (Intermediate!10008 (undefined!10820 Bool) (index!42404 (_ BitVec 32)) (x!113322 (_ BitVec 32))) (Undefined!10008) (MissingVacant!10008 (index!42405 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!84041 (_ BitVec 32)) SeekEntryResult!10008)

(assert (=> b!1278398 (= res!849395 (= (seekEntryOrOpen!0 (select (arr!40521 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10008 #b00000000000000000000000000000000)))))

(assert (=> b!1278398 (=> (not res!849395) (not e!730295))))

(declare-fun d!140463 () Bool)

(declare-fun res!849396 () Bool)

(declare-fun e!730293 () Bool)

(assert (=> d!140463 (=> res!849396 e!730293)))

(assert (=> d!140463 (= res!849396 (bvsge #b00000000000000000000000000000000 (size!41072 _keys!1741)))))

(assert (=> d!140463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!730293)))

(declare-fun b!1278399 () Bool)

(assert (=> b!1278399 (= e!730293 e!730294)))

(declare-fun c!123981 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1278399 (= c!123981 (validKeyInArray!0 (select (arr!40521 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1278400 () Bool)

(assert (=> b!1278400 (= e!730294 call!62712)))

(declare-fun bm!62709 () Bool)

(assert (=> bm!62709 (= call!62712 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(assert (= (and d!140463 (not res!849396)) b!1278399))

(assert (= (and b!1278399 c!123981) b!1278398))

(assert (= (and b!1278399 (not c!123981)) b!1278400))

(assert (= (and b!1278398 res!849395) b!1278397))

(assert (= (or b!1278397 b!1278400) bm!62709))

(declare-fun m!1173727 () Bool)

(assert (=> b!1278398 m!1173727))

(declare-fun m!1173729 () Bool)

(assert (=> b!1278398 m!1173729))

(declare-fun m!1173731 () Bool)

(assert (=> b!1278398 m!1173731))

(assert (=> b!1278398 m!1173727))

(declare-fun m!1173733 () Bool)

(assert (=> b!1278398 m!1173733))

(assert (=> b!1278399 m!1173727))

(assert (=> b!1278399 m!1173727))

(declare-fun m!1173735 () Bool)

(assert (=> b!1278399 m!1173735))

(declare-fun m!1173737 () Bool)

(assert (=> bm!62709 m!1173737))

(assert (=> b!1278354 d!140463))

(declare-fun d!140465 () Bool)

(declare-fun res!849401 () Bool)

(declare-fun e!730300 () Bool)

(assert (=> d!140465 (=> res!849401 e!730300)))

(assert (=> d!140465 (= res!849401 ((_ is Nil!28900) Nil!28900))))

(assert (=> d!140465 (= (noDuplicate!2088 Nil!28900) e!730300)))

(declare-fun b!1278405 () Bool)

(declare-fun e!730301 () Bool)

(assert (=> b!1278405 (= e!730300 e!730301)))

(declare-fun res!849402 () Bool)

(assert (=> b!1278405 (=> (not res!849402) (not e!730301))))

(assert (=> b!1278405 (= res!849402 (not (contains!7756 (t!42450 Nil!28900) (h!30108 Nil!28900))))))

(declare-fun b!1278406 () Bool)

(assert (=> b!1278406 (= e!730301 (noDuplicate!2088 (t!42450 Nil!28900)))))

(assert (= (and d!140465 (not res!849401)) b!1278405))

(assert (= (and b!1278405 res!849402) b!1278406))

(declare-fun m!1173739 () Bool)

(assert (=> b!1278405 m!1173739))

(declare-fun m!1173741 () Bool)

(assert (=> b!1278406 m!1173741))

(assert (=> b!1278357 d!140465))

(declare-fun d!140467 () Bool)

(declare-fun lt!575820 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!649 (List!28903) (InoxSet (_ BitVec 64)))

(assert (=> d!140467 (= lt!575820 (select (content!649 Nil!28900) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!730307 () Bool)

(assert (=> d!140467 (= lt!575820 e!730307)))

(declare-fun res!849407 () Bool)

(assert (=> d!140467 (=> (not res!849407) (not e!730307))))

(assert (=> d!140467 (= res!849407 ((_ is Cons!28899) Nil!28900))))

(assert (=> d!140467 (= (contains!7756 Nil!28900 #b0000000000000000000000000000000000000000000000000000000000000000) lt!575820)))

(declare-fun b!1278411 () Bool)

(declare-fun e!730306 () Bool)

(assert (=> b!1278411 (= e!730307 e!730306)))

(declare-fun res!849408 () Bool)

(assert (=> b!1278411 (=> res!849408 e!730306)))

(assert (=> b!1278411 (= res!849408 (= (h!30108 Nil!28900) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278412 () Bool)

(assert (=> b!1278412 (= e!730306 (contains!7756 (t!42450 Nil!28900) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140467 res!849407) b!1278411))

(assert (= (and b!1278411 (not res!849408)) b!1278412))

(declare-fun m!1173743 () Bool)

(assert (=> d!140467 m!1173743))

(declare-fun m!1173745 () Bool)

(assert (=> d!140467 m!1173745))

(declare-fun m!1173747 () Bool)

(assert (=> b!1278412 m!1173747))

(assert (=> b!1278358 d!140467))

(declare-fun d!140469 () Bool)

(declare-fun lt!575821 () Bool)

(assert (=> d!140469 (= lt!575821 (select (content!649 Nil!28900) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!730309 () Bool)

(assert (=> d!140469 (= lt!575821 e!730309)))

(declare-fun res!849409 () Bool)

(assert (=> d!140469 (=> (not res!849409) (not e!730309))))

(assert (=> d!140469 (= res!849409 ((_ is Cons!28899) Nil!28900))))

(assert (=> d!140469 (= (contains!7756 Nil!28900 #b1000000000000000000000000000000000000000000000000000000000000000) lt!575821)))

(declare-fun b!1278413 () Bool)

(declare-fun e!730308 () Bool)

(assert (=> b!1278413 (= e!730309 e!730308)))

(declare-fun res!849410 () Bool)

(assert (=> b!1278413 (=> res!849410 e!730308)))

(assert (=> b!1278413 (= res!849410 (= (h!30108 Nil!28900) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278414 () Bool)

(assert (=> b!1278414 (= e!730308 (contains!7756 (t!42450 Nil!28900) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140469 res!849409) b!1278413))

(assert (= (and b!1278413 (not res!849410)) b!1278414))

(assert (=> d!140469 m!1173743))

(declare-fun m!1173749 () Bool)

(assert (=> d!140469 m!1173749))

(declare-fun m!1173751 () Bool)

(assert (=> b!1278414 m!1173751))

(assert (=> b!1278355 d!140469))

(declare-fun d!140471 () Bool)

(assert (=> d!140471 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108338 d!140471))

(declare-fun d!140473 () Bool)

(assert (=> d!140473 (= (array_inv!30757 _values!1445) (bvsge (size!41073 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108338 d!140473))

(declare-fun d!140475 () Bool)

(assert (=> d!140475 (= (array_inv!30758 _keys!1741) (bvsge (size!41072 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108338 d!140475))

(declare-fun mapIsEmpty!51806 () Bool)

(declare-fun mapRes!51806 () Bool)

(assert (=> mapIsEmpty!51806 mapRes!51806))

(declare-fun b!1278422 () Bool)

(declare-fun e!730315 () Bool)

(assert (=> b!1278422 (= e!730315 tp_is_empty!33501)))

(declare-fun b!1278421 () Bool)

(declare-fun e!730314 () Bool)

(assert (=> b!1278421 (= e!730314 tp_is_empty!33501)))

(declare-fun condMapEmpty!51806 () Bool)

(declare-fun mapDefault!51806 () ValueCell!15852)

(assert (=> mapNonEmpty!51800 (= condMapEmpty!51806 (= mapRest!51800 ((as const (Array (_ BitVec 32) ValueCell!15852)) mapDefault!51806)))))

(assert (=> mapNonEmpty!51800 (= tp!98775 (and e!730315 mapRes!51806))))

(declare-fun mapNonEmpty!51806 () Bool)

(declare-fun tp!98781 () Bool)

(assert (=> mapNonEmpty!51806 (= mapRes!51806 (and tp!98781 e!730314))))

(declare-fun mapRest!51806 () (Array (_ BitVec 32) ValueCell!15852))

(declare-fun mapKey!51806 () (_ BitVec 32))

(declare-fun mapValue!51806 () ValueCell!15852)

(assert (=> mapNonEmpty!51806 (= mapRest!51800 (store mapRest!51806 mapKey!51806 mapValue!51806))))

(assert (= (and mapNonEmpty!51800 condMapEmpty!51806) mapIsEmpty!51806))

(assert (= (and mapNonEmpty!51800 (not condMapEmpty!51806)) mapNonEmpty!51806))

(assert (= (and mapNonEmpty!51806 ((_ is ValueCellFull!15852) mapValue!51806)) b!1278421))

(assert (= (and mapNonEmpty!51800 ((_ is ValueCellFull!15852) mapDefault!51806)) b!1278422))

(declare-fun m!1173753 () Bool)

(assert (=> mapNonEmpty!51806 m!1173753))

(check-sat (not mapNonEmpty!51806) (not b!1278398) (not d!140467) tp_is_empty!33501 (not b!1278412) (not b!1278405) (not b!1278406) (not b!1278399) (not bm!62709) (not b!1278414) (not d!140469))
(check-sat)
