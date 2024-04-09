; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18918 () Bool)

(assert start!18918)

(declare-fun b!186597 () Bool)

(declare-fun b_free!4599 () Bool)

(declare-fun b_next!4599 () Bool)

(assert (=> b!186597 (= b_free!4599 (not b_next!4599))))

(declare-fun tp!16603 () Bool)

(declare-fun b_and!11227 () Bool)

(assert (=> b!186597 (= tp!16603 b_and!11227)))

(declare-fun tp_is_empty!4371 () Bool)

(declare-fun e!122817 () Bool)

(declare-datatypes ((V!5475 0))(
  ( (V!5476 (val!2230 Int)) )
))
(declare-datatypes ((ValueCell!1842 0))(
  ( (ValueCellFull!1842 (v!4139 V!5475)) (EmptyCell!1842) )
))
(declare-datatypes ((array!7954 0))(
  ( (array!7955 (arr!3754 (Array (_ BitVec 32) (_ BitVec 64))) (size!4071 (_ BitVec 32))) )
))
(declare-datatypes ((array!7956 0))(
  ( (array!7957 (arr!3755 (Array (_ BitVec 32) ValueCell!1842)) (size!4072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2592 0))(
  ( (LongMapFixedSize!2593 (defaultEntry!3807 Int) (mask!8938 (_ BitVec 32)) (extraKeys!3544 (_ BitVec 32)) (zeroValue!3648 V!5475) (minValue!3648 V!5475) (_size!1345 (_ BitVec 32)) (_keys!5753 array!7954) (_values!3790 array!7956) (_vacant!1345 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2592)

(declare-fun e!122822 () Bool)

(declare-fun array_inv!2417 (array!7954) Bool)

(declare-fun array_inv!2418 (array!7956) Bool)

(assert (=> b!186597 (= e!122817 (and tp!16603 tp_is_empty!4371 (array_inv!2417 (_keys!5753 thiss!1248)) (array_inv!2418 (_values!3790 thiss!1248)) e!122822))))

(declare-fun b!186598 () Bool)

(declare-fun e!122820 () Bool)

(assert (=> b!186598 (= e!122820 tp_is_empty!4371)))

(declare-fun b!186599 () Bool)

(declare-datatypes ((Unit!5618 0))(
  ( (Unit!5619) )
))
(declare-fun e!122825 () Unit!5618)

(declare-fun lt!92319 () Unit!5618)

(assert (=> b!186599 (= e!122825 lt!92319)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!147 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 64) Int) Unit!5618)

(assert (=> b!186599 (= lt!92319 (lemmaInListMapThenSeekEntryOrOpenFindsIt!147 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)))))

(declare-fun res!88273 () Bool)

(declare-datatypes ((SeekEntryResult!654 0))(
  ( (MissingZero!654 (index!4786 (_ BitVec 32))) (Found!654 (index!4787 (_ BitVec 32))) (Intermediate!654 (undefined!1466 Bool) (index!4788 (_ BitVec 32)) (x!20244 (_ BitVec 32))) (Undefined!654) (MissingVacant!654 (index!4789 (_ BitVec 32))) )
))
(declare-fun lt!92317 () SeekEntryResult!654)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!186599 (= res!88273 (inRange!0 (index!4787 lt!92317) (mask!8938 thiss!1248)))))

(declare-fun e!122818 () Bool)

(assert (=> b!186599 (=> (not res!88273) (not e!122818))))

(assert (=> b!186599 e!122818))

(declare-fun mapNonEmpty!7525 () Bool)

(declare-fun mapRes!7525 () Bool)

(declare-fun tp!16602 () Bool)

(declare-fun e!122819 () Bool)

(assert (=> mapNonEmpty!7525 (= mapRes!7525 (and tp!16602 e!122819))))

(declare-fun mapValue!7525 () ValueCell!1842)

(declare-fun mapRest!7525 () (Array (_ BitVec 32) ValueCell!1842))

(declare-fun mapKey!7525 () (_ BitVec 32))

(assert (=> mapNonEmpty!7525 (= (arr!3755 (_values!3790 thiss!1248)) (store mapRest!7525 mapKey!7525 mapValue!7525))))

(declare-fun mapIsEmpty!7525 () Bool)

(assert (=> mapIsEmpty!7525 mapRes!7525))

(declare-fun b!186600 () Bool)

(assert (=> b!186600 (= e!122819 tp_is_empty!4371)))

(declare-fun b!186601 () Bool)

(assert (=> b!186601 (= e!122822 (and e!122820 mapRes!7525))))

(declare-fun condMapEmpty!7525 () Bool)

(declare-fun mapDefault!7525 () ValueCell!1842)

(assert (=> b!186601 (= condMapEmpty!7525 (= (arr!3755 (_values!3790 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1842)) mapDefault!7525)))))

(declare-fun b!186602 () Bool)

(assert (=> b!186602 (= e!122818 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4787 lt!92317)) key!828))))

(declare-fun res!88276 () Bool)

(declare-fun e!122824 () Bool)

(assert (=> start!18918 (=> (not res!88276) (not e!122824))))

(declare-fun valid!1059 (LongMapFixedSize!2592) Bool)

(assert (=> start!18918 (= res!88276 (valid!1059 thiss!1248))))

(assert (=> start!18918 e!122824))

(assert (=> start!18918 e!122817))

(assert (=> start!18918 true))

(declare-fun b!186603 () Bool)

(declare-fun e!122823 () Bool)

(declare-fun e!122821 () Bool)

(assert (=> b!186603 (= e!122823 e!122821)))

(declare-fun res!88275 () Bool)

(assert (=> b!186603 (=> (not res!88275) (not e!122821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!186603 (= res!88275 (validMask!0 (mask!8938 thiss!1248)))))

(declare-fun lt!92316 () Unit!5618)

(assert (=> b!186603 (= lt!92316 e!122825)))

(declare-fun c!33460 () Bool)

(declare-datatypes ((tuple2!3466 0))(
  ( (tuple2!3467 (_1!1743 (_ BitVec 64)) (_2!1743 V!5475)) )
))
(declare-datatypes ((List!2396 0))(
  ( (Nil!2393) (Cons!2392 (h!3026 tuple2!3466) (t!7292 List!2396)) )
))
(declare-datatypes ((ListLongMap!2397 0))(
  ( (ListLongMap!2398 (toList!1214 List!2396)) )
))
(declare-fun contains!1306 (ListLongMap!2397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!857 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 32) Int) ListLongMap!2397)

(assert (=> b!186603 (= c!33460 (contains!1306 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)) key!828))))

(declare-fun b!186604 () Bool)

(assert (=> b!186604 (= e!122821 (and (= (size!4072 (_values!3790 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8938 thiss!1248))) (not (= (size!4071 (_keys!5753 thiss!1248)) (size!4072 (_values!3790 thiss!1248))))))))

(declare-fun b!186605 () Bool)

(assert (=> b!186605 (= e!122824 e!122823)))

(declare-fun res!88272 () Bool)

(assert (=> b!186605 (=> (not res!88272) (not e!122823))))

(get-info :version)

(assert (=> b!186605 (= res!88272 (and (not ((_ is Undefined!654) lt!92317)) (not ((_ is MissingVacant!654) lt!92317)) (not ((_ is MissingZero!654) lt!92317)) ((_ is Found!654) lt!92317)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7954 (_ BitVec 32)) SeekEntryResult!654)

(assert (=> b!186605 (= lt!92317 (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun b!186606 () Bool)

(declare-fun res!88274 () Bool)

(assert (=> b!186606 (=> (not res!88274) (not e!122824))))

(assert (=> b!186606 (= res!88274 (not (= key!828 (bvneg key!828))))))

(declare-fun b!186607 () Bool)

(declare-fun Unit!5620 () Unit!5618)

(assert (=> b!186607 (= e!122825 Unit!5620)))

(declare-fun lt!92318 () Unit!5618)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!146 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 64) Int) Unit!5618)

(assert (=> b!186607 (= lt!92318 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!146 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)))))

(assert (=> b!186607 false))

(assert (= (and start!18918 res!88276) b!186606))

(assert (= (and b!186606 res!88274) b!186605))

(assert (= (and b!186605 res!88272) b!186603))

(assert (= (and b!186603 c!33460) b!186599))

(assert (= (and b!186603 (not c!33460)) b!186607))

(assert (= (and b!186599 res!88273) b!186602))

(assert (= (and b!186603 res!88275) b!186604))

(assert (= (and b!186601 condMapEmpty!7525) mapIsEmpty!7525))

(assert (= (and b!186601 (not condMapEmpty!7525)) mapNonEmpty!7525))

(assert (= (and mapNonEmpty!7525 ((_ is ValueCellFull!1842) mapValue!7525)) b!186600))

(assert (= (and b!186601 ((_ is ValueCellFull!1842) mapDefault!7525)) b!186598))

(assert (= b!186597 b!186601))

(assert (= start!18918 b!186597))

(declare-fun m!213561 () Bool)

(assert (=> b!186602 m!213561))

(declare-fun m!213563 () Bool)

(assert (=> b!186605 m!213563))

(declare-fun m!213565 () Bool)

(assert (=> b!186607 m!213565))

(declare-fun m!213567 () Bool)

(assert (=> start!18918 m!213567))

(declare-fun m!213569 () Bool)

(assert (=> b!186603 m!213569))

(declare-fun m!213571 () Bool)

(assert (=> b!186603 m!213571))

(assert (=> b!186603 m!213571))

(declare-fun m!213573 () Bool)

(assert (=> b!186603 m!213573))

(declare-fun m!213575 () Bool)

(assert (=> b!186599 m!213575))

(declare-fun m!213577 () Bool)

(assert (=> b!186599 m!213577))

(declare-fun m!213579 () Bool)

(assert (=> b!186597 m!213579))

(declare-fun m!213581 () Bool)

(assert (=> b!186597 m!213581))

(declare-fun m!213583 () Bool)

(assert (=> mapNonEmpty!7525 m!213583))

(check-sat tp_is_empty!4371 (not mapNonEmpty!7525) b_and!11227 (not b!186605) (not b!186599) (not b!186597) (not start!18918) (not b!186607) (not b_next!4599) (not b!186603))
(check-sat b_and!11227 (not b_next!4599))
(get-model)

(declare-fun d!55187 () Bool)

(declare-fun e!122858 () Bool)

(assert (=> d!55187 e!122858))

(declare-fun res!88296 () Bool)

(assert (=> d!55187 (=> (not res!88296) (not e!122858))))

(declare-fun lt!92337 () SeekEntryResult!654)

(assert (=> d!55187 (= res!88296 ((_ is Found!654) lt!92337))))

(assert (=> d!55187 (= lt!92337 (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun lt!92336 () Unit!5618)

(declare-fun choose!997 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 64) Int) Unit!5618)

(assert (=> d!55187 (= lt!92336 (choose!997 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)))))

(assert (=> d!55187 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55187 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!147 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)) lt!92336)))

(declare-fun b!186645 () Bool)

(declare-fun res!88297 () Bool)

(assert (=> b!186645 (=> (not res!88297) (not e!122858))))

(assert (=> b!186645 (= res!88297 (inRange!0 (index!4787 lt!92337) (mask!8938 thiss!1248)))))

(declare-fun b!186646 () Bool)

(assert (=> b!186646 (= e!122858 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4787 lt!92337)) key!828))))

