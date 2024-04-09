; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12964 () Bool)

(assert start!12964)

(declare-fun b!112934 () Bool)

(declare-fun b_free!2585 () Bool)

(declare-fun b_next!2585 () Bool)

(assert (=> b!112934 (= b_free!2585 (not b_next!2585))))

(declare-fun tp!10108 () Bool)

(declare-fun b_and!6949 () Bool)

(assert (=> b!112934 (= tp!10108 b_and!6949)))

(declare-fun b!112921 () Bool)

(declare-fun b_free!2587 () Bool)

(declare-fun b_next!2587 () Bool)

(assert (=> b!112921 (= b_free!2587 (not b_next!2587))))

(declare-fun tp!10107 () Bool)

(declare-fun b_and!6951 () Bool)

(assert (=> b!112921 (= tp!10107 b_and!6951)))

(declare-fun b!112915 () Bool)

(declare-fun e!73402 () Bool)

(declare-fun tp_is_empty!2709 () Bool)

(assert (=> b!112915 (= e!73402 tp_is_empty!2709)))

(declare-fun b!112916 () Bool)

(declare-fun e!73411 () Bool)

(assert (=> b!112916 (= e!73411 tp_is_empty!2709)))

(declare-fun b!112917 () Bool)

(declare-fun e!73398 () Bool)

(declare-fun e!73413 () Bool)

(assert (=> b!112917 (= e!73398 e!73413)))

(declare-fun res!55672 () Bool)

(assert (=> b!112917 (=> (not res!55672) (not e!73413))))

(declare-datatypes ((V!3259 0))(
  ( (V!3260 (val!1399 Int)) )
))
(declare-datatypes ((array!4416 0))(
  ( (array!4417 (arr!2092 (Array (_ BitVec 32) (_ BitVec 64))) (size!2351 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1011 0))(
  ( (ValueCellFull!1011 (v!2957 V!3259)) (EmptyCell!1011) )
))
(declare-datatypes ((array!4418 0))(
  ( (array!4419 (arr!2093 (Array (_ BitVec 32) ValueCell!1011)) (size!2352 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!930 0))(
  ( (LongMapFixedSize!931 (defaultEntry!2661 Int) (mask!6845 (_ BitVec 32)) (extraKeys!2452 (_ BitVec 32)) (zeroValue!2529 V!3259) (minValue!2529 V!3259) (_size!514 (_ BitVec 32)) (_keys!4381 array!4416) (_values!2644 array!4418) (_vacant!514 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!730 0))(
  ( (Cell!731 (v!2958 LongMapFixedSize!930)) )
))
(declare-datatypes ((LongMap!730 0))(
  ( (LongMap!731 (underlying!376 Cell!730)) )
))
(declare-fun thiss!992 () LongMap!730)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!112917 (= res!55672 (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!58491 () V!3259)

(declare-fun get!1368 (ValueCell!1011 V!3259) V!3259)

(declare-fun dynLambda!395 (Int (_ BitVec 64)) V!3259)

(assert (=> b!112917 (= lt!58491 (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!112918 () Bool)

(declare-fun res!55677 () Bool)

(declare-fun e!73401 () Bool)

(assert (=> b!112918 (=> (not res!55677) (not e!73401))))

(declare-fun newMap!16 () LongMapFixedSize!930)

(declare-fun valid!428 (LongMapFixedSize!930) Bool)

(assert (=> b!112918 (= res!55677 (valid!428 newMap!16))))

(declare-fun b!112919 () Bool)

(declare-fun e!73414 () Bool)

(declare-fun e!73405 () Bool)

(declare-fun mapRes!4049 () Bool)

(assert (=> b!112919 (= e!73414 (and e!73405 mapRes!4049))))

(declare-fun condMapEmpty!4050 () Bool)

(declare-fun mapDefault!4049 () ValueCell!1011)

(assert (=> b!112919 (= condMapEmpty!4050 (= (arr!2093 (_values!2644 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4049)))))

(declare-fun b!112920 () Bool)

(declare-fun e!73415 () Bool)

(assert (=> b!112920 (= e!73413 e!73415)))

(declare-fun res!55670 () Bool)

(assert (=> b!112920 (=> (not res!55670) (not e!73415))))

(declare-datatypes ((tuple2!2442 0))(
  ( (tuple2!2443 (_1!1231 Bool) (_2!1231 LongMapFixedSize!930)) )
))
(declare-fun lt!58487 () tuple2!2442)

(assert (=> b!112920 (= res!55670 (and (_1!1231 lt!58487) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!3534 0))(
  ( (Unit!3535) )
))
(declare-fun lt!58490 () Unit!3534)

(declare-fun e!73400 () Unit!3534)

(assert (=> b!112920 (= lt!58490 e!73400)))

(declare-datatypes ((tuple2!2444 0))(
  ( (tuple2!2445 (_1!1232 (_ BitVec 64)) (_2!1232 V!3259)) )
))
(declare-datatypes ((List!1660 0))(
  ( (Nil!1657) (Cons!1656 (h!2256 tuple2!2444) (t!5846 List!1660)) )
))
(declare-datatypes ((ListLongMap!1603 0))(
  ( (ListLongMap!1604 (toList!817 List!1660)) )
))
(declare-fun lt!58493 () ListLongMap!1603)

(declare-fun c!20209 () Bool)

(declare-fun contains!844 (ListLongMap!1603 (_ BitVec 64)) Bool)

(assert (=> b!112920 (= c!20209 (contains!844 lt!58493 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun update!165 (LongMapFixedSize!930 (_ BitVec 64) V!3259) tuple2!2442)

(assert (=> b!112920 (= lt!58487 (update!165 newMap!16 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))

(declare-fun e!73409 () Bool)

(declare-fun array_inv!1259 (array!4416) Bool)

(declare-fun array_inv!1260 (array!4418) Bool)

(assert (=> b!112921 (= e!73409 (and tp!10107 tp_is_empty!2709 (array_inv!1259 (_keys!4381 newMap!16)) (array_inv!1260 (_values!2644 newMap!16)) e!73414))))

(declare-fun mapIsEmpty!4049 () Bool)

(assert (=> mapIsEmpty!4049 mapRes!4049))

(declare-fun b!112922 () Bool)

(assert (=> b!112922 (= e!73405 tp_is_empty!2709)))

(declare-fun mapIsEmpty!4050 () Bool)

(declare-fun mapRes!4050 () Bool)

(assert (=> mapIsEmpty!4050 mapRes!4050))

(declare-fun b!112923 () Bool)

(declare-fun res!55671 () Bool)

(assert (=> b!112923 (=> (not res!55671) (not e!73401))))

(assert (=> b!112923 (= res!55671 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6845 newMap!16)) (_size!514 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun res!55674 () Bool)

(assert (=> start!12964 (=> (not res!55674) (not e!73401))))

(declare-fun valid!429 (LongMap!730) Bool)

(assert (=> start!12964 (= res!55674 (valid!429 thiss!992))))

(assert (=> start!12964 e!73401))

(declare-fun e!73408 () Bool)

(assert (=> start!12964 e!73408))

(assert (=> start!12964 true))

(assert (=> start!12964 e!73409))

(declare-fun b!112924 () Bool)

(declare-fun e!73406 () Bool)

(assert (=> b!112924 (= e!73408 e!73406)))

(declare-fun b!112925 () Bool)

(declare-fun e!73404 () Bool)

(assert (=> b!112925 (= e!73404 tp_is_empty!2709)))

(declare-fun b!112926 () Bool)

(declare-fun res!55668 () Bool)

(declare-fun e!73410 () Bool)

(assert (=> b!112926 (=> res!55668 e!73410)))

(assert (=> b!112926 (= res!55668 (or (not (= (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6845 (v!2958 (underlying!376 thiss!992)))))) (not (= (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992)))))) (bvslt (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!4049 () Bool)

(declare-fun tp!10109 () Bool)

(assert (=> mapNonEmpty!4049 (= mapRes!4049 (and tp!10109 e!73404))))

(declare-fun mapKey!4050 () (_ BitVec 32))

(declare-fun mapRest!4050 () (Array (_ BitVec 32) ValueCell!1011))

(declare-fun mapValue!4049 () ValueCell!1011)

(assert (=> mapNonEmpty!4049 (= (arr!2093 (_values!2644 newMap!16)) (store mapRest!4050 mapKey!4050 mapValue!4049))))

(declare-fun b!112927 () Bool)

(declare-fun Unit!3536 () Unit!3534)

(assert (=> b!112927 (= e!73400 Unit!3536)))

(declare-fun b!112928 () Bool)

(declare-fun e!73412 () Bool)

(assert (=> b!112928 (= e!73412 (and e!73411 mapRes!4050))))

(declare-fun condMapEmpty!4049 () Bool)

(declare-fun mapDefault!4050 () ValueCell!1011)

(assert (=> b!112928 (= condMapEmpty!4049 (= (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4050)))))

(declare-fun b!112929 () Bool)

(declare-fun res!55669 () Bool)

(assert (=> b!112929 (=> (not res!55669) (not e!73401))))

(assert (=> b!112929 (= res!55669 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun b!112930 () Bool)

(declare-datatypes ((List!1661 0))(
  ( (Nil!1658) (Cons!1657 (h!2257 (_ BitVec 64)) (t!5847 List!1661)) )
))
(declare-fun arrayNoDuplicates!0 (array!4416 (_ BitVec 32) List!1661) Bool)

(assert (=> b!112930 (= e!73410 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 Nil!1658))))

(declare-fun b!112931 () Bool)

(declare-fun res!55673 () Bool)

(assert (=> b!112931 (=> res!55673 e!73410)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4416 (_ BitVec 32)) Bool)

(assert (=> b!112931 (= res!55673 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun mapNonEmpty!4050 () Bool)

(declare-fun tp!10110 () Bool)

(assert (=> mapNonEmpty!4050 (= mapRes!4050 (and tp!10110 e!73402))))

(declare-fun mapKey!4049 () (_ BitVec 32))

(declare-fun mapValue!4050 () ValueCell!1011)

(declare-fun mapRest!4049 () (Array (_ BitVec 32) ValueCell!1011))

(assert (=> mapNonEmpty!4050 (= (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (store mapRest!4049 mapKey!4049 mapValue!4050))))

(declare-fun b!112932 () Bool)

(declare-fun Unit!3537 () Unit!3534)

(assert (=> b!112932 (= e!73400 Unit!3537)))

(declare-fun lt!58495 () Unit!3534)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!121 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) (_ BitVec 32) Int) Unit!3534)

(assert (=> b!112932 (= lt!58495 (lemmaListMapContainsThenArrayContainsFrom!121 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!112932 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!58492 () Unit!3534)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4416 (_ BitVec 32) (_ BitVec 32)) Unit!3534)

(assert (=> b!112932 (= lt!58492 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!112932 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) from!355 Nil!1658)))

(declare-fun lt!58494 () Unit!3534)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4416 (_ BitVec 32) (_ BitVec 64) List!1661) Unit!3534)

(assert (=> b!112932 (= lt!58494 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658)))))

(assert (=> b!112932 false))

(declare-fun b!112933 () Bool)

(declare-fun e!73403 () Bool)

(assert (=> b!112933 (= e!73406 e!73403)))

(assert (=> b!112934 (= e!73403 (and tp!10108 tp_is_empty!2709 (array_inv!1259 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (array_inv!1260 (_values!2644 (v!2958 (underlying!376 thiss!992)))) e!73412))))

(declare-fun b!112935 () Bool)

(assert (=> b!112935 (= e!73401 e!73398)))

(declare-fun res!55676 () Bool)

(assert (=> b!112935 (=> (not res!55676) (not e!73398))))

(declare-fun lt!58484 () ListLongMap!1603)

(assert (=> b!112935 (= res!55676 (= lt!58484 lt!58493))))

(declare-fun map!1302 (LongMapFixedSize!930) ListLongMap!1603)

(assert (=> b!112935 (= lt!58493 (map!1302 newMap!16))))

(declare-fun getCurrentListMap!493 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) Int) ListLongMap!1603)

(assert (=> b!112935 (= lt!58484 (getCurrentListMap!493 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!112936 () Bool)

(assert (=> b!112936 (= e!73415 (not e!73410))))

(declare-fun res!55675 () Bool)

(assert (=> b!112936 (=> res!55675 e!73410)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!112936 (= res!55675 (not (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun lt!58489 () ListLongMap!1603)

(declare-fun lt!58488 () tuple2!2444)

(declare-fun lt!58485 () tuple2!2444)

(declare-fun +!152 (ListLongMap!1603 tuple2!2444) ListLongMap!1603)

(assert (=> b!112936 (= (+!152 (+!152 lt!58489 lt!58488) lt!58485) (+!152 (+!152 lt!58489 lt!58485) lt!58488))))

(assert (=> b!112936 (= lt!58485 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))

(assert (=> b!112936 (= lt!58488 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))

(declare-fun lt!58486 () Unit!3534)

(declare-fun addCommutativeForDiffKeys!64 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64) V!3259) Unit!3534)

(assert (=> b!112936 (= lt!58486 (addCommutativeForDiffKeys!64 lt!58489 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!119 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) Int) ListLongMap!1603)

(assert (=> b!112936 (= lt!58489 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(assert (= (and start!12964 res!55674) b!112929))

(assert (= (and b!112929 res!55669) b!112918))

(assert (= (and b!112918 res!55677) b!112923))

(assert (= (and b!112923 res!55671) b!112935))

(assert (= (and b!112935 res!55676) b!112917))

(assert (= (and b!112917 res!55672) b!112920))

(assert (= (and b!112920 c!20209) b!112932))

(assert (= (and b!112920 (not c!20209)) b!112927))

(assert (= (and b!112920 res!55670) b!112936))

(assert (= (and b!112936 (not res!55675)) b!112926))

(assert (= (and b!112926 (not res!55668)) b!112931))

(assert (= (and b!112931 (not res!55673)) b!112930))

(assert (= (and b!112928 condMapEmpty!4049) mapIsEmpty!4050))

(assert (= (and b!112928 (not condMapEmpty!4049)) mapNonEmpty!4050))

(get-info :version)

(assert (= (and mapNonEmpty!4050 ((_ is ValueCellFull!1011) mapValue!4050)) b!112915))

(assert (= (and b!112928 ((_ is ValueCellFull!1011) mapDefault!4050)) b!112916))

(assert (= b!112934 b!112928))

(assert (= b!112933 b!112934))

(assert (= b!112924 b!112933))

(assert (= start!12964 b!112924))

(assert (= (and b!112919 condMapEmpty!4050) mapIsEmpty!4049))

(assert (= (and b!112919 (not condMapEmpty!4050)) mapNonEmpty!4049))

(assert (= (and mapNonEmpty!4049 ((_ is ValueCellFull!1011) mapValue!4049)) b!112925))

(assert (= (and b!112919 ((_ is ValueCellFull!1011) mapDefault!4049)) b!112922))

(assert (= b!112921 b!112919))

(assert (= start!12964 b!112921))

(declare-fun b_lambda!5081 () Bool)

(assert (=> (not b_lambda!5081) (not b!112917)))

(declare-fun t!5843 () Bool)

(declare-fun tb!2149 () Bool)

(assert (=> (and b!112934 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) t!5843) tb!2149))

(declare-fun result!3587 () Bool)

(assert (=> tb!2149 (= result!3587 tp_is_empty!2709)))

(assert (=> b!112917 t!5843))

(declare-fun b_and!6953 () Bool)

(assert (= b_and!6949 (and (=> t!5843 result!3587) b_and!6953)))

(declare-fun t!5845 () Bool)

(declare-fun tb!2151 () Bool)

(assert (=> (and b!112921 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) t!5845) tb!2151))

(declare-fun result!3591 () Bool)

(assert (= result!3591 result!3587))

(assert (=> b!112917 t!5845))

(declare-fun b_and!6955 () Bool)

(assert (= b_and!6951 (and (=> t!5845 result!3591) b_and!6955)))

(declare-fun m!129113 () Bool)

(assert (=> b!112930 m!129113))

(declare-fun m!129115 () Bool)

(assert (=> b!112932 m!129115))

(declare-fun m!129117 () Bool)

(assert (=> b!112932 m!129117))

(declare-fun m!129119 () Bool)

(assert (=> b!112932 m!129119))

(declare-fun m!129121 () Bool)

(assert (=> b!112932 m!129121))

(assert (=> b!112932 m!129119))

(assert (=> b!112932 m!129119))

(declare-fun m!129123 () Bool)

(assert (=> b!112932 m!129123))

(assert (=> b!112932 m!129119))

(declare-fun m!129125 () Bool)

(assert (=> b!112932 m!129125))

(declare-fun m!129127 () Bool)

(assert (=> b!112936 m!129127))

(assert (=> b!112936 m!129119))

(declare-fun m!129129 () Bool)

(assert (=> b!112936 m!129129))

(declare-fun m!129131 () Bool)

(assert (=> b!112936 m!129131))

(declare-fun m!129133 () Bool)

(assert (=> b!112936 m!129133))

(declare-fun m!129135 () Bool)

(assert (=> b!112936 m!129135))

(declare-fun m!129137 () Bool)

(assert (=> b!112936 m!129137))

(assert (=> b!112936 m!129119))

(assert (=> b!112936 m!129131))

(assert (=> b!112936 m!129135))

(declare-fun m!129139 () Bool)

(assert (=> b!112936 m!129139))

(declare-fun m!129141 () Bool)

(assert (=> b!112921 m!129141))

(declare-fun m!129143 () Bool)

(assert (=> b!112921 m!129143))

(declare-fun m!129145 () Bool)

(assert (=> b!112918 m!129145))

(declare-fun m!129147 () Bool)

(assert (=> b!112934 m!129147))

(declare-fun m!129149 () Bool)

(assert (=> b!112934 m!129149))

(assert (=> b!112920 m!129119))

(assert (=> b!112920 m!129119))

(declare-fun m!129151 () Bool)

(assert (=> b!112920 m!129151))

(assert (=> b!112920 m!129119))

(declare-fun m!129153 () Bool)

(assert (=> b!112920 m!129153))

(declare-fun m!129155 () Bool)

(assert (=> b!112931 m!129155))

(declare-fun m!129157 () Bool)

(assert (=> b!112935 m!129157))

(declare-fun m!129159 () Bool)

(assert (=> b!112935 m!129159))

(declare-fun m!129161 () Bool)

(assert (=> start!12964 m!129161))

(declare-fun m!129163 () Bool)

(assert (=> mapNonEmpty!4050 m!129163))

(assert (=> b!112917 m!129119))

(declare-fun m!129165 () Bool)

(assert (=> b!112917 m!129165))

(declare-fun m!129167 () Bool)

(assert (=> b!112917 m!129167))

(assert (=> b!112917 m!129165))

(assert (=> b!112917 m!129167))

(declare-fun m!129169 () Bool)

(assert (=> b!112917 m!129169))

(declare-fun m!129171 () Bool)

(assert (=> mapNonEmpty!4049 m!129171))

(check-sat tp_is_empty!2709 (not b_next!2587) b_and!6953 (not b!112934) (not b!112921) (not b!112918) (not b!112936) (not mapNonEmpty!4049) (not b_lambda!5081) (not mapNonEmpty!4050) (not b!112917) (not b!112935) (not b!112920) (not b!112932) (not start!12964) b_and!6955 (not b!112930) (not b_next!2585) (not b!112931))
(check-sat b_and!6953 b_and!6955 (not b_next!2585) (not b_next!2587))
(get-model)

(declare-fun b_lambda!5085 () Bool)

(assert (= b_lambda!5081 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5085)))

(check-sat tp_is_empty!2709 (not b_next!2587) b_and!6953 (not b!112934) (not b!112921) (not b!112936) (not mapNonEmpty!4049) (not mapNonEmpty!4050) (not b!112917) (not b!112935) (not b!112920) (not b!112932) (not start!12964) (not b_lambda!5085) (not b!112918) b_and!6955 (not b!112930) (not b_next!2585) (not b!112931))
(check-sat b_and!6953 b_and!6955 (not b_next!2585) (not b_next!2587))
(get-model)

(declare-fun d!32149 () Bool)

(assert (=> d!32149 (= (array_inv!1259 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvsge (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!112934 d!32149))

(declare-fun d!32151 () Bool)

(assert (=> d!32151 (= (array_inv!1260 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvsge (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!112934 d!32151))

(declare-fun d!32153 () Bool)

(assert (=> d!32153 (not (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58534 () Unit!3534)

(declare-fun choose!68 (array!4416 (_ BitVec 32) (_ BitVec 64) List!1661) Unit!3534)

(assert (=> d!32153 (= lt!58534 (choose!68 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658)))))

(assert (=> d!32153 (bvslt (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!32153 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658)) lt!58534)))

(declare-fun bs!4644 () Bool)

(assert (= bs!4644 d!32153))

(assert (=> bs!4644 m!129119))

(assert (=> bs!4644 m!129123))

(assert (=> bs!4644 m!129119))

(declare-fun m!129233 () Bool)

(assert (=> bs!4644 m!129233))

(assert (=> b!112932 d!32153))

(declare-fun d!32155 () Bool)

(assert (=> d!32155 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) from!355 Nil!1658)))

(declare-fun lt!58537 () Unit!3534)

(declare-fun choose!39 (array!4416 (_ BitVec 32) (_ BitVec 32)) Unit!3534)

(assert (=> d!32155 (= lt!58537 (choose!39 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!32155 (bvslt (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!32155 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 from!355) lt!58537)))

(declare-fun bs!4645 () Bool)

(assert (= bs!4645 d!32155))

(assert (=> bs!4645 m!129117))

(declare-fun m!129235 () Bool)

(assert (=> bs!4645 m!129235))

(assert (=> b!112932 d!32155))

(declare-fun d!32157 () Bool)

(declare-fun res!55712 () Bool)

(declare-fun e!73474 () Bool)

(assert (=> d!32157 (=> res!55712 e!73474)))

(assert (=> d!32157 (= res!55712 (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32157 (= (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!73474)))

(declare-fun b!113011 () Bool)

(declare-fun e!73475 () Bool)

(assert (=> b!113011 (= e!73474 e!73475)))

(declare-fun res!55713 () Bool)

(assert (=> b!113011 (=> (not res!55713) (not e!73475))))

(assert (=> b!113011 (= res!55713 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113012 () Bool)

(assert (=> b!113012 (= e!73475 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!32157 (not res!55712)) b!113011))

(assert (= (and b!113011 res!55713) b!113012))

(declare-fun m!129237 () Bool)

(assert (=> d!32157 m!129237))

(assert (=> b!113012 m!129119))

(declare-fun m!129239 () Bool)

(assert (=> b!113012 m!129239))

(assert (=> b!112932 d!32157))

(declare-fun d!32159 () Bool)

(declare-fun e!73478 () Bool)

(assert (=> d!32159 e!73478))

(declare-fun c!20215 () Bool)

(assert (=> d!32159 (= c!20215 (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!58540 () Unit!3534)

(declare-fun choose!718 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) (_ BitVec 32) Int) Unit!3534)

(assert (=> d!32159 (= lt!58540 (choose!718 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(assert (=> d!32159 (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32159 (= (lemmaListMapContainsThenArrayContainsFrom!121 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) lt!58540)))

(declare-fun b!113017 () Bool)

(assert (=> b!113017 (= e!73478 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!113018 () Bool)

(assert (=> b!113018 (= e!73478 (ite (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!32159 c!20215) b!113017))

(assert (= (and d!32159 (not c!20215)) b!113018))

(assert (=> d!32159 m!129119))

(declare-fun m!129241 () Bool)

(assert (=> d!32159 m!129241))

(assert (=> d!32159 m!129127))

(assert (=> b!113017 m!129119))

(assert (=> b!113017 m!129123))

(assert (=> b!112932 d!32159))

(declare-fun b!113029 () Bool)

(declare-fun e!73490 () Bool)

(declare-fun contains!845 (List!1661 (_ BitVec 64)) Bool)

(assert (=> b!113029 (= e!73490 (contains!845 Nil!1658 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113030 () Bool)

(declare-fun e!73489 () Bool)

(declare-fun call!12121 () Bool)

(assert (=> b!113030 (= e!73489 call!12121)))

(declare-fun b!113031 () Bool)

(declare-fun e!73488 () Bool)

(assert (=> b!113031 (= e!73488 e!73489)))

(declare-fun c!20218 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!113031 (= c!20218 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113032 () Bool)

(declare-fun e!73487 () Bool)

(assert (=> b!113032 (= e!73487 e!73488)))

(declare-fun res!55721 () Bool)

(assert (=> b!113032 (=> (not res!55721) (not e!73488))))

(assert (=> b!113032 (= res!55721 (not e!73490))))

(declare-fun res!55720 () Bool)

(assert (=> b!113032 (=> (not res!55720) (not e!73490))))

(assert (=> b!113032 (= res!55720 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun bm!12118 () Bool)

(assert (=> bm!12118 (= call!12121 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!20218 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658) Nil!1658)))))

(declare-fun d!32161 () Bool)

(declare-fun res!55722 () Bool)

(assert (=> d!32161 (=> res!55722 e!73487)))

(assert (=> d!32161 (= res!55722 (bvsge from!355 (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32161 (= (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) from!355 Nil!1658) e!73487)))

(declare-fun b!113033 () Bool)

(assert (=> b!113033 (= e!73489 call!12121)))

(assert (= (and d!32161 (not res!55722)) b!113032))

(assert (= (and b!113032 res!55720) b!113029))

(assert (= (and b!113032 res!55721) b!113031))

(assert (= (and b!113031 c!20218) b!113033))

(assert (= (and b!113031 (not c!20218)) b!113030))

(assert (= (or b!113033 b!113030) bm!12118))

(assert (=> b!113029 m!129119))

(assert (=> b!113029 m!129119))

(declare-fun m!129243 () Bool)

(assert (=> b!113029 m!129243))

(assert (=> b!113031 m!129119))

(assert (=> b!113031 m!129119))

(declare-fun m!129245 () Bool)

(assert (=> b!113031 m!129245))

(assert (=> b!113032 m!129119))

(assert (=> b!113032 m!129119))

(assert (=> b!113032 m!129245))

(assert (=> bm!12118 m!129119))

(declare-fun m!129247 () Bool)

(assert (=> bm!12118 m!129247))

(assert (=> b!112932 d!32161))

(declare-fun d!32163 () Bool)

(declare-fun e!73493 () Bool)

(assert (=> d!32163 e!73493))

(declare-fun res!55728 () Bool)

(assert (=> d!32163 (=> (not res!55728) (not e!73493))))

(declare-fun lt!58550 () ListLongMap!1603)

(assert (=> d!32163 (= res!55728 (contains!844 lt!58550 (_1!1232 lt!58485)))))

(declare-fun lt!58551 () List!1660)

(assert (=> d!32163 (= lt!58550 (ListLongMap!1604 lt!58551))))

(declare-fun lt!58552 () Unit!3534)

(declare-fun lt!58549 () Unit!3534)

(assert (=> d!32163 (= lt!58552 lt!58549)))

(declare-datatypes ((Option!165 0))(
  ( (Some!164 (v!2962 V!3259)) (None!163) )
))
(declare-fun getValueByKey!159 (List!1660 (_ BitVec 64)) Option!165)

(assert (=> d!32163 (= (getValueByKey!159 lt!58551 (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485)))))

(declare-fun lemmaContainsTupThenGetReturnValue!77 (List!1660 (_ BitVec 64) V!3259) Unit!3534)

(assert (=> d!32163 (= lt!58549 (lemmaContainsTupThenGetReturnValue!77 lt!58551 (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(declare-fun insertStrictlySorted!79 (List!1660 (_ BitVec 64) V!3259) List!1660)

(assert (=> d!32163 (= lt!58551 (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(assert (=> d!32163 (= (+!152 lt!58489 lt!58485) lt!58550)))

(declare-fun b!113038 () Bool)

(declare-fun res!55727 () Bool)

(assert (=> b!113038 (=> (not res!55727) (not e!73493))))

(assert (=> b!113038 (= res!55727 (= (getValueByKey!159 (toList!817 lt!58550) (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485))))))

(declare-fun b!113039 () Bool)

(declare-fun contains!846 (List!1660 tuple2!2444) Bool)

(assert (=> b!113039 (= e!73493 (contains!846 (toList!817 lt!58550) lt!58485))))

(assert (= (and d!32163 res!55728) b!113038))

(assert (= (and b!113038 res!55727) b!113039))

(declare-fun m!129249 () Bool)

(assert (=> d!32163 m!129249))

(declare-fun m!129251 () Bool)

(assert (=> d!32163 m!129251))

(declare-fun m!129253 () Bool)

(assert (=> d!32163 m!129253))

(declare-fun m!129255 () Bool)

(assert (=> d!32163 m!129255))

(declare-fun m!129257 () Bool)

(assert (=> b!113038 m!129257))

(declare-fun m!129259 () Bool)

(assert (=> b!113039 m!129259))

(assert (=> b!112936 d!32163))

(declare-fun b!113064 () Bool)

(declare-fun e!73510 () ListLongMap!1603)

(assert (=> b!113064 (= e!73510 (ListLongMap!1604 Nil!1657))))

(declare-fun b!113065 () Bool)

(declare-fun lt!58571 () Unit!3534)

(declare-fun lt!58569 () Unit!3534)

(assert (=> b!113065 (= lt!58571 lt!58569)))

(declare-fun lt!58572 () (_ BitVec 64))

(declare-fun lt!58567 () (_ BitVec 64))

(declare-fun lt!58573 () V!3259)

(declare-fun lt!58570 () ListLongMap!1603)

(assert (=> b!113065 (not (contains!844 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573)) lt!58572))))

(declare-fun addStillNotContains!52 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> b!113065 (= lt!58569 (addStillNotContains!52 lt!58570 lt!58567 lt!58573 lt!58572))))

(assert (=> b!113065 (= lt!58572 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!113065 (= lt!58573 (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!113065 (= lt!58567 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!12124 () ListLongMap!1603)

(assert (=> b!113065 (= lt!58570 call!12124)))

(declare-fun e!73509 () ListLongMap!1603)

(assert (=> b!113065 (= e!73509 (+!152 call!12124 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!113066 () Bool)

(declare-fun res!55738 () Bool)

(declare-fun e!73512 () Bool)

(assert (=> b!113066 (=> (not res!55738) (not e!73512))))

(declare-fun lt!58568 () ListLongMap!1603)

(assert (=> b!113066 (= res!55738 (not (contains!844 lt!58568 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!32165 () Bool)

(assert (=> d!32165 e!73512))

(declare-fun res!55740 () Bool)

(assert (=> d!32165 (=> (not res!55740) (not e!73512))))

(assert (=> d!32165 (= res!55740 (not (contains!844 lt!58568 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32165 (= lt!58568 e!73510)))

(declare-fun c!20229 () Bool)

(assert (=> d!32165 (= c!20229 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32165 (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32165 (= (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) lt!58568)))

(declare-fun b!113067 () Bool)

(declare-fun e!73513 () Bool)

(assert (=> b!113067 (= e!73513 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!113067 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!113068 () Bool)

(declare-fun e!73508 () Bool)

(declare-fun isEmpty!387 (ListLongMap!1603) Bool)

(assert (=> b!113068 (= e!73508 (isEmpty!387 lt!58568))))

(declare-fun b!113069 () Bool)

(assert (=> b!113069 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> b!113069 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun e!73514 () Bool)

(declare-fun apply!102 (ListLongMap!1603 (_ BitVec 64)) V!3259)

(assert (=> b!113069 (= e!73514 (= (apply!102 lt!58568 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!113070 () Bool)

(declare-fun e!73511 () Bool)

(assert (=> b!113070 (= e!73511 e!73508)))

(declare-fun c!20228 () Bool)

(assert (=> b!113070 (= c!20228 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun bm!12121 () Bool)

(assert (=> bm!12121 (= call!12124 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113071 () Bool)

(assert (=> b!113071 (= e!73512 e!73511)))

(declare-fun c!20227 () Bool)

(assert (=> b!113071 (= c!20227 e!73513)))

(declare-fun res!55737 () Bool)

(assert (=> b!113071 (=> (not res!55737) (not e!73513))))

(assert (=> b!113071 (= res!55737 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113072 () Bool)

(assert (=> b!113072 (= e!73510 e!73509)))

(declare-fun c!20230 () Bool)

(assert (=> b!113072 (= c!20230 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!113073 () Bool)

(assert (=> b!113073 (= e!73511 e!73514)))

(assert (=> b!113073 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun res!55739 () Bool)

(assert (=> b!113073 (= res!55739 (contains!844 lt!58568 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!113073 (=> (not res!55739) (not e!73514))))

(declare-fun b!113074 () Bool)

(assert (=> b!113074 (= e!73508 (= lt!58568 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113075 () Bool)

(assert (=> b!113075 (= e!73509 call!12124)))

(assert (= (and d!32165 c!20229) b!113064))

(assert (= (and d!32165 (not c!20229)) b!113072))

(assert (= (and b!113072 c!20230) b!113065))

(assert (= (and b!113072 (not c!20230)) b!113075))

(assert (= (or b!113065 b!113075) bm!12121))

(assert (= (and d!32165 res!55740) b!113066))

(assert (= (and b!113066 res!55738) b!113071))

(assert (= (and b!113071 res!55737) b!113067))

(assert (= (and b!113071 c!20227) b!113073))

(assert (= (and b!113071 (not c!20227)) b!113070))

(assert (= (and b!113073 res!55739) b!113069))

(assert (= (and b!113070 c!20228) b!113074))

(assert (= (and b!113070 (not c!20228)) b!113068))

(declare-fun b_lambda!5087 () Bool)

(assert (=> (not b_lambda!5087) (not b!113065)))

(assert (=> b!113065 t!5843))

(declare-fun b_and!6965 () Bool)

(assert (= b_and!6953 (and (=> t!5843 result!3587) b_and!6965)))

(assert (=> b!113065 t!5845))

(declare-fun b_and!6967 () Bool)

(assert (= b_and!6955 (and (=> t!5845 result!3591) b_and!6967)))

(declare-fun b_lambda!5089 () Bool)

(assert (=> (not b_lambda!5089) (not b!113069)))

(assert (=> b!113069 t!5843))

(declare-fun b_and!6969 () Bool)

(assert (= b_and!6965 (and (=> t!5843 result!3587) b_and!6969)))

(assert (=> b!113069 t!5845))

(declare-fun b_and!6971 () Bool)

(assert (= b_and!6967 (and (=> t!5845 result!3591) b_and!6971)))

(assert (=> b!113069 m!129167))

(declare-fun m!129261 () Bool)

(assert (=> b!113069 m!129261))

(assert (=> b!113069 m!129237))

(assert (=> b!113069 m!129261))

(assert (=> b!113069 m!129167))

(declare-fun m!129263 () Bool)

(assert (=> b!113069 m!129263))

(assert (=> b!113069 m!129237))

(declare-fun m!129265 () Bool)

(assert (=> b!113069 m!129265))

(assert (=> b!113073 m!129237))

(assert (=> b!113073 m!129237))

(declare-fun m!129267 () Bool)

(assert (=> b!113073 m!129267))

(assert (=> b!113067 m!129237))

(assert (=> b!113067 m!129237))

(declare-fun m!129269 () Bool)

(assert (=> b!113067 m!129269))

(declare-fun m!129271 () Bool)

(assert (=> b!113065 m!129271))

(assert (=> b!113065 m!129167))

(declare-fun m!129273 () Bool)

(assert (=> b!113065 m!129273))

(declare-fun m!129275 () Bool)

(assert (=> b!113065 m!129275))

(assert (=> b!113065 m!129273))

(declare-fun m!129277 () Bool)

(assert (=> b!113065 m!129277))

(assert (=> b!113065 m!129261))

(assert (=> b!113065 m!129237))

(assert (=> b!113065 m!129261))

(assert (=> b!113065 m!129167))

(assert (=> b!113065 m!129263))

(declare-fun m!129279 () Bool)

(assert (=> b!113066 m!129279))

(declare-fun m!129281 () Bool)

(assert (=> bm!12121 m!129281))

(assert (=> b!113074 m!129281))

(assert (=> b!113072 m!129237))

(assert (=> b!113072 m!129237))

(assert (=> b!113072 m!129269))

(declare-fun m!129283 () Bool)

(assert (=> b!113068 m!129283))

(declare-fun m!129285 () Bool)

(assert (=> d!32165 m!129285))

(assert (=> d!32165 m!129127))

(assert (=> b!112936 d!32165))

(declare-fun d!32167 () Bool)

(declare-fun e!73515 () Bool)

(assert (=> d!32167 e!73515))

(declare-fun res!55742 () Bool)

(assert (=> d!32167 (=> (not res!55742) (not e!73515))))

(declare-fun lt!58575 () ListLongMap!1603)

(assert (=> d!32167 (= res!55742 (contains!844 lt!58575 (_1!1232 lt!58488)))))

(declare-fun lt!58576 () List!1660)

(assert (=> d!32167 (= lt!58575 (ListLongMap!1604 lt!58576))))

(declare-fun lt!58577 () Unit!3534)

(declare-fun lt!58574 () Unit!3534)

(assert (=> d!32167 (= lt!58577 lt!58574)))

(assert (=> d!32167 (= (getValueByKey!159 lt!58576 (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488)))))

(assert (=> d!32167 (= lt!58574 (lemmaContainsTupThenGetReturnValue!77 lt!58576 (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(assert (=> d!32167 (= lt!58576 (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 lt!58485)) (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(assert (=> d!32167 (= (+!152 (+!152 lt!58489 lt!58485) lt!58488) lt!58575)))

(declare-fun b!113076 () Bool)

(declare-fun res!55741 () Bool)

(assert (=> b!113076 (=> (not res!55741) (not e!73515))))

(assert (=> b!113076 (= res!55741 (= (getValueByKey!159 (toList!817 lt!58575) (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488))))))

(declare-fun b!113077 () Bool)

(assert (=> b!113077 (= e!73515 (contains!846 (toList!817 lt!58575) lt!58488))))

(assert (= (and d!32167 res!55742) b!113076))

(assert (= (and b!113076 res!55741) b!113077))

(declare-fun m!129287 () Bool)

(assert (=> d!32167 m!129287))

(declare-fun m!129289 () Bool)

(assert (=> d!32167 m!129289))

(declare-fun m!129291 () Bool)

(assert (=> d!32167 m!129291))

(declare-fun m!129293 () Bool)

(assert (=> d!32167 m!129293))

(declare-fun m!129295 () Bool)

(assert (=> b!113076 m!129295))

(declare-fun m!129297 () Bool)

(assert (=> b!113077 m!129297))

(assert (=> b!112936 d!32167))

(declare-fun d!32169 () Bool)

(declare-fun e!73516 () Bool)

(assert (=> d!32169 e!73516))

(declare-fun res!55744 () Bool)

(assert (=> d!32169 (=> (not res!55744) (not e!73516))))

(declare-fun lt!58579 () ListLongMap!1603)

(assert (=> d!32169 (= res!55744 (contains!844 lt!58579 (_1!1232 lt!58485)))))

(declare-fun lt!58580 () List!1660)

(assert (=> d!32169 (= lt!58579 (ListLongMap!1604 lt!58580))))

(declare-fun lt!58581 () Unit!3534)

(declare-fun lt!58578 () Unit!3534)

(assert (=> d!32169 (= lt!58581 lt!58578)))

(assert (=> d!32169 (= (getValueByKey!159 lt!58580 (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485)))))

(assert (=> d!32169 (= lt!58578 (lemmaContainsTupThenGetReturnValue!77 lt!58580 (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(assert (=> d!32169 (= lt!58580 (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 lt!58488)) (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(assert (=> d!32169 (= (+!152 (+!152 lt!58489 lt!58488) lt!58485) lt!58579)))

(declare-fun b!113078 () Bool)

(declare-fun res!55743 () Bool)

(assert (=> b!113078 (=> (not res!55743) (not e!73516))))

(assert (=> b!113078 (= res!55743 (= (getValueByKey!159 (toList!817 lt!58579) (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485))))))

(declare-fun b!113079 () Bool)

(assert (=> b!113079 (= e!73516 (contains!846 (toList!817 lt!58579) lt!58485))))

(assert (= (and d!32169 res!55744) b!113078))

(assert (= (and b!113078 res!55743) b!113079))

(declare-fun m!129299 () Bool)

(assert (=> d!32169 m!129299))

(declare-fun m!129301 () Bool)

(assert (=> d!32169 m!129301))

(declare-fun m!129303 () Bool)

(assert (=> d!32169 m!129303))

(declare-fun m!129305 () Bool)

(assert (=> d!32169 m!129305))

(declare-fun m!129307 () Bool)

(assert (=> b!113078 m!129307))

(declare-fun m!129309 () Bool)

(assert (=> b!113079 m!129309))

(assert (=> b!112936 d!32169))

(declare-fun d!32171 () Bool)

(assert (=> d!32171 (= (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992)))) (and (or (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000001111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000011111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000001111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000011111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000001111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000011111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000001111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000011111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000000111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000001111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000011111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000000111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000001111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000011111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000000111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000001111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000011111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000000111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000001111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000011111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00000111111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00001111111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00011111111111111111111111111111) (= (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6845 (v!2958 (underlying!376 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!112936 d!32171))

(declare-fun d!32173 () Bool)

(assert (=> d!32173 (= (+!152 (+!152 lt!58489 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (+!152 (+!152 lt!58489 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))

(declare-fun lt!58584 () Unit!3534)

(declare-fun choose!719 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64) V!3259) Unit!3534)

(assert (=> d!32173 (= lt!58584 (choose!719 lt!58489 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))

(assert (=> d!32173 (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32173 (= (addCommutativeForDiffKeys!64 lt!58489 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) lt!58584)))

(declare-fun bs!4646 () Bool)

(assert (= bs!4646 d!32173))

(assert (=> bs!4646 m!129119))

(declare-fun m!129311 () Bool)

(assert (=> bs!4646 m!129311))

(declare-fun m!129313 () Bool)

(assert (=> bs!4646 m!129313))

(declare-fun m!129315 () Bool)

(assert (=> bs!4646 m!129315))

(declare-fun m!129317 () Bool)

(assert (=> bs!4646 m!129317))

(declare-fun m!129319 () Bool)

(assert (=> bs!4646 m!129319))

(assert (=> bs!4646 m!129317))

(assert (=> bs!4646 m!129313))

(assert (=> b!112936 d!32173))

(declare-fun d!32175 () Bool)

(declare-fun e!73517 () Bool)

(assert (=> d!32175 e!73517))

(declare-fun res!55746 () Bool)

(assert (=> d!32175 (=> (not res!55746) (not e!73517))))

(declare-fun lt!58586 () ListLongMap!1603)

(assert (=> d!32175 (= res!55746 (contains!844 lt!58586 (_1!1232 lt!58488)))))

(declare-fun lt!58587 () List!1660)

(assert (=> d!32175 (= lt!58586 (ListLongMap!1604 lt!58587))))

(declare-fun lt!58588 () Unit!3534)

(declare-fun lt!58585 () Unit!3534)

(assert (=> d!32175 (= lt!58588 lt!58585)))

(assert (=> d!32175 (= (getValueByKey!159 lt!58587 (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488)))))

(assert (=> d!32175 (= lt!58585 (lemmaContainsTupThenGetReturnValue!77 lt!58587 (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(assert (=> d!32175 (= lt!58587 (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(assert (=> d!32175 (= (+!152 lt!58489 lt!58488) lt!58586)))

(declare-fun b!113080 () Bool)

(declare-fun res!55745 () Bool)

(assert (=> b!113080 (=> (not res!55745) (not e!73517))))

(assert (=> b!113080 (= res!55745 (= (getValueByKey!159 (toList!817 lt!58586) (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488))))))

(declare-fun b!113081 () Bool)

(assert (=> b!113081 (= e!73517 (contains!846 (toList!817 lt!58586) lt!58488))))

(assert (= (and d!32175 res!55746) b!113080))

(assert (= (and b!113080 res!55745) b!113081))

(declare-fun m!129321 () Bool)

(assert (=> d!32175 m!129321))

(declare-fun m!129323 () Bool)

(assert (=> d!32175 m!129323))

(declare-fun m!129325 () Bool)

(assert (=> d!32175 m!129325))

(declare-fun m!129327 () Bool)

(assert (=> d!32175 m!129327))

(declare-fun m!129329 () Bool)

(assert (=> b!113080 m!129329))

(declare-fun m!129331 () Bool)

(assert (=> b!113081 m!129331))

(assert (=> b!112936 d!32175))

(declare-fun d!32177 () Bool)

(assert (=> d!32177 (= (map!1302 newMap!16) (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun bs!4647 () Bool)

(assert (= bs!4647 d!32177))

(declare-fun m!129333 () Bool)

(assert (=> bs!4647 m!129333))

(assert (=> b!112935 d!32177))

(declare-fun b!113124 () Bool)

(declare-fun e!73546 () ListLongMap!1603)

(declare-fun call!12144 () ListLongMap!1603)

(assert (=> b!113124 (= e!73546 call!12144)))

(declare-fun lt!58652 () ListLongMap!1603)

(declare-fun b!113125 () Bool)

(declare-fun e!73549 () Bool)

(assert (=> b!113125 (= e!73549 (= (apply!102 lt!58652 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113125 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> b!113125 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113126 () Bool)

(declare-fun e!73544 () ListLongMap!1603)

(declare-fun call!12145 () ListLongMap!1603)

(assert (=> b!113126 (= e!73544 (+!152 call!12145 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113127 () Bool)

(declare-fun e!73555 () Bool)

(assert (=> b!113127 (= e!73555 (= (apply!102 lt!58652 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113128 () Bool)

(declare-fun call!12141 () ListLongMap!1603)

(assert (=> b!113128 (= e!73546 call!12141)))

(declare-fun bm!12136 () Bool)

(declare-fun call!12143 () ListLongMap!1603)

(assert (=> bm!12136 (= call!12143 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun bm!12137 () Bool)

(declare-fun call!12139 () ListLongMap!1603)

(assert (=> bm!12137 (= call!12139 call!12143)))

(declare-fun b!113129 () Bool)

(declare-fun c!20243 () Bool)

(assert (=> b!113129 (= c!20243 (and (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!73545 () ListLongMap!1603)

(assert (=> b!113129 (= e!73545 e!73546)))

(declare-fun bm!12138 () Bool)

(assert (=> bm!12138 (= call!12141 call!12145)))

(declare-fun b!113130 () Bool)

(declare-fun e!73553 () Bool)

(declare-fun call!12140 () Bool)

(assert (=> b!113130 (= e!73553 (not call!12140))))

(declare-fun b!113131 () Bool)

(declare-fun e!73548 () Bool)

(assert (=> b!113131 (= e!73548 (= (apply!102 lt!58652 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113132 () Bool)

(assert (=> b!113132 (= e!73553 e!73555)))

(declare-fun res!55772 () Bool)

(assert (=> b!113132 (= res!55772 call!12140)))

(assert (=> b!113132 (=> (not res!55772) (not e!73555))))

(declare-fun d!32179 () Bool)

(declare-fun e!73550 () Bool)

(assert (=> d!32179 e!73550))

(declare-fun res!55765 () Bool)

(assert (=> d!32179 (=> (not res!55765) (not e!73550))))

(assert (=> d!32179 (= res!55765 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun lt!58646 () ListLongMap!1603)

(assert (=> d!32179 (= lt!58652 lt!58646)))

(declare-fun lt!58650 () Unit!3534)

(declare-fun e!73556 () Unit!3534)

(assert (=> d!32179 (= lt!58650 e!73556)))

(declare-fun c!20246 () Bool)

(declare-fun e!73547 () Bool)

(assert (=> d!32179 (= c!20246 e!73547)))

(declare-fun res!55770 () Bool)

(assert (=> d!32179 (=> (not res!55770) (not e!73547))))

(assert (=> d!32179 (= res!55770 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32179 (= lt!58646 e!73544)))

(declare-fun c!20248 () Bool)

(assert (=> d!32179 (= c!20248 (and (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32179 (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32179 (= (getCurrentListMap!493 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) lt!58652)))

(declare-fun bm!12139 () Bool)

(assert (=> bm!12139 (= call!12140 (contains!844 lt!58652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!20247 () Bool)

(declare-fun bm!12140 () Bool)

(assert (=> bm!12140 (= call!12145 (+!152 (ite c!20248 call!12143 (ite c!20247 call!12139 call!12144)) (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun b!113133 () Bool)

(declare-fun e!73551 () Bool)

(assert (=> b!113133 (= e!73551 e!73549)))

(declare-fun res!55767 () Bool)

(assert (=> b!113133 (=> (not res!55767) (not e!73549))))

(assert (=> b!113133 (= res!55767 (contains!844 lt!58652 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!113133 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113134 () Bool)

(assert (=> b!113134 (= e!73544 e!73545)))

(assert (=> b!113134 (= c!20247 (and (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113135 () Bool)

(declare-fun lt!58640 () Unit!3534)

(assert (=> b!113135 (= e!73556 lt!58640)))

(declare-fun lt!58633 () ListLongMap!1603)

(assert (=> b!113135 (= lt!58633 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun lt!58639 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58639 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58638 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58638 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58643 () Unit!3534)

(declare-fun addStillContains!78 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> b!113135 (= lt!58643 (addStillContains!78 lt!58633 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58638))))

(assert (=> b!113135 (contains!844 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58638)))

(declare-fun lt!58637 () Unit!3534)

(assert (=> b!113135 (= lt!58637 lt!58643)))

(declare-fun lt!58648 () ListLongMap!1603)

(assert (=> b!113135 (= lt!58648 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun lt!58635 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58635 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58647 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58647 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58642 () Unit!3534)

(declare-fun addApplyDifferent!78 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> b!113135 (= lt!58642 (addApplyDifferent!78 lt!58648 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58647))))

(assert (=> b!113135 (= (apply!102 (+!152 lt!58648 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58647) (apply!102 lt!58648 lt!58647))))

(declare-fun lt!58649 () Unit!3534)

(assert (=> b!113135 (= lt!58649 lt!58642)))

(declare-fun lt!58653 () ListLongMap!1603)

(assert (=> b!113135 (= lt!58653 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun lt!58651 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58641 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58641 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58636 () Unit!3534)

(assert (=> b!113135 (= lt!58636 (addApplyDifferent!78 lt!58653 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58641))))

(assert (=> b!113135 (= (apply!102 (+!152 lt!58653 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58641) (apply!102 lt!58653 lt!58641))))

(declare-fun lt!58634 () Unit!3534)

(assert (=> b!113135 (= lt!58634 lt!58636)))

(declare-fun lt!58644 () ListLongMap!1603)

(assert (=> b!113135 (= lt!58644 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun lt!58645 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58645 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58654 () (_ BitVec 64))

(assert (=> b!113135 (= lt!58654 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!113135 (= lt!58640 (addApplyDifferent!78 lt!58644 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58654))))

(assert (=> b!113135 (= (apply!102 (+!152 lt!58644 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58654) (apply!102 lt!58644 lt!58654))))

(declare-fun bm!12141 () Bool)

(declare-fun call!12142 () Bool)

(assert (=> bm!12141 (= call!12142 (contains!844 lt!58652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113136 () Bool)

(declare-fun e!73554 () Bool)

(assert (=> b!113136 (= e!73554 (not call!12142))))

(declare-fun bm!12142 () Bool)

(assert (=> bm!12142 (= call!12144 call!12139)))

(declare-fun b!113137 () Bool)

(assert (=> b!113137 (= e!73547 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!113138 () Bool)

(assert (=> b!113138 (= e!73550 e!73554)))

(declare-fun c!20244 () Bool)

(assert (=> b!113138 (= c!20244 (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113139 () Bool)

(declare-fun e!73552 () Bool)

(assert (=> b!113139 (= e!73552 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!113140 () Bool)

(assert (=> b!113140 (= e!73554 e!73548)))

(declare-fun res!55769 () Bool)

(assert (=> b!113140 (= res!55769 call!12142)))

(assert (=> b!113140 (=> (not res!55769) (not e!73548))))

(declare-fun b!113141 () Bool)

(declare-fun res!55771 () Bool)

(assert (=> b!113141 (=> (not res!55771) (not e!73550))))

(assert (=> b!113141 (= res!55771 e!73551)))

(declare-fun res!55773 () Bool)

(assert (=> b!113141 (=> res!55773 e!73551)))

(assert (=> b!113141 (= res!55773 (not e!73552))))

(declare-fun res!55766 () Bool)

(assert (=> b!113141 (=> (not res!55766) (not e!73552))))

(assert (=> b!113141 (= res!55766 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113142 () Bool)

(declare-fun res!55768 () Bool)

(assert (=> b!113142 (=> (not res!55768) (not e!73550))))

(assert (=> b!113142 (= res!55768 e!73553)))

(declare-fun c!20245 () Bool)

(assert (=> b!113142 (= c!20245 (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!113143 () Bool)

(declare-fun Unit!3538 () Unit!3534)

(assert (=> b!113143 (= e!73556 Unit!3538)))

(declare-fun b!113144 () Bool)

(assert (=> b!113144 (= e!73545 call!12141)))

(assert (= (and d!32179 c!20248) b!113126))

(assert (= (and d!32179 (not c!20248)) b!113134))

(assert (= (and b!113134 c!20247) b!113144))

(assert (= (and b!113134 (not c!20247)) b!113129))

(assert (= (and b!113129 c!20243) b!113128))

(assert (= (and b!113129 (not c!20243)) b!113124))

(assert (= (or b!113128 b!113124) bm!12142))

(assert (= (or b!113144 bm!12142) bm!12137))

(assert (= (or b!113144 b!113128) bm!12138))

(assert (= (or b!113126 bm!12137) bm!12136))

(assert (= (or b!113126 bm!12138) bm!12140))

(assert (= (and d!32179 res!55770) b!113137))

(assert (= (and d!32179 c!20246) b!113135))

(assert (= (and d!32179 (not c!20246)) b!113143))

(assert (= (and d!32179 res!55765) b!113141))

(assert (= (and b!113141 res!55766) b!113139))

(assert (= (and b!113141 (not res!55773)) b!113133))

(assert (= (and b!113133 res!55767) b!113125))

(assert (= (and b!113141 res!55771) b!113142))

(assert (= (and b!113142 c!20245) b!113132))

(assert (= (and b!113142 (not c!20245)) b!113130))

(assert (= (and b!113132 res!55772) b!113127))

(assert (= (or b!113132 b!113130) bm!12139))

(assert (= (and b!113142 res!55768) b!113138))

(assert (= (and b!113138 c!20244) b!113140))

(assert (= (and b!113138 (not c!20244)) b!113136))

(assert (= (and b!113140 res!55769) b!113131))

(assert (= (or b!113140 b!113136) bm!12141))

(declare-fun b_lambda!5091 () Bool)

(assert (=> (not b_lambda!5091) (not b!113125)))

(assert (=> b!113125 t!5843))

(declare-fun b_and!6973 () Bool)

(assert (= b_and!6969 (and (=> t!5843 result!3587) b_and!6973)))

(assert (=> b!113125 t!5845))

(declare-fun b_and!6975 () Bool)

(assert (= b_and!6971 (and (=> t!5845 result!3591) b_and!6975)))

(declare-fun m!129335 () Bool)

(assert (=> b!113131 m!129335))

(declare-fun m!129337 () Bool)

(assert (=> b!113126 m!129337))

(declare-fun m!129339 () Bool)

(assert (=> b!113135 m!129339))

(declare-fun m!129341 () Bool)

(assert (=> b!113135 m!129341))

(declare-fun m!129343 () Bool)

(assert (=> b!113135 m!129343))

(declare-fun m!129345 () Bool)

(assert (=> b!113135 m!129345))

(declare-fun m!129347 () Bool)

(assert (=> b!113135 m!129347))

(declare-fun m!129349 () Bool)

(assert (=> b!113135 m!129349))

(declare-fun m!129351 () Bool)

(assert (=> b!113135 m!129351))

(assert (=> b!113135 m!129139))

(assert (=> b!113135 m!129345))

(declare-fun m!129353 () Bool)

(assert (=> b!113135 m!129353))

(declare-fun m!129355 () Bool)

(assert (=> b!113135 m!129355))

(declare-fun m!129357 () Bool)

(assert (=> b!113135 m!129357))

(declare-fun m!129359 () Bool)

(assert (=> b!113135 m!129359))

(declare-fun m!129361 () Bool)

(assert (=> b!113135 m!129361))

(assert (=> b!113135 m!129237))

(declare-fun m!129363 () Bool)

(assert (=> b!113135 m!129363))

(assert (=> b!113135 m!129343))

(declare-fun m!129365 () Bool)

(assert (=> b!113135 m!129365))

(assert (=> b!113135 m!129339))

(assert (=> b!113135 m!129355))

(declare-fun m!129367 () Bool)

(assert (=> b!113135 m!129367))

(assert (=> b!113139 m!129237))

(assert (=> b!113139 m!129237))

(assert (=> b!113139 m!129269))

(assert (=> b!113125 m!129261))

(assert (=> b!113125 m!129167))

(assert (=> b!113125 m!129263))

(assert (=> b!113125 m!129237))

(assert (=> b!113125 m!129261))

(assert (=> b!113125 m!129167))

(assert (=> b!113125 m!129237))

(declare-fun m!129369 () Bool)

(assert (=> b!113125 m!129369))

(assert (=> b!113137 m!129237))

(assert (=> b!113137 m!129237))

(assert (=> b!113137 m!129269))

(assert (=> bm!12136 m!129139))

(assert (=> b!113133 m!129237))

(assert (=> b!113133 m!129237))

(declare-fun m!129371 () Bool)

(assert (=> b!113133 m!129371))

(declare-fun m!129373 () Bool)

(assert (=> b!113127 m!129373))

(declare-fun m!129375 () Bool)

(assert (=> bm!12140 m!129375))

(assert (=> d!32179 m!129127))

(declare-fun m!129377 () Bool)

(assert (=> bm!12141 m!129377))

(declare-fun m!129379 () Bool)

(assert (=> bm!12139 m!129379))

(assert (=> b!112935 d!32179))

(declare-fun d!32181 () Bool)

(declare-fun res!55780 () Bool)

(declare-fun e!73559 () Bool)

(assert (=> d!32181 (=> (not res!55780) (not e!73559))))

(declare-fun simpleValid!77 (LongMapFixedSize!930) Bool)

(assert (=> d!32181 (= res!55780 (simpleValid!77 newMap!16))))

(assert (=> d!32181 (= (valid!428 newMap!16) e!73559)))

(declare-fun b!113151 () Bool)

(declare-fun res!55781 () Bool)

(assert (=> b!113151 (=> (not res!55781) (not e!73559))))

(declare-fun arrayCountValidKeys!0 (array!4416 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!113151 (= res!55781 (= (arrayCountValidKeys!0 (_keys!4381 newMap!16) #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (_size!514 newMap!16)))))

(declare-fun b!113152 () Bool)

(declare-fun res!55782 () Bool)

(assert (=> b!113152 (=> (not res!55782) (not e!73559))))

(assert (=> b!113152 (= res!55782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun b!113153 () Bool)

(assert (=> b!113153 (= e!73559 (arrayNoDuplicates!0 (_keys!4381 newMap!16) #b00000000000000000000000000000000 Nil!1658))))

(assert (= (and d!32181 res!55780) b!113151))

(assert (= (and b!113151 res!55781) b!113152))

(assert (= (and b!113152 res!55782) b!113153))

(declare-fun m!129381 () Bool)

(assert (=> d!32181 m!129381))

(declare-fun m!129383 () Bool)

(assert (=> b!113151 m!129383))

(declare-fun m!129385 () Bool)

(assert (=> b!113152 m!129385))

(declare-fun m!129387 () Bool)

(assert (=> b!113153 m!129387))

(assert (=> b!112918 d!32181))

(declare-fun d!32183 () Bool)

(declare-fun c!20251 () Bool)

(assert (=> d!32183 (= c!20251 ((_ is ValueCellFull!1011) (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun e!73562 () V!3259)

(assert (=> d!32183 (= (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!73562)))

(declare-fun b!113158 () Bool)

(declare-fun get!1369 (ValueCell!1011 V!3259) V!3259)

(assert (=> b!113158 (= e!73562 (get!1369 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!113159 () Bool)

(declare-fun get!1370 (ValueCell!1011 V!3259) V!3259)

(assert (=> b!113159 (= e!73562 (get!1370 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32183 c!20251) b!113158))

(assert (= (and d!32183 (not c!20251)) b!113159))

(assert (=> b!113158 m!129165))

(assert (=> b!113158 m!129167))

(declare-fun m!129389 () Bool)

(assert (=> b!113158 m!129389))

(assert (=> b!113159 m!129165))

(assert (=> b!113159 m!129167))

(declare-fun m!129391 () Bool)

(assert (=> b!113159 m!129391))

(assert (=> b!112917 d!32183))

(declare-fun d!32185 () Bool)

(assert (=> d!32185 (= (array_inv!1259 (_keys!4381 newMap!16)) (bvsge (size!2351 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!112921 d!32185))

(declare-fun d!32187 () Bool)

(assert (=> d!32187 (= (array_inv!1260 (_values!2644 newMap!16)) (bvsge (size!2352 (_values!2644 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!112921 d!32187))

(declare-fun d!32189 () Bool)

(declare-fun e!73568 () Bool)

(assert (=> d!32189 e!73568))

(declare-fun res!55785 () Bool)

(assert (=> d!32189 (=> res!55785 e!73568)))

(declare-fun lt!58663 () Bool)

(assert (=> d!32189 (= res!55785 (not lt!58663))))

(declare-fun lt!58666 () Bool)

(assert (=> d!32189 (= lt!58663 lt!58666)))

(declare-fun lt!58664 () Unit!3534)

(declare-fun e!73567 () Unit!3534)

(assert (=> d!32189 (= lt!58664 e!73567)))

(declare-fun c!20254 () Bool)

(assert (=> d!32189 (= c!20254 lt!58666)))

(declare-fun containsKey!163 (List!1660 (_ BitVec 64)) Bool)

(assert (=> d!32189 (= lt!58666 (containsKey!163 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32189 (= (contains!844 lt!58493 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) lt!58663)))

(declare-fun b!113166 () Bool)

(declare-fun lt!58665 () Unit!3534)

(assert (=> b!113166 (= e!73567 lt!58665)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!112 (List!1660 (_ BitVec 64)) Unit!3534)

(assert (=> b!113166 (= lt!58665 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun isDefined!113 (Option!165) Bool)

(assert (=> b!113166 (isDefined!113 (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113167 () Bool)

(declare-fun Unit!3539 () Unit!3534)

(assert (=> b!113167 (= e!73567 Unit!3539)))

(declare-fun b!113168 () Bool)

(assert (=> b!113168 (= e!73568 (isDefined!113 (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(assert (= (and d!32189 c!20254) b!113166))

(assert (= (and d!32189 (not c!20254)) b!113167))

(assert (= (and d!32189 (not res!55785)) b!113168))

(assert (=> d!32189 m!129119))

(declare-fun m!129393 () Bool)

(assert (=> d!32189 m!129393))

(assert (=> b!113166 m!129119))

(declare-fun m!129395 () Bool)

(assert (=> b!113166 m!129395))

(assert (=> b!113166 m!129119))

(declare-fun m!129397 () Bool)

(assert (=> b!113166 m!129397))

(assert (=> b!113166 m!129397))

(declare-fun m!129399 () Bool)

(assert (=> b!113166 m!129399))

(assert (=> b!113168 m!129119))

(assert (=> b!113168 m!129397))

(assert (=> b!113168 m!129397))

(assert (=> b!113168 m!129399))

(assert (=> b!112920 d!32189))

(declare-fun b!113249 () Bool)

(declare-fun e!73620 () tuple2!2442)

(declare-fun e!73619 () tuple2!2442)

(assert (=> b!113249 (= e!73620 e!73619)))

(declare-fun c!20287 () Bool)

(declare-datatypes ((SeekEntryResult!273 0))(
  ( (MissingZero!273 (index!3244 (_ BitVec 32))) (Found!273 (index!3245 (_ BitVec 32))) (Intermediate!273 (undefined!1085 Bool) (index!3246 (_ BitVec 32)) (x!14194 (_ BitVec 32))) (Undefined!273) (MissingVacant!273 (index!3247 (_ BitVec 32))) )
))
(declare-fun lt!58735 () SeekEntryResult!273)

(assert (=> b!113249 (= c!20287 ((_ is MissingZero!273) lt!58735))))

(declare-fun b!113250 () Bool)

(declare-fun e!73613 () Bool)

(declare-fun lt!58732 () SeekEntryResult!273)

(assert (=> b!113250 (= e!73613 ((_ is Undefined!273) lt!58732))))

(declare-fun b!113251 () Bool)

(declare-fun e!73622 () Bool)

(declare-fun call!12213 () Bool)

(assert (=> b!113251 (= e!73622 (not call!12213))))

(declare-fun bm!12191 () Bool)

(declare-fun call!12203 () Bool)

(declare-fun call!12198 () Bool)

(assert (=> bm!12191 (= call!12203 call!12198)))

(declare-fun bm!12192 () Bool)

(declare-fun call!12205 () ListLongMap!1603)

(declare-fun call!12202 () ListLongMap!1603)

(assert (=> bm!12192 (= call!12205 call!12202)))

(declare-fun b!113252 () Bool)

(declare-fun e!73614 () Unit!3534)

(declare-fun Unit!3540 () Unit!3534)

(assert (=> b!113252 (= e!73614 Unit!3540)))

(declare-fun lt!58725 () Unit!3534)

(declare-fun call!12196 () Unit!3534)

(assert (=> b!113252 (= lt!58725 call!12196)))

(declare-fun call!12204 () SeekEntryResult!273)

(assert (=> b!113252 (= lt!58732 call!12204)))

(declare-fun c!20293 () Bool)

(assert (=> b!113252 (= c!20293 ((_ is MissingZero!273) lt!58732))))

(declare-fun e!73630 () Bool)

(assert (=> b!113252 e!73630))

(declare-fun lt!58739 () Unit!3534)

(assert (=> b!113252 (= lt!58739 lt!58725)))

(assert (=> b!113252 false))

(declare-fun bm!12193 () Bool)

(declare-fun call!12194 () SeekEntryResult!273)

(assert (=> bm!12193 (= call!12204 call!12194)))

(declare-fun b!113253 () Bool)

(declare-fun lt!58744 () Unit!3534)

(declare-fun lt!58731 () Unit!3534)

(assert (=> b!113253 (= lt!58744 lt!58731)))

(declare-fun call!12210 () ListLongMap!1603)

(assert (=> b!113253 (contains!844 call!12210 (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735)))))

(declare-fun lt!58728 () array!4418)

(declare-fun lemmaValidKeyInArrayIsInListMap!109 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) Int) Unit!3534)

(assert (=> b!113253 (= lt!58731 (lemmaValidKeyInArrayIsInListMap!109 (_keys!4381 newMap!16) lt!58728 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (defaultEntry!2661 newMap!16)))))

(assert (=> b!113253 (= lt!58728 (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))))))

(declare-fun lt!58736 () Unit!3534)

(declare-fun lt!58729 () Unit!3534)

(assert (=> b!113253 (= lt!58736 lt!58729)))

(declare-fun call!12197 () ListLongMap!1603)

(assert (=> b!113253 (= call!12197 (getCurrentListMap!493 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!51 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) (_ BitVec 64) V!3259 Int) Unit!3534)

(assert (=> b!113253 (= lt!58729 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58747 () Unit!3534)

(assert (=> b!113253 (= lt!58747 e!73614)))

(declare-fun c!20282 () Bool)

(declare-fun call!12206 () Bool)

(assert (=> b!113253 (= c!20282 call!12206)))

(assert (=> b!113253 (= e!73619 (tuple2!2443 true (LongMapFixedSize!931 (defaultEntry!2661 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (_size!514 newMap!16) (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (_vacant!514 newMap!16))))))

(declare-fun b!113254 () Bool)

(declare-fun res!55816 () Bool)

(declare-fun e!73627 () Bool)

(assert (=> b!113254 (=> (not res!55816) (not e!73627))))

(declare-fun lt!58738 () SeekEntryResult!273)

(assert (=> b!113254 (= res!55816 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3244 lt!58738)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113255 () Bool)

(declare-fun res!55823 () Bool)

(declare-fun e!73618 () Bool)

(assert (=> b!113255 (=> (not res!55823) (not e!73618))))

(assert (=> b!113255 (= res!55823 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3244 lt!58732)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12194 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!51 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) Int) Unit!3534)

(assert (=> bm!12194 (= call!12196 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(declare-fun b!113256 () Bool)

(declare-fun e!73623 () Bool)

(declare-fun e!73611 () Bool)

(assert (=> b!113256 (= e!73623 e!73611)))

(declare-fun res!55817 () Bool)

(declare-fun call!12199 () ListLongMap!1603)

(assert (=> b!113256 (= res!55817 (contains!844 call!12199 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> b!113256 (=> (not res!55817) (not e!73611))))

(declare-fun bm!12195 () Bool)

(declare-fun call!12212 () Bool)

(declare-fun call!12208 () Bool)

(assert (=> bm!12195 (= call!12212 call!12208)))

(declare-fun bm!12196 () Bool)

(declare-fun c!20286 () Bool)

(declare-fun lt!58741 () (_ BitVec 32))

(declare-fun c!20290 () Bool)

(assert (=> bm!12196 (= call!12202 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun b!113257 () Bool)

(declare-fun lt!58745 () Unit!3534)

(declare-fun lt!58727 () Unit!3534)

(assert (=> b!113257 (= lt!58745 lt!58727)))

(declare-fun call!12201 () ListLongMap!1603)

(declare-fun call!12200 () ListLongMap!1603)

(assert (=> b!113257 (= call!12201 call!12200)))

(declare-fun lt!58723 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!51 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 V!3259 Int) Unit!3534)

(assert (=> b!113257 (= lt!58727 (lemmaChangeZeroKeyThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58723 (zeroValue!2529 newMap!16) lt!58491 (minValue!2529 newMap!16) (defaultEntry!2661 newMap!16)))))

(assert (=> b!113257 (= lt!58723 (bvor (extraKeys!2452 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!73631 () tuple2!2442)

(assert (=> b!113257 (= e!73631 (tuple2!2443 true (LongMapFixedSize!931 (defaultEntry!2661 newMap!16) (mask!6845 newMap!16) (bvor (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) lt!58491 (minValue!2529 newMap!16) (_size!514 newMap!16) (_keys!4381 newMap!16) (_values!2644 newMap!16) (_vacant!514 newMap!16))))))

(declare-fun b!113258 () Bool)

(declare-fun e!73621 () ListLongMap!1603)

(assert (=> b!113258 (= e!73621 call!12210)))

(declare-fun bm!12197 () Bool)

(declare-fun c!20284 () Bool)

(declare-fun c!20291 () Bool)

(assert (=> bm!12197 (= c!20284 c!20291)))

(assert (=> bm!12197 (= call!12206 (contains!844 e!73621 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113259 () Bool)

(assert (=> b!113259 (= e!73627 (not call!12212))))

(declare-fun b!113260 () Bool)

(declare-fun res!55825 () Bool)

(assert (=> b!113260 (= res!55825 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3247 lt!58738)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!73628 () Bool)

(assert (=> b!113260 (=> (not res!55825) (not e!73628))))

(declare-fun b!113261 () Bool)

(declare-fun res!55824 () Bool)

(assert (=> b!113261 (=> (not res!55824) (not e!73627))))

(declare-fun call!12207 () Bool)

(assert (=> b!113261 (= res!55824 call!12207)))

(declare-fun e!73625 () Bool)

(assert (=> b!113261 (= e!73625 e!73627)))

(declare-fun bm!12198 () Bool)

(declare-fun lt!58740 () tuple2!2442)

(assert (=> bm!12198 (= call!12199 (map!1302 (_2!1231 lt!58740)))))

(declare-fun bm!12199 () Bool)

(declare-fun call!12211 () Bool)

(assert (=> bm!12199 (= call!12198 call!12211)))

(declare-fun bm!12200 () Bool)

(assert (=> bm!12200 (= call!12197 (+!152 (ite c!20290 (ite c!20286 call!12205 call!12200) call!12202) (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun b!113262 () Bool)

(declare-fun res!55815 () Bool)

(assert (=> b!113262 (=> (not res!55815) (not e!73618))))

(assert (=> b!113262 (= res!55815 call!12203)))

(assert (=> b!113262 (= e!73630 e!73618)))

(declare-fun b!113263 () Bool)

(declare-fun res!55827 () Bool)

(assert (=> b!113263 (= res!55827 call!12198)))

(declare-fun e!73624 () Bool)

(assert (=> b!113263 (=> (not res!55827) (not e!73624))))

(declare-fun bm!12201 () Bool)

(declare-fun call!12215 () Bool)

(assert (=> bm!12201 (= call!12215 call!12211)))

(declare-fun b!113264 () Bool)

(assert (=> b!113264 (= e!73618 (not call!12213))))

(declare-fun b!113265 () Bool)

(declare-fun lt!58734 () tuple2!2442)

(declare-fun call!12217 () tuple2!2442)

(assert (=> b!113265 (= lt!58734 call!12217)))

(assert (=> b!113265 (= e!73619 (tuple2!2443 (_1!1231 lt!58734) (_2!1231 lt!58734)))))

(declare-fun b!113266 () Bool)

(declare-fun c!20289 () Bool)

(assert (=> b!113266 (= c!20289 ((_ is MissingVacant!273) lt!58735))))

(declare-fun e!73616 () tuple2!2442)

(assert (=> b!113266 (= e!73616 e!73620)))

(declare-fun b!113267 () Bool)

(declare-fun call!12209 () ListLongMap!1603)

(assert (=> b!113267 (= e!73623 (= call!12199 call!12209))))

(declare-fun bm!12202 () Bool)

(declare-fun call!12195 () ListLongMap!1603)

(assert (=> bm!12202 (= call!12195 (getCurrentListMap!493 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun b!113268 () Bool)

(declare-fun e!73612 () Unit!3534)

(declare-fun lt!58730 () Unit!3534)

(assert (=> b!113268 (= e!73612 lt!58730)))

(assert (=> b!113268 (= lt!58730 call!12196)))

(declare-fun call!12214 () SeekEntryResult!273)

(assert (=> b!113268 (= lt!58738 call!12214)))

(declare-fun c!20288 () Bool)

(assert (=> b!113268 (= c!20288 ((_ is MissingZero!273) lt!58738))))

(assert (=> b!113268 e!73625))

(declare-fun bm!12203 () Bool)

(declare-fun call!12216 () Unit!3534)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!51 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) Int) Unit!3534)

(assert (=> bm!12203 (= call!12216 (lemmaInListMapThenSeekEntryOrOpenFindsIt!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(declare-fun bm!12204 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4416 (_ BitVec 32)) SeekEntryResult!273)

(assert (=> bm!12204 (= call!12194 (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun b!113269 () Bool)

(declare-fun e!73615 () Bool)

(assert (=> b!113269 (= e!73615 ((_ is Undefined!273) lt!58738))))

(declare-fun bm!12205 () Bool)

(assert (=> bm!12205 (= call!12207 call!12215)))

(declare-fun b!113270 () Bool)

(declare-fun lt!58724 () tuple2!2442)

(assert (=> b!113270 (= e!73620 (tuple2!2443 (_1!1231 lt!58724) (_2!1231 lt!58724)))))

(assert (=> b!113270 (= lt!58724 call!12217)))

(declare-fun lt!58737 () SeekEntryResult!273)

(declare-fun b!113271 () Bool)

(assert (=> b!113271 (= e!73624 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58737)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113272 () Bool)

(declare-fun res!55822 () Bool)

(assert (=> b!113272 (= res!55822 call!12215)))

(declare-fun e!73617 () Bool)

(assert (=> b!113272 (=> (not res!55822) (not e!73617))))

(declare-fun bm!12206 () Bool)

(assert (=> bm!12206 (= call!12213 call!12208)))

(declare-fun b!113273 () Bool)

(declare-fun c!20283 () Bool)

(assert (=> b!113273 (= c!20283 ((_ is MissingVacant!273) lt!58738))))

(assert (=> b!113273 (= e!73625 e!73615)))

(declare-fun b!113274 () Bool)

(declare-fun e!73629 () Bool)

(assert (=> b!113274 (= e!73629 e!73623)))

(declare-fun c!20292 () Bool)

(assert (=> b!113274 (= c!20292 (_1!1231 lt!58740))))

(declare-fun b!113275 () Bool)

(declare-fun res!55826 () Bool)

(assert (=> b!113275 (= res!55826 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3247 lt!58732)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113275 (=> (not res!55826) (not e!73622))))

(declare-fun bm!12207 () Bool)

(assert (=> bm!12207 (= call!12208 (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!12208 () Bool)

(assert (=> bm!12208 (= call!12200 call!12195)))

(declare-fun b!113276 () Bool)

(declare-fun lt!58721 () Unit!3534)

(assert (=> b!113276 (= lt!58721 e!73612)))

(declare-fun c!20285 () Bool)

(assert (=> b!113276 (= c!20285 call!12206)))

(assert (=> b!113276 (= e!73616 (tuple2!2443 false newMap!16))))

(declare-fun b!113277 () Bool)

(declare-fun e!73626 () tuple2!2442)

(assert (=> b!113277 (= e!73626 e!73631)))

(assert (=> b!113277 (= c!20286 (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12209 () Bool)

(assert (=> bm!12209 (= call!12201 call!12197)))

(declare-fun b!113278 () Bool)

(assert (=> b!113278 (= e!73626 e!73616)))

(assert (=> b!113278 (= lt!58735 (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(assert (=> b!113278 (= c!20291 ((_ is Undefined!273) lt!58735))))

(declare-fun b!113279 () Bool)

(declare-fun c!20281 () Bool)

(assert (=> b!113279 (= c!20281 ((_ is MissingVacant!273) lt!58732))))

(assert (=> b!113279 (= e!73630 e!73613)))

(declare-fun bm!12210 () Bool)

(assert (=> bm!12210 (= call!12214 call!12194)))

(declare-fun b!113280 () Bool)

(declare-fun lt!58722 () SeekEntryResult!273)

(assert (=> b!113280 (= e!73617 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58722)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun bm!12211 () Bool)

(assert (=> bm!12211 (= call!12210 call!12195)))

(declare-fun bm!12212 () Bool)

(declare-fun updateHelperNewKey!51 (LongMapFixedSize!930 (_ BitVec 64) V!3259 (_ BitVec 32)) tuple2!2442)

(assert (=> bm!12212 (= call!12217 (updateHelperNewKey!51 newMap!16 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735))))))

(declare-fun bm!12213 () Bool)

(assert (=> bm!12213 (= call!12209 (map!1302 newMap!16))))

(declare-fun b!113281 () Bool)

(assert (=> b!113281 (= e!73613 e!73622)))

(declare-fun res!55820 () Bool)

(assert (=> b!113281 (= res!55820 call!12203)))

(assert (=> b!113281 (=> (not res!55820) (not e!73622))))

(declare-fun b!113282 () Bool)

(declare-fun Unit!3541 () Unit!3534)

(assert (=> b!113282 (= e!73612 Unit!3541)))

(declare-fun lt!58746 () Unit!3534)

(assert (=> b!113282 (= lt!58746 call!12216)))

(assert (=> b!113282 (= lt!58722 call!12214)))

(declare-fun res!55818 () Bool)

(assert (=> b!113282 (= res!55818 ((_ is Found!273) lt!58722))))

(assert (=> b!113282 (=> (not res!55818) (not e!73617))))

(assert (=> b!113282 e!73617))

(declare-fun lt!58726 () Unit!3534)

(assert (=> b!113282 (= lt!58726 lt!58746)))

(assert (=> b!113282 false))

(declare-fun b!113283 () Bool)

(declare-fun lt!58742 () Unit!3534)

(assert (=> b!113283 (= e!73614 lt!58742)))

(assert (=> b!113283 (= lt!58742 call!12216)))

(assert (=> b!113283 (= lt!58737 call!12204)))

(declare-fun res!55814 () Bool)

(assert (=> b!113283 (= res!55814 ((_ is Found!273) lt!58737))))

(assert (=> b!113283 (=> (not res!55814) (not e!73624))))

(assert (=> b!113283 e!73624))

(declare-fun d!32191 () Bool)

(assert (=> d!32191 e!73629))

(declare-fun res!55819 () Bool)

(assert (=> d!32191 (=> (not res!55819) (not e!73629))))

(assert (=> d!32191 (= res!55819 (valid!428 (_2!1231 lt!58740)))))

(assert (=> d!32191 (= lt!58740 e!73626)))

(assert (=> d!32191 (= c!20290 (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvneg (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(assert (=> d!32191 (valid!428 newMap!16)))

(assert (=> d!32191 (= (update!165 newMap!16 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491) lt!58740)))

(declare-fun b!113284 () Bool)

(declare-fun lt!58733 () Unit!3534)

(declare-fun lt!58743 () Unit!3534)

(assert (=> b!113284 (= lt!58733 lt!58743)))

(assert (=> b!113284 (= call!12201 call!12205)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!51 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 V!3259 Int) Unit!3534)

(assert (=> b!113284 (= lt!58743 (lemmaChangeLongMinValueKeyThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58741 (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) lt!58491 (defaultEntry!2661 newMap!16)))))

(assert (=> b!113284 (= lt!58741 (bvor (extraKeys!2452 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!113284 (= e!73631 (tuple2!2443 true (LongMapFixedSize!931 (defaultEntry!2661 newMap!16) (mask!6845 newMap!16) (bvor (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) (zeroValue!2529 newMap!16) lt!58491 (_size!514 newMap!16) (_keys!4381 newMap!16) (_values!2644 newMap!16) (_vacant!514 newMap!16))))))

(declare-fun bm!12214 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!12214 (= call!12211 (inRange!0 (ite c!20291 (ite c!20285 (index!3245 lt!58722) (ite c!20288 (index!3244 lt!58738) (index!3247 lt!58738))) (ite c!20282 (index!3245 lt!58737) (ite c!20293 (index!3244 lt!58732) (index!3247 lt!58732)))) (mask!6845 newMap!16)))))

(declare-fun b!113285 () Bool)

(assert (=> b!113285 (= e!73628 (not call!12212))))

(declare-fun b!113286 () Bool)

(assert (=> b!113286 (= e!73615 e!73628)))

(declare-fun res!55821 () Bool)

(assert (=> b!113286 (= res!55821 call!12207)))

(assert (=> b!113286 (=> (not res!55821) (not e!73628))))

(declare-fun b!113287 () Bool)

(assert (=> b!113287 (= e!73611 (= call!12199 (+!152 call!12209 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun b!113288 () Bool)

(assert (=> b!113288 (= e!73621 call!12202)))

(assert (= (and d!32191 c!20290) b!113277))

(assert (= (and d!32191 (not c!20290)) b!113278))

(assert (= (and b!113277 c!20286) b!113257))

(assert (= (and b!113277 (not c!20286)) b!113284))

(assert (= (or b!113257 b!113284) bm!12192))

(assert (= (or b!113257 b!113284) bm!12208))

(assert (= (or b!113257 b!113284) bm!12209))

(assert (= (and b!113278 c!20291) b!113276))

(assert (= (and b!113278 (not c!20291)) b!113266))

(assert (= (and b!113276 c!20285) b!113282))

(assert (= (and b!113276 (not c!20285)) b!113268))

(assert (= (and b!113282 res!55818) b!113272))

(assert (= (and b!113272 res!55822) b!113280))

(assert (= (and b!113268 c!20288) b!113261))

(assert (= (and b!113268 (not c!20288)) b!113273))

(assert (= (and b!113261 res!55824) b!113254))

(assert (= (and b!113254 res!55816) b!113259))

(assert (= (and b!113273 c!20283) b!113286))

(assert (= (and b!113273 (not c!20283)) b!113269))

(assert (= (and b!113286 res!55821) b!113260))

(assert (= (and b!113260 res!55825) b!113285))

(assert (= (or b!113261 b!113286) bm!12205))

(assert (= (or b!113259 b!113285) bm!12195))

(assert (= (or b!113272 bm!12205) bm!12201))

(assert (= (or b!113282 b!113268) bm!12210))

(assert (= (and b!113266 c!20289) b!113270))

(assert (= (and b!113266 (not c!20289)) b!113249))

(assert (= (and b!113249 c!20287) b!113265))

(assert (= (and b!113249 (not c!20287)) b!113253))

(assert (= (and b!113253 c!20282) b!113283))

(assert (= (and b!113253 (not c!20282)) b!113252))

(assert (= (and b!113283 res!55814) b!113263))

(assert (= (and b!113263 res!55827) b!113271))

(assert (= (and b!113252 c!20293) b!113262))

(assert (= (and b!113252 (not c!20293)) b!113279))

(assert (= (and b!113262 res!55815) b!113255))

(assert (= (and b!113255 res!55823) b!113264))

(assert (= (and b!113279 c!20281) b!113281))

(assert (= (and b!113279 (not c!20281)) b!113250))

(assert (= (and b!113281 res!55820) b!113275))

(assert (= (and b!113275 res!55826) b!113251))

(assert (= (or b!113262 b!113281) bm!12191))

(assert (= (or b!113264 b!113251) bm!12206))

(assert (= (or b!113263 bm!12191) bm!12199))

(assert (= (or b!113283 b!113252) bm!12193))

(assert (= (or b!113270 b!113265) bm!12212))

(assert (= (or b!113282 b!113283) bm!12203))

(assert (= (or bm!12201 bm!12199) bm!12214))

(assert (= (or b!113268 b!113252) bm!12194))

(assert (= (or bm!12210 bm!12193) bm!12204))

(assert (= (or b!113276 b!113253) bm!12211))

(assert (= (or bm!12195 bm!12206) bm!12207))

(assert (= (or b!113276 b!113253) bm!12197))

(assert (= (and bm!12197 c!20284) b!113258))

(assert (= (and bm!12197 (not c!20284)) b!113288))

(assert (= (or bm!12208 bm!12211) bm!12202))

(assert (= (or bm!12192 b!113288 b!113253) bm!12196))

(assert (= (or bm!12209 b!113253) bm!12200))

(assert (= (and d!32191 res!55819) b!113274))

(assert (= (and b!113274 c!20292) b!113256))

(assert (= (and b!113274 (not c!20292)) b!113267))

(assert (= (and b!113256 res!55817) b!113287))

(assert (= (or b!113256 b!113287 b!113267) bm!12198))

(assert (= (or b!113287 b!113267) bm!12213))

(declare-fun m!129401 () Bool)

(assert (=> d!32191 m!129401))

(assert (=> d!32191 m!129145))

(assert (=> bm!12213 m!129157))

(declare-fun m!129403 () Bool)

(assert (=> b!113284 m!129403))

(assert (=> bm!12204 m!129119))

(declare-fun m!129405 () Bool)

(assert (=> bm!12204 m!129405))

(declare-fun m!129407 () Bool)

(assert (=> b!113287 m!129407))

(declare-fun m!129409 () Bool)

(assert (=> b!113280 m!129409))

(assert (=> bm!12203 m!129119))

(declare-fun m!129411 () Bool)

(assert (=> bm!12203 m!129411))

(declare-fun m!129413 () Bool)

(assert (=> bm!12202 m!129413))

(assert (=> bm!12212 m!129119))

(declare-fun m!129415 () Bool)

(assert (=> bm!12212 m!129415))

(declare-fun m!129417 () Bool)

(assert (=> b!113260 m!129417))

(assert (=> bm!12197 m!129119))

(declare-fun m!129419 () Bool)

(assert (=> bm!12197 m!129419))

(declare-fun m!129421 () Bool)

(assert (=> b!113254 m!129421))

(declare-fun m!129423 () Bool)

(assert (=> bm!12196 m!129423))

(assert (=> bm!12194 m!129119))

(declare-fun m!129425 () Bool)

(assert (=> bm!12194 m!129425))

(declare-fun m!129427 () Bool)

(assert (=> b!113275 m!129427))

(declare-fun m!129429 () Bool)

(assert (=> b!113257 m!129429))

(declare-fun m!129431 () Bool)

(assert (=> b!113271 m!129431))

(assert (=> b!113278 m!129119))

(assert (=> b!113278 m!129405))

(assert (=> b!113256 m!129119))

(declare-fun m!129433 () Bool)

(assert (=> b!113256 m!129433))

(declare-fun m!129435 () Bool)

(assert (=> bm!12200 m!129435))

(declare-fun m!129437 () Bool)

(assert (=> bm!12214 m!129437))

(declare-fun m!129439 () Bool)

(assert (=> b!113253 m!129439))

(declare-fun m!129441 () Bool)

(assert (=> b!113253 m!129441))

(declare-fun m!129443 () Bool)

(assert (=> b!113253 m!129443))

(declare-fun m!129445 () Bool)

(assert (=> b!113253 m!129445))

(declare-fun m!129447 () Bool)

(assert (=> b!113253 m!129447))

(assert (=> b!113253 m!129119))

(declare-fun m!129449 () Bool)

(assert (=> b!113253 m!129449))

(assert (=> b!113253 m!129441))

(declare-fun m!129451 () Bool)

(assert (=> bm!12198 m!129451))

(assert (=> bm!12207 m!129119))

(declare-fun m!129453 () Bool)

(assert (=> bm!12207 m!129453))

(declare-fun m!129455 () Bool)

(assert (=> b!113255 m!129455))

(assert (=> b!112920 d!32191))

(declare-fun d!32193 () Bool)

(assert (=> d!32193 (= (valid!429 thiss!992) (valid!428 (v!2958 (underlying!376 thiss!992))))))

(declare-fun bs!4648 () Bool)

(assert (= bs!4648 d!32193))

(declare-fun m!129457 () Bool)

(assert (=> bs!4648 m!129457))

(assert (=> start!12964 d!32193))

(declare-fun b!113297 () Bool)

(declare-fun e!73640 () Bool)

(declare-fun e!73639 () Bool)

(assert (=> b!113297 (= e!73640 e!73639)))

(declare-fun c!20296 () Bool)

(assert (=> b!113297 (= c!20296 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!113298 () Bool)

(declare-fun e!73638 () Bool)

(assert (=> b!113298 (= e!73639 e!73638)))

(declare-fun lt!58755 () (_ BitVec 64))

(assert (=> b!113298 (= lt!58755 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!58754 () Unit!3534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4416 (_ BitVec 64) (_ BitVec 32)) Unit!3534)

(assert (=> b!113298 (= lt!58754 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000))))

(assert (=> b!113298 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000)))

(declare-fun lt!58756 () Unit!3534)

(assert (=> b!113298 (= lt!58756 lt!58754)))

(declare-fun res!55833 () Bool)

(assert (=> b!113298 (= res!55833 (= (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))) (Found!273 #b00000000000000000000000000000000)))))

(assert (=> b!113298 (=> (not res!55833) (not e!73638))))

(declare-fun b!113299 () Bool)

(declare-fun call!12220 () Bool)

(assert (=> b!113299 (= e!73638 call!12220)))

(declare-fun bm!12217 () Bool)

(assert (=> bm!12217 (= call!12220 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113300 () Bool)

(assert (=> b!113300 (= e!73639 call!12220)))

(declare-fun d!32195 () Bool)

(declare-fun res!55832 () Bool)

(assert (=> d!32195 (=> res!55832 e!73640)))

(assert (=> d!32195 (= res!55832 (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32195 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))) e!73640)))

(assert (= (and d!32195 (not res!55832)) b!113297))

(assert (= (and b!113297 c!20296) b!113298))

(assert (= (and b!113297 (not c!20296)) b!113300))

(assert (= (and b!113298 res!55833) b!113299))

(assert (= (or b!113299 b!113300) bm!12217))

(declare-fun m!129459 () Bool)

(assert (=> b!113297 m!129459))

(assert (=> b!113297 m!129459))

(declare-fun m!129461 () Bool)

(assert (=> b!113297 m!129461))

(assert (=> b!113298 m!129459))

(declare-fun m!129463 () Bool)

(assert (=> b!113298 m!129463))

(declare-fun m!129465 () Bool)

(assert (=> b!113298 m!129465))

(assert (=> b!113298 m!129459))

(declare-fun m!129467 () Bool)

(assert (=> b!113298 m!129467))

(declare-fun m!129469 () Bool)

(assert (=> bm!12217 m!129469))

(assert (=> b!112931 d!32195))

(declare-fun b!113301 () Bool)

(declare-fun e!73644 () Bool)

(assert (=> b!113301 (= e!73644 (contains!845 Nil!1658 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!113302 () Bool)

(declare-fun e!73643 () Bool)

(declare-fun call!12221 () Bool)

(assert (=> b!113302 (= e!73643 call!12221)))

(declare-fun b!113303 () Bool)

(declare-fun e!73642 () Bool)

(assert (=> b!113303 (= e!73642 e!73643)))

(declare-fun c!20297 () Bool)

(assert (=> b!113303 (= c!20297 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!113304 () Bool)

(declare-fun e!73641 () Bool)

(assert (=> b!113304 (= e!73641 e!73642)))

(declare-fun res!55835 () Bool)

(assert (=> b!113304 (=> (not res!55835) (not e!73642))))

(assert (=> b!113304 (= res!55835 (not e!73644))))

(declare-fun res!55834 () Bool)

(assert (=> b!113304 (=> (not res!55834) (not e!73644))))

(assert (=> b!113304 (= res!55834 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!12218 () Bool)

(assert (=> bm!12218 (= call!12221 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!20297 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) Nil!1658) Nil!1658)))))

(declare-fun d!32197 () Bool)

(declare-fun res!55836 () Bool)

(assert (=> d!32197 (=> res!55836 e!73641)))

(assert (=> d!32197 (= res!55836 (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32197 (= (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 Nil!1658) e!73641)))

(declare-fun b!113305 () Bool)

(assert (=> b!113305 (= e!73643 call!12221)))

(assert (= (and d!32197 (not res!55836)) b!113304))

(assert (= (and b!113304 res!55834) b!113301))

(assert (= (and b!113304 res!55835) b!113303))

(assert (= (and b!113303 c!20297) b!113305))

(assert (= (and b!113303 (not c!20297)) b!113302))

(assert (= (or b!113305 b!113302) bm!12218))

(assert (=> b!113301 m!129459))

(assert (=> b!113301 m!129459))

(declare-fun m!129471 () Bool)

(assert (=> b!113301 m!129471))

(assert (=> b!113303 m!129459))

(assert (=> b!113303 m!129459))

(assert (=> b!113303 m!129461))

(assert (=> b!113304 m!129459))

(assert (=> b!113304 m!129459))

(assert (=> b!113304 m!129461))

(assert (=> bm!12218 m!129459))

(declare-fun m!129473 () Bool)

(assert (=> bm!12218 m!129473))

(assert (=> b!112930 d!32197))

(declare-fun b!113312 () Bool)

(declare-fun e!73650 () Bool)

(assert (=> b!113312 (= e!73650 tp_is_empty!2709)))

(declare-fun mapNonEmpty!4059 () Bool)

(declare-fun mapRes!4059 () Bool)

(declare-fun tp!10125 () Bool)

(assert (=> mapNonEmpty!4059 (= mapRes!4059 (and tp!10125 e!73650))))

(declare-fun mapValue!4059 () ValueCell!1011)

(declare-fun mapRest!4059 () (Array (_ BitVec 32) ValueCell!1011))

(declare-fun mapKey!4059 () (_ BitVec 32))

(assert (=> mapNonEmpty!4059 (= mapRest!4049 (store mapRest!4059 mapKey!4059 mapValue!4059))))

(declare-fun b!113313 () Bool)

(declare-fun e!73649 () Bool)

(assert (=> b!113313 (= e!73649 tp_is_empty!2709)))

(declare-fun condMapEmpty!4059 () Bool)

(declare-fun mapDefault!4059 () ValueCell!1011)

(assert (=> mapNonEmpty!4050 (= condMapEmpty!4059 (= mapRest!4049 ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4059)))))

(assert (=> mapNonEmpty!4050 (= tp!10110 (and e!73649 mapRes!4059))))

(declare-fun mapIsEmpty!4059 () Bool)

(assert (=> mapIsEmpty!4059 mapRes!4059))

(assert (= (and mapNonEmpty!4050 condMapEmpty!4059) mapIsEmpty!4059))

(assert (= (and mapNonEmpty!4050 (not condMapEmpty!4059)) mapNonEmpty!4059))

(assert (= (and mapNonEmpty!4059 ((_ is ValueCellFull!1011) mapValue!4059)) b!113312))

(assert (= (and mapNonEmpty!4050 ((_ is ValueCellFull!1011) mapDefault!4059)) b!113313))

(declare-fun m!129475 () Bool)

(assert (=> mapNonEmpty!4059 m!129475))

(declare-fun b!113314 () Bool)

(declare-fun e!73652 () Bool)

(assert (=> b!113314 (= e!73652 tp_is_empty!2709)))

(declare-fun mapNonEmpty!4060 () Bool)

(declare-fun mapRes!4060 () Bool)

(declare-fun tp!10126 () Bool)

(assert (=> mapNonEmpty!4060 (= mapRes!4060 (and tp!10126 e!73652))))

(declare-fun mapKey!4060 () (_ BitVec 32))

(declare-fun mapValue!4060 () ValueCell!1011)

(declare-fun mapRest!4060 () (Array (_ BitVec 32) ValueCell!1011))

(assert (=> mapNonEmpty!4060 (= mapRest!4050 (store mapRest!4060 mapKey!4060 mapValue!4060))))

(declare-fun b!113315 () Bool)

(declare-fun e!73651 () Bool)

(assert (=> b!113315 (= e!73651 tp_is_empty!2709)))

(declare-fun condMapEmpty!4060 () Bool)

(declare-fun mapDefault!4060 () ValueCell!1011)

(assert (=> mapNonEmpty!4049 (= condMapEmpty!4060 (= mapRest!4050 ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4060)))))

(assert (=> mapNonEmpty!4049 (= tp!10109 (and e!73651 mapRes!4060))))

(declare-fun mapIsEmpty!4060 () Bool)

(assert (=> mapIsEmpty!4060 mapRes!4060))

(assert (= (and mapNonEmpty!4049 condMapEmpty!4060) mapIsEmpty!4060))

(assert (= (and mapNonEmpty!4049 (not condMapEmpty!4060)) mapNonEmpty!4060))

(assert (= (and mapNonEmpty!4060 ((_ is ValueCellFull!1011) mapValue!4060)) b!113314))

(assert (= (and mapNonEmpty!4049 ((_ is ValueCellFull!1011) mapDefault!4060)) b!113315))

(declare-fun m!129477 () Bool)

(assert (=> mapNonEmpty!4060 m!129477))

(declare-fun b_lambda!5093 () Bool)

(assert (= b_lambda!5087 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5093)))

(declare-fun b_lambda!5095 () Bool)

(assert (= b_lambda!5091 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5095)))

(declare-fun b_lambda!5097 () Bool)

(assert (= b_lambda!5089 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5097)))

(check-sat (not b!113257) (not b!113158) (not b!113297) (not b!113069) (not b!113287) (not b!113068) (not b!113067) (not b!113137) tp_is_empty!2709 (not mapNonEmpty!4060) (not bm!12197) (not bm!12139) (not b_next!2587) (not bm!12194) (not bm!12198) (not d!32165) (not b!113304) (not b!113079) (not b!113159) (not d!32193) (not bm!12212) (not b!113152) (not b!113127) (not d!32179) (not b!113077) (not bm!12218) (not b!113126) (not b!113139) (not b!113073) (not b!113078) (not bm!12140) (not b!113131) (not d!32169) (not d!32159) (not bm!12202) (not b!113151) (not b!113065) (not b!113168) (not bm!12196) (not mapNonEmpty!4059) (not b!113153) (not b!113029) (not b_lambda!5097) (not b!113080) (not bm!12118) (not b!113074) (not b!113256) (not bm!12213) (not bm!12207) (not b_lambda!5093) (not bm!12217) (not d!32181) (not b!113166) (not b!113284) (not d!32153) (not b_lambda!5085) (not bm!12204) (not b!113081) (not b!113066) (not bm!12141) b_and!6975 (not b!113125) (not b!113038) (not b!113012) (not b!113278) (not d!32175) (not bm!12203) (not b!113072) (not bm!12214) (not b!113032) (not d!32167) (not d!32155) (not d!32177) (not bm!12200) (not b_next!2585) (not b!113133) (not b!113017) (not b!113298) (not bm!12136) (not b!113039) b_and!6973 (not bm!12121) (not b!113303) (not b!113135) (not b!113031) (not b!113253) (not d!32163) (not b!113076) (not d!32189) (not b_lambda!5095) (not b!113301) (not d!32191) (not d!32173))
(check-sat b_and!6973 b_and!6975 (not b_next!2585) (not b_next!2587))
(get-model)

(declare-fun d!32199 () Bool)

(assert (=> d!32199 (= (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113032 d!32199))

(declare-fun d!32201 () Bool)

(assert (=> d!32201 (= (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113137 d!32201))

(declare-fun d!32203 () Bool)

(declare-fun e!73653 () Bool)

(assert (=> d!32203 e!73653))

(declare-fun res!55838 () Bool)

(assert (=> d!32203 (=> (not res!55838) (not e!73653))))

(declare-fun lt!58758 () ListLongMap!1603)

(assert (=> d!32203 (= res!55838 (contains!844 lt!58758 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun lt!58759 () List!1660)

(assert (=> d!32203 (= lt!58758 (ListLongMap!1604 lt!58759))))

(declare-fun lt!58760 () Unit!3534)

(declare-fun lt!58757 () Unit!3534)

(assert (=> d!32203 (= lt!58760 lt!58757)))

(assert (=> d!32203 (= (getValueByKey!159 lt!58759 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32203 (= lt!58757 (lemmaContainsTupThenGetReturnValue!77 lt!58759 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32203 (= lt!58759 (insertStrictlySorted!79 (toList!817 call!12209) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32203 (= (+!152 call!12209 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) lt!58758)))

(declare-fun b!113316 () Bool)

(declare-fun res!55837 () Bool)

(assert (=> b!113316 (=> (not res!55837) (not e!73653))))

(assert (=> b!113316 (= res!55837 (= (getValueByKey!159 (toList!817 lt!58758) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(declare-fun b!113317 () Bool)

(assert (=> b!113317 (= e!73653 (contains!846 (toList!817 lt!58758) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))

(assert (= (and d!32203 res!55838) b!113316))

(assert (= (and b!113316 res!55837) b!113317))

(declare-fun m!129479 () Bool)

(assert (=> d!32203 m!129479))

(declare-fun m!129481 () Bool)

(assert (=> d!32203 m!129481))

(declare-fun m!129483 () Bool)

(assert (=> d!32203 m!129483))

(declare-fun m!129485 () Bool)

(assert (=> d!32203 m!129485))

(declare-fun m!129487 () Bool)

(assert (=> b!113316 m!129487))

(declare-fun m!129489 () Bool)

(assert (=> b!113317 m!129489))

(assert (=> b!113287 d!32203))

(declare-fun d!32205 () Bool)

(declare-fun e!73655 () Bool)

(assert (=> d!32205 e!73655))

(declare-fun res!55839 () Bool)

(assert (=> d!32205 (=> res!55839 e!73655)))

(declare-fun lt!58761 () Bool)

(assert (=> d!32205 (= res!55839 (not lt!58761))))

(declare-fun lt!58764 () Bool)

(assert (=> d!32205 (= lt!58761 lt!58764)))

(declare-fun lt!58762 () Unit!3534)

(declare-fun e!73654 () Unit!3534)

(assert (=> d!32205 (= lt!58762 e!73654)))

(declare-fun c!20298 () Bool)

(assert (=> d!32205 (= c!20298 lt!58764)))

(assert (=> d!32205 (= lt!58764 (containsKey!163 (toList!817 lt!58575) (_1!1232 lt!58488)))))

(assert (=> d!32205 (= (contains!844 lt!58575 (_1!1232 lt!58488)) lt!58761)))

(declare-fun b!113318 () Bool)

(declare-fun lt!58763 () Unit!3534)

(assert (=> b!113318 (= e!73654 lt!58763)))

(assert (=> b!113318 (= lt!58763 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58575) (_1!1232 lt!58488)))))

(assert (=> b!113318 (isDefined!113 (getValueByKey!159 (toList!817 lt!58575) (_1!1232 lt!58488)))))

(declare-fun b!113319 () Bool)

(declare-fun Unit!3542 () Unit!3534)

(assert (=> b!113319 (= e!73654 Unit!3542)))

(declare-fun b!113320 () Bool)

(assert (=> b!113320 (= e!73655 (isDefined!113 (getValueByKey!159 (toList!817 lt!58575) (_1!1232 lt!58488))))))

(assert (= (and d!32205 c!20298) b!113318))

(assert (= (and d!32205 (not c!20298)) b!113319))

(assert (= (and d!32205 (not res!55839)) b!113320))

(declare-fun m!129491 () Bool)

(assert (=> d!32205 m!129491))

(declare-fun m!129493 () Bool)

(assert (=> b!113318 m!129493))

(assert (=> b!113318 m!129295))

(assert (=> b!113318 m!129295))

(declare-fun m!129495 () Bool)

(assert (=> b!113318 m!129495))

(assert (=> b!113320 m!129295))

(assert (=> b!113320 m!129295))

(assert (=> b!113320 m!129495))

(assert (=> d!32167 d!32205))

(declare-fun d!32207 () Bool)

(declare-fun c!20303 () Bool)

(assert (=> d!32207 (= c!20303 (and ((_ is Cons!1656) lt!58576) (= (_1!1232 (h!2256 lt!58576)) (_1!1232 lt!58488))))))

(declare-fun e!73660 () Option!165)

(assert (=> d!32207 (= (getValueByKey!159 lt!58576 (_1!1232 lt!58488)) e!73660)))

(declare-fun b!113330 () Bool)

(declare-fun e!73661 () Option!165)

(assert (=> b!113330 (= e!73660 e!73661)))

(declare-fun c!20304 () Bool)

(assert (=> b!113330 (= c!20304 (and ((_ is Cons!1656) lt!58576) (not (= (_1!1232 (h!2256 lt!58576)) (_1!1232 lt!58488)))))))

(declare-fun b!113329 () Bool)

(assert (=> b!113329 (= e!73660 (Some!164 (_2!1232 (h!2256 lt!58576))))))

(declare-fun b!113331 () Bool)

(assert (=> b!113331 (= e!73661 (getValueByKey!159 (t!5846 lt!58576) (_1!1232 lt!58488)))))

(declare-fun b!113332 () Bool)

(assert (=> b!113332 (= e!73661 None!163)))

(assert (= (and d!32207 c!20303) b!113329))

(assert (= (and d!32207 (not c!20303)) b!113330))

(assert (= (and b!113330 c!20304) b!113331))

(assert (= (and b!113330 (not c!20304)) b!113332))

(declare-fun m!129497 () Bool)

(assert (=> b!113331 m!129497))

(assert (=> d!32167 d!32207))

(declare-fun d!32209 () Bool)

(assert (=> d!32209 (= (getValueByKey!159 lt!58576 (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488)))))

(declare-fun lt!58767 () Unit!3534)

(declare-fun choose!720 (List!1660 (_ BitVec 64) V!3259) Unit!3534)

(assert (=> d!32209 (= lt!58767 (choose!720 lt!58576 (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(declare-fun e!73664 () Bool)

(assert (=> d!32209 e!73664))

(declare-fun res!55844 () Bool)

(assert (=> d!32209 (=> (not res!55844) (not e!73664))))

(declare-fun isStrictlySorted!308 (List!1660) Bool)

(assert (=> d!32209 (= res!55844 (isStrictlySorted!308 lt!58576))))

(assert (=> d!32209 (= (lemmaContainsTupThenGetReturnValue!77 lt!58576 (_1!1232 lt!58488) (_2!1232 lt!58488)) lt!58767)))

(declare-fun b!113337 () Bool)

(declare-fun res!55845 () Bool)

(assert (=> b!113337 (=> (not res!55845) (not e!73664))))

(assert (=> b!113337 (= res!55845 (containsKey!163 lt!58576 (_1!1232 lt!58488)))))

(declare-fun b!113338 () Bool)

(assert (=> b!113338 (= e!73664 (contains!846 lt!58576 (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488))))))

(assert (= (and d!32209 res!55844) b!113337))

(assert (= (and b!113337 res!55845) b!113338))

(assert (=> d!32209 m!129289))

(declare-fun m!129499 () Bool)

(assert (=> d!32209 m!129499))

(declare-fun m!129501 () Bool)

(assert (=> d!32209 m!129501))

(declare-fun m!129503 () Bool)

(assert (=> b!113337 m!129503))

(declare-fun m!129505 () Bool)

(assert (=> b!113338 m!129505))

(assert (=> d!32167 d!32209))

(declare-fun b!113359 () Bool)

(declare-fun res!55851 () Bool)

(declare-fun e!73678 () Bool)

(assert (=> b!113359 (=> (not res!55851) (not e!73678))))

(declare-fun lt!58770 () List!1660)

(assert (=> b!113359 (= res!55851 (containsKey!163 lt!58770 (_1!1232 lt!58488)))))

(declare-fun b!113360 () Bool)

(declare-fun e!73675 () List!1660)

(declare-fun call!12230 () List!1660)

(assert (=> b!113360 (= e!73675 call!12230)))

(declare-fun b!113362 () Bool)

(declare-fun e!73679 () List!1660)

(declare-fun call!12229 () List!1660)

(assert (=> b!113362 (= e!73679 call!12229)))

(declare-fun bm!12225 () Bool)

(assert (=> bm!12225 (= call!12229 call!12230)))

(declare-fun b!113363 () Bool)

(assert (=> b!113363 (= e!73678 (contains!846 lt!58770 (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488))))))

(declare-fun e!73676 () List!1660)

(declare-fun b!113364 () Bool)

(assert (=> b!113364 (= e!73676 (insertStrictlySorted!79 (t!5846 (toList!817 (+!152 lt!58489 lt!58485))) (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(declare-fun b!113365 () Bool)

(declare-fun e!73677 () List!1660)

(declare-fun call!12228 () List!1660)

(assert (=> b!113365 (= e!73677 call!12228)))

(declare-fun b!113366 () Bool)

(assert (=> b!113366 (= e!73677 e!73675)))

(declare-fun c!20313 () Bool)

(assert (=> b!113366 (= c!20313 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58485))) (= (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58485)))) (_1!1232 lt!58488))))))

(declare-fun bm!12226 () Bool)

(assert (=> bm!12226 (= call!12230 call!12228)))

(declare-fun c!20315 () Bool)

(declare-fun b!113367 () Bool)

(assert (=> b!113367 (= e!73676 (ite c!20313 (t!5846 (toList!817 (+!152 lt!58489 lt!58485))) (ite c!20315 (Cons!1656 (h!2256 (toList!817 (+!152 lt!58489 lt!58485))) (t!5846 (toList!817 (+!152 lt!58489 lt!58485)))) Nil!1657)))))

(declare-fun b!113368 () Bool)

(assert (=> b!113368 (= c!20315 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58485))) (bvsgt (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58485)))) (_1!1232 lt!58488))))))

(assert (=> b!113368 (= e!73675 e!73679)))

(declare-fun c!20314 () Bool)

(declare-fun bm!12227 () Bool)

(declare-fun $colon$colon!84 (List!1660 tuple2!2444) List!1660)

(assert (=> bm!12227 (= call!12228 ($colon$colon!84 e!73676 (ite c!20314 (h!2256 (toList!817 (+!152 lt!58489 lt!58485))) (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488)))))))

(declare-fun c!20316 () Bool)

(assert (=> bm!12227 (= c!20316 c!20314)))

(declare-fun b!113361 () Bool)

(assert (=> b!113361 (= e!73679 call!12229)))

(declare-fun d!32211 () Bool)

(assert (=> d!32211 e!73678))

(declare-fun res!55850 () Bool)

(assert (=> d!32211 (=> (not res!55850) (not e!73678))))

(assert (=> d!32211 (= res!55850 (isStrictlySorted!308 lt!58770))))

(assert (=> d!32211 (= lt!58770 e!73677)))

(assert (=> d!32211 (= c!20314 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58485))) (bvslt (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58485)))) (_1!1232 lt!58488))))))

(assert (=> d!32211 (isStrictlySorted!308 (toList!817 (+!152 lt!58489 lt!58485)))))

(assert (=> d!32211 (= (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 lt!58485)) (_1!1232 lt!58488) (_2!1232 lt!58488)) lt!58770)))

(assert (= (and d!32211 c!20314) b!113365))

(assert (= (and d!32211 (not c!20314)) b!113366))

(assert (= (and b!113366 c!20313) b!113360))

(assert (= (and b!113366 (not c!20313)) b!113368))

(assert (= (and b!113368 c!20315) b!113361))

(assert (= (and b!113368 (not c!20315)) b!113362))

(assert (= (or b!113361 b!113362) bm!12225))

(assert (= (or b!113360 bm!12225) bm!12226))

(assert (= (or b!113365 bm!12226) bm!12227))

(assert (= (and bm!12227 c!20316) b!113364))

(assert (= (and bm!12227 (not c!20316)) b!113367))

(assert (= (and d!32211 res!55850) b!113359))

(assert (= (and b!113359 res!55851) b!113363))

(declare-fun m!129507 () Bool)

(assert (=> d!32211 m!129507))

(declare-fun m!129509 () Bool)

(assert (=> d!32211 m!129509))

(declare-fun m!129511 () Bool)

(assert (=> b!113364 m!129511))

(declare-fun m!129513 () Bool)

(assert (=> bm!12227 m!129513))

(declare-fun m!129515 () Bool)

(assert (=> b!113363 m!129515))

(declare-fun m!129517 () Bool)

(assert (=> b!113359 m!129517))

(assert (=> d!32167 d!32211))

(assert (=> d!32179 d!32171))

(declare-fun b!113369 () Bool)

(declare-fun e!73682 () Bool)

(declare-fun e!73681 () Bool)

(assert (=> b!113369 (= e!73682 e!73681)))

(declare-fun c!20317 () Bool)

(assert (=> b!113369 (= c!20317 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113370 () Bool)

(declare-fun e!73680 () Bool)

(assert (=> b!113370 (= e!73681 e!73680)))

(declare-fun lt!58772 () (_ BitVec 64))

(assert (=> b!113370 (= lt!58772 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58771 () Unit!3534)

(assert (=> b!113370 (= lt!58771 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4381 newMap!16) lt!58772 #b00000000000000000000000000000000))))

(assert (=> b!113370 (arrayContainsKey!0 (_keys!4381 newMap!16) lt!58772 #b00000000000000000000000000000000)))

(declare-fun lt!58773 () Unit!3534)

(assert (=> b!113370 (= lt!58773 lt!58771)))

(declare-fun res!55853 () Bool)

(assert (=> b!113370 (= res!55853 (= (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000) (_keys!4381 newMap!16) (mask!6845 newMap!16)) (Found!273 #b00000000000000000000000000000000)))))

(assert (=> b!113370 (=> (not res!55853) (not e!73680))))

(declare-fun b!113371 () Bool)

(declare-fun call!12231 () Bool)

(assert (=> b!113371 (= e!73680 call!12231)))

(declare-fun bm!12228 () Bool)

(assert (=> bm!12228 (= call!12231 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun b!113372 () Bool)

(assert (=> b!113372 (= e!73681 call!12231)))

(declare-fun d!32213 () Bool)

(declare-fun res!55852 () Bool)

(assert (=> d!32213 (=> res!55852 e!73682)))

(assert (=> d!32213 (= res!55852 (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32213 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 newMap!16) (mask!6845 newMap!16)) e!73682)))

(assert (= (and d!32213 (not res!55852)) b!113369))

(assert (= (and b!113369 c!20317) b!113370))

(assert (= (and b!113369 (not c!20317)) b!113372))

(assert (= (and b!113370 res!55853) b!113371))

(assert (= (or b!113371 b!113372) bm!12228))

(declare-fun m!129519 () Bool)

(assert (=> b!113369 m!129519))

(assert (=> b!113369 m!129519))

(declare-fun m!129521 () Bool)

(assert (=> b!113369 m!129521))

(assert (=> b!113370 m!129519))

(declare-fun m!129523 () Bool)

(assert (=> b!113370 m!129523))

(declare-fun m!129525 () Bool)

(assert (=> b!113370 m!129525))

(assert (=> b!113370 m!129519))

(declare-fun m!129527 () Bool)

(assert (=> b!113370 m!129527))

(declare-fun m!129529 () Bool)

(assert (=> bm!12228 m!129529))

(assert (=> b!113152 d!32213))

(assert (=> b!113139 d!32201))

(declare-fun d!32215 () Bool)

(declare-fun res!55854 () Bool)

(declare-fun e!73683 () Bool)

(assert (=> d!32215 (=> res!55854 e!73683)))

(assert (=> d!32215 (= res!55854 (= (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32215 (= (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000) e!73683)))

(declare-fun b!113373 () Bool)

(declare-fun e!73684 () Bool)

(assert (=> b!113373 (= e!73683 e!73684)))

(declare-fun res!55855 () Bool)

(assert (=> b!113373 (=> (not res!55855) (not e!73684))))

(assert (=> b!113373 (= res!55855 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113374 () Bool)

(assert (=> b!113374 (= e!73684 (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!32215 (not res!55854)) b!113373))

(assert (= (and b!113373 res!55855) b!113374))

(assert (=> d!32215 m!129519))

(assert (=> b!113374 m!129119))

(declare-fun m!129531 () Bool)

(assert (=> b!113374 m!129531))

(assert (=> bm!12207 d!32215))

(declare-fun d!32217 () Bool)

(declare-fun e!73685 () Bool)

(assert (=> d!32217 e!73685))

(declare-fun res!55857 () Bool)

(assert (=> d!32217 (=> (not res!55857) (not e!73685))))

(declare-fun lt!58775 () ListLongMap!1603)

(assert (=> d!32217 (= res!55857 (contains!844 lt!58775 (_1!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(declare-fun lt!58776 () List!1660)

(assert (=> d!32217 (= lt!58775 (ListLongMap!1604 lt!58776))))

(declare-fun lt!58777 () Unit!3534)

(declare-fun lt!58774 () Unit!3534)

(assert (=> d!32217 (= lt!58777 lt!58774)))

(assert (=> d!32217 (= (getValueByKey!159 lt!58776 (_1!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))) (Some!164 (_2!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(assert (=> d!32217 (= lt!58774 (lemmaContainsTupThenGetReturnValue!77 lt!58776 (_1!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (_2!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(assert (=> d!32217 (= lt!58776 (insertStrictlySorted!79 (toList!817 (ite c!20290 (ite c!20286 call!12205 call!12200) call!12202)) (_1!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (_2!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(assert (=> d!32217 (= (+!152 (ite c!20290 (ite c!20286 call!12205 call!12200) call!12202) (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) lt!58775)))

(declare-fun b!113375 () Bool)

(declare-fun res!55856 () Bool)

(assert (=> b!113375 (=> (not res!55856) (not e!73685))))

(assert (=> b!113375 (= res!55856 (= (getValueByKey!159 (toList!817 lt!58775) (_1!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))) (Some!164 (_2!1232 (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))))

(declare-fun b!113376 () Bool)

(assert (=> b!113376 (= e!73685 (contains!846 (toList!817 lt!58775) (ite c!20290 (ite c!20286 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (= (and d!32217 res!55857) b!113375))

(assert (= (and b!113375 res!55856) b!113376))

(declare-fun m!129533 () Bool)

(assert (=> d!32217 m!129533))

(declare-fun m!129535 () Bool)

(assert (=> d!32217 m!129535))

(declare-fun m!129537 () Bool)

(assert (=> d!32217 m!129537))

(declare-fun m!129539 () Bool)

(assert (=> d!32217 m!129539))

(declare-fun m!129541 () Bool)

(assert (=> b!113375 m!129541))

(declare-fun m!129543 () Bool)

(assert (=> b!113376 m!129543))

(assert (=> bm!12200 d!32217))

(declare-fun d!32219 () Bool)

(declare-fun get!1371 (Option!165) V!3259)

(assert (=> d!32219 (= (apply!102 lt!58652 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1371 (getValueByKey!159 (toList!817 lt!58652) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4649 () Bool)

(assert (= bs!4649 d!32219))

(assert (=> bs!4649 m!129237))

(declare-fun m!129545 () Bool)

(assert (=> bs!4649 m!129545))

(assert (=> bs!4649 m!129545))

(declare-fun m!129547 () Bool)

(assert (=> bs!4649 m!129547))

(assert (=> b!113125 d!32219))

(declare-fun d!32221 () Bool)

(declare-fun c!20318 () Bool)

(assert (=> d!32221 (= c!20318 ((_ is ValueCellFull!1011) (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!73686 () V!3259)

(assert (=> d!32221 (= (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!73686)))

(declare-fun b!113377 () Bool)

(assert (=> b!113377 (= e!73686 (get!1369 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!113378 () Bool)

(assert (=> b!113378 (= e!73686 (get!1370 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32221 c!20318) b!113377))

(assert (= (and d!32221 (not c!20318)) b!113378))

(assert (=> b!113377 m!129261))

(assert (=> b!113377 m!129167))

(declare-fun m!129549 () Bool)

(assert (=> b!113377 m!129549))

(assert (=> b!113378 m!129261))

(assert (=> b!113378 m!129167))

(declare-fun m!129551 () Bool)

(assert (=> b!113378 m!129551))

(assert (=> b!113125 d!32221))

(declare-fun d!32223 () Bool)

(assert (=> d!32223 (= (map!1302 (_2!1231 lt!58740)) (getCurrentListMap!493 (_keys!4381 (_2!1231 lt!58740)) (_values!2644 (_2!1231 lt!58740)) (mask!6845 (_2!1231 lt!58740)) (extraKeys!2452 (_2!1231 lt!58740)) (zeroValue!2529 (_2!1231 lt!58740)) (minValue!2529 (_2!1231 lt!58740)) #b00000000000000000000000000000000 (defaultEntry!2661 (_2!1231 lt!58740))))))

(declare-fun bs!4650 () Bool)

(assert (= bs!4650 d!32223))

(declare-fun m!129553 () Bool)

(assert (=> bs!4650 m!129553))

(assert (=> bm!12198 d!32223))

(declare-fun d!32225 () Bool)

(declare-fun e!73688 () Bool)

(assert (=> d!32225 e!73688))

(declare-fun res!55858 () Bool)

(assert (=> d!32225 (=> res!55858 e!73688)))

(declare-fun lt!58778 () Bool)

(assert (=> d!32225 (= res!55858 (not lt!58778))))

(declare-fun lt!58781 () Bool)

(assert (=> d!32225 (= lt!58778 lt!58781)))

(declare-fun lt!58779 () Unit!3534)

(declare-fun e!73687 () Unit!3534)

(assert (=> d!32225 (= lt!58779 e!73687)))

(declare-fun c!20319 () Bool)

(assert (=> d!32225 (= c!20319 lt!58781)))

(assert (=> d!32225 (= lt!58781 (containsKey!163 (toList!817 lt!58568) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!32225 (= (contains!844 lt!58568 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!58778)))

(declare-fun b!113379 () Bool)

(declare-fun lt!58780 () Unit!3534)

(assert (=> b!113379 (= e!73687 lt!58780)))

(assert (=> b!113379 (= lt!58780 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58568) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!113379 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!113380 () Bool)

(declare-fun Unit!3543 () Unit!3534)

(assert (=> b!113380 (= e!73687 Unit!3543)))

(declare-fun b!113381 () Bool)

(assert (=> b!113381 (= e!73688 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!32225 c!20319) b!113379))

(assert (= (and d!32225 (not c!20319)) b!113380))

(assert (= (and d!32225 (not res!55858)) b!113381))

(assert (=> d!32225 m!129237))

(declare-fun m!129555 () Bool)

(assert (=> d!32225 m!129555))

(assert (=> b!113379 m!129237))

(declare-fun m!129557 () Bool)

(assert (=> b!113379 m!129557))

(assert (=> b!113379 m!129237))

(declare-fun m!129559 () Bool)

(assert (=> b!113379 m!129559))

(assert (=> b!113379 m!129559))

(declare-fun m!129561 () Bool)

(assert (=> b!113379 m!129561))

(assert (=> b!113381 m!129237))

(assert (=> b!113381 m!129559))

(assert (=> b!113381 m!129559))

(assert (=> b!113381 m!129561))

(assert (=> b!113073 d!32225))

(declare-fun d!32227 () Bool)

(declare-fun res!55859 () Bool)

(declare-fun e!73689 () Bool)

(assert (=> d!32227 (=> res!55859 e!73689)))

(assert (=> d!32227 (= res!55859 (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32227 (= (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!73689)))

(declare-fun b!113382 () Bool)

(declare-fun e!73690 () Bool)

(assert (=> b!113382 (= e!73689 e!73690)))

(declare-fun res!55860 () Bool)

(assert (=> b!113382 (=> (not res!55860) (not e!73690))))

(assert (=> b!113382 (= res!55860 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113383 () Bool)

(assert (=> b!113383 (= e!73690 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!32227 (not res!55859)) b!113382))

(assert (= (and b!113382 res!55860) b!113383))

(declare-fun m!129563 () Bool)

(assert (=> d!32227 m!129563))

(assert (=> b!113383 m!129119))

(declare-fun m!129565 () Bool)

(assert (=> b!113383 m!129565))

(assert (=> b!113012 d!32227))

(declare-fun d!32229 () Bool)

(declare-fun e!73692 () Bool)

(assert (=> d!32229 e!73692))

(declare-fun res!55861 () Bool)

(assert (=> d!32229 (=> res!55861 e!73692)))

(declare-fun lt!58782 () Bool)

(assert (=> d!32229 (= res!55861 (not lt!58782))))

(declare-fun lt!58785 () Bool)

(assert (=> d!32229 (= lt!58782 lt!58785)))

(declare-fun lt!58783 () Unit!3534)

(declare-fun e!73691 () Unit!3534)

(assert (=> d!32229 (= lt!58783 e!73691)))

(declare-fun c!20320 () Bool)

(assert (=> d!32229 (= c!20320 lt!58785)))

(assert (=> d!32229 (= lt!58785 (containsKey!163 (toList!817 lt!58579) (_1!1232 lt!58485)))))

(assert (=> d!32229 (= (contains!844 lt!58579 (_1!1232 lt!58485)) lt!58782)))

(declare-fun b!113384 () Bool)

(declare-fun lt!58784 () Unit!3534)

(assert (=> b!113384 (= e!73691 lt!58784)))

(assert (=> b!113384 (= lt!58784 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58579) (_1!1232 lt!58485)))))

(assert (=> b!113384 (isDefined!113 (getValueByKey!159 (toList!817 lt!58579) (_1!1232 lt!58485)))))

(declare-fun b!113385 () Bool)

(declare-fun Unit!3544 () Unit!3534)

(assert (=> b!113385 (= e!73691 Unit!3544)))

(declare-fun b!113386 () Bool)

(assert (=> b!113386 (= e!73692 (isDefined!113 (getValueByKey!159 (toList!817 lt!58579) (_1!1232 lt!58485))))))

(assert (= (and d!32229 c!20320) b!113384))

(assert (= (and d!32229 (not c!20320)) b!113385))

(assert (= (and d!32229 (not res!55861)) b!113386))

(declare-fun m!129567 () Bool)

(assert (=> d!32229 m!129567))

(declare-fun m!129569 () Bool)

(assert (=> b!113384 m!129569))

(assert (=> b!113384 m!129307))

(assert (=> b!113384 m!129307))

(declare-fun m!129571 () Bool)

(assert (=> b!113384 m!129571))

(assert (=> b!113386 m!129307))

(assert (=> b!113386 m!129307))

(assert (=> b!113386 m!129571))

(assert (=> d!32169 d!32229))

(declare-fun d!32231 () Bool)

(declare-fun c!20321 () Bool)

(assert (=> d!32231 (= c!20321 (and ((_ is Cons!1656) lt!58580) (= (_1!1232 (h!2256 lt!58580)) (_1!1232 lt!58485))))))

(declare-fun e!73693 () Option!165)

(assert (=> d!32231 (= (getValueByKey!159 lt!58580 (_1!1232 lt!58485)) e!73693)))

(declare-fun b!113388 () Bool)

(declare-fun e!73694 () Option!165)

(assert (=> b!113388 (= e!73693 e!73694)))

(declare-fun c!20322 () Bool)

(assert (=> b!113388 (= c!20322 (and ((_ is Cons!1656) lt!58580) (not (= (_1!1232 (h!2256 lt!58580)) (_1!1232 lt!58485)))))))

(declare-fun b!113387 () Bool)

(assert (=> b!113387 (= e!73693 (Some!164 (_2!1232 (h!2256 lt!58580))))))

(declare-fun b!113389 () Bool)

(assert (=> b!113389 (= e!73694 (getValueByKey!159 (t!5846 lt!58580) (_1!1232 lt!58485)))))

(declare-fun b!113390 () Bool)

(assert (=> b!113390 (= e!73694 None!163)))

(assert (= (and d!32231 c!20321) b!113387))

(assert (= (and d!32231 (not c!20321)) b!113388))

(assert (= (and b!113388 c!20322) b!113389))

(assert (= (and b!113388 (not c!20322)) b!113390))

(declare-fun m!129573 () Bool)

(assert (=> b!113389 m!129573))

(assert (=> d!32169 d!32231))

(declare-fun d!32233 () Bool)

(assert (=> d!32233 (= (getValueByKey!159 lt!58580 (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485)))))

(declare-fun lt!58786 () Unit!3534)

(assert (=> d!32233 (= lt!58786 (choose!720 lt!58580 (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(declare-fun e!73695 () Bool)

(assert (=> d!32233 e!73695))

(declare-fun res!55862 () Bool)

(assert (=> d!32233 (=> (not res!55862) (not e!73695))))

(assert (=> d!32233 (= res!55862 (isStrictlySorted!308 lt!58580))))

(assert (=> d!32233 (= (lemmaContainsTupThenGetReturnValue!77 lt!58580 (_1!1232 lt!58485) (_2!1232 lt!58485)) lt!58786)))

(declare-fun b!113391 () Bool)

(declare-fun res!55863 () Bool)

(assert (=> b!113391 (=> (not res!55863) (not e!73695))))

(assert (=> b!113391 (= res!55863 (containsKey!163 lt!58580 (_1!1232 lt!58485)))))

(declare-fun b!113392 () Bool)

(assert (=> b!113392 (= e!73695 (contains!846 lt!58580 (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485))))))

(assert (= (and d!32233 res!55862) b!113391))

(assert (= (and b!113391 res!55863) b!113392))

(assert (=> d!32233 m!129301))

(declare-fun m!129575 () Bool)

(assert (=> d!32233 m!129575))

(declare-fun m!129577 () Bool)

(assert (=> d!32233 m!129577))

(declare-fun m!129579 () Bool)

(assert (=> b!113391 m!129579))

(declare-fun m!129581 () Bool)

(assert (=> b!113392 m!129581))

(assert (=> d!32169 d!32233))

(declare-fun b!113393 () Bool)

(declare-fun res!55865 () Bool)

(declare-fun e!73699 () Bool)

(assert (=> b!113393 (=> (not res!55865) (not e!73699))))

(declare-fun lt!58787 () List!1660)

(assert (=> b!113393 (= res!55865 (containsKey!163 lt!58787 (_1!1232 lt!58485)))))

(declare-fun b!113394 () Bool)

(declare-fun e!73696 () List!1660)

(declare-fun call!12234 () List!1660)

(assert (=> b!113394 (= e!73696 call!12234)))

(declare-fun b!113396 () Bool)

(declare-fun e!73700 () List!1660)

(declare-fun call!12233 () List!1660)

(assert (=> b!113396 (= e!73700 call!12233)))

(declare-fun bm!12229 () Bool)

(assert (=> bm!12229 (= call!12233 call!12234)))

(declare-fun b!113397 () Bool)

(assert (=> b!113397 (= e!73699 (contains!846 lt!58787 (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485))))))

(declare-fun e!73697 () List!1660)

(declare-fun b!113398 () Bool)

(assert (=> b!113398 (= e!73697 (insertStrictlySorted!79 (t!5846 (toList!817 (+!152 lt!58489 lt!58488))) (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(declare-fun b!113399 () Bool)

(declare-fun e!73698 () List!1660)

(declare-fun call!12232 () List!1660)

(assert (=> b!113399 (= e!73698 call!12232)))

(declare-fun b!113400 () Bool)

(assert (=> b!113400 (= e!73698 e!73696)))

(declare-fun c!20323 () Bool)

(assert (=> b!113400 (= c!20323 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58488))) (= (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58488)))) (_1!1232 lt!58485))))))

(declare-fun bm!12230 () Bool)

(assert (=> bm!12230 (= call!12234 call!12232)))

(declare-fun c!20325 () Bool)

(declare-fun b!113401 () Bool)

(assert (=> b!113401 (= e!73697 (ite c!20323 (t!5846 (toList!817 (+!152 lt!58489 lt!58488))) (ite c!20325 (Cons!1656 (h!2256 (toList!817 (+!152 lt!58489 lt!58488))) (t!5846 (toList!817 (+!152 lt!58489 lt!58488)))) Nil!1657)))))

(declare-fun b!113402 () Bool)

(assert (=> b!113402 (= c!20325 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58488))) (bvsgt (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58488)))) (_1!1232 lt!58485))))))

(assert (=> b!113402 (= e!73696 e!73700)))

(declare-fun bm!12231 () Bool)

(declare-fun c!20324 () Bool)

(assert (=> bm!12231 (= call!12232 ($colon$colon!84 e!73697 (ite c!20324 (h!2256 (toList!817 (+!152 lt!58489 lt!58488))) (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485)))))))

(declare-fun c!20326 () Bool)

(assert (=> bm!12231 (= c!20326 c!20324)))

(declare-fun b!113395 () Bool)

(assert (=> b!113395 (= e!73700 call!12233)))

(declare-fun d!32235 () Bool)

(assert (=> d!32235 e!73699))

(declare-fun res!55864 () Bool)

(assert (=> d!32235 (=> (not res!55864) (not e!73699))))

(assert (=> d!32235 (= res!55864 (isStrictlySorted!308 lt!58787))))

(assert (=> d!32235 (= lt!58787 e!73698)))

(assert (=> d!32235 (= c!20324 (and ((_ is Cons!1656) (toList!817 (+!152 lt!58489 lt!58488))) (bvslt (_1!1232 (h!2256 (toList!817 (+!152 lt!58489 lt!58488)))) (_1!1232 lt!58485))))))

(assert (=> d!32235 (isStrictlySorted!308 (toList!817 (+!152 lt!58489 lt!58488)))))

(assert (=> d!32235 (= (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 lt!58488)) (_1!1232 lt!58485) (_2!1232 lt!58485)) lt!58787)))

(assert (= (and d!32235 c!20324) b!113399))

(assert (= (and d!32235 (not c!20324)) b!113400))

(assert (= (and b!113400 c!20323) b!113394))

(assert (= (and b!113400 (not c!20323)) b!113402))

(assert (= (and b!113402 c!20325) b!113395))

(assert (= (and b!113402 (not c!20325)) b!113396))

(assert (= (or b!113395 b!113396) bm!12229))

(assert (= (or b!113394 bm!12229) bm!12230))

(assert (= (or b!113399 bm!12230) bm!12231))

(assert (= (and bm!12231 c!20326) b!113398))

(assert (= (and bm!12231 (not c!20326)) b!113401))

(assert (= (and d!32235 res!55864) b!113393))

(assert (= (and b!113393 res!55865) b!113397))

(declare-fun m!129583 () Bool)

(assert (=> d!32235 m!129583))

(declare-fun m!129585 () Bool)

(assert (=> d!32235 m!129585))

(declare-fun m!129587 () Bool)

(assert (=> b!113398 m!129587))

(declare-fun m!129589 () Bool)

(assert (=> bm!12231 m!129589))

(declare-fun m!129591 () Bool)

(assert (=> b!113397 m!129591))

(declare-fun m!129593 () Bool)

(assert (=> b!113393 m!129593))

(assert (=> d!32169 d!32235))

(declare-fun d!32237 () Bool)

(assert (=> d!32237 (= (get!1370 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113159 d!32237))

(declare-fun d!32239 () Bool)

(assert (=> d!32239 (= (apply!102 lt!58652 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1371 (getValueByKey!159 (toList!817 lt!58652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4651 () Bool)

(assert (= bs!4651 d!32239))

(declare-fun m!129595 () Bool)

(assert (=> bs!4651 m!129595))

(assert (=> bs!4651 m!129595))

(declare-fun m!129597 () Bool)

(assert (=> bs!4651 m!129597))

(assert (=> b!113127 d!32239))

(assert (=> d!32155 d!32161))

(declare-fun d!32241 () Bool)

(assert (=> d!32241 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) from!355 Nil!1658)))

(assert (=> d!32241 true))

(declare-fun _$71!159 () Unit!3534)

(assert (=> d!32241 (= (choose!39 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!159)))

(declare-fun bs!4652 () Bool)

(assert (= bs!4652 d!32241))

(assert (=> bs!4652 m!129117))

(assert (=> d!32155 d!32241))

(declare-fun d!32243 () Bool)

(declare-fun c!20327 () Bool)

(assert (=> d!32243 (= c!20327 (and ((_ is Cons!1656) (toList!817 lt!58575)) (= (_1!1232 (h!2256 (toList!817 lt!58575))) (_1!1232 lt!58488))))))

(declare-fun e!73701 () Option!165)

(assert (=> d!32243 (= (getValueByKey!159 (toList!817 lt!58575) (_1!1232 lt!58488)) e!73701)))

(declare-fun b!113404 () Bool)

(declare-fun e!73702 () Option!165)

(assert (=> b!113404 (= e!73701 e!73702)))

(declare-fun c!20328 () Bool)

(assert (=> b!113404 (= c!20328 (and ((_ is Cons!1656) (toList!817 lt!58575)) (not (= (_1!1232 (h!2256 (toList!817 lt!58575))) (_1!1232 lt!58488)))))))

(declare-fun b!113403 () Bool)

(assert (=> b!113403 (= e!73701 (Some!164 (_2!1232 (h!2256 (toList!817 lt!58575)))))))

(declare-fun b!113405 () Bool)

(assert (=> b!113405 (= e!73702 (getValueByKey!159 (t!5846 (toList!817 lt!58575)) (_1!1232 lt!58488)))))

(declare-fun b!113406 () Bool)

(assert (=> b!113406 (= e!73702 None!163)))

(assert (= (and d!32243 c!20327) b!113403))

(assert (= (and d!32243 (not c!20327)) b!113404))

(assert (= (and b!113404 c!20328) b!113405))

(assert (= (and b!113404 (not c!20328)) b!113406))

(declare-fun m!129599 () Bool)

(assert (=> b!113405 m!129599))

(assert (=> b!113076 d!32243))

(declare-fun d!32245 () Bool)

(assert (=> d!32245 (= (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113297 d!32245))

(assert (=> bm!12136 d!32165))

(declare-fun d!32247 () Bool)

(declare-fun e!73705 () Bool)

(assert (=> d!32247 e!73705))

(declare-fun c!20331 () Bool)

(assert (=> d!32247 (= c!20331 (and (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!32247 true))

(declare-fun _$29!153 () Unit!3534)

(assert (=> d!32247 (= (choose!718 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) _$29!153)))

(declare-fun b!113411 () Bool)

(assert (=> b!113411 (= e!73705 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!113412 () Bool)

(assert (=> b!113412 (= e!73705 (ite (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!32247 c!20331) b!113411))

(assert (= (and d!32247 (not c!20331)) b!113412))

(assert (=> b!113411 m!129119))

(assert (=> b!113411 m!129123))

(assert (=> d!32159 d!32247))

(assert (=> d!32159 d!32171))

(assert (=> b!113017 d!32157))

(declare-fun b!113413 () Bool)

(declare-fun e!73708 () ListLongMap!1603)

(declare-fun call!12240 () ListLongMap!1603)

(assert (=> b!113413 (= e!73708 call!12240)))

(declare-fun lt!58807 () ListLongMap!1603)

(declare-fun b!113414 () Bool)

(declare-fun e!73711 () Bool)

(assert (=> b!113414 (= e!73711 (= (apply!102 lt!58807 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)) (get!1368 (select (arr!2093 (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728)) #b00000000000000000000000000000000) (dynLambda!395 (defaultEntry!2661 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113414 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2352 (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728))))))

(assert (=> b!113414 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113415 () Bool)

(declare-fun e!73706 () ListLongMap!1603)

(declare-fun call!12241 () ListLongMap!1603)

(assert (=> b!113415 (= e!73706 (+!152 call!12241 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16))))))

(declare-fun e!73717 () Bool)

(declare-fun b!113416 () Bool)

(assert (=> b!113416 (= e!73717 (= (apply!102 lt!58807 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16))))))

(declare-fun b!113417 () Bool)

(declare-fun call!12237 () ListLongMap!1603)

(assert (=> b!113417 (= e!73708 call!12237)))

(declare-fun bm!12232 () Bool)

(declare-fun call!12239 () ListLongMap!1603)

(assert (=> bm!12232 (= call!12239 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun bm!12233 () Bool)

(declare-fun call!12235 () ListLongMap!1603)

(assert (=> bm!12233 (= call!12235 call!12239)))

(declare-fun c!20332 () Bool)

(declare-fun b!113418 () Bool)

(assert (=> b!113418 (= c!20332 (and (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!73707 () ListLongMap!1603)

(assert (=> b!113418 (= e!73707 e!73708)))

(declare-fun bm!12234 () Bool)

(assert (=> bm!12234 (= call!12237 call!12241)))

(declare-fun b!113419 () Bool)

(declare-fun e!73715 () Bool)

(declare-fun call!12236 () Bool)

(assert (=> b!113419 (= e!73715 (not call!12236))))

(declare-fun b!113420 () Bool)

(declare-fun e!73710 () Bool)

(assert (=> b!113420 (= e!73710 (= (apply!102 lt!58807 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2529 newMap!16)))))

(declare-fun b!113421 () Bool)

(assert (=> b!113421 (= e!73715 e!73717)))

(declare-fun res!55873 () Bool)

(assert (=> b!113421 (= res!55873 call!12236)))

(assert (=> b!113421 (=> (not res!55873) (not e!73717))))

(declare-fun d!32249 () Bool)

(declare-fun e!73712 () Bool)

(assert (=> d!32249 e!73712))

(declare-fun res!55866 () Bool)

(assert (=> d!32249 (=> (not res!55866) (not e!73712))))

(assert (=> d!32249 (= res!55866 (or (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))))

(declare-fun lt!58801 () ListLongMap!1603)

(assert (=> d!32249 (= lt!58807 lt!58801)))

(declare-fun lt!58805 () Unit!3534)

(declare-fun e!73718 () Unit!3534)

(assert (=> d!32249 (= lt!58805 e!73718)))

(declare-fun c!20335 () Bool)

(declare-fun e!73709 () Bool)

(assert (=> d!32249 (= c!20335 e!73709)))

(declare-fun res!55871 () Bool)

(assert (=> d!32249 (=> (not res!55871) (not e!73709))))

(assert (=> d!32249 (= res!55871 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32249 (= lt!58801 e!73706)))

(declare-fun c!20337 () Bool)

(assert (=> d!32249 (= c!20337 (and (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32249 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32249 (= (getCurrentListMap!493 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) lt!58807)))

(declare-fun bm!12235 () Bool)

(assert (=> bm!12235 (= call!12236 (contains!844 lt!58807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12236 () Bool)

(declare-fun c!20336 () Bool)

(assert (=> bm!12236 (= call!12241 (+!152 (ite c!20337 call!12239 (ite c!20336 call!12235 call!12240)) (ite (or c!20337 c!20336) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16)))))))

(declare-fun b!113422 () Bool)

(declare-fun e!73713 () Bool)

(assert (=> b!113422 (= e!73713 e!73711)))

(declare-fun res!55868 () Bool)

(assert (=> b!113422 (=> (not res!55868) (not e!73711))))

(assert (=> b!113422 (= res!55868 (contains!844 lt!58807 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!113422 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113423 () Bool)

(assert (=> b!113423 (= e!73706 e!73707)))

(assert (=> b!113423 (= c!20336 (and (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113424 () Bool)

(declare-fun lt!58795 () Unit!3534)

(assert (=> b!113424 (= e!73718 lt!58795)))

(declare-fun lt!58788 () ListLongMap!1603)

(assert (=> b!113424 (= lt!58788 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58794 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58794 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58793 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58793 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58798 () Unit!3534)

(assert (=> b!113424 (= lt!58798 (addStillContains!78 lt!58788 lt!58794 (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) lt!58793))))

(assert (=> b!113424 (contains!844 (+!152 lt!58788 (tuple2!2445 lt!58794 (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)))) lt!58793)))

(declare-fun lt!58792 () Unit!3534)

(assert (=> b!113424 (= lt!58792 lt!58798)))

(declare-fun lt!58803 () ListLongMap!1603)

(assert (=> b!113424 (= lt!58803 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58790 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58790 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58802 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58802 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58797 () Unit!3534)

(assert (=> b!113424 (= lt!58797 (addApplyDifferent!78 lt!58803 lt!58790 (minValue!2529 newMap!16) lt!58802))))

(assert (=> b!113424 (= (apply!102 (+!152 lt!58803 (tuple2!2445 lt!58790 (minValue!2529 newMap!16))) lt!58802) (apply!102 lt!58803 lt!58802))))

(declare-fun lt!58804 () Unit!3534)

(assert (=> b!113424 (= lt!58804 lt!58797)))

(declare-fun lt!58808 () ListLongMap!1603)

(assert (=> b!113424 (= lt!58808 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58806 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58806 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58796 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58796 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58791 () Unit!3534)

(assert (=> b!113424 (= lt!58791 (addApplyDifferent!78 lt!58808 lt!58806 (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) lt!58796))))

(assert (=> b!113424 (= (apply!102 (+!152 lt!58808 (tuple2!2445 lt!58806 (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)))) lt!58796) (apply!102 lt!58808 lt!58796))))

(declare-fun lt!58789 () Unit!3534)

(assert (=> b!113424 (= lt!58789 lt!58791)))

(declare-fun lt!58799 () ListLongMap!1603)

(assert (=> b!113424 (= lt!58799 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (ite (or c!20290 c!20291) (_values!2644 newMap!16) lt!58728) (mask!6845 newMap!16) (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) (ite (and c!20290 c!20286) lt!58491 (zeroValue!2529 newMap!16)) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58800 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58800 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58809 () (_ BitVec 64))

(assert (=> b!113424 (= lt!58809 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!113424 (= lt!58795 (addApplyDifferent!78 lt!58799 lt!58800 (minValue!2529 newMap!16) lt!58809))))

(assert (=> b!113424 (= (apply!102 (+!152 lt!58799 (tuple2!2445 lt!58800 (minValue!2529 newMap!16))) lt!58809) (apply!102 lt!58799 lt!58809))))

(declare-fun bm!12237 () Bool)

(declare-fun call!12238 () Bool)

(assert (=> bm!12237 (= call!12238 (contains!844 lt!58807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113425 () Bool)

(declare-fun e!73716 () Bool)

(assert (=> b!113425 (= e!73716 (not call!12238))))

(declare-fun bm!12238 () Bool)

(assert (=> bm!12238 (= call!12240 call!12235)))

(declare-fun b!113426 () Bool)

(assert (=> b!113426 (= e!73709 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113427 () Bool)

(assert (=> b!113427 (= e!73712 e!73716)))

(declare-fun c!20333 () Bool)

(assert (=> b!113427 (= c!20333 (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113428 () Bool)

(declare-fun e!73714 () Bool)

(assert (=> b!113428 (= e!73714 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113429 () Bool)

(assert (=> b!113429 (= e!73716 e!73710)))

(declare-fun res!55870 () Bool)

(assert (=> b!113429 (= res!55870 call!12238)))

(assert (=> b!113429 (=> (not res!55870) (not e!73710))))

(declare-fun b!113430 () Bool)

(declare-fun res!55872 () Bool)

(assert (=> b!113430 (=> (not res!55872) (not e!73712))))

(assert (=> b!113430 (= res!55872 e!73713)))

(declare-fun res!55874 () Bool)

(assert (=> b!113430 (=> res!55874 e!73713)))

(assert (=> b!113430 (= res!55874 (not e!73714))))

(declare-fun res!55867 () Bool)

(assert (=> b!113430 (=> (not res!55867) (not e!73714))))

(assert (=> b!113430 (= res!55867 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113431 () Bool)

(declare-fun res!55869 () Bool)

(assert (=> b!113431 (=> (not res!55869) (not e!73712))))

(assert (=> b!113431 (= res!55869 e!73715)))

(declare-fun c!20334 () Bool)

(assert (=> b!113431 (= c!20334 (not (= (bvand (ite (and c!20290 c!20286) lt!58723 (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!113432 () Bool)

(declare-fun Unit!3545 () Unit!3534)

(assert (=> b!113432 (= e!73718 Unit!3545)))

(declare-fun b!113433 () Bool)

(assert (=> b!113433 (= e!73707 call!12237)))

(assert (= (and d!32249 c!20337) b!113415))

(assert (= (and d!32249 (not c!20337)) b!113423))

(assert (= (and b!113423 c!20336) b!113433))

(assert (= (and b!113423 (not c!20336)) b!113418))

(assert (= (and b!113418 c!20332) b!113417))

(assert (= (and b!113418 (not c!20332)) b!113413))

(assert (= (or b!113417 b!113413) bm!12238))

(assert (= (or b!113433 bm!12238) bm!12233))

(assert (= (or b!113433 b!113417) bm!12234))

(assert (= (or b!113415 bm!12233) bm!12232))

(assert (= (or b!113415 bm!12234) bm!12236))

(assert (= (and d!32249 res!55871) b!113426))

(assert (= (and d!32249 c!20335) b!113424))

(assert (= (and d!32249 (not c!20335)) b!113432))

(assert (= (and d!32249 res!55866) b!113430))

(assert (= (and b!113430 res!55867) b!113428))

(assert (= (and b!113430 (not res!55874)) b!113422))

(assert (= (and b!113422 res!55868) b!113414))

(assert (= (and b!113430 res!55872) b!113431))

(assert (= (and b!113431 c!20334) b!113421))

(assert (= (and b!113431 (not c!20334)) b!113419))

(assert (= (and b!113421 res!55873) b!113416))

(assert (= (or b!113421 b!113419) bm!12235))

(assert (= (and b!113431 res!55869) b!113427))

(assert (= (and b!113427 c!20333) b!113429))

(assert (= (and b!113427 (not c!20333)) b!113425))

(assert (= (and b!113429 res!55870) b!113420))

(assert (= (or b!113429 b!113425) bm!12237))

(declare-fun b_lambda!5099 () Bool)

(assert (=> (not b_lambda!5099) (not b!113414)))

(declare-fun t!5854 () Bool)

(declare-fun tb!2157 () Bool)

(assert (=> (and b!112934 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 newMap!16)) t!5854) tb!2157))

(declare-fun result!3601 () Bool)

(assert (=> tb!2157 (= result!3601 tp_is_empty!2709)))

(assert (=> b!113414 t!5854))

(declare-fun b_and!6977 () Bool)

(assert (= b_and!6973 (and (=> t!5854 result!3601) b_and!6977)))

(declare-fun t!5856 () Bool)

(declare-fun tb!2159 () Bool)

(assert (=> (and b!112921 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 newMap!16)) t!5856) tb!2159))

(declare-fun result!3603 () Bool)

(assert (= result!3603 result!3601))

(assert (=> b!113414 t!5856))

(declare-fun b_and!6979 () Bool)

(assert (= b_and!6975 (and (=> t!5856 result!3603) b_and!6979)))

(declare-fun m!129601 () Bool)

(assert (=> b!113420 m!129601))

(declare-fun m!129603 () Bool)

(assert (=> b!113415 m!129603))

(declare-fun m!129605 () Bool)

(assert (=> b!113424 m!129605))

(declare-fun m!129607 () Bool)

(assert (=> b!113424 m!129607))

(declare-fun m!129609 () Bool)

(assert (=> b!113424 m!129609))

(declare-fun m!129611 () Bool)

(assert (=> b!113424 m!129611))

(declare-fun m!129613 () Bool)

(assert (=> b!113424 m!129613))

(declare-fun m!129615 () Bool)

(assert (=> b!113424 m!129615))

(declare-fun m!129617 () Bool)

(assert (=> b!113424 m!129617))

(declare-fun m!129619 () Bool)

(assert (=> b!113424 m!129619))

(assert (=> b!113424 m!129611))

(declare-fun m!129621 () Bool)

(assert (=> b!113424 m!129621))

(declare-fun m!129623 () Bool)

(assert (=> b!113424 m!129623))

(declare-fun m!129625 () Bool)

(assert (=> b!113424 m!129625))

(declare-fun m!129627 () Bool)

(assert (=> b!113424 m!129627))

(declare-fun m!129629 () Bool)

(assert (=> b!113424 m!129629))

(assert (=> b!113424 m!129519))

(declare-fun m!129631 () Bool)

(assert (=> b!113424 m!129631))

(assert (=> b!113424 m!129609))

(declare-fun m!129633 () Bool)

(assert (=> b!113424 m!129633))

(assert (=> b!113424 m!129605))

(assert (=> b!113424 m!129623))

(declare-fun m!129635 () Bool)

(assert (=> b!113424 m!129635))

(assert (=> b!113428 m!129519))

(assert (=> b!113428 m!129519))

(assert (=> b!113428 m!129521))

(declare-fun m!129637 () Bool)

(assert (=> b!113414 m!129637))

(declare-fun m!129639 () Bool)

(assert (=> b!113414 m!129639))

(declare-fun m!129641 () Bool)

(assert (=> b!113414 m!129641))

(assert (=> b!113414 m!129519))

(assert (=> b!113414 m!129637))

(assert (=> b!113414 m!129639))

(assert (=> b!113414 m!129519))

(declare-fun m!129643 () Bool)

(assert (=> b!113414 m!129643))

(assert (=> b!113426 m!129519))

(assert (=> b!113426 m!129519))

(assert (=> b!113426 m!129521))

(assert (=> bm!12232 m!129619))

(assert (=> b!113422 m!129519))

(assert (=> b!113422 m!129519))

(declare-fun m!129645 () Bool)

(assert (=> b!113422 m!129645))

(declare-fun m!129647 () Bool)

(assert (=> b!113416 m!129647))

(declare-fun m!129649 () Bool)

(assert (=> bm!12236 m!129649))

(declare-fun m!129651 () Bool)

(assert (=> d!32249 m!129651))

(declare-fun m!129653 () Bool)

(assert (=> bm!12237 m!129653))

(declare-fun m!129655 () Bool)

(assert (=> bm!12235 m!129655))

(assert (=> bm!12202 d!32249))

(declare-fun d!32251 () Bool)

(declare-fun e!73720 () Bool)

(assert (=> d!32251 e!73720))

(declare-fun res!55875 () Bool)

(assert (=> d!32251 (=> res!55875 e!73720)))

(declare-fun lt!58810 () Bool)

(assert (=> d!32251 (= res!55875 (not lt!58810))))

(declare-fun lt!58813 () Bool)

(assert (=> d!32251 (= lt!58810 lt!58813)))

(declare-fun lt!58811 () Unit!3534)

(declare-fun e!73719 () Unit!3534)

(assert (=> d!32251 (= lt!58811 e!73719)))

(declare-fun c!20338 () Bool)

(assert (=> d!32251 (= c!20338 lt!58813)))

(assert (=> d!32251 (= lt!58813 (containsKey!163 (toList!817 call!12210) (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735))))))

(assert (=> d!32251 (= (contains!844 call!12210 (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735))) lt!58810)))

(declare-fun b!113434 () Bool)

(declare-fun lt!58812 () Unit!3534)

(assert (=> b!113434 (= e!73719 lt!58812)))

(assert (=> b!113434 (= lt!58812 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 call!12210) (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735))))))

(assert (=> b!113434 (isDefined!113 (getValueByKey!159 (toList!817 call!12210) (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735))))))

(declare-fun b!113435 () Bool)

(declare-fun Unit!3546 () Unit!3534)

(assert (=> b!113435 (= e!73719 Unit!3546)))

(declare-fun b!113436 () Bool)

(assert (=> b!113436 (= e!73720 (isDefined!113 (getValueByKey!159 (toList!817 call!12210) (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735)))))))

(assert (= (and d!32251 c!20338) b!113434))

(assert (= (and d!32251 (not c!20338)) b!113435))

(assert (= (and d!32251 (not res!55875)) b!113436))

(assert (=> d!32251 m!129441))

(declare-fun m!129657 () Bool)

(assert (=> d!32251 m!129657))

(assert (=> b!113434 m!129441))

(declare-fun m!129659 () Bool)

(assert (=> b!113434 m!129659))

(assert (=> b!113434 m!129441))

(declare-fun m!129661 () Bool)

(assert (=> b!113434 m!129661))

(assert (=> b!113434 m!129661))

(declare-fun m!129663 () Bool)

(assert (=> b!113434 m!129663))

(assert (=> b!113436 m!129441))

(assert (=> b!113436 m!129661))

(assert (=> b!113436 m!129661))

(assert (=> b!113436 m!129663))

(assert (=> b!113253 d!32251))

(declare-fun d!32253 () Bool)

(declare-fun e!73723 () Bool)

(assert (=> d!32253 e!73723))

(declare-fun res!55878 () Bool)

(assert (=> d!32253 (=> (not res!55878) (not e!73723))))

(assert (=> d!32253 (= res!55878 (and (bvsge (index!3245 lt!58735) #b00000000000000000000000000000000) (bvslt (index!3245 lt!58735) (size!2351 (_keys!4381 newMap!16)))))))

(declare-fun lt!58816 () Unit!3534)

(declare-fun choose!721 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) Int) Unit!3534)

(assert (=> d!32253 (= lt!58816 (choose!721 (_keys!4381 newMap!16) lt!58728 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (defaultEntry!2661 newMap!16)))))

(assert (=> d!32253 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32253 (= (lemmaValidKeyInArrayIsInListMap!109 (_keys!4381 newMap!16) lt!58728 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (defaultEntry!2661 newMap!16)) lt!58816)))

(declare-fun b!113439 () Bool)

(assert (=> b!113439 (= e!73723 (contains!844 (getCurrentListMap!493 (_keys!4381 newMap!16) lt!58728 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58735))))))

(assert (= (and d!32253 res!55878) b!113439))

(declare-fun m!129665 () Bool)

(assert (=> d!32253 m!129665))

(assert (=> d!32253 m!129651))

(declare-fun m!129667 () Bool)

(assert (=> b!113439 m!129667))

(assert (=> b!113439 m!129441))

(assert (=> b!113439 m!129667))

(assert (=> b!113439 m!129441))

(declare-fun m!129669 () Bool)

(assert (=> b!113439 m!129669))

(assert (=> b!113253 d!32253))

(declare-fun b!113440 () Bool)

(declare-fun e!73726 () ListLongMap!1603)

(declare-fun call!12247 () ListLongMap!1603)

(assert (=> b!113440 (= e!73726 call!12247)))

(declare-fun e!73729 () Bool)

(declare-fun lt!58836 () ListLongMap!1603)

(declare-fun b!113441 () Bool)

(assert (=> b!113441 (= e!73729 (= (apply!102 lt!58836 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)) (get!1368 (select (arr!2093 (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!395 (defaultEntry!2661 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113441 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2352 (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))))))))

(assert (=> b!113441 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113442 () Bool)

(declare-fun e!73724 () ListLongMap!1603)

(declare-fun call!12248 () ListLongMap!1603)

(assert (=> b!113442 (= e!73724 (+!152 call!12248 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16))))))

(declare-fun b!113443 () Bool)

(declare-fun e!73735 () Bool)

(assert (=> b!113443 (= e!73735 (= (apply!102 lt!58836 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2529 newMap!16)))))

(declare-fun b!113444 () Bool)

(declare-fun call!12244 () ListLongMap!1603)

(assert (=> b!113444 (= e!73726 call!12244)))

(declare-fun call!12246 () ListLongMap!1603)

(declare-fun bm!12239 () Bool)

(assert (=> bm!12239 (= call!12246 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun bm!12240 () Bool)

(declare-fun call!12242 () ListLongMap!1603)

(assert (=> bm!12240 (= call!12242 call!12246)))

(declare-fun b!113445 () Bool)

(declare-fun c!20339 () Bool)

(assert (=> b!113445 (= c!20339 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!73725 () ListLongMap!1603)

(assert (=> b!113445 (= e!73725 e!73726)))

(declare-fun bm!12241 () Bool)

(assert (=> bm!12241 (= call!12244 call!12248)))

(declare-fun b!113446 () Bool)

(declare-fun e!73733 () Bool)

(declare-fun call!12243 () Bool)

(assert (=> b!113446 (= e!73733 (not call!12243))))

(declare-fun b!113447 () Bool)

(declare-fun e!73728 () Bool)

(assert (=> b!113447 (= e!73728 (= (apply!102 lt!58836 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2529 newMap!16)))))

(declare-fun b!113448 () Bool)

(assert (=> b!113448 (= e!73733 e!73735)))

(declare-fun res!55886 () Bool)

(assert (=> b!113448 (= res!55886 call!12243)))

(assert (=> b!113448 (=> (not res!55886) (not e!73735))))

(declare-fun d!32255 () Bool)

(declare-fun e!73730 () Bool)

(assert (=> d!32255 e!73730))

(declare-fun res!55879 () Bool)

(assert (=> d!32255 (=> (not res!55879) (not e!73730))))

(assert (=> d!32255 (= res!55879 (or (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))))

(declare-fun lt!58830 () ListLongMap!1603)

(assert (=> d!32255 (= lt!58836 lt!58830)))

(declare-fun lt!58834 () Unit!3534)

(declare-fun e!73736 () Unit!3534)

(assert (=> d!32255 (= lt!58834 e!73736)))

(declare-fun c!20342 () Bool)

(declare-fun e!73727 () Bool)

(assert (=> d!32255 (= c!20342 e!73727)))

(declare-fun res!55884 () Bool)

(assert (=> d!32255 (=> (not res!55884) (not e!73727))))

(assert (=> d!32255 (= res!55884 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32255 (= lt!58830 e!73724)))

(declare-fun c!20344 () Bool)

(assert (=> d!32255 (= c!20344 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32255 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32255 (= (getCurrentListMap!493 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) lt!58836)))

(declare-fun bm!12242 () Bool)

(assert (=> bm!12242 (= call!12243 (contains!844 lt!58836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12243 () Bool)

(declare-fun c!20343 () Bool)

(assert (=> bm!12243 (= call!12248 (+!152 (ite c!20344 call!12246 (ite c!20343 call!12242 call!12247)) (ite (or c!20344 c!20343) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 newMap!16)) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16)))))))

(declare-fun b!113449 () Bool)

(declare-fun e!73731 () Bool)

(assert (=> b!113449 (= e!73731 e!73729)))

(declare-fun res!55881 () Bool)

(assert (=> b!113449 (=> (not res!55881) (not e!73729))))

(assert (=> b!113449 (= res!55881 (contains!844 lt!58836 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!113449 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113450 () Bool)

(assert (=> b!113450 (= e!73724 e!73725)))

(assert (=> b!113450 (= c!20343 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113451 () Bool)

(declare-fun lt!58824 () Unit!3534)

(assert (=> b!113451 (= e!73736 lt!58824)))

(declare-fun lt!58817 () ListLongMap!1603)

(assert (=> b!113451 (= lt!58817 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58823 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58823 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58822 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58822 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58827 () Unit!3534)

(assert (=> b!113451 (= lt!58827 (addStillContains!78 lt!58817 lt!58823 (zeroValue!2529 newMap!16) lt!58822))))

(assert (=> b!113451 (contains!844 (+!152 lt!58817 (tuple2!2445 lt!58823 (zeroValue!2529 newMap!16))) lt!58822)))

(declare-fun lt!58821 () Unit!3534)

(assert (=> b!113451 (= lt!58821 lt!58827)))

(declare-fun lt!58832 () ListLongMap!1603)

(assert (=> b!113451 (= lt!58832 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58819 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58819 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58831 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58831 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58826 () Unit!3534)

(assert (=> b!113451 (= lt!58826 (addApplyDifferent!78 lt!58832 lt!58819 (minValue!2529 newMap!16) lt!58831))))

(assert (=> b!113451 (= (apply!102 (+!152 lt!58832 (tuple2!2445 lt!58819 (minValue!2529 newMap!16))) lt!58831) (apply!102 lt!58832 lt!58831))))

(declare-fun lt!58833 () Unit!3534)

(assert (=> b!113451 (= lt!58833 lt!58826)))

(declare-fun lt!58837 () ListLongMap!1603)

(assert (=> b!113451 (= lt!58837 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58835 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58835 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58825 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58825 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58820 () Unit!3534)

(assert (=> b!113451 (= lt!58820 (addApplyDifferent!78 lt!58837 lt!58835 (zeroValue!2529 newMap!16) lt!58825))))

(assert (=> b!113451 (= (apply!102 (+!152 lt!58837 (tuple2!2445 lt!58835 (zeroValue!2529 newMap!16))) lt!58825) (apply!102 lt!58837 lt!58825))))

(declare-fun lt!58818 () Unit!3534)

(assert (=> b!113451 (= lt!58818 lt!58820)))

(declare-fun lt!58828 () ListLongMap!1603)

(assert (=> b!113451 (= lt!58828 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58829 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58829 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58838 () (_ BitVec 64))

(assert (=> b!113451 (= lt!58838 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!113451 (= lt!58824 (addApplyDifferent!78 lt!58828 lt!58829 (minValue!2529 newMap!16) lt!58838))))

(assert (=> b!113451 (= (apply!102 (+!152 lt!58828 (tuple2!2445 lt!58829 (minValue!2529 newMap!16))) lt!58838) (apply!102 lt!58828 lt!58838))))

(declare-fun bm!12244 () Bool)

(declare-fun call!12245 () Bool)

(assert (=> bm!12244 (= call!12245 (contains!844 lt!58836 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113452 () Bool)

(declare-fun e!73734 () Bool)

(assert (=> b!113452 (= e!73734 (not call!12245))))

(declare-fun bm!12245 () Bool)

(assert (=> bm!12245 (= call!12247 call!12242)))

(declare-fun b!113453 () Bool)

(assert (=> b!113453 (= e!73727 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113454 () Bool)

(assert (=> b!113454 (= e!73730 e!73734)))

(declare-fun c!20340 () Bool)

(assert (=> b!113454 (= c!20340 (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113455 () Bool)

(declare-fun e!73732 () Bool)

(assert (=> b!113455 (= e!73732 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113456 () Bool)

(assert (=> b!113456 (= e!73734 e!73728)))

(declare-fun res!55883 () Bool)

(assert (=> b!113456 (= res!55883 call!12245)))

(assert (=> b!113456 (=> (not res!55883) (not e!73728))))

(declare-fun b!113457 () Bool)

(declare-fun res!55885 () Bool)

(assert (=> b!113457 (=> (not res!55885) (not e!73730))))

(assert (=> b!113457 (= res!55885 e!73731)))

(declare-fun res!55887 () Bool)

(assert (=> b!113457 (=> res!55887 e!73731)))

(assert (=> b!113457 (= res!55887 (not e!73732))))

(declare-fun res!55880 () Bool)

(assert (=> b!113457 (=> (not res!55880) (not e!73732))))

(assert (=> b!113457 (= res!55880 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113458 () Bool)

(declare-fun res!55882 () Bool)

(assert (=> b!113458 (=> (not res!55882) (not e!73730))))

(assert (=> b!113458 (= res!55882 e!73733)))

(declare-fun c!20341 () Bool)

(assert (=> b!113458 (= c!20341 (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!113459 () Bool)

(declare-fun Unit!3547 () Unit!3534)

(assert (=> b!113459 (= e!73736 Unit!3547)))

(declare-fun b!113460 () Bool)

(assert (=> b!113460 (= e!73725 call!12244)))

(assert (= (and d!32255 c!20344) b!113442))

(assert (= (and d!32255 (not c!20344)) b!113450))

(assert (= (and b!113450 c!20343) b!113460))

(assert (= (and b!113450 (not c!20343)) b!113445))

(assert (= (and b!113445 c!20339) b!113444))

(assert (= (and b!113445 (not c!20339)) b!113440))

(assert (= (or b!113444 b!113440) bm!12245))

(assert (= (or b!113460 bm!12245) bm!12240))

(assert (= (or b!113460 b!113444) bm!12241))

(assert (= (or b!113442 bm!12240) bm!12239))

(assert (= (or b!113442 bm!12241) bm!12243))

(assert (= (and d!32255 res!55884) b!113453))

(assert (= (and d!32255 c!20342) b!113451))

(assert (= (and d!32255 (not c!20342)) b!113459))

(assert (= (and d!32255 res!55879) b!113457))

(assert (= (and b!113457 res!55880) b!113455))

(assert (= (and b!113457 (not res!55887)) b!113449))

(assert (= (and b!113449 res!55881) b!113441))

(assert (= (and b!113457 res!55885) b!113458))

(assert (= (and b!113458 c!20341) b!113448))

(assert (= (and b!113458 (not c!20341)) b!113446))

(assert (= (and b!113448 res!55886) b!113443))

(assert (= (or b!113448 b!113446) bm!12242))

(assert (= (and b!113458 res!55882) b!113454))

(assert (= (and b!113454 c!20340) b!113456))

(assert (= (and b!113454 (not c!20340)) b!113452))

(assert (= (and b!113456 res!55883) b!113447))

(assert (= (or b!113456 b!113452) bm!12244))

(declare-fun b_lambda!5101 () Bool)

(assert (=> (not b_lambda!5101) (not b!113441)))

(assert (=> b!113441 t!5854))

(declare-fun b_and!6981 () Bool)

(assert (= b_and!6977 (and (=> t!5854 result!3601) b_and!6981)))

(assert (=> b!113441 t!5856))

(declare-fun b_and!6983 () Bool)

(assert (= b_and!6979 (and (=> t!5856 result!3603) b_and!6983)))

(declare-fun m!129671 () Bool)

(assert (=> b!113447 m!129671))

(declare-fun m!129673 () Bool)

(assert (=> b!113442 m!129673))

(declare-fun m!129675 () Bool)

(assert (=> b!113451 m!129675))

(declare-fun m!129677 () Bool)

(assert (=> b!113451 m!129677))

(declare-fun m!129679 () Bool)

(assert (=> b!113451 m!129679))

(declare-fun m!129681 () Bool)

(assert (=> b!113451 m!129681))

(declare-fun m!129683 () Bool)

(assert (=> b!113451 m!129683))

(declare-fun m!129685 () Bool)

(assert (=> b!113451 m!129685))

(declare-fun m!129687 () Bool)

(assert (=> b!113451 m!129687))

(declare-fun m!129689 () Bool)

(assert (=> b!113451 m!129689))

(assert (=> b!113451 m!129681))

(declare-fun m!129691 () Bool)

(assert (=> b!113451 m!129691))

(declare-fun m!129693 () Bool)

(assert (=> b!113451 m!129693))

(declare-fun m!129695 () Bool)

(assert (=> b!113451 m!129695))

(declare-fun m!129697 () Bool)

(assert (=> b!113451 m!129697))

(declare-fun m!129699 () Bool)

(assert (=> b!113451 m!129699))

(assert (=> b!113451 m!129519))

(declare-fun m!129701 () Bool)

(assert (=> b!113451 m!129701))

(assert (=> b!113451 m!129679))

(declare-fun m!129703 () Bool)

(assert (=> b!113451 m!129703))

(assert (=> b!113451 m!129675))

(assert (=> b!113451 m!129693))

(declare-fun m!129705 () Bool)

(assert (=> b!113451 m!129705))

(assert (=> b!113455 m!129519))

(assert (=> b!113455 m!129519))

(assert (=> b!113455 m!129521))

(declare-fun m!129707 () Bool)

(assert (=> b!113441 m!129707))

(assert (=> b!113441 m!129639))

(declare-fun m!129709 () Bool)

(assert (=> b!113441 m!129709))

(assert (=> b!113441 m!129519))

(assert (=> b!113441 m!129707))

(assert (=> b!113441 m!129639))

(assert (=> b!113441 m!129519))

(declare-fun m!129711 () Bool)

(assert (=> b!113441 m!129711))

(assert (=> b!113453 m!129519))

(assert (=> b!113453 m!129519))

(assert (=> b!113453 m!129521))

(assert (=> bm!12239 m!129689))

(assert (=> b!113449 m!129519))

(assert (=> b!113449 m!129519))

(declare-fun m!129713 () Bool)

(assert (=> b!113449 m!129713))

(declare-fun m!129715 () Bool)

(assert (=> b!113443 m!129715))

(declare-fun m!129717 () Bool)

(assert (=> bm!12243 m!129717))

(assert (=> d!32255 m!129651))

(declare-fun m!129719 () Bool)

(assert (=> bm!12244 m!129719))

(declare-fun m!129721 () Bool)

(assert (=> bm!12242 m!129721))

(assert (=> b!113253 d!32255))

(declare-fun d!32257 () Bool)

(declare-fun e!73739 () Bool)

(assert (=> d!32257 e!73739))

(declare-fun res!55890 () Bool)

(assert (=> d!32257 (=> (not res!55890) (not e!73739))))

(assert (=> d!32257 (= res!55890 (and (bvsge (index!3245 lt!58735) #b00000000000000000000000000000000) (bvslt (index!3245 lt!58735) (size!2352 (_values!2644 newMap!16)))))))

(declare-fun lt!58841 () Unit!3534)

(declare-fun choose!722 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) (_ BitVec 64) V!3259 Int) Unit!3534)

(assert (=> d!32257 (= lt!58841 (choose!722 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (defaultEntry!2661 newMap!16)))))

(assert (=> d!32257 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32257 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (index!3245 lt!58735) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (defaultEntry!2661 newMap!16)) lt!58841)))

(declare-fun b!113463 () Bool)

(assert (=> b!113463 (= e!73739 (= (+!152 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (getCurrentListMap!493 (_keys!4381 newMap!16) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (index!3245 lt!58735) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16))))))

(assert (= (and d!32257 res!55890) b!113463))

(assert (=> d!32257 m!129119))

(declare-fun m!129723 () Bool)

(assert (=> d!32257 m!129723))

(assert (=> d!32257 m!129651))

(assert (=> b!113463 m!129333))

(assert (=> b!113463 m!129333))

(declare-fun m!129725 () Bool)

(assert (=> b!113463 m!129725))

(assert (=> b!113463 m!129445))

(assert (=> b!113463 m!129447))

(assert (=> b!113253 d!32257))

(declare-fun d!32259 () Bool)

(declare-fun c!20345 () Bool)

(assert (=> d!32259 (= c!20345 (and ((_ is Cons!1656) (toList!817 lt!58579)) (= (_1!1232 (h!2256 (toList!817 lt!58579))) (_1!1232 lt!58485))))))

(declare-fun e!73740 () Option!165)

(assert (=> d!32259 (= (getValueByKey!159 (toList!817 lt!58579) (_1!1232 lt!58485)) e!73740)))

(declare-fun b!113465 () Bool)

(declare-fun e!73741 () Option!165)

(assert (=> b!113465 (= e!73740 e!73741)))

(declare-fun c!20346 () Bool)

(assert (=> b!113465 (= c!20346 (and ((_ is Cons!1656) (toList!817 lt!58579)) (not (= (_1!1232 (h!2256 (toList!817 lt!58579))) (_1!1232 lt!58485)))))))

(declare-fun b!113464 () Bool)

(assert (=> b!113464 (= e!73740 (Some!164 (_2!1232 (h!2256 (toList!817 lt!58579)))))))

(declare-fun b!113466 () Bool)

(assert (=> b!113466 (= e!73741 (getValueByKey!159 (t!5846 (toList!817 lt!58579)) (_1!1232 lt!58485)))))

(declare-fun b!113467 () Bool)

(assert (=> b!113467 (= e!73741 None!163)))

(assert (= (and d!32259 c!20345) b!113464))

(assert (= (and d!32259 (not c!20345)) b!113465))

(assert (= (and b!113465 c!20346) b!113466))

(assert (= (and b!113465 (not c!20346)) b!113467))

(declare-fun m!129727 () Bool)

(assert (=> b!113466 m!129727))

(assert (=> b!113078 d!32259))

(declare-fun d!32261 () Bool)

(declare-fun e!73743 () Bool)

(assert (=> d!32261 e!73743))

(declare-fun res!55891 () Bool)

(assert (=> d!32261 (=> res!55891 e!73743)))

(declare-fun lt!58842 () Bool)

(assert (=> d!32261 (= res!55891 (not lt!58842))))

(declare-fun lt!58845 () Bool)

(assert (=> d!32261 (= lt!58842 lt!58845)))

(declare-fun lt!58843 () Unit!3534)

(declare-fun e!73742 () Unit!3534)

(assert (=> d!32261 (= lt!58843 e!73742)))

(declare-fun c!20347 () Bool)

(assert (=> d!32261 (= c!20347 lt!58845)))

(assert (=> d!32261 (= lt!58845 (containsKey!163 (toList!817 lt!58550) (_1!1232 lt!58485)))))

(assert (=> d!32261 (= (contains!844 lt!58550 (_1!1232 lt!58485)) lt!58842)))

(declare-fun b!113468 () Bool)

(declare-fun lt!58844 () Unit!3534)

(assert (=> b!113468 (= e!73742 lt!58844)))

(assert (=> b!113468 (= lt!58844 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58550) (_1!1232 lt!58485)))))

(assert (=> b!113468 (isDefined!113 (getValueByKey!159 (toList!817 lt!58550) (_1!1232 lt!58485)))))

(declare-fun b!113469 () Bool)

(declare-fun Unit!3548 () Unit!3534)

(assert (=> b!113469 (= e!73742 Unit!3548)))

(declare-fun b!113470 () Bool)

(assert (=> b!113470 (= e!73743 (isDefined!113 (getValueByKey!159 (toList!817 lt!58550) (_1!1232 lt!58485))))))

(assert (= (and d!32261 c!20347) b!113468))

(assert (= (and d!32261 (not c!20347)) b!113469))

(assert (= (and d!32261 (not res!55891)) b!113470))

(declare-fun m!129729 () Bool)

(assert (=> d!32261 m!129729))

(declare-fun m!129731 () Bool)

(assert (=> b!113468 m!129731))

(assert (=> b!113468 m!129257))

(assert (=> b!113468 m!129257))

(declare-fun m!129733 () Bool)

(assert (=> b!113468 m!129733))

(assert (=> b!113470 m!129257))

(assert (=> b!113470 m!129257))

(assert (=> b!113470 m!129733))

(assert (=> d!32163 d!32261))

(declare-fun d!32263 () Bool)

(declare-fun c!20348 () Bool)

(assert (=> d!32263 (= c!20348 (and ((_ is Cons!1656) lt!58551) (= (_1!1232 (h!2256 lt!58551)) (_1!1232 lt!58485))))))

(declare-fun e!73744 () Option!165)

(assert (=> d!32263 (= (getValueByKey!159 lt!58551 (_1!1232 lt!58485)) e!73744)))

(declare-fun b!113472 () Bool)

(declare-fun e!73745 () Option!165)

(assert (=> b!113472 (= e!73744 e!73745)))

(declare-fun c!20349 () Bool)

(assert (=> b!113472 (= c!20349 (and ((_ is Cons!1656) lt!58551) (not (= (_1!1232 (h!2256 lt!58551)) (_1!1232 lt!58485)))))))

(declare-fun b!113471 () Bool)

(assert (=> b!113471 (= e!73744 (Some!164 (_2!1232 (h!2256 lt!58551))))))

(declare-fun b!113473 () Bool)

(assert (=> b!113473 (= e!73745 (getValueByKey!159 (t!5846 lt!58551) (_1!1232 lt!58485)))))

(declare-fun b!113474 () Bool)

(assert (=> b!113474 (= e!73745 None!163)))

(assert (= (and d!32263 c!20348) b!113471))

(assert (= (and d!32263 (not c!20348)) b!113472))

(assert (= (and b!113472 c!20349) b!113473))

(assert (= (and b!113472 (not c!20349)) b!113474))

(declare-fun m!129735 () Bool)

(assert (=> b!113473 m!129735))

(assert (=> d!32163 d!32263))

(declare-fun d!32265 () Bool)

(assert (=> d!32265 (= (getValueByKey!159 lt!58551 (_1!1232 lt!58485)) (Some!164 (_2!1232 lt!58485)))))

(declare-fun lt!58846 () Unit!3534)

(assert (=> d!32265 (= lt!58846 (choose!720 lt!58551 (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(declare-fun e!73746 () Bool)

(assert (=> d!32265 e!73746))

(declare-fun res!55892 () Bool)

(assert (=> d!32265 (=> (not res!55892) (not e!73746))))

(assert (=> d!32265 (= res!55892 (isStrictlySorted!308 lt!58551))))

(assert (=> d!32265 (= (lemmaContainsTupThenGetReturnValue!77 lt!58551 (_1!1232 lt!58485) (_2!1232 lt!58485)) lt!58846)))

(declare-fun b!113475 () Bool)

(declare-fun res!55893 () Bool)

(assert (=> b!113475 (=> (not res!55893) (not e!73746))))

(assert (=> b!113475 (= res!55893 (containsKey!163 lt!58551 (_1!1232 lt!58485)))))

(declare-fun b!113476 () Bool)

(assert (=> b!113476 (= e!73746 (contains!846 lt!58551 (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485))))))

(assert (= (and d!32265 res!55892) b!113475))

(assert (= (and b!113475 res!55893) b!113476))

(assert (=> d!32265 m!129251))

(declare-fun m!129737 () Bool)

(assert (=> d!32265 m!129737))

(declare-fun m!129739 () Bool)

(assert (=> d!32265 m!129739))

(declare-fun m!129741 () Bool)

(assert (=> b!113475 m!129741))

(declare-fun m!129743 () Bool)

(assert (=> b!113476 m!129743))

(assert (=> d!32163 d!32265))

(declare-fun b!113477 () Bool)

(declare-fun res!55895 () Bool)

(declare-fun e!73750 () Bool)

(assert (=> b!113477 (=> (not res!55895) (not e!73750))))

(declare-fun lt!58847 () List!1660)

(assert (=> b!113477 (= res!55895 (containsKey!163 lt!58847 (_1!1232 lt!58485)))))

(declare-fun b!113478 () Bool)

(declare-fun e!73747 () List!1660)

(declare-fun call!12251 () List!1660)

(assert (=> b!113478 (= e!73747 call!12251)))

(declare-fun b!113480 () Bool)

(declare-fun e!73751 () List!1660)

(declare-fun call!12250 () List!1660)

(assert (=> b!113480 (= e!73751 call!12250)))

(declare-fun bm!12246 () Bool)

(assert (=> bm!12246 (= call!12250 call!12251)))

(declare-fun b!113481 () Bool)

(assert (=> b!113481 (= e!73750 (contains!846 lt!58847 (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485))))))

(declare-fun b!113482 () Bool)

(declare-fun e!73748 () List!1660)

(assert (=> b!113482 (= e!73748 (insertStrictlySorted!79 (t!5846 (toList!817 lt!58489)) (_1!1232 lt!58485) (_2!1232 lt!58485)))))

(declare-fun b!113483 () Bool)

(declare-fun e!73749 () List!1660)

(declare-fun call!12249 () List!1660)

(assert (=> b!113483 (= e!73749 call!12249)))

(declare-fun b!113484 () Bool)

(assert (=> b!113484 (= e!73749 e!73747)))

(declare-fun c!20350 () Bool)

(assert (=> b!113484 (= c!20350 (and ((_ is Cons!1656) (toList!817 lt!58489)) (= (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58485))))))

(declare-fun bm!12247 () Bool)

(assert (=> bm!12247 (= call!12251 call!12249)))

(declare-fun c!20352 () Bool)

(declare-fun b!113485 () Bool)

(assert (=> b!113485 (= e!73748 (ite c!20350 (t!5846 (toList!817 lt!58489)) (ite c!20352 (Cons!1656 (h!2256 (toList!817 lt!58489)) (t!5846 (toList!817 lt!58489))) Nil!1657)))))

(declare-fun b!113486 () Bool)

(assert (=> b!113486 (= c!20352 (and ((_ is Cons!1656) (toList!817 lt!58489)) (bvsgt (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58485))))))

(assert (=> b!113486 (= e!73747 e!73751)))

(declare-fun c!20351 () Bool)

(declare-fun bm!12248 () Bool)

(assert (=> bm!12248 (= call!12249 ($colon$colon!84 e!73748 (ite c!20351 (h!2256 (toList!817 lt!58489)) (tuple2!2445 (_1!1232 lt!58485) (_2!1232 lt!58485)))))))

(declare-fun c!20353 () Bool)

(assert (=> bm!12248 (= c!20353 c!20351)))

(declare-fun b!113479 () Bool)

(assert (=> b!113479 (= e!73751 call!12250)))

(declare-fun d!32267 () Bool)

(assert (=> d!32267 e!73750))

(declare-fun res!55894 () Bool)

(assert (=> d!32267 (=> (not res!55894) (not e!73750))))

(assert (=> d!32267 (= res!55894 (isStrictlySorted!308 lt!58847))))

(assert (=> d!32267 (= lt!58847 e!73749)))

(assert (=> d!32267 (= c!20351 (and ((_ is Cons!1656) (toList!817 lt!58489)) (bvslt (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58485))))))

(assert (=> d!32267 (isStrictlySorted!308 (toList!817 lt!58489))))

(assert (=> d!32267 (= (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 lt!58485) (_2!1232 lt!58485)) lt!58847)))

(assert (= (and d!32267 c!20351) b!113483))

(assert (= (and d!32267 (not c!20351)) b!113484))

(assert (= (and b!113484 c!20350) b!113478))

(assert (= (and b!113484 (not c!20350)) b!113486))

(assert (= (and b!113486 c!20352) b!113479))

(assert (= (and b!113486 (not c!20352)) b!113480))

(assert (= (or b!113479 b!113480) bm!12246))

(assert (= (or b!113478 bm!12246) bm!12247))

(assert (= (or b!113483 bm!12247) bm!12248))

(assert (= (and bm!12248 c!20353) b!113482))

(assert (= (and bm!12248 (not c!20353)) b!113485))

(assert (= (and d!32267 res!55894) b!113477))

(assert (= (and b!113477 res!55895) b!113481))

(declare-fun m!129745 () Bool)

(assert (=> d!32267 m!129745))

(declare-fun m!129747 () Bool)

(assert (=> d!32267 m!129747))

(declare-fun m!129749 () Bool)

(assert (=> b!113482 m!129749))

(declare-fun m!129751 () Bool)

(assert (=> bm!12248 m!129751))

(declare-fun m!129753 () Bool)

(assert (=> b!113481 m!129753))

(declare-fun m!129755 () Bool)

(assert (=> b!113477 m!129755))

(assert (=> d!32163 d!32267))

(declare-fun d!32269 () Bool)

(declare-fun e!73753 () Bool)

(assert (=> d!32269 e!73753))

(declare-fun res!55896 () Bool)

(assert (=> d!32269 (=> res!55896 e!73753)))

(declare-fun lt!58848 () Bool)

(assert (=> d!32269 (= res!55896 (not lt!58848))))

(declare-fun lt!58851 () Bool)

(assert (=> d!32269 (= lt!58848 lt!58851)))

(declare-fun lt!58849 () Unit!3534)

(declare-fun e!73752 () Unit!3534)

(assert (=> d!32269 (= lt!58849 e!73752)))

(declare-fun c!20354 () Bool)

(assert (=> d!32269 (= c!20354 lt!58851)))

(assert (=> d!32269 (= lt!58851 (containsKey!163 (toList!817 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573))) lt!58572))))

(assert (=> d!32269 (= (contains!844 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573)) lt!58572) lt!58848)))

(declare-fun b!113487 () Bool)

(declare-fun lt!58850 () Unit!3534)

(assert (=> b!113487 (= e!73752 lt!58850)))

(assert (=> b!113487 (= lt!58850 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573))) lt!58572))))

(assert (=> b!113487 (isDefined!113 (getValueByKey!159 (toList!817 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573))) lt!58572))))

(declare-fun b!113488 () Bool)

(declare-fun Unit!3549 () Unit!3534)

(assert (=> b!113488 (= e!73752 Unit!3549)))

(declare-fun b!113489 () Bool)

(assert (=> b!113489 (= e!73753 (isDefined!113 (getValueByKey!159 (toList!817 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573))) lt!58572)))))

(assert (= (and d!32269 c!20354) b!113487))

(assert (= (and d!32269 (not c!20354)) b!113488))

(assert (= (and d!32269 (not res!55896)) b!113489))

(declare-fun m!129757 () Bool)

(assert (=> d!32269 m!129757))

(declare-fun m!129759 () Bool)

(assert (=> b!113487 m!129759))

(declare-fun m!129761 () Bool)

(assert (=> b!113487 m!129761))

(assert (=> b!113487 m!129761))

(declare-fun m!129763 () Bool)

(assert (=> b!113487 m!129763))

(assert (=> b!113489 m!129761))

(assert (=> b!113489 m!129761))

(assert (=> b!113489 m!129763))

(assert (=> b!113065 d!32269))

(assert (=> b!113065 d!32221))

(declare-fun d!32271 () Bool)

(declare-fun e!73754 () Bool)

(assert (=> d!32271 e!73754))

(declare-fun res!55898 () Bool)

(assert (=> d!32271 (=> (not res!55898) (not e!73754))))

(declare-fun lt!58853 () ListLongMap!1603)

(assert (=> d!32271 (= res!55898 (contains!844 lt!58853 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!58854 () List!1660)

(assert (=> d!32271 (= lt!58853 (ListLongMap!1604 lt!58854))))

(declare-fun lt!58855 () Unit!3534)

(declare-fun lt!58852 () Unit!3534)

(assert (=> d!32271 (= lt!58855 lt!58852)))

(assert (=> d!32271 (= (getValueByKey!159 lt!58854 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32271 (= lt!58852 (lemmaContainsTupThenGetReturnValue!77 lt!58854 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32271 (= lt!58854 (insertStrictlySorted!79 (toList!817 call!12124) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32271 (= (+!152 call!12124 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!58853)))

(declare-fun b!113490 () Bool)

(declare-fun res!55897 () Bool)

(assert (=> b!113490 (=> (not res!55897) (not e!73754))))

(assert (=> b!113490 (= res!55897 (= (getValueByKey!159 (toList!817 lt!58853) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!113491 () Bool)

(assert (=> b!113491 (= e!73754 (contains!846 (toList!817 lt!58853) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!32271 res!55898) b!113490))

(assert (= (and b!113490 res!55897) b!113491))

(declare-fun m!129765 () Bool)

(assert (=> d!32271 m!129765))

(declare-fun m!129767 () Bool)

(assert (=> d!32271 m!129767))

(declare-fun m!129769 () Bool)

(assert (=> d!32271 m!129769))

(declare-fun m!129771 () Bool)

(assert (=> d!32271 m!129771))

(declare-fun m!129773 () Bool)

(assert (=> b!113490 m!129773))

(declare-fun m!129775 () Bool)

(assert (=> b!113491 m!129775))

(assert (=> b!113065 d!32271))

(declare-fun d!32273 () Bool)

(assert (=> d!32273 (not (contains!844 (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573)) lt!58572))))

(declare-fun lt!58858 () Unit!3534)

(declare-fun choose!723 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> d!32273 (= lt!58858 (choose!723 lt!58570 lt!58567 lt!58573 lt!58572))))

(declare-fun e!73757 () Bool)

(assert (=> d!32273 e!73757))

(declare-fun res!55901 () Bool)

(assert (=> d!32273 (=> (not res!55901) (not e!73757))))

(assert (=> d!32273 (= res!55901 (not (contains!844 lt!58570 lt!58572)))))

(assert (=> d!32273 (= (addStillNotContains!52 lt!58570 lt!58567 lt!58573 lt!58572) lt!58858)))

(declare-fun b!113495 () Bool)

(assert (=> b!113495 (= e!73757 (not (= lt!58567 lt!58572)))))

(assert (= (and d!32273 res!55901) b!113495))

(assert (=> d!32273 m!129273))

(assert (=> d!32273 m!129273))

(assert (=> d!32273 m!129277))

(declare-fun m!129777 () Bool)

(assert (=> d!32273 m!129777))

(declare-fun m!129779 () Bool)

(assert (=> d!32273 m!129779))

(assert (=> b!113065 d!32273))

(declare-fun d!32275 () Bool)

(declare-fun e!73758 () Bool)

(assert (=> d!32275 e!73758))

(declare-fun res!55903 () Bool)

(assert (=> d!32275 (=> (not res!55903) (not e!73758))))

(declare-fun lt!58860 () ListLongMap!1603)

(assert (=> d!32275 (= res!55903 (contains!844 lt!58860 (_1!1232 (tuple2!2445 lt!58567 lt!58573))))))

(declare-fun lt!58861 () List!1660)

(assert (=> d!32275 (= lt!58860 (ListLongMap!1604 lt!58861))))

(declare-fun lt!58862 () Unit!3534)

(declare-fun lt!58859 () Unit!3534)

(assert (=> d!32275 (= lt!58862 lt!58859)))

(assert (=> d!32275 (= (getValueByKey!159 lt!58861 (_1!1232 (tuple2!2445 lt!58567 lt!58573))) (Some!164 (_2!1232 (tuple2!2445 lt!58567 lt!58573))))))

(assert (=> d!32275 (= lt!58859 (lemmaContainsTupThenGetReturnValue!77 lt!58861 (_1!1232 (tuple2!2445 lt!58567 lt!58573)) (_2!1232 (tuple2!2445 lt!58567 lt!58573))))))

(assert (=> d!32275 (= lt!58861 (insertStrictlySorted!79 (toList!817 lt!58570) (_1!1232 (tuple2!2445 lt!58567 lt!58573)) (_2!1232 (tuple2!2445 lt!58567 lt!58573))))))

(assert (=> d!32275 (= (+!152 lt!58570 (tuple2!2445 lt!58567 lt!58573)) lt!58860)))

(declare-fun b!113496 () Bool)

(declare-fun res!55902 () Bool)

(assert (=> b!113496 (=> (not res!55902) (not e!73758))))

(assert (=> b!113496 (= res!55902 (= (getValueByKey!159 (toList!817 lt!58860) (_1!1232 (tuple2!2445 lt!58567 lt!58573))) (Some!164 (_2!1232 (tuple2!2445 lt!58567 lt!58573)))))))

(declare-fun b!113497 () Bool)

(assert (=> b!113497 (= e!73758 (contains!846 (toList!817 lt!58860) (tuple2!2445 lt!58567 lt!58573)))))

(assert (= (and d!32275 res!55903) b!113496))

(assert (= (and b!113496 res!55902) b!113497))

(declare-fun m!129781 () Bool)

(assert (=> d!32275 m!129781))

(declare-fun m!129783 () Bool)

(assert (=> d!32275 m!129783))

(declare-fun m!129785 () Bool)

(assert (=> d!32275 m!129785))

(declare-fun m!129787 () Bool)

(assert (=> d!32275 m!129787))

(declare-fun m!129789 () Bool)

(assert (=> b!113496 m!129789))

(declare-fun m!129791 () Bool)

(assert (=> b!113497 m!129791))

(assert (=> b!113065 d!32275))

(declare-fun d!32277 () Bool)

(declare-fun e!73761 () Bool)

(assert (=> d!32277 e!73761))

(declare-fun res!55909 () Bool)

(assert (=> d!32277 (=> (not res!55909) (not e!73761))))

(declare-fun lt!58868 () SeekEntryResult!273)

(assert (=> d!32277 (= res!55909 ((_ is Found!273) lt!58868))))

(assert (=> d!32277 (= lt!58868 (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun lt!58867 () Unit!3534)

(declare-fun choose!724 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) Int) Unit!3534)

(assert (=> d!32277 (= lt!58867 (choose!724 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(assert (=> d!32277 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32277 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)) lt!58867)))

(declare-fun b!113502 () Bool)

(declare-fun res!55908 () Bool)

(assert (=> b!113502 (=> (not res!55908) (not e!73761))))

(assert (=> b!113502 (= res!55908 (inRange!0 (index!3245 lt!58868) (mask!6845 newMap!16)))))

(declare-fun b!113503 () Bool)

(assert (=> b!113503 (= e!73761 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58868)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> b!113503 (and (bvsge (index!3245 lt!58868) #b00000000000000000000000000000000) (bvslt (index!3245 lt!58868) (size!2351 (_keys!4381 newMap!16))))))

(assert (= (and d!32277 res!55909) b!113502))

(assert (= (and b!113502 res!55908) b!113503))

(assert (=> d!32277 m!129119))

(assert (=> d!32277 m!129405))

(assert (=> d!32277 m!129119))

(declare-fun m!129793 () Bool)

(assert (=> d!32277 m!129793))

(assert (=> d!32277 m!129651))

(declare-fun m!129795 () Bool)

(assert (=> b!113502 m!129795))

(declare-fun m!129797 () Bool)

(assert (=> b!113503 m!129797))

(assert (=> bm!12203 d!32277))

(declare-fun d!32279 () Bool)

(declare-fun e!73763 () Bool)

(assert (=> d!32279 e!73763))

(declare-fun res!55910 () Bool)

(assert (=> d!32279 (=> res!55910 e!73763)))

(declare-fun lt!58869 () Bool)

(assert (=> d!32279 (= res!55910 (not lt!58869))))

(declare-fun lt!58872 () Bool)

(assert (=> d!32279 (= lt!58869 lt!58872)))

(declare-fun lt!58870 () Unit!3534)

(declare-fun e!73762 () Unit!3534)

(assert (=> d!32279 (= lt!58870 e!73762)))

(declare-fun c!20355 () Bool)

(assert (=> d!32279 (= c!20355 lt!58872)))

(assert (=> d!32279 (= lt!58872 (containsKey!163 (toList!817 call!12199) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32279 (= (contains!844 call!12199 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) lt!58869)))

(declare-fun b!113504 () Bool)

(declare-fun lt!58871 () Unit!3534)

(assert (=> b!113504 (= e!73762 lt!58871)))

(assert (=> b!113504 (= lt!58871 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 call!12199) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> b!113504 (isDefined!113 (getValueByKey!159 (toList!817 call!12199) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113505 () Bool)

(declare-fun Unit!3550 () Unit!3534)

(assert (=> b!113505 (= e!73762 Unit!3550)))

(declare-fun b!113506 () Bool)

(assert (=> b!113506 (= e!73763 (isDefined!113 (getValueByKey!159 (toList!817 call!12199) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(assert (= (and d!32279 c!20355) b!113504))

(assert (= (and d!32279 (not c!20355)) b!113505))

(assert (= (and d!32279 (not res!55910)) b!113506))

(assert (=> d!32279 m!129119))

(declare-fun m!129799 () Bool)

(assert (=> d!32279 m!129799))

(assert (=> b!113504 m!129119))

(declare-fun m!129801 () Bool)

(assert (=> b!113504 m!129801))

(assert (=> b!113504 m!129119))

(declare-fun m!129803 () Bool)

(assert (=> b!113504 m!129803))

(assert (=> b!113504 m!129803))

(declare-fun m!129805 () Bool)

(assert (=> b!113504 m!129805))

(assert (=> b!113506 m!129119))

(assert (=> b!113506 m!129803))

(assert (=> b!113506 m!129803))

(assert (=> b!113506 m!129805))

(assert (=> b!113256 d!32279))

(declare-fun b!113541 () Bool)

(declare-fun e!73780 () Unit!3534)

(declare-fun lt!58945 () Unit!3534)

(assert (=> b!113541 (= e!73780 lt!58945)))

(assert (=> b!113541 (= lt!58945 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58936 () SeekEntryResult!273)

(declare-fun call!12262 () SeekEntryResult!273)

(assert (=> b!113541 (= lt!58936 call!12262)))

(declare-fun c!20365 () Bool)

(assert (=> b!113541 (= c!20365 ((_ is MissingZero!273) lt!58936))))

(declare-fun e!73786 () Bool)

(assert (=> b!113541 e!73786))

(declare-fun b!113543 () Bool)

(declare-fun Unit!3551 () Unit!3534)

(assert (=> b!113543 (= e!73780 Unit!3551)))

(declare-fun lt!58933 () Unit!3534)

(assert (=> b!113543 (= lt!58933 (lemmaInListMapThenSeekEntryOrOpenFindsIt!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58961 () SeekEntryResult!273)

(assert (=> b!113543 (= lt!58961 call!12262)))

(declare-fun res!55935 () Bool)

(assert (=> b!113543 (= res!55935 ((_ is Found!273) lt!58961))))

(declare-fun e!73787 () Bool)

(assert (=> b!113543 (=> (not res!55935) (not e!73787))))

(assert (=> b!113543 e!73787))

(declare-fun lt!58958 () Unit!3534)

(assert (=> b!113543 (= lt!58958 lt!58933)))

(assert (=> b!113543 false))

(declare-fun call!12263 () Bool)

(declare-fun bm!12257 () Bool)

(assert (=> bm!12257 (= call!12263 (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!113544 () Bool)

(declare-fun res!55933 () Bool)

(declare-fun e!73784 () Bool)

(assert (=> b!113544 (=> (not res!55933) (not e!73784))))

(declare-fun lt!58935 () tuple2!2442)

(assert (=> b!113544 (= res!55933 (valid!428 (_2!1231 lt!58935)))))

(declare-fun b!113545 () Bool)

(declare-fun c!20367 () Bool)

(assert (=> b!113545 (= c!20367 ((_ is MissingVacant!273) lt!58936))))

(declare-fun e!73781 () Bool)

(assert (=> b!113545 (= e!73786 e!73781)))

(declare-fun call!12260 () Bool)

(declare-fun bm!12258 () Bool)

(declare-fun c!20364 () Bool)

(assert (=> bm!12258 (= call!12260 (inRange!0 (ite c!20364 (index!3245 lt!58961) (ite c!20365 (index!3244 lt!58936) (index!3247 lt!58936))) (mask!6845 newMap!16)))))

(declare-fun b!113546 () Bool)

(declare-fun e!73785 () Unit!3534)

(declare-fun Unit!3552 () Unit!3534)

(assert (=> b!113546 (= e!73785 Unit!3552)))

(declare-fun b!113547 () Bool)

(declare-fun Unit!3553 () Unit!3534)

(assert (=> b!113547 (= e!73785 Unit!3553)))

(declare-fun lt!58949 () Unit!3534)

(declare-fun lemmaArrayContainsKeyThenInListMap!34 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) (_ BitVec 32) Int) Unit!3534)

(assert (=> b!113547 (= lt!58949 (lemmaArrayContainsKeyThenInListMap!34 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(assert (=> b!113547 (contains!844 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))

(declare-fun lt!58962 () Unit!3534)

(assert (=> b!113547 (= lt!58962 lt!58949)))

(assert (=> b!113547 false))

(declare-fun bm!12259 () Bool)

(declare-fun call!12261 () Bool)

(assert (=> bm!12259 (= call!12261 call!12260)))

(declare-fun b!113548 () Bool)

(declare-fun e!73782 () Bool)

(assert (=> b!113548 (= e!73782 (not call!12263))))

(declare-fun b!113549 () Bool)

(declare-fun res!55929 () Bool)

(declare-fun e!73783 () Bool)

(assert (=> b!113549 (=> (not res!55929) (not e!73783))))

(assert (=> b!113549 (= res!55929 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3244 lt!58936)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113550 () Bool)

(assert (=> b!113550 (= e!73787 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!58961)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113551 () Bool)

(declare-fun res!55937 () Bool)

(assert (=> b!113551 (= res!55937 call!12260)))

(assert (=> b!113551 (=> (not res!55937) (not e!73787))))

(declare-fun d!32281 () Bool)

(assert (=> d!32281 e!73784))

(declare-fun res!55931 () Bool)

(assert (=> d!32281 (=> (not res!55931) (not e!73784))))

(assert (=> d!32281 (= res!55931 (_1!1231 lt!58935))))

(assert (=> d!32281 (= lt!58935 (tuple2!2443 true (LongMapFixedSize!931 (defaultEntry!2661 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (bvadd (_size!514 newMap!16) #b00000000000000000000000000000001) (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (_vacant!514 newMap!16))))))

(declare-fun lt!58946 () Unit!3534)

(declare-fun lt!58959 () Unit!3534)

(assert (=> d!32281 (= lt!58946 lt!58959)))

(declare-fun lt!58950 () array!4416)

(declare-fun lt!58952 () array!4418)

(assert (=> d!32281 (contains!844 (getCurrentListMap!493 lt!58950 lt!58952 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (select (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735))))))

(assert (=> d!32281 (= lt!58959 (lemmaValidKeyInArrayIsInListMap!109 lt!58950 lt!58952 (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (defaultEntry!2661 newMap!16)))))

(assert (=> d!32281 (= lt!58952 (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))))))

(assert (=> d!32281 (= lt!58950 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun lt!58942 () Unit!3534)

(declare-fun lt!58948 () Unit!3534)

(assert (=> d!32281 (= lt!58942 lt!58948)))

(declare-fun lt!58934 () array!4416)

(assert (=> d!32281 (= (arrayCountValidKeys!0 lt!58934 (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (bvadd (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4416 (_ BitVec 32)) Unit!3534)

(assert (=> d!32281 (= lt!58948 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!58934 (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735))))))

(assert (=> d!32281 (= lt!58934 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun lt!58947 () Unit!3534)

(declare-fun lt!58960 () Unit!3534)

(assert (=> d!32281 (= lt!58947 lt!58960)))

(declare-fun lt!58954 () array!4416)

(assert (=> d!32281 (arrayContainsKey!0 lt!58954 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!32281 (= lt!58960 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!58954 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735))))))

(assert (=> d!32281 (= lt!58954 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun lt!58938 () Unit!3534)

(declare-fun lt!58941 () Unit!3534)

(assert (=> d!32281 (= lt!58938 lt!58941)))

(assert (=> d!32281 (= (+!152 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (getCurrentListMap!493 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))) (array!4419 (store (arr!2093 (_values!2644 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (ValueCellFull!1011 lt!58491)) (size!2352 (_values!2644 newMap!16))) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!34 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 32) (_ BitVec 64) V!3259 Int) Unit!3534)

(assert (=> d!32281 (= lt!58941 (lemmaAddValidKeyToArrayThenAddPairToListMap!34 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58943 () Unit!3534)

(declare-fun lt!58937 () Unit!3534)

(assert (=> d!32281 (= lt!58943 lt!58937)))

(assert (=> d!32281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))) (mask!6845 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4416 (_ BitVec 32) (_ BitVec 32)) Unit!3534)

(assert (=> d!32281 (= lt!58937 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (mask!6845 newMap!16)))))

(declare-fun lt!58940 () Unit!3534)

(declare-fun lt!58939 () Unit!3534)

(assert (=> d!32281 (= lt!58940 lt!58939)))

(assert (=> d!32281 (= (arrayCountValidKeys!0 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))) #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4381 newMap!16) #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4416 (_ BitVec 32) (_ BitVec 64)) Unit!3534)

(assert (=> d!32281 (= lt!58939 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4381 newMap!16) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun lt!58956 () Unit!3534)

(declare-fun lt!58951 () Unit!3534)

(assert (=> d!32281 (= lt!58956 lt!58951)))

(declare-fun lt!58953 () (_ BitVec 32))

(declare-fun lt!58944 () List!1661)

(assert (=> d!32281 (arrayNoDuplicates!0 (array!4417 (store (arr!2092 (_keys!4381 newMap!16)) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (size!2351 (_keys!4381 newMap!16))) lt!58953 lt!58944)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4416 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1661) Unit!3534)

(assert (=> d!32281 (= lt!58951 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735)) lt!58953 lt!58944))))

(assert (=> d!32281 (= lt!58944 Nil!1658)))

(assert (=> d!32281 (= lt!58953 #b00000000000000000000000000000000)))

(declare-fun lt!58957 () Unit!3534)

(assert (=> d!32281 (= lt!58957 e!73785)))

(declare-fun c!20366 () Bool)

(assert (=> d!32281 (= c!20366 (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!58955 () Unit!3534)

(assert (=> d!32281 (= lt!58955 e!73780)))

(assert (=> d!32281 (= c!20364 (contains!844 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32281 (valid!428 newMap!16)))

(assert (=> d!32281 (= (updateHelperNewKey!51 newMap!16 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 (ite c!20289 (index!3247 lt!58735) (index!3244 lt!58735))) lt!58935)))

(declare-fun b!113542 () Bool)

(declare-fun res!55934 () Bool)

(assert (=> b!113542 (=> (not res!55934) (not e!73784))))

(assert (=> b!113542 (= res!55934 (contains!844 (map!1302 (_2!1231 lt!58935)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113552 () Bool)

(assert (=> b!113552 (= e!73781 e!73782)))

(declare-fun res!55936 () Bool)

(assert (=> b!113552 (= res!55936 call!12261)))

(assert (=> b!113552 (=> (not res!55936) (not e!73782))))

(declare-fun b!113553 () Bool)

(assert (=> b!113553 (= e!73784 (= (map!1302 (_2!1231 lt!58935)) (+!152 (map!1302 newMap!16) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun b!113554 () Bool)

(assert (=> b!113554 (= e!73783 (not call!12263))))

(declare-fun b!113555 () Bool)

(assert (=> b!113555 (= e!73781 ((_ is Undefined!273) lt!58936))))

(declare-fun b!113556 () Bool)

(declare-fun res!55930 () Bool)

(assert (=> b!113556 (= res!55930 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3247 lt!58936)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113556 (=> (not res!55930) (not e!73782))))

(declare-fun b!113557 () Bool)

(declare-fun res!55932 () Bool)

(assert (=> b!113557 (=> (not res!55932) (not e!73783))))

(assert (=> b!113557 (= res!55932 call!12261)))

(assert (=> b!113557 (= e!73786 e!73783)))

(declare-fun bm!12260 () Bool)

(assert (=> bm!12260 (= call!12262 (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(assert (= (and d!32281 c!20364) b!113543))

(assert (= (and d!32281 (not c!20364)) b!113541))

(assert (= (and b!113543 res!55935) b!113551))

(assert (= (and b!113551 res!55937) b!113550))

(assert (= (and b!113541 c!20365) b!113557))

(assert (= (and b!113541 (not c!20365)) b!113545))

(assert (= (and b!113557 res!55932) b!113549))

(assert (= (and b!113549 res!55929) b!113554))

(assert (= (and b!113545 c!20367) b!113552))

(assert (= (and b!113545 (not c!20367)) b!113555))

(assert (= (and b!113552 res!55936) b!113556))

(assert (= (and b!113556 res!55930) b!113548))

(assert (= (or b!113557 b!113552) bm!12259))

(assert (= (or b!113554 b!113548) bm!12257))

(assert (= (or b!113551 bm!12259) bm!12258))

(assert (= (or b!113543 b!113541) bm!12260))

(assert (= (and d!32281 c!20366) b!113547))

(assert (= (and d!32281 (not c!20366)) b!113546))

(assert (= (and d!32281 res!55931) b!113544))

(assert (= (and b!113544 res!55933) b!113542))

(assert (= (and b!113542 res!55934) b!113553))

(declare-fun m!129807 () Bool)

(assert (=> b!113550 m!129807))

(assert (=> bm!12260 m!129119))

(assert (=> bm!12260 m!129405))

(declare-fun m!129809 () Bool)

(assert (=> b!113553 m!129809))

(assert (=> b!113553 m!129157))

(assert (=> b!113553 m!129157))

(declare-fun m!129811 () Bool)

(assert (=> b!113553 m!129811))

(declare-fun m!129813 () Bool)

(assert (=> bm!12258 m!129813))

(assert (=> b!113543 m!129119))

(assert (=> b!113543 m!129411))

(assert (=> b!113541 m!129119))

(assert (=> b!113541 m!129425))

(declare-fun m!129815 () Bool)

(assert (=> b!113549 m!129815))

(assert (=> bm!12257 m!129119))

(assert (=> bm!12257 m!129453))

(assert (=> b!113542 m!129809))

(assert (=> b!113542 m!129809))

(assert (=> b!113542 m!129119))

(declare-fun m!129817 () Bool)

(assert (=> b!113542 m!129817))

(declare-fun m!129819 () Bool)

(assert (=> b!113556 m!129819))

(assert (=> b!113547 m!129119))

(declare-fun m!129821 () Bool)

(assert (=> b!113547 m!129821))

(assert (=> b!113547 m!129333))

(assert (=> b!113547 m!129333))

(assert (=> b!113547 m!129119))

(declare-fun m!129823 () Bool)

(assert (=> b!113547 m!129823))

(declare-fun m!129825 () Bool)

(assert (=> b!113544 m!129825))

(assert (=> d!32281 m!129383))

(declare-fun m!129827 () Bool)

(assert (=> d!32281 m!129827))

(assert (=> d!32281 m!129119))

(declare-fun m!129829 () Bool)

(assert (=> d!32281 m!129829))

(declare-fun m!129831 () Bool)

(assert (=> d!32281 m!129831))

(declare-fun m!129833 () Bool)

(assert (=> d!32281 m!129833))

(assert (=> d!32281 m!129119))

(declare-fun m!129835 () Bool)

(assert (=> d!32281 m!129835))

(assert (=> d!32281 m!129145))

(assert (=> d!32281 m!129119))

(declare-fun m!129837 () Bool)

(assert (=> d!32281 m!129837))

(assert (=> d!32281 m!129119))

(assert (=> d!32281 m!129453))

(declare-fun m!129839 () Bool)

(assert (=> d!32281 m!129839))

(declare-fun m!129841 () Bool)

(assert (=> d!32281 m!129841))

(declare-fun m!129843 () Bool)

(assert (=> d!32281 m!129843))

(declare-fun m!129845 () Bool)

(assert (=> d!32281 m!129845))

(assert (=> d!32281 m!129333))

(assert (=> d!32281 m!129725))

(assert (=> d!32281 m!129333))

(assert (=> d!32281 m!129119))

(assert (=> d!32281 m!129823))

(assert (=> d!32281 m!129333))

(declare-fun m!129847 () Bool)

(assert (=> d!32281 m!129847))

(assert (=> d!32281 m!129119))

(declare-fun m!129849 () Bool)

(assert (=> d!32281 m!129849))

(declare-fun m!129851 () Bool)

(assert (=> d!32281 m!129851))

(declare-fun m!129853 () Bool)

(assert (=> d!32281 m!129853))

(assert (=> d!32281 m!129119))

(declare-fun m!129855 () Bool)

(assert (=> d!32281 m!129855))

(assert (=> d!32281 m!129119))

(declare-fun m!129857 () Bool)

(assert (=> d!32281 m!129857))

(declare-fun m!129859 () Bool)

(assert (=> d!32281 m!129859))

(assert (=> d!32281 m!129845))

(assert (=> d!32281 m!129847))

(declare-fun m!129861 () Bool)

(assert (=> d!32281 m!129861))

(assert (=> bm!12212 d!32281))

(assert (=> b!113304 d!32245))

(assert (=> b!113067 d!32201))

(declare-fun d!32283 () Bool)

(declare-fun res!55942 () Bool)

(declare-fun e!73792 () Bool)

(assert (=> d!32283 (=> res!55942 e!73792)))

(assert (=> d!32283 (= res!55942 (and ((_ is Cons!1656) (toList!817 lt!58493)) (= (_1!1232 (h!2256 (toList!817 lt!58493))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(assert (=> d!32283 (= (containsKey!163 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) e!73792)))

(declare-fun b!113562 () Bool)

(declare-fun e!73793 () Bool)

(assert (=> b!113562 (= e!73792 e!73793)))

(declare-fun res!55943 () Bool)

(assert (=> b!113562 (=> (not res!55943) (not e!73793))))

(assert (=> b!113562 (= res!55943 (and (or (not ((_ is Cons!1656) (toList!817 lt!58493))) (bvsle (_1!1232 (h!2256 (toList!817 lt!58493))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))) ((_ is Cons!1656) (toList!817 lt!58493)) (bvslt (_1!1232 (h!2256 (toList!817 lt!58493))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(declare-fun b!113563 () Bool)

(assert (=> b!113563 (= e!73793 (containsKey!163 (t!5846 (toList!817 lt!58493)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (= (and d!32283 (not res!55942)) b!113562))

(assert (= (and b!113562 res!55943) b!113563))

(assert (=> b!113563 m!129119))

(declare-fun m!129863 () Bool)

(assert (=> b!113563 m!129863))

(assert (=> d!32189 d!32283))

(declare-fun d!32285 () Bool)

(declare-fun e!73794 () Bool)

(assert (=> d!32285 e!73794))

(declare-fun res!55945 () Bool)

(assert (=> d!32285 (=> (not res!55945) (not e!73794))))

(declare-fun lt!58964 () ListLongMap!1603)

(assert (=> d!32285 (= res!55945 (contains!844 lt!58964 (_1!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun lt!58965 () List!1660)

(assert (=> d!32285 (= lt!58964 (ListLongMap!1604 lt!58965))))

(declare-fun lt!58966 () Unit!3534)

(declare-fun lt!58963 () Unit!3534)

(assert (=> d!32285 (= lt!58966 lt!58963)))

(assert (=> d!32285 (= (getValueByKey!159 lt!58965 (_1!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))) (Some!164 (_2!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(assert (=> d!32285 (= lt!58963 (lemmaContainsTupThenGetReturnValue!77 lt!58965 (_1!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (_2!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(assert (=> d!32285 (= lt!58965 (insertStrictlySorted!79 (toList!817 (ite c!20248 call!12143 (ite c!20247 call!12139 call!12144))) (_1!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (_2!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(assert (=> d!32285 (= (+!152 (ite c!20248 call!12143 (ite c!20247 call!12139 call!12144)) (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58964)))

(declare-fun b!113564 () Bool)

(declare-fun res!55944 () Bool)

(assert (=> b!113564 (=> (not res!55944) (not e!73794))))

(assert (=> b!113564 (= res!55944 (= (getValueByKey!159 (toList!817 lt!58964) (_1!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))) (Some!164 (_2!1232 (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))))

(declare-fun b!113565 () Bool)

(assert (=> b!113565 (= e!73794 (contains!846 (toList!817 lt!58964) (ite (or c!20248 c!20247) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (= (and d!32285 res!55945) b!113564))

(assert (= (and b!113564 res!55944) b!113565))

(declare-fun m!129865 () Bool)

(assert (=> d!32285 m!129865))

(declare-fun m!129867 () Bool)

(assert (=> d!32285 m!129867))

(declare-fun m!129869 () Bool)

(assert (=> d!32285 m!129869))

(declare-fun m!129871 () Bool)

(assert (=> d!32285 m!129871))

(declare-fun m!129873 () Bool)

(assert (=> b!113564 m!129873))

(declare-fun m!129875 () Bool)

(assert (=> b!113565 m!129875))

(assert (=> bm!12140 d!32285))

(declare-fun b!113566 () Bool)

(declare-fun e!73797 () ListLongMap!1603)

(declare-fun call!12269 () ListLongMap!1603)

(assert (=> b!113566 (= e!73797 call!12269)))

(declare-fun b!113567 () Bool)

(declare-fun e!73800 () Bool)

(declare-fun lt!58986 () ListLongMap!1603)

(assert (=> b!113567 (= e!73800 (= (apply!102 lt!58986 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)) (get!1368 (select (arr!2093 (_values!2644 newMap!16)) #b00000000000000000000000000000000) (dynLambda!395 (defaultEntry!2661 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2352 (_values!2644 newMap!16))))))

(assert (=> b!113567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113568 () Bool)

(declare-fun e!73795 () ListLongMap!1603)

(declare-fun call!12270 () ListLongMap!1603)

(assert (=> b!113568 (= e!73795 (+!152 call!12270 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)))))))

(declare-fun b!113569 () Bool)

(declare-fun e!73806 () Bool)

(assert (=> b!113569 (= e!73806 (= (apply!102 lt!58986 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2529 newMap!16)))))

(declare-fun b!113570 () Bool)

(declare-fun call!12266 () ListLongMap!1603)

(assert (=> b!113570 (= e!73797 call!12266)))

(declare-fun bm!12261 () Bool)

(declare-fun call!12268 () ListLongMap!1603)

(assert (=> bm!12261 (= call!12268 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun bm!12262 () Bool)

(declare-fun call!12264 () ListLongMap!1603)

(assert (=> bm!12262 (= call!12264 call!12268)))

(declare-fun c!20368 () Bool)

(declare-fun b!113571 () Bool)

(assert (=> b!113571 (= c!20368 (and (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!73796 () ListLongMap!1603)

(assert (=> b!113571 (= e!73796 e!73797)))

(declare-fun bm!12263 () Bool)

(assert (=> bm!12263 (= call!12266 call!12270)))

(declare-fun b!113572 () Bool)

(declare-fun e!73804 () Bool)

(declare-fun call!12265 () Bool)

(assert (=> b!113572 (= e!73804 (not call!12265))))

(declare-fun e!73799 () Bool)

(declare-fun b!113573 () Bool)

(assert (=> b!113573 (= e!73799 (= (apply!102 lt!58986 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16))))))

(declare-fun b!113574 () Bool)

(assert (=> b!113574 (= e!73804 e!73806)))

(declare-fun res!55953 () Bool)

(assert (=> b!113574 (= res!55953 call!12265)))

(assert (=> b!113574 (=> (not res!55953) (not e!73806))))

(declare-fun d!32287 () Bool)

(declare-fun e!73801 () Bool)

(assert (=> d!32287 e!73801))

(declare-fun res!55946 () Bool)

(assert (=> d!32287 (=> (not res!55946) (not e!73801))))

(assert (=> d!32287 (= res!55946 (or (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))))

(declare-fun lt!58980 () ListLongMap!1603)

(assert (=> d!32287 (= lt!58986 lt!58980)))

(declare-fun lt!58984 () Unit!3534)

(declare-fun e!73807 () Unit!3534)

(assert (=> d!32287 (= lt!58984 e!73807)))

(declare-fun c!20371 () Bool)

(declare-fun e!73798 () Bool)

(assert (=> d!32287 (= c!20371 e!73798)))

(declare-fun res!55951 () Bool)

(assert (=> d!32287 (=> (not res!55951) (not e!73798))))

(assert (=> d!32287 (= res!55951 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32287 (= lt!58980 e!73795)))

(declare-fun c!20373 () Bool)

(assert (=> d!32287 (= c!20373 (and (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32287 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32287 (= (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) lt!58986)))

(declare-fun bm!12264 () Bool)

(assert (=> bm!12264 (= call!12265 (contains!844 lt!58986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12265 () Bool)

(declare-fun c!20372 () Bool)

(assert (=> bm!12265 (= call!12270 (+!152 (ite c!20373 call!12268 (ite c!20372 call!12264 call!12269)) (ite (or c!20373 c!20372) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 newMap!16)) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16))))))))

(declare-fun b!113575 () Bool)

(declare-fun e!73802 () Bool)

(assert (=> b!113575 (= e!73802 e!73800)))

(declare-fun res!55948 () Bool)

(assert (=> b!113575 (=> (not res!55948) (not e!73800))))

(assert (=> b!113575 (= res!55948 (contains!844 lt!58986 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!113575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113576 () Bool)

(assert (=> b!113576 (= e!73795 e!73796)))

(assert (=> b!113576 (= c!20372 (and (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113577 () Bool)

(declare-fun lt!58974 () Unit!3534)

(assert (=> b!113577 (= e!73807 lt!58974)))

(declare-fun lt!58967 () ListLongMap!1603)

(assert (=> b!113577 (= lt!58967 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58973 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58973 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58972 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58972 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58977 () Unit!3534)

(assert (=> b!113577 (= lt!58977 (addStillContains!78 lt!58967 lt!58973 (zeroValue!2529 newMap!16) lt!58972))))

(assert (=> b!113577 (contains!844 (+!152 lt!58967 (tuple2!2445 lt!58973 (zeroValue!2529 newMap!16))) lt!58972)))

(declare-fun lt!58971 () Unit!3534)

(assert (=> b!113577 (= lt!58971 lt!58977)))

(declare-fun lt!58982 () ListLongMap!1603)

(assert (=> b!113577 (= lt!58982 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58969 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58969 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58981 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58981 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58976 () Unit!3534)

(assert (=> b!113577 (= lt!58976 (addApplyDifferent!78 lt!58982 lt!58969 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) lt!58981))))

(assert (=> b!113577 (= (apply!102 (+!152 lt!58982 (tuple2!2445 lt!58969 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)))) lt!58981) (apply!102 lt!58982 lt!58981))))

(declare-fun lt!58983 () Unit!3534)

(assert (=> b!113577 (= lt!58983 lt!58976)))

(declare-fun lt!58987 () ListLongMap!1603)

(assert (=> b!113577 (= lt!58987 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58985 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58985 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58975 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58975 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58970 () Unit!3534)

(assert (=> b!113577 (= lt!58970 (addApplyDifferent!78 lt!58987 lt!58985 (zeroValue!2529 newMap!16) lt!58975))))

(assert (=> b!113577 (= (apply!102 (+!152 lt!58987 (tuple2!2445 lt!58985 (zeroValue!2529 newMap!16))) lt!58975) (apply!102 lt!58987 lt!58975))))

(declare-fun lt!58968 () Unit!3534)

(assert (=> b!113577 (= lt!58968 lt!58970)))

(declare-fun lt!58978 () ListLongMap!1603)

(assert (=> b!113577 (= lt!58978 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) (zeroValue!2529 newMap!16) (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!58979 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58979 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58988 () (_ BitVec 64))

(assert (=> b!113577 (= lt!58988 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!113577 (= lt!58974 (addApplyDifferent!78 lt!58978 lt!58979 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)) lt!58988))))

(assert (=> b!113577 (= (apply!102 (+!152 lt!58978 (tuple2!2445 lt!58979 (ite c!20290 (ite c!20286 (minValue!2529 newMap!16) lt!58491) (minValue!2529 newMap!16)))) lt!58988) (apply!102 lt!58978 lt!58988))))

(declare-fun bm!12266 () Bool)

(declare-fun call!12267 () Bool)

(assert (=> bm!12266 (= call!12267 (contains!844 lt!58986 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113578 () Bool)

(declare-fun e!73805 () Bool)

(assert (=> b!113578 (= e!73805 (not call!12267))))

(declare-fun bm!12267 () Bool)

(assert (=> bm!12267 (= call!12269 call!12264)))

(declare-fun b!113579 () Bool)

(assert (=> b!113579 (= e!73798 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113580 () Bool)

(assert (=> b!113580 (= e!73801 e!73805)))

(declare-fun c!20369 () Bool)

(assert (=> b!113580 (= c!20369 (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113581 () Bool)

(declare-fun e!73803 () Bool)

(assert (=> b!113581 (= e!73803 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113582 () Bool)

(assert (=> b!113582 (= e!73805 e!73799)))

(declare-fun res!55950 () Bool)

(assert (=> b!113582 (= res!55950 call!12267)))

(assert (=> b!113582 (=> (not res!55950) (not e!73799))))

(declare-fun b!113583 () Bool)

(declare-fun res!55952 () Bool)

(assert (=> b!113583 (=> (not res!55952) (not e!73801))))

(assert (=> b!113583 (= res!55952 e!73802)))

(declare-fun res!55954 () Bool)

(assert (=> b!113583 (=> res!55954 e!73802)))

(assert (=> b!113583 (= res!55954 (not e!73803))))

(declare-fun res!55947 () Bool)

(assert (=> b!113583 (=> (not res!55947) (not e!73803))))

(assert (=> b!113583 (= res!55947 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113584 () Bool)

(declare-fun res!55949 () Bool)

(assert (=> b!113584 (=> (not res!55949) (not e!73801))))

(assert (=> b!113584 (= res!55949 e!73804)))

(declare-fun c!20370 () Bool)

(assert (=> b!113584 (= c!20370 (not (= (bvand (ite c!20290 (ite c!20286 (extraKeys!2452 newMap!16) lt!58741) (extraKeys!2452 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!113585 () Bool)

(declare-fun Unit!3554 () Unit!3534)

(assert (=> b!113585 (= e!73807 Unit!3554)))

(declare-fun b!113586 () Bool)

(assert (=> b!113586 (= e!73796 call!12266)))

(assert (= (and d!32287 c!20373) b!113568))

(assert (= (and d!32287 (not c!20373)) b!113576))

(assert (= (and b!113576 c!20372) b!113586))

(assert (= (and b!113576 (not c!20372)) b!113571))

(assert (= (and b!113571 c!20368) b!113570))

(assert (= (and b!113571 (not c!20368)) b!113566))

(assert (= (or b!113570 b!113566) bm!12267))

(assert (= (or b!113586 bm!12267) bm!12262))

(assert (= (or b!113586 b!113570) bm!12263))

(assert (= (or b!113568 bm!12262) bm!12261))

(assert (= (or b!113568 bm!12263) bm!12265))

(assert (= (and d!32287 res!55951) b!113579))

(assert (= (and d!32287 c!20371) b!113577))

(assert (= (and d!32287 (not c!20371)) b!113585))

(assert (= (and d!32287 res!55946) b!113583))

(assert (= (and b!113583 res!55947) b!113581))

(assert (= (and b!113583 (not res!55954)) b!113575))

(assert (= (and b!113575 res!55948) b!113567))

(assert (= (and b!113583 res!55952) b!113584))

(assert (= (and b!113584 c!20370) b!113574))

(assert (= (and b!113584 (not c!20370)) b!113572))

(assert (= (and b!113574 res!55953) b!113569))

(assert (= (or b!113574 b!113572) bm!12264))

(assert (= (and b!113584 res!55949) b!113580))

(assert (= (and b!113580 c!20369) b!113582))

(assert (= (and b!113580 (not c!20369)) b!113578))

(assert (= (and b!113582 res!55950) b!113573))

(assert (= (or b!113582 b!113578) bm!12266))

(declare-fun b_lambda!5103 () Bool)

(assert (=> (not b_lambda!5103) (not b!113567)))

(assert (=> b!113567 t!5854))

(declare-fun b_and!6985 () Bool)

(assert (= b_and!6981 (and (=> t!5854 result!3601) b_and!6985)))

(assert (=> b!113567 t!5856))

(declare-fun b_and!6987 () Bool)

(assert (= b_and!6983 (and (=> t!5856 result!3603) b_and!6987)))

(declare-fun m!129877 () Bool)

(assert (=> b!113573 m!129877))

(declare-fun m!129879 () Bool)

(assert (=> b!113568 m!129879))

(declare-fun m!129881 () Bool)

(assert (=> b!113577 m!129881))

(declare-fun m!129883 () Bool)

(assert (=> b!113577 m!129883))

(declare-fun m!129885 () Bool)

(assert (=> b!113577 m!129885))

(declare-fun m!129887 () Bool)

(assert (=> b!113577 m!129887))

(declare-fun m!129889 () Bool)

(assert (=> b!113577 m!129889))

(declare-fun m!129891 () Bool)

(assert (=> b!113577 m!129891))

(declare-fun m!129893 () Bool)

(assert (=> b!113577 m!129893))

(declare-fun m!129895 () Bool)

(assert (=> b!113577 m!129895))

(assert (=> b!113577 m!129887))

(declare-fun m!129897 () Bool)

(assert (=> b!113577 m!129897))

(declare-fun m!129899 () Bool)

(assert (=> b!113577 m!129899))

(declare-fun m!129901 () Bool)

(assert (=> b!113577 m!129901))

(declare-fun m!129903 () Bool)

(assert (=> b!113577 m!129903))

(declare-fun m!129905 () Bool)

(assert (=> b!113577 m!129905))

(assert (=> b!113577 m!129519))

(declare-fun m!129907 () Bool)

(assert (=> b!113577 m!129907))

(assert (=> b!113577 m!129885))

(declare-fun m!129909 () Bool)

(assert (=> b!113577 m!129909))

(assert (=> b!113577 m!129881))

(assert (=> b!113577 m!129899))

(declare-fun m!129911 () Bool)

(assert (=> b!113577 m!129911))

(assert (=> b!113581 m!129519))

(assert (=> b!113581 m!129519))

(assert (=> b!113581 m!129521))

(declare-fun m!129913 () Bool)

(assert (=> b!113567 m!129913))

(assert (=> b!113567 m!129639))

(declare-fun m!129915 () Bool)

(assert (=> b!113567 m!129915))

(assert (=> b!113567 m!129519))

(assert (=> b!113567 m!129913))

(assert (=> b!113567 m!129639))

(assert (=> b!113567 m!129519))

(declare-fun m!129917 () Bool)

(assert (=> b!113567 m!129917))

(assert (=> b!113579 m!129519))

(assert (=> b!113579 m!129519))

(assert (=> b!113579 m!129521))

(assert (=> bm!12261 m!129895))

(assert (=> b!113575 m!129519))

(assert (=> b!113575 m!129519))

(declare-fun m!129919 () Bool)

(assert (=> b!113575 m!129919))

(declare-fun m!129921 () Bool)

(assert (=> b!113569 m!129921))

(declare-fun m!129923 () Bool)

(assert (=> bm!12265 m!129923))

(assert (=> d!32287 m!129651))

(declare-fun m!129925 () Bool)

(assert (=> bm!12266 m!129925))

(declare-fun m!129927 () Bool)

(assert (=> bm!12264 m!129927))

(assert (=> bm!12196 d!32287))

(declare-fun d!32289 () Bool)

(assert (=> d!32289 (= (inRange!0 (ite c!20291 (ite c!20285 (index!3245 lt!58722) (ite c!20288 (index!3244 lt!58738) (index!3247 lt!58738))) (ite c!20282 (index!3245 lt!58737) (ite c!20293 (index!3244 lt!58732) (index!3247 lt!58732)))) (mask!6845 newMap!16)) (and (bvsge (ite c!20291 (ite c!20285 (index!3245 lt!58722) (ite c!20288 (index!3244 lt!58738) (index!3247 lt!58738))) (ite c!20282 (index!3245 lt!58737) (ite c!20293 (index!3244 lt!58732) (index!3247 lt!58732)))) #b00000000000000000000000000000000) (bvslt (ite c!20291 (ite c!20285 (index!3245 lt!58722) (ite c!20288 (index!3244 lt!58738) (index!3247 lt!58738))) (ite c!20282 (index!3245 lt!58737) (ite c!20293 (index!3244 lt!58732) (index!3247 lt!58732)))) (bvadd (mask!6845 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!12214 d!32289))

(declare-fun d!32291 () Bool)

(declare-fun lt!58991 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!116 (List!1660) (InoxSet tuple2!2444))

(assert (=> d!32291 (= lt!58991 (select (content!116 (toList!817 lt!58586)) lt!58488))))

(declare-fun e!73812 () Bool)

(assert (=> d!32291 (= lt!58991 e!73812)))

(declare-fun res!55960 () Bool)

(assert (=> d!32291 (=> (not res!55960) (not e!73812))))

(assert (=> d!32291 (= res!55960 ((_ is Cons!1656) (toList!817 lt!58586)))))

(assert (=> d!32291 (= (contains!846 (toList!817 lt!58586) lt!58488) lt!58991)))

(declare-fun b!113591 () Bool)

(declare-fun e!73813 () Bool)

(assert (=> b!113591 (= e!73812 e!73813)))

(declare-fun res!55959 () Bool)

(assert (=> b!113591 (=> res!55959 e!73813)))

(assert (=> b!113591 (= res!55959 (= (h!2256 (toList!817 lt!58586)) lt!58488))))

(declare-fun b!113592 () Bool)

(assert (=> b!113592 (= e!73813 (contains!846 (t!5846 (toList!817 lt!58586)) lt!58488))))

(assert (= (and d!32291 res!55960) b!113591))

(assert (= (and b!113591 (not res!55959)) b!113592))

(declare-fun m!129929 () Bool)

(assert (=> d!32291 m!129929))

(declare-fun m!129931 () Bool)

(assert (=> d!32291 m!129931))

(declare-fun m!129933 () Bool)

(assert (=> b!113592 m!129933))

(assert (=> b!113081 d!32291))

(declare-fun b!113593 () Bool)

(declare-fun e!73816 () ListLongMap!1603)

(assert (=> b!113593 (= e!73816 (ListLongMap!1604 Nil!1657))))

(declare-fun b!113594 () Bool)

(declare-fun lt!58996 () Unit!3534)

(declare-fun lt!58994 () Unit!3534)

(assert (=> b!113594 (= lt!58996 lt!58994)))

(declare-fun lt!58998 () V!3259)

(declare-fun lt!58995 () ListLongMap!1603)

(declare-fun lt!58997 () (_ BitVec 64))

(declare-fun lt!58992 () (_ BitVec 64))

(assert (=> b!113594 (not (contains!844 (+!152 lt!58995 (tuple2!2445 lt!58992 lt!58998)) lt!58997))))

(assert (=> b!113594 (= lt!58994 (addStillNotContains!52 lt!58995 lt!58992 lt!58998 lt!58997))))

(assert (=> b!113594 (= lt!58997 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!113594 (= lt!58998 (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!113594 (= lt!58992 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(declare-fun call!12271 () ListLongMap!1603)

(assert (=> b!113594 (= lt!58995 call!12271)))

(declare-fun e!73815 () ListLongMap!1603)

(assert (=> b!113594 (= e!73815 (+!152 call!12271 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!113595 () Bool)

(declare-fun res!55962 () Bool)

(declare-fun e!73818 () Bool)

(assert (=> b!113595 (=> (not res!55962) (not e!73818))))

(declare-fun lt!58993 () ListLongMap!1603)

(assert (=> b!113595 (= res!55962 (not (contains!844 lt!58993 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!32293 () Bool)

(assert (=> d!32293 e!73818))

(declare-fun res!55964 () Bool)

(assert (=> d!32293 (=> (not res!55964) (not e!73818))))

(assert (=> d!32293 (= res!55964 (not (contains!844 lt!58993 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32293 (= lt!58993 e!73816)))

(declare-fun c!20376 () Bool)

(assert (=> d!32293 (= c!20376 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32293 (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32293 (= (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))) lt!58993)))

(declare-fun b!113596 () Bool)

(declare-fun e!73819 () Bool)

(assert (=> b!113596 (= e!73819 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!113596 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!113597 () Bool)

(declare-fun e!73814 () Bool)

(assert (=> b!113597 (= e!73814 (isEmpty!387 lt!58993))))

(declare-fun b!113598 () Bool)

(assert (=> b!113598 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> b!113598 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2352 (_values!2644 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun e!73820 () Bool)

(assert (=> b!113598 (= e!73820 (= (apply!102 lt!58993 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1368 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!113599 () Bool)

(declare-fun e!73817 () Bool)

(assert (=> b!113599 (= e!73817 e!73814)))

(declare-fun c!20375 () Bool)

(assert (=> b!113599 (= c!20375 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun bm!12268 () Bool)

(assert (=> bm!12268 (= call!12271 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113600 () Bool)

(assert (=> b!113600 (= e!73818 e!73817)))

(declare-fun c!20374 () Bool)

(assert (=> b!113600 (= c!20374 e!73819)))

(declare-fun res!55961 () Bool)

(assert (=> b!113600 (=> (not res!55961) (not e!73819))))

(assert (=> b!113600 (= res!55961 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113601 () Bool)

(assert (=> b!113601 (= e!73816 e!73815)))

(declare-fun c!20377 () Bool)

(assert (=> b!113601 (= c!20377 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!113602 () Bool)

(assert (=> b!113602 (= e!73817 e!73820)))

(assert (=> b!113602 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun res!55963 () Bool)

(assert (=> b!113602 (= res!55963 (contains!844 lt!58993 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!113602 (=> (not res!55963) (not e!73820))))

(declare-fun b!113603 () Bool)

(assert (=> b!113603 (= e!73814 (= lt!58993 (getCurrentListMapNoExtraKeys!119 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (_values!2644 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992))) (extraKeys!2452 (v!2958 (underlying!376 thiss!992))) (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) (minValue!2529 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113604 () Bool)

(assert (=> b!113604 (= e!73815 call!12271)))

(assert (= (and d!32293 c!20376) b!113593))

(assert (= (and d!32293 (not c!20376)) b!113601))

(assert (= (and b!113601 c!20377) b!113594))

(assert (= (and b!113601 (not c!20377)) b!113604))

(assert (= (or b!113594 b!113604) bm!12268))

(assert (= (and d!32293 res!55964) b!113595))

(assert (= (and b!113595 res!55962) b!113600))

(assert (= (and b!113600 res!55961) b!113596))

(assert (= (and b!113600 c!20374) b!113602))

(assert (= (and b!113600 (not c!20374)) b!113599))

(assert (= (and b!113602 res!55963) b!113598))

(assert (= (and b!113599 c!20375) b!113603))

(assert (= (and b!113599 (not c!20375)) b!113597))

(declare-fun b_lambda!5105 () Bool)

(assert (=> (not b_lambda!5105) (not b!113594)))

(assert (=> b!113594 t!5843))

(declare-fun b_and!6989 () Bool)

(assert (= b_and!6985 (and (=> t!5843 result!3587) b_and!6989)))

(assert (=> b!113594 t!5845))

(declare-fun b_and!6991 () Bool)

(assert (= b_and!6987 (and (=> t!5845 result!3591) b_and!6991)))

(declare-fun b_lambda!5107 () Bool)

(assert (=> (not b_lambda!5107) (not b!113598)))

(assert (=> b!113598 t!5843))

(declare-fun b_and!6993 () Bool)

(assert (= b_and!6989 (and (=> t!5843 result!3587) b_and!6993)))

(assert (=> b!113598 t!5845))

(declare-fun b_and!6995 () Bool)

(assert (= b_and!6991 (and (=> t!5845 result!3591) b_and!6995)))

(assert (=> b!113598 m!129167))

(declare-fun m!129935 () Bool)

(assert (=> b!113598 m!129935))

(assert (=> b!113598 m!129563))

(assert (=> b!113598 m!129935))

(assert (=> b!113598 m!129167))

(declare-fun m!129937 () Bool)

(assert (=> b!113598 m!129937))

(assert (=> b!113598 m!129563))

(declare-fun m!129939 () Bool)

(assert (=> b!113598 m!129939))

(assert (=> b!113602 m!129563))

(assert (=> b!113602 m!129563))

(declare-fun m!129941 () Bool)

(assert (=> b!113602 m!129941))

(assert (=> b!113596 m!129563))

(assert (=> b!113596 m!129563))

(declare-fun m!129943 () Bool)

(assert (=> b!113596 m!129943))

(declare-fun m!129945 () Bool)

(assert (=> b!113594 m!129945))

(assert (=> b!113594 m!129167))

(declare-fun m!129947 () Bool)

(assert (=> b!113594 m!129947))

(declare-fun m!129949 () Bool)

(assert (=> b!113594 m!129949))

(assert (=> b!113594 m!129947))

(declare-fun m!129951 () Bool)

(assert (=> b!113594 m!129951))

(assert (=> b!113594 m!129935))

(assert (=> b!113594 m!129563))

(assert (=> b!113594 m!129935))

(assert (=> b!113594 m!129167))

(assert (=> b!113594 m!129937))

(declare-fun m!129953 () Bool)

(assert (=> b!113595 m!129953))

(declare-fun m!129955 () Bool)

(assert (=> bm!12268 m!129955))

(assert (=> b!113603 m!129955))

(assert (=> b!113601 m!129563))

(assert (=> b!113601 m!129563))

(assert (=> b!113601 m!129943))

(declare-fun m!129957 () Bool)

(assert (=> b!113597 m!129957))

(declare-fun m!129959 () Bool)

(assert (=> d!32293 m!129959))

(assert (=> d!32293 m!129127))

(assert (=> bm!12121 d!32293))

(declare-fun d!32295 () Bool)

(declare-fun lt!58999 () Bool)

(assert (=> d!32295 (= lt!58999 (select (content!116 (toList!817 lt!58550)) lt!58485))))

(declare-fun e!73821 () Bool)

(assert (=> d!32295 (= lt!58999 e!73821)))

(declare-fun res!55966 () Bool)

(assert (=> d!32295 (=> (not res!55966) (not e!73821))))

(assert (=> d!32295 (= res!55966 ((_ is Cons!1656) (toList!817 lt!58550)))))

(assert (=> d!32295 (= (contains!846 (toList!817 lt!58550) lt!58485) lt!58999)))

(declare-fun b!113605 () Bool)

(declare-fun e!73822 () Bool)

(assert (=> b!113605 (= e!73821 e!73822)))

(declare-fun res!55965 () Bool)

(assert (=> b!113605 (=> res!55965 e!73822)))

(assert (=> b!113605 (= res!55965 (= (h!2256 (toList!817 lt!58550)) lt!58485))))

(declare-fun b!113606 () Bool)

(assert (=> b!113606 (= e!73822 (contains!846 (t!5846 (toList!817 lt!58550)) lt!58485))))

(assert (= (and d!32295 res!55966) b!113605))

(assert (= (and b!113605 (not res!55965)) b!113606))

(declare-fun m!129961 () Bool)

(assert (=> d!32295 m!129961))

(declare-fun m!129963 () Bool)

(assert (=> d!32295 m!129963))

(declare-fun m!129965 () Bool)

(assert (=> b!113606 m!129965))

(assert (=> b!113039 d!32295))

(declare-fun d!32297 () Bool)

(declare-fun e!73824 () Bool)

(assert (=> d!32297 e!73824))

(declare-fun res!55967 () Bool)

(assert (=> d!32297 (=> res!55967 e!73824)))

(declare-fun lt!59000 () Bool)

(assert (=> d!32297 (= res!55967 (not lt!59000))))

(declare-fun lt!59003 () Bool)

(assert (=> d!32297 (= lt!59000 lt!59003)))

(declare-fun lt!59001 () Unit!3534)

(declare-fun e!73823 () Unit!3534)

(assert (=> d!32297 (= lt!59001 e!73823)))

(declare-fun c!20378 () Bool)

(assert (=> d!32297 (= c!20378 lt!59003)))

(assert (=> d!32297 (= lt!59003 (containsKey!163 (toList!817 lt!58652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32297 (= (contains!844 lt!58652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!59000)))

(declare-fun b!113607 () Bool)

(declare-fun lt!59002 () Unit!3534)

(assert (=> b!113607 (= e!73823 lt!59002)))

(assert (=> b!113607 (= lt!59002 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113607 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113608 () Bool)

(declare-fun Unit!3555 () Unit!3534)

(assert (=> b!113608 (= e!73823 Unit!3555)))

(declare-fun b!113609 () Bool)

(assert (=> b!113609 (= e!73824 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32297 c!20378) b!113607))

(assert (= (and d!32297 (not c!20378)) b!113608))

(assert (= (and d!32297 (not res!55967)) b!113609))

(declare-fun m!129967 () Bool)

(assert (=> d!32297 m!129967))

(declare-fun m!129969 () Bool)

(assert (=> b!113607 m!129969))

(declare-fun m!129971 () Bool)

(assert (=> b!113607 m!129971))

(assert (=> b!113607 m!129971))

(declare-fun m!129973 () Bool)

(assert (=> b!113607 m!129973))

(assert (=> b!113609 m!129971))

(assert (=> b!113609 m!129971))

(assert (=> b!113609 m!129973))

(assert (=> bm!12141 d!32297))

(declare-fun d!32299 () Bool)

(assert (=> d!32299 (= (apply!102 lt!58568 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1371 (getValueByKey!159 (toList!817 lt!58568) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4653 () Bool)

(assert (= bs!4653 d!32299))

(assert (=> bs!4653 m!129237))

(assert (=> bs!4653 m!129559))

(assert (=> bs!4653 m!129559))

(declare-fun m!129975 () Bool)

(assert (=> bs!4653 m!129975))

(assert (=> b!113069 d!32299))

(assert (=> b!113069 d!32221))

(declare-fun d!32301 () Bool)

(declare-fun lt!59006 () Bool)

(declare-fun content!117 (List!1661) (InoxSet (_ BitVec 64)))

(assert (=> d!32301 (= lt!59006 (select (content!117 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun e!73830 () Bool)

(assert (=> d!32301 (= lt!59006 e!73830)))

(declare-fun res!55972 () Bool)

(assert (=> d!32301 (=> (not res!55972) (not e!73830))))

(assert (=> d!32301 (= res!55972 ((_ is Cons!1657) Nil!1658))))

(assert (=> d!32301 (= (contains!845 Nil!1658 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) lt!59006)))

(declare-fun b!113614 () Bool)

(declare-fun e!73829 () Bool)

(assert (=> b!113614 (= e!73830 e!73829)))

(declare-fun res!55973 () Bool)

(assert (=> b!113614 (=> res!55973 e!73829)))

(assert (=> b!113614 (= res!55973 (= (h!2257 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113615 () Bool)

(assert (=> b!113615 (= e!73829 (contains!845 (t!5847 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (= (and d!32301 res!55972) b!113614))

(assert (= (and b!113614 (not res!55973)) b!113615))

(declare-fun m!129977 () Bool)

(assert (=> d!32301 m!129977))

(assert (=> d!32301 m!129119))

(declare-fun m!129979 () Bool)

(assert (=> d!32301 m!129979))

(assert (=> b!113615 m!129119))

(declare-fun m!129981 () Bool)

(assert (=> b!113615 m!129981))

(assert (=> b!113029 d!32301))

(assert (=> b!113072 d!32201))

(declare-fun e!73834 () Bool)

(declare-fun b!113616 () Bool)

(assert (=> b!113616 (= e!73834 (contains!845 (ite c!20218 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658) Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!113617 () Bool)

(declare-fun e!73833 () Bool)

(declare-fun call!12272 () Bool)

(assert (=> b!113617 (= e!73833 call!12272)))

(declare-fun b!113618 () Bool)

(declare-fun e!73832 () Bool)

(assert (=> b!113618 (= e!73832 e!73833)))

(declare-fun c!20379 () Bool)

(assert (=> b!113618 (= c!20379 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!113619 () Bool)

(declare-fun e!73831 () Bool)

(assert (=> b!113619 (= e!73831 e!73832)))

(declare-fun res!55975 () Bool)

(assert (=> b!113619 (=> (not res!55975) (not e!73832))))

(assert (=> b!113619 (= res!55975 (not e!73834))))

(declare-fun res!55974 () Bool)

(assert (=> b!113619 (=> (not res!55974) (not e!73834))))

(assert (=> b!113619 (= res!55974 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun bm!12269 () Bool)

(assert (=> bm!12269 (= call!12272 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!20379 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!20218 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658) Nil!1658)) (ite c!20218 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658) Nil!1658))))))

(declare-fun d!32303 () Bool)

(declare-fun res!55976 () Bool)

(assert (=> d!32303 (=> res!55976 e!73831)))

(assert (=> d!32303 (= res!55976 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32303 (= (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!20218 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658) Nil!1658)) e!73831)))

(declare-fun b!113620 () Bool)

(assert (=> b!113620 (= e!73833 call!12272)))

(assert (= (and d!32303 (not res!55976)) b!113619))

(assert (= (and b!113619 res!55974) b!113616))

(assert (= (and b!113619 res!55975) b!113618))

(assert (= (and b!113618 c!20379) b!113620))

(assert (= (and b!113618 (not c!20379)) b!113617))

(assert (= (or b!113620 b!113617) bm!12269))

(declare-fun m!129983 () Bool)

(assert (=> b!113616 m!129983))

(assert (=> b!113616 m!129983))

(declare-fun m!129985 () Bool)

(assert (=> b!113616 m!129985))

(assert (=> b!113618 m!129983))

(assert (=> b!113618 m!129983))

(declare-fun m!129987 () Bool)

(assert (=> b!113618 m!129987))

(assert (=> b!113619 m!129983))

(assert (=> b!113619 m!129983))

(assert (=> b!113619 m!129987))

(assert (=> bm!12269 m!129983))

(declare-fun m!129989 () Bool)

(assert (=> bm!12269 m!129989))

(assert (=> bm!12118 d!32303))

(declare-fun b!113621 () Bool)

(declare-fun e!73838 () Bool)

(assert (=> b!113621 (= e!73838 (contains!845 Nil!1658 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113622 () Bool)

(declare-fun e!73837 () Bool)

(declare-fun call!12273 () Bool)

(assert (=> b!113622 (= e!73837 call!12273)))

(declare-fun b!113623 () Bool)

(declare-fun e!73836 () Bool)

(assert (=> b!113623 (= e!73836 e!73837)))

(declare-fun c!20380 () Bool)

(assert (=> b!113623 (= c!20380 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113624 () Bool)

(declare-fun e!73835 () Bool)

(assert (=> b!113624 (= e!73835 e!73836)))

(declare-fun res!55978 () Bool)

(assert (=> b!113624 (=> (not res!55978) (not e!73836))))

(assert (=> b!113624 (= res!55978 (not e!73838))))

(declare-fun res!55977 () Bool)

(assert (=> b!113624 (=> (not res!55977) (not e!73838))))

(assert (=> b!113624 (= res!55977 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!12270 () Bool)

(assert (=> bm!12270 (= call!12273 (arrayNoDuplicates!0 (_keys!4381 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!20380 (Cons!1657 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000) Nil!1658) Nil!1658)))))

(declare-fun d!32305 () Bool)

(declare-fun res!55979 () Bool)

(assert (=> d!32305 (=> res!55979 e!73835)))

(assert (=> d!32305 (= res!55979 (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32305 (= (arrayNoDuplicates!0 (_keys!4381 newMap!16) #b00000000000000000000000000000000 Nil!1658) e!73835)))

(declare-fun b!113625 () Bool)

(assert (=> b!113625 (= e!73837 call!12273)))

(assert (= (and d!32305 (not res!55979)) b!113624))

(assert (= (and b!113624 res!55977) b!113621))

(assert (= (and b!113624 res!55978) b!113623))

(assert (= (and b!113623 c!20380) b!113625))

(assert (= (and b!113623 (not c!20380)) b!113622))

(assert (= (or b!113625 b!113622) bm!12270))

(assert (=> b!113621 m!129519))

(assert (=> b!113621 m!129519))

(declare-fun m!129991 () Bool)

(assert (=> b!113621 m!129991))

(assert (=> b!113623 m!129519))

(assert (=> b!113623 m!129519))

(assert (=> b!113623 m!129521))

(assert (=> b!113624 m!129519))

(assert (=> b!113624 m!129519))

(assert (=> b!113624 m!129521))

(assert (=> bm!12270 m!129519))

(declare-fun m!129993 () Bool)

(assert (=> bm!12270 m!129993))

(assert (=> b!113153 d!32305))

(assert (=> b!113031 d!32199))

(declare-fun b!113634 () Bool)

(declare-fun e!73844 () (_ BitVec 32))

(assert (=> b!113634 (= e!73844 #b00000000000000000000000000000000)))

(declare-fun b!113635 () Bool)

(declare-fun e!73843 () (_ BitVec 32))

(declare-fun call!12276 () (_ BitVec 32))

(assert (=> b!113635 (= e!73843 call!12276)))

(declare-fun d!32307 () Bool)

(declare-fun lt!59009 () (_ BitVec 32))

(assert (=> d!32307 (and (bvsge lt!59009 #b00000000000000000000000000000000) (bvsle lt!59009 (bvsub (size!2351 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!32307 (= lt!59009 e!73844)))

(declare-fun c!20386 () Bool)

(assert (=> d!32307 (= c!20386 (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32307 (and (bvsle #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2351 (_keys!4381 newMap!16)) (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32307 (= (arrayCountValidKeys!0 (_keys!4381 newMap!16) #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) lt!59009)))

(declare-fun bm!12273 () Bool)

(assert (=> bm!12273 (= call!12276 (arrayCountValidKeys!0 (_keys!4381 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113636 () Bool)

(assert (=> b!113636 (= e!73844 e!73843)))

(declare-fun c!20385 () Bool)

(assert (=> b!113636 (= c!20385 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113637 () Bool)

(assert (=> b!113637 (= e!73843 (bvadd #b00000000000000000000000000000001 call!12276))))

(assert (= (and d!32307 c!20386) b!113634))

(assert (= (and d!32307 (not c!20386)) b!113636))

(assert (= (and b!113636 c!20385) b!113637))

(assert (= (and b!113636 (not c!20385)) b!113635))

(assert (= (or b!113637 b!113635) bm!12273))

(declare-fun m!129995 () Bool)

(assert (=> bm!12273 m!129995))

(assert (=> b!113636 m!129519))

(assert (=> b!113636 m!129519))

(assert (=> b!113636 m!129521))

(assert (=> b!113151 d!32307))

(assert (=> b!113074 d!32293))

(declare-fun d!32309 () Bool)

(assert (=> d!32309 (= (get!1369 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355) (dynLambda!395 (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2957 (select (arr!2093 (_values!2644 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> b!113158 d!32309))

(declare-fun d!32311 () Bool)

(declare-fun e!73845 () Bool)

(assert (=> d!32311 e!73845))

(declare-fun res!55981 () Bool)

(assert (=> d!32311 (=> (not res!55981) (not e!73845))))

(declare-fun lt!59011 () ListLongMap!1603)

(assert (=> d!32311 (= res!55981 (contains!844 lt!59011 (_1!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59012 () List!1660)

(assert (=> d!32311 (= lt!59011 (ListLongMap!1604 lt!59012))))

(declare-fun lt!59013 () Unit!3534)

(declare-fun lt!59010 () Unit!3534)

(assert (=> d!32311 (= lt!59013 lt!59010)))

(assert (=> d!32311 (= (getValueByKey!159 lt!59012 (_1!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32311 (= lt!59010 (lemmaContainsTupThenGetReturnValue!77 lt!59012 (_1!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32311 (= lt!59012 (insertStrictlySorted!79 (toList!817 call!12145) (_1!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32311 (= (+!152 call!12145 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59011)))

(declare-fun b!113638 () Bool)

(declare-fun res!55980 () Bool)

(assert (=> b!113638 (=> (not res!55980) (not e!73845))))

(assert (=> b!113638 (= res!55980 (= (getValueByKey!159 (toList!817 lt!59011) (_1!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113639 () Bool)

(assert (=> b!113639 (= e!73845 (contains!846 (toList!817 lt!59011) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32311 res!55981) b!113638))

(assert (= (and b!113638 res!55980) b!113639))

(declare-fun m!129997 () Bool)

(assert (=> d!32311 m!129997))

(declare-fun m!129999 () Bool)

(assert (=> d!32311 m!129999))

(declare-fun m!130001 () Bool)

(assert (=> d!32311 m!130001))

(declare-fun m!130003 () Bool)

(assert (=> d!32311 m!130003))

(declare-fun m!130005 () Bool)

(assert (=> b!113638 m!130005))

(declare-fun m!130007 () Bool)

(assert (=> b!113639 m!130007))

(assert (=> b!113126 d!32311))

(declare-fun d!32313 () Bool)

(assert (=> d!32313 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000)))

(declare-fun lt!59016 () Unit!3534)

(declare-fun choose!13 (array!4416 (_ BitVec 64) (_ BitVec 32)) Unit!3534)

(assert (=> d!32313 (= lt!59016 (choose!13 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000))))

(assert (=> d!32313 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!32313 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000) lt!59016)))

(declare-fun bs!4654 () Bool)

(assert (= bs!4654 d!32313))

(assert (=> bs!4654 m!129465))

(declare-fun m!130009 () Bool)

(assert (=> bs!4654 m!130009))

(assert (=> b!113298 d!32313))

(declare-fun d!32315 () Bool)

(declare-fun res!55982 () Bool)

(declare-fun e!73846 () Bool)

(assert (=> d!32315 (=> res!55982 e!73846)))

(assert (=> d!32315 (= res!55982 (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) lt!58755))))

(assert (=> d!32315 (= (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 #b00000000000000000000000000000000) e!73846)))

(declare-fun b!113640 () Bool)

(declare-fun e!73847 () Bool)

(assert (=> b!113640 (= e!73846 e!73847)))

(declare-fun res!55983 () Bool)

(assert (=> b!113640 (=> (not res!55983) (not e!73847))))

(assert (=> b!113640 (= res!55983 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(declare-fun b!113641 () Bool)

(assert (=> b!113641 (= e!73847 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!58755 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!32315 (not res!55982)) b!113640))

(assert (= (and b!113640 res!55983) b!113641))

(assert (=> d!32315 m!129459))

(declare-fun m!130011 () Bool)

(assert (=> b!113641 m!130011))

(assert (=> b!113298 d!32315))

(declare-fun b!113654 () Bool)

(declare-fun e!73856 () SeekEntryResult!273)

(declare-fun lt!59025 () SeekEntryResult!273)

(assert (=> b!113654 (= e!73856 (Found!273 (index!3246 lt!59025)))))

(declare-fun b!113655 () Bool)

(declare-fun c!20394 () Bool)

(declare-fun lt!59024 () (_ BitVec 64))

(assert (=> b!113655 (= c!20394 (= lt!59024 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!73855 () SeekEntryResult!273)

(assert (=> b!113655 (= e!73856 e!73855)))

(declare-fun b!113656 () Bool)

(declare-fun e!73854 () SeekEntryResult!273)

(assert (=> b!113656 (= e!73854 e!73856)))

(assert (=> b!113656 (= lt!59024 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (index!3246 lt!59025)))))

(declare-fun c!20395 () Bool)

(assert (=> b!113656 (= c!20395 (= lt!59024 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!113657 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4416 (_ BitVec 32)) SeekEntryResult!273)

(assert (=> b!113657 (= e!73855 (seekKeyOrZeroReturnVacant!0 (x!14194 lt!59025) (index!3246 lt!59025) (index!3246 lt!59025) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun d!32317 () Bool)

(declare-fun lt!59023 () SeekEntryResult!273)

(assert (=> d!32317 (and (or ((_ is Undefined!273) lt!59023) (not ((_ is Found!273) lt!59023)) (and (bvsge (index!3245 lt!59023) #b00000000000000000000000000000000) (bvslt (index!3245 lt!59023) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))) (or ((_ is Undefined!273) lt!59023) ((_ is Found!273) lt!59023) (not ((_ is MissingZero!273) lt!59023)) (and (bvsge (index!3244 lt!59023) #b00000000000000000000000000000000) (bvslt (index!3244 lt!59023) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))) (or ((_ is Undefined!273) lt!59023) ((_ is Found!273) lt!59023) ((_ is MissingZero!273) lt!59023) (not ((_ is MissingVacant!273) lt!59023)) (and (bvsge (index!3247 lt!59023) #b00000000000000000000000000000000) (bvslt (index!3247 lt!59023) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))) (or ((_ is Undefined!273) lt!59023) (ite ((_ is Found!273) lt!59023) (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (index!3245 lt!59023)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!273) lt!59023) (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (index!3244 lt!59023)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!273) lt!59023) (= (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (index!3247 lt!59023)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32317 (= lt!59023 e!73854)))

(declare-fun c!20393 () Bool)

(assert (=> d!32317 (= c!20393 (and ((_ is Intermediate!273) lt!59025) (undefined!1085 lt!59025)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4416 (_ BitVec 32)) SeekEntryResult!273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!32317 (= lt!59025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) (mask!6845 (v!2958 (underlying!376 thiss!992)))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))))))

(assert (=> d!32317 (validMask!0 (mask!6845 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32317 (= (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))) lt!59023)))

(declare-fun b!113658 () Bool)

(assert (=> b!113658 (= e!73854 Undefined!273)))

(declare-fun b!113659 () Bool)

(assert (=> b!113659 (= e!73855 (MissingZero!273 (index!3246 lt!59025)))))

(assert (= (and d!32317 c!20393) b!113658))

(assert (= (and d!32317 (not c!20393)) b!113656))

(assert (= (and b!113656 c!20395) b!113654))

(assert (= (and b!113656 (not c!20395)) b!113655))

(assert (= (and b!113655 c!20394) b!113659))

(assert (= (and b!113655 (not c!20394)) b!113657))

(declare-fun m!130013 () Bool)

(assert (=> b!113656 m!130013))

(assert (=> b!113657 m!129459))

(declare-fun m!130015 () Bool)

(assert (=> b!113657 m!130015))

(assert (=> d!32317 m!129459))

(declare-fun m!130017 () Bool)

(assert (=> d!32317 m!130017))

(declare-fun m!130019 () Bool)

(assert (=> d!32317 m!130019))

(declare-fun m!130021 () Bool)

(assert (=> d!32317 m!130021))

(assert (=> d!32317 m!129127))

(declare-fun m!130023 () Bool)

(assert (=> d!32317 m!130023))

(assert (=> d!32317 m!130017))

(assert (=> d!32317 m!129459))

(declare-fun m!130025 () Bool)

(assert (=> d!32317 m!130025))

(assert (=> b!113298 d!32317))

(declare-fun b!113660 () Bool)

(declare-fun e!73859 () SeekEntryResult!273)

(declare-fun lt!59028 () SeekEntryResult!273)

(assert (=> b!113660 (= e!73859 (Found!273 (index!3246 lt!59028)))))

(declare-fun b!113661 () Bool)

(declare-fun c!20397 () Bool)

(declare-fun lt!59027 () (_ BitVec 64))

(assert (=> b!113661 (= c!20397 (= lt!59027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!73858 () SeekEntryResult!273)

(assert (=> b!113661 (= e!73859 e!73858)))

(declare-fun b!113662 () Bool)

(declare-fun e!73857 () SeekEntryResult!273)

(assert (=> b!113662 (= e!73857 e!73859)))

(assert (=> b!113662 (= lt!59027 (select (arr!2092 (_keys!4381 newMap!16)) (index!3246 lt!59028)))))

(declare-fun c!20398 () Bool)

(assert (=> b!113662 (= c!20398 (= lt!59027 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113663 () Bool)

(assert (=> b!113663 (= e!73858 (seekKeyOrZeroReturnVacant!0 (x!14194 lt!59028) (index!3246 lt!59028) (index!3246 lt!59028) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun d!32319 () Bool)

(declare-fun lt!59026 () SeekEntryResult!273)

(assert (=> d!32319 (and (or ((_ is Undefined!273) lt!59026) (not ((_ is Found!273) lt!59026)) (and (bvsge (index!3245 lt!59026) #b00000000000000000000000000000000) (bvslt (index!3245 lt!59026) (size!2351 (_keys!4381 newMap!16))))) (or ((_ is Undefined!273) lt!59026) ((_ is Found!273) lt!59026) (not ((_ is MissingZero!273) lt!59026)) (and (bvsge (index!3244 lt!59026) #b00000000000000000000000000000000) (bvslt (index!3244 lt!59026) (size!2351 (_keys!4381 newMap!16))))) (or ((_ is Undefined!273) lt!59026) ((_ is Found!273) lt!59026) ((_ is MissingZero!273) lt!59026) (not ((_ is MissingVacant!273) lt!59026)) (and (bvsge (index!3247 lt!59026) #b00000000000000000000000000000000) (bvslt (index!3247 lt!59026) (size!2351 (_keys!4381 newMap!16))))) (or ((_ is Undefined!273) lt!59026) (ite ((_ is Found!273) lt!59026) (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3245 lt!59026)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) (ite ((_ is MissingZero!273) lt!59026) (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3244 lt!59026)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!273) lt!59026) (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3247 lt!59026)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32319 (= lt!59026 e!73857)))

(declare-fun c!20396 () Bool)

(assert (=> d!32319 (= c!20396 (and ((_ is Intermediate!273) lt!59028) (undefined!1085 lt!59028)))))

(assert (=> d!32319 (= lt!59028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (mask!6845 newMap!16)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(assert (=> d!32319 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32319 (= (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)) lt!59026)))

(declare-fun b!113664 () Bool)

(assert (=> b!113664 (= e!73857 Undefined!273)))

(declare-fun b!113665 () Bool)

(assert (=> b!113665 (= e!73858 (MissingZero!273 (index!3246 lt!59028)))))

(assert (= (and d!32319 c!20396) b!113664))

(assert (= (and d!32319 (not c!20396)) b!113662))

(assert (= (and b!113662 c!20398) b!113660))

(assert (= (and b!113662 (not c!20398)) b!113661))

(assert (= (and b!113661 c!20397) b!113665))

(assert (= (and b!113661 (not c!20397)) b!113663))

(declare-fun m!130027 () Bool)

(assert (=> b!113662 m!130027))

(assert (=> b!113663 m!129119))

(declare-fun m!130029 () Bool)

(assert (=> b!113663 m!130029))

(assert (=> d!32319 m!129119))

(declare-fun m!130031 () Bool)

(assert (=> d!32319 m!130031))

(declare-fun m!130033 () Bool)

(assert (=> d!32319 m!130033))

(declare-fun m!130035 () Bool)

(assert (=> d!32319 m!130035))

(assert (=> d!32319 m!129651))

(declare-fun m!130037 () Bool)

(assert (=> d!32319 m!130037))

(assert (=> d!32319 m!130031))

(assert (=> d!32319 m!129119))

(declare-fun m!130039 () Bool)

(assert (=> d!32319 m!130039))

(assert (=> b!113278 d!32319))

(declare-fun d!32321 () Bool)

(assert (=> d!32321 (= (+!152 (+!152 lt!58489 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (+!152 (+!152 lt!58489 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))

(assert (=> d!32321 true))

(declare-fun _$28!173 () Unit!3534)

(assert (=> d!32321 (= (choose!719 lt!58489 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))) _$28!173)))

(declare-fun bs!4655 () Bool)

(assert (= bs!4655 d!32321))

(assert (=> bs!4655 m!129317))

(assert (=> bs!4655 m!129317))

(assert (=> bs!4655 m!129319))

(assert (=> bs!4655 m!129313))

(assert (=> bs!4655 m!129313))

(assert (=> bs!4655 m!129315))

(assert (=> d!32173 d!32321))

(declare-fun d!32323 () Bool)

(declare-fun e!73860 () Bool)

(assert (=> d!32323 e!73860))

(declare-fun res!55985 () Bool)

(assert (=> d!32323 (=> (not res!55985) (not e!73860))))

(declare-fun lt!59030 () ListLongMap!1603)

(assert (=> d!32323 (= res!55985 (contains!844 lt!59030 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59031 () List!1660)

(assert (=> d!32323 (= lt!59030 (ListLongMap!1604 lt!59031))))

(declare-fun lt!59032 () Unit!3534)

(declare-fun lt!59029 () Unit!3534)

(assert (=> d!32323 (= lt!59032 lt!59029)))

(assert (=> d!32323 (= (getValueByKey!159 lt!59031 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32323 (= lt!59029 (lemmaContainsTupThenGetReturnValue!77 lt!59031 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32323 (= lt!59031 (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32323 (= (+!152 (+!152 lt!58489 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59030)))

(declare-fun b!113666 () Bool)

(declare-fun res!55984 () Bool)

(assert (=> b!113666 (=> (not res!55984) (not e!73860))))

(assert (=> b!113666 (= res!55984 (= (getValueByKey!159 (toList!817 lt!59030) (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113667 () Bool)

(assert (=> b!113667 (= e!73860 (contains!846 (toList!817 lt!59030) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32323 res!55985) b!113666))

(assert (= (and b!113666 res!55984) b!113667))

(declare-fun m!130041 () Bool)

(assert (=> d!32323 m!130041))

(declare-fun m!130043 () Bool)

(assert (=> d!32323 m!130043))

(declare-fun m!130045 () Bool)

(assert (=> d!32323 m!130045))

(declare-fun m!130047 () Bool)

(assert (=> d!32323 m!130047))

(declare-fun m!130049 () Bool)

(assert (=> b!113666 m!130049))

(declare-fun m!130051 () Bool)

(assert (=> b!113667 m!130051))

(assert (=> d!32173 d!32323))

(declare-fun d!32325 () Bool)

(declare-fun e!73861 () Bool)

(assert (=> d!32325 e!73861))

(declare-fun res!55987 () Bool)

(assert (=> d!32325 (=> (not res!55987) (not e!73861))))

(declare-fun lt!59034 () ListLongMap!1603)

(assert (=> d!32325 (= res!55987 (contains!844 lt!59034 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun lt!59035 () List!1660)

(assert (=> d!32325 (= lt!59034 (ListLongMap!1604 lt!59035))))

(declare-fun lt!59036 () Unit!3534)

(declare-fun lt!59033 () Unit!3534)

(assert (=> d!32325 (= lt!59036 lt!59033)))

(assert (=> d!32325 (= (getValueByKey!159 lt!59035 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32325 (= lt!59033 (lemmaContainsTupThenGetReturnValue!77 lt!59035 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32325 (= lt!59035 (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32325 (= (+!152 lt!58489 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) lt!59034)))

(declare-fun b!113668 () Bool)

(declare-fun res!55986 () Bool)

(assert (=> b!113668 (=> (not res!55986) (not e!73861))))

(assert (=> b!113668 (= res!55986 (= (getValueByKey!159 (toList!817 lt!59034) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(declare-fun b!113669 () Bool)

(assert (=> b!113669 (= e!73861 (contains!846 (toList!817 lt!59034) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))

(assert (= (and d!32325 res!55987) b!113668))

(assert (= (and b!113668 res!55986) b!113669))

(declare-fun m!130053 () Bool)

(assert (=> d!32325 m!130053))

(declare-fun m!130055 () Bool)

(assert (=> d!32325 m!130055))

(declare-fun m!130057 () Bool)

(assert (=> d!32325 m!130057))

(declare-fun m!130059 () Bool)

(assert (=> d!32325 m!130059))

(declare-fun m!130061 () Bool)

(assert (=> b!113668 m!130061))

(declare-fun m!130063 () Bool)

(assert (=> b!113669 m!130063))

(assert (=> d!32173 d!32325))

(declare-fun d!32327 () Bool)

(declare-fun e!73862 () Bool)

(assert (=> d!32327 e!73862))

(declare-fun res!55989 () Bool)

(assert (=> d!32327 (=> (not res!55989) (not e!73862))))

(declare-fun lt!59038 () ListLongMap!1603)

(assert (=> d!32327 (= res!55989 (contains!844 lt!59038 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59039 () List!1660)

(assert (=> d!32327 (= lt!59038 (ListLongMap!1604 lt!59039))))

(declare-fun lt!59040 () Unit!3534)

(declare-fun lt!59037 () Unit!3534)

(assert (=> d!32327 (= lt!59040 lt!59037)))

(assert (=> d!32327 (= (getValueByKey!159 lt!59039 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32327 (= lt!59037 (lemmaContainsTupThenGetReturnValue!77 lt!59039 (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32327 (= lt!59039 (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32327 (= (+!152 lt!58489 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59038)))

(declare-fun b!113670 () Bool)

(declare-fun res!55988 () Bool)

(assert (=> b!113670 (=> (not res!55988) (not e!73862))))

(assert (=> b!113670 (= res!55988 (= (getValueByKey!159 (toList!817 lt!59038) (_1!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113671 () Bool)

(assert (=> b!113671 (= e!73862 (contains!846 (toList!817 lt!59038) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32327 res!55989) b!113670))

(assert (= (and b!113670 res!55988) b!113671))

(declare-fun m!130065 () Bool)

(assert (=> d!32327 m!130065))

(declare-fun m!130067 () Bool)

(assert (=> d!32327 m!130067))

(declare-fun m!130069 () Bool)

(assert (=> d!32327 m!130069))

(declare-fun m!130071 () Bool)

(assert (=> d!32327 m!130071))

(declare-fun m!130073 () Bool)

(assert (=> b!113670 m!130073))

(declare-fun m!130075 () Bool)

(assert (=> b!113671 m!130075))

(assert (=> d!32173 d!32327))

(declare-fun d!32329 () Bool)

(declare-fun e!73863 () Bool)

(assert (=> d!32329 e!73863))

(declare-fun res!55991 () Bool)

(assert (=> d!32329 (=> (not res!55991) (not e!73863))))

(declare-fun lt!59042 () ListLongMap!1603)

(assert (=> d!32329 (= res!55991 (contains!844 lt!59042 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(declare-fun lt!59043 () List!1660)

(assert (=> d!32329 (= lt!59042 (ListLongMap!1604 lt!59043))))

(declare-fun lt!59044 () Unit!3534)

(declare-fun lt!59041 () Unit!3534)

(assert (=> d!32329 (= lt!59044 lt!59041)))

(assert (=> d!32329 (= (getValueByKey!159 lt!59043 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32329 (= lt!59041 (lemmaContainsTupThenGetReturnValue!77 lt!59043 (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32329 (= lt!59043 (insertStrictlySorted!79 (toList!817 (+!152 lt!58489 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))))))

(assert (=> d!32329 (= (+!152 (+!152 lt!58489 (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)) lt!59042)))

(declare-fun b!113672 () Bool)

(declare-fun res!55990 () Bool)

(assert (=> b!113672 (=> (not res!55990) (not e!73863))))

(assert (=> b!113672 (= res!55990 (= (getValueByKey!159 (toList!817 lt!59042) (_1!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491))) (Some!164 (_2!1232 (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))))

(declare-fun b!113673 () Bool)

(assert (=> b!113673 (= e!73863 (contains!846 (toList!817 lt!59042) (tuple2!2445 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) lt!58491)))))

(assert (= (and d!32329 res!55991) b!113672))

(assert (= (and b!113672 res!55990) b!113673))

(declare-fun m!130077 () Bool)

(assert (=> d!32329 m!130077))

(declare-fun m!130079 () Bool)

(assert (=> d!32329 m!130079))

(declare-fun m!130081 () Bool)

(assert (=> d!32329 m!130081))

(declare-fun m!130083 () Bool)

(assert (=> d!32329 m!130083))

(declare-fun m!130085 () Bool)

(assert (=> b!113672 m!130085))

(declare-fun m!130087 () Bool)

(assert (=> b!113673 m!130087))

(assert (=> d!32173 d!32329))

(declare-fun d!32331 () Bool)

(assert (=> d!32331 (isDefined!113 (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun lt!59047 () Unit!3534)

(declare-fun choose!725 (List!1660 (_ BitVec 64)) Unit!3534)

(assert (=> d!32331 (= lt!59047 (choose!725 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun e!73866 () Bool)

(assert (=> d!32331 e!73866))

(declare-fun res!55994 () Bool)

(assert (=> d!32331 (=> (not res!55994) (not e!73866))))

(assert (=> d!32331 (= res!55994 (isStrictlySorted!308 (toList!817 lt!58493)))))

(assert (=> d!32331 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) lt!59047)))

(declare-fun b!113676 () Bool)

(assert (=> b!113676 (= e!73866 (containsKey!163 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (= (and d!32331 res!55994) b!113676))

(assert (=> d!32331 m!129119))

(assert (=> d!32331 m!129397))

(assert (=> d!32331 m!129397))

(assert (=> d!32331 m!129399))

(assert (=> d!32331 m!129119))

(declare-fun m!130089 () Bool)

(assert (=> d!32331 m!130089))

(declare-fun m!130091 () Bool)

(assert (=> d!32331 m!130091))

(assert (=> b!113676 m!129119))

(assert (=> b!113676 m!129393))

(assert (=> b!113166 d!32331))

(declare-fun d!32333 () Bool)

(declare-fun isEmpty!388 (Option!165) Bool)

(assert (=> d!32333 (= (isDefined!113 (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))) (not (isEmpty!388 (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))))

(declare-fun bs!4656 () Bool)

(assert (= bs!4656 d!32333))

(assert (=> bs!4656 m!129397))

(declare-fun m!130093 () Bool)

(assert (=> bs!4656 m!130093))

(assert (=> b!113166 d!32333))

(declare-fun c!20399 () Bool)

(declare-fun d!32335 () Bool)

(assert (=> d!32335 (= c!20399 (and ((_ is Cons!1656) (toList!817 lt!58493)) (= (_1!1232 (h!2256 (toList!817 lt!58493))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(declare-fun e!73867 () Option!165)

(assert (=> d!32335 (= (getValueByKey!159 (toList!817 lt!58493) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) e!73867)))

(declare-fun b!113678 () Bool)

(declare-fun e!73868 () Option!165)

(assert (=> b!113678 (= e!73867 e!73868)))

(declare-fun c!20400 () Bool)

(assert (=> b!113678 (= c!20400 (and ((_ is Cons!1656) (toList!817 lt!58493)) (not (= (_1!1232 (h!2256 (toList!817 lt!58493))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))))

(declare-fun b!113677 () Bool)

(assert (=> b!113677 (= e!73867 (Some!164 (_2!1232 (h!2256 (toList!817 lt!58493)))))))

(declare-fun b!113679 () Bool)

(assert (=> b!113679 (= e!73868 (getValueByKey!159 (t!5846 (toList!817 lt!58493)) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113680 () Bool)

(assert (=> b!113680 (= e!73868 None!163)))

(assert (= (and d!32335 c!20399) b!113677))

(assert (= (and d!32335 (not c!20399)) b!113678))

(assert (= (and b!113678 c!20400) b!113679))

(assert (= (and b!113678 (not c!20400)) b!113680))

(assert (=> b!113679 m!129119))

(declare-fun m!130095 () Bool)

(assert (=> b!113679 m!130095))

(assert (=> b!113166 d!32335))

(declare-fun d!32337 () Bool)

(declare-fun e!73870 () Bool)

(assert (=> d!32337 e!73870))

(declare-fun res!55995 () Bool)

(assert (=> d!32337 (=> res!55995 e!73870)))

(declare-fun lt!59048 () Bool)

(assert (=> d!32337 (= res!55995 (not lt!59048))))

(declare-fun lt!59051 () Bool)

(assert (=> d!32337 (= lt!59048 lt!59051)))

(declare-fun lt!59049 () Unit!3534)

(declare-fun e!73869 () Unit!3534)

(assert (=> d!32337 (= lt!59049 e!73869)))

(declare-fun c!20401 () Bool)

(assert (=> d!32337 (= c!20401 lt!59051)))

(assert (=> d!32337 (= lt!59051 (containsKey!163 (toList!817 lt!58586) (_1!1232 lt!58488)))))

(assert (=> d!32337 (= (contains!844 lt!58586 (_1!1232 lt!58488)) lt!59048)))

(declare-fun b!113681 () Bool)

(declare-fun lt!59050 () Unit!3534)

(assert (=> b!113681 (= e!73869 lt!59050)))

(assert (=> b!113681 (= lt!59050 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58586) (_1!1232 lt!58488)))))

(assert (=> b!113681 (isDefined!113 (getValueByKey!159 (toList!817 lt!58586) (_1!1232 lt!58488)))))

(declare-fun b!113682 () Bool)

(declare-fun Unit!3556 () Unit!3534)

(assert (=> b!113682 (= e!73869 Unit!3556)))

(declare-fun b!113683 () Bool)

(assert (=> b!113683 (= e!73870 (isDefined!113 (getValueByKey!159 (toList!817 lt!58586) (_1!1232 lt!58488))))))

(assert (= (and d!32337 c!20401) b!113681))

(assert (= (and d!32337 (not c!20401)) b!113682))

(assert (= (and d!32337 (not res!55995)) b!113683))

(declare-fun m!130097 () Bool)

(assert (=> d!32337 m!130097))

(declare-fun m!130099 () Bool)

(assert (=> b!113681 m!130099))

(assert (=> b!113681 m!129329))

(assert (=> b!113681 m!129329))

(declare-fun m!130101 () Bool)

(assert (=> b!113681 m!130101))

(assert (=> b!113683 m!129329))

(assert (=> b!113683 m!129329))

(assert (=> b!113683 m!130101))

(assert (=> d!32175 d!32337))

(declare-fun d!32339 () Bool)

(declare-fun c!20402 () Bool)

(assert (=> d!32339 (= c!20402 (and ((_ is Cons!1656) lt!58587) (= (_1!1232 (h!2256 lt!58587)) (_1!1232 lt!58488))))))

(declare-fun e!73871 () Option!165)

(assert (=> d!32339 (= (getValueByKey!159 lt!58587 (_1!1232 lt!58488)) e!73871)))

(declare-fun b!113685 () Bool)

(declare-fun e!73872 () Option!165)

(assert (=> b!113685 (= e!73871 e!73872)))

(declare-fun c!20403 () Bool)

(assert (=> b!113685 (= c!20403 (and ((_ is Cons!1656) lt!58587) (not (= (_1!1232 (h!2256 lt!58587)) (_1!1232 lt!58488)))))))

(declare-fun b!113684 () Bool)

(assert (=> b!113684 (= e!73871 (Some!164 (_2!1232 (h!2256 lt!58587))))))

(declare-fun b!113686 () Bool)

(assert (=> b!113686 (= e!73872 (getValueByKey!159 (t!5846 lt!58587) (_1!1232 lt!58488)))))

(declare-fun b!113687 () Bool)

(assert (=> b!113687 (= e!73872 None!163)))

(assert (= (and d!32339 c!20402) b!113684))

(assert (= (and d!32339 (not c!20402)) b!113685))

(assert (= (and b!113685 c!20403) b!113686))

(assert (= (and b!113685 (not c!20403)) b!113687))

(declare-fun m!130103 () Bool)

(assert (=> b!113686 m!130103))

(assert (=> d!32175 d!32339))

(declare-fun d!32341 () Bool)

(assert (=> d!32341 (= (getValueByKey!159 lt!58587 (_1!1232 lt!58488)) (Some!164 (_2!1232 lt!58488)))))

(declare-fun lt!59052 () Unit!3534)

(assert (=> d!32341 (= lt!59052 (choose!720 lt!58587 (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(declare-fun e!73873 () Bool)

(assert (=> d!32341 e!73873))

(declare-fun res!55996 () Bool)

(assert (=> d!32341 (=> (not res!55996) (not e!73873))))

(assert (=> d!32341 (= res!55996 (isStrictlySorted!308 lt!58587))))

(assert (=> d!32341 (= (lemmaContainsTupThenGetReturnValue!77 lt!58587 (_1!1232 lt!58488) (_2!1232 lt!58488)) lt!59052)))

(declare-fun b!113688 () Bool)

(declare-fun res!55997 () Bool)

(assert (=> b!113688 (=> (not res!55997) (not e!73873))))

(assert (=> b!113688 (= res!55997 (containsKey!163 lt!58587 (_1!1232 lt!58488)))))

(declare-fun b!113689 () Bool)

(assert (=> b!113689 (= e!73873 (contains!846 lt!58587 (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488))))))

(assert (= (and d!32341 res!55996) b!113688))

(assert (= (and b!113688 res!55997) b!113689))

(assert (=> d!32341 m!129323))

(declare-fun m!130105 () Bool)

(assert (=> d!32341 m!130105))

(declare-fun m!130107 () Bool)

(assert (=> d!32341 m!130107))

(declare-fun m!130109 () Bool)

(assert (=> b!113688 m!130109))

(declare-fun m!130111 () Bool)

(assert (=> b!113689 m!130111))

(assert (=> d!32175 d!32341))

(declare-fun b!113690 () Bool)

(declare-fun res!55999 () Bool)

(declare-fun e!73877 () Bool)

(assert (=> b!113690 (=> (not res!55999) (not e!73877))))

(declare-fun lt!59053 () List!1660)

(assert (=> b!113690 (= res!55999 (containsKey!163 lt!59053 (_1!1232 lt!58488)))))

(declare-fun b!113691 () Bool)

(declare-fun e!73874 () List!1660)

(declare-fun call!12279 () List!1660)

(assert (=> b!113691 (= e!73874 call!12279)))

(declare-fun b!113693 () Bool)

(declare-fun e!73878 () List!1660)

(declare-fun call!12278 () List!1660)

(assert (=> b!113693 (= e!73878 call!12278)))

(declare-fun bm!12274 () Bool)

(assert (=> bm!12274 (= call!12278 call!12279)))

(declare-fun b!113694 () Bool)

(assert (=> b!113694 (= e!73877 (contains!846 lt!59053 (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488))))))

(declare-fun b!113695 () Bool)

(declare-fun e!73875 () List!1660)

(assert (=> b!113695 (= e!73875 (insertStrictlySorted!79 (t!5846 (toList!817 lt!58489)) (_1!1232 lt!58488) (_2!1232 lt!58488)))))

(declare-fun b!113696 () Bool)

(declare-fun e!73876 () List!1660)

(declare-fun call!12277 () List!1660)

(assert (=> b!113696 (= e!73876 call!12277)))

(declare-fun b!113697 () Bool)

(assert (=> b!113697 (= e!73876 e!73874)))

(declare-fun c!20404 () Bool)

(assert (=> b!113697 (= c!20404 (and ((_ is Cons!1656) (toList!817 lt!58489)) (= (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58488))))))

(declare-fun bm!12275 () Bool)

(assert (=> bm!12275 (= call!12279 call!12277)))

(declare-fun b!113698 () Bool)

(declare-fun c!20406 () Bool)

(assert (=> b!113698 (= e!73875 (ite c!20404 (t!5846 (toList!817 lt!58489)) (ite c!20406 (Cons!1656 (h!2256 (toList!817 lt!58489)) (t!5846 (toList!817 lt!58489))) Nil!1657)))))

(declare-fun b!113699 () Bool)

(assert (=> b!113699 (= c!20406 (and ((_ is Cons!1656) (toList!817 lt!58489)) (bvsgt (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58488))))))

(assert (=> b!113699 (= e!73874 e!73878)))

(declare-fun c!20405 () Bool)

(declare-fun bm!12276 () Bool)

(assert (=> bm!12276 (= call!12277 ($colon$colon!84 e!73875 (ite c!20405 (h!2256 (toList!817 lt!58489)) (tuple2!2445 (_1!1232 lt!58488) (_2!1232 lt!58488)))))))

(declare-fun c!20407 () Bool)

(assert (=> bm!12276 (= c!20407 c!20405)))

(declare-fun b!113692 () Bool)

(assert (=> b!113692 (= e!73878 call!12278)))

(declare-fun d!32343 () Bool)

(assert (=> d!32343 e!73877))

(declare-fun res!55998 () Bool)

(assert (=> d!32343 (=> (not res!55998) (not e!73877))))

(assert (=> d!32343 (= res!55998 (isStrictlySorted!308 lt!59053))))

(assert (=> d!32343 (= lt!59053 e!73876)))

(assert (=> d!32343 (= c!20405 (and ((_ is Cons!1656) (toList!817 lt!58489)) (bvslt (_1!1232 (h!2256 (toList!817 lt!58489))) (_1!1232 lt!58488))))))

(assert (=> d!32343 (isStrictlySorted!308 (toList!817 lt!58489))))

(assert (=> d!32343 (= (insertStrictlySorted!79 (toList!817 lt!58489) (_1!1232 lt!58488) (_2!1232 lt!58488)) lt!59053)))

(assert (= (and d!32343 c!20405) b!113696))

(assert (= (and d!32343 (not c!20405)) b!113697))

(assert (= (and b!113697 c!20404) b!113691))

(assert (= (and b!113697 (not c!20404)) b!113699))

(assert (= (and b!113699 c!20406) b!113692))

(assert (= (and b!113699 (not c!20406)) b!113693))

(assert (= (or b!113692 b!113693) bm!12274))

(assert (= (or b!113691 bm!12274) bm!12275))

(assert (= (or b!113696 bm!12275) bm!12276))

(assert (= (and bm!12276 c!20407) b!113695))

(assert (= (and bm!12276 (not c!20407)) b!113698))

(assert (= (and d!32343 res!55998) b!113690))

(assert (= (and b!113690 res!55999) b!113694))

(declare-fun m!130113 () Bool)

(assert (=> d!32343 m!130113))

(assert (=> d!32343 m!129747))

(declare-fun m!130115 () Bool)

(assert (=> b!113695 m!130115))

(declare-fun m!130117 () Bool)

(assert (=> bm!12276 m!130117))

(declare-fun m!130119 () Bool)

(assert (=> b!113694 m!130119))

(declare-fun m!130121 () Bool)

(assert (=> b!113690 m!130121))

(assert (=> d!32175 d!32343))

(declare-fun d!32345 () Bool)

(declare-fun lt!59054 () Bool)

(assert (=> d!32345 (= lt!59054 (select (content!116 (toList!817 lt!58579)) lt!58485))))

(declare-fun e!73879 () Bool)

(assert (=> d!32345 (= lt!59054 e!73879)))

(declare-fun res!56001 () Bool)

(assert (=> d!32345 (=> (not res!56001) (not e!73879))))

(assert (=> d!32345 (= res!56001 ((_ is Cons!1656) (toList!817 lt!58579)))))

(assert (=> d!32345 (= (contains!846 (toList!817 lt!58579) lt!58485) lt!59054)))

(declare-fun b!113700 () Bool)

(declare-fun e!73880 () Bool)

(assert (=> b!113700 (= e!73879 e!73880)))

(declare-fun res!56000 () Bool)

(assert (=> b!113700 (=> res!56000 e!73880)))

(assert (=> b!113700 (= res!56000 (= (h!2256 (toList!817 lt!58579)) lt!58485))))

(declare-fun b!113701 () Bool)

(assert (=> b!113701 (= e!73880 (contains!846 (t!5846 (toList!817 lt!58579)) lt!58485))))

(assert (= (and d!32345 res!56001) b!113700))

(assert (= (and b!113700 (not res!56000)) b!113701))

(declare-fun m!130123 () Bool)

(assert (=> d!32345 m!130123))

(declare-fun m!130125 () Bool)

(assert (=> d!32345 m!130125))

(declare-fun m!130127 () Bool)

(assert (=> b!113701 m!130127))

(assert (=> b!113079 d!32345))

(assert (=> b!113168 d!32333))

(assert (=> b!113168 d!32335))

(declare-fun d!32347 () Bool)

(declare-fun lt!59055 () Bool)

(assert (=> d!32347 (= lt!59055 (select (content!116 (toList!817 lt!58575)) lt!58488))))

(declare-fun e!73881 () Bool)

(assert (=> d!32347 (= lt!59055 e!73881)))

(declare-fun res!56003 () Bool)

(assert (=> d!32347 (=> (not res!56003) (not e!73881))))

(assert (=> d!32347 (= res!56003 ((_ is Cons!1656) (toList!817 lt!58575)))))

(assert (=> d!32347 (= (contains!846 (toList!817 lt!58575) lt!58488) lt!59055)))

(declare-fun b!113702 () Bool)

(declare-fun e!73882 () Bool)

(assert (=> b!113702 (= e!73881 e!73882)))

(declare-fun res!56002 () Bool)

(assert (=> b!113702 (=> res!56002 e!73882)))

(assert (=> b!113702 (= res!56002 (= (h!2256 (toList!817 lt!58575)) lt!58488))))

(declare-fun b!113703 () Bool)

(assert (=> b!113703 (= e!73882 (contains!846 (t!5846 (toList!817 lt!58575)) lt!58488))))

(assert (= (and d!32347 res!56003) b!113702))

(assert (= (and b!113702 (not res!56002)) b!113703))

(declare-fun m!130129 () Bool)

(assert (=> d!32347 m!130129))

(declare-fun m!130131 () Bool)

(assert (=> d!32347 m!130131))

(declare-fun m!130133 () Bool)

(assert (=> b!113703 m!130133))

(assert (=> b!113077 d!32347))

(declare-fun b!113704 () Bool)

(declare-fun e!73885 () Bool)

(declare-fun e!73884 () Bool)

(assert (=> b!113704 (= e!73885 e!73884)))

(declare-fun c!20408 () Bool)

(assert (=> b!113704 (= c!20408 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!113705 () Bool)

(declare-fun e!73883 () Bool)

(assert (=> b!113705 (= e!73884 e!73883)))

(declare-fun lt!59057 () (_ BitVec 64))

(assert (=> b!113705 (= lt!59057 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!59056 () Unit!3534)

(assert (=> b!113705 (= lt!59056 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!59057 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!113705 (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) lt!59057 #b00000000000000000000000000000000)))

(declare-fun lt!59058 () Unit!3534)

(assert (=> b!113705 (= lt!59058 lt!59056)))

(declare-fun res!56005 () Bool)

(assert (=> b!113705 (= res!56005 (= (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))) (Found!273 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!113705 (=> (not res!56005) (not e!73883))))

(declare-fun b!113706 () Bool)

(declare-fun call!12280 () Bool)

(assert (=> b!113706 (= e!73883 call!12280)))

(declare-fun bm!12277 () Bool)

(assert (=> bm!12277 (= call!12280 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113707 () Bool)

(assert (=> b!113707 (= e!73884 call!12280)))

(declare-fun d!32349 () Bool)

(declare-fun res!56004 () Bool)

(assert (=> d!32349 (=> res!56004 e!73885)))

(assert (=> d!32349 (= res!56004 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32349 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))) e!73885)))

(assert (= (and d!32349 (not res!56004)) b!113704))

(assert (= (and b!113704 c!20408) b!113705))

(assert (= (and b!113704 (not c!20408)) b!113707))

(assert (= (and b!113705 res!56005) b!113706))

(assert (= (or b!113706 b!113707) bm!12277))

(declare-fun m!130135 () Bool)

(assert (=> b!113704 m!130135))

(assert (=> b!113704 m!130135))

(declare-fun m!130137 () Bool)

(assert (=> b!113704 m!130137))

(assert (=> b!113705 m!130135))

(declare-fun m!130139 () Bool)

(assert (=> b!113705 m!130139))

(declare-fun m!130141 () Bool)

(assert (=> b!113705 m!130141))

(assert (=> b!113705 m!130135))

(declare-fun m!130143 () Bool)

(assert (=> b!113705 m!130143))

(declare-fun m!130145 () Bool)

(assert (=> bm!12277 m!130145))

(assert (=> bm!12217 d!32349))

(declare-fun d!32351 () Bool)

(declare-fun lt!59059 () Bool)

(assert (=> d!32351 (= lt!59059 (select (content!117 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!73887 () Bool)

(assert (=> d!32351 (= lt!59059 e!73887)))

(declare-fun res!56006 () Bool)

(assert (=> d!32351 (=> (not res!56006) (not e!73887))))

(assert (=> d!32351 (= res!56006 ((_ is Cons!1657) Nil!1658))))

(assert (=> d!32351 (= (contains!845 Nil!1658 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)) lt!59059)))

(declare-fun b!113708 () Bool)

(declare-fun e!73886 () Bool)

(assert (=> b!113708 (= e!73887 e!73886)))

(declare-fun res!56007 () Bool)

(assert (=> b!113708 (=> res!56007 e!73886)))

(assert (=> b!113708 (= res!56007 (= (h!2257 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!113709 () Bool)

(assert (=> b!113709 (= e!73886 (contains!845 (t!5847 Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!32351 res!56006) b!113708))

(assert (= (and b!113708 (not res!56007)) b!113709))

(assert (=> d!32351 m!129977))

(assert (=> d!32351 m!129459))

(declare-fun m!130147 () Bool)

(assert (=> d!32351 m!130147))

(assert (=> b!113709 m!129459))

(declare-fun m!130149 () Bool)

(assert (=> b!113709 m!130149))

(assert (=> b!113301 d!32351))

(declare-fun d!32353 () Bool)

(declare-fun e!73889 () Bool)

(assert (=> d!32353 e!73889))

(declare-fun res!56008 () Bool)

(assert (=> d!32353 (=> res!56008 e!73889)))

(declare-fun lt!59060 () Bool)

(assert (=> d!32353 (= res!56008 (not lt!59060))))

(declare-fun lt!59063 () Bool)

(assert (=> d!32353 (= lt!59060 lt!59063)))

(declare-fun lt!59061 () Unit!3534)

(declare-fun e!73888 () Unit!3534)

(assert (=> d!32353 (= lt!59061 e!73888)))

(declare-fun c!20409 () Bool)

(assert (=> d!32353 (= c!20409 lt!59063)))

(assert (=> d!32353 (= lt!59063 (containsKey!163 (toList!817 lt!58652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32353 (= (contains!844 lt!58652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!59060)))

(declare-fun b!113710 () Bool)

(declare-fun lt!59062 () Unit!3534)

(assert (=> b!113710 (= e!73888 lt!59062)))

(assert (=> b!113710 (= lt!59062 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113710 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113711 () Bool)

(declare-fun Unit!3557 () Unit!3534)

(assert (=> b!113711 (= e!73888 Unit!3557)))

(declare-fun b!113712 () Bool)

(assert (=> b!113712 (= e!73889 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32353 c!20409) b!113710))

(assert (= (and d!32353 (not c!20409)) b!113711))

(assert (= (and d!32353 (not res!56008)) b!113712))

(declare-fun m!130151 () Bool)

(assert (=> d!32353 m!130151))

(declare-fun m!130153 () Bool)

(assert (=> b!113710 m!130153))

(assert (=> b!113710 m!129595))

(assert (=> b!113710 m!129595))

(declare-fun m!130155 () Bool)

(assert (=> b!113710 m!130155))

(assert (=> b!113712 m!129595))

(assert (=> b!113712 m!129595))

(assert (=> b!113712 m!130155))

(assert (=> bm!12139 d!32353))

(assert (=> bm!12213 d!32177))

(assert (=> bm!12204 d!32319))

(declare-fun d!32355 () Bool)

(assert (=> d!32355 (= (apply!102 lt!58652 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1371 (getValueByKey!159 (toList!817 lt!58652) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4657 () Bool)

(assert (= bs!4657 d!32355))

(assert (=> bs!4657 m!129971))

(assert (=> bs!4657 m!129971))

(declare-fun m!130157 () Bool)

(assert (=> bs!4657 m!130157))

(assert (=> b!113131 d!32355))

(declare-fun b!113713 () Bool)

(declare-fun e!73892 () ListLongMap!1603)

(declare-fun call!12286 () ListLongMap!1603)

(assert (=> b!113713 (= e!73892 call!12286)))

(declare-fun b!113714 () Bool)

(declare-fun e!73895 () Bool)

(declare-fun lt!59083 () ListLongMap!1603)

(assert (=> b!113714 (= e!73895 (= (apply!102 lt!59083 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)) (get!1368 (select (arr!2093 (_values!2644 newMap!16)) #b00000000000000000000000000000000) (dynLambda!395 (defaultEntry!2661 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!113714 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2352 (_values!2644 newMap!16))))))

(assert (=> b!113714 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113715 () Bool)

(declare-fun e!73890 () ListLongMap!1603)

(declare-fun call!12287 () ListLongMap!1603)

(assert (=> b!113715 (= e!73890 (+!152 call!12287 (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16))))))

(declare-fun b!113716 () Bool)

(declare-fun e!73901 () Bool)

(assert (=> b!113716 (= e!73901 (= (apply!102 lt!59083 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2529 newMap!16)))))

(declare-fun b!113717 () Bool)

(declare-fun call!12283 () ListLongMap!1603)

(assert (=> b!113717 (= e!73892 call!12283)))

(declare-fun bm!12278 () Bool)

(declare-fun call!12285 () ListLongMap!1603)

(assert (=> bm!12278 (= call!12285 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun bm!12279 () Bool)

(declare-fun call!12281 () ListLongMap!1603)

(assert (=> bm!12279 (= call!12281 call!12285)))

(declare-fun b!113718 () Bool)

(declare-fun c!20410 () Bool)

(assert (=> b!113718 (= c!20410 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!73891 () ListLongMap!1603)

(assert (=> b!113718 (= e!73891 e!73892)))

(declare-fun bm!12280 () Bool)

(assert (=> bm!12280 (= call!12283 call!12287)))

(declare-fun b!113719 () Bool)

(declare-fun e!73899 () Bool)

(declare-fun call!12282 () Bool)

(assert (=> b!113719 (= e!73899 (not call!12282))))

(declare-fun b!113720 () Bool)

(declare-fun e!73894 () Bool)

(assert (=> b!113720 (= e!73894 (= (apply!102 lt!59083 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2529 newMap!16)))))

(declare-fun b!113721 () Bool)

(assert (=> b!113721 (= e!73899 e!73901)))

(declare-fun res!56016 () Bool)

(assert (=> b!113721 (= res!56016 call!12282)))

(assert (=> b!113721 (=> (not res!56016) (not e!73901))))

(declare-fun d!32357 () Bool)

(declare-fun e!73896 () Bool)

(assert (=> d!32357 e!73896))

(declare-fun res!56009 () Bool)

(assert (=> d!32357 (=> (not res!56009) (not e!73896))))

(assert (=> d!32357 (= res!56009 (or (bvsge #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))))

(declare-fun lt!59077 () ListLongMap!1603)

(assert (=> d!32357 (= lt!59083 lt!59077)))

(declare-fun lt!59081 () Unit!3534)

(declare-fun e!73902 () Unit!3534)

(assert (=> d!32357 (= lt!59081 e!73902)))

(declare-fun c!20413 () Bool)

(declare-fun e!73893 () Bool)

(assert (=> d!32357 (= c!20413 e!73893)))

(declare-fun res!56014 () Bool)

(assert (=> d!32357 (=> (not res!56014) (not e!73893))))

(assert (=> d!32357 (= res!56014 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(assert (=> d!32357 (= lt!59077 e!73890)))

(declare-fun c!20415 () Bool)

(assert (=> d!32357 (= c!20415 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32357 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32357 (= (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) lt!59083)))

(declare-fun bm!12281 () Bool)

(assert (=> bm!12281 (= call!12282 (contains!844 lt!59083 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12282 () Bool)

(declare-fun c!20414 () Bool)

(assert (=> bm!12282 (= call!12287 (+!152 (ite c!20415 call!12285 (ite c!20414 call!12281 call!12286)) (ite (or c!20415 c!20414) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2529 newMap!16)) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2529 newMap!16)))))))

(declare-fun b!113722 () Bool)

(declare-fun e!73897 () Bool)

(assert (=> b!113722 (= e!73897 e!73895)))

(declare-fun res!56011 () Bool)

(assert (=> b!113722 (=> (not res!56011) (not e!73895))))

(assert (=> b!113722 (= res!56011 (contains!844 lt!59083 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!113722 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113723 () Bool)

(assert (=> b!113723 (= e!73890 e!73891)))

(assert (=> b!113723 (= c!20414 (and (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113724 () Bool)

(declare-fun lt!59071 () Unit!3534)

(assert (=> b!113724 (= e!73902 lt!59071)))

(declare-fun lt!59064 () ListLongMap!1603)

(assert (=> b!113724 (= lt!59064 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59070 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59070 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59069 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59069 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!59074 () Unit!3534)

(assert (=> b!113724 (= lt!59074 (addStillContains!78 lt!59064 lt!59070 (zeroValue!2529 newMap!16) lt!59069))))

(assert (=> b!113724 (contains!844 (+!152 lt!59064 (tuple2!2445 lt!59070 (zeroValue!2529 newMap!16))) lt!59069)))

(declare-fun lt!59068 () Unit!3534)

(assert (=> b!113724 (= lt!59068 lt!59074)))

(declare-fun lt!59079 () ListLongMap!1603)

(assert (=> b!113724 (= lt!59079 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59066 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59066 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59078 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59078 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!59073 () Unit!3534)

(assert (=> b!113724 (= lt!59073 (addApplyDifferent!78 lt!59079 lt!59066 (minValue!2529 newMap!16) lt!59078))))

(assert (=> b!113724 (= (apply!102 (+!152 lt!59079 (tuple2!2445 lt!59066 (minValue!2529 newMap!16))) lt!59078) (apply!102 lt!59079 lt!59078))))

(declare-fun lt!59080 () Unit!3534)

(assert (=> b!113724 (= lt!59080 lt!59073)))

(declare-fun lt!59084 () ListLongMap!1603)

(assert (=> b!113724 (= lt!59084 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59082 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59082 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59072 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59072 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!59067 () Unit!3534)

(assert (=> b!113724 (= lt!59067 (addApplyDifferent!78 lt!59084 lt!59082 (zeroValue!2529 newMap!16) lt!59072))))

(assert (=> b!113724 (= (apply!102 (+!152 lt!59084 (tuple2!2445 lt!59082 (zeroValue!2529 newMap!16))) lt!59072) (apply!102 lt!59084 lt!59072))))

(declare-fun lt!59065 () Unit!3534)

(assert (=> b!113724 (= lt!59065 lt!59067)))

(declare-fun lt!59075 () ListLongMap!1603)

(assert (=> b!113724 (= lt!59075 (getCurrentListMapNoExtraKeys!119 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59076 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59076 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59085 () (_ BitVec 64))

(assert (=> b!113724 (= lt!59085 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!113724 (= lt!59071 (addApplyDifferent!78 lt!59075 lt!59076 (minValue!2529 newMap!16) lt!59085))))

(assert (=> b!113724 (= (apply!102 (+!152 lt!59075 (tuple2!2445 lt!59076 (minValue!2529 newMap!16))) lt!59085) (apply!102 lt!59075 lt!59085))))

(declare-fun bm!12283 () Bool)

(declare-fun call!12284 () Bool)

(assert (=> bm!12283 (= call!12284 (contains!844 lt!59083 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113725 () Bool)

(declare-fun e!73900 () Bool)

(assert (=> b!113725 (= e!73900 (not call!12284))))

(declare-fun bm!12284 () Bool)

(assert (=> bm!12284 (= call!12286 call!12281)))

(declare-fun b!113726 () Bool)

(assert (=> b!113726 (= e!73893 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113727 () Bool)

(assert (=> b!113727 (= e!73896 e!73900)))

(declare-fun c!20411 () Bool)

(assert (=> b!113727 (= c!20411 (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!113728 () Bool)

(declare-fun e!73898 () Bool)

(assert (=> b!113728 (= e!73898 (validKeyInArray!0 (select (arr!2092 (_keys!4381 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!113729 () Bool)

(assert (=> b!113729 (= e!73900 e!73894)))

(declare-fun res!56013 () Bool)

(assert (=> b!113729 (= res!56013 call!12284)))

(assert (=> b!113729 (=> (not res!56013) (not e!73894))))

(declare-fun b!113730 () Bool)

(declare-fun res!56015 () Bool)

(assert (=> b!113730 (=> (not res!56015) (not e!73896))))

(assert (=> b!113730 (= res!56015 e!73897)))

(declare-fun res!56017 () Bool)

(assert (=> b!113730 (=> res!56017 e!73897)))

(assert (=> b!113730 (= res!56017 (not e!73898))))

(declare-fun res!56010 () Bool)

(assert (=> b!113730 (=> (not res!56010) (not e!73898))))

(assert (=> b!113730 (= res!56010 (bvslt #b00000000000000000000000000000000 (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113731 () Bool)

(declare-fun res!56012 () Bool)

(assert (=> b!113731 (=> (not res!56012) (not e!73896))))

(assert (=> b!113731 (= res!56012 e!73899)))

(declare-fun c!20412 () Bool)

(assert (=> b!113731 (= c!20412 (not (= (bvand (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!113732 () Bool)

(declare-fun Unit!3558 () Unit!3534)

(assert (=> b!113732 (= e!73902 Unit!3558)))

(declare-fun b!113733 () Bool)

(assert (=> b!113733 (= e!73891 call!12283)))

(assert (= (and d!32357 c!20415) b!113715))

(assert (= (and d!32357 (not c!20415)) b!113723))

(assert (= (and b!113723 c!20414) b!113733))

(assert (= (and b!113723 (not c!20414)) b!113718))

(assert (= (and b!113718 c!20410) b!113717))

(assert (= (and b!113718 (not c!20410)) b!113713))

(assert (= (or b!113717 b!113713) bm!12284))

(assert (= (or b!113733 bm!12284) bm!12279))

(assert (= (or b!113733 b!113717) bm!12280))

(assert (= (or b!113715 bm!12279) bm!12278))

(assert (= (or b!113715 bm!12280) bm!12282))

(assert (= (and d!32357 res!56014) b!113726))

(assert (= (and d!32357 c!20413) b!113724))

(assert (= (and d!32357 (not c!20413)) b!113732))

(assert (= (and d!32357 res!56009) b!113730))

(assert (= (and b!113730 res!56010) b!113728))

(assert (= (and b!113730 (not res!56017)) b!113722))

(assert (= (and b!113722 res!56011) b!113714))

(assert (= (and b!113730 res!56015) b!113731))

(assert (= (and b!113731 c!20412) b!113721))

(assert (= (and b!113731 (not c!20412)) b!113719))

(assert (= (and b!113721 res!56016) b!113716))

(assert (= (or b!113721 b!113719) bm!12281))

(assert (= (and b!113731 res!56012) b!113727))

(assert (= (and b!113727 c!20411) b!113729))

(assert (= (and b!113727 (not c!20411)) b!113725))

(assert (= (and b!113729 res!56013) b!113720))

(assert (= (or b!113729 b!113725) bm!12283))

(declare-fun b_lambda!5109 () Bool)

(assert (=> (not b_lambda!5109) (not b!113714)))

(assert (=> b!113714 t!5854))

(declare-fun b_and!6997 () Bool)

(assert (= b_and!6993 (and (=> t!5854 result!3601) b_and!6997)))

(assert (=> b!113714 t!5856))

(declare-fun b_and!6999 () Bool)

(assert (= b_and!6995 (and (=> t!5856 result!3603) b_and!6999)))

(declare-fun m!130159 () Bool)

(assert (=> b!113720 m!130159))

(declare-fun m!130161 () Bool)

(assert (=> b!113715 m!130161))

(declare-fun m!130163 () Bool)

(assert (=> b!113724 m!130163))

(declare-fun m!130165 () Bool)

(assert (=> b!113724 m!130165))

(declare-fun m!130167 () Bool)

(assert (=> b!113724 m!130167))

(declare-fun m!130169 () Bool)

(assert (=> b!113724 m!130169))

(declare-fun m!130171 () Bool)

(assert (=> b!113724 m!130171))

(declare-fun m!130173 () Bool)

(assert (=> b!113724 m!130173))

(declare-fun m!130175 () Bool)

(assert (=> b!113724 m!130175))

(declare-fun m!130177 () Bool)

(assert (=> b!113724 m!130177))

(assert (=> b!113724 m!130169))

(declare-fun m!130179 () Bool)

(assert (=> b!113724 m!130179))

(declare-fun m!130181 () Bool)

(assert (=> b!113724 m!130181))

(declare-fun m!130183 () Bool)

(assert (=> b!113724 m!130183))

(declare-fun m!130185 () Bool)

(assert (=> b!113724 m!130185))

(declare-fun m!130187 () Bool)

(assert (=> b!113724 m!130187))

(assert (=> b!113724 m!129519))

(declare-fun m!130189 () Bool)

(assert (=> b!113724 m!130189))

(assert (=> b!113724 m!130167))

(declare-fun m!130191 () Bool)

(assert (=> b!113724 m!130191))

(assert (=> b!113724 m!130163))

(assert (=> b!113724 m!130181))

(declare-fun m!130193 () Bool)

(assert (=> b!113724 m!130193))

(assert (=> b!113728 m!129519))

(assert (=> b!113728 m!129519))

(assert (=> b!113728 m!129521))

(assert (=> b!113714 m!129913))

(assert (=> b!113714 m!129639))

(assert (=> b!113714 m!129915))

(assert (=> b!113714 m!129519))

(assert (=> b!113714 m!129913))

(assert (=> b!113714 m!129639))

(assert (=> b!113714 m!129519))

(declare-fun m!130195 () Bool)

(assert (=> b!113714 m!130195))

(assert (=> b!113726 m!129519))

(assert (=> b!113726 m!129519))

(assert (=> b!113726 m!129521))

(assert (=> bm!12278 m!130177))

(assert (=> b!113722 m!129519))

(assert (=> b!113722 m!129519))

(declare-fun m!130197 () Bool)

(assert (=> b!113722 m!130197))

(declare-fun m!130199 () Bool)

(assert (=> b!113716 m!130199))

(declare-fun m!130201 () Bool)

(assert (=> bm!12282 m!130201))

(assert (=> d!32357 m!129651))

(declare-fun m!130203 () Bool)

(assert (=> bm!12283 m!130203))

(declare-fun m!130205 () Bool)

(assert (=> bm!12281 m!130205))

(assert (=> d!32177 d!32357))

(declare-fun d!32359 () Bool)

(declare-fun e!73904 () Bool)

(assert (=> d!32359 e!73904))

(declare-fun res!56018 () Bool)

(assert (=> d!32359 (=> res!56018 e!73904)))

(declare-fun lt!59086 () Bool)

(assert (=> d!32359 (= res!56018 (not lt!59086))))

(declare-fun lt!59089 () Bool)

(assert (=> d!32359 (= lt!59086 lt!59089)))

(declare-fun lt!59087 () Unit!3534)

(declare-fun e!73903 () Unit!3534)

(assert (=> d!32359 (= lt!59087 e!73903)))

(declare-fun c!20416 () Bool)

(assert (=> d!32359 (= c!20416 lt!59089)))

(assert (=> d!32359 (= lt!59089 (containsKey!163 (toList!817 lt!58568) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32359 (= (contains!844 lt!58568 #b0000000000000000000000000000000000000000000000000000000000000000) lt!59086)))

(declare-fun b!113734 () Bool)

(declare-fun lt!59088 () Unit!3534)

(assert (=> b!113734 (= e!73903 lt!59088)))

(assert (=> b!113734 (= lt!59088 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58568) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113734 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113735 () Bool)

(declare-fun Unit!3559 () Unit!3534)

(assert (=> b!113735 (= e!73903 Unit!3559)))

(declare-fun b!113736 () Bool)

(assert (=> b!113736 (= e!73904 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32359 c!20416) b!113734))

(assert (= (and d!32359 (not c!20416)) b!113735))

(assert (= (and d!32359 (not res!56018)) b!113736))

(declare-fun m!130207 () Bool)

(assert (=> d!32359 m!130207))

(declare-fun m!130209 () Bool)

(assert (=> b!113734 m!130209))

(declare-fun m!130211 () Bool)

(assert (=> b!113734 m!130211))

(assert (=> b!113734 m!130211))

(declare-fun m!130213 () Bool)

(assert (=> b!113734 m!130213))

(assert (=> b!113736 m!130211))

(assert (=> b!113736 m!130211))

(assert (=> b!113736 m!130213))

(assert (=> d!32165 d!32359))

(assert (=> d!32165 d!32171))

(declare-fun b!113753 () Bool)

(declare-fun e!73914 () Bool)

(declare-fun call!12293 () Bool)

(assert (=> b!113753 (= e!73914 (not call!12293))))

(declare-fun call!12292 () Bool)

(declare-fun lt!59094 () SeekEntryResult!273)

(declare-fun c!20421 () Bool)

(declare-fun bm!12289 () Bool)

(assert (=> bm!12289 (= call!12292 (inRange!0 (ite c!20421 (index!3244 lt!59094) (index!3247 lt!59094)) (mask!6845 newMap!16)))))

(declare-fun b!113754 () Bool)

(declare-fun e!73916 () Bool)

(declare-fun e!73915 () Bool)

(assert (=> b!113754 (= e!73916 e!73915)))

(declare-fun c!20422 () Bool)

(assert (=> b!113754 (= c!20422 ((_ is MissingVacant!273) lt!59094))))

(declare-fun bm!12290 () Bool)

(assert (=> bm!12290 (= call!12293 (arrayContainsKey!0 (_keys!4381 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!113755 () Bool)

(declare-fun res!56028 () Bool)

(assert (=> b!113755 (=> (not res!56028) (not e!73914))))

(assert (=> b!113755 (= res!56028 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3247 lt!59094)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113755 (and (bvsge (index!3247 lt!59094) #b00000000000000000000000000000000) (bvslt (index!3247 lt!59094) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun b!113756 () Bool)

(assert (=> b!113756 (and (bvsge (index!3244 lt!59094) #b00000000000000000000000000000000) (bvslt (index!3244 lt!59094) (size!2351 (_keys!4381 newMap!16))))))

(declare-fun res!56029 () Bool)

(assert (=> b!113756 (= res!56029 (= (select (arr!2092 (_keys!4381 newMap!16)) (index!3244 lt!59094)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!73913 () Bool)

(assert (=> b!113756 (=> (not res!56029) (not e!73913))))

(declare-fun b!113757 () Bool)

(declare-fun res!56030 () Bool)

(assert (=> b!113757 (=> (not res!56030) (not e!73914))))

(assert (=> b!113757 (= res!56030 call!12292)))

(assert (=> b!113757 (= e!73915 e!73914)))

(declare-fun d!32361 () Bool)

(assert (=> d!32361 e!73916))

(assert (=> d!32361 (= c!20421 ((_ is MissingZero!273) lt!59094))))

(assert (=> d!32361 (= lt!59094 (seekEntryOrOpen!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (_keys!4381 newMap!16) (mask!6845 newMap!16)))))

(declare-fun lt!59095 () Unit!3534)

(declare-fun choose!726 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 (_ BitVec 64) Int) Unit!3534)

(assert (=> d!32361 (= lt!59095 (choose!726 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)))))

(assert (=> d!32361 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32361 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (defaultEntry!2661 newMap!16)) lt!59095)))

(declare-fun b!113758 () Bool)

(assert (=> b!113758 (= e!73916 e!73913)))

(declare-fun res!56027 () Bool)

(assert (=> b!113758 (= res!56027 call!12292)))

(assert (=> b!113758 (=> (not res!56027) (not e!73913))))

(declare-fun b!113759 () Bool)

(assert (=> b!113759 (= e!73913 (not call!12293))))

(declare-fun b!113760 () Bool)

(assert (=> b!113760 (= e!73915 ((_ is Undefined!273) lt!59094))))

(assert (= (and d!32361 c!20421) b!113758))

(assert (= (and d!32361 (not c!20421)) b!113754))

(assert (= (and b!113758 res!56027) b!113756))

(assert (= (and b!113756 res!56029) b!113759))

(assert (= (and b!113754 c!20422) b!113757))

(assert (= (and b!113754 (not c!20422)) b!113760))

(assert (= (and b!113757 res!56030) b!113755))

(assert (= (and b!113755 res!56028) b!113753))

(assert (= (or b!113758 b!113757) bm!12289))

(assert (= (or b!113759 b!113753) bm!12290))

(assert (=> bm!12290 m!129119))

(assert (=> bm!12290 m!129453))

(declare-fun m!130215 () Bool)

(assert (=> bm!12289 m!130215))

(declare-fun m!130217 () Bool)

(assert (=> b!113756 m!130217))

(declare-fun m!130219 () Bool)

(assert (=> b!113755 m!130219))

(assert (=> d!32361 m!129119))

(assert (=> d!32361 m!129405))

(assert (=> d!32361 m!129119))

(declare-fun m!130221 () Bool)

(assert (=> d!32361 m!130221))

(assert (=> d!32361 m!129651))

(assert (=> bm!12194 d!32361))

(declare-fun d!32363 () Bool)

(declare-fun e!73918 () Bool)

(assert (=> d!32363 e!73918))

(declare-fun res!56031 () Bool)

(assert (=> d!32363 (=> res!56031 e!73918)))

(declare-fun lt!59096 () Bool)

(assert (=> d!32363 (= res!56031 (not lt!59096))))

(declare-fun lt!59099 () Bool)

(assert (=> d!32363 (= lt!59096 lt!59099)))

(declare-fun lt!59097 () Unit!3534)

(declare-fun e!73917 () Unit!3534)

(assert (=> d!32363 (= lt!59097 e!73917)))

(declare-fun c!20423 () Bool)

(assert (=> d!32363 (= c!20423 lt!59099)))

(assert (=> d!32363 (= lt!59099 (containsKey!163 (toList!817 lt!58652) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!32363 (= (contains!844 lt!58652 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!59096)))

(declare-fun b!113761 () Bool)

(declare-fun lt!59098 () Unit!3534)

(assert (=> b!113761 (= e!73917 lt!59098)))

(assert (=> b!113761 (= lt!59098 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58652) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!113761 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!113762 () Bool)

(declare-fun Unit!3560 () Unit!3534)

(assert (=> b!113762 (= e!73917 Unit!3560)))

(declare-fun b!113763 () Bool)

(assert (=> b!113763 (= e!73918 (isDefined!113 (getValueByKey!159 (toList!817 lt!58652) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!32363 c!20423) b!113761))

(assert (= (and d!32363 (not c!20423)) b!113762))

(assert (= (and d!32363 (not res!56031)) b!113763))

(assert (=> d!32363 m!129237))

(declare-fun m!130223 () Bool)

(assert (=> d!32363 m!130223))

(assert (=> b!113761 m!129237))

(declare-fun m!130225 () Bool)

(assert (=> b!113761 m!130225))

(assert (=> b!113761 m!129237))

(assert (=> b!113761 m!129545))

(assert (=> b!113761 m!129545))

(declare-fun m!130227 () Bool)

(assert (=> b!113761 m!130227))

(assert (=> b!113763 m!129237))

(assert (=> b!113763 m!129545))

(assert (=> b!113763 m!129545))

(assert (=> b!113763 m!130227))

(assert (=> b!113133 d!32363))

(declare-fun d!32365 () Bool)

(assert (=> d!32365 (= (+!152 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (tuple2!2445 #b0000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) lt!58723 lt!58491 (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59102 () Unit!3534)

(declare-fun choose!727 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 V!3259 Int) Unit!3534)

(assert (=> d!32365 (= lt!59102 (choose!727 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58723 (zeroValue!2529 newMap!16) lt!58491 (minValue!2529 newMap!16) (defaultEntry!2661 newMap!16)))))

(assert (=> d!32365 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32365 (= (lemmaChangeZeroKeyThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58723 (zeroValue!2529 newMap!16) lt!58491 (minValue!2529 newMap!16) (defaultEntry!2661 newMap!16)) lt!59102)))

(declare-fun bs!4658 () Bool)

(assert (= bs!4658 d!32365))

(assert (=> bs!4658 m!129651))

(declare-fun m!130229 () Bool)

(assert (=> bs!4658 m!130229))

(assert (=> bs!4658 m!129333))

(assert (=> bs!4658 m!129333))

(declare-fun m!130231 () Bool)

(assert (=> bs!4658 m!130231))

(declare-fun m!130233 () Bool)

(assert (=> bs!4658 m!130233))

(assert (=> b!113257 d!32365))

(declare-fun d!32367 () Bool)

(declare-fun isEmpty!389 (List!1660) Bool)

(assert (=> d!32367 (= (isEmpty!387 lt!58568) (isEmpty!389 (toList!817 lt!58568)))))

(declare-fun bs!4659 () Bool)

(assert (= bs!4659 d!32367))

(declare-fun m!130235 () Bool)

(assert (=> bs!4659 m!130235))

(assert (=> b!113068 d!32367))

(declare-fun d!32369 () Bool)

(declare-fun res!56032 () Bool)

(declare-fun e!73919 () Bool)

(assert (=> d!32369 (=> (not res!56032) (not e!73919))))

(assert (=> d!32369 (= res!56032 (simpleValid!77 (v!2958 (underlying!376 thiss!992))))))

(assert (=> d!32369 (= (valid!428 (v!2958 (underlying!376 thiss!992))) e!73919)))

(declare-fun b!113764 () Bool)

(declare-fun res!56033 () Bool)

(assert (=> b!113764 (=> (not res!56033) (not e!73919))))

(assert (=> b!113764 (= res!56033 (= (arrayCountValidKeys!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))) (_size!514 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113765 () Bool)

(declare-fun res!56034 () Bool)

(assert (=> b!113765 (=> (not res!56034) (not e!73919))))

(assert (=> b!113765 (= res!56034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (mask!6845 (v!2958 (underlying!376 thiss!992)))))))

(declare-fun b!113766 () Bool)

(assert (=> b!113766 (= e!73919 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) #b00000000000000000000000000000000 Nil!1658))))

(assert (= (and d!32369 res!56032) b!113764))

(assert (= (and b!113764 res!56033) b!113765))

(assert (= (and b!113765 res!56034) b!113766))

(declare-fun m!130237 () Bool)

(assert (=> d!32369 m!130237))

(declare-fun m!130239 () Bool)

(assert (=> b!113764 m!130239))

(assert (=> b!113765 m!129155))

(assert (=> b!113766 m!129113))

(assert (=> d!32193 d!32369))

(declare-fun d!32371 () Bool)

(declare-fun e!73921 () Bool)

(assert (=> d!32371 e!73921))

(declare-fun res!56035 () Bool)

(assert (=> d!32371 (=> res!56035 e!73921)))

(declare-fun lt!59103 () Bool)

(assert (=> d!32371 (= res!56035 (not lt!59103))))

(declare-fun lt!59106 () Bool)

(assert (=> d!32371 (= lt!59103 lt!59106)))

(declare-fun lt!59104 () Unit!3534)

(declare-fun e!73920 () Unit!3534)

(assert (=> d!32371 (= lt!59104 e!73920)))

(declare-fun c!20424 () Bool)

(assert (=> d!32371 (= c!20424 lt!59106)))

(assert (=> d!32371 (= lt!59106 (containsKey!163 (toList!817 lt!58568) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32371 (= (contains!844 lt!58568 #b1000000000000000000000000000000000000000000000000000000000000000) lt!59103)))

(declare-fun b!113767 () Bool)

(declare-fun lt!59105 () Unit!3534)

(assert (=> b!113767 (= e!73920 lt!59105)))

(assert (=> b!113767 (= lt!59105 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 lt!58568) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!113767 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!113768 () Bool)

(declare-fun Unit!3561 () Unit!3534)

(assert (=> b!113768 (= e!73920 Unit!3561)))

(declare-fun b!113769 () Bool)

(assert (=> b!113769 (= e!73921 (isDefined!113 (getValueByKey!159 (toList!817 lt!58568) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32371 c!20424) b!113767))

(assert (= (and d!32371 (not c!20424)) b!113768))

(assert (= (and d!32371 (not res!56035)) b!113769))

(declare-fun m!130241 () Bool)

(assert (=> d!32371 m!130241))

(declare-fun m!130243 () Bool)

(assert (=> b!113767 m!130243))

(declare-fun m!130245 () Bool)

(assert (=> b!113767 m!130245))

(assert (=> b!113767 m!130245))

(declare-fun m!130247 () Bool)

(assert (=> b!113767 m!130247))

(assert (=> b!113769 m!130245))

(assert (=> b!113769 m!130245))

(assert (=> b!113769 m!130247))

(assert (=> b!113066 d!32371))

(assert (=> d!32153 d!32157))

(declare-fun d!32373 () Bool)

(assert (=> d!32373 (not (arrayContainsKey!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!32373 true))

(declare-fun _$68!118 () Unit!3534)

(assert (=> d!32373 (= (choose!68 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355) Nil!1658)) _$68!118)))

(declare-fun bs!4660 () Bool)

(assert (= bs!4660 d!32373))

(assert (=> bs!4660 m!129119))

(assert (=> bs!4660 m!129123))

(assert (=> d!32153 d!32373))

(assert (=> b!113303 d!32245))

(declare-fun d!32375 () Bool)

(declare-fun e!73923 () Bool)

(assert (=> d!32375 e!73923))

(declare-fun res!56036 () Bool)

(assert (=> d!32375 (=> res!56036 e!73923)))

(declare-fun lt!59107 () Bool)

(assert (=> d!32375 (= res!56036 (not lt!59107))))

(declare-fun lt!59110 () Bool)

(assert (=> d!32375 (= lt!59107 lt!59110)))

(declare-fun lt!59108 () Unit!3534)

(declare-fun e!73922 () Unit!3534)

(assert (=> d!32375 (= lt!59108 e!73922)))

(declare-fun c!20425 () Bool)

(assert (=> d!32375 (= c!20425 lt!59110)))

(assert (=> d!32375 (= lt!59110 (containsKey!163 (toList!817 e!73621) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> d!32375 (= (contains!844 e!73621 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)) lt!59107)))

(declare-fun b!113770 () Bool)

(declare-fun lt!59109 () Unit!3534)

(assert (=> b!113770 (= e!73922 lt!59109)))

(assert (=> b!113770 (= lt!59109 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 e!73621) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(assert (=> b!113770 (isDefined!113 (getValueByKey!159 (toList!817 e!73621) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355)))))

(declare-fun b!113771 () Bool)

(declare-fun Unit!3562 () Unit!3534)

(assert (=> b!113771 (= e!73922 Unit!3562)))

(declare-fun b!113772 () Bool)

(assert (=> b!113772 (= e!73923 (isDefined!113 (getValueByKey!159 (toList!817 e!73621) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) from!355))))))

(assert (= (and d!32375 c!20425) b!113770))

(assert (= (and d!32375 (not c!20425)) b!113771))

(assert (= (and d!32375 (not res!56036)) b!113772))

(assert (=> d!32375 m!129119))

(declare-fun m!130249 () Bool)

(assert (=> d!32375 m!130249))

(assert (=> b!113770 m!129119))

(declare-fun m!130251 () Bool)

(assert (=> b!113770 m!130251))

(assert (=> b!113770 m!129119))

(declare-fun m!130253 () Bool)

(assert (=> b!113770 m!130253))

(assert (=> b!113770 m!130253))

(declare-fun m!130255 () Bool)

(assert (=> b!113770 m!130255))

(assert (=> b!113772 m!129119))

(assert (=> b!113772 m!130253))

(assert (=> b!113772 m!130253))

(assert (=> b!113772 m!130255))

(assert (=> bm!12197 d!32375))

(declare-fun d!32377 () Bool)

(declare-fun c!20426 () Bool)

(assert (=> d!32377 (= c!20426 (and ((_ is Cons!1656) (toList!817 lt!58586)) (= (_1!1232 (h!2256 (toList!817 lt!58586))) (_1!1232 lt!58488))))))

(declare-fun e!73924 () Option!165)

(assert (=> d!32377 (= (getValueByKey!159 (toList!817 lt!58586) (_1!1232 lt!58488)) e!73924)))

(declare-fun b!113774 () Bool)

(declare-fun e!73925 () Option!165)

(assert (=> b!113774 (= e!73924 e!73925)))

(declare-fun c!20427 () Bool)

(assert (=> b!113774 (= c!20427 (and ((_ is Cons!1656) (toList!817 lt!58586)) (not (= (_1!1232 (h!2256 (toList!817 lt!58586))) (_1!1232 lt!58488)))))))

(declare-fun b!113773 () Bool)

(assert (=> b!113773 (= e!73924 (Some!164 (_2!1232 (h!2256 (toList!817 lt!58586)))))))

(declare-fun b!113775 () Bool)

(assert (=> b!113775 (= e!73925 (getValueByKey!159 (t!5846 (toList!817 lt!58586)) (_1!1232 lt!58488)))))

(declare-fun b!113776 () Bool)

(assert (=> b!113776 (= e!73925 None!163)))

(assert (= (and d!32377 c!20426) b!113773))

(assert (= (and d!32377 (not c!20426)) b!113774))

(assert (= (and b!113774 c!20427) b!113775))

(assert (= (and b!113774 (not c!20427)) b!113776))

(declare-fun m!130257 () Bool)

(assert (=> b!113775 m!130257))

(assert (=> b!113080 d!32377))

(declare-fun d!32379 () Bool)

(declare-fun c!20428 () Bool)

(assert (=> d!32379 (= c!20428 (and ((_ is Cons!1656) (toList!817 lt!58550)) (= (_1!1232 (h!2256 (toList!817 lt!58550))) (_1!1232 lt!58485))))))

(declare-fun e!73926 () Option!165)

(assert (=> d!32379 (= (getValueByKey!159 (toList!817 lt!58550) (_1!1232 lt!58485)) e!73926)))

(declare-fun b!113778 () Bool)

(declare-fun e!73927 () Option!165)

(assert (=> b!113778 (= e!73926 e!73927)))

(declare-fun c!20429 () Bool)

(assert (=> b!113778 (= c!20429 (and ((_ is Cons!1656) (toList!817 lt!58550)) (not (= (_1!1232 (h!2256 (toList!817 lt!58550))) (_1!1232 lt!58485)))))))

(declare-fun b!113777 () Bool)

(assert (=> b!113777 (= e!73926 (Some!164 (_2!1232 (h!2256 (toList!817 lt!58550)))))))

(declare-fun b!113779 () Bool)

(assert (=> b!113779 (= e!73927 (getValueByKey!159 (t!5846 (toList!817 lt!58550)) (_1!1232 lt!58485)))))

(declare-fun b!113780 () Bool)

(assert (=> b!113780 (= e!73927 None!163)))

(assert (= (and d!32379 c!20428) b!113777))

(assert (= (and d!32379 (not c!20428)) b!113778))

(assert (= (and b!113778 c!20429) b!113779))

(assert (= (and b!113778 (not c!20429)) b!113780))

(declare-fun m!130259 () Bool)

(assert (=> b!113779 m!130259))

(assert (=> b!113038 d!32379))

(declare-fun d!32381 () Bool)

(declare-fun res!56037 () Bool)

(declare-fun e!73928 () Bool)

(assert (=> d!32381 (=> (not res!56037) (not e!73928))))

(assert (=> d!32381 (= res!56037 (simpleValid!77 (_2!1231 lt!58740)))))

(assert (=> d!32381 (= (valid!428 (_2!1231 lt!58740)) e!73928)))

(declare-fun b!113781 () Bool)

(declare-fun res!56038 () Bool)

(assert (=> b!113781 (=> (not res!56038) (not e!73928))))

(assert (=> b!113781 (= res!56038 (= (arrayCountValidKeys!0 (_keys!4381 (_2!1231 lt!58740)) #b00000000000000000000000000000000 (size!2351 (_keys!4381 (_2!1231 lt!58740)))) (_size!514 (_2!1231 lt!58740))))))

(declare-fun b!113782 () Bool)

(declare-fun res!56039 () Bool)

(assert (=> b!113782 (=> (not res!56039) (not e!73928))))

(assert (=> b!113782 (= res!56039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4381 (_2!1231 lt!58740)) (mask!6845 (_2!1231 lt!58740))))))

(declare-fun b!113783 () Bool)

(assert (=> b!113783 (= e!73928 (arrayNoDuplicates!0 (_keys!4381 (_2!1231 lt!58740)) #b00000000000000000000000000000000 Nil!1658))))

(assert (= (and d!32381 res!56037) b!113781))

(assert (= (and b!113781 res!56038) b!113782))

(assert (= (and b!113782 res!56039) b!113783))

(declare-fun m!130261 () Bool)

(assert (=> d!32381 m!130261))

(declare-fun m!130263 () Bool)

(assert (=> b!113781 m!130263))

(declare-fun m!130265 () Bool)

(assert (=> b!113782 m!130265))

(declare-fun m!130267 () Bool)

(assert (=> b!113783 m!130267))

(assert (=> d!32191 d!32381))

(assert (=> d!32191 d!32181))

(declare-fun b!113795 () Bool)

(declare-fun e!73931 () Bool)

(assert (=> b!113795 (= e!73931 (and (bvsge (extraKeys!2452 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2452 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!514 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!32383 () Bool)

(declare-fun res!56050 () Bool)

(assert (=> d!32383 (=> (not res!56050) (not e!73931))))

(assert (=> d!32383 (= res!56050 (validMask!0 (mask!6845 newMap!16)))))

(assert (=> d!32383 (= (simpleValid!77 newMap!16) e!73931)))

(declare-fun b!113793 () Bool)

(declare-fun res!56048 () Bool)

(assert (=> b!113793 (=> (not res!56048) (not e!73931))))

(declare-fun size!2355 (LongMapFixedSize!930) (_ BitVec 32))

(assert (=> b!113793 (= res!56048 (bvsge (size!2355 newMap!16) (_size!514 newMap!16)))))

(declare-fun b!113792 () Bool)

(declare-fun res!56049 () Bool)

(assert (=> b!113792 (=> (not res!56049) (not e!73931))))

(assert (=> b!113792 (= res!56049 (and (= (size!2352 (_values!2644 newMap!16)) (bvadd (mask!6845 newMap!16) #b00000000000000000000000000000001)) (= (size!2351 (_keys!4381 newMap!16)) (size!2352 (_values!2644 newMap!16))) (bvsge (_size!514 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!514 newMap!16) (bvadd (mask!6845 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!113794 () Bool)

(declare-fun res!56051 () Bool)

(assert (=> b!113794 (=> (not res!56051) (not e!73931))))

(assert (=> b!113794 (= res!56051 (= (size!2355 newMap!16) (bvadd (_size!514 newMap!16) (bvsdiv (bvadd (extraKeys!2452 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!32383 res!56050) b!113792))

(assert (= (and b!113792 res!56049) b!113793))

(assert (= (and b!113793 res!56048) b!113794))

(assert (= (and b!113794 res!56051) b!113795))

(assert (=> d!32383 m!129651))

(declare-fun m!130269 () Bool)

(assert (=> b!113793 m!130269))

(assert (=> b!113794 m!130269))

(assert (=> d!32181 d!32383))

(declare-fun b!113796 () Bool)

(declare-fun e!73935 () Bool)

(assert (=> b!113796 (= e!73935 (contains!845 (ite c!20297 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) Nil!1658) Nil!1658) (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!113797 () Bool)

(declare-fun e!73934 () Bool)

(declare-fun call!12294 () Bool)

(assert (=> b!113797 (= e!73934 call!12294)))

(declare-fun b!113798 () Bool)

(declare-fun e!73933 () Bool)

(assert (=> b!113798 (= e!73933 e!73934)))

(declare-fun c!20430 () Bool)

(assert (=> b!113798 (= c!20430 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!113799 () Bool)

(declare-fun e!73932 () Bool)

(assert (=> b!113799 (= e!73932 e!73933)))

(declare-fun res!56053 () Bool)

(assert (=> b!113799 (=> (not res!56053) (not e!73933))))

(assert (=> b!113799 (= res!56053 (not e!73935))))

(declare-fun res!56052 () Bool)

(assert (=> b!113799 (=> (not res!56052) (not e!73935))))

(assert (=> b!113799 (= res!56052 (validKeyInArray!0 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!12291 () Bool)

(assert (=> bm!12291 (= call!12294 (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!20430 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!20297 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) Nil!1658) Nil!1658)) (ite c!20297 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) Nil!1658) Nil!1658))))))

(declare-fun d!32385 () Bool)

(declare-fun res!56054 () Bool)

(assert (=> d!32385 (=> res!56054 e!73932)))

(assert (=> d!32385 (= res!56054 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2351 (_keys!4381 (v!2958 (underlying!376 thiss!992))))))))

(assert (=> d!32385 (= (arrayNoDuplicates!0 (_keys!4381 (v!2958 (underlying!376 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!20297 (Cons!1657 (select (arr!2092 (_keys!4381 (v!2958 (underlying!376 thiss!992)))) #b00000000000000000000000000000000) Nil!1658) Nil!1658)) e!73932)))

(declare-fun b!113800 () Bool)

(assert (=> b!113800 (= e!73934 call!12294)))

(assert (= (and d!32385 (not res!56054)) b!113799))

(assert (= (and b!113799 res!56052) b!113796))

(assert (= (and b!113799 res!56053) b!113798))

(assert (= (and b!113798 c!20430) b!113800))

(assert (= (and b!113798 (not c!20430)) b!113797))

(assert (= (or b!113800 b!113797) bm!12291))

(assert (=> b!113796 m!130135))

(assert (=> b!113796 m!130135))

(declare-fun m!130271 () Bool)

(assert (=> b!113796 m!130271))

(assert (=> b!113798 m!130135))

(assert (=> b!113798 m!130135))

(assert (=> b!113798 m!130137))

(assert (=> b!113799 m!130135))

(assert (=> b!113799 m!130135))

(assert (=> b!113799 m!130137))

(assert (=> bm!12291 m!130135))

(declare-fun m!130273 () Bool)

(assert (=> bm!12291 m!130273))

(assert (=> bm!12218 d!32385))

(declare-fun d!32387 () Bool)

(assert (=> d!32387 (= (apply!102 (+!152 lt!58644 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58654) (get!1371 (getValueByKey!159 (toList!817 (+!152 lt!58644 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58654)))))

(declare-fun bs!4661 () Bool)

(assert (= bs!4661 d!32387))

(declare-fun m!130275 () Bool)

(assert (=> bs!4661 m!130275))

(assert (=> bs!4661 m!130275))

(declare-fun m!130277 () Bool)

(assert (=> bs!4661 m!130277))

(assert (=> b!113135 d!32387))

(assert (=> b!113135 d!32165))

(declare-fun d!32389 () Bool)

(declare-fun e!73936 () Bool)

(assert (=> d!32389 e!73936))

(declare-fun res!56056 () Bool)

(assert (=> d!32389 (=> (not res!56056) (not e!73936))))

(declare-fun lt!59112 () ListLongMap!1603)

(assert (=> d!32389 (= res!56056 (contains!844 lt!59112 (_1!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59113 () List!1660)

(assert (=> d!32389 (= lt!59112 (ListLongMap!1604 lt!59113))))

(declare-fun lt!59114 () Unit!3534)

(declare-fun lt!59111 () Unit!3534)

(assert (=> d!32389 (= lt!59114 lt!59111)))

(assert (=> d!32389 (= (getValueByKey!159 lt!59113 (_1!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32389 (= lt!59111 (lemmaContainsTupThenGetReturnValue!77 lt!59113 (_1!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32389 (= lt!59113 (insertStrictlySorted!79 (toList!817 lt!58633) (_1!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32389 (= (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59112)))

(declare-fun b!113801 () Bool)

(declare-fun res!56055 () Bool)

(assert (=> b!113801 (=> (not res!56055) (not e!73936))))

(assert (=> b!113801 (= res!56055 (= (getValueByKey!159 (toList!817 lt!59112) (_1!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113802 () Bool)

(assert (=> b!113802 (= e!73936 (contains!846 (toList!817 lt!59112) (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32389 res!56056) b!113801))

(assert (= (and b!113801 res!56055) b!113802))

(declare-fun m!130279 () Bool)

(assert (=> d!32389 m!130279))

(declare-fun m!130281 () Bool)

(assert (=> d!32389 m!130281))

(declare-fun m!130283 () Bool)

(assert (=> d!32389 m!130283))

(declare-fun m!130285 () Bool)

(assert (=> d!32389 m!130285))

(declare-fun m!130287 () Bool)

(assert (=> b!113801 m!130287))

(declare-fun m!130289 () Bool)

(assert (=> b!113802 m!130289))

(assert (=> b!113135 d!32389))

(declare-fun d!32391 () Bool)

(assert (=> d!32391 (= (apply!102 (+!152 lt!58648 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58647) (get!1371 (getValueByKey!159 (toList!817 (+!152 lt!58648 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58647)))))

(declare-fun bs!4662 () Bool)

(assert (= bs!4662 d!32391))

(declare-fun m!130291 () Bool)

(assert (=> bs!4662 m!130291))

(assert (=> bs!4662 m!130291))

(declare-fun m!130293 () Bool)

(assert (=> bs!4662 m!130293))

(assert (=> b!113135 d!32391))

(declare-fun d!32393 () Bool)

(assert (=> d!32393 (contains!844 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58638)))

(declare-fun lt!59117 () Unit!3534)

(declare-fun choose!728 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> d!32393 (= lt!59117 (choose!728 lt!58633 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58638))))

(assert (=> d!32393 (contains!844 lt!58633 lt!58638)))

(assert (=> d!32393 (= (addStillContains!78 lt!58633 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58638) lt!59117)))

(declare-fun bs!4663 () Bool)

(assert (= bs!4663 d!32393))

(assert (=> bs!4663 m!129345))

(assert (=> bs!4663 m!129345))

(assert (=> bs!4663 m!129347))

(declare-fun m!130295 () Bool)

(assert (=> bs!4663 m!130295))

(declare-fun m!130297 () Bool)

(assert (=> bs!4663 m!130297))

(assert (=> b!113135 d!32393))

(declare-fun d!32395 () Bool)

(assert (=> d!32395 (= (apply!102 (+!152 lt!58648 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58647) (apply!102 lt!58648 lt!58647))))

(declare-fun lt!59120 () Unit!3534)

(declare-fun choose!729 (ListLongMap!1603 (_ BitVec 64) V!3259 (_ BitVec 64)) Unit!3534)

(assert (=> d!32395 (= lt!59120 (choose!729 lt!58648 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58647))))

(declare-fun e!73939 () Bool)

(assert (=> d!32395 e!73939))

(declare-fun res!56059 () Bool)

(assert (=> d!32395 (=> (not res!56059) (not e!73939))))

(assert (=> d!32395 (= res!56059 (contains!844 lt!58648 lt!58647))))

(assert (=> d!32395 (= (addApplyDifferent!78 lt!58648 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58647) lt!59120)))

(declare-fun b!113807 () Bool)

(assert (=> b!113807 (= e!73939 (not (= lt!58647 lt!58635)))))

(assert (= (and d!32395 res!56059) b!113807))

(assert (=> d!32395 m!129343))

(assert (=> d!32395 m!129343))

(assert (=> d!32395 m!129365))

(declare-fun m!130299 () Bool)

(assert (=> d!32395 m!130299))

(declare-fun m!130301 () Bool)

(assert (=> d!32395 m!130301))

(assert (=> d!32395 m!129351))

(assert (=> b!113135 d!32395))

(declare-fun d!32397 () Bool)

(assert (=> d!32397 (= (apply!102 lt!58653 lt!58641) (get!1371 (getValueByKey!159 (toList!817 lt!58653) lt!58641)))))

(declare-fun bs!4664 () Bool)

(assert (= bs!4664 d!32397))

(declare-fun m!130303 () Bool)

(assert (=> bs!4664 m!130303))

(assert (=> bs!4664 m!130303))

(declare-fun m!130305 () Bool)

(assert (=> bs!4664 m!130305))

(assert (=> b!113135 d!32397))

(declare-fun d!32399 () Bool)

(declare-fun e!73940 () Bool)

(assert (=> d!32399 e!73940))

(declare-fun res!56061 () Bool)

(assert (=> d!32399 (=> (not res!56061) (not e!73940))))

(declare-fun lt!59122 () ListLongMap!1603)

(assert (=> d!32399 (= res!56061 (contains!844 lt!59122 (_1!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59123 () List!1660)

(assert (=> d!32399 (= lt!59122 (ListLongMap!1604 lt!59123))))

(declare-fun lt!59124 () Unit!3534)

(declare-fun lt!59121 () Unit!3534)

(assert (=> d!32399 (= lt!59124 lt!59121)))

(assert (=> d!32399 (= (getValueByKey!159 lt!59123 (_1!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32399 (= lt!59121 (lemmaContainsTupThenGetReturnValue!77 lt!59123 (_1!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32399 (= lt!59123 (insertStrictlySorted!79 (toList!817 lt!58648) (_1!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32399 (= (+!152 lt!58648 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59122)))

(declare-fun b!113808 () Bool)

(declare-fun res!56060 () Bool)

(assert (=> b!113808 (=> (not res!56060) (not e!73940))))

(assert (=> b!113808 (= res!56060 (= (getValueByKey!159 (toList!817 lt!59122) (_1!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113809 () Bool)

(assert (=> b!113809 (= e!73940 (contains!846 (toList!817 lt!59122) (tuple2!2445 lt!58635 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32399 res!56061) b!113808))

(assert (= (and b!113808 res!56060) b!113809))

(declare-fun m!130307 () Bool)

(assert (=> d!32399 m!130307))

(declare-fun m!130309 () Bool)

(assert (=> d!32399 m!130309))

(declare-fun m!130311 () Bool)

(assert (=> d!32399 m!130311))

(declare-fun m!130313 () Bool)

(assert (=> d!32399 m!130313))

(declare-fun m!130315 () Bool)

(assert (=> b!113808 m!130315))

(declare-fun m!130317 () Bool)

(assert (=> b!113809 m!130317))

(assert (=> b!113135 d!32399))

(declare-fun d!32401 () Bool)

(declare-fun e!73942 () Bool)

(assert (=> d!32401 e!73942))

(declare-fun res!56062 () Bool)

(assert (=> d!32401 (=> res!56062 e!73942)))

(declare-fun lt!59125 () Bool)

(assert (=> d!32401 (= res!56062 (not lt!59125))))

(declare-fun lt!59128 () Bool)

(assert (=> d!32401 (= lt!59125 lt!59128)))

(declare-fun lt!59126 () Unit!3534)

(declare-fun e!73941 () Unit!3534)

(assert (=> d!32401 (= lt!59126 e!73941)))

(declare-fun c!20431 () Bool)

(assert (=> d!32401 (= c!20431 lt!59128)))

(assert (=> d!32401 (= lt!59128 (containsKey!163 (toList!817 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58638))))

(assert (=> d!32401 (= (contains!844 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58638) lt!59125)))

(declare-fun b!113810 () Bool)

(declare-fun lt!59127 () Unit!3534)

(assert (=> b!113810 (= e!73941 lt!59127)))

(assert (=> b!113810 (= lt!59127 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 (toList!817 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58638))))

(assert (=> b!113810 (isDefined!113 (getValueByKey!159 (toList!817 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58638))))

(declare-fun b!113811 () Bool)

(declare-fun Unit!3563 () Unit!3534)

(assert (=> b!113811 (= e!73941 Unit!3563)))

(declare-fun b!113812 () Bool)

(assert (=> b!113812 (= e!73942 (isDefined!113 (getValueByKey!159 (toList!817 (+!152 lt!58633 (tuple2!2445 lt!58639 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58638)))))

(assert (= (and d!32401 c!20431) b!113810))

(assert (= (and d!32401 (not c!20431)) b!113811))

(assert (= (and d!32401 (not res!56062)) b!113812))

(declare-fun m!130319 () Bool)

(assert (=> d!32401 m!130319))

(declare-fun m!130321 () Bool)

(assert (=> b!113810 m!130321))

(declare-fun m!130323 () Bool)

(assert (=> b!113810 m!130323))

(assert (=> b!113810 m!130323))

(declare-fun m!130325 () Bool)

(assert (=> b!113810 m!130325))

(assert (=> b!113812 m!130323))

(assert (=> b!113812 m!130323))

(assert (=> b!113812 m!130325))

(assert (=> b!113135 d!32401))

(declare-fun d!32403 () Bool)

(assert (=> d!32403 (= (apply!102 lt!58648 lt!58647) (get!1371 (getValueByKey!159 (toList!817 lt!58648) lt!58647)))))

(declare-fun bs!4665 () Bool)

(assert (= bs!4665 d!32403))

(declare-fun m!130327 () Bool)

(assert (=> bs!4665 m!130327))

(assert (=> bs!4665 m!130327))

(declare-fun m!130329 () Bool)

(assert (=> bs!4665 m!130329))

(assert (=> b!113135 d!32403))

(declare-fun d!32405 () Bool)

(assert (=> d!32405 (= (apply!102 (+!152 lt!58644 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58654) (apply!102 lt!58644 lt!58654))))

(declare-fun lt!59129 () Unit!3534)

(assert (=> d!32405 (= lt!59129 (choose!729 lt!58644 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58654))))

(declare-fun e!73943 () Bool)

(assert (=> d!32405 e!73943))

(declare-fun res!56063 () Bool)

(assert (=> d!32405 (=> (not res!56063) (not e!73943))))

(assert (=> d!32405 (= res!56063 (contains!844 lt!58644 lt!58654))))

(assert (=> d!32405 (= (addApplyDifferent!78 lt!58644 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58654) lt!59129)))

(declare-fun b!113813 () Bool)

(assert (=> b!113813 (= e!73943 (not (= lt!58654 lt!58645)))))

(assert (= (and d!32405 res!56063) b!113813))

(assert (=> d!32405 m!129355))

(assert (=> d!32405 m!129355))

(assert (=> d!32405 m!129367))

(declare-fun m!130331 () Bool)

(assert (=> d!32405 m!130331))

(declare-fun m!130333 () Bool)

(assert (=> d!32405 m!130333))

(assert (=> d!32405 m!129363))

(assert (=> b!113135 d!32405))

(declare-fun d!32407 () Bool)

(declare-fun e!73944 () Bool)

(assert (=> d!32407 e!73944))

(declare-fun res!56065 () Bool)

(assert (=> d!32407 (=> (not res!56065) (not e!73944))))

(declare-fun lt!59131 () ListLongMap!1603)

(assert (=> d!32407 (= res!56065 (contains!844 lt!59131 (_1!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59132 () List!1660)

(assert (=> d!32407 (= lt!59131 (ListLongMap!1604 lt!59132))))

(declare-fun lt!59133 () Unit!3534)

(declare-fun lt!59130 () Unit!3534)

(assert (=> d!32407 (= lt!59133 lt!59130)))

(assert (=> d!32407 (= (getValueByKey!159 lt!59132 (_1!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32407 (= lt!59130 (lemmaContainsTupThenGetReturnValue!77 lt!59132 (_1!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32407 (= lt!59132 (insertStrictlySorted!79 (toList!817 lt!58653) (_1!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32407 (= (+!152 lt!58653 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59131)))

(declare-fun b!113814 () Bool)

(declare-fun res!56064 () Bool)

(assert (=> b!113814 (=> (not res!56064) (not e!73944))))

(assert (=> b!113814 (= res!56064 (= (getValueByKey!159 (toList!817 lt!59131) (_1!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113815 () Bool)

(assert (=> b!113815 (= e!73944 (contains!846 (toList!817 lt!59131) (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32407 res!56065) b!113814))

(assert (= (and b!113814 res!56064) b!113815))

(declare-fun m!130335 () Bool)

(assert (=> d!32407 m!130335))

(declare-fun m!130337 () Bool)

(assert (=> d!32407 m!130337))

(declare-fun m!130339 () Bool)

(assert (=> d!32407 m!130339))

(declare-fun m!130341 () Bool)

(assert (=> d!32407 m!130341))

(declare-fun m!130343 () Bool)

(assert (=> b!113814 m!130343))

(declare-fun m!130345 () Bool)

(assert (=> b!113815 m!130345))

(assert (=> b!113135 d!32407))

(declare-fun d!32409 () Bool)

(assert (=> d!32409 (= (apply!102 (+!152 lt!58653 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58641) (apply!102 lt!58653 lt!58641))))

(declare-fun lt!59134 () Unit!3534)

(assert (=> d!32409 (= lt!59134 (choose!729 lt!58653 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58641))))

(declare-fun e!73945 () Bool)

(assert (=> d!32409 e!73945))

(declare-fun res!56066 () Bool)

(assert (=> d!32409 (=> (not res!56066) (not e!73945))))

(assert (=> d!32409 (= res!56066 (contains!844 lt!58653 lt!58641))))

(assert (=> d!32409 (= (addApplyDifferent!78 lt!58653 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))) lt!58641) lt!59134)))

(declare-fun b!113816 () Bool)

(assert (=> b!113816 (= e!73945 (not (= lt!58641 lt!58651)))))

(assert (= (and d!32409 res!56066) b!113816))

(assert (=> d!32409 m!129339))

(assert (=> d!32409 m!129339))

(assert (=> d!32409 m!129341))

(declare-fun m!130347 () Bool)

(assert (=> d!32409 m!130347))

(declare-fun m!130349 () Bool)

(assert (=> d!32409 m!130349))

(assert (=> d!32409 m!129361))

(assert (=> b!113135 d!32409))

(declare-fun d!32411 () Bool)

(declare-fun e!73946 () Bool)

(assert (=> d!32411 e!73946))

(declare-fun res!56068 () Bool)

(assert (=> d!32411 (=> (not res!56068) (not e!73946))))

(declare-fun lt!59136 () ListLongMap!1603)

(assert (=> d!32411 (= res!56068 (contains!844 lt!59136 (_1!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(declare-fun lt!59137 () List!1660)

(assert (=> d!32411 (= lt!59136 (ListLongMap!1604 lt!59137))))

(declare-fun lt!59138 () Unit!3534)

(declare-fun lt!59135 () Unit!3534)

(assert (=> d!32411 (= lt!59138 lt!59135)))

(assert (=> d!32411 (= (getValueByKey!159 lt!59137 (_1!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32411 (= lt!59135 (lemmaContainsTupThenGetReturnValue!77 lt!59137 (_1!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32411 (= lt!59137 (insertStrictlySorted!79 (toList!817 lt!58644) (_1!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) (_2!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))))))

(assert (=> d!32411 (= (+!152 lt!58644 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!59136)))

(declare-fun b!113817 () Bool)

(declare-fun res!56067 () Bool)

(assert (=> b!113817 (=> (not res!56067) (not e!73946))))

(assert (=> b!113817 (= res!56067 (= (getValueByKey!159 (toList!817 lt!59136) (_1!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992)))))) (Some!164 (_2!1232 (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))))

(declare-fun b!113818 () Bool)

(assert (=> b!113818 (= e!73946 (contains!846 (toList!817 lt!59136) (tuple2!2445 lt!58645 (minValue!2529 (v!2958 (underlying!376 thiss!992))))))))

(assert (= (and d!32411 res!56068) b!113817))

(assert (= (and b!113817 res!56067) b!113818))

(declare-fun m!130351 () Bool)

(assert (=> d!32411 m!130351))

(declare-fun m!130353 () Bool)

(assert (=> d!32411 m!130353))

(declare-fun m!130355 () Bool)

(assert (=> d!32411 m!130355))

(declare-fun m!130357 () Bool)

(assert (=> d!32411 m!130357))

(declare-fun m!130359 () Bool)

(assert (=> b!113817 m!130359))

(declare-fun m!130361 () Bool)

(assert (=> b!113818 m!130361))

(assert (=> b!113135 d!32411))

(declare-fun d!32413 () Bool)

(assert (=> d!32413 (= (apply!102 lt!58644 lt!58654) (get!1371 (getValueByKey!159 (toList!817 lt!58644) lt!58654)))))

(declare-fun bs!4666 () Bool)

(assert (= bs!4666 d!32413))

(declare-fun m!130363 () Bool)

(assert (=> bs!4666 m!130363))

(assert (=> bs!4666 m!130363))

(declare-fun m!130365 () Bool)

(assert (=> bs!4666 m!130365))

(assert (=> b!113135 d!32413))

(declare-fun d!32415 () Bool)

(assert (=> d!32415 (= (apply!102 (+!152 lt!58653 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992))))) lt!58641) (get!1371 (getValueByKey!159 (toList!817 (+!152 lt!58653 (tuple2!2445 lt!58651 (zeroValue!2529 (v!2958 (underlying!376 thiss!992)))))) lt!58641)))))

(declare-fun bs!4667 () Bool)

(assert (= bs!4667 d!32415))

(declare-fun m!130367 () Bool)

(assert (=> bs!4667 m!130367))

(assert (=> bs!4667 m!130367))

(declare-fun m!130369 () Bool)

(assert (=> bs!4667 m!130369))

(assert (=> b!113135 d!32415))

(declare-fun d!32417 () Bool)

(assert (=> d!32417 (= (+!152 (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)) (tuple2!2445 #b1000000000000000000000000000000000000000000000000000000000000000 lt!58491)) (getCurrentListMap!493 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) lt!58741 (zeroValue!2529 newMap!16) lt!58491 #b00000000000000000000000000000000 (defaultEntry!2661 newMap!16)))))

(declare-fun lt!59141 () Unit!3534)

(declare-fun choose!730 (array!4416 array!4418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3259 V!3259 V!3259 Int) Unit!3534)

(assert (=> d!32417 (= lt!59141 (choose!730 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58741 (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) lt!58491 (defaultEntry!2661 newMap!16)))))

(assert (=> d!32417 (validMask!0 (mask!6845 newMap!16))))

(assert (=> d!32417 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!51 (_keys!4381 newMap!16) (_values!2644 newMap!16) (mask!6845 newMap!16) (extraKeys!2452 newMap!16) lt!58741 (zeroValue!2529 newMap!16) (minValue!2529 newMap!16) lt!58491 (defaultEntry!2661 newMap!16)) lt!59141)))

(declare-fun bs!4668 () Bool)

(assert (= bs!4668 d!32417))

(assert (=> bs!4668 m!129333))

(declare-fun m!130371 () Bool)

(assert (=> bs!4668 m!130371))

(declare-fun m!130373 () Bool)

(assert (=> bs!4668 m!130373))

(declare-fun m!130375 () Bool)

(assert (=> bs!4668 m!130375))

(assert (=> bs!4668 m!129333))

(assert (=> bs!4668 m!129651))

(assert (=> b!113284 d!32417))

(declare-fun b!113819 () Bool)

(declare-fun e!73948 () Bool)

(assert (=> b!113819 (= e!73948 tp_is_empty!2709)))

(declare-fun mapNonEmpty!4061 () Bool)

(declare-fun mapRes!4061 () Bool)

(declare-fun tp!10127 () Bool)

(assert (=> mapNonEmpty!4061 (= mapRes!4061 (and tp!10127 e!73948))))

(declare-fun mapKey!4061 () (_ BitVec 32))

(declare-fun mapRest!4061 () (Array (_ BitVec 32) ValueCell!1011))

(declare-fun mapValue!4061 () ValueCell!1011)

(assert (=> mapNonEmpty!4061 (= mapRest!4060 (store mapRest!4061 mapKey!4061 mapValue!4061))))

(declare-fun b!113820 () Bool)

(declare-fun e!73947 () Bool)

(assert (=> b!113820 (= e!73947 tp_is_empty!2709)))

(declare-fun condMapEmpty!4061 () Bool)

(declare-fun mapDefault!4061 () ValueCell!1011)

(assert (=> mapNonEmpty!4060 (= condMapEmpty!4061 (= mapRest!4060 ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4061)))))

(assert (=> mapNonEmpty!4060 (= tp!10126 (and e!73947 mapRes!4061))))

(declare-fun mapIsEmpty!4061 () Bool)

(assert (=> mapIsEmpty!4061 mapRes!4061))

(assert (= (and mapNonEmpty!4060 condMapEmpty!4061) mapIsEmpty!4061))

(assert (= (and mapNonEmpty!4060 (not condMapEmpty!4061)) mapNonEmpty!4061))

(assert (= (and mapNonEmpty!4061 ((_ is ValueCellFull!1011) mapValue!4061)) b!113819))

(assert (= (and mapNonEmpty!4060 ((_ is ValueCellFull!1011) mapDefault!4061)) b!113820))

(declare-fun m!130377 () Bool)

(assert (=> mapNonEmpty!4061 m!130377))

(declare-fun b!113821 () Bool)

(declare-fun e!73950 () Bool)

(assert (=> b!113821 (= e!73950 tp_is_empty!2709)))

(declare-fun mapNonEmpty!4062 () Bool)

(declare-fun mapRes!4062 () Bool)

(declare-fun tp!10128 () Bool)

(assert (=> mapNonEmpty!4062 (= mapRes!4062 (and tp!10128 e!73950))))

(declare-fun mapValue!4062 () ValueCell!1011)

(declare-fun mapRest!4062 () (Array (_ BitVec 32) ValueCell!1011))

(declare-fun mapKey!4062 () (_ BitVec 32))

(assert (=> mapNonEmpty!4062 (= mapRest!4059 (store mapRest!4062 mapKey!4062 mapValue!4062))))

(declare-fun b!113822 () Bool)

(declare-fun e!73949 () Bool)

(assert (=> b!113822 (= e!73949 tp_is_empty!2709)))

(declare-fun condMapEmpty!4062 () Bool)

(declare-fun mapDefault!4062 () ValueCell!1011)

(assert (=> mapNonEmpty!4059 (= condMapEmpty!4062 (= mapRest!4059 ((as const (Array (_ BitVec 32) ValueCell!1011)) mapDefault!4062)))))

(assert (=> mapNonEmpty!4059 (= tp!10125 (and e!73949 mapRes!4062))))

(declare-fun mapIsEmpty!4062 () Bool)

(assert (=> mapIsEmpty!4062 mapRes!4062))

(assert (= (and mapNonEmpty!4059 condMapEmpty!4062) mapIsEmpty!4062))

(assert (= (and mapNonEmpty!4059 (not condMapEmpty!4062)) mapNonEmpty!4062))

(assert (= (and mapNonEmpty!4062 ((_ is ValueCellFull!1011) mapValue!4062)) b!113821))

(assert (= (and mapNonEmpty!4059 ((_ is ValueCellFull!1011) mapDefault!4062)) b!113822))

(declare-fun m!130379 () Bool)

(assert (=> mapNonEmpty!4062 m!130379))

(declare-fun b_lambda!5111 () Bool)

(assert (= b_lambda!5101 (or (and b!112934 b_free!2585 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 newMap!16))) (and b!112921 b_free!2587) b_lambda!5111)))

(declare-fun b_lambda!5113 () Bool)

(assert (= b_lambda!5107 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5113)))

(declare-fun b_lambda!5115 () Bool)

(assert (= b_lambda!5105 (or (and b!112934 b_free!2585) (and b!112921 b_free!2587 (= (defaultEntry!2661 newMap!16) (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))))) b_lambda!5115)))

(declare-fun b_lambda!5117 () Bool)

(assert (= b_lambda!5103 (or (and b!112934 b_free!2585 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 newMap!16))) (and b!112921 b_free!2587) b_lambda!5117)))

(declare-fun b_lambda!5119 () Bool)

(assert (= b_lambda!5099 (or (and b!112934 b_free!2585 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 newMap!16))) (and b!112921 b_free!2587) b_lambda!5119)))

(declare-fun b_lambda!5121 () Bool)

(assert (= b_lambda!5109 (or (and b!112934 b_free!2585 (= (defaultEntry!2661 (v!2958 (underlying!376 thiss!992))) (defaultEntry!2661 newMap!16))) (and b!112921 b_free!2587) b_lambda!5121)))

(check-sat (not b!113783) (not b_lambda!5115) (not bm!12289) tp_is_empty!2709 (not b!113564) (not d!32337) (not b!113798) (not b!113359) (not d!32327) (not b!113703) (not b!113398) (not d!32209) (not d!32395) (not b!113726) (not b!113502) (not b!113443) (not bm!12277) (not b_next!2587) (not b!113808) (not d!32299) (not d!32205) (not b!113383) (not d!32347) (not d!32323) (not b!113596) (not b!113393) (not d!32297) (not d!32229) (not b!113676) (not d!32271) (not b!113734) (not d!32285) (not b!113775) (not d!32375) (not b!113316) (not b!113607) (not bm!12291) (not d!32295) (not b!113369) (not b!113506) (not b!113814) (not b!113470) (not b!113670) (not b!113817) (not b!113695) (not d!32363) (not b!113497) (not bm!12228) (not b!113379) (not b!113363) (not b!113436) (not d!32217) (not b!113331) (not b!113667) (not d!32345) (not b!113441) (not d!32211) (not bm!12276) (not b!113337) (not b!113553) (not b!113575) (not b!113579) (not b!113381) (not d!32261) (not d!32279) (not bm!12268) (not d!32399) (not b!113618) (not b!113541) (not b!113475) (not b!113779) (not b!113477) (not b!113782) (not b!113414) (not bm!12282) (not b!113487) (not b!113715) (not b!113681) (not b!113812) (not b!113424) (not d!32383) (not d!32415) (not b!113377) (not b!113615) (not b!113690) (not b!113567) (not d!32371) (not b!113709) (not b!113818) (not d!32397) (not b!113641) (not b_lambda!5121) (not b!113815) (not b!113451) (not bm!12281) (not b_lambda!5097) (not d!32413) (not b!113573) (not b!113673) (not d!32417) (not b!113542) (not b!113688) (not b!113320) (not b!113318) (not b!113397) (not bm!12264) (not bm!12269) (not bm!12257) (not b!113668) (not b!113679) (not b!113799) (not d!32239) (not bm!12266) (not b_lambda!5113) (not d!32369) (not b!113809) (not b!113386) (not b!113544) (not d!32353) (not bm!12248) (not d!32359) (not d!32301) (not d!32275) (not b!113426) (not b!113468) (not b!113389) (not b_lambda!5093) (not b!113405) (not b!113761) (not bm!12239) (not bm!12261) (not d!32321) (not b!113764) (not d!32281) (not b!113704) (not d!32293) b_and!6999 (not d!32249) (not d!32389) (not b!113770) (not b!113710) (not b!113476) (not b!113376) (not b!113810) (not b!113447) (not b!113391) b_and!6997 (not b!113714) (not b!113563) (not bm!12227) (not d!32409) (not b!113496) (not b!113801) (not b!113763) (not b!113439) (not d!32373) (not b!113364) (not b!113422) (not b!113636) (not b!113595) (not b!113415) (not b!113663) (not d!32253) (not b_lambda!5085) (not d!32333) (not d!32381) (not b!113434) (not b!113338) (not b!113547) (not b!113603) (not b!113411) (not d!32233) (not b_lambda!5117) (not bm!12283) (not d!32319) (not b!113543) (not b!113489) (not d!32223) (not b!113442) (not d!32267) (not bm!12258) (not b!113767) (not b!113597) (not b!113455) (not b!113720) (not d!32241) (not b!113370) (not d!32255) (not bm!12270) (not b!113569) (not bm!12260) (not d!32313) (not bm!12244) (not d!32355) (not d!32361) (not bm!12290) (not b!113598) (not bm!12242) (not d!32273) (not b!113802) (not bm!12278) (not b!113724) (not d!32325) (not b!113581) (not b!113621) (not b!113453) (not d!32257) (not b!113769) (not b!113577) (not b!113624) (not b!113609) (not d!32329) (not d!32387) (not b_next!2585) (not b!113317) (not d!32343) (not b!113793) (not mapNonEmpty!4061) (not bm!12236) (not b!113712) (not b!113378) (not b!113491) (not b!113623) (not d!32357) (not d!32411) (not d!32287) (not b!113666) (not b!113602) (not b!113428) (not d!32331) (not b!113639) (not b!113701) (not b!113568) (not b!113392) (not b!113705) (not d!32291) (not b!113375) (not b!113565) (not d!32407) (not b!113482) (not b!113504) (not d!32277) (not b!113374) (not bm!12243) (not b!113672) (not b!113490) (not b!113594) (not d!32405) (not b!113592) (not b!113466) (not b_lambda!5111) (not b!113473) (not d!32203) (not d!32365) (not b!113728) (not b!113765) (not b!113736) (not b!113683) (not b!113694) (not b!113601) (not d!32317) (not b!113416) (not b!113689) (not bm!12237) (not d!32265) (not d!32401) (not b!113766) (not bm!12273) (not b!113794) (not b!113671) (not b!113420) (not d!32341) (not b!113722) (not d!32391) (not b!113716) (not b!113686) (not mapNonEmpty!4062) (not d!32403) (not b!113657) (not b_lambda!5119) (not d!32235) (not d!32219) (not b!113619) (not d!32393) (not d!32251) (not b!113796) (not b!113481) (not b_lambda!5095) (not bm!12235) (not b!113384) (not d!32311) (not b!113463) (not d!32351) (not b!113772) (not d!32225) (not d!32269) (not b!113638) (not b!113669) (not b!113616) (not b!113781) (not bm!12231) (not bm!12265) (not bm!12232) (not b!113449) (not b!113606) (not d!32367))
(check-sat b_and!6997 b_and!6999 (not b_next!2585) (not b_next!2587))
