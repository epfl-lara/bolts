; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21924 () Bool)

(assert start!21924)

(declare-fun b!222468 () Bool)

(declare-fun b_free!5979 () Bool)

(declare-fun b_next!5979 () Bool)

(assert (=> b!222468 (= b_free!5979 (not b_next!5979))))

(declare-fun tp!21078 () Bool)

(declare-fun b_and!12895 () Bool)

(assert (=> b!222468 (= tp!21078 b_and!12895)))

(declare-fun b!222452 () Bool)

(declare-fun res!109240 () Bool)

(declare-fun e!144582 () Bool)

(assert (=> b!222452 (=> (not res!109240) (not e!144582))))

(declare-datatypes ((List!3325 0))(
  ( (Nil!3322) (Cons!3321 (h!3969 (_ BitVec 64)) (t!8292 List!3325)) )
))
(declare-fun noDuplicate!70 (List!3325) Bool)

(assert (=> b!222452 (= res!109240 (noDuplicate!70 Nil!3322))))

(declare-fun b!222453 () Bool)

(declare-fun e!144572 () Bool)

(declare-fun call!20769 () Bool)

(assert (=> b!222453 (= e!144572 (not call!20769))))

(declare-fun b!222454 () Bool)

(declare-fun e!144581 () Bool)

(declare-fun e!144569 () Bool)

(declare-fun mapRes!9931 () Bool)

(assert (=> b!222454 (= e!144581 (and e!144569 mapRes!9931))))

(declare-fun condMapEmpty!9931 () Bool)

