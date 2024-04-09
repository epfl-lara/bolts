; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79924 () Bool)

(assert start!79924)

(declare-fun b!939476 () Bool)

(declare-fun b_free!17793 () Bool)

(declare-fun b_next!17793 () Bool)

(assert (=> b!939476 (= b_free!17793 (not b_next!17793))))

(declare-fun tp!61844 () Bool)

(declare-fun b_and!29223 () Bool)

(assert (=> b!939476 (= tp!61844 b_and!29223)))

(declare-fun res!631970 () Bool)

(declare-fun e!527778 () Bool)

(assert (=> start!79924 (=> (not res!631970) (not e!527778))))

(declare-datatypes ((V!32033 0))(
  ( (V!32034 (val!10201 Int)) )
))
(declare-datatypes ((ValueCell!9669 0))(
  ( (ValueCellFull!9669 (v!12732 V!32033)) (EmptyCell!9669) )
))
(declare-datatypes ((array!56566 0))(
  ( (array!56567 (arr!27217 (Array (_ BitVec 32) ValueCell!9669)) (size!27677 (_ BitVec 32))) )
))
(declare-datatypes ((array!56568 0))(
  ( (array!56569 (arr!27218 (Array (_ BitVec 32) (_ BitVec 64))) (size!27678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4488 0))(
  ( (LongMapFixedSize!4489 (defaultEntry!5535 Int) (mask!27044 (_ BitVec 32)) (extraKeys!5267 (_ BitVec 32)) (zeroValue!5371 V!32033) (minValue!5371 V!32033) (_size!2299 (_ BitVec 32)) (_keys!10379 array!56568) (_values!5558 array!56566) (_vacant!2299 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4488)

(declare-fun valid!1706 (LongMapFixedSize!4488) Bool)

(assert (=> start!79924 (= res!631970 (valid!1706 thiss!1141))))

(assert (=> start!79924 e!527778))

(declare-fun e!527780 () Bool)

(assert (=> start!79924 e!527780))

(assert (=> start!79924 true))

(declare-fun b!939474 () Bool)

(declare-fun e!527779 () Bool)

(declare-fun tp_is_empty!20301 () Bool)

(assert (=> b!939474 (= e!527779 tp_is_empty!20301)))

(declare-fun b!939475 () Bool)

(declare-fun res!631969 () Bool)

(assert (=> b!939475 (=> (not res!631969) (not e!527778))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939475 (= res!631969 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32231 () Bool)

(declare-fun mapRes!32231 () Bool)

(declare-fun tp!61843 () Bool)

(declare-fun e!527783 () Bool)

(assert (=> mapNonEmpty!32231 (= mapRes!32231 (and tp!61843 e!527783))))

(declare-fun mapKey!32231 () (_ BitVec 32))

(declare-fun mapRest!32231 () (Array (_ BitVec 32) ValueCell!9669))

(declare-fun mapValue!32231 () ValueCell!9669)

(assert (=> mapNonEmpty!32231 (= (arr!27217 (_values!5558 thiss!1141)) (store mapRest!32231 mapKey!32231 mapValue!32231))))

(declare-fun e!527781 () Bool)

(declare-fun array_inv!21120 (array!56568) Bool)

(declare-fun array_inv!21121 (array!56566) Bool)

(assert (=> b!939476 (= e!527780 (and tp!61844 tp_is_empty!20301 (array_inv!21120 (_keys!10379 thiss!1141)) (array_inv!21121 (_values!5558 thiss!1141)) e!527781))))

(declare-fun mapIsEmpty!32231 () Bool)

(assert (=> mapIsEmpty!32231 mapRes!32231))

(declare-fun b!939477 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939477 (= e!527778 (not (validMask!0 (mask!27044 thiss!1141))))))

(declare-fun b!939478 () Bool)

(assert (=> b!939478 (= e!527781 (and e!527779 mapRes!32231))))

(declare-fun condMapEmpty!32231 () Bool)

(declare-fun mapDefault!32231 () ValueCell!9669)

(assert (=> b!939478 (= condMapEmpty!32231 (= (arr!27217 (_values!5558 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9669)) mapDefault!32231)))))

(declare-fun b!939479 () Bool)

(assert (=> b!939479 (= e!527783 tp_is_empty!20301)))

(assert (= (and start!79924 res!631970) b!939475))

(assert (= (and b!939475 res!631969) b!939477))

(assert (= (and b!939478 condMapEmpty!32231) mapIsEmpty!32231))

(assert (= (and b!939478 (not condMapEmpty!32231)) mapNonEmpty!32231))

(get-info :version)

(assert (= (and mapNonEmpty!32231 ((_ is ValueCellFull!9669) mapValue!32231)) b!939479))

(assert (= (and b!939478 ((_ is ValueCellFull!9669) mapDefault!32231)) b!939474))

(assert (= b!939476 b!939478))

(assert (= start!79924 b!939476))

(declare-fun m!875389 () Bool)

(assert (=> start!79924 m!875389))

(declare-fun m!875391 () Bool)

(assert (=> mapNonEmpty!32231 m!875391))

(declare-fun m!875393 () Bool)

(assert (=> b!939476 m!875393))

(declare-fun m!875395 () Bool)

(assert (=> b!939476 m!875395))

(declare-fun m!875397 () Bool)

(assert (=> b!939477 m!875397))

(check-sat tp_is_empty!20301 (not b!939477) b_and!29223 (not start!79924) (not b_next!17793) (not mapNonEmpty!32231) (not b!939476))
(check-sat b_and!29223 (not b_next!17793))
(get-model)

(declare-fun d!113875 () Bool)

(assert (=> d!113875 (= (validMask!0 (mask!27044 thiss!1141)) (and (or (= (mask!27044 thiss!1141) #b00000000000000000000000000000111) (= (mask!27044 thiss!1141) #b00000000000000000000000000001111) (= (mask!27044 thiss!1141) #b00000000000000000000000000011111) (= (mask!27044 thiss!1141) #b00000000000000000000000000111111) (= (mask!27044 thiss!1141) #b00000000000000000000000001111111) (= (mask!27044 thiss!1141) #b00000000000000000000000011111111) (= (mask!27044 thiss!1141) #b00000000000000000000000111111111) (= (mask!27044 thiss!1141) #b00000000000000000000001111111111) (= (mask!27044 thiss!1141) #b00000000000000000000011111111111) (= (mask!27044 thiss!1141) #b00000000000000000000111111111111) (= (mask!27044 thiss!1141) #b00000000000000000001111111111111) (= (mask!27044 thiss!1141) #b00000000000000000011111111111111) (= (mask!27044 thiss!1141) #b00000000000000000111111111111111) (= (mask!27044 thiss!1141) #b00000000000000001111111111111111) (= (mask!27044 thiss!1141) #b00000000000000011111111111111111) (= (mask!27044 thiss!1141) #b00000000000000111111111111111111) (= (mask!27044 thiss!1141) #b00000000000001111111111111111111) (= (mask!27044 thiss!1141) #b00000000000011111111111111111111) (= (mask!27044 thiss!1141) #b00000000000111111111111111111111) (= (mask!27044 thiss!1141) #b00000000001111111111111111111111) (= (mask!27044 thiss!1141) #b00000000011111111111111111111111) (= (mask!27044 thiss!1141) #b00000000111111111111111111111111) (= (mask!27044 thiss!1141) #b00000001111111111111111111111111) (= (mask!27044 thiss!1141) #b00000011111111111111111111111111) (= (mask!27044 thiss!1141) #b00000111111111111111111111111111) (= (mask!27044 thiss!1141) #b00001111111111111111111111111111) (= (mask!27044 thiss!1141) #b00011111111111111111111111111111) (= (mask!27044 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27044 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!939477 d!113875))

(declare-fun d!113877 () Bool)

(assert (=> d!113877 (= (array_inv!21120 (_keys!10379 thiss!1141)) (bvsge (size!27678 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939476 d!113877))

(declare-fun d!113879 () Bool)

(assert (=> d!113879 (= (array_inv!21121 (_values!5558 thiss!1141)) (bvsge (size!27677 (_values!5558 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939476 d!113879))

(declare-fun d!113881 () Bool)

(declare-fun res!631983 () Bool)

(declare-fun e!527804 () Bool)

(assert (=> d!113881 (=> (not res!631983) (not e!527804))))

(declare-fun simpleValid!335 (LongMapFixedSize!4488) Bool)

(assert (=> d!113881 (= res!631983 (simpleValid!335 thiss!1141))))

(assert (=> d!113881 (= (valid!1706 thiss!1141) e!527804)))

(declare-fun b!939504 () Bool)

(declare-fun res!631984 () Bool)

(assert (=> b!939504 (=> (not res!631984) (not e!527804))))

(declare-fun arrayCountValidKeys!0 (array!56568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!939504 (= res!631984 (= (arrayCountValidKeys!0 (_keys!10379 thiss!1141) #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))) (_size!2299 thiss!1141)))))

(declare-fun b!939505 () Bool)

(declare-fun res!631985 () Bool)

(assert (=> b!939505 (=> (not res!631985) (not e!527804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56568 (_ BitVec 32)) Bool)

(assert (=> b!939505 (= res!631985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10379 thiss!1141) (mask!27044 thiss!1141)))))

(declare-fun b!939506 () Bool)

(declare-datatypes ((List!19311 0))(
  ( (Nil!19308) (Cons!19307 (h!20453 (_ BitVec 64)) (t!27634 List!19311)) )
))
(declare-fun arrayNoDuplicates!0 (array!56568 (_ BitVec 32) List!19311) Bool)

(assert (=> b!939506 (= e!527804 (arrayNoDuplicates!0 (_keys!10379 thiss!1141) #b00000000000000000000000000000000 Nil!19308))))

(assert (= (and d!113881 res!631983) b!939504))

(assert (= (and b!939504 res!631984) b!939505))

(assert (= (and b!939505 res!631985) b!939506))

(declare-fun m!875409 () Bool)

(assert (=> d!113881 m!875409))

(declare-fun m!875411 () Bool)

(assert (=> b!939504 m!875411))

(declare-fun m!875413 () Bool)

(assert (=> b!939505 m!875413))

(declare-fun m!875415 () Bool)

(assert (=> b!939506 m!875415))

(assert (=> start!79924 d!113881))

(declare-fun mapNonEmpty!32237 () Bool)

(declare-fun mapRes!32237 () Bool)

(declare-fun tp!61853 () Bool)

(declare-fun e!527809 () Bool)

(assert (=> mapNonEmpty!32237 (= mapRes!32237 (and tp!61853 e!527809))))

(declare-fun mapValue!32237 () ValueCell!9669)

(declare-fun mapKey!32237 () (_ BitVec 32))

(declare-fun mapRest!32237 () (Array (_ BitVec 32) ValueCell!9669))

(assert (=> mapNonEmpty!32237 (= mapRest!32231 (store mapRest!32237 mapKey!32237 mapValue!32237))))

(declare-fun mapIsEmpty!32237 () Bool)

(assert (=> mapIsEmpty!32237 mapRes!32237))

(declare-fun b!939513 () Bool)

(assert (=> b!939513 (= e!527809 tp_is_empty!20301)))

(declare-fun condMapEmpty!32237 () Bool)

(declare-fun mapDefault!32237 () ValueCell!9669)

(assert (=> mapNonEmpty!32231 (= condMapEmpty!32237 (= mapRest!32231 ((as const (Array (_ BitVec 32) ValueCell!9669)) mapDefault!32237)))))

(declare-fun e!527810 () Bool)

(assert (=> mapNonEmpty!32231 (= tp!61843 (and e!527810 mapRes!32237))))

(declare-fun b!939514 () Bool)

(assert (=> b!939514 (= e!527810 tp_is_empty!20301)))

(assert (= (and mapNonEmpty!32231 condMapEmpty!32237) mapIsEmpty!32237))

(assert (= (and mapNonEmpty!32231 (not condMapEmpty!32237)) mapNonEmpty!32237))

(assert (= (and mapNonEmpty!32237 ((_ is ValueCellFull!9669) mapValue!32237)) b!939513))

(assert (= (and mapNonEmpty!32231 ((_ is ValueCellFull!9669) mapDefault!32237)) b!939514))

(declare-fun m!875417 () Bool)

(assert (=> mapNonEmpty!32237 m!875417))

(check-sat (not b!939506) (not d!113881) (not b_next!17793) (not b!939504) (not b!939505) b_and!29223 tp_is_empty!20301 (not mapNonEmpty!32237))
(check-sat b_and!29223 (not b_next!17793))
(get-model)

(declare-fun d!113883 () Bool)

(declare-fun res!631995 () Bool)

(declare-fun e!527813 () Bool)

(assert (=> d!113883 (=> (not res!631995) (not e!527813))))

(assert (=> d!113883 (= res!631995 (validMask!0 (mask!27044 thiss!1141)))))

(assert (=> d!113883 (= (simpleValid!335 thiss!1141) e!527813)))

(declare-fun b!939525 () Bool)

(declare-fun res!631996 () Bool)

(assert (=> b!939525 (=> (not res!631996) (not e!527813))))

(declare-fun size!27681 (LongMapFixedSize!4488) (_ BitVec 32))

(assert (=> b!939525 (= res!631996 (= (size!27681 thiss!1141) (bvadd (_size!2299 thiss!1141) (bvsdiv (bvadd (extraKeys!5267 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!939523 () Bool)

(declare-fun res!631997 () Bool)

(assert (=> b!939523 (=> (not res!631997) (not e!527813))))

(assert (=> b!939523 (= res!631997 (and (= (size!27677 (_values!5558 thiss!1141)) (bvadd (mask!27044 thiss!1141) #b00000000000000000000000000000001)) (= (size!27678 (_keys!10379 thiss!1141)) (size!27677 (_values!5558 thiss!1141))) (bvsge (_size!2299 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2299 thiss!1141) (bvadd (mask!27044 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!939524 () Bool)

(declare-fun res!631994 () Bool)

(assert (=> b!939524 (=> (not res!631994) (not e!527813))))

(assert (=> b!939524 (= res!631994 (bvsge (size!27681 thiss!1141) (_size!2299 thiss!1141)))))

(declare-fun b!939526 () Bool)

(assert (=> b!939526 (= e!527813 (and (bvsge (extraKeys!5267 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5267 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2299 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and d!113883 res!631995) b!939523))

(assert (= (and b!939523 res!631997) b!939524))

(assert (= (and b!939524 res!631994) b!939525))

(assert (= (and b!939525 res!631996) b!939526))

(assert (=> d!113883 m!875397))

(declare-fun m!875419 () Bool)

(assert (=> b!939525 m!875419))

(assert (=> b!939524 m!875419))

(assert (=> d!113881 d!113883))

(declare-fun bm!40896 () Bool)

(declare-fun call!40899 () (_ BitVec 32))

(assert (=> bm!40896 (= call!40899 (arrayCountValidKeys!0 (_keys!10379 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27678 (_keys!10379 thiss!1141))))))

(declare-fun b!939536 () Bool)

(declare-fun e!527819 () (_ BitVec 32))

(assert (=> b!939536 (= e!527819 call!40899)))

(declare-fun b!939537 () Bool)

(declare-fun e!527818 () (_ BitVec 32))

(assert (=> b!939537 (= e!527818 e!527819)))

(declare-fun c!97925 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939537 (= c!97925 (validKeyInArray!0 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939538 () Bool)

(assert (=> b!939538 (= e!527819 (bvadd #b00000000000000000000000000000001 call!40899))))

(declare-fun d!113885 () Bool)

(declare-fun lt!424512 () (_ BitVec 32))

(assert (=> d!113885 (and (bvsge lt!424512 #b00000000000000000000000000000000) (bvsle lt!424512 (bvsub (size!27678 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!113885 (= lt!424512 e!527818)))

(declare-fun c!97926 () Bool)

(assert (=> d!113885 (= c!97926 (bvsge #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))))))

(assert (=> d!113885 (and (bvsle #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27678 (_keys!10379 thiss!1141)) (size!27678 (_keys!10379 thiss!1141))))))

(assert (=> d!113885 (= (arrayCountValidKeys!0 (_keys!10379 thiss!1141) #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))) lt!424512)))

(declare-fun b!939535 () Bool)

(assert (=> b!939535 (= e!527818 #b00000000000000000000000000000000)))

(assert (= (and d!113885 c!97926) b!939535))

(assert (= (and d!113885 (not c!97926)) b!939537))

(assert (= (and b!939537 c!97925) b!939538))

(assert (= (and b!939537 (not c!97925)) b!939536))

(assert (= (or b!939538 b!939536) bm!40896))

(declare-fun m!875421 () Bool)

(assert (=> bm!40896 m!875421))

(declare-fun m!875423 () Bool)

(assert (=> b!939537 m!875423))

(assert (=> b!939537 m!875423))

(declare-fun m!875425 () Bool)

(assert (=> b!939537 m!875425))

(assert (=> b!939504 d!113885))

(declare-fun b!939549 () Bool)

(declare-fun e!527828 () Bool)

(declare-fun contains!5136 (List!19311 (_ BitVec 64)) Bool)

(assert (=> b!939549 (= e!527828 (contains!5136 Nil!19308 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!113887 () Bool)

(declare-fun res!632005 () Bool)

(declare-fun e!527831 () Bool)

(assert (=> d!113887 (=> res!632005 e!527831)))

(assert (=> d!113887 (= res!632005 (bvsge #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))))))

(assert (=> d!113887 (= (arrayNoDuplicates!0 (_keys!10379 thiss!1141) #b00000000000000000000000000000000 Nil!19308) e!527831)))

(declare-fun b!939550 () Bool)

(declare-fun e!527829 () Bool)

(declare-fun call!40902 () Bool)

(assert (=> b!939550 (= e!527829 call!40902)))

(declare-fun b!939551 () Bool)

(declare-fun e!527830 () Bool)

(assert (=> b!939551 (= e!527831 e!527830)))

(declare-fun res!632006 () Bool)

(assert (=> b!939551 (=> (not res!632006) (not e!527830))))

(assert (=> b!939551 (= res!632006 (not e!527828))))

(declare-fun res!632004 () Bool)

(assert (=> b!939551 (=> (not res!632004) (not e!527828))))

(assert (=> b!939551 (= res!632004 (validKeyInArray!0 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939552 () Bool)

(assert (=> b!939552 (= e!527829 call!40902)))

(declare-fun b!939553 () Bool)

(assert (=> b!939553 (= e!527830 e!527829)))

(declare-fun c!97929 () Bool)

(assert (=> b!939553 (= c!97929 (validKeyInArray!0 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!40899 () Bool)

(assert (=> bm!40899 (= call!40902 (arrayNoDuplicates!0 (_keys!10379 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97929 (Cons!19307 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000) Nil!19308) Nil!19308)))))

(assert (= (and d!113887 (not res!632005)) b!939551))

(assert (= (and b!939551 res!632004) b!939549))

(assert (= (and b!939551 res!632006) b!939553))

(assert (= (and b!939553 c!97929) b!939550))

(assert (= (and b!939553 (not c!97929)) b!939552))

(assert (= (or b!939550 b!939552) bm!40899))

(assert (=> b!939549 m!875423))

(assert (=> b!939549 m!875423))

(declare-fun m!875427 () Bool)

(assert (=> b!939549 m!875427))

(assert (=> b!939551 m!875423))

(assert (=> b!939551 m!875423))

(assert (=> b!939551 m!875425))

(assert (=> b!939553 m!875423))

(assert (=> b!939553 m!875423))

(assert (=> b!939553 m!875425))

(assert (=> bm!40899 m!875423))

(declare-fun m!875429 () Bool)

(assert (=> bm!40899 m!875429))

(assert (=> b!939506 d!113887))

(declare-fun b!939562 () Bool)

(declare-fun e!527838 () Bool)

(declare-fun call!40905 () Bool)

(assert (=> b!939562 (= e!527838 call!40905)))

(declare-fun b!939563 () Bool)

(declare-fun e!527840 () Bool)

(assert (=> b!939563 (= e!527840 call!40905)))

(declare-fun d!113889 () Bool)

(declare-fun res!632012 () Bool)

(declare-fun e!527839 () Bool)

(assert (=> d!113889 (=> res!632012 e!527839)))

(assert (=> d!113889 (= res!632012 (bvsge #b00000000000000000000000000000000 (size!27678 (_keys!10379 thiss!1141))))))

(assert (=> d!113889 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10379 thiss!1141) (mask!27044 thiss!1141)) e!527839)))

(declare-fun bm!40902 () Bool)

(assert (=> bm!40902 (= call!40905 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10379 thiss!1141) (mask!27044 thiss!1141)))))

(declare-fun b!939564 () Bool)

(assert (=> b!939564 (= e!527839 e!527838)))

(declare-fun c!97932 () Bool)

(assert (=> b!939564 (= c!97932 (validKeyInArray!0 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939565 () Bool)

(assert (=> b!939565 (= e!527838 e!527840)))

(declare-fun lt!424520 () (_ BitVec 64))

(assert (=> b!939565 (= lt!424520 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31753 0))(
  ( (Unit!31754) )
))
(declare-fun lt!424519 () Unit!31753)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56568 (_ BitVec 64) (_ BitVec 32)) Unit!31753)

(assert (=> b!939565 (= lt!424519 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10379 thiss!1141) lt!424520 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939565 (arrayContainsKey!0 (_keys!10379 thiss!1141) lt!424520 #b00000000000000000000000000000000)))

(declare-fun lt!424521 () Unit!31753)

(assert (=> b!939565 (= lt!424521 lt!424519)))

(declare-fun res!632011 () Bool)

(declare-datatypes ((SeekEntryResult!8970 0))(
  ( (MissingZero!8970 (index!38250 (_ BitVec 32))) (Found!8970 (index!38251 (_ BitVec 32))) (Intermediate!8970 (undefined!9782 Bool) (index!38252 (_ BitVec 32)) (x!80522 (_ BitVec 32))) (Undefined!8970) (MissingVacant!8970 (index!38253 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56568 (_ BitVec 32)) SeekEntryResult!8970)

(assert (=> b!939565 (= res!632011 (= (seekEntryOrOpen!0 (select (arr!27218 (_keys!10379 thiss!1141)) #b00000000000000000000000000000000) (_keys!10379 thiss!1141) (mask!27044 thiss!1141)) (Found!8970 #b00000000000000000000000000000000)))))

(assert (=> b!939565 (=> (not res!632011) (not e!527840))))

(assert (= (and d!113889 (not res!632012)) b!939564))

(assert (= (and b!939564 c!97932) b!939565))

(assert (= (and b!939564 (not c!97932)) b!939562))

(assert (= (and b!939565 res!632011) b!939563))

(assert (= (or b!939563 b!939562) bm!40902))

(declare-fun m!875431 () Bool)

(assert (=> bm!40902 m!875431))

(assert (=> b!939564 m!875423))

(assert (=> b!939564 m!875423))

(assert (=> b!939564 m!875425))

(assert (=> b!939565 m!875423))

(declare-fun m!875433 () Bool)

(assert (=> b!939565 m!875433))

(declare-fun m!875435 () Bool)

(assert (=> b!939565 m!875435))

(assert (=> b!939565 m!875423))

(declare-fun m!875437 () Bool)

(assert (=> b!939565 m!875437))

(assert (=> b!939505 d!113889))

(declare-fun mapNonEmpty!32238 () Bool)

(declare-fun mapRes!32238 () Bool)

(declare-fun tp!61854 () Bool)

(declare-fun e!527841 () Bool)

(assert (=> mapNonEmpty!32238 (= mapRes!32238 (and tp!61854 e!527841))))

(declare-fun mapValue!32238 () ValueCell!9669)

(declare-fun mapRest!32238 () (Array (_ BitVec 32) ValueCell!9669))

(declare-fun mapKey!32238 () (_ BitVec 32))

(assert (=> mapNonEmpty!32238 (= mapRest!32237 (store mapRest!32238 mapKey!32238 mapValue!32238))))

(declare-fun mapIsEmpty!32238 () Bool)

(assert (=> mapIsEmpty!32238 mapRes!32238))

(declare-fun b!939566 () Bool)

(assert (=> b!939566 (= e!527841 tp_is_empty!20301)))

(declare-fun condMapEmpty!32238 () Bool)

(declare-fun mapDefault!32238 () ValueCell!9669)

(assert (=> mapNonEmpty!32237 (= condMapEmpty!32238 (= mapRest!32237 ((as const (Array (_ BitVec 32) ValueCell!9669)) mapDefault!32238)))))

(declare-fun e!527842 () Bool)

(assert (=> mapNonEmpty!32237 (= tp!61853 (and e!527842 mapRes!32238))))

(declare-fun b!939567 () Bool)

(assert (=> b!939567 (= e!527842 tp_is_empty!20301)))

(assert (= (and mapNonEmpty!32237 condMapEmpty!32238) mapIsEmpty!32238))

(assert (= (and mapNonEmpty!32237 (not condMapEmpty!32238)) mapNonEmpty!32238))

(assert (= (and mapNonEmpty!32238 ((_ is ValueCellFull!9669) mapValue!32238)) b!939566))

(assert (= (and mapNonEmpty!32237 ((_ is ValueCellFull!9669) mapDefault!32238)) b!939567))

(declare-fun m!875439 () Bool)

(assert (=> mapNonEmpty!32238 m!875439))

(check-sat (not b!939565) tp_is_empty!20301 (not b_next!17793) (not d!113883) (not b!939525) (not bm!40902) (not mapNonEmpty!32238) (not b!939564) (not b!939553) (not bm!40899) (not bm!40896) (not b!939524) (not b!939551) (not b!939549) (not b!939537) b_and!29223)
(check-sat b_and!29223 (not b_next!17793))
