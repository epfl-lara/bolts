; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17546 () Bool)

(assert start!17546)

(declare-fun b!175585 () Bool)

(declare-fun b_free!4341 () Bool)

(declare-fun b_next!4341 () Bool)

(assert (=> b!175585 (= b_free!4341 (not b_next!4341))))

(declare-fun tp!15706 () Bool)

(declare-fun b_and!10841 () Bool)

(assert (=> b!175585 (= tp!15706 b_and!10841)))

(declare-fun b!175584 () Bool)

(declare-fun e!115902 () Bool)

(declare-fun e!115901 () Bool)

(declare-fun mapRes!7015 () Bool)

(assert (=> b!175584 (= e!115902 (and e!115901 mapRes!7015))))

(declare-fun condMapEmpty!7015 () Bool)

(declare-datatypes ((V!5131 0))(
  ( (V!5132 (val!2101 Int)) )
))
(declare-datatypes ((ValueCell!1713 0))(
  ( (ValueCellFull!1713 (v!3972 V!5131)) (EmptyCell!1713) )
))
(declare-datatypes ((array!7366 0))(
  ( (array!7367 (arr!3496 (Array (_ BitVec 32) (_ BitVec 64))) (size!3798 (_ BitVec 32))) )
))
(declare-datatypes ((array!7368 0))(
  ( (array!7369 (arr!3497 (Array (_ BitVec 32) ValueCell!1713)) (size!3799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2334 0))(
  ( (LongMapFixedSize!2335 (defaultEntry!3623 Int) (mask!8524 (_ BitVec 32)) (extraKeys!3360 (_ BitVec 32)) (zeroValue!3464 V!5131) (minValue!3464 V!5131) (_size!1216 (_ BitVec 32)) (_keys!5476 array!7366) (_values!3606 array!7368) (_vacant!1216 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2334)

(declare-fun mapDefault!7015 () ValueCell!1713)

(assert (=> b!175584 (= condMapEmpty!7015 (= (arr!3497 (_values!3606 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1713)) mapDefault!7015)))))

(declare-fun res!83252 () Bool)

(declare-fun e!115905 () Bool)

(assert (=> start!17546 (=> (not res!83252) (not e!115905))))

(declare-fun valid!976 (LongMapFixedSize!2334) Bool)

(assert (=> start!17546 (= res!83252 (valid!976 thiss!1248))))

(assert (=> start!17546 e!115905))

(declare-fun e!115904 () Bool)

(assert (=> start!17546 e!115904))

(assert (=> start!17546 true))

(declare-fun tp_is_empty!4113 () Bool)

(declare-fun array_inv!2229 (array!7366) Bool)

(declare-fun array_inv!2230 (array!7368) Bool)

(assert (=> b!175585 (= e!115904 (and tp!15706 tp_is_empty!4113 (array_inv!2229 (_keys!5476 thiss!1248)) (array_inv!2230 (_values!3606 thiss!1248)) e!115902))))

(declare-fun b!175586 () Bool)

(declare-fun e!115903 () Bool)

(assert (=> b!175586 (= e!115903 tp_is_empty!4113)))

(declare-fun b!175587 () Bool)

(declare-fun res!83254 () Bool)

(assert (=> b!175587 (=> (not res!83254) (not e!115905))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3264 0))(
  ( (tuple2!3265 (_1!1642 (_ BitVec 64)) (_2!1642 V!5131)) )
))
(declare-datatypes ((List!2245 0))(
  ( (Nil!2242) (Cons!2241 (h!2860 tuple2!3264) (t!7073 List!2245)) )
))
(declare-datatypes ((ListLongMap!2205 0))(
  ( (ListLongMap!2206 (toList!1118 List!2245)) )
))
(declare-fun contains!1172 (ListLongMap!2205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!765 (array!7366 array!7368 (_ BitVec 32) (_ BitVec 32) V!5131 V!5131 (_ BitVec 32) Int) ListLongMap!2205)

(assert (=> b!175587 (= res!83254 (contains!1172 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)) key!828))))

(declare-fun b!175588 () Bool)

(declare-fun res!83250 () Bool)

(assert (=> b!175588 (=> (not res!83250) (not e!115905))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!562 0))(
  ( (MissingZero!562 (index!4416 (_ BitVec 32))) (Found!562 (index!4417 (_ BitVec 32))) (Intermediate!562 (undefined!1374 Bool) (index!4418 (_ BitVec 32)) (x!19320 (_ BitVec 32))) (Undefined!562) (MissingVacant!562 (index!4419 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7366 (_ BitVec 32)) SeekEntryResult!562)

(assert (=> b!175588 (= res!83250 ((_ is Undefined!562) (seekEntryOrOpen!0 key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248))))))

(declare-fun mapIsEmpty!7015 () Bool)

(assert (=> mapIsEmpty!7015 mapRes!7015))

(declare-fun b!175589 () Bool)

(assert (=> b!175589 (= e!115901 tp_is_empty!4113)))

(declare-fun b!175590 () Bool)

(assert (=> b!175590 (= e!115905 (and (= (size!3799 (_values!3606 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8524 thiss!1248))) (= (size!3798 (_keys!5476 thiss!1248)) (size!3799 (_values!3606 thiss!1248))) (bvsge (mask!8524 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3360 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!175591 () Bool)

(declare-fun res!83253 () Bool)

(assert (=> b!175591 (=> (not res!83253) (not e!115905))))

(assert (=> b!175591 (= res!83253 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7015 () Bool)

(declare-fun tp!15705 () Bool)

(assert (=> mapNonEmpty!7015 (= mapRes!7015 (and tp!15705 e!115903))))

(declare-fun mapKey!7015 () (_ BitVec 32))

(declare-fun mapRest!7015 () (Array (_ BitVec 32) ValueCell!1713))

(declare-fun mapValue!7015 () ValueCell!1713)

(assert (=> mapNonEmpty!7015 (= (arr!3497 (_values!3606 thiss!1248)) (store mapRest!7015 mapKey!7015 mapValue!7015))))

(declare-fun b!175592 () Bool)

(declare-fun res!83251 () Bool)

(assert (=> b!175592 (=> (not res!83251) (not e!115905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!175592 (= res!83251 (validMask!0 (mask!8524 thiss!1248)))))

(assert (= (and start!17546 res!83252) b!175591))

(assert (= (and b!175591 res!83253) b!175588))

(assert (= (and b!175588 res!83250) b!175587))

(assert (= (and b!175587 res!83254) b!175592))

(assert (= (and b!175592 res!83251) b!175590))

(assert (= (and b!175584 condMapEmpty!7015) mapIsEmpty!7015))

(assert (= (and b!175584 (not condMapEmpty!7015)) mapNonEmpty!7015))

(assert (= (and mapNonEmpty!7015 ((_ is ValueCellFull!1713) mapValue!7015)) b!175586))

(assert (= (and b!175584 ((_ is ValueCellFull!1713) mapDefault!7015)) b!175589))

(assert (= b!175585 b!175584))

(assert (= start!17546 b!175585))

(declare-fun m!204495 () Bool)

(assert (=> b!175585 m!204495))

(declare-fun m!204497 () Bool)

(assert (=> b!175585 m!204497))

(declare-fun m!204499 () Bool)

(assert (=> mapNonEmpty!7015 m!204499))

(declare-fun m!204501 () Bool)

(assert (=> start!17546 m!204501))

(declare-fun m!204503 () Bool)

(assert (=> b!175588 m!204503))

(declare-fun m!204505 () Bool)

(assert (=> b!175592 m!204505))

(declare-fun m!204507 () Bool)

(assert (=> b!175587 m!204507))

(assert (=> b!175587 m!204507))

(declare-fun m!204509 () Bool)

(assert (=> b!175587 m!204509))

(check-sat (not b!175592) (not mapNonEmpty!7015) (not b_next!4341) b_and!10841 (not b!175585) tp_is_empty!4113 (not b!175587) (not b!175588) (not start!17546))
(check-sat b_and!10841 (not b_next!4341))
(get-model)

(declare-fun d!53405 () Bool)

(declare-fun res!83276 () Bool)

(declare-fun e!115926 () Bool)

(assert (=> d!53405 (=> (not res!83276) (not e!115926))))

(declare-fun simpleValid!148 (LongMapFixedSize!2334) Bool)

(assert (=> d!53405 (= res!83276 (simpleValid!148 thiss!1248))))

(assert (=> d!53405 (= (valid!976 thiss!1248) e!115926)))

(declare-fun b!175626 () Bool)

(declare-fun res!83277 () Bool)

(assert (=> b!175626 (=> (not res!83277) (not e!115926))))

(declare-fun arrayCountValidKeys!0 (array!7366 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!175626 (= res!83277 (= (arrayCountValidKeys!0 (_keys!5476 thiss!1248) #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))) (_size!1216 thiss!1248)))))

(declare-fun b!175627 () Bool)

(declare-fun res!83278 () Bool)

(assert (=> b!175627 (=> (not res!83278) (not e!115926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7366 (_ BitVec 32)) Bool)

(assert (=> b!175627 (= res!83278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(declare-fun b!175628 () Bool)

(declare-datatypes ((List!2246 0))(
  ( (Nil!2243) (Cons!2242 (h!2861 (_ BitVec 64)) (t!7076 List!2246)) )
))
(declare-fun arrayNoDuplicates!0 (array!7366 (_ BitVec 32) List!2246) Bool)

(assert (=> b!175628 (= e!115926 (arrayNoDuplicates!0 (_keys!5476 thiss!1248) #b00000000000000000000000000000000 Nil!2243))))

(assert (= (and d!53405 res!83276) b!175626))

(assert (= (and b!175626 res!83277) b!175627))

(assert (= (and b!175627 res!83278) b!175628))

(declare-fun m!204527 () Bool)

(assert (=> d!53405 m!204527))

(declare-fun m!204529 () Bool)

(assert (=> b!175626 m!204529))

(declare-fun m!204531 () Bool)

(assert (=> b!175627 m!204531))

(declare-fun m!204533 () Bool)

(assert (=> b!175628 m!204533))

(assert (=> start!17546 d!53405))

(declare-fun b!175641 () Bool)

(declare-fun e!115935 () SeekEntryResult!562)

(declare-fun e!115933 () SeekEntryResult!562)

(assert (=> b!175641 (= e!115935 e!115933)))

(declare-fun lt!86914 () (_ BitVec 64))

(declare-fun lt!86915 () SeekEntryResult!562)

(assert (=> b!175641 (= lt!86914 (select (arr!3496 (_keys!5476 thiss!1248)) (index!4418 lt!86915)))))

(declare-fun c!31446 () Bool)

(assert (=> b!175641 (= c!31446 (= lt!86914 key!828))))

(declare-fun b!175642 () Bool)

(assert (=> b!175642 (= e!115935 Undefined!562)))

(declare-fun d!53407 () Bool)

(declare-fun lt!86916 () SeekEntryResult!562)

(assert (=> d!53407 (and (or ((_ is Undefined!562) lt!86916) (not ((_ is Found!562) lt!86916)) (and (bvsge (index!4417 lt!86916) #b00000000000000000000000000000000) (bvslt (index!4417 lt!86916) (size!3798 (_keys!5476 thiss!1248))))) (or ((_ is Undefined!562) lt!86916) ((_ is Found!562) lt!86916) (not ((_ is MissingZero!562) lt!86916)) (and (bvsge (index!4416 lt!86916) #b00000000000000000000000000000000) (bvslt (index!4416 lt!86916) (size!3798 (_keys!5476 thiss!1248))))) (or ((_ is Undefined!562) lt!86916) ((_ is Found!562) lt!86916) ((_ is MissingZero!562) lt!86916) (not ((_ is MissingVacant!562) lt!86916)) (and (bvsge (index!4419 lt!86916) #b00000000000000000000000000000000) (bvslt (index!4419 lt!86916) (size!3798 (_keys!5476 thiss!1248))))) (or ((_ is Undefined!562) lt!86916) (ite ((_ is Found!562) lt!86916) (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4417 lt!86916)) key!828) (ite ((_ is MissingZero!562) lt!86916) (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4416 lt!86916)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!562) lt!86916) (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4419 lt!86916)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53407 (= lt!86916 e!115935)))

(declare-fun c!31447 () Bool)

(assert (=> d!53407 (= c!31447 (and ((_ is Intermediate!562) lt!86915) (undefined!1374 lt!86915)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7366 (_ BitVec 32)) SeekEntryResult!562)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53407 (= lt!86915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8524 thiss!1248)) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(assert (=> d!53407 (validMask!0 (mask!8524 thiss!1248))))

(assert (=> d!53407 (= (seekEntryOrOpen!0 key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)) lt!86916)))

(declare-fun b!175643 () Bool)

(declare-fun c!31445 () Bool)

(assert (=> b!175643 (= c!31445 (= lt!86914 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115934 () SeekEntryResult!562)

(assert (=> b!175643 (= e!115933 e!115934)))

(declare-fun b!175644 () Bool)

(assert (=> b!175644 (= e!115934 (MissingZero!562 (index!4418 lt!86915)))))

(declare-fun b!175645 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7366 (_ BitVec 32)) SeekEntryResult!562)

(assert (=> b!175645 (= e!115934 (seekKeyOrZeroReturnVacant!0 (x!19320 lt!86915) (index!4418 lt!86915) (index!4418 lt!86915) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(declare-fun b!175646 () Bool)

(assert (=> b!175646 (= e!115933 (Found!562 (index!4418 lt!86915)))))

(assert (= (and d!53407 c!31447) b!175642))

(assert (= (and d!53407 (not c!31447)) b!175641))

(assert (= (and b!175641 c!31446) b!175646))

(assert (= (and b!175641 (not c!31446)) b!175643))

(assert (= (and b!175643 c!31445) b!175644))

(assert (= (and b!175643 (not c!31445)) b!175645))

(declare-fun m!204535 () Bool)

(assert (=> b!175641 m!204535))

(declare-fun m!204537 () Bool)

(assert (=> d!53407 m!204537))

(declare-fun m!204539 () Bool)

(assert (=> d!53407 m!204539))

(declare-fun m!204541 () Bool)

(assert (=> d!53407 m!204541))

(assert (=> d!53407 m!204539))

(declare-fun m!204543 () Bool)

(assert (=> d!53407 m!204543))

(assert (=> d!53407 m!204505))

(declare-fun m!204545 () Bool)

(assert (=> d!53407 m!204545))

(declare-fun m!204547 () Bool)

(assert (=> b!175645 m!204547))

(assert (=> b!175588 d!53407))

(declare-fun d!53409 () Bool)

(declare-fun e!115940 () Bool)

(assert (=> d!53409 e!115940))

(declare-fun res!83281 () Bool)

(assert (=> d!53409 (=> res!83281 e!115940)))

(declare-fun lt!86926 () Bool)

(assert (=> d!53409 (= res!83281 (not lt!86926))))

(declare-fun lt!86927 () Bool)

(assert (=> d!53409 (= lt!86926 lt!86927)))

(declare-datatypes ((Unit!5385 0))(
  ( (Unit!5386) )
))
(declare-fun lt!86925 () Unit!5385)

(declare-fun e!115941 () Unit!5385)

(assert (=> d!53409 (= lt!86925 e!115941)))

(declare-fun c!31450 () Bool)

(assert (=> d!53409 (= c!31450 lt!86927)))

(declare-fun containsKey!193 (List!2245 (_ BitVec 64)) Bool)

(assert (=> d!53409 (= lt!86927 (containsKey!193 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(assert (=> d!53409 (= (contains!1172 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)) key!828) lt!86926)))

(declare-fun b!175653 () Bool)

(declare-fun lt!86928 () Unit!5385)

(assert (=> b!175653 (= e!115941 lt!86928)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!142 (List!2245 (_ BitVec 64)) Unit!5385)

(assert (=> b!175653 (= lt!86928 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(declare-datatypes ((Option!195 0))(
  ( (Some!194 (v!3974 V!5131)) (None!193) )
))
(declare-fun isDefined!143 (Option!195) Bool)

(declare-fun getValueByKey!189 (List!2245 (_ BitVec 64)) Option!195)

(assert (=> b!175653 (isDefined!143 (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(declare-fun b!175654 () Bool)

(declare-fun Unit!5387 () Unit!5385)

(assert (=> b!175654 (= e!115941 Unit!5387)))

(declare-fun b!175655 () Bool)

(assert (=> b!175655 (= e!115940 (isDefined!143 (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828)))))

(assert (= (and d!53409 c!31450) b!175653))

(assert (= (and d!53409 (not c!31450)) b!175654))

(assert (= (and d!53409 (not res!83281)) b!175655))

(declare-fun m!204549 () Bool)

(assert (=> d!53409 m!204549))

(declare-fun m!204551 () Bool)

(assert (=> b!175653 m!204551))

(declare-fun m!204553 () Bool)

(assert (=> b!175653 m!204553))

(assert (=> b!175653 m!204553))

(declare-fun m!204555 () Bool)

(assert (=> b!175653 m!204555))

(assert (=> b!175655 m!204553))

(assert (=> b!175655 m!204553))

(assert (=> b!175655 m!204555))

(assert (=> b!175587 d!53409))

(declare-fun call!17796 () ListLongMap!2205)

(declare-fun c!31465 () Bool)

(declare-fun bm!17789 () Bool)

(declare-fun c!31463 () Bool)

(declare-fun call!17792 () ListLongMap!2205)

(declare-fun call!17795 () ListLongMap!2205)

(declare-fun call!17794 () ListLongMap!2205)

(declare-fun +!247 (ListLongMap!2205 tuple2!3264) ListLongMap!2205)

(assert (=> bm!17789 (= call!17796 (+!247 (ite c!31463 call!17792 (ite c!31465 call!17794 call!17795)) (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(declare-fun bm!17790 () Bool)

(assert (=> bm!17790 (= call!17795 call!17794)))

(declare-fun bm!17791 () Bool)

(declare-fun call!17798 () Bool)

(declare-fun lt!86981 () ListLongMap!2205)

(assert (=> bm!17791 (= call!17798 (contains!1172 lt!86981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17792 () Bool)

(assert (=> bm!17792 (= call!17794 call!17792)))

(declare-fun b!175698 () Bool)

(declare-fun c!31468 () Bool)

(assert (=> b!175698 (= c!31468 (and (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!115978 () ListLongMap!2205)

(declare-fun e!115969 () ListLongMap!2205)

(assert (=> b!175698 (= e!115978 e!115969)))

(declare-fun b!175699 () Bool)

(declare-fun e!115974 () Bool)

(declare-fun e!115970 () Bool)

(assert (=> b!175699 (= e!115974 e!115970)))

(declare-fun c!31466 () Bool)

(assert (=> b!175699 (= c!31466 (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!175700 () Bool)

(declare-fun e!115972 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!175700 (= e!115972 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175701 () Bool)

(declare-fun e!115976 () Bool)

(declare-fun apply!135 (ListLongMap!2205 (_ BitVec 64)) V!5131)

(assert (=> b!175701 (= e!115976 (= (apply!135 lt!86981 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3464 thiss!1248)))))

(declare-fun b!175702 () Bool)

(declare-fun e!115973 () Bool)

(assert (=> b!175702 (= e!115973 e!115976)))

(declare-fun res!83304 () Bool)

(assert (=> b!175702 (= res!83304 call!17798)))

(assert (=> b!175702 (=> (not res!83304) (not e!115976))))

(declare-fun b!175703 () Bool)

(declare-fun e!115971 () Bool)

(declare-fun e!115968 () Bool)

(assert (=> b!175703 (= e!115971 e!115968)))

(declare-fun res!83302 () Bool)

(assert (=> b!175703 (=> (not res!83302) (not e!115968))))

(assert (=> b!175703 (= res!83302 (contains!1172 lt!86981 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun bm!17793 () Bool)

(declare-fun call!17793 () ListLongMap!2205)

(assert (=> bm!17793 (= call!17793 call!17796)))

(declare-fun bm!17794 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!165 (array!7366 array!7368 (_ BitVec 32) (_ BitVec 32) V!5131 V!5131 (_ BitVec 32) Int) ListLongMap!2205)

(assert (=> bm!17794 (= call!17792 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))

(declare-fun b!175704 () Bool)

(declare-fun get!1993 (ValueCell!1713 V!5131) V!5131)

(declare-fun dynLambda!473 (Int (_ BitVec 64)) V!5131)

(assert (=> b!175704 (= e!115968 (= (apply!135 lt!86981 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)) (get!1993 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!175704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3799 (_values!3606 thiss!1248))))))

(assert (=> b!175704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun b!175705 () Bool)

(declare-fun res!83300 () Bool)

(assert (=> b!175705 (=> (not res!83300) (not e!115974))))

(assert (=> b!175705 (= res!83300 e!115973)))

(declare-fun c!31464 () Bool)

(assert (=> b!175705 (= c!31464 (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!175706 () Bool)

(declare-fun e!115979 () Bool)

(assert (=> b!175706 (= e!115979 (= (apply!135 lt!86981 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3464 thiss!1248)))))

(declare-fun b!175707 () Bool)

(declare-fun e!115980 () ListLongMap!2205)

(assert (=> b!175707 (= e!115980 e!115978)))

(assert (=> b!175707 (= c!31465 (and (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!175708 () Bool)

(declare-fun e!115975 () Unit!5385)

(declare-fun lt!86993 () Unit!5385)

(assert (=> b!175708 (= e!115975 lt!86993)))

(declare-fun lt!86986 () ListLongMap!2205)

(assert (=> b!175708 (= lt!86986 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))

(declare-fun lt!86975 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86975 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86988 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86988 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86979 () Unit!5385)

(declare-fun addStillContains!111 (ListLongMap!2205 (_ BitVec 64) V!5131 (_ BitVec 64)) Unit!5385)

(assert (=> b!175708 (= lt!86979 (addStillContains!111 lt!86986 lt!86975 (zeroValue!3464 thiss!1248) lt!86988))))

(assert (=> b!175708 (contains!1172 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) lt!86988)))

(declare-fun lt!86992 () Unit!5385)

(assert (=> b!175708 (= lt!86992 lt!86979)))

(declare-fun lt!86980 () ListLongMap!2205)

(assert (=> b!175708 (= lt!86980 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))

(declare-fun lt!86976 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86976 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86991 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86991 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86994 () Unit!5385)

(declare-fun addApplyDifferent!111 (ListLongMap!2205 (_ BitVec 64) V!5131 (_ BitVec 64)) Unit!5385)

(assert (=> b!175708 (= lt!86994 (addApplyDifferent!111 lt!86980 lt!86976 (minValue!3464 thiss!1248) lt!86991))))

(assert (=> b!175708 (= (apply!135 (+!247 lt!86980 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) lt!86991) (apply!135 lt!86980 lt!86991))))

(declare-fun lt!86977 () Unit!5385)

(assert (=> b!175708 (= lt!86977 lt!86994)))

(declare-fun lt!86985 () ListLongMap!2205)

(assert (=> b!175708 (= lt!86985 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))

(declare-fun lt!86978 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86983 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86983 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86987 () Unit!5385)

(assert (=> b!175708 (= lt!86987 (addApplyDifferent!111 lt!86985 lt!86978 (zeroValue!3464 thiss!1248) lt!86983))))

(assert (=> b!175708 (= (apply!135 (+!247 lt!86985 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) lt!86983) (apply!135 lt!86985 lt!86983))))

(declare-fun lt!86989 () Unit!5385)

(assert (=> b!175708 (= lt!86989 lt!86987)))

(declare-fun lt!86984 () ListLongMap!2205)

(assert (=> b!175708 (= lt!86984 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))

(declare-fun lt!86982 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86982 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86990 () (_ BitVec 64))

(assert (=> b!175708 (= lt!86990 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175708 (= lt!86993 (addApplyDifferent!111 lt!86984 lt!86982 (minValue!3464 thiss!1248) lt!86990))))

(assert (=> b!175708 (= (apply!135 (+!247 lt!86984 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) lt!86990) (apply!135 lt!86984 lt!86990))))

(declare-fun b!175709 () Bool)

(declare-fun e!115977 () Bool)

(assert (=> b!175709 (= e!115977 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53411 () Bool)

(assert (=> d!53411 e!115974))

(declare-fun res!83306 () Bool)

(assert (=> d!53411 (=> (not res!83306) (not e!115974))))

(assert (=> d!53411 (= res!83306 (or (bvsge #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))))

(declare-fun lt!86974 () ListLongMap!2205)

(assert (=> d!53411 (= lt!86981 lt!86974)))

(declare-fun lt!86973 () Unit!5385)

(assert (=> d!53411 (= lt!86973 e!115975)))

(declare-fun c!31467 () Bool)

(assert (=> d!53411 (= c!31467 e!115977)))

(declare-fun res!83307 () Bool)

(assert (=> d!53411 (=> (not res!83307) (not e!115977))))

(assert (=> d!53411 (= res!83307 (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53411 (= lt!86974 e!115980)))

(assert (=> d!53411 (= c!31463 (and (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3360 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53411 (validMask!0 (mask!8524 thiss!1248))))

(assert (=> d!53411 (= (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)) lt!86981)))

(declare-fun b!175710 () Bool)

(assert (=> b!175710 (= e!115969 call!17793)))

(declare-fun b!175711 () Bool)

(assert (=> b!175711 (= e!115973 (not call!17798))))

(declare-fun b!175712 () Bool)

(assert (=> b!175712 (= e!115980 (+!247 call!17796 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))

(declare-fun b!175713 () Bool)

(assert (=> b!175713 (= e!115969 call!17795)))

(declare-fun b!175714 () Bool)

(assert (=> b!175714 (= e!115978 call!17793)))

(declare-fun b!175715 () Bool)

(declare-fun res!83303 () Bool)

(assert (=> b!175715 (=> (not res!83303) (not e!115974))))

(assert (=> b!175715 (= res!83303 e!115971)))

(declare-fun res!83308 () Bool)

(assert (=> b!175715 (=> res!83308 e!115971)))

(assert (=> b!175715 (= res!83308 (not e!115972))))

(declare-fun res!83305 () Bool)

(assert (=> b!175715 (=> (not res!83305) (not e!115972))))

(assert (=> b!175715 (= res!83305 (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun b!175716 () Bool)

(assert (=> b!175716 (= e!115970 e!115979)))

(declare-fun res!83301 () Bool)

(declare-fun call!17797 () Bool)

(assert (=> b!175716 (= res!83301 call!17797)))

(assert (=> b!175716 (=> (not res!83301) (not e!115979))))

(declare-fun b!175717 () Bool)

(assert (=> b!175717 (= e!115970 (not call!17797))))

(declare-fun b!175718 () Bool)

(declare-fun Unit!5388 () Unit!5385)

(assert (=> b!175718 (= e!115975 Unit!5388)))

(declare-fun bm!17795 () Bool)

(assert (=> bm!17795 (= call!17797 (contains!1172 lt!86981 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!53411 c!31463) b!175712))

(assert (= (and d!53411 (not c!31463)) b!175707))

(assert (= (and b!175707 c!31465) b!175714))

(assert (= (and b!175707 (not c!31465)) b!175698))

(assert (= (and b!175698 c!31468) b!175710))

(assert (= (and b!175698 (not c!31468)) b!175713))

(assert (= (or b!175710 b!175713) bm!17790))

(assert (= (or b!175714 bm!17790) bm!17792))

(assert (= (or b!175714 b!175710) bm!17793))

(assert (= (or b!175712 bm!17792) bm!17794))

(assert (= (or b!175712 bm!17793) bm!17789))

(assert (= (and d!53411 res!83307) b!175709))

(assert (= (and d!53411 c!31467) b!175708))

(assert (= (and d!53411 (not c!31467)) b!175718))

(assert (= (and d!53411 res!83306) b!175715))

(assert (= (and b!175715 res!83305) b!175700))

(assert (= (and b!175715 (not res!83308)) b!175703))

(assert (= (and b!175703 res!83302) b!175704))

(assert (= (and b!175715 res!83303) b!175705))

(assert (= (and b!175705 c!31464) b!175702))

(assert (= (and b!175705 (not c!31464)) b!175711))

(assert (= (and b!175702 res!83304) b!175701))

(assert (= (or b!175702 b!175711) bm!17791))

(assert (= (and b!175705 res!83300) b!175699))

(assert (= (and b!175699 c!31466) b!175716))

(assert (= (and b!175699 (not c!31466)) b!175717))

(assert (= (and b!175716 res!83301) b!175706))

(assert (= (or b!175716 b!175717) bm!17795))

(declare-fun b_lambda!7045 () Bool)

(assert (=> (not b_lambda!7045) (not b!175704)))

(declare-fun t!7075 () Bool)

(declare-fun tb!2789 () Bool)

(assert (=> (and b!175585 (= (defaultEntry!3623 thiss!1248) (defaultEntry!3623 thiss!1248)) t!7075) tb!2789))

(declare-fun result!4625 () Bool)

(assert (=> tb!2789 (= result!4625 tp_is_empty!4113)))

(assert (=> b!175704 t!7075))

(declare-fun b_and!10845 () Bool)

(assert (= b_and!10841 (and (=> t!7075 result!4625) b_and!10845)))

(declare-fun m!204557 () Bool)

(assert (=> b!175701 m!204557))

(declare-fun m!204559 () Bool)

(assert (=> b!175708 m!204559))

(declare-fun m!204561 () Bool)

(assert (=> b!175708 m!204561))

(declare-fun m!204563 () Bool)

(assert (=> b!175708 m!204563))

(declare-fun m!204565 () Bool)

(assert (=> b!175708 m!204565))

(declare-fun m!204567 () Bool)

(assert (=> b!175708 m!204567))

(declare-fun m!204569 () Bool)

(assert (=> b!175708 m!204569))

(assert (=> b!175708 m!204563))

(declare-fun m!204571 () Bool)

(assert (=> b!175708 m!204571))

(declare-fun m!204573 () Bool)

(assert (=> b!175708 m!204573))

(declare-fun m!204575 () Bool)

(assert (=> b!175708 m!204575))

(declare-fun m!204577 () Bool)

(assert (=> b!175708 m!204577))

(declare-fun m!204579 () Bool)

(assert (=> b!175708 m!204579))

(declare-fun m!204581 () Bool)

(assert (=> b!175708 m!204581))

(declare-fun m!204583 () Bool)

(assert (=> b!175708 m!204583))

(declare-fun m!204585 () Bool)

(assert (=> b!175708 m!204585))

(declare-fun m!204587 () Bool)

(assert (=> b!175708 m!204587))

(assert (=> b!175708 m!204575))

(declare-fun m!204589 () Bool)

(assert (=> b!175708 m!204589))

(assert (=> b!175708 m!204559))

(assert (=> b!175708 m!204577))

(declare-fun m!204591 () Bool)

(assert (=> b!175708 m!204591))

(declare-fun m!204593 () Bool)

(assert (=> bm!17791 m!204593))

(assert (=> b!175700 m!204581))

(assert (=> b!175700 m!204581))

(declare-fun m!204595 () Bool)

(assert (=> b!175700 m!204595))

(assert (=> d!53411 m!204505))

(assert (=> b!175709 m!204581))

(assert (=> b!175709 m!204581))

(assert (=> b!175709 m!204595))

(declare-fun m!204597 () Bool)

(assert (=> bm!17795 m!204597))

(declare-fun m!204599 () Bool)

(assert (=> bm!17789 m!204599))

(declare-fun m!204601 () Bool)

(assert (=> b!175706 m!204601))

(assert (=> bm!17794 m!204565))

(assert (=> b!175704 m!204581))

(declare-fun m!204603 () Bool)

(assert (=> b!175704 m!204603))

(declare-fun m!204605 () Bool)

(assert (=> b!175704 m!204605))

(assert (=> b!175704 m!204581))

(declare-fun m!204607 () Bool)

(assert (=> b!175704 m!204607))

(assert (=> b!175704 m!204605))

(assert (=> b!175704 m!204603))

(declare-fun m!204609 () Bool)

(assert (=> b!175704 m!204609))

(declare-fun m!204611 () Bool)

(assert (=> b!175712 m!204611))

(assert (=> b!175703 m!204581))

(assert (=> b!175703 m!204581))

(declare-fun m!204613 () Bool)

(assert (=> b!175703 m!204613))

(assert (=> b!175587 d!53411))

(declare-fun d!53413 () Bool)

(assert (=> d!53413 (= (array_inv!2229 (_keys!5476 thiss!1248)) (bvsge (size!3798 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175585 d!53413))

(declare-fun d!53415 () Bool)

(assert (=> d!53415 (= (array_inv!2230 (_values!3606 thiss!1248)) (bvsge (size!3799 (_values!3606 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175585 d!53415))

(declare-fun d!53417 () Bool)

(assert (=> d!53417 (= (validMask!0 (mask!8524 thiss!1248)) (and (or (= (mask!8524 thiss!1248) #b00000000000000000000000000000111) (= (mask!8524 thiss!1248) #b00000000000000000000000000001111) (= (mask!8524 thiss!1248) #b00000000000000000000000000011111) (= (mask!8524 thiss!1248) #b00000000000000000000000000111111) (= (mask!8524 thiss!1248) #b00000000000000000000000001111111) (= (mask!8524 thiss!1248) #b00000000000000000000000011111111) (= (mask!8524 thiss!1248) #b00000000000000000000000111111111) (= (mask!8524 thiss!1248) #b00000000000000000000001111111111) (= (mask!8524 thiss!1248) #b00000000000000000000011111111111) (= (mask!8524 thiss!1248) #b00000000000000000000111111111111) (= (mask!8524 thiss!1248) #b00000000000000000001111111111111) (= (mask!8524 thiss!1248) #b00000000000000000011111111111111) (= (mask!8524 thiss!1248) #b00000000000000000111111111111111) (= (mask!8524 thiss!1248) #b00000000000000001111111111111111) (= (mask!8524 thiss!1248) #b00000000000000011111111111111111) (= (mask!8524 thiss!1248) #b00000000000000111111111111111111) (= (mask!8524 thiss!1248) #b00000000000001111111111111111111) (= (mask!8524 thiss!1248) #b00000000000011111111111111111111) (= (mask!8524 thiss!1248) #b00000000000111111111111111111111) (= (mask!8524 thiss!1248) #b00000000001111111111111111111111) (= (mask!8524 thiss!1248) #b00000000011111111111111111111111) (= (mask!8524 thiss!1248) #b00000000111111111111111111111111) (= (mask!8524 thiss!1248) #b00000001111111111111111111111111) (= (mask!8524 thiss!1248) #b00000011111111111111111111111111) (= (mask!8524 thiss!1248) #b00000111111111111111111111111111) (= (mask!8524 thiss!1248) #b00001111111111111111111111111111) (= (mask!8524 thiss!1248) #b00011111111111111111111111111111) (= (mask!8524 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8524 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!175592 d!53417))

(declare-fun b!175727 () Bool)

(declare-fun e!115985 () Bool)

(assert (=> b!175727 (= e!115985 tp_is_empty!4113)))

(declare-fun condMapEmpty!7021 () Bool)

(declare-fun mapDefault!7021 () ValueCell!1713)

(assert (=> mapNonEmpty!7015 (= condMapEmpty!7021 (= mapRest!7015 ((as const (Array (_ BitVec 32) ValueCell!1713)) mapDefault!7021)))))

(declare-fun e!115986 () Bool)

(declare-fun mapRes!7021 () Bool)

(assert (=> mapNonEmpty!7015 (= tp!15705 (and e!115986 mapRes!7021))))

(declare-fun b!175728 () Bool)

(assert (=> b!175728 (= e!115986 tp_is_empty!4113)))

(declare-fun mapIsEmpty!7021 () Bool)

(assert (=> mapIsEmpty!7021 mapRes!7021))

(declare-fun mapNonEmpty!7021 () Bool)

(declare-fun tp!15715 () Bool)

(assert (=> mapNonEmpty!7021 (= mapRes!7021 (and tp!15715 e!115985))))

(declare-fun mapValue!7021 () ValueCell!1713)

(declare-fun mapRest!7021 () (Array (_ BitVec 32) ValueCell!1713))

(declare-fun mapKey!7021 () (_ BitVec 32))

(assert (=> mapNonEmpty!7021 (= mapRest!7015 (store mapRest!7021 mapKey!7021 mapValue!7021))))

(assert (= (and mapNonEmpty!7015 condMapEmpty!7021) mapIsEmpty!7021))

(assert (= (and mapNonEmpty!7015 (not condMapEmpty!7021)) mapNonEmpty!7021))

(assert (= (and mapNonEmpty!7021 ((_ is ValueCellFull!1713) mapValue!7021)) b!175727))

(assert (= (and mapNonEmpty!7015 ((_ is ValueCellFull!1713) mapDefault!7021)) b!175728))

(declare-fun m!204615 () Bool)

(assert (=> mapNonEmpty!7021 m!204615))

(declare-fun b_lambda!7047 () Bool)

(assert (= b_lambda!7045 (or (and b!175585 b_free!4341) b_lambda!7047)))

(check-sat (not d!53411) (not d!53405) (not b_lambda!7047) (not b!175627) (not bm!17795) (not b_next!4341) (not b!175704) (not b!175645) (not b!175626) (not b!175628) (not b!175708) (not bm!17791) (not b!175653) (not d!53409) (not b!175700) (not b!175712) (not bm!17794) (not b!175706) (not b!175701) (not bm!17789) b_and!10845 (not b!175709) tp_is_empty!4113 (not mapNonEmpty!7021) (not b!175703) (not b!175655) (not d!53407))
(check-sat b_and!10845 (not b_next!4341))
(get-model)

(declare-fun b!175747 () Bool)

(declare-fun e!116001 () SeekEntryResult!562)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!175747 (= e!116001 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8524 thiss!1248)) #b00000000000000000000000000000000 (mask!8524 thiss!1248)) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(declare-fun b!175748 () Bool)

(declare-fun lt!87000 () SeekEntryResult!562)

(assert (=> b!175748 (and (bvsge (index!4418 lt!87000) #b00000000000000000000000000000000) (bvslt (index!4418 lt!87000) (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun e!115997 () Bool)

(assert (=> b!175748 (= e!115997 (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4418 lt!87000)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53419 () Bool)

(declare-fun e!116000 () Bool)

(assert (=> d!53419 e!116000))

(declare-fun c!31475 () Bool)

(assert (=> d!53419 (= c!31475 (and ((_ is Intermediate!562) lt!87000) (undefined!1374 lt!87000)))))

(declare-fun e!115998 () SeekEntryResult!562)

(assert (=> d!53419 (= lt!87000 e!115998)))

(declare-fun c!31477 () Bool)

(assert (=> d!53419 (= c!31477 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!86999 () (_ BitVec 64))

(assert (=> d!53419 (= lt!86999 (select (arr!3496 (_keys!5476 thiss!1248)) (toIndex!0 key!828 (mask!8524 thiss!1248))))))

(assert (=> d!53419 (validMask!0 (mask!8524 thiss!1248))))

(assert (=> d!53419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8524 thiss!1248)) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)) lt!87000)))

(declare-fun b!175749 () Bool)

(assert (=> b!175749 (= e!115998 e!116001)))

(declare-fun c!31476 () Bool)

(assert (=> b!175749 (= c!31476 (or (= lt!86999 key!828) (= (bvadd lt!86999 lt!86999) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175750 () Bool)

(assert (=> b!175750 (and (bvsge (index!4418 lt!87000) #b00000000000000000000000000000000) (bvslt (index!4418 lt!87000) (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun res!83315 () Bool)

(assert (=> b!175750 (= res!83315 (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4418 lt!87000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175750 (=> res!83315 e!115997)))

(declare-fun b!175751 () Bool)

(assert (=> b!175751 (= e!116000 (bvsge (x!19320 lt!87000) #b01111111111111111111111111111110))))

(declare-fun b!175752 () Bool)

(assert (=> b!175752 (= e!115998 (Intermediate!562 true (toIndex!0 key!828 (mask!8524 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!175753 () Bool)

(declare-fun e!115999 () Bool)

(assert (=> b!175753 (= e!116000 e!115999)))

(declare-fun res!83316 () Bool)

(assert (=> b!175753 (= res!83316 (and ((_ is Intermediate!562) lt!87000) (not (undefined!1374 lt!87000)) (bvslt (x!19320 lt!87000) #b01111111111111111111111111111110) (bvsge (x!19320 lt!87000) #b00000000000000000000000000000000) (bvsge (x!19320 lt!87000) #b00000000000000000000000000000000)))))

(assert (=> b!175753 (=> (not res!83316) (not e!115999))))

(declare-fun b!175754 () Bool)

(assert (=> b!175754 (= e!116001 (Intermediate!562 false (toIndex!0 key!828 (mask!8524 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!175755 () Bool)

(assert (=> b!175755 (and (bvsge (index!4418 lt!87000) #b00000000000000000000000000000000) (bvslt (index!4418 lt!87000) (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun res!83317 () Bool)

(assert (=> b!175755 (= res!83317 (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4418 lt!87000)) key!828))))

(assert (=> b!175755 (=> res!83317 e!115997)))

(assert (=> b!175755 (= e!115999 e!115997)))

(assert (= (and d!53419 c!31477) b!175752))

(assert (= (and d!53419 (not c!31477)) b!175749))

(assert (= (and b!175749 c!31476) b!175754))

(assert (= (and b!175749 (not c!31476)) b!175747))

(assert (= (and d!53419 c!31475) b!175751))

(assert (= (and d!53419 (not c!31475)) b!175753))

(assert (= (and b!175753 res!83316) b!175755))

(assert (= (and b!175755 (not res!83317)) b!175750))

(assert (= (and b!175750 (not res!83315)) b!175748))

(declare-fun m!204617 () Bool)

(assert (=> b!175750 m!204617))

(assert (=> d!53419 m!204539))

(declare-fun m!204619 () Bool)

(assert (=> d!53419 m!204619))

(assert (=> d!53419 m!204505))

(assert (=> b!175755 m!204617))

(assert (=> b!175748 m!204617))

(assert (=> b!175747 m!204539))

(declare-fun m!204621 () Bool)

(assert (=> b!175747 m!204621))

(assert (=> b!175747 m!204621))

(declare-fun m!204623 () Bool)

(assert (=> b!175747 m!204623))

(assert (=> d!53407 d!53419))

(declare-fun d!53421 () Bool)

(declare-fun lt!87006 () (_ BitVec 32))

(declare-fun lt!87005 () (_ BitVec 32))

(assert (=> d!53421 (= lt!87006 (bvmul (bvxor lt!87005 (bvlshr lt!87005 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53421 (= lt!87005 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53421 (and (bvsge (mask!8524 thiss!1248) #b00000000000000000000000000000000) (let ((res!83318 (let ((h!2862 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19336 (bvmul (bvxor h!2862 (bvlshr h!2862 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19336 (bvlshr x!19336 #b00000000000000000000000000001101)) (mask!8524 thiss!1248)))))) (and (bvslt res!83318 (bvadd (mask!8524 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!83318 #b00000000000000000000000000000000))))))

(assert (=> d!53421 (= (toIndex!0 key!828 (mask!8524 thiss!1248)) (bvand (bvxor lt!87006 (bvlshr lt!87006 #b00000000000000000000000000001101)) (mask!8524 thiss!1248)))))

(assert (=> d!53407 d!53421))

(assert (=> d!53407 d!53417))

(declare-fun bm!17798 () Bool)

(declare-fun call!17801 () Bool)

(assert (=> bm!17798 (= call!17801 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(declare-fun b!175764 () Bool)

(declare-fun e!116010 () Bool)

(assert (=> b!175764 (= e!116010 call!17801)))

(declare-fun b!175765 () Bool)

(declare-fun e!116008 () Bool)

(assert (=> b!175765 (= e!116010 e!116008)))

(declare-fun lt!87014 () (_ BitVec 64))

(assert (=> b!175765 (= lt!87014 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87015 () Unit!5385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7366 (_ BitVec 64) (_ BitVec 32)) Unit!5385)

(assert (=> b!175765 (= lt!87015 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5476 thiss!1248) lt!87014 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!175765 (arrayContainsKey!0 (_keys!5476 thiss!1248) lt!87014 #b00000000000000000000000000000000)))

(declare-fun lt!87013 () Unit!5385)

(assert (=> b!175765 (= lt!87013 lt!87015)))

(declare-fun res!83323 () Bool)

(assert (=> b!175765 (= res!83323 (= (seekEntryOrOpen!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000) (_keys!5476 thiss!1248) (mask!8524 thiss!1248)) (Found!562 #b00000000000000000000000000000000)))))

(assert (=> b!175765 (=> (not res!83323) (not e!116008))))

(declare-fun b!175766 () Bool)

(declare-fun e!116009 () Bool)

(assert (=> b!175766 (= e!116009 e!116010)))

(declare-fun c!31480 () Bool)

(assert (=> b!175766 (= c!31480 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53423 () Bool)

(declare-fun res!83324 () Bool)

(assert (=> d!53423 (=> res!83324 e!116009)))

(assert (=> d!53423 (= res!83324 (bvsge #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53423 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)) e!116009)))

(declare-fun b!175767 () Bool)

(assert (=> b!175767 (= e!116008 call!17801)))

(assert (= (and d!53423 (not res!83324)) b!175766))

(assert (= (and b!175766 c!31480) b!175765))

(assert (= (and b!175766 (not c!31480)) b!175764))

(assert (= (and b!175765 res!83323) b!175767))

(assert (= (or b!175767 b!175764) bm!17798))

(declare-fun m!204625 () Bool)

(assert (=> bm!17798 m!204625))

(assert (=> b!175765 m!204581))

(declare-fun m!204627 () Bool)

(assert (=> b!175765 m!204627))

(declare-fun m!204629 () Bool)

(assert (=> b!175765 m!204629))

(assert (=> b!175765 m!204581))

(declare-fun m!204631 () Bool)

(assert (=> b!175765 m!204631))

(assert (=> b!175766 m!204581))

(assert (=> b!175766 m!204581))

(assert (=> b!175766 m!204595))

(assert (=> b!175627 d!53423))

(declare-fun d!53425 () Bool)

(declare-fun isEmpty!448 (Option!195) Bool)

(assert (=> d!53425 (= (isDefined!143 (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828)) (not (isEmpty!448 (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))))

(declare-fun bs!7248 () Bool)

(assert (= bs!7248 d!53425))

(assert (=> bs!7248 m!204553))

(declare-fun m!204633 () Bool)

(assert (=> bs!7248 m!204633))

(assert (=> b!175655 d!53425))

(declare-fun b!175779 () Bool)

(declare-fun e!116016 () Option!195)

(assert (=> b!175779 (= e!116016 None!193)))

(declare-fun d!53427 () Bool)

(declare-fun c!31485 () Bool)

(assert (=> d!53427 (= c!31485 (and ((_ is Cons!2241) (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) (= (_1!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) key!828)))))

(declare-fun e!116015 () Option!195)

(assert (=> d!53427 (= (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828) e!116015)))

(declare-fun b!175777 () Bool)

(assert (=> b!175777 (= e!116015 e!116016)))

(declare-fun c!31486 () Bool)

(assert (=> b!175777 (= c!31486 (and ((_ is Cons!2241) (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) (not (= (_1!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) key!828))))))

(declare-fun b!175778 () Bool)

(assert (=> b!175778 (= e!116016 (getValueByKey!189 (t!7073 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) key!828))))

(declare-fun b!175776 () Bool)

(assert (=> b!175776 (= e!116015 (Some!194 (_2!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))))))

(assert (= (and d!53427 c!31485) b!175776))

(assert (= (and d!53427 (not c!31485)) b!175777))

(assert (= (and b!175777 c!31486) b!175778))

(assert (= (and b!175777 (not c!31486)) b!175779))

(declare-fun m!204635 () Bool)

(assert (=> b!175778 m!204635))

(assert (=> b!175655 d!53427))

(declare-fun d!53429 () Bool)

(declare-fun e!116019 () Bool)

(assert (=> d!53429 e!116019))

(declare-fun res!83329 () Bool)

(assert (=> d!53429 (=> (not res!83329) (not e!116019))))

(declare-fun lt!87024 () ListLongMap!2205)

(assert (=> d!53429 (= res!83329 (contains!1172 lt!87024 (_1!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(declare-fun lt!87025 () List!2245)

(assert (=> d!53429 (= lt!87024 (ListLongMap!2206 lt!87025))))

(declare-fun lt!87027 () Unit!5385)

(declare-fun lt!87026 () Unit!5385)

(assert (=> d!53429 (= lt!87027 lt!87026)))

(assert (=> d!53429 (= (getValueByKey!189 lt!87025 (_1!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!102 (List!2245 (_ BitVec 64) V!5131) Unit!5385)

(assert (=> d!53429 (= lt!87026 (lemmaContainsTupThenGetReturnValue!102 lt!87025 (_1!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(declare-fun insertStrictlySorted!104 (List!2245 (_ BitVec 64) V!5131) List!2245)

(assert (=> d!53429 (= lt!87025 (insertStrictlySorted!104 (toList!1118 call!17796) (_1!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(assert (=> d!53429 (= (+!247 call!17796 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))) lt!87024)))

(declare-fun b!175784 () Bool)

(declare-fun res!83330 () Bool)

(assert (=> b!175784 (=> (not res!83330) (not e!116019))))

(assert (=> b!175784 (= res!83330 (= (getValueByKey!189 (toList!1118 lt!87024) (_1!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))))

(declare-fun b!175785 () Bool)

(declare-fun contains!1173 (List!2245 tuple2!3264) Bool)

(assert (=> b!175785 (= e!116019 (contains!1173 (toList!1118 lt!87024) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))

(assert (= (and d!53429 res!83329) b!175784))

(assert (= (and b!175784 res!83330) b!175785))

(declare-fun m!204637 () Bool)

(assert (=> d!53429 m!204637))

(declare-fun m!204639 () Bool)

(assert (=> d!53429 m!204639))

(declare-fun m!204641 () Bool)

(assert (=> d!53429 m!204641))

(declare-fun m!204643 () Bool)

(assert (=> d!53429 m!204643))

(declare-fun m!204645 () Bool)

(assert (=> b!175784 m!204645))

(declare-fun m!204647 () Bool)

(assert (=> b!175785 m!204647))

(assert (=> b!175712 d!53429))

(declare-fun d!53431 () Bool)

(declare-fun res!83339 () Bool)

(declare-fun e!116031 () Bool)

(assert (=> d!53431 (=> res!83339 e!116031)))

(assert (=> d!53431 (= res!83339 (bvsge #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53431 (= (arrayNoDuplicates!0 (_keys!5476 thiss!1248) #b00000000000000000000000000000000 Nil!2243) e!116031)))

(declare-fun b!175796 () Bool)

(declare-fun e!116030 () Bool)

(assert (=> b!175796 (= e!116031 e!116030)))

(declare-fun res!83338 () Bool)

(assert (=> b!175796 (=> (not res!83338) (not e!116030))))

(declare-fun e!116028 () Bool)

(assert (=> b!175796 (= res!83338 (not e!116028))))

(declare-fun res!83337 () Bool)

(assert (=> b!175796 (=> (not res!83337) (not e!116028))))

(assert (=> b!175796 (= res!83337 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175797 () Bool)

(declare-fun e!116029 () Bool)

(declare-fun call!17804 () Bool)

(assert (=> b!175797 (= e!116029 call!17804)))

(declare-fun bm!17801 () Bool)

(declare-fun c!31489 () Bool)

(assert (=> bm!17801 (= call!17804 (arrayNoDuplicates!0 (_keys!5476 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31489 (Cons!2242 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000) Nil!2243) Nil!2243)))))

(declare-fun b!175798 () Bool)

(assert (=> b!175798 (= e!116030 e!116029)))

(assert (=> b!175798 (= c!31489 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175799 () Bool)

(assert (=> b!175799 (= e!116029 call!17804)))

(declare-fun b!175800 () Bool)

(declare-fun contains!1174 (List!2246 (_ BitVec 64)) Bool)

(assert (=> b!175800 (= e!116028 (contains!1174 Nil!2243 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53431 (not res!83339)) b!175796))

(assert (= (and b!175796 res!83337) b!175800))

(assert (= (and b!175796 res!83338) b!175798))

(assert (= (and b!175798 c!31489) b!175797))

(assert (= (and b!175798 (not c!31489)) b!175799))

(assert (= (or b!175797 b!175799) bm!17801))

(assert (=> b!175796 m!204581))

(assert (=> b!175796 m!204581))

(assert (=> b!175796 m!204595))

(assert (=> bm!17801 m!204581))

(declare-fun m!204649 () Bool)

(assert (=> bm!17801 m!204649))

(assert (=> b!175798 m!204581))

(assert (=> b!175798 m!204581))

(assert (=> b!175798 m!204595))

(assert (=> b!175800 m!204581))

(assert (=> b!175800 m!204581))

(declare-fun m!204651 () Bool)

(assert (=> b!175800 m!204651))

(assert (=> b!175628 d!53431))

(declare-fun d!53433 () Bool)

(declare-fun e!116032 () Bool)

(assert (=> d!53433 e!116032))

(declare-fun res!83340 () Bool)

(assert (=> d!53433 (=> res!83340 e!116032)))

(declare-fun lt!87029 () Bool)

(assert (=> d!53433 (= res!83340 (not lt!87029))))

(declare-fun lt!87030 () Bool)

(assert (=> d!53433 (= lt!87029 lt!87030)))

(declare-fun lt!87028 () Unit!5385)

(declare-fun e!116033 () Unit!5385)

(assert (=> d!53433 (= lt!87028 e!116033)))

(declare-fun c!31490 () Bool)

(assert (=> d!53433 (= c!31490 lt!87030)))

(assert (=> d!53433 (= lt!87030 (containsKey!193 (toList!1118 lt!86981) (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53433 (= (contains!1172 lt!86981 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)) lt!87029)))

(declare-fun b!175801 () Bool)

(declare-fun lt!87031 () Unit!5385)

(assert (=> b!175801 (= e!116033 lt!87031)))

(assert (=> b!175801 (= lt!87031 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 lt!86981) (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175801 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175802 () Bool)

(declare-fun Unit!5389 () Unit!5385)

(assert (=> b!175802 (= e!116033 Unit!5389)))

(declare-fun b!175803 () Bool)

(assert (=> b!175803 (= e!116032 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53433 c!31490) b!175801))

(assert (= (and d!53433 (not c!31490)) b!175802))

(assert (= (and d!53433 (not res!83340)) b!175803))

(assert (=> d!53433 m!204581))

(declare-fun m!204653 () Bool)

(assert (=> d!53433 m!204653))

(assert (=> b!175801 m!204581))

(declare-fun m!204655 () Bool)

(assert (=> b!175801 m!204655))

(assert (=> b!175801 m!204581))

(declare-fun m!204657 () Bool)

(assert (=> b!175801 m!204657))

(assert (=> b!175801 m!204657))

(declare-fun m!204659 () Bool)

(assert (=> b!175801 m!204659))

(assert (=> b!175803 m!204581))

(assert (=> b!175803 m!204657))

(assert (=> b!175803 m!204657))

(assert (=> b!175803 m!204659))

(assert (=> b!175703 d!53433))

(declare-fun d!53435 () Bool)

(assert (=> d!53435 (= (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!175700 d!53435))

(declare-fun d!53437 () Bool)

(assert (=> d!53437 (isDefined!143 (getValueByKey!189 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(declare-fun lt!87034 () Unit!5385)

(declare-fun choose!948 (List!2245 (_ BitVec 64)) Unit!5385)

(assert (=> d!53437 (= lt!87034 (choose!948 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(declare-fun e!116036 () Bool)

(assert (=> d!53437 e!116036))

(declare-fun res!83343 () Bool)

(assert (=> d!53437 (=> (not res!83343) (not e!116036))))

(declare-fun isStrictlySorted!330 (List!2245) Bool)

(assert (=> d!53437 (= res!83343 (isStrictlySorted!330 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))))))

(assert (=> d!53437 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828) lt!87034)))

(declare-fun b!175806 () Bool)

(assert (=> b!175806 (= e!116036 (containsKey!193 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828))))

(assert (= (and d!53437 res!83343) b!175806))

(assert (=> d!53437 m!204553))

(assert (=> d!53437 m!204553))

(assert (=> d!53437 m!204555))

(declare-fun m!204661 () Bool)

(assert (=> d!53437 m!204661))

(declare-fun m!204663 () Bool)

(assert (=> d!53437 m!204663))

(assert (=> b!175806 m!204549))

(assert (=> b!175653 d!53437))

(assert (=> b!175653 d!53425))

(assert (=> b!175653 d!53427))

(declare-fun d!53439 () Bool)

(declare-fun res!83354 () Bool)

(declare-fun e!116039 () Bool)

(assert (=> d!53439 (=> (not res!83354) (not e!116039))))

(assert (=> d!53439 (= res!83354 (validMask!0 (mask!8524 thiss!1248)))))

(assert (=> d!53439 (= (simpleValid!148 thiss!1248) e!116039)))

(declare-fun b!175817 () Bool)

(declare-fun res!83352 () Bool)

(assert (=> b!175817 (=> (not res!83352) (not e!116039))))

(declare-fun size!3802 (LongMapFixedSize!2334) (_ BitVec 32))

(assert (=> b!175817 (= res!83352 (= (size!3802 thiss!1248) (bvadd (_size!1216 thiss!1248) (bvsdiv (bvadd (extraKeys!3360 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!175815 () Bool)

(declare-fun res!83353 () Bool)

(assert (=> b!175815 (=> (not res!83353) (not e!116039))))

(assert (=> b!175815 (= res!83353 (and (= (size!3799 (_values!3606 thiss!1248)) (bvadd (mask!8524 thiss!1248) #b00000000000000000000000000000001)) (= (size!3798 (_keys!5476 thiss!1248)) (size!3799 (_values!3606 thiss!1248))) (bvsge (_size!1216 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1216 thiss!1248) (bvadd (mask!8524 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!175818 () Bool)

(assert (=> b!175818 (= e!116039 (and (bvsge (extraKeys!3360 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3360 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1216 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!175816 () Bool)

(declare-fun res!83355 () Bool)

(assert (=> b!175816 (=> (not res!83355) (not e!116039))))

(assert (=> b!175816 (= res!83355 (bvsge (size!3802 thiss!1248) (_size!1216 thiss!1248)))))

(assert (= (and d!53439 res!83354) b!175815))

(assert (= (and b!175815 res!83353) b!175816))

(assert (= (and b!175816 res!83355) b!175817))

(assert (= (and b!175817 res!83352) b!175818))

(assert (=> d!53439 m!204505))

(declare-fun m!204665 () Bool)

(assert (=> b!175817 m!204665))

(assert (=> b!175816 m!204665))

(assert (=> d!53405 d!53439))

(declare-fun d!53441 () Bool)

(declare-fun e!116040 () Bool)

(assert (=> d!53441 e!116040))

(declare-fun res!83356 () Bool)

(assert (=> d!53441 (=> res!83356 e!116040)))

(declare-fun lt!87036 () Bool)

(assert (=> d!53441 (= res!83356 (not lt!87036))))

(declare-fun lt!87037 () Bool)

(assert (=> d!53441 (= lt!87036 lt!87037)))

(declare-fun lt!87035 () Unit!5385)

(declare-fun e!116041 () Unit!5385)

(assert (=> d!53441 (= lt!87035 e!116041)))

(declare-fun c!31491 () Bool)

(assert (=> d!53441 (= c!31491 lt!87037)))

(assert (=> d!53441 (= lt!87037 (containsKey!193 (toList!1118 lt!86981) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53441 (= (contains!1172 lt!86981 #b1000000000000000000000000000000000000000000000000000000000000000) lt!87036)))

(declare-fun b!175819 () Bool)

(declare-fun lt!87038 () Unit!5385)

(assert (=> b!175819 (= e!116041 lt!87038)))

(assert (=> b!175819 (= lt!87038 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 lt!86981) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175819 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175820 () Bool)

(declare-fun Unit!5390 () Unit!5385)

(assert (=> b!175820 (= e!116041 Unit!5390)))

(declare-fun b!175821 () Bool)

(assert (=> b!175821 (= e!116040 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53441 c!31491) b!175819))

(assert (= (and d!53441 (not c!31491)) b!175820))

(assert (= (and d!53441 (not res!83356)) b!175821))

(declare-fun m!204667 () Bool)

(assert (=> d!53441 m!204667))

(declare-fun m!204669 () Bool)

(assert (=> b!175819 m!204669))

(declare-fun m!204671 () Bool)

(assert (=> b!175819 m!204671))

(assert (=> b!175819 m!204671))

(declare-fun m!204673 () Bool)

(assert (=> b!175819 m!204673))

(assert (=> b!175821 m!204671))

(assert (=> b!175821 m!204671))

(assert (=> b!175821 m!204673))

(assert (=> bm!17795 d!53441))

(declare-fun d!53443 () Bool)

(assert (=> d!53443 (= (apply!135 (+!247 lt!86985 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) lt!86983) (apply!135 lt!86985 lt!86983))))

(declare-fun lt!87041 () Unit!5385)

(declare-fun choose!949 (ListLongMap!2205 (_ BitVec 64) V!5131 (_ BitVec 64)) Unit!5385)

(assert (=> d!53443 (= lt!87041 (choose!949 lt!86985 lt!86978 (zeroValue!3464 thiss!1248) lt!86983))))

(declare-fun e!116044 () Bool)

(assert (=> d!53443 e!116044))

(declare-fun res!83359 () Bool)

(assert (=> d!53443 (=> (not res!83359) (not e!116044))))

(assert (=> d!53443 (= res!83359 (contains!1172 lt!86985 lt!86983))))

(assert (=> d!53443 (= (addApplyDifferent!111 lt!86985 lt!86978 (zeroValue!3464 thiss!1248) lt!86983) lt!87041)))

(declare-fun b!175825 () Bool)

(assert (=> b!175825 (= e!116044 (not (= lt!86983 lt!86978)))))

(assert (= (and d!53443 res!83359) b!175825))

(declare-fun m!204675 () Bool)

(assert (=> d!53443 m!204675))

(assert (=> d!53443 m!204575))

(assert (=> d!53443 m!204589))

(assert (=> d!53443 m!204569))

(assert (=> d!53443 m!204575))

(declare-fun m!204677 () Bool)

(assert (=> d!53443 m!204677))

(assert (=> b!175708 d!53443))

(declare-fun d!53445 () Bool)

(assert (=> d!53445 (contains!1172 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) lt!86988)))

(declare-fun lt!87044 () Unit!5385)

(declare-fun choose!950 (ListLongMap!2205 (_ BitVec 64) V!5131 (_ BitVec 64)) Unit!5385)

(assert (=> d!53445 (= lt!87044 (choose!950 lt!86986 lt!86975 (zeroValue!3464 thiss!1248) lt!86988))))

(assert (=> d!53445 (contains!1172 lt!86986 lt!86988)))

(assert (=> d!53445 (= (addStillContains!111 lt!86986 lt!86975 (zeroValue!3464 thiss!1248) lt!86988) lt!87044)))

(declare-fun bs!7249 () Bool)

(assert (= bs!7249 d!53445))

(assert (=> bs!7249 m!204563))

(assert (=> bs!7249 m!204563))

(assert (=> bs!7249 m!204571))

(declare-fun m!204679 () Bool)

(assert (=> bs!7249 m!204679))

(declare-fun m!204681 () Bool)

(assert (=> bs!7249 m!204681))

(assert (=> b!175708 d!53445))

(declare-fun d!53447 () Bool)

(declare-fun e!116045 () Bool)

(assert (=> d!53447 e!116045))

(declare-fun res!83360 () Bool)

(assert (=> d!53447 (=> (not res!83360) (not e!116045))))

(declare-fun lt!87045 () ListLongMap!2205)

(assert (=> d!53447 (= res!83360 (contains!1172 lt!87045 (_1!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))))))

(declare-fun lt!87046 () List!2245)

(assert (=> d!53447 (= lt!87045 (ListLongMap!2206 lt!87046))))

(declare-fun lt!87048 () Unit!5385)

(declare-fun lt!87047 () Unit!5385)

(assert (=> d!53447 (= lt!87048 lt!87047)))

(assert (=> d!53447 (= (getValueByKey!189 lt!87046 (_1!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53447 (= lt!87047 (lemmaContainsTupThenGetReturnValue!102 lt!87046 (_1!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53447 (= lt!87046 (insertStrictlySorted!104 (toList!1118 lt!86986) (_1!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53447 (= (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) lt!87045)))

(declare-fun b!175827 () Bool)

(declare-fun res!83361 () Bool)

(assert (=> b!175827 (=> (not res!83361) (not e!116045))))

(assert (=> b!175827 (= res!83361 (= (getValueByKey!189 (toList!1118 lt!87045) (_1!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))))))))

(declare-fun b!175828 () Bool)

(assert (=> b!175828 (= e!116045 (contains!1173 (toList!1118 lt!87045) (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))))))

(assert (= (and d!53447 res!83360) b!175827))

(assert (= (and b!175827 res!83361) b!175828))

(declare-fun m!204683 () Bool)

(assert (=> d!53447 m!204683))

(declare-fun m!204685 () Bool)

(assert (=> d!53447 m!204685))

(declare-fun m!204687 () Bool)

(assert (=> d!53447 m!204687))

(declare-fun m!204689 () Bool)

(assert (=> d!53447 m!204689))

(declare-fun m!204691 () Bool)

(assert (=> b!175827 m!204691))

(declare-fun m!204693 () Bool)

(assert (=> b!175828 m!204693))

(assert (=> b!175708 d!53447))

(declare-fun d!53449 () Bool)

(declare-fun get!1994 (Option!195) V!5131)

(assert (=> d!53449 (= (apply!135 lt!86984 lt!86990) (get!1994 (getValueByKey!189 (toList!1118 lt!86984) lt!86990)))))

(declare-fun bs!7250 () Bool)

(assert (= bs!7250 d!53449))

(declare-fun m!204695 () Bool)

(assert (=> bs!7250 m!204695))

(assert (=> bs!7250 m!204695))

(declare-fun m!204697 () Bool)

(assert (=> bs!7250 m!204697))

(assert (=> b!175708 d!53449))

(declare-fun b!175853 () Bool)

(declare-fun e!116062 () Bool)

(declare-fun lt!87065 () ListLongMap!2205)

(declare-fun isEmpty!449 (ListLongMap!2205) Bool)

(assert (=> b!175853 (= e!116062 (isEmpty!449 lt!87065))))

(declare-fun d!53451 () Bool)

(declare-fun e!116064 () Bool)

(assert (=> d!53451 e!116064))

(declare-fun res!83373 () Bool)

(assert (=> d!53451 (=> (not res!83373) (not e!116064))))

(assert (=> d!53451 (= res!83373 (not (contains!1172 lt!87065 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!116066 () ListLongMap!2205)

(assert (=> d!53451 (= lt!87065 e!116066)))

(declare-fun c!31502 () Bool)

(assert (=> d!53451 (= c!31502 (bvsge #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53451 (validMask!0 (mask!8524 thiss!1248))))

(assert (=> d!53451 (= (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)) lt!87065)))

(declare-fun b!175854 () Bool)

(declare-fun e!116065 () Bool)

(assert (=> b!175854 (= e!116065 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175854 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!175855 () Bool)

(declare-fun lt!87063 () Unit!5385)

(declare-fun lt!87066 () Unit!5385)

(assert (=> b!175855 (= lt!87063 lt!87066)))

(declare-fun lt!87069 () (_ BitVec 64))

(declare-fun lt!87064 () ListLongMap!2205)

(declare-fun lt!87067 () (_ BitVec 64))

(declare-fun lt!87068 () V!5131)

(assert (=> b!175855 (not (contains!1172 (+!247 lt!87064 (tuple2!3265 lt!87069 lt!87068)) lt!87067))))

(declare-fun addStillNotContains!77 (ListLongMap!2205 (_ BitVec 64) V!5131 (_ BitVec 64)) Unit!5385)

(assert (=> b!175855 (= lt!87066 (addStillNotContains!77 lt!87064 lt!87069 lt!87068 lt!87067))))

(assert (=> b!175855 (= lt!87067 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!175855 (= lt!87068 (get!1993 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!175855 (= lt!87069 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!17807 () ListLongMap!2205)

(assert (=> b!175855 (= lt!87064 call!17807)))

(declare-fun e!116061 () ListLongMap!2205)

(assert (=> b!175855 (= e!116061 (+!247 call!17807 (tuple2!3265 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000) (get!1993 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!175856 () Bool)

(assert (=> b!175856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> b!175856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3799 (_values!3606 thiss!1248))))))

(declare-fun e!116060 () Bool)

(assert (=> b!175856 (= e!116060 (= (apply!135 lt!87065 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)) (get!1993 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!175857 () Bool)

(declare-fun e!116063 () Bool)

(assert (=> b!175857 (= e!116063 e!116060)))

(assert (=> b!175857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun res!83370 () Bool)

(assert (=> b!175857 (= res!83370 (contains!1172 lt!87065 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175857 (=> (not res!83370) (not e!116060))))

(declare-fun b!175858 () Bool)

(assert (=> b!175858 (= e!116061 call!17807)))

(declare-fun b!175859 () Bool)

(assert (=> b!175859 (= e!116062 (= lt!87065 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3623 thiss!1248))))))

(declare-fun b!175860 () Bool)

(assert (=> b!175860 (= e!116066 (ListLongMap!2206 Nil!2242))))

(declare-fun bm!17804 () Bool)

(assert (=> bm!17804 (= call!17807 (getCurrentListMapNoExtraKeys!165 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3623 thiss!1248)))))

(declare-fun b!175861 () Bool)

(assert (=> b!175861 (= e!116066 e!116061)))

(declare-fun c!31500 () Bool)

(assert (=> b!175861 (= c!31500 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175862 () Bool)

(declare-fun res!83371 () Bool)

(assert (=> b!175862 (=> (not res!83371) (not e!116064))))

(assert (=> b!175862 (= res!83371 (not (contains!1172 lt!87065 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175863 () Bool)

(assert (=> b!175863 (= e!116063 e!116062)))

(declare-fun c!31501 () Bool)

(assert (=> b!175863 (= c!31501 (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(declare-fun b!175864 () Bool)

(assert (=> b!175864 (= e!116064 e!116063)))

(declare-fun c!31503 () Bool)

(assert (=> b!175864 (= c!31503 e!116065)))

(declare-fun res!83372 () Bool)

(assert (=> b!175864 (=> (not res!83372) (not e!116065))))

(assert (=> b!175864 (= res!83372 (bvslt #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (= (and d!53451 c!31502) b!175860))

(assert (= (and d!53451 (not c!31502)) b!175861))

(assert (= (and b!175861 c!31500) b!175855))

(assert (= (and b!175861 (not c!31500)) b!175858))

(assert (= (or b!175855 b!175858) bm!17804))

(assert (= (and d!53451 res!83373) b!175862))

(assert (= (and b!175862 res!83371) b!175864))

(assert (= (and b!175864 res!83372) b!175854))

(assert (= (and b!175864 c!31503) b!175857))

(assert (= (and b!175864 (not c!31503)) b!175863))

(assert (= (and b!175857 res!83370) b!175856))

(assert (= (and b!175863 c!31501) b!175859))

(assert (= (and b!175863 (not c!31501)) b!175853))

(declare-fun b_lambda!7049 () Bool)

(assert (=> (not b_lambda!7049) (not b!175855)))

(assert (=> b!175855 t!7075))

(declare-fun b_and!10847 () Bool)

(assert (= b_and!10845 (and (=> t!7075 result!4625) b_and!10847)))

(declare-fun b_lambda!7051 () Bool)

(assert (=> (not b_lambda!7051) (not b!175856)))

(assert (=> b!175856 t!7075))

(declare-fun b_and!10849 () Bool)

(assert (= b_and!10847 (and (=> t!7075 result!4625) b_and!10849)))

(declare-fun m!204699 () Bool)

(assert (=> b!175853 m!204699))

(declare-fun m!204701 () Bool)

(assert (=> bm!17804 m!204701))

(declare-fun m!204703 () Bool)

(assert (=> b!175855 m!204703))

(declare-fun m!204705 () Bool)

(assert (=> b!175855 m!204705))

(assert (=> b!175855 m!204703))

(declare-fun m!204707 () Bool)

(assert (=> b!175855 m!204707))

(assert (=> b!175855 m!204581))

(assert (=> b!175855 m!204603))

(assert (=> b!175855 m!204605))

(assert (=> b!175855 m!204603))

(assert (=> b!175855 m!204609))

(assert (=> b!175855 m!204605))

(declare-fun m!204709 () Bool)

(assert (=> b!175855 m!204709))

(assert (=> b!175859 m!204701))

(assert (=> b!175857 m!204581))

(assert (=> b!175857 m!204581))

(declare-fun m!204711 () Bool)

(assert (=> b!175857 m!204711))

(assert (=> b!175861 m!204581))

(assert (=> b!175861 m!204581))

(assert (=> b!175861 m!204595))

(declare-fun m!204713 () Bool)

(assert (=> b!175862 m!204713))

(assert (=> b!175854 m!204581))

(assert (=> b!175854 m!204581))

(assert (=> b!175854 m!204595))

(declare-fun m!204715 () Bool)

(assert (=> d!53451 m!204715))

(assert (=> d!53451 m!204505))

(assert (=> b!175856 m!204581))

(declare-fun m!204717 () Bool)

(assert (=> b!175856 m!204717))

(assert (=> b!175856 m!204581))

(assert (=> b!175856 m!204603))

(assert (=> b!175856 m!204605))

(assert (=> b!175856 m!204603))

(assert (=> b!175856 m!204609))

(assert (=> b!175856 m!204605))

(assert (=> b!175708 d!53451))

(declare-fun d!53453 () Bool)

(assert (=> d!53453 (= (apply!135 (+!247 lt!86980 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) lt!86991) (get!1994 (getValueByKey!189 (toList!1118 (+!247 lt!86980 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))) lt!86991)))))

(declare-fun bs!7251 () Bool)

(assert (= bs!7251 d!53453))

(declare-fun m!204719 () Bool)

(assert (=> bs!7251 m!204719))

(assert (=> bs!7251 m!204719))

(declare-fun m!204721 () Bool)

(assert (=> bs!7251 m!204721))

(assert (=> b!175708 d!53453))

(declare-fun d!53455 () Bool)

(assert (=> d!53455 (= (apply!135 (+!247 lt!86984 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) lt!86990) (apply!135 lt!86984 lt!86990))))

(declare-fun lt!87070 () Unit!5385)

(assert (=> d!53455 (= lt!87070 (choose!949 lt!86984 lt!86982 (minValue!3464 thiss!1248) lt!86990))))

(declare-fun e!116067 () Bool)

(assert (=> d!53455 e!116067))

(declare-fun res!83374 () Bool)

(assert (=> d!53455 (=> (not res!83374) (not e!116067))))

(assert (=> d!53455 (= res!83374 (contains!1172 lt!86984 lt!86990))))

(assert (=> d!53455 (= (addApplyDifferent!111 lt!86984 lt!86982 (minValue!3464 thiss!1248) lt!86990) lt!87070)))

(declare-fun b!175865 () Bool)

(assert (=> b!175865 (= e!116067 (not (= lt!86990 lt!86982)))))

(assert (= (and d!53455 res!83374) b!175865))

(declare-fun m!204723 () Bool)

(assert (=> d!53455 m!204723))

(assert (=> d!53455 m!204559))

(assert (=> d!53455 m!204561))

(assert (=> d!53455 m!204573))

(assert (=> d!53455 m!204559))

(declare-fun m!204725 () Bool)

(assert (=> d!53455 m!204725))

(assert (=> b!175708 d!53455))

(declare-fun d!53457 () Bool)

(assert (=> d!53457 (= (apply!135 (+!247 lt!86985 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) lt!86983) (get!1994 (getValueByKey!189 (toList!1118 (+!247 lt!86985 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))) lt!86983)))))

(declare-fun bs!7252 () Bool)

(assert (= bs!7252 d!53457))

(declare-fun m!204727 () Bool)

(assert (=> bs!7252 m!204727))

(assert (=> bs!7252 m!204727))

(declare-fun m!204729 () Bool)

(assert (=> bs!7252 m!204729))

(assert (=> b!175708 d!53457))

(declare-fun d!53459 () Bool)

(assert (=> d!53459 (= (apply!135 (+!247 lt!86980 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) lt!86991) (apply!135 lt!86980 lt!86991))))

(declare-fun lt!87071 () Unit!5385)

(assert (=> d!53459 (= lt!87071 (choose!949 lt!86980 lt!86976 (minValue!3464 thiss!1248) lt!86991))))

(declare-fun e!116068 () Bool)

(assert (=> d!53459 e!116068))

(declare-fun res!83375 () Bool)

(assert (=> d!53459 (=> (not res!83375) (not e!116068))))

(assert (=> d!53459 (= res!83375 (contains!1172 lt!86980 lt!86991))))

(assert (=> d!53459 (= (addApplyDifferent!111 lt!86980 lt!86976 (minValue!3464 thiss!1248) lt!86991) lt!87071)))

(declare-fun b!175866 () Bool)

(assert (=> b!175866 (= e!116068 (not (= lt!86991 lt!86976)))))

(assert (= (and d!53459 res!83375) b!175866))

(declare-fun m!204731 () Bool)

(assert (=> d!53459 m!204731))

(assert (=> d!53459 m!204577))

(assert (=> d!53459 m!204579))

(assert (=> d!53459 m!204567))

(assert (=> d!53459 m!204577))

(declare-fun m!204733 () Bool)

(assert (=> d!53459 m!204733))

(assert (=> b!175708 d!53459))

(declare-fun d!53461 () Bool)

(declare-fun e!116069 () Bool)

(assert (=> d!53461 e!116069))

(declare-fun res!83376 () Bool)

(assert (=> d!53461 (=> (not res!83376) (not e!116069))))

(declare-fun lt!87072 () ListLongMap!2205)

(assert (=> d!53461 (= res!83376 (contains!1172 lt!87072 (_1!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))))))

(declare-fun lt!87073 () List!2245)

(assert (=> d!53461 (= lt!87072 (ListLongMap!2206 lt!87073))))

(declare-fun lt!87075 () Unit!5385)

(declare-fun lt!87074 () Unit!5385)

(assert (=> d!53461 (= lt!87075 lt!87074)))

(assert (=> d!53461 (= (getValueByKey!189 lt!87073 (_1!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53461 (= lt!87074 (lemmaContainsTupThenGetReturnValue!102 lt!87073 (_1!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53461 (= lt!87073 (insertStrictlySorted!104 (toList!1118 lt!86985) (_1!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))))))

(assert (=> d!53461 (= (+!247 lt!86985 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))) lt!87072)))

(declare-fun b!175867 () Bool)

(declare-fun res!83377 () Bool)

(assert (=> b!175867 (=> (not res!83377) (not e!116069))))

(assert (=> b!175867 (= res!83377 (= (getValueByKey!189 (toList!1118 lt!87072) (_1!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))))))))

(declare-fun b!175868 () Bool)

(assert (=> b!175868 (= e!116069 (contains!1173 (toList!1118 lt!87072) (tuple2!3265 lt!86978 (zeroValue!3464 thiss!1248))))))

(assert (= (and d!53461 res!83376) b!175867))

(assert (= (and b!175867 res!83377) b!175868))

(declare-fun m!204735 () Bool)

(assert (=> d!53461 m!204735))

(declare-fun m!204737 () Bool)

(assert (=> d!53461 m!204737))

(declare-fun m!204739 () Bool)

(assert (=> d!53461 m!204739))

(declare-fun m!204741 () Bool)

(assert (=> d!53461 m!204741))

(declare-fun m!204743 () Bool)

(assert (=> b!175867 m!204743))

(declare-fun m!204745 () Bool)

(assert (=> b!175868 m!204745))

(assert (=> b!175708 d!53461))

(declare-fun d!53463 () Bool)

(assert (=> d!53463 (= (apply!135 (+!247 lt!86984 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) lt!86990) (get!1994 (getValueByKey!189 (toList!1118 (+!247 lt!86984 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))) lt!86990)))))

(declare-fun bs!7253 () Bool)

(assert (= bs!7253 d!53463))

(declare-fun m!204747 () Bool)

(assert (=> bs!7253 m!204747))

(assert (=> bs!7253 m!204747))

(declare-fun m!204749 () Bool)

(assert (=> bs!7253 m!204749))

(assert (=> b!175708 d!53463))

(declare-fun d!53465 () Bool)

(assert (=> d!53465 (= (apply!135 lt!86980 lt!86991) (get!1994 (getValueByKey!189 (toList!1118 lt!86980) lt!86991)))))

(declare-fun bs!7254 () Bool)

(assert (= bs!7254 d!53465))

(declare-fun m!204751 () Bool)

(assert (=> bs!7254 m!204751))

(assert (=> bs!7254 m!204751))

(declare-fun m!204753 () Bool)

(assert (=> bs!7254 m!204753))

(assert (=> b!175708 d!53465))

(declare-fun d!53467 () Bool)

(declare-fun e!116070 () Bool)

(assert (=> d!53467 e!116070))

(declare-fun res!83378 () Bool)

(assert (=> d!53467 (=> res!83378 e!116070)))

(declare-fun lt!87077 () Bool)

(assert (=> d!53467 (= res!83378 (not lt!87077))))

(declare-fun lt!87078 () Bool)

(assert (=> d!53467 (= lt!87077 lt!87078)))

(declare-fun lt!87076 () Unit!5385)

(declare-fun e!116071 () Unit!5385)

(assert (=> d!53467 (= lt!87076 e!116071)))

(declare-fun c!31504 () Bool)

(assert (=> d!53467 (= c!31504 lt!87078)))

(assert (=> d!53467 (= lt!87078 (containsKey!193 (toList!1118 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) lt!86988))))

(assert (=> d!53467 (= (contains!1172 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248))) lt!86988) lt!87077)))

(declare-fun b!175869 () Bool)

(declare-fun lt!87079 () Unit!5385)

(assert (=> b!175869 (= e!116071 lt!87079)))

(assert (=> b!175869 (= lt!87079 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) lt!86988))))

(assert (=> b!175869 (isDefined!143 (getValueByKey!189 (toList!1118 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) lt!86988))))

(declare-fun b!175870 () Bool)

(declare-fun Unit!5391 () Unit!5385)

(assert (=> b!175870 (= e!116071 Unit!5391)))

(declare-fun b!175871 () Bool)

(assert (=> b!175871 (= e!116070 (isDefined!143 (getValueByKey!189 (toList!1118 (+!247 lt!86986 (tuple2!3265 lt!86975 (zeroValue!3464 thiss!1248)))) lt!86988)))))

(assert (= (and d!53467 c!31504) b!175869))

(assert (= (and d!53467 (not c!31504)) b!175870))

(assert (= (and d!53467 (not res!83378)) b!175871))

(declare-fun m!204755 () Bool)

(assert (=> d!53467 m!204755))

(declare-fun m!204757 () Bool)

(assert (=> b!175869 m!204757))

(declare-fun m!204759 () Bool)

(assert (=> b!175869 m!204759))

(assert (=> b!175869 m!204759))

(declare-fun m!204761 () Bool)

(assert (=> b!175869 m!204761))

(assert (=> b!175871 m!204759))

(assert (=> b!175871 m!204759))

(assert (=> b!175871 m!204761))

(assert (=> b!175708 d!53467))

(declare-fun d!53469 () Bool)

(assert (=> d!53469 (= (apply!135 lt!86985 lt!86983) (get!1994 (getValueByKey!189 (toList!1118 lt!86985) lt!86983)))))

(declare-fun bs!7255 () Bool)

(assert (= bs!7255 d!53469))

(declare-fun m!204763 () Bool)

(assert (=> bs!7255 m!204763))

(assert (=> bs!7255 m!204763))

(declare-fun m!204765 () Bool)

(assert (=> bs!7255 m!204765))

(assert (=> b!175708 d!53469))

(declare-fun d!53471 () Bool)

(declare-fun e!116072 () Bool)

(assert (=> d!53471 e!116072))

(declare-fun res!83379 () Bool)

(assert (=> d!53471 (=> (not res!83379) (not e!116072))))

(declare-fun lt!87080 () ListLongMap!2205)

(assert (=> d!53471 (= res!83379 (contains!1172 lt!87080 (_1!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))))))

(declare-fun lt!87081 () List!2245)

(assert (=> d!53471 (= lt!87080 (ListLongMap!2206 lt!87081))))

(declare-fun lt!87083 () Unit!5385)

(declare-fun lt!87082 () Unit!5385)

(assert (=> d!53471 (= lt!87083 lt!87082)))

(assert (=> d!53471 (= (getValueByKey!189 lt!87081 (_1!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))))))

(assert (=> d!53471 (= lt!87082 (lemmaContainsTupThenGetReturnValue!102 lt!87081 (_1!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))))))

(assert (=> d!53471 (= lt!87081 (insertStrictlySorted!104 (toList!1118 lt!86980) (_1!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))))))

(assert (=> d!53471 (= (+!247 lt!86980 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))) lt!87080)))

(declare-fun b!175872 () Bool)

(declare-fun res!83380 () Bool)

(assert (=> b!175872 (=> (not res!83380) (not e!116072))))

(assert (=> b!175872 (= res!83380 (= (getValueByKey!189 (toList!1118 lt!87080) (_1!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))))))))

(declare-fun b!175873 () Bool)

(assert (=> b!175873 (= e!116072 (contains!1173 (toList!1118 lt!87080) (tuple2!3265 lt!86976 (minValue!3464 thiss!1248))))))

(assert (= (and d!53471 res!83379) b!175872))

(assert (= (and b!175872 res!83380) b!175873))

(declare-fun m!204767 () Bool)

(assert (=> d!53471 m!204767))

(declare-fun m!204769 () Bool)

(assert (=> d!53471 m!204769))

(declare-fun m!204771 () Bool)

(assert (=> d!53471 m!204771))

(declare-fun m!204773 () Bool)

(assert (=> d!53471 m!204773))

(declare-fun m!204775 () Bool)

(assert (=> b!175872 m!204775))

(declare-fun m!204777 () Bool)

(assert (=> b!175873 m!204777))

(assert (=> b!175708 d!53471))

(declare-fun d!53473 () Bool)

(declare-fun e!116073 () Bool)

(assert (=> d!53473 e!116073))

(declare-fun res!83381 () Bool)

(assert (=> d!53473 (=> (not res!83381) (not e!116073))))

(declare-fun lt!87084 () ListLongMap!2205)

(assert (=> d!53473 (= res!83381 (contains!1172 lt!87084 (_1!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))))))

(declare-fun lt!87085 () List!2245)

(assert (=> d!53473 (= lt!87084 (ListLongMap!2206 lt!87085))))

(declare-fun lt!87087 () Unit!5385)

(declare-fun lt!87086 () Unit!5385)

(assert (=> d!53473 (= lt!87087 lt!87086)))

(assert (=> d!53473 (= (getValueByKey!189 lt!87085 (_1!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))))))

(assert (=> d!53473 (= lt!87086 (lemmaContainsTupThenGetReturnValue!102 lt!87085 (_1!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))))))

(assert (=> d!53473 (= lt!87085 (insertStrictlySorted!104 (toList!1118 lt!86984) (_1!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) (_2!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))))))

(assert (=> d!53473 (= (+!247 lt!86984 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))) lt!87084)))

(declare-fun b!175874 () Bool)

(declare-fun res!83382 () Bool)

(assert (=> b!175874 (=> (not res!83382) (not e!116073))))

(assert (=> b!175874 (= res!83382 (= (getValueByKey!189 (toList!1118 lt!87084) (_1!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248)))) (Some!194 (_2!1642 (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))))))))

(declare-fun b!175875 () Bool)

(assert (=> b!175875 (= e!116073 (contains!1173 (toList!1118 lt!87084) (tuple2!3265 lt!86982 (minValue!3464 thiss!1248))))))

(assert (= (and d!53473 res!83381) b!175874))

(assert (= (and b!175874 res!83382) b!175875))

(declare-fun m!204779 () Bool)

(assert (=> d!53473 m!204779))

(declare-fun m!204781 () Bool)

(assert (=> d!53473 m!204781))

(declare-fun m!204783 () Bool)

(assert (=> d!53473 m!204783))

(declare-fun m!204785 () Bool)

(assert (=> d!53473 m!204785))

(declare-fun m!204787 () Bool)

(assert (=> b!175874 m!204787))

(declare-fun m!204789 () Bool)

(assert (=> b!175875 m!204789))

(assert (=> b!175708 d!53473))

(assert (=> d!53411 d!53417))

(declare-fun b!175884 () Bool)

(declare-fun e!116079 () (_ BitVec 32))

(assert (=> b!175884 (= e!116079 #b00000000000000000000000000000000)))

(declare-fun d!53475 () Bool)

(declare-fun lt!87090 () (_ BitVec 32))

(assert (=> d!53475 (and (bvsge lt!87090 #b00000000000000000000000000000000) (bvsle lt!87090 (bvsub (size!3798 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53475 (= lt!87090 e!116079)))

(declare-fun c!31509 () Bool)

(assert (=> d!53475 (= c!31509 (bvsge #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53475 (and (bvsle #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3798 (_keys!5476 thiss!1248)) (size!3798 (_keys!5476 thiss!1248))))))

(assert (=> d!53475 (= (arrayCountValidKeys!0 (_keys!5476 thiss!1248) #b00000000000000000000000000000000 (size!3798 (_keys!5476 thiss!1248))) lt!87090)))

(declare-fun b!175885 () Bool)

(declare-fun e!116078 () (_ BitVec 32))

(declare-fun call!17810 () (_ BitVec 32))

(assert (=> b!175885 (= e!116078 (bvadd #b00000000000000000000000000000001 call!17810))))

(declare-fun b!175886 () Bool)

(assert (=> b!175886 (= e!116078 call!17810)))

(declare-fun b!175887 () Bool)

(assert (=> b!175887 (= e!116079 e!116078)))

(declare-fun c!31510 () Bool)

(assert (=> b!175887 (= c!31510 (validKeyInArray!0 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17807 () Bool)

(assert (=> bm!17807 (= call!17810 (arrayCountValidKeys!0 (_keys!5476 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3798 (_keys!5476 thiss!1248))))))

(assert (= (and d!53475 c!31509) b!175884))

(assert (= (and d!53475 (not c!31509)) b!175887))

(assert (= (and b!175887 c!31510) b!175885))

(assert (= (and b!175887 (not c!31510)) b!175886))

(assert (= (or b!175885 b!175886) bm!17807))

(assert (=> b!175887 m!204581))

(assert (=> b!175887 m!204581))

(assert (=> b!175887 m!204595))

(declare-fun m!204791 () Bool)

(assert (=> bm!17807 m!204791))

(assert (=> b!175626 d!53475))

(declare-fun b!175900 () Bool)

(declare-fun e!116088 () SeekEntryResult!562)

(assert (=> b!175900 (= e!116088 (Found!562 (index!4418 lt!86915)))))

(declare-fun e!116086 () SeekEntryResult!562)

(declare-fun b!175901 () Bool)

(assert (=> b!175901 (= e!116086 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19320 lt!86915) #b00000000000000000000000000000001) (nextIndex!0 (index!4418 lt!86915) (x!19320 lt!86915) (mask!8524 thiss!1248)) (index!4418 lt!86915) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)))))

(declare-fun b!175902 () Bool)

(declare-fun c!31519 () Bool)

(declare-fun lt!87096 () (_ BitVec 64))

(assert (=> b!175902 (= c!31519 (= lt!87096 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175902 (= e!116088 e!116086)))

(declare-fun b!175903 () Bool)

(assert (=> b!175903 (= e!116086 (MissingVacant!562 (index!4418 lt!86915)))))

(declare-fun b!175904 () Bool)

(declare-fun e!116087 () SeekEntryResult!562)

(assert (=> b!175904 (= e!116087 e!116088)))

(declare-fun c!31518 () Bool)

(assert (=> b!175904 (= c!31518 (= lt!87096 key!828))))

(declare-fun d!53477 () Bool)

(declare-fun lt!87095 () SeekEntryResult!562)

(assert (=> d!53477 (and (or ((_ is Undefined!562) lt!87095) (not ((_ is Found!562) lt!87095)) (and (bvsge (index!4417 lt!87095) #b00000000000000000000000000000000) (bvslt (index!4417 lt!87095) (size!3798 (_keys!5476 thiss!1248))))) (or ((_ is Undefined!562) lt!87095) ((_ is Found!562) lt!87095) (not ((_ is MissingVacant!562) lt!87095)) (not (= (index!4419 lt!87095) (index!4418 lt!86915))) (and (bvsge (index!4419 lt!87095) #b00000000000000000000000000000000) (bvslt (index!4419 lt!87095) (size!3798 (_keys!5476 thiss!1248))))) (or ((_ is Undefined!562) lt!87095) (ite ((_ is Found!562) lt!87095) (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4417 lt!87095)) key!828) (and ((_ is MissingVacant!562) lt!87095) (= (index!4419 lt!87095) (index!4418 lt!86915)) (= (select (arr!3496 (_keys!5476 thiss!1248)) (index!4419 lt!87095)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53477 (= lt!87095 e!116087)))

(declare-fun c!31517 () Bool)

(assert (=> d!53477 (= c!31517 (bvsge (x!19320 lt!86915) #b01111111111111111111111111111110))))

(assert (=> d!53477 (= lt!87096 (select (arr!3496 (_keys!5476 thiss!1248)) (index!4418 lt!86915)))))

(assert (=> d!53477 (validMask!0 (mask!8524 thiss!1248))))

(assert (=> d!53477 (= (seekKeyOrZeroReturnVacant!0 (x!19320 lt!86915) (index!4418 lt!86915) (index!4418 lt!86915) key!828 (_keys!5476 thiss!1248) (mask!8524 thiss!1248)) lt!87095)))

(declare-fun b!175905 () Bool)

(assert (=> b!175905 (= e!116087 Undefined!562)))

(assert (= (and d!53477 c!31517) b!175905))

(assert (= (and d!53477 (not c!31517)) b!175904))

(assert (= (and b!175904 c!31518) b!175900))

(assert (= (and b!175904 (not c!31518)) b!175902))

(assert (= (and b!175902 c!31519) b!175903))

(assert (= (and b!175902 (not c!31519)) b!175901))

(declare-fun m!204793 () Bool)

(assert (=> b!175901 m!204793))

(assert (=> b!175901 m!204793))

(declare-fun m!204795 () Bool)

(assert (=> b!175901 m!204795))

(declare-fun m!204797 () Bool)

(assert (=> d!53477 m!204797))

(declare-fun m!204799 () Bool)

(assert (=> d!53477 m!204799))

(assert (=> d!53477 m!204535))

(assert (=> d!53477 m!204505))

(assert (=> b!175645 d!53477))

(declare-fun d!53479 () Bool)

(assert (=> d!53479 (= (apply!135 lt!86981 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1994 (getValueByKey!189 (toList!1118 lt!86981) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7256 () Bool)

(assert (= bs!7256 d!53479))

(declare-fun m!204801 () Bool)

(assert (=> bs!7256 m!204801))

(assert (=> bs!7256 m!204801))

(declare-fun m!204803 () Bool)

(assert (=> bs!7256 m!204803))

(assert (=> b!175701 d!53479))

(assert (=> b!175709 d!53435))

(declare-fun d!53481 () Bool)

(assert (=> d!53481 (= (apply!135 lt!86981 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1994 (getValueByKey!189 (toList!1118 lt!86981) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7257 () Bool)

(assert (= bs!7257 d!53481))

(assert (=> bs!7257 m!204671))

(assert (=> bs!7257 m!204671))

(declare-fun m!204805 () Bool)

(assert (=> bs!7257 m!204805))

(assert (=> b!175706 d!53481))

(declare-fun d!53483 () Bool)

(declare-fun res!83387 () Bool)

(declare-fun e!116093 () Bool)

(assert (=> d!53483 (=> res!83387 e!116093)))

(assert (=> d!53483 (= res!83387 (and ((_ is Cons!2241) (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) (= (_1!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) key!828)))))

(assert (=> d!53483 (= (containsKey!193 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))) key!828) e!116093)))

(declare-fun b!175910 () Bool)

(declare-fun e!116094 () Bool)

(assert (=> b!175910 (= e!116093 e!116094)))

(declare-fun res!83388 () Bool)

(assert (=> b!175910 (=> (not res!83388) (not e!116094))))

(assert (=> b!175910 (= res!83388 (and (or (not ((_ is Cons!2241) (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) (bvsle (_1!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) key!828)) ((_ is Cons!2241) (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) (bvslt (_1!1642 (h!2860 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248))))) key!828)))))

(declare-fun b!175911 () Bool)

(assert (=> b!175911 (= e!116094 (containsKey!193 (t!7073 (toList!1118 (getCurrentListMap!765 (_keys!5476 thiss!1248) (_values!3606 thiss!1248) (mask!8524 thiss!1248) (extraKeys!3360 thiss!1248) (zeroValue!3464 thiss!1248) (minValue!3464 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3623 thiss!1248)))) key!828))))

(assert (= (and d!53483 (not res!83387)) b!175910))

(assert (= (and b!175910 res!83388) b!175911))

(declare-fun m!204807 () Bool)

(assert (=> b!175911 m!204807))

(assert (=> d!53409 d!53483))

(assert (=> bm!17794 d!53451))

(declare-fun d!53485 () Bool)

(declare-fun e!116095 () Bool)

(assert (=> d!53485 e!116095))

(declare-fun res!83389 () Bool)

(assert (=> d!53485 (=> (not res!83389) (not e!116095))))

(declare-fun lt!87097 () ListLongMap!2205)

(assert (=> d!53485 (= res!83389 (contains!1172 lt!87097 (_1!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))))

(declare-fun lt!87098 () List!2245)

(assert (=> d!53485 (= lt!87097 (ListLongMap!2206 lt!87098))))

(declare-fun lt!87100 () Unit!5385)

(declare-fun lt!87099 () Unit!5385)

(assert (=> d!53485 (= lt!87100 lt!87099)))

(assert (=> d!53485 (= (getValueByKey!189 lt!87098 (_1!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))) (Some!194 (_2!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))))

(assert (=> d!53485 (= lt!87099 (lemmaContainsTupThenGetReturnValue!102 lt!87098 (_1!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))) (_2!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))))

(assert (=> d!53485 (= lt!87098 (insertStrictlySorted!104 (toList!1118 (ite c!31463 call!17792 (ite c!31465 call!17794 call!17795))) (_1!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))) (_2!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))))))

(assert (=> d!53485 (= (+!247 (ite c!31463 call!17792 (ite c!31465 call!17794 call!17795)) (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))) lt!87097)))

(declare-fun b!175912 () Bool)

(declare-fun res!83390 () Bool)

(assert (=> b!175912 (=> (not res!83390) (not e!116095))))

(assert (=> b!175912 (= res!83390 (= (getValueByKey!189 (toList!1118 lt!87097) (_1!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248))))) (Some!194 (_2!1642 (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))))

(declare-fun b!175913 () Bool)

(assert (=> b!175913 (= e!116095 (contains!1173 (toList!1118 lt!87097) (ite (or c!31463 c!31465) (tuple2!3265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3464 thiss!1248)) (tuple2!3265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3464 thiss!1248)))))))

(assert (= (and d!53485 res!83389) b!175912))

(assert (= (and b!175912 res!83390) b!175913))

(declare-fun m!204809 () Bool)

(assert (=> d!53485 m!204809))

(declare-fun m!204811 () Bool)

(assert (=> d!53485 m!204811))

(declare-fun m!204813 () Bool)

(assert (=> d!53485 m!204813))

(declare-fun m!204815 () Bool)

(assert (=> d!53485 m!204815))

(declare-fun m!204817 () Bool)

(assert (=> b!175912 m!204817))

(declare-fun m!204819 () Bool)

(assert (=> b!175913 m!204819))

(assert (=> bm!17789 d!53485))

(declare-fun d!53487 () Bool)

(declare-fun e!116096 () Bool)

(assert (=> d!53487 e!116096))

(declare-fun res!83391 () Bool)

(assert (=> d!53487 (=> res!83391 e!116096)))

(declare-fun lt!87102 () Bool)

(assert (=> d!53487 (= res!83391 (not lt!87102))))

(declare-fun lt!87103 () Bool)

(assert (=> d!53487 (= lt!87102 lt!87103)))

(declare-fun lt!87101 () Unit!5385)

(declare-fun e!116097 () Unit!5385)

(assert (=> d!53487 (= lt!87101 e!116097)))

(declare-fun c!31520 () Bool)

(assert (=> d!53487 (= c!31520 lt!87103)))

(assert (=> d!53487 (= lt!87103 (containsKey!193 (toList!1118 lt!86981) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53487 (= (contains!1172 lt!86981 #b0000000000000000000000000000000000000000000000000000000000000000) lt!87102)))

(declare-fun b!175914 () Bool)

(declare-fun lt!87104 () Unit!5385)

(assert (=> b!175914 (= e!116097 lt!87104)))

(assert (=> b!175914 (= lt!87104 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 (toList!1118 lt!86981) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175914 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175915 () Bool)

(declare-fun Unit!5392 () Unit!5385)

(assert (=> b!175915 (= e!116097 Unit!5392)))

(declare-fun b!175916 () Bool)

(assert (=> b!175916 (= e!116096 (isDefined!143 (getValueByKey!189 (toList!1118 lt!86981) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53487 c!31520) b!175914))

(assert (= (and d!53487 (not c!31520)) b!175915))

(assert (= (and d!53487 (not res!83391)) b!175916))

(declare-fun m!204821 () Bool)

(assert (=> d!53487 m!204821))

(declare-fun m!204823 () Bool)

(assert (=> b!175914 m!204823))

(assert (=> b!175914 m!204801))

(assert (=> b!175914 m!204801))

(declare-fun m!204825 () Bool)

(assert (=> b!175914 m!204825))

(assert (=> b!175916 m!204801))

(assert (=> b!175916 m!204801))

(assert (=> b!175916 m!204825))

(assert (=> bm!17791 d!53487))

(declare-fun d!53489 () Bool)

(assert (=> d!53489 (= (apply!135 lt!86981 (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000)) (get!1994 (getValueByKey!189 (toList!1118 lt!86981) (select (arr!3496 (_keys!5476 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7258 () Bool)

(assert (= bs!7258 d!53489))

(assert (=> bs!7258 m!204581))

(assert (=> bs!7258 m!204657))

(assert (=> bs!7258 m!204657))

(declare-fun m!204827 () Bool)

(assert (=> bs!7258 m!204827))

(assert (=> b!175704 d!53489))

(declare-fun d!53491 () Bool)

(declare-fun c!31523 () Bool)

(assert (=> d!53491 (= c!31523 ((_ is ValueCellFull!1713) (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!116100 () V!5131)

(assert (=> d!53491 (= (get!1993 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!116100)))

(declare-fun b!175921 () Bool)

(declare-fun get!1995 (ValueCell!1713 V!5131) V!5131)

(assert (=> b!175921 (= e!116100 (get!1995 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175922 () Bool)

(declare-fun get!1996 (ValueCell!1713 V!5131) V!5131)

(assert (=> b!175922 (= e!116100 (get!1996 (select (arr!3497 (_values!3606 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!473 (defaultEntry!3623 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53491 c!31523) b!175921))

(assert (= (and d!53491 (not c!31523)) b!175922))

(assert (=> b!175921 m!204605))

(assert (=> b!175921 m!204603))

(declare-fun m!204829 () Bool)

(assert (=> b!175921 m!204829))

(assert (=> b!175922 m!204605))

(assert (=> b!175922 m!204603))

(declare-fun m!204831 () Bool)

(assert (=> b!175922 m!204831))

(assert (=> b!175704 d!53491))

(declare-fun b!175923 () Bool)

(declare-fun e!116101 () Bool)

(assert (=> b!175923 (= e!116101 tp_is_empty!4113)))

(declare-fun condMapEmpty!7022 () Bool)

(declare-fun mapDefault!7022 () ValueCell!1713)

(assert (=> mapNonEmpty!7021 (= condMapEmpty!7022 (= mapRest!7021 ((as const (Array (_ BitVec 32) ValueCell!1713)) mapDefault!7022)))))

(declare-fun e!116102 () Bool)

(declare-fun mapRes!7022 () Bool)

(assert (=> mapNonEmpty!7021 (= tp!15715 (and e!116102 mapRes!7022))))

(declare-fun b!175924 () Bool)

(assert (=> b!175924 (= e!116102 tp_is_empty!4113)))

(declare-fun mapIsEmpty!7022 () Bool)

(assert (=> mapIsEmpty!7022 mapRes!7022))

(declare-fun mapNonEmpty!7022 () Bool)

(declare-fun tp!15716 () Bool)

(assert (=> mapNonEmpty!7022 (= mapRes!7022 (and tp!15716 e!116101))))

(declare-fun mapValue!7022 () ValueCell!1713)

(declare-fun mapKey!7022 () (_ BitVec 32))

(declare-fun mapRest!7022 () (Array (_ BitVec 32) ValueCell!1713))

(assert (=> mapNonEmpty!7022 (= mapRest!7021 (store mapRest!7022 mapKey!7022 mapValue!7022))))

(assert (= (and mapNonEmpty!7021 condMapEmpty!7022) mapIsEmpty!7022))

(assert (= (and mapNonEmpty!7021 (not condMapEmpty!7022)) mapNonEmpty!7022))

(assert (= (and mapNonEmpty!7022 ((_ is ValueCellFull!1713) mapValue!7022)) b!175923))

(assert (= (and mapNonEmpty!7021 ((_ is ValueCellFull!1713) mapDefault!7022)) b!175924))

(declare-fun m!204833 () Bool)

(assert (=> mapNonEmpty!7022 m!204833))

(declare-fun b_lambda!7053 () Bool)

(assert (= b_lambda!7051 (or (and b!175585 b_free!4341) b_lambda!7053)))

(declare-fun b_lambda!7055 () Bool)

(assert (= b_lambda!7049 (or (and b!175585 b_free!4341) b_lambda!7055)))

(check-sat (not b!175821) (not d!53469) (not bm!17804) (not b!175796) (not b!175875) (not d!53433) (not d!53463) (not d!53445) (not d!53485) (not b!175867) (not d!53457) (not d!53477) (not d!53453) (not b!175914) (not d!53473) (not b!175857) (not b!175912) (not bm!17801) (not d!53455) (not b_lambda!7047) (not b!175778) (not d!53479) (not b!175803) (not b!175784) (not b!175765) (not d!53461) (not d!53441) (not b!175913) (not b!175747) (not bm!17798) (not b!175871) (not d!53451) (not b!175901) (not b!175861) (not b_next!4341) (not b!175869) (not b!175806) (not b_lambda!7053) (not d!53471) (not mapNonEmpty!7022) (not b!175855) (not d!53467) (not b!175816) (not b!175817) (not b!175874) (not b!175887) (not d!53449) (not d!53487) (not bm!17807) (not d!53443) (not b!175827) (not b!175921) (not b!175828) (not d!53459) (not d!53429) (not b!175916) (not b!175766) (not d!53439) tp_is_empty!4113 (not b!175785) (not b!175862) (not d!53481) (not d!53489) (not b!175856) (not b!175911) (not b!175853) b_and!10849 (not b!175819) (not b!175872) (not d!53419) (not b!175859) (not d!53425) (not b!175800) (not d!53447) (not b!175868) (not b!175798) (not b!175873) (not d!53465) (not b_lambda!7055) (not b!175854) (not b!175922) (not b!175801) (not d!53437))
(check-sat b_and!10849 (not b_next!4341))
