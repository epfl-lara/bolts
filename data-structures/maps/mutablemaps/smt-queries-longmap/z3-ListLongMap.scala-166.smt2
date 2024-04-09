; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3178 () Bool)

(assert start!3178)

(declare-fun b!19372 () Bool)

(declare-fun b_free!675 () Bool)

(declare-fun b_next!675 () Bool)

(assert (=> b!19372 (= b_free!675 (not b_next!675))))

(declare-fun tp!3233 () Bool)

(declare-fun b_and!1337 () Bool)

(assert (=> b!19372 (= tp!3233 b_and!1337)))

(declare-fun e!12503 () Bool)

(declare-fun e!12497 () Bool)

(declare-fun tp_is_empty!939 () Bool)

(declare-datatypes ((V!1077 0))(
  ( (V!1078 (val!496 Int)) )
))
(declare-datatypes ((ValueCell!270 0))(
  ( (ValueCellFull!270 (v!1508 V!1077)) (EmptyCell!270) )
))
(declare-datatypes ((array!1083 0))(
  ( (array!1084 (arr!519 (Array (_ BitVec 32) ValueCell!270)) (size!611 (_ BitVec 32))) )
))
(declare-datatypes ((array!1085 0))(
  ( (array!1086 (arr!520 (Array (_ BitVec 32) (_ BitVec 64))) (size!612 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!126 0))(
  ( (LongMapFixedSize!127 (defaultEntry!1682 Int) (mask!4629 (_ BitVec 32)) (extraKeys!1592 (_ BitVec 32)) (zeroValue!1616 V!1077) (minValue!1616 V!1077) (_size!96 (_ BitVec 32)) (_keys!3109 array!1085) (_values!1678 array!1083) (_vacant!96 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!126 0))(
  ( (Cell!127 (v!1509 LongMapFixedSize!126)) )
))
(declare-datatypes ((LongMap!126 0))(
  ( (LongMap!127 (underlying!74 Cell!126)) )
))
(declare-fun thiss!938 () LongMap!126)

(declare-fun array_inv!371 (array!1085) Bool)

(declare-fun array_inv!372 (array!1083) Bool)

(assert (=> b!19372 (= e!12497 (and tp!3233 tp_is_empty!939 (array_inv!371 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) (array_inv!372 (_values!1678 (v!1509 (underlying!74 thiss!938)))) e!12503))))

(declare-fun b!19373 () Bool)

(declare-fun e!12499 () Bool)

(declare-fun e!12501 () Bool)

(assert (=> b!19373 (= e!12499 e!12501)))

(declare-fun b!19375 () Bool)

(declare-fun e!12502 () Bool)

(assert (=> b!19375 (= e!12502 tp_is_empty!939)))

(declare-fun b!19376 () Bool)

(declare-fun res!13163 () Bool)

(declare-fun e!12500 () Bool)

(assert (=> b!19376 (=> (not res!13163) (not e!12500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19376 (= res!13163 (validMask!0 (mask!4629 (v!1509 (underlying!74 thiss!938)))))))

(declare-fun b!19377 () Bool)

(assert (=> b!19377 (= e!12501 e!12497)))

(declare-fun mapIsEmpty!860 () Bool)

(declare-fun mapRes!860 () Bool)

(assert (=> mapIsEmpty!860 mapRes!860))

(declare-fun b!19378 () Bool)

(declare-fun e!12498 () Bool)

(assert (=> b!19378 (= e!12498 tp_is_empty!939)))

(declare-fun mapNonEmpty!860 () Bool)

(declare-fun tp!3232 () Bool)

(assert (=> mapNonEmpty!860 (= mapRes!860 (and tp!3232 e!12498))))

(declare-fun mapValue!860 () ValueCell!270)

(declare-fun mapRest!860 () (Array (_ BitVec 32) ValueCell!270))

(declare-fun mapKey!860 () (_ BitVec 32))

(assert (=> mapNonEmpty!860 (= (arr!519 (_values!1678 (v!1509 (underlying!74 thiss!938)))) (store mapRest!860 mapKey!860 mapValue!860))))

(declare-fun b!19379 () Bool)

(assert (=> b!19379 (= e!12503 (and e!12502 mapRes!860))))

(declare-fun condMapEmpty!860 () Bool)

(declare-fun mapDefault!860 () ValueCell!270)

(assert (=> b!19379 (= condMapEmpty!860 (= (arr!519 (_values!1678 (v!1509 (underlying!74 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!270)) mapDefault!860)))))

(declare-fun res!13164 () Bool)

(assert (=> start!3178 (=> (not res!13164) (not e!12500))))

(declare-fun valid!64 (LongMap!126) Bool)

(assert (=> start!3178 (= res!13164 (valid!64 thiss!938))))

(assert (=> start!3178 e!12500))

(assert (=> start!3178 e!12499))

(declare-fun b!19374 () Bool)

(assert (=> b!19374 (= e!12500 (and (bvsge (_size!96 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000) (bvsle (_size!96 (v!1509 (underlying!74 thiss!938))) (bvadd #b00000000000000000000000000000001 (mask!4629 (v!1509 (underlying!74 thiss!938))))) (bvslt (_vacant!96 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000)))))

(assert (= (and start!3178 res!13164) b!19376))

(assert (= (and b!19376 res!13163) b!19374))

(assert (= (and b!19379 condMapEmpty!860) mapIsEmpty!860))

(assert (= (and b!19379 (not condMapEmpty!860)) mapNonEmpty!860))

(get-info :version)

(assert (= (and mapNonEmpty!860 ((_ is ValueCellFull!270) mapValue!860)) b!19378))

(assert (= (and b!19379 ((_ is ValueCellFull!270) mapDefault!860)) b!19375))

(assert (= b!19372 b!19379))

(assert (= b!19377 b!19372))

(assert (= b!19373 b!19377))

(assert (= start!3178 b!19373))

(declare-fun m!13655 () Bool)

(assert (=> b!19372 m!13655))

(declare-fun m!13657 () Bool)

(assert (=> b!19372 m!13657))

(declare-fun m!13659 () Bool)

(assert (=> b!19376 m!13659))

(declare-fun m!13661 () Bool)

(assert (=> mapNonEmpty!860 m!13661))

(declare-fun m!13663 () Bool)

(assert (=> start!3178 m!13663))

(check-sat (not mapNonEmpty!860) (not b!19372) (not b!19376) b_and!1337 (not start!3178) (not b_next!675) tp_is_empty!939)
(check-sat b_and!1337 (not b_next!675))
(get-model)

(declare-fun d!3589 () Bool)

(declare-fun valid!65 (LongMapFixedSize!126) Bool)

(assert (=> d!3589 (= (valid!64 thiss!938) (valid!65 (v!1509 (underlying!74 thiss!938))))))

(declare-fun bs!869 () Bool)

(assert (= bs!869 d!3589))

(declare-fun m!13675 () Bool)

(assert (=> bs!869 m!13675))

(assert (=> start!3178 d!3589))

(declare-fun d!3591 () Bool)

(assert (=> d!3591 (= (validMask!0 (mask!4629 (v!1509 (underlying!74 thiss!938)))) (and (or (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000001111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000011111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000001111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000011111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000001111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000011111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000001111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000011111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000001111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000011111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000001111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000011111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000001111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000011111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000001111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000011111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000111111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00001111111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00011111111111111111111111111111) (= (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!19376 d!3591))

(declare-fun d!3593 () Bool)

(assert (=> d!3593 (= (array_inv!371 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) (bvsge (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19372 d!3593))

(declare-fun d!3595 () Bool)

(assert (=> d!3595 (= (array_inv!372 (_values!1678 (v!1509 (underlying!74 thiss!938)))) (bvsge (size!611 (_values!1678 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19372 d!3595))

(declare-fun mapNonEmpty!866 () Bool)

(declare-fun mapRes!866 () Bool)

(declare-fun tp!3242 () Bool)

(declare-fun e!12533 () Bool)

(assert (=> mapNonEmpty!866 (= mapRes!866 (and tp!3242 e!12533))))

(declare-fun mapRest!866 () (Array (_ BitVec 32) ValueCell!270))

(declare-fun mapValue!866 () ValueCell!270)

(declare-fun mapKey!866 () (_ BitVec 32))

(assert (=> mapNonEmpty!866 (= mapRest!860 (store mapRest!866 mapKey!866 mapValue!866))))

(declare-fun b!19410 () Bool)

(assert (=> b!19410 (= e!12533 tp_is_empty!939)))

(declare-fun b!19411 () Bool)

(declare-fun e!12532 () Bool)

(assert (=> b!19411 (= e!12532 tp_is_empty!939)))

(declare-fun condMapEmpty!866 () Bool)

(declare-fun mapDefault!866 () ValueCell!270)

(assert (=> mapNonEmpty!860 (= condMapEmpty!866 (= mapRest!860 ((as const (Array (_ BitVec 32) ValueCell!270)) mapDefault!866)))))

(assert (=> mapNonEmpty!860 (= tp!3232 (and e!12532 mapRes!866))))

(declare-fun mapIsEmpty!866 () Bool)

(assert (=> mapIsEmpty!866 mapRes!866))

(assert (= (and mapNonEmpty!860 condMapEmpty!866) mapIsEmpty!866))

(assert (= (and mapNonEmpty!860 (not condMapEmpty!866)) mapNonEmpty!866))

(assert (= (and mapNonEmpty!866 ((_ is ValueCellFull!270) mapValue!866)) b!19410))

(assert (= (and mapNonEmpty!860 ((_ is ValueCellFull!270) mapDefault!866)) b!19411))

(declare-fun m!13677 () Bool)

(assert (=> mapNonEmpty!866 m!13677))

(check-sat (not mapNonEmpty!866) (not d!3589) b_and!1337 (not b_next!675) tp_is_empty!939)
(check-sat b_and!1337 (not b_next!675))
(get-model)

(declare-fun d!3597 () Bool)

(declare-fun res!13177 () Bool)

(declare-fun e!12536 () Bool)

(assert (=> d!3597 (=> (not res!13177) (not e!12536))))

(declare-fun simpleValid!11 (LongMapFixedSize!126) Bool)

(assert (=> d!3597 (= res!13177 (simpleValid!11 (v!1509 (underlying!74 thiss!938))))))

(assert (=> d!3597 (= (valid!65 (v!1509 (underlying!74 thiss!938))) e!12536)))

(declare-fun b!19418 () Bool)

(declare-fun res!13178 () Bool)

(assert (=> b!19418 (=> (not res!13178) (not e!12536))))

(declare-fun arrayCountValidKeys!0 (array!1085 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19418 (= res!13178 (= (arrayCountValidKeys!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))) (_size!96 (v!1509 (underlying!74 thiss!938)))))))

(declare-fun b!19419 () Bool)

(declare-fun res!13179 () Bool)

(assert (=> b!19419 (=> (not res!13179) (not e!12536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1085 (_ BitVec 32)) Bool)

(assert (=> b!19419 (= res!13179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3109 (v!1509 (underlying!74 thiss!938))) (mask!4629 (v!1509 (underlying!74 thiss!938)))))))

(declare-fun b!19420 () Bool)

(declare-datatypes ((List!542 0))(
  ( (Nil!539) (Cons!538 (h!1104 (_ BitVec 64)) (t!3187 List!542)) )
))
(declare-fun arrayNoDuplicates!0 (array!1085 (_ BitVec 32) List!542) Bool)

(assert (=> b!19420 (= e!12536 (arrayNoDuplicates!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000 Nil!539))))

(assert (= (and d!3597 res!13177) b!19418))

(assert (= (and b!19418 res!13178) b!19419))

(assert (= (and b!19419 res!13179) b!19420))

(declare-fun m!13679 () Bool)

(assert (=> d!3597 m!13679))

(declare-fun m!13681 () Bool)

(assert (=> b!19418 m!13681))

(declare-fun m!13683 () Bool)

(assert (=> b!19419 m!13683))

(declare-fun m!13685 () Bool)

(assert (=> b!19420 m!13685))

(assert (=> d!3589 d!3597))

(declare-fun mapNonEmpty!867 () Bool)

(declare-fun mapRes!867 () Bool)

(declare-fun tp!3243 () Bool)

(declare-fun e!12538 () Bool)

(assert (=> mapNonEmpty!867 (= mapRes!867 (and tp!3243 e!12538))))

(declare-fun mapKey!867 () (_ BitVec 32))

(declare-fun mapRest!867 () (Array (_ BitVec 32) ValueCell!270))

(declare-fun mapValue!867 () ValueCell!270)

(assert (=> mapNonEmpty!867 (= mapRest!866 (store mapRest!867 mapKey!867 mapValue!867))))

(declare-fun b!19421 () Bool)

(assert (=> b!19421 (= e!12538 tp_is_empty!939)))

(declare-fun b!19422 () Bool)

(declare-fun e!12537 () Bool)

(assert (=> b!19422 (= e!12537 tp_is_empty!939)))

(declare-fun condMapEmpty!867 () Bool)

(declare-fun mapDefault!867 () ValueCell!270)

(assert (=> mapNonEmpty!866 (= condMapEmpty!867 (= mapRest!866 ((as const (Array (_ BitVec 32) ValueCell!270)) mapDefault!867)))))

(assert (=> mapNonEmpty!866 (= tp!3242 (and e!12537 mapRes!867))))

(declare-fun mapIsEmpty!867 () Bool)

(assert (=> mapIsEmpty!867 mapRes!867))

(assert (= (and mapNonEmpty!866 condMapEmpty!867) mapIsEmpty!867))

(assert (= (and mapNonEmpty!866 (not condMapEmpty!867)) mapNonEmpty!867))

(assert (= (and mapNonEmpty!867 ((_ is ValueCellFull!270) mapValue!867)) b!19421))

(assert (= (and mapNonEmpty!866 ((_ is ValueCellFull!270) mapDefault!867)) b!19422))

(declare-fun m!13687 () Bool)

(assert (=> mapNonEmpty!867 m!13687))

(check-sat (not d!3597) (not b_next!675) (not mapNonEmpty!867) (not b!19419) (not b!19418) b_and!1337 (not b!19420) tp_is_empty!939)
(check-sat b_and!1337 (not b_next!675))
(get-model)

(declare-fun b!19432 () Bool)

(declare-fun res!13189 () Bool)

(declare-fun e!12541 () Bool)

(assert (=> b!19432 (=> (not res!13189) (not e!12541))))

(declare-fun size!615 (LongMapFixedSize!126) (_ BitVec 32))

(assert (=> b!19432 (= res!13189 (bvsge (size!615 (v!1509 (underlying!74 thiss!938))) (_size!96 (v!1509 (underlying!74 thiss!938)))))))

(declare-fun b!19431 () Bool)

(declare-fun res!13191 () Bool)

(assert (=> b!19431 (=> (not res!13191) (not e!12541))))

(assert (=> b!19431 (= res!13191 (and (= (size!611 (_values!1678 (v!1509 (underlying!74 thiss!938)))) (bvadd (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000001)) (= (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) (size!611 (_values!1678 (v!1509 (underlying!74 thiss!938))))) (bvsge (_size!96 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000) (bvsle (_size!96 (v!1509 (underlying!74 thiss!938))) (bvadd (mask!4629 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000001))))))

(declare-fun d!3599 () Bool)

(declare-fun res!13190 () Bool)

(assert (=> d!3599 (=> (not res!13190) (not e!12541))))

(assert (=> d!3599 (= res!13190 (validMask!0 (mask!4629 (v!1509 (underlying!74 thiss!938)))))))

(assert (=> d!3599 (= (simpleValid!11 (v!1509 (underlying!74 thiss!938))) e!12541)))

(declare-fun b!19434 () Bool)

(assert (=> b!19434 (= e!12541 (and (bvsge (extraKeys!1592 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000) (bvsle (extraKeys!1592 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000011) (bvsge (_vacant!96 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000)))))

(declare-fun b!19433 () Bool)

(declare-fun res!13188 () Bool)

(assert (=> b!19433 (=> (not res!13188) (not e!12541))))

(assert (=> b!19433 (= res!13188 (= (size!615 (v!1509 (underlying!74 thiss!938))) (bvadd (_size!96 (v!1509 (underlying!74 thiss!938))) (bvsdiv (bvadd (extraKeys!1592 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!3599 res!13190) b!19431))

(assert (= (and b!19431 res!13191) b!19432))

(assert (= (and b!19432 res!13189) b!19433))

(assert (= (and b!19433 res!13188) b!19434))

(declare-fun m!13689 () Bool)

(assert (=> b!19432 m!13689))

(assert (=> d!3599 m!13659))

(assert (=> b!19433 m!13689))

(assert (=> d!3597 d!3599))

(declare-fun b!19443 () Bool)

(declare-fun e!12547 () (_ BitVec 32))

(declare-fun call!898 () (_ BitVec 32))

(assert (=> b!19443 (= e!12547 call!898)))

(declare-fun b!19444 () Bool)

(assert (=> b!19444 (= e!12547 (bvadd #b00000000000000000000000000000001 call!898))))

(declare-fun d!3601 () Bool)

(declare-fun lt!5417 () (_ BitVec 32))

(assert (=> d!3601 (and (bvsge lt!5417 #b00000000000000000000000000000000) (bvsle lt!5417 (bvsub (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun e!12546 () (_ BitVec 32))

(assert (=> d!3601 (= lt!5417 e!12546)))

(declare-fun c!2079 () Bool)

(assert (=> d!3601 (= c!2079 (bvsge #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))))))

(assert (=> d!3601 (and (bvsle #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))))))

(assert (=> d!3601 (= (arrayCountValidKeys!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))) lt!5417)))

(declare-fun b!19445 () Bool)

(assert (=> b!19445 (= e!12546 e!12547)))

(declare-fun c!2078 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!19445 (= c!2078 (validKeyInArray!0 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19446 () Bool)

(assert (=> b!19446 (= e!12546 #b00000000000000000000000000000000)))

(declare-fun bm!895 () Bool)

(assert (=> bm!895 (= call!898 (arrayCountValidKeys!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))))))

(assert (= (and d!3601 c!2079) b!19446))

(assert (= (and d!3601 (not c!2079)) b!19445))

(assert (= (and b!19445 c!2078) b!19444))

(assert (= (and b!19445 (not c!2078)) b!19443))

(assert (= (or b!19444 b!19443) bm!895))

(declare-fun m!13691 () Bool)

(assert (=> b!19445 m!13691))

(assert (=> b!19445 m!13691))

(declare-fun m!13693 () Bool)

(assert (=> b!19445 m!13693))

(declare-fun m!13695 () Bool)

(assert (=> bm!895 m!13695))

(assert (=> b!19418 d!3601))

(declare-fun b!19456 () Bool)

(declare-fun e!12554 () Bool)

(declare-fun e!12556 () Bool)

(assert (=> b!19456 (= e!12554 e!12556)))

(declare-fun c!2082 () Bool)

(assert (=> b!19456 (= c!2082 (validKeyInArray!0 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19457 () Bool)

(declare-fun e!12555 () Bool)

(declare-fun call!901 () Bool)

(assert (=> b!19457 (= e!12555 call!901)))

(declare-fun b!19458 () Bool)

(assert (=> b!19458 (= e!12556 call!901)))

(declare-fun bm!898 () Bool)

(assert (=> bm!898 (= call!901 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3109 (v!1509 (underlying!74 thiss!938))) (mask!4629 (v!1509 (underlying!74 thiss!938)))))))

(declare-fun b!19455 () Bool)

(assert (=> b!19455 (= e!12556 e!12555)))

(declare-fun lt!5425 () (_ BitVec 64))

(assert (=> b!19455 (= lt!5425 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!384 0))(
  ( (Unit!385) )
))
(declare-fun lt!5424 () Unit!384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1085 (_ BitVec 64) (_ BitVec 32)) Unit!384)

(assert (=> b!19455 (= lt!5424 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) lt!5425 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!19455 (arrayContainsKey!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) lt!5425 #b00000000000000000000000000000000)))

(declare-fun lt!5426 () Unit!384)

(assert (=> b!19455 (= lt!5426 lt!5424)))

(declare-fun res!13196 () Bool)

(declare-datatypes ((SeekEntryResult!51 0))(
  ( (MissingZero!51 (index!2324 (_ BitVec 32))) (Found!51 (index!2325 (_ BitVec 32))) (Intermediate!51 (undefined!863 Bool) (index!2326 (_ BitVec 32)) (x!4762 (_ BitVec 32))) (Undefined!51) (MissingVacant!51 (index!2327 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1085 (_ BitVec 32)) SeekEntryResult!51)

(assert (=> b!19455 (= res!13196 (= (seekEntryOrOpen!0 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000) (_keys!3109 (v!1509 (underlying!74 thiss!938))) (mask!4629 (v!1509 (underlying!74 thiss!938)))) (Found!51 #b00000000000000000000000000000000)))))

(assert (=> b!19455 (=> (not res!13196) (not e!12555))))

(declare-fun d!3603 () Bool)

(declare-fun res!13197 () Bool)

(assert (=> d!3603 (=> res!13197 e!12554)))

(assert (=> d!3603 (= res!13197 (bvsge #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))))))

(assert (=> d!3603 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3109 (v!1509 (underlying!74 thiss!938))) (mask!4629 (v!1509 (underlying!74 thiss!938)))) e!12554)))

(assert (= (and d!3603 (not res!13197)) b!19456))

(assert (= (and b!19456 c!2082) b!19455))

(assert (= (and b!19456 (not c!2082)) b!19458))

(assert (= (and b!19455 res!13196) b!19457))

(assert (= (or b!19457 b!19458) bm!898))

(assert (=> b!19456 m!13691))

(assert (=> b!19456 m!13691))

(assert (=> b!19456 m!13693))

(declare-fun m!13697 () Bool)

(assert (=> bm!898 m!13697))

(assert (=> b!19455 m!13691))

(declare-fun m!13699 () Bool)

(assert (=> b!19455 m!13699))

(declare-fun m!13701 () Bool)

(assert (=> b!19455 m!13701))

(assert (=> b!19455 m!13691))

(declare-fun m!13703 () Bool)

(assert (=> b!19455 m!13703))

(assert (=> b!19419 d!3603))

(declare-fun b!19469 () Bool)

(declare-fun e!12568 () Bool)

(declare-fun e!12565 () Bool)

(assert (=> b!19469 (= e!12568 e!12565)))

(declare-fun res!13204 () Bool)

(assert (=> b!19469 (=> (not res!13204) (not e!12565))))

(declare-fun e!12567 () Bool)

(assert (=> b!19469 (= res!13204 (not e!12567))))

(declare-fun res!13206 () Bool)

(assert (=> b!19469 (=> (not res!13206) (not e!12567))))

(assert (=> b!19469 (= res!13206 (validKeyInArray!0 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19470 () Bool)

(declare-fun e!12566 () Bool)

(assert (=> b!19470 (= e!12565 e!12566)))

(declare-fun c!2085 () Bool)

(assert (=> b!19470 (= c!2085 (validKeyInArray!0 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun bm!901 () Bool)

(declare-fun call!904 () Bool)

(assert (=> bm!901 (= call!904 (arrayNoDuplicates!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!2085 (Cons!538 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000) Nil!539) Nil!539)))))

(declare-fun b!19471 () Bool)

(declare-fun contains!210 (List!542 (_ BitVec 64)) Bool)

(assert (=> b!19471 (= e!12567 (contains!210 Nil!539 (select (arr!520 (_keys!3109 (v!1509 (underlying!74 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun d!3605 () Bool)

(declare-fun res!13205 () Bool)

(assert (=> d!3605 (=> res!13205 e!12568)))

(assert (=> d!3605 (= res!13205 (bvsge #b00000000000000000000000000000000 (size!612 (_keys!3109 (v!1509 (underlying!74 thiss!938))))))))

(assert (=> d!3605 (= (arrayNoDuplicates!0 (_keys!3109 (v!1509 (underlying!74 thiss!938))) #b00000000000000000000000000000000 Nil!539) e!12568)))

(declare-fun b!19472 () Bool)

(assert (=> b!19472 (= e!12566 call!904)))

(declare-fun b!19473 () Bool)

(assert (=> b!19473 (= e!12566 call!904)))

(assert (= (and d!3605 (not res!13205)) b!19469))

(assert (= (and b!19469 res!13206) b!19471))

(assert (= (and b!19469 res!13204) b!19470))

(assert (= (and b!19470 c!2085) b!19472))

(assert (= (and b!19470 (not c!2085)) b!19473))

(assert (= (or b!19472 b!19473) bm!901))

(assert (=> b!19469 m!13691))

(assert (=> b!19469 m!13691))

(assert (=> b!19469 m!13693))

(assert (=> b!19470 m!13691))

(assert (=> b!19470 m!13691))

(assert (=> b!19470 m!13693))

(assert (=> bm!901 m!13691))

(declare-fun m!13705 () Bool)

(assert (=> bm!901 m!13705))

(assert (=> b!19471 m!13691))

(assert (=> b!19471 m!13691))

(declare-fun m!13707 () Bool)

(assert (=> b!19471 m!13707))

(assert (=> b!19420 d!3605))

(declare-fun mapNonEmpty!868 () Bool)

(declare-fun mapRes!868 () Bool)

(declare-fun tp!3244 () Bool)

(declare-fun e!12570 () Bool)

(assert (=> mapNonEmpty!868 (= mapRes!868 (and tp!3244 e!12570))))

(declare-fun mapValue!868 () ValueCell!270)

(declare-fun mapKey!868 () (_ BitVec 32))

(declare-fun mapRest!868 () (Array (_ BitVec 32) ValueCell!270))

(assert (=> mapNonEmpty!868 (= mapRest!867 (store mapRest!868 mapKey!868 mapValue!868))))

(declare-fun b!19474 () Bool)

(assert (=> b!19474 (= e!12570 tp_is_empty!939)))

(declare-fun b!19475 () Bool)

(declare-fun e!12569 () Bool)

(assert (=> b!19475 (= e!12569 tp_is_empty!939)))

(declare-fun condMapEmpty!868 () Bool)

(declare-fun mapDefault!868 () ValueCell!270)

(assert (=> mapNonEmpty!867 (= condMapEmpty!868 (= mapRest!867 ((as const (Array (_ BitVec 32) ValueCell!270)) mapDefault!868)))))

(assert (=> mapNonEmpty!867 (= tp!3243 (and e!12569 mapRes!868))))

(declare-fun mapIsEmpty!868 () Bool)

(assert (=> mapIsEmpty!868 mapRes!868))

(assert (= (and mapNonEmpty!867 condMapEmpty!868) mapIsEmpty!868))

(assert (= (and mapNonEmpty!867 (not condMapEmpty!868)) mapNonEmpty!868))

(assert (= (and mapNonEmpty!868 ((_ is ValueCellFull!270) mapValue!868)) b!19474))

(assert (= (and mapNonEmpty!867 ((_ is ValueCellFull!270) mapDefault!868)) b!19475))

(declare-fun m!13709 () Bool)

(assert (=> mapNonEmpty!868 m!13709))

(check-sat (not b!19455) (not b!19470) (not b!19471) (not b!19469) (not bm!895) (not bm!898) (not b_next!675) tp_is_empty!939 (not b!19433) (not mapNonEmpty!868) (not d!3599) (not b!19445) b_and!1337 (not bm!901) (not b!19456) (not b!19432))
(check-sat b_and!1337 (not b_next!675))