(declare-datatypes ((V!7435 0))(
  ( (V!7436 (val!2965 Int)) )
))
(declare-datatypes ((ValueCell!2577 0))(
  ( (ValueCellFull!2577 (v!4981 V!7435)) (EmptyCell!2577) )
))
(declare-datatypes ((array!10924 0))(
  ( (array!10925 (arr!5181 (Array (_ BitVec 32) ValueCell!2577)) (size!5514 (_ BitVec 32))) )
))
(declare-datatypes ((array!10926 0))(
  ( (array!10927 (arr!5182 (Array (_ BitVec 32) (_ BitVec 64))) (size!5515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3054 0))(
  ( (LongMapFixedSize!3055 (defaultEntry!4186 Int) (mask!10006 (_ BitVec 32)) (extraKeys!3923 (_ BitVec 32)) (zeroValue!4027 V!7435) (minValue!4027 V!7435) (_size!1576 (_ BitVec 32)) (_keys!6240 array!10926) (_values!4169 array!10924) (_vacant!1576 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3054)

(declare-fun mapDefault!9931 () ValueCell!2577)

(assert (=> b!222454 (= condMapEmpty!9931 (= (arr!5181 (_values!4169 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2577)) mapDefault!9931)))))

(declare-fun b!222455 () Bool)

(declare-fun e!144583 () Bool)

(assert (=> b!222455 (= e!144583 (not call!20769))))

(declare-fun b!222456 () Bool)

(declare-fun res!109242 () Bool)

(assert (=> b!222456 (=> (not res!109242) (not e!144583))))

(declare-fun call!20770 () Bool)

(assert (=> b!222456 (= res!109242 call!20770)))

(declare-fun e!144575 () Bool)

(assert (=> b!222456 (= e!144575 e!144583)))

(declare-fun b!222457 () Bool)

(declare-datatypes ((Unit!6667 0))(
  ( (Unit!6668) )
))
(declare-fun e!144573 () Unit!6667)

(declare-fun Unit!6669 () Unit!6667)

(assert (=> b!222457 (= e!144573 Unit!6669)))

(declare-fun lt!112693 () Unit!6667)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!227 (array!10926 array!10924 (_ BitVec 32) (_ BitVec 32) V!7435 V!7435 (_ BitVec 64) Int) Unit!6667)

(assert (=> b!222457 (= lt!112693 (lemmaInListMapThenSeekEntryOrOpenFindsIt!227 (_keys!6240 thiss!1504) (_values!4169 thiss!1504) (mask!10006 thiss!1504) (extraKeys!3923 thiss!1504) (zeroValue!4027 thiss!1504) (minValue!4027 thiss!1504) key!932 (defaultEntry!4186 thiss!1504)))))

(assert (=> b!222457 false))

(declare-fun b!222458 () Bool)

(assert (=> b!222458 (= e!144582 false)))

(declare-fun lt!112689 () Bool)

(declare-fun arrayNoDuplicates!0 (array!10926 (_ BitVec 32) List!3325) Bool)

(assert (=> b!222458 (= lt!112689 (arrayNoDuplicates!0 (_keys!6240 thiss!1504) #b00000000000000000000000000000000 Nil!3322))))

(declare-fun res!109228 () Bool)

(declare-fun e!144577 () Bool)

(assert (=> start!21924 (=> (not res!109228) (not e!144577))))

(declare-fun valid!1224 (LongMapFixedSize!3054) Bool)

(assert (=> start!21924 (= res!109228 (valid!1224 thiss!1504))))

(assert (=> start!21924 e!144577))

(declare-fun e!144578 () Bool)

(assert (=> start!21924 e!144578))

(assert (=> start!21924 true))

(declare-fun b!222459 () Bool)

(declare-fun tp_is_empty!5841 () Bool)

(assert (=> b!222459 (= e!144569 tp_is_empty!5841)))

(declare-fun b!222460 () Bool)

(declare-fun e!144585 () Bool)

(declare-fun contains!1524 (List!3325 (_ BitVec 64)) Bool)

(assert (=> b!222460 (= e!144585 (contains!1524 Nil!3322 key!932))))

(declare-fun b!222461 () Bool)

(declare-fun res!109238 () Bool)

(assert (=> b!222461 (=> (not res!109238) (not e!144582))))

(declare-fun e!144586 () Bool)

(assert (=> b!222461 (= res!109238 e!144586)))

(declare-fun res!109232 () Bool)

(assert (=> b!222461 (=> res!109232 e!144586)))

(assert (=> b!222461 (= res!109232 e!144585)))

(declare-fun res!109233 () Bool)

(assert (=> b!222461 (=> (not res!109233) (not e!144585))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222461 (= res!109233 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222462 () Bool)

(declare-fun e!144574 () Bool)

(assert (=> b!222462 (= e!144586 e!144574)))

(declare-fun res!109235 () Bool)

(assert (=> b!222462 (=> (not res!109235) (not e!144574))))

(assert (=> b!222462 (= res!109235 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222463 () Bool)

(declare-fun e!144579 () Bool)

(assert (=> b!222463 (= e!144579 tp_is_empty!5841)))

(declare-fun b!222464 () Bool)

(declare-fun e!144571 () Bool)

(declare-datatypes ((SeekEntryResult!848 0))(
  ( (MissingZero!848 (index!5562 (_ BitVec 32))) (Found!848 (index!5563 (_ BitVec 32))) (Intermediate!848 (undefined!1660 Bool) (index!5564 (_ BitVec 32)) (x!23068 (_ BitVec 32))) (Undefined!848) (MissingVacant!848 (index!5565 (_ BitVec 32))) )
))
(declare-fun lt!112690 () SeekEntryResult!848)

(get-info :version)

(assert (=> b!222464 (= e!144571 ((_ is Undefined!848) lt!112690))))

(declare-fun b!222465 () Bool)

(declare-fun c!36951 () Bool)

(assert (=> b!222465 (= c!36951 ((_ is MissingVacant!848) lt!112690))))

(assert (=> b!222465 (= e!144575 e!144571)))

(declare-fun b!222466 () Bool)

(declare-fun e!144584 () Bool)

(declare-fun e!144570 () Bool)

(assert (=> b!222466 (= e!144584 e!144570)))

(declare-fun res!109241 () Bool)

(assert (=> b!222466 (=> (not res!109241) (not e!144570))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!222466 (= res!109241 (inRange!0 index!297 (mask!10006 thiss!1504)))))

(declare-fun lt!112691 () Unit!6667)

(assert (=> b!222466 (= lt!112691 e!144573)))

(declare-fun c!36952 () Bool)

(declare-datatypes ((tuple2!4396 0))(
  ( (tuple2!4397 (_1!2208 (_ BitVec 64)) (_2!2208 V!7435)) )
))
(declare-datatypes ((List!3326 0))(
  ( (Nil!3323) (Cons!3322 (h!3970 tuple2!4396) (t!8293 List!3326)) )
))
(declare-datatypes ((ListLongMap!3323 0))(
  ( (ListLongMap!3324 (toList!1677 List!3326)) )
))
(declare-fun contains!1525 (ListLongMap!3323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1200 (array!10926 array!10924 (_ BitVec 32) (_ BitVec 32) V!7435 V!7435 (_ BitVec 32) Int) ListLongMap!3323)

(assert (=> b!222466 (= c!36952 (contains!1525 (getCurrentListMap!1200 (_keys!6240 thiss!1504) (_values!4169 thiss!1504) (mask!10006 thiss!1504) (extraKeys!3923 thiss!1504) (zeroValue!4027 thiss!1504) (minValue!4027 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4186 thiss!1504)) key!932))))

(declare-fun b!222467 () Bool)

(declare-fun res!109236 () Bool)

(assert (=> b!222467 (=> (not res!109236) (not e!144582))))

(assert (=> b!222467 (= res!109236 (not (contains!1524 Nil!3322 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!3421 (array!10926) Bool)

(declare-fun array_inv!3422 (array!10924) Bool)

(assert (=> b!222468 (= e!144578 (and tp!21078 tp_is_empty!5841 (array_inv!3421 (_keys!6240 thiss!1504)) (array_inv!3422 (_values!4169 thiss!1504)) e!144581))))

(declare-fun mapNonEmpty!9931 () Bool)

(declare-fun tp!21079 () Bool)

(assert (=> mapNonEmpty!9931 (= mapRes!9931 (and tp!21079 e!144579))))

(declare-fun mapRest!9931 () (Array (_ BitVec 32) ValueCell!2577))

(declare-fun mapKey!9931 () (_ BitVec 32))

(declare-fun mapValue!9931 () ValueCell!2577)

(assert (=> mapNonEmpty!9931 (= (arr!5181 (_values!4169 thiss!1504)) (store mapRest!9931 mapKey!9931 mapValue!9931))))

(declare-fun b!222469 () Bool)

(declare-fun res!109234 () Bool)

(assert (=> b!222469 (=> (not res!109234) (not e!144582))))

(assert (=> b!222469 (= res!109234 (not (contains!1524 Nil!3322 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222470 () Bool)

(declare-fun res!109229 () Bool)

(assert (=> b!222470 (=> (not res!109229) (not e!144583))))

(assert (=> b!222470 (= res!109229 (= (select (arr!5182 (_keys!6240 thiss!1504)) (index!5562 lt!112690)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222471 () Bool)

(assert (=> b!222471 (= e!144574 (not (contains!1524 Nil!3322 key!932)))))

(declare-fun b!222472 () Bool)

(assert (=> b!222472 (= e!144577 e!144584)))

(declare-fun res!109231 () Bool)

(assert (=> b!222472 (=> (not res!109231) (not e!144584))))

(assert (=> b!222472 (= res!109231 (or (= lt!112690 (MissingZero!848 index!297)) (= lt!112690 (MissingVacant!848 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10926 (_ BitVec 32)) SeekEntryResult!848)

(assert (=> b!222472 (= lt!112690 (seekEntryOrOpen!0 key!932 (_keys!6240 thiss!1504) (mask!10006 thiss!1504)))))

(declare-fun b!222473 () Bool)

(declare-fun lt!112694 () Unit!6667)

(assert (=> b!222473 (= e!144573 lt!112694)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!234 (array!10926 array!10924 (_ BitVec 32) (_ BitVec 32) V!7435 V!7435 (_ BitVec 64) Int) Unit!6667)

(assert (=> b!222473 (= lt!112694 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!234 (_keys!6240 thiss!1504) (_values!4169 thiss!1504) (mask!10006 thiss!1504) (extraKeys!3923 thiss!1504) (zeroValue!4027 thiss!1504) (minValue!4027 thiss!1504) key!932 (defaultEntry!4186 thiss!1504)))))

(declare-fun c!36950 () Bool)

(assert (=> b!222473 (= c!36950 ((_ is MissingZero!848) lt!112690))))

(assert (=> b!222473 e!144575))

(declare-fun b!222474 () Bool)

(declare-fun res!109239 () Bool)

(assert (=> b!222474 (=> (not res!109239) (not e!144577))))

(assert (=> b!222474 (= res!109239 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222475 () Bool)

(assert (=> b!222475 (= e!144571 e!144572)))

(declare-fun res!109237 () Bool)

(assert (=> b!222475 (= res!109237 call!20770)))

(assert (=> b!222475 (=> (not res!109237) (not e!144572))))

(declare-fun bm!20766 () Bool)

(declare-fun arrayContainsKey!0 (array!10926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20766 (= call!20769 (arrayContainsKey!0 (_keys!6240 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20767 () Bool)

(assert (=> bm!20767 (= call!20770 (inRange!0 (ite c!36950 (index!5562 lt!112690) (index!5565 lt!112690)) (mask!10006 thiss!1504)))))

(declare-fun b!222476 () Bool)

(declare-fun e!144576 () Unit!6667)

(declare-fun Unit!6670 () Unit!6667)

(assert (=> b!222476 (= e!144576 Unit!6670)))

(declare-fun lt!112695 () Unit!6667)

(declare-fun lemmaArrayContainsKeyThenInListMap!62 (array!10926 array!10924 (_ BitVec 32) (_ BitVec 32) V!7435 V!7435 (_ BitVec 64) (_ BitVec 32) Int) Unit!6667)

(assert (=> b!222476 (= lt!112695 (lemmaArrayContainsKeyThenInListMap!62 (_keys!6240 thiss!1504) (_values!4169 thiss!1504) (mask!10006 thiss!1504) (extraKeys!3923 thiss!1504) (zeroValue!4027 thiss!1504) (minValue!4027 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4186 thiss!1504)))))

(assert (=> b!222476 false))

(declare-fun b!222477 () Bool)

(assert (=> b!222477 (= e!144570 e!144582)))

(declare-fun res!109243 () Bool)

(assert (=> b!222477 (=> (not res!109243) (not e!144582))))

(assert (=> b!222477 (= res!109243 (and (bvslt (size!5515 (_keys!6240 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5515 (_keys!6240 thiss!1504)))))))

(declare-fun lt!112692 () Unit!6667)

(assert (=> b!222477 (= lt!112692 e!144576)))

(declare-fun c!36953 () Bool)

(assert (=> b!222477 (= c!36953 (arrayContainsKey!0 (_keys!6240 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222478 () Bool)

(declare-fun Unit!6671 () Unit!6667)

(assert (=> b!222478 (= e!144576 Unit!6671)))

(declare-fun mapIsEmpty!9931 () Bool)

(assert (=> mapIsEmpty!9931 mapRes!9931))

(declare-fun b!222479 () Bool)

(declare-fun res!109230 () Bool)

(assert (=> b!222479 (= res!109230 (= (select (arr!5182 (_keys!6240 thiss!1504)) (index!5565 lt!112690)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222479 (=> (not res!109230) (not e!144572))))

(assert (= (and start!21924 res!109228) b!222474))

(assert (= (and b!222474 res!109239) b!222472))

(assert (= (and b!222472 res!109231) b!222466))

(assert (= (and b!222466 c!36952) b!222457))

(assert (= (and b!222466 (not c!36952)) b!222473))

(assert (= (and b!222473 c!36950) b!222456))

(assert (= (and b!222473 (not c!36950)) b!222465))

(assert (= (and b!222456 res!109242) b!222470))

(assert (= (and b!222470 res!109229) b!222455))

(assert (= (and b!222465 c!36951) b!222475))

(assert (= (and b!222465 (not c!36951)) b!222464))

(assert (= (and b!222475 res!109237) b!222479))

(assert (= (and b!222479 res!109230) b!222453))

(assert (= (or b!222456 b!222475) bm!20767))

(assert (= (or b!222455 b!222453) bm!20766))

(assert (= (and b!222466 res!109241) b!222477))

(assert (= (and b!222477 c!36953) b!222476))

(assert (= (and b!222477 (not c!36953)) b!222478))

(assert (= (and b!222477 res!109243) b!222452))

(assert (= (and b!222452 res!109240) b!222467))

(assert (= (and b!222467 res!109236) b!222469))

(assert (= (and b!222469 res!109234) b!222461))

(assert (= (and b!222461 res!109233) b!222460))

(assert (= (and b!222461 (not res!109232)) b!222462))

(assert (= (and b!222462 res!109235) b!222471))

(assert (= (and b!222461 res!109238) b!222458))

(assert (= (and b!222454 condMapEmpty!9931) mapIsEmpty!9931))

(assert (= (and b!222454 (not condMapEmpty!9931)) mapNonEmpty!9931))

(assert (= (and mapNonEmpty!9931 ((_ is ValueCellFull!2577) mapValue!9931)) b!222463))

(assert (= (and b!222454 ((_ is ValueCellFull!2577) mapDefault!9931)) b!222459))

(assert (= b!222468 b!222454))

(assert (= start!21924 b!222468))

(declare-fun m!246563 () Bool)

(assert (=> b!222468 m!246563))

(declare-fun m!246565 () Bool)

(assert (=> b!222468 m!246565))

(declare-fun m!246567 () Bool)

(assert (=> b!222458 m!246567))

(declare-fun m!246569 () Bool)

(assert (=> b!222472 m!246569))

(declare-fun m!246571 () Bool)

(assert (=> b!222452 m!246571))

(declare-fun m!246573 () Bool)

(assert (=> b!222470 m!246573))

(declare-fun m!246575 () Bool)

(assert (=> b!222460 m!246575))

(declare-fun m!246577 () Bool)

(assert (=> bm!20767 m!246577))

(declare-fun m!246579 () Bool)

(assert (=> b!222466 m!246579))

(declare-fun m!246581 () Bool)

(assert (=> b!222466 m!246581))

(assert (=> b!222466 m!246581))

(declare-fun m!246583 () Bool)

(assert (=> b!222466 m!246583))

(declare-fun m!246585 () Bool)

(assert (=> b!222477 m!246585))

(assert (=> b!222471 m!246575))

(declare-fun m!246587 () Bool)

(assert (=> b!222469 m!246587))

(declare-fun m!246589 () Bool)

(assert (=> start!21924 m!246589))

(declare-fun m!246591 () Bool)

(assert (=> b!222457 m!246591))

(declare-fun m!246593 () Bool)

(assert (=> b!222479 m!246593))

(assert (=> bm!20766 m!246585))

(declare-fun m!246595 () Bool)

(assert (=> mapNonEmpty!9931 m!246595))

(declare-fun m!246597 () Bool)

(assert (=> b!222476 m!246597))

(declare-fun m!246599 () Bool)

(assert (=> b!222473 m!246599))

(declare-fun m!246601 () Bool)

(assert (=> b!222467 m!246601))

(check-sat (not bm!20767) (not b!222460) (not b_next!5979) (not b!222473) (not mapNonEmpty!9931) (not b!222466) (not b!222452) (not b!222467) (not b!222469) b_and!12895 tp_is_empty!5841 (not bm!20766) (not b!222468) (not b!222472) (not start!21924) (not b!222457) (not b!222477) (not b!222476) (not b!222471) (not b!222458))
(check-sat b_and!12895 (not b_next!5979))
