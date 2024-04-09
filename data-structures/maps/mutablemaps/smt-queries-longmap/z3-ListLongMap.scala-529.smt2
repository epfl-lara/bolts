; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13216 () Bool)

(assert start!13216)

(declare-fun b!116418 () Bool)

(declare-fun b_free!2741 () Bool)

(declare-fun b_next!2741 () Bool)

(assert (=> b!116418 (= b_free!2741 (not b_next!2741))))

(declare-fun tp!10594 () Bool)

(declare-fun b_and!7261 () Bool)

(assert (=> b!116418 (= tp!10594 b_and!7261)))

(declare-fun b!116416 () Bool)

(declare-fun b_free!2743 () Bool)

(declare-fun b_next!2743 () Bool)

(assert (=> b!116416 (= b_free!2743 (not b_next!2743))))

(declare-fun tp!10593 () Bool)

(declare-fun b_and!7263 () Bool)

(assert (=> b!116416 (= tp!10593 b_and!7263)))

(declare-fun mapNonEmpty!4299 () Bool)

(declare-fun mapRes!4299 () Bool)

(declare-fun tp!10591 () Bool)

(declare-fun e!76015 () Bool)

(assert (=> mapNonEmpty!4299 (= mapRes!4299 (and tp!10591 e!76015))))

