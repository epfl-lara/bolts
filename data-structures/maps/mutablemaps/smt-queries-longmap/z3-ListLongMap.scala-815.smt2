; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19942 () Bool)

(assert start!19942)

(declare-fun b!195549 () Bool)

(declare-fun b_free!4733 () Bool)

(declare-fun b_next!4733 () Bool)

(assert (=> b!195549 (= b_free!4733 (not b_next!4733))))

(declare-fun tp!17081 () Bool)

(declare-fun b_and!11497 () Bool)

(assert (=> b!195549 (= tp!17081 b_and!11497)))

(declare-fun b!195547 () Bool)

(declare-fun b_free!4735 () Bool)

(declare-fun b_next!4735 () Bool)

(assert (=> b!195547 (= b_free!4735 (not b_next!4735))))

(declare-fun tp!17083 () Bool)

(declare-fun b_and!11499 () Bool)

(assert (=> b!195547 (= tp!17083 b_and!11499)))

(declare-fun b!195540 () Bool)

(declare-datatypes ((V!5651 0))(
  ( (V!5652 (val!2296 Int)) )
))
(declare-datatypes ((tuple2!3560 0))(
  ( (tuple2!3561 (_1!1790 (_ BitVec 64)) (_2!1790 V!5651)) )
))
(declare-datatypes ((List!2473 0))(
  ( (Nil!2470) (Cons!2469 (h!3111 tuple2!3560) (t!7412 List!2473)) )
))
(declare-datatypes ((ListLongMap!2491 0))(
  ( (ListLongMap!2492 (toList!1261 List!2473)) )
))
(declare-fun lt!97504 () ListLongMap!2491)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun call!19756 () ListLongMap!2491)

(declare-fun v!309 () V!5651)

(declare-fun e!128658 () Bool)

(declare-fun +!318 (ListLongMap!2491 tuple2!3560) ListLongMap!2491)

(assert (=> b!195540 (= e!128658 (not (= lt!97504 (+!318 call!19756 (tuple2!3561 key!828 v!309)))))))

(declare-fun b!195541 () Bool)

(declare-fun e!128656 () Bool)

(declare-fun tp_is_empty!4503 () Bool)

(assert (=> b!195541 (= e!128656 tp_is_empty!4503)))

(declare-fun b!195542 () Bool)

(declare-fun res!92312 () Bool)

(declare-fun e!128648 () Bool)

(assert (=> b!195542 (=> (not res!92312) (not e!128648))))

(assert (=> b!195542 (= res!92312 (not (= key!828 (bvneg key!828))))))

(declare-fun b!195543 () Bool)

(declare-fun e!128646 () Bool)

(declare-fun e!128647 () Bool)

(declare-fun mapRes!7801 () Bool)

(assert (=> b!195543 (= e!128646 (and e!128647 mapRes!7801))))

(declare-fun condMapEmpty!7800 () Bool)

