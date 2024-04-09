; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8176 () Bool)

(assert start!8176)

(declare-fun b!51617 () Bool)

(declare-fun b_free!1601 () Bool)

(declare-fun b_next!1601 () Bool)

(assert (=> b!51617 (= b_free!1601 (not b_next!1601))))

(declare-fun tp!6892 () Bool)

(declare-fun b_and!2821 () Bool)

(assert (=> b!51617 (= tp!6892 b_and!2821)))

(declare-fun b!51614 () Bool)

(declare-fun b_free!1603 () Bool)

(declare-fun b_next!1603 () Bool)

(assert (=> b!51614 (= b_free!1603 (not b_next!1603))))

(declare-fun tp!6893 () Bool)

(declare-fun b_and!2823 () Bool)

(assert (=> b!51614 (= tp!6893 b_and!2823)))

(declare-fun b!51603 () Bool)

(declare-fun e!33477 () Bool)

(declare-fun tp_is_empty!2217 () Bool)

(assert (=> b!51603 (= e!33477 tp_is_empty!2217)))

(declare-fun b!51604 () Bool)

(declare-fun e!33475 () Bool)

(assert (=> b!51604 (= e!33475 tp_is_empty!2217)))

(declare-fun b!51605 () Bool)

(declare-fun res!29496 () Bool)

(declare-fun e!33485 () Bool)

(assert (=> b!51605 (=> (not res!29496) (not e!33485))))

