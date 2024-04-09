; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19774 () Bool)

(assert start!19774)

(declare-fun b!193626 () Bool)

(declare-fun b_free!4713 () Bool)

(declare-fun b_next!4713 () Bool)

(assert (=> b!193626 (= b_free!4713 (not b_next!4713))))

(declare-fun tp!17005 () Bool)

(declare-fun b_and!11441 () Bool)

(assert (=> b!193626 (= tp!17005 b_and!11441)))

(declare-fun b!193622 () Bool)

(declare-fun res!91523 () Bool)

(declare-fun e!127401 () Bool)

(assert (=> b!193622 (=> res!91523 e!127401)))

(declare-datatypes ((V!5627 0))(
  ( (V!5628 (val!2287 Int)) )
))
(declare-datatypes ((ValueCell!1899 0))(
  ( (ValueCellFull!1899 (v!4242 V!5627)) (EmptyCell!1899) )
))
(declare-datatypes ((array!8218 0))(
  ( (array!8219 (arr!3868 (Array (_ BitVec 32) (_ BitVec 64))) (size!4192 (_ BitVec 32))) )
))
(declare-datatypes ((array!8220 0))(
  ( (array!8221 (arr!3869 (Array (_ BitVec 32) ValueCell!1899)) (size!4193 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2706 0))(
  ( (LongMapFixedSize!2707 (defaultEntry!3953 Int) (mask!9210 (_ BitVec 32)) (extraKeys!3690 (_ BitVec 32)) (zeroValue!3794 V!5627) (minValue!3794 V!5627) (_size!1402 (_ BitVec 32)) (_keys!5945 array!8218) (_values!3936 array!8220) (_vacant!1402 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2706)

(assert (=> b!193622 (= res!91523 (or (not (= (size!4193 (_values!3936 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9210 thiss!1248)))) (not (= (size!4192 (_keys!5945 thiss!1248)) (size!4193 (_values!3936 thiss!1248)))) (bvslt (mask!9210 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3690 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3690 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!193623 () Bool)

(declare-fun res!91527 () Bool)

(assert (=> b!193623 (=> res!91527 e!127401)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8218 (_ BitVec 32)) Bool)

(assert (=> b!193623 (= res!91527 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5945 thiss!1248) (mask!9210 thiss!1248))))))

(declare-fun res!91524 () Bool)

(declare-fun e!127406 () Bool)

(assert (=> start!19774 (=> (not res!91524) (not e!127406))))

(declare-fun valid!1102 (LongMapFixedSize!2706) Bool)

(assert (=> start!19774 (= res!91524 (valid!1102 thiss!1248))))

(assert (=> start!19774 e!127406))

(declare-fun e!127400 () Bool)

(assert (=> start!19774 e!127400))

(assert (=> start!19774 true))

(declare-fun tp_is_empty!4485 () Bool)

(assert (=> start!19774 tp_is_empty!4485))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!701 0))(
  ( (MissingZero!701 (index!4974 (_ BitVec 32))) (Found!701 (index!4975 (_ BitVec 32))) (Intermediate!701 (undefined!1513 Bool) (index!4976 (_ BitVec 32)) (x!20679 (_ BitVec 32))) (Undefined!701) (MissingVacant!701 (index!4977 (_ BitVec 32))) )
))
(declare-fun lt!96459 () SeekEntryResult!701)

(declare-fun e!127402 () Bool)

(declare-fun b!193624 () Bool)

(assert (=> b!193624 (= e!127402 (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96459)) key!828))))

(declare-fun b!193625 () Bool)

(declare-fun res!91525 () Bool)

(assert (=> b!193625 (=> res!91525 e!127401)))

(declare-datatypes ((List!2465 0))(
  ( (Nil!2462) (Cons!2461 (h!3102 (_ BitVec 64)) (t!7397 List!2465)) )
))
(declare-fun arrayNoDuplicates!0 (array!8218 (_ BitVec 32) List!2465) Bool)

(assert (=> b!193625 (= res!91525 (not (arrayNoDuplicates!0 (_keys!5945 thiss!1248) #b00000000000000000000000000000000 Nil!2462)))))

(declare-fun e!127409 () Bool)

(declare-fun array_inv!2501 (array!8218) Bool)

(declare-fun array_inv!2502 (array!8220) Bool)

(assert (=> b!193626 (= e!127400 (and tp!17005 tp_is_empty!4485 (array_inv!2501 (_keys!5945 thiss!1248)) (array_inv!2502 (_values!3936 thiss!1248)) e!127409))))

(declare-fun b!193627 () Bool)

(declare-fun e!127405 () Bool)

(assert (=> b!193627 (= e!127405 tp_is_empty!4485)))

(declare-fun b!193628 () Bool)

(declare-fun e!127403 () Bool)

(assert (=> b!193628 (= e!127403 tp_is_empty!4485)))

(declare-fun mapNonEmpty!7757 () Bool)

(declare-fun mapRes!7757 () Bool)

(declare-fun tp!17006 () Bool)

(assert (=> mapNonEmpty!7757 (= mapRes!7757 (and tp!17006 e!127405))))

(declare-fun mapRest!7757 () (Array (_ BitVec 32) ValueCell!1899))

(declare-fun mapKey!7757 () (_ BitVec 32))

(declare-fun mapValue!7757 () ValueCell!1899)

(assert (=> mapNonEmpty!7757 (= (arr!3869 (_values!3936 thiss!1248)) (store mapRest!7757 mapKey!7757 mapValue!7757))))

(declare-fun b!193629 () Bool)

(assert (=> b!193629 (= e!127409 (and e!127403 mapRes!7757))))

(declare-fun condMapEmpty!7757 () Bool)

(declare-fun mapDefault!7757 () ValueCell!1899)

(assert (=> b!193629 (= condMapEmpty!7757 (= (arr!3869 (_values!3936 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1899)) mapDefault!7757)))))

(declare-fun b!193630 () Bool)

(declare-fun res!91526 () Bool)

(assert (=> b!193630 (=> (not res!91526) (not e!127406))))

(assert (=> b!193630 (= res!91526 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193631 () Bool)

(declare-datatypes ((Unit!5864 0))(
  ( (Unit!5865) )
))
(declare-fun e!127404 () Unit!5864)

(declare-fun lt!96457 () Unit!5864)

(assert (=> b!193631 (= e!127404 lt!96457)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!185 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 64) Int) Unit!5864)

(assert (=> b!193631 (= lt!96457 (lemmaInListMapThenSeekEntryOrOpenFindsIt!185 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)))))

(declare-fun res!91521 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193631 (= res!91521 (inRange!0 (index!4975 lt!96459) (mask!9210 thiss!1248)))))

(assert (=> b!193631 (=> (not res!91521) (not e!127402))))

(assert (=> b!193631 e!127402))

(declare-fun b!193632 () Bool)

(declare-fun e!127407 () Bool)

(assert (=> b!193632 (= e!127407 (not e!127401))))

(declare-fun res!91528 () Bool)

(assert (=> b!193632 (=> res!91528 e!127401)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193632 (= res!91528 (not (validMask!0 (mask!9210 thiss!1248))))))

(declare-datatypes ((tuple2!3550 0))(
  ( (tuple2!3551 (_1!1785 (_ BitVec 64)) (_2!1785 V!5627)) )
))
(declare-datatypes ((List!2466 0))(
  ( (Nil!2463) (Cons!2462 (h!3103 tuple2!3550) (t!7398 List!2466)) )
))
(declare-datatypes ((ListLongMap!2481 0))(
  ( (ListLongMap!2482 (toList!1256 List!2466)) )
))
(declare-fun lt!96460 () ListLongMap!2481)

(declare-fun v!309 () V!5627)

(declare-fun +!314 (ListLongMap!2481 tuple2!3550) ListLongMap!2481)

(declare-fun getCurrentListMap!899 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 32) Int) ListLongMap!2481)

(assert (=> b!193632 (= (+!314 lt!96460 (tuple2!3551 key!828 v!309)) (getCurrentListMap!899 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96461 () Unit!5864)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!120 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 32) (_ BitVec 64) V!5627 Int) Unit!5864)

(assert (=> b!193632 (= lt!96461 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!120 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) (index!4975 lt!96459) key!828 v!309 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96462 () Unit!5864)

(assert (=> b!193632 (= lt!96462 e!127404)))

(declare-fun c!34906 () Bool)

(declare-fun contains!1373 (ListLongMap!2481 (_ BitVec 64)) Bool)

(assert (=> b!193632 (= c!34906 (contains!1373 lt!96460 key!828))))

(assert (=> b!193632 (= lt!96460 (getCurrentListMap!899 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun b!193633 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!193633 (= e!127401 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96459))))))

(declare-fun b!193634 () Bool)

(declare-fun Unit!5866 () Unit!5864)

(assert (=> b!193634 (= e!127404 Unit!5866)))

(declare-fun lt!96458 () Unit!5864)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!192 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 64) Int) Unit!5864)

(assert (=> b!193634 (= lt!96458 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!192 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)))))

(assert (=> b!193634 false))

(declare-fun mapIsEmpty!7757 () Bool)

(assert (=> mapIsEmpty!7757 mapRes!7757))

(declare-fun b!193635 () Bool)

(declare-fun res!91522 () Bool)

(assert (=> b!193635 (=> res!91522 e!127401)))

