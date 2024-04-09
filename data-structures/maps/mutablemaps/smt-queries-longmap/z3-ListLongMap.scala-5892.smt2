; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75968 () Bool)

(assert start!75968)

(declare-fun b!893205 () Bool)

(declare-fun b_free!15855 () Bool)

(declare-fun b_next!15855 () Bool)

(assert (=> b!893205 (= b_free!15855 (not b_next!15855))))

(declare-fun tp!55540 () Bool)

(declare-fun b_and!26137 () Bool)

(assert (=> b!893205 (= tp!55540 b_and!26137)))

(declare-fun b!893204 () Bool)

(declare-fun e!498852 () Bool)

(declare-fun tp_is_empty!18183 () Bool)

(assert (=> b!893204 (= e!498852 tp_is_empty!18183)))

(declare-fun res!604994 () Bool)

(declare-fun e!498850 () Bool)

(assert (=> start!75968 (=> (not res!604994) (not e!498850))))

(declare-datatypes ((array!52336 0))(
  ( (array!52337 (arr!25168 (Array (_ BitVec 32) (_ BitVec 64))) (size!25613 (_ BitVec 32))) )
))
(declare-datatypes ((V!29209 0))(
  ( (V!29210 (val!9142 Int)) )
))
(declare-datatypes ((ValueCell!8610 0))(
  ( (ValueCellFull!8610 (v!11620 V!29209)) (EmptyCell!8610) )
))
(declare-datatypes ((array!52338 0))(
  ( (array!52339 (arr!25169 (Array (_ BitVec 32) ValueCell!8610)) (size!25614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4236 0))(
  ( (LongMapFixedSize!4237 (defaultEntry!5318 Int) (mask!25842 (_ BitVec 32)) (extraKeys!5014 (_ BitVec 32)) (zeroValue!5118 V!29209) (minValue!5118 V!29209) (_size!2173 (_ BitVec 32)) (_keys!10001 array!52336) (_values!5305 array!52338) (_vacant!2173 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4236)

(declare-fun valid!1627 (LongMapFixedSize!4236) Bool)

(assert (=> start!75968 (= res!604994 (valid!1627 thiss!1181))))

(assert (=> start!75968 e!498850))

(declare-fun e!498854 () Bool)

(assert (=> start!75968 e!498854))

(assert (=> start!75968 true))

(declare-fun mapIsEmpty!28835 () Bool)

(declare-fun mapRes!28835 () Bool)

(assert (=> mapIsEmpty!28835 mapRes!28835))

(declare-fun e!498849 () Bool)

(declare-fun array_inv!19742 (array!52336) Bool)

(declare-fun array_inv!19743 (array!52338) Bool)

(assert (=> b!893205 (= e!498854 (and tp!55540 tp_is_empty!18183 (array_inv!19742 (_keys!10001 thiss!1181)) (array_inv!19743 (_values!5305 thiss!1181)) e!498849))))

(declare-fun b!893206 () Bool)

(declare-fun res!604995 () Bool)

(assert (=> b!893206 (=> (not res!604995) (not e!498850))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!893206 (= res!604995 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!893207 () Bool)

(declare-fun e!498853 () Bool)

(assert (=> b!893207 (= e!498850 e!498853)))

(declare-fun c!94013 () Bool)

(declare-fun contains!4369 (LongMapFixedSize!4236 (_ BitVec 64)) Bool)

(assert (=> b!893207 (= c!94013 (contains!4369 thiss!1181 key!785))))

(declare-fun b!893208 () Bool)

(declare-fun e!498848 () Bool)

(assert (=> b!893208 (= e!498849 (and e!498848 mapRes!28835))))

(declare-fun condMapEmpty!28835 () Bool)

(declare-fun mapDefault!28835 () ValueCell!8610)

(assert (=> b!893208 (= condMapEmpty!28835 (= (arr!25169 (_values!5305 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8610)) mapDefault!28835)))))

(declare-fun b!893209 () Bool)

(assert (=> b!893209 (= e!498848 tp_is_empty!18183)))

(declare-fun b!893210 () Bool)

(declare-datatypes ((Option!454 0))(
  ( (Some!453 (v!11621 V!29209)) (None!452) )
))
(declare-fun get!13259 (Option!454) V!29209)

(declare-datatypes ((tuple2!12038 0))(
  ( (tuple2!12039 (_1!6029 (_ BitVec 64)) (_2!6029 V!29209)) )
))
(declare-datatypes ((List!17877 0))(
  ( (Nil!17874) (Cons!17873 (h!19004 tuple2!12038) (t!25206 List!17877)) )
))
(declare-fun getValueByKey!448 (List!17877 (_ BitVec 64)) Option!454)

(declare-datatypes ((ListLongMap!10749 0))(
  ( (ListLongMap!10750 (toList!5390 List!17877)) )
))
(declare-fun map!12215 (LongMapFixedSize!4236) ListLongMap!10749)

(assert (=> b!893210 (= e!498853 (not (= (zeroValue!5118 thiss!1181) (get!13259 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785)))))))

(declare-fun b!893211 () Bool)

(declare-fun dynLambda!1297 (Int (_ BitVec 64)) V!29209)

(assert (=> b!893211 (= e!498853 (not (= (zeroValue!5118 thiss!1181) (dynLambda!1297 (defaultEntry!5318 thiss!1181) key!785))))))

(declare-fun mapNonEmpty!28835 () Bool)

(declare-fun tp!55541 () Bool)

(assert (=> mapNonEmpty!28835 (= mapRes!28835 (and tp!55541 e!498852))))

(declare-fun mapKey!28835 () (_ BitVec 32))

(declare-fun mapRest!28835 () (Array (_ BitVec 32) ValueCell!8610))

(declare-fun mapValue!28835 () ValueCell!8610)

(assert (=> mapNonEmpty!28835 (= (arr!25169 (_values!5305 thiss!1181)) (store mapRest!28835 mapKey!28835 mapValue!28835))))

(assert (= (and start!75968 res!604994) b!893206))

(assert (= (and b!893206 res!604995) b!893207))

(assert (= (and b!893207 c!94013) b!893210))

(assert (= (and b!893207 (not c!94013)) b!893211))

(assert (= (and b!893208 condMapEmpty!28835) mapIsEmpty!28835))

(assert (= (and b!893208 (not condMapEmpty!28835)) mapNonEmpty!28835))

(get-info :version)

(assert (= (and mapNonEmpty!28835 ((_ is ValueCellFull!8610) mapValue!28835)) b!893204))

(assert (= (and b!893208 ((_ is ValueCellFull!8610) mapDefault!28835)) b!893209))

(assert (= b!893205 b!893208))

(assert (= start!75968 b!893205))

(declare-fun b_lambda!12943 () Bool)

(assert (=> (not b_lambda!12943) (not b!893211)))

(declare-fun t!25205 () Bool)

(declare-fun tb!5179 () Bool)

(assert (=> (and b!893205 (= (defaultEntry!5318 thiss!1181) (defaultEntry!5318 thiss!1181)) t!25205) tb!5179))

(declare-fun result!10065 () Bool)

(assert (=> tb!5179 (= result!10065 tp_is_empty!18183)))

(assert (=> b!893211 t!25205))

(declare-fun b_and!26139 () Bool)

(assert (= b_and!26137 (and (=> t!25205 result!10065) b_and!26139)))

(declare-fun m!831375 () Bool)

(assert (=> mapNonEmpty!28835 m!831375))

(declare-fun m!831377 () Bool)

(assert (=> start!75968 m!831377))

(declare-fun m!831379 () Bool)

(assert (=> b!893211 m!831379))

(declare-fun m!831381 () Bool)

(assert (=> b!893205 m!831381))

(declare-fun m!831383 () Bool)

(assert (=> b!893205 m!831383))

(declare-fun m!831385 () Bool)

(assert (=> b!893210 m!831385))

(declare-fun m!831387 () Bool)

(assert (=> b!893210 m!831387))

(assert (=> b!893210 m!831387))

(declare-fun m!831389 () Bool)

(assert (=> b!893210 m!831389))

(declare-fun m!831391 () Bool)

(assert (=> b!893207 m!831391))

(check-sat (not b!893207) tp_is_empty!18183 (not mapNonEmpty!28835) (not b!893205) (not b_lambda!12943) (not start!75968) b_and!26139 (not b!893210) (not b_next!15855))
(check-sat b_and!26139 (not b_next!15855))
(get-model)

(declare-fun b_lambda!12947 () Bool)

(assert (= b_lambda!12943 (or (and b!893205 b_free!15855) b_lambda!12947)))

(check-sat (not b!893207) tp_is_empty!18183 (not mapNonEmpty!28835) (not b!893205) (not start!75968) b_and!26139 (not b!893210) (not b_lambda!12947) (not b_next!15855))
(check-sat b_and!26139 (not b_next!15855))
(get-model)

(declare-fun d!110225 () Bool)

(assert (=> d!110225 (= (get!13259 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785)) (v!11621 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785)))))

(assert (=> b!893210 d!110225))

(declare-fun b!893249 () Bool)

(declare-fun e!498880 () Option!454)

(declare-fun e!498881 () Option!454)

(assert (=> b!893249 (= e!498880 e!498881)))

(declare-fun c!94022 () Bool)

(assert (=> b!893249 (= c!94022 (and ((_ is Cons!17873) (toList!5390 (map!12215 thiss!1181))) (not (= (_1!6029 (h!19004 (toList!5390 (map!12215 thiss!1181)))) key!785))))))

(declare-fun b!893250 () Bool)

(assert (=> b!893250 (= e!498881 (getValueByKey!448 (t!25206 (toList!5390 (map!12215 thiss!1181))) key!785))))

(declare-fun b!893251 () Bool)

(assert (=> b!893251 (= e!498881 None!452)))

(declare-fun b!893248 () Bool)

(assert (=> b!893248 (= e!498880 (Some!453 (_2!6029 (h!19004 (toList!5390 (map!12215 thiss!1181))))))))

(declare-fun d!110227 () Bool)

(declare-fun c!94021 () Bool)

(assert (=> d!110227 (= c!94021 (and ((_ is Cons!17873) (toList!5390 (map!12215 thiss!1181))) (= (_1!6029 (h!19004 (toList!5390 (map!12215 thiss!1181)))) key!785)))))

(assert (=> d!110227 (= (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785) e!498880)))

(assert (= (and d!110227 c!94021) b!893248))

(assert (= (and d!110227 (not c!94021)) b!893249))

(assert (= (and b!893249 c!94022) b!893250))

(assert (= (and b!893249 (not c!94022)) b!893251))

(declare-fun m!831411 () Bool)

(assert (=> b!893250 m!831411))

(assert (=> b!893210 d!110227))

(declare-fun d!110229 () Bool)

(declare-fun getCurrentListMap!2637 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 32) Int) ListLongMap!10749)

(assert (=> d!110229 (= (map!12215 thiss!1181) (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun bs!25065 () Bool)

(assert (= bs!25065 d!110229))

(declare-fun m!831413 () Bool)

(assert (=> bs!25065 m!831413))

(assert (=> b!893210 d!110229))

(declare-fun d!110231 () Bool)

(assert (=> d!110231 (= (array_inv!19742 (_keys!10001 thiss!1181)) (bvsge (size!25613 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893205 d!110231))

(declare-fun d!110233 () Bool)

(assert (=> d!110233 (= (array_inv!19743 (_values!5305 thiss!1181)) (bvsge (size!25614 (_values!5305 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893205 d!110233))

(declare-fun d!110235 () Bool)

(declare-fun res!605008 () Bool)

(declare-fun e!498884 () Bool)

(assert (=> d!110235 (=> (not res!605008) (not e!498884))))

(declare-fun simpleValid!296 (LongMapFixedSize!4236) Bool)

(assert (=> d!110235 (= res!605008 (simpleValid!296 thiss!1181))))

(assert (=> d!110235 (= (valid!1627 thiss!1181) e!498884)))

(declare-fun b!893258 () Bool)

(declare-fun res!605009 () Bool)

(assert (=> b!893258 (=> (not res!605009) (not e!498884))))

(declare-fun arrayCountValidKeys!0 (array!52336 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893258 (= res!605009 (= (arrayCountValidKeys!0 (_keys!10001 thiss!1181) #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))) (_size!2173 thiss!1181)))))

(declare-fun b!893259 () Bool)

(declare-fun res!605010 () Bool)

(assert (=> b!893259 (=> (not res!605010) (not e!498884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52336 (_ BitVec 32)) Bool)

(assert (=> b!893259 (= res!605010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893260 () Bool)

(declare-datatypes ((List!17879 0))(
  ( (Nil!17876) (Cons!17875 (h!19006 (_ BitVec 64)) (t!25210 List!17879)) )
))
(declare-fun arrayNoDuplicates!0 (array!52336 (_ BitVec 32) List!17879) Bool)

(assert (=> b!893260 (= e!498884 (arrayNoDuplicates!0 (_keys!10001 thiss!1181) #b00000000000000000000000000000000 Nil!17876))))

(assert (= (and d!110235 res!605008) b!893258))

(assert (= (and b!893258 res!605009) b!893259))

(assert (= (and b!893259 res!605010) b!893260))

(declare-fun m!831415 () Bool)

(assert (=> d!110235 m!831415))

(declare-fun m!831417 () Bool)

(assert (=> b!893258 m!831417))

(declare-fun m!831419 () Bool)

(assert (=> b!893259 m!831419))

(declare-fun m!831421 () Bool)

(assert (=> b!893260 m!831421))

(assert (=> start!75968 d!110235))

(declare-fun b!893281 () Bool)

(declare-fun e!498896 () Bool)

(assert (=> b!893281 (= e!498896 false)))

(declare-fun c!94037 () Bool)

(declare-fun call!39624 () Bool)

(assert (=> b!893281 (= c!94037 call!39624)))

(declare-datatypes ((Unit!30397 0))(
  ( (Unit!30398) )
))
(declare-fun lt!403609 () Unit!30397)

(declare-fun e!498899 () Unit!30397)

(assert (=> b!893281 (= lt!403609 e!498899)))

(declare-fun d!110237 () Bool)

(declare-fun lt!403610 () Bool)

(declare-fun contains!4371 (ListLongMap!10749 (_ BitVec 64)) Bool)

(assert (=> d!110237 (= lt!403610 (contains!4371 (map!12215 thiss!1181) key!785))))

(declare-fun e!498898 () Bool)

(assert (=> d!110237 (= lt!403610 e!498898)))

(declare-fun c!94035 () Bool)

(assert (=> d!110237 (= c!94035 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110237 (valid!1627 thiss!1181)))

(assert (=> d!110237 (= (contains!4369 thiss!1181 key!785) lt!403610)))

(declare-fun bm!39619 () Bool)

(declare-fun call!39623 () ListLongMap!10749)

(assert (=> bm!39619 (= call!39623 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun b!893282 () Bool)

(assert (=> b!893282 (= e!498896 true)))

(declare-fun lt!403615 () Unit!30397)

(declare-datatypes ((SeekEntryResult!8857 0))(
  ( (MissingZero!8857 (index!37798 (_ BitVec 32))) (Found!8857 (index!37799 (_ BitVec 32))) (Intermediate!8857 (undefined!9669 Bool) (index!37800 (_ BitVec 32)) (x!75950 (_ BitVec 32))) (Undefined!8857) (MissingVacant!8857 (index!37801 (_ BitVec 32))) )
))
(declare-fun lt!403613 () SeekEntryResult!8857)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52336 (_ BitVec 64) (_ BitVec 32)) Unit!30397)

(assert (=> b!893282 (= lt!403615 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) key!785 (index!37799 lt!403613)))))

(declare-fun call!39622 () Bool)

(assert (=> b!893282 call!39622))

(declare-fun lt!403611 () Unit!30397)

(assert (=> b!893282 (= lt!403611 lt!403615)))

(declare-fun lt!403603 () Unit!30397)

(declare-fun lemmaValidKeyInArrayIsInListMap!230 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 32) Int) Unit!30397)

(assert (=> b!893282 (= lt!403603 (lemmaValidKeyInArrayIsInListMap!230 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (index!37799 lt!403613) (defaultEntry!5318 thiss!1181)))))

(assert (=> b!893282 call!39624))

(declare-fun lt!403612 () Unit!30397)

(assert (=> b!893282 (= lt!403612 lt!403603)))

(declare-fun b!893283 () Bool)

(declare-fun e!498897 () Bool)

(assert (=> b!893283 (= e!498897 (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!893284 () Bool)

(declare-fun Unit!30399 () Unit!30397)

(assert (=> b!893284 (= e!498899 Unit!30399)))

(declare-fun b!893285 () Bool)

(assert (=> b!893285 (= e!498898 e!498897)))

(declare-fun c!94036 () Bool)

(assert (=> b!893285 (= c!94036 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!893286 () Bool)

(assert (=> b!893286 (= e!498898 (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!893287 () Bool)

(assert (=> b!893287 false))

(declare-fun lt!403605 () Unit!30397)

(declare-fun lt!403616 () Unit!30397)

(assert (=> b!893287 (= lt!403605 lt!403616)))

(declare-fun lt!403617 () SeekEntryResult!8857)

(declare-fun lt!403606 () (_ BitVec 32))

(assert (=> b!893287 (and ((_ is Found!8857) lt!403617) (= (index!37799 lt!403617) lt!403606))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52336 (_ BitVec 32)) SeekEntryResult!8857)

(assert (=> b!893287 (= lt!403617 (seekEntry!0 key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52336 (_ BitVec 32)) Unit!30397)

(assert (=> b!893287 (= lt!403616 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun lt!403614 () Unit!30397)

(declare-fun lt!403607 () Unit!30397)

(assert (=> b!893287 (= lt!403614 lt!403607)))

(assert (=> b!893287 (arrayForallSeekEntryOrOpenFound!0 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30397)

(assert (=> b!893287 (= lt!403607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10001 thiss!1181) (mask!25842 thiss!1181) #b00000000000000000000000000000000 lt!403606))))

(declare-fun arrayScanForKey!0 (array!52336 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893287 (= lt!403606 (arrayScanForKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!403608 () Unit!30397)

(declare-fun lt!403604 () Unit!30397)

(assert (=> b!893287 (= lt!403608 lt!403604)))

(declare-fun e!498895 () Bool)

(assert (=> b!893287 e!498895))

(declare-fun c!94033 () Bool)

(assert (=> b!893287 (= c!94033 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!164 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 64) Int) Unit!30397)

(assert (=> b!893287 (= lt!403604 (lemmaKeyInListMapIsInArray!164 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) key!785 (defaultEntry!5318 thiss!1181)))))

(declare-fun Unit!30400 () Unit!30397)

(assert (=> b!893287 (= e!498899 Unit!30400)))

(declare-fun b!893288 () Bool)

(declare-fun c!94034 () Bool)

(assert (=> b!893288 (= c!94034 ((_ is Found!8857) lt!403613))))

(assert (=> b!893288 (= lt!403613 (seekEntry!0 key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> b!893288 (= e!498897 e!498896)))

(declare-fun bm!39620 () Bool)

(assert (=> bm!39620 (= call!39624 (contains!4371 call!39623 (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun b!893289 () Bool)

(assert (=> b!893289 (= e!498895 call!39622)))

(declare-fun b!893290 () Bool)

(assert (=> b!893290 (= e!498895 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!39621 () Bool)

(declare-fun arrayContainsKey!0 (array!52336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39621 (= call!39622 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000))))

(assert (= (and d!110237 c!94035) b!893286))

(assert (= (and d!110237 (not c!94035)) b!893285))

(assert (= (and b!893285 c!94036) b!893283))

(assert (= (and b!893285 (not c!94036)) b!893288))

(assert (= (and b!893288 c!94034) b!893282))

(assert (= (and b!893288 (not c!94034)) b!893281))

(assert (= (and b!893281 c!94037) b!893287))

(assert (= (and b!893281 (not c!94037)) b!893284))

(assert (= (and b!893287 c!94033) b!893289))

(assert (= (and b!893287 (not c!94033)) b!893290))

(assert (= (or b!893282 b!893289) bm!39621))

(assert (= (or b!893282 b!893281) bm!39619))

(assert (= (or b!893282 b!893281) bm!39620))

(declare-fun m!831423 () Bool)

(assert (=> bm!39621 m!831423))

(assert (=> d!110237 m!831385))

(assert (=> d!110237 m!831385))

(declare-fun m!831425 () Bool)

(assert (=> d!110237 m!831425))

(assert (=> d!110237 m!831377))

(declare-fun m!831427 () Bool)

(assert (=> bm!39620 m!831427))

(declare-fun m!831429 () Bool)

(assert (=> bm!39620 m!831429))

(declare-fun m!831431 () Bool)

(assert (=> b!893287 m!831431))

(declare-fun m!831433 () Bool)

(assert (=> b!893287 m!831433))

(declare-fun m!831435 () Bool)

(assert (=> b!893287 m!831435))

(declare-fun m!831437 () Bool)

(assert (=> b!893287 m!831437))

(declare-fun m!831439 () Bool)

(assert (=> b!893287 m!831439))

(declare-fun m!831441 () Bool)

(assert (=> b!893287 m!831441))

(declare-fun m!831443 () Bool)

(assert (=> b!893282 m!831443))

(declare-fun m!831445 () Bool)

(assert (=> b!893282 m!831445))

(assert (=> bm!39619 m!831413))

(assert (=> b!893288 m!831431))

(assert (=> b!893207 d!110237))

(declare-fun b!893297 () Bool)

(declare-fun e!498905 () Bool)

(assert (=> b!893297 (= e!498905 tp_is_empty!18183)))

(declare-fun mapNonEmpty!28841 () Bool)

(declare-fun mapRes!28841 () Bool)

(declare-fun tp!55550 () Bool)

(assert (=> mapNonEmpty!28841 (= mapRes!28841 (and tp!55550 e!498905))))

(declare-fun mapRest!28841 () (Array (_ BitVec 32) ValueCell!8610))

(declare-fun mapKey!28841 () (_ BitVec 32))

(declare-fun mapValue!28841 () ValueCell!8610)

(assert (=> mapNonEmpty!28841 (= mapRest!28835 (store mapRest!28841 mapKey!28841 mapValue!28841))))

(declare-fun mapIsEmpty!28841 () Bool)

(assert (=> mapIsEmpty!28841 mapRes!28841))

(declare-fun b!893298 () Bool)

(declare-fun e!498904 () Bool)

(assert (=> b!893298 (= e!498904 tp_is_empty!18183)))

(declare-fun condMapEmpty!28841 () Bool)

(declare-fun mapDefault!28841 () ValueCell!8610)

(assert (=> mapNonEmpty!28835 (= condMapEmpty!28841 (= mapRest!28835 ((as const (Array (_ BitVec 32) ValueCell!8610)) mapDefault!28841)))))

(assert (=> mapNonEmpty!28835 (= tp!55541 (and e!498904 mapRes!28841))))

(assert (= (and mapNonEmpty!28835 condMapEmpty!28841) mapIsEmpty!28841))

(assert (= (and mapNonEmpty!28835 (not condMapEmpty!28841)) mapNonEmpty!28841))

(assert (= (and mapNonEmpty!28841 ((_ is ValueCellFull!8610) mapValue!28841)) b!893297))

(assert (= (and mapNonEmpty!28835 ((_ is ValueCellFull!8610) mapDefault!28841)) b!893298))

(declare-fun m!831447 () Bool)

(assert (=> mapNonEmpty!28841 m!831447))

(check-sat (not bm!39620) (not b!893288) (not b!893259) (not d!110235) (not b!893260) (not b!893250) b_and!26139 (not b!893287) (not b!893282) (not b_lambda!12947) (not b_next!15855) (not d!110229) tp_is_empty!18183 (not bm!39619) (not d!110237) (not mapNonEmpty!28841) (not b!893258) (not bm!39621))
(check-sat b_and!26139 (not b_next!15855))
(get-model)

(declare-fun d!110239 () Bool)

(declare-fun e!498908 () Bool)

(assert (=> d!110239 e!498908))

(declare-fun c!94040 () Bool)

(assert (=> d!110239 (= c!94040 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!403620 () Unit!30397)

(declare-fun choose!1472 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 64) Int) Unit!30397)

(assert (=> d!110239 (= lt!403620 (choose!1472 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) key!785 (defaultEntry!5318 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110239 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110239 (= (lemmaKeyInListMapIsInArray!164 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) key!785 (defaultEntry!5318 thiss!1181)) lt!403620)))

(declare-fun b!893303 () Bool)

(assert (=> b!893303 (= e!498908 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!893304 () Bool)

(assert (=> b!893304 (= e!498908 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!110239 c!94040) b!893303))

(assert (= (and d!110239 (not c!94040)) b!893304))

(declare-fun m!831449 () Bool)

(assert (=> d!110239 m!831449))

(declare-fun m!831451 () Bool)

(assert (=> d!110239 m!831451))

(assert (=> b!893303 m!831423))

(assert (=> b!893287 d!110239))

(declare-fun b!893317 () Bool)

(declare-fun e!498917 () SeekEntryResult!8857)

(declare-fun e!498916 () SeekEntryResult!8857)

(assert (=> b!893317 (= e!498917 e!498916)))

(declare-fun lt!403632 () (_ BitVec 64))

(declare-fun lt!403631 () SeekEntryResult!8857)

(assert (=> b!893317 (= lt!403632 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403631)))))

(declare-fun c!94048 () Bool)

(assert (=> b!893317 (= c!94048 (= lt!403632 key!785))))

(declare-fun d!110241 () Bool)

(declare-fun lt!403629 () SeekEntryResult!8857)

(assert (=> d!110241 (and (or ((_ is MissingVacant!8857) lt!403629) (not ((_ is Found!8857) lt!403629)) (and (bvsge (index!37799 lt!403629) #b00000000000000000000000000000000) (bvslt (index!37799 lt!403629) (size!25613 (_keys!10001 thiss!1181))))) (not ((_ is MissingVacant!8857) lt!403629)) (or (not ((_ is Found!8857) lt!403629)) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403629)) key!785)))))

(assert (=> d!110241 (= lt!403629 e!498917)))

(declare-fun c!94049 () Bool)

(assert (=> d!110241 (= c!94049 (and ((_ is Intermediate!8857) lt!403631) (undefined!9669 lt!403631)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52336 (_ BitVec 32)) SeekEntryResult!8857)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110241 (= lt!403631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25842 thiss!1181)) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> d!110241 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110241 (= (seekEntry!0 key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403629)))

(declare-fun b!893318 () Bool)

(declare-fun e!498915 () SeekEntryResult!8857)

(assert (=> b!893318 (= e!498915 (MissingZero!8857 (index!37800 lt!403631)))))

(declare-fun b!893319 () Bool)

(assert (=> b!893319 (= e!498917 Undefined!8857)))

(declare-fun b!893320 () Bool)

(assert (=> b!893320 (= e!498916 (Found!8857 (index!37800 lt!403631)))))

(declare-fun b!893321 () Bool)

(declare-fun c!94047 () Bool)

(assert (=> b!893321 (= c!94047 (= lt!403632 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893321 (= e!498916 e!498915)))

(declare-fun b!893322 () Bool)

(declare-fun lt!403630 () SeekEntryResult!8857)

(assert (=> b!893322 (= e!498915 (ite ((_ is MissingVacant!8857) lt!403630) (MissingZero!8857 (index!37801 lt!403630)) lt!403630))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52336 (_ BitVec 32)) SeekEntryResult!8857)

(assert (=> b!893322 (= lt!403630 (seekKeyOrZeroReturnVacant!0 (x!75950 lt!403631) (index!37800 lt!403631) (index!37800 lt!403631) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (= (and d!110241 c!94049) b!893319))

(assert (= (and d!110241 (not c!94049)) b!893317))

(assert (= (and b!893317 c!94048) b!893320))

(assert (= (and b!893317 (not c!94048)) b!893321))

(assert (= (and b!893321 c!94047) b!893318))

(assert (= (and b!893321 (not c!94047)) b!893322))

(declare-fun m!831453 () Bool)

(assert (=> b!893317 m!831453))

(declare-fun m!831455 () Bool)

(assert (=> d!110241 m!831455))

(declare-fun m!831457 () Bool)

(assert (=> d!110241 m!831457))

(assert (=> d!110241 m!831457))

(declare-fun m!831459 () Bool)

(assert (=> d!110241 m!831459))

(assert (=> d!110241 m!831451))

(declare-fun m!831461 () Bool)

(assert (=> b!893322 m!831461))

(assert (=> b!893287 d!110241))

(declare-fun d!110243 () Bool)

(declare-fun lt!403638 () SeekEntryResult!8857)

(assert (=> d!110243 (and ((_ is Found!8857) lt!403638) (= (index!37799 lt!403638) lt!403606))))

(assert (=> d!110243 (= lt!403638 (seekEntry!0 key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun lt!403637 () Unit!30397)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!52336 (_ BitVec 32)) Unit!30397)

(assert (=> d!110243 (= lt!403637 (choose!0 key!785 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> d!110243 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110243 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403637)))

(declare-fun bs!25066 () Bool)

(assert (= bs!25066 d!110243))

(assert (=> bs!25066 m!831431))

(declare-fun m!831463 () Bool)

(assert (=> bs!25066 m!831463))

(assert (=> bs!25066 m!831451))

(assert (=> b!893287 d!110243))

(declare-fun d!110245 () Bool)

(assert (=> d!110245 (arrayForallSeekEntryOrOpenFound!0 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181))))

(declare-fun lt!403641 () Unit!30397)

(declare-fun choose!38 (array!52336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30397)

(assert (=> d!110245 (= lt!403641 (choose!38 (_keys!10001 thiss!1181) (mask!25842 thiss!1181) #b00000000000000000000000000000000 lt!403606))))

(assert (=> d!110245 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110245 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10001 thiss!1181) (mask!25842 thiss!1181) #b00000000000000000000000000000000 lt!403606) lt!403641)))

(declare-fun bs!25067 () Bool)

(assert (= bs!25067 d!110245))

(assert (=> bs!25067 m!831439))

(declare-fun m!831465 () Bool)

(assert (=> bs!25067 m!831465))

(assert (=> bs!25067 m!831451))

(assert (=> b!893287 d!110245))

(declare-fun d!110247 () Bool)

(declare-fun lt!403644 () (_ BitVec 32))

(assert (=> d!110247 (and (or (bvslt lt!403644 #b00000000000000000000000000000000) (bvsge lt!403644 (size!25613 (_keys!10001 thiss!1181))) (and (bvsge lt!403644 #b00000000000000000000000000000000) (bvslt lt!403644 (size!25613 (_keys!10001 thiss!1181))))) (bvsge lt!403644 #b00000000000000000000000000000000) (bvslt lt!403644 (size!25613 (_keys!10001 thiss!1181))) (= (select (arr!25168 (_keys!10001 thiss!1181)) lt!403644) key!785))))

(declare-fun e!498920 () (_ BitVec 32))

(assert (=> d!110247 (= lt!403644 e!498920)))

(declare-fun c!94052 () Bool)

(assert (=> d!110247 (= c!94052 (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))) (bvslt (size!25613 (_keys!10001 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!110247 (= (arrayScanForKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000) lt!403644)))

(declare-fun b!893327 () Bool)

(assert (=> b!893327 (= e!498920 #b00000000000000000000000000000000)))

(declare-fun b!893328 () Bool)

(assert (=> b!893328 (= e!498920 (arrayScanForKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110247 c!94052) b!893327))

(assert (= (and d!110247 (not c!94052)) b!893328))

(declare-fun m!831467 () Bool)

(assert (=> d!110247 m!831467))

(declare-fun m!831469 () Bool)

(assert (=> d!110247 m!831469))

(declare-fun m!831471 () Bool)

(assert (=> b!893328 m!831471))

(assert (=> b!893287 d!110247))

(declare-fun d!110249 () Bool)

(declare-fun res!605015 () Bool)

(declare-fun e!498927 () Bool)

(assert (=> d!110249 (=> res!605015 e!498927)))

(assert (=> d!110249 (= res!605015 (bvsge lt!403606 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110249 (= (arrayForallSeekEntryOrOpenFound!0 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) e!498927)))

(declare-fun b!893337 () Bool)

(declare-fun e!498928 () Bool)

(declare-fun call!39627 () Bool)

(assert (=> b!893337 (= e!498928 call!39627)))

(declare-fun bm!39624 () Bool)

(assert (=> bm!39624 (= call!39627 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403606 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893338 () Bool)

(declare-fun e!498929 () Bool)

(assert (=> b!893338 (= e!498929 e!498928)))

(declare-fun lt!403653 () (_ BitVec 64))

(assert (=> b!893338 (= lt!403653 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606))))

(declare-fun lt!403652 () Unit!30397)

(assert (=> b!893338 (= lt!403652 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403653 lt!403606))))

(assert (=> b!893338 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403653 #b00000000000000000000000000000000)))

(declare-fun lt!403651 () Unit!30397)

(assert (=> b!893338 (= lt!403651 lt!403652)))

(declare-fun res!605016 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52336 (_ BitVec 32)) SeekEntryResult!8857)

(assert (=> b!893338 (= res!605016 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) (Found!8857 lt!403606)))))

(assert (=> b!893338 (=> (not res!605016) (not e!498928))))

(declare-fun b!893339 () Bool)

(assert (=> b!893339 (= e!498929 call!39627)))

(declare-fun b!893340 () Bool)

(assert (=> b!893340 (= e!498927 e!498929)))

(declare-fun c!94055 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!893340 (= c!94055 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606)))))

(assert (= (and d!110249 (not res!605015)) b!893340))

(assert (= (and b!893340 c!94055) b!893338))

(assert (= (and b!893340 (not c!94055)) b!893339))

(assert (= (and b!893338 res!605016) b!893337))

(assert (= (or b!893337 b!893339) bm!39624))

(declare-fun m!831473 () Bool)

(assert (=> bm!39624 m!831473))

(declare-fun m!831475 () Bool)

(assert (=> b!893338 m!831475))

(declare-fun m!831477 () Bool)

(assert (=> b!893338 m!831477))

(declare-fun m!831479 () Bool)

(assert (=> b!893338 m!831479))

(assert (=> b!893338 m!831475))

(declare-fun m!831481 () Bool)

(assert (=> b!893338 m!831481))

(assert (=> b!893340 m!831475))

(assert (=> b!893340 m!831475))

(declare-fun m!831483 () Bool)

(assert (=> b!893340 m!831483))

(assert (=> b!893287 d!110249))

(assert (=> b!893288 d!110241))

(declare-fun d!110251 () Bool)

(declare-fun e!498934 () Bool)

(assert (=> d!110251 e!498934))

(declare-fun res!605019 () Bool)

(assert (=> d!110251 (=> res!605019 e!498934)))

(declare-fun lt!403665 () Bool)

(assert (=> d!110251 (= res!605019 (not lt!403665))))

(declare-fun lt!403663 () Bool)

(assert (=> d!110251 (= lt!403665 lt!403663)))

(declare-fun lt!403664 () Unit!30397)

(declare-fun e!498935 () Unit!30397)

(assert (=> d!110251 (= lt!403664 e!498935)))

(declare-fun c!94058 () Bool)

(assert (=> d!110251 (= c!94058 lt!403663)))

(declare-fun containsKey!423 (List!17877 (_ BitVec 64)) Bool)

(assert (=> d!110251 (= lt!403663 (containsKey!423 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(assert (=> d!110251 (= (contains!4371 call!39623 (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)) lt!403665)))

(declare-fun b!893347 () Bool)

(declare-fun lt!403662 () Unit!30397)

(assert (=> b!893347 (= e!498935 lt!403662)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!318 (List!17877 (_ BitVec 64)) Unit!30397)

(assert (=> b!893347 (= lt!403662 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun isDefined!328 (Option!454) Bool)

(assert (=> b!893347 (isDefined!328 (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun b!893348 () Bool)

(declare-fun Unit!30401 () Unit!30397)

(assert (=> b!893348 (= e!498935 Unit!30401)))

(declare-fun b!893349 () Bool)

(assert (=> b!893349 (= e!498934 (isDefined!328 (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))))))

(assert (= (and d!110251 c!94058) b!893347))

(assert (= (and d!110251 (not c!94058)) b!893348))

(assert (= (and d!110251 (not res!605019)) b!893349))

(declare-fun m!831485 () Bool)

(assert (=> d!110251 m!831485))

(declare-fun m!831487 () Bool)

(assert (=> b!893347 m!831487))

(declare-fun m!831489 () Bool)

(assert (=> b!893347 m!831489))

(assert (=> b!893347 m!831489))

(declare-fun m!831491 () Bool)

(assert (=> b!893347 m!831491))

(assert (=> b!893349 m!831489))

(assert (=> b!893349 m!831489))

(assert (=> b!893349 m!831491))

(assert (=> bm!39620 d!110251))

(declare-fun b!893351 () Bool)

(declare-fun e!498936 () Option!454)

(declare-fun e!498937 () Option!454)

(assert (=> b!893351 (= e!498936 e!498937)))

(declare-fun c!94060 () Bool)

(assert (=> b!893351 (= c!94060 (and ((_ is Cons!17873) (t!25206 (toList!5390 (map!12215 thiss!1181)))) (not (= (_1!6029 (h!19004 (t!25206 (toList!5390 (map!12215 thiss!1181))))) key!785))))))

(declare-fun b!893352 () Bool)

(assert (=> b!893352 (= e!498937 (getValueByKey!448 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181)))) key!785))))

(declare-fun b!893353 () Bool)

(assert (=> b!893353 (= e!498937 None!452)))

(declare-fun b!893350 () Bool)

(assert (=> b!893350 (= e!498936 (Some!453 (_2!6029 (h!19004 (t!25206 (toList!5390 (map!12215 thiss!1181)))))))))

(declare-fun d!110253 () Bool)

(declare-fun c!94059 () Bool)

(assert (=> d!110253 (= c!94059 (and ((_ is Cons!17873) (t!25206 (toList!5390 (map!12215 thiss!1181)))) (= (_1!6029 (h!19004 (t!25206 (toList!5390 (map!12215 thiss!1181))))) key!785)))))

(assert (=> d!110253 (= (getValueByKey!448 (t!25206 (toList!5390 (map!12215 thiss!1181))) key!785) e!498936)))

(assert (= (and d!110253 c!94059) b!893350))

(assert (= (and d!110253 (not c!94059)) b!893351))

(assert (= (and b!893351 c!94060) b!893352))

(assert (= (and b!893351 (not c!94060)) b!893353))

(declare-fun m!831493 () Bool)

(assert (=> b!893352 m!831493))

(assert (=> b!893250 d!110253))

(declare-fun b!893362 () Bool)

(declare-fun res!605028 () Bool)

(declare-fun e!498940 () Bool)

(assert (=> b!893362 (=> (not res!605028) (not e!498940))))

(assert (=> b!893362 (= res!605028 (and (= (size!25614 (_values!5305 thiss!1181)) (bvadd (mask!25842 thiss!1181) #b00000000000000000000000000000001)) (= (size!25613 (_keys!10001 thiss!1181)) (size!25614 (_values!5305 thiss!1181))) (bvsge (_size!2173 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2173 thiss!1181) (bvadd (mask!25842 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!893363 () Bool)

(declare-fun res!605031 () Bool)

(assert (=> b!893363 (=> (not res!605031) (not e!498940))))

(declare-fun size!25617 (LongMapFixedSize!4236) (_ BitVec 32))

(assert (=> b!893363 (= res!605031 (bvsge (size!25617 thiss!1181) (_size!2173 thiss!1181)))))

(declare-fun b!893364 () Bool)

(declare-fun res!605029 () Bool)

(assert (=> b!893364 (=> (not res!605029) (not e!498940))))

(assert (=> b!893364 (= res!605029 (= (size!25617 thiss!1181) (bvadd (_size!2173 thiss!1181) (bvsdiv (bvadd (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!893365 () Bool)

(assert (=> b!893365 (= e!498940 (and (bvsge (extraKeys!5014 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5014 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2173 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun d!110255 () Bool)

(declare-fun res!605030 () Bool)

(assert (=> d!110255 (=> (not res!605030) (not e!498940))))

(assert (=> d!110255 (= res!605030 (validMask!0 (mask!25842 thiss!1181)))))

(assert (=> d!110255 (= (simpleValid!296 thiss!1181) e!498940)))

(assert (= (and d!110255 res!605030) b!893362))

(assert (= (and b!893362 res!605028) b!893363))

(assert (= (and b!893363 res!605031) b!893364))

(assert (= (and b!893364 res!605029) b!893365))

(declare-fun m!831495 () Bool)

(assert (=> b!893363 m!831495))

(assert (=> b!893364 m!831495))

(assert (=> d!110255 m!831451))

(assert (=> d!110235 d!110255))

(declare-fun d!110257 () Bool)

(declare-fun e!498972 () Bool)

(assert (=> d!110257 e!498972))

(declare-fun res!605056 () Bool)

(assert (=> d!110257 (=> (not res!605056) (not e!498972))))

(assert (=> d!110257 (= res!605056 (or (bvsge #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))))

(declare-fun lt!403719 () ListLongMap!10749)

(declare-fun lt!403721 () ListLongMap!10749)

(assert (=> d!110257 (= lt!403719 lt!403721)))

(declare-fun lt!403731 () Unit!30397)

(declare-fun e!498979 () Unit!30397)

(assert (=> d!110257 (= lt!403731 e!498979)))

(declare-fun c!94078 () Bool)

(declare-fun e!498970 () Bool)

(assert (=> d!110257 (= c!94078 e!498970)))

(declare-fun res!605057 () Bool)

(assert (=> d!110257 (=> (not res!605057) (not e!498970))))

(assert (=> d!110257 (= res!605057 (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun e!498974 () ListLongMap!10749)

(assert (=> d!110257 (= lt!403721 e!498974)))

(declare-fun c!94076 () Bool)

(assert (=> d!110257 (= c!94076 (and (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!110257 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110257 (= (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)) lt!403719)))

(declare-fun b!893408 () Bool)

(declare-fun lt!403718 () Unit!30397)

(assert (=> b!893408 (= e!498979 lt!403718)))

(declare-fun lt!403726 () ListLongMap!10749)

(declare-fun getCurrentListMapNoExtraKeys!3291 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 32) Int) ListLongMap!10749)

(assert (=> b!893408 (= lt!403726 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun lt!403728 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403728 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403727 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403727 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403725 () Unit!30397)

(declare-fun addStillContains!329 (ListLongMap!10749 (_ BitVec 64) V!29209 (_ BitVec 64)) Unit!30397)

(assert (=> b!893408 (= lt!403725 (addStillContains!329 lt!403726 lt!403728 (zeroValue!5118 thiss!1181) lt!403727))))

(declare-fun +!2543 (ListLongMap!10749 tuple2!12038) ListLongMap!10749)

(assert (=> b!893408 (contains!4371 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) lt!403727)))

(declare-fun lt!403729 () Unit!30397)

(assert (=> b!893408 (= lt!403729 lt!403725)))

(declare-fun lt!403722 () ListLongMap!10749)

(assert (=> b!893408 (= lt!403722 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun lt!403723 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403723 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403710 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403710 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403716 () Unit!30397)

(declare-fun addApplyDifferent!329 (ListLongMap!10749 (_ BitVec 64) V!29209 (_ BitVec 64)) Unit!30397)

(assert (=> b!893408 (= lt!403716 (addApplyDifferent!329 lt!403722 lt!403723 (minValue!5118 thiss!1181) lt!403710))))

(declare-fun apply!407 (ListLongMap!10749 (_ BitVec 64)) V!29209)

(assert (=> b!893408 (= (apply!407 (+!2543 lt!403722 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) lt!403710) (apply!407 lt!403722 lt!403710))))

(declare-fun lt!403711 () Unit!30397)

(assert (=> b!893408 (= lt!403711 lt!403716)))

(declare-fun lt!403730 () ListLongMap!10749)

(assert (=> b!893408 (= lt!403730 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun lt!403717 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403717 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403720 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403720 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403712 () Unit!30397)

(assert (=> b!893408 (= lt!403712 (addApplyDifferent!329 lt!403730 lt!403717 (zeroValue!5118 thiss!1181) lt!403720))))

(assert (=> b!893408 (= (apply!407 (+!2543 lt!403730 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) lt!403720) (apply!407 lt!403730 lt!403720))))

(declare-fun lt!403715 () Unit!30397)

(assert (=> b!893408 (= lt!403715 lt!403712)))

(declare-fun lt!403724 () ListLongMap!10749)

(assert (=> b!893408 (= lt!403724 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun lt!403713 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403713 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403714 () (_ BitVec 64))

(assert (=> b!893408 (= lt!403714 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893408 (= lt!403718 (addApplyDifferent!329 lt!403724 lt!403713 (minValue!5118 thiss!1181) lt!403714))))

(assert (=> b!893408 (= (apply!407 (+!2543 lt!403724 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) lt!403714) (apply!407 lt!403724 lt!403714))))

(declare-fun call!39643 () ListLongMap!10749)

(declare-fun call!39648 () ListLongMap!10749)

(declare-fun call!39645 () ListLongMap!10749)

(declare-fun call!39646 () ListLongMap!10749)

(declare-fun c!94074 () Bool)

(declare-fun bm!39639 () Bool)

(assert (=> bm!39639 (= call!39645 (+!2543 (ite c!94076 call!39648 (ite c!94074 call!39643 call!39646)) (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(declare-fun bm!39640 () Bool)

(assert (=> bm!39640 (= call!39648 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)))))

(declare-fun b!893409 () Bool)

(declare-fun e!498969 () Bool)

(declare-fun call!39644 () Bool)

(assert (=> b!893409 (= e!498969 (not call!39644))))

(declare-fun b!893410 () Bool)

(declare-fun e!498973 () Bool)

(declare-fun e!498978 () Bool)

(assert (=> b!893410 (= e!498973 e!498978)))

(declare-fun res!605055 () Bool)

(declare-fun call!39647 () Bool)

(assert (=> b!893410 (= res!605055 call!39647)))

(assert (=> b!893410 (=> (not res!605055) (not e!498978))))

(declare-fun b!893411 () Bool)

(assert (=> b!893411 (= e!498978 (= (apply!407 lt!403719 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5118 thiss!1181)))))

(declare-fun b!893412 () Bool)

(assert (=> b!893412 (= e!498973 (not call!39647))))

(declare-fun bm!39641 () Bool)

(assert (=> bm!39641 (= call!39643 call!39648)))

(declare-fun b!893413 () Bool)

(declare-fun e!498967 () Bool)

(assert (=> b!893413 (= e!498969 e!498967)))

(declare-fun res!605054 () Bool)

(assert (=> b!893413 (= res!605054 call!39644)))

(assert (=> b!893413 (=> (not res!605054) (not e!498967))))

(declare-fun b!893414 () Bool)

(assert (=> b!893414 (= e!498972 e!498969)))

(declare-fun c!94077 () Bool)

(assert (=> b!893414 (= c!94077 (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!893415 () Bool)

(declare-fun e!498976 () ListLongMap!10749)

(declare-fun call!39642 () ListLongMap!10749)

(assert (=> b!893415 (= e!498976 call!39642)))

(declare-fun bm!39642 () Bool)

(assert (=> bm!39642 (= call!39647 (contains!4371 lt!403719 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!893416 () Bool)

(declare-fun Unit!30402 () Unit!30397)

(assert (=> b!893416 (= e!498979 Unit!30402)))

(declare-fun bm!39643 () Bool)

(assert (=> bm!39643 (= call!39642 call!39645)))

(declare-fun b!893417 () Bool)

(declare-fun res!605052 () Bool)

(assert (=> b!893417 (=> (not res!605052) (not e!498972))))

(declare-fun e!498975 () Bool)

(assert (=> b!893417 (= res!605052 e!498975)))

(declare-fun res!605053 () Bool)

(assert (=> b!893417 (=> res!605053 e!498975)))

(declare-fun e!498968 () Bool)

(assert (=> b!893417 (= res!605053 (not e!498968))))

(declare-fun res!605051 () Bool)

(assert (=> b!893417 (=> (not res!605051) (not e!498968))))

(assert (=> b!893417 (= res!605051 (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893418 () Bool)

(declare-fun c!94075 () Bool)

(assert (=> b!893418 (= c!94075 (and (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!498977 () ListLongMap!10749)

(assert (=> b!893418 (= e!498977 e!498976)))

(declare-fun b!893419 () Bool)

(assert (=> b!893419 (= e!498976 call!39646)))

(declare-fun b!893420 () Bool)

(assert (=> b!893420 (= e!498977 call!39642)))

(declare-fun b!893421 () Bool)

(declare-fun res!605050 () Bool)

(assert (=> b!893421 (=> (not res!605050) (not e!498972))))

(assert (=> b!893421 (= res!605050 e!498973)))

(declare-fun c!94073 () Bool)

(assert (=> b!893421 (= c!94073 (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!893422 () Bool)

(assert (=> b!893422 (= e!498974 (+!2543 call!39645 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))

(declare-fun b!893423 () Bool)

(assert (=> b!893423 (= e!498968 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893424 () Bool)

(assert (=> b!893424 (= e!498970 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893425 () Bool)

(declare-fun e!498971 () Bool)

(declare-fun get!13261 (ValueCell!8610 V!29209) V!29209)

(assert (=> b!893425 (= e!498971 (= (apply!407 lt!403719 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) (get!13261 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893425 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25614 (_values!5305 thiss!1181))))))

(assert (=> b!893425 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893426 () Bool)

(assert (=> b!893426 (= e!498975 e!498971)))

(declare-fun res!605058 () Bool)

(assert (=> b!893426 (=> (not res!605058) (not e!498971))))

(assert (=> b!893426 (= res!605058 (contains!4371 lt!403719 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!893426 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893427 () Bool)

(assert (=> b!893427 (= e!498974 e!498977)))

(assert (=> b!893427 (= c!94074 (and (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39644 () Bool)

(assert (=> bm!39644 (= call!39646 call!39643)))

(declare-fun b!893428 () Bool)

(assert (=> b!893428 (= e!498967 (= (apply!407 lt!403719 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5118 thiss!1181)))))

(declare-fun bm!39645 () Bool)

(assert (=> bm!39645 (= call!39644 (contains!4371 lt!403719 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!110257 c!94076) b!893422))

(assert (= (and d!110257 (not c!94076)) b!893427))

(assert (= (and b!893427 c!94074) b!893420))

(assert (= (and b!893427 (not c!94074)) b!893418))

(assert (= (and b!893418 c!94075) b!893415))

(assert (= (and b!893418 (not c!94075)) b!893419))

(assert (= (or b!893415 b!893419) bm!39644))

(assert (= (or b!893420 bm!39644) bm!39641))

(assert (= (or b!893420 b!893415) bm!39643))

(assert (= (or b!893422 bm!39641) bm!39640))

(assert (= (or b!893422 bm!39643) bm!39639))

(assert (= (and d!110257 res!605057) b!893424))

(assert (= (and d!110257 c!94078) b!893408))

(assert (= (and d!110257 (not c!94078)) b!893416))

(assert (= (and d!110257 res!605056) b!893417))

(assert (= (and b!893417 res!605051) b!893423))

(assert (= (and b!893417 (not res!605053)) b!893426))

(assert (= (and b!893426 res!605058) b!893425))

(assert (= (and b!893417 res!605052) b!893421))

(assert (= (and b!893421 c!94073) b!893410))

(assert (= (and b!893421 (not c!94073)) b!893412))

(assert (= (and b!893410 res!605055) b!893411))

(assert (= (or b!893410 b!893412) bm!39642))

(assert (= (and b!893421 res!605050) b!893414))

(assert (= (and b!893414 c!94077) b!893413))

(assert (= (and b!893414 (not c!94077)) b!893409))

(assert (= (and b!893413 res!605054) b!893428))

(assert (= (or b!893413 b!893409) bm!39645))

(declare-fun b_lambda!12949 () Bool)

(assert (=> (not b_lambda!12949) (not b!893425)))

(declare-fun t!25212 () Bool)

(declare-fun tb!5183 () Bool)

(assert (=> (and b!893205 (= (defaultEntry!5318 thiss!1181) (defaultEntry!5318 thiss!1181)) t!25212) tb!5183))

(declare-fun result!10075 () Bool)

(assert (=> tb!5183 (= result!10075 tp_is_empty!18183)))

(assert (=> b!893425 t!25212))

(declare-fun b_and!26145 () Bool)

(assert (= b_and!26139 (and (=> t!25212 result!10075) b_and!26145)))

(declare-fun m!831497 () Bool)

(assert (=> b!893422 m!831497))

(declare-fun m!831499 () Bool)

(assert (=> bm!39645 m!831499))

(assert (=> b!893424 m!831469))

(assert (=> b!893424 m!831469))

(declare-fun m!831501 () Bool)

(assert (=> b!893424 m!831501))

(declare-fun m!831503 () Bool)

(assert (=> bm!39640 m!831503))

(assert (=> b!893426 m!831469))

(assert (=> b!893426 m!831469))

(declare-fun m!831505 () Bool)

(assert (=> b!893426 m!831505))

(declare-fun m!831507 () Bool)

(assert (=> bm!39639 m!831507))

(assert (=> b!893423 m!831469))

(assert (=> b!893423 m!831469))

(assert (=> b!893423 m!831501))

(declare-fun m!831509 () Bool)

(assert (=> b!893411 m!831509))

(declare-fun m!831511 () Bool)

(assert (=> b!893425 m!831511))

(assert (=> b!893425 m!831469))

(declare-fun m!831513 () Bool)

(assert (=> b!893425 m!831513))

(assert (=> b!893425 m!831511))

(declare-fun m!831515 () Bool)

(assert (=> b!893425 m!831515))

(assert (=> b!893425 m!831469))

(declare-fun m!831517 () Bool)

(assert (=> b!893425 m!831517))

(assert (=> b!893425 m!831513))

(declare-fun m!831519 () Bool)

(assert (=> bm!39642 m!831519))

(declare-fun m!831521 () Bool)

(assert (=> b!893408 m!831521))

(declare-fun m!831523 () Bool)

(assert (=> b!893408 m!831523))

(declare-fun m!831525 () Bool)

(assert (=> b!893408 m!831525))

(declare-fun m!831527 () Bool)

(assert (=> b!893408 m!831527))

(assert (=> b!893408 m!831523))

(assert (=> b!893408 m!831503))

(declare-fun m!831529 () Bool)

(assert (=> b!893408 m!831529))

(declare-fun m!831531 () Bool)

(assert (=> b!893408 m!831531))

(declare-fun m!831533 () Bool)

(assert (=> b!893408 m!831533))

(assert (=> b!893408 m!831529))

(declare-fun m!831535 () Bool)

(assert (=> b!893408 m!831535))

(declare-fun m!831537 () Bool)

(assert (=> b!893408 m!831537))

(assert (=> b!893408 m!831469))

(declare-fun m!831539 () Bool)

(assert (=> b!893408 m!831539))

(declare-fun m!831541 () Bool)

(assert (=> b!893408 m!831541))

(assert (=> b!893408 m!831531))

(declare-fun m!831543 () Bool)

(assert (=> b!893408 m!831543))

(assert (=> b!893408 m!831537))

(declare-fun m!831545 () Bool)

(assert (=> b!893408 m!831545))

(declare-fun m!831547 () Bool)

(assert (=> b!893408 m!831547))

(declare-fun m!831549 () Bool)

(assert (=> b!893408 m!831549))

(assert (=> d!110257 m!831451))

(declare-fun m!831551 () Bool)

(assert (=> b!893428 m!831551))

(assert (=> bm!39619 d!110257))

(declare-fun bm!39648 () Bool)

(declare-fun call!39651 () (_ BitVec 32))

(assert (=> bm!39648 (= call!39651 (arrayCountValidKeys!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893437 () Bool)

(declare-fun e!498984 () (_ BitVec 32))

(assert (=> b!893437 (= e!498984 #b00000000000000000000000000000000)))

(declare-fun b!893438 () Bool)

(declare-fun e!498985 () (_ BitVec 32))

(assert (=> b!893438 (= e!498984 e!498985)))

(declare-fun c!94084 () Bool)

(assert (=> b!893438 (= c!94084 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110259 () Bool)

(declare-fun lt!403734 () (_ BitVec 32))

(assert (=> d!110259 (and (bvsge lt!403734 #b00000000000000000000000000000000) (bvsle lt!403734 (bvsub (size!25613 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110259 (= lt!403734 e!498984)))

(declare-fun c!94083 () Bool)

(assert (=> d!110259 (= c!94083 (bvsge #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110259 (and (bvsle #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25613 (_keys!10001 thiss!1181)) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110259 (= (arrayCountValidKeys!0 (_keys!10001 thiss!1181) #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))) lt!403734)))

(declare-fun b!893439 () Bool)

(assert (=> b!893439 (= e!498985 (bvadd #b00000000000000000000000000000001 call!39651))))

(declare-fun b!893440 () Bool)

(assert (=> b!893440 (= e!498985 call!39651)))

(assert (= (and d!110259 c!94083) b!893437))

(assert (= (and d!110259 (not c!94083)) b!893438))

(assert (= (and b!893438 c!94084) b!893439))

(assert (= (and b!893438 (not c!94084)) b!893440))

(assert (= (or b!893439 b!893440) bm!39648))

(declare-fun m!831553 () Bool)

(assert (=> bm!39648 m!831553))

(assert (=> b!893438 m!831469))

(assert (=> b!893438 m!831469))

(assert (=> b!893438 m!831501))

(assert (=> b!893258 d!110259))

(declare-fun d!110261 () Bool)

(declare-fun res!605063 () Bool)

(declare-fun e!498990 () Bool)

(assert (=> d!110261 (=> res!605063 e!498990)))

(assert (=> d!110261 (= res!605063 (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110261 (= (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000) e!498990)))

(declare-fun b!893445 () Bool)

(declare-fun e!498991 () Bool)

(assert (=> b!893445 (= e!498990 e!498991)))

(declare-fun res!605064 () Bool)

(assert (=> b!893445 (=> (not res!605064) (not e!498991))))

(assert (=> b!893445 (= res!605064 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893446 () Bool)

(assert (=> b!893446 (= e!498991 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110261 (not res!605063)) b!893445))

(assert (= (and b!893445 res!605064) b!893446))

(assert (=> d!110261 m!831469))

(declare-fun m!831555 () Bool)

(assert (=> b!893446 m!831555))

(assert (=> bm!39621 d!110261))

(declare-fun d!110263 () Bool)

(assert (=> d!110263 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403737 () Unit!30397)

(declare-fun choose!13 (array!52336 (_ BitVec 64) (_ BitVec 32)) Unit!30397)

(assert (=> d!110263 (= lt!403737 (choose!13 (_keys!10001 thiss!1181) key!785 (index!37799 lt!403613)))))

(assert (=> d!110263 (bvsge (index!37799 lt!403613) #b00000000000000000000000000000000)))

(assert (=> d!110263 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) key!785 (index!37799 lt!403613)) lt!403737)))

(declare-fun bs!25068 () Bool)

(assert (= bs!25068 d!110263))

(assert (=> bs!25068 m!831423))

(declare-fun m!831557 () Bool)

(assert (=> bs!25068 m!831557))

(assert (=> b!893282 d!110263))

(declare-fun d!110265 () Bool)

(declare-fun e!498994 () Bool)

(assert (=> d!110265 e!498994))

(declare-fun res!605067 () Bool)

(assert (=> d!110265 (=> (not res!605067) (not e!498994))))

(assert (=> d!110265 (= res!605067 (and (bvsge (index!37799 lt!403613) #b00000000000000000000000000000000) (bvslt (index!37799 lt!403613) (size!25613 (_keys!10001 thiss!1181)))))))

(declare-fun lt!403740 () Unit!30397)

(declare-fun choose!1473 (array!52336 array!52338 (_ BitVec 32) (_ BitVec 32) V!29209 V!29209 (_ BitVec 32) Int) Unit!30397)

(assert (=> d!110265 (= lt!403740 (choose!1473 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (index!37799 lt!403613) (defaultEntry!5318 thiss!1181)))))

(assert (=> d!110265 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110265 (= (lemmaValidKeyInArrayIsInListMap!230 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (index!37799 lt!403613) (defaultEntry!5318 thiss!1181)) lt!403740)))

(declare-fun b!893449 () Bool)

(assert (=> b!893449 (= e!498994 (contains!4371 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613))))))

(assert (= (and d!110265 res!605067) b!893449))

(declare-fun m!831559 () Bool)

(assert (=> d!110265 m!831559))

(assert (=> d!110265 m!831451))

(assert (=> b!893449 m!831413))

(assert (=> b!893449 m!831427))

(assert (=> b!893449 m!831413))

(assert (=> b!893449 m!831427))

(declare-fun m!831561 () Bool)

(assert (=> b!893449 m!831561))

(assert (=> b!893282 d!110265))

(declare-fun d!110267 () Bool)

(declare-fun res!605068 () Bool)

(declare-fun e!498995 () Bool)

(assert (=> d!110267 (=> res!605068 e!498995)))

(assert (=> d!110267 (= res!605068 (bvsge #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110267 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) e!498995)))

(declare-fun b!893450 () Bool)

(declare-fun e!498996 () Bool)

(declare-fun call!39652 () Bool)

(assert (=> b!893450 (= e!498996 call!39652)))

(declare-fun bm!39649 () Bool)

(assert (=> bm!39649 (= call!39652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893451 () Bool)

(declare-fun e!498997 () Bool)

(assert (=> b!893451 (= e!498997 e!498996)))

(declare-fun lt!403743 () (_ BitVec 64))

(assert (=> b!893451 (= lt!403743 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403742 () Unit!30397)

(assert (=> b!893451 (= lt!403742 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000))))

(assert (=> b!893451 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000)))

(declare-fun lt!403741 () Unit!30397)

(assert (=> b!893451 (= lt!403741 lt!403742)))

(declare-fun res!605069 () Bool)

(assert (=> b!893451 (= res!605069 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) (Found!8857 #b00000000000000000000000000000000)))))

(assert (=> b!893451 (=> (not res!605069) (not e!498996))))

(declare-fun b!893452 () Bool)

(assert (=> b!893452 (= e!498997 call!39652)))

(declare-fun b!893453 () Bool)

(assert (=> b!893453 (= e!498995 e!498997)))

(declare-fun c!94085 () Bool)

(assert (=> b!893453 (= c!94085 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110267 (not res!605068)) b!893453))

(assert (= (and b!893453 c!94085) b!893451))

(assert (= (and b!893453 (not c!94085)) b!893452))

(assert (= (and b!893451 res!605069) b!893450))

(assert (= (or b!893450 b!893452) bm!39649))

(declare-fun m!831563 () Bool)

(assert (=> bm!39649 m!831563))

(assert (=> b!893451 m!831469))

(declare-fun m!831565 () Bool)

(assert (=> b!893451 m!831565))

(declare-fun m!831567 () Bool)

(assert (=> b!893451 m!831567))

(assert (=> b!893451 m!831469))

(declare-fun m!831569 () Bool)

(assert (=> b!893451 m!831569))

(assert (=> b!893453 m!831469))

(assert (=> b!893453 m!831469))

(assert (=> b!893453 m!831501))

(assert (=> b!893259 d!110267))

(declare-fun d!110269 () Bool)

(declare-fun e!498998 () Bool)

(assert (=> d!110269 e!498998))

(declare-fun res!605070 () Bool)

(assert (=> d!110269 (=> res!605070 e!498998)))

(declare-fun lt!403747 () Bool)

(assert (=> d!110269 (= res!605070 (not lt!403747))))

(declare-fun lt!403745 () Bool)

(assert (=> d!110269 (= lt!403747 lt!403745)))

(declare-fun lt!403746 () Unit!30397)

(declare-fun e!498999 () Unit!30397)

(assert (=> d!110269 (= lt!403746 e!498999)))

(declare-fun c!94086 () Bool)

(assert (=> d!110269 (= c!94086 lt!403745)))

(assert (=> d!110269 (= lt!403745 (containsKey!423 (toList!5390 (map!12215 thiss!1181)) key!785))))

(assert (=> d!110269 (= (contains!4371 (map!12215 thiss!1181) key!785) lt!403747)))

(declare-fun b!893454 () Bool)

(declare-fun lt!403744 () Unit!30397)

(assert (=> b!893454 (= e!498999 lt!403744)))

(assert (=> b!893454 (= lt!403744 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 (map!12215 thiss!1181)) key!785))))

(assert (=> b!893454 (isDefined!328 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785))))

(declare-fun b!893455 () Bool)

(declare-fun Unit!30403 () Unit!30397)

(assert (=> b!893455 (= e!498999 Unit!30403)))

(declare-fun b!893456 () Bool)

(assert (=> b!893456 (= e!498998 (isDefined!328 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785)))))

(assert (= (and d!110269 c!94086) b!893454))

(assert (= (and d!110269 (not c!94086)) b!893455))

(assert (= (and d!110269 (not res!605070)) b!893456))

(declare-fun m!831571 () Bool)

(assert (=> d!110269 m!831571))

(declare-fun m!831573 () Bool)

(assert (=> b!893454 m!831573))

(assert (=> b!893454 m!831387))

(assert (=> b!893454 m!831387))

(declare-fun m!831575 () Bool)

(assert (=> b!893454 m!831575))

(assert (=> b!893456 m!831387))

(assert (=> b!893456 m!831387))

(assert (=> b!893456 m!831575))

(assert (=> d!110237 d!110269))

(assert (=> d!110237 d!110229))

(assert (=> d!110237 d!110235))

(declare-fun b!893467 () Bool)

(declare-fun e!499008 () Bool)

(declare-fun e!499011 () Bool)

(assert (=> b!893467 (= e!499008 e!499011)))

(declare-fun c!94089 () Bool)

(assert (=> b!893467 (= c!94089 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110271 () Bool)

(declare-fun res!605077 () Bool)

(declare-fun e!499009 () Bool)

(assert (=> d!110271 (=> res!605077 e!499009)))

(assert (=> d!110271 (= res!605077 (bvsge #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110271 (= (arrayNoDuplicates!0 (_keys!10001 thiss!1181) #b00000000000000000000000000000000 Nil!17876) e!499009)))

(declare-fun b!893468 () Bool)

(declare-fun e!499010 () Bool)

(declare-fun contains!4372 (List!17879 (_ BitVec 64)) Bool)

(assert (=> b!893468 (= e!499010 (contains!4372 Nil!17876 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893469 () Bool)

(declare-fun call!39655 () Bool)

(assert (=> b!893469 (= e!499011 call!39655)))

(declare-fun b!893470 () Bool)

(assert (=> b!893470 (= e!499009 e!499008)))

(declare-fun res!605078 () Bool)

(assert (=> b!893470 (=> (not res!605078) (not e!499008))))

(assert (=> b!893470 (= res!605078 (not e!499010))))

(declare-fun res!605079 () Bool)

(assert (=> b!893470 (=> (not res!605079) (not e!499010))))

(assert (=> b!893470 (= res!605079 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893471 () Bool)

(assert (=> b!893471 (= e!499011 call!39655)))

(declare-fun bm!39652 () Bool)

(assert (=> bm!39652 (= call!39655 (arrayNoDuplicates!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94089 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) Nil!17876) Nil!17876)))))

(assert (= (and d!110271 (not res!605077)) b!893470))

(assert (= (and b!893470 res!605079) b!893468))

(assert (= (and b!893470 res!605078) b!893467))

(assert (= (and b!893467 c!94089) b!893471))

(assert (= (and b!893467 (not c!94089)) b!893469))

(assert (= (or b!893471 b!893469) bm!39652))

(assert (=> b!893467 m!831469))

(assert (=> b!893467 m!831469))

(assert (=> b!893467 m!831501))

(assert (=> b!893468 m!831469))

(assert (=> b!893468 m!831469))

(declare-fun m!831577 () Bool)

(assert (=> b!893468 m!831577))

(assert (=> b!893470 m!831469))

(assert (=> b!893470 m!831469))

(assert (=> b!893470 m!831501))

(assert (=> bm!39652 m!831469))

(declare-fun m!831579 () Bool)

(assert (=> bm!39652 m!831579))

(assert (=> b!893260 d!110271))

(assert (=> d!110229 d!110257))

(declare-fun b!893472 () Bool)

(declare-fun e!499013 () Bool)

(assert (=> b!893472 (= e!499013 tp_is_empty!18183)))

(declare-fun mapNonEmpty!28842 () Bool)

(declare-fun mapRes!28842 () Bool)

(declare-fun tp!55551 () Bool)

(assert (=> mapNonEmpty!28842 (= mapRes!28842 (and tp!55551 e!499013))))

(declare-fun mapRest!28842 () (Array (_ BitVec 32) ValueCell!8610))

(declare-fun mapValue!28842 () ValueCell!8610)

(declare-fun mapKey!28842 () (_ BitVec 32))

(assert (=> mapNonEmpty!28842 (= mapRest!28841 (store mapRest!28842 mapKey!28842 mapValue!28842))))

(declare-fun mapIsEmpty!28842 () Bool)

(assert (=> mapIsEmpty!28842 mapRes!28842))

(declare-fun b!893473 () Bool)

(declare-fun e!499012 () Bool)

(assert (=> b!893473 (= e!499012 tp_is_empty!18183)))

(declare-fun condMapEmpty!28842 () Bool)

(declare-fun mapDefault!28842 () ValueCell!8610)

(assert (=> mapNonEmpty!28841 (= condMapEmpty!28842 (= mapRest!28841 ((as const (Array (_ BitVec 32) ValueCell!8610)) mapDefault!28842)))))

(assert (=> mapNonEmpty!28841 (= tp!55550 (and e!499012 mapRes!28842))))

(assert (= (and mapNonEmpty!28841 condMapEmpty!28842) mapIsEmpty!28842))

(assert (= (and mapNonEmpty!28841 (not condMapEmpty!28842)) mapNonEmpty!28842))

(assert (= (and mapNonEmpty!28842 ((_ is ValueCellFull!8610) mapValue!28842)) b!893472))

(assert (= (and mapNonEmpty!28841 ((_ is ValueCellFull!8610) mapDefault!28842)) b!893473))

(declare-fun m!831581 () Bool)

(assert (=> mapNonEmpty!28842 m!831581))

(declare-fun b_lambda!12951 () Bool)

(assert (= b_lambda!12949 (or (and b!893205 b_free!15855) b_lambda!12951)))

(check-sat (not bm!39624) (not d!110251) (not bm!39639) (not b!893328) (not b!893352) (not mapNonEmpty!28842) (not b!893468) (not b!893449) (not bm!39640) (not b!893425) (not d!110241) (not d!110263) (not b!893426) (not d!110269) (not b!893338) (not b!893424) tp_is_empty!18183 (not b!893408) b_and!26145 (not b_lambda!12951) (not b!893303) (not b!893423) (not d!110239) (not b!893363) (not b!893347) (not b!893453) (not b!893422) (not b!893454) (not d!110265) (not b!893451) (not b!893322) (not d!110243) (not d!110255) (not b!893467) (not b!893411) (not bm!39648) (not d!110245) (not b!893340) (not bm!39649) (not d!110257) (not b!893470) (not b!893456) (not bm!39642) (not bm!39645) (not b!893446) (not b!893349) (not bm!39652) (not b!893438) (not b!893428) (not b_lambda!12947) (not b!893364) (not b_next!15855))
(check-sat b_and!26145 (not b_next!15855))
(get-model)

(assert (=> d!110243 d!110241))

(declare-fun d!110273 () Bool)

(declare-fun lt!403750 () SeekEntryResult!8857)

(assert (=> d!110273 (and ((_ is Found!8857) lt!403750) (= (index!37799 lt!403750) lt!403606))))

(assert (=> d!110273 (= lt!403750 (seekEntry!0 key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> d!110273 true))

(declare-fun _$57!19 () Unit!30397)

(assert (=> d!110273 (= (choose!0 key!785 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) _$57!19)))

(declare-fun bs!25069 () Bool)

(assert (= bs!25069 d!110273))

(assert (=> bs!25069 m!831431))

(assert (=> d!110243 d!110273))

(declare-fun d!110275 () Bool)

(assert (=> d!110275 (= (validMask!0 (mask!25842 thiss!1181)) (and (or (= (mask!25842 thiss!1181) #b00000000000000000000000000000111) (= (mask!25842 thiss!1181) #b00000000000000000000000000001111) (= (mask!25842 thiss!1181) #b00000000000000000000000000011111) (= (mask!25842 thiss!1181) #b00000000000000000000000000111111) (= (mask!25842 thiss!1181) #b00000000000000000000000001111111) (= (mask!25842 thiss!1181) #b00000000000000000000000011111111) (= (mask!25842 thiss!1181) #b00000000000000000000000111111111) (= (mask!25842 thiss!1181) #b00000000000000000000001111111111) (= (mask!25842 thiss!1181) #b00000000000000000000011111111111) (= (mask!25842 thiss!1181) #b00000000000000000000111111111111) (= (mask!25842 thiss!1181) #b00000000000000000001111111111111) (= (mask!25842 thiss!1181) #b00000000000000000011111111111111) (= (mask!25842 thiss!1181) #b00000000000000000111111111111111) (= (mask!25842 thiss!1181) #b00000000000000001111111111111111) (= (mask!25842 thiss!1181) #b00000000000000011111111111111111) (= (mask!25842 thiss!1181) #b00000000000000111111111111111111) (= (mask!25842 thiss!1181) #b00000000000001111111111111111111) (= (mask!25842 thiss!1181) #b00000000000011111111111111111111) (= (mask!25842 thiss!1181) #b00000000000111111111111111111111) (= (mask!25842 thiss!1181) #b00000000001111111111111111111111) (= (mask!25842 thiss!1181) #b00000000011111111111111111111111) (= (mask!25842 thiss!1181) #b00000000111111111111111111111111) (= (mask!25842 thiss!1181) #b00000001111111111111111111111111) (= (mask!25842 thiss!1181) #b00000011111111111111111111111111) (= (mask!25842 thiss!1181) #b00000111111111111111111111111111) (= (mask!25842 thiss!1181) #b00001111111111111111111111111111) (= (mask!25842 thiss!1181) #b00011111111111111111111111111111) (= (mask!25842 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25842 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> d!110243 d!110275))

(assert (=> d!110263 d!110261))

(declare-fun d!110277 () Bool)

(assert (=> d!110277 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!110277 true))

(declare-fun _$60!400 () Unit!30397)

(assert (=> d!110277 (= (choose!13 (_keys!10001 thiss!1181) key!785 (index!37799 lt!403613)) _$60!400)))

(declare-fun bs!25070 () Bool)

(assert (= bs!25070 d!110277))

(assert (=> bs!25070 m!831423))

(assert (=> d!110263 d!110277))

(declare-fun d!110279 () Bool)

(declare-fun res!605080 () Bool)

(declare-fun e!499014 () Bool)

(assert (=> d!110279 (=> res!605080 e!499014)))

(assert (=> d!110279 (= res!605080 (bvsge (bvadd lt!403606 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110279 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403606 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) e!499014)))

(declare-fun b!893474 () Bool)

(declare-fun e!499015 () Bool)

(declare-fun call!39656 () Bool)

(assert (=> b!893474 (= e!499015 call!39656)))

(declare-fun bm!39653 () Bool)

(assert (=> bm!39653 (= call!39656 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403606 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893475 () Bool)

(declare-fun e!499016 () Bool)

(assert (=> b!893475 (= e!499016 e!499015)))

(declare-fun lt!403753 () (_ BitVec 64))

(assert (=> b!893475 (= lt!403753 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd lt!403606 #b00000000000000000000000000000001)))))

(declare-fun lt!403752 () Unit!30397)

(assert (=> b!893475 (= lt!403752 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403753 (bvadd lt!403606 #b00000000000000000000000000000001)))))

(assert (=> b!893475 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403753 #b00000000000000000000000000000000)))

(declare-fun lt!403751 () Unit!30397)

(assert (=> b!893475 (= lt!403751 lt!403752)))

(declare-fun res!605081 () Bool)

(assert (=> b!893475 (= res!605081 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd lt!403606 #b00000000000000000000000000000001)) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) (Found!8857 (bvadd lt!403606 #b00000000000000000000000000000001))))))

(assert (=> b!893475 (=> (not res!605081) (not e!499015))))

(declare-fun b!893476 () Bool)

(assert (=> b!893476 (= e!499016 call!39656)))

(declare-fun b!893477 () Bool)

(assert (=> b!893477 (= e!499014 e!499016)))

(declare-fun c!94090 () Bool)

(assert (=> b!893477 (= c!94090 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd lt!403606 #b00000000000000000000000000000001))))))

(assert (= (and d!110279 (not res!605080)) b!893477))

(assert (= (and b!893477 c!94090) b!893475))

(assert (= (and b!893477 (not c!94090)) b!893476))

(assert (= (and b!893475 res!605081) b!893474))

(assert (= (or b!893474 b!893476) bm!39653))

(declare-fun m!831583 () Bool)

(assert (=> bm!39653 m!831583))

(declare-fun m!831585 () Bool)

(assert (=> b!893475 m!831585))

(declare-fun m!831587 () Bool)

(assert (=> b!893475 m!831587))

(declare-fun m!831589 () Bool)

(assert (=> b!893475 m!831589))

(assert (=> b!893475 m!831585))

(declare-fun m!831591 () Bool)

(assert (=> b!893475 m!831591))

(assert (=> b!893477 m!831585))

(assert (=> b!893477 m!831585))

(declare-fun m!831593 () Bool)

(assert (=> b!893477 m!831593))

(assert (=> bm!39624 d!110279))

(declare-fun d!110281 () Bool)

(assert (=> d!110281 (= (size!25617 thiss!1181) (bvadd (_size!2173 thiss!1181) (bvsdiv (bvadd (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!893364 d!110281))

(assert (=> b!893363 d!110281))

(declare-fun d!110283 () Bool)

(declare-fun e!499017 () Bool)

(assert (=> d!110283 e!499017))

(declare-fun res!605082 () Bool)

(assert (=> d!110283 (=> res!605082 e!499017)))

(declare-fun lt!403757 () Bool)

(assert (=> d!110283 (= res!605082 (not lt!403757))))

(declare-fun lt!403755 () Bool)

(assert (=> d!110283 (= lt!403757 lt!403755)))

(declare-fun lt!403756 () Unit!30397)

(declare-fun e!499018 () Unit!30397)

(assert (=> d!110283 (= lt!403756 e!499018)))

(declare-fun c!94091 () Bool)

(assert (=> d!110283 (= c!94091 lt!403755)))

(assert (=> d!110283 (= lt!403755 (containsKey!423 (toList!5390 lt!403719) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110283 (= (contains!4371 lt!403719 #b0000000000000000000000000000000000000000000000000000000000000000) lt!403757)))

(declare-fun b!893478 () Bool)

(declare-fun lt!403754 () Unit!30397)

(assert (=> b!893478 (= e!499018 lt!403754)))

(assert (=> b!893478 (= lt!403754 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 lt!403719) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893478 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!893479 () Bool)

(declare-fun Unit!30404 () Unit!30397)

(assert (=> b!893479 (= e!499018 Unit!30404)))

(declare-fun b!893480 () Bool)

(assert (=> b!893480 (= e!499017 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110283 c!94091) b!893478))

(assert (= (and d!110283 (not c!94091)) b!893479))

(assert (= (and d!110283 (not res!605082)) b!893480))

(declare-fun m!831595 () Bool)

(assert (=> d!110283 m!831595))

(declare-fun m!831597 () Bool)

(assert (=> b!893478 m!831597))

(declare-fun m!831599 () Bool)

(assert (=> b!893478 m!831599))

(assert (=> b!893478 m!831599))

(declare-fun m!831601 () Bool)

(assert (=> b!893478 m!831601))

(assert (=> b!893480 m!831599))

(assert (=> b!893480 m!831599))

(assert (=> b!893480 m!831601))

(assert (=> bm!39642 d!110283))

(assert (=> d!110245 d!110249))

(declare-fun d!110285 () Bool)

(assert (=> d!110285 (arrayForallSeekEntryOrOpenFound!0 lt!403606 (_keys!10001 thiss!1181) (mask!25842 thiss!1181))))

(assert (=> d!110285 true))

(declare-fun _$72!116 () Unit!30397)

(assert (=> d!110285 (= (choose!38 (_keys!10001 thiss!1181) (mask!25842 thiss!1181) #b00000000000000000000000000000000 lt!403606) _$72!116)))

(declare-fun bs!25071 () Bool)

(assert (= bs!25071 d!110285))

(assert (=> bs!25071 m!831439))

(assert (=> d!110245 d!110285))

(assert (=> d!110245 d!110275))

(declare-fun d!110287 () Bool)

(declare-fun res!605083 () Bool)

(declare-fun e!499019 () Bool)

(assert (=> d!110287 (=> res!605083 e!499019)))

(assert (=> d!110287 (= res!605083 (= (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110287 (= (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!499019)))

(declare-fun b!893481 () Bool)

(declare-fun e!499020 () Bool)

(assert (=> b!893481 (= e!499019 e!499020)))

(declare-fun res!605084 () Bool)

(assert (=> b!893481 (=> (not res!605084) (not e!499020))))

(assert (=> b!893481 (= res!605084 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893482 () Bool)

(assert (=> b!893482 (= e!499020 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110287 (not res!605083)) b!893481))

(assert (= (and b!893481 res!605084) b!893482))

(declare-fun m!831603 () Bool)

(assert (=> d!110287 m!831603))

(declare-fun m!831605 () Bool)

(assert (=> b!893482 m!831605))

(assert (=> b!893446 d!110287))

(declare-fun d!110289 () Bool)

(declare-fun res!605089 () Bool)

(declare-fun e!499025 () Bool)

(assert (=> d!110289 (=> res!605089 e!499025)))

(assert (=> d!110289 (= res!605089 (and ((_ is Cons!17873) (toList!5390 call!39623)) (= (_1!6029 (h!19004 (toList!5390 call!39623))) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))))))

(assert (=> d!110289 (= (containsKey!423 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)) e!499025)))

(declare-fun b!893487 () Bool)

(declare-fun e!499026 () Bool)

(assert (=> b!893487 (= e!499025 e!499026)))

(declare-fun res!605090 () Bool)

(assert (=> b!893487 (=> (not res!605090) (not e!499026))))

(assert (=> b!893487 (= res!605090 (and (or (not ((_ is Cons!17873) (toList!5390 call!39623))) (bvsle (_1!6029 (h!19004 (toList!5390 call!39623))) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))) ((_ is Cons!17873) (toList!5390 call!39623)) (bvslt (_1!6029 (h!19004 (toList!5390 call!39623))) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))))))

(declare-fun b!893488 () Bool)

(assert (=> b!893488 (= e!499026 (containsKey!423 (t!25206 (toList!5390 call!39623)) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(assert (= (and d!110289 (not res!605089)) b!893487))

(assert (= (and b!893487 res!605090) b!893488))

(declare-fun m!831607 () Bool)

(assert (=> b!893488 m!831607))

(assert (=> d!110251 d!110289))

(declare-fun d!110291 () Bool)

(declare-fun e!499027 () Bool)

(assert (=> d!110291 e!499027))

(declare-fun res!605091 () Bool)

(assert (=> d!110291 (=> res!605091 e!499027)))

(declare-fun lt!403761 () Bool)

(assert (=> d!110291 (= res!605091 (not lt!403761))))

(declare-fun lt!403759 () Bool)

(assert (=> d!110291 (= lt!403761 lt!403759)))

(declare-fun lt!403760 () Unit!30397)

(declare-fun e!499028 () Unit!30397)

(assert (=> d!110291 (= lt!403760 e!499028)))

(declare-fun c!94092 () Bool)

(assert (=> d!110291 (= c!94092 lt!403759)))

(assert (=> d!110291 (= lt!403759 (containsKey!423 (toList!5390 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181))) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613))))))

(assert (=> d!110291 (= (contains!4371 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613))) lt!403761)))

(declare-fun b!893489 () Bool)

(declare-fun lt!403758 () Unit!30397)

(assert (=> b!893489 (= e!499028 lt!403758)))

(assert (=> b!893489 (= lt!403758 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181))) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613))))))

(assert (=> b!893489 (isDefined!328 (getValueByKey!448 (toList!5390 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181))) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613))))))

(declare-fun b!893490 () Bool)

(declare-fun Unit!30405 () Unit!30397)

(assert (=> b!893490 (= e!499028 Unit!30405)))

(declare-fun b!893491 () Bool)

(assert (=> b!893491 (= e!499027 (isDefined!328 (getValueByKey!448 (toList!5390 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181))) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)))))))

(assert (= (and d!110291 c!94092) b!893489))

(assert (= (and d!110291 (not c!94092)) b!893490))

(assert (= (and d!110291 (not res!605091)) b!893491))

(assert (=> d!110291 m!831427))

(declare-fun m!831609 () Bool)

(assert (=> d!110291 m!831609))

(assert (=> b!893489 m!831427))

(declare-fun m!831611 () Bool)

(assert (=> b!893489 m!831611))

(assert (=> b!893489 m!831427))

(declare-fun m!831613 () Bool)

(assert (=> b!893489 m!831613))

(assert (=> b!893489 m!831613))

(declare-fun m!831615 () Bool)

(assert (=> b!893489 m!831615))

(assert (=> b!893491 m!831427))

(assert (=> b!893491 m!831613))

(assert (=> b!893491 m!831613))

(assert (=> b!893491 m!831615))

(assert (=> b!893449 d!110291))

(assert (=> b!893449 d!110257))

(declare-fun d!110293 () Bool)

(assert (=> d!110293 (= (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893453 d!110293))

(declare-fun b!893504 () Bool)

(declare-fun c!94099 () Bool)

(declare-fun lt!403766 () (_ BitVec 64))

(assert (=> b!893504 (= c!94099 (= lt!403766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499036 () SeekEntryResult!8857)

(declare-fun e!499035 () SeekEntryResult!8857)

(assert (=> b!893504 (= e!499036 e!499035)))

(declare-fun b!893505 () Bool)

(declare-fun e!499037 () SeekEntryResult!8857)

(assert (=> b!893505 (= e!499037 e!499036)))

(declare-fun c!94100 () Bool)

(assert (=> b!893505 (= c!94100 (= lt!403766 key!785))))

(declare-fun b!893506 () Bool)

(assert (=> b!893506 (= e!499035 (MissingVacant!8857 (index!37800 lt!403631)))))

(declare-fun b!893508 () Bool)

(assert (=> b!893508 (= e!499037 Undefined!8857)))

(declare-fun b!893509 () Bool)

(assert (=> b!893509 (= e!499036 (Found!8857 (index!37800 lt!403631)))))

(declare-fun b!893507 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893507 (= e!499035 (seekKeyOrZeroReturnVacant!0 (bvadd (x!75950 lt!403631) #b00000000000000000000000000000001) (nextIndex!0 (index!37800 lt!403631) (x!75950 lt!403631) (mask!25842 thiss!1181)) (index!37800 lt!403631) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun d!110295 () Bool)

(declare-fun lt!403767 () SeekEntryResult!8857)

(assert (=> d!110295 (and (or ((_ is Undefined!8857) lt!403767) (not ((_ is Found!8857) lt!403767)) (and (bvsge (index!37799 lt!403767) #b00000000000000000000000000000000) (bvslt (index!37799 lt!403767) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403767) ((_ is Found!8857) lt!403767) (not ((_ is MissingVacant!8857) lt!403767)) (not (= (index!37801 lt!403767) (index!37800 lt!403631))) (and (bvsge (index!37801 lt!403767) #b00000000000000000000000000000000) (bvslt (index!37801 lt!403767) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403767) (ite ((_ is Found!8857) lt!403767) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403767)) key!785) (and ((_ is MissingVacant!8857) lt!403767) (= (index!37801 lt!403767) (index!37800 lt!403631)) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37801 lt!403767)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!110295 (= lt!403767 e!499037)))

(declare-fun c!94101 () Bool)

(assert (=> d!110295 (= c!94101 (bvsge (x!75950 lt!403631) #b01111111111111111111111111111110))))

(assert (=> d!110295 (= lt!403766 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403631)))))

(assert (=> d!110295 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110295 (= (seekKeyOrZeroReturnVacant!0 (x!75950 lt!403631) (index!37800 lt!403631) (index!37800 lt!403631) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403767)))

(assert (= (and d!110295 c!94101) b!893508))

(assert (= (and d!110295 (not c!94101)) b!893505))

(assert (= (and b!893505 c!94100) b!893509))

(assert (= (and b!893505 (not c!94100)) b!893504))

(assert (= (and b!893504 c!94099) b!893506))

(assert (= (and b!893504 (not c!94099)) b!893507))

(declare-fun m!831617 () Bool)

(assert (=> b!893507 m!831617))

(assert (=> b!893507 m!831617))

(declare-fun m!831619 () Bool)

(assert (=> b!893507 m!831619))

(declare-fun m!831621 () Bool)

(assert (=> d!110295 m!831621))

(declare-fun m!831623 () Bool)

(assert (=> d!110295 m!831623))

(assert (=> d!110295 m!831453))

(assert (=> d!110295 m!831451))

(assert (=> b!893322 d!110295))

(declare-fun d!110297 () Bool)

(declare-fun isEmpty!685 (Option!454) Bool)

(assert (=> d!110297 (= (isDefined!328 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785)) (not (isEmpty!685 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785))))))

(declare-fun bs!25072 () Bool)

(assert (= bs!25072 d!110297))

(assert (=> bs!25072 m!831387))

(declare-fun m!831625 () Bool)

(assert (=> bs!25072 m!831625))

(assert (=> b!893456 d!110297))

(assert (=> b!893456 d!110227))

(declare-fun d!110299 () Bool)

(assert (=> d!110299 (contains!4371 (getCurrentListMap!2637 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)) (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)))))

(assert (=> d!110299 true))

(declare-fun _$16!172 () Unit!30397)

(assert (=> d!110299 (= (choose!1473 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (index!37799 lt!403613) (defaultEntry!5318 thiss!1181)) _$16!172)))

(declare-fun bs!25073 () Bool)

(assert (= bs!25073 d!110299))

(assert (=> bs!25073 m!831413))

(assert (=> bs!25073 m!831427))

(assert (=> bs!25073 m!831413))

(assert (=> bs!25073 m!831427))

(assert (=> bs!25073 m!831561))

(assert (=> d!110265 d!110299))

(assert (=> d!110265 d!110275))

(declare-fun d!110301 () Bool)

(declare-fun e!499040 () Bool)

(assert (=> d!110301 e!499040))

(declare-fun c!94104 () Bool)

(assert (=> d!110301 (= c!94104 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!110301 true))

(declare-fun _$15!89 () Unit!30397)

(assert (=> d!110301 (= (choose!1472 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) key!785 (defaultEntry!5318 thiss!1181)) _$15!89)))

(declare-fun b!893514 () Bool)

(assert (=> b!893514 (= e!499040 (arrayContainsKey!0 (_keys!10001 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!893515 () Bool)

(assert (=> b!893515 (= e!499040 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5014 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!110301 c!94104) b!893514))

(assert (= (and d!110301 (not c!94104)) b!893515))

(assert (=> b!893514 m!831423))

(assert (=> d!110239 d!110301))

(assert (=> d!110239 d!110275))

(declare-fun d!110303 () Bool)

(declare-fun e!499041 () Bool)

(assert (=> d!110303 e!499041))

(declare-fun res!605092 () Bool)

(assert (=> d!110303 (=> res!605092 e!499041)))

(declare-fun lt!403771 () Bool)

(assert (=> d!110303 (= res!605092 (not lt!403771))))

(declare-fun lt!403769 () Bool)

(assert (=> d!110303 (= lt!403771 lt!403769)))

(declare-fun lt!403770 () Unit!30397)

(declare-fun e!499042 () Unit!30397)

(assert (=> d!110303 (= lt!403770 e!499042)))

(declare-fun c!94105 () Bool)

(assert (=> d!110303 (= c!94105 lt!403769)))

(assert (=> d!110303 (= lt!403769 (containsKey!423 (toList!5390 lt!403719) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110303 (= (contains!4371 lt!403719 #b1000000000000000000000000000000000000000000000000000000000000000) lt!403771)))

(declare-fun b!893516 () Bool)

(declare-fun lt!403768 () Unit!30397)

(assert (=> b!893516 (= e!499042 lt!403768)))

(assert (=> b!893516 (= lt!403768 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 lt!403719) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893516 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!893517 () Bool)

(declare-fun Unit!30406 () Unit!30397)

(assert (=> b!893517 (= e!499042 Unit!30406)))

(declare-fun b!893518 () Bool)

(assert (=> b!893518 (= e!499041 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110303 c!94105) b!893516))

(assert (= (and d!110303 (not c!94105)) b!893517))

(assert (= (and d!110303 (not res!605092)) b!893518))

(declare-fun m!831627 () Bool)

(assert (=> d!110303 m!831627))

(declare-fun m!831629 () Bool)

(assert (=> b!893516 m!831629))

(declare-fun m!831631 () Bool)

(assert (=> b!893516 m!831631))

(assert (=> b!893516 m!831631))

(declare-fun m!831633 () Bool)

(assert (=> b!893516 m!831633))

(assert (=> b!893518 m!831631))

(assert (=> b!893518 m!831631))

(assert (=> b!893518 m!831633))

(assert (=> bm!39645 d!110303))

(assert (=> d!110255 d!110275))

(declare-fun d!110305 () Bool)

(assert (=> d!110305 (= (apply!407 lt!403719 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13259 (getValueByKey!448 (toList!5390 lt!403719) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25074 () Bool)

(assert (= bs!25074 d!110305))

(assert (=> bs!25074 m!831599))

(assert (=> bs!25074 m!831599))

(declare-fun m!831635 () Bool)

(assert (=> bs!25074 m!831635))

(assert (=> b!893411 d!110305))

(declare-fun d!110307 () Bool)

(assert (=> d!110307 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000)))

(declare-fun lt!403772 () Unit!30397)

(assert (=> d!110307 (= lt!403772 (choose!13 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000))))

(assert (=> d!110307 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!110307 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000) lt!403772)))

(declare-fun bs!25075 () Bool)

(assert (= bs!25075 d!110307))

(assert (=> bs!25075 m!831567))

(declare-fun m!831637 () Bool)

(assert (=> bs!25075 m!831637))

(assert (=> b!893451 d!110307))

(declare-fun d!110309 () Bool)

(declare-fun res!605093 () Bool)

(declare-fun e!499043 () Bool)

(assert (=> d!110309 (=> res!605093 e!499043)))

(assert (=> d!110309 (= res!605093 (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) lt!403743))))

(assert (=> d!110309 (= (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403743 #b00000000000000000000000000000000) e!499043)))

(declare-fun b!893519 () Bool)

(declare-fun e!499044 () Bool)

(assert (=> b!893519 (= e!499043 e!499044)))

(declare-fun res!605094 () Bool)

(assert (=> b!893519 (=> (not res!605094) (not e!499044))))

(assert (=> b!893519 (= res!605094 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893520 () Bool)

(assert (=> b!893520 (= e!499044 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403743 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110309 (not res!605093)) b!893519))

(assert (= (and b!893519 res!605094) b!893520))

(assert (=> d!110309 m!831469))

(declare-fun m!831639 () Bool)

(assert (=> b!893520 m!831639))

(assert (=> b!893451 d!110309))

(declare-fun b!893533 () Bool)

(declare-fun e!499051 () SeekEntryResult!8857)

(declare-fun e!499052 () SeekEntryResult!8857)

(assert (=> b!893533 (= e!499051 e!499052)))

(declare-fun lt!403780 () (_ BitVec 64))

(declare-fun lt!403779 () SeekEntryResult!8857)

(assert (=> b!893533 (= lt!403780 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403779)))))

(declare-fun c!94113 () Bool)

(assert (=> b!893533 (= c!94113 (= lt!403780 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893534 () Bool)

(declare-fun e!499053 () SeekEntryResult!8857)

(assert (=> b!893534 (= e!499053 (MissingZero!8857 (index!37800 lt!403779)))))

(declare-fun b!893536 () Bool)

(assert (=> b!893536 (= e!499053 (seekKeyOrZeroReturnVacant!0 (x!75950 lt!403779) (index!37800 lt!403779) (index!37800 lt!403779) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893537 () Bool)

(assert (=> b!893537 (= e!499052 (Found!8857 (index!37800 lt!403779)))))

(declare-fun b!893538 () Bool)

(assert (=> b!893538 (= e!499051 Undefined!8857)))

(declare-fun b!893535 () Bool)

(declare-fun c!94112 () Bool)

(assert (=> b!893535 (= c!94112 (= lt!403780 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893535 (= e!499052 e!499053)))

(declare-fun d!110311 () Bool)

(declare-fun lt!403781 () SeekEntryResult!8857)

(assert (=> d!110311 (and (or ((_ is Undefined!8857) lt!403781) (not ((_ is Found!8857) lt!403781)) (and (bvsge (index!37799 lt!403781) #b00000000000000000000000000000000) (bvslt (index!37799 lt!403781) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403781) ((_ is Found!8857) lt!403781) (not ((_ is MissingZero!8857) lt!403781)) (and (bvsge (index!37798 lt!403781) #b00000000000000000000000000000000) (bvslt (index!37798 lt!403781) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403781) ((_ is Found!8857) lt!403781) ((_ is MissingZero!8857) lt!403781) (not ((_ is MissingVacant!8857) lt!403781)) (and (bvsge (index!37801 lt!403781) #b00000000000000000000000000000000) (bvslt (index!37801 lt!403781) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403781) (ite ((_ is Found!8857) lt!403781) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403781)) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8857) lt!403781) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37798 lt!403781)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8857) lt!403781) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37801 lt!403781)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!110311 (= lt!403781 e!499051)))

(declare-fun c!94114 () Bool)

(assert (=> d!110311 (= c!94114 (and ((_ is Intermediate!8857) lt!403779) (undefined!9669 lt!403779)))))

(assert (=> d!110311 (= lt!403779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (mask!25842 thiss!1181)) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> d!110311 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110311 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403781)))

(assert (= (and d!110311 c!94114) b!893538))

(assert (= (and d!110311 (not c!94114)) b!893533))

(assert (= (and b!893533 c!94113) b!893537))

(assert (= (and b!893533 (not c!94113)) b!893535))

(assert (= (and b!893535 c!94112) b!893534))

(assert (= (and b!893535 (not c!94112)) b!893536))

(declare-fun m!831641 () Bool)

(assert (=> b!893533 m!831641))

(assert (=> b!893536 m!831469))

(declare-fun m!831643 () Bool)

(assert (=> b!893536 m!831643))

(declare-fun m!831645 () Bool)

(assert (=> d!110311 m!831645))

(declare-fun m!831647 () Bool)

(assert (=> d!110311 m!831647))

(declare-fun m!831649 () Bool)

(assert (=> d!110311 m!831649))

(assert (=> d!110311 m!831451))

(assert (=> d!110311 m!831469))

(declare-fun m!831651 () Bool)

(assert (=> d!110311 m!831651))

(assert (=> d!110311 m!831651))

(assert (=> d!110311 m!831469))

(declare-fun m!831653 () Bool)

(assert (=> d!110311 m!831653))

(assert (=> b!893451 d!110311))

(declare-fun d!110313 () Bool)

(assert (=> d!110313 (= (apply!407 lt!403719 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13259 (getValueByKey!448 (toList!5390 lt!403719) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25076 () Bool)

(assert (= bs!25076 d!110313))

(assert (=> bs!25076 m!831631))

(assert (=> bs!25076 m!831631))

(declare-fun m!831655 () Bool)

(assert (=> bs!25076 m!831655))

(assert (=> b!893428 d!110313))

(declare-fun d!110315 () Bool)

(assert (=> d!110315 (= (isDefined!328 (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))) (not (isEmpty!685 (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))))

(declare-fun bs!25077 () Bool)

(assert (= bs!25077 d!110315))

(assert (=> bs!25077 m!831489))

(declare-fun m!831657 () Bool)

(assert (=> bs!25077 m!831657))

(assert (=> b!893349 d!110315))

(declare-fun b!893540 () Bool)

(declare-fun e!499054 () Option!454)

(declare-fun e!499055 () Option!454)

(assert (=> b!893540 (= e!499054 e!499055)))

(declare-fun c!94116 () Bool)

(assert (=> b!893540 (= c!94116 (and ((_ is Cons!17873) (toList!5390 call!39623)) (not (= (_1!6029 (h!19004 (toList!5390 call!39623))) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))))

(declare-fun b!893541 () Bool)

(assert (=> b!893541 (= e!499055 (getValueByKey!448 (t!25206 (toList!5390 call!39623)) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun b!893542 () Bool)

(assert (=> b!893542 (= e!499055 None!452)))

(declare-fun b!893539 () Bool)

(assert (=> b!893539 (= e!499054 (Some!453 (_2!6029 (h!19004 (toList!5390 call!39623)))))))

(declare-fun d!110317 () Bool)

(declare-fun c!94115 () Bool)

(assert (=> d!110317 (= c!94115 (and ((_ is Cons!17873) (toList!5390 call!39623)) (= (_1!6029 (h!19004 (toList!5390 call!39623))) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785))))))

(assert (=> d!110317 (= (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)) e!499054)))

(assert (= (and d!110317 c!94115) b!893539))

(assert (= (and d!110317 (not c!94115)) b!893540))

(assert (= (and b!893540 c!94116) b!893541))

(assert (= (and b!893540 (not c!94116)) b!893542))

(declare-fun m!831659 () Bool)

(assert (=> b!893541 m!831659))

(assert (=> b!893349 d!110317))

(declare-fun d!110319 () Bool)

(assert (=> d!110319 (isDefined!328 (getValueByKey!448 (toList!5390 (map!12215 thiss!1181)) key!785))))

(declare-fun lt!403784 () Unit!30397)

(declare-fun choose!1474 (List!17877 (_ BitVec 64)) Unit!30397)

(assert (=> d!110319 (= lt!403784 (choose!1474 (toList!5390 (map!12215 thiss!1181)) key!785))))

(declare-fun e!499058 () Bool)

(assert (=> d!110319 e!499058))

(declare-fun res!605097 () Bool)

(assert (=> d!110319 (=> (not res!605097) (not e!499058))))

(declare-fun isStrictlySorted!491 (List!17877) Bool)

(assert (=> d!110319 (= res!605097 (isStrictlySorted!491 (toList!5390 (map!12215 thiss!1181))))))

(assert (=> d!110319 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 (map!12215 thiss!1181)) key!785) lt!403784)))

(declare-fun b!893545 () Bool)

(assert (=> b!893545 (= e!499058 (containsKey!423 (toList!5390 (map!12215 thiss!1181)) key!785))))

(assert (= (and d!110319 res!605097) b!893545))

(assert (=> d!110319 m!831387))

(assert (=> d!110319 m!831387))

(assert (=> d!110319 m!831575))

(declare-fun m!831661 () Bool)

(assert (=> d!110319 m!831661))

(declare-fun m!831663 () Bool)

(assert (=> d!110319 m!831663))

(assert (=> b!893545 m!831571))

(assert (=> b!893454 d!110319))

(assert (=> b!893454 d!110297))

(assert (=> b!893454 d!110227))

(declare-fun d!110321 () Bool)

(declare-fun res!605098 () Bool)

(declare-fun e!499059 () Bool)

(assert (=> d!110321 (=> res!605098 e!499059)))

(assert (=> d!110321 (= res!605098 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110321 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) e!499059)))

(declare-fun b!893546 () Bool)

(declare-fun e!499060 () Bool)

(declare-fun call!39657 () Bool)

(assert (=> b!893546 (= e!499060 call!39657)))

(declare-fun bm!39654 () Bool)

(assert (=> bm!39654 (= call!39657 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893547 () Bool)

(declare-fun e!499061 () Bool)

(assert (=> b!893547 (= e!499061 e!499060)))

(declare-fun lt!403787 () (_ BitVec 64))

(assert (=> b!893547 (= lt!403787 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!403786 () Unit!30397)

(assert (=> b!893547 (= lt!403786 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403787 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!893547 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403787 #b00000000000000000000000000000000)))

(declare-fun lt!403785 () Unit!30397)

(assert (=> b!893547 (= lt!403785 lt!403786)))

(declare-fun res!605099 () Bool)

(assert (=> b!893547 (= res!605099 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) (Found!8857 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!893547 (=> (not res!605099) (not e!499060))))

(declare-fun b!893548 () Bool)

(assert (=> b!893548 (= e!499061 call!39657)))

(declare-fun b!893549 () Bool)

(assert (=> b!893549 (= e!499059 e!499061)))

(declare-fun c!94117 () Bool)

(assert (=> b!893549 (= c!94117 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!110321 (not res!605098)) b!893549))

(assert (= (and b!893549 c!94117) b!893547))

(assert (= (and b!893549 (not c!94117)) b!893548))

(assert (= (and b!893547 res!605099) b!893546))

(assert (= (or b!893546 b!893548) bm!39654))

(declare-fun m!831665 () Bool)

(assert (=> bm!39654 m!831665))

(assert (=> b!893547 m!831603))

(declare-fun m!831667 () Bool)

(assert (=> b!893547 m!831667))

(declare-fun m!831669 () Bool)

(assert (=> b!893547 m!831669))

(assert (=> b!893547 m!831603))

(declare-fun m!831671 () Bool)

(assert (=> b!893547 m!831671))

(assert (=> b!893549 m!831603))

(assert (=> b!893549 m!831603))

(declare-fun m!831673 () Bool)

(assert (=> b!893549 m!831673))

(assert (=> bm!39649 d!110321))

(assert (=> b!893303 d!110261))

(assert (=> b!893438 d!110293))

(declare-fun d!110323 () Bool)

(assert (=> d!110323 (isDefined!328 (getValueByKey!448 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun lt!403788 () Unit!30397)

(assert (=> d!110323 (= lt!403788 (choose!1474 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(declare-fun e!499062 () Bool)

(assert (=> d!110323 e!499062))

(declare-fun res!605100 () Bool)

(assert (=> d!110323 (=> (not res!605100) (not e!499062))))

(assert (=> d!110323 (= res!605100 (isStrictlySorted!491 (toList!5390 call!39623)))))

(assert (=> d!110323 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)) lt!403788)))

(declare-fun b!893550 () Bool)

(assert (=> b!893550 (= e!499062 (containsKey!423 (toList!5390 call!39623) (ite c!94034 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403613)) key!785)))))

(assert (= (and d!110323 res!605100) b!893550))

(assert (=> d!110323 m!831489))

(assert (=> d!110323 m!831489))

(assert (=> d!110323 m!831491))

(declare-fun m!831675 () Bool)

(assert (=> d!110323 m!831675))

(declare-fun m!831677 () Bool)

(assert (=> d!110323 m!831677))

(assert (=> b!893550 m!831485))

(assert (=> b!893347 d!110323))

(assert (=> b!893347 d!110315))

(assert (=> b!893347 d!110317))

(declare-fun d!110325 () Bool)

(declare-fun lt!403789 () (_ BitVec 32))

(assert (=> d!110325 (and (or (bvslt lt!403789 #b00000000000000000000000000000000) (bvsge lt!403789 (size!25613 (_keys!10001 thiss!1181))) (and (bvsge lt!403789 #b00000000000000000000000000000000) (bvslt lt!403789 (size!25613 (_keys!10001 thiss!1181))))) (bvsge lt!403789 #b00000000000000000000000000000000) (bvslt lt!403789 (size!25613 (_keys!10001 thiss!1181))) (= (select (arr!25168 (_keys!10001 thiss!1181)) lt!403789) key!785))))

(declare-fun e!499063 () (_ BitVec 32))

(assert (=> d!110325 (= lt!403789 e!499063)))

(declare-fun c!94118 () Bool)

(assert (=> d!110325 (= c!94118 (= (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110325 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))) (bvslt (size!25613 (_keys!10001 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!110325 (= (arrayScanForKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!403789)))

(declare-fun b!893551 () Bool)

(assert (=> b!893551 (= e!499063 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!893552 () Bool)

(assert (=> b!893552 (= e!499063 (arrayScanForKey!0 (_keys!10001 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110325 c!94118) b!893551))

(assert (= (and d!110325 (not c!94118)) b!893552))

(declare-fun m!831679 () Bool)

(assert (=> d!110325 m!831679))

(assert (=> d!110325 m!831603))

(declare-fun m!831681 () Bool)

(assert (=> b!893552 m!831681))

(assert (=> b!893328 d!110325))

(declare-fun b!893577 () Bool)

(assert (=> b!893577 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> b!893577 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25614 (_values!5305 thiss!1181))))))

(declare-fun e!499078 () Bool)

(declare-fun lt!403809 () ListLongMap!10749)

(assert (=> b!893577 (= e!499078 (= (apply!407 lt!403809 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) (get!13261 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!110327 () Bool)

(declare-fun e!499079 () Bool)

(assert (=> d!110327 e!499079))

(declare-fun res!605110 () Bool)

(assert (=> d!110327 (=> (not res!605110) (not e!499079))))

(assert (=> d!110327 (= res!605110 (not (contains!4371 lt!403809 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!499082 () ListLongMap!10749)

(assert (=> d!110327 (= lt!403809 e!499082)))

(declare-fun c!94128 () Bool)

(assert (=> d!110327 (= c!94128 (bvsge #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110327 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110327 (= (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5318 thiss!1181)) lt!403809)))

(declare-fun b!893578 () Bool)

(declare-fun res!605109 () Bool)

(assert (=> b!893578 (=> (not res!605109) (not e!499079))))

(assert (=> b!893578 (= res!605109 (not (contains!4371 lt!403809 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!893579 () Bool)

(declare-fun e!499083 () Bool)

(assert (=> b!893579 (= e!499083 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!893579 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!893580 () Bool)

(declare-fun e!499081 () Bool)

(declare-fun isEmpty!686 (ListLongMap!10749) Bool)

(assert (=> b!893580 (= e!499081 (isEmpty!686 lt!403809))))

(declare-fun b!893581 () Bool)

(assert (=> b!893581 (= e!499081 (= lt!403809 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5318 thiss!1181))))))

(declare-fun b!893582 () Bool)

(assert (=> b!893582 (= e!499082 (ListLongMap!10750 Nil!17874))))

(declare-fun b!893583 () Bool)

(declare-fun e!499080 () ListLongMap!10749)

(assert (=> b!893583 (= e!499082 e!499080)))

(declare-fun c!94130 () Bool)

(assert (=> b!893583 (= c!94130 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39657 () Bool)

(declare-fun call!39660 () ListLongMap!10749)

(assert (=> bm!39657 (= call!39660 (getCurrentListMapNoExtraKeys!3291 (_keys!10001 thiss!1181) (_values!5305 thiss!1181) (mask!25842 thiss!1181) (extraKeys!5014 thiss!1181) (zeroValue!5118 thiss!1181) (minValue!5118 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5318 thiss!1181)))))

(declare-fun b!893584 () Bool)

(assert (=> b!893584 (= e!499080 call!39660)))

(declare-fun b!893585 () Bool)

(declare-fun e!499084 () Bool)

(assert (=> b!893585 (= e!499084 e!499081)))

(declare-fun c!94127 () Bool)

(assert (=> b!893585 (= c!94127 (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893586 () Bool)

(assert (=> b!893586 (= e!499079 e!499084)))

(declare-fun c!94129 () Bool)

(assert (=> b!893586 (= c!94129 e!499083)))

(declare-fun res!605112 () Bool)

(assert (=> b!893586 (=> (not res!605112) (not e!499083))))

(assert (=> b!893586 (= res!605112 (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893587 () Bool)

(assert (=> b!893587 (= e!499084 e!499078)))

(assert (=> b!893587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun res!605111 () Bool)

(assert (=> b!893587 (= res!605111 (contains!4371 lt!403809 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!893587 (=> (not res!605111) (not e!499078))))

(declare-fun b!893588 () Bool)

(declare-fun lt!403810 () Unit!30397)

(declare-fun lt!403805 () Unit!30397)

(assert (=> b!893588 (= lt!403810 lt!403805)))

(declare-fun lt!403806 () (_ BitVec 64))

(declare-fun lt!403808 () V!29209)

(declare-fun lt!403804 () ListLongMap!10749)

(declare-fun lt!403807 () (_ BitVec 64))

(assert (=> b!893588 (not (contains!4371 (+!2543 lt!403804 (tuple2!12039 lt!403806 lt!403808)) lt!403807))))

(declare-fun addStillNotContains!214 (ListLongMap!10749 (_ BitVec 64) V!29209 (_ BitVec 64)) Unit!30397)

(assert (=> b!893588 (= lt!403805 (addStillNotContains!214 lt!403804 lt!403806 lt!403808 lt!403807))))

(assert (=> b!893588 (= lt!403807 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!893588 (= lt!403808 (get!13261 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!893588 (= lt!403806 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893588 (= lt!403804 call!39660)))

(assert (=> b!893588 (= e!499080 (+!2543 call!39660 (tuple2!12039 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) (get!13261 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!110327 c!94128) b!893582))

(assert (= (and d!110327 (not c!94128)) b!893583))

(assert (= (and b!893583 c!94130) b!893588))

(assert (= (and b!893583 (not c!94130)) b!893584))

(assert (= (or b!893588 b!893584) bm!39657))

(assert (= (and d!110327 res!605110) b!893578))

(assert (= (and b!893578 res!605109) b!893586))

(assert (= (and b!893586 res!605112) b!893579))

(assert (= (and b!893586 c!94129) b!893587))

(assert (= (and b!893586 (not c!94129)) b!893585))

(assert (= (and b!893587 res!605111) b!893577))

(assert (= (and b!893585 c!94127) b!893581))

(assert (= (and b!893585 (not c!94127)) b!893580))

(declare-fun b_lambda!12953 () Bool)

(assert (=> (not b_lambda!12953) (not b!893577)))

(assert (=> b!893577 t!25212))

(declare-fun b_and!26147 () Bool)

(assert (= b_and!26145 (and (=> t!25212 result!10075) b_and!26147)))

(declare-fun b_lambda!12955 () Bool)

(assert (=> (not b_lambda!12955) (not b!893588)))

(assert (=> b!893588 t!25212))

(declare-fun b_and!26149 () Bool)

(assert (= b_and!26147 (and (=> t!25212 result!10075) b_and!26149)))

(declare-fun m!831683 () Bool)

(assert (=> bm!39657 m!831683))

(assert (=> b!893587 m!831469))

(assert (=> b!893587 m!831469))

(declare-fun m!831685 () Bool)

(assert (=> b!893587 m!831685))

(assert (=> b!893579 m!831469))

(assert (=> b!893579 m!831469))

(assert (=> b!893579 m!831501))

(declare-fun m!831687 () Bool)

(assert (=> b!893588 m!831687))

(declare-fun m!831689 () Bool)

(assert (=> b!893588 m!831689))

(assert (=> b!893588 m!831511))

(declare-fun m!831691 () Bool)

(assert (=> b!893588 m!831691))

(assert (=> b!893588 m!831513))

(assert (=> b!893588 m!831511))

(assert (=> b!893588 m!831515))

(assert (=> b!893588 m!831513))

(assert (=> b!893588 m!831687))

(assert (=> b!893588 m!831469))

(declare-fun m!831693 () Bool)

(assert (=> b!893588 m!831693))

(assert (=> b!893581 m!831683))

(declare-fun m!831695 () Bool)

(assert (=> b!893580 m!831695))

(assert (=> b!893577 m!831511))

(assert (=> b!893577 m!831513))

(assert (=> b!893577 m!831511))

(assert (=> b!893577 m!831515))

(assert (=> b!893577 m!831513))

(assert (=> b!893577 m!831469))

(assert (=> b!893577 m!831469))

(declare-fun m!831697 () Bool)

(assert (=> b!893577 m!831697))

(assert (=> b!893583 m!831469))

(assert (=> b!893583 m!831469))

(assert (=> b!893583 m!831501))

(declare-fun m!831699 () Bool)

(assert (=> d!110327 m!831699))

(assert (=> d!110327 m!831451))

(declare-fun m!831701 () Bool)

(assert (=> b!893578 m!831701))

(assert (=> bm!39640 d!110327))

(declare-fun d!110329 () Bool)

(declare-fun e!499085 () Bool)

(assert (=> d!110329 e!499085))

(declare-fun res!605113 () Bool)

(assert (=> d!110329 (=> res!605113 e!499085)))

(declare-fun lt!403814 () Bool)

(assert (=> d!110329 (= res!605113 (not lt!403814))))

(declare-fun lt!403812 () Bool)

(assert (=> d!110329 (= lt!403814 lt!403812)))

(declare-fun lt!403813 () Unit!30397)

(declare-fun e!499086 () Unit!30397)

(assert (=> d!110329 (= lt!403813 e!499086)))

(declare-fun c!94131 () Bool)

(assert (=> d!110329 (= c!94131 lt!403812)))

(assert (=> d!110329 (= lt!403812 (containsKey!423 (toList!5390 lt!403719) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110329 (= (contains!4371 lt!403719 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) lt!403814)))

(declare-fun b!893589 () Bool)

(declare-fun lt!403811 () Unit!30397)

(assert (=> b!893589 (= e!499086 lt!403811)))

(assert (=> b!893589 (= lt!403811 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 lt!403719) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!893589 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893590 () Bool)

(declare-fun Unit!30407 () Unit!30397)

(assert (=> b!893590 (= e!499086 Unit!30407)))

(declare-fun b!893591 () Bool)

(assert (=> b!893591 (= e!499085 (isDefined!328 (getValueByKey!448 (toList!5390 lt!403719) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!110329 c!94131) b!893589))

(assert (= (and d!110329 (not c!94131)) b!893590))

(assert (= (and d!110329 (not res!605113)) b!893591))

(assert (=> d!110329 m!831469))

(declare-fun m!831703 () Bool)

(assert (=> d!110329 m!831703))

(assert (=> b!893589 m!831469))

(declare-fun m!831705 () Bool)

(assert (=> b!893589 m!831705))

(assert (=> b!893589 m!831469))

(declare-fun m!831707 () Bool)

(assert (=> b!893589 m!831707))

(assert (=> b!893589 m!831707))

(declare-fun m!831709 () Bool)

(assert (=> b!893589 m!831709))

(assert (=> b!893591 m!831469))

(assert (=> b!893591 m!831707))

(assert (=> b!893591 m!831707))

(assert (=> b!893591 m!831709))

(assert (=> b!893426 d!110329))

(declare-fun bm!39658 () Bool)

(declare-fun call!39661 () (_ BitVec 32))

(assert (=> bm!39658 (= call!39661 (arrayCountValidKeys!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893592 () Bool)

(declare-fun e!499087 () (_ BitVec 32))

(assert (=> b!893592 (= e!499087 #b00000000000000000000000000000000)))

(declare-fun b!893593 () Bool)

(declare-fun e!499088 () (_ BitVec 32))

(assert (=> b!893593 (= e!499087 e!499088)))

(declare-fun c!94133 () Bool)

(assert (=> b!893593 (= c!94133 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!110331 () Bool)

(declare-fun lt!403815 () (_ BitVec 32))

(assert (=> d!110331 (and (bvsge lt!403815 #b00000000000000000000000000000000) (bvsle lt!403815 (bvsub (size!25613 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!110331 (= lt!403815 e!499087)))

(declare-fun c!94132 () Bool)

(assert (=> d!110331 (= c!94132 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110331 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!25613 (_keys!10001 thiss!1181)) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110331 (= (arrayCountValidKeys!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))) lt!403815)))

(declare-fun b!893594 () Bool)

(assert (=> b!893594 (= e!499088 (bvadd #b00000000000000000000000000000001 call!39661))))

(declare-fun b!893595 () Bool)

(assert (=> b!893595 (= e!499088 call!39661)))

(assert (= (and d!110331 c!94132) b!893592))

(assert (= (and d!110331 (not c!94132)) b!893593))

(assert (= (and b!893593 c!94133) b!893594))

(assert (= (and b!893593 (not c!94133)) b!893595))

(assert (= (or b!893594 b!893595) bm!39658))

(declare-fun m!831711 () Bool)

(assert (=> bm!39658 m!831711))

(assert (=> b!893593 m!831603))

(assert (=> b!893593 m!831603))

(assert (=> b!893593 m!831673))

(assert (=> bm!39648 d!110331))

(declare-fun d!110333 () Bool)

(declare-fun e!499091 () Bool)

(assert (=> d!110333 e!499091))

(declare-fun res!605119 () Bool)

(assert (=> d!110333 (=> (not res!605119) (not e!499091))))

(declare-fun lt!403825 () ListLongMap!10749)

(assert (=> d!110333 (= res!605119 (contains!4371 lt!403825 (_1!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))))

(declare-fun lt!403827 () List!17877)

(assert (=> d!110333 (= lt!403825 (ListLongMap!10750 lt!403827))))

(declare-fun lt!403824 () Unit!30397)

(declare-fun lt!403826 () Unit!30397)

(assert (=> d!110333 (= lt!403824 lt!403826)))

(assert (=> d!110333 (= (getValueByKey!448 lt!403827 (_1!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))) (Some!453 (_2!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!247 (List!17877 (_ BitVec 64) V!29209) Unit!30397)

(assert (=> d!110333 (= lt!403826 (lemmaContainsTupThenGetReturnValue!247 lt!403827 (_1!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))) (_2!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))))

(declare-fun insertStrictlySorted!303 (List!17877 (_ BitVec 64) V!29209) List!17877)

(assert (=> d!110333 (= lt!403827 (insertStrictlySorted!303 (toList!5390 (ite c!94076 call!39648 (ite c!94074 call!39643 call!39646))) (_1!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))) (_2!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))))

(assert (=> d!110333 (= (+!2543 (ite c!94076 call!39648 (ite c!94074 call!39643 call!39646)) (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))) lt!403825)))

(declare-fun b!893600 () Bool)

(declare-fun res!605118 () Bool)

(assert (=> b!893600 (=> (not res!605118) (not e!499091))))

(assert (=> b!893600 (= res!605118 (= (getValueByKey!448 (toList!5390 lt!403825) (_1!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))) (Some!453 (_2!6029 (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))))

(declare-fun b!893601 () Bool)

(declare-fun contains!4373 (List!17877 tuple2!12038) Bool)

(assert (=> b!893601 (= e!499091 (contains!4373 (toList!5390 lt!403825) (ite (or c!94076 c!94074) (tuple2!12039 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5118 thiss!1181)) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(assert (= (and d!110333 res!605119) b!893600))

(assert (= (and b!893600 res!605118) b!893601))

(declare-fun m!831713 () Bool)

(assert (=> d!110333 m!831713))

(declare-fun m!831715 () Bool)

(assert (=> d!110333 m!831715))

(declare-fun m!831717 () Bool)

(assert (=> d!110333 m!831717))

(declare-fun m!831719 () Bool)

(assert (=> d!110333 m!831719))

(declare-fun m!831721 () Bool)

(assert (=> b!893600 m!831721))

(declare-fun m!831723 () Bool)

(assert (=> b!893601 m!831723))

(assert (=> bm!39639 d!110333))

(declare-fun d!110335 () Bool)

(assert (=> d!110335 (= (apply!407 lt!403719 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) (get!13259 (getValueByKey!448 (toList!5390 lt!403719) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25078 () Bool)

(assert (= bs!25078 d!110335))

(assert (=> bs!25078 m!831469))

(assert (=> bs!25078 m!831707))

(assert (=> bs!25078 m!831707))

(declare-fun m!831725 () Bool)

(assert (=> bs!25078 m!831725))

(assert (=> b!893425 d!110335))

(declare-fun d!110337 () Bool)

(declare-fun c!94136 () Bool)

(assert (=> d!110337 (= c!94136 ((_ is ValueCellFull!8610) (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!499094 () V!29209)

(assert (=> d!110337 (= (get!13261 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!499094)))

(declare-fun b!893606 () Bool)

(declare-fun get!13262 (ValueCell!8610 V!29209) V!29209)

(assert (=> b!893606 (= e!499094 (get!13262 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!893607 () Bool)

(declare-fun get!13263 (ValueCell!8610 V!29209) V!29209)

(assert (=> b!893607 (= e!499094 (get!13263 (select (arr!25169 (_values!5305 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1297 (defaultEntry!5318 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110337 c!94136) b!893606))

(assert (= (and d!110337 (not c!94136)) b!893607))

(assert (=> b!893606 m!831513))

(assert (=> b!893606 m!831511))

(declare-fun m!831727 () Bool)

(assert (=> b!893606 m!831727))

(assert (=> b!893607 m!831513))

(assert (=> b!893607 m!831511))

(declare-fun m!831729 () Bool)

(assert (=> b!893607 m!831729))

(assert (=> b!893425 d!110337))

(declare-fun b!893608 () Bool)

(declare-fun e!499095 () Bool)

(declare-fun e!499098 () Bool)

(assert (=> b!893608 (= e!499095 e!499098)))

(declare-fun c!94137 () Bool)

(assert (=> b!893608 (= c!94137 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!110339 () Bool)

(declare-fun res!605120 () Bool)

(declare-fun e!499096 () Bool)

(assert (=> d!110339 (=> res!605120 e!499096)))

(assert (=> d!110339 (= res!605120 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> d!110339 (= (arrayNoDuplicates!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94089 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) Nil!17876) Nil!17876)) e!499096)))

(declare-fun b!893609 () Bool)

(declare-fun e!499097 () Bool)

(assert (=> b!893609 (= e!499097 (contains!4372 (ite c!94089 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) Nil!17876) Nil!17876) (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!893610 () Bool)

(declare-fun call!39662 () Bool)

(assert (=> b!893610 (= e!499098 call!39662)))

(declare-fun b!893611 () Bool)

(assert (=> b!893611 (= e!499096 e!499095)))

(declare-fun res!605121 () Bool)

(assert (=> b!893611 (=> (not res!605121) (not e!499095))))

(assert (=> b!893611 (= res!605121 (not e!499097))))

(declare-fun res!605122 () Bool)

(assert (=> b!893611 (=> (not res!605122) (not e!499097))))

(assert (=> b!893611 (= res!605122 (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!893612 () Bool)

(assert (=> b!893612 (= e!499098 call!39662)))

(declare-fun bm!39659 () Bool)

(assert (=> bm!39659 (= call!39662 (arrayNoDuplicates!0 (_keys!10001 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!94137 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!94089 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) Nil!17876) Nil!17876)) (ite c!94089 (Cons!17875 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) Nil!17876) Nil!17876))))))

(assert (= (and d!110339 (not res!605120)) b!893611))

(assert (= (and b!893611 res!605122) b!893609))

(assert (= (and b!893611 res!605121) b!893608))

(assert (= (and b!893608 c!94137) b!893612))

(assert (= (and b!893608 (not c!94137)) b!893610))

(assert (= (or b!893612 b!893610) bm!39659))

(assert (=> b!893608 m!831603))

(assert (=> b!893608 m!831603))

(assert (=> b!893608 m!831673))

(assert (=> b!893609 m!831603))

(assert (=> b!893609 m!831603))

(declare-fun m!831731 () Bool)

(assert (=> b!893609 m!831731))

(assert (=> b!893611 m!831603))

(assert (=> b!893611 m!831603))

(assert (=> b!893611 m!831673))

(assert (=> bm!39659 m!831603))

(declare-fun m!831733 () Bool)

(assert (=> bm!39659 m!831733))

(assert (=> bm!39652 d!110339))

(declare-fun b!893614 () Bool)

(declare-fun e!499099 () Option!454)

(declare-fun e!499100 () Option!454)

(assert (=> b!893614 (= e!499099 e!499100)))

(declare-fun c!94139 () Bool)

(assert (=> b!893614 (= c!94139 (and ((_ is Cons!17873) (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181))))) (not (= (_1!6029 (h!19004 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181)))))) key!785))))))

(declare-fun b!893615 () Bool)

(assert (=> b!893615 (= e!499100 (getValueByKey!448 (t!25206 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181))))) key!785))))

(declare-fun b!893616 () Bool)

(assert (=> b!893616 (= e!499100 None!452)))

(declare-fun b!893613 () Bool)

(assert (=> b!893613 (= e!499099 (Some!453 (_2!6029 (h!19004 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181))))))))))

(declare-fun d!110341 () Bool)

(declare-fun c!94138 () Bool)

(assert (=> d!110341 (= c!94138 (and ((_ is Cons!17873) (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181))))) (= (_1!6029 (h!19004 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181)))))) key!785)))))

(assert (=> d!110341 (= (getValueByKey!448 (t!25206 (t!25206 (toList!5390 (map!12215 thiss!1181)))) key!785) e!499099)))

(assert (= (and d!110341 c!94138) b!893613))

(assert (= (and d!110341 (not c!94138)) b!893614))

(assert (= (and b!893614 c!94139) b!893615))

(assert (= (and b!893614 (not c!94139)) b!893616))

(declare-fun m!831735 () Bool)

(assert (=> b!893615 m!831735))

(assert (=> b!893352 d!110341))

(declare-fun d!110343 () Bool)

(assert (=> d!110343 (= (apply!407 (+!2543 lt!403722 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) lt!403710) (get!13259 (getValueByKey!448 (toList!5390 (+!2543 lt!403722 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))) lt!403710)))))

(declare-fun bs!25079 () Bool)

(assert (= bs!25079 d!110343))

(declare-fun m!831737 () Bool)

(assert (=> bs!25079 m!831737))

(assert (=> bs!25079 m!831737))

(declare-fun m!831739 () Bool)

(assert (=> bs!25079 m!831739))

(assert (=> b!893408 d!110343))

(declare-fun d!110345 () Bool)

(declare-fun e!499101 () Bool)

(assert (=> d!110345 e!499101))

(declare-fun res!605124 () Bool)

(assert (=> d!110345 (=> (not res!605124) (not e!499101))))

(declare-fun lt!403829 () ListLongMap!10749)

(assert (=> d!110345 (= res!605124 (contains!4371 lt!403829 (_1!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))))))

(declare-fun lt!403831 () List!17877)

(assert (=> d!110345 (= lt!403829 (ListLongMap!10750 lt!403831))))

(declare-fun lt!403828 () Unit!30397)

(declare-fun lt!403830 () Unit!30397)

(assert (=> d!110345 (= lt!403828 lt!403830)))

(assert (=> d!110345 (= (getValueByKey!448 lt!403831 (_1!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110345 (= lt!403830 (lemmaContainsTupThenGetReturnValue!247 lt!403831 (_1!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110345 (= lt!403831 (insertStrictlySorted!303 (toList!5390 lt!403726) (_1!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110345 (= (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) lt!403829)))

(declare-fun b!893617 () Bool)

(declare-fun res!605123 () Bool)

(assert (=> b!893617 (=> (not res!605123) (not e!499101))))

(assert (=> b!893617 (= res!605123 (= (getValueByKey!448 (toList!5390 lt!403829) (_1!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))))))))

(declare-fun b!893618 () Bool)

(assert (=> b!893618 (= e!499101 (contains!4373 (toList!5390 lt!403829) (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))))))

(assert (= (and d!110345 res!605124) b!893617))

(assert (= (and b!893617 res!605123) b!893618))

(declare-fun m!831741 () Bool)

(assert (=> d!110345 m!831741))

(declare-fun m!831743 () Bool)

(assert (=> d!110345 m!831743))

(declare-fun m!831745 () Bool)

(assert (=> d!110345 m!831745))

(declare-fun m!831747 () Bool)

(assert (=> d!110345 m!831747))

(declare-fun m!831749 () Bool)

(assert (=> b!893617 m!831749))

(declare-fun m!831751 () Bool)

(assert (=> b!893618 m!831751))

(assert (=> b!893408 d!110345))

(declare-fun d!110347 () Bool)

(assert (=> d!110347 (= (apply!407 (+!2543 lt!403730 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) lt!403720) (apply!407 lt!403730 lt!403720))))

(declare-fun lt!403834 () Unit!30397)

(declare-fun choose!1475 (ListLongMap!10749 (_ BitVec 64) V!29209 (_ BitVec 64)) Unit!30397)

(assert (=> d!110347 (= lt!403834 (choose!1475 lt!403730 lt!403717 (zeroValue!5118 thiss!1181) lt!403720))))

(declare-fun e!499104 () Bool)

(assert (=> d!110347 e!499104))

(declare-fun res!605127 () Bool)

(assert (=> d!110347 (=> (not res!605127) (not e!499104))))

(assert (=> d!110347 (= res!605127 (contains!4371 lt!403730 lt!403720))))

(assert (=> d!110347 (= (addApplyDifferent!329 lt!403730 lt!403717 (zeroValue!5118 thiss!1181) lt!403720) lt!403834)))

(declare-fun b!893622 () Bool)

(assert (=> b!893622 (= e!499104 (not (= lt!403720 lt!403717)))))

(assert (= (and d!110347 res!605127) b!893622))

(declare-fun m!831753 () Bool)

(assert (=> d!110347 m!831753))

(assert (=> d!110347 m!831523))

(assert (=> d!110347 m!831521))

(assert (=> d!110347 m!831523))

(assert (=> d!110347 m!831525))

(declare-fun m!831755 () Bool)

(assert (=> d!110347 m!831755))

(assert (=> b!893408 d!110347))

(declare-fun d!110349 () Bool)

(assert (=> d!110349 (= (apply!407 (+!2543 lt!403724 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) lt!403714) (get!13259 (getValueByKey!448 (toList!5390 (+!2543 lt!403724 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))) lt!403714)))))

(declare-fun bs!25080 () Bool)

(assert (= bs!25080 d!110349))

(declare-fun m!831757 () Bool)

(assert (=> bs!25080 m!831757))

(assert (=> bs!25080 m!831757))

(declare-fun m!831759 () Bool)

(assert (=> bs!25080 m!831759))

(assert (=> b!893408 d!110349))

(declare-fun d!110351 () Bool)

(assert (=> d!110351 (= (apply!407 lt!403724 lt!403714) (get!13259 (getValueByKey!448 (toList!5390 lt!403724) lt!403714)))))

(declare-fun bs!25081 () Bool)

(assert (= bs!25081 d!110351))

(declare-fun m!831761 () Bool)

(assert (=> bs!25081 m!831761))

(assert (=> bs!25081 m!831761))

(declare-fun m!831763 () Bool)

(assert (=> bs!25081 m!831763))

(assert (=> b!893408 d!110351))

(declare-fun d!110353 () Bool)

(declare-fun e!499105 () Bool)

(assert (=> d!110353 e!499105))

(declare-fun res!605129 () Bool)

(assert (=> d!110353 (=> (not res!605129) (not e!499105))))

(declare-fun lt!403836 () ListLongMap!10749)

(assert (=> d!110353 (= res!605129 (contains!4371 lt!403836 (_1!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))))))

(declare-fun lt!403838 () List!17877)

(assert (=> d!110353 (= lt!403836 (ListLongMap!10750 lt!403838))))

(declare-fun lt!403835 () Unit!30397)

(declare-fun lt!403837 () Unit!30397)

(assert (=> d!110353 (= lt!403835 lt!403837)))

(assert (=> d!110353 (= (getValueByKey!448 lt!403838 (_1!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))))))

(assert (=> d!110353 (= lt!403837 (lemmaContainsTupThenGetReturnValue!247 lt!403838 (_1!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))))))

(assert (=> d!110353 (= lt!403838 (insertStrictlySorted!303 (toList!5390 lt!403724) (_1!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))))))

(assert (=> d!110353 (= (+!2543 lt!403724 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) lt!403836)))

(declare-fun b!893623 () Bool)

(declare-fun res!605128 () Bool)

(assert (=> b!893623 (=> (not res!605128) (not e!499105))))

(assert (=> b!893623 (= res!605128 (= (getValueByKey!448 (toList!5390 lt!403836) (_1!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))))))))

(declare-fun b!893624 () Bool)

(assert (=> b!893624 (= e!499105 (contains!4373 (toList!5390 lt!403836) (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))))))

(assert (= (and d!110353 res!605129) b!893623))

(assert (= (and b!893623 res!605128) b!893624))

(declare-fun m!831765 () Bool)

(assert (=> d!110353 m!831765))

(declare-fun m!831767 () Bool)

(assert (=> d!110353 m!831767))

(declare-fun m!831769 () Bool)

(assert (=> d!110353 m!831769))

(declare-fun m!831771 () Bool)

(assert (=> d!110353 m!831771))

(declare-fun m!831773 () Bool)

(assert (=> b!893623 m!831773))

(declare-fun m!831775 () Bool)

(assert (=> b!893624 m!831775))

(assert (=> b!893408 d!110353))

(declare-fun d!110355 () Bool)

(assert (=> d!110355 (= (apply!407 (+!2543 lt!403722 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) lt!403710) (apply!407 lt!403722 lt!403710))))

(declare-fun lt!403839 () Unit!30397)

(assert (=> d!110355 (= lt!403839 (choose!1475 lt!403722 lt!403723 (minValue!5118 thiss!1181) lt!403710))))

(declare-fun e!499106 () Bool)

(assert (=> d!110355 e!499106))

(declare-fun res!605130 () Bool)

(assert (=> d!110355 (=> (not res!605130) (not e!499106))))

(assert (=> d!110355 (= res!605130 (contains!4371 lt!403722 lt!403710))))

(assert (=> d!110355 (= (addApplyDifferent!329 lt!403722 lt!403723 (minValue!5118 thiss!1181) lt!403710) lt!403839)))

(declare-fun b!893625 () Bool)

(assert (=> b!893625 (= e!499106 (not (= lt!403710 lt!403723)))))

(assert (= (and d!110355 res!605130) b!893625))

(declare-fun m!831777 () Bool)

(assert (=> d!110355 m!831777))

(assert (=> d!110355 m!831529))

(assert (=> d!110355 m!831541))

(assert (=> d!110355 m!831529))

(assert (=> d!110355 m!831535))

(declare-fun m!831779 () Bool)

(assert (=> d!110355 m!831779))

(assert (=> b!893408 d!110355))

(declare-fun d!110357 () Bool)

(assert (=> d!110357 (= (apply!407 lt!403730 lt!403720) (get!13259 (getValueByKey!448 (toList!5390 lt!403730) lt!403720)))))

(declare-fun bs!25082 () Bool)

(assert (= bs!25082 d!110357))

(declare-fun m!831781 () Bool)

(assert (=> bs!25082 m!831781))

(assert (=> bs!25082 m!831781))

(declare-fun m!831783 () Bool)

(assert (=> bs!25082 m!831783))

(assert (=> b!893408 d!110357))

(declare-fun d!110359 () Bool)

(assert (=> d!110359 (= (apply!407 lt!403722 lt!403710) (get!13259 (getValueByKey!448 (toList!5390 lt!403722) lt!403710)))))

(declare-fun bs!25083 () Bool)

(assert (= bs!25083 d!110359))

(declare-fun m!831785 () Bool)

(assert (=> bs!25083 m!831785))

(assert (=> bs!25083 m!831785))

(declare-fun m!831787 () Bool)

(assert (=> bs!25083 m!831787))

(assert (=> b!893408 d!110359))

(declare-fun d!110361 () Bool)

(assert (=> d!110361 (= (apply!407 (+!2543 lt!403724 (tuple2!12039 lt!403713 (minValue!5118 thiss!1181))) lt!403714) (apply!407 lt!403724 lt!403714))))

(declare-fun lt!403840 () Unit!30397)

(assert (=> d!110361 (= lt!403840 (choose!1475 lt!403724 lt!403713 (minValue!5118 thiss!1181) lt!403714))))

(declare-fun e!499107 () Bool)

(assert (=> d!110361 e!499107))

(declare-fun res!605131 () Bool)

(assert (=> d!110361 (=> (not res!605131) (not e!499107))))

(assert (=> d!110361 (= res!605131 (contains!4371 lt!403724 lt!403714))))

(assert (=> d!110361 (= (addApplyDifferent!329 lt!403724 lt!403713 (minValue!5118 thiss!1181) lt!403714) lt!403840)))

(declare-fun b!893626 () Bool)

(assert (=> b!893626 (= e!499107 (not (= lt!403714 lt!403713)))))

(assert (= (and d!110361 res!605131) b!893626))

(declare-fun m!831789 () Bool)

(assert (=> d!110361 m!831789))

(assert (=> d!110361 m!831531))

(assert (=> d!110361 m!831543))

(assert (=> d!110361 m!831531))

(assert (=> d!110361 m!831533))

(declare-fun m!831791 () Bool)

(assert (=> d!110361 m!831791))

(assert (=> b!893408 d!110361))

(declare-fun d!110363 () Bool)

(declare-fun e!499108 () Bool)

(assert (=> d!110363 e!499108))

(declare-fun res!605133 () Bool)

(assert (=> d!110363 (=> (not res!605133) (not e!499108))))

(declare-fun lt!403842 () ListLongMap!10749)

(assert (=> d!110363 (= res!605133 (contains!4371 lt!403842 (_1!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))))))

(declare-fun lt!403844 () List!17877)

(assert (=> d!110363 (= lt!403842 (ListLongMap!10750 lt!403844))))

(declare-fun lt!403841 () Unit!30397)

(declare-fun lt!403843 () Unit!30397)

(assert (=> d!110363 (= lt!403841 lt!403843)))

(assert (=> d!110363 (= (getValueByKey!448 lt!403844 (_1!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))))))

(assert (=> d!110363 (= lt!403843 (lemmaContainsTupThenGetReturnValue!247 lt!403844 (_1!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))))))

(assert (=> d!110363 (= lt!403844 (insertStrictlySorted!303 (toList!5390 lt!403722) (_1!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))))))

(assert (=> d!110363 (= (+!2543 lt!403722 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))) lt!403842)))

(declare-fun b!893627 () Bool)

(declare-fun res!605132 () Bool)

(assert (=> b!893627 (=> (not res!605132) (not e!499108))))

(assert (=> b!893627 (= res!605132 (= (getValueByKey!448 (toList!5390 lt!403842) (_1!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))))))))

(declare-fun b!893628 () Bool)

(assert (=> b!893628 (= e!499108 (contains!4373 (toList!5390 lt!403842) (tuple2!12039 lt!403723 (minValue!5118 thiss!1181))))))

(assert (= (and d!110363 res!605133) b!893627))

(assert (= (and b!893627 res!605132) b!893628))

(declare-fun m!831793 () Bool)

(assert (=> d!110363 m!831793))

(declare-fun m!831795 () Bool)

(assert (=> d!110363 m!831795))

(declare-fun m!831797 () Bool)

(assert (=> d!110363 m!831797))

(declare-fun m!831799 () Bool)

(assert (=> d!110363 m!831799))

(declare-fun m!831801 () Bool)

(assert (=> b!893627 m!831801))

(declare-fun m!831803 () Bool)

(assert (=> b!893628 m!831803))

(assert (=> b!893408 d!110363))

(declare-fun d!110365 () Bool)

(declare-fun e!499109 () Bool)

(assert (=> d!110365 e!499109))

(declare-fun res!605134 () Bool)

(assert (=> d!110365 (=> res!605134 e!499109)))

(declare-fun lt!403848 () Bool)

(assert (=> d!110365 (= res!605134 (not lt!403848))))

(declare-fun lt!403846 () Bool)

(assert (=> d!110365 (= lt!403848 lt!403846)))

(declare-fun lt!403847 () Unit!30397)

(declare-fun e!499110 () Unit!30397)

(assert (=> d!110365 (= lt!403847 e!499110)))

(declare-fun c!94140 () Bool)

(assert (=> d!110365 (= c!94140 lt!403846)))

(assert (=> d!110365 (= lt!403846 (containsKey!423 (toList!5390 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) lt!403727))))

(assert (=> d!110365 (= (contains!4371 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) lt!403727) lt!403848)))

(declare-fun b!893629 () Bool)

(declare-fun lt!403845 () Unit!30397)

(assert (=> b!893629 (= e!499110 lt!403845)))

(assert (=> b!893629 (= lt!403845 (lemmaContainsKeyImpliesGetValueByKeyDefined!318 (toList!5390 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) lt!403727))))

(assert (=> b!893629 (isDefined!328 (getValueByKey!448 (toList!5390 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) lt!403727))))

(declare-fun b!893630 () Bool)

(declare-fun Unit!30408 () Unit!30397)

(assert (=> b!893630 (= e!499110 Unit!30408)))

(declare-fun b!893631 () Bool)

(assert (=> b!893631 (= e!499109 (isDefined!328 (getValueByKey!448 (toList!5390 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181)))) lt!403727)))))

(assert (= (and d!110365 c!94140) b!893629))

(assert (= (and d!110365 (not c!94140)) b!893630))

(assert (= (and d!110365 (not res!605134)) b!893631))

(declare-fun m!831805 () Bool)

(assert (=> d!110365 m!831805))

(declare-fun m!831807 () Bool)

(assert (=> b!893629 m!831807))

(declare-fun m!831809 () Bool)

(assert (=> b!893629 m!831809))

(assert (=> b!893629 m!831809))

(declare-fun m!831811 () Bool)

(assert (=> b!893629 m!831811))

(assert (=> b!893631 m!831809))

(assert (=> b!893631 m!831809))

(assert (=> b!893631 m!831811))

(assert (=> b!893408 d!110365))

(declare-fun d!110367 () Bool)

(assert (=> d!110367 (contains!4371 (+!2543 lt!403726 (tuple2!12039 lt!403728 (zeroValue!5118 thiss!1181))) lt!403727)))

(declare-fun lt!403851 () Unit!30397)

(declare-fun choose!1476 (ListLongMap!10749 (_ BitVec 64) V!29209 (_ BitVec 64)) Unit!30397)

(assert (=> d!110367 (= lt!403851 (choose!1476 lt!403726 lt!403728 (zeroValue!5118 thiss!1181) lt!403727))))

(assert (=> d!110367 (contains!4371 lt!403726 lt!403727)))

(assert (=> d!110367 (= (addStillContains!329 lt!403726 lt!403728 (zeroValue!5118 thiss!1181) lt!403727) lt!403851)))

(declare-fun bs!25084 () Bool)

(assert (= bs!25084 d!110367))

(assert (=> bs!25084 m!831537))

(assert (=> bs!25084 m!831537))

(assert (=> bs!25084 m!831545))

(declare-fun m!831813 () Bool)

(assert (=> bs!25084 m!831813))

(declare-fun m!831815 () Bool)

(assert (=> bs!25084 m!831815))

(assert (=> b!893408 d!110367))

(declare-fun d!110369 () Bool)

(declare-fun e!499111 () Bool)

(assert (=> d!110369 e!499111))

(declare-fun res!605136 () Bool)

(assert (=> d!110369 (=> (not res!605136) (not e!499111))))

(declare-fun lt!403853 () ListLongMap!10749)

(assert (=> d!110369 (= res!605136 (contains!4371 lt!403853 (_1!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))))))

(declare-fun lt!403855 () List!17877)

(assert (=> d!110369 (= lt!403853 (ListLongMap!10750 lt!403855))))

(declare-fun lt!403852 () Unit!30397)

(declare-fun lt!403854 () Unit!30397)

(assert (=> d!110369 (= lt!403852 lt!403854)))

(assert (=> d!110369 (= (getValueByKey!448 lt!403855 (_1!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110369 (= lt!403854 (lemmaContainsTupThenGetReturnValue!247 lt!403855 (_1!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110369 (= lt!403855 (insertStrictlySorted!303 (toList!5390 lt!403730) (_1!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))))))

(assert (=> d!110369 (= (+!2543 lt!403730 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) lt!403853)))

(declare-fun b!893633 () Bool)

(declare-fun res!605135 () Bool)

(assert (=> b!893633 (=> (not res!605135) (not e!499111))))

(assert (=> b!893633 (= res!605135 (= (getValueByKey!448 (toList!5390 lt!403853) (_1!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))))))))

(declare-fun b!893634 () Bool)

(assert (=> b!893634 (= e!499111 (contains!4373 (toList!5390 lt!403853) (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))))))

(assert (= (and d!110369 res!605136) b!893633))

(assert (= (and b!893633 res!605135) b!893634))

(declare-fun m!831817 () Bool)

(assert (=> d!110369 m!831817))

(declare-fun m!831819 () Bool)

(assert (=> d!110369 m!831819))

(declare-fun m!831821 () Bool)

(assert (=> d!110369 m!831821))

(declare-fun m!831823 () Bool)

(assert (=> d!110369 m!831823))

(declare-fun m!831825 () Bool)

(assert (=> b!893633 m!831825))

(declare-fun m!831827 () Bool)

(assert (=> b!893634 m!831827))

(assert (=> b!893408 d!110369))

(assert (=> b!893408 d!110327))

(declare-fun d!110371 () Bool)

(assert (=> d!110371 (= (apply!407 (+!2543 lt!403730 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181))) lt!403720) (get!13259 (getValueByKey!448 (toList!5390 (+!2543 lt!403730 (tuple2!12039 lt!403717 (zeroValue!5118 thiss!1181)))) lt!403720)))))

(declare-fun bs!25085 () Bool)

(assert (= bs!25085 d!110371))

(declare-fun m!831829 () Bool)

(assert (=> bs!25085 m!831829))

(assert (=> bs!25085 m!831829))

(declare-fun m!831831 () Bool)

(assert (=> bs!25085 m!831831))

(assert (=> b!893408 d!110371))

(assert (=> b!893424 d!110293))

(assert (=> b!893423 d!110293))

(assert (=> b!893470 d!110293))

(declare-fun d!110373 () Bool)

(declare-fun e!499112 () Bool)

(assert (=> d!110373 e!499112))

(declare-fun res!605138 () Bool)

(assert (=> d!110373 (=> (not res!605138) (not e!499112))))

(declare-fun lt!403857 () ListLongMap!10749)

(assert (=> d!110373 (= res!605138 (contains!4371 lt!403857 (_1!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(declare-fun lt!403859 () List!17877)

(assert (=> d!110373 (= lt!403857 (ListLongMap!10750 lt!403859))))

(declare-fun lt!403856 () Unit!30397)

(declare-fun lt!403858 () Unit!30397)

(assert (=> d!110373 (= lt!403856 lt!403858)))

(assert (=> d!110373 (= (getValueByKey!448 lt!403859 (_1!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(assert (=> d!110373 (= lt!403858 (lemmaContainsTupThenGetReturnValue!247 lt!403859 (_1!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(assert (=> d!110373 (= lt!403859 (insertStrictlySorted!303 (toList!5390 call!39645) (_1!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))) (_2!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))))))

(assert (=> d!110373 (= (+!2543 call!39645 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))) lt!403857)))

(declare-fun b!893635 () Bool)

(declare-fun res!605137 () Bool)

(assert (=> b!893635 (=> (not res!605137) (not e!499112))))

(assert (=> b!893635 (= res!605137 (= (getValueByKey!448 (toList!5390 lt!403857) (_1!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181)))) (Some!453 (_2!6029 (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))))

(declare-fun b!893636 () Bool)

(assert (=> b!893636 (= e!499112 (contains!4373 (toList!5390 lt!403857) (tuple2!12039 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5118 thiss!1181))))))

(assert (= (and d!110373 res!605138) b!893635))

(assert (= (and b!893635 res!605137) b!893636))

(declare-fun m!831833 () Bool)

(assert (=> d!110373 m!831833))

(declare-fun m!831835 () Bool)

(assert (=> d!110373 m!831835))

(declare-fun m!831837 () Bool)

(assert (=> d!110373 m!831837))

(declare-fun m!831839 () Bool)

(assert (=> d!110373 m!831839))

(declare-fun m!831841 () Bool)

(assert (=> b!893635 m!831841))

(declare-fun m!831843 () Bool)

(assert (=> b!893636 m!831843))

(assert (=> b!893422 d!110373))

(assert (=> d!110257 d!110275))

(declare-fun b!893655 () Bool)

(declare-fun e!499126 () SeekEntryResult!8857)

(assert (=> b!893655 (= e!499126 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25842 thiss!1181)) #b00000000000000000000000000000000 (mask!25842 thiss!1181)) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893657 () Bool)

(declare-fun lt!403864 () SeekEntryResult!8857)

(assert (=> b!893657 (and (bvsge (index!37800 lt!403864) #b00000000000000000000000000000000) (bvslt (index!37800 lt!403864) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun res!605145 () Bool)

(assert (=> b!893657 (= res!605145 (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403864)) key!785))))

(declare-fun e!499123 () Bool)

(assert (=> b!893657 (=> res!605145 e!499123)))

(declare-fun e!499124 () Bool)

(assert (=> b!893657 (= e!499124 e!499123)))

(declare-fun b!893658 () Bool)

(assert (=> b!893658 (and (bvsge (index!37800 lt!403864) #b00000000000000000000000000000000) (bvslt (index!37800 lt!403864) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun res!605146 () Bool)

(assert (=> b!893658 (= res!605146 (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403864)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893658 (=> res!605146 e!499123)))

(declare-fun b!893659 () Bool)

(declare-fun e!499127 () Bool)

(assert (=> b!893659 (= e!499127 (bvsge (x!75950 lt!403864) #b01111111111111111111111111111110))))

(declare-fun b!893660 () Bool)

(declare-fun e!499125 () SeekEntryResult!8857)

(assert (=> b!893660 (= e!499125 e!499126)))

(declare-fun c!94148 () Bool)

(declare-fun lt!403865 () (_ BitVec 64))

(assert (=> b!893660 (= c!94148 (or (= lt!403865 key!785) (= (bvadd lt!403865 lt!403865) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!893661 () Bool)

(assert (=> b!893661 (= e!499125 (Intermediate!8857 true (toIndex!0 key!785 (mask!25842 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!893662 () Bool)

(assert (=> b!893662 (= e!499127 e!499124)))

(declare-fun res!605147 () Bool)

(assert (=> b!893662 (= res!605147 (and ((_ is Intermediate!8857) lt!403864) (not (undefined!9669 lt!403864)) (bvslt (x!75950 lt!403864) #b01111111111111111111111111111110) (bvsge (x!75950 lt!403864) #b00000000000000000000000000000000) (bvsge (x!75950 lt!403864) #b00000000000000000000000000000000)))))

(assert (=> b!893662 (=> (not res!605147) (not e!499124))))

(declare-fun b!893663 () Bool)

(assert (=> b!893663 (= e!499126 (Intermediate!8857 false (toIndex!0 key!785 (mask!25842 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!893656 () Bool)

(assert (=> b!893656 (and (bvsge (index!37800 lt!403864) #b00000000000000000000000000000000) (bvslt (index!37800 lt!403864) (size!25613 (_keys!10001 thiss!1181))))))

(assert (=> b!893656 (= e!499123 (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403864)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!110375 () Bool)

(assert (=> d!110375 e!499127))

(declare-fun c!94147 () Bool)

(assert (=> d!110375 (= c!94147 (and ((_ is Intermediate!8857) lt!403864) (undefined!9669 lt!403864)))))

(assert (=> d!110375 (= lt!403864 e!499125)))

(declare-fun c!94149 () Bool)

(assert (=> d!110375 (= c!94149 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!110375 (= lt!403865 (select (arr!25168 (_keys!10001 thiss!1181)) (toIndex!0 key!785 (mask!25842 thiss!1181))))))

(assert (=> d!110375 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25842 thiss!1181)) key!785 (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403864)))

(assert (= (and d!110375 c!94149) b!893661))

(assert (= (and d!110375 (not c!94149)) b!893660))

(assert (= (and b!893660 c!94148) b!893663))

(assert (= (and b!893660 (not c!94148)) b!893655))

(assert (= (and d!110375 c!94147) b!893659))

(assert (= (and d!110375 (not c!94147)) b!893662))

(assert (= (and b!893662 res!605147) b!893657))

(assert (= (and b!893657 (not res!605145)) b!893658))

(assert (= (and b!893658 (not res!605146)) b!893656))

(assert (=> d!110375 m!831457))

(declare-fun m!831845 () Bool)

(assert (=> d!110375 m!831845))

(assert (=> d!110375 m!831451))

(declare-fun m!831847 () Bool)

(assert (=> b!893656 m!831847))

(assert (=> b!893655 m!831457))

(declare-fun m!831849 () Bool)

(assert (=> b!893655 m!831849))

(assert (=> b!893655 m!831849))

(declare-fun m!831851 () Bool)

(assert (=> b!893655 m!831851))

(assert (=> b!893658 m!831847))

(assert (=> b!893657 m!831847))

(assert (=> d!110241 d!110375))

(declare-fun d!110377 () Bool)

(declare-fun lt!403871 () (_ BitVec 32))

(declare-fun lt!403870 () (_ BitVec 32))

(assert (=> d!110377 (= lt!403871 (bvmul (bvxor lt!403870 (bvlshr lt!403870 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110377 (= lt!403870 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110377 (and (bvsge (mask!25842 thiss!1181) #b00000000000000000000000000000000) (let ((res!605148 (let ((h!19007 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!75962 (bvmul (bvxor h!19007 (bvlshr h!19007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!75962 (bvlshr x!75962 #b00000000000000000000000000001101)) (mask!25842 thiss!1181)))))) (and (bvslt res!605148 (bvadd (mask!25842 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605148 #b00000000000000000000000000000000))))))

(assert (=> d!110377 (= (toIndex!0 key!785 (mask!25842 thiss!1181)) (bvand (bvxor lt!403871 (bvlshr lt!403871 #b00000000000000000000000000001101)) (mask!25842 thiss!1181)))))

(assert (=> d!110241 d!110377))

(assert (=> d!110241 d!110275))

(declare-fun d!110379 () Bool)

(declare-fun lt!403874 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!402 (List!17879) (InoxSet (_ BitVec 64)))

(assert (=> d!110379 (= lt!403874 (select (content!402 Nil!17876) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!499133 () Bool)

(assert (=> d!110379 (= lt!403874 e!499133)))

(declare-fun res!605154 () Bool)

(assert (=> d!110379 (=> (not res!605154) (not e!499133))))

(assert (=> d!110379 (= res!605154 ((_ is Cons!17875) Nil!17876))))

(assert (=> d!110379 (= (contains!4372 Nil!17876 (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)) lt!403874)))

(declare-fun b!893668 () Bool)

(declare-fun e!499132 () Bool)

(assert (=> b!893668 (= e!499133 e!499132)))

(declare-fun res!605153 () Bool)

(assert (=> b!893668 (=> res!605153 e!499132)))

(assert (=> b!893668 (= res!605153 (= (h!19006 Nil!17876) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893669 () Bool)

(assert (=> b!893669 (= e!499132 (contains!4372 (t!25210 Nil!17876) (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110379 res!605154) b!893668))

(assert (= (and b!893668 (not res!605153)) b!893669))

(declare-fun m!831853 () Bool)

(assert (=> d!110379 m!831853))

(assert (=> d!110379 m!831469))

(declare-fun m!831855 () Bool)

(assert (=> d!110379 m!831855))

(assert (=> b!893669 m!831469))

(declare-fun m!831857 () Bool)

(assert (=> b!893669 m!831857))

(assert (=> b!893468 d!110379))

(declare-fun d!110381 () Bool)

(assert (=> d!110381 (= (validKeyInArray!0 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606)) (and (not (= (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893340 d!110381))

(assert (=> b!893467 d!110293))

(declare-fun d!110383 () Bool)

(declare-fun res!605155 () Bool)

(declare-fun e!499134 () Bool)

(assert (=> d!110383 (=> res!605155 e!499134)))

(assert (=> d!110383 (= res!605155 (and ((_ is Cons!17873) (toList!5390 (map!12215 thiss!1181))) (= (_1!6029 (h!19004 (toList!5390 (map!12215 thiss!1181)))) key!785)))))

(assert (=> d!110383 (= (containsKey!423 (toList!5390 (map!12215 thiss!1181)) key!785) e!499134)))

(declare-fun b!893670 () Bool)

(declare-fun e!499135 () Bool)

(assert (=> b!893670 (= e!499134 e!499135)))

(declare-fun res!605156 () Bool)

(assert (=> b!893670 (=> (not res!605156) (not e!499135))))

(assert (=> b!893670 (= res!605156 (and (or (not ((_ is Cons!17873) (toList!5390 (map!12215 thiss!1181)))) (bvsle (_1!6029 (h!19004 (toList!5390 (map!12215 thiss!1181)))) key!785)) ((_ is Cons!17873) (toList!5390 (map!12215 thiss!1181))) (bvslt (_1!6029 (h!19004 (toList!5390 (map!12215 thiss!1181)))) key!785)))))

(declare-fun b!893671 () Bool)

(assert (=> b!893671 (= e!499135 (containsKey!423 (t!25206 (toList!5390 (map!12215 thiss!1181))) key!785))))

(assert (= (and d!110383 (not res!605155)) b!893670))

(assert (= (and b!893670 res!605156) b!893671))

(declare-fun m!831859 () Bool)

(assert (=> b!893671 m!831859))

(assert (=> d!110269 d!110383))

(declare-fun d!110385 () Bool)

(assert (=> d!110385 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403653 #b00000000000000000000000000000000)))

(declare-fun lt!403875 () Unit!30397)

(assert (=> d!110385 (= lt!403875 (choose!13 (_keys!10001 thiss!1181) lt!403653 lt!403606))))

(assert (=> d!110385 (bvsge lt!403606 #b00000000000000000000000000000000)))

(assert (=> d!110385 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10001 thiss!1181) lt!403653 lt!403606) lt!403875)))

(declare-fun bs!25086 () Bool)

(assert (= bs!25086 d!110385))

(assert (=> bs!25086 m!831479))

(declare-fun m!831861 () Bool)

(assert (=> bs!25086 m!831861))

(assert (=> b!893338 d!110385))

(declare-fun d!110387 () Bool)

(declare-fun res!605157 () Bool)

(declare-fun e!499136 () Bool)

(assert (=> d!110387 (=> res!605157 e!499136)))

(assert (=> d!110387 (= res!605157 (= (select (arr!25168 (_keys!10001 thiss!1181)) #b00000000000000000000000000000000) lt!403653))))

(assert (=> d!110387 (= (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403653 #b00000000000000000000000000000000) e!499136)))

(declare-fun b!893672 () Bool)

(declare-fun e!499137 () Bool)

(assert (=> b!893672 (= e!499136 e!499137)))

(declare-fun res!605158 () Bool)

(assert (=> b!893672 (=> (not res!605158) (not e!499137))))

(assert (=> b!893672 (= res!605158 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25613 (_keys!10001 thiss!1181))))))

(declare-fun b!893673 () Bool)

(assert (=> b!893673 (= e!499137 (arrayContainsKey!0 (_keys!10001 thiss!1181) lt!403653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110387 (not res!605157)) b!893672))

(assert (= (and b!893672 res!605158) b!893673))

(assert (=> d!110387 m!831469))

(declare-fun m!831863 () Bool)

(assert (=> b!893673 m!831863))

(assert (=> b!893338 d!110387))

(declare-fun b!893674 () Bool)

(declare-fun e!499138 () SeekEntryResult!8857)

(declare-fun e!499139 () SeekEntryResult!8857)

(assert (=> b!893674 (= e!499138 e!499139)))

(declare-fun lt!403877 () (_ BitVec 64))

(declare-fun lt!403876 () SeekEntryResult!8857)

(assert (=> b!893674 (= lt!403877 (select (arr!25168 (_keys!10001 thiss!1181)) (index!37800 lt!403876)))))

(declare-fun c!94151 () Bool)

(assert (=> b!893674 (= c!94151 (= lt!403877 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606)))))

(declare-fun b!893675 () Bool)

(declare-fun e!499140 () SeekEntryResult!8857)

(assert (=> b!893675 (= e!499140 (MissingZero!8857 (index!37800 lt!403876)))))

(declare-fun b!893677 () Bool)

(assert (=> b!893677 (= e!499140 (seekKeyOrZeroReturnVacant!0 (x!75950 lt!403876) (index!37800 lt!403876) (index!37800 lt!403876) (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(declare-fun b!893678 () Bool)

(assert (=> b!893678 (= e!499139 (Found!8857 (index!37800 lt!403876)))))

(declare-fun b!893679 () Bool)

(assert (=> b!893679 (= e!499138 Undefined!8857)))

(declare-fun b!893676 () Bool)

(declare-fun c!94150 () Bool)

(assert (=> b!893676 (= c!94150 (= lt!403877 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!893676 (= e!499139 e!499140)))

(declare-fun d!110389 () Bool)

(declare-fun lt!403878 () SeekEntryResult!8857)

(assert (=> d!110389 (and (or ((_ is Undefined!8857) lt!403878) (not ((_ is Found!8857) lt!403878)) (and (bvsge (index!37799 lt!403878) #b00000000000000000000000000000000) (bvslt (index!37799 lt!403878) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403878) ((_ is Found!8857) lt!403878) (not ((_ is MissingZero!8857) lt!403878)) (and (bvsge (index!37798 lt!403878) #b00000000000000000000000000000000) (bvslt (index!37798 lt!403878) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403878) ((_ is Found!8857) lt!403878) ((_ is MissingZero!8857) lt!403878) (not ((_ is MissingVacant!8857) lt!403878)) (and (bvsge (index!37801 lt!403878) #b00000000000000000000000000000000) (bvslt (index!37801 lt!403878) (size!25613 (_keys!10001 thiss!1181))))) (or ((_ is Undefined!8857) lt!403878) (ite ((_ is Found!8857) lt!403878) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37799 lt!403878)) (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606)) (ite ((_ is MissingZero!8857) lt!403878) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37798 lt!403878)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8857) lt!403878) (= (select (arr!25168 (_keys!10001 thiss!1181)) (index!37801 lt!403878)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!110389 (= lt!403878 e!499138)))

(declare-fun c!94152 () Bool)

(assert (=> d!110389 (= c!94152 (and ((_ is Intermediate!8857) lt!403876) (undefined!9669 lt!403876)))))

(assert (=> d!110389 (= lt!403876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) (mask!25842 thiss!1181)) (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)))))

(assert (=> d!110389 (validMask!0 (mask!25842 thiss!1181))))

(assert (=> d!110389 (= (seekEntryOrOpen!0 (select (arr!25168 (_keys!10001 thiss!1181)) lt!403606) (_keys!10001 thiss!1181) (mask!25842 thiss!1181)) lt!403878)))

(assert (= (and d!110389 c!94152) b!893679))

(assert (= (and d!110389 (not c!94152)) b!893674))

(assert (= (and b!893674 c!94151) b!893678))

(assert (= (and b!893674 (not c!94151)) b!893676))

(assert (= (and b!893676 c!94150) b!893675))

(assert (= (and b!893676 (not c!94150)) b!893677))

(declare-fun m!831865 () Bool)

(assert (=> b!893674 m!831865))

(assert (=> b!893677 m!831475))

(declare-fun m!831867 () Bool)

(assert (=> b!893677 m!831867))

(declare-fun m!831869 () Bool)

(assert (=> d!110389 m!831869))

(declare-fun m!831871 () Bool)

(assert (=> d!110389 m!831871))

(declare-fun m!831873 () Bool)

(assert (=> d!110389 m!831873))

(assert (=> d!110389 m!831451))

(assert (=> d!110389 m!831475))

(declare-fun m!831875 () Bool)

(assert (=> d!110389 m!831875))

(assert (=> d!110389 m!831875))

(assert (=> d!110389 m!831475))

(declare-fun m!831877 () Bool)

(assert (=> d!110389 m!831877))

(assert (=> b!893338 d!110389))

(declare-fun b!893680 () Bool)

(declare-fun e!499142 () Bool)

(assert (=> b!893680 (= e!499142 tp_is_empty!18183)))

(declare-fun mapNonEmpty!28843 () Bool)

(declare-fun mapRes!28843 () Bool)

(declare-fun tp!55552 () Bool)

(assert (=> mapNonEmpty!28843 (= mapRes!28843 (and tp!55552 e!499142))))

(declare-fun mapValue!28843 () ValueCell!8610)

(declare-fun mapKey!28843 () (_ BitVec 32))

(declare-fun mapRest!28843 () (Array (_ BitVec 32) ValueCell!8610))

(assert (=> mapNonEmpty!28843 (= mapRest!28842 (store mapRest!28843 mapKey!28843 mapValue!28843))))

(declare-fun mapIsEmpty!28843 () Bool)

(assert (=> mapIsEmpty!28843 mapRes!28843))

(declare-fun b!893681 () Bool)

(declare-fun e!499141 () Bool)

(assert (=> b!893681 (= e!499141 tp_is_empty!18183)))

(declare-fun condMapEmpty!28843 () Bool)

(declare-fun mapDefault!28843 () ValueCell!8610)

(assert (=> mapNonEmpty!28842 (= condMapEmpty!28843 (= mapRest!28842 ((as const (Array (_ BitVec 32) ValueCell!8610)) mapDefault!28843)))))

(assert (=> mapNonEmpty!28842 (= tp!55551 (and e!499141 mapRes!28843))))

(assert (= (and mapNonEmpty!28842 condMapEmpty!28843) mapIsEmpty!28843))

(assert (= (and mapNonEmpty!28842 (not condMapEmpty!28843)) mapNonEmpty!28843))

(assert (= (and mapNonEmpty!28843 ((_ is ValueCellFull!8610) mapValue!28843)) b!893680))

(assert (= (and mapNonEmpty!28842 ((_ is ValueCellFull!8610) mapDefault!28843)) b!893681))

(declare-fun m!831879 () Bool)

(assert (=> mapNonEmpty!28843 m!831879))

(declare-fun b_lambda!12957 () Bool)

(assert (= b_lambda!12953 (or (and b!893205 b_free!15855) b_lambda!12957)))

(declare-fun b_lambda!12959 () Bool)

(assert (= b_lambda!12955 (or (and b!893205 b_free!15855) b_lambda!12959)))

(check-sat (not b!893628) (not d!110353) (not b!893549) (not b!893677) (not d!110313) (not b!893611) (not b!893600) (not bm!39653) (not b!893669) (not b!893547) (not d!110385) (not d!110365) (not b!893655) (not b!893636) (not d!110369) (not b!893488) (not b!893518) (not d!110351) (not d!110371) (not d!110307) (not b!893671) (not b!893516) (not b!893478) (not d!110285) (not d!110303) (not b!893629) (not d!110375) (not b!893615) (not b!893536) (not b!893631) (not d!110357) tp_is_empty!18183 (not b!893577) (not d!110319) (not b!893587) (not d!110355) (not b!893489) (not d!110345) (not d!110277) (not d!110305) (not d!110273) (not b!893627) (not b!893609) (not b!893541) (not d!110323) (not b_lambda!12951) (not bm!39657) (not b!893581) (not b!893606) (not b!893591) (not b!893633) (not bm!39659) (not b!893618) (not d!110361) (not d!110359) (not d!110335) (not d!110373) (not b!893514) (not b!893634) (not b!893491) (not d!110343) (not d!110389) (not d!110329) (not d!110295) (not d!110315) (not b!893593) (not b!893480) (not b!893607) (not b_lambda!12957) (not d!110349) (not d!110367) (not b!893550) (not d!110363) b_and!26149 (not b!893617) (not d!110333) (not b!893552) (not b!893520) (not d!110347) (not b!893475) (not d!110379) (not b!893578) (not b!893673) (not b!893608) (not bm!39654) (not b!893545) (not b!893583) (not b!893589) (not b!893579) (not b!893623) (not b!893482) (not b!893580) (not b!893624) (not b!893635) (not b!893601) (not d!110283) (not d!110311) (not b!893588) (not d!110327) (not b_lambda!12959) (not b!893477) (not d!110299) (not bm!39658) (not mapNonEmpty!28843) (not b_lambda!12947) (not d!110291) (not d!110297) (not b_next!15855) (not b!893507))
(check-sat b_and!26149 (not b_next!15855))
