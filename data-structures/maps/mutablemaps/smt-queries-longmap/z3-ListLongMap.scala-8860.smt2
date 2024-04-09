; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107546 () Bool)

(assert start!107546)

(declare-fun b!1273058 () Bool)

(declare-fun b_free!27705 () Bool)

(declare-fun b_next!27705 () Bool)

(assert (=> b!1273058 (= b_free!27705 (not b_next!27705))))

(declare-fun tp!97654 () Bool)

(declare-fun b_and!45771 () Bool)

(assert (=> b!1273058 (= tp!97654 b_and!45771)))

(declare-fun mapIsEmpty!51225 () Bool)

(declare-fun mapRes!51225 () Bool)

(assert (=> mapIsEmpty!51225 mapRes!51225))

(declare-fun mapNonEmpty!51225 () Bool)

(declare-fun tp!97653 () Bool)

(declare-fun e!726296 () Bool)

(assert (=> mapNonEmpty!51225 (= mapRes!51225 (and tp!97653 e!726296))))

(declare-datatypes ((V!49293 0))(
  ( (V!49294 (val!16612 Int)) )
))
(declare-datatypes ((ValueCell!15684 0))(
  ( (ValueCellFull!15684 (v!19247 V!49293)) (EmptyCell!15684) )
))
(declare-fun mapValue!51225 () ValueCell!15684)

(declare-fun mapKey!51225 () (_ BitVec 32))

(declare-fun mapRest!51225 () (Array (_ BitVec 32) ValueCell!15684))