(declare-datatypes ((V!3363 0))(
  ( (V!3364 (val!1438 Int)) )
))
(declare-datatypes ((array!4578 0))(
  ( (array!4579 (arr!2170 (Array (_ BitVec 32) (_ BitVec 64))) (size!2431 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1050 0))(
  ( (ValueCellFull!1050 (v!3042 V!3363)) (EmptyCell!1050) )
))
(declare-datatypes ((array!4580 0))(
  ( (array!4581 (arr!2171 (Array (_ BitVec 32) ValueCell!1050)) (size!2432 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1008 0))(
  ( (LongMapFixedSize!1009 (defaultEntry!2715 Int) (mask!6931 (_ BitVec 32)) (extraKeys!2504 (_ BitVec 32)) (zeroValue!2582 V!3363) (minValue!2582 V!3363) (_size!553 (_ BitVec 32)) (_keys!4438 array!4578) (_values!2698 array!4580) (_vacant!553 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!802 0))(
  ( (Cell!803 (v!3043 LongMapFixedSize!1008)) )
))
(declare-datatypes ((LongMap!802 0))(
  ( (LongMap!803 (underlying!412 Cell!802)) )
))
(declare-fun thiss!992 () LongMap!802)

(declare-fun mapValue!4300 () ValueCell!1050)

(declare-fun mapRest!4300 () (Array (_ BitVec 32) ValueCell!1050))

(declare-fun mapKey!4299 () (_ BitVec 32))

(assert (=> mapNonEmpty!4299 (= (arr!2171 (_values!2698 (v!3043 (underlying!412 thiss!992)))) (store mapRest!4300 mapKey!4299 mapValue!4300))))

(declare-fun b!116403 () Bool)

(declare-fun e!76017 () Bool)

(declare-fun e!76014 () Bool)

(assert (=> b!116403 (= e!76017 e!76014)))

(declare-fun mapIsEmpty!4299 () Bool)

(declare-fun mapRes!4300 () Bool)

(assert (=> mapIsEmpty!4299 mapRes!4300))

(declare-fun mapIsEmpty!4300 () Bool)

(assert (=> mapIsEmpty!4300 mapRes!4299))

(declare-fun b!116405 () Bool)

(declare-fun res!57040 () Bool)

(declare-fun e!76006 () Bool)

(assert (=> b!116405 (=> (not res!57040) (not e!76006))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!116405 (= res!57040 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun mapNonEmpty!4300 () Bool)

(declare-fun tp!10592 () Bool)

(declare-fun e!76013 () Bool)

(assert (=> mapNonEmpty!4300 (= mapRes!4300 (and tp!10592 e!76013))))

(declare-fun mapKey!4300 () (_ BitVec 32))

(declare-fun mapValue!4299 () ValueCell!1050)

(declare-fun newMap!16 () LongMapFixedSize!1008)

(declare-fun mapRest!4299 () (Array (_ BitVec 32) ValueCell!1050))

(assert (=> mapNonEmpty!4300 (= (arr!2171 (_values!2698 newMap!16)) (store mapRest!4299 mapKey!4300 mapValue!4299))))

(declare-fun b!116406 () Bool)

(declare-fun e!76009 () Bool)

(declare-fun tp_is_empty!2787 () Bool)

(assert (=> b!116406 (= e!76009 tp_is_empty!2787)))

(declare-fun b!116407 () Bool)

(declare-fun res!57037 () Bool)

(assert (=> b!116407 (=> (not res!57037) (not e!76006))))

(assert (=> b!116407 (= res!57037 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6931 newMap!16)) (_size!553 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun b!116408 () Bool)

(declare-fun res!57042 () Bool)

(assert (=> b!116408 (=> (not res!57042) (not e!76006))))

(assert (=> b!116408 (= res!57042 (and (or (= (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun b!116409 () Bool)

(declare-fun e!76010 () Bool)

(assert (=> b!116409 (= e!76014 e!76010)))

(declare-fun b!116410 () Bool)

(declare-fun e!76016 () Bool)

(assert (=> b!116410 (= e!76006 e!76016)))

(declare-fun res!57035 () Bool)

(assert (=> b!116410 (=> (not res!57035) (not e!76016))))

(declare-datatypes ((tuple2!2520 0))(
  ( (tuple2!2521 (_1!1270 Bool) (_2!1270 LongMapFixedSize!1008)) )
))
(declare-fun lt!60399 () tuple2!2520)

(assert (=> b!116410 (= res!57035 (_1!1270 lt!60399))))

(declare-fun repackFrom!14 (LongMap!802 LongMapFixedSize!1008 (_ BitVec 32)) tuple2!2520)

(assert (=> b!116410 (= lt!60399 (repackFrom!14 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!116411 () Bool)

(declare-fun e!76005 () Bool)

(assert (=> b!116411 (= e!76005 (and e!76009 mapRes!4300))))

(declare-fun condMapEmpty!4300 () Bool)

(declare-fun mapDefault!4300 () ValueCell!1050)

(assert (=> b!116411 (= condMapEmpty!4300 (= (arr!2171 (_values!2698 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1050)) mapDefault!4300)))))

(declare-fun b!116412 () Bool)

(declare-fun e!76011 () Bool)

(declare-fun e!76008 () Bool)

(assert (=> b!116412 (= e!76011 (and e!76008 mapRes!4299))))

(declare-fun condMapEmpty!4299 () Bool)

(declare-fun mapDefault!4299 () ValueCell!1050)

(assert (=> b!116412 (= condMapEmpty!4299 (= (arr!2171 (_values!2698 (v!3043 (underlying!412 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1050)) mapDefault!4299)))))

(declare-fun b!116413 () Bool)

(declare-fun res!57039 () Bool)

(assert (=> b!116413 (=> (not res!57039) (not e!76016))))

(declare-fun valid!471 (LongMapFixedSize!1008) Bool)

(assert (=> b!116413 (= res!57039 (valid!471 (_2!1270 lt!60399)))))

(declare-fun b!116414 () Bool)

(assert (=> b!116414 (= e!76013 tp_is_empty!2787)))

(declare-fun b!116415 () Bool)

(assert (=> b!116415 (= e!76016 (not (valid!471 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun e!76004 () Bool)

(declare-fun array_inv!1317 (array!4578) Bool)

(declare-fun array_inv!1318 (array!4580) Bool)

(assert (=> b!116416 (= e!76004 (and tp!10593 tp_is_empty!2787 (array_inv!1317 (_keys!4438 newMap!16)) (array_inv!1318 (_values!2698 newMap!16)) e!76005))))

(declare-fun b!116404 () Bool)

(assert (=> b!116404 (= e!76008 tp_is_empty!2787)))

(declare-fun res!57041 () Bool)

(assert (=> start!13216 (=> (not res!57041) (not e!76006))))

(declare-fun valid!472 (LongMap!802) Bool)

(assert (=> start!13216 (= res!57041 (valid!472 thiss!992))))

(assert (=> start!13216 e!76006))

(assert (=> start!13216 e!76017))

(assert (=> start!13216 true))

(assert (=> start!13216 e!76004))

(declare-fun b!116417 () Bool)

(declare-fun res!57036 () Bool)

(assert (=> b!116417 (=> (not res!57036) (not e!76006))))

(assert (=> b!116417 (= res!57036 (valid!471 newMap!16))))

(assert (=> b!116418 (= e!76010 (and tp!10594 tp_is_empty!2787 (array_inv!1317 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (array_inv!1318 (_values!2698 (v!3043 (underlying!412 thiss!992)))) e!76011))))

(declare-fun b!116419 () Bool)

(assert (=> b!116419 (= e!76015 tp_is_empty!2787)))

(declare-fun b!116420 () Bool)

(declare-fun res!57038 () Bool)

(assert (=> b!116420 (=> (not res!57038) (not e!76006))))

(declare-datatypes ((tuple2!2522 0))(
  ( (tuple2!2523 (_1!1271 (_ BitVec 64)) (_2!1271 V!3363)) )
))
(declare-datatypes ((List!1697 0))(
  ( (Nil!1694) (Cons!1693 (h!2293 tuple2!2522) (t!5971 List!1697)) )
))
(declare-datatypes ((ListLongMap!1653 0))(
  ( (ListLongMap!1654 (toList!842 List!1697)) )
))
(declare-fun getCurrentListMap!515 (array!4578 array!4580 (_ BitVec 32) (_ BitVec 32) V!3363 V!3363 (_ BitVec 32) Int) ListLongMap!1653)

(declare-fun map!1350 (LongMapFixedSize!1008) ListLongMap!1653)

(assert (=> b!116420 (= res!57038 (= (getCurrentListMap!515 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))) (map!1350 newMap!16)))))

(assert (= (and start!13216 res!57041) b!116405))

(assert (= (and b!116405 res!57040) b!116417))

(assert (= (and b!116417 res!57036) b!116407))

(assert (= (and b!116407 res!57037) b!116420))

(assert (= (and b!116420 res!57038) b!116408))

(assert (= (and b!116408 res!57042) b!116410))

(assert (= (and b!116410 res!57035) b!116413))

(assert (= (and b!116413 res!57039) b!116415))

(assert (= (and b!116412 condMapEmpty!4299) mapIsEmpty!4300))

(assert (= (and b!116412 (not condMapEmpty!4299)) mapNonEmpty!4299))

(get-info :version)

(assert (= (and mapNonEmpty!4299 ((_ is ValueCellFull!1050) mapValue!4300)) b!116419))

(assert (= (and b!116412 ((_ is ValueCellFull!1050) mapDefault!4299)) b!116404))

(assert (= b!116418 b!116412))

(assert (= b!116409 b!116418))

(assert (= b!116403 b!116409))

(assert (= start!13216 b!116403))

(assert (= (and b!116411 condMapEmpty!4300) mapIsEmpty!4299))

(assert (= (and b!116411 (not condMapEmpty!4300)) mapNonEmpty!4300))

(assert (= (and mapNonEmpty!4300 ((_ is ValueCellFull!1050) mapValue!4299)) b!116414))

(assert (= (and b!116411 ((_ is ValueCellFull!1050) mapDefault!4300)) b!116406))

(assert (= b!116416 b!116411))

(assert (= start!13216 b!116416))

(declare-fun m!132647 () Bool)

(assert (=> b!116410 m!132647))

(declare-fun m!132649 () Bool)

(assert (=> b!116413 m!132649))

(declare-fun m!132651 () Bool)

(assert (=> b!116420 m!132651))

(declare-fun m!132653 () Bool)

(assert (=> b!116420 m!132653))

(declare-fun m!132655 () Bool)

(assert (=> mapNonEmpty!4300 m!132655))

(declare-fun m!132657 () Bool)

(assert (=> mapNonEmpty!4299 m!132657))

(declare-fun m!132659 () Bool)

(assert (=> b!116417 m!132659))

(declare-fun m!132661 () Bool)

(assert (=> b!116415 m!132661))

(declare-fun m!132663 () Bool)

(assert (=> b!116418 m!132663))

(declare-fun m!132665 () Bool)

(assert (=> b!116418 m!132665))

(declare-fun m!132667 () Bool)

(assert (=> b!116408 m!132667))

(declare-fun m!132669 () Bool)

(assert (=> start!13216 m!132669))

(declare-fun m!132671 () Bool)

(assert (=> b!116416 m!132671))

(declare-fun m!132673 () Bool)

(assert (=> b!116416 m!132673))

(check-sat (not b!116410) (not b!116413) b_and!7263 b_and!7261 (not b_next!2741) (not b!116417) (not b!116415) (not start!13216) (not b!116420) tp_is_empty!2787 (not mapNonEmpty!4300) (not mapNonEmpty!4299) (not b_next!2743) (not b!116418) (not b!116416))
(check-sat b_and!7261 b_and!7263 (not b_next!2741) (not b_next!2743))
(get-model)

(declare-fun d!32637 () Bool)

(assert (=> d!32637 (= (valid!472 thiss!992) (valid!471 (v!3043 (underlying!412 thiss!992))))))

(declare-fun bs!4736 () Bool)

(assert (= bs!4736 d!32637))

(assert (=> bs!4736 m!132661))

(assert (=> start!13216 d!32637))

(declare-fun d!32639 () Bool)

(assert (=> d!32639 (= (array_inv!1317 (_keys!4438 newMap!16)) (bvsge (size!2431 (_keys!4438 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!116416 d!32639))

(declare-fun d!32641 () Bool)

(assert (=> d!32641 (= (array_inv!1318 (_values!2698 newMap!16)) (bvsge (size!2432 (_values!2698 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!116416 d!32641))

(declare-fun d!32643 () Bool)

(declare-fun res!57073 () Bool)

(declare-fun e!76062 () Bool)

(assert (=> d!32643 (=> (not res!57073) (not e!76062))))

(declare-fun simpleValid!80 (LongMapFixedSize!1008) Bool)

(assert (=> d!32643 (= res!57073 (simpleValid!80 newMap!16))))

(assert (=> d!32643 (= (valid!471 newMap!16) e!76062)))

(declare-fun b!116481 () Bool)

(declare-fun res!57074 () Bool)

(assert (=> b!116481 (=> (not res!57074) (not e!76062))))

(declare-fun arrayCountValidKeys!0 (array!4578 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!116481 (= res!57074 (= (arrayCountValidKeys!0 (_keys!4438 newMap!16) #b00000000000000000000000000000000 (size!2431 (_keys!4438 newMap!16))) (_size!553 newMap!16)))))

(declare-fun b!116482 () Bool)

(declare-fun res!57075 () Bool)

(assert (=> b!116482 (=> (not res!57075) (not e!76062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4578 (_ BitVec 32)) Bool)

(assert (=> b!116482 (= res!57075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4438 newMap!16) (mask!6931 newMap!16)))))

(declare-fun b!116483 () Bool)

(declare-datatypes ((List!1698 0))(
  ( (Nil!1695) (Cons!1694 (h!2294 (_ BitVec 64)) (t!5976 List!1698)) )
))
(declare-fun arrayNoDuplicates!0 (array!4578 (_ BitVec 32) List!1698) Bool)

(assert (=> b!116483 (= e!76062 (arrayNoDuplicates!0 (_keys!4438 newMap!16) #b00000000000000000000000000000000 Nil!1695))))

(assert (= (and d!32643 res!57073) b!116481))

(assert (= (and b!116481 res!57074) b!116482))

(assert (= (and b!116482 res!57075) b!116483))

(declare-fun m!132703 () Bool)

(assert (=> d!32643 m!132703))

(declare-fun m!132705 () Bool)

(assert (=> b!116481 m!132705))

(declare-fun m!132707 () Bool)

(assert (=> b!116482 m!132707))

(declare-fun m!132709 () Bool)

(assert (=> b!116483 m!132709))

(assert (=> b!116417 d!32643))

(declare-fun d!32645 () Bool)

(declare-fun res!57076 () Bool)

(declare-fun e!76063 () Bool)

(assert (=> d!32645 (=> (not res!57076) (not e!76063))))

(assert (=> d!32645 (= res!57076 (simpleValid!80 (_2!1270 lt!60399)))))

(assert (=> d!32645 (= (valid!471 (_2!1270 lt!60399)) e!76063)))

(declare-fun b!116484 () Bool)

(declare-fun res!57077 () Bool)

(assert (=> b!116484 (=> (not res!57077) (not e!76063))))

(assert (=> b!116484 (= res!57077 (= (arrayCountValidKeys!0 (_keys!4438 (_2!1270 lt!60399)) #b00000000000000000000000000000000 (size!2431 (_keys!4438 (_2!1270 lt!60399)))) (_size!553 (_2!1270 lt!60399))))))

(declare-fun b!116485 () Bool)

(declare-fun res!57078 () Bool)

(assert (=> b!116485 (=> (not res!57078) (not e!76063))))

(assert (=> b!116485 (= res!57078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4438 (_2!1270 lt!60399)) (mask!6931 (_2!1270 lt!60399))))))

(declare-fun b!116486 () Bool)

(assert (=> b!116486 (= e!76063 (arrayNoDuplicates!0 (_keys!4438 (_2!1270 lt!60399)) #b00000000000000000000000000000000 Nil!1695))))

(assert (= (and d!32645 res!57076) b!116484))

(assert (= (and b!116484 res!57077) b!116485))

(assert (= (and b!116485 res!57078) b!116486))

(declare-fun m!132711 () Bool)

(assert (=> d!32645 m!132711))

(declare-fun m!132713 () Bool)

(assert (=> b!116484 m!132713))

(declare-fun m!132715 () Bool)

(assert (=> b!116485 m!132715))

(declare-fun m!132717 () Bool)

(assert (=> b!116486 m!132717))

(assert (=> b!116413 d!32645))

(declare-fun d!32647 () Bool)

(assert (=> d!32647 (= (array_inv!1317 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvsge (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!116418 d!32647))

(declare-fun d!32649 () Bool)

(assert (=> d!32649 (= (array_inv!1318 (_values!2698 (v!3043 (underlying!412 thiss!992)))) (bvsge (size!2432 (_values!2698 (v!3043 (underlying!412 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!116418 d!32649))

(declare-fun d!32651 () Bool)

(declare-fun res!57079 () Bool)

(declare-fun e!76064 () Bool)

(assert (=> d!32651 (=> (not res!57079) (not e!76064))))

(assert (=> d!32651 (= res!57079 (simpleValid!80 (v!3043 (underlying!412 thiss!992))))))

(assert (=> d!32651 (= (valid!471 (v!3043 (underlying!412 thiss!992))) e!76064)))

(declare-fun b!116487 () Bool)

(declare-fun res!57080 () Bool)

(assert (=> b!116487 (=> (not res!57080) (not e!76064))))

(assert (=> b!116487 (= res!57080 (= (arrayCountValidKeys!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000000 (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))) (_size!553 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun b!116488 () Bool)

(declare-fun res!57081 () Bool)

(assert (=> b!116488 (=> (not res!57081) (not e!76064))))

(assert (=> b!116488 (= res!57081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun b!116489 () Bool)

(assert (=> b!116489 (= e!76064 (arrayNoDuplicates!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000000 Nil!1695))))

(assert (= (and d!32651 res!57079) b!116487))

(assert (= (and b!116487 res!57080) b!116488))

(assert (= (and b!116488 res!57081) b!116489))

(declare-fun m!132719 () Bool)

(assert (=> d!32651 m!132719))

(declare-fun m!132721 () Bool)

(assert (=> b!116487 m!132721))

(declare-fun m!132723 () Bool)

(assert (=> b!116488 m!132723))

(declare-fun m!132725 () Bool)

(assert (=> b!116489 m!132725))

(assert (=> b!116415 d!32651))

(declare-fun d!32653 () Bool)

(declare-fun e!76094 () Bool)

(assert (=> d!32653 e!76094))

(declare-fun res!57103 () Bool)

(assert (=> d!32653 (=> (not res!57103) (not e!76094))))

(assert (=> d!32653 (= res!57103 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))))))))

(declare-fun lt!60456 () ListLongMap!1653)

(declare-fun lt!60467 () ListLongMap!1653)

(assert (=> d!32653 (= lt!60456 lt!60467)))

(declare-datatypes ((Unit!3626 0))(
  ( (Unit!3627) )
))
(declare-fun lt!60464 () Unit!3626)

(declare-fun e!76102 () Unit!3626)

(assert (=> d!32653 (= lt!60464 e!76102)))

(declare-fun c!20658 () Bool)

(declare-fun e!76099 () Bool)

(assert (=> d!32653 (= c!20658 e!76099)))

(declare-fun res!57107 () Bool)

(assert (=> d!32653 (=> (not res!57107) (not e!76099))))

(assert (=> d!32653 (= res!57107 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun e!76100 () ListLongMap!1653)

(assert (=> d!32653 (= lt!60467 e!76100)))

(declare-fun c!20659 () Bool)

(assert (=> d!32653 (= c!20659 (and (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!32653 (validMask!0 (mask!6931 (v!3043 (underlying!412 thiss!992))))))

(assert (=> d!32653 (= (getCurrentListMap!515 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))) lt!60456)))

(declare-fun bm!12453 () Bool)

(declare-fun call!12459 () Bool)

(declare-fun contains!862 (ListLongMap!1653 (_ BitVec 64)) Bool)

(assert (=> bm!12453 (= call!12459 (contains!862 lt!60456 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116532 () Bool)

(declare-fun e!76091 () Bool)

(assert (=> b!116532 (= e!76091 (not call!12459))))

(declare-fun e!76101 () Bool)

(declare-fun b!116533 () Bool)

(declare-fun apply!105 (ListLongMap!1653 (_ BitVec 64)) V!3363)

(declare-fun get!1415 (ValueCell!1050 V!3363) V!3363)

(declare-fun dynLambda!408 (Int (_ BitVec 64)) V!3363)

(assert (=> b!116533 (= e!76101 (= (apply!105 lt!60456 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1415 (select (arr!2171 (_values!2698 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!408 (defaultEntry!2715 (v!3043 (underlying!412 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!116533 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2432 (_values!2698 (v!3043 (underlying!412 thiss!992))))))))

(assert (=> b!116533 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun b!116534 () Bool)

(declare-fun e!76103 () Bool)

(assert (=> b!116534 (= e!76103 (= (apply!105 lt!60456 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun bm!12454 () Bool)

(declare-fun call!12460 () ListLongMap!1653)

(declare-fun call!12462 () ListLongMap!1653)

(assert (=> bm!12454 (= call!12460 call!12462)))

(declare-fun bm!12455 () Bool)

(declare-fun call!12457 () ListLongMap!1653)

(declare-fun call!12458 () ListLongMap!1653)

(assert (=> bm!12455 (= call!12457 call!12458)))

(declare-fun b!116535 () Bool)

(declare-fun res!57101 () Bool)

(assert (=> b!116535 (=> (not res!57101) (not e!76094))))

(declare-fun e!76092 () Bool)

(assert (=> b!116535 (= res!57101 e!76092)))

(declare-fun res!57100 () Bool)

(assert (=> b!116535 (=> res!57100 e!76092)))

(declare-fun e!76095 () Bool)

(assert (=> b!116535 (= res!57100 (not e!76095))))

(declare-fun res!57106 () Bool)

(assert (=> b!116535 (=> (not res!57106) (not e!76095))))

(assert (=> b!116535 (= res!57106 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun b!116536 () Bool)

(declare-fun lt!60455 () Unit!3626)

(assert (=> b!116536 (= e!76102 lt!60455)))

(declare-fun lt!60452 () ListLongMap!1653)

(declare-fun getCurrentListMapNoExtraKeys!126 (array!4578 array!4580 (_ BitVec 32) (_ BitVec 32) V!3363 V!3363 (_ BitVec 32) Int) ListLongMap!1653)

(assert (=> b!116536 (= lt!60452 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun lt!60466 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60466 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60460 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60460 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60450 () Unit!3626)

(declare-fun addStillContains!81 (ListLongMap!1653 (_ BitVec 64) V!3363 (_ BitVec 64)) Unit!3626)

(assert (=> b!116536 (= lt!60450 (addStillContains!81 lt!60452 lt!60466 (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) lt!60460))))

(declare-fun +!159 (ListLongMap!1653 tuple2!2522) ListLongMap!1653)

(assert (=> b!116536 (contains!862 (+!159 lt!60452 (tuple2!2523 lt!60466 (zeroValue!2582 (v!3043 (underlying!412 thiss!992))))) lt!60460)))

(declare-fun lt!60465 () Unit!3626)

(assert (=> b!116536 (= lt!60465 lt!60450)))

(declare-fun lt!60447 () ListLongMap!1653)

(assert (=> b!116536 (= lt!60447 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun lt!60459 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60448 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60448 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60463 () Unit!3626)

(declare-fun addApplyDifferent!81 (ListLongMap!1653 (_ BitVec 64) V!3363 (_ BitVec 64)) Unit!3626)

(assert (=> b!116536 (= lt!60463 (addApplyDifferent!81 lt!60447 lt!60459 (minValue!2582 (v!3043 (underlying!412 thiss!992))) lt!60448))))

(assert (=> b!116536 (= (apply!105 (+!159 lt!60447 (tuple2!2523 lt!60459 (minValue!2582 (v!3043 (underlying!412 thiss!992))))) lt!60448) (apply!105 lt!60447 lt!60448))))

(declare-fun lt!60453 () Unit!3626)

(assert (=> b!116536 (= lt!60453 lt!60463)))

(declare-fun lt!60458 () ListLongMap!1653)

(assert (=> b!116536 (= lt!60458 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun lt!60457 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60457 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60462 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60462 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60451 () Unit!3626)

(assert (=> b!116536 (= lt!60451 (addApplyDifferent!81 lt!60458 lt!60457 (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) lt!60462))))

(assert (=> b!116536 (= (apply!105 (+!159 lt!60458 (tuple2!2523 lt!60457 (zeroValue!2582 (v!3043 (underlying!412 thiss!992))))) lt!60462) (apply!105 lt!60458 lt!60462))))

(declare-fun lt!60449 () Unit!3626)

(assert (=> b!116536 (= lt!60449 lt!60451)))

(declare-fun lt!60454 () ListLongMap!1653)

(assert (=> b!116536 (= lt!60454 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun lt!60468 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60468 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60461 () (_ BitVec 64))

(assert (=> b!116536 (= lt!60461 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!116536 (= lt!60455 (addApplyDifferent!81 lt!60454 lt!60468 (minValue!2582 (v!3043 (underlying!412 thiss!992))) lt!60461))))

(assert (=> b!116536 (= (apply!105 (+!159 lt!60454 (tuple2!2523 lt!60468 (minValue!2582 (v!3043 (underlying!412 thiss!992))))) lt!60461) (apply!105 lt!60454 lt!60461))))

(declare-fun c!20655 () Bool)

(declare-fun call!12456 () ListLongMap!1653)

(declare-fun bm!12456 () Bool)

(assert (=> bm!12456 (= call!12458 (+!159 (ite c!20659 call!12456 (ite c!20655 call!12462 call!12460)) (ite (or c!20659 c!20655) (tuple2!2523 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun b!116537 () Bool)

(assert (=> b!116537 (= e!76092 e!76101)))

(declare-fun res!57102 () Bool)

(assert (=> b!116537 (=> (not res!57102) (not e!76101))))

(assert (=> b!116537 (= res!57102 (contains!862 lt!60456 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!116537 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2431 (_keys!4438 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun bm!12457 () Bool)

(assert (=> bm!12457 (= call!12456 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun b!116538 () Bool)

(declare-fun Unit!3628 () Unit!3626)

(assert (=> b!116538 (= e!76102 Unit!3628)))

(declare-fun b!116539 () Bool)

(declare-fun e!76097 () Bool)

(assert (=> b!116539 (= e!76091 e!76097)))

(declare-fun res!57104 () Bool)

(assert (=> b!116539 (= res!57104 call!12459)))

(assert (=> b!116539 (=> (not res!57104) (not e!76097))))

(declare-fun bm!12458 () Bool)

(assert (=> bm!12458 (= call!12462 call!12456)))

(declare-fun b!116540 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!116540 (= e!76099 (validKeyInArray!0 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!116541 () Bool)

(declare-fun c!20656 () Bool)

(assert (=> b!116541 (= c!20656 (and (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!76098 () ListLongMap!1653)

(declare-fun e!76093 () ListLongMap!1653)

(assert (=> b!116541 (= e!76098 e!76093)))

(declare-fun b!116542 () Bool)

(assert (=> b!116542 (= e!76098 call!12457)))

(declare-fun b!116543 () Bool)

(assert (=> b!116543 (= e!76093 call!12460)))

(declare-fun b!116544 () Bool)

(assert (=> b!116544 (= e!76094 e!76091)))

(declare-fun c!20657 () Bool)

(assert (=> b!116544 (= c!20657 (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12459 () Bool)

(declare-fun call!12461 () Bool)

(assert (=> bm!12459 (= call!12461 (contains!862 lt!60456 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116545 () Bool)

(declare-fun e!76096 () Bool)

(assert (=> b!116545 (= e!76096 e!76103)))

(declare-fun res!57108 () Bool)

(assert (=> b!116545 (= res!57108 call!12461)))

(assert (=> b!116545 (=> (not res!57108) (not e!76103))))

(declare-fun b!116546 () Bool)

(assert (=> b!116546 (= e!76095 (validKeyInArray!0 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!116547 () Bool)

(assert (=> b!116547 (= e!76100 e!76098)))

(assert (=> b!116547 (= c!20655 (and (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!116548 () Bool)

(assert (=> b!116548 (= e!76093 call!12457)))

(declare-fun b!116549 () Bool)

(declare-fun res!57105 () Bool)

(assert (=> b!116549 (=> (not res!57105) (not e!76094))))

(assert (=> b!116549 (= res!57105 e!76096)))

(declare-fun c!20654 () Bool)

(assert (=> b!116549 (= c!20654 (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!116550 () Bool)

(assert (=> b!116550 (= e!76096 (not call!12461))))

(declare-fun b!116551 () Bool)

(assert (=> b!116551 (= e!76097 (= (apply!105 lt!60456 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2582 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun b!116552 () Bool)

(assert (=> b!116552 (= e!76100 (+!159 call!12458 (tuple2!2523 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2582 (v!3043 (underlying!412 thiss!992))))))))

(assert (= (and d!32653 c!20659) b!116552))

(assert (= (and d!32653 (not c!20659)) b!116547))

(assert (= (and b!116547 c!20655) b!116542))

(assert (= (and b!116547 (not c!20655)) b!116541))

(assert (= (and b!116541 c!20656) b!116548))

(assert (= (and b!116541 (not c!20656)) b!116543))

(assert (= (or b!116548 b!116543) bm!12454))

(assert (= (or b!116542 bm!12454) bm!12458))

(assert (= (or b!116542 b!116548) bm!12455))

(assert (= (or b!116552 bm!12458) bm!12457))

(assert (= (or b!116552 bm!12455) bm!12456))

(assert (= (and d!32653 res!57107) b!116540))

(assert (= (and d!32653 c!20658) b!116536))

(assert (= (and d!32653 (not c!20658)) b!116538))

(assert (= (and d!32653 res!57103) b!116535))

(assert (= (and b!116535 res!57106) b!116546))

(assert (= (and b!116535 (not res!57100)) b!116537))

(assert (= (and b!116537 res!57102) b!116533))

(assert (= (and b!116535 res!57101) b!116549))

(assert (= (and b!116549 c!20654) b!116545))

(assert (= (and b!116549 (not c!20654)) b!116550))

(assert (= (and b!116545 res!57108) b!116534))

(assert (= (or b!116545 b!116550) bm!12459))

(assert (= (and b!116549 res!57105) b!116544))

(assert (= (and b!116544 c!20657) b!116539))

(assert (= (and b!116544 (not c!20657)) b!116532))

(assert (= (and b!116539 res!57104) b!116551))

(assert (= (or b!116539 b!116532) bm!12453))

(declare-fun b_lambda!5201 () Bool)

(assert (=> (not b_lambda!5201) (not b!116533)))

(declare-fun t!5973 () Bool)

(declare-fun tb!2241 () Bool)

(assert (=> (and b!116418 (= (defaultEntry!2715 (v!3043 (underlying!412 thiss!992))) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))) t!5973) tb!2241))

(declare-fun result!3727 () Bool)

(assert (=> tb!2241 (= result!3727 tp_is_empty!2787)))

(assert (=> b!116533 t!5973))

(declare-fun b_and!7269 () Bool)

(assert (= b_and!7261 (and (=> t!5973 result!3727) b_and!7269)))

(declare-fun t!5975 () Bool)

(declare-fun tb!2243 () Bool)

(assert (=> (and b!116416 (= (defaultEntry!2715 newMap!16) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))) t!5975) tb!2243))

(declare-fun result!3731 () Bool)

(assert (= result!3731 result!3727))

(assert (=> b!116533 t!5975))

(declare-fun b_and!7271 () Bool)

(assert (= b_and!7263 (and (=> t!5975 result!3731) b_and!7271)))

(declare-fun m!132727 () Bool)

(assert (=> b!116536 m!132727))

(declare-fun m!132729 () Bool)

(assert (=> b!116536 m!132729))

(declare-fun m!132731 () Bool)

(assert (=> b!116536 m!132731))

(assert (=> b!116536 m!132731))

(declare-fun m!132733 () Bool)

(assert (=> b!116536 m!132733))

(declare-fun m!132735 () Bool)

(assert (=> b!116536 m!132735))

(declare-fun m!132737 () Bool)

(assert (=> b!116536 m!132737))

(declare-fun m!132739 () Bool)

(assert (=> b!116536 m!132739))

(declare-fun m!132741 () Bool)

(assert (=> b!116536 m!132741))

(declare-fun m!132743 () Bool)

(assert (=> b!116536 m!132743))

(declare-fun m!132745 () Bool)

(assert (=> b!116536 m!132745))

(declare-fun m!132747 () Bool)

(assert (=> b!116536 m!132747))

(declare-fun m!132749 () Bool)

(assert (=> b!116536 m!132749))

(declare-fun m!132751 () Bool)

(assert (=> b!116536 m!132751))

(declare-fun m!132753 () Bool)

(assert (=> b!116536 m!132753))

(assert (=> b!116536 m!132747))

(declare-fun m!132755 () Bool)

(assert (=> b!116536 m!132755))

(assert (=> b!116536 m!132727))

(declare-fun m!132757 () Bool)

(assert (=> b!116536 m!132757))

(declare-fun m!132759 () Bool)

(assert (=> b!116536 m!132759))

(assert (=> b!116536 m!132737))

(declare-fun m!132761 () Bool)

(assert (=> b!116533 m!132761))

(assert (=> b!116533 m!132745))

(declare-fun m!132763 () Bool)

(assert (=> b!116533 m!132763))

(declare-fun m!132765 () Bool)

(assert (=> b!116533 m!132765))

(assert (=> b!116533 m!132765))

(assert (=> b!116533 m!132761))

(declare-fun m!132767 () Bool)

(assert (=> b!116533 m!132767))

(assert (=> b!116533 m!132745))

(declare-fun m!132769 () Bool)

(assert (=> bm!12453 m!132769))

(assert (=> b!116537 m!132745))

(assert (=> b!116537 m!132745))

(declare-fun m!132771 () Bool)

(assert (=> b!116537 m!132771))

(assert (=> b!116540 m!132745))

(assert (=> b!116540 m!132745))

(declare-fun m!132773 () Bool)

(assert (=> b!116540 m!132773))

(assert (=> b!116546 m!132745))

(assert (=> b!116546 m!132745))

(assert (=> b!116546 m!132773))

(declare-fun m!132775 () Bool)

(assert (=> b!116551 m!132775))

(declare-fun m!132777 () Bool)

(assert (=> b!116534 m!132777))

(declare-fun m!132779 () Bool)

(assert (=> b!116552 m!132779))

(declare-fun m!132781 () Bool)

(assert (=> d!32653 m!132781))

(declare-fun m!132783 () Bool)

(assert (=> bm!12459 m!132783))

(assert (=> bm!12457 m!132759))

(declare-fun m!132785 () Bool)

(assert (=> bm!12456 m!132785))

(assert (=> b!116420 d!32653))

(declare-fun d!32655 () Bool)

(assert (=> d!32655 (= (map!1350 newMap!16) (getCurrentListMap!515 (_keys!4438 newMap!16) (_values!2698 newMap!16) (mask!6931 newMap!16) (extraKeys!2504 newMap!16) (zeroValue!2582 newMap!16) (minValue!2582 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2715 newMap!16)))))

(declare-fun bs!4737 () Bool)

(assert (= bs!4737 d!32655))

(declare-fun m!132787 () Bool)

(assert (=> bs!4737 m!132787))

(assert (=> b!116420 d!32655))

(declare-fun b!116583 () Bool)

(declare-fun e!76127 () Bool)

(declare-fun lt!60546 () tuple2!2520)

(assert (=> b!116583 (= e!76127 (= (map!1350 (_2!1270 lt!60546)) (map!1350 (v!3043 (underlying!412 thiss!992)))))))

(declare-fun lt!60552 () (_ BitVec 64))

(declare-fun lt!60550 () ListLongMap!1653)

(declare-fun lt!60536 () V!3363)

(declare-fun lt!60563 () (_ BitVec 64))

(declare-fun call!12489 () ListLongMap!1653)

(declare-fun bm!12486 () Bool)

(declare-fun c!20676 () Bool)

(declare-fun lt!60557 () ListLongMap!1653)

(assert (=> bm!12486 (= call!12489 (+!159 (ite c!20676 lt!60550 lt!60557) (ite c!20676 (tuple2!2523 lt!60563 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 lt!60552 lt!60536))))))

(declare-fun b!116584 () Bool)

(declare-fun e!76124 () Bool)

(assert (=> b!116584 (= e!76124 e!76127)))

(declare-fun res!57114 () Bool)

(assert (=> b!116584 (=> (not res!57114) (not e!76127))))

(assert (=> b!116584 (= res!57114 (valid!471 (_2!1270 lt!60546)))))

(declare-fun lt!60551 () (_ BitVec 64))

(declare-fun lt!60539 () ListLongMap!1653)

(declare-fun bm!12487 () Bool)

(declare-fun call!12498 () Unit!3626)

(declare-fun addCommutativeForDiffKeys!70 (ListLongMap!1653 (_ BitVec 64) V!3363 (_ BitVec 64) V!3363) Unit!3626)

(assert (=> bm!12487 (= call!12498 (addCommutativeForDiffKeys!70 (ite c!20676 lt!60550 lt!60539) lt!60552 lt!60536 (ite c!20676 lt!60563 lt!60551) (ite c!20676 (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun call!12494 () ListLongMap!1653)

(declare-fun bm!12488 () Bool)

(declare-fun call!12490 () ListLongMap!1653)

(declare-fun lt!60562 () (_ BitVec 64))

(assert (=> bm!12488 (= call!12490 (+!159 (ite c!20676 call!12494 call!12489) (ite c!20676 (tuple2!2523 lt!60552 lt!60536) (tuple2!2523 lt!60562 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun bm!12489 () Bool)

(declare-fun call!12500 () ListLongMap!1653)

(assert (=> bm!12489 (= call!12500 (+!159 (ite c!20676 lt!60550 lt!60539) (tuple2!2523 lt!60552 lt!60536)))))

(declare-fun b!116585 () Bool)

(declare-fun e!76120 () tuple2!2520)

(declare-fun lt!60537 () tuple2!2520)

(assert (=> b!116585 (= e!76120 (tuple2!2521 false (_2!1270 lt!60537)))))

(declare-fun b!116586 () Bool)

(declare-fun e!76126 () Unit!3626)

(declare-fun Unit!3629 () Unit!3626)

(assert (=> b!116586 (= e!76126 Unit!3629)))

(declare-fun lt!60541 () ListLongMap!1653)

(declare-fun bm!12490 () Bool)

(declare-fun lt!60538 () (_ BitVec 64))

(assert (=> bm!12490 (= call!12494 (+!159 (ite c!20676 lt!60541 lt!60539) (ite c!20676 (tuple2!2523 lt!60538 (minValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 lt!60551 (minValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun call!12496 () ListLongMap!1653)

(declare-fun call!12492 () ListLongMap!1653)

(declare-fun bm!12491 () Bool)

(assert (=> bm!12491 (= call!12496 (+!159 (ite c!20676 call!12492 call!12500) (ite c!20676 (tuple2!2523 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 lt!60551 (minValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun b!116587 () Bool)

(assert (=> b!116587 (= c!20676 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun e!76122 () tuple2!2520)

(assert (=> b!116587 (= e!76120 e!76122)))

(declare-fun bm!12492 () Bool)

(declare-fun call!12499 () ListLongMap!1653)

(declare-fun call!12495 () ListLongMap!1653)

(assert (=> bm!12492 (= call!12495 (+!159 (ite c!20676 call!12499 call!12494) (ite c!20676 (tuple2!2523 lt!60538 (minValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 lt!60552 lt!60536))))))

(declare-fun bm!12493 () Bool)

(declare-fun call!12491 () ListLongMap!1653)

(assert (=> bm!12493 (= call!12491 (+!159 (ite c!20676 call!12500 call!12499) (ite c!20676 (tuple2!2523 lt!60563 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))) (tuple2!2523 lt!60552 lt!60536))))))

(declare-fun b!116588 () Bool)

(declare-fun lt!60553 () tuple2!2520)

(assert (=> b!116588 (= e!76122 (tuple2!2521 (_1!1270 lt!60553) (_2!1270 lt!60553)))))

(assert (=> b!116588 (= lt!60550 call!12492)))

(assert (=> b!116588 (= lt!60563 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60540 () Unit!3626)

(assert (=> b!116588 (= lt!60540 call!12498)))

(declare-fun call!12501 () ListLongMap!1653)

(assert (=> b!116588 (= call!12491 call!12501)))

(declare-fun lt!60543 () Unit!3626)

(assert (=> b!116588 (= lt!60543 lt!60540)))

(assert (=> b!116588 (= lt!60541 call!12496)))

(assert (=> b!116588 (= lt!60538 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60544 () Unit!3626)

(declare-fun call!12493 () Unit!3626)

(assert (=> b!116588 (= lt!60544 call!12493)))

(assert (=> b!116588 (= call!12495 call!12490)))

(declare-fun lt!60534 () Unit!3626)

(assert (=> b!116588 (= lt!60534 lt!60544)))

(declare-fun call!12497 () tuple2!2520)

(assert (=> b!116588 (= lt!60553 call!12497)))

(declare-fun d!32657 () Bool)

(assert (=> d!32657 e!76124))

(declare-fun res!57113 () Bool)

(assert (=> d!32657 (=> res!57113 e!76124)))

(assert (=> d!32657 (= res!57113 (not (_1!1270 lt!60546)))))

(declare-fun e!76125 () tuple2!2520)

(assert (=> d!32657 (= lt!60546 e!76125)))

(declare-fun c!20673 () Bool)

(assert (=> d!32657 (= c!20673 (and (not (= lt!60552 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!60552 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!60545 () ListLongMap!1653)

(assert (=> d!32657 (= lt!60545 (map!1350 newMap!16))))

(assert (=> d!32657 (= lt!60536 (get!1415 (select (arr!2171 (_values!2698 (v!3043 (underlying!412 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)) (dynLambda!408 (defaultEntry!2715 (v!3043 (underlying!412 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32657 (= lt!60552 (select (arr!2170 (_keys!4438 (v!3043 (underlying!412 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)))))

(assert (=> d!32657 (valid!472 thiss!992)))

(assert (=> d!32657 (= (repackFrom!14 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)) lt!60546)))

(declare-fun bm!12494 () Bool)

(assert (=> bm!12494 (= call!12497 (repackFrom!14 thiss!992 (ite c!20673 (_2!1270 lt!60537) newMap!16) (bvsub (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!116589 () Bool)

(declare-fun lt!60548 () tuple2!2520)

(assert (=> b!116589 (= lt!60548 call!12497)))

(declare-fun e!76123 () tuple2!2520)

(assert (=> b!116589 (= e!76123 (tuple2!2521 (_1!1270 lt!60548) (_2!1270 lt!60548)))))

(declare-fun b!116590 () Bool)

(declare-fun e!76121 () Bool)

(assert (=> b!116590 (= e!76121 (ite (= lt!60552 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!116591 () Bool)

(assert (=> b!116591 false))

(declare-fun lt!60558 () Unit!3626)

(declare-fun lt!60535 () Unit!3626)

(assert (=> b!116591 (= lt!60558 lt!60535)))

(declare-fun lt!60549 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!4578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!116591 (not (arrayContainsKey!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) lt!60552 lt!60549))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4578 (_ BitVec 32) (_ BitVec 64) List!1698) Unit!3626)

(assert (=> b!116591 (= lt!60535 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) lt!60549 lt!60552 (Cons!1694 lt!60552 Nil!1695)))))

(assert (=> b!116591 (= lt!60549 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!60542 () Unit!3626)

(declare-fun lt!60554 () Unit!3626)

(assert (=> b!116591 (= lt!60542 lt!60554)))

(assert (=> b!116591 (arrayNoDuplicates!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (bvsub from!355 #b00000000000000000000000000000001) Nil!1695)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4578 (_ BitVec 32) (_ BitVec 32)) Unit!3626)

(assert (=> b!116591 (= lt!60554 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) #b00000000000000000000000000000000 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun lt!60561 () Unit!3626)

(declare-fun lt!60564 () Unit!3626)

(assert (=> b!116591 (= lt!60561 lt!60564)))

(assert (=> b!116591 e!76121))

(declare-fun c!20672 () Bool)

(assert (=> b!116591 (= c!20672 (and (not (= lt!60552 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!60552 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!60560 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!131 (array!4578 array!4580 (_ BitVec 32) (_ BitVec 32) V!3363 V!3363 (_ BitVec 64) (_ BitVec 32) Int) Unit!3626)

(assert (=> b!116591 (= lt!60564 (lemmaListMapContainsThenArrayContainsFrom!131 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) lt!60552 lt!60560 (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(assert (=> b!116591 (= lt!60560 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!3630 () Unit!3626)

(assert (=> b!116591 (= e!76126 Unit!3630)))

(declare-fun bm!12495 () Bool)

(assert (=> bm!12495 (= call!12501 (+!159 (ite c!20676 call!12489 call!12492) (ite c!20676 (tuple2!2523 lt!60552 lt!60536) (tuple2!2523 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun b!116592 () Bool)

(assert (=> b!116592 (= e!76125 e!76123)))

(declare-fun c!20674 () Bool)

(assert (=> b!116592 (= c!20674 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!116593 () Bool)

(assert (=> b!116593 (= e!76123 (tuple2!2521 true newMap!16))))

(declare-fun b!116594 () Bool)

(assert (=> b!116594 (= e!76125 e!76120)))

(declare-fun update!176 (LongMapFixedSize!1008 (_ BitVec 64) V!3363) tuple2!2520)

(assert (=> b!116594 (= lt!60537 (update!176 newMap!16 lt!60552 lt!60536))))

(declare-fun c!20677 () Bool)

(assert (=> b!116594 (= c!20677 (contains!862 lt!60545 lt!60552))))

(declare-fun lt!60547 () Unit!3626)

(assert (=> b!116594 (= lt!60547 e!76126)))

(declare-fun c!20675 () Bool)

(assert (=> b!116594 (= c!20675 (_1!1270 lt!60537))))

(declare-fun b!116595 () Bool)

(assert (=> b!116595 (= e!76122 (tuple2!2521 true (_2!1270 lt!60537)))))

(assert (=> b!116595 (= lt!60557 call!12492)))

(assert (=> b!116595 (= lt!60562 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60559 () Unit!3626)

(assert (=> b!116595 (= lt!60559 call!12493)))

(assert (=> b!116595 (= call!12490 call!12491)))

(declare-fun lt!60556 () Unit!3626)

(assert (=> b!116595 (= lt!60556 lt!60559)))

(assert (=> b!116595 (= lt!60539 call!12501)))

(assert (=> b!116595 (= lt!60551 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60533 () Unit!3626)

(assert (=> b!116595 (= lt!60533 call!12498)))

(assert (=> b!116595 (= call!12496 call!12495)))

(declare-fun lt!60555 () Unit!3626)

(assert (=> b!116595 (= lt!60555 lt!60533)))

(declare-fun bm!12496 () Bool)

(assert (=> bm!12496 (= call!12493 (addCommutativeForDiffKeys!70 (ite c!20676 lt!60541 lt!60557) lt!60552 lt!60536 (ite c!20676 lt!60538 lt!60562) (ite c!20676 (minValue!2582 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))))))))

(declare-fun bm!12497 () Bool)

(assert (=> bm!12497 (= call!12499 (+!159 (ite c!20676 lt!60541 lt!60557) (ite c!20676 (tuple2!2523 lt!60552 lt!60536) (tuple2!2523 lt!60562 (zeroValue!2582 (v!3043 (underlying!412 thiss!992)))))))))

(declare-fun b!116596 () Bool)

(assert (=> b!116596 (= e!76121 (arrayContainsKey!0 (_keys!4438 (v!3043 (underlying!412 thiss!992))) lt!60552 lt!60560))))

(declare-fun bm!12498 () Bool)

(assert (=> bm!12498 (= call!12492 (getCurrentListMapNoExtraKeys!126 (_keys!4438 (v!3043 (underlying!412 thiss!992))) (_values!2698 (v!3043 (underlying!412 thiss!992))) (mask!6931 (v!3043 (underlying!412 thiss!992))) (extraKeys!2504 (v!3043 (underlying!412 thiss!992))) (zeroValue!2582 (v!3043 (underlying!412 thiss!992))) (minValue!2582 (v!3043 (underlying!412 thiss!992))) (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992)))))))

(assert (= (and d!32657 c!20673) b!116594))

(assert (= (and d!32657 (not c!20673)) b!116592))

(assert (= (and b!116594 c!20677) b!116591))

(assert (= (and b!116594 (not c!20677)) b!116586))

(assert (= (and b!116591 c!20672) b!116596))

(assert (= (and b!116591 (not c!20672)) b!116590))

(assert (= (and b!116594 c!20675) b!116587))

(assert (= (and b!116594 (not c!20675)) b!116585))

(assert (= (and b!116587 c!20676) b!116588))

(assert (= (and b!116587 (not c!20676)) b!116595))

(assert (= (or b!116588 b!116595) bm!12497))

(assert (= (or b!116588 b!116595) bm!12498))

(assert (= (or b!116588 b!116595) bm!12490))

(assert (= (or b!116588 b!116595) bm!12496))

(assert (= (or b!116588 b!116595) bm!12487))

(assert (= (or b!116588 b!116595) bm!12489))

(assert (= (or b!116588 b!116595) bm!12486))

(assert (= (or b!116588 b!116595) bm!12495))

(assert (= (or b!116588 b!116595) bm!12491))

(assert (= (or b!116588 b!116595) bm!12493))

(assert (= (or b!116588 b!116595) bm!12492))

(assert (= (or b!116588 b!116595) bm!12488))

(assert (= (and b!116592 c!20674) b!116589))

(assert (= (and b!116592 (not c!20674)) b!116593))

(assert (= (or b!116588 b!116589) bm!12494))

(assert (= (and d!32657 (not res!57113)) b!116584))

(assert (= (and b!116584 res!57114) b!116583))

(declare-fun b_lambda!5203 () Bool)

(assert (=> (not b_lambda!5203) (not d!32657)))

(assert (=> d!32657 t!5973))

(declare-fun b_and!7273 () Bool)

(assert (= b_and!7269 (and (=> t!5973 result!3727) b_and!7273)))

(assert (=> d!32657 t!5975))

(declare-fun b_and!7275 () Bool)

(assert (= b_and!7271 (and (=> t!5975 result!3731) b_and!7275)))

(declare-fun m!132789 () Bool)

(assert (=> b!116584 m!132789))

(declare-fun m!132791 () Bool)

(assert (=> b!116583 m!132791))

(declare-fun m!132793 () Bool)

(assert (=> b!116583 m!132793))

(assert (=> d!32657 m!132653))

(assert (=> d!32657 m!132761))

(declare-fun m!132795 () Bool)

(assert (=> d!32657 m!132795))

(assert (=> d!32657 m!132761))

(declare-fun m!132797 () Bool)

(assert (=> d!32657 m!132797))

(assert (=> d!32657 m!132795))

(declare-fun m!132799 () Bool)

(assert (=> d!32657 m!132799))

(assert (=> d!32657 m!132669))

(declare-fun m!132801 () Bool)

(assert (=> bm!12490 m!132801))

(declare-fun m!132803 () Bool)

(assert (=> bm!12486 m!132803))

(declare-fun m!132805 () Bool)

(assert (=> bm!12495 m!132805))

(declare-fun m!132807 () Bool)

(assert (=> bm!12497 m!132807))

(declare-fun m!132809 () Bool)

(assert (=> bm!12492 m!132809))

(declare-fun m!132811 () Bool)

(assert (=> b!116594 m!132811))

(declare-fun m!132813 () Bool)

(assert (=> b!116594 m!132813))

(declare-fun m!132815 () Bool)

(assert (=> bm!12487 m!132815))

(declare-fun m!132817 () Bool)

(assert (=> bm!12493 m!132817))

(declare-fun m!132819 () Bool)

(assert (=> bm!12491 m!132819))

(declare-fun m!132821 () Bool)

(assert (=> bm!12489 m!132821))

(declare-fun m!132823 () Bool)

(assert (=> b!116591 m!132823))

(declare-fun m!132825 () Bool)

(assert (=> b!116591 m!132825))

(declare-fun m!132827 () Bool)

(assert (=> b!116591 m!132827))

(declare-fun m!132829 () Bool)

(assert (=> b!116591 m!132829))

(declare-fun m!132831 () Bool)

(assert (=> b!116591 m!132831))

(declare-fun m!132833 () Bool)

(assert (=> bm!12496 m!132833))

(declare-fun m!132835 () Bool)

(assert (=> bm!12488 m!132835))

(declare-fun m!132837 () Bool)

(assert (=> bm!12494 m!132837))

(declare-fun m!132839 () Bool)

(assert (=> bm!12498 m!132839))

(declare-fun m!132841 () Bool)

(assert (=> b!116596 m!132841))

(assert (=> b!116410 d!32657))

(declare-fun condMapEmpty!4309 () Bool)

(declare-fun mapDefault!4309 () ValueCell!1050)

(assert (=> mapNonEmpty!4299 (= condMapEmpty!4309 (= mapRest!4300 ((as const (Array (_ BitVec 32) ValueCell!1050)) mapDefault!4309)))))

(declare-fun e!76133 () Bool)

(declare-fun mapRes!4309 () Bool)

(assert (=> mapNonEmpty!4299 (= tp!10591 (and e!76133 mapRes!4309))))

(declare-fun b!116603 () Bool)

(declare-fun e!76132 () Bool)

(assert (=> b!116603 (= e!76132 tp_is_empty!2787)))

(declare-fun mapNonEmpty!4309 () Bool)

(declare-fun tp!10609 () Bool)

(assert (=> mapNonEmpty!4309 (= mapRes!4309 (and tp!10609 e!76132))))

(declare-fun mapRest!4309 () (Array (_ BitVec 32) ValueCell!1050))

(declare-fun mapKey!4309 () (_ BitVec 32))

(declare-fun mapValue!4309 () ValueCell!1050)

(assert (=> mapNonEmpty!4309 (= mapRest!4300 (store mapRest!4309 mapKey!4309 mapValue!4309))))

(declare-fun b!116604 () Bool)

(assert (=> b!116604 (= e!76133 tp_is_empty!2787)))

(declare-fun mapIsEmpty!4309 () Bool)

(assert (=> mapIsEmpty!4309 mapRes!4309))

(assert (= (and mapNonEmpty!4299 condMapEmpty!4309) mapIsEmpty!4309))

(assert (= (and mapNonEmpty!4299 (not condMapEmpty!4309)) mapNonEmpty!4309))

(assert (= (and mapNonEmpty!4309 ((_ is ValueCellFull!1050) mapValue!4309)) b!116603))

(assert (= (and mapNonEmpty!4299 ((_ is ValueCellFull!1050) mapDefault!4309)) b!116604))

(declare-fun m!132843 () Bool)

(assert (=> mapNonEmpty!4309 m!132843))

(declare-fun condMapEmpty!4310 () Bool)

(declare-fun mapDefault!4310 () ValueCell!1050)

(assert (=> mapNonEmpty!4300 (= condMapEmpty!4310 (= mapRest!4299 ((as const (Array (_ BitVec 32) ValueCell!1050)) mapDefault!4310)))))

(declare-fun e!76135 () Bool)

(declare-fun mapRes!4310 () Bool)

(assert (=> mapNonEmpty!4300 (= tp!10592 (and e!76135 mapRes!4310))))

(declare-fun b!116605 () Bool)

(declare-fun e!76134 () Bool)

(assert (=> b!116605 (= e!76134 tp_is_empty!2787)))

(declare-fun mapNonEmpty!4310 () Bool)

(declare-fun tp!10610 () Bool)

(assert (=> mapNonEmpty!4310 (= mapRes!4310 (and tp!10610 e!76134))))

(declare-fun mapValue!4310 () ValueCell!1050)

(declare-fun mapRest!4310 () (Array (_ BitVec 32) ValueCell!1050))

(declare-fun mapKey!4310 () (_ BitVec 32))

(assert (=> mapNonEmpty!4310 (= mapRest!4299 (store mapRest!4310 mapKey!4310 mapValue!4310))))

(declare-fun b!116606 () Bool)

(assert (=> b!116606 (= e!76135 tp_is_empty!2787)))

(declare-fun mapIsEmpty!4310 () Bool)

(assert (=> mapIsEmpty!4310 mapRes!4310))

(assert (= (and mapNonEmpty!4300 condMapEmpty!4310) mapIsEmpty!4310))

(assert (= (and mapNonEmpty!4300 (not condMapEmpty!4310)) mapNonEmpty!4310))

(assert (= (and mapNonEmpty!4310 ((_ is ValueCellFull!1050) mapValue!4310)) b!116605))

(assert (= (and mapNonEmpty!4300 ((_ is ValueCellFull!1050) mapDefault!4310)) b!116606))

(declare-fun m!132845 () Bool)

(assert (=> mapNonEmpty!4310 m!132845))

(declare-fun b_lambda!5205 () Bool)

(assert (= b_lambda!5201 (or (and b!116418 b_free!2741) (and b!116416 b_free!2743 (= (defaultEntry!2715 newMap!16) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992))))) b_lambda!5205)))

(declare-fun b_lambda!5207 () Bool)

(assert (= b_lambda!5203 (or (and b!116418 b_free!2741) (and b!116416 b_free!2743 (= (defaultEntry!2715 newMap!16) (defaultEntry!2715 (v!3043 (underlying!412 thiss!992))))) b_lambda!5207)))

(check-sat (not bm!12497) (not mapNonEmpty!4309) (not b!116485) (not b!116594) (not bm!12453) (not bm!12493) (not b!116583) (not bm!12496) (not bm!12459) (not d!32657) (not b!116537) (not bm!12492) (not b!116482) (not b!116596) (not b!116551) (not bm!12457) (not b!116486) (not b!116488) b_and!7273 (not b!116487) (not b_lambda!5205) (not b_next!2743) (not b!116484) (not b_next!2741) (not bm!12489) (not b!116536) (not d!32655) (not d!32645) (not d!32651) b_and!7275 (not b!116534) (not b!116483) (not bm!12495) (not bm!12487) (not b!116540) (not b!116546) (not bm!12486) (not b!116552) (not d!32653) (not b!116591) tp_is_empty!2787 (not bm!12456) (not mapNonEmpty!4310) (not bm!12491) (not d!32637) (not bm!12498) (not bm!12490) (not b!116489) (not bm!12488) (not b!116584) (not bm!12494) (not b!116533) (not d!32643) (not b!116481) (not b_lambda!5207))
(check-sat b_and!7273 b_and!7275 (not b_next!2741) (not b_next!2743))