(assert (=> b!193635 (= res!91522 (or (bvslt (index!4975 lt!96459) #b00000000000000000000000000000000) (bvsge (index!4975 lt!96459) (size!4192 (_keys!5945 thiss!1248)))))))

(declare-fun b!193636 () Bool)

(assert (=> b!193636 (= e!127406 e!127407)))

(declare-fun res!91520 () Bool)

(assert (=> b!193636 (=> (not res!91520) (not e!127407))))

(get-info :version)

(assert (=> b!193636 (= res!91520 (and (not ((_ is Undefined!701) lt!96459)) (not ((_ is MissingVacant!701) lt!96459)) (not ((_ is MissingZero!701) lt!96459)) ((_ is Found!701) lt!96459)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8218 (_ BitVec 32)) SeekEntryResult!701)

(assert (=> b!193636 (= lt!96459 (seekEntryOrOpen!0 key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(assert (= (and start!19774 res!91524) b!193630))

(assert (= (and b!193630 res!91526) b!193636))

(assert (= (and b!193636 res!91520) b!193632))

(assert (= (and b!193632 c!34906) b!193631))

(assert (= (and b!193632 (not c!34906)) b!193634))

(assert (= (and b!193631 res!91521) b!193624))

(assert (= (and b!193632 (not res!91528)) b!193622))

(assert (= (and b!193622 (not res!91523)) b!193623))

(assert (= (and b!193623 (not res!91527)) b!193625))

(assert (= (and b!193625 (not res!91525)) b!193635))

(assert (= (and b!193635 (not res!91522)) b!193633))

(assert (= (and b!193629 condMapEmpty!7757) mapIsEmpty!7757))

(assert (= (and b!193629 (not condMapEmpty!7757)) mapNonEmpty!7757))

(assert (= (and mapNonEmpty!7757 ((_ is ValueCellFull!1899) mapValue!7757)) b!193627))

(assert (= (and b!193629 ((_ is ValueCellFull!1899) mapDefault!7757)) b!193628))

(assert (= b!193626 b!193629))

(assert (= start!19774 b!193626))

(declare-fun m!220405 () Bool)

(assert (=> b!193633 m!220405))

(assert (=> b!193633 m!220405))

(declare-fun m!220407 () Bool)

(assert (=> b!193633 m!220407))

(assert (=> b!193624 m!220405))

(declare-fun m!220409 () Bool)

(assert (=> b!193625 m!220409))

(declare-fun m!220411 () Bool)

(assert (=> b!193636 m!220411))

(declare-fun m!220413 () Bool)

(assert (=> b!193631 m!220413))

(declare-fun m!220415 () Bool)

(assert (=> b!193631 m!220415))

(declare-fun m!220417 () Bool)

(assert (=> start!19774 m!220417))

(declare-fun m!220419 () Bool)

(assert (=> b!193623 m!220419))

(declare-fun m!220421 () Bool)

(assert (=> b!193626 m!220421))

(declare-fun m!220423 () Bool)

(assert (=> b!193626 m!220423))

(declare-fun m!220425 () Bool)

(assert (=> b!193632 m!220425))

(declare-fun m!220427 () Bool)

(assert (=> b!193632 m!220427))

(declare-fun m!220429 () Bool)

(assert (=> b!193632 m!220429))

(declare-fun m!220431 () Bool)

(assert (=> b!193632 m!220431))

(declare-fun m!220433 () Bool)

(assert (=> b!193632 m!220433))

(declare-fun m!220435 () Bool)

(assert (=> b!193632 m!220435))

(declare-fun m!220437 () Bool)

(assert (=> b!193632 m!220437))

(declare-fun m!220439 () Bool)

(assert (=> b!193634 m!220439))

(declare-fun m!220441 () Bool)

(assert (=> mapNonEmpty!7757 m!220441))

(check-sat (not b!193623) (not b!193633) tp_is_empty!4485 (not b!193625) (not b_next!4713) (not b!193626) (not b!193631) (not mapNonEmpty!7757) (not b!193636) b_and!11441 (not b!193634) (not b!193632) (not start!19774))
(check-sat b_and!11441 (not b_next!4713))
(get-model)

(declare-fun b!193698 () Bool)

(declare-fun lt!96485 () SeekEntryResult!701)

(assert (=> b!193698 (and (bvsge (index!4974 lt!96485) #b00000000000000000000000000000000) (bvslt (index!4974 lt!96485) (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun res!91565 () Bool)

(assert (=> b!193698 (= res!91565 (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4974 lt!96485)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127449 () Bool)

(assert (=> b!193698 (=> (not res!91565) (not e!127449))))

(declare-fun c!34914 () Bool)

(declare-fun call!19573 () Bool)

(declare-fun bm!19569 () Bool)

(assert (=> bm!19569 (= call!19573 (inRange!0 (ite c!34914 (index!4974 lt!96485) (index!4977 lt!96485)) (mask!9210 thiss!1248)))))

(declare-fun b!193699 () Bool)

(declare-fun e!127448 () Bool)

(declare-fun e!127450 () Bool)

(assert (=> b!193699 (= e!127448 e!127450)))

(declare-fun c!34915 () Bool)

(assert (=> b!193699 (= c!34915 ((_ is MissingVacant!701) lt!96485))))

(declare-fun b!193700 () Bool)

(declare-fun e!127451 () Bool)

(declare-fun call!19572 () Bool)

(assert (=> b!193700 (= e!127451 (not call!19572))))

(declare-fun b!193701 () Bool)

(assert (=> b!193701 (= e!127448 e!127449)))

(declare-fun res!91564 () Bool)

(assert (=> b!193701 (= res!91564 call!19573)))

(assert (=> b!193701 (=> (not res!91564) (not e!127449))))

(declare-fun b!193702 () Bool)

(assert (=> b!193702 (= e!127450 ((_ is Undefined!701) lt!96485))))

(declare-fun d!56521 () Bool)

(assert (=> d!56521 e!127448))

(assert (=> d!56521 (= c!34914 ((_ is MissingZero!701) lt!96485))))

(assert (=> d!56521 (= lt!96485 (seekEntryOrOpen!0 key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(declare-fun lt!96486 () Unit!5864)

(declare-fun choose!1068 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 64) Int) Unit!5864)

(assert (=> d!56521 (= lt!96486 (choose!1068 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)))))

(assert (=> d!56521 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56521 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!192 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)) lt!96486)))

(declare-fun b!193703 () Bool)

(declare-fun res!91567 () Bool)

(assert (=> b!193703 (=> (not res!91567) (not e!127451))))

(assert (=> b!193703 (= res!91567 call!19573)))

(assert (=> b!193703 (= e!127450 e!127451)))

(declare-fun b!193704 () Bool)

(assert (=> b!193704 (= e!127449 (not call!19572))))

(declare-fun b!193705 () Bool)

(declare-fun res!91566 () Bool)

(assert (=> b!193705 (=> (not res!91566) (not e!127451))))

(assert (=> b!193705 (= res!91566 (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4977 lt!96485)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!193705 (and (bvsge (index!4977 lt!96485) #b00000000000000000000000000000000) (bvslt (index!4977 lt!96485) (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun bm!19570 () Bool)

(declare-fun arrayContainsKey!0 (array!8218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19570 (= call!19572 (arrayContainsKey!0 (_keys!5945 thiss!1248) key!828 #b00000000000000000000000000000000))))

(assert (= (and d!56521 c!34914) b!193701))

(assert (= (and d!56521 (not c!34914)) b!193699))

(assert (= (and b!193701 res!91564) b!193698))

(assert (= (and b!193698 res!91565) b!193704))

(assert (= (and b!193699 c!34915) b!193703))

(assert (= (and b!193699 (not c!34915)) b!193702))

(assert (= (and b!193703 res!91567) b!193705))

(assert (= (and b!193705 res!91566) b!193700))

(assert (= (or b!193701 b!193703) bm!19569))

(assert (= (or b!193704 b!193700) bm!19570))

(declare-fun m!220481 () Bool)

(assert (=> bm!19570 m!220481))

(declare-fun m!220483 () Bool)

(assert (=> bm!19569 m!220483))

(declare-fun m!220485 () Bool)

(assert (=> b!193698 m!220485))

(assert (=> d!56521 m!220411))

(declare-fun m!220487 () Bool)

(assert (=> d!56521 m!220487))

(assert (=> d!56521 m!220435))

(declare-fun m!220489 () Bool)

(assert (=> b!193705 m!220489))

(assert (=> b!193634 d!56521))

(declare-fun b!193714 () Bool)

(declare-fun e!127459 () Bool)

(declare-fun e!127458 () Bool)

(assert (=> b!193714 (= e!127459 e!127458)))

(declare-fun c!34918 () Bool)

(assert (=> b!193714 (= c!34918 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193715 () Bool)

(declare-fun e!127460 () Bool)

(assert (=> b!193715 (= e!127458 e!127460)))

(declare-fun lt!96495 () (_ BitVec 64))

(assert (=> b!193715 (= lt!96495 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96493 () Unit!5864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8218 (_ BitVec 64) (_ BitVec 32)) Unit!5864)

(assert (=> b!193715 (= lt!96493 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5945 thiss!1248) lt!96495 #b00000000000000000000000000000000))))

(assert (=> b!193715 (arrayContainsKey!0 (_keys!5945 thiss!1248) lt!96495 #b00000000000000000000000000000000)))

(declare-fun lt!96494 () Unit!5864)

(assert (=> b!193715 (= lt!96494 lt!96493)))

(declare-fun res!91573 () Bool)

(assert (=> b!193715 (= res!91573 (= (seekEntryOrOpen!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000) (_keys!5945 thiss!1248) (mask!9210 thiss!1248)) (Found!701 #b00000000000000000000000000000000)))))

(assert (=> b!193715 (=> (not res!91573) (not e!127460))))

(declare-fun b!193716 () Bool)

(declare-fun call!19576 () Bool)

(assert (=> b!193716 (= e!127458 call!19576)))

(declare-fun b!193717 () Bool)

(assert (=> b!193717 (= e!127460 call!19576)))

(declare-fun bm!19573 () Bool)

(assert (=> bm!19573 (= call!19576 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(declare-fun d!56523 () Bool)

(declare-fun res!91572 () Bool)

(assert (=> d!56523 (=> res!91572 e!127459)))

(assert (=> d!56523 (= res!91572 (bvsge #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(assert (=> d!56523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)) e!127459)))

(assert (= (and d!56523 (not res!91572)) b!193714))

(assert (= (and b!193714 c!34918) b!193715))

(assert (= (and b!193714 (not c!34918)) b!193716))

(assert (= (and b!193715 res!91573) b!193717))

(assert (= (or b!193717 b!193716) bm!19573))

(declare-fun m!220491 () Bool)

(assert (=> b!193714 m!220491))

(assert (=> b!193714 m!220491))

(declare-fun m!220493 () Bool)

(assert (=> b!193714 m!220493))

(assert (=> b!193715 m!220491))

(declare-fun m!220495 () Bool)

(assert (=> b!193715 m!220495))

(declare-fun m!220497 () Bool)

(assert (=> b!193715 m!220497))

(assert (=> b!193715 m!220491))

(declare-fun m!220499 () Bool)

(assert (=> b!193715 m!220499))

(declare-fun m!220501 () Bool)

(assert (=> bm!19573 m!220501))

(assert (=> b!193623 d!56523))

(declare-fun d!56525 () Bool)

(assert (=> d!56525 (= (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96459))) (and (not (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96459)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96459)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193633 d!56525))

(declare-fun d!56527 () Bool)

(assert (=> d!56527 (= (validMask!0 (mask!9210 thiss!1248)) (and (or (= (mask!9210 thiss!1248) #b00000000000000000000000000000111) (= (mask!9210 thiss!1248) #b00000000000000000000000000001111) (= (mask!9210 thiss!1248) #b00000000000000000000000000011111) (= (mask!9210 thiss!1248) #b00000000000000000000000000111111) (= (mask!9210 thiss!1248) #b00000000000000000000000001111111) (= (mask!9210 thiss!1248) #b00000000000000000000000011111111) (= (mask!9210 thiss!1248) #b00000000000000000000000111111111) (= (mask!9210 thiss!1248) #b00000000000000000000001111111111) (= (mask!9210 thiss!1248) #b00000000000000000000011111111111) (= (mask!9210 thiss!1248) #b00000000000000000000111111111111) (= (mask!9210 thiss!1248) #b00000000000000000001111111111111) (= (mask!9210 thiss!1248) #b00000000000000000011111111111111) (= (mask!9210 thiss!1248) #b00000000000000000111111111111111) (= (mask!9210 thiss!1248) #b00000000000000001111111111111111) (= (mask!9210 thiss!1248) #b00000000000000011111111111111111) (= (mask!9210 thiss!1248) #b00000000000000111111111111111111) (= (mask!9210 thiss!1248) #b00000000000001111111111111111111) (= (mask!9210 thiss!1248) #b00000000000011111111111111111111) (= (mask!9210 thiss!1248) #b00000000000111111111111111111111) (= (mask!9210 thiss!1248) #b00000000001111111111111111111111) (= (mask!9210 thiss!1248) #b00000000011111111111111111111111) (= (mask!9210 thiss!1248) #b00000000111111111111111111111111) (= (mask!9210 thiss!1248) #b00000001111111111111111111111111) (= (mask!9210 thiss!1248) #b00000011111111111111111111111111) (= (mask!9210 thiss!1248) #b00000111111111111111111111111111) (= (mask!9210 thiss!1248) #b00001111111111111111111111111111) (= (mask!9210 thiss!1248) #b00011111111111111111111111111111) (= (mask!9210 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9210 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!193632 d!56527))

(declare-fun d!56529 () Bool)

(declare-fun e!127463 () Bool)

(assert (=> d!56529 e!127463))

(declare-fun res!91576 () Bool)

(assert (=> d!56529 (=> (not res!91576) (not e!127463))))

(assert (=> d!56529 (= res!91576 (and (bvsge (index!4975 lt!96459) #b00000000000000000000000000000000) (bvslt (index!4975 lt!96459) (size!4193 (_values!3936 thiss!1248)))))))

(declare-fun lt!96498 () Unit!5864)

(declare-fun choose!1069 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 32) (_ BitVec 64) V!5627 Int) Unit!5864)

(assert (=> d!56529 (= lt!96498 (choose!1069 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) (index!4975 lt!96459) key!828 v!309 (defaultEntry!3953 thiss!1248)))))

(assert (=> d!56529 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56529 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!120 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) (index!4975 lt!96459) key!828 v!309 (defaultEntry!3953 thiss!1248)) lt!96498)))

(declare-fun b!193720 () Bool)

(assert (=> b!193720 (= e!127463 (= (+!314 (getCurrentListMap!899 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)) (tuple2!3551 key!828 v!309)) (getCurrentListMap!899 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248))))))

(assert (= (and d!56529 res!91576) b!193720))

(declare-fun m!220503 () Bool)

(assert (=> d!56529 m!220503))

(assert (=> d!56529 m!220435))

(assert (=> b!193720 m!220429))

(assert (=> b!193720 m!220429))

(declare-fun m!220505 () Bool)

(assert (=> b!193720 m!220505))

(assert (=> b!193720 m!220425))

(assert (=> b!193720 m!220427))

(assert (=> b!193632 d!56529))

(declare-fun b!193763 () Bool)

(declare-fun e!127496 () Bool)

(assert (=> b!193763 (= e!127496 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19588 () Bool)

(declare-fun call!19594 () ListLongMap!2481)

(declare-fun call!19597 () ListLongMap!2481)

(assert (=> bm!19588 (= call!19594 call!19597)))

(declare-fun b!193764 () Bool)

(declare-fun e!127493 () ListLongMap!2481)

(declare-fun e!127490 () ListLongMap!2481)

(assert (=> b!193764 (= e!127493 e!127490)))

(declare-fun c!34934 () Bool)

(assert (=> b!193764 (= c!34934 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19589 () Bool)

(declare-fun call!19596 () ListLongMap!2481)

(declare-fun call!19592 () ListLongMap!2481)

(assert (=> bm!19589 (= call!19596 call!19592)))

(declare-fun b!193765 () Bool)

(declare-fun e!127502 () Bool)

(declare-fun e!127492 () Bool)

(assert (=> b!193765 (= e!127502 e!127492)))

(declare-fun res!91601 () Bool)

(declare-fun call!19595 () Bool)

(assert (=> b!193765 (= res!91601 call!19595)))

(assert (=> b!193765 (=> (not res!91601) (not e!127492))))

(declare-fun b!193766 () Bool)

(declare-fun e!127495 () Bool)

(declare-fun lt!96555 () ListLongMap!2481)

(declare-fun apply!187 (ListLongMap!2481 (_ BitVec 64)) V!5627)

(assert (=> b!193766 (= e!127495 (= (apply!187 lt!96555 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3794 thiss!1248)))))

(declare-fun b!193767 () Bool)

(declare-fun res!91598 () Bool)

(declare-fun e!127491 () Bool)

(assert (=> b!193767 (=> (not res!91598) (not e!127491))))

(assert (=> b!193767 (= res!91598 e!127502)))

(declare-fun c!34932 () Bool)

(assert (=> b!193767 (= c!34932 (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127499 () Bool)

(declare-fun b!193768 () Bool)

(declare-fun get!2235 (ValueCell!1899 V!5627) V!5627)

(declare-fun dynLambda!525 (Int (_ BitVec 64)) V!5627)

(assert (=> b!193768 (= e!127499 (= (apply!187 lt!96555 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)) (get!2235 (select (arr!3869 (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!525 (defaultEntry!3953 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4193 (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))))))))

(assert (=> b!193768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun b!193769 () Bool)

(declare-fun c!34936 () Bool)

(assert (=> b!193769 (= c!34936 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127498 () ListLongMap!2481)

(assert (=> b!193769 (= e!127490 e!127498)))

(declare-fun b!193770 () Bool)

(assert (=> b!193770 (= e!127493 (+!314 call!19597 (tuple2!3551 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3794 thiss!1248))))))

(declare-fun b!193771 () Bool)

(assert (=> b!193771 (= e!127490 call!19594)))

(declare-fun d!56531 () Bool)

(assert (=> d!56531 e!127491))

(declare-fun res!91595 () Bool)

(assert (=> d!56531 (=> (not res!91595) (not e!127491))))

(assert (=> d!56531 (= res!91595 (or (bvsge #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))))

(declare-fun lt!96557 () ListLongMap!2481)

(assert (=> d!56531 (= lt!96555 lt!96557)))

(declare-fun lt!96556 () Unit!5864)

(declare-fun e!127500 () Unit!5864)

(assert (=> d!56531 (= lt!96556 e!127500)))

(declare-fun c!34935 () Bool)

(declare-fun e!127494 () Bool)

(assert (=> d!56531 (= c!34935 e!127494)))

(declare-fun res!91597 () Bool)

(assert (=> d!56531 (=> (not res!91597) (not e!127494))))

(assert (=> d!56531 (= res!91597 (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(assert (=> d!56531 (= lt!96557 e!127493)))

(declare-fun c!34933 () Bool)

(assert (=> d!56531 (= c!34933 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56531 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56531 (= (getCurrentListMap!899 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)) lt!96555)))

(declare-fun b!193772 () Bool)

(assert (=> b!193772 (= e!127494 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193773 () Bool)

(declare-fun res!91603 () Bool)

(assert (=> b!193773 (=> (not res!91603) (not e!127491))))

(declare-fun e!127497 () Bool)

(assert (=> b!193773 (= res!91603 e!127497)))

(declare-fun res!91600 () Bool)

(assert (=> b!193773 (=> res!91600 e!127497)))

(assert (=> b!193773 (= res!91600 (not e!127496))))

(declare-fun res!91602 () Bool)

(assert (=> b!193773 (=> (not res!91602) (not e!127496))))

(assert (=> b!193773 (= res!91602 (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun b!193774 () Bool)

(declare-fun Unit!5869 () Unit!5864)

(assert (=> b!193774 (= e!127500 Unit!5869)))

(declare-fun b!193775 () Bool)

(declare-fun e!127501 () Bool)

(assert (=> b!193775 (= e!127491 e!127501)))

(declare-fun c!34931 () Bool)

(assert (=> b!193775 (= c!34931 (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193776 () Bool)

(declare-fun lt!96548 () Unit!5864)

(assert (=> b!193776 (= e!127500 lt!96548)))

(declare-fun lt!96543 () ListLongMap!2481)

(declare-fun getCurrentListMapNoExtraKeys!217 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 32) Int) ListLongMap!2481)

(assert (=> b!193776 (= lt!96543 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96559 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96559 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96547 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96547 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96544 () Unit!5864)

(declare-fun addStillContains!163 (ListLongMap!2481 (_ BitVec 64) V!5627 (_ BitVec 64)) Unit!5864)

(assert (=> b!193776 (= lt!96544 (addStillContains!163 lt!96543 lt!96559 (zeroValue!3794 thiss!1248) lt!96547))))

(assert (=> b!193776 (contains!1373 (+!314 lt!96543 (tuple2!3551 lt!96559 (zeroValue!3794 thiss!1248))) lt!96547)))

(declare-fun lt!96561 () Unit!5864)

(assert (=> b!193776 (= lt!96561 lt!96544)))

(declare-fun lt!96549 () ListLongMap!2481)

(assert (=> b!193776 (= lt!96549 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96552 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96552 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96553 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96553 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96545 () Unit!5864)

(declare-fun addApplyDifferent!163 (ListLongMap!2481 (_ BitVec 64) V!5627 (_ BitVec 64)) Unit!5864)

(assert (=> b!193776 (= lt!96545 (addApplyDifferent!163 lt!96549 lt!96552 (minValue!3794 thiss!1248) lt!96553))))

(assert (=> b!193776 (= (apply!187 (+!314 lt!96549 (tuple2!3551 lt!96552 (minValue!3794 thiss!1248))) lt!96553) (apply!187 lt!96549 lt!96553))))

(declare-fun lt!96564 () Unit!5864)

(assert (=> b!193776 (= lt!96564 lt!96545)))

(declare-fun lt!96558 () ListLongMap!2481)

(assert (=> b!193776 (= lt!96558 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96546 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96546 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96554 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96554 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96550 () Unit!5864)

(assert (=> b!193776 (= lt!96550 (addApplyDifferent!163 lt!96558 lt!96546 (zeroValue!3794 thiss!1248) lt!96554))))

(assert (=> b!193776 (= (apply!187 (+!314 lt!96558 (tuple2!3551 lt!96546 (zeroValue!3794 thiss!1248))) lt!96554) (apply!187 lt!96558 lt!96554))))

(declare-fun lt!96551 () Unit!5864)

(assert (=> b!193776 (= lt!96551 lt!96550)))

(declare-fun lt!96560 () ListLongMap!2481)

(assert (=> b!193776 (= lt!96560 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96562 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96562 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96563 () (_ BitVec 64))

(assert (=> b!193776 (= lt!96563 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193776 (= lt!96548 (addApplyDifferent!163 lt!96560 lt!96562 (minValue!3794 thiss!1248) lt!96563))))

(assert (=> b!193776 (= (apply!187 (+!314 lt!96560 (tuple2!3551 lt!96562 (minValue!3794 thiss!1248))) lt!96563) (apply!187 lt!96560 lt!96563))))

(declare-fun b!193777 () Bool)

(assert (=> b!193777 (= e!127498 call!19594)))

(declare-fun b!193778 () Bool)

(assert (=> b!193778 (= e!127502 (not call!19595))))

(declare-fun bm!19590 () Bool)

(assert (=> bm!19590 (= call!19595 (contains!1373 lt!96555 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!19593 () ListLongMap!2481)

(declare-fun bm!19591 () Bool)

(assert (=> bm!19591 (= call!19597 (+!314 (ite c!34933 call!19592 (ite c!34934 call!19596 call!19593)) (ite (or c!34933 c!34934) (tuple2!3551 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3794 thiss!1248)) (tuple2!3551 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3794 thiss!1248)))))))

(declare-fun b!193779 () Bool)

(assert (=> b!193779 (= e!127492 (= (apply!187 lt!96555 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3794 thiss!1248)))))

(declare-fun b!193780 () Bool)

(assert (=> b!193780 (= e!127497 e!127499)))

(declare-fun res!91596 () Bool)

(assert (=> b!193780 (=> (not res!91596) (not e!127499))))

(assert (=> b!193780 (= res!91596 (contains!1373 lt!96555 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193780 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun bm!19592 () Bool)

(assert (=> bm!19592 (= call!19592 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (array!8221 (store (arr!3869 (_values!3936 thiss!1248)) (index!4975 lt!96459) (ValueCellFull!1899 v!309)) (size!4193 (_values!3936 thiss!1248))) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun bm!19593 () Bool)

(assert (=> bm!19593 (= call!19593 call!19596)))

(declare-fun b!193781 () Bool)

(assert (=> b!193781 (= e!127501 e!127495)))

(declare-fun res!91599 () Bool)

(declare-fun call!19591 () Bool)

(assert (=> b!193781 (= res!91599 call!19591)))

(assert (=> b!193781 (=> (not res!91599) (not e!127495))))

(declare-fun bm!19594 () Bool)

(assert (=> bm!19594 (= call!19591 (contains!1373 lt!96555 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193782 () Bool)

(assert (=> b!193782 (= e!127501 (not call!19591))))

(declare-fun b!193783 () Bool)

(assert (=> b!193783 (= e!127498 call!19593)))

(assert (= (and d!56531 c!34933) b!193770))

(assert (= (and d!56531 (not c!34933)) b!193764))

(assert (= (and b!193764 c!34934) b!193771))

(assert (= (and b!193764 (not c!34934)) b!193769))

(assert (= (and b!193769 c!34936) b!193777))

(assert (= (and b!193769 (not c!34936)) b!193783))

(assert (= (or b!193777 b!193783) bm!19593))

(assert (= (or b!193771 bm!19593) bm!19589))

(assert (= (or b!193771 b!193777) bm!19588))

(assert (= (or b!193770 bm!19589) bm!19592))

(assert (= (or b!193770 bm!19588) bm!19591))

(assert (= (and d!56531 res!91597) b!193772))

(assert (= (and d!56531 c!34935) b!193776))

(assert (= (and d!56531 (not c!34935)) b!193774))

(assert (= (and d!56531 res!91595) b!193773))

(assert (= (and b!193773 res!91602) b!193763))

(assert (= (and b!193773 (not res!91600)) b!193780))

(assert (= (and b!193780 res!91596) b!193768))

(assert (= (and b!193773 res!91603) b!193767))

(assert (= (and b!193767 c!34932) b!193765))

(assert (= (and b!193767 (not c!34932)) b!193778))

(assert (= (and b!193765 res!91601) b!193779))

(assert (= (or b!193765 b!193778) bm!19590))

(assert (= (and b!193767 res!91598) b!193775))

(assert (= (and b!193775 c!34931) b!193781))

(assert (= (and b!193775 (not c!34931)) b!193782))

(assert (= (and b!193781 res!91599) b!193766))

(assert (= (or b!193781 b!193782) bm!19594))

(declare-fun b_lambda!7501 () Bool)

(assert (=> (not b_lambda!7501) (not b!193768)))

(declare-fun t!7401 () Bool)

(declare-fun tb!2893 () Bool)

(assert (=> (and b!193626 (= (defaultEntry!3953 thiss!1248) (defaultEntry!3953 thiss!1248)) t!7401) tb!2893))

(declare-fun result!4941 () Bool)

(assert (=> tb!2893 (= result!4941 tp_is_empty!4485)))

(assert (=> b!193768 t!7401))

(declare-fun b_and!11445 () Bool)

(assert (= b_and!11441 (and (=> t!7401 result!4941) b_and!11445)))

(assert (=> b!193772 m!220491))

(assert (=> b!193772 m!220491))

(assert (=> b!193772 m!220493))

(declare-fun m!220507 () Bool)

(assert (=> b!193770 m!220507))

(declare-fun m!220509 () Bool)

(assert (=> b!193766 m!220509))

(assert (=> b!193763 m!220491))

(assert (=> b!193763 m!220491))

(assert (=> b!193763 m!220493))

(declare-fun m!220511 () Bool)

(assert (=> b!193779 m!220511))

(declare-fun m!220513 () Bool)

(assert (=> bm!19594 m!220513))

(declare-fun m!220515 () Bool)

(assert (=> bm!19592 m!220515))

(declare-fun m!220517 () Bool)

(assert (=> b!193776 m!220517))

(declare-fun m!220519 () Bool)

(assert (=> b!193776 m!220519))

(assert (=> b!193776 m!220517))

(declare-fun m!220521 () Bool)

(assert (=> b!193776 m!220521))

(declare-fun m!220523 () Bool)

(assert (=> b!193776 m!220523))

(declare-fun m!220525 () Bool)

(assert (=> b!193776 m!220525))

(declare-fun m!220527 () Bool)

(assert (=> b!193776 m!220527))

(declare-fun m!220529 () Bool)

(assert (=> b!193776 m!220529))

(assert (=> b!193776 m!220519))

(declare-fun m!220531 () Bool)

(assert (=> b!193776 m!220531))

(declare-fun m!220533 () Bool)

(assert (=> b!193776 m!220533))

(assert (=> b!193776 m!220527))

(declare-fun m!220535 () Bool)

(assert (=> b!193776 m!220535))

(assert (=> b!193776 m!220525))

(declare-fun m!220537 () Bool)

(assert (=> b!193776 m!220537))

(declare-fun m!220539 () Bool)

(assert (=> b!193776 m!220539))

(declare-fun m!220541 () Bool)

(assert (=> b!193776 m!220541))

(declare-fun m!220543 () Bool)

(assert (=> b!193776 m!220543))

(assert (=> b!193776 m!220515))

(assert (=> b!193776 m!220491))

(declare-fun m!220545 () Bool)

(assert (=> b!193776 m!220545))

(assert (=> d!56531 m!220435))

(declare-fun m!220547 () Bool)

(assert (=> bm!19590 m!220547))

(declare-fun m!220549 () Bool)

(assert (=> b!193768 m!220549))

(declare-fun m!220551 () Bool)

(assert (=> b!193768 m!220551))

(assert (=> b!193768 m!220491))

(declare-fun m!220553 () Bool)

(assert (=> b!193768 m!220553))

(assert (=> b!193768 m!220551))

(assert (=> b!193768 m!220549))

(declare-fun m!220555 () Bool)

(assert (=> b!193768 m!220555))

(assert (=> b!193768 m!220491))

(declare-fun m!220557 () Bool)

(assert (=> bm!19591 m!220557))

(assert (=> b!193780 m!220491))

(assert (=> b!193780 m!220491))

(declare-fun m!220559 () Bool)

(assert (=> b!193780 m!220559))

(assert (=> b!193632 d!56531))

(declare-fun d!56533 () Bool)

(declare-fun e!127505 () Bool)

(assert (=> d!56533 e!127505))

(declare-fun res!91609 () Bool)

(assert (=> d!56533 (=> (not res!91609) (not e!127505))))

(declare-fun lt!96576 () ListLongMap!2481)

(assert (=> d!56533 (= res!91609 (contains!1373 lt!96576 (_1!1785 (tuple2!3551 key!828 v!309))))))

(declare-fun lt!96573 () List!2466)

(assert (=> d!56533 (= lt!96576 (ListLongMap!2482 lt!96573))))

(declare-fun lt!96575 () Unit!5864)

(declare-fun lt!96574 () Unit!5864)

(assert (=> d!56533 (= lt!96575 lt!96574)))

(declare-datatypes ((Option!249 0))(
  ( (Some!248 (v!4246 V!5627)) (None!247) )
))
(declare-fun getValueByKey!243 (List!2466 (_ BitVec 64)) Option!249)

(assert (=> d!56533 (= (getValueByKey!243 lt!96573 (_1!1785 (tuple2!3551 key!828 v!309))) (Some!248 (_2!1785 (tuple2!3551 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!132 (List!2466 (_ BitVec 64) V!5627) Unit!5864)

(assert (=> d!56533 (= lt!96574 (lemmaContainsTupThenGetReturnValue!132 lt!96573 (_1!1785 (tuple2!3551 key!828 v!309)) (_2!1785 (tuple2!3551 key!828 v!309))))))

(declare-fun insertStrictlySorted!134 (List!2466 (_ BitVec 64) V!5627) List!2466)

(assert (=> d!56533 (= lt!96573 (insertStrictlySorted!134 (toList!1256 lt!96460) (_1!1785 (tuple2!3551 key!828 v!309)) (_2!1785 (tuple2!3551 key!828 v!309))))))

(assert (=> d!56533 (= (+!314 lt!96460 (tuple2!3551 key!828 v!309)) lt!96576)))

(declare-fun b!193790 () Bool)

(declare-fun res!91608 () Bool)

(assert (=> b!193790 (=> (not res!91608) (not e!127505))))

(assert (=> b!193790 (= res!91608 (= (getValueByKey!243 (toList!1256 lt!96576) (_1!1785 (tuple2!3551 key!828 v!309))) (Some!248 (_2!1785 (tuple2!3551 key!828 v!309)))))))

(declare-fun b!193791 () Bool)

(declare-fun contains!1375 (List!2466 tuple2!3550) Bool)

(assert (=> b!193791 (= e!127505 (contains!1375 (toList!1256 lt!96576) (tuple2!3551 key!828 v!309)))))

(assert (= (and d!56533 res!91609) b!193790))

(assert (= (and b!193790 res!91608) b!193791))

(declare-fun m!220561 () Bool)

(assert (=> d!56533 m!220561))

(declare-fun m!220563 () Bool)

(assert (=> d!56533 m!220563))

(declare-fun m!220565 () Bool)

(assert (=> d!56533 m!220565))

(declare-fun m!220567 () Bool)

(assert (=> d!56533 m!220567))

(declare-fun m!220569 () Bool)

(assert (=> b!193790 m!220569))

(declare-fun m!220571 () Bool)

(assert (=> b!193791 m!220571))

(assert (=> b!193632 d!56533))

(declare-fun b!193792 () Bool)

(declare-fun e!127512 () Bool)

(assert (=> b!193792 (= e!127512 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19595 () Bool)

(declare-fun call!19601 () ListLongMap!2481)

(declare-fun call!19604 () ListLongMap!2481)

(assert (=> bm!19595 (= call!19601 call!19604)))

(declare-fun b!193793 () Bool)

(declare-fun e!127509 () ListLongMap!2481)

(declare-fun e!127506 () ListLongMap!2481)

(assert (=> b!193793 (= e!127509 e!127506)))

(declare-fun c!34940 () Bool)

(assert (=> b!193793 (= c!34940 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19596 () Bool)

(declare-fun call!19603 () ListLongMap!2481)

(declare-fun call!19599 () ListLongMap!2481)

(assert (=> bm!19596 (= call!19603 call!19599)))

(declare-fun b!193794 () Bool)

(declare-fun e!127518 () Bool)

(declare-fun e!127508 () Bool)

(assert (=> b!193794 (= e!127518 e!127508)))

(declare-fun res!91616 () Bool)

(declare-fun call!19602 () Bool)

(assert (=> b!193794 (= res!91616 call!19602)))

(assert (=> b!193794 (=> (not res!91616) (not e!127508))))

(declare-fun b!193795 () Bool)

(declare-fun e!127511 () Bool)

(declare-fun lt!96589 () ListLongMap!2481)

(assert (=> b!193795 (= e!127511 (= (apply!187 lt!96589 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3794 thiss!1248)))))

(declare-fun b!193796 () Bool)

(declare-fun res!91613 () Bool)

(declare-fun e!127507 () Bool)

(assert (=> b!193796 (=> (not res!91613) (not e!127507))))

(assert (=> b!193796 (= res!91613 e!127518)))

(declare-fun c!34938 () Bool)

(assert (=> b!193796 (= c!34938 (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!193797 () Bool)

(declare-fun e!127515 () Bool)

(assert (=> b!193797 (= e!127515 (= (apply!187 lt!96589 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)) (get!2235 (select (arr!3869 (_values!3936 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!525 (defaultEntry!3953 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4193 (_values!3936 thiss!1248))))))

(assert (=> b!193797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun b!193798 () Bool)

(declare-fun c!34942 () Bool)

(assert (=> b!193798 (= c!34942 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127514 () ListLongMap!2481)

(assert (=> b!193798 (= e!127506 e!127514)))

(declare-fun b!193799 () Bool)

(assert (=> b!193799 (= e!127509 (+!314 call!19604 (tuple2!3551 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3794 thiss!1248))))))

(declare-fun b!193800 () Bool)

(assert (=> b!193800 (= e!127506 call!19601)))

(declare-fun d!56535 () Bool)

(assert (=> d!56535 e!127507))

(declare-fun res!91610 () Bool)

(assert (=> d!56535 (=> (not res!91610) (not e!127507))))

(assert (=> d!56535 (= res!91610 (or (bvsge #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))))

(declare-fun lt!96591 () ListLongMap!2481)

(assert (=> d!56535 (= lt!96589 lt!96591)))

(declare-fun lt!96590 () Unit!5864)

(declare-fun e!127516 () Unit!5864)

(assert (=> d!56535 (= lt!96590 e!127516)))

(declare-fun c!34941 () Bool)

(declare-fun e!127510 () Bool)

(assert (=> d!56535 (= c!34941 e!127510)))

(declare-fun res!91612 () Bool)

(assert (=> d!56535 (=> (not res!91612) (not e!127510))))

(assert (=> d!56535 (= res!91612 (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(assert (=> d!56535 (= lt!96591 e!127509)))

(declare-fun c!34939 () Bool)

(assert (=> d!56535 (= c!34939 (and (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56535 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56535 (= (getCurrentListMap!899 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)) lt!96589)))

(declare-fun b!193801 () Bool)

(assert (=> b!193801 (= e!127510 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193802 () Bool)

(declare-fun res!91618 () Bool)

(assert (=> b!193802 (=> (not res!91618) (not e!127507))))

(declare-fun e!127513 () Bool)

(assert (=> b!193802 (= res!91618 e!127513)))

(declare-fun res!91615 () Bool)

(assert (=> b!193802 (=> res!91615 e!127513)))

(assert (=> b!193802 (= res!91615 (not e!127512))))

(declare-fun res!91617 () Bool)

(assert (=> b!193802 (=> (not res!91617) (not e!127512))))

(assert (=> b!193802 (= res!91617 (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun b!193803 () Bool)

(declare-fun Unit!5870 () Unit!5864)

(assert (=> b!193803 (= e!127516 Unit!5870)))

(declare-fun b!193804 () Bool)

(declare-fun e!127517 () Bool)

(assert (=> b!193804 (= e!127507 e!127517)))

(declare-fun c!34937 () Bool)

(assert (=> b!193804 (= c!34937 (not (= (bvand (extraKeys!3690 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193805 () Bool)

(declare-fun lt!96582 () Unit!5864)

(assert (=> b!193805 (= e!127516 lt!96582)))

(declare-fun lt!96577 () ListLongMap!2481)

(assert (=> b!193805 (= lt!96577 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96593 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96593 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96581 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96581 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96578 () Unit!5864)

(assert (=> b!193805 (= lt!96578 (addStillContains!163 lt!96577 lt!96593 (zeroValue!3794 thiss!1248) lt!96581))))

(assert (=> b!193805 (contains!1373 (+!314 lt!96577 (tuple2!3551 lt!96593 (zeroValue!3794 thiss!1248))) lt!96581)))

(declare-fun lt!96595 () Unit!5864)

(assert (=> b!193805 (= lt!96595 lt!96578)))

(declare-fun lt!96583 () ListLongMap!2481)

(assert (=> b!193805 (= lt!96583 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96586 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96586 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96587 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96587 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96579 () Unit!5864)

(assert (=> b!193805 (= lt!96579 (addApplyDifferent!163 lt!96583 lt!96586 (minValue!3794 thiss!1248) lt!96587))))

(assert (=> b!193805 (= (apply!187 (+!314 lt!96583 (tuple2!3551 lt!96586 (minValue!3794 thiss!1248))) lt!96587) (apply!187 lt!96583 lt!96587))))

(declare-fun lt!96598 () Unit!5864)

(assert (=> b!193805 (= lt!96598 lt!96579)))

(declare-fun lt!96592 () ListLongMap!2481)

(assert (=> b!193805 (= lt!96592 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96580 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96580 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96588 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96588 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96584 () Unit!5864)

(assert (=> b!193805 (= lt!96584 (addApplyDifferent!163 lt!96592 lt!96580 (zeroValue!3794 thiss!1248) lt!96588))))

(assert (=> b!193805 (= (apply!187 (+!314 lt!96592 (tuple2!3551 lt!96580 (zeroValue!3794 thiss!1248))) lt!96588) (apply!187 lt!96592 lt!96588))))

(declare-fun lt!96585 () Unit!5864)

(assert (=> b!193805 (= lt!96585 lt!96584)))

(declare-fun lt!96594 () ListLongMap!2481)

(assert (=> b!193805 (= lt!96594 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun lt!96596 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96596 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96597 () (_ BitVec 64))

(assert (=> b!193805 (= lt!96597 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193805 (= lt!96582 (addApplyDifferent!163 lt!96594 lt!96596 (minValue!3794 thiss!1248) lt!96597))))

(assert (=> b!193805 (= (apply!187 (+!314 lt!96594 (tuple2!3551 lt!96596 (minValue!3794 thiss!1248))) lt!96597) (apply!187 lt!96594 lt!96597))))

(declare-fun b!193806 () Bool)

(assert (=> b!193806 (= e!127514 call!19601)))

(declare-fun b!193807 () Bool)

(assert (=> b!193807 (= e!127518 (not call!19602))))

(declare-fun bm!19597 () Bool)

(assert (=> bm!19597 (= call!19602 (contains!1373 lt!96589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!19600 () ListLongMap!2481)

(declare-fun bm!19598 () Bool)

(assert (=> bm!19598 (= call!19604 (+!314 (ite c!34939 call!19599 (ite c!34940 call!19603 call!19600)) (ite (or c!34939 c!34940) (tuple2!3551 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3794 thiss!1248)) (tuple2!3551 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3794 thiss!1248)))))))

(declare-fun b!193808 () Bool)

(assert (=> b!193808 (= e!127508 (= (apply!187 lt!96589 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3794 thiss!1248)))))

(declare-fun b!193809 () Bool)

(assert (=> b!193809 (= e!127513 e!127515)))

(declare-fun res!91611 () Bool)

(assert (=> b!193809 (=> (not res!91611) (not e!127515))))

(assert (=> b!193809 (= res!91611 (contains!1373 lt!96589 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193809 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(declare-fun bm!19599 () Bool)

(assert (=> bm!19599 (= call!19599 (getCurrentListMapNoExtraKeys!217 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3953 thiss!1248)))))

(declare-fun bm!19600 () Bool)

(assert (=> bm!19600 (= call!19600 call!19603)))

(declare-fun b!193810 () Bool)

(assert (=> b!193810 (= e!127517 e!127511)))

(declare-fun res!91614 () Bool)

(declare-fun call!19598 () Bool)

(assert (=> b!193810 (= res!91614 call!19598)))

(assert (=> b!193810 (=> (not res!91614) (not e!127511))))

(declare-fun bm!19601 () Bool)

(assert (=> bm!19601 (= call!19598 (contains!1373 lt!96589 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193811 () Bool)

(assert (=> b!193811 (= e!127517 (not call!19598))))

(declare-fun b!193812 () Bool)

(assert (=> b!193812 (= e!127514 call!19600)))

(assert (= (and d!56535 c!34939) b!193799))

(assert (= (and d!56535 (not c!34939)) b!193793))

(assert (= (and b!193793 c!34940) b!193800))

(assert (= (and b!193793 (not c!34940)) b!193798))

(assert (= (and b!193798 c!34942) b!193806))

(assert (= (and b!193798 (not c!34942)) b!193812))

(assert (= (or b!193806 b!193812) bm!19600))

(assert (= (or b!193800 bm!19600) bm!19596))

(assert (= (or b!193800 b!193806) bm!19595))

(assert (= (or b!193799 bm!19596) bm!19599))

(assert (= (or b!193799 bm!19595) bm!19598))

(assert (= (and d!56535 res!91612) b!193801))

(assert (= (and d!56535 c!34941) b!193805))

(assert (= (and d!56535 (not c!34941)) b!193803))

(assert (= (and d!56535 res!91610) b!193802))

(assert (= (and b!193802 res!91617) b!193792))

(assert (= (and b!193802 (not res!91615)) b!193809))

(assert (= (and b!193809 res!91611) b!193797))

(assert (= (and b!193802 res!91618) b!193796))

(assert (= (and b!193796 c!34938) b!193794))

(assert (= (and b!193796 (not c!34938)) b!193807))

(assert (= (and b!193794 res!91616) b!193808))

(assert (= (or b!193794 b!193807) bm!19597))

(assert (= (and b!193796 res!91613) b!193804))

(assert (= (and b!193804 c!34937) b!193810))

(assert (= (and b!193804 (not c!34937)) b!193811))

(assert (= (and b!193810 res!91614) b!193795))

(assert (= (or b!193810 b!193811) bm!19601))

(declare-fun b_lambda!7503 () Bool)

(assert (=> (not b_lambda!7503) (not b!193797)))

(assert (=> b!193797 t!7401))

(declare-fun b_and!11447 () Bool)

(assert (= b_and!11445 (and (=> t!7401 result!4941) b_and!11447)))

(assert (=> b!193801 m!220491))

(assert (=> b!193801 m!220491))

(assert (=> b!193801 m!220493))

(declare-fun m!220573 () Bool)

(assert (=> b!193799 m!220573))

(declare-fun m!220575 () Bool)

(assert (=> b!193795 m!220575))

(assert (=> b!193792 m!220491))

(assert (=> b!193792 m!220491))

(assert (=> b!193792 m!220493))

(declare-fun m!220577 () Bool)

(assert (=> b!193808 m!220577))

(declare-fun m!220579 () Bool)

(assert (=> bm!19601 m!220579))

(declare-fun m!220581 () Bool)

(assert (=> bm!19599 m!220581))

(declare-fun m!220583 () Bool)

(assert (=> b!193805 m!220583))

(declare-fun m!220585 () Bool)

(assert (=> b!193805 m!220585))

(assert (=> b!193805 m!220583))

(declare-fun m!220587 () Bool)

(assert (=> b!193805 m!220587))

(declare-fun m!220589 () Bool)

(assert (=> b!193805 m!220589))

(declare-fun m!220591 () Bool)

(assert (=> b!193805 m!220591))

(declare-fun m!220593 () Bool)

(assert (=> b!193805 m!220593))

(declare-fun m!220595 () Bool)

(assert (=> b!193805 m!220595))

(assert (=> b!193805 m!220585))

(declare-fun m!220597 () Bool)

(assert (=> b!193805 m!220597))

(declare-fun m!220599 () Bool)

(assert (=> b!193805 m!220599))

(assert (=> b!193805 m!220593))

(declare-fun m!220601 () Bool)

(assert (=> b!193805 m!220601))

(assert (=> b!193805 m!220591))

(declare-fun m!220603 () Bool)

(assert (=> b!193805 m!220603))

(declare-fun m!220605 () Bool)

(assert (=> b!193805 m!220605))

(declare-fun m!220607 () Bool)

(assert (=> b!193805 m!220607))

(declare-fun m!220609 () Bool)

(assert (=> b!193805 m!220609))

(assert (=> b!193805 m!220581))

(assert (=> b!193805 m!220491))

(declare-fun m!220611 () Bool)

(assert (=> b!193805 m!220611))

(assert (=> d!56535 m!220435))

(declare-fun m!220613 () Bool)

(assert (=> bm!19597 m!220613))

(assert (=> b!193797 m!220549))

(declare-fun m!220615 () Bool)

(assert (=> b!193797 m!220615))

(assert (=> b!193797 m!220491))

(declare-fun m!220617 () Bool)

(assert (=> b!193797 m!220617))

(assert (=> b!193797 m!220615))

(assert (=> b!193797 m!220549))

(declare-fun m!220619 () Bool)

(assert (=> b!193797 m!220619))

(assert (=> b!193797 m!220491))

(declare-fun m!220621 () Bool)

(assert (=> bm!19598 m!220621))

(assert (=> b!193809 m!220491))

(assert (=> b!193809 m!220491))

(declare-fun m!220623 () Bool)

(assert (=> b!193809 m!220623))

(assert (=> b!193632 d!56535))

(declare-fun d!56537 () Bool)

(declare-fun e!127523 () Bool)

(assert (=> d!56537 e!127523))

(declare-fun res!91621 () Bool)

(assert (=> d!56537 (=> res!91621 e!127523)))

(declare-fun lt!96608 () Bool)

(assert (=> d!56537 (= res!91621 (not lt!96608))))

(declare-fun lt!96607 () Bool)

(assert (=> d!56537 (= lt!96608 lt!96607)))

(declare-fun lt!96610 () Unit!5864)

(declare-fun e!127524 () Unit!5864)

(assert (=> d!56537 (= lt!96610 e!127524)))

(declare-fun c!34945 () Bool)

(assert (=> d!56537 (= c!34945 lt!96607)))

(declare-fun containsKey!247 (List!2466 (_ BitVec 64)) Bool)

(assert (=> d!56537 (= lt!96607 (containsKey!247 (toList!1256 lt!96460) key!828))))

(assert (=> d!56537 (= (contains!1373 lt!96460 key!828) lt!96608)))

(declare-fun b!193819 () Bool)

(declare-fun lt!96609 () Unit!5864)

(assert (=> b!193819 (= e!127524 lt!96609)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!196 (List!2466 (_ BitVec 64)) Unit!5864)

(assert (=> b!193819 (= lt!96609 (lemmaContainsKeyImpliesGetValueByKeyDefined!196 (toList!1256 lt!96460) key!828))))

(declare-fun isDefined!197 (Option!249) Bool)

(assert (=> b!193819 (isDefined!197 (getValueByKey!243 (toList!1256 lt!96460) key!828))))

(declare-fun b!193820 () Bool)

(declare-fun Unit!5871 () Unit!5864)

(assert (=> b!193820 (= e!127524 Unit!5871)))

(declare-fun b!193821 () Bool)

(assert (=> b!193821 (= e!127523 (isDefined!197 (getValueByKey!243 (toList!1256 lt!96460) key!828)))))

(assert (= (and d!56537 c!34945) b!193819))

(assert (= (and d!56537 (not c!34945)) b!193820))

(assert (= (and d!56537 (not res!91621)) b!193821))

(declare-fun m!220625 () Bool)

(assert (=> d!56537 m!220625))

(declare-fun m!220627 () Bool)

(assert (=> b!193819 m!220627))

(declare-fun m!220629 () Bool)

(assert (=> b!193819 m!220629))

(assert (=> b!193819 m!220629))

(declare-fun m!220631 () Bool)

(assert (=> b!193819 m!220631))

(assert (=> b!193821 m!220629))

(assert (=> b!193821 m!220629))

(assert (=> b!193821 m!220631))

(assert (=> b!193632 d!56537))

(declare-fun d!56539 () Bool)

(declare-fun res!91628 () Bool)

(declare-fun e!127527 () Bool)

(assert (=> d!56539 (=> (not res!91628) (not e!127527))))

(declare-fun simpleValid!202 (LongMapFixedSize!2706) Bool)

(assert (=> d!56539 (= res!91628 (simpleValid!202 thiss!1248))))

(assert (=> d!56539 (= (valid!1102 thiss!1248) e!127527)))

(declare-fun b!193828 () Bool)

(declare-fun res!91629 () Bool)

(assert (=> b!193828 (=> (not res!91629) (not e!127527))))

(declare-fun arrayCountValidKeys!0 (array!8218 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!193828 (= res!91629 (= (arrayCountValidKeys!0 (_keys!5945 thiss!1248) #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))) (_size!1402 thiss!1248)))))

(declare-fun b!193829 () Bool)

(declare-fun res!91630 () Bool)

(assert (=> b!193829 (=> (not res!91630) (not e!127527))))

(assert (=> b!193829 (= res!91630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(declare-fun b!193830 () Bool)

(assert (=> b!193830 (= e!127527 (arrayNoDuplicates!0 (_keys!5945 thiss!1248) #b00000000000000000000000000000000 Nil!2462))))

(assert (= (and d!56539 res!91628) b!193828))

(assert (= (and b!193828 res!91629) b!193829))

(assert (= (and b!193829 res!91630) b!193830))

(declare-fun m!220633 () Bool)

(assert (=> d!56539 m!220633))

(declare-fun m!220635 () Bool)

(assert (=> b!193828 m!220635))

(assert (=> b!193829 m!220419))

(assert (=> b!193830 m!220409))

(assert (=> start!19774 d!56539))

(declare-fun b!193843 () Bool)

(declare-fun c!34953 () Bool)

(declare-fun lt!96619 () (_ BitVec 64))

(assert (=> b!193843 (= c!34953 (= lt!96619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127534 () SeekEntryResult!701)

(declare-fun e!127535 () SeekEntryResult!701)

(assert (=> b!193843 (= e!127534 e!127535)))

(declare-fun d!56541 () Bool)

(declare-fun lt!96617 () SeekEntryResult!701)

(assert (=> d!56541 (and (or ((_ is Undefined!701) lt!96617) (not ((_ is Found!701) lt!96617)) (and (bvsge (index!4975 lt!96617) #b00000000000000000000000000000000) (bvslt (index!4975 lt!96617) (size!4192 (_keys!5945 thiss!1248))))) (or ((_ is Undefined!701) lt!96617) ((_ is Found!701) lt!96617) (not ((_ is MissingZero!701) lt!96617)) (and (bvsge (index!4974 lt!96617) #b00000000000000000000000000000000) (bvslt (index!4974 lt!96617) (size!4192 (_keys!5945 thiss!1248))))) (or ((_ is Undefined!701) lt!96617) ((_ is Found!701) lt!96617) ((_ is MissingZero!701) lt!96617) (not ((_ is MissingVacant!701) lt!96617)) (and (bvsge (index!4977 lt!96617) #b00000000000000000000000000000000) (bvslt (index!4977 lt!96617) (size!4192 (_keys!5945 thiss!1248))))) (or ((_ is Undefined!701) lt!96617) (ite ((_ is Found!701) lt!96617) (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96617)) key!828) (ite ((_ is MissingZero!701) lt!96617) (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4974 lt!96617)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!701) lt!96617) (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4977 lt!96617)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!127536 () SeekEntryResult!701)

(assert (=> d!56541 (= lt!96617 e!127536)))

(declare-fun c!34952 () Bool)

(declare-fun lt!96618 () SeekEntryResult!701)

(assert (=> d!56541 (= c!34952 (and ((_ is Intermediate!701) lt!96618) (undefined!1513 lt!96618)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8218 (_ BitVec 32)) SeekEntryResult!701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56541 (= lt!96618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9210 thiss!1248)) key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(assert (=> d!56541 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56541 (= (seekEntryOrOpen!0 key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)) lt!96617)))

(declare-fun b!193844 () Bool)

(assert (=> b!193844 (= e!127536 e!127534)))

(assert (=> b!193844 (= lt!96619 (select (arr!3868 (_keys!5945 thiss!1248)) (index!4976 lt!96618)))))

(declare-fun c!34954 () Bool)

(assert (=> b!193844 (= c!34954 (= lt!96619 key!828))))

(declare-fun b!193845 () Bool)

(assert (=> b!193845 (= e!127535 (MissingZero!701 (index!4976 lt!96618)))))

(declare-fun b!193846 () Bool)

(assert (=> b!193846 (= e!127536 Undefined!701)))

(declare-fun b!193847 () Bool)

(assert (=> b!193847 (= e!127534 (Found!701 (index!4976 lt!96618)))))

(declare-fun b!193848 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8218 (_ BitVec 32)) SeekEntryResult!701)

(assert (=> b!193848 (= e!127535 (seekKeyOrZeroReturnVacant!0 (x!20679 lt!96618) (index!4976 lt!96618) (index!4976 lt!96618) key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(assert (= (and d!56541 c!34952) b!193846))

(assert (= (and d!56541 (not c!34952)) b!193844))

(assert (= (and b!193844 c!34954) b!193847))

(assert (= (and b!193844 (not c!34954)) b!193843))

(assert (= (and b!193843 c!34953) b!193845))

(assert (= (and b!193843 (not c!34953)) b!193848))

(declare-fun m!220637 () Bool)

(assert (=> d!56541 m!220637))

(declare-fun m!220639 () Bool)

(assert (=> d!56541 m!220639))

(declare-fun m!220641 () Bool)

(assert (=> d!56541 m!220641))

(declare-fun m!220643 () Bool)

(assert (=> d!56541 m!220643))

(declare-fun m!220645 () Bool)

(assert (=> d!56541 m!220645))

(assert (=> d!56541 m!220639))

(assert (=> d!56541 m!220435))

(declare-fun m!220647 () Bool)

(assert (=> b!193844 m!220647))

(declare-fun m!220649 () Bool)

(assert (=> b!193848 m!220649))

(assert (=> b!193636 d!56541))

(declare-fun d!56543 () Bool)

(declare-fun e!127539 () Bool)

(assert (=> d!56543 e!127539))

(declare-fun res!91636 () Bool)

(assert (=> d!56543 (=> (not res!91636) (not e!127539))))

(declare-fun lt!96625 () SeekEntryResult!701)

(assert (=> d!56543 (= res!91636 ((_ is Found!701) lt!96625))))

(assert (=> d!56543 (= lt!96625 (seekEntryOrOpen!0 key!828 (_keys!5945 thiss!1248) (mask!9210 thiss!1248)))))

(declare-fun lt!96624 () Unit!5864)

(declare-fun choose!1070 (array!8218 array!8220 (_ BitVec 32) (_ BitVec 32) V!5627 V!5627 (_ BitVec 64) Int) Unit!5864)

(assert (=> d!56543 (= lt!96624 (choose!1070 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)))))

(assert (=> d!56543 (validMask!0 (mask!9210 thiss!1248))))

(assert (=> d!56543 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!185 (_keys!5945 thiss!1248) (_values!3936 thiss!1248) (mask!9210 thiss!1248) (extraKeys!3690 thiss!1248) (zeroValue!3794 thiss!1248) (minValue!3794 thiss!1248) key!828 (defaultEntry!3953 thiss!1248)) lt!96624)))

(declare-fun b!193853 () Bool)

(declare-fun res!91635 () Bool)

(assert (=> b!193853 (=> (not res!91635) (not e!127539))))

(assert (=> b!193853 (= res!91635 (inRange!0 (index!4975 lt!96625) (mask!9210 thiss!1248)))))

(declare-fun b!193854 () Bool)

(assert (=> b!193854 (= e!127539 (= (select (arr!3868 (_keys!5945 thiss!1248)) (index!4975 lt!96625)) key!828))))

(assert (=> b!193854 (and (bvsge (index!4975 lt!96625) #b00000000000000000000000000000000) (bvslt (index!4975 lt!96625) (size!4192 (_keys!5945 thiss!1248))))))

(assert (= (and d!56543 res!91636) b!193853))

(assert (= (and b!193853 res!91635) b!193854))

(assert (=> d!56543 m!220411))

(declare-fun m!220651 () Bool)

(assert (=> d!56543 m!220651))

(assert (=> d!56543 m!220435))

(declare-fun m!220653 () Bool)

(assert (=> b!193853 m!220653))

(declare-fun m!220655 () Bool)

(assert (=> b!193854 m!220655))

(assert (=> b!193631 d!56543))

(declare-fun d!56545 () Bool)

(assert (=> d!56545 (= (inRange!0 (index!4975 lt!96459) (mask!9210 thiss!1248)) (and (bvsge (index!4975 lt!96459) #b00000000000000000000000000000000) (bvslt (index!4975 lt!96459) (bvadd (mask!9210 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!193631 d!56545))

(declare-fun d!56547 () Bool)

(assert (=> d!56547 (= (array_inv!2501 (_keys!5945 thiss!1248)) (bvsge (size!4192 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193626 d!56547))

(declare-fun d!56549 () Bool)

(assert (=> d!56549 (= (array_inv!2502 (_values!3936 thiss!1248)) (bvsge (size!4193 (_values!3936 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193626 d!56549))

(declare-fun b!193865 () Bool)

(declare-fun e!127551 () Bool)

(declare-fun contains!1376 (List!2465 (_ BitVec 64)) Bool)

(assert (=> b!193865 (= e!127551 (contains!1376 Nil!2462 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193866 () Bool)

(declare-fun e!127548 () Bool)

(declare-fun e!127550 () Bool)

(assert (=> b!193866 (= e!127548 e!127550)))

(declare-fun c!34957 () Bool)

(assert (=> b!193866 (= c!34957 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19604 () Bool)

(declare-fun call!19607 () Bool)

(assert (=> bm!19604 (= call!19607 (arrayNoDuplicates!0 (_keys!5945 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34957 (Cons!2461 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000) Nil!2462) Nil!2462)))))

(declare-fun b!193867 () Bool)

(assert (=> b!193867 (= e!127550 call!19607)))

(declare-fun b!193868 () Bool)

(declare-fun e!127549 () Bool)

(assert (=> b!193868 (= e!127549 e!127548)))

(declare-fun res!91644 () Bool)

(assert (=> b!193868 (=> (not res!91644) (not e!127548))))

(assert (=> b!193868 (= res!91644 (not e!127551))))

(declare-fun res!91645 () Bool)

(assert (=> b!193868 (=> (not res!91645) (not e!127551))))

(assert (=> b!193868 (= res!91645 (validKeyInArray!0 (select (arr!3868 (_keys!5945 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193869 () Bool)

(assert (=> b!193869 (= e!127550 call!19607)))

(declare-fun d!56551 () Bool)

(declare-fun res!91643 () Bool)

(assert (=> d!56551 (=> res!91643 e!127549)))

(assert (=> d!56551 (= res!91643 (bvsge #b00000000000000000000000000000000 (size!4192 (_keys!5945 thiss!1248))))))

(assert (=> d!56551 (= (arrayNoDuplicates!0 (_keys!5945 thiss!1248) #b00000000000000000000000000000000 Nil!2462) e!127549)))

(assert (= (and d!56551 (not res!91643)) b!193868))

(assert (= (and b!193868 res!91645) b!193865))

(assert (= (and b!193868 res!91644) b!193866))

(assert (= (and b!193866 c!34957) b!193869))

(assert (= (and b!193866 (not c!34957)) b!193867))

(assert (= (or b!193869 b!193867) bm!19604))

(assert (=> b!193865 m!220491))

(assert (=> b!193865 m!220491))

(declare-fun m!220657 () Bool)

(assert (=> b!193865 m!220657))

(assert (=> b!193866 m!220491))

(assert (=> b!193866 m!220491))

(assert (=> b!193866 m!220493))

(assert (=> bm!19604 m!220491))

(declare-fun m!220659 () Bool)

(assert (=> bm!19604 m!220659))

(assert (=> b!193868 m!220491))

(assert (=> b!193868 m!220491))

(assert (=> b!193868 m!220493))

(assert (=> b!193625 d!56551))

(declare-fun condMapEmpty!7763 () Bool)

(declare-fun mapDefault!7763 () ValueCell!1899)

(assert (=> mapNonEmpty!7757 (= condMapEmpty!7763 (= mapRest!7757 ((as const (Array (_ BitVec 32) ValueCell!1899)) mapDefault!7763)))))

(declare-fun e!127556 () Bool)

(declare-fun mapRes!7763 () Bool)

(assert (=> mapNonEmpty!7757 (= tp!17006 (and e!127556 mapRes!7763))))

(declare-fun mapIsEmpty!7763 () Bool)

(assert (=> mapIsEmpty!7763 mapRes!7763))

(declare-fun mapNonEmpty!7763 () Bool)

(declare-fun tp!17015 () Bool)

(declare-fun e!127557 () Bool)

(assert (=> mapNonEmpty!7763 (= mapRes!7763 (and tp!17015 e!127557))))

(declare-fun mapKey!7763 () (_ BitVec 32))

(declare-fun mapValue!7763 () ValueCell!1899)

(declare-fun mapRest!7763 () (Array (_ BitVec 32) ValueCell!1899))

(assert (=> mapNonEmpty!7763 (= mapRest!7757 (store mapRest!7763 mapKey!7763 mapValue!7763))))

(declare-fun b!193877 () Bool)

(assert (=> b!193877 (= e!127556 tp_is_empty!4485)))

(declare-fun b!193876 () Bool)

(assert (=> b!193876 (= e!127557 tp_is_empty!4485)))

(assert (= (and mapNonEmpty!7757 condMapEmpty!7763) mapIsEmpty!7763))

(assert (= (and mapNonEmpty!7757 (not condMapEmpty!7763)) mapNonEmpty!7763))

(assert (= (and mapNonEmpty!7763 ((_ is ValueCellFull!1899) mapValue!7763)) b!193876))

(assert (= (and mapNonEmpty!7757 ((_ is ValueCellFull!1899) mapDefault!7763)) b!193877))

(declare-fun m!220661 () Bool)

(assert (=> mapNonEmpty!7763 m!220661))

(declare-fun b_lambda!7505 () Bool)

(assert (= b_lambda!7503 (or (and b!193626 b_free!4713) b_lambda!7505)))

(declare-fun b_lambda!7507 () Bool)

(assert (= b_lambda!7501 (or (and b!193626 b_free!4713) b_lambda!7507)))

(check-sat (not b!193780) (not b!193821) (not b!193865) (not b!193763) (not mapNonEmpty!7763) (not d!56531) (not bm!19590) (not b!193829) (not b!193866) (not d!56521) (not b!193848) (not b!193868) (not b!193715) (not b!193830) (not b!193776) (not b!193853) (not b!193828) (not b!193790) (not b!193770) (not b_lambda!7505) (not b!193792) (not bm!19604) (not b_lambda!7507) b_and!11447 (not d!56539) (not bm!19592) tp_is_empty!4485 (not b!193714) (not bm!19591) (not b!193809) (not d!56529) (not b!193766) (not d!56533) (not bm!19597) (not d!56541) (not b_next!4713) (not b!193768) (not bm!19569) (not bm!19601) (not b!193797) (not bm!19599) (not bm!19594) (not bm!19598) (not b!193720) (not b!193799) (not d!56543) (not b!193801) (not b!193808) (not bm!19570) (not b!193791) (not b!193795) (not b!193779) (not d!56537) (not bm!19573) (not b!193805) (not b!193819) (not d!56535) (not b!193772))
(check-sat b_and!11447 (not b_next!4713))