(declare-datatypes ((V!2603 0))(
  ( (V!2604 (val!1153 Int)) )
))
(declare-datatypes ((array!3352 0))(
  ( (array!3353 (arr!1600 (Array (_ BitVec 32) (_ BitVec 64))) (size!1827 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!765 0))(
  ( (ValueCellFull!765 (v!2192 V!2603)) (EmptyCell!765) )
))
(declare-datatypes ((array!3354 0))(
  ( (array!3355 (arr!1601 (Array (_ BitVec 32) ValueCell!765)) (size!1828 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!438 0))(
  ( (LongMapFixedSize!439 (defaultEntry!1933 Int) (mask!5742 (_ BitVec 32)) (extraKeys!1824 (_ BitVec 32)) (zeroValue!1851 V!2603) (minValue!1851 V!2603) (_size!268 (_ BitVec 32)) (_keys!3549 array!3352) (_values!1916 array!3354) (_vacant!268 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!438)

(declare-fun valid!151 (LongMapFixedSize!438) Bool)

(assert (=> b!51605 (= res!29496 (valid!151 newMap!16))))

(declare-fun b!51606 () Bool)

(declare-fun res!29492 () Bool)

(assert (=> b!51606 (=> (not res!29492) (not e!33485))))

(declare-datatypes ((Cell!258 0))(
  ( (Cell!259 (v!2193 LongMapFixedSize!438)) )
))
(declare-datatypes ((LongMap!258 0))(
  ( (LongMap!259 (underlying!140 Cell!258)) )
))
(declare-fun thiss!992 () LongMap!258)

(assert (=> b!51606 (= res!29492 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5742 newMap!16)) (_size!268 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51607 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3352 (_ BitVec 32)) Bool)

(assert (=> b!51607 (= e!33485 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992))))))))

(declare-fun b!51608 () Bool)

(declare-fun res!29497 () Bool)

(assert (=> b!51608 (=> (not res!29497) (not e!33485))))

(assert (=> b!51608 (= res!29497 (and (= (size!1828 (_values!1916 (v!2193 (underlying!140 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5742 (v!2193 (underlying!140 thiss!992))))) (= (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (size!1828 (_values!1916 (v!2193 (underlying!140 thiss!992))))) (bvsge (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1824 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1824 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!51609 () Bool)

(declare-fun e!33481 () Bool)

(declare-fun e!33476 () Bool)

(assert (=> b!51609 (= e!33481 e!33476)))

(declare-fun b!51610 () Bool)

(declare-fun e!33480 () Bool)

(assert (=> b!51610 (= e!33480 tp_is_empty!2217)))

(declare-fun b!51611 () Bool)

(declare-fun e!33487 () Bool)

(declare-fun mapRes!2310 () Bool)

(assert (=> b!51611 (= e!33487 (and e!33477 mapRes!2310))))

(declare-fun condMapEmpty!2309 () Bool)

(declare-fun mapDefault!2309 () ValueCell!765)

(assert (=> b!51611 (= condMapEmpty!2309 (= (arr!1601 (_values!1916 (v!2193 (underlying!140 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2309)))))

(declare-fun b!51612 () Bool)

(declare-fun res!29494 () Bool)

(assert (=> b!51612 (=> (not res!29494) (not e!33485))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!51612 (= res!29494 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992)))))))))

(declare-fun mapIsEmpty!2309 () Bool)

(declare-fun mapRes!2309 () Bool)

(assert (=> mapIsEmpty!2309 mapRes!2309))

(declare-fun mapNonEmpty!2309 () Bool)

(declare-fun tp!6891 () Bool)

(assert (=> mapNonEmpty!2309 (= mapRes!2309 (and tp!6891 e!33475))))

(declare-fun mapKey!2309 () (_ BitVec 32))

(declare-fun mapValue!2309 () ValueCell!765)

(declare-fun mapRest!2309 () (Array (_ BitVec 32) ValueCell!765))

(assert (=> mapNonEmpty!2309 (= (arr!1601 (_values!1916 newMap!16)) (store mapRest!2309 mapKey!2309 mapValue!2309))))

(declare-fun mapNonEmpty!2310 () Bool)

(declare-fun tp!6894 () Bool)

(assert (=> mapNonEmpty!2310 (= mapRes!2310 (and tp!6894 e!33480))))

(declare-fun mapValue!2310 () ValueCell!765)

(declare-fun mapKey!2310 () (_ BitVec 32))

(declare-fun mapRest!2310 () (Array (_ BitVec 32) ValueCell!765))

(assert (=> mapNonEmpty!2310 (= (arr!1601 (_values!1916 (v!2193 (underlying!140 thiss!992)))) (store mapRest!2310 mapKey!2310 mapValue!2310))))

(declare-fun b!51613 () Bool)

(declare-fun e!33484 () Bool)

(declare-fun e!33482 () Bool)

(assert (=> b!51613 (= e!33484 (and e!33482 mapRes!2309))))

(declare-fun condMapEmpty!2310 () Bool)

(declare-fun mapDefault!2310 () ValueCell!765)

(assert (=> b!51613 (= condMapEmpty!2310 (= (arr!1601 (_values!1916 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2310)))))

(declare-fun e!33478 () Bool)

(declare-fun array_inv!929 (array!3352) Bool)

(declare-fun array_inv!930 (array!3354) Bool)

(assert (=> b!51614 (= e!33478 (and tp!6893 tp_is_empty!2217 (array_inv!929 (_keys!3549 newMap!16)) (array_inv!930 (_values!1916 newMap!16)) e!33484))))

(declare-fun b!51615 () Bool)

(declare-fun e!33483 () Bool)

(assert (=> b!51615 (= e!33483 e!33481)))

(declare-fun b!51616 () Bool)

(declare-fun res!29495 () Bool)

(assert (=> b!51616 (=> (not res!29495) (not e!33485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!51616 (= res!29495 (validMask!0 (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun mapIsEmpty!2310 () Bool)

(assert (=> mapIsEmpty!2310 mapRes!2310))

(assert (=> b!51617 (= e!33476 (and tp!6892 tp_is_empty!2217 (array_inv!929 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (array_inv!930 (_values!1916 (v!2193 (underlying!140 thiss!992)))) e!33487))))

(declare-fun res!29493 () Bool)

(assert (=> start!8176 (=> (not res!29493) (not e!33485))))

(declare-fun valid!152 (LongMap!258) Bool)

(assert (=> start!8176 (= res!29493 (valid!152 thiss!992))))

(assert (=> start!8176 e!33485))

(assert (=> start!8176 e!33483))

(assert (=> start!8176 true))

(assert (=> start!8176 e!33478))

(declare-fun b!51618 () Bool)

(assert (=> b!51618 (= e!33482 tp_is_empty!2217)))

(assert (= (and start!8176 res!29493) b!51612))

(assert (= (and b!51612 res!29494) b!51605))

(assert (= (and b!51605 res!29496) b!51606))

(assert (= (and b!51606 res!29492) b!51616))

(assert (= (and b!51616 res!29495) b!51608))

(assert (= (and b!51608 res!29497) b!51607))

(assert (= (and b!51611 condMapEmpty!2309) mapIsEmpty!2310))

(assert (= (and b!51611 (not condMapEmpty!2309)) mapNonEmpty!2310))

(get-info :version)

(assert (= (and mapNonEmpty!2310 ((_ is ValueCellFull!765) mapValue!2310)) b!51610))

(assert (= (and b!51611 ((_ is ValueCellFull!765) mapDefault!2309)) b!51603))

(assert (= b!51617 b!51611))

(assert (= b!51609 b!51617))

(assert (= b!51615 b!51609))

(assert (= start!8176 b!51615))

(assert (= (and b!51613 condMapEmpty!2310) mapIsEmpty!2309))

(assert (= (and b!51613 (not condMapEmpty!2310)) mapNonEmpty!2309))

(assert (= (and mapNonEmpty!2309 ((_ is ValueCellFull!765) mapValue!2309)) b!51604))

(assert (= (and b!51613 ((_ is ValueCellFull!765) mapDefault!2310)) b!51618))

(assert (= b!51614 b!51613))

(assert (= start!8176 b!51614))

(declare-fun m!44423 () Bool)

(assert (=> b!51616 m!44423))

(declare-fun m!44425 () Bool)

(assert (=> start!8176 m!44425))

(declare-fun m!44427 () Bool)

(assert (=> mapNonEmpty!2310 m!44427))

(declare-fun m!44429 () Bool)

(assert (=> b!51614 m!44429))

(declare-fun m!44431 () Bool)

(assert (=> b!51614 m!44431))

(declare-fun m!44433 () Bool)

(assert (=> b!51605 m!44433))

(declare-fun m!44435 () Bool)

(assert (=> b!51607 m!44435))

(declare-fun m!44437 () Bool)

(assert (=> mapNonEmpty!2309 m!44437))

(declare-fun m!44439 () Bool)

(assert (=> b!51617 m!44439))

(declare-fun m!44441 () Bool)

(assert (=> b!51617 m!44441))

(check-sat tp_is_empty!2217 (not b!51617) (not b_next!1603) b_and!2823 (not b!51614) (not b!51605) (not start!8176) (not b!51616) (not b_next!1601) (not b!51607) b_and!2821 (not mapNonEmpty!2309) (not mapNonEmpty!2310))
(check-sat b_and!2821 b_and!2823 (not b_next!1601) (not b_next!1603))
(get-model)

(declare-fun d!10397 () Bool)

(assert (=> d!10397 (= (array_inv!929 (_keys!3549 newMap!16)) (bvsge (size!1827 (_keys!3549 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51614 d!10397))

(declare-fun d!10399 () Bool)

(assert (=> d!10399 (= (array_inv!930 (_values!1916 newMap!16)) (bvsge (size!1828 (_values!1916 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51614 d!10399))

(declare-fun bm!3948 () Bool)

(declare-fun call!3951 () Bool)

(assert (=> bm!3948 (= call!3951 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51675 () Bool)

(declare-fun e!33533 () Bool)

(assert (=> b!51675 (= e!33533 call!3951)))

(declare-fun d!10401 () Bool)

(declare-fun res!29520 () Bool)

(declare-fun e!33535 () Bool)

(assert (=> d!10401 (=> res!29520 e!33535)))

(assert (=> d!10401 (= res!29520 (bvsge #b00000000000000000000000000000000 (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))))

(assert (=> d!10401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))) e!33535)))

(declare-fun b!51676 () Bool)

(assert (=> b!51676 (= e!33535 e!33533)))

(declare-fun c!6925 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!51676 (= c!6925 (validKeyInArray!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51677 () Bool)

(declare-fun e!33534 () Bool)

(assert (=> b!51677 (= e!33534 call!3951)))

(declare-fun b!51678 () Bool)

(assert (=> b!51678 (= e!33533 e!33534)))

(declare-fun lt!21208 () (_ BitVec 64))

(assert (=> b!51678 (= lt!21208 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1428 0))(
  ( (Unit!1429) )
))
(declare-fun lt!21206 () Unit!1428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3352 (_ BitVec 64) (_ BitVec 32)) Unit!1428)

(assert (=> b!51678 (= lt!21206 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!51678 (arrayContainsKey!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000)))

(declare-fun lt!21207 () Unit!1428)

(assert (=> b!51678 (= lt!21207 lt!21206)))

(declare-fun res!29521 () Bool)

(declare-datatypes ((SeekEntryResult!233 0))(
  ( (MissingZero!233 (index!3054 (_ BitVec 32))) (Found!233 (index!3055 (_ BitVec 32))) (Intermediate!233 (undefined!1045 Bool) (index!3056 (_ BitVec 32)) (x!9399 (_ BitVec 32))) (Undefined!233) (MissingVacant!233 (index!3057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3352 (_ BitVec 32)) SeekEntryResult!233)

(assert (=> b!51678 (= res!29521 (= (seekEntryOrOpen!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))) (Found!233 #b00000000000000000000000000000000)))))

(assert (=> b!51678 (=> (not res!29521) (not e!33534))))

(assert (= (and d!10401 (not res!29520)) b!51676))

(assert (= (and b!51676 c!6925) b!51678))

(assert (= (and b!51676 (not c!6925)) b!51675))

(assert (= (and b!51678 res!29521) b!51677))

(assert (= (or b!51677 b!51675) bm!3948))

(declare-fun m!44463 () Bool)

(assert (=> bm!3948 m!44463))

(declare-fun m!44465 () Bool)

(assert (=> b!51676 m!44465))

(assert (=> b!51676 m!44465))

(declare-fun m!44467 () Bool)

(assert (=> b!51676 m!44467))

(assert (=> b!51678 m!44465))

(declare-fun m!44469 () Bool)

(assert (=> b!51678 m!44469))

(declare-fun m!44471 () Bool)

(assert (=> b!51678 m!44471))

(assert (=> b!51678 m!44465))

(declare-fun m!44473 () Bool)

(assert (=> b!51678 m!44473))

(assert (=> b!51607 d!10401))

(declare-fun d!10403 () Bool)

(assert (=> d!10403 (= (validMask!0 (mask!5742 (v!2193 (underlying!140 thiss!992)))) (and (or (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000001111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000011111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000001111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000011111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000001111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000011111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000001111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000011111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000000111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000001111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000011111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000000111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000001111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000011111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000000111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000001111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000011111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000000111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000001111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000011111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00000111111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00001111111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00011111111111111111111111111111) (= (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5742 (v!2193 (underlying!140 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!51616 d!10403))

(declare-fun d!10405 () Bool)

(declare-fun res!29528 () Bool)

(declare-fun e!33538 () Bool)

(assert (=> d!10405 (=> (not res!29528) (not e!33538))))

(declare-fun simpleValid!37 (LongMapFixedSize!438) Bool)

(assert (=> d!10405 (= res!29528 (simpleValid!37 newMap!16))))

(assert (=> d!10405 (= (valid!151 newMap!16) e!33538)))

(declare-fun b!51685 () Bool)

(declare-fun res!29529 () Bool)

(assert (=> b!51685 (=> (not res!29529) (not e!33538))))

(declare-fun arrayCountValidKeys!0 (array!3352 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!51685 (= res!29529 (= (arrayCountValidKeys!0 (_keys!3549 newMap!16) #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))) (_size!268 newMap!16)))))

(declare-fun b!51686 () Bool)

(declare-fun res!29530 () Bool)

(assert (=> b!51686 (=> (not res!29530) (not e!33538))))

(assert (=> b!51686 (= res!29530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3549 newMap!16) (mask!5742 newMap!16)))))

(declare-fun b!51687 () Bool)

(declare-datatypes ((List!1352 0))(
  ( (Nil!1349) (Cons!1348 (h!1928 (_ BitVec 64)) (t!4394 List!1352)) )
))
(declare-fun arrayNoDuplicates!0 (array!3352 (_ BitVec 32) List!1352) Bool)

(assert (=> b!51687 (= e!33538 (arrayNoDuplicates!0 (_keys!3549 newMap!16) #b00000000000000000000000000000000 Nil!1349))))

(assert (= (and d!10405 res!29528) b!51685))

(assert (= (and b!51685 res!29529) b!51686))

(assert (= (and b!51686 res!29530) b!51687))

(declare-fun m!44475 () Bool)

(assert (=> d!10405 m!44475))

(declare-fun m!44477 () Bool)

(assert (=> b!51685 m!44477))

(declare-fun m!44479 () Bool)

(assert (=> b!51686 m!44479))

(declare-fun m!44481 () Bool)

(assert (=> b!51687 m!44481))

(assert (=> b!51605 d!10405))

(declare-fun d!10407 () Bool)

(assert (=> d!10407 (= (array_inv!929 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (bvsge (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51617 d!10407))

(declare-fun d!10409 () Bool)

(assert (=> d!10409 (= (array_inv!930 (_values!1916 (v!2193 (underlying!140 thiss!992)))) (bvsge (size!1828 (_values!1916 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51617 d!10409))

(declare-fun d!10411 () Bool)

(assert (=> d!10411 (= (valid!152 thiss!992) (valid!151 (v!2193 (underlying!140 thiss!992))))))

(declare-fun bs!2382 () Bool)

(assert (= bs!2382 d!10411))

(declare-fun m!44483 () Bool)

(assert (=> bs!2382 m!44483))

(assert (=> start!8176 d!10411))

(declare-fun b!51695 () Bool)

(declare-fun e!33544 () Bool)

(assert (=> b!51695 (= e!33544 tp_is_empty!2217)))

(declare-fun b!51694 () Bool)

(declare-fun e!33543 () Bool)

(assert (=> b!51694 (= e!33543 tp_is_empty!2217)))

(declare-fun mapIsEmpty!2319 () Bool)

(declare-fun mapRes!2319 () Bool)

(assert (=> mapIsEmpty!2319 mapRes!2319))

(declare-fun mapNonEmpty!2319 () Bool)

(declare-fun tp!6909 () Bool)

(assert (=> mapNonEmpty!2319 (= mapRes!2319 (and tp!6909 e!33543))))

(declare-fun mapKey!2319 () (_ BitVec 32))

(declare-fun mapValue!2319 () ValueCell!765)

(declare-fun mapRest!2319 () (Array (_ BitVec 32) ValueCell!765))

(assert (=> mapNonEmpty!2319 (= mapRest!2309 (store mapRest!2319 mapKey!2319 mapValue!2319))))

(declare-fun condMapEmpty!2319 () Bool)

(declare-fun mapDefault!2319 () ValueCell!765)

(assert (=> mapNonEmpty!2309 (= condMapEmpty!2319 (= mapRest!2309 ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2319)))))

(assert (=> mapNonEmpty!2309 (= tp!6891 (and e!33544 mapRes!2319))))

(assert (= (and mapNonEmpty!2309 condMapEmpty!2319) mapIsEmpty!2319))

(assert (= (and mapNonEmpty!2309 (not condMapEmpty!2319)) mapNonEmpty!2319))

(assert (= (and mapNonEmpty!2319 ((_ is ValueCellFull!765) mapValue!2319)) b!51694))

(assert (= (and mapNonEmpty!2309 ((_ is ValueCellFull!765) mapDefault!2319)) b!51695))

(declare-fun m!44485 () Bool)

(assert (=> mapNonEmpty!2319 m!44485))

(declare-fun b!51697 () Bool)

(declare-fun e!33546 () Bool)

(assert (=> b!51697 (= e!33546 tp_is_empty!2217)))

(declare-fun b!51696 () Bool)

(declare-fun e!33545 () Bool)

(assert (=> b!51696 (= e!33545 tp_is_empty!2217)))

(declare-fun mapIsEmpty!2320 () Bool)

(declare-fun mapRes!2320 () Bool)

(assert (=> mapIsEmpty!2320 mapRes!2320))

(declare-fun mapNonEmpty!2320 () Bool)

(declare-fun tp!6910 () Bool)

(assert (=> mapNonEmpty!2320 (= mapRes!2320 (and tp!6910 e!33545))))

(declare-fun mapRest!2320 () (Array (_ BitVec 32) ValueCell!765))

(declare-fun mapKey!2320 () (_ BitVec 32))

(declare-fun mapValue!2320 () ValueCell!765)

(assert (=> mapNonEmpty!2320 (= mapRest!2310 (store mapRest!2320 mapKey!2320 mapValue!2320))))

(declare-fun condMapEmpty!2320 () Bool)

(declare-fun mapDefault!2320 () ValueCell!765)

(assert (=> mapNonEmpty!2310 (= condMapEmpty!2320 (= mapRest!2310 ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2320)))))

(assert (=> mapNonEmpty!2310 (= tp!6894 (and e!33546 mapRes!2320))))

(assert (= (and mapNonEmpty!2310 condMapEmpty!2320) mapIsEmpty!2320))

(assert (= (and mapNonEmpty!2310 (not condMapEmpty!2320)) mapNonEmpty!2320))

(assert (= (and mapNonEmpty!2320 ((_ is ValueCellFull!765) mapValue!2320)) b!51696))

(assert (= (and mapNonEmpty!2310 ((_ is ValueCellFull!765) mapDefault!2320)) b!51697))

(declare-fun m!44487 () Bool)

(assert (=> mapNonEmpty!2320 m!44487))

(check-sat (not b!51686) tp_is_empty!2217 (not b_next!1601) (not b_next!1603) (not b!51687) (not bm!3948) b_and!2823 (not mapNonEmpty!2319) (not b!51676) (not mapNonEmpty!2320) b_and!2821 (not b!51685) (not b!51678) (not d!10411) (not d!10405))
(check-sat b_and!2821 b_and!2823 (not b_next!1601) (not b_next!1603))
(get-model)

(declare-fun d!10413 () Bool)

(assert (=> d!10413 (= (validKeyInArray!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!51676 d!10413))

(declare-fun b!51706 () Bool)

(declare-fun e!33552 () (_ BitVec 32))

(declare-fun e!33551 () (_ BitVec 32))

(assert (=> b!51706 (= e!33552 e!33551)))

(declare-fun c!6930 () Bool)

(assert (=> b!51706 (= c!6930 (validKeyInArray!0 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51707 () Bool)

(declare-fun call!3954 () (_ BitVec 32))

(assert (=> b!51707 (= e!33551 (bvadd #b00000000000000000000000000000001 call!3954))))

(declare-fun bm!3951 () Bool)

(assert (=> bm!3951 (= call!3954 (arrayCountValidKeys!0 (_keys!3549 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1827 (_keys!3549 newMap!16))))))

(declare-fun d!10415 () Bool)

(declare-fun lt!21211 () (_ BitVec 32))

(assert (=> d!10415 (and (bvsge lt!21211 #b00000000000000000000000000000000) (bvsle lt!21211 (bvsub (size!1827 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!10415 (= lt!21211 e!33552)))

(declare-fun c!6931 () Bool)

(assert (=> d!10415 (= c!6931 (bvsge #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))))))

(assert (=> d!10415 (and (bvsle #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1827 (_keys!3549 newMap!16)) (size!1827 (_keys!3549 newMap!16))))))

(assert (=> d!10415 (= (arrayCountValidKeys!0 (_keys!3549 newMap!16) #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))) lt!21211)))

(declare-fun b!51708 () Bool)

(assert (=> b!51708 (= e!33552 #b00000000000000000000000000000000)))

(declare-fun b!51709 () Bool)

(assert (=> b!51709 (= e!33551 call!3954)))

(assert (= (and d!10415 c!6931) b!51708))

(assert (= (and d!10415 (not c!6931)) b!51706))

(assert (= (and b!51706 c!6930) b!51707))

(assert (= (and b!51706 (not c!6930)) b!51709))

(assert (= (or b!51707 b!51709) bm!3951))

(declare-fun m!44489 () Bool)

(assert (=> b!51706 m!44489))

(assert (=> b!51706 m!44489))

(declare-fun m!44491 () Bool)

(assert (=> b!51706 m!44491))

(declare-fun m!44493 () Bool)

(assert (=> bm!3951 m!44493))

(assert (=> b!51685 d!10415))

(declare-fun d!10417 () Bool)

(declare-fun res!29531 () Bool)

(declare-fun e!33553 () Bool)

(assert (=> d!10417 (=> (not res!29531) (not e!33553))))

(assert (=> d!10417 (= res!29531 (simpleValid!37 (v!2193 (underlying!140 thiss!992))))))

(assert (=> d!10417 (= (valid!151 (v!2193 (underlying!140 thiss!992))) e!33553)))

(declare-fun b!51710 () Bool)

(declare-fun res!29532 () Bool)

(assert (=> b!51710 (=> (not res!29532) (not e!33553))))

(assert (=> b!51710 (= res!29532 (= (arrayCountValidKeys!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000000 (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))) (_size!268 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51711 () Bool)

(declare-fun res!29533 () Bool)

(assert (=> b!51711 (=> (not res!29533) (not e!33553))))

(assert (=> b!51711 (= res!29533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51712 () Bool)

(assert (=> b!51712 (= e!33553 (arrayNoDuplicates!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) #b00000000000000000000000000000000 Nil!1349))))

(assert (= (and d!10417 res!29531) b!51710))

(assert (= (and b!51710 res!29532) b!51711))

(assert (= (and b!51711 res!29533) b!51712))

(declare-fun m!44495 () Bool)

(assert (=> d!10417 m!44495))

(declare-fun m!44497 () Bool)

(assert (=> b!51710 m!44497))

(assert (=> b!51711 m!44435))

(declare-fun m!44499 () Bool)

(assert (=> b!51712 m!44499))

(assert (=> d!10411 d!10417))

(declare-fun d!10419 () Bool)

(assert (=> d!10419 (arrayContainsKey!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000)))

(declare-fun lt!21214 () Unit!1428)

(declare-fun choose!13 (array!3352 (_ BitVec 64) (_ BitVec 32)) Unit!1428)

(assert (=> d!10419 (= lt!21214 (choose!13 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000))))

(assert (=> d!10419 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10419 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000) lt!21214)))

(declare-fun bs!2383 () Bool)

(assert (= bs!2383 d!10419))

(assert (=> bs!2383 m!44471))

(declare-fun m!44501 () Bool)

(assert (=> bs!2383 m!44501))

(assert (=> b!51678 d!10419))

(declare-fun d!10421 () Bool)

(declare-fun res!29538 () Bool)

(declare-fun e!33558 () Bool)

(assert (=> d!10421 (=> res!29538 e!33558)))

(assert (=> d!10421 (= res!29538 (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) lt!21208))))

(assert (=> d!10421 (= (arrayContainsKey!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 #b00000000000000000000000000000000) e!33558)))

(declare-fun b!51717 () Bool)

(declare-fun e!33559 () Bool)

(assert (=> b!51717 (= e!33558 e!33559)))

(declare-fun res!29539 () Bool)

(assert (=> b!51717 (=> (not res!29539) (not e!33559))))

(assert (=> b!51717 (= res!29539 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))))

(declare-fun b!51718 () Bool)

(assert (=> b!51718 (= e!33559 (arrayContainsKey!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10421 (not res!29538)) b!51717))

(assert (= (and b!51717 res!29539) b!51718))

(assert (=> d!10421 m!44465))

(declare-fun m!44503 () Bool)

(assert (=> b!51718 m!44503))

(assert (=> b!51678 d!10421))

(declare-fun b!51731 () Bool)

(declare-fun e!33566 () SeekEntryResult!233)

(declare-fun e!33567 () SeekEntryResult!233)

(assert (=> b!51731 (= e!33566 e!33567)))

(declare-fun lt!21222 () (_ BitVec 64))

(declare-fun lt!21221 () SeekEntryResult!233)

(assert (=> b!51731 (= lt!21222 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (index!3056 lt!21221)))))

(declare-fun c!6940 () Bool)

(assert (=> b!51731 (= c!6940 (= lt!21222 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51732 () Bool)

(declare-fun e!33568 () SeekEntryResult!233)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3352 (_ BitVec 32)) SeekEntryResult!233)

(assert (=> b!51732 (= e!33568 (seekKeyOrZeroReturnVacant!0 (x!9399 lt!21221) (index!3056 lt!21221) (index!3056 lt!21221) (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51733 () Bool)

(assert (=> b!51733 (= e!33567 (Found!233 (index!3056 lt!21221)))))

(declare-fun d!10423 () Bool)

(declare-fun lt!21223 () SeekEntryResult!233)

(assert (=> d!10423 (and (or ((_ is Undefined!233) lt!21223) (not ((_ is Found!233) lt!21223)) (and (bvsge (index!3055 lt!21223) #b00000000000000000000000000000000) (bvslt (index!3055 lt!21223) (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))) (or ((_ is Undefined!233) lt!21223) ((_ is Found!233) lt!21223) (not ((_ is MissingZero!233) lt!21223)) (and (bvsge (index!3054 lt!21223) #b00000000000000000000000000000000) (bvslt (index!3054 lt!21223) (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))) (or ((_ is Undefined!233) lt!21223) ((_ is Found!233) lt!21223) ((_ is MissingZero!233) lt!21223) (not ((_ is MissingVacant!233) lt!21223)) (and (bvsge (index!3057 lt!21223) #b00000000000000000000000000000000) (bvslt (index!3057 lt!21223) (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))) (or ((_ is Undefined!233) lt!21223) (ite ((_ is Found!233) lt!21223) (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (index!3055 lt!21223)) (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!233) lt!21223) (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (index!3054 lt!21223)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!233) lt!21223) (= (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (index!3057 lt!21223)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10423 (= lt!21223 e!33566)))

(declare-fun c!6939 () Bool)

(assert (=> d!10423 (= c!6939 (and ((_ is Intermediate!233) lt!21221) (undefined!1045 lt!21221)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3352 (_ BitVec 32)) SeekEntryResult!233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10423 (= lt!21221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) (mask!5742 (v!2193 (underlying!140 thiss!992)))) (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(assert (=> d!10423 (validMask!0 (mask!5742 (v!2193 (underlying!140 thiss!992))))))

(assert (=> d!10423 (= (seekEntryOrOpen!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) #b00000000000000000000000000000000) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))) lt!21223)))

(declare-fun b!51734 () Bool)

(assert (=> b!51734 (= e!33568 (MissingZero!233 (index!3056 lt!21221)))))

(declare-fun b!51735 () Bool)

(declare-fun c!6938 () Bool)

(assert (=> b!51735 (= c!6938 (= lt!21222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!51735 (= e!33567 e!33568)))

(declare-fun b!51736 () Bool)

(assert (=> b!51736 (= e!33566 Undefined!233)))

(assert (= (and d!10423 c!6939) b!51736))

(assert (= (and d!10423 (not c!6939)) b!51731))

(assert (= (and b!51731 c!6940) b!51733))

(assert (= (and b!51731 (not c!6940)) b!51735))

(assert (= (and b!51735 c!6938) b!51734))

(assert (= (and b!51735 (not c!6938)) b!51732))

(declare-fun m!44505 () Bool)

(assert (=> b!51731 m!44505))

(assert (=> b!51732 m!44465))

(declare-fun m!44507 () Bool)

(assert (=> b!51732 m!44507))

(assert (=> d!10423 m!44423))

(declare-fun m!44509 () Bool)

(assert (=> d!10423 m!44509))

(assert (=> d!10423 m!44465))

(declare-fun m!44511 () Bool)

(assert (=> d!10423 m!44511))

(declare-fun m!44513 () Bool)

(assert (=> d!10423 m!44513))

(declare-fun m!44515 () Bool)

(assert (=> d!10423 m!44515))

(assert (=> d!10423 m!44465))

(assert (=> d!10423 m!44509))

(declare-fun m!44517 () Bool)

(assert (=> d!10423 m!44517))

(assert (=> b!51678 d!10423))

(declare-fun b!51747 () Bool)

(declare-fun e!33577 () Bool)

(declare-fun call!3957 () Bool)

(assert (=> b!51747 (= e!33577 call!3957)))

(declare-fun b!51748 () Bool)

(assert (=> b!51748 (= e!33577 call!3957)))

(declare-fun b!51749 () Bool)

(declare-fun e!33579 () Bool)

(declare-fun e!33578 () Bool)

(assert (=> b!51749 (= e!33579 e!33578)))

(declare-fun res!29548 () Bool)

(assert (=> b!51749 (=> (not res!29548) (not e!33578))))

(declare-fun e!33580 () Bool)

(assert (=> b!51749 (= res!29548 (not e!33580))))

(declare-fun res!29547 () Bool)

(assert (=> b!51749 (=> (not res!29547) (not e!33580))))

(assert (=> b!51749 (= res!29547 (validKeyInArray!0 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10425 () Bool)

(declare-fun res!29546 () Bool)

(assert (=> d!10425 (=> res!29546 e!33579)))

(assert (=> d!10425 (= res!29546 (bvsge #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))))))

(assert (=> d!10425 (= (arrayNoDuplicates!0 (_keys!3549 newMap!16) #b00000000000000000000000000000000 Nil!1349) e!33579)))

(declare-fun b!51750 () Bool)

(declare-fun contains!624 (List!1352 (_ BitVec 64)) Bool)

(assert (=> b!51750 (= e!33580 (contains!624 Nil!1349 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51751 () Bool)

(assert (=> b!51751 (= e!33578 e!33577)))

(declare-fun c!6943 () Bool)

(assert (=> b!51751 (= c!6943 (validKeyInArray!0 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3954 () Bool)

(assert (=> bm!3954 (= call!3957 (arrayNoDuplicates!0 (_keys!3549 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6943 (Cons!1348 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000) Nil!1349) Nil!1349)))))

(assert (= (and d!10425 (not res!29546)) b!51749))

(assert (= (and b!51749 res!29547) b!51750))

(assert (= (and b!51749 res!29548) b!51751))

(assert (= (and b!51751 c!6943) b!51748))

(assert (= (and b!51751 (not c!6943)) b!51747))

(assert (= (or b!51748 b!51747) bm!3954))

(assert (=> b!51749 m!44489))

(assert (=> b!51749 m!44489))

(assert (=> b!51749 m!44491))

(assert (=> b!51750 m!44489))

(assert (=> b!51750 m!44489))

(declare-fun m!44519 () Bool)

(assert (=> b!51750 m!44519))

(assert (=> b!51751 m!44489))

(assert (=> b!51751 m!44489))

(assert (=> b!51751 m!44491))

(assert (=> bm!3954 m!44489))

(declare-fun m!44521 () Bool)

(assert (=> bm!3954 m!44521))

(assert (=> b!51687 d!10425))

(declare-fun bm!3955 () Bool)

(declare-fun call!3958 () Bool)

(assert (=> bm!3955 (= call!3958 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3549 newMap!16) (mask!5742 newMap!16)))))

(declare-fun b!51752 () Bool)

(declare-fun e!33581 () Bool)

(assert (=> b!51752 (= e!33581 call!3958)))

(declare-fun d!10427 () Bool)

(declare-fun res!29549 () Bool)

(declare-fun e!33583 () Bool)

(assert (=> d!10427 (=> res!29549 e!33583)))

(assert (=> d!10427 (= res!29549 (bvsge #b00000000000000000000000000000000 (size!1827 (_keys!3549 newMap!16))))))

(assert (=> d!10427 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3549 newMap!16) (mask!5742 newMap!16)) e!33583)))

(declare-fun b!51753 () Bool)

(assert (=> b!51753 (= e!33583 e!33581)))

(declare-fun c!6944 () Bool)

(assert (=> b!51753 (= c!6944 (validKeyInArray!0 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51754 () Bool)

(declare-fun e!33582 () Bool)

(assert (=> b!51754 (= e!33582 call!3958)))

(declare-fun b!51755 () Bool)

(assert (=> b!51755 (= e!33581 e!33582)))

(declare-fun lt!21226 () (_ BitVec 64))

(assert (=> b!51755 (= lt!21226 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!21224 () Unit!1428)

(assert (=> b!51755 (= lt!21224 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3549 newMap!16) lt!21226 #b00000000000000000000000000000000))))

(assert (=> b!51755 (arrayContainsKey!0 (_keys!3549 newMap!16) lt!21226 #b00000000000000000000000000000000)))

(declare-fun lt!21225 () Unit!1428)

(assert (=> b!51755 (= lt!21225 lt!21224)))

(declare-fun res!29550 () Bool)

(assert (=> b!51755 (= res!29550 (= (seekEntryOrOpen!0 (select (arr!1600 (_keys!3549 newMap!16)) #b00000000000000000000000000000000) (_keys!3549 newMap!16) (mask!5742 newMap!16)) (Found!233 #b00000000000000000000000000000000)))))

(assert (=> b!51755 (=> (not res!29550) (not e!33582))))

(assert (= (and d!10427 (not res!29549)) b!51753))

(assert (= (and b!51753 c!6944) b!51755))

(assert (= (and b!51753 (not c!6944)) b!51752))

(assert (= (and b!51755 res!29550) b!51754))

(assert (= (or b!51754 b!51752) bm!3955))

(declare-fun m!44523 () Bool)

(assert (=> bm!3955 m!44523))

(assert (=> b!51753 m!44489))

(assert (=> b!51753 m!44489))

(assert (=> b!51753 m!44491))

(assert (=> b!51755 m!44489))

(declare-fun m!44525 () Bool)

(assert (=> b!51755 m!44525))

(declare-fun m!44527 () Bool)

(assert (=> b!51755 m!44527))

(assert (=> b!51755 m!44489))

(declare-fun m!44529 () Bool)

(assert (=> b!51755 m!44529))

(assert (=> b!51686 d!10427))

(declare-fun bm!3956 () Bool)

(declare-fun call!3959 () Bool)

(assert (=> bm!3956 (= call!3959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))))))

(declare-fun b!51756 () Bool)

(declare-fun e!33584 () Bool)

(assert (=> b!51756 (= e!33584 call!3959)))

(declare-fun d!10429 () Bool)

(declare-fun res!29551 () Bool)

(declare-fun e!33586 () Bool)

(assert (=> d!10429 (=> res!29551 e!33586)))

(assert (=> d!10429 (= res!29551 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1827 (_keys!3549 (v!2193 (underlying!140 thiss!992))))))))

(assert (=> d!10429 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))) e!33586)))

(declare-fun b!51757 () Bool)

(assert (=> b!51757 (= e!33586 e!33584)))

(declare-fun c!6945 () Bool)

(assert (=> b!51757 (= c!6945 (validKeyInArray!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51758 () Bool)

(declare-fun e!33585 () Bool)

(assert (=> b!51758 (= e!33585 call!3959)))

(declare-fun b!51759 () Bool)

(assert (=> b!51759 (= e!33584 e!33585)))

(declare-fun lt!21229 () (_ BitVec 64))

(assert (=> b!51759 (= lt!21229 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21227 () Unit!1428)

(assert (=> b!51759 (= lt!21227 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21229 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!51759 (arrayContainsKey!0 (_keys!3549 (v!2193 (underlying!140 thiss!992))) lt!21229 #b00000000000000000000000000000000)))

(declare-fun lt!21228 () Unit!1428)

(assert (=> b!51759 (= lt!21228 lt!21227)))

(declare-fun res!29552 () Bool)

(assert (=> b!51759 (= res!29552 (= (seekEntryOrOpen!0 (select (arr!1600 (_keys!3549 (v!2193 (underlying!140 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3549 (v!2193 (underlying!140 thiss!992))) (mask!5742 (v!2193 (underlying!140 thiss!992)))) (Found!233 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!51759 (=> (not res!29552) (not e!33585))))

(assert (= (and d!10429 (not res!29551)) b!51757))

(assert (= (and b!51757 c!6945) b!51759))

(assert (= (and b!51757 (not c!6945)) b!51756))

(assert (= (and b!51759 res!29552) b!51758))

(assert (= (or b!51758 b!51756) bm!3956))

(declare-fun m!44531 () Bool)

(assert (=> bm!3956 m!44531))

(declare-fun m!44533 () Bool)

(assert (=> b!51757 m!44533))

(assert (=> b!51757 m!44533))

(declare-fun m!44535 () Bool)

(assert (=> b!51757 m!44535))

(assert (=> b!51759 m!44533))

(declare-fun m!44537 () Bool)

(assert (=> b!51759 m!44537))

(declare-fun m!44539 () Bool)

(assert (=> b!51759 m!44539))

(assert (=> b!51759 m!44533))

(declare-fun m!44541 () Bool)

(assert (=> b!51759 m!44541))

(assert (=> bm!3948 d!10429))

(declare-fun b!51769 () Bool)

(declare-fun res!29563 () Bool)

(declare-fun e!33589 () Bool)

(assert (=> b!51769 (=> (not res!29563) (not e!33589))))

(declare-fun size!1831 (LongMapFixedSize!438) (_ BitVec 32))

(assert (=> b!51769 (= res!29563 (bvsge (size!1831 newMap!16) (_size!268 newMap!16)))))

(declare-fun b!51768 () Bool)

(declare-fun res!29561 () Bool)

(assert (=> b!51768 (=> (not res!29561) (not e!33589))))

(assert (=> b!51768 (= res!29561 (and (= (size!1828 (_values!1916 newMap!16)) (bvadd (mask!5742 newMap!16) #b00000000000000000000000000000001)) (= (size!1827 (_keys!3549 newMap!16)) (size!1828 (_values!1916 newMap!16))) (bvsge (_size!268 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!268 newMap!16) (bvadd (mask!5742 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!10431 () Bool)

(declare-fun res!29564 () Bool)

(assert (=> d!10431 (=> (not res!29564) (not e!33589))))

(assert (=> d!10431 (= res!29564 (validMask!0 (mask!5742 newMap!16)))))

(assert (=> d!10431 (= (simpleValid!37 newMap!16) e!33589)))

(declare-fun b!51770 () Bool)

(declare-fun res!29562 () Bool)

(assert (=> b!51770 (=> (not res!29562) (not e!33589))))

(assert (=> b!51770 (= res!29562 (= (size!1831 newMap!16) (bvadd (_size!268 newMap!16) (bvsdiv (bvadd (extraKeys!1824 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!51771 () Bool)

(assert (=> b!51771 (= e!33589 (and (bvsge (extraKeys!1824 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1824 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!268 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!10431 res!29564) b!51768))

(assert (= (and b!51768 res!29561) b!51769))

(assert (= (and b!51769 res!29563) b!51770))

(assert (= (and b!51770 res!29562) b!51771))

(declare-fun m!44543 () Bool)

(assert (=> b!51769 m!44543))

(declare-fun m!44545 () Bool)

(assert (=> d!10431 m!44545))

(assert (=> b!51770 m!44543))

(assert (=> d!10405 d!10431))

(declare-fun b!51773 () Bool)

(declare-fun e!33591 () Bool)

(assert (=> b!51773 (= e!33591 tp_is_empty!2217)))

(declare-fun b!51772 () Bool)

(declare-fun e!33590 () Bool)

(assert (=> b!51772 (= e!33590 tp_is_empty!2217)))

(declare-fun mapIsEmpty!2321 () Bool)

(declare-fun mapRes!2321 () Bool)

(assert (=> mapIsEmpty!2321 mapRes!2321))

(declare-fun mapNonEmpty!2321 () Bool)

(declare-fun tp!6911 () Bool)

(assert (=> mapNonEmpty!2321 (= mapRes!2321 (and tp!6911 e!33590))))

(declare-fun mapRest!2321 () (Array (_ BitVec 32) ValueCell!765))

(declare-fun mapValue!2321 () ValueCell!765)

(declare-fun mapKey!2321 () (_ BitVec 32))

(assert (=> mapNonEmpty!2321 (= mapRest!2320 (store mapRest!2321 mapKey!2321 mapValue!2321))))

(declare-fun condMapEmpty!2321 () Bool)

(declare-fun mapDefault!2321 () ValueCell!765)

(assert (=> mapNonEmpty!2320 (= condMapEmpty!2321 (= mapRest!2320 ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2321)))))

(assert (=> mapNonEmpty!2320 (= tp!6910 (and e!33591 mapRes!2321))))

(assert (= (and mapNonEmpty!2320 condMapEmpty!2321) mapIsEmpty!2321))

(assert (= (and mapNonEmpty!2320 (not condMapEmpty!2321)) mapNonEmpty!2321))

(assert (= (and mapNonEmpty!2321 ((_ is ValueCellFull!765) mapValue!2321)) b!51772))

(assert (= (and mapNonEmpty!2320 ((_ is ValueCellFull!765) mapDefault!2321)) b!51773))

(declare-fun m!44547 () Bool)

(assert (=> mapNonEmpty!2321 m!44547))

(declare-fun b!51775 () Bool)

(declare-fun e!33593 () Bool)

(assert (=> b!51775 (= e!33593 tp_is_empty!2217)))

(declare-fun b!51774 () Bool)

(declare-fun e!33592 () Bool)

(assert (=> b!51774 (= e!33592 tp_is_empty!2217)))

(declare-fun mapIsEmpty!2322 () Bool)

(declare-fun mapRes!2322 () Bool)

(assert (=> mapIsEmpty!2322 mapRes!2322))

(declare-fun mapNonEmpty!2322 () Bool)

(declare-fun tp!6912 () Bool)

(assert (=> mapNonEmpty!2322 (= mapRes!2322 (and tp!6912 e!33592))))

(declare-fun mapKey!2322 () (_ BitVec 32))

(declare-fun mapValue!2322 () ValueCell!765)

(declare-fun mapRest!2322 () (Array (_ BitVec 32) ValueCell!765))

(assert (=> mapNonEmpty!2322 (= mapRest!2319 (store mapRest!2322 mapKey!2322 mapValue!2322))))

(declare-fun condMapEmpty!2322 () Bool)

(declare-fun mapDefault!2322 () ValueCell!765)

(assert (=> mapNonEmpty!2319 (= condMapEmpty!2322 (= mapRest!2319 ((as const (Array (_ BitVec 32) ValueCell!765)) mapDefault!2322)))))

(assert (=> mapNonEmpty!2319 (= tp!6909 (and e!33593 mapRes!2322))))

(assert (= (and mapNonEmpty!2319 condMapEmpty!2322) mapIsEmpty!2322))

(assert (= (and mapNonEmpty!2319 (not condMapEmpty!2322)) mapNonEmpty!2322))

(assert (= (and mapNonEmpty!2322 ((_ is ValueCellFull!765) mapValue!2322)) b!51774))

(assert (= (and mapNonEmpty!2319 ((_ is ValueCellFull!765) mapDefault!2322)) b!51775))

(declare-fun m!44549 () Bool)

(assert (=> mapNonEmpty!2322 m!44549))

(check-sat (not b!51769) (not b!51712) (not b_next!1601) b_and!2821 (not b!51753) (not b!51759) (not b!51711) (not b!51750) (not bm!3955) (not d!10419) (not b!51706) (not b!51732) (not d!10431) tp_is_empty!2217 (not b!51755) (not bm!3954) (not b_next!1603) (not bm!3951) (not b!51710) (not b!51751) (not mapNonEmpty!2322) (not d!10423) b_and!2823 (not b!51749) (not b!51718) (not mapNonEmpty!2321) (not b!51770) (not b!51757) (not d!10417) (not bm!3956))
(check-sat b_and!2821 b_and!2823 (not b_next!1601) (not b_next!1603))
