; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107406 () Bool)

(assert start!107406)

(declare-fun b!1272267 () Bool)

(declare-fun b_free!27663 () Bool)

(declare-fun b_next!27663 () Bool)

(assert (=> b!1272267 (= b_free!27663 (not b_next!27663))))

(declare-fun tp!97502 () Bool)

(declare-fun b_and!45729 () Bool)

(assert (=> b!1272267 (= tp!97502 b_and!45729)))

(declare-fun b!1272264 () Bool)

(declare-fun e!725688 () Bool)

(declare-fun e!725684 () Bool)

(declare-fun mapRes!51136 () Bool)

(assert (=> b!1272264 (= e!725688 (and e!725684 mapRes!51136))))

(declare-fun condMapEmpty!51136 () Bool)

(declare-datatypes ((V!49237 0))(
  ( (V!49238 (val!16591 Int)) )
))
(declare-datatypes ((ValueCell!15663 0))(
  ( (ValueCellFull!15663 (v!19226 V!49237)) (EmptyCell!15663) )
))
(declare-datatypes ((array!83261 0))(
  ( (array!83262 (arr!40161 (Array (_ BitVec 32) ValueCell!15663)) (size!40698 (_ BitVec 32))) )
))
(declare-datatypes ((array!83263 0))(
  ( (array!83264 (arr!40162 (Array (_ BitVec 32) (_ BitVec 64))) (size!40699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6090 0))(
  ( (LongMapFixedSize!6091 (defaultEntry!6691 Int) (mask!34430 (_ BitVec 32)) (extraKeys!6370 (_ BitVec 32)) (zeroValue!6476 V!49237) (minValue!6476 V!49237) (_size!3100 (_ BitVec 32)) (_keys!12094 array!83263) (_values!6714 array!83261) (_vacant!3100 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6090)

(declare-fun mapDefault!51136 () ValueCell!15663)

(assert (=> b!1272264 (= condMapEmpty!51136 (= (arr!40161 (_values!6714 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15663)) mapDefault!51136)))))

(declare-fun b!1272265 () Bool)

(declare-fun e!725686 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272265 (= e!725686 (not (validMask!0 (mask!34430 thiss!1559))))))

(declare-fun b!1272266 () Bool)

(declare-fun tp_is_empty!33033 () Bool)

(assert (=> b!1272266 (= e!725684 tp_is_empty!33033)))

(declare-fun e!725683 () Bool)

(declare-fun array_inv!30489 (array!83263) Bool)

(declare-fun array_inv!30490 (array!83261) Bool)

(assert (=> b!1272267 (= e!725683 (and tp!97502 tp_is_empty!33033 (array_inv!30489 (_keys!12094 thiss!1559)) (array_inv!30490 (_values!6714 thiss!1559)) e!725688))))

(declare-fun mapNonEmpty!51136 () Bool)

(declare-fun tp!97501 () Bool)

(declare-fun e!725687 () Bool)

(assert (=> mapNonEmpty!51136 (= mapRes!51136 (and tp!97501 e!725687))))

(declare-fun mapKey!51136 () (_ BitVec 32))

(declare-fun mapValue!51136 () ValueCell!15663)

(declare-fun mapRest!51136 () (Array (_ BitVec 32) ValueCell!15663))

(assert (=> mapNonEmpty!51136 (= (arr!40161 (_values!6714 thiss!1559)) (store mapRest!51136 mapKey!51136 mapValue!51136))))

(declare-fun mapIsEmpty!51136 () Bool)

(assert (=> mapIsEmpty!51136 mapRes!51136))

(declare-fun b!1272268 () Bool)

(assert (=> b!1272268 (= e!725687 tp_is_empty!33033)))

(declare-fun res!846387 () Bool)

(assert (=> start!107406 (=> (not res!846387) (not e!725686))))

(declare-fun valid!2240 (LongMapFixedSize!6090) Bool)

(assert (=> start!107406 (= res!846387 (valid!2240 thiss!1559))))

(assert (=> start!107406 e!725686))

(assert (=> start!107406 e!725683))

(assert (= (and start!107406 res!846387) b!1272265))

(assert (= (and b!1272264 condMapEmpty!51136) mapIsEmpty!51136))

(assert (= (and b!1272264 (not condMapEmpty!51136)) mapNonEmpty!51136))

(get-info :version)

(assert (= (and mapNonEmpty!51136 ((_ is ValueCellFull!15663) mapValue!51136)) b!1272268))

(assert (= (and b!1272264 ((_ is ValueCellFull!15663) mapDefault!51136)) b!1272266))

(assert (= b!1272267 b!1272264))

(assert (= start!107406 b!1272267))

(declare-fun m!1170015 () Bool)

(assert (=> b!1272265 m!1170015))

(declare-fun m!1170017 () Bool)

(assert (=> b!1272267 m!1170017))

(declare-fun m!1170019 () Bool)

(assert (=> b!1272267 m!1170019))

(declare-fun m!1170021 () Bool)

(assert (=> mapNonEmpty!51136 m!1170021))

(declare-fun m!1170023 () Bool)

(assert (=> start!107406 m!1170023))

(check-sat tp_is_empty!33033 (not b_next!27663) (not b!1272265) (not mapNonEmpty!51136) b_and!45729 (not start!107406) (not b!1272267))
(check-sat b_and!45729 (not b_next!27663))
(get-model)

(declare-fun d!139763 () Bool)

(declare-fun res!846397 () Bool)

(declare-fun e!725709 () Bool)

(assert (=> d!139763 (=> (not res!846397) (not e!725709))))

(declare-fun simpleValid!454 (LongMapFixedSize!6090) Bool)

(assert (=> d!139763 (= res!846397 (simpleValid!454 thiss!1559))))

(assert (=> d!139763 (= (valid!2240 thiss!1559) e!725709)))

(declare-fun b!1272290 () Bool)

(declare-fun res!846398 () Bool)

(assert (=> b!1272290 (=> (not res!846398) (not e!725709))))

(declare-fun arrayCountValidKeys!0 (array!83263 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272290 (= res!846398 (= (arrayCountValidKeys!0 (_keys!12094 thiss!1559) #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))) (_size!3100 thiss!1559)))))

(declare-fun b!1272291 () Bool)

(declare-fun res!846399 () Bool)

(assert (=> b!1272291 (=> (not res!846399) (not e!725709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83263 (_ BitVec 32)) Bool)

(assert (=> b!1272291 (= res!846399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12094 thiss!1559) (mask!34430 thiss!1559)))))

(declare-fun b!1272292 () Bool)

(declare-datatypes ((List!28716 0))(
  ( (Nil!28713) (Cons!28712 (h!29921 (_ BitVec 64)) (t!42256 List!28716)) )
))
(declare-fun arrayNoDuplicates!0 (array!83263 (_ BitVec 32) List!28716) Bool)

(assert (=> b!1272292 (= e!725709 (arrayNoDuplicates!0 (_keys!12094 thiss!1559) #b00000000000000000000000000000000 Nil!28713))))

(assert (= (and d!139763 res!846397) b!1272290))

(assert (= (and b!1272290 res!846398) b!1272291))

(assert (= (and b!1272291 res!846399) b!1272292))

(declare-fun m!1170035 () Bool)

(assert (=> d!139763 m!1170035))

(declare-fun m!1170037 () Bool)

(assert (=> b!1272290 m!1170037))

(declare-fun m!1170039 () Bool)

(assert (=> b!1272291 m!1170039))

(declare-fun m!1170041 () Bool)

(assert (=> b!1272292 m!1170041))

(assert (=> start!107406 d!139763))

(declare-fun d!139765 () Bool)

(assert (=> d!139765 (= (validMask!0 (mask!34430 thiss!1559)) (and (or (= (mask!34430 thiss!1559) #b00000000000000000000000000000111) (= (mask!34430 thiss!1559) #b00000000000000000000000000001111) (= (mask!34430 thiss!1559) #b00000000000000000000000000011111) (= (mask!34430 thiss!1559) #b00000000000000000000000000111111) (= (mask!34430 thiss!1559) #b00000000000000000000000001111111) (= (mask!34430 thiss!1559) #b00000000000000000000000011111111) (= (mask!34430 thiss!1559) #b00000000000000000000000111111111) (= (mask!34430 thiss!1559) #b00000000000000000000001111111111) (= (mask!34430 thiss!1559) #b00000000000000000000011111111111) (= (mask!34430 thiss!1559) #b00000000000000000000111111111111) (= (mask!34430 thiss!1559) #b00000000000000000001111111111111) (= (mask!34430 thiss!1559) #b00000000000000000011111111111111) (= (mask!34430 thiss!1559) #b00000000000000000111111111111111) (= (mask!34430 thiss!1559) #b00000000000000001111111111111111) (= (mask!34430 thiss!1559) #b00000000000000011111111111111111) (= (mask!34430 thiss!1559) #b00000000000000111111111111111111) (= (mask!34430 thiss!1559) #b00000000000001111111111111111111) (= (mask!34430 thiss!1559) #b00000000000011111111111111111111) (= (mask!34430 thiss!1559) #b00000000000111111111111111111111) (= (mask!34430 thiss!1559) #b00000000001111111111111111111111) (= (mask!34430 thiss!1559) #b00000000011111111111111111111111) (= (mask!34430 thiss!1559) #b00000000111111111111111111111111) (= (mask!34430 thiss!1559) #b00000001111111111111111111111111) (= (mask!34430 thiss!1559) #b00000011111111111111111111111111) (= (mask!34430 thiss!1559) #b00000111111111111111111111111111) (= (mask!34430 thiss!1559) #b00001111111111111111111111111111) (= (mask!34430 thiss!1559) #b00011111111111111111111111111111) (= (mask!34430 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34430 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272265 d!139765))

(declare-fun d!139767 () Bool)

(assert (=> d!139767 (= (array_inv!30489 (_keys!12094 thiss!1559)) (bvsge (size!40699 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272267 d!139767))

(declare-fun d!139769 () Bool)

(assert (=> d!139769 (= (array_inv!30490 (_values!6714 thiss!1559)) (bvsge (size!40698 (_values!6714 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272267 d!139769))

(declare-fun condMapEmpty!51142 () Bool)

(declare-fun mapDefault!51142 () ValueCell!15663)

(assert (=> mapNonEmpty!51136 (= condMapEmpty!51142 (= mapRest!51136 ((as const (Array (_ BitVec 32) ValueCell!15663)) mapDefault!51142)))))

(declare-fun e!725715 () Bool)

(declare-fun mapRes!51142 () Bool)

(assert (=> mapNonEmpty!51136 (= tp!97501 (and e!725715 mapRes!51142))))

(declare-fun mapIsEmpty!51142 () Bool)

(assert (=> mapIsEmpty!51142 mapRes!51142))

(declare-fun mapNonEmpty!51142 () Bool)

(declare-fun tp!97511 () Bool)

(declare-fun e!725714 () Bool)

(assert (=> mapNonEmpty!51142 (= mapRes!51142 (and tp!97511 e!725714))))

(declare-fun mapKey!51142 () (_ BitVec 32))

(declare-fun mapRest!51142 () (Array (_ BitVec 32) ValueCell!15663))

(declare-fun mapValue!51142 () ValueCell!15663)

(assert (=> mapNonEmpty!51142 (= mapRest!51136 (store mapRest!51142 mapKey!51142 mapValue!51142))))

(declare-fun b!1272299 () Bool)

(assert (=> b!1272299 (= e!725714 tp_is_empty!33033)))

(declare-fun b!1272300 () Bool)

(assert (=> b!1272300 (= e!725715 tp_is_empty!33033)))

(assert (= (and mapNonEmpty!51136 condMapEmpty!51142) mapIsEmpty!51142))

(assert (= (and mapNonEmpty!51136 (not condMapEmpty!51142)) mapNonEmpty!51142))

(assert (= (and mapNonEmpty!51142 ((_ is ValueCellFull!15663) mapValue!51142)) b!1272299))

(assert (= (and mapNonEmpty!51136 ((_ is ValueCellFull!15663) mapDefault!51142)) b!1272300))

(declare-fun m!1170043 () Bool)

(assert (=> mapNonEmpty!51142 m!1170043))

(check-sat tp_is_empty!33033 (not b!1272290) b_and!45729 (not mapNonEmpty!51142) (not b!1272292) (not d!139763) (not b_next!27663) (not b!1272291))
(check-sat b_and!45729 (not b_next!27663))
(get-model)

(declare-fun b!1272311 () Bool)

(declare-fun e!725725 () Bool)

(declare-fun call!62536 () Bool)

(assert (=> b!1272311 (= e!725725 call!62536)))

(declare-fun b!1272312 () Bool)

(declare-fun e!725727 () Bool)

(declare-fun e!725726 () Bool)

(assert (=> b!1272312 (= e!725727 e!725726)))

(declare-fun res!846408 () Bool)

(assert (=> b!1272312 (=> (not res!846408) (not e!725726))))

(declare-fun e!725724 () Bool)

(assert (=> b!1272312 (= res!846408 (not e!725724))))

(declare-fun res!846407 () Bool)

(assert (=> b!1272312 (=> (not res!846407) (not e!725724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272312 (= res!846407 (validKeyInArray!0 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272313 () Bool)

(assert (=> b!1272313 (= e!725726 e!725725)))

(declare-fun c!123630 () Bool)

(assert (=> b!1272313 (= c!123630 (validKeyInArray!0 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun bm!62533 () Bool)

(assert (=> bm!62533 (= call!62536 (arrayNoDuplicates!0 (_keys!12094 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123630 (Cons!28712 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000) Nil!28713) Nil!28713)))))

(declare-fun d!139771 () Bool)

(declare-fun res!846406 () Bool)

(assert (=> d!139771 (=> res!846406 e!725727)))

(assert (=> d!139771 (= res!846406 (bvsge #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))))))

(assert (=> d!139771 (= (arrayNoDuplicates!0 (_keys!12094 thiss!1559) #b00000000000000000000000000000000 Nil!28713) e!725727)))

(declare-fun b!1272314 () Bool)

(assert (=> b!1272314 (= e!725725 call!62536)))

(declare-fun b!1272315 () Bool)

(declare-fun contains!7686 (List!28716 (_ BitVec 64)) Bool)

(assert (=> b!1272315 (= e!725724 (contains!7686 Nil!28713 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139771 (not res!846406)) b!1272312))

(assert (= (and b!1272312 res!846407) b!1272315))

(assert (= (and b!1272312 res!846408) b!1272313))

(assert (= (and b!1272313 c!123630) b!1272314))

(assert (= (and b!1272313 (not c!123630)) b!1272311))

(assert (= (or b!1272314 b!1272311) bm!62533))

(declare-fun m!1170045 () Bool)

(assert (=> b!1272312 m!1170045))

(assert (=> b!1272312 m!1170045))

(declare-fun m!1170047 () Bool)

(assert (=> b!1272312 m!1170047))

(assert (=> b!1272313 m!1170045))

(assert (=> b!1272313 m!1170045))

(assert (=> b!1272313 m!1170047))

(assert (=> bm!62533 m!1170045))

(declare-fun m!1170049 () Bool)

(assert (=> bm!62533 m!1170049))

(assert (=> b!1272315 m!1170045))

(assert (=> b!1272315 m!1170045))

(declare-fun m!1170051 () Bool)

(assert (=> b!1272315 m!1170051))

(assert (=> b!1272292 d!139771))

(declare-fun b!1272324 () Bool)

(declare-fun e!725736 () Bool)

(declare-fun call!62539 () Bool)

(assert (=> b!1272324 (= e!725736 call!62539)))

(declare-fun bm!62536 () Bool)

(assert (=> bm!62536 (= call!62539 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12094 thiss!1559) (mask!34430 thiss!1559)))))

(declare-fun b!1272325 () Bool)

(declare-fun e!725734 () Bool)

(assert (=> b!1272325 (= e!725734 call!62539)))

(declare-fun b!1272327 () Bool)

(assert (=> b!1272327 (= e!725734 e!725736)))

(declare-fun lt!574989 () (_ BitVec 64))

(assert (=> b!1272327 (= lt!574989 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42262 0))(
  ( (Unit!42263) )
))
(declare-fun lt!574987 () Unit!42262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83263 (_ BitVec 64) (_ BitVec 32)) Unit!42262)

(assert (=> b!1272327 (= lt!574987 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12094 thiss!1559) lt!574989 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272327 (arrayContainsKey!0 (_keys!12094 thiss!1559) lt!574989 #b00000000000000000000000000000000)))

(declare-fun lt!574988 () Unit!42262)

(assert (=> b!1272327 (= lt!574988 lt!574987)))

(declare-fun res!846414 () Bool)

(declare-datatypes ((SeekEntryResult!9986 0))(
  ( (MissingZero!9986 (index!42314 (_ BitVec 32))) (Found!9986 (index!42315 (_ BitVec 32))) (Intermediate!9986 (undefined!10798 Bool) (index!42316 (_ BitVec 32)) (x!112402 (_ BitVec 32))) (Undefined!9986) (MissingVacant!9986 (index!42317 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83263 (_ BitVec 32)) SeekEntryResult!9986)

(assert (=> b!1272327 (= res!846414 (= (seekEntryOrOpen!0 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000) (_keys!12094 thiss!1559) (mask!34430 thiss!1559)) (Found!9986 #b00000000000000000000000000000000)))))

(assert (=> b!1272327 (=> (not res!846414) (not e!725736))))

(declare-fun d!139773 () Bool)

(declare-fun res!846413 () Bool)

(declare-fun e!725735 () Bool)

(assert (=> d!139773 (=> res!846413 e!725735)))

(assert (=> d!139773 (= res!846413 (bvsge #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))))))

(assert (=> d!139773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12094 thiss!1559) (mask!34430 thiss!1559)) e!725735)))

(declare-fun b!1272326 () Bool)

(assert (=> b!1272326 (= e!725735 e!725734)))

(declare-fun c!123633 () Bool)

(assert (=> b!1272326 (= c!123633 (validKeyInArray!0 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139773 (not res!846413)) b!1272326))

(assert (= (and b!1272326 c!123633) b!1272327))

(assert (= (and b!1272326 (not c!123633)) b!1272325))

(assert (= (and b!1272327 res!846414) b!1272324))

(assert (= (or b!1272324 b!1272325) bm!62536))

(declare-fun m!1170053 () Bool)

(assert (=> bm!62536 m!1170053))

(assert (=> b!1272327 m!1170045))

(declare-fun m!1170055 () Bool)

(assert (=> b!1272327 m!1170055))

(declare-fun m!1170057 () Bool)

(assert (=> b!1272327 m!1170057))

(assert (=> b!1272327 m!1170045))

(declare-fun m!1170059 () Bool)

(assert (=> b!1272327 m!1170059))

(assert (=> b!1272326 m!1170045))

(assert (=> b!1272326 m!1170045))

(assert (=> b!1272326 m!1170047))

(assert (=> b!1272291 d!139773))

(declare-fun b!1272337 () Bool)

(declare-fun res!846424 () Bool)

(declare-fun e!725739 () Bool)

(assert (=> b!1272337 (=> (not res!846424) (not e!725739))))

(declare-fun size!40702 (LongMapFixedSize!6090) (_ BitVec 32))

(assert (=> b!1272337 (= res!846424 (bvsge (size!40702 thiss!1559) (_size!3100 thiss!1559)))))

(declare-fun b!1272338 () Bool)

(declare-fun res!846425 () Bool)

(assert (=> b!1272338 (=> (not res!846425) (not e!725739))))

(assert (=> b!1272338 (= res!846425 (= (size!40702 thiss!1559) (bvadd (_size!3100 thiss!1559) (bvsdiv (bvadd (extraKeys!6370 thiss!1559) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1272339 () Bool)

(assert (=> b!1272339 (= e!725739 (and (bvsge (extraKeys!6370 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6370 thiss!1559) #b00000000000000000000000000000011) (bvsge (_vacant!3100 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun d!139775 () Bool)

(declare-fun res!846423 () Bool)

(assert (=> d!139775 (=> (not res!846423) (not e!725739))))

(assert (=> d!139775 (= res!846423 (validMask!0 (mask!34430 thiss!1559)))))

(assert (=> d!139775 (= (simpleValid!454 thiss!1559) e!725739)))

(declare-fun b!1272336 () Bool)

(declare-fun res!846426 () Bool)

(assert (=> b!1272336 (=> (not res!846426) (not e!725739))))

(assert (=> b!1272336 (= res!846426 (and (= (size!40698 (_values!6714 thiss!1559)) (bvadd (mask!34430 thiss!1559) #b00000000000000000000000000000001)) (= (size!40699 (_keys!12094 thiss!1559)) (size!40698 (_values!6714 thiss!1559))) (bvsge (_size!3100 thiss!1559) #b00000000000000000000000000000000) (bvsle (_size!3100 thiss!1559) (bvadd (mask!34430 thiss!1559) #b00000000000000000000000000000001))))))

(assert (= (and d!139775 res!846423) b!1272336))

(assert (= (and b!1272336 res!846426) b!1272337))

(assert (= (and b!1272337 res!846424) b!1272338))

(assert (= (and b!1272338 res!846425) b!1272339))

(declare-fun m!1170061 () Bool)

(assert (=> b!1272337 m!1170061))

(assert (=> b!1272338 m!1170061))

(assert (=> d!139775 m!1170015))

(assert (=> d!139763 d!139775))

(declare-fun b!1272348 () Bool)

(declare-fun e!725745 () (_ BitVec 32))

(declare-fun call!62542 () (_ BitVec 32))

(assert (=> b!1272348 (= e!725745 call!62542)))

(declare-fun d!139777 () Bool)

(declare-fun lt!574992 () (_ BitVec 32))

(assert (=> d!139777 (and (bvsge lt!574992 #b00000000000000000000000000000000) (bvsle lt!574992 (bvsub (size!40699 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun e!725744 () (_ BitVec 32))

(assert (=> d!139777 (= lt!574992 e!725744)))

(declare-fun c!123639 () Bool)

(assert (=> d!139777 (= c!123639 (bvsge #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))))))

(assert (=> d!139777 (and (bvsle #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40699 (_keys!12094 thiss!1559)) (size!40699 (_keys!12094 thiss!1559))))))

(assert (=> d!139777 (= (arrayCountValidKeys!0 (_keys!12094 thiss!1559) #b00000000000000000000000000000000 (size!40699 (_keys!12094 thiss!1559))) lt!574992)))

(declare-fun bm!62539 () Bool)

(assert (=> bm!62539 (= call!62542 (arrayCountValidKeys!0 (_keys!12094 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40699 (_keys!12094 thiss!1559))))))

(declare-fun b!1272349 () Bool)

(assert (=> b!1272349 (= e!725744 #b00000000000000000000000000000000)))

(declare-fun b!1272350 () Bool)

(assert (=> b!1272350 (= e!725744 e!725745)))

(declare-fun c!123638 () Bool)

(assert (=> b!1272350 (= c!123638 (validKeyInArray!0 (select (arr!40162 (_keys!12094 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272351 () Bool)

(assert (=> b!1272351 (= e!725745 (bvadd #b00000000000000000000000000000001 call!62542))))

(assert (= (and d!139777 c!123639) b!1272349))

(assert (= (and d!139777 (not c!123639)) b!1272350))

(assert (= (and b!1272350 c!123638) b!1272351))

(assert (= (and b!1272350 (not c!123638)) b!1272348))

(assert (= (or b!1272351 b!1272348) bm!62539))

(declare-fun m!1170063 () Bool)

(assert (=> bm!62539 m!1170063))

(assert (=> b!1272350 m!1170045))

(assert (=> b!1272350 m!1170045))

(assert (=> b!1272350 m!1170047))

(assert (=> b!1272290 d!139777))

(declare-fun condMapEmpty!51143 () Bool)

(declare-fun mapDefault!51143 () ValueCell!15663)

(assert (=> mapNonEmpty!51142 (= condMapEmpty!51143 (= mapRest!51142 ((as const (Array (_ BitVec 32) ValueCell!15663)) mapDefault!51143)))))

(declare-fun e!725747 () Bool)

(declare-fun mapRes!51143 () Bool)

(assert (=> mapNonEmpty!51142 (= tp!97511 (and e!725747 mapRes!51143))))

(declare-fun mapIsEmpty!51143 () Bool)

(assert (=> mapIsEmpty!51143 mapRes!51143))

(declare-fun mapNonEmpty!51143 () Bool)

(declare-fun tp!97512 () Bool)

(declare-fun e!725746 () Bool)

(assert (=> mapNonEmpty!51143 (= mapRes!51143 (and tp!97512 e!725746))))

(declare-fun mapKey!51143 () (_ BitVec 32))

(declare-fun mapValue!51143 () ValueCell!15663)

(declare-fun mapRest!51143 () (Array (_ BitVec 32) ValueCell!15663))

(assert (=> mapNonEmpty!51143 (= mapRest!51142 (store mapRest!51143 mapKey!51143 mapValue!51143))))

(declare-fun b!1272352 () Bool)

(assert (=> b!1272352 (= e!725746 tp_is_empty!33033)))

(declare-fun b!1272353 () Bool)

(assert (=> b!1272353 (= e!725747 tp_is_empty!33033)))

(assert (= (and mapNonEmpty!51142 condMapEmpty!51143) mapIsEmpty!51143))

(assert (= (and mapNonEmpty!51142 (not condMapEmpty!51143)) mapNonEmpty!51143))

(assert (= (and mapNonEmpty!51143 ((_ is ValueCellFull!15663) mapValue!51143)) b!1272352))

(assert (= (and mapNonEmpty!51142 ((_ is ValueCellFull!15663) mapDefault!51143)) b!1272353))

(declare-fun m!1170065 () Bool)

(assert (=> mapNonEmpty!51143 m!1170065))

(check-sat (not b!1272337) tp_is_empty!33033 (not b!1272312) (not d!139775) (not b!1272313) (not b_next!27663) (not mapNonEmpty!51143) (not bm!62533) b_and!45729 (not b!1272326) (not b!1272338) (not b!1272315) (not bm!62536) (not bm!62539) (not b!1272350) (not b!1272327))
(check-sat b_and!45729 (not b_next!27663))
