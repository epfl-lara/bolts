; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3848 () Bool)

(assert start!3848)

(declare-fun b_free!789 () Bool)

(declare-fun b_next!789 () Bool)

(assert (=> start!3848 (= b_free!789 (not b_next!789))))

(declare-fun tp!3780 () Bool)

(declare-fun b_and!1597 () Bool)

(assert (=> start!3848 (= tp!3780 b_and!1597)))

(declare-fun b!27043 () Bool)

(declare-fun e!17634 () Bool)

(declare-fun tp_is_empty!1143 () Bool)

(assert (=> b!27043 (= e!17634 tp_is_empty!1143)))

(declare-fun b!27044 () Bool)

(declare-fun res!16011 () Bool)

(declare-fun e!17635 () Bool)

(assert (=> b!27044 (=> (not res!16011) (not e!17635))))

(declare-datatypes ((array!1517 0))(
  ( (array!1518 (arr!714 (Array (_ BitVec 32) (_ BitVec 64))) (size!815 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1517)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1517 (_ BitVec 32)) Bool)

(assert (=> b!27044 (= res!16011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27045 () Bool)

(declare-fun res!16010 () Bool)

(assert (=> b!27045 (=> (not res!16010) (not e!17635))))

(declare-datatypes ((V!1349 0))(
  ( (V!1350 (val!598 Int)) )
))
(declare-datatypes ((ValueCell!372 0))(
  ( (ValueCellFull!372 (v!1685 V!1349)) (EmptyCell!372) )
))
(declare-datatypes ((array!1519 0))(
  ( (array!1520 (arr!715 (Array (_ BitVec 32) ValueCell!372)) (size!816 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1519)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27045 (= res!16010 (and (= (size!816 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!815 _keys!1833) (size!816 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1237 () Bool)

(declare-fun mapRes!1237 () Bool)

(declare-fun tp!3781 () Bool)

(declare-fun e!17632 () Bool)

(assert (=> mapNonEmpty!1237 (= mapRes!1237 (and tp!3781 e!17632))))

(declare-fun mapKey!1237 () (_ BitVec 32))

(declare-fun mapValue!1237 () ValueCell!372)

(declare-fun mapRest!1237 () (Array (_ BitVec 32) ValueCell!372))

(assert (=> mapNonEmpty!1237 (= (arr!715 _values!1501) (store mapRest!1237 mapKey!1237 mapValue!1237))))

(declare-fun b!27046 () Bool)

(declare-fun res!16015 () Bool)

(assert (=> b!27046 (=> (not res!16015) (not e!17635))))

(declare-datatypes ((List!605 0))(
  ( (Nil!602) (Cons!601 (h!1168 (_ BitVec 64)) (t!3296 List!605)) )
))
(declare-fun arrayNoDuplicates!0 (array!1517 (_ BitVec 32) List!605) Bool)

(assert (=> b!27046 (= res!16015 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!602))))

(declare-fun mapIsEmpty!1237 () Bool)

(assert (=> mapIsEmpty!1237 mapRes!1237))

(declare-fun res!16013 () Bool)

(assert (=> start!3848 (=> (not res!16013) (not e!17635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3848 (= res!16013 (validMask!0 mask!2294))))

(assert (=> start!3848 e!17635))

(assert (=> start!3848 true))

(assert (=> start!3848 tp!3780))

(declare-fun e!17633 () Bool)

(declare-fun array_inv!491 (array!1519) Bool)

(assert (=> start!3848 (and (array_inv!491 _values!1501) e!17633)))

(declare-fun array_inv!492 (array!1517) Bool)

(assert (=> start!3848 (array_inv!492 _keys!1833)))

(assert (=> start!3848 tp_is_empty!1143))

(declare-fun b!27047 () Bool)

(declare-fun res!16012 () Bool)

(assert (=> b!27047 (=> (not res!16012) (not e!17635))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27047 (= res!16012 (validKeyInArray!0 k0!1304))))

(declare-fun b!27048 () Bool)

(declare-fun res!16014 () Bool)

(assert (=> b!27048 (=> (not res!16014) (not e!17635))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1349)

(declare-fun minValue!1443 () V!1349)

(declare-datatypes ((tuple2!986 0))(
  ( (tuple2!987 (_1!503 (_ BitVec 64)) (_2!503 V!1349)) )
))
(declare-datatypes ((List!606 0))(
  ( (Nil!603) (Cons!602 (h!1169 tuple2!986) (t!3297 List!606)) )
))
(declare-datatypes ((ListLongMap!567 0))(
  ( (ListLongMap!568 (toList!299 List!606)) )
))
(declare-fun contains!234 (ListLongMap!567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!127 (array!1517 array!1519 (_ BitVec 32) (_ BitVec 32) V!1349 V!1349 (_ BitVec 32) Int) ListLongMap!567)

(assert (=> b!27048 (= res!16014 (not (contains!234 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27049 () Bool)

(assert (=> b!27049 (= e!17635 (and (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)) (bvsge (size!815 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!27050 () Bool)

(assert (=> b!27050 (= e!17632 tp_is_empty!1143)))

(declare-fun b!27051 () Bool)

(assert (=> b!27051 (= e!17633 (and e!17634 mapRes!1237))))

(declare-fun condMapEmpty!1237 () Bool)

(declare-fun mapDefault!1237 () ValueCell!372)

(assert (=> b!27051 (= condMapEmpty!1237 (= (arr!715 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!372)) mapDefault!1237)))))

(assert (= (and start!3848 res!16013) b!27045))

(assert (= (and b!27045 res!16010) b!27044))

(assert (= (and b!27044 res!16011) b!27046))

(assert (= (and b!27046 res!16015) b!27047))

(assert (= (and b!27047 res!16012) b!27048))

(assert (= (and b!27048 res!16014) b!27049))

(assert (= (and b!27051 condMapEmpty!1237) mapIsEmpty!1237))

(assert (= (and b!27051 (not condMapEmpty!1237)) mapNonEmpty!1237))

(get-info :version)

(assert (= (and mapNonEmpty!1237 ((_ is ValueCellFull!372) mapValue!1237)) b!27050))

(assert (= (and b!27051 ((_ is ValueCellFull!372) mapDefault!1237)) b!27043))

(assert (= start!3848 b!27051))

(declare-fun m!21627 () Bool)

(assert (=> b!27046 m!21627))

(declare-fun m!21629 () Bool)

(assert (=> b!27044 m!21629))

(declare-fun m!21631 () Bool)

(assert (=> mapNonEmpty!1237 m!21631))

(declare-fun m!21633 () Bool)

(assert (=> b!27047 m!21633))

(declare-fun m!21635 () Bool)

(assert (=> b!27048 m!21635))

(assert (=> b!27048 m!21635))

(declare-fun m!21637 () Bool)

(assert (=> b!27048 m!21637))

(declare-fun m!21639 () Bool)

(assert (=> start!3848 m!21639))

(declare-fun m!21641 () Bool)

(assert (=> start!3848 m!21641))

(declare-fun m!21643 () Bool)

(assert (=> start!3848 m!21643))

(check-sat (not b!27044) (not b!27048) (not mapNonEmpty!1237) tp_is_empty!1143 (not start!3848) (not b!27046) b_and!1597 (not b!27047) (not b_next!789))
(check-sat b_and!1597 (not b_next!789))
(get-model)

(declare-fun b!27089 () Bool)

(declare-fun e!17659 () Bool)

(declare-fun contains!235 (List!605 (_ BitVec 64)) Bool)

(assert (=> b!27089 (= e!17659 (contains!235 Nil!602 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27090 () Bool)

(declare-fun e!17660 () Bool)

(declare-fun e!17662 () Bool)

(assert (=> b!27090 (= e!17660 e!17662)))

(declare-fun res!16042 () Bool)

(assert (=> b!27090 (=> (not res!16042) (not e!17662))))

(assert (=> b!27090 (= res!16042 (not e!17659))))

(declare-fun res!16041 () Bool)

(assert (=> b!27090 (=> (not res!16041) (not e!17659))))

(assert (=> b!27090 (= res!16041 (validKeyInArray!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2534 () Bool)

(declare-fun call!2537 () Bool)

(declare-fun c!3700 () Bool)

(assert (=> bm!2534 (= call!2537 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3700 (Cons!601 (select (arr!714 _keys!1833) #b00000000000000000000000000000000) Nil!602) Nil!602)))))

(declare-fun b!27091 () Bool)

(declare-fun e!17661 () Bool)

(assert (=> b!27091 (= e!17661 call!2537)))

(declare-fun d!4935 () Bool)

(declare-fun res!16040 () Bool)

(assert (=> d!4935 (=> res!16040 e!17660)))

(assert (=> d!4935 (= res!16040 (bvsge #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(assert (=> d!4935 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!602) e!17660)))

(declare-fun b!27092 () Bool)

(assert (=> b!27092 (= e!17661 call!2537)))

(declare-fun b!27093 () Bool)

(assert (=> b!27093 (= e!17662 e!17661)))

(assert (=> b!27093 (= c!3700 (validKeyInArray!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!4935 (not res!16040)) b!27090))

(assert (= (and b!27090 res!16041) b!27089))

(assert (= (and b!27090 res!16042) b!27093))

(assert (= (and b!27093 c!3700) b!27091))

(assert (= (and b!27093 (not c!3700)) b!27092))

(assert (= (or b!27091 b!27092) bm!2534))

(declare-fun m!21663 () Bool)

(assert (=> b!27089 m!21663))

(assert (=> b!27089 m!21663))

(declare-fun m!21665 () Bool)

(assert (=> b!27089 m!21665))

(assert (=> b!27090 m!21663))

(assert (=> b!27090 m!21663))

(declare-fun m!21667 () Bool)

(assert (=> b!27090 m!21667))

(assert (=> bm!2534 m!21663))

(declare-fun m!21669 () Bool)

(assert (=> bm!2534 m!21669))

(assert (=> b!27093 m!21663))

(assert (=> b!27093 m!21663))

(assert (=> b!27093 m!21667))

(assert (=> b!27046 d!4935))

(declare-fun d!4937 () Bool)

(declare-fun res!16048 () Bool)

(declare-fun e!17670 () Bool)

(assert (=> d!4937 (=> res!16048 e!17670)))

(assert (=> d!4937 (= res!16048 (bvsge #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(assert (=> d!4937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!17670)))

(declare-fun b!27102 () Bool)

(declare-fun e!17669 () Bool)

(declare-fun call!2540 () Bool)

(assert (=> b!27102 (= e!17669 call!2540)))

(declare-fun b!27103 () Bool)

(assert (=> b!27103 (= e!17670 e!17669)))

(declare-fun c!3703 () Bool)

(assert (=> b!27103 (= c!3703 (validKeyInArray!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27104 () Bool)

(declare-fun e!17671 () Bool)

(assert (=> b!27104 (= e!17669 e!17671)))

(declare-fun lt!10514 () (_ BitVec 64))

(assert (=> b!27104 (= lt!10514 (select (arr!714 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!635 0))(
  ( (Unit!636) )
))
(declare-fun lt!10515 () Unit!635)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1517 (_ BitVec 64) (_ BitVec 32)) Unit!635)

(assert (=> b!27104 (= lt!10515 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10514 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27104 (arrayContainsKey!0 _keys!1833 lt!10514 #b00000000000000000000000000000000)))

(declare-fun lt!10513 () Unit!635)

(assert (=> b!27104 (= lt!10513 lt!10515)))

(declare-fun res!16047 () Bool)

(declare-datatypes ((SeekEntryResult!68 0))(
  ( (MissingZero!68 (index!2394 (_ BitVec 32))) (Found!68 (index!2395 (_ BitVec 32))) (Intermediate!68 (undefined!880 Bool) (index!2396 (_ BitVec 32)) (x!6200 (_ BitVec 32))) (Undefined!68) (MissingVacant!68 (index!2397 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1517 (_ BitVec 32)) SeekEntryResult!68)

(assert (=> b!27104 (= res!16047 (= (seekEntryOrOpen!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!68 #b00000000000000000000000000000000)))))

(assert (=> b!27104 (=> (not res!16047) (not e!17671))))

(declare-fun bm!2537 () Bool)

(assert (=> bm!2537 (= call!2540 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!27105 () Bool)

(assert (=> b!27105 (= e!17671 call!2540)))

(assert (= (and d!4937 (not res!16048)) b!27103))

(assert (= (and b!27103 c!3703) b!27104))

(assert (= (and b!27103 (not c!3703)) b!27102))

(assert (= (and b!27104 res!16047) b!27105))

(assert (= (or b!27105 b!27102) bm!2537))

(assert (=> b!27103 m!21663))

(assert (=> b!27103 m!21663))

(assert (=> b!27103 m!21667))

(assert (=> b!27104 m!21663))

(declare-fun m!21671 () Bool)

(assert (=> b!27104 m!21671))

(declare-fun m!21673 () Bool)

(assert (=> b!27104 m!21673))

(assert (=> b!27104 m!21663))

(declare-fun m!21675 () Bool)

(assert (=> b!27104 m!21675))

(declare-fun m!21677 () Bool)

(assert (=> bm!2537 m!21677))

(assert (=> b!27044 d!4937))

(declare-fun d!4939 () Bool)

(assert (=> d!4939 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!27047 d!4939))

(declare-fun d!4941 () Bool)

(declare-fun e!17676 () Bool)

(assert (=> d!4941 e!17676))

(declare-fun res!16051 () Bool)

(assert (=> d!4941 (=> res!16051 e!17676)))

(declare-fun lt!10524 () Bool)

(assert (=> d!4941 (= res!16051 (not lt!10524))))

(declare-fun lt!10527 () Bool)

(assert (=> d!4941 (= lt!10524 lt!10527)))

(declare-fun lt!10526 () Unit!635)

(declare-fun e!17677 () Unit!635)

(assert (=> d!4941 (= lt!10526 e!17677)))

(declare-fun c!3706 () Bool)

(assert (=> d!4941 (= c!3706 lt!10527)))

(declare-fun containsKey!27 (List!606 (_ BitVec 64)) Bool)

(assert (=> d!4941 (= lt!10527 (containsKey!27 (toList!299 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!4941 (= (contains!234 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!10524)))

(declare-fun b!27112 () Bool)

(declare-fun lt!10525 () Unit!635)

(assert (=> b!27112 (= e!17677 lt!10525)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!24 (List!606 (_ BitVec 64)) Unit!635)

(assert (=> b!27112 (= lt!10525 (lemmaContainsKeyImpliesGetValueByKeyDefined!24 (toList!299 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!69 0))(
  ( (Some!68 (v!1687 V!1349)) (None!67) )
))
(declare-fun isDefined!25 (Option!69) Bool)

(declare-fun getValueByKey!63 (List!606 (_ BitVec 64)) Option!69)

(assert (=> b!27112 (isDefined!25 (getValueByKey!63 (toList!299 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!27113 () Bool)

(declare-fun Unit!637 () Unit!635)

(assert (=> b!27113 (= e!17677 Unit!637)))

(declare-fun b!27114 () Bool)

(assert (=> b!27114 (= e!17676 (isDefined!25 (getValueByKey!63 (toList!299 (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!4941 c!3706) b!27112))

(assert (= (and d!4941 (not c!3706)) b!27113))

(assert (= (and d!4941 (not res!16051)) b!27114))

(declare-fun m!21679 () Bool)

(assert (=> d!4941 m!21679))

(declare-fun m!21681 () Bool)

(assert (=> b!27112 m!21681))

(declare-fun m!21683 () Bool)

(assert (=> b!27112 m!21683))

(assert (=> b!27112 m!21683))

(declare-fun m!21685 () Bool)

(assert (=> b!27112 m!21685))

(assert (=> b!27114 m!21683))

(assert (=> b!27114 m!21683))

(assert (=> b!27114 m!21685))

(assert (=> b!27048 d!4941))

(declare-fun b!27157 () Bool)

(declare-fun e!17711 () Bool)

(declare-fun call!2558 () Bool)

(assert (=> b!27157 (= e!17711 (not call!2558))))

(declare-fun b!27158 () Bool)

(declare-fun e!17704 () Bool)

(assert (=> b!27158 (= e!17704 (validKeyInArray!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27159 () Bool)

(declare-fun e!17712 () Bool)

(declare-fun lt!10574 () ListLongMap!567)

(declare-fun apply!31 (ListLongMap!567 (_ BitVec 64)) V!1349)

(assert (=> b!27159 (= e!17712 (= (apply!31 lt!10574 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun bm!2552 () Bool)

(declare-fun call!2555 () ListLongMap!567)

(declare-fun getCurrentListMapNoExtraKeys!18 (array!1517 array!1519 (_ BitVec 32) (_ BitVec 32) V!1349 V!1349 (_ BitVec 32) Int) ListLongMap!567)

(assert (=> bm!2552 (= call!2555 (getCurrentListMapNoExtraKeys!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun bm!2553 () Bool)

(declare-fun call!2556 () ListLongMap!567)

(assert (=> bm!2553 (= call!2556 call!2555)))

(declare-fun b!27160 () Bool)

(declare-fun e!17708 () Bool)

(assert (=> b!27160 (= e!17708 (validKeyInArray!0 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27161 () Bool)

(declare-fun e!17710 () Bool)

(assert (=> b!27161 (= e!17711 e!17710)))

(declare-fun res!16071 () Bool)

(assert (=> b!27161 (= res!16071 call!2558)))

(assert (=> b!27161 (=> (not res!16071) (not e!17710))))

(declare-fun d!4943 () Bool)

(declare-fun e!17707 () Bool)

(assert (=> d!4943 e!17707))

(declare-fun res!16074 () Bool)

(assert (=> d!4943 (=> (not res!16074) (not e!17707))))

(assert (=> d!4943 (= res!16074 (or (bvsge #b00000000000000000000000000000000 (size!815 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)))))))

(declare-fun lt!10587 () ListLongMap!567)

(assert (=> d!4943 (= lt!10574 lt!10587)))

(declare-fun lt!10580 () Unit!635)

(declare-fun e!17714 () Unit!635)

(assert (=> d!4943 (= lt!10580 e!17714)))

(declare-fun c!3723 () Bool)

(assert (=> d!4943 (= c!3723 e!17704)))

(declare-fun res!16077 () Bool)

(assert (=> d!4943 (=> (not res!16077) (not e!17704))))

(assert (=> d!4943 (= res!16077 (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(declare-fun e!17706 () ListLongMap!567)

(assert (=> d!4943 (= lt!10587 e!17706)))

(declare-fun c!3719 () Bool)

(assert (=> d!4943 (= c!3719 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!4943 (validMask!0 mask!2294)))

(assert (=> d!4943 (= (getCurrentListMap!127 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!10574)))

(declare-fun b!27162 () Bool)

(declare-fun e!17709 () ListLongMap!567)

(declare-fun call!2557 () ListLongMap!567)

(assert (=> b!27162 (= e!17709 call!2557)))

(declare-fun b!27163 () Bool)

(declare-fun lt!10591 () Unit!635)

(assert (=> b!27163 (= e!17714 lt!10591)))

(declare-fun lt!10576 () ListLongMap!567)

(assert (=> b!27163 (= lt!10576 (getCurrentListMapNoExtraKeys!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10589 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10589 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10577 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10577 (select (arr!714 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10588 () Unit!635)

(declare-fun addStillContains!16 (ListLongMap!567 (_ BitVec 64) V!1349 (_ BitVec 64)) Unit!635)

(assert (=> b!27163 (= lt!10588 (addStillContains!16 lt!10576 lt!10589 zeroValue!1443 lt!10577))))

(declare-fun +!49 (ListLongMap!567 tuple2!986) ListLongMap!567)

(assert (=> b!27163 (contains!234 (+!49 lt!10576 (tuple2!987 lt!10589 zeroValue!1443)) lt!10577)))

(declare-fun lt!10592 () Unit!635)

(assert (=> b!27163 (= lt!10592 lt!10588)))

(declare-fun lt!10578 () ListLongMap!567)

(assert (=> b!27163 (= lt!10578 (getCurrentListMapNoExtraKeys!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10593 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10593 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10581 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10581 (select (arr!714 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10590 () Unit!635)

(declare-fun addApplyDifferent!16 (ListLongMap!567 (_ BitVec 64) V!1349 (_ BitVec 64)) Unit!635)

(assert (=> b!27163 (= lt!10590 (addApplyDifferent!16 lt!10578 lt!10593 minValue!1443 lt!10581))))

(assert (=> b!27163 (= (apply!31 (+!49 lt!10578 (tuple2!987 lt!10593 minValue!1443)) lt!10581) (apply!31 lt!10578 lt!10581))))

(declare-fun lt!10585 () Unit!635)

(assert (=> b!27163 (= lt!10585 lt!10590)))

(declare-fun lt!10584 () ListLongMap!567)

(assert (=> b!27163 (= lt!10584 (getCurrentListMapNoExtraKeys!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10575 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10575 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10582 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10582 (select (arr!714 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10586 () Unit!635)

(assert (=> b!27163 (= lt!10586 (addApplyDifferent!16 lt!10584 lt!10575 zeroValue!1443 lt!10582))))

(assert (=> b!27163 (= (apply!31 (+!49 lt!10584 (tuple2!987 lt!10575 zeroValue!1443)) lt!10582) (apply!31 lt!10584 lt!10582))))

(declare-fun lt!10572 () Unit!635)

(assert (=> b!27163 (= lt!10572 lt!10586)))

(declare-fun lt!10579 () ListLongMap!567)

(assert (=> b!27163 (= lt!10579 (getCurrentListMapNoExtraKeys!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10573 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10573 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10583 () (_ BitVec 64))

(assert (=> b!27163 (= lt!10583 (select (arr!714 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!27163 (= lt!10591 (addApplyDifferent!16 lt!10579 lt!10573 minValue!1443 lt!10583))))

(assert (=> b!27163 (= (apply!31 (+!49 lt!10579 (tuple2!987 lt!10573 minValue!1443)) lt!10583) (apply!31 lt!10579 lt!10583))))

(declare-fun bm!2554 () Bool)

(declare-fun call!2561 () ListLongMap!567)

(declare-fun call!2559 () ListLongMap!567)

(assert (=> bm!2554 (= call!2561 call!2559)))

(declare-fun bm!2555 () Bool)

(assert (=> bm!2555 (= call!2558 (contains!234 lt!10574 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!27164 () Bool)

(assert (=> b!27164 (= e!17706 (+!49 call!2559 (tuple2!987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!27165 () Bool)

(declare-fun e!17716 () ListLongMap!567)

(assert (=> b!27165 (= e!17706 e!17716)))

(declare-fun c!3721 () Bool)

(assert (=> b!27165 (= c!3721 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!27166 () Bool)

(declare-fun e!17705 () Bool)

(declare-fun call!2560 () Bool)

(assert (=> b!27166 (= e!17705 (not call!2560))))

(declare-fun b!27167 () Bool)

(declare-fun e!17713 () Bool)

(declare-fun e!17715 () Bool)

(assert (=> b!27167 (= e!17713 e!17715)))

(declare-fun res!16076 () Bool)

(assert (=> b!27167 (=> (not res!16076) (not e!17715))))

(assert (=> b!27167 (= res!16076 (contains!234 lt!10574 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!27167 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(declare-fun b!27168 () Bool)

(declare-fun Unit!638 () Unit!635)

(assert (=> b!27168 (= e!17714 Unit!638)))

(declare-fun bm!2556 () Bool)

(assert (=> bm!2556 (= call!2557 call!2556)))

(declare-fun b!27169 () Bool)

(declare-fun res!16073 () Bool)

(assert (=> b!27169 (=> (not res!16073) (not e!17707))))

(assert (=> b!27169 (= res!16073 e!17705)))

(declare-fun c!3722 () Bool)

(assert (=> b!27169 (= c!3722 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!27170 () Bool)

(assert (=> b!27170 (= e!17716 call!2561)))

(declare-fun bm!2557 () Bool)

(assert (=> bm!2557 (= call!2560 (contains!234 lt!10574 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!27171 () Bool)

(assert (=> b!27171 (= e!17705 e!17712)))

(declare-fun res!16075 () Bool)

(assert (=> b!27171 (= res!16075 call!2560)))

(assert (=> b!27171 (=> (not res!16075) (not e!17712))))

(declare-fun b!27172 () Bool)

(declare-fun get!436 (ValueCell!372 V!1349) V!1349)

(declare-fun dynLambda!148 (Int (_ BitVec 64)) V!1349)

(assert (=> b!27172 (= e!17715 (= (apply!31 lt!10574 (select (arr!714 _keys!1833) #b00000000000000000000000000000000)) (get!436 (select (arr!715 _values!1501) #b00000000000000000000000000000000) (dynLambda!148 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!27172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!816 _values!1501)))))

(assert (=> b!27172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(declare-fun b!27173 () Bool)

(declare-fun c!3724 () Bool)

(assert (=> b!27173 (= c!3724 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!27173 (= e!17716 e!17709)))

(declare-fun b!27174 () Bool)

(declare-fun res!16078 () Bool)

(assert (=> b!27174 (=> (not res!16078) (not e!17707))))

(assert (=> b!27174 (= res!16078 e!17713)))

(declare-fun res!16070 () Bool)

(assert (=> b!27174 (=> res!16070 e!17713)))

(assert (=> b!27174 (= res!16070 (not e!17708))))

(declare-fun res!16072 () Bool)

(assert (=> b!27174 (=> (not res!16072) (not e!17708))))

(assert (=> b!27174 (= res!16072 (bvslt #b00000000000000000000000000000000 (size!815 _keys!1833)))))

(declare-fun b!27175 () Bool)

(assert (=> b!27175 (= e!17709 call!2561)))

(declare-fun b!27176 () Bool)

(assert (=> b!27176 (= e!17710 (= (apply!31 lt!10574 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!27177 () Bool)

(assert (=> b!27177 (= e!17707 e!17711)))

(declare-fun c!3720 () Bool)

(assert (=> b!27177 (= c!3720 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2558 () Bool)

(assert (=> bm!2558 (= call!2559 (+!49 (ite c!3719 call!2555 (ite c!3721 call!2556 call!2557)) (ite (or c!3719 c!3721) (tuple2!987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(assert (= (and d!4943 c!3719) b!27164))

(assert (= (and d!4943 (not c!3719)) b!27165))

(assert (= (and b!27165 c!3721) b!27170))

(assert (= (and b!27165 (not c!3721)) b!27173))

(assert (= (and b!27173 c!3724) b!27175))

(assert (= (and b!27173 (not c!3724)) b!27162))

(assert (= (or b!27175 b!27162) bm!2556))

(assert (= (or b!27170 bm!2556) bm!2553))

(assert (= (or b!27170 b!27175) bm!2554))

(assert (= (or b!27164 bm!2553) bm!2552))

(assert (= (or b!27164 bm!2554) bm!2558))

(assert (= (and d!4943 res!16077) b!27158))

(assert (= (and d!4943 c!3723) b!27163))

(assert (= (and d!4943 (not c!3723)) b!27168))

(assert (= (and d!4943 res!16074) b!27174))

(assert (= (and b!27174 res!16072) b!27160))

(assert (= (and b!27174 (not res!16070)) b!27167))

(assert (= (and b!27167 res!16076) b!27172))

(assert (= (and b!27174 res!16078) b!27169))

(assert (= (and b!27169 c!3722) b!27171))

(assert (= (and b!27169 (not c!3722)) b!27166))

(assert (= (and b!27171 res!16075) b!27159))

(assert (= (or b!27171 b!27166) bm!2557))

(assert (= (and b!27169 res!16073) b!27177))

(assert (= (and b!27177 c!3720) b!27161))

(assert (= (and b!27177 (not c!3720)) b!27157))

(assert (= (and b!27161 res!16071) b!27176))

(assert (= (or b!27161 b!27157) bm!2555))

(declare-fun b_lambda!1691 () Bool)

(assert (=> (not b_lambda!1691) (not b!27172)))

(declare-fun t!3299 () Bool)

(declare-fun tb!679 () Bool)

(assert (=> (and start!3848 (= defaultEntry!1504 defaultEntry!1504) t!3299) tb!679))

(declare-fun result!1143 () Bool)

(assert (=> tb!679 (= result!1143 tp_is_empty!1143)))

(assert (=> b!27172 t!3299))

(declare-fun b_and!1601 () Bool)

(assert (= b_and!1597 (and (=> t!3299 result!1143) b_and!1601)))

(declare-fun m!21687 () Bool)

(assert (=> b!27164 m!21687))

(declare-fun m!21689 () Bool)

(assert (=> bm!2558 m!21689))

(declare-fun m!21691 () Bool)

(assert (=> bm!2557 m!21691))

(assert (=> b!27167 m!21663))

(assert (=> b!27167 m!21663))

(declare-fun m!21693 () Bool)

(assert (=> b!27167 m!21693))

(declare-fun m!21695 () Bool)

(assert (=> b!27159 m!21695))

(declare-fun m!21697 () Bool)

(assert (=> b!27176 m!21697))

(assert (=> b!27158 m!21663))

(assert (=> b!27158 m!21663))

(assert (=> b!27158 m!21667))

(declare-fun m!21699 () Bool)

(assert (=> b!27163 m!21699))

(assert (=> b!27163 m!21663))

(declare-fun m!21701 () Bool)

(assert (=> b!27163 m!21701))

(declare-fun m!21703 () Bool)

(assert (=> b!27163 m!21703))

(declare-fun m!21705 () Bool)

(assert (=> b!27163 m!21705))

(declare-fun m!21707 () Bool)

(assert (=> b!27163 m!21707))

(declare-fun m!21709 () Bool)

(assert (=> b!27163 m!21709))

(declare-fun m!21711 () Bool)

(assert (=> b!27163 m!21711))

(declare-fun m!21713 () Bool)

(assert (=> b!27163 m!21713))

(assert (=> b!27163 m!21703))

(declare-fun m!21715 () Bool)

(assert (=> b!27163 m!21715))

(declare-fun m!21717 () Bool)

(assert (=> b!27163 m!21717))

(declare-fun m!21719 () Bool)

(assert (=> b!27163 m!21719))

(declare-fun m!21721 () Bool)

(assert (=> b!27163 m!21721))

(declare-fun m!21723 () Bool)

(assert (=> b!27163 m!21723))

(assert (=> b!27163 m!21707))

(declare-fun m!21725 () Bool)

(assert (=> b!27163 m!21725))

(assert (=> b!27163 m!21699))

(declare-fun m!21727 () Bool)

(assert (=> b!27163 m!21727))

(declare-fun m!21729 () Bool)

(assert (=> b!27163 m!21729))

(assert (=> b!27163 m!21709))

(assert (=> bm!2552 m!21713))

(assert (=> b!27160 m!21663))

(assert (=> b!27160 m!21663))

(assert (=> b!27160 m!21667))

(declare-fun m!21731 () Bool)

(assert (=> bm!2555 m!21731))

(assert (=> d!4943 m!21639))

(declare-fun m!21733 () Bool)

(assert (=> b!27172 m!21733))

(declare-fun m!21735 () Bool)

(assert (=> b!27172 m!21735))

(declare-fun m!21737 () Bool)

(assert (=> b!27172 m!21737))

(assert (=> b!27172 m!21663))

(assert (=> b!27172 m!21733))

(assert (=> b!27172 m!21735))

(assert (=> b!27172 m!21663))

(declare-fun m!21739 () Bool)

(assert (=> b!27172 m!21739))

(assert (=> b!27048 d!4943))

(declare-fun d!4945 () Bool)

(assert (=> d!4945 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3848 d!4945))

(declare-fun d!4947 () Bool)

(assert (=> d!4947 (= (array_inv!491 _values!1501) (bvsge (size!816 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3848 d!4947))

(declare-fun d!4949 () Bool)

(assert (=> d!4949 (= (array_inv!492 _keys!1833) (bvsge (size!815 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3848 d!4949))

(declare-fun mapIsEmpty!1243 () Bool)

(declare-fun mapRes!1243 () Bool)

(assert (=> mapIsEmpty!1243 mapRes!1243))

(declare-fun condMapEmpty!1243 () Bool)

(declare-fun mapDefault!1243 () ValueCell!372)

(assert (=> mapNonEmpty!1237 (= condMapEmpty!1243 (= mapRest!1237 ((as const (Array (_ BitVec 32) ValueCell!372)) mapDefault!1243)))))

(declare-fun e!17721 () Bool)

(assert (=> mapNonEmpty!1237 (= tp!3781 (and e!17721 mapRes!1243))))

(declare-fun b!27187 () Bool)

(assert (=> b!27187 (= e!17721 tp_is_empty!1143)))

(declare-fun mapNonEmpty!1243 () Bool)

(declare-fun tp!3790 () Bool)

(declare-fun e!17722 () Bool)

(assert (=> mapNonEmpty!1243 (= mapRes!1243 (and tp!3790 e!17722))))

(declare-fun mapValue!1243 () ValueCell!372)

(declare-fun mapKey!1243 () (_ BitVec 32))

(declare-fun mapRest!1243 () (Array (_ BitVec 32) ValueCell!372))

(assert (=> mapNonEmpty!1243 (= mapRest!1237 (store mapRest!1243 mapKey!1243 mapValue!1243))))

(declare-fun b!27186 () Bool)

(assert (=> b!27186 (= e!17722 tp_is_empty!1143)))

(assert (= (and mapNonEmpty!1237 condMapEmpty!1243) mapIsEmpty!1243))

(assert (= (and mapNonEmpty!1237 (not condMapEmpty!1243)) mapNonEmpty!1243))

(assert (= (and mapNonEmpty!1243 ((_ is ValueCellFull!372) mapValue!1243)) b!27186))

(assert (= (and mapNonEmpty!1237 ((_ is ValueCellFull!372) mapDefault!1243)) b!27187))

(declare-fun m!21741 () Bool)

(assert (=> mapNonEmpty!1243 m!21741))

(declare-fun b_lambda!1693 () Bool)

(assert (= b_lambda!1691 (or (and start!3848 b_free!789) b_lambda!1693)))

(check-sat (not b!27176) (not d!4941) (not b!27172) (not d!4943) (not bm!2555) (not b!27114) (not b!27164) (not b_lambda!1693) tp_is_empty!1143 (not mapNonEmpty!1243) (not b_next!789) (not b!27167) (not b!27090) (not b!27159) (not b!27089) (not b!27112) (not b!27104) (not bm!2557) (not bm!2534) (not b!27103) (not b!27160) (not bm!2552) (not b!27093) (not bm!2537) (not b!27158) b_and!1601 (not bm!2558) (not b!27163))
(check-sat b_and!1601 (not b_next!789))