(assert (=> b!186646 (and (bvsge (index!4787 lt!92337) #b00000000000000000000000000000000) (bvslt (index!4787 lt!92337) (size!4071 (_keys!5753 thiss!1248))))))

(assert (= (and d!55187 res!88296) b!186645))

(assert (= (and b!186645 res!88297) b!186646))

(assert (=> d!55187 m!213563))

(declare-fun m!213609 () Bool)

(assert (=> d!55187 m!213609))

(assert (=> d!55187 m!213569))

(declare-fun m!213611 () Bool)

(assert (=> b!186645 m!213611))

(declare-fun m!213613 () Bool)

(assert (=> b!186646 m!213613))

(assert (=> b!186599 d!55187))

(declare-fun d!55189 () Bool)

(assert (=> d!55189 (= (inRange!0 (index!4787 lt!92317) (mask!8938 thiss!1248)) (and (bvsge (index!4787 lt!92317) #b00000000000000000000000000000000) (bvslt (index!4787 lt!92317) (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!186599 d!55189))

(declare-fun d!55191 () Bool)

(assert (=> d!55191 (= (validMask!0 (mask!8938 thiss!1248)) (and (or (= (mask!8938 thiss!1248) #b00000000000000000000000000000111) (= (mask!8938 thiss!1248) #b00000000000000000000000000001111) (= (mask!8938 thiss!1248) #b00000000000000000000000000011111) (= (mask!8938 thiss!1248) #b00000000000000000000000000111111) (= (mask!8938 thiss!1248) #b00000000000000000000000001111111) (= (mask!8938 thiss!1248) #b00000000000000000000000011111111) (= (mask!8938 thiss!1248) #b00000000000000000000000111111111) (= (mask!8938 thiss!1248) #b00000000000000000000001111111111) (= (mask!8938 thiss!1248) #b00000000000000000000011111111111) (= (mask!8938 thiss!1248) #b00000000000000000000111111111111) (= (mask!8938 thiss!1248) #b00000000000000000001111111111111) (= (mask!8938 thiss!1248) #b00000000000000000011111111111111) (= (mask!8938 thiss!1248) #b00000000000000000111111111111111) (= (mask!8938 thiss!1248) #b00000000000000001111111111111111) (= (mask!8938 thiss!1248) #b00000000000000011111111111111111) (= (mask!8938 thiss!1248) #b00000000000000111111111111111111) (= (mask!8938 thiss!1248) #b00000000000001111111111111111111) (= (mask!8938 thiss!1248) #b00000000000011111111111111111111) (= (mask!8938 thiss!1248) #b00000000000111111111111111111111) (= (mask!8938 thiss!1248) #b00000000001111111111111111111111) (= (mask!8938 thiss!1248) #b00000000011111111111111111111111) (= (mask!8938 thiss!1248) #b00000000111111111111111111111111) (= (mask!8938 thiss!1248) #b00000001111111111111111111111111) (= (mask!8938 thiss!1248) #b00000011111111111111111111111111) (= (mask!8938 thiss!1248) #b00000111111111111111111111111111) (= (mask!8938 thiss!1248) #b00001111111111111111111111111111) (= (mask!8938 thiss!1248) #b00011111111111111111111111111111) (= (mask!8938 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8938 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!186603 d!55191))

(declare-fun d!55193 () Bool)

(declare-fun e!122864 () Bool)

(assert (=> d!55193 e!122864))

(declare-fun res!88300 () Bool)

(assert (=> d!55193 (=> res!88300 e!122864)))

(declare-fun lt!92349 () Bool)

(assert (=> d!55193 (= res!88300 (not lt!92349))))

(declare-fun lt!92347 () Bool)

(assert (=> d!55193 (= lt!92349 lt!92347)))

(declare-fun lt!92348 () Unit!5618)

(declare-fun e!122863 () Unit!5618)

(assert (=> d!55193 (= lt!92348 e!122863)))

(declare-fun c!33466 () Bool)

(assert (=> d!55193 (= c!33466 lt!92347)))

(declare-fun containsKey!229 (List!2396 (_ BitVec 64)) Bool)

(assert (=> d!55193 (= lt!92347 (containsKey!229 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(assert (=> d!55193 (= (contains!1306 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)) key!828) lt!92349)))

(declare-fun b!186653 () Bool)

(declare-fun lt!92346 () Unit!5618)

(assert (=> b!186653 (= e!122863 lt!92346)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!178 (List!2396 (_ BitVec 64)) Unit!5618)

(assert (=> b!186653 (= lt!92346 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(declare-datatypes ((Option!231 0))(
  ( (Some!230 (v!4141 V!5475)) (None!229) )
))
(declare-fun isDefined!179 (Option!231) Bool)

(declare-fun getValueByKey!225 (List!2396 (_ BitVec 64)) Option!231)

(assert (=> b!186653 (isDefined!179 (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(declare-fun b!186654 () Bool)

(declare-fun Unit!5624 () Unit!5618)

(assert (=> b!186654 (= e!122863 Unit!5624)))

(declare-fun b!186655 () Bool)

(assert (=> b!186655 (= e!122864 (isDefined!179 (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828)))))

(assert (= (and d!55193 c!33466) b!186653))

(assert (= (and d!55193 (not c!33466)) b!186654))

(assert (= (and d!55193 (not res!88300)) b!186655))

(declare-fun m!213615 () Bool)

(assert (=> d!55193 m!213615))

(declare-fun m!213617 () Bool)

(assert (=> b!186653 m!213617))

(declare-fun m!213619 () Bool)

(assert (=> b!186653 m!213619))

(assert (=> b!186653 m!213619))

(declare-fun m!213621 () Bool)

(assert (=> b!186653 m!213621))

(assert (=> b!186655 m!213619))

(assert (=> b!186655 m!213619))

(assert (=> b!186655 m!213621))

(assert (=> b!186603 d!55193))

(declare-fun b!186698 () Bool)

(declare-fun e!122903 () Bool)

(declare-fun e!122902 () Bool)

(assert (=> b!186698 (= e!122903 e!122902)))

(declare-fun res!88324 () Bool)

(declare-fun call!18827 () Bool)

(assert (=> b!186698 (= res!88324 call!18827)))

(assert (=> b!186698 (=> (not res!88324) (not e!122902))))

(declare-fun b!186699 () Bool)

(declare-fun e!122895 () Bool)

(declare-fun e!122894 () Bool)

(assert (=> b!186699 (= e!122895 e!122894)))

(declare-fun c!33483 () Bool)

(assert (=> b!186699 (= c!33483 (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18821 () Bool)

(declare-fun lt!92411 () ListLongMap!2397)

(assert (=> bm!18821 (= call!18827 (contains!1306 lt!92411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186700 () Bool)

(declare-fun e!122893 () Unit!5618)

(declare-fun lt!92405 () Unit!5618)

(assert (=> b!186700 (= e!122893 lt!92405)))

(declare-fun lt!92406 () ListLongMap!2397)

(declare-fun getCurrentListMapNoExtraKeys!199 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 32) Int) ListLongMap!2397)

(assert (=> b!186700 (= lt!92406 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))

(declare-fun lt!92397 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92397 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92399 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92399 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92414 () Unit!5618)

(declare-fun addStillContains!145 (ListLongMap!2397 (_ BitVec 64) V!5475 (_ BitVec 64)) Unit!5618)

(assert (=> b!186700 (= lt!92414 (addStillContains!145 lt!92406 lt!92397 (zeroValue!3648 thiss!1248) lt!92399))))

(declare-fun +!284 (ListLongMap!2397 tuple2!3466) ListLongMap!2397)

(assert (=> b!186700 (contains!1306 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) lt!92399)))

(declare-fun lt!92409 () Unit!5618)

(assert (=> b!186700 (= lt!92409 lt!92414)))

(declare-fun lt!92412 () ListLongMap!2397)

(assert (=> b!186700 (= lt!92412 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))

(declare-fun lt!92395 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92395 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92402 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92402 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92396 () Unit!5618)

(declare-fun addApplyDifferent!145 (ListLongMap!2397 (_ BitVec 64) V!5475 (_ BitVec 64)) Unit!5618)

(assert (=> b!186700 (= lt!92396 (addApplyDifferent!145 lt!92412 lt!92395 (minValue!3648 thiss!1248) lt!92402))))

(declare-fun apply!169 (ListLongMap!2397 (_ BitVec 64)) V!5475)

(assert (=> b!186700 (= (apply!169 (+!284 lt!92412 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) lt!92402) (apply!169 lt!92412 lt!92402))))

(declare-fun lt!92407 () Unit!5618)

(assert (=> b!186700 (= lt!92407 lt!92396)))

(declare-fun lt!92400 () ListLongMap!2397)

(assert (=> b!186700 (= lt!92400 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))

(declare-fun lt!92403 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92403 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92398 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92398 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92408 () Unit!5618)

(assert (=> b!186700 (= lt!92408 (addApplyDifferent!145 lt!92400 lt!92403 (zeroValue!3648 thiss!1248) lt!92398))))

(assert (=> b!186700 (= (apply!169 (+!284 lt!92400 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) lt!92398) (apply!169 lt!92400 lt!92398))))

(declare-fun lt!92404 () Unit!5618)

(assert (=> b!186700 (= lt!92404 lt!92408)))

(declare-fun lt!92413 () ListLongMap!2397)

(assert (=> b!186700 (= lt!92413 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))

(declare-fun lt!92394 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92394 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92401 () (_ BitVec 64))

(assert (=> b!186700 (= lt!92401 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186700 (= lt!92405 (addApplyDifferent!145 lt!92413 lt!92394 (minValue!3648 thiss!1248) lt!92401))))

(assert (=> b!186700 (= (apply!169 (+!284 lt!92413 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) lt!92401) (apply!169 lt!92413 lt!92401))))

(declare-fun bm!18822 () Bool)

(declare-fun call!18824 () ListLongMap!2397)

(assert (=> bm!18822 (= call!18824 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))

(declare-fun b!186701 () Bool)

(declare-fun res!88326 () Bool)

(assert (=> b!186701 (=> (not res!88326) (not e!122895))))

(declare-fun e!122899 () Bool)

(assert (=> b!186701 (= res!88326 e!122899)))

(declare-fun res!88327 () Bool)

(assert (=> b!186701 (=> res!88327 e!122899)))

(declare-fun e!122892 () Bool)

(assert (=> b!186701 (= res!88327 (not e!122892))))

(declare-fun res!88322 () Bool)

(assert (=> b!186701 (=> (not res!88322) (not e!122892))))

(assert (=> b!186701 (= res!88322 (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186702 () Bool)

(assert (=> b!186702 (= e!122902 (= (apply!169 lt!92411 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3648 thiss!1248)))))

(declare-fun b!186703 () Bool)

(declare-fun e!122901 () ListLongMap!2397)

(declare-fun call!18826 () ListLongMap!2397)

(assert (=> b!186703 (= e!122901 (+!284 call!18826 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))

(declare-fun b!186704 () Bool)

(declare-fun e!122891 () ListLongMap!2397)

(assert (=> b!186704 (= e!122901 e!122891)))

(declare-fun c!33481 () Bool)

(assert (=> b!186704 (= c!33481 (and (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18823 () Bool)

(declare-fun call!18830 () ListLongMap!2397)

(declare-fun call!18828 () ListLongMap!2397)

(declare-fun c!33480 () Bool)

(assert (=> bm!18823 (= call!18826 (+!284 (ite c!33480 call!18824 (ite c!33481 call!18828 call!18830)) (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(declare-fun b!186705 () Bool)

(assert (=> b!186705 (= e!122903 (not call!18827))))

(declare-fun b!186706 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!186706 (= e!122892 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186707 () Bool)

(declare-fun call!18829 () Bool)

(assert (=> b!186707 (= e!122894 (not call!18829))))

(declare-fun b!186708 () Bool)

(declare-fun e!122898 () Bool)

(declare-fun get!2158 (ValueCell!1842 V!5475) V!5475)

(declare-fun dynLambda!507 (Int (_ BitVec 64)) V!5475)

(assert (=> b!186708 (= e!122898 (= (apply!169 lt!92411 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)) (get!2158 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!186708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4072 (_values!3790 thiss!1248))))))

(assert (=> b!186708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186709 () Bool)

(declare-fun e!122900 () ListLongMap!2397)

(declare-fun call!18825 () ListLongMap!2397)

(assert (=> b!186709 (= e!122900 call!18825)))

(declare-fun b!186710 () Bool)

(assert (=> b!186710 (= e!122900 call!18830)))

(declare-fun bm!18824 () Bool)

(assert (=> bm!18824 (= call!18830 call!18828)))

(declare-fun bm!18825 () Bool)

(assert (=> bm!18825 (= call!18829 (contains!1306 lt!92411 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186711 () Bool)

(assert (=> b!186711 (= e!122891 call!18825)))

(declare-fun b!186712 () Bool)

(declare-fun res!88321 () Bool)

(assert (=> b!186712 (=> (not res!88321) (not e!122895))))

(assert (=> b!186712 (= res!88321 e!122903)))

(declare-fun c!33484 () Bool)

(assert (=> b!186712 (= c!33484 (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!186713 () Bool)

(declare-fun e!122896 () Bool)

(assert (=> b!186713 (= e!122894 e!122896)))

(declare-fun res!88320 () Bool)

(assert (=> b!186713 (= res!88320 call!18829)))

(assert (=> b!186713 (=> (not res!88320) (not e!122896))))

(declare-fun b!186714 () Bool)

(assert (=> b!186714 (= e!122896 (= (apply!169 lt!92411 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3648 thiss!1248)))))

(declare-fun b!186715 () Bool)

(declare-fun e!122897 () Bool)

(assert (=> b!186715 (= e!122897 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186716 () Bool)

(assert (=> b!186716 (= e!122899 e!122898)))

(declare-fun res!88323 () Bool)

(assert (=> b!186716 (=> (not res!88323) (not e!122898))))

(assert (=> b!186716 (= res!88323 (contains!1306 lt!92411 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186716 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun d!55195 () Bool)

(assert (=> d!55195 e!122895))

(declare-fun res!88325 () Bool)

(assert (=> d!55195 (=> (not res!88325) (not e!122895))))

(assert (=> d!55195 (= res!88325 (or (bvsge #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))))

(declare-fun lt!92415 () ListLongMap!2397)

(assert (=> d!55195 (= lt!92411 lt!92415)))

(declare-fun lt!92410 () Unit!5618)

(assert (=> d!55195 (= lt!92410 e!122893)))

(declare-fun c!33482 () Bool)

(assert (=> d!55195 (= c!33482 e!122897)))

(declare-fun res!88319 () Bool)

(assert (=> d!55195 (=> (not res!88319) (not e!122897))))

(assert (=> d!55195 (= res!88319 (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55195 (= lt!92415 e!122901)))

(assert (=> d!55195 (= c!33480 (and (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55195 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55195 (= (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)) lt!92411)))

(declare-fun b!186717 () Bool)

(declare-fun Unit!5625 () Unit!5618)

(assert (=> b!186717 (= e!122893 Unit!5625)))

(declare-fun bm!18826 () Bool)

(assert (=> bm!18826 (= call!18828 call!18824)))

(declare-fun bm!18827 () Bool)

(assert (=> bm!18827 (= call!18825 call!18826)))

(declare-fun b!186718 () Bool)

(declare-fun c!33479 () Bool)

(assert (=> b!186718 (= c!33479 (and (not (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3544 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!186718 (= e!122891 e!122900)))

(assert (= (and d!55195 c!33480) b!186703))

(assert (= (and d!55195 (not c!33480)) b!186704))

(assert (= (and b!186704 c!33481) b!186711))

(assert (= (and b!186704 (not c!33481)) b!186718))

(assert (= (and b!186718 c!33479) b!186709))

(assert (= (and b!186718 (not c!33479)) b!186710))

(assert (= (or b!186709 b!186710) bm!18824))

(assert (= (or b!186711 bm!18824) bm!18826))

(assert (= (or b!186711 b!186709) bm!18827))

(assert (= (or b!186703 bm!18826) bm!18822))

(assert (= (or b!186703 bm!18827) bm!18823))

(assert (= (and d!55195 res!88319) b!186715))

(assert (= (and d!55195 c!33482) b!186700))

(assert (= (and d!55195 (not c!33482)) b!186717))

(assert (= (and d!55195 res!88325) b!186701))

(assert (= (and b!186701 res!88322) b!186706))

(assert (= (and b!186701 (not res!88327)) b!186716))

(assert (= (and b!186716 res!88323) b!186708))

(assert (= (and b!186701 res!88326) b!186712))

(assert (= (and b!186712 c!33484) b!186698))

(assert (= (and b!186712 (not c!33484)) b!186705))

(assert (= (and b!186698 res!88324) b!186702))

(assert (= (or b!186698 b!186705) bm!18821))

(assert (= (and b!186712 res!88321) b!186699))

(assert (= (and b!186699 c!33483) b!186713))

(assert (= (and b!186699 (not c!33483)) b!186707))

(assert (= (and b!186713 res!88320) b!186714))

(assert (= (or b!186713 b!186707) bm!18825))

(declare-fun b_lambda!7301 () Bool)

(assert (=> (not b_lambda!7301) (not b!186708)))

(declare-fun t!7295 () Bool)

(declare-fun tb!2857 () Bool)

(assert (=> (and b!186597 (= (defaultEntry!3807 thiss!1248) (defaultEntry!3807 thiss!1248)) t!7295) tb!2857))

(declare-fun result!4833 () Bool)

(assert (=> tb!2857 (= result!4833 tp_is_empty!4371)))

(assert (=> b!186708 t!7295))

(declare-fun b_and!11231 () Bool)

(assert (= b_and!11227 (and (=> t!7295 result!4833) b_and!11231)))

(declare-fun m!213623 () Bool)

(assert (=> b!186716 m!213623))

(assert (=> b!186716 m!213623))

(declare-fun m!213625 () Bool)

(assert (=> b!186716 m!213625))

(assert (=> b!186706 m!213623))

(assert (=> b!186706 m!213623))

(declare-fun m!213627 () Bool)

(assert (=> b!186706 m!213627))

(assert (=> b!186715 m!213623))

(assert (=> b!186715 m!213623))

(assert (=> b!186715 m!213627))

(declare-fun m!213629 () Bool)

(assert (=> bm!18825 m!213629))

(assert (=> b!186708 m!213623))

(declare-fun m!213631 () Bool)

(assert (=> b!186708 m!213631))

(declare-fun m!213633 () Bool)

(assert (=> b!186708 m!213633))

(assert (=> b!186708 m!213633))

(declare-fun m!213635 () Bool)

(assert (=> b!186708 m!213635))

(declare-fun m!213637 () Bool)

(assert (=> b!186708 m!213637))

(assert (=> b!186708 m!213623))

(assert (=> b!186708 m!213635))

(declare-fun m!213639 () Bool)

(assert (=> b!186714 m!213639))

(assert (=> d!55195 m!213569))

(declare-fun m!213641 () Bool)

(assert (=> bm!18823 m!213641))

(declare-fun m!213643 () Bool)

(assert (=> b!186703 m!213643))

(declare-fun m!213645 () Bool)

(assert (=> bm!18821 m!213645))

(declare-fun m!213647 () Bool)

(assert (=> b!186702 m!213647))

(declare-fun m!213649 () Bool)

(assert (=> bm!18822 m!213649))

(declare-fun m!213651 () Bool)

(assert (=> b!186700 m!213651))

(declare-fun m!213653 () Bool)

(assert (=> b!186700 m!213653))

(declare-fun m!213655 () Bool)

(assert (=> b!186700 m!213655))

(assert (=> b!186700 m!213649))

(declare-fun m!213657 () Bool)

(assert (=> b!186700 m!213657))

(declare-fun m!213659 () Bool)

(assert (=> b!186700 m!213659))

(declare-fun m!213661 () Bool)

(assert (=> b!186700 m!213661))

(declare-fun m!213663 () Bool)

(assert (=> b!186700 m!213663))

(declare-fun m!213665 () Bool)

(assert (=> b!186700 m!213665))

(declare-fun m!213667 () Bool)

(assert (=> b!186700 m!213667))

(assert (=> b!186700 m!213651))

(declare-fun m!213669 () Bool)

(assert (=> b!186700 m!213669))

(declare-fun m!213671 () Bool)

(assert (=> b!186700 m!213671))

(assert (=> b!186700 m!213657))

(assert (=> b!186700 m!213663))

(declare-fun m!213673 () Bool)

(assert (=> b!186700 m!213673))

(declare-fun m!213675 () Bool)

(assert (=> b!186700 m!213675))

(declare-fun m!213677 () Bool)

(assert (=> b!186700 m!213677))

(declare-fun m!213679 () Bool)

(assert (=> b!186700 m!213679))

(assert (=> b!186700 m!213623))

(assert (=> b!186700 m!213675))

(assert (=> b!186603 d!55195))

(declare-fun b!186737 () Bool)

(declare-fun e!122915 () Bool)

(declare-fun call!18835 () Bool)

(assert (=> b!186737 (= e!122915 (not call!18835))))

(declare-fun b!186738 () Bool)

(declare-fun e!122913 () Bool)

(assert (=> b!186738 (= e!122913 (not call!18835))))

(declare-fun c!33490 () Bool)

(declare-fun lt!92421 () SeekEntryResult!654)

(declare-fun bm!18832 () Bool)

(declare-fun call!18836 () Bool)

(assert (=> bm!18832 (= call!18836 (inRange!0 (ite c!33490 (index!4786 lt!92421) (index!4789 lt!92421)) (mask!8938 thiss!1248)))))

(declare-fun b!186739 () Bool)

(declare-fun res!88339 () Bool)

(assert (=> b!186739 (=> (not res!88339) (not e!122915))))

(assert (=> b!186739 (= res!88339 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4789 lt!92421)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186739 (and (bvsge (index!4789 lt!92421) #b00000000000000000000000000000000) (bvslt (index!4789 lt!92421) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186740 () Bool)

(declare-fun res!88338 () Bool)

(assert (=> b!186740 (=> (not res!88338) (not e!122915))))

(assert (=> b!186740 (= res!88338 call!18836)))

(declare-fun e!122912 () Bool)

(assert (=> b!186740 (= e!122912 e!122915)))

(declare-fun b!186741 () Bool)

(assert (=> b!186741 (= e!122912 ((_ is Undefined!654) lt!92421))))

(declare-fun b!186742 () Bool)

(declare-fun e!122914 () Bool)

(assert (=> b!186742 (= e!122914 e!122913)))

(declare-fun res!88336 () Bool)

(assert (=> b!186742 (= res!88336 call!18836)))

(assert (=> b!186742 (=> (not res!88336) (not e!122913))))

(declare-fun d!55197 () Bool)

(assert (=> d!55197 e!122914))

(assert (=> d!55197 (= c!33490 ((_ is MissingZero!654) lt!92421))))

(assert (=> d!55197 (= lt!92421 (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun lt!92420 () Unit!5618)

(declare-fun choose!998 (array!7954 array!7956 (_ BitVec 32) (_ BitVec 32) V!5475 V!5475 (_ BitVec 64) Int) Unit!5618)

(assert (=> d!55197 (= lt!92420 (choose!998 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)))))

(assert (=> d!55197 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55197 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!146 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)) lt!92420)))

(declare-fun b!186743 () Bool)

(assert (=> b!186743 (and (bvsge (index!4786 lt!92421) #b00000000000000000000000000000000) (bvslt (index!4786 lt!92421) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun res!88337 () Bool)

(assert (=> b!186743 (= res!88337 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4786 lt!92421)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186743 (=> (not res!88337) (not e!122913))))

(declare-fun bm!18833 () Bool)

(declare-fun arrayContainsKey!0 (array!7954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18833 (= call!18835 (arrayContainsKey!0 (_keys!5753 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!186744 () Bool)

(assert (=> b!186744 (= e!122914 e!122912)))

(declare-fun c!33489 () Bool)

(assert (=> b!186744 (= c!33489 ((_ is MissingVacant!654) lt!92421))))

(assert (= (and d!55197 c!33490) b!186742))

(assert (= (and d!55197 (not c!33490)) b!186744))

(assert (= (and b!186742 res!88336) b!186743))

(assert (= (and b!186743 res!88337) b!186738))

(assert (= (and b!186744 c!33489) b!186740))

(assert (= (and b!186744 (not c!33489)) b!186741))

(assert (= (and b!186740 res!88338) b!186739))

(assert (= (and b!186739 res!88339) b!186737))

(assert (= (or b!186742 b!186740) bm!18832))

(assert (= (or b!186738 b!186737) bm!18833))

(declare-fun m!213681 () Bool)

(assert (=> b!186743 m!213681))

(assert (=> d!55197 m!213563))

(declare-fun m!213683 () Bool)

(assert (=> d!55197 m!213683))

(assert (=> d!55197 m!213569))

(declare-fun m!213685 () Bool)

(assert (=> bm!18833 m!213685))

(declare-fun m!213687 () Bool)

(assert (=> b!186739 m!213687))

(declare-fun m!213689 () Bool)

(assert (=> bm!18832 m!213689))

(assert (=> b!186607 d!55197))

(declare-fun b!186757 () Bool)

(declare-fun e!122923 () SeekEntryResult!654)

(declare-fun lt!92429 () SeekEntryResult!654)

(assert (=> b!186757 (= e!122923 (MissingZero!654 (index!4788 lt!92429)))))

(declare-fun b!186758 () Bool)

(declare-fun e!122924 () SeekEntryResult!654)

(declare-fun e!122922 () SeekEntryResult!654)

(assert (=> b!186758 (= e!122924 e!122922)))

(declare-fun lt!92428 () (_ BitVec 64))

(assert (=> b!186758 (= lt!92428 (select (arr!3754 (_keys!5753 thiss!1248)) (index!4788 lt!92429)))))

(declare-fun c!33499 () Bool)

(assert (=> b!186758 (= c!33499 (= lt!92428 key!828))))

(declare-fun b!186759 () Bool)

(declare-fun c!33497 () Bool)

(assert (=> b!186759 (= c!33497 (= lt!92428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186759 (= e!122922 e!122923)))

(declare-fun b!186760 () Bool)

(assert (=> b!186760 (= e!122922 (Found!654 (index!4788 lt!92429)))))

(declare-fun b!186761 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7954 (_ BitVec 32)) SeekEntryResult!654)

(assert (=> b!186761 (= e!122923 (seekKeyOrZeroReturnVacant!0 (x!20244 lt!92429) (index!4788 lt!92429) (index!4788 lt!92429) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun b!186762 () Bool)

(assert (=> b!186762 (= e!122924 Undefined!654)))

(declare-fun d!55199 () Bool)

(declare-fun lt!92430 () SeekEntryResult!654)

(assert (=> d!55199 (and (or ((_ is Undefined!654) lt!92430) (not ((_ is Found!654) lt!92430)) (and (bvsge (index!4787 lt!92430) #b00000000000000000000000000000000) (bvslt (index!4787 lt!92430) (size!4071 (_keys!5753 thiss!1248))))) (or ((_ is Undefined!654) lt!92430) ((_ is Found!654) lt!92430) (not ((_ is MissingZero!654) lt!92430)) (and (bvsge (index!4786 lt!92430) #b00000000000000000000000000000000) (bvslt (index!4786 lt!92430) (size!4071 (_keys!5753 thiss!1248))))) (or ((_ is Undefined!654) lt!92430) ((_ is Found!654) lt!92430) ((_ is MissingZero!654) lt!92430) (not ((_ is MissingVacant!654) lt!92430)) (and (bvsge (index!4789 lt!92430) #b00000000000000000000000000000000) (bvslt (index!4789 lt!92430) (size!4071 (_keys!5753 thiss!1248))))) (or ((_ is Undefined!654) lt!92430) (ite ((_ is Found!654) lt!92430) (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4787 lt!92430)) key!828) (ite ((_ is MissingZero!654) lt!92430) (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4786 lt!92430)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!654) lt!92430) (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4789 lt!92430)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55199 (= lt!92430 e!122924)))

(declare-fun c!33498 () Bool)

(assert (=> d!55199 (= c!33498 (and ((_ is Intermediate!654) lt!92429) (undefined!1466 lt!92429)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7954 (_ BitVec 32)) SeekEntryResult!654)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55199 (= lt!92429 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8938 thiss!1248)) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(assert (=> d!55199 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55199 (= (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)) lt!92430)))

(assert (= (and d!55199 c!33498) b!186762))

(assert (= (and d!55199 (not c!33498)) b!186758))

(assert (= (and b!186758 c!33499) b!186760))

(assert (= (and b!186758 (not c!33499)) b!186759))

(assert (= (and b!186759 c!33497) b!186757))

(assert (= (and b!186759 (not c!33497)) b!186761))

(declare-fun m!213691 () Bool)

(assert (=> b!186758 m!213691))

(declare-fun m!213693 () Bool)

(assert (=> b!186761 m!213693))

(declare-fun m!213695 () Bool)

(assert (=> d!55199 m!213695))

(declare-fun m!213697 () Bool)

(assert (=> d!55199 m!213697))

(assert (=> d!55199 m!213569))

(assert (=> d!55199 m!213695))

(declare-fun m!213699 () Bool)

(assert (=> d!55199 m!213699))

(declare-fun m!213701 () Bool)

(assert (=> d!55199 m!213701))

(declare-fun m!213703 () Bool)

(assert (=> d!55199 m!213703))

(assert (=> b!186605 d!55199))

(declare-fun d!55201 () Bool)

(declare-fun res!88346 () Bool)

(declare-fun e!122927 () Bool)

(assert (=> d!55201 (=> (not res!88346) (not e!122927))))

(declare-fun simpleValid!184 (LongMapFixedSize!2592) Bool)

(assert (=> d!55201 (= res!88346 (simpleValid!184 thiss!1248))))

(assert (=> d!55201 (= (valid!1059 thiss!1248) e!122927)))

(declare-fun b!186769 () Bool)

(declare-fun res!88347 () Bool)

(assert (=> b!186769 (=> (not res!88347) (not e!122927))))

(declare-fun arrayCountValidKeys!0 (array!7954 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!186769 (= res!88347 (= (arrayCountValidKeys!0 (_keys!5753 thiss!1248) #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))) (_size!1345 thiss!1248)))))

(declare-fun b!186770 () Bool)

(declare-fun res!88348 () Bool)

(assert (=> b!186770 (=> (not res!88348) (not e!122927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7954 (_ BitVec 32)) Bool)

(assert (=> b!186770 (= res!88348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun b!186771 () Bool)

(declare-datatypes ((List!2398 0))(
  ( (Nil!2395) (Cons!2394 (h!3028 (_ BitVec 64)) (t!7296 List!2398)) )
))
(declare-fun arrayNoDuplicates!0 (array!7954 (_ BitVec 32) List!2398) Bool)

(assert (=> b!186771 (= e!122927 (arrayNoDuplicates!0 (_keys!5753 thiss!1248) #b00000000000000000000000000000000 Nil!2395))))

(assert (= (and d!55201 res!88346) b!186769))

(assert (= (and b!186769 res!88347) b!186770))

(assert (= (and b!186770 res!88348) b!186771))

(declare-fun m!213705 () Bool)

(assert (=> d!55201 m!213705))

(declare-fun m!213707 () Bool)

(assert (=> b!186769 m!213707))

(declare-fun m!213709 () Bool)

(assert (=> b!186770 m!213709))

(declare-fun m!213711 () Bool)

(assert (=> b!186771 m!213711))

(assert (=> start!18918 d!55201))

(declare-fun d!55203 () Bool)

(assert (=> d!55203 (= (array_inv!2417 (_keys!5753 thiss!1248)) (bvsge (size!4071 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186597 d!55203))

(declare-fun d!55205 () Bool)

(assert (=> d!55205 (= (array_inv!2418 (_values!3790 thiss!1248)) (bvsge (size!4072 (_values!3790 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186597 d!55205))

(declare-fun mapNonEmpty!7531 () Bool)

(declare-fun mapRes!7531 () Bool)

(declare-fun tp!16612 () Bool)

(declare-fun e!122932 () Bool)

(assert (=> mapNonEmpty!7531 (= mapRes!7531 (and tp!16612 e!122932))))

(declare-fun mapKey!7531 () (_ BitVec 32))

(declare-fun mapValue!7531 () ValueCell!1842)

(declare-fun mapRest!7531 () (Array (_ BitVec 32) ValueCell!1842))

(assert (=> mapNonEmpty!7531 (= mapRest!7525 (store mapRest!7531 mapKey!7531 mapValue!7531))))

(declare-fun condMapEmpty!7531 () Bool)

(declare-fun mapDefault!7531 () ValueCell!1842)

(assert (=> mapNonEmpty!7525 (= condMapEmpty!7531 (= mapRest!7525 ((as const (Array (_ BitVec 32) ValueCell!1842)) mapDefault!7531)))))

(declare-fun e!122933 () Bool)

(assert (=> mapNonEmpty!7525 (= tp!16602 (and e!122933 mapRes!7531))))

(declare-fun mapIsEmpty!7531 () Bool)

(assert (=> mapIsEmpty!7531 mapRes!7531))

(declare-fun b!186778 () Bool)

(assert (=> b!186778 (= e!122932 tp_is_empty!4371)))

(declare-fun b!186779 () Bool)

(assert (=> b!186779 (= e!122933 tp_is_empty!4371)))

(assert (= (and mapNonEmpty!7525 condMapEmpty!7531) mapIsEmpty!7531))

(assert (= (and mapNonEmpty!7525 (not condMapEmpty!7531)) mapNonEmpty!7531))

(assert (= (and mapNonEmpty!7531 ((_ is ValueCellFull!1842) mapValue!7531)) b!186778))

(assert (= (and mapNonEmpty!7525 ((_ is ValueCellFull!1842) mapDefault!7531)) b!186779))

(declare-fun m!213713 () Bool)

(assert (=> mapNonEmpty!7531 m!213713))

(declare-fun b_lambda!7303 () Bool)

(assert (= b_lambda!7301 (or (and b!186597 b_free!4599) b_lambda!7303)))

(check-sat (not b!186702) (not bm!18823) tp_is_empty!4371 (not b!186715) (not b!186716) (not b!186761) (not bm!18822) (not b!186769) (not b_next!4599) (not b!186653) (not b!186655) b_and!11231 (not b_lambda!7303) (not mapNonEmpty!7531) (not d!55199) (not d!55201) (not d!55195) (not bm!18821) (not b!186770) (not b!186645) (not b!186700) (not d!55197) (not bm!18825) (not d!55193) (not b!186708) (not bm!18833) (not b!186771) (not b!186714) (not bm!18832) (not d!55187) (not b!186706) (not b!186703))
(check-sat b_and!11231 (not b_next!4599))
(get-model)

(declare-fun b!186789 () Bool)

(declare-fun res!88357 () Bool)

(declare-fun e!122936 () Bool)

(assert (=> b!186789 (=> (not res!88357) (not e!122936))))

(declare-fun size!4075 (LongMapFixedSize!2592) (_ BitVec 32))

(assert (=> b!186789 (= res!88357 (bvsge (size!4075 thiss!1248) (_size!1345 thiss!1248)))))

(declare-fun d!55207 () Bool)

(declare-fun res!88360 () Bool)

(assert (=> d!55207 (=> (not res!88360) (not e!122936))))

(assert (=> d!55207 (= res!88360 (validMask!0 (mask!8938 thiss!1248)))))

(assert (=> d!55207 (= (simpleValid!184 thiss!1248) e!122936)))

(declare-fun b!186791 () Bool)

(assert (=> b!186791 (= e!122936 (and (bvsge (extraKeys!3544 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3544 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1345 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!186788 () Bool)

(declare-fun res!88359 () Bool)

(assert (=> b!186788 (=> (not res!88359) (not e!122936))))

(assert (=> b!186788 (= res!88359 (and (= (size!4072 (_values!3790 thiss!1248)) (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001)) (= (size!4071 (_keys!5753 thiss!1248)) (size!4072 (_values!3790 thiss!1248))) (bvsge (_size!1345 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1345 thiss!1248) (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!186790 () Bool)

(declare-fun res!88358 () Bool)

(assert (=> b!186790 (=> (not res!88358) (not e!122936))))

(assert (=> b!186790 (= res!88358 (= (size!4075 thiss!1248) (bvadd (_size!1345 thiss!1248) (bvsdiv (bvadd (extraKeys!3544 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!55207 res!88360) b!186788))

(assert (= (and b!186788 res!88359) b!186789))

(assert (= (and b!186789 res!88357) b!186790))

(assert (= (and b!186790 res!88358) b!186791))

(declare-fun m!213715 () Bool)

(assert (=> b!186789 m!213715))

(assert (=> d!55207 m!213569))

(assert (=> b!186790 m!213715))

(assert (=> d!55201 d!55207))

(declare-fun d!55209 () Bool)

(declare-fun lt!92433 () (_ BitVec 32))

(assert (=> d!55209 (and (bvsge lt!92433 #b00000000000000000000000000000000) (bvsle lt!92433 (bvsub (size!4071 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!122942 () (_ BitVec 32))

(assert (=> d!55209 (= lt!92433 e!122942)))

(declare-fun c!33504 () Bool)

(assert (=> d!55209 (= c!33504 (bvsge #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55209 (and (bvsle #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4071 (_keys!5753 thiss!1248)) (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55209 (= (arrayCountValidKeys!0 (_keys!5753 thiss!1248) #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))) lt!92433)))

(declare-fun b!186800 () Bool)

(assert (=> b!186800 (= e!122942 #b00000000000000000000000000000000)))

(declare-fun bm!18836 () Bool)

(declare-fun call!18839 () (_ BitVec 32))

(assert (=> bm!18836 (= call!18839 (arrayCountValidKeys!0 (_keys!5753 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186801 () Bool)

(declare-fun e!122941 () (_ BitVec 32))

(assert (=> b!186801 (= e!122942 e!122941)))

(declare-fun c!33505 () Bool)

(assert (=> b!186801 (= c!33505 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186802 () Bool)

(assert (=> b!186802 (= e!122941 call!18839)))

(declare-fun b!186803 () Bool)

(assert (=> b!186803 (= e!122941 (bvadd #b00000000000000000000000000000001 call!18839))))

(assert (= (and d!55209 c!33504) b!186800))

(assert (= (and d!55209 (not c!33504)) b!186801))

(assert (= (and b!186801 c!33505) b!186803))

(assert (= (and b!186801 (not c!33505)) b!186802))

(assert (= (or b!186803 b!186802) bm!18836))

(declare-fun m!213717 () Bool)

(assert (=> bm!18836 m!213717))

(assert (=> b!186801 m!213623))

(assert (=> b!186801 m!213623))

(assert (=> b!186801 m!213627))

(assert (=> b!186769 d!55209))

(declare-fun d!55211 () Bool)

(declare-fun e!122945 () Bool)

(assert (=> d!55211 e!122945))

(declare-fun res!88366 () Bool)

(assert (=> d!55211 (=> (not res!88366) (not e!122945))))

(declare-fun lt!92442 () ListLongMap!2397)

(assert (=> d!55211 (= res!88366 (contains!1306 lt!92442 (_1!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))))

(declare-fun lt!92444 () List!2396)

(assert (=> d!55211 (= lt!92442 (ListLongMap!2398 lt!92444))))

(declare-fun lt!92445 () Unit!5618)

(declare-fun lt!92443 () Unit!5618)

(assert (=> d!55211 (= lt!92445 lt!92443)))

(assert (=> d!55211 (= (getValueByKey!225 lt!92444 (_1!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))) (Some!230 (_2!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!119 (List!2396 (_ BitVec 64) V!5475) Unit!5618)

(assert (=> d!55211 (= lt!92443 (lemmaContainsTupThenGetReturnValue!119 lt!92444 (_1!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))) (_2!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))))

(declare-fun insertStrictlySorted!121 (List!2396 (_ BitVec 64) V!5475) List!2396)

(assert (=> d!55211 (= lt!92444 (insertStrictlySorted!121 (toList!1214 (ite c!33480 call!18824 (ite c!33481 call!18828 call!18830))) (_1!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))) (_2!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))))

(assert (=> d!55211 (= (+!284 (ite c!33480 call!18824 (ite c!33481 call!18828 call!18830)) (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))) lt!92442)))

(declare-fun b!186808 () Bool)

(declare-fun res!88365 () Bool)

(assert (=> b!186808 (=> (not res!88365) (not e!122945))))

(assert (=> b!186808 (= res!88365 (= (getValueByKey!225 (toList!1214 lt!92442) (_1!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))) (Some!230 (_2!1743 (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))))

(declare-fun b!186809 () Bool)

(declare-fun contains!1308 (List!2396 tuple2!3466) Bool)

(assert (=> b!186809 (= e!122945 (contains!1308 (toList!1214 lt!92442) (ite (or c!33480 c!33481) (tuple2!3467 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3648 thiss!1248)) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(assert (= (and d!55211 res!88366) b!186808))

(assert (= (and b!186808 res!88365) b!186809))

(declare-fun m!213719 () Bool)

(assert (=> d!55211 m!213719))

(declare-fun m!213721 () Bool)

(assert (=> d!55211 m!213721))

(declare-fun m!213723 () Bool)

(assert (=> d!55211 m!213723))

(declare-fun m!213725 () Bool)

(assert (=> d!55211 m!213725))

(declare-fun m!213727 () Bool)

(assert (=> b!186808 m!213727))

(declare-fun m!213729 () Bool)

(assert (=> b!186809 m!213729))

(assert (=> bm!18823 d!55211))

(declare-fun d!55213 () Bool)

(declare-fun e!122946 () Bool)

(assert (=> d!55213 e!122946))

(declare-fun res!88368 () Bool)

(assert (=> d!55213 (=> (not res!88368) (not e!122946))))

(declare-fun lt!92446 () ListLongMap!2397)

(assert (=> d!55213 (= res!88368 (contains!1306 lt!92446 (_1!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(declare-fun lt!92448 () List!2396)

(assert (=> d!55213 (= lt!92446 (ListLongMap!2398 lt!92448))))

(declare-fun lt!92449 () Unit!5618)

(declare-fun lt!92447 () Unit!5618)

(assert (=> d!55213 (= lt!92449 lt!92447)))

(assert (=> d!55213 (= (getValueByKey!225 lt!92448 (_1!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(assert (=> d!55213 (= lt!92447 (lemmaContainsTupThenGetReturnValue!119 lt!92448 (_1!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(assert (=> d!55213 (= lt!92448 (insertStrictlySorted!121 (toList!1214 call!18826) (_1!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))))))

(assert (=> d!55213 (= (+!284 call!18826 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))) lt!92446)))

(declare-fun b!186810 () Bool)

(declare-fun res!88367 () Bool)

(assert (=> b!186810 (=> (not res!88367) (not e!122946))))

(assert (=> b!186810 (= res!88367 (= (getValueByKey!225 (toList!1214 lt!92446) (_1!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))))

(declare-fun b!186811 () Bool)

(assert (=> b!186811 (= e!122946 (contains!1308 (toList!1214 lt!92446) (tuple2!3467 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3648 thiss!1248))))))

(assert (= (and d!55213 res!88368) b!186810))

(assert (= (and b!186810 res!88367) b!186811))

(declare-fun m!213731 () Bool)

(assert (=> d!55213 m!213731))

(declare-fun m!213733 () Bool)

(assert (=> d!55213 m!213733))

(declare-fun m!213735 () Bool)

(assert (=> d!55213 m!213735))

(declare-fun m!213737 () Bool)

(assert (=> d!55213 m!213737))

(declare-fun m!213739 () Bool)

(assert (=> b!186810 m!213739))

(declare-fun m!213741 () Bool)

(assert (=> b!186811 m!213741))

(assert (=> b!186703 d!55213))

(declare-fun d!55215 () Bool)

(assert (=> d!55215 (= (inRange!0 (ite c!33490 (index!4786 lt!92421) (index!4789 lt!92421)) (mask!8938 thiss!1248)) (and (bvsge (ite c!33490 (index!4786 lt!92421) (index!4789 lt!92421)) #b00000000000000000000000000000000) (bvslt (ite c!33490 (index!4786 lt!92421) (index!4789 lt!92421)) (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!18832 d!55215))

(declare-fun d!55217 () Bool)

(declare-fun isEmpty!478 (Option!231) Bool)

(assert (=> d!55217 (= (isDefined!179 (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828)) (not (isEmpty!478 (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))))

(declare-fun bs!7546 () Bool)

(assert (= bs!7546 d!55217))

(assert (=> bs!7546 m!213619))

(declare-fun m!213743 () Bool)

(assert (=> bs!7546 m!213743))

(assert (=> b!186655 d!55217))

(declare-fun b!186821 () Bool)

(declare-fun e!122951 () Option!231)

(declare-fun e!122952 () Option!231)

(assert (=> b!186821 (= e!122951 e!122952)))

(declare-fun c!33511 () Bool)

(assert (=> b!186821 (= c!33511 (and ((_ is Cons!2392) (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) (not (= (_1!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) key!828))))))

(declare-fun d!55219 () Bool)

(declare-fun c!33510 () Bool)

(assert (=> d!55219 (= c!33510 (and ((_ is Cons!2392) (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) (= (_1!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) key!828)))))

(assert (=> d!55219 (= (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828) e!122951)))

(declare-fun b!186822 () Bool)

(assert (=> b!186822 (= e!122952 (getValueByKey!225 (t!7292 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) key!828))))

(declare-fun b!186820 () Bool)

(assert (=> b!186820 (= e!122951 (Some!230 (_2!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))))))

(declare-fun b!186823 () Bool)

(assert (=> b!186823 (= e!122952 None!229)))

(assert (= (and d!55219 c!33510) b!186820))

(assert (= (and d!55219 (not c!33510)) b!186821))

(assert (= (and b!186821 c!33511) b!186822))

(assert (= (and b!186821 (not c!33511)) b!186823))

(declare-fun m!213745 () Bool)

(assert (=> b!186822 m!213745))

(assert (=> b!186655 d!55219))

(declare-fun d!55221 () Bool)

(declare-fun get!2159 (Option!231) V!5475)

(assert (=> d!55221 (= (apply!169 lt!92411 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2159 (getValueByKey!225 (toList!1214 lt!92411) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7547 () Bool)

(assert (= bs!7547 d!55221))

(declare-fun m!213747 () Bool)

(assert (=> bs!7547 m!213747))

(assert (=> bs!7547 m!213747))

(declare-fun m!213749 () Bool)

(assert (=> bs!7547 m!213749))

(assert (=> b!186702 d!55221))

(declare-fun d!55223 () Bool)

(assert (=> d!55223 (isDefined!179 (getValueByKey!225 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(declare-fun lt!92452 () Unit!5618)

(declare-fun choose!999 (List!2396 (_ BitVec 64)) Unit!5618)

(assert (=> d!55223 (= lt!92452 (choose!999 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(declare-fun e!122955 () Bool)

(assert (=> d!55223 e!122955))

(declare-fun res!88371 () Bool)

(assert (=> d!55223 (=> (not res!88371) (not e!122955))))

(declare-fun isStrictlySorted!345 (List!2396) Bool)

(assert (=> d!55223 (= res!88371 (isStrictlySorted!345 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))))))

(assert (=> d!55223 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828) lt!92452)))

(declare-fun b!186826 () Bool)

(assert (=> b!186826 (= e!122955 (containsKey!229 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828))))

(assert (= (and d!55223 res!88371) b!186826))

(assert (=> d!55223 m!213619))

(assert (=> d!55223 m!213619))

(assert (=> d!55223 m!213621))

(declare-fun m!213751 () Bool)

(assert (=> d!55223 m!213751))

(declare-fun m!213753 () Bool)

(assert (=> d!55223 m!213753))

(assert (=> b!186826 m!213615))

(assert (=> b!186653 d!55223))

(assert (=> b!186653 d!55217))

(assert (=> b!186653 d!55219))

(assert (=> d!55187 d!55199))

(declare-fun d!55225 () Bool)

(declare-fun e!122958 () Bool)

(assert (=> d!55225 e!122958))

(declare-fun res!88377 () Bool)

(assert (=> d!55225 (=> (not res!88377) (not e!122958))))

(declare-fun lt!92455 () SeekEntryResult!654)

(assert (=> d!55225 (= res!88377 ((_ is Found!654) lt!92455))))

(assert (=> d!55225 (= lt!92455 (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(assert (=> d!55225 true))

(declare-fun _$33!129 () Unit!5618)

(assert (=> d!55225 (= (choose!997 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)) _$33!129)))

(declare-fun b!186831 () Bool)

(declare-fun res!88376 () Bool)

(assert (=> b!186831 (=> (not res!88376) (not e!122958))))

(assert (=> b!186831 (= res!88376 (inRange!0 (index!4787 lt!92455) (mask!8938 thiss!1248)))))

(declare-fun b!186832 () Bool)

(assert (=> b!186832 (= e!122958 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4787 lt!92455)) key!828))))

(assert (= (and d!55225 res!88377) b!186831))

(assert (= (and b!186831 res!88376) b!186832))

(assert (=> d!55225 m!213563))

(declare-fun m!213755 () Bool)

(assert (=> b!186831 m!213755))

(declare-fun m!213757 () Bool)

(assert (=> b!186832 m!213757))

(assert (=> d!55187 d!55225))

(assert (=> d!55187 d!55191))

(declare-fun d!55227 () Bool)

(assert (=> d!55227 (= (inRange!0 (index!4787 lt!92337) (mask!8938 thiss!1248)) (and (bvsge (index!4787 lt!92337) #b00000000000000000000000000000000) (bvslt (index!4787 lt!92337) (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!186645 d!55227))

(declare-fun d!55229 () Bool)

(declare-fun res!88382 () Bool)

(declare-fun e!122963 () Bool)

(assert (=> d!55229 (=> res!88382 e!122963)))

(assert (=> d!55229 (= res!88382 (and ((_ is Cons!2392) (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) (= (_1!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) key!828)))))

(assert (=> d!55229 (= (containsKey!229 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))) key!828) e!122963)))

(declare-fun b!186837 () Bool)

(declare-fun e!122964 () Bool)

(assert (=> b!186837 (= e!122963 e!122964)))

(declare-fun res!88383 () Bool)

(assert (=> b!186837 (=> (not res!88383) (not e!122964))))

(assert (=> b!186837 (= res!88383 (and (or (not ((_ is Cons!2392) (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) (bvsle (_1!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) key!828)) ((_ is Cons!2392) (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) (bvslt (_1!1743 (h!3026 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248))))) key!828)))))

(declare-fun b!186838 () Bool)

(assert (=> b!186838 (= e!122964 (containsKey!229 (t!7292 (toList!1214 (getCurrentListMap!857 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)))) key!828))))

(assert (= (and d!55229 (not res!88382)) b!186837))

(assert (= (and b!186837 res!88383) b!186838))

(declare-fun m!213759 () Bool)

(assert (=> b!186838 m!213759))

(assert (=> d!55193 d!55229))

(declare-fun b!186851 () Bool)

(declare-fun e!122972 () SeekEntryResult!654)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!186851 (= e!122972 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20244 lt!92429) #b00000000000000000000000000000001) (nextIndex!0 (index!4788 lt!92429) (x!20244 lt!92429) (mask!8938 thiss!1248)) (index!4788 lt!92429) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun lt!92460 () SeekEntryResult!654)

(declare-fun d!55231 () Bool)

(assert (=> d!55231 (and (or ((_ is Undefined!654) lt!92460) (not ((_ is Found!654) lt!92460)) (and (bvsge (index!4787 lt!92460) #b00000000000000000000000000000000) (bvslt (index!4787 lt!92460) (size!4071 (_keys!5753 thiss!1248))))) (or ((_ is Undefined!654) lt!92460) ((_ is Found!654) lt!92460) (not ((_ is MissingVacant!654) lt!92460)) (not (= (index!4789 lt!92460) (index!4788 lt!92429))) (and (bvsge (index!4789 lt!92460) #b00000000000000000000000000000000) (bvslt (index!4789 lt!92460) (size!4071 (_keys!5753 thiss!1248))))) (or ((_ is Undefined!654) lt!92460) (ite ((_ is Found!654) lt!92460) (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4787 lt!92460)) key!828) (and ((_ is MissingVacant!654) lt!92460) (= (index!4789 lt!92460) (index!4788 lt!92429)) (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4789 lt!92460)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!122971 () SeekEntryResult!654)

(assert (=> d!55231 (= lt!92460 e!122971)))

(declare-fun c!33520 () Bool)

(assert (=> d!55231 (= c!33520 (bvsge (x!20244 lt!92429) #b01111111111111111111111111111110))))

(declare-fun lt!92461 () (_ BitVec 64))

(assert (=> d!55231 (= lt!92461 (select (arr!3754 (_keys!5753 thiss!1248)) (index!4788 lt!92429)))))

(assert (=> d!55231 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55231 (= (seekKeyOrZeroReturnVacant!0 (x!20244 lt!92429) (index!4788 lt!92429) (index!4788 lt!92429) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)) lt!92460)))

(declare-fun b!186852 () Bool)

(declare-fun e!122973 () SeekEntryResult!654)

(assert (=> b!186852 (= e!122971 e!122973)))

(declare-fun c!33519 () Bool)

(assert (=> b!186852 (= c!33519 (= lt!92461 key!828))))

(declare-fun b!186853 () Bool)

(declare-fun c!33518 () Bool)

(assert (=> b!186853 (= c!33518 (= lt!92461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186853 (= e!122973 e!122972)))

(declare-fun b!186854 () Bool)

(assert (=> b!186854 (= e!122971 Undefined!654)))

(declare-fun b!186855 () Bool)

(assert (=> b!186855 (= e!122972 (MissingVacant!654 (index!4788 lt!92429)))))

(declare-fun b!186856 () Bool)

(assert (=> b!186856 (= e!122973 (Found!654 (index!4788 lt!92429)))))

(assert (= (and d!55231 c!33520) b!186854))

(assert (= (and d!55231 (not c!33520)) b!186852))

(assert (= (and b!186852 c!33519) b!186856))

(assert (= (and b!186852 (not c!33519)) b!186853))

(assert (= (and b!186853 c!33518) b!186855))

(assert (= (and b!186853 (not c!33518)) b!186851))

(declare-fun m!213761 () Bool)

(assert (=> b!186851 m!213761))

(assert (=> b!186851 m!213761))

(declare-fun m!213763 () Bool)

(assert (=> b!186851 m!213763))

(declare-fun m!213765 () Bool)

(assert (=> d!55231 m!213765))

(declare-fun m!213767 () Bool)

(assert (=> d!55231 m!213767))

(assert (=> d!55231 m!213691))

(assert (=> d!55231 m!213569))

(assert (=> b!186761 d!55231))

(declare-fun b!186867 () Bool)

(declare-fun e!122984 () Bool)

(declare-fun e!122982 () Bool)

(assert (=> b!186867 (= e!122984 e!122982)))

(declare-fun res!88391 () Bool)

(assert (=> b!186867 (=> (not res!88391) (not e!122982))))

(declare-fun e!122983 () Bool)

(assert (=> b!186867 (= res!88391 (not e!122983))))

(declare-fun res!88390 () Bool)

(assert (=> b!186867 (=> (not res!88390) (not e!122983))))

(assert (=> b!186867 (= res!88390 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18839 () Bool)

(declare-fun call!18842 () Bool)

(declare-fun c!33523 () Bool)

(assert (=> bm!18839 (= call!18842 (arrayNoDuplicates!0 (_keys!5753 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33523 (Cons!2394 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) Nil!2395) Nil!2395)))))

(declare-fun b!186868 () Bool)

(declare-fun e!122985 () Bool)

(assert (=> b!186868 (= e!122985 call!18842)))

(declare-fun b!186869 () Bool)

(assert (=> b!186869 (= e!122982 e!122985)))

(assert (=> b!186869 (= c!33523 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55233 () Bool)

(declare-fun res!88392 () Bool)

(assert (=> d!55233 (=> res!88392 e!122984)))

(assert (=> d!55233 (= res!88392 (bvsge #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55233 (= (arrayNoDuplicates!0 (_keys!5753 thiss!1248) #b00000000000000000000000000000000 Nil!2395) e!122984)))

(declare-fun b!186870 () Bool)

(declare-fun contains!1309 (List!2398 (_ BitVec 64)) Bool)

(assert (=> b!186870 (= e!122983 (contains!1309 Nil!2395 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186871 () Bool)

(assert (=> b!186871 (= e!122985 call!18842)))

(assert (= (and d!55233 (not res!88392)) b!186867))

(assert (= (and b!186867 res!88390) b!186870))

(assert (= (and b!186867 res!88391) b!186869))

(assert (= (and b!186869 c!33523) b!186868))

(assert (= (and b!186869 (not c!33523)) b!186871))

(assert (= (or b!186868 b!186871) bm!18839))

(assert (=> b!186867 m!213623))

(assert (=> b!186867 m!213623))

(assert (=> b!186867 m!213627))

(assert (=> bm!18839 m!213623))

(declare-fun m!213769 () Bool)

(assert (=> bm!18839 m!213769))

(assert (=> b!186869 m!213623))

(assert (=> b!186869 m!213623))

(assert (=> b!186869 m!213627))

(assert (=> b!186870 m!213623))

(assert (=> b!186870 m!213623))

(declare-fun m!213771 () Bool)

(assert (=> b!186870 m!213771))

(assert (=> b!186771 d!55233))

(declare-fun d!55235 () Bool)

(assert (=> d!55235 (= (apply!169 lt!92411 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)) (get!2159 (getValueByKey!225 (toList!1214 lt!92411) (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7548 () Bool)

(assert (= bs!7548 d!55235))

(assert (=> bs!7548 m!213623))

(declare-fun m!213773 () Bool)

(assert (=> bs!7548 m!213773))

(assert (=> bs!7548 m!213773))

(declare-fun m!213775 () Bool)

(assert (=> bs!7548 m!213775))

(assert (=> b!186708 d!55235))

(declare-fun d!55237 () Bool)

(declare-fun c!33526 () Bool)

(assert (=> d!55237 (= c!33526 ((_ is ValueCellFull!1842) (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!122988 () V!5475)

(assert (=> d!55237 (= (get!2158 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!122988)))

(declare-fun b!186876 () Bool)

(declare-fun get!2160 (ValueCell!1842 V!5475) V!5475)

(assert (=> b!186876 (= e!122988 (get!2160 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!186877 () Bool)

(declare-fun get!2161 (ValueCell!1842 V!5475) V!5475)

(assert (=> b!186877 (= e!122988 (get!2161 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55237 c!33526) b!186876))

(assert (= (and d!55237 (not c!33526)) b!186877))

(assert (=> b!186876 m!213633))

(assert (=> b!186876 m!213635))

(declare-fun m!213777 () Bool)

(assert (=> b!186876 m!213777))

(assert (=> b!186877 m!213633))

(assert (=> b!186877 m!213635))

(declare-fun m!213779 () Bool)

(assert (=> b!186877 m!213779))

(assert (=> b!186708 d!55237))

(declare-fun d!55239 () Bool)

(declare-fun res!88397 () Bool)

(declare-fun e!122993 () Bool)

(assert (=> d!55239 (=> res!88397 e!122993)))

(assert (=> d!55239 (= res!88397 (= (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55239 (= (arrayContainsKey!0 (_keys!5753 thiss!1248) key!828 #b00000000000000000000000000000000) e!122993)))

(declare-fun b!186882 () Bool)

(declare-fun e!122994 () Bool)

(assert (=> b!186882 (= e!122993 e!122994)))

(declare-fun res!88398 () Bool)

(assert (=> b!186882 (=> (not res!88398) (not e!122994))))

(assert (=> b!186882 (= res!88398 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186883 () Bool)

(assert (=> b!186883 (= e!122994 (arrayContainsKey!0 (_keys!5753 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55239 (not res!88397)) b!186882))

(assert (= (and b!186882 res!88398) b!186883))

(assert (=> d!55239 m!213623))

(declare-fun m!213781 () Bool)

(assert (=> b!186883 m!213781))

(assert (=> bm!18833 d!55239))

(declare-fun d!55241 () Bool)

(assert (=> d!55241 (= (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!186706 d!55241))

(declare-fun b!186892 () Bool)

(declare-fun e!123003 () Bool)

(declare-fun e!123001 () Bool)

(assert (=> b!186892 (= e!123003 e!123001)))

(declare-fun lt!92468 () (_ BitVec 64))

(assert (=> b!186892 (= lt!92468 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92470 () Unit!5618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7954 (_ BitVec 64) (_ BitVec 32)) Unit!5618)

(assert (=> b!186892 (= lt!92470 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5753 thiss!1248) lt!92468 #b00000000000000000000000000000000))))

(assert (=> b!186892 (arrayContainsKey!0 (_keys!5753 thiss!1248) lt!92468 #b00000000000000000000000000000000)))

(declare-fun lt!92469 () Unit!5618)

(assert (=> b!186892 (= lt!92469 lt!92470)))

(declare-fun res!88403 () Bool)

(assert (=> b!186892 (= res!88403 (= (seekEntryOrOpen!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) (_keys!5753 thiss!1248) (mask!8938 thiss!1248)) (Found!654 #b00000000000000000000000000000000)))))

(assert (=> b!186892 (=> (not res!88403) (not e!123001))))

(declare-fun b!186893 () Bool)

(declare-fun call!18845 () Bool)

(assert (=> b!186893 (= e!123001 call!18845)))

(declare-fun d!55243 () Bool)

(declare-fun res!88404 () Bool)

(declare-fun e!123002 () Bool)

(assert (=> d!55243 (=> res!88404 e!123002)))

(assert (=> d!55243 (= res!88404 (bvsge #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)) e!123002)))

(declare-fun bm!18842 () Bool)

(assert (=> bm!18842 (= call!18845 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun b!186894 () Bool)

(assert (=> b!186894 (= e!123003 call!18845)))

(declare-fun b!186895 () Bool)

(assert (=> b!186895 (= e!123002 e!123003)))

(declare-fun c!33529 () Bool)

(assert (=> b!186895 (= c!33529 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55243 (not res!88404)) b!186895))

(assert (= (and b!186895 c!33529) b!186892))

(assert (= (and b!186895 (not c!33529)) b!186894))

(assert (= (and b!186892 res!88403) b!186893))

(assert (= (or b!186893 b!186894) bm!18842))

(assert (=> b!186892 m!213623))

(declare-fun m!213783 () Bool)

(assert (=> b!186892 m!213783))

(declare-fun m!213785 () Bool)

(assert (=> b!186892 m!213785))

(assert (=> b!186892 m!213623))

(declare-fun m!213787 () Bool)

(assert (=> b!186892 m!213787))

(declare-fun m!213789 () Bool)

(assert (=> bm!18842 m!213789))

(assert (=> b!186895 m!213623))

(assert (=> b!186895 m!213623))

(assert (=> b!186895 m!213627))

(assert (=> b!186770 d!55243))

(declare-fun d!55245 () Bool)

(assert (=> d!55245 (= (apply!169 lt!92411 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2159 (getValueByKey!225 (toList!1214 lt!92411) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7549 () Bool)

(assert (= bs!7549 d!55245))

(declare-fun m!213791 () Bool)

(assert (=> bs!7549 m!213791))

(assert (=> bs!7549 m!213791))

(declare-fun m!213793 () Bool)

(assert (=> bs!7549 m!213793))

(assert (=> b!186714 d!55245))

(assert (=> d!55195 d!55191))

(assert (=> d!55197 d!55199))

(declare-fun b!186913 () Bool)

(declare-fun e!123013 () Bool)

(declare-fun e!123012 () Bool)

(assert (=> b!186913 (= e!123013 e!123012)))

(declare-fun c!33534 () Bool)

(declare-fun lt!92473 () SeekEntryResult!654)

(assert (=> b!186913 (= c!33534 ((_ is MissingVacant!654) lt!92473))))

(declare-fun b!186914 () Bool)

(declare-fun res!88416 () Bool)

(declare-fun e!123015 () Bool)

(assert (=> b!186914 (=> (not res!88416) (not e!123015))))

(declare-fun call!18850 () Bool)

(assert (=> b!186914 (= res!88416 call!18850)))

(assert (=> b!186914 (= e!123012 e!123015)))

(declare-fun c!33535 () Bool)

(declare-fun bm!18847 () Bool)

(assert (=> bm!18847 (= call!18850 (inRange!0 (ite c!33535 (index!4786 lt!92473) (index!4789 lt!92473)) (mask!8938 thiss!1248)))))

(declare-fun b!186915 () Bool)

(declare-fun res!88413 () Bool)

(assert (=> b!186915 (= res!88413 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4786 lt!92473)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123014 () Bool)

(assert (=> b!186915 (=> (not res!88413) (not e!123014))))

(declare-fun b!186916 () Bool)

(declare-fun call!18851 () Bool)

(assert (=> b!186916 (= e!123015 (not call!18851))))

(declare-fun d!55247 () Bool)

(assert (=> d!55247 e!123013))

(assert (=> d!55247 (= c!33535 ((_ is MissingZero!654) lt!92473))))

(assert (=> d!55247 (= lt!92473 (seekEntryOrOpen!0 key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(assert (=> d!55247 true))

(declare-fun _$34!1063 () Unit!5618)

(assert (=> d!55247 (= (choose!998 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) key!828 (defaultEntry!3807 thiss!1248)) _$34!1063)))

(declare-fun b!186912 () Bool)

(assert (=> b!186912 (= e!123014 (not call!18851))))

(declare-fun b!186917 () Bool)

(assert (=> b!186917 (= e!123013 e!123014)))

(declare-fun res!88414 () Bool)

(assert (=> b!186917 (= res!88414 call!18850)))

(assert (=> b!186917 (=> (not res!88414) (not e!123014))))

(declare-fun b!186918 () Bool)

(declare-fun res!88415 () Bool)

(assert (=> b!186918 (=> (not res!88415) (not e!123015))))

(assert (=> b!186918 (= res!88415 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4789 lt!92473)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186919 () Bool)

(assert (=> b!186919 (= e!123012 ((_ is Undefined!654) lt!92473))))

(declare-fun bm!18848 () Bool)

(assert (=> bm!18848 (= call!18851 (arrayContainsKey!0 (_keys!5753 thiss!1248) key!828 #b00000000000000000000000000000000))))

(assert (= (and d!55247 c!33535) b!186917))

(assert (= (and d!55247 (not c!33535)) b!186913))

(assert (= (and b!186917 res!88414) b!186915))

(assert (= (and b!186915 res!88413) b!186912))

(assert (= (and b!186913 c!33534) b!186914))

(assert (= (and b!186913 (not c!33534)) b!186919))

(assert (= (and b!186914 res!88416) b!186918))

(assert (= (and b!186918 res!88415) b!186916))

(assert (= (or b!186917 b!186914) bm!18847))

(assert (= (or b!186912 b!186916) bm!18848))

(declare-fun m!213795 () Bool)

(assert (=> b!186915 m!213795))

(declare-fun m!213797 () Bool)

(assert (=> bm!18847 m!213797))

(assert (=> d!55247 m!213563))

(assert (=> bm!18848 m!213685))

(declare-fun m!213799 () Bool)

(assert (=> b!186918 m!213799))

(assert (=> d!55197 d!55247))

(assert (=> d!55197 d!55191))

(declare-fun d!55249 () Bool)

(declare-fun e!123017 () Bool)

(assert (=> d!55249 e!123017))

(declare-fun res!88417 () Bool)

(assert (=> d!55249 (=> res!88417 e!123017)))

(declare-fun lt!92477 () Bool)

(assert (=> d!55249 (= res!88417 (not lt!92477))))

(declare-fun lt!92475 () Bool)

(assert (=> d!55249 (= lt!92477 lt!92475)))

(declare-fun lt!92476 () Unit!5618)

(declare-fun e!123016 () Unit!5618)

(assert (=> d!55249 (= lt!92476 e!123016)))

(declare-fun c!33536 () Bool)

(assert (=> d!55249 (= c!33536 lt!92475)))

(assert (=> d!55249 (= lt!92475 (containsKey!229 (toList!1214 lt!92411) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55249 (= (contains!1306 lt!92411 #b1000000000000000000000000000000000000000000000000000000000000000) lt!92477)))

(declare-fun b!186920 () Bool)

(declare-fun lt!92474 () Unit!5618)

(assert (=> b!186920 (= e!123016 lt!92474)))

(assert (=> b!186920 (= lt!92474 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 lt!92411) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186920 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186921 () Bool)

(declare-fun Unit!5626 () Unit!5618)

(assert (=> b!186921 (= e!123016 Unit!5626)))

(declare-fun b!186922 () Bool)

(assert (=> b!186922 (= e!123017 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55249 c!33536) b!186920))

(assert (= (and d!55249 (not c!33536)) b!186921))

(assert (= (and d!55249 (not res!88417)) b!186922))

(declare-fun m!213801 () Bool)

(assert (=> d!55249 m!213801))

(declare-fun m!213803 () Bool)

(assert (=> b!186920 m!213803))

(assert (=> b!186920 m!213791))

(assert (=> b!186920 m!213791))

(declare-fun m!213805 () Bool)

(assert (=> b!186920 m!213805))

(assert (=> b!186922 m!213791))

(assert (=> b!186922 m!213791))

(assert (=> b!186922 m!213805))

(assert (=> bm!18825 d!55249))

(declare-fun d!55251 () Bool)

(declare-fun e!123028 () Bool)

(assert (=> d!55251 e!123028))

(declare-fun c!33544 () Bool)

(declare-fun lt!92482 () SeekEntryResult!654)

(assert (=> d!55251 (= c!33544 (and ((_ is Intermediate!654) lt!92482) (undefined!1466 lt!92482)))))

(declare-fun e!123031 () SeekEntryResult!654)

(assert (=> d!55251 (= lt!92482 e!123031)))

(declare-fun c!33545 () Bool)

(assert (=> d!55251 (= c!33545 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!92483 () (_ BitVec 64))

(assert (=> d!55251 (= lt!92483 (select (arr!3754 (_keys!5753 thiss!1248)) (toIndex!0 key!828 (mask!8938 thiss!1248))))))

(assert (=> d!55251 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8938 thiss!1248)) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)) lt!92482)))

(declare-fun b!186941 () Bool)

(declare-fun e!123029 () SeekEntryResult!654)

(assert (=> b!186941 (= e!123029 (Intermediate!654 false (toIndex!0 key!828 (mask!8938 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!186942 () Bool)

(assert (=> b!186942 (= e!123031 (Intermediate!654 true (toIndex!0 key!828 (mask!8938 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!186943 () Bool)

(declare-fun e!123032 () Bool)

(assert (=> b!186943 (= e!123028 e!123032)))

(declare-fun res!88424 () Bool)

(assert (=> b!186943 (= res!88424 (and ((_ is Intermediate!654) lt!92482) (not (undefined!1466 lt!92482)) (bvslt (x!20244 lt!92482) #b01111111111111111111111111111110) (bvsge (x!20244 lt!92482) #b00000000000000000000000000000000) (bvsge (x!20244 lt!92482) #b00000000000000000000000000000000)))))

(assert (=> b!186943 (=> (not res!88424) (not e!123032))))

(declare-fun b!186944 () Bool)

(assert (=> b!186944 (and (bvsge (index!4788 lt!92482) #b00000000000000000000000000000000) (bvslt (index!4788 lt!92482) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun res!88426 () Bool)

(assert (=> b!186944 (= res!88426 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4788 lt!92482)) key!828))))

(declare-fun e!123030 () Bool)

(assert (=> b!186944 (=> res!88426 e!123030)))

(assert (=> b!186944 (= e!123032 e!123030)))

(declare-fun b!186945 () Bool)

(assert (=> b!186945 (= e!123028 (bvsge (x!20244 lt!92482) #b01111111111111111111111111111110))))

(declare-fun b!186946 () Bool)

(assert (=> b!186946 (and (bvsge (index!4788 lt!92482) #b00000000000000000000000000000000) (bvslt (index!4788 lt!92482) (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> b!186946 (= e!123030 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4788 lt!92482)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186947 () Bool)

(assert (=> b!186947 (= e!123029 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8938 thiss!1248)) #b00000000000000000000000000000000 (mask!8938 thiss!1248)) key!828 (_keys!5753 thiss!1248) (mask!8938 thiss!1248)))))

(declare-fun b!186948 () Bool)

(assert (=> b!186948 (and (bvsge (index!4788 lt!92482) #b00000000000000000000000000000000) (bvslt (index!4788 lt!92482) (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun res!88425 () Bool)

(assert (=> b!186948 (= res!88425 (= (select (arr!3754 (_keys!5753 thiss!1248)) (index!4788 lt!92482)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186948 (=> res!88425 e!123030)))

(declare-fun b!186949 () Bool)

(assert (=> b!186949 (= e!123031 e!123029)))

(declare-fun c!33543 () Bool)

(assert (=> b!186949 (= c!33543 (or (= lt!92483 key!828) (= (bvadd lt!92483 lt!92483) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55251 c!33545) b!186942))

(assert (= (and d!55251 (not c!33545)) b!186949))

(assert (= (and b!186949 c!33543) b!186941))

(assert (= (and b!186949 (not c!33543)) b!186947))

(assert (= (and d!55251 c!33544) b!186945))

(assert (= (and d!55251 (not c!33544)) b!186943))

(assert (= (and b!186943 res!88424) b!186944))

(assert (= (and b!186944 (not res!88426)) b!186948))

(assert (= (and b!186948 (not res!88425)) b!186946))

(declare-fun m!213807 () Bool)

(assert (=> b!186946 m!213807))

(assert (=> b!186948 m!213807))

(assert (=> b!186944 m!213807))

(assert (=> d!55251 m!213695))

(declare-fun m!213809 () Bool)

(assert (=> d!55251 m!213809))

(assert (=> d!55251 m!213569))

(assert (=> b!186947 m!213695))

(declare-fun m!213811 () Bool)

(assert (=> b!186947 m!213811))

(assert (=> b!186947 m!213811))

(declare-fun m!213813 () Bool)

(assert (=> b!186947 m!213813))

(assert (=> d!55199 d!55251))

(declare-fun d!55253 () Bool)

(declare-fun lt!92489 () (_ BitVec 32))

(declare-fun lt!92488 () (_ BitVec 32))

(assert (=> d!55253 (= lt!92489 (bvmul (bvxor lt!92488 (bvlshr lt!92488 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55253 (= lt!92488 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55253 (and (bvsge (mask!8938 thiss!1248) #b00000000000000000000000000000000) (let ((res!88427 (let ((h!3029 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20262 (bvmul (bvxor h!3029 (bvlshr h!3029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20262 (bvlshr x!20262 #b00000000000000000000000000001101)) (mask!8938 thiss!1248)))))) (and (bvslt res!88427 (bvadd (mask!8938 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!88427 #b00000000000000000000000000000000))))))

(assert (=> d!55253 (= (toIndex!0 key!828 (mask!8938 thiss!1248)) (bvand (bvxor lt!92489 (bvlshr lt!92489 #b00000000000000000000000000001101)) (mask!8938 thiss!1248)))))

(assert (=> d!55199 d!55253))

(assert (=> d!55199 d!55191))

(declare-fun d!55255 () Bool)

(assert (=> d!55255 (= (apply!169 (+!284 lt!92400 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) lt!92398) (apply!169 lt!92400 lt!92398))))

(declare-fun lt!92492 () Unit!5618)

(declare-fun choose!1000 (ListLongMap!2397 (_ BitVec 64) V!5475 (_ BitVec 64)) Unit!5618)

(assert (=> d!55255 (= lt!92492 (choose!1000 lt!92400 lt!92403 (zeroValue!3648 thiss!1248) lt!92398))))

(declare-fun e!123035 () Bool)

(assert (=> d!55255 e!123035))

(declare-fun res!88430 () Bool)

(assert (=> d!55255 (=> (not res!88430) (not e!123035))))

(assert (=> d!55255 (= res!88430 (contains!1306 lt!92400 lt!92398))))

(assert (=> d!55255 (= (addApplyDifferent!145 lt!92400 lt!92403 (zeroValue!3648 thiss!1248) lt!92398) lt!92492)))

(declare-fun b!186953 () Bool)

(assert (=> b!186953 (= e!123035 (not (= lt!92398 lt!92403)))))

(assert (= (and d!55255 res!88430) b!186953))

(declare-fun m!213815 () Bool)

(assert (=> d!55255 m!213815))

(assert (=> d!55255 m!213651))

(assert (=> d!55255 m!213651))

(assert (=> d!55255 m!213669))

(declare-fun m!213817 () Bool)

(assert (=> d!55255 m!213817))

(assert (=> d!55255 m!213655))

(assert (=> b!186700 d!55255))

(declare-fun d!55257 () Bool)

(declare-fun e!123037 () Bool)

(assert (=> d!55257 e!123037))

(declare-fun res!88431 () Bool)

(assert (=> d!55257 (=> res!88431 e!123037)))

(declare-fun lt!92496 () Bool)

(assert (=> d!55257 (= res!88431 (not lt!92496))))

(declare-fun lt!92494 () Bool)

(assert (=> d!55257 (= lt!92496 lt!92494)))

(declare-fun lt!92495 () Unit!5618)

(declare-fun e!123036 () Unit!5618)

(assert (=> d!55257 (= lt!92495 e!123036)))

(declare-fun c!33546 () Bool)

(assert (=> d!55257 (= c!33546 lt!92494)))

(assert (=> d!55257 (= lt!92494 (containsKey!229 (toList!1214 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) lt!92399))))

(assert (=> d!55257 (= (contains!1306 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) lt!92399) lt!92496)))

(declare-fun b!186954 () Bool)

(declare-fun lt!92493 () Unit!5618)

(assert (=> b!186954 (= e!123036 lt!92493)))

(assert (=> b!186954 (= lt!92493 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) lt!92399))))

(assert (=> b!186954 (isDefined!179 (getValueByKey!225 (toList!1214 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) lt!92399))))

(declare-fun b!186955 () Bool)

(declare-fun Unit!5627 () Unit!5618)

(assert (=> b!186955 (= e!123036 Unit!5627)))

(declare-fun b!186956 () Bool)

(assert (=> b!186956 (= e!123037 (isDefined!179 (getValueByKey!225 (toList!1214 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) lt!92399)))))

(assert (= (and d!55257 c!33546) b!186954))

(assert (= (and d!55257 (not c!33546)) b!186955))

(assert (= (and d!55257 (not res!88431)) b!186956))

(declare-fun m!213819 () Bool)

(assert (=> d!55257 m!213819))

(declare-fun m!213821 () Bool)

(assert (=> b!186954 m!213821))

(declare-fun m!213823 () Bool)

(assert (=> b!186954 m!213823))

(assert (=> b!186954 m!213823))

(declare-fun m!213825 () Bool)

(assert (=> b!186954 m!213825))

(assert (=> b!186956 m!213823))

(assert (=> b!186956 m!213823))

(assert (=> b!186956 m!213825))

(assert (=> b!186700 d!55257))

(declare-fun d!55259 () Bool)

(declare-fun e!123038 () Bool)

(assert (=> d!55259 e!123038))

(declare-fun res!88433 () Bool)

(assert (=> d!55259 (=> (not res!88433) (not e!123038))))

(declare-fun lt!92497 () ListLongMap!2397)

(assert (=> d!55259 (= res!88433 (contains!1306 lt!92497 (_1!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))))))

(declare-fun lt!92499 () List!2396)

(assert (=> d!55259 (= lt!92497 (ListLongMap!2398 lt!92499))))

(declare-fun lt!92500 () Unit!5618)

(declare-fun lt!92498 () Unit!5618)

(assert (=> d!55259 (= lt!92500 lt!92498)))

(assert (=> d!55259 (= (getValueByKey!225 lt!92499 (_1!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))))))

(assert (=> d!55259 (= lt!92498 (lemmaContainsTupThenGetReturnValue!119 lt!92499 (_1!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))))))

(assert (=> d!55259 (= lt!92499 (insertStrictlySorted!121 (toList!1214 lt!92412) (_1!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))))))

(assert (=> d!55259 (= (+!284 lt!92412 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) lt!92497)))

(declare-fun b!186957 () Bool)

(declare-fun res!88432 () Bool)

(assert (=> b!186957 (=> (not res!88432) (not e!123038))))

(assert (=> b!186957 (= res!88432 (= (getValueByKey!225 (toList!1214 lt!92497) (_1!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))))))))

(declare-fun b!186958 () Bool)

(assert (=> b!186958 (= e!123038 (contains!1308 (toList!1214 lt!92497) (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))))))

(assert (= (and d!55259 res!88433) b!186957))

(assert (= (and b!186957 res!88432) b!186958))

(declare-fun m!213827 () Bool)

(assert (=> d!55259 m!213827))

(declare-fun m!213829 () Bool)

(assert (=> d!55259 m!213829))

(declare-fun m!213831 () Bool)

(assert (=> d!55259 m!213831))

(declare-fun m!213833 () Bool)

(assert (=> d!55259 m!213833))

(declare-fun m!213835 () Bool)

(assert (=> b!186957 m!213835))

(declare-fun m!213837 () Bool)

(assert (=> b!186958 m!213837))

(assert (=> b!186700 d!55259))

(declare-fun d!55261 () Bool)

(assert (=> d!55261 (= (apply!169 (+!284 lt!92412 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) lt!92402) (apply!169 lt!92412 lt!92402))))

(declare-fun lt!92501 () Unit!5618)

(assert (=> d!55261 (= lt!92501 (choose!1000 lt!92412 lt!92395 (minValue!3648 thiss!1248) lt!92402))))

(declare-fun e!123039 () Bool)

(assert (=> d!55261 e!123039))

(declare-fun res!88434 () Bool)

(assert (=> d!55261 (=> (not res!88434) (not e!123039))))

(assert (=> d!55261 (= res!88434 (contains!1306 lt!92412 lt!92402))))

(assert (=> d!55261 (= (addApplyDifferent!145 lt!92412 lt!92395 (minValue!3648 thiss!1248) lt!92402) lt!92501)))

(declare-fun b!186959 () Bool)

(assert (=> b!186959 (= e!123039 (not (= lt!92402 lt!92395)))))

(assert (= (and d!55261 res!88434) b!186959))

(declare-fun m!213839 () Bool)

(assert (=> d!55261 m!213839))

(assert (=> d!55261 m!213657))

(assert (=> d!55261 m!213657))

(assert (=> d!55261 m!213659))

(declare-fun m!213841 () Bool)

(assert (=> d!55261 m!213841))

(assert (=> d!55261 m!213653))

(assert (=> b!186700 d!55261))

(declare-fun d!55263 () Bool)

(declare-fun e!123040 () Bool)

(assert (=> d!55263 e!123040))

(declare-fun res!88436 () Bool)

(assert (=> d!55263 (=> (not res!88436) (not e!123040))))

(declare-fun lt!92502 () ListLongMap!2397)

(assert (=> d!55263 (= res!88436 (contains!1306 lt!92502 (_1!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))))))

(declare-fun lt!92504 () List!2396)

(assert (=> d!55263 (= lt!92502 (ListLongMap!2398 lt!92504))))

(declare-fun lt!92505 () Unit!5618)

(declare-fun lt!92503 () Unit!5618)

(assert (=> d!55263 (= lt!92505 lt!92503)))

(assert (=> d!55263 (= (getValueByKey!225 lt!92504 (_1!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))))))

(assert (=> d!55263 (= lt!92503 (lemmaContainsTupThenGetReturnValue!119 lt!92504 (_1!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))))))

(assert (=> d!55263 (= lt!92504 (insertStrictlySorted!121 (toList!1214 lt!92413) (_1!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))))))

(assert (=> d!55263 (= (+!284 lt!92413 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) lt!92502)))

(declare-fun b!186960 () Bool)

(declare-fun res!88435 () Bool)

(assert (=> b!186960 (=> (not res!88435) (not e!123040))))

(assert (=> b!186960 (= res!88435 (= (getValueByKey!225 (toList!1214 lt!92502) (_1!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))))))))

(declare-fun b!186961 () Bool)

(assert (=> b!186961 (= e!123040 (contains!1308 (toList!1214 lt!92502) (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))))))

(assert (= (and d!55263 res!88436) b!186960))

(assert (= (and b!186960 res!88435) b!186961))

(declare-fun m!213843 () Bool)

(assert (=> d!55263 m!213843))

(declare-fun m!213845 () Bool)

(assert (=> d!55263 m!213845))

(declare-fun m!213847 () Bool)

(assert (=> d!55263 m!213847))

(declare-fun m!213849 () Bool)

(assert (=> d!55263 m!213849))

(declare-fun m!213851 () Bool)

(assert (=> b!186960 m!213851))

(declare-fun m!213853 () Bool)

(assert (=> b!186961 m!213853))

(assert (=> b!186700 d!55263))

(declare-fun d!55265 () Bool)

(declare-fun e!123041 () Bool)

(assert (=> d!55265 e!123041))

(declare-fun res!88438 () Bool)

(assert (=> d!55265 (=> (not res!88438) (not e!123041))))

(declare-fun lt!92506 () ListLongMap!2397)

(assert (=> d!55265 (= res!88438 (contains!1306 lt!92506 (_1!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))))))

(declare-fun lt!92508 () List!2396)

(assert (=> d!55265 (= lt!92506 (ListLongMap!2398 lt!92508))))

(declare-fun lt!92509 () Unit!5618)

(declare-fun lt!92507 () Unit!5618)

(assert (=> d!55265 (= lt!92509 lt!92507)))

(assert (=> d!55265 (= (getValueByKey!225 lt!92508 (_1!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55265 (= lt!92507 (lemmaContainsTupThenGetReturnValue!119 lt!92508 (_1!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55265 (= lt!92508 (insertStrictlySorted!121 (toList!1214 lt!92400) (_1!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55265 (= (+!284 lt!92400 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) lt!92506)))

(declare-fun b!186962 () Bool)

(declare-fun res!88437 () Bool)

(assert (=> b!186962 (=> (not res!88437) (not e!123041))))

(assert (=> b!186962 (= res!88437 (= (getValueByKey!225 (toList!1214 lt!92506) (_1!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))))))))

(declare-fun b!186963 () Bool)

(assert (=> b!186963 (= e!123041 (contains!1308 (toList!1214 lt!92506) (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))))))

(assert (= (and d!55265 res!88438) b!186962))

(assert (= (and b!186962 res!88437) b!186963))

(declare-fun m!213855 () Bool)

(assert (=> d!55265 m!213855))

(declare-fun m!213857 () Bool)

(assert (=> d!55265 m!213857))

(declare-fun m!213859 () Bool)

(assert (=> d!55265 m!213859))

(declare-fun m!213861 () Bool)

(assert (=> d!55265 m!213861))

(declare-fun m!213863 () Bool)

(assert (=> b!186962 m!213863))

(declare-fun m!213865 () Bool)

(assert (=> b!186963 m!213865))

(assert (=> b!186700 d!55265))

(declare-fun d!55267 () Bool)

(assert (=> d!55267 (= (apply!169 (+!284 lt!92400 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248))) lt!92398) (get!2159 (getValueByKey!225 (toList!1214 (+!284 lt!92400 (tuple2!3467 lt!92403 (zeroValue!3648 thiss!1248)))) lt!92398)))))

(declare-fun bs!7550 () Bool)

(assert (= bs!7550 d!55267))

(declare-fun m!213867 () Bool)

(assert (=> bs!7550 m!213867))

(assert (=> bs!7550 m!213867))

(declare-fun m!213869 () Bool)

(assert (=> bs!7550 m!213869))

(assert (=> b!186700 d!55267))

(declare-fun d!55269 () Bool)

(assert (=> d!55269 (= (apply!169 lt!92400 lt!92398) (get!2159 (getValueByKey!225 (toList!1214 lt!92400) lt!92398)))))

(declare-fun bs!7551 () Bool)

(assert (= bs!7551 d!55269))

(declare-fun m!213871 () Bool)

(assert (=> bs!7551 m!213871))

(assert (=> bs!7551 m!213871))

(declare-fun m!213873 () Bool)

(assert (=> bs!7551 m!213873))

(assert (=> b!186700 d!55269))

(declare-fun d!55271 () Bool)

(declare-fun e!123042 () Bool)

(assert (=> d!55271 e!123042))

(declare-fun res!88440 () Bool)

(assert (=> d!55271 (=> (not res!88440) (not e!123042))))

(declare-fun lt!92510 () ListLongMap!2397)

(assert (=> d!55271 (= res!88440 (contains!1306 lt!92510 (_1!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))))))

(declare-fun lt!92512 () List!2396)

(assert (=> d!55271 (= lt!92510 (ListLongMap!2398 lt!92512))))

(declare-fun lt!92513 () Unit!5618)

(declare-fun lt!92511 () Unit!5618)

(assert (=> d!55271 (= lt!92513 lt!92511)))

(assert (=> d!55271 (= (getValueByKey!225 lt!92512 (_1!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55271 (= lt!92511 (lemmaContainsTupThenGetReturnValue!119 lt!92512 (_1!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55271 (= lt!92512 (insertStrictlySorted!121 (toList!1214 lt!92406) (_1!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) (_2!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))))))

(assert (=> d!55271 (= (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) lt!92510)))

(declare-fun b!186964 () Bool)

(declare-fun res!88439 () Bool)

(assert (=> b!186964 (=> (not res!88439) (not e!123042))))

(assert (=> b!186964 (= res!88439 (= (getValueByKey!225 (toList!1214 lt!92510) (_1!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248)))) (Some!230 (_2!1743 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))))))))

(declare-fun b!186965 () Bool)

(assert (=> b!186965 (= e!123042 (contains!1308 (toList!1214 lt!92510) (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))))))

(assert (= (and d!55271 res!88440) b!186964))

(assert (= (and b!186964 res!88439) b!186965))

(declare-fun m!213875 () Bool)

(assert (=> d!55271 m!213875))

(declare-fun m!213877 () Bool)

(assert (=> d!55271 m!213877))

(declare-fun m!213879 () Bool)

(assert (=> d!55271 m!213879))

(declare-fun m!213881 () Bool)

(assert (=> d!55271 m!213881))

(declare-fun m!213883 () Bool)

(assert (=> b!186964 m!213883))

(declare-fun m!213885 () Bool)

(assert (=> b!186965 m!213885))

(assert (=> b!186700 d!55271))

(declare-fun d!55273 () Bool)

(assert (=> d!55273 (= (apply!169 (+!284 lt!92413 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) lt!92401) (get!2159 (getValueByKey!225 (toList!1214 (+!284 lt!92413 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248)))) lt!92401)))))

(declare-fun bs!7552 () Bool)

(assert (= bs!7552 d!55273))

(declare-fun m!213887 () Bool)

(assert (=> bs!7552 m!213887))

(assert (=> bs!7552 m!213887))

(declare-fun m!213889 () Bool)

(assert (=> bs!7552 m!213889))

(assert (=> b!186700 d!55273))

(declare-fun b!186990 () Bool)

(declare-fun e!123063 () ListLongMap!2397)

(declare-fun call!18854 () ListLongMap!2397)

(assert (=> b!186990 (= e!123063 call!18854)))

(declare-fun b!186991 () Bool)

(declare-fun e!123057 () Bool)

(assert (=> b!186991 (= e!123057 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186991 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!186992 () Bool)

(declare-fun e!123061 () Bool)

(declare-fun lt!92534 () ListLongMap!2397)

(assert (=> b!186992 (= e!123061 (= lt!92534 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3807 thiss!1248))))))

(declare-fun b!186993 () Bool)

(declare-fun res!88449 () Bool)

(declare-fun e!123060 () Bool)

(assert (=> b!186993 (=> (not res!88449) (not e!123060))))

(assert (=> b!186993 (= res!88449 (not (contains!1306 lt!92534 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!186994 () Bool)

(declare-fun e!123059 () ListLongMap!2397)

(assert (=> b!186994 (= e!123059 (ListLongMap!2398 Nil!2393))))

(declare-fun d!55275 () Bool)

(assert (=> d!55275 e!123060))

(declare-fun res!88450 () Bool)

(assert (=> d!55275 (=> (not res!88450) (not e!123060))))

(assert (=> d!55275 (= res!88450 (not (contains!1306 lt!92534 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!55275 (= lt!92534 e!123059)))

(declare-fun c!33557 () Bool)

(assert (=> d!55275 (= c!33557 (bvsge #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> d!55275 (validMask!0 (mask!8938 thiss!1248))))

(assert (=> d!55275 (= (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3807 thiss!1248)) lt!92534)))

(declare-fun b!186995 () Bool)

(assert (=> b!186995 (= e!123059 e!123063)))

(declare-fun c!33555 () Bool)

(assert (=> b!186995 (= c!33555 (validKeyInArray!0 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18851 () Bool)

(assert (=> bm!18851 (= call!18854 (getCurrentListMapNoExtraKeys!199 (_keys!5753 thiss!1248) (_values!3790 thiss!1248) (mask!8938 thiss!1248) (extraKeys!3544 thiss!1248) (zeroValue!3648 thiss!1248) (minValue!3648 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3807 thiss!1248)))))

(declare-fun b!186996 () Bool)

(declare-fun e!123058 () Bool)

(assert (=> b!186996 (= e!123058 e!123061)))

(declare-fun c!33558 () Bool)

(assert (=> b!186996 (= c!33558 (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186997 () Bool)

(assert (=> b!186997 (= e!123060 e!123058)))

(declare-fun c!33556 () Bool)

(assert (=> b!186997 (= c!33556 e!123057)))

(declare-fun res!88452 () Bool)

(assert (=> b!186997 (=> (not res!88452) (not e!123057))))

(assert (=> b!186997 (= res!88452 (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun b!186998 () Bool)

(declare-fun isEmpty!479 (ListLongMap!2397) Bool)

(assert (=> b!186998 (= e!123061 (isEmpty!479 lt!92534))))

(declare-fun b!186999 () Bool)

(declare-fun e!123062 () Bool)

(assert (=> b!186999 (= e!123058 e!123062)))

(assert (=> b!186999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(declare-fun res!88451 () Bool)

(assert (=> b!186999 (= res!88451 (contains!1306 lt!92534 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186999 (=> (not res!88451) (not e!123062))))

(declare-fun b!187000 () Bool)

(assert (=> b!187000 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4071 (_keys!5753 thiss!1248))))))

(assert (=> b!187000 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4072 (_values!3790 thiss!1248))))))

(assert (=> b!187000 (= e!123062 (= (apply!169 lt!92534 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)) (get!2158 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!187001 () Bool)

(declare-fun lt!92530 () Unit!5618)

(declare-fun lt!92533 () Unit!5618)

(assert (=> b!187001 (= lt!92530 lt!92533)))

(declare-fun lt!92532 () V!5475)

(declare-fun lt!92531 () ListLongMap!2397)

(declare-fun lt!92528 () (_ BitVec 64))

(declare-fun lt!92529 () (_ BitVec 64))

(assert (=> b!187001 (not (contains!1306 (+!284 lt!92531 (tuple2!3467 lt!92528 lt!92532)) lt!92529))))

(declare-fun addStillNotContains!92 (ListLongMap!2397 (_ BitVec 64) V!5475 (_ BitVec 64)) Unit!5618)

(assert (=> b!187001 (= lt!92533 (addStillNotContains!92 lt!92531 lt!92528 lt!92532 lt!92529))))

(assert (=> b!187001 (= lt!92529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!187001 (= lt!92532 (get!2158 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!187001 (= lt!92528 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187001 (= lt!92531 call!18854)))

(assert (=> b!187001 (= e!123063 (+!284 call!18854 (tuple2!3467 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000) (get!2158 (select (arr!3755 (_values!3790 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!507 (defaultEntry!3807 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!55275 c!33557) b!186994))

(assert (= (and d!55275 (not c!33557)) b!186995))

(assert (= (and b!186995 c!33555) b!187001))

(assert (= (and b!186995 (not c!33555)) b!186990))

(assert (= (or b!187001 b!186990) bm!18851))

(assert (= (and d!55275 res!88450) b!186993))

(assert (= (and b!186993 res!88449) b!186997))

(assert (= (and b!186997 res!88452) b!186991))

(assert (= (and b!186997 c!33556) b!186999))

(assert (= (and b!186997 (not c!33556)) b!186996))

(assert (= (and b!186999 res!88451) b!187000))

(assert (= (and b!186996 c!33558) b!186992))

(assert (= (and b!186996 (not c!33558)) b!186998))

(declare-fun b_lambda!7305 () Bool)

(assert (=> (not b_lambda!7305) (not b!187000)))

(assert (=> b!187000 t!7295))

(declare-fun b_and!11233 () Bool)

(assert (= b_and!11231 (and (=> t!7295 result!4833) b_and!11233)))

(declare-fun b_lambda!7307 () Bool)

(assert (=> (not b_lambda!7307) (not b!187001)))

(assert (=> b!187001 t!7295))

(declare-fun b_and!11235 () Bool)

(assert (= b_and!11233 (and (=> t!7295 result!4833) b_and!11235)))

(assert (=> b!186995 m!213623))

(assert (=> b!186995 m!213623))

(assert (=> b!186995 m!213627))

(assert (=> b!186999 m!213623))

(assert (=> b!186999 m!213623))

(declare-fun m!213891 () Bool)

(assert (=> b!186999 m!213891))

(declare-fun m!213893 () Bool)

(assert (=> d!55275 m!213893))

(assert (=> d!55275 m!213569))

(assert (=> b!186991 m!213623))

(assert (=> b!186991 m!213623))

(assert (=> b!186991 m!213627))

(declare-fun m!213895 () Bool)

(assert (=> b!186992 m!213895))

(declare-fun m!213897 () Bool)

(assert (=> b!186998 m!213897))

(assert (=> b!187001 m!213633))

(assert (=> b!187001 m!213635))

(assert (=> b!187001 m!213633))

(assert (=> b!187001 m!213635))

(assert (=> b!187001 m!213637))

(assert (=> b!187001 m!213623))

(declare-fun m!213899 () Bool)

(assert (=> b!187001 m!213899))

(declare-fun m!213901 () Bool)

(assert (=> b!187001 m!213901))

(declare-fun m!213903 () Bool)

(assert (=> b!187001 m!213903))

(assert (=> b!187001 m!213901))

(declare-fun m!213905 () Bool)

(assert (=> b!187001 m!213905))

(assert (=> bm!18851 m!213895))

(declare-fun m!213907 () Bool)

(assert (=> b!186993 m!213907))

(assert (=> b!187000 m!213623))

(declare-fun m!213909 () Bool)

(assert (=> b!187000 m!213909))

(assert (=> b!187000 m!213633))

(assert (=> b!187000 m!213635))

(assert (=> b!187000 m!213633))

(assert (=> b!187000 m!213635))

(assert (=> b!187000 m!213637))

(assert (=> b!187000 m!213623))

(assert (=> b!186700 d!55275))

(declare-fun d!55277 () Bool)

(assert (=> d!55277 (= (apply!169 (+!284 lt!92412 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248))) lt!92402) (get!2159 (getValueByKey!225 (toList!1214 (+!284 lt!92412 (tuple2!3467 lt!92395 (minValue!3648 thiss!1248)))) lt!92402)))))

(declare-fun bs!7553 () Bool)

(assert (= bs!7553 d!55277))

(declare-fun m!213911 () Bool)

(assert (=> bs!7553 m!213911))

(assert (=> bs!7553 m!213911))

(declare-fun m!213913 () Bool)

(assert (=> bs!7553 m!213913))

(assert (=> b!186700 d!55277))

(declare-fun d!55279 () Bool)

(assert (=> d!55279 (= (apply!169 (+!284 lt!92413 (tuple2!3467 lt!92394 (minValue!3648 thiss!1248))) lt!92401) (apply!169 lt!92413 lt!92401))))

(declare-fun lt!92535 () Unit!5618)

(assert (=> d!55279 (= lt!92535 (choose!1000 lt!92413 lt!92394 (minValue!3648 thiss!1248) lt!92401))))

(declare-fun e!123064 () Bool)

(assert (=> d!55279 e!123064))

(declare-fun res!88453 () Bool)

(assert (=> d!55279 (=> (not res!88453) (not e!123064))))

(assert (=> d!55279 (= res!88453 (contains!1306 lt!92413 lt!92401))))

(assert (=> d!55279 (= (addApplyDifferent!145 lt!92413 lt!92394 (minValue!3648 thiss!1248) lt!92401) lt!92535)))

(declare-fun b!187002 () Bool)

(assert (=> b!187002 (= e!123064 (not (= lt!92401 lt!92394)))))

(assert (= (and d!55279 res!88453) b!187002))

(declare-fun m!213915 () Bool)

(assert (=> d!55279 m!213915))

(assert (=> d!55279 m!213675))

(assert (=> d!55279 m!213675))

(assert (=> d!55279 m!213677))

(declare-fun m!213917 () Bool)

(assert (=> d!55279 m!213917))

(assert (=> d!55279 m!213665))

(assert (=> b!186700 d!55279))

(declare-fun d!55281 () Bool)

(assert (=> d!55281 (= (apply!169 lt!92413 lt!92401) (get!2159 (getValueByKey!225 (toList!1214 lt!92413) lt!92401)))))

(declare-fun bs!7554 () Bool)

(assert (= bs!7554 d!55281))

(declare-fun m!213919 () Bool)

(assert (=> bs!7554 m!213919))

(assert (=> bs!7554 m!213919))

(declare-fun m!213921 () Bool)

(assert (=> bs!7554 m!213921))

(assert (=> b!186700 d!55281))

(declare-fun d!55283 () Bool)

(assert (=> d!55283 (= (apply!169 lt!92412 lt!92402) (get!2159 (getValueByKey!225 (toList!1214 lt!92412) lt!92402)))))

(declare-fun bs!7555 () Bool)

(assert (= bs!7555 d!55283))

(declare-fun m!213923 () Bool)

(assert (=> bs!7555 m!213923))

(assert (=> bs!7555 m!213923))

(declare-fun m!213925 () Bool)

(assert (=> bs!7555 m!213925))

(assert (=> b!186700 d!55283))

(declare-fun d!55285 () Bool)

(assert (=> d!55285 (contains!1306 (+!284 lt!92406 (tuple2!3467 lt!92397 (zeroValue!3648 thiss!1248))) lt!92399)))

(declare-fun lt!92538 () Unit!5618)

(declare-fun choose!1001 (ListLongMap!2397 (_ BitVec 64) V!5475 (_ BitVec 64)) Unit!5618)

(assert (=> d!55285 (= lt!92538 (choose!1001 lt!92406 lt!92397 (zeroValue!3648 thiss!1248) lt!92399))))

(assert (=> d!55285 (contains!1306 lt!92406 lt!92399)))

(assert (=> d!55285 (= (addStillContains!145 lt!92406 lt!92397 (zeroValue!3648 thiss!1248) lt!92399) lt!92538)))

(declare-fun bs!7556 () Bool)

(assert (= bs!7556 d!55285))

(assert (=> bs!7556 m!213663))

(assert (=> bs!7556 m!213663))

(assert (=> bs!7556 m!213673))

(declare-fun m!213927 () Bool)

(assert (=> bs!7556 m!213927))

(declare-fun m!213929 () Bool)

(assert (=> bs!7556 m!213929))

(assert (=> b!186700 d!55285))

(assert (=> bm!18822 d!55275))

(declare-fun d!55287 () Bool)

(declare-fun e!123066 () Bool)

(assert (=> d!55287 e!123066))

(declare-fun res!88454 () Bool)

(assert (=> d!55287 (=> res!88454 e!123066)))

(declare-fun lt!92542 () Bool)

(assert (=> d!55287 (= res!88454 (not lt!92542))))

(declare-fun lt!92540 () Bool)

(assert (=> d!55287 (= lt!92542 lt!92540)))

(declare-fun lt!92541 () Unit!5618)

(declare-fun e!123065 () Unit!5618)

(assert (=> d!55287 (= lt!92541 e!123065)))

(declare-fun c!33559 () Bool)

(assert (=> d!55287 (= c!33559 lt!92540)))

(assert (=> d!55287 (= lt!92540 (containsKey!229 (toList!1214 lt!92411) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55287 (= (contains!1306 lt!92411 #b0000000000000000000000000000000000000000000000000000000000000000) lt!92542)))

(declare-fun b!187004 () Bool)

(declare-fun lt!92539 () Unit!5618)

(assert (=> b!187004 (= e!123065 lt!92539)))

(assert (=> b!187004 (= lt!92539 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 lt!92411) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187004 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187005 () Bool)

(declare-fun Unit!5628 () Unit!5618)

(assert (=> b!187005 (= e!123065 Unit!5628)))

(declare-fun b!187006 () Bool)

(assert (=> b!187006 (= e!123066 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55287 c!33559) b!187004))

(assert (= (and d!55287 (not c!33559)) b!187005))

(assert (= (and d!55287 (not res!88454)) b!187006))

(declare-fun m!213931 () Bool)

(assert (=> d!55287 m!213931))

(declare-fun m!213933 () Bool)

(assert (=> b!187004 m!213933))

(assert (=> b!187004 m!213747))

(assert (=> b!187004 m!213747))

(declare-fun m!213935 () Bool)

(assert (=> b!187004 m!213935))

(assert (=> b!187006 m!213747))

(assert (=> b!187006 m!213747))

(assert (=> b!187006 m!213935))

(assert (=> bm!18821 d!55287))

(declare-fun d!55289 () Bool)

(declare-fun e!123068 () Bool)

(assert (=> d!55289 e!123068))

(declare-fun res!88455 () Bool)

(assert (=> d!55289 (=> res!88455 e!123068)))

(declare-fun lt!92546 () Bool)

(assert (=> d!55289 (= res!88455 (not lt!92546))))

(declare-fun lt!92544 () Bool)

(assert (=> d!55289 (= lt!92546 lt!92544)))

(declare-fun lt!92545 () Unit!5618)

(declare-fun e!123067 () Unit!5618)

(assert (=> d!55289 (= lt!92545 e!123067)))

(declare-fun c!33560 () Bool)

(assert (=> d!55289 (= c!33560 lt!92544)))

(assert (=> d!55289 (= lt!92544 (containsKey!229 (toList!1214 lt!92411) (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55289 (= (contains!1306 lt!92411 (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)) lt!92546)))

(declare-fun b!187007 () Bool)

(declare-fun lt!92543 () Unit!5618)

(assert (=> b!187007 (= e!123067 lt!92543)))

(assert (=> b!187007 (= lt!92543 (lemmaContainsKeyImpliesGetValueByKeyDefined!178 (toList!1214 lt!92411) (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187007 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187008 () Bool)

(declare-fun Unit!5629 () Unit!5618)

(assert (=> b!187008 (= e!123067 Unit!5629)))

(declare-fun b!187009 () Bool)

(assert (=> b!187009 (= e!123068 (isDefined!179 (getValueByKey!225 (toList!1214 lt!92411) (select (arr!3754 (_keys!5753 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55289 c!33560) b!187007))

(assert (= (and d!55289 (not c!33560)) b!187008))

(assert (= (and d!55289 (not res!88455)) b!187009))

(assert (=> d!55289 m!213623))

(declare-fun m!213937 () Bool)

(assert (=> d!55289 m!213937))

(assert (=> b!187007 m!213623))

(declare-fun m!213939 () Bool)

(assert (=> b!187007 m!213939))

(assert (=> b!187007 m!213623))

(assert (=> b!187007 m!213773))

(assert (=> b!187007 m!213773))

(declare-fun m!213941 () Bool)

(assert (=> b!187007 m!213941))

(assert (=> b!187009 m!213623))

(assert (=> b!187009 m!213773))

(assert (=> b!187009 m!213773))

(assert (=> b!187009 m!213941))

(assert (=> b!186716 d!55289))

(assert (=> b!186715 d!55241))

(declare-fun mapNonEmpty!7532 () Bool)

(declare-fun mapRes!7532 () Bool)

(declare-fun tp!16613 () Bool)

(declare-fun e!123069 () Bool)

(assert (=> mapNonEmpty!7532 (= mapRes!7532 (and tp!16613 e!123069))))

(declare-fun mapRest!7532 () (Array (_ BitVec 32) ValueCell!1842))

(declare-fun mapKey!7532 () (_ BitVec 32))

(declare-fun mapValue!7532 () ValueCell!1842)

(assert (=> mapNonEmpty!7532 (= mapRest!7531 (store mapRest!7532 mapKey!7532 mapValue!7532))))

(declare-fun condMapEmpty!7532 () Bool)

(declare-fun mapDefault!7532 () ValueCell!1842)

(assert (=> mapNonEmpty!7531 (= condMapEmpty!7532 (= mapRest!7531 ((as const (Array (_ BitVec 32) ValueCell!1842)) mapDefault!7532)))))

(declare-fun e!123070 () Bool)

(assert (=> mapNonEmpty!7531 (= tp!16612 (and e!123070 mapRes!7532))))

(declare-fun mapIsEmpty!7532 () Bool)

(assert (=> mapIsEmpty!7532 mapRes!7532))

(declare-fun b!187010 () Bool)

(assert (=> b!187010 (= e!123069 tp_is_empty!4371)))

(declare-fun b!187011 () Bool)

(assert (=> b!187011 (= e!123070 tp_is_empty!4371)))

(assert (= (and mapNonEmpty!7531 condMapEmpty!7532) mapIsEmpty!7532))

(assert (= (and mapNonEmpty!7531 (not condMapEmpty!7532)) mapNonEmpty!7532))

(assert (= (and mapNonEmpty!7532 ((_ is ValueCellFull!1842) mapValue!7532)) b!187010))

(assert (= (and mapNonEmpty!7531 ((_ is ValueCellFull!1842) mapDefault!7532)) b!187011))

(declare-fun m!213943 () Bool)

(assert (=> mapNonEmpty!7532 m!213943))

(declare-fun b_lambda!7309 () Bool)

(assert (= b_lambda!7305 (or (and b!186597 b_free!4599) b_lambda!7309)))

(declare-fun b_lambda!7311 () Bool)

(assert (= b_lambda!7307 (or (and b!186597 b_free!4599) b_lambda!7311)))

(check-sat b_and!11235 (not b!186964) (not bm!18848) (not d!55221) (not d!55263) (not d!55223) (not b!186892) (not b!186960) (not b_lambda!7303) (not b!186956) (not d!55217) (not d!55247) (not b!186822) (not b!186920) (not d!55281) (not d!55271) tp_is_empty!4371 (not d!55273) (not b_lambda!7309) (not b!186808) (not b!186876) (not b!186870) (not b!186957) (not b!186922) (not b!187007) (not d!55259) (not d!55277) (not b!187001) (not b!186958) (not bm!18847) (not b!186954) (not b!186790) (not d!55265) (not b_lambda!7311) (not b!186895) (not b!186995) (not b!186883) (not b!187006) (not b!186993) (not d!55225) (not d!55207) (not b!186869) (not b!186867) (not b!186809) (not d!55245) (not d!55213) (not d!55249) (not b!186831) (not bm!18836) (not b!186851) (not b!186962) (not b!186810) (not d!55255) (not d!55283) (not b!186826) (not d!55211) (not d!55285) (not b!187000) (not d!55261) (not b!186801) (not b!187004) (not b_next!4599) (not d!55267) (not b!186992) (not b!187009) (not b!186991) (not b!186877) (not b!186963) (not b!186947) (not b!186961) (not d!55279) (not b!186789) (not d!55235) (not b!186838) (not d!55287) (not d!55251) (not bm!18851) (not bm!18839) (not b!186998) (not b!186811) (not d!55269) (not d!55257) (not bm!18842) (not d!55275) (not d!55289) (not d!55231) (not b!186965) (not b!186999) (not mapNonEmpty!7532))
(check-sat b_and!11235 (not b_next!4599))
