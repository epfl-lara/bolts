; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412596 () Bool)

(assert start!412596)

(declare-fun b!4297484 () Bool)

(declare-fun b_free!127845 () Bool)

(declare-fun b_next!128549 () Bool)

(assert (=> b!4297484 (= b_free!127845 (not b_next!128549))))

(declare-fun tp!1320175 () Bool)

(declare-fun b_and!339067 () Bool)

(assert (=> b!4297484 (= tp!1320175 b_and!339067)))

(declare-fun b_free!127847 () Bool)

(declare-fun b_next!128551 () Bool)

(assert (=> start!412596 (= b_free!127847 (not b_next!128551))))

(declare-fun tp!1320176 () Bool)

(declare-fun b_and!339069 () Bool)

(assert (=> start!412596 (= tp!1320176 b_and!339069)))

(declare-fun b!4297490 () Bool)

(declare-fun b_free!127849 () Bool)

(declare-fun b_next!128553 () Bool)

(assert (=> b!4297490 (= b_free!127849 (not b_next!128553))))

(declare-fun tp!1320178 () Bool)

(declare-fun b_and!339071 () Bool)

(assert (=> b!4297490 (= tp!1320178 b_and!339071)))

(declare-datatypes ((K!8974 0))(
  ( (K!8975 (val!15437 Int)) )
))
(declare-datatypes ((V!9176 0))(
  ( (V!9177 (val!15438 Int)) )
))
(declare-datatypes ((tuple2!45708 0))(
  ( (tuple2!45709 (_1!26133 K!8974) (_2!26133 V!9176)) )
))
(declare-datatypes ((List!48015 0))(
  ( (Nil!47891) (Cons!47891 (h!53311 tuple2!45708) (t!354630 List!48015)) )
))
(declare-datatypes ((array!16044 0))(
  ( (array!16045 (arr!7167 (Array (_ BitVec 32) (_ BitVec 64))) (size!35206 (_ BitVec 32))) )
))
(declare-datatypes ((array!16046 0))(
  ( (array!16047 (arr!7168 (Array (_ BitVec 32) List!48015)) (size!35207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8982 0))(
  ( (LongMapFixedSize!8983 (defaultEntry!4876 Int) (mask!12965 (_ BitVec 32)) (extraKeys!4740 (_ BitVec 32)) (zeroValue!4750 List!48015) (minValue!4750 List!48015) (_size!9025 (_ BitVec 32)) (_keys!4791 array!16044) (_values!4772 array!16046) (_vacant!4552 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17773 0))(
  ( (Cell!17774 (v!41821 LongMapFixedSize!8982)) )
))
(declare-datatypes ((MutLongMap!4491 0))(
  ( (LongMap!4491 (underlying!9211 Cell!17773)) (MutLongMapExt!4490 (__x!29498 Int)) )
))
(declare-datatypes ((Hashable!4407 0))(
  ( (HashableExt!4406 (__x!29499 Int)) )
))
(declare-datatypes ((Cell!17775 0))(
  ( (Cell!17776 (v!41822 MutLongMap!4491)) )
))
(declare-datatypes ((MutableMap!4397 0))(
  ( (MutableMapExt!4396 (__x!29500 Int)) (HashMap!4397 (underlying!9212 Cell!17775) (hashF!6439 Hashable!4407) (_size!9026 (_ BitVec 32)) (defaultValue!4568 Int)) )
))
(declare-fun hm!64 () MutableMap!4397)

(declare-fun tp!1320174 () Bool)

(declare-fun tp!1320179 () Bool)

(declare-fun e!2670889 () Bool)

(declare-fun e!2670884 () Bool)

(declare-fun array_inv!5137 (array!16044) Bool)

(declare-fun array_inv!5138 (array!16046) Bool)

(assert (=> b!4297484 (= e!2670889 (and tp!1320175 tp!1320179 tp!1320174 (array_inv!5137 (_keys!4791 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) (array_inv!5138 (_values!4772 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) e!2670884))))

(declare-fun b!4297485 () Bool)

(declare-fun e!2670887 () Bool)

(declare-fun e!2670886 () Bool)

(assert (=> b!4297485 (= e!2670887 e!2670886)))

(declare-fun res!1761342 () Bool)

(assert (=> b!4297485 (=> (not res!1761342) (not e!2670886))))

(declare-datatypes ((ListMap!1423 0))(
  ( (ListMap!1424 (toList!2155 List!48015)) )
))
(declare-fun lt!1518978 () ListMap!1423)

(declare-fun p!6034 () Int)

(declare-fun forall!8594 (List!48015 Int) Bool)

(assert (=> b!4297485 (= res!1761342 (forall!8594 (toList!2155 lt!1518978) p!6034))))

(declare-fun map!9846 (MutableMap!4397) ListMap!1423)

(assert (=> b!4297485 (= lt!1518978 (map!9846 hm!64))))

(declare-fun b!4297486 () Bool)

(declare-fun tp!1320180 () Bool)

(declare-fun mapRes!20181 () Bool)

(assert (=> b!4297486 (= e!2670884 (and tp!1320180 mapRes!20181))))

(declare-fun condMapEmpty!20181 () Bool)

(declare-fun mapDefault!20181 () List!48015)

(assert (=> b!4297486 (= condMapEmpty!20181 (= (arr!7168 (_values!4772 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) ((as const (Array (_ BitVec 32) List!48015)) mapDefault!20181)))))

(declare-fun b!4297487 () Bool)

(declare-fun e!2670885 () Bool)

(declare-fun e!2670888 () Bool)

(assert (=> b!4297487 (= e!2670885 e!2670888)))

(declare-fun mapNonEmpty!20181 () Bool)

(declare-fun tp!1320181 () Bool)

(declare-fun tp!1320177 () Bool)

(assert (=> mapNonEmpty!20181 (= mapRes!20181 (and tp!1320181 tp!1320177))))

(declare-fun mapValue!20181 () List!48015)

(declare-fun mapKey!20181 () (_ BitVec 32))

(declare-fun mapRest!20181 () (Array (_ BitVec 32) List!48015))

(assert (=> mapNonEmpty!20181 (= (arr!7168 (_values!4772 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) (store mapRest!20181 mapKey!20181 mapValue!20181))))

(declare-fun mapIsEmpty!20181 () Bool)

(assert (=> mapIsEmpty!20181 mapRes!20181))

(declare-fun b!4297489 () Bool)

(declare-fun e!2670883 () Bool)

(declare-datatypes ((tuple2!45710 0))(
  ( (tuple2!45711 (_1!26134 Bool) (_2!26134 MutableMap!4397)) )
))
(declare-fun lt!1518977 () tuple2!45710)

(get-info :version)

(assert (=> b!4297489 (= e!2670883 (and (_1!26134 lt!1518977) (not ((_ is HashMap!4397) (_2!26134 lt!1518977)))))))

(declare-fun k0!1716 () K!8974)

(declare-fun v!9471 () V!9176)

(declare-fun update!296 (MutableMap!4397 K!8974 V!9176) tuple2!45710)

(assert (=> b!4297489 (= lt!1518977 (update!296 hm!64 k0!1716 v!9471))))

(declare-fun lt!1518980 () ListMap!1423)

(declare-fun lt!1518981 () tuple2!45708)

(declare-fun +!138 (ListMap!1423 tuple2!45708) ListMap!1423)

(assert (=> b!4297489 (= lt!1518980 (+!138 lt!1518978 lt!1518981))))

(declare-fun e!2670881 () Bool)

(declare-fun e!2670882 () Bool)

(assert (=> b!4297490 (= e!2670881 (and e!2670882 tp!1320178))))

(declare-fun b!4297491 () Bool)

(assert (=> b!4297491 (= e!2670888 e!2670889)))

(declare-fun res!1761341 () Bool)

(assert (=> start!412596 (=> (not res!1761341) (not e!2670887))))

(assert (=> start!412596 (= res!1761341 ((_ is HashMap!4397) hm!64))))

(assert (=> start!412596 e!2670887))

(assert (=> start!412596 e!2670881))

(declare-fun tp_is_empty!23137 () Bool)

(assert (=> start!412596 tp_is_empty!23137))

(declare-fun tp_is_empty!23139 () Bool)

(assert (=> start!412596 tp_is_empty!23139))

(assert (=> start!412596 tp!1320176))

(declare-fun b!4297488 () Bool)

(declare-fun lt!1518979 () MutLongMap!4491)

(assert (=> b!4297488 (= e!2670882 (and e!2670885 ((_ is LongMap!4491) lt!1518979)))))

(assert (=> b!4297488 (= lt!1518979 (v!41822 (underlying!9212 hm!64)))))

(declare-fun b!4297492 () Bool)

(assert (=> b!4297492 (= e!2670886 e!2670883)))

(declare-fun res!1761339 () Bool)

(assert (=> b!4297492 (=> (not res!1761339) (not e!2670883))))

(declare-fun dynLambda!20337 (Int tuple2!45708) Bool)

(assert (=> b!4297492 (= res!1761339 (dynLambda!20337 p!6034 lt!1518981))))

(assert (=> b!4297492 (= lt!1518981 (tuple2!45709 k0!1716 v!9471))))

(declare-fun b!4297493 () Bool)

(declare-fun res!1761340 () Bool)

(assert (=> b!4297493 (=> (not res!1761340) (not e!2670887))))

(declare-fun valid!3468 (MutableMap!4397) Bool)

(assert (=> b!4297493 (= res!1761340 (valid!3468 hm!64))))

(assert (= (and start!412596 res!1761341) b!4297493))

(assert (= (and b!4297493 res!1761340) b!4297485))

(assert (= (and b!4297485 res!1761342) b!4297492))

(assert (= (and b!4297492 res!1761339) b!4297489))

(assert (= (and b!4297486 condMapEmpty!20181) mapIsEmpty!20181))

(assert (= (and b!4297486 (not condMapEmpty!20181)) mapNonEmpty!20181))

(assert (= b!4297484 b!4297486))

(assert (= b!4297491 b!4297484))

(assert (= b!4297487 b!4297491))

(assert (= (and b!4297488 ((_ is LongMap!4491) (v!41822 (underlying!9212 hm!64)))) b!4297487))

(assert (= b!4297490 b!4297488))

(assert (= (and start!412596 ((_ is HashMap!4397) hm!64)) b!4297490))

(declare-fun b_lambda!126151 () Bool)

(assert (=> (not b_lambda!126151) (not b!4297492)))

(declare-fun t!354629 () Bool)

(declare-fun tb!257099 () Bool)

(assert (=> (and start!412596 (= p!6034 p!6034) t!354629) tb!257099))

(declare-fun result!314332 () Bool)

(assert (=> tb!257099 (= result!314332 true)))

(assert (=> b!4297492 t!354629))

(declare-fun b_and!339073 () Bool)

(assert (= b_and!339069 (and (=> t!354629 result!314332) b_and!339073)))

(declare-fun m!4889583 () Bool)

(assert (=> b!4297489 m!4889583))

(declare-fun m!4889585 () Bool)

(assert (=> b!4297489 m!4889585))

(declare-fun m!4889587 () Bool)

(assert (=> mapNonEmpty!20181 m!4889587))

(declare-fun m!4889589 () Bool)

(assert (=> b!4297484 m!4889589))

(declare-fun m!4889591 () Bool)

(assert (=> b!4297484 m!4889591))

(declare-fun m!4889593 () Bool)

(assert (=> b!4297485 m!4889593))

(declare-fun m!4889595 () Bool)

(assert (=> b!4297485 m!4889595))

(declare-fun m!4889597 () Bool)

(assert (=> b!4297493 m!4889597))

(declare-fun m!4889599 () Bool)

(assert (=> b!4297492 m!4889599))

(check-sat (not mapNonEmpty!20181) (not b_lambda!126151) tp_is_empty!23137 b_and!339071 (not b!4297493) (not b_next!128551) (not b!4297485) b_and!339067 (not b!4297486) (not b_next!128549) tp_is_empty!23139 (not b_next!128553) (not b!4297489) b_and!339073 (not b!4297484))
(check-sat b_and!339071 (not b_next!128551) b_and!339067 (not b_next!128549) (not b_next!128553) b_and!339073)
(get-model)

(declare-fun b_lambda!126153 () Bool)

(assert (= b_lambda!126151 (or (and start!412596 b_free!127847) b_lambda!126153)))

(check-sat (not mapNonEmpty!20181) tp_is_empty!23137 b_and!339071 (not b!4297493) (not b_next!128551) (not b!4297485) b_and!339067 (not b!4297486) (not b_next!128549) (not b_lambda!126153) tp_is_empty!23139 (not b_next!128553) (not b!4297489) b_and!339073 (not b!4297484))
(check-sat b_and!339071 (not b_next!128551) b_and!339067 (not b_next!128549) (not b_next!128553) b_and!339073)
(get-model)

(declare-fun d!1266322 () Bool)

(assert (=> d!1266322 (= (array_inv!5137 (_keys!4791 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) (bvsge (size!35206 (_keys!4791 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297484 d!1266322))

(declare-fun d!1266324 () Bool)

(assert (=> d!1266324 (= (array_inv!5138 (_values!4772 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) (bvsge (size!35207 (_values!4772 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297484 d!1266324))

(declare-fun d!1266326 () Bool)

(declare-fun res!1761347 () Bool)

(declare-fun e!2670892 () Bool)

(assert (=> d!1266326 (=> (not res!1761347) (not e!2670892))))

(declare-fun valid!3469 (MutLongMap!4491) Bool)

(assert (=> d!1266326 (= res!1761347 (valid!3469 (v!41822 (underlying!9212 hm!64))))))

(assert (=> d!1266326 (= (valid!3468 hm!64) e!2670892)))

(declare-fun b!4297498 () Bool)

(declare-fun res!1761348 () Bool)

(assert (=> b!4297498 (=> (not res!1761348) (not e!2670892))))

(declare-fun lambda!131806 () Int)

(declare-datatypes ((tuple2!45712 0))(
  ( (tuple2!45713 (_1!26135 (_ BitVec 64)) (_2!26135 List!48015)) )
))
(declare-datatypes ((List!48016 0))(
  ( (Nil!47892) (Cons!47892 (h!53312 tuple2!45712) (t!354633 List!48016)) )
))
(declare-fun forall!8595 (List!48016 Int) Bool)

(declare-datatypes ((ListLongMap!781 0))(
  ( (ListLongMap!782 (toList!2156 List!48016)) )
))
(declare-fun map!9847 (MutLongMap!4491) ListLongMap!781)

(assert (=> b!4297498 (= res!1761348 (forall!8595 (toList!2156 (map!9847 (v!41822 (underlying!9212 hm!64)))) lambda!131806))))

(declare-fun b!4297499 () Bool)

(declare-fun allKeysSameHashInMap!259 (ListLongMap!781 Hashable!4407) Bool)

(assert (=> b!4297499 (= e!2670892 (allKeysSameHashInMap!259 (map!9847 (v!41822 (underlying!9212 hm!64))) (hashF!6439 hm!64)))))

(assert (= (and d!1266326 res!1761347) b!4297498))

(assert (= (and b!4297498 res!1761348) b!4297499))

(declare-fun m!4889601 () Bool)

(assert (=> d!1266326 m!4889601))

(declare-fun m!4889603 () Bool)

(assert (=> b!4297498 m!4889603))

(declare-fun m!4889605 () Bool)

(assert (=> b!4297498 m!4889605))

(assert (=> b!4297499 m!4889603))

(assert (=> b!4297499 m!4889603))

(declare-fun m!4889607 () Bool)

(assert (=> b!4297499 m!4889607))

(assert (=> b!4297493 d!1266326))

(declare-fun d!1266328 () Bool)

(declare-fun res!1761353 () Bool)

(declare-fun e!2670897 () Bool)

(assert (=> d!1266328 (=> res!1761353 e!2670897)))

(assert (=> d!1266328 (= res!1761353 ((_ is Nil!47891) (toList!2155 lt!1518978)))))

(assert (=> d!1266328 (= (forall!8594 (toList!2155 lt!1518978) p!6034) e!2670897)))

(declare-fun b!4297504 () Bool)

(declare-fun e!2670898 () Bool)

(assert (=> b!4297504 (= e!2670897 e!2670898)))

(declare-fun res!1761354 () Bool)

(assert (=> b!4297504 (=> (not res!1761354) (not e!2670898))))

(assert (=> b!4297504 (= res!1761354 (dynLambda!20337 p!6034 (h!53311 (toList!2155 lt!1518978))))))

(declare-fun b!4297505 () Bool)

(assert (=> b!4297505 (= e!2670898 (forall!8594 (t!354630 (toList!2155 lt!1518978)) p!6034))))

(assert (= (and d!1266328 (not res!1761353)) b!4297504))

(assert (= (and b!4297504 res!1761354) b!4297505))

(declare-fun b_lambda!126155 () Bool)

(assert (=> (not b_lambda!126155) (not b!4297504)))

(declare-fun t!354632 () Bool)

(declare-fun tb!257101 () Bool)

(assert (=> (and start!412596 (= p!6034 p!6034) t!354632) tb!257101))

(declare-fun result!314334 () Bool)

(assert (=> tb!257101 (= result!314334 true)))

(assert (=> b!4297504 t!354632))

(declare-fun b_and!339075 () Bool)

(assert (= b_and!339073 (and (=> t!354632 result!314334) b_and!339075)))

(declare-fun m!4889609 () Bool)

(assert (=> b!4297504 m!4889609))

(declare-fun m!4889611 () Bool)

(assert (=> b!4297505 m!4889611))

(assert (=> b!4297485 d!1266328))

(declare-fun d!1266330 () Bool)

(declare-fun lt!1518984 () ListMap!1423)

(declare-fun invariantList!525 (List!48015) Bool)

(assert (=> d!1266330 (invariantList!525 (toList!2155 lt!1518984))))

(declare-fun extractMap!259 (List!48016) ListMap!1423)

(assert (=> d!1266330 (= lt!1518984 (extractMap!259 (toList!2156 (map!9847 (v!41822 (underlying!9212 hm!64))))))))

(assert (=> d!1266330 (valid!3468 hm!64)))

(assert (=> d!1266330 (= (map!9846 hm!64) lt!1518984)))

(declare-fun bs!603853 () Bool)

(assert (= bs!603853 d!1266330))

(declare-fun m!4889613 () Bool)

(assert (=> bs!603853 m!4889613))

(assert (=> bs!603853 m!4889603))

(declare-fun m!4889615 () Bool)

(assert (=> bs!603853 m!4889615))

(assert (=> bs!603853 m!4889597))

(assert (=> b!4297485 d!1266330))

(declare-fun bs!603854 () Bool)

(declare-fun b!4297557 () Bool)

(assert (= bs!603854 (and b!4297557 b!4297498)))

(declare-fun lambda!131815 () Int)

(assert (=> bs!603854 (= lambda!131815 lambda!131806)))

(declare-fun bs!603855 () Bool)

(declare-fun b!4297560 () Bool)

(assert (= bs!603855 (and b!4297560 b!4297498)))

(declare-fun lambda!131816 () Int)

(assert (=> bs!603855 (= lambda!131816 lambda!131806)))

(declare-fun bs!603856 () Bool)

(assert (= bs!603856 (and b!4297560 b!4297557)))

(assert (=> bs!603856 (= lambda!131816 lambda!131815)))

(declare-fun b!4297544 () Bool)

(declare-datatypes ((Unit!66525 0))(
  ( (Unit!66526) )
))
(declare-fun e!2670927 () Unit!66525)

(declare-fun lt!1519113 () Unit!66525)

(assert (=> b!4297544 (= e!2670927 lt!1519113)))

(declare-fun lt!1519136 () Unit!66525)

(declare-fun call!294978 () Unit!66525)

(assert (=> b!4297544 (= lt!1519136 call!294978)))

(declare-fun call!294984 () Bool)

(assert (=> b!4297544 call!294984))

(declare-fun lt!1519134 () Unit!66525)

(assert (=> b!4297544 (= lt!1519134 lt!1519136)))

(declare-fun call!294970 () Unit!66525)

(assert (=> b!4297544 (= lt!1519113 call!294970)))

(declare-fun call!294983 () Bool)

(assert (=> b!4297544 call!294983))

(declare-fun bm!294961 () Bool)

(declare-fun c!731084 () Bool)

(declare-fun lt!1519123 () (_ BitVec 64))

(declare-fun call!294987 () List!48015)

(declare-fun lt!1519133 () (_ BitVec 64))

(declare-fun allKeysSameHash!111 (List!48015 (_ BitVec 64) Hashable!4407) Bool)

(assert (=> bm!294961 (= call!294983 (allKeysSameHash!111 call!294987 (ite c!731084 lt!1519123 lt!1519133) (hashF!6439 hm!64)))))

(declare-fun b!4297545 () Bool)

(declare-fun e!2670931 () Bool)

(declare-fun call!294982 () Bool)

(assert (=> b!4297545 (= e!2670931 call!294982)))

(declare-fun b!4297546 () Bool)

(declare-fun e!2670924 () Bool)

(assert (=> b!4297546 (= e!2670924 call!294982)))

(declare-fun bm!294962 () Bool)

(declare-fun call!294973 () (_ BitVec 64))

(declare-fun hash!827 (Hashable!4407 K!8974) (_ BitVec 64))

(assert (=> bm!294962 (= call!294973 (hash!827 (hashF!6439 hm!64) k0!1716))))

(declare-fun call!294974 () ListMap!1423)

(declare-fun call!294992 () ListMap!1423)

(declare-fun bm!294963 () Bool)

(assert (=> bm!294963 (= call!294992 (+!138 call!294974 (tuple2!45709 k0!1716 v!9471)))))

(declare-fun call!294975 () Bool)

(declare-fun bm!294964 () Bool)

(declare-fun call!294971 () ListLongMap!781)

(assert (=> bm!294964 (= call!294975 (forall!8595 (toList!2156 call!294971) (ite c!731084 lambda!131815 lambda!131816)))))

(declare-fun lt!1519106 () List!48015)

(declare-fun lt!1519112 () List!48015)

(declare-fun bm!294965 () Bool)

(declare-fun removePairForKey!128 (List!48015 K!8974) List!48015)

(assert (=> bm!294965 (= call!294987 (removePairForKey!128 (ite c!731084 lt!1519112 lt!1519106) k0!1716))))

(declare-fun bm!294966 () Bool)

(assert (=> bm!294966 (= call!294984 (allKeysSameHash!111 (ite c!731084 lt!1519112 lt!1519106) (ite c!731084 lt!1519123 lt!1519133) (hashF!6439 hm!64)))))

(declare-datatypes ((tuple2!45714 0))(
  ( (tuple2!45715 (_1!26136 Bool) (_2!26136 MutLongMap!4491)) )
))
(declare-fun lt!1519143 () tuple2!45714)

(declare-fun lt!1519139 () MutableMap!4397)

(declare-fun e!2670926 () tuple2!45710)

(declare-fun b!4297547 () Bool)

(declare-datatypes ((tuple2!45716 0))(
  ( (tuple2!45717 (_1!26137 Unit!66525) (_2!26137 MutableMap!4397)) )
))
(declare-fun Unit!66527 () Unit!66525)

(declare-fun Unit!66528 () Unit!66525)

(assert (=> b!4297547 (= e!2670926 (tuple2!45711 (_1!26136 lt!1519143) (_2!26137 (ite (_1!26136 lt!1519143) (tuple2!45717 Unit!66527 (HashMap!4397 (Cell!17776 (_2!26136 lt!1519143)) (hashF!6439 hm!64) (bvadd (_size!9026 hm!64) #b00000000000000000000000000000001) (defaultValue!4568 hm!64))) (tuple2!45717 Unit!66528 lt!1519139)))))))

(assert (=> b!4297547 (= lt!1519133 call!294973)))

(declare-fun c!731080 () Bool)

(declare-fun contains!9808 (MutLongMap!4491 (_ BitVec 64)) Bool)

(assert (=> b!4297547 (= c!731080 (contains!9808 (v!41822 (underlying!9212 hm!64)) lt!1519133))))

(declare-fun e!2670928 () List!48015)

(assert (=> b!4297547 (= lt!1519106 e!2670928)))

(declare-fun lt!1519131 () List!48015)

(assert (=> b!4297547 (= lt!1519131 (Cons!47891 (tuple2!45709 k0!1716 v!9471) lt!1519106))))

(declare-fun call!294996 () tuple2!45714)

(assert (=> b!4297547 (= lt!1519143 call!294996)))

(assert (=> b!4297547 (= lt!1519139 (HashMap!4397 (Cell!17776 (_2!26136 lt!1519143)) (hashF!6439 hm!64) (_size!9026 hm!64) (defaultValue!4568 hm!64)))))

(declare-fun c!731085 () Bool)

(assert (=> b!4297547 (= c!731085 (_1!26136 lt!1519143))))

(declare-fun lt!1519130 () Unit!66525)

(declare-fun e!2670923 () Unit!66525)

(assert (=> b!4297547 (= lt!1519130 e!2670923)))

(declare-fun call!294967 () ListMap!1423)

(declare-fun b!4297548 () Bool)

(declare-fun e!2670925 () ListMap!1423)

(assert (=> b!4297548 (= e!2670925 (+!138 call!294967 (tuple2!45709 k0!1716 v!9471)))))

(declare-fun d!1266332 () Bool)

(declare-fun e!2670930 () Bool)

(assert (=> d!1266332 e!2670930))

(declare-fun res!1761367 () Bool)

(assert (=> d!1266332 (=> (not res!1761367) (not e!2670930))))

(declare-fun lt!1519127 () tuple2!45710)

(assert (=> d!1266332 (= res!1761367 ((_ is HashMap!4397) (_2!26134 lt!1519127)))))

(declare-fun lt!1519102 () tuple2!45710)

(assert (=> d!1266332 (= lt!1519127 (tuple2!45711 (_1!26134 lt!1519102) (_2!26134 lt!1519102)))))

(assert (=> d!1266332 (= lt!1519102 e!2670926)))

(declare-fun contains!9809 (MutableMap!4397 K!8974) Bool)

(assert (=> d!1266332 (= c!731084 (contains!9809 hm!64 k0!1716))))

(declare-fun lt!1519100 () ListLongMap!781)

(assert (=> d!1266332 (= lt!1519100 (map!9847 (v!41822 (underlying!9212 hm!64))))))

(declare-fun lt!1519137 () ListMap!1423)

(assert (=> d!1266332 (= lt!1519137 (map!9846 hm!64))))

(assert (=> d!1266332 (valid!3468 hm!64)))

(assert (=> d!1266332 (= (update!296 hm!64 k0!1716 v!9471) lt!1519127)))

(declare-fun b!4297549 () Bool)

(declare-fun call!294991 () ListMap!1423)

(assert (=> b!4297549 (= call!294991 lt!1519137)))

(declare-fun lt!1519121 () Unit!66525)

(declare-fun Unit!66529 () Unit!66525)

(assert (=> b!4297549 (= lt!1519121 Unit!66529)))

(declare-fun call!294969 () Bool)

(assert (=> b!4297549 call!294969))

(declare-fun Unit!66530 () Unit!66525)

(assert (=> b!4297549 (= e!2670923 Unit!66530)))

(declare-fun bm!294967 () Bool)

(declare-fun lt!1519135 () tuple2!45714)

(assert (=> bm!294967 (= call!294971 (map!9847 (ite c!731084 (_2!26136 lt!1519135) (_2!26136 lt!1519143))))))

(declare-fun b!4297550 () Bool)

(assert (=> b!4297550 (= e!2670928 Nil!47891)))

(declare-fun lt!1519148 () ListMap!1423)

(declare-fun call!294994 () Unit!66525)

(declare-fun lt!1519116 () ListMap!1423)

(declare-fun lt!1519101 () ListMap!1423)

(declare-fun lt!1519141 () ListMap!1423)

(declare-fun bm!294968 () Bool)

(declare-fun lemmaEquivalentThenSameContains!23 (ListMap!1423 ListMap!1423 K!8974) Unit!66525)

(assert (=> bm!294968 (= call!294994 (lemmaEquivalentThenSameContains!23 (ite c!731084 lt!1519101 lt!1519116) (ite c!731084 lt!1519141 lt!1519148) k0!1716))))

(declare-fun b!4297551 () Bool)

(declare-fun e!2670922 () Bool)

(declare-fun e!2670921 () Bool)

(assert (=> b!4297551 (= e!2670922 e!2670921)))

(declare-fun res!1761368 () Bool)

(declare-fun call!294966 () ListMap!1423)

(declare-fun contains!9810 (ListMap!1423 K!8974) Bool)

(assert (=> b!4297551 (= res!1761368 (contains!9810 call!294966 k0!1716))))

(assert (=> b!4297551 (=> (not res!1761368) (not e!2670921))))

(declare-fun bm!294969 () Bool)

(declare-fun call!294995 () ListMap!1423)

(declare-fun call!294988 () ListMap!1423)

(assert (=> bm!294969 (= call!294995 call!294988)))

(declare-fun call!294976 () ListMap!1423)

(declare-fun bm!294970 () Bool)

(assert (=> bm!294970 (= call!294976 (+!138 lt!1519137 (tuple2!45709 k0!1716 v!9471)))))

(declare-fun bm!294971 () Bool)

(declare-fun call!294972 () ListMap!1423)

(declare-fun call!294980 () ListLongMap!781)

(assert (=> bm!294971 (= call!294972 (extractMap!259 (toList!2156 call!294980)))))

(declare-fun call!294985 () Bool)

(declare-fun bm!294972 () Bool)

(assert (=> bm!294972 (= call!294985 (contains!9810 (ite c!731084 lt!1519141 call!294991) k0!1716))))

(declare-fun bm!294973 () Bool)

(declare-fun call!294990 () Bool)

(assert (=> bm!294973 (= call!294990 (allKeysSameHashInMap!259 call!294971 (hashF!6439 hm!64)))))

(declare-fun bm!294974 () Bool)

(declare-fun lt!1519103 () List!48015)

(declare-fun update!297 (MutLongMap!4491 (_ BitVec 64) List!48015) tuple2!45714)

(assert (=> bm!294974 (= call!294996 (update!297 (v!41822 (underlying!9212 hm!64)) (ite c!731084 lt!1519123 lt!1519133) (ite c!731084 lt!1519103 lt!1519131)))))

(declare-fun bm!294975 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!102 (List!48016 (_ BitVec 64) List!48015 Hashable!4407) Unit!66525)

(assert (=> bm!294975 (= call!294978 (lemmaInLongMapAllKeySameHashThenForTuple!102 (toList!2156 lt!1519100) (ite c!731084 lt!1519123 lt!1519133) (ite c!731084 lt!1519112 lt!1519106) (hashF!6439 hm!64)))))

(declare-fun bm!294976 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!98 (List!48015 K!8974 (_ BitVec 64) Hashable!4407) Unit!66525)

(assert (=> bm!294976 (= call!294970 (lemmaRemovePairForKeyPreservesHash!98 (ite c!731084 lt!1519112 lt!1519106) k0!1716 (ite c!731084 lt!1519123 lt!1519133) (hashF!6439 hm!64)))))

(declare-fun b!4297552 () Bool)

(declare-fun res!1761369 () Bool)

(assert (=> b!4297552 (=> (not res!1761369) (not e!2670930))))

(assert (=> b!4297552 (= res!1761369 (valid!3468 (_2!26134 lt!1519127)))))

(declare-fun bm!294977 () Bool)

(assert (=> bm!294977 (= call!294991 call!294988)))

(declare-fun bm!294978 () Bool)

(declare-fun lt!1519096 () MutableMap!4397)

(assert (=> bm!294978 (= call!294969 (valid!3468 (ite c!731084 lt!1519096 lt!1519139)))))

(declare-fun lt!1519111 () ListLongMap!781)

(declare-fun bm!294979 () Bool)

(declare-fun call!294986 () Bool)

(declare-fun lt!1519110 () ListLongMap!781)

(assert (=> bm!294979 (= call!294986 (forall!8595 (ite c!731084 (toList!2156 lt!1519110) (toList!2156 lt!1519111)) (ite c!731084 lambda!131815 lambda!131816)))))

(declare-fun bm!294980 () Bool)

(assert (=> bm!294980 (= call!294966 (map!9846 (_2!26134 lt!1519127)))))

(declare-fun b!4297553 () Bool)

(declare-fun call!294989 () Bool)

(assert (=> b!4297553 (= e!2670921 call!294989)))

(declare-fun b!4297554 () Bool)

(declare-fun Unit!66531 () Unit!66525)

(declare-fun Unit!66532 () Unit!66525)

(assert (=> b!4297554 (= e!2670926 (tuple2!45711 (_1!26136 lt!1519135) (_2!26137 (ite false (tuple2!45717 Unit!66531 (HashMap!4397 (Cell!17776 (_2!26136 lt!1519135)) (hashF!6439 hm!64) (bvadd (_size!9026 hm!64) #b00000000000000000000000000000001) (defaultValue!4568 hm!64))) (tuple2!45717 Unit!66532 lt!1519096)))))))

(assert (=> b!4297554 (= lt!1519123 call!294973)))

(declare-fun call!294968 () List!48015)

(assert (=> b!4297554 (= lt!1519112 call!294968)))

(assert (=> b!4297554 (= lt!1519103 (Cons!47891 (tuple2!45709 k0!1716 v!9471) call!294987))))

(assert (=> b!4297554 (= lt!1519135 call!294996)))

(assert (=> b!4297554 (= lt!1519096 (HashMap!4397 (Cell!17776 (_2!26136 lt!1519135)) (hashF!6439 hm!64) (_size!9026 hm!64) (defaultValue!4568 hm!64)))))

(declare-fun c!731083 () Bool)

(assert (=> b!4297554 (= c!731083 (_1!26136 lt!1519135))))

(declare-fun lt!1519108 () Unit!66525)

(declare-fun e!2670929 () Unit!66525)

(assert (=> b!4297554 (= lt!1519108 e!2670929)))

(declare-fun bm!294981 () Bool)

(assert (=> bm!294981 (= call!294982 (allKeysSameHashInMap!259 (ite c!731084 lt!1519110 lt!1519111) (hashF!6439 hm!64)))))

(declare-fun bm!294982 () Bool)

(assert (=> bm!294982 (= call!294988 (map!9846 (ite c!731084 lt!1519096 lt!1519139)))))

(declare-fun b!4297555 () Bool)

(assert (=> b!4297555 (= e!2670922 call!294989)))

(declare-fun b!4297556 () Bool)

(assert (=> b!4297556 (= e!2670928 call!294968)))

(declare-fun call!294979 () Bool)

(assert (=> b!4297557 call!294979))

(declare-fun lt!1519124 () Unit!66525)

(declare-fun Unit!66533 () Unit!66525)

(assert (=> b!4297557 (= lt!1519124 Unit!66533)))

(assert (=> b!4297557 call!294990))

(declare-fun lt!1519147 () Unit!66525)

(declare-fun Unit!66534 () Unit!66525)

(assert (=> b!4297557 (= lt!1519147 Unit!66534)))

(assert (=> b!4297557 call!294975))

(declare-fun lt!1519118 () Unit!66525)

(declare-fun lt!1519126 () Unit!66525)

(assert (=> b!4297557 (= lt!1519118 lt!1519126)))

(declare-fun call!294977 () Bool)

(assert (=> b!4297557 (= call!294977 call!294985)))

(assert (=> b!4297557 (= lt!1519126 call!294994)))

(assert (=> b!4297557 (= lt!1519141 call!294976)))

(assert (=> b!4297557 (= lt!1519101 call!294995)))

(declare-fun lt!1519119 () Unit!66525)

(declare-fun lt!1519132 () Unit!66525)

(assert (=> b!4297557 (= lt!1519119 lt!1519132)))

(declare-fun call!294981 () Bool)

(assert (=> b!4297557 call!294981))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!23 (ListLongMap!781 (_ BitVec 64) List!48015 K!8974 V!9176 Hashable!4407) Unit!66525)

(assert (=> b!4297557 (= lt!1519132 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!23 lt!1519100 lt!1519123 lt!1519103 k0!1716 v!9471 (hashF!6439 hm!64)))))

(declare-fun lt!1519109 () Unit!66525)

(declare-fun lt!1519107 () Unit!66525)

(assert (=> b!4297557 (= lt!1519109 lt!1519107)))

(assert (=> b!4297557 e!2670931))

(declare-fun res!1761365 () Bool)

(assert (=> b!4297557 (=> (not res!1761365) (not e!2670931))))

(assert (=> b!4297557 (= res!1761365 call!294986)))

(assert (=> b!4297557 (= lt!1519110 call!294980)))

(declare-fun call!294993 () Unit!66525)

(assert (=> b!4297557 (= lt!1519107 call!294993)))

(declare-fun lt!1519140 () Unit!66525)

(declare-fun Unit!66535 () Unit!66525)

(assert (=> b!4297557 (= lt!1519140 Unit!66535)))

(declare-fun noDuplicateKeys!139 (List!48015) Bool)

(assert (=> b!4297557 (noDuplicateKeys!139 lt!1519103)))

(declare-fun lt!1519095 () Unit!66525)

(declare-fun Unit!66536 () Unit!66525)

(assert (=> b!4297557 (= lt!1519095 Unit!66536)))

(declare-fun containsKey!216 (List!48015 K!8974) Bool)

(assert (=> b!4297557 (not (containsKey!216 call!294987 k0!1716))))

(declare-fun lt!1519098 () Unit!66525)

(declare-fun Unit!66537 () Unit!66525)

(assert (=> b!4297557 (= lt!1519098 Unit!66537)))

(declare-fun lt!1519144 () Unit!66525)

(declare-fun lt!1519115 () Unit!66525)

(assert (=> b!4297557 (= lt!1519144 lt!1519115)))

(assert (=> b!4297557 (noDuplicateKeys!139 call!294987)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!116 (List!48015 K!8974) Unit!66525)

(assert (=> b!4297557 (= lt!1519115 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!116 lt!1519112 k0!1716))))

(declare-fun lt!1519120 () Unit!66525)

(declare-fun lt!1519114 () Unit!66525)

(assert (=> b!4297557 (= lt!1519120 lt!1519114)))

(assert (=> b!4297557 call!294983))

(assert (=> b!4297557 (= lt!1519114 call!294970)))

(declare-fun lt!1519149 () Unit!66525)

(declare-fun lt!1519097 () Unit!66525)

(assert (=> b!4297557 (= lt!1519149 lt!1519097)))

(assert (=> b!4297557 call!294984))

(assert (=> b!4297557 (= lt!1519097 call!294978)))

(declare-fun Unit!66538 () Unit!66525)

(assert (=> b!4297557 (= e!2670929 Unit!66538)))

(declare-fun bm!294983 () Bool)

(assert (=> bm!294983 (= call!294974 (extractMap!259 (toList!2156 lt!1519100)))))

(declare-fun bm!294984 () Bool)

(declare-fun +!139 (ListLongMap!781 tuple2!45712) ListLongMap!781)

(assert (=> bm!294984 (= call!294980 (+!139 lt!1519100 (ite c!731084 (tuple2!45713 lt!1519123 lt!1519103) (tuple2!45713 lt!1519133 lt!1519131))))))

(declare-fun bm!294985 () Bool)

(assert (=> bm!294985 (= call!294967 (map!9846 hm!64))))

(declare-fun b!4297558 () Bool)

(declare-fun Unit!66539 () Unit!66525)

(assert (=> b!4297558 (= e!2670927 Unit!66539)))

(declare-fun bm!294986 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!89 (ListLongMap!781 (_ BitVec 64) List!48015 Hashable!4407) Unit!66525)

(assert (=> bm!294986 (= call!294993 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!89 lt!1519100 (ite c!731084 lt!1519123 lt!1519133) (ite c!731084 lt!1519103 lt!1519131) (hashF!6439 hm!64)))))

(declare-fun bm!294987 () Bool)

(assert (=> bm!294987 (= call!294977 (contains!9810 (ite c!731084 lt!1519101 lt!1519148) k0!1716))))

(declare-fun b!4297559 () Bool)

(assert (=> b!4297559 (= e!2670930 e!2670922)))

(declare-fun c!731081 () Bool)

(assert (=> b!4297559 (= c!731081 (_1!26134 lt!1519127))))

(declare-fun bm!294988 () Bool)

(declare-fun eq!84 (ListMap!1423 ListMap!1423) Bool)

(assert (=> bm!294988 (= call!294989 (eq!84 call!294966 e!2670925))))

(declare-fun c!731086 () Bool)

(assert (=> bm!294988 (= c!731086 c!731081)))

(assert (=> b!4297560 call!294985))

(declare-fun lt!1519099 () Unit!66525)

(declare-fun Unit!66540 () Unit!66525)

(assert (=> b!4297560 (= lt!1519099 Unit!66540)))

(assert (=> b!4297560 (contains!9810 call!294976 k0!1716)))

(declare-fun lt!1519105 () Unit!66525)

(declare-fun lt!1519122 () Unit!66525)

(assert (=> b!4297560 (= lt!1519105 lt!1519122)))

(assert (=> b!4297560 (= (contains!9810 lt!1519116 k0!1716) call!294977)))

(assert (=> b!4297560 (= lt!1519122 call!294994)))

(assert (=> b!4297560 (= lt!1519148 call!294976)))

(assert (=> b!4297560 (= lt!1519116 call!294991)))

(declare-fun lt!1519128 () Unit!66525)

(declare-fun Unit!66541 () Unit!66525)

(assert (=> b!4297560 (= lt!1519128 Unit!66541)))

(assert (=> b!4297560 call!294979))

(declare-fun lt!1519145 () Unit!66525)

(declare-fun Unit!66542 () Unit!66525)

(assert (=> b!4297560 (= lt!1519145 Unit!66542)))

(assert (=> b!4297560 call!294990))

(declare-fun lt!1519117 () Unit!66525)

(declare-fun Unit!66543 () Unit!66525)

(assert (=> b!4297560 (= lt!1519117 Unit!66543)))

(assert (=> b!4297560 call!294975))

(declare-fun lt!1519146 () Unit!66525)

(declare-fun lt!1519142 () Unit!66525)

(assert (=> b!4297560 (= lt!1519146 lt!1519142)))

(assert (=> b!4297560 call!294981))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!23 (ListLongMap!781 (_ BitVec 64) List!48015 K!8974 V!9176 Hashable!4407) Unit!66525)

(assert (=> b!4297560 (= lt!1519142 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!23 lt!1519100 lt!1519133 lt!1519131 k0!1716 v!9471 (hashF!6439 hm!64)))))

(declare-fun lt!1519129 () Unit!66525)

(declare-fun lt!1519104 () Unit!66525)

(assert (=> b!4297560 (= lt!1519129 lt!1519104)))

(assert (=> b!4297560 e!2670924))

(declare-fun res!1761366 () Bool)

(assert (=> b!4297560 (=> (not res!1761366) (not e!2670924))))

(assert (=> b!4297560 (= res!1761366 call!294986)))

(assert (=> b!4297560 (= lt!1519111 call!294980)))

(assert (=> b!4297560 (= lt!1519104 call!294993)))

(declare-fun lt!1519125 () Unit!66525)

(assert (=> b!4297560 (= lt!1519125 e!2670927)))

(declare-fun c!731082 () Bool)

(declare-fun isEmpty!28035 (List!48015) Bool)

(assert (=> b!4297560 (= c!731082 (not (isEmpty!28035 lt!1519106)))))

(declare-fun Unit!66544 () Unit!66525)

(assert (=> b!4297560 (= e!2670923 Unit!66544)))

(declare-fun bm!294989 () Bool)

(declare-fun apply!10864 (MutLongMap!4491 (_ BitVec 64)) List!48015)

(assert (=> bm!294989 (= call!294968 (apply!10864 (v!41822 (underlying!9212 hm!64)) (ite c!731084 lt!1519123 lt!1519133)))))

(declare-fun b!4297561 () Bool)

(assert (=> b!4297561 (= call!294995 lt!1519137)))

(declare-fun lt!1519138 () Unit!66525)

(declare-fun Unit!66545 () Unit!66525)

(assert (=> b!4297561 (= lt!1519138 Unit!66545)))

(assert (=> b!4297561 call!294969))

(declare-fun Unit!66546 () Unit!66525)

(assert (=> b!4297561 (= e!2670929 Unit!66546)))

(declare-fun bm!294990 () Bool)

(assert (=> bm!294990 (= call!294979 (eq!84 (ite c!731084 call!294995 call!294991) call!294976))))

(declare-fun bm!294991 () Bool)

(assert (=> bm!294991 (= call!294981 (eq!84 call!294972 call!294992))))

(declare-fun b!4297562 () Bool)

(assert (=> b!4297562 (= e!2670925 call!294967)))

(assert (= (and d!1266332 c!731084) b!4297554))

(assert (= (and d!1266332 (not c!731084)) b!4297547))

(assert (= (and b!4297554 c!731083) b!4297557))

(assert (= (and b!4297554 (not c!731083)) b!4297561))

(assert (= (and b!4297557 res!1761365) b!4297545))

(assert (= (or b!4297557 b!4297561) bm!294969))

(assert (= (and b!4297547 c!731080) b!4297556))

(assert (= (and b!4297547 (not c!731080)) b!4297550))

(assert (= (and b!4297547 c!731085) b!4297560))

(assert (= (and b!4297547 (not c!731085)) b!4297549))

(assert (= (and b!4297560 c!731082) b!4297544))

(assert (= (and b!4297560 (not c!731082)) b!4297558))

(assert (= (and b!4297560 res!1761366) b!4297546))

(assert (= (or b!4297560 b!4297549) bm!294977))

(assert (= (or b!4297557 b!4297544) bm!294975))

(assert (= (or b!4297554 b!4297547) bm!294962))

(assert (= (or b!4297557 b!4297560) bm!294967))

(assert (= (or b!4297557 b!4297544) bm!294966))

(assert (= (or b!4297557 b!4297560) bm!294986))

(assert (= (or b!4297557 b!4297560) bm!294984))

(assert (= (or b!4297557 b!4297560) bm!294987))

(assert (= (or b!4297557 b!4297560) bm!294979))

(assert (= (or b!4297557 b!4297544) bm!294976))

(assert (= (or bm!294969 bm!294977) bm!294982))

(assert (= (or b!4297561 b!4297549) bm!294978))

(assert (= (or b!4297554 b!4297557 b!4297544) bm!294965))

(assert (= (or b!4297557 b!4297560) bm!294972))

(assert (= (or b!4297557 b!4297560) bm!294970))

(assert (= (or b!4297554 b!4297547) bm!294974))

(assert (= (or b!4297554 b!4297556) bm!294989))

(assert (= (or b!4297557 b!4297560) bm!294968))

(assert (= (or b!4297545 b!4297546) bm!294981))

(assert (= (or b!4297557 b!4297560) bm!294983))

(assert (= (or b!4297557 b!4297560) bm!294990))

(assert (= (or b!4297557 b!4297560) bm!294973))

(assert (= (or b!4297557 b!4297560) bm!294971))

(assert (= (or b!4297557 b!4297560) bm!294963))

(assert (= (or b!4297557 b!4297560) bm!294964))

(assert (= (or b!4297557 b!4297544) bm!294961))

(assert (= (or b!4297557 b!4297560) bm!294991))

(assert (= (and d!1266332 res!1761367) b!4297552))

(assert (= (and b!4297552 res!1761369) b!4297559))

(assert (= (and b!4297559 c!731081) b!4297551))

(assert (= (and b!4297559 (not c!731081)) b!4297555))

(assert (= (and b!4297551 res!1761368) b!4297553))

(assert (= (or b!4297551 b!4297553 b!4297555) bm!294980))

(assert (= (or b!4297553 b!4297555) bm!294985))

(assert (= (or b!4297553 b!4297555) bm!294988))

(assert (= (and bm!294988 c!731086) b!4297548))

(assert (= (and bm!294988 (not c!731086)) b!4297562))

(declare-fun m!4889617 () Bool)

(assert (=> bm!294987 m!4889617))

(declare-fun m!4889619 () Bool)

(assert (=> bm!294981 m!4889619))

(declare-fun m!4889621 () Bool)

(assert (=> bm!294962 m!4889621))

(declare-fun m!4889623 () Bool)

(assert (=> d!1266332 m!4889623))

(assert (=> d!1266332 m!4889603))

(assert (=> d!1266332 m!4889595))

(assert (=> d!1266332 m!4889597))

(assert (=> bm!294985 m!4889595))

(declare-fun m!4889625 () Bool)

(assert (=> b!4297552 m!4889625))

(declare-fun m!4889627 () Bool)

(assert (=> bm!294976 m!4889627))

(declare-fun m!4889629 () Bool)

(assert (=> bm!294966 m!4889629))

(declare-fun m!4889631 () Bool)

(assert (=> b!4297548 m!4889631))

(declare-fun m!4889633 () Bool)

(assert (=> bm!294961 m!4889633))

(declare-fun m!4889635 () Bool)

(assert (=> bm!294975 m!4889635))

(declare-fun m!4889637 () Bool)

(assert (=> bm!294963 m!4889637))

(declare-fun m!4889639 () Bool)

(assert (=> bm!294970 m!4889639))

(declare-fun m!4889641 () Bool)

(assert (=> bm!294984 m!4889641))

(declare-fun m!4889643 () Bool)

(assert (=> bm!294978 m!4889643))

(declare-fun m!4889645 () Bool)

(assert (=> bm!294989 m!4889645))

(declare-fun m!4889647 () Bool)

(assert (=> bm!294990 m!4889647))

(declare-fun m!4889649 () Bool)

(assert (=> bm!294974 m!4889649))

(declare-fun m!4889651 () Bool)

(assert (=> bm!294988 m!4889651))

(declare-fun m!4889653 () Bool)

(assert (=> bm!294979 m!4889653))

(declare-fun m!4889655 () Bool)

(assert (=> bm!294973 m!4889655))

(declare-fun m!4889657 () Bool)

(assert (=> b!4297557 m!4889657))

(declare-fun m!4889659 () Bool)

(assert (=> b!4297557 m!4889659))

(declare-fun m!4889661 () Bool)

(assert (=> b!4297557 m!4889661))

(declare-fun m!4889663 () Bool)

(assert (=> b!4297557 m!4889663))

(declare-fun m!4889665 () Bool)

(assert (=> b!4297557 m!4889665))

(declare-fun m!4889667 () Bool)

(assert (=> bm!294991 m!4889667))

(declare-fun m!4889669 () Bool)

(assert (=> bm!294971 m!4889669))

(declare-fun m!4889671 () Bool)

(assert (=> b!4297560 m!4889671))

(declare-fun m!4889673 () Bool)

(assert (=> b!4297560 m!4889673))

(declare-fun m!4889675 () Bool)

(assert (=> b!4297560 m!4889675))

(declare-fun m!4889677 () Bool)

(assert (=> b!4297560 m!4889677))

(declare-fun m!4889679 () Bool)

(assert (=> bm!294968 m!4889679))

(declare-fun m!4889681 () Bool)

(assert (=> bm!294982 m!4889681))

(declare-fun m!4889683 () Bool)

(assert (=> bm!294967 m!4889683))

(declare-fun m!4889685 () Bool)

(assert (=> bm!294983 m!4889685))

(declare-fun m!4889687 () Bool)

(assert (=> b!4297551 m!4889687))

(declare-fun m!4889689 () Bool)

(assert (=> bm!294980 m!4889689))

(declare-fun m!4889691 () Bool)

(assert (=> bm!294964 m!4889691))

(declare-fun m!4889693 () Bool)

(assert (=> bm!294986 m!4889693))

(declare-fun m!4889695 () Bool)

(assert (=> bm!294965 m!4889695))

(declare-fun m!4889697 () Bool)

(assert (=> bm!294972 m!4889697))

(declare-fun m!4889699 () Bool)

(assert (=> b!4297547 m!4889699))

(assert (=> b!4297489 d!1266332))

(declare-fun d!1266334 () Bool)

(declare-fun e!2670934 () Bool)

(assert (=> d!1266334 e!2670934))

(declare-fun res!1761375 () Bool)

(assert (=> d!1266334 (=> (not res!1761375) (not e!2670934))))

(declare-fun lt!1519159 () ListMap!1423)

(assert (=> d!1266334 (= res!1761375 (contains!9810 lt!1519159 (_1!26133 lt!1518981)))))

(declare-fun lt!1519160 () List!48015)

(assert (=> d!1266334 (= lt!1519159 (ListMap!1424 lt!1519160))))

(declare-fun lt!1519158 () Unit!66525)

(declare-fun lt!1519161 () Unit!66525)

(assert (=> d!1266334 (= lt!1519158 lt!1519161)))

(declare-datatypes ((Option!10151 0))(
  ( (None!10150) (Some!10150 (v!41824 V!9176)) )
))
(declare-fun getValueByKey!200 (List!48015 K!8974) Option!10151)

(assert (=> d!1266334 (= (getValueByKey!200 lt!1519160 (_1!26133 lt!1518981)) (Some!10150 (_2!26133 lt!1518981)))))

(declare-fun lemmaContainsTupThenGetReturnValue!31 (List!48015 K!8974 V!9176) Unit!66525)

(assert (=> d!1266334 (= lt!1519161 (lemmaContainsTupThenGetReturnValue!31 lt!1519160 (_1!26133 lt!1518981) (_2!26133 lt!1518981)))))

(declare-fun insertNoDuplicatedKeys!6 (List!48015 K!8974 V!9176) List!48015)

(assert (=> d!1266334 (= lt!1519160 (insertNoDuplicatedKeys!6 (toList!2155 lt!1518978) (_1!26133 lt!1518981) (_2!26133 lt!1518981)))))

(assert (=> d!1266334 (= (+!138 lt!1518978 lt!1518981) lt!1519159)))

(declare-fun b!4297567 () Bool)

(declare-fun res!1761374 () Bool)

(assert (=> b!4297567 (=> (not res!1761374) (not e!2670934))))

(assert (=> b!4297567 (= res!1761374 (= (getValueByKey!200 (toList!2155 lt!1519159) (_1!26133 lt!1518981)) (Some!10150 (_2!26133 lt!1518981))))))

(declare-fun b!4297568 () Bool)

(declare-fun contains!9811 (List!48015 tuple2!45708) Bool)

(assert (=> b!4297568 (= e!2670934 (contains!9811 (toList!2155 lt!1519159) lt!1518981))))

(assert (= (and d!1266334 res!1761375) b!4297567))

(assert (= (and b!4297567 res!1761374) b!4297568))

(declare-fun m!4889701 () Bool)

(assert (=> d!1266334 m!4889701))

(declare-fun m!4889703 () Bool)

(assert (=> d!1266334 m!4889703))

(declare-fun m!4889705 () Bool)

(assert (=> d!1266334 m!4889705))

(declare-fun m!4889707 () Bool)

(assert (=> d!1266334 m!4889707))

(declare-fun m!4889709 () Bool)

(assert (=> b!4297567 m!4889709))

(declare-fun m!4889711 () Bool)

(assert (=> b!4297568 m!4889711))

(assert (=> b!4297489 d!1266334))

(declare-fun e!2670937 () Bool)

(declare-fun b!4297573 () Bool)

(declare-fun tp!1320184 () Bool)

(assert (=> b!4297573 (= e!2670937 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320184))))

(assert (=> b!4297484 (= tp!1320179 e!2670937)))

(assert (= (and b!4297484 ((_ is Cons!47891) (zeroValue!4750 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64))))))) b!4297573))

(declare-fun tp!1320185 () Bool)

(declare-fun b!4297574 () Bool)

(declare-fun e!2670938 () Bool)

(assert (=> b!4297574 (= e!2670938 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320185))))

(assert (=> b!4297484 (= tp!1320174 e!2670938)))

(assert (= (and b!4297484 ((_ is Cons!47891) (minValue!4750 (v!41821 (underlying!9211 (v!41822 (underlying!9212 hm!64))))))) b!4297574))

(declare-fun mapIsEmpty!20184 () Bool)

(declare-fun mapRes!20184 () Bool)

(assert (=> mapIsEmpty!20184 mapRes!20184))

(declare-fun mapNonEmpty!20184 () Bool)

(declare-fun tp!1320194 () Bool)

(declare-fun e!2670944 () Bool)

(assert (=> mapNonEmpty!20184 (= mapRes!20184 (and tp!1320194 e!2670944))))

(declare-fun mapKey!20184 () (_ BitVec 32))

(declare-fun mapRest!20184 () (Array (_ BitVec 32) List!48015))

(declare-fun mapValue!20184 () List!48015)

(assert (=> mapNonEmpty!20184 (= mapRest!20181 (store mapRest!20184 mapKey!20184 mapValue!20184))))

(declare-fun condMapEmpty!20184 () Bool)

(declare-fun mapDefault!20184 () List!48015)

(assert (=> mapNonEmpty!20181 (= condMapEmpty!20184 (= mapRest!20181 ((as const (Array (_ BitVec 32) List!48015)) mapDefault!20184)))))

(declare-fun e!2670943 () Bool)

(assert (=> mapNonEmpty!20181 (= tp!1320181 (and e!2670943 mapRes!20184))))

(declare-fun tp!1320193 () Bool)

(declare-fun b!4297582 () Bool)

(assert (=> b!4297582 (= e!2670943 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320193))))

(declare-fun tp!1320192 () Bool)

(declare-fun b!4297581 () Bool)

(assert (=> b!4297581 (= e!2670944 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320192))))

(assert (= (and mapNonEmpty!20181 condMapEmpty!20184) mapIsEmpty!20184))

(assert (= (and mapNonEmpty!20181 (not condMapEmpty!20184)) mapNonEmpty!20184))

(assert (= (and mapNonEmpty!20184 ((_ is Cons!47891) mapValue!20184)) b!4297581))

(assert (= (and mapNonEmpty!20181 ((_ is Cons!47891) mapDefault!20184)) b!4297582))

(declare-fun m!4889713 () Bool)

(assert (=> mapNonEmpty!20184 m!4889713))

(declare-fun e!2670945 () Bool)

(declare-fun tp!1320195 () Bool)

(declare-fun b!4297583 () Bool)

(assert (=> b!4297583 (= e!2670945 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320195))))

(assert (=> mapNonEmpty!20181 (= tp!1320177 e!2670945)))

(assert (= (and mapNonEmpty!20181 ((_ is Cons!47891) mapValue!20181)) b!4297583))

(declare-fun e!2670946 () Bool)

(declare-fun b!4297584 () Bool)

(declare-fun tp!1320196 () Bool)

(assert (=> b!4297584 (= e!2670946 (and tp_is_empty!23137 tp_is_empty!23139 tp!1320196))))

(assert (=> b!4297486 (= tp!1320180 e!2670946)))

(assert (= (and b!4297486 ((_ is Cons!47891) mapDefault!20181)) b!4297584))

(declare-fun b_lambda!126157 () Bool)

(assert (= b_lambda!126155 (or (and start!412596 b_free!127847) b_lambda!126157)))

(check-sat (not bm!294961) (not b!4297574) (not bm!294967) (not b!4297560) (not bm!294990) (not b!4297498) (not b!4297583) (not bm!294981) (not b!4297573) (not bm!294971) (not bm!294974) (not bm!294978) (not b!4297567) (not b!4297581) (not bm!294964) (not bm!294976) (not b!4297551) (not bm!294973) (not bm!294991) tp_is_empty!23137 (not b!4297499) (not b_lambda!126157) (not bm!294975) (not bm!294962) b_and!339071 (not d!1266334) (not bm!294972) (not bm!294965) (not b!4297557) (not b!4297548) (not bm!294982) (not bm!294980) (not bm!294986) (not b_next!128551) (not bm!294987) (not bm!294966) (not d!1266330) (not bm!294983) (not bm!294970) b_and!339067 (not bm!294968) (not bm!294963) (not b_next!128549) b_and!339075 (not bm!294984) (not b_lambda!126153) (not bm!294989) (not b!4297582) (not bm!294985) (not b!4297552) (not bm!294988) (not mapNonEmpty!20184) (not bm!294979) tp_is_empty!23139 (not d!1266326) (not b_next!128553) (not b!4297505) (not b!4297547) (not d!1266332) (not b!4297568) (not b!4297584))
(check-sat b_and!339071 (not b_next!128551) b_and!339067 (not b_next!128553) (not b_next!128549) b_and!339075)