(declare-datatypes ((ValueCell!1908 0))(
  ( (ValueCellFull!1908 (v!4260 V!5651)) (EmptyCell!1908) )
))
(declare-datatypes ((array!8260 0))(
  ( (array!8261 (arr!3886 (Array (_ BitVec 32) (_ BitVec 64))) (size!4211 (_ BitVec 32))) )
))
(declare-datatypes ((array!8262 0))(
  ( (array!8263 (arr!3887 (Array (_ BitVec 32) ValueCell!1908)) (size!4212 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2724 0))(
  ( (LongMapFixedSize!2725 (defaultEntry!3976 Int) (mask!9252 (_ BitVec 32)) (extraKeys!3713 (_ BitVec 32)) (zeroValue!3817 V!5651) (minValue!3817 V!5651) (_size!1411 (_ BitVec 32)) (_keys!5975 array!8260) (_values!3959 array!8262) (_vacant!1411 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3562 0))(
  ( (tuple2!3563 (_1!1791 Bool) (_2!1791 LongMapFixedSize!2724)) )
))
(declare-fun err!103 () tuple2!3562)

(declare-fun mapDefault!7801 () ValueCell!1908)

(assert (=> b!195543 (= condMapEmpty!7800 (= (arr!3887 (_values!3959 (_2!1791 err!103))) ((as const (Array (_ BitVec 32) ValueCell!1908)) mapDefault!7801)))))

(declare-fun b!195544 () Bool)

(declare-fun e!128652 () Bool)

(declare-fun e!128659 () Bool)

(assert (=> b!195544 (= e!128652 e!128659)))

(declare-fun c!35389 () Bool)

(declare-fun lt!97506 () tuple2!3562)

(assert (=> b!195544 (= c!35389 (_1!1791 lt!97506))))

(declare-fun b!195545 () Bool)

(declare-fun e!128653 () Bool)

(declare-fun e!128651 () Bool)

(declare-fun mapRes!7800 () Bool)

(assert (=> b!195545 (= e!128653 (and e!128651 mapRes!7800))))

(declare-fun condMapEmpty!7801 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!2724)

(declare-fun mapDefault!7800 () ValueCell!1908)

(assert (=> b!195545 (= condMapEmpty!7801 (= (arr!3887 (_values!3959 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1908)) mapDefault!7800)))))

(declare-fun mapIsEmpty!7800 () Bool)

(assert (=> mapIsEmpty!7800 mapRes!7800))

(declare-fun bm!19752 () Bool)

(declare-fun map!2034 (LongMapFixedSize!2724) ListLongMap!2491)

(assert (=> bm!19752 (= call!19756 (map!2034 thiss!1248))))

(declare-fun mapNonEmpty!7800 () Bool)

(declare-fun tp!17080 () Bool)

(assert (=> mapNonEmpty!7800 (= mapRes!7800 (and tp!17080 e!128656))))

(declare-fun mapRest!7800 () (Array (_ BitVec 32) ValueCell!1908))

(declare-fun mapValue!7801 () ValueCell!1908)

(declare-fun mapKey!7800 () (_ BitVec 32))

(assert (=> mapNonEmpty!7800 (= (arr!3887 (_values!3959 thiss!1248)) (store mapRest!7800 mapKey!7800 mapValue!7801))))

(declare-fun b!195546 () Bool)

(declare-fun call!19755 () ListLongMap!2491)

(assert (=> b!195546 (= e!128659 (not (= call!19755 call!19756)))))

(declare-fun e!128654 () Bool)

(declare-fun array_inv!2513 (array!8260) Bool)

(declare-fun array_inv!2514 (array!8262) Bool)

(assert (=> b!195547 (= e!128654 (and tp!17083 tp_is_empty!4503 (array_inv!2513 (_keys!5975 thiss!1248)) (array_inv!2514 (_values!3959 thiss!1248)) e!128653))))

(declare-fun b!195548 () Bool)

(declare-fun e!128655 () Bool)

(assert (=> b!195548 (= e!128655 e!128652)))

(declare-fun res!92311 () Bool)

(assert (=> b!195548 (=> res!92311 e!128652)))

(declare-fun valid!1108 (LongMapFixedSize!2724) Bool)

(assert (=> b!195548 (= res!92311 (not (valid!1108 (_2!1791 lt!97506))))))

(assert (=> b!195548 (= lt!97506 err!103)))

(assert (=> b!195548 true))

(declare-fun e!128650 () Bool)

(assert (=> b!195548 e!128650))

(assert (=> b!195549 (= e!128650 (and tp!17081 tp_is_empty!4503 (array_inv!2513 (_keys!5975 (_2!1791 err!103))) (array_inv!2514 (_values!3959 (_2!1791 err!103))) e!128646))))

(declare-fun b!195550 () Bool)

(assert (=> b!195550 (= e!128651 tp_is_empty!4503)))

(declare-fun mapNonEmpty!7801 () Bool)

(declare-fun tp!17082 () Bool)

(declare-fun e!128649 () Bool)

(assert (=> mapNonEmpty!7801 (= mapRes!7801 (and tp!17082 e!128649))))

(declare-fun mapRest!7801 () (Array (_ BitVec 32) ValueCell!1908))

(declare-fun mapKey!7801 () (_ BitVec 32))

(declare-fun mapValue!7800 () ValueCell!1908)

(assert (=> mapNonEmpty!7801 (= (arr!3887 (_values!3959 (_2!1791 err!103))) (store mapRest!7801 mapKey!7801 mapValue!7800))))

(declare-fun b!195551 () Bool)

(assert (=> b!195551 (= e!128659 e!128658)))

(assert (=> b!195551 (= lt!97504 call!19755)))

(declare-fun res!92310 () Bool)

(declare-fun contains!1382 (ListLongMap!2491 (_ BitVec 64)) Bool)

(assert (=> b!195551 (= res!92310 (not (contains!1382 lt!97504 key!828)))))

(assert (=> b!195551 (=> res!92310 e!128658)))

(declare-fun res!92309 () Bool)

(assert (=> start!19942 (=> (not res!92309) (not e!128648))))

(assert (=> start!19942 (= res!92309 (valid!1108 thiss!1248))))

(assert (=> start!19942 e!128648))

(assert (=> start!19942 e!128654))

(assert (=> start!19942 true))

(assert (=> start!19942 tp_is_empty!4503))

(declare-fun bm!19753 () Bool)

(assert (=> bm!19753 (= call!19755 (map!2034 (_2!1791 lt!97506)))))

(declare-fun b!195552 () Bool)

(assert (=> b!195552 (= e!128649 tp_is_empty!4503)))

(declare-fun mapIsEmpty!7801 () Bool)

(assert (=> mapIsEmpty!7801 mapRes!7801))

(declare-fun b!195553 () Bool)

(assert (=> b!195553 (= e!128647 tp_is_empty!4503)))

(declare-fun b!195554 () Bool)

(assert (=> b!195554 (= e!128648 e!128655)))

(declare-fun res!92308 () Bool)

(assert (=> b!195554 (=> (not res!92308) (not e!128655))))

(declare-datatypes ((SeekEntryResult!709 0))(
  ( (MissingZero!709 (index!5006 (_ BitVec 32))) (Found!709 (index!5007 (_ BitVec 32))) (Intermediate!709 (undefined!1521 Bool) (index!5008 (_ BitVec 32)) (x!20764 (_ BitVec 32))) (Undefined!709) (MissingVacant!709 (index!5009 (_ BitVec 32))) )
))
(declare-fun lt!97505 () SeekEntryResult!709)

(get-info :version)

(assert (=> b!195554 (= res!92308 (and (not ((_ is Undefined!709) lt!97505)) (not ((_ is MissingVacant!709) lt!97505)) (not ((_ is MissingZero!709) lt!97505)) (not ((_ is Found!709) lt!97505))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8260 (_ BitVec 32)) SeekEntryResult!709)

(assert (=> b!195554 (= lt!97505 (seekEntryOrOpen!0 key!828 (_keys!5975 thiss!1248) (mask!9252 thiss!1248)))))

(assert (= (and start!19942 res!92309) b!195542))

(assert (= (and b!195542 res!92312) b!195554))

(assert (= (and b!195554 res!92308) b!195548))

(assert (= (and b!195543 condMapEmpty!7800) mapIsEmpty!7801))

(assert (= (and b!195543 (not condMapEmpty!7800)) mapNonEmpty!7801))

(assert (= (and mapNonEmpty!7801 ((_ is ValueCellFull!1908) mapValue!7800)) b!195552))

(assert (= (and b!195543 ((_ is ValueCellFull!1908) mapDefault!7801)) b!195553))

(assert (= b!195549 b!195543))

(assert (= b!195548 b!195549))

(assert (= (and b!195548 (not res!92311)) b!195544))

(assert (= (and b!195544 c!35389) b!195551))

(assert (= (and b!195544 (not c!35389)) b!195546))

(assert (= (and b!195551 (not res!92310)) b!195540))

(assert (= (or b!195540 b!195546) bm!19752))

(assert (= (or b!195551 b!195546) bm!19753))

(assert (= (and b!195545 condMapEmpty!7801) mapIsEmpty!7800))

(assert (= (and b!195545 (not condMapEmpty!7801)) mapNonEmpty!7800))

(assert (= (and mapNonEmpty!7800 ((_ is ValueCellFull!1908) mapValue!7801)) b!195541))

(assert (= (and b!195545 ((_ is ValueCellFull!1908) mapDefault!7800)) b!195550))

(assert (= b!195547 b!195545))

(assert (= start!19942 b!195547))

(declare-fun m!223117 () Bool)

(assert (=> b!195549 m!223117))

(declare-fun m!223119 () Bool)

(assert (=> b!195549 m!223119))

(declare-fun m!223121 () Bool)

(assert (=> mapNonEmpty!7801 m!223121))

(declare-fun m!223123 () Bool)

(assert (=> b!195551 m!223123))

(declare-fun m!223125 () Bool)

(assert (=> b!195540 m!223125))

(declare-fun m!223127 () Bool)

(assert (=> bm!19752 m!223127))

(declare-fun m!223129 () Bool)

(assert (=> b!195548 m!223129))

(declare-fun m!223131 () Bool)

(assert (=> start!19942 m!223131))

(declare-fun m!223133 () Bool)

(assert (=> b!195547 m!223133))

(declare-fun m!223135 () Bool)

(assert (=> b!195547 m!223135))

(declare-fun m!223137 () Bool)

(assert (=> mapNonEmpty!7800 m!223137))

(declare-fun m!223139 () Bool)

(assert (=> bm!19753 m!223139))

(declare-fun m!223141 () Bool)

(assert (=> b!195554 m!223141))

(check-sat (not mapNonEmpty!7801) (not b!195551) (not b!195554) (not b!195548) (not mapNonEmpty!7800) (not b_next!4733) (not b_next!4735) (not b!195549) (not b!195540) (not bm!19753) b_and!11499 tp_is_empty!4503 (not b!195547) b_and!11497 (not bm!19752) (not start!19942))
(check-sat b_and!11497 b_and!11499 (not b_next!4735) (not b_next!4733))
(get-model)

(declare-fun d!57415 () Bool)

(declare-fun getCurrentListMap!903 (array!8260 array!8262 (_ BitVec 32) (_ BitVec 32) V!5651 V!5651 (_ BitVec 32) Int) ListLongMap!2491)

(assert (=> d!57415 (= (map!2034 (_2!1791 lt!97506)) (getCurrentListMap!903 (_keys!5975 (_2!1791 lt!97506)) (_values!3959 (_2!1791 lt!97506)) (mask!9252 (_2!1791 lt!97506)) (extraKeys!3713 (_2!1791 lt!97506)) (zeroValue!3817 (_2!1791 lt!97506)) (minValue!3817 (_2!1791 lt!97506)) #b00000000000000000000000000000000 (defaultEntry!3976 (_2!1791 lt!97506))))))

(declare-fun bs!7812 () Bool)

(assert (= bs!7812 d!57415))

(declare-fun m!223169 () Bool)

(assert (=> bs!7812 m!223169))

(assert (=> bm!19753 d!57415))

(declare-fun b!195612 () Bool)

(declare-fun c!35400 () Bool)

(declare-fun lt!97524 () (_ BitVec 64))

(assert (=> b!195612 (= c!35400 (= lt!97524 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128712 () SeekEntryResult!709)

(declare-fun e!128713 () SeekEntryResult!709)

(assert (=> b!195612 (= e!128712 e!128713)))

(declare-fun b!195613 () Bool)

(declare-fun lt!97523 () SeekEntryResult!709)

(assert (=> b!195613 (= e!128712 (Found!709 (index!5008 lt!97523)))))

(declare-fun d!57417 () Bool)

(declare-fun lt!97522 () SeekEntryResult!709)

(assert (=> d!57417 (and (or ((_ is Undefined!709) lt!97522) (not ((_ is Found!709) lt!97522)) (and (bvsge (index!5007 lt!97522) #b00000000000000000000000000000000) (bvslt (index!5007 lt!97522) (size!4211 (_keys!5975 thiss!1248))))) (or ((_ is Undefined!709) lt!97522) ((_ is Found!709) lt!97522) (not ((_ is MissingZero!709) lt!97522)) (and (bvsge (index!5006 lt!97522) #b00000000000000000000000000000000) (bvslt (index!5006 lt!97522) (size!4211 (_keys!5975 thiss!1248))))) (or ((_ is Undefined!709) lt!97522) ((_ is Found!709) lt!97522) ((_ is MissingZero!709) lt!97522) (not ((_ is MissingVacant!709) lt!97522)) (and (bvsge (index!5009 lt!97522) #b00000000000000000000000000000000) (bvslt (index!5009 lt!97522) (size!4211 (_keys!5975 thiss!1248))))) (or ((_ is Undefined!709) lt!97522) (ite ((_ is Found!709) lt!97522) (= (select (arr!3886 (_keys!5975 thiss!1248)) (index!5007 lt!97522)) key!828) (ite ((_ is MissingZero!709) lt!97522) (= (select (arr!3886 (_keys!5975 thiss!1248)) (index!5006 lt!97522)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!709) lt!97522) (= (select (arr!3886 (_keys!5975 thiss!1248)) (index!5009 lt!97522)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!128714 () SeekEntryResult!709)

(assert (=> d!57417 (= lt!97522 e!128714)))

(declare-fun c!35399 () Bool)

(assert (=> d!57417 (= c!35399 (and ((_ is Intermediate!709) lt!97523) (undefined!1521 lt!97523)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8260 (_ BitVec 32)) SeekEntryResult!709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!57417 (= lt!97523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9252 thiss!1248)) key!828 (_keys!5975 thiss!1248) (mask!9252 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!57417 (validMask!0 (mask!9252 thiss!1248))))

(assert (=> d!57417 (= (seekEntryOrOpen!0 key!828 (_keys!5975 thiss!1248) (mask!9252 thiss!1248)) lt!97522)))

(declare-fun b!195614 () Bool)

(assert (=> b!195614 (= e!128714 e!128712)))

(assert (=> b!195614 (= lt!97524 (select (arr!3886 (_keys!5975 thiss!1248)) (index!5008 lt!97523)))))

(declare-fun c!35401 () Bool)

(assert (=> b!195614 (= c!35401 (= lt!97524 key!828))))

(declare-fun b!195615 () Bool)

(assert (=> b!195615 (= e!128713 (MissingZero!709 (index!5008 lt!97523)))))

(declare-fun b!195616 () Bool)

(assert (=> b!195616 (= e!128714 Undefined!709)))

(declare-fun b!195617 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8260 (_ BitVec 32)) SeekEntryResult!709)

(assert (=> b!195617 (= e!128713 (seekKeyOrZeroReturnVacant!0 (x!20764 lt!97523) (index!5008 lt!97523) (index!5008 lt!97523) key!828 (_keys!5975 thiss!1248) (mask!9252 thiss!1248)))))

(assert (= (and d!57417 c!35399) b!195616))

(assert (= (and d!57417 (not c!35399)) b!195614))

(assert (= (and b!195614 c!35401) b!195613))

(assert (= (and b!195614 (not c!35401)) b!195612))

(assert (= (and b!195612 c!35400) b!195615))

(assert (= (and b!195612 (not c!35400)) b!195617))

(declare-fun m!223171 () Bool)

(assert (=> d!57417 m!223171))

(declare-fun m!223173 () Bool)

(assert (=> d!57417 m!223173))

(declare-fun m!223175 () Bool)

(assert (=> d!57417 m!223175))

(declare-fun m!223177 () Bool)

(assert (=> d!57417 m!223177))

(declare-fun m!223179 () Bool)

(assert (=> d!57417 m!223179))

(assert (=> d!57417 m!223173))

(declare-fun m!223181 () Bool)

(assert (=> d!57417 m!223181))

(declare-fun m!223183 () Bool)

(assert (=> b!195614 m!223183))

(declare-fun m!223185 () Bool)

(assert (=> b!195617 m!223185))

(assert (=> b!195554 d!57417))

(declare-fun d!57419 () Bool)

(assert (=> d!57419 (= (array_inv!2513 (_keys!5975 thiss!1248)) (bvsge (size!4211 (_keys!5975 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!195547 d!57419))

(declare-fun d!57421 () Bool)

(assert (=> d!57421 (= (array_inv!2514 (_values!3959 thiss!1248)) (bvsge (size!4212 (_values!3959 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!195547 d!57421))

(declare-fun d!57423 () Bool)

(declare-fun e!128720 () Bool)

(assert (=> d!57423 e!128720))

(declare-fun res!92330 () Bool)

(assert (=> d!57423 (=> res!92330 e!128720)))

(declare-fun lt!97534 () Bool)

(assert (=> d!57423 (= res!92330 (not lt!97534))))

(declare-fun lt!97536 () Bool)

(assert (=> d!57423 (= lt!97534 lt!97536)))

(declare-datatypes ((Unit!5936 0))(
  ( (Unit!5937) )
))
(declare-fun lt!97535 () Unit!5936)

(declare-fun e!128719 () Unit!5936)

(assert (=> d!57423 (= lt!97535 e!128719)))

(declare-fun c!35404 () Bool)

(assert (=> d!57423 (= c!35404 lt!97536)))

(declare-fun containsKey!249 (List!2473 (_ BitVec 64)) Bool)

(assert (=> d!57423 (= lt!97536 (containsKey!249 (toList!1261 lt!97504) key!828))))

(assert (=> d!57423 (= (contains!1382 lt!97504 key!828) lt!97534)))

(declare-fun b!195624 () Bool)

(declare-fun lt!97533 () Unit!5936)

(assert (=> b!195624 (= e!128719 lt!97533)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!198 (List!2473 (_ BitVec 64)) Unit!5936)

(assert (=> b!195624 (= lt!97533 (lemmaContainsKeyImpliesGetValueByKeyDefined!198 (toList!1261 lt!97504) key!828))))

(declare-datatypes ((Option!251 0))(
  ( (Some!250 (v!4262 V!5651)) (None!249) )
))
(declare-fun isDefined!199 (Option!251) Bool)

(declare-fun getValueByKey!245 (List!2473 (_ BitVec 64)) Option!251)

(assert (=> b!195624 (isDefined!199 (getValueByKey!245 (toList!1261 lt!97504) key!828))))

(declare-fun b!195625 () Bool)

(declare-fun Unit!5938 () Unit!5936)

(assert (=> b!195625 (= e!128719 Unit!5938)))

(declare-fun b!195626 () Bool)

(assert (=> b!195626 (= e!128720 (isDefined!199 (getValueByKey!245 (toList!1261 lt!97504) key!828)))))

(assert (= (and d!57423 c!35404) b!195624))

(assert (= (and d!57423 (not c!35404)) b!195625))

(assert (= (and d!57423 (not res!92330)) b!195626))

(declare-fun m!223187 () Bool)

(assert (=> d!57423 m!223187))

(declare-fun m!223189 () Bool)

(assert (=> b!195624 m!223189))

(declare-fun m!223191 () Bool)

(assert (=> b!195624 m!223191))

(assert (=> b!195624 m!223191))

(declare-fun m!223193 () Bool)

(assert (=> b!195624 m!223193))

(assert (=> b!195626 m!223191))

(assert (=> b!195626 m!223191))

(assert (=> b!195626 m!223193))

(assert (=> b!195551 d!57423))

(declare-fun d!57425 () Bool)

(declare-fun e!128723 () Bool)

(assert (=> d!57425 e!128723))

(declare-fun res!92336 () Bool)

(assert (=> d!57425 (=> (not res!92336) (not e!128723))))

(declare-fun lt!97548 () ListLongMap!2491)

(assert (=> d!57425 (= res!92336 (contains!1382 lt!97548 (_1!1790 (tuple2!3561 key!828 v!309))))))

(declare-fun lt!97545 () List!2473)

(assert (=> d!57425 (= lt!97548 (ListLongMap!2492 lt!97545))))

(declare-fun lt!97547 () Unit!5936)

(declare-fun lt!97546 () Unit!5936)

(assert (=> d!57425 (= lt!97547 lt!97546)))

(assert (=> d!57425 (= (getValueByKey!245 lt!97545 (_1!1790 (tuple2!3561 key!828 v!309))) (Some!250 (_2!1790 (tuple2!3561 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!134 (List!2473 (_ BitVec 64) V!5651) Unit!5936)

(assert (=> d!57425 (= lt!97546 (lemmaContainsTupThenGetReturnValue!134 lt!97545 (_1!1790 (tuple2!3561 key!828 v!309)) (_2!1790 (tuple2!3561 key!828 v!309))))))

(declare-fun insertStrictlySorted!136 (List!2473 (_ BitVec 64) V!5651) List!2473)

(assert (=> d!57425 (= lt!97545 (insertStrictlySorted!136 (toList!1261 call!19756) (_1!1790 (tuple2!3561 key!828 v!309)) (_2!1790 (tuple2!3561 key!828 v!309))))))

(assert (=> d!57425 (= (+!318 call!19756 (tuple2!3561 key!828 v!309)) lt!97548)))

(declare-fun b!195631 () Bool)

(declare-fun res!92335 () Bool)

(assert (=> b!195631 (=> (not res!92335) (not e!128723))))

(assert (=> b!195631 (= res!92335 (= (getValueByKey!245 (toList!1261 lt!97548) (_1!1790 (tuple2!3561 key!828 v!309))) (Some!250 (_2!1790 (tuple2!3561 key!828 v!309)))))))

(declare-fun b!195632 () Bool)

(declare-fun contains!1383 (List!2473 tuple2!3560) Bool)

(assert (=> b!195632 (= e!128723 (contains!1383 (toList!1261 lt!97548) (tuple2!3561 key!828 v!309)))))

(assert (= (and d!57425 res!92336) b!195631))

(assert (= (and b!195631 res!92335) b!195632))

(declare-fun m!223195 () Bool)

(assert (=> d!57425 m!223195))

(declare-fun m!223197 () Bool)

(assert (=> d!57425 m!223197))

(declare-fun m!223199 () Bool)

(assert (=> d!57425 m!223199))

(declare-fun m!223201 () Bool)

(assert (=> d!57425 m!223201))

(declare-fun m!223203 () Bool)

(assert (=> b!195631 m!223203))

(declare-fun m!223205 () Bool)

(assert (=> b!195632 m!223205))

(assert (=> b!195540 d!57425))

(declare-fun d!57427 () Bool)

(assert (=> d!57427 (= (array_inv!2513 (_keys!5975 (_2!1791 err!103))) (bvsge (size!4211 (_keys!5975 (_2!1791 err!103))) #b00000000000000000000000000000000))))

(assert (=> b!195549 d!57427))

(declare-fun d!57429 () Bool)

(assert (=> d!57429 (= (array_inv!2514 (_values!3959 (_2!1791 err!103))) (bvsge (size!4212 (_values!3959 (_2!1791 err!103))) #b00000000000000000000000000000000))))

(assert (=> b!195549 d!57429))

(declare-fun d!57431 () Bool)

(declare-fun res!92343 () Bool)

(declare-fun e!128726 () Bool)

(assert (=> d!57431 (=> (not res!92343) (not e!128726))))

(declare-fun simpleValid!205 (LongMapFixedSize!2724) Bool)

(assert (=> d!57431 (= res!92343 (simpleValid!205 thiss!1248))))

(assert (=> d!57431 (= (valid!1108 thiss!1248) e!128726)))

(declare-fun b!195639 () Bool)

(declare-fun res!92344 () Bool)

(assert (=> b!195639 (=> (not res!92344) (not e!128726))))

(declare-fun arrayCountValidKeys!0 (array!8260 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!195639 (= res!92344 (= (arrayCountValidKeys!0 (_keys!5975 thiss!1248) #b00000000000000000000000000000000 (size!4211 (_keys!5975 thiss!1248))) (_size!1411 thiss!1248)))))

(declare-fun b!195640 () Bool)

(declare-fun res!92345 () Bool)

(assert (=> b!195640 (=> (not res!92345) (not e!128726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8260 (_ BitVec 32)) Bool)

(assert (=> b!195640 (= res!92345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5975 thiss!1248) (mask!9252 thiss!1248)))))

(declare-fun b!195641 () Bool)

(declare-datatypes ((List!2474 0))(
  ( (Nil!2471) (Cons!2470 (h!3112 (_ BitVec 64)) (t!7413 List!2474)) )
))
(declare-fun arrayNoDuplicates!0 (array!8260 (_ BitVec 32) List!2474) Bool)

(assert (=> b!195641 (= e!128726 (arrayNoDuplicates!0 (_keys!5975 thiss!1248) #b00000000000000000000000000000000 Nil!2471))))

(assert (= (and d!57431 res!92343) b!195639))

(assert (= (and b!195639 res!92344) b!195640))

(assert (= (and b!195640 res!92345) b!195641))

(declare-fun m!223207 () Bool)

(assert (=> d!57431 m!223207))

(declare-fun m!223209 () Bool)

(assert (=> b!195639 m!223209))

(declare-fun m!223211 () Bool)

(assert (=> b!195640 m!223211))

(declare-fun m!223213 () Bool)

(assert (=> b!195641 m!223213))

(assert (=> start!19942 d!57431))

(declare-fun d!57433 () Bool)

(assert (=> d!57433 (= (map!2034 thiss!1248) (getCurrentListMap!903 (_keys!5975 thiss!1248) (_values!3959 thiss!1248) (mask!9252 thiss!1248) (extraKeys!3713 thiss!1248) (zeroValue!3817 thiss!1248) (minValue!3817 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3976 thiss!1248)))))

(declare-fun bs!7813 () Bool)

(assert (= bs!7813 d!57433))

(declare-fun m!223215 () Bool)

(assert (=> bs!7813 m!223215))

(assert (=> bm!19752 d!57433))

(declare-fun d!57435 () Bool)

(declare-fun res!92346 () Bool)

(declare-fun e!128727 () Bool)

(assert (=> d!57435 (=> (not res!92346) (not e!128727))))

(assert (=> d!57435 (= res!92346 (simpleValid!205 (_2!1791 lt!97506)))))

(assert (=> d!57435 (= (valid!1108 (_2!1791 lt!97506)) e!128727)))

(declare-fun b!195642 () Bool)

(declare-fun res!92347 () Bool)

(assert (=> b!195642 (=> (not res!92347) (not e!128727))))

(assert (=> b!195642 (= res!92347 (= (arrayCountValidKeys!0 (_keys!5975 (_2!1791 lt!97506)) #b00000000000000000000000000000000 (size!4211 (_keys!5975 (_2!1791 lt!97506)))) (_size!1411 (_2!1791 lt!97506))))))

(declare-fun b!195643 () Bool)

(declare-fun res!92348 () Bool)

(assert (=> b!195643 (=> (not res!92348) (not e!128727))))

(assert (=> b!195643 (= res!92348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5975 (_2!1791 lt!97506)) (mask!9252 (_2!1791 lt!97506))))))

(declare-fun b!195644 () Bool)

(assert (=> b!195644 (= e!128727 (arrayNoDuplicates!0 (_keys!5975 (_2!1791 lt!97506)) #b00000000000000000000000000000000 Nil!2471))))

(assert (= (and d!57435 res!92346) b!195642))

(assert (= (and b!195642 res!92347) b!195643))

(assert (= (and b!195643 res!92348) b!195644))

(declare-fun m!223217 () Bool)

(assert (=> d!57435 m!223217))

(declare-fun m!223219 () Bool)

(assert (=> b!195642 m!223219))

(declare-fun m!223221 () Bool)

(assert (=> b!195643 m!223221))

(declare-fun m!223223 () Bool)

(assert (=> b!195644 m!223223))

(assert (=> b!195548 d!57435))

(declare-fun mapIsEmpty!7810 () Bool)

(declare-fun mapRes!7810 () Bool)

(assert (=> mapIsEmpty!7810 mapRes!7810))

(declare-fun mapNonEmpty!7810 () Bool)

(declare-fun tp!17098 () Bool)

(declare-fun e!128732 () Bool)

(assert (=> mapNonEmpty!7810 (= mapRes!7810 (and tp!17098 e!128732))))

(declare-fun mapValue!7810 () ValueCell!1908)

(declare-fun mapKey!7810 () (_ BitVec 32))

(declare-fun mapRest!7810 () (Array (_ BitVec 32) ValueCell!1908))

(assert (=> mapNonEmpty!7810 (= mapRest!7800 (store mapRest!7810 mapKey!7810 mapValue!7810))))

(declare-fun condMapEmpty!7810 () Bool)

(declare-fun mapDefault!7810 () ValueCell!1908)

(assert (=> mapNonEmpty!7800 (= condMapEmpty!7810 (= mapRest!7800 ((as const (Array (_ BitVec 32) ValueCell!1908)) mapDefault!7810)))))

(declare-fun e!128733 () Bool)

(assert (=> mapNonEmpty!7800 (= tp!17080 (and e!128733 mapRes!7810))))

(declare-fun b!195651 () Bool)

(assert (=> b!195651 (= e!128732 tp_is_empty!4503)))

(declare-fun b!195652 () Bool)

(assert (=> b!195652 (= e!128733 tp_is_empty!4503)))

(assert (= (and mapNonEmpty!7800 condMapEmpty!7810) mapIsEmpty!7810))

(assert (= (and mapNonEmpty!7800 (not condMapEmpty!7810)) mapNonEmpty!7810))

(assert (= (and mapNonEmpty!7810 ((_ is ValueCellFull!1908) mapValue!7810)) b!195651))

(assert (= (and mapNonEmpty!7800 ((_ is ValueCellFull!1908) mapDefault!7810)) b!195652))

(declare-fun m!223225 () Bool)

(assert (=> mapNonEmpty!7810 m!223225))

(declare-fun mapIsEmpty!7811 () Bool)

(declare-fun mapRes!7811 () Bool)

(assert (=> mapIsEmpty!7811 mapRes!7811))

(declare-fun mapNonEmpty!7811 () Bool)

(declare-fun tp!17099 () Bool)

(declare-fun e!128734 () Bool)

(assert (=> mapNonEmpty!7811 (= mapRes!7811 (and tp!17099 e!128734))))

(declare-fun mapKey!7811 () (_ BitVec 32))

(declare-fun mapValue!7811 () ValueCell!1908)

(declare-fun mapRest!7811 () (Array (_ BitVec 32) ValueCell!1908))

(assert (=> mapNonEmpty!7811 (= mapRest!7801 (store mapRest!7811 mapKey!7811 mapValue!7811))))

(declare-fun condMapEmpty!7811 () Bool)

(declare-fun mapDefault!7811 () ValueCell!1908)

(assert (=> mapNonEmpty!7801 (= condMapEmpty!7811 (= mapRest!7801 ((as const (Array (_ BitVec 32) ValueCell!1908)) mapDefault!7811)))))

(declare-fun e!128735 () Bool)

(assert (=> mapNonEmpty!7801 (= tp!17082 (and e!128735 mapRes!7811))))

(declare-fun b!195653 () Bool)

(assert (=> b!195653 (= e!128734 tp_is_empty!4503)))

(declare-fun b!195654 () Bool)

(assert (=> b!195654 (= e!128735 tp_is_empty!4503)))

(assert (= (and mapNonEmpty!7801 condMapEmpty!7811) mapIsEmpty!7811))

(assert (= (and mapNonEmpty!7801 (not condMapEmpty!7811)) mapNonEmpty!7811))

(assert (= (and mapNonEmpty!7811 ((_ is ValueCellFull!1908) mapValue!7811)) b!195653))

(assert (= (and mapNonEmpty!7801 ((_ is ValueCellFull!1908) mapDefault!7811)) b!195654))

(declare-fun m!223227 () Bool)

(assert (=> mapNonEmpty!7811 m!223227))

(check-sat (not b!195624) (not d!57425) (not b!195642) b_and!11497 (not b_next!4733) (not d!57433) (not d!57423) (not d!57435) (not b!195643) (not b!195617) (not b!195631) b_and!11499 tp_is_empty!4503 (not mapNonEmpty!7811) (not d!57431) (not mapNonEmpty!7810) (not b!195632) (not b!195641) (not d!57415) (not b!195626) (not d!57417) (not b_next!4735) (not b!195640) (not b!195639) (not b!195644))
(check-sat b_and!11497 b_and!11499 (not b_next!4735) (not b_next!4733))
