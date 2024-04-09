; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12526 () Bool)

(assert start!12526)

(declare-fun b!107508 () Bool)

(declare-fun b_free!2537 () Bool)

(declare-fun b_next!2537 () Bool)

(assert (=> b!107508 (= b_free!2537 (not b_next!2537))))

(declare-fun tp!9941 () Bool)

(declare-fun b_and!6637 () Bool)

(assert (=> b!107508 (= tp!9941 b_and!6637)))

(declare-fun b!107515 () Bool)

(declare-fun b_free!2539 () Bool)

(declare-fun b_next!2539 () Bool)

(assert (=> b!107515 (= b_free!2539 (not b_next!2539))))

(declare-fun tp!9944 () Bool)

(declare-fun b_and!6639 () Bool)

(assert (=> b!107515 (= tp!9944 b_and!6639)))

(declare-fun b!107503 () Bool)

(declare-fun res!53374 () Bool)

(declare-fun e!69965 () Bool)

(assert (=> b!107503 (=> (not res!53374) (not e!69965))))

(declare-datatypes ((V!3227 0))(
  ( (V!3228 (val!1387 Int)) )
))
(declare-datatypes ((array!4362 0))(
  ( (array!4363 (arr!2068 (Array (_ BitVec 32) (_ BitVec 64))) (size!2324 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!999 0))(
  ( (ValueCellFull!999 (v!2907 V!3227)) (EmptyCell!999) )
))
(declare-datatypes ((array!4364 0))(
  ( (array!4365 (arr!2069 (Array (_ BitVec 32) ValueCell!999)) (size!2325 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!906 0))(
  ( (LongMapFixedSize!907 (defaultEntry!2603 Int) (mask!6759 (_ BitVec 32)) (extraKeys!2404 (_ BitVec 32)) (zeroValue!2476 V!3227) (minValue!2476 V!3227) (_size!502 (_ BitVec 32)) (_keys!4313 array!4362) (_values!2586 array!4364) (_vacant!502 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!906)

(declare-fun valid!412 (LongMapFixedSize!906) Bool)

(assert (=> b!107503 (= res!53374 (valid!412 newMap!16))))

(declare-fun b!107504 () Bool)

(declare-fun e!69968 () Bool)

(declare-fun tp_is_empty!2685 () Bool)

(assert (=> b!107504 (= e!69968 tp_is_empty!2685)))

(declare-fun b!107505 () Bool)

(declare-fun e!69956 () Bool)

(assert (=> b!107505 (= e!69956 tp_is_empty!2685)))

(declare-fun b!107506 () Bool)

(declare-fun e!69953 () Bool)

(assert (=> b!107506 (= e!69965 e!69953)))

(declare-fun res!53376 () Bool)

(assert (=> b!107506 (=> (not res!53376) (not e!69953))))

(declare-datatypes ((tuple2!2414 0))(
  ( (tuple2!2415 (_1!1217 (_ BitVec 64)) (_2!1217 V!3227)) )
))
(declare-datatypes ((List!1644 0))(
  ( (Nil!1641) (Cons!1640 (h!2238 tuple2!2414) (t!5760 List!1644)) )
))
(declare-datatypes ((ListLongMap!1587 0))(
  ( (ListLongMap!1588 (toList!809 List!1644)) )
))
(declare-fun lt!55142 () ListLongMap!1587)

(declare-fun lt!55138 () ListLongMap!1587)

(assert (=> b!107506 (= res!53376 (= lt!55142 lt!55138))))

(declare-fun map!1286 (LongMapFixedSize!906) ListLongMap!1587)

(assert (=> b!107506 (= lt!55138 (map!1286 newMap!16))))

(declare-datatypes ((Cell!708 0))(
  ( (Cell!709 (v!2908 LongMapFixedSize!906)) )
))
(declare-datatypes ((LongMap!708 0))(
  ( (LongMap!709 (underlying!365 Cell!708)) )
))
(declare-fun thiss!992 () LongMap!708)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!485 (array!4362 array!4364 (_ BitVec 32) (_ BitVec 32) V!3227 V!3227 (_ BitVec 32) Int) ListLongMap!1587)

(assert (=> b!107506 (= lt!55142 (getCurrentListMap!485 (_keys!4313 (v!2908 (underlying!365 thiss!992))) (_values!2586 (v!2908 (underlying!365 thiss!992))) (mask!6759 (v!2908 (underlying!365 thiss!992))) (extraKeys!2404 (v!2908 (underlying!365 thiss!992))) (zeroValue!2476 (v!2908 (underlying!365 thiss!992))) (minValue!2476 (v!2908 (underlying!365 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2603 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun b!107507 () Bool)

(declare-fun e!69966 () Bool)

(declare-fun e!69958 () Bool)

(assert (=> b!107507 (= e!69966 e!69958)))

(declare-fun mapNonEmpty!3956 () Bool)

(declare-fun mapRes!3955 () Bool)

(declare-fun tp!9942 () Bool)

(assert (=> mapNonEmpty!3956 (= mapRes!3955 (and tp!9942 e!69968))))

(declare-fun mapRest!3956 () (Array (_ BitVec 32) ValueCell!999))

(declare-fun mapValue!3956 () ValueCell!999)

(declare-fun mapKey!3955 () (_ BitVec 32))

(assert (=> mapNonEmpty!3956 (= (arr!2069 (_values!2586 (v!2908 (underlying!365 thiss!992)))) (store mapRest!3956 mapKey!3955 mapValue!3956))))

(declare-fun e!69960 () Bool)

(declare-fun e!69955 () Bool)

(declare-fun array_inv!1245 (array!4362) Bool)

(declare-fun array_inv!1246 (array!4364) Bool)

(assert (=> b!107508 (= e!69955 (and tp!9941 tp_is_empty!2685 (array_inv!1245 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) (array_inv!1246 (_values!2586 (v!2908 (underlying!365 thiss!992)))) e!69960))))

(declare-fun b!107509 () Bool)

(declare-fun e!69961 () Bool)

(declare-fun e!69957 () Bool)

(assert (=> b!107509 (= e!69961 (not e!69957))))

(declare-fun res!53371 () Bool)

(assert (=> b!107509 (=> res!53371 e!69957)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!107509 (= res!53371 (not (validMask!0 (mask!6759 (v!2908 (underlying!365 thiss!992))))))))

(declare-fun lt!55146 () ListLongMap!1587)

(declare-fun lt!55137 () tuple2!2414)

(declare-fun lt!55145 () tuple2!2414)

(declare-fun +!147 (ListLongMap!1587 tuple2!2414) ListLongMap!1587)

(assert (=> b!107509 (= (+!147 (+!147 lt!55146 lt!55137) lt!55145) (+!147 (+!147 lt!55146 lt!55145) lt!55137))))

(assert (=> b!107509 (= lt!55145 (tuple2!2415 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2476 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun lt!55147 () V!3227)

(assert (=> b!107509 (= lt!55137 (tuple2!2415 (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) lt!55147))))

(declare-datatypes ((Unit!3332 0))(
  ( (Unit!3333) )
))
(declare-fun lt!55143 () Unit!3332)

(declare-fun addCommutativeForDiffKeys!59 (ListLongMap!1587 (_ BitVec 64) V!3227 (_ BitVec 64) V!3227) Unit!3332)

(assert (=> b!107509 (= lt!55143 (addCommutativeForDiffKeys!59 lt!55146 (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) lt!55147 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2476 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!114 (array!4362 array!4364 (_ BitVec 32) (_ BitVec 32) V!3227 V!3227 (_ BitVec 32) Int) ListLongMap!1587)

(assert (=> b!107509 (= lt!55146 (getCurrentListMapNoExtraKeys!114 (_keys!4313 (v!2908 (underlying!365 thiss!992))) (_values!2586 (v!2908 (underlying!365 thiss!992))) (mask!6759 (v!2908 (underlying!365 thiss!992))) (extraKeys!2404 (v!2908 (underlying!365 thiss!992))) (zeroValue!2476 (v!2908 (underlying!365 thiss!992))) (minValue!2476 (v!2908 (underlying!365 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2603 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun b!107510 () Bool)

(declare-fun e!69964 () Unit!3332)

(declare-fun Unit!3334 () Unit!3332)

(assert (=> b!107510 (= e!69964 Unit!3334)))

(declare-fun mapIsEmpty!3955 () Bool)

(declare-fun mapRes!3956 () Bool)

(assert (=> mapIsEmpty!3955 mapRes!3956))

(declare-fun b!107511 () Bool)

(declare-fun e!69954 () Bool)

(assert (=> b!107511 (= e!69953 e!69954)))

(declare-fun res!53375 () Bool)

(assert (=> b!107511 (=> (not res!53375) (not e!69954))))

(assert (=> b!107511 (= res!53375 (and (not (= (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1345 (ValueCell!999 V!3227) V!3227)

(declare-fun dynLambda!389 (Int (_ BitVec 64)) V!3227)

(assert (=> b!107511 (= lt!55147 (get!1345 (select (arr!2069 (_values!2586 (v!2908 (underlying!365 thiss!992)))) from!355) (dynLambda!389 (defaultEntry!2603 (v!2908 (underlying!365 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!107512 () Bool)

(declare-fun e!69963 () Bool)

(assert (=> b!107512 (= e!69963 tp_is_empty!2685)))

(declare-fun b!107513 () Bool)

(assert (=> b!107513 (= e!69954 e!69961)))

(declare-fun res!53373 () Bool)

(assert (=> b!107513 (=> (not res!53373) (not e!69961))))

(declare-datatypes ((tuple2!2416 0))(
  ( (tuple2!2417 (_1!1218 Bool) (_2!1218 LongMapFixedSize!906)) )
))
(declare-fun lt!55144 () tuple2!2416)

(assert (=> b!107513 (= res!53373 (and (_1!1218 lt!55144) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!55139 () Unit!3332)

(assert (=> b!107513 (= lt!55139 e!69964)))

(declare-fun c!18875 () Bool)

(declare-fun contains!832 (ListLongMap!1587 (_ BitVec 64)) Bool)

(assert (=> b!107513 (= c!18875 (contains!832 lt!55138 (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355)))))

(declare-fun update!159 (LongMapFixedSize!906 (_ BitVec 64) V!3227) tuple2!2416)

(assert (=> b!107513 (= lt!55144 (update!159 newMap!16 (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) lt!55147))))

(declare-fun b!107514 () Bool)

(assert (=> b!107514 (= e!69957 (or (not (= (size!2325 (_values!2586 (v!2908 (underlying!365 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6759 (v!2908 (underlying!365 thiss!992)))))) (not (= (size!2324 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) (size!2325 (_values!2586 (v!2908 (underlying!365 thiss!992)))))) (bvsge (mask!6759 (v!2908 (underlying!365 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun e!69970 () Bool)

(declare-fun e!69959 () Bool)

(assert (=> b!107515 (= e!69970 (and tp!9944 tp_is_empty!2685 (array_inv!1245 (_keys!4313 newMap!16)) (array_inv!1246 (_values!2586 newMap!16)) e!69959))))

(declare-fun b!107516 () Bool)

(declare-fun e!69967 () Bool)

(assert (=> b!107516 (= e!69967 tp_is_empty!2685)))

(declare-fun mapIsEmpty!3956 () Bool)

(assert (=> mapIsEmpty!3956 mapRes!3955))

(declare-fun mapNonEmpty!3955 () Bool)

(declare-fun tp!9943 () Bool)

(assert (=> mapNonEmpty!3955 (= mapRes!3956 (and tp!9943 e!69963))))

(declare-fun mapValue!3955 () ValueCell!999)

(declare-fun mapKey!3956 () (_ BitVec 32))

(declare-fun mapRest!3955 () (Array (_ BitVec 32) ValueCell!999))

(assert (=> mapNonEmpty!3955 (= (arr!2069 (_values!2586 newMap!16)) (store mapRest!3955 mapKey!3956 mapValue!3955))))

(declare-fun res!53372 () Bool)

(assert (=> start!12526 (=> (not res!53372) (not e!69965))))

(declare-fun valid!413 (LongMap!708) Bool)

(assert (=> start!12526 (= res!53372 (valid!413 thiss!992))))

(assert (=> start!12526 e!69965))

(assert (=> start!12526 e!69966))

(assert (=> start!12526 true))

(assert (=> start!12526 e!69970))

(declare-fun b!107517 () Bool)

(declare-fun res!53378 () Bool)

(assert (=> b!107517 (=> (not res!53378) (not e!69965))))

(assert (=> b!107517 (= res!53378 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2324 (_keys!4313 (v!2908 (underlying!365 thiss!992)))))))))

(declare-fun b!107518 () Bool)

(declare-fun Unit!3335 () Unit!3332)

(assert (=> b!107518 (= e!69964 Unit!3335)))

(declare-fun lt!55148 () Unit!3332)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!113 (array!4362 array!4364 (_ BitVec 32) (_ BitVec 32) V!3227 V!3227 (_ BitVec 64) (_ BitVec 32) Int) Unit!3332)

(assert (=> b!107518 (= lt!55148 (lemmaListMapContainsThenArrayContainsFrom!113 (_keys!4313 (v!2908 (underlying!365 thiss!992))) (_values!2586 (v!2908 (underlying!365 thiss!992))) (mask!6759 (v!2908 (underlying!365 thiss!992))) (extraKeys!2404 (v!2908 (underlying!365 thiss!992))) (zeroValue!2476 (v!2908 (underlying!365 thiss!992))) (minValue!2476 (v!2908 (underlying!365 thiss!992))) (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2603 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!107518 (arrayContainsKey!0 (_keys!4313 (v!2908 (underlying!365 thiss!992))) (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!55140 () Unit!3332)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4362 (_ BitVec 32) (_ BitVec 32)) Unit!3332)

(assert (=> b!107518 (= lt!55140 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4313 (v!2908 (underlying!365 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1645 0))(
  ( (Nil!1642) (Cons!1641 (h!2239 (_ BitVec 64)) (t!5761 List!1645)) )
))
(declare-fun arrayNoDuplicates!0 (array!4362 (_ BitVec 32) List!1645) Bool)

(assert (=> b!107518 (arrayNoDuplicates!0 (_keys!4313 (v!2908 (underlying!365 thiss!992))) from!355 Nil!1642)))

(declare-fun lt!55141 () Unit!3332)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4362 (_ BitVec 32) (_ BitVec 64) List!1645) Unit!3332)

(assert (=> b!107518 (= lt!55141 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4313 (v!2908 (underlying!365 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) (Cons!1641 (select (arr!2068 (_keys!4313 (v!2908 (underlying!365 thiss!992)))) from!355) Nil!1642)))))

(assert (=> b!107518 false))

(declare-fun b!107519 () Bool)

(declare-fun res!53377 () Bool)

(assert (=> b!107519 (=> (not res!53377) (not e!69965))))

(assert (=> b!107519 (= res!53377 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6759 newMap!16)) (_size!502 (v!2908 (underlying!365 thiss!992)))))))

(declare-fun b!107520 () Bool)

(assert (=> b!107520 (= e!69958 e!69955)))

(declare-fun b!107521 () Bool)

(assert (=> b!107521 (= e!69959 (and e!69967 mapRes!3956))))

(declare-fun condMapEmpty!3956 () Bool)

(declare-fun mapDefault!3955 () ValueCell!999)

(assert (=> b!107521 (= condMapEmpty!3956 (= (arr!2069 (_values!2586 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!999)) mapDefault!3955)))))

(declare-fun b!107522 () Bool)

(assert (=> b!107522 (= e!69960 (and e!69956 mapRes!3955))))

(declare-fun condMapEmpty!3955 () Bool)

(declare-fun mapDefault!3956 () ValueCell!999)

(assert (=> b!107522 (= condMapEmpty!3955 (= (arr!2069 (_values!2586 (v!2908 (underlying!365 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!999)) mapDefault!3956)))))

(assert (= (and start!12526 res!53372) b!107517))

(assert (= (and b!107517 res!53378) b!107503))

(assert (= (and b!107503 res!53374) b!107519))

(assert (= (and b!107519 res!53377) b!107506))

(assert (= (and b!107506 res!53376) b!107511))

(assert (= (and b!107511 res!53375) b!107513))

(assert (= (and b!107513 c!18875) b!107518))

(assert (= (and b!107513 (not c!18875)) b!107510))

(assert (= (and b!107513 res!53373) b!107509))

(assert (= (and b!107509 (not res!53371)) b!107514))

(assert (= (and b!107522 condMapEmpty!3955) mapIsEmpty!3956))

(assert (= (and b!107522 (not condMapEmpty!3955)) mapNonEmpty!3956))

(get-info :version)

(assert (= (and mapNonEmpty!3956 ((_ is ValueCellFull!999) mapValue!3956)) b!107504))

(assert (= (and b!107522 ((_ is ValueCellFull!999) mapDefault!3956)) b!107505))

(assert (= b!107508 b!107522))

(assert (= b!107520 b!107508))

(assert (= b!107507 b!107520))

(assert (= start!12526 b!107507))

(assert (= (and b!107521 condMapEmpty!3956) mapIsEmpty!3955))

(assert (= (and b!107521 (not condMapEmpty!3956)) mapNonEmpty!3955))

(assert (= (and mapNonEmpty!3955 ((_ is ValueCellFull!999) mapValue!3955)) b!107512))

(assert (= (and b!107521 ((_ is ValueCellFull!999) mapDefault!3955)) b!107516))

(assert (= b!107515 b!107521))

(assert (= start!12526 b!107515))

(declare-fun b_lambda!4839 () Bool)

(assert (=> (not b_lambda!4839) (not b!107511)))

(declare-fun t!5757 () Bool)

(declare-fun tb!2081 () Bool)

(assert (=> (and b!107508 (= (defaultEntry!2603 (v!2908 (underlying!365 thiss!992))) (defaultEntry!2603 (v!2908 (underlying!365 thiss!992)))) t!5757) tb!2081))

(declare-fun result!3489 () Bool)

(assert (=> tb!2081 (= result!3489 tp_is_empty!2685)))

(assert (=> b!107511 t!5757))

(declare-fun b_and!6641 () Bool)

(assert (= b_and!6637 (and (=> t!5757 result!3489) b_and!6641)))

(declare-fun tb!2083 () Bool)

(declare-fun t!5759 () Bool)

(assert (=> (and b!107515 (= (defaultEntry!2603 newMap!16) (defaultEntry!2603 (v!2908 (underlying!365 thiss!992)))) t!5759) tb!2083))

(declare-fun result!3493 () Bool)

(assert (= result!3493 result!3489))

(assert (=> b!107511 t!5759))

(declare-fun b_and!6643 () Bool)

(assert (= b_and!6639 (and (=> t!5759 result!3493) b_and!6643)))

(declare-fun m!121009 () Bool)

(assert (=> b!107508 m!121009))

(declare-fun m!121011 () Bool)

(assert (=> b!107508 m!121011))

(declare-fun m!121013 () Bool)

(assert (=> b!107506 m!121013))

(declare-fun m!121015 () Bool)

(assert (=> b!107506 m!121015))

(declare-fun m!121017 () Bool)

(assert (=> mapNonEmpty!3955 m!121017))

(declare-fun m!121019 () Bool)

(assert (=> b!107509 m!121019))

(declare-fun m!121021 () Bool)

(assert (=> b!107509 m!121021))

(declare-fun m!121023 () Bool)

(assert (=> b!107509 m!121023))

(declare-fun m!121025 () Bool)

(assert (=> b!107509 m!121025))

(declare-fun m!121027 () Bool)

(assert (=> b!107509 m!121027))

(declare-fun m!121029 () Bool)

(assert (=> b!107509 m!121029))

(declare-fun m!121031 () Bool)

(assert (=> b!107509 m!121031))

(assert (=> b!107509 m!121029))

(assert (=> b!107509 m!121019))

(assert (=> b!107509 m!121025))

(declare-fun m!121033 () Bool)

(assert (=> b!107509 m!121033))

(declare-fun m!121035 () Bool)

(assert (=> b!107518 m!121035))

(declare-fun m!121037 () Bool)

(assert (=> b!107518 m!121037))

(assert (=> b!107518 m!121029))

(declare-fun m!121039 () Bool)

(assert (=> b!107518 m!121039))

(assert (=> b!107518 m!121029))

(assert (=> b!107518 m!121029))

(declare-fun m!121041 () Bool)

(assert (=> b!107518 m!121041))

(assert (=> b!107518 m!121029))

(declare-fun m!121043 () Bool)

(assert (=> b!107518 m!121043))

(declare-fun m!121045 () Bool)

(assert (=> b!107503 m!121045))

(assert (=> b!107511 m!121029))

(declare-fun m!121047 () Bool)

(assert (=> b!107511 m!121047))

(declare-fun m!121049 () Bool)

(assert (=> b!107511 m!121049))

(assert (=> b!107511 m!121047))

(assert (=> b!107511 m!121049))

(declare-fun m!121051 () Bool)

(assert (=> b!107511 m!121051))

(declare-fun m!121053 () Bool)

(assert (=> mapNonEmpty!3956 m!121053))

(assert (=> b!107513 m!121029))

(assert (=> b!107513 m!121029))

(declare-fun m!121055 () Bool)

(assert (=> b!107513 m!121055))

(assert (=> b!107513 m!121029))

(declare-fun m!121057 () Bool)

(assert (=> b!107513 m!121057))

(declare-fun m!121059 () Bool)

(assert (=> b!107515 m!121059))

(declare-fun m!121061 () Bool)

(assert (=> b!107515 m!121061))

(declare-fun m!121063 () Bool)

(assert (=> start!12526 m!121063))

(check-sat b_and!6641 (not b_lambda!4839) (not mapNonEmpty!3955) (not b!107511) (not b_next!2537) b_and!6643 (not mapNonEmpty!3956) (not b!107515) tp_is_empty!2685 (not b!107508) (not b!107503) (not b!107518) (not b!107506) (not b_next!2539) (not b!107513) (not b!107509) (not start!12526))
(check-sat b_and!6641 b_and!6643 (not b_next!2537) (not b_next!2539))