(declare-datatypes ((array!83359 0))(
  ( (array!83360 (arr!40203 (Array (_ BitVec 32) ValueCell!15684)) (size!40745 (_ BitVec 32))) )
))
(declare-datatypes ((array!83361 0))(
  ( (array!83362 (arr!40204 (Array (_ BitVec 32) (_ BitVec 64))) (size!40746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6132 0))(
  ( (LongMapFixedSize!6133 (defaultEntry!6712 Int) (mask!34478 (_ BitVec 32)) (extraKeys!6391 (_ BitVec 32)) (zeroValue!6497 V!49293) (minValue!6497 V!49293) (_size!3121 (_ BitVec 32)) (_keys!12121 array!83361) (_values!6735 array!83359) (_vacant!3121 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6132)

(assert (=> mapNonEmpty!51225 (= (arr!40203 (_values!6735 thiss!1559)) (store mapRest!51225 mapKey!51225 mapValue!51225))))

(declare-fun b!1273054 () Bool)

(declare-fun res!846735 () Bool)

(declare-fun e!726297 () Bool)

(assert (=> b!1273054 (=> (not res!846735) (not e!726297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83361 (_ BitVec 32)) Bool)

(assert (=> b!1273054 (= res!846735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12121 thiss!1559) (mask!34478 thiss!1559)))))

(declare-fun b!1273055 () Bool)

(declare-datatypes ((List!28723 0))(
  ( (Nil!28720) (Cons!28719 (h!29928 (_ BitVec 64)) (t!42263 List!28723)) )
))
(declare-fun arrayNoDuplicates!0 (array!83361 (_ BitVec 32) List!28723) Bool)

(assert (=> b!1273055 (= e!726297 (not (arrayNoDuplicates!0 (_keys!12121 thiss!1559) #b00000000000000000000000000000000 Nil!28720)))))

(declare-fun b!1273056 () Bool)

(declare-fun res!846733 () Bool)

(assert (=> b!1273056 (=> (not res!846733) (not e!726297))))

(assert (=> b!1273056 (= res!846733 (and (= (size!40745 (_values!6735 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34478 thiss!1559))) (= (size!40746 (_keys!12121 thiss!1559)) (size!40745 (_values!6735 thiss!1559))) (bvsge (mask!34478 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6391 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6391 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun res!846732 () Bool)

(assert (=> start!107546 (=> (not res!846732) (not e!726297))))

(declare-fun valid!2257 (LongMapFixedSize!6132) Bool)

(assert (=> start!107546 (= res!846732 (valid!2257 thiss!1559))))

(assert (=> start!107546 e!726297))

(declare-fun e!726295 () Bool)

(assert (=> start!107546 e!726295))

(declare-fun b!1273053 () Bool)

(declare-fun res!846734 () Bool)

(assert (=> b!1273053 (=> (not res!846734) (not e!726297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273053 (= res!846734 (validMask!0 (mask!34478 thiss!1559)))))

(declare-fun b!1273057 () Bool)

(declare-fun e!726298 () Bool)

(declare-fun tp_is_empty!33075 () Bool)

(assert (=> b!1273057 (= e!726298 tp_is_empty!33075)))

(declare-fun e!726294 () Bool)

(declare-fun array_inv!30519 (array!83361) Bool)

(declare-fun array_inv!30520 (array!83359) Bool)

(assert (=> b!1273058 (= e!726295 (and tp!97654 tp_is_empty!33075 (array_inv!30519 (_keys!12121 thiss!1559)) (array_inv!30520 (_values!6735 thiss!1559)) e!726294))))

(declare-fun b!1273059 () Bool)

(assert (=> b!1273059 (= e!726294 (and e!726298 mapRes!51225))))

(declare-fun condMapEmpty!51225 () Bool)

(declare-fun mapDefault!51225 () ValueCell!15684)

(assert (=> b!1273059 (= condMapEmpty!51225 (= (arr!40203 (_values!6735 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15684)) mapDefault!51225)))))

(declare-fun b!1273060 () Bool)

(assert (=> b!1273060 (= e!726296 tp_is_empty!33075)))

(assert (= (and start!107546 res!846732) b!1273053))

(assert (= (and b!1273053 res!846734) b!1273056))

(assert (= (and b!1273056 res!846733) b!1273054))

(assert (= (and b!1273054 res!846735) b!1273055))

(assert (= (and b!1273059 condMapEmpty!51225) mapIsEmpty!51225))

(assert (= (and b!1273059 (not condMapEmpty!51225)) mapNonEmpty!51225))

(get-info :version)

(assert (= (and mapNonEmpty!51225 ((_ is ValueCellFull!15684) mapValue!51225)) b!1273060))

(assert (= (and b!1273059 ((_ is ValueCellFull!15684) mapDefault!51225)) b!1273057))

(assert (= b!1273058 b!1273059))

(assert (= start!107546 b!1273058))

(declare-fun m!1170425 () Bool)

(assert (=> b!1273058 m!1170425))

(declare-fun m!1170427 () Bool)

(assert (=> b!1273058 m!1170427))

(declare-fun m!1170429 () Bool)

(assert (=> b!1273053 m!1170429))

(declare-fun m!1170431 () Bool)

(assert (=> start!107546 m!1170431))

(declare-fun m!1170433 () Bool)

(assert (=> mapNonEmpty!51225 m!1170433))

(declare-fun m!1170435 () Bool)

(assert (=> b!1273054 m!1170435))

(declare-fun m!1170437 () Bool)

(assert (=> b!1273055 m!1170437))

(check-sat (not mapNonEmpty!51225) b_and!45771 (not b_next!27705) (not b!1273054) (not b!1273053) (not b!1273058) tp_is_empty!33075 (not b!1273055) (not start!107546))
(check-sat b_and!45771 (not b_next!27705))
(get-model)

(declare-fun d!139875 () Bool)

(assert (=> d!139875 (= (array_inv!30519 (_keys!12121 thiss!1559)) (bvsge (size!40746 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1273058 d!139875))

(declare-fun d!139877 () Bool)

(assert (=> d!139877 (= (array_inv!30520 (_values!6735 thiss!1559)) (bvsge (size!40745 (_values!6735 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1273058 d!139877))

(declare-fun d!139879 () Bool)

(assert (=> d!139879 (= (validMask!0 (mask!34478 thiss!1559)) (and (or (= (mask!34478 thiss!1559) #b00000000000000000000000000000111) (= (mask!34478 thiss!1559) #b00000000000000000000000000001111) (= (mask!34478 thiss!1559) #b00000000000000000000000000011111) (= (mask!34478 thiss!1559) #b00000000000000000000000000111111) (= (mask!34478 thiss!1559) #b00000000000000000000000001111111) (= (mask!34478 thiss!1559) #b00000000000000000000000011111111) (= (mask!34478 thiss!1559) #b00000000000000000000000111111111) (= (mask!34478 thiss!1559) #b00000000000000000000001111111111) (= (mask!34478 thiss!1559) #b00000000000000000000011111111111) (= (mask!34478 thiss!1559) #b00000000000000000000111111111111) (= (mask!34478 thiss!1559) #b00000000000000000001111111111111) (= (mask!34478 thiss!1559) #b00000000000000000011111111111111) (= (mask!34478 thiss!1559) #b00000000000000000111111111111111) (= (mask!34478 thiss!1559) #b00000000000000001111111111111111) (= (mask!34478 thiss!1559) #b00000000000000011111111111111111) (= (mask!34478 thiss!1559) #b00000000000000111111111111111111) (= (mask!34478 thiss!1559) #b00000000000001111111111111111111) (= (mask!34478 thiss!1559) #b00000000000011111111111111111111) (= (mask!34478 thiss!1559) #b00000000000111111111111111111111) (= (mask!34478 thiss!1559) #b00000000001111111111111111111111) (= (mask!34478 thiss!1559) #b00000000011111111111111111111111) (= (mask!34478 thiss!1559) #b00000000111111111111111111111111) (= (mask!34478 thiss!1559) #b00000001111111111111111111111111) (= (mask!34478 thiss!1559) #b00000011111111111111111111111111) (= (mask!34478 thiss!1559) #b00000111111111111111111111111111) (= (mask!34478 thiss!1559) #b00001111111111111111111111111111) (= (mask!34478 thiss!1559) #b00011111111111111111111111111111) (= (mask!34478 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34478 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1273053 d!139879))

(declare-fun d!139881 () Bool)

(declare-fun res!846756 () Bool)

(declare-fun e!726328 () Bool)

(assert (=> d!139881 (=> res!846756 e!726328)))

(assert (=> d!139881 (= res!846756 (bvsge #b00000000000000000000000000000000 (size!40746 (_keys!12121 thiss!1559))))))

(assert (=> d!139881 (= (arrayNoDuplicates!0 (_keys!12121 thiss!1559) #b00000000000000000000000000000000 Nil!28720) e!726328)))

(declare-fun b!1273095 () Bool)

(declare-fun e!726326 () Bool)

(declare-fun contains!7691 (List!28723 (_ BitVec 64)) Bool)

(assert (=> b!1273095 (= e!726326 (contains!7691 Nil!28720 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun bm!62581 () Bool)

(declare-fun call!62584 () Bool)

(declare-fun c!123693 () Bool)

(assert (=> bm!62581 (= call!62584 (arrayNoDuplicates!0 (_keys!12121 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123693 (Cons!28719 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000) Nil!28720) Nil!28720)))))

(declare-fun b!1273096 () Bool)

(declare-fun e!726327 () Bool)

(declare-fun e!726325 () Bool)

(assert (=> b!1273096 (= e!726327 e!726325)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273096 (= c!123693 (validKeyInArray!0 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1273097 () Bool)

(assert (=> b!1273097 (= e!726328 e!726327)))

(declare-fun res!846754 () Bool)

(assert (=> b!1273097 (=> (not res!846754) (not e!726327))))

(assert (=> b!1273097 (= res!846754 (not e!726326))))

(declare-fun res!846755 () Bool)

(assert (=> b!1273097 (=> (not res!846755) (not e!726326))))

(assert (=> b!1273097 (= res!846755 (validKeyInArray!0 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1273098 () Bool)

(assert (=> b!1273098 (= e!726325 call!62584)))

(declare-fun b!1273099 () Bool)

(assert (=> b!1273099 (= e!726325 call!62584)))

(assert (= (and d!139881 (not res!846756)) b!1273097))

(assert (= (and b!1273097 res!846755) b!1273095))

(assert (= (and b!1273097 res!846754) b!1273096))

(assert (= (and b!1273096 c!123693) b!1273099))

(assert (= (and b!1273096 (not c!123693)) b!1273098))

(assert (= (or b!1273099 b!1273098) bm!62581))

(declare-fun m!1170453 () Bool)

(assert (=> b!1273095 m!1170453))

(assert (=> b!1273095 m!1170453))

(declare-fun m!1170455 () Bool)

(assert (=> b!1273095 m!1170455))

(assert (=> bm!62581 m!1170453))

(declare-fun m!1170457 () Bool)

(assert (=> bm!62581 m!1170457))

(assert (=> b!1273096 m!1170453))

(assert (=> b!1273096 m!1170453))

(declare-fun m!1170459 () Bool)

(assert (=> b!1273096 m!1170459))

(assert (=> b!1273097 m!1170453))

(assert (=> b!1273097 m!1170453))

(assert (=> b!1273097 m!1170459))

(assert (=> b!1273055 d!139881))

(declare-fun d!139883 () Bool)

(declare-fun res!846763 () Bool)

(declare-fun e!726331 () Bool)

(assert (=> d!139883 (=> (not res!846763) (not e!726331))))

(declare-fun simpleValid!461 (LongMapFixedSize!6132) Bool)

(assert (=> d!139883 (= res!846763 (simpleValid!461 thiss!1559))))

(assert (=> d!139883 (= (valid!2257 thiss!1559) e!726331)))

(declare-fun b!1273106 () Bool)

(declare-fun res!846764 () Bool)

(assert (=> b!1273106 (=> (not res!846764) (not e!726331))))

(declare-fun arrayCountValidKeys!0 (array!83361 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273106 (= res!846764 (= (arrayCountValidKeys!0 (_keys!12121 thiss!1559) #b00000000000000000000000000000000 (size!40746 (_keys!12121 thiss!1559))) (_size!3121 thiss!1559)))))

(declare-fun b!1273107 () Bool)

(declare-fun res!846765 () Bool)

(assert (=> b!1273107 (=> (not res!846765) (not e!726331))))

(assert (=> b!1273107 (= res!846765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12121 thiss!1559) (mask!34478 thiss!1559)))))

(declare-fun b!1273108 () Bool)

(assert (=> b!1273108 (= e!726331 (arrayNoDuplicates!0 (_keys!12121 thiss!1559) #b00000000000000000000000000000000 Nil!28720))))

(assert (= (and d!139883 res!846763) b!1273106))

(assert (= (and b!1273106 res!846764) b!1273107))

(assert (= (and b!1273107 res!846765) b!1273108))

(declare-fun m!1170461 () Bool)

(assert (=> d!139883 m!1170461))

(declare-fun m!1170463 () Bool)

(assert (=> b!1273106 m!1170463))

(assert (=> b!1273107 m!1170435))

(assert (=> b!1273108 m!1170437))

(assert (=> start!107546 d!139883))

(declare-fun b!1273117 () Bool)

(declare-fun e!726338 () Bool)

(declare-fun e!726339 () Bool)

(assert (=> b!1273117 (= e!726338 e!726339)))

(declare-fun c!123696 () Bool)

(assert (=> b!1273117 (= c!123696 (validKeyInArray!0 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun bm!62584 () Bool)

(declare-fun call!62587 () Bool)

(assert (=> bm!62584 (= call!62587 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12121 thiss!1559) (mask!34478 thiss!1559)))))

(declare-fun b!1273119 () Bool)

(assert (=> b!1273119 (= e!726339 call!62587)))

(declare-fun b!1273120 () Bool)

(declare-fun e!726340 () Bool)

(assert (=> b!1273120 (= e!726339 e!726340)))

(declare-fun lt!575056 () (_ BitVec 64))

(assert (=> b!1273120 (= lt!575056 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42274 0))(
  ( (Unit!42275) )
))
(declare-fun lt!575058 () Unit!42274)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83361 (_ BitVec 64) (_ BitVec 32)) Unit!42274)

(assert (=> b!1273120 (= lt!575058 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12121 thiss!1559) lt!575056 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1273120 (arrayContainsKey!0 (_keys!12121 thiss!1559) lt!575056 #b00000000000000000000000000000000)))

(declare-fun lt!575057 () Unit!42274)

(assert (=> b!1273120 (= lt!575057 lt!575058)))

(declare-fun res!846770 () Bool)

(declare-datatypes ((SeekEntryResult!9992 0))(
  ( (MissingZero!9992 (index!42338 (_ BitVec 32))) (Found!9992 (index!42339 (_ BitVec 32))) (Intermediate!9992 (undefined!10804 Bool) (index!42340 (_ BitVec 32)) (x!112544 (_ BitVec 32))) (Undefined!9992) (MissingVacant!9992 (index!42341 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83361 (_ BitVec 32)) SeekEntryResult!9992)

(assert (=> b!1273120 (= res!846770 (= (seekEntryOrOpen!0 (select (arr!40204 (_keys!12121 thiss!1559)) #b00000000000000000000000000000000) (_keys!12121 thiss!1559) (mask!34478 thiss!1559)) (Found!9992 #b00000000000000000000000000000000)))))

(assert (=> b!1273120 (=> (not res!846770) (not e!726340))))

(declare-fun d!139885 () Bool)

(declare-fun res!846771 () Bool)

(assert (=> d!139885 (=> res!846771 e!726338)))

(assert (=> d!139885 (= res!846771 (bvsge #b00000000000000000000000000000000 (size!40746 (_keys!12121 thiss!1559))))))

(assert (=> d!139885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12121 thiss!1559) (mask!34478 thiss!1559)) e!726338)))

(declare-fun b!1273118 () Bool)

(assert (=> b!1273118 (= e!726340 call!62587)))

(assert (= (and d!139885 (not res!846771)) b!1273117))

(assert (= (and b!1273117 c!123696) b!1273120))

(assert (= (and b!1273117 (not c!123696)) b!1273119))

(assert (= (and b!1273120 res!846770) b!1273118))

(assert (= (or b!1273118 b!1273119) bm!62584))

(assert (=> b!1273117 m!1170453))

(assert (=> b!1273117 m!1170453))

(assert (=> b!1273117 m!1170459))

(declare-fun m!1170465 () Bool)

(assert (=> bm!62584 m!1170465))

(assert (=> b!1273120 m!1170453))

(declare-fun m!1170467 () Bool)

(assert (=> b!1273120 m!1170467))

(declare-fun m!1170469 () Bool)

(assert (=> b!1273120 m!1170469))

(assert (=> b!1273120 m!1170453))

(declare-fun m!1170471 () Bool)

(assert (=> b!1273120 m!1170471))

(assert (=> b!1273054 d!139885))

(declare-fun mapNonEmpty!51231 () Bool)

(declare-fun mapRes!51231 () Bool)

(declare-fun tp!97663 () Bool)

(declare-fun e!726345 () Bool)

(assert (=> mapNonEmpty!51231 (= mapRes!51231 (and tp!97663 e!726345))))

(declare-fun mapValue!51231 () ValueCell!15684)

(declare-fun mapRest!51231 () (Array (_ BitVec 32) ValueCell!15684))

(declare-fun mapKey!51231 () (_ BitVec 32))

(assert (=> mapNonEmpty!51231 (= mapRest!51225 (store mapRest!51231 mapKey!51231 mapValue!51231))))

(declare-fun b!1273128 () Bool)

(declare-fun e!726346 () Bool)

(assert (=> b!1273128 (= e!726346 tp_is_empty!33075)))

(declare-fun condMapEmpty!51231 () Bool)

(declare-fun mapDefault!51231 () ValueCell!15684)

(assert (=> mapNonEmpty!51225 (= condMapEmpty!51231 (= mapRest!51225 ((as const (Array (_ BitVec 32) ValueCell!15684)) mapDefault!51231)))))

(assert (=> mapNonEmpty!51225 (= tp!97653 (and e!726346 mapRes!51231))))

(declare-fun b!1273127 () Bool)

(assert (=> b!1273127 (= e!726345 tp_is_empty!33075)))

(declare-fun mapIsEmpty!51231 () Bool)

(assert (=> mapIsEmpty!51231 mapRes!51231))

(assert (= (and mapNonEmpty!51225 condMapEmpty!51231) mapIsEmpty!51231))

(assert (= (and mapNonEmpty!51225 (not condMapEmpty!51231)) mapNonEmpty!51231))

(assert (= (and mapNonEmpty!51231 ((_ is ValueCellFull!15684) mapValue!51231)) b!1273127))

(assert (= (and mapNonEmpty!51225 ((_ is ValueCellFull!15684) mapDefault!51231)) b!1273128))

(declare-fun m!1170473 () Bool)

(assert (=> mapNonEmpty!51231 m!1170473))

(check-sat tp_is_empty!33075 (not b!1273107) (not b!1273120) (not b!1273096) (not bm!62581) (not b_next!27705) (not d!139883) (not b!1273095) (not b!1273117) (not b!1273106) (not bm!62584) b_and!45771 (not mapNonEmpty!51231) (not b!1273097) (not b!1273108))
(check-sat b_and!45771 (not b_next!27705))
