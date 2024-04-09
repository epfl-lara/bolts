; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10150 () Bool)

(assert start!10150)

(declare-fun b!77188 () Bool)

(declare-fun b_free!2165 () Bool)

(declare-fun b_next!2165 () Bool)

(assert (=> b!77188 (= b_free!2165 (not b_next!2165))))

(declare-fun tp!8694 () Bool)

(declare-fun b_and!4725 () Bool)

(assert (=> b!77188 (= tp!8694 b_and!4725)))

(declare-fun b!77196 () Bool)

(declare-fun b_free!2167 () Bool)

(declare-fun b_next!2167 () Bool)

(assert (=> b!77196 (= b_free!2167 (not b_next!2167))))

(declare-fun tp!8692 () Bool)

(declare-fun b_and!4727 () Bool)

(assert (=> b!77196 (= tp!8692 b_and!4727)))

(declare-fun b!77182 () Bool)

(declare-fun res!40551 () Bool)

(declare-fun e!50443 () Bool)

(assert (=> b!77182 (=> (not res!40551) (not e!50443))))

(declare-datatypes ((V!2979 0))(
  ( (V!2980 (val!1294 Int)) )
))
(declare-datatypes ((array!3948 0))(
  ( (array!3949 (arr!1882 (Array (_ BitVec 32) (_ BitVec 64))) (size!2123 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!906 0))(
  ( (ValueCellFull!906 (v!2579 V!2979)) (EmptyCell!906) )
))
(declare-datatypes ((array!3950 0))(
  ( (array!3951 (arr!1883 (Array (_ BitVec 32) ValueCell!906)) (size!2124 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!720 0))(
  ( (LongMapFixedSize!721 (defaultEntry!2263 Int) (mask!6254 (_ BitVec 32)) (extraKeys!2114 (_ BitVec 32)) (zeroValue!2161 V!2979) (minValue!2161 V!2979) (_size!409 (_ BitVec 32)) (_keys!3923 array!3948) (_values!2246 array!3950) (_vacant!409 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!720)

(declare-datatypes ((Cell!528 0))(
  ( (Cell!529 (v!2580 LongMapFixedSize!720)) )
))
(declare-datatypes ((LongMap!528 0))(
  ( (LongMap!529 (underlying!275 Cell!528)) )
))
(declare-fun thiss!992 () LongMap!528)

(assert (=> b!77182 (= res!40551 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6254 newMap!16)) (_size!409 (v!2580 (underlying!275 thiss!992)))))))

(declare-fun mapNonEmpty!3263 () Bool)

(declare-fun mapRes!3263 () Bool)

(declare-fun tp!8691 () Bool)

(declare-fun e!50439 () Bool)

(assert (=> mapNonEmpty!3263 (= mapRes!3263 (and tp!8691 e!50439))))

(declare-fun mapValue!3263 () ValueCell!906)

(declare-fun mapKey!3264 () (_ BitVec 32))

(declare-fun mapRest!3263 () (Array (_ BitVec 32) ValueCell!906))

(assert (=> mapNonEmpty!3263 (= (arr!1883 (_values!2246 newMap!16)) (store mapRest!3263 mapKey!3264 mapValue!3263))))

(declare-fun b!77183 () Bool)

(declare-fun e!50435 () Bool)

(declare-fun tp_is_empty!2499 () Bool)

(assert (=> b!77183 (= e!50435 tp_is_empty!2499)))

(declare-fun b!77184 () Bool)

(declare-fun e!50437 () Bool)

(assert (=> b!77184 (= e!50437 tp_is_empty!2499)))

(declare-fun b!77185 () Bool)

(declare-fun e!50429 () Bool)

(assert (=> b!77185 (= e!50429 (and e!50435 mapRes!3263))))

(declare-fun condMapEmpty!3264 () Bool)

(declare-fun mapDefault!3264 () ValueCell!906)

(assert (=> b!77185 (= condMapEmpty!3264 (= (arr!1883 (_values!2246 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!906)) mapDefault!3264)))))

(declare-fun b!77186 () Bool)

(declare-fun e!50436 () Bool)

(declare-fun e!50434 () Bool)

(assert (=> b!77186 (= e!50436 e!50434)))

(declare-fun b!77187 () Bool)

(declare-fun e!50427 () Bool)

(assert (=> b!77187 (= e!50427 tp_is_empty!2499)))

(declare-fun mapNonEmpty!3264 () Bool)

(declare-fun mapRes!3264 () Bool)

(declare-fun tp!8693 () Bool)

(assert (=> mapNonEmpty!3264 (= mapRes!3264 (and tp!8693 e!50427))))

(declare-fun mapValue!3264 () ValueCell!906)

(declare-fun mapRest!3264 () (Array (_ BitVec 32) ValueCell!906))

(declare-fun mapKey!3263 () (_ BitVec 32))

(assert (=> mapNonEmpty!3264 (= (arr!1883 (_values!2246 (v!2580 (underlying!275 thiss!992)))) (store mapRest!3264 mapKey!3263 mapValue!3264))))

(declare-fun res!40549 () Bool)

(assert (=> start!10150 (=> (not res!40549) (not e!50443))))

(declare-fun valid!307 (LongMap!528) Bool)

(assert (=> start!10150 (= res!40549 (valid!307 thiss!992))))

(assert (=> start!10150 e!50443))

(declare-fun e!50438 () Bool)

(assert (=> start!10150 e!50438))

(assert (=> start!10150 true))

(declare-fun e!50433 () Bool)

(assert (=> start!10150 e!50433))

(declare-fun e!50430 () Bool)

(declare-fun array_inv!1119 (array!3948) Bool)

(declare-fun array_inv!1120 (array!3950) Bool)

(assert (=> b!77188 (= e!50434 (and tp!8694 tp_is_empty!2499 (array_inv!1119 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) (array_inv!1120 (_values!2246 (v!2580 (underlying!275 thiss!992)))) e!50430))))

(declare-fun mapIsEmpty!3263 () Bool)

(assert (=> mapIsEmpty!3263 mapRes!3264))

(declare-fun b!77189 () Bool)

(assert (=> b!77189 (= e!50439 tp_is_empty!2499)))

(declare-fun mapIsEmpty!3264 () Bool)

(assert (=> mapIsEmpty!3264 mapRes!3263))

(declare-fun b!77190 () Bool)

(assert (=> b!77190 (= e!50430 (and e!50437 mapRes!3264))))

(declare-fun condMapEmpty!3263 () Bool)

(declare-fun mapDefault!3263 () ValueCell!906)

(assert (=> b!77190 (= condMapEmpty!3263 (= (arr!1883 (_values!2246 (v!2580 (underlying!275 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!906)) mapDefault!3263)))))

(declare-fun b!77191 () Bool)

(declare-datatypes ((Unit!2239 0))(
  ( (Unit!2240) )
))
(declare-fun e!50432 () Unit!2239)

(declare-fun Unit!2241 () Unit!2239)

(assert (=> b!77191 (= e!50432 Unit!2241)))

(declare-fun lt!35253 () Unit!2239)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!59 (array!3948 array!3950 (_ BitVec 32) (_ BitVec 32) V!2979 V!2979 (_ BitVec 64) (_ BitVec 32) Int) Unit!2239)

(assert (=> b!77191 (= lt!35253 (lemmaListMapContainsThenArrayContainsFrom!59 (_keys!3923 (v!2580 (underlying!275 thiss!992))) (_values!2246 (v!2580 (underlying!275 thiss!992))) (mask!6254 (v!2580 (underlying!275 thiss!992))) (extraKeys!2114 (v!2580 (underlying!275 thiss!992))) (zeroValue!2161 (v!2580 (underlying!275 thiss!992))) (minValue!2161 (v!2580 (underlying!275 thiss!992))) (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2263 (v!2580 (underlying!275 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77191 (arrayContainsKey!0 (_keys!3923 (v!2580 (underlying!275 thiss!992))) (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35247 () Unit!2239)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3948 (_ BitVec 32) (_ BitVec 32)) Unit!2239)

(assert (=> b!77191 (= lt!35247 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3923 (v!2580 (underlying!275 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1522 0))(
  ( (Nil!1519) (Cons!1518 (h!2106 (_ BitVec 64)) (t!5148 List!1522)) )
))
(declare-fun arrayNoDuplicates!0 (array!3948 (_ BitVec 32) List!1522) Bool)

(assert (=> b!77191 (arrayNoDuplicates!0 (_keys!3923 (v!2580 (underlying!275 thiss!992))) from!355 Nil!1519)))

(declare-fun lt!35251 () Unit!2239)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3948 (_ BitVec 32) (_ BitVec 64) List!1522) Unit!2239)

(assert (=> b!77191 (= lt!35251 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3923 (v!2580 (underlying!275 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) (Cons!1518 (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) Nil!1519)))))

(assert (=> b!77191 false))

(declare-fun b!77192 () Bool)

(declare-fun e!50441 () Bool)

(declare-fun e!50442 () Bool)

(assert (=> b!77192 (= e!50441 e!50442)))

(declare-fun res!40546 () Bool)

(assert (=> b!77192 (=> (not res!40546) (not e!50442))))

(assert (=> b!77192 (= res!40546 (and (not (= (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!35245 () V!2979)

(declare-fun get!1178 (ValueCell!906 V!2979) V!2979)

(declare-fun dynLambda!341 (Int (_ BitVec 64)) V!2979)

(assert (=> b!77192 (= lt!35245 (get!1178 (select (arr!1883 (_values!2246 (v!2580 (underlying!275 thiss!992)))) from!355) (dynLambda!341 (defaultEntry!2263 (v!2580 (underlying!275 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!77193 () Bool)

(declare-fun res!40550 () Bool)

(assert (=> b!77193 (=> (not res!40550) (not e!50443))))

(assert (=> b!77193 (= res!40550 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2123 (_keys!3923 (v!2580 (underlying!275 thiss!992)))))))))

(declare-fun b!77194 () Bool)

(assert (=> b!77194 (= e!50438 e!50436)))

(declare-fun b!77195 () Bool)

(assert (=> b!77195 (= e!50443 e!50441)))

(declare-fun res!40547 () Bool)

(assert (=> b!77195 (=> (not res!40547) (not e!50441))))

(declare-datatypes ((tuple2!2170 0))(
  ( (tuple2!2171 (_1!1095 (_ BitVec 64)) (_2!1095 V!2979)) )
))
(declare-datatypes ((List!1523 0))(
  ( (Nil!1520) (Cons!1519 (h!2107 tuple2!2170) (t!5149 List!1523)) )
))
(declare-datatypes ((ListLongMap!1453 0))(
  ( (ListLongMap!1454 (toList!742 List!1523)) )
))
(declare-fun lt!35248 () ListLongMap!1453)

(declare-fun lt!35243 () ListLongMap!1453)

(assert (=> b!77195 (= res!40547 (= lt!35248 lt!35243))))

(declare-fun map!1172 (LongMapFixedSize!720) ListLongMap!1453)

(assert (=> b!77195 (= lt!35243 (map!1172 newMap!16))))

(declare-fun getCurrentListMap!432 (array!3948 array!3950 (_ BitVec 32) (_ BitVec 32) V!2979 V!2979 (_ BitVec 32) Int) ListLongMap!1453)

(assert (=> b!77195 (= lt!35248 (getCurrentListMap!432 (_keys!3923 (v!2580 (underlying!275 thiss!992))) (_values!2246 (v!2580 (underlying!275 thiss!992))) (mask!6254 (v!2580 (underlying!275 thiss!992))) (extraKeys!2114 (v!2580 (underlying!275 thiss!992))) (zeroValue!2161 (v!2580 (underlying!275 thiss!992))) (minValue!2161 (v!2580 (underlying!275 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2263 (v!2580 (underlying!275 thiss!992)))))))

(assert (=> b!77196 (= e!50433 (and tp!8692 tp_is_empty!2499 (array_inv!1119 (_keys!3923 newMap!16)) (array_inv!1120 (_values!2246 newMap!16)) e!50429))))

(declare-fun b!77197 () Bool)

(declare-fun res!40548 () Bool)

(assert (=> b!77197 (=> (not res!40548) (not e!50443))))

(declare-fun valid!308 (LongMapFixedSize!720) Bool)

(assert (=> b!77197 (= res!40548 (valid!308 newMap!16))))

(declare-fun b!77198 () Bool)

(declare-fun Unit!2242 () Unit!2239)

(assert (=> b!77198 (= e!50432 Unit!2242)))

(declare-fun b!77199 () Bool)

(declare-fun e!50431 () Bool)

(assert (=> b!77199 (= e!50442 e!50431)))

(declare-fun res!40545 () Bool)

(assert (=> b!77199 (=> (not res!40545) (not e!50431))))

(declare-datatypes ((tuple2!2172 0))(
  ( (tuple2!2173 (_1!1096 Bool) (_2!1096 LongMapFixedSize!720)) )
))
(declare-fun lt!35250 () tuple2!2172)

(assert (=> b!77199 (= res!40545 (and (_1!1096 lt!35250) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!35252 () Unit!2239)

(assert (=> b!77199 (= lt!35252 e!50432)))

(declare-fun c!11800 () Bool)

(declare-fun contains!740 (ListLongMap!1453 (_ BitVec 64)) Bool)

(assert (=> b!77199 (= c!11800 (contains!740 lt!35243 (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355)))))

(declare-fun update!108 (LongMapFixedSize!720 (_ BitVec 64) V!2979) tuple2!2172)

(assert (=> b!77199 (= lt!35250 (update!108 newMap!16 (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) lt!35245))))

(declare-fun b!77200 () Bool)

(assert (=> b!77200 (= e!50431 (not true))))

(declare-fun lt!35246 () ListLongMap!1453)

(declare-fun lt!35249 () tuple2!2170)

(declare-fun lt!35242 () tuple2!2170)

(declare-fun +!104 (ListLongMap!1453 tuple2!2170) ListLongMap!1453)

(assert (=> b!77200 (= (+!104 (+!104 lt!35246 lt!35249) lt!35242) (+!104 (+!104 lt!35246 lt!35242) lt!35249))))

(assert (=> b!77200 (= lt!35242 (tuple2!2171 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2161 (v!2580 (underlying!275 thiss!992)))))))

(assert (=> b!77200 (= lt!35249 (tuple2!2171 (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) lt!35245))))

(declare-fun lt!35244 () Unit!2239)

(declare-fun addCommutativeForDiffKeys!23 (ListLongMap!1453 (_ BitVec 64) V!2979 (_ BitVec 64) V!2979) Unit!2239)

(assert (=> b!77200 (= lt!35244 (addCommutativeForDiffKeys!23 lt!35246 (select (arr!1882 (_keys!3923 (v!2580 (underlying!275 thiss!992)))) from!355) lt!35245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2161 (v!2580 (underlying!275 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!68 (array!3948 array!3950 (_ BitVec 32) (_ BitVec 32) V!2979 V!2979 (_ BitVec 32) Int) ListLongMap!1453)

(assert (=> b!77200 (= lt!35246 (getCurrentListMapNoExtraKeys!68 (_keys!3923 (v!2580 (underlying!275 thiss!992))) (_values!2246 (v!2580 (underlying!275 thiss!992))) (mask!6254 (v!2580 (underlying!275 thiss!992))) (extraKeys!2114 (v!2580 (underlying!275 thiss!992))) (zeroValue!2161 (v!2580 (underlying!275 thiss!992))) (minValue!2161 (v!2580 (underlying!275 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2263 (v!2580 (underlying!275 thiss!992)))))))

(assert (= (and start!10150 res!40549) b!77193))

(assert (= (and b!77193 res!40550) b!77197))

(assert (= (and b!77197 res!40548) b!77182))

(assert (= (and b!77182 res!40551) b!77195))

(assert (= (and b!77195 res!40547) b!77192))

(assert (= (and b!77192 res!40546) b!77199))

(assert (= (and b!77199 c!11800) b!77191))

(assert (= (and b!77199 (not c!11800)) b!77198))

(assert (= (and b!77199 res!40545) b!77200))

(assert (= (and b!77190 condMapEmpty!3263) mapIsEmpty!3263))

(assert (= (and b!77190 (not condMapEmpty!3263)) mapNonEmpty!3264))

(get-info :version)

(assert (= (and mapNonEmpty!3264 ((_ is ValueCellFull!906) mapValue!3264)) b!77187))

(assert (= (and b!77190 ((_ is ValueCellFull!906) mapDefault!3263)) b!77184))

(assert (= b!77188 b!77190))

(assert (= b!77186 b!77188))

(assert (= b!77194 b!77186))

(assert (= start!10150 b!77194))

(assert (= (and b!77185 condMapEmpty!3264) mapIsEmpty!3264))

(assert (= (and b!77185 (not condMapEmpty!3264)) mapNonEmpty!3263))

(assert (= (and mapNonEmpty!3263 ((_ is ValueCellFull!906) mapValue!3263)) b!77189))

(assert (= (and b!77185 ((_ is ValueCellFull!906) mapDefault!3264)) b!77183))

(assert (= b!77196 b!77185))

(assert (= start!10150 b!77196))

(declare-fun b_lambda!3469 () Bool)

(assert (=> (not b_lambda!3469) (not b!77192)))

(declare-fun t!5145 () Bool)

(declare-fun tb!1597 () Bool)

(assert (=> (and b!77188 (= (defaultEntry!2263 (v!2580 (underlying!275 thiss!992))) (defaultEntry!2263 (v!2580 (underlying!275 thiss!992)))) t!5145) tb!1597))

(declare-fun result!2777 () Bool)

(assert (=> tb!1597 (= result!2777 tp_is_empty!2499)))

(assert (=> b!77192 t!5145))

(declare-fun b_and!4729 () Bool)

(assert (= b_and!4725 (and (=> t!5145 result!2777) b_and!4729)))

(declare-fun t!5147 () Bool)

(declare-fun tb!1599 () Bool)

(assert (=> (and b!77196 (= (defaultEntry!2263 newMap!16) (defaultEntry!2263 (v!2580 (underlying!275 thiss!992)))) t!5147) tb!1599))

(declare-fun result!2781 () Bool)

(assert (= result!2781 result!2777))

(assert (=> b!77192 t!5147))

(declare-fun b_and!4731 () Bool)

(assert (= b_and!4727 (and (=> t!5147 result!2781) b_and!4731)))

(declare-fun m!77099 () Bool)

(assert (=> b!77192 m!77099))

(declare-fun m!77101 () Bool)

(assert (=> b!77192 m!77101))

(declare-fun m!77103 () Bool)

(assert (=> b!77192 m!77103))

(assert (=> b!77192 m!77101))

(assert (=> b!77192 m!77103))

(declare-fun m!77105 () Bool)

(assert (=> b!77192 m!77105))

(declare-fun m!77107 () Bool)

(assert (=> b!77196 m!77107))

(declare-fun m!77109 () Bool)

(assert (=> b!77196 m!77109))

(declare-fun m!77111 () Bool)

(assert (=> b!77195 m!77111))

(declare-fun m!77113 () Bool)

(assert (=> b!77195 m!77113))

(declare-fun m!77115 () Bool)

(assert (=> b!77188 m!77115))

(declare-fun m!77117 () Bool)

(assert (=> b!77188 m!77117))

(declare-fun m!77119 () Bool)

(assert (=> b!77197 m!77119))

(declare-fun m!77121 () Bool)

(assert (=> start!10150 m!77121))

(declare-fun m!77123 () Bool)

(assert (=> b!77191 m!77123))

(declare-fun m!77125 () Bool)

(assert (=> b!77191 m!77125))

(assert (=> b!77191 m!77099))

(declare-fun m!77127 () Bool)

(assert (=> b!77191 m!77127))

(assert (=> b!77191 m!77099))

(assert (=> b!77191 m!77099))

(declare-fun m!77129 () Bool)

(assert (=> b!77191 m!77129))

(assert (=> b!77191 m!77099))

(declare-fun m!77131 () Bool)

(assert (=> b!77191 m!77131))

(declare-fun m!77133 () Bool)

(assert (=> mapNonEmpty!3264 m!77133))

(declare-fun m!77135 () Bool)

(assert (=> mapNonEmpty!3263 m!77135))

(declare-fun m!77137 () Bool)

(assert (=> b!77200 m!77137))

(declare-fun m!77139 () Bool)

(assert (=> b!77200 m!77139))

(declare-fun m!77141 () Bool)

(assert (=> b!77200 m!77141))

(assert (=> b!77200 m!77099))

(declare-fun m!77143 () Bool)

(assert (=> b!77200 m!77143))

(assert (=> b!77200 m!77099))

(assert (=> b!77200 m!77139))

(assert (=> b!77200 m!77137))

(declare-fun m!77145 () Bool)

(assert (=> b!77200 m!77145))

(declare-fun m!77147 () Bool)

(assert (=> b!77200 m!77147))

(assert (=> b!77199 m!77099))

(assert (=> b!77199 m!77099))

(declare-fun m!77149 () Bool)

(assert (=> b!77199 m!77149))

(assert (=> b!77199 m!77099))

(declare-fun m!77151 () Bool)

(assert (=> b!77199 m!77151))

(check-sat (not start!10150) b_and!4729 (not b!77199) (not b_lambda!3469) (not b!77192) (not b!77196) (not b!77191) (not mapNonEmpty!3263) (not b!77197) tp_is_empty!2499 b_and!4731 (not b!77188) (not b_next!2167) (not b!77200) (not mapNonEmpty!3264) (not b_next!2165) (not b!77195))
(check-sat b_and!4729 b_and!4731 (not b_next!2165) (not b_next!2167))
