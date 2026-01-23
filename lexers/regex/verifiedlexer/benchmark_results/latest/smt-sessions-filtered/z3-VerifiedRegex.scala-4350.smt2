; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231368 () Bool)

(assert start!231368)

(declare-fun b!2359420 () Bool)

(declare-fun b_free!70437 () Bool)

(declare-fun b_next!71141 () Bool)

(assert (=> b!2359420 (= b_free!70437 (not b_next!71141))))

(declare-fun tp!754499 () Bool)

(declare-fun b_and!185373 () Bool)

(assert (=> b!2359420 (= tp!754499 b_and!185373)))

(declare-fun b!2359421 () Bool)

(declare-fun b_free!70439 () Bool)

(declare-fun b_next!71143 () Bool)

(assert (=> b!2359421 (= b_free!70439 (not b_next!71143))))

(declare-fun tp!754503 () Bool)

(declare-fun b_and!185375 () Bool)

(assert (=> b!2359421 (= tp!754503 b_and!185375)))

(declare-fun b!2359418 () Bool)

(declare-fun e!1507090 () Bool)

(declare-fun e!1507086 () Bool)

(assert (=> b!2359418 (= e!1507090 e!1507086)))

(declare-fun mapNonEmpty!15143 () Bool)

(declare-fun mapRes!15143 () Bool)

(declare-fun tp!754497 () Bool)

(declare-fun tp!754500 () Bool)

(assert (=> mapNonEmpty!15143 (= mapRes!15143 (and tp!754497 tp!754500))))

(declare-fun mapKey!15143 () (_ BitVec 32))

(declare-datatypes ((K!4987 0))(
  ( (K!4988 (val!8213 Int)) )
))
(declare-datatypes ((V!5189 0))(
  ( (V!5190 (val!8214 Int)) )
))
(declare-datatypes ((tuple2!27648 0))(
  ( (tuple2!27649 (_1!16365 K!4987) (_2!16365 V!5189)) )
))
(declare-datatypes ((List!27997 0))(
  ( (Nil!27899) (Cons!27899 (h!33300 tuple2!27648) (t!207874 List!27997)) )
))
(declare-fun mapRest!15143 () (Array (_ BitVec 32) List!27997))

(declare-datatypes ((Hashable!3156 0))(
  ( (HashableExt!3155 (__x!18496 Int)) )
))
(declare-datatypes ((array!11407 0))(
  ( (array!11408 (arr!5082 (Array (_ BitVec 32) (_ BitVec 64))) (size!22106 (_ BitVec 32))) )
))
(declare-datatypes ((array!11409 0))(
  ( (array!11410 (arr!5083 (Array (_ BitVec 32) List!27997)) (size!22107 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6492 0))(
  ( (LongMapFixedSize!6493 (defaultEntry!3620 Int) (mask!8145 (_ BitVec 32)) (extraKeys!3494 (_ BitVec 32)) (zeroValue!3504 List!27997) (minValue!3504 List!27997) (_size!6539 (_ BitVec 32)) (_keys!3543 array!11407) (_values!3526 array!11409) (_vacant!3307 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12801 0))(
  ( (Cell!12802 (v!30844 LongMapFixedSize!6492)) )
))
(declare-datatypes ((MutLongMap!3246 0))(
  ( (LongMap!3246 (underlying!6697 Cell!12801)) (MutLongMapExt!3245 (__x!18497 Int)) )
))
(declare-datatypes ((Cell!12803 0))(
  ( (Cell!12804 (v!30845 MutLongMap!3246)) )
))
(declare-datatypes ((MutableMap!3156 0))(
  ( (MutableMapExt!3155 (__x!18498 Int)) (HashMap!3156 (underlying!6698 Cell!12803) (hashF!5087 Hashable!3156) (_size!6540 (_ BitVec 32)) (defaultValue!3318 Int)) )
))
(declare-fun thiss!47711 () MutableMap!3156)

(declare-fun mapValue!15143 () List!27997)

(assert (=> mapNonEmpty!15143 (= (arr!5083 (_values!3526 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) (store mapRest!15143 mapKey!15143 mapValue!15143))))

(declare-fun b!2359419 () Bool)

(declare-fun res!1001311 () Bool)

(declare-fun e!1507085 () Bool)

(assert (=> b!2359419 (=> (not res!1001311) (not e!1507085))))

(declare-fun valid!2441 (MutableMap!3156) Bool)

(assert (=> b!2359419 (= res!1001311 (valid!2441 thiss!47711))))

(declare-fun tp!754502 () Bool)

(declare-fun tp!754501 () Bool)

(declare-fun e!1507083 () Bool)

(declare-fun array_inv!3643 (array!11407) Bool)

(declare-fun array_inv!3644 (array!11409) Bool)

(assert (=> b!2359420 (= e!1507086 (and tp!754499 tp!754501 tp!754502 (array_inv!3643 (_keys!3543 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) (array_inv!3644 (_values!3526 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) e!1507083))))

(declare-fun e!1507084 () Bool)

(declare-fun e!1507088 () Bool)

(assert (=> b!2359421 (= e!1507084 (and e!1507088 tp!754503))))

(declare-fun b!2359422 () Bool)

(declare-fun tp!754498 () Bool)

(assert (=> b!2359422 (= e!1507083 (and tp!754498 mapRes!15143))))

(declare-fun condMapEmpty!15143 () Bool)

(declare-fun mapDefault!15143 () List!27997)

(assert (=> b!2359422 (= condMapEmpty!15143 (= (arr!5083 (_values!3526 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) ((as const (Array (_ BitVec 32) List!27997)) mapDefault!15143)))))

(declare-fun res!1001312 () Bool)

(assert (=> start!231368 (=> (not res!1001312) (not e!1507085))))

(get-info :version)

(assert (=> start!231368 (= res!1001312 ((_ is MutableMapExt!3155) thiss!47711))))

(assert (=> start!231368 e!1507085))

(assert (=> start!231368 e!1507084))

(declare-fun tp_is_empty!11205 () Bool)

(assert (=> start!231368 tp_is_empty!11205))

(declare-fun b!2359423 () Bool)

(declare-fun key!7154 () K!4987)

(declare-fun choose!13682 (MutableMap!3156 K!4987) Bool)

(declare-datatypes ((ListMap!917 0))(
  ( (ListMap!918 (toList!1429 List!27997)) )
))
(declare-fun contains!4872 (ListMap!917 K!4987) Bool)

(declare-fun abstractMap!106 (MutableMap!3156) ListMap!917)

(assert (=> b!2359423 (= e!1507085 (not (= (choose!13682 thiss!47711 key!7154) (contains!4872 (abstractMap!106 thiss!47711) key!7154))))))

(declare-fun mapIsEmpty!15143 () Bool)

(assert (=> mapIsEmpty!15143 mapRes!15143))

(declare-fun b!2359424 () Bool)

(declare-fun e!1507087 () Bool)

(assert (=> b!2359424 (= e!1507087 e!1507090)))

(declare-fun b!2359425 () Bool)

(declare-fun lt!863999 () MutLongMap!3246)

(assert (=> b!2359425 (= e!1507088 (and e!1507087 ((_ is LongMap!3246) lt!863999)))))

(assert (=> b!2359425 (= lt!863999 (v!30845 (underlying!6698 thiss!47711)))))

(assert (= (and start!231368 res!1001312) b!2359419))

(assert (= (and b!2359419 res!1001311) b!2359423))

(assert (= (and b!2359422 condMapEmpty!15143) mapIsEmpty!15143))

(assert (= (and b!2359422 (not condMapEmpty!15143)) mapNonEmpty!15143))

(assert (= b!2359420 b!2359422))

(assert (= b!2359418 b!2359420))

(assert (= b!2359424 b!2359418))

(assert (= (and b!2359425 ((_ is LongMap!3246) (v!30845 (underlying!6698 thiss!47711)))) b!2359424))

(assert (= b!2359421 b!2359425))

(assert (= (and start!231368 ((_ is HashMap!3156) thiss!47711)) b!2359421))

(declare-fun m!2772005 () Bool)

(assert (=> mapNonEmpty!15143 m!2772005))

(declare-fun m!2772007 () Bool)

(assert (=> b!2359419 m!2772007))

(declare-fun m!2772009 () Bool)

(assert (=> b!2359420 m!2772009))

(declare-fun m!2772011 () Bool)

(assert (=> b!2359420 m!2772011))

(declare-fun m!2772013 () Bool)

(assert (=> b!2359423 m!2772013))

(declare-fun m!2772015 () Bool)

(assert (=> b!2359423 m!2772015))

(assert (=> b!2359423 m!2772015))

(declare-fun m!2772017 () Bool)

(assert (=> b!2359423 m!2772017))

(check-sat b_and!185373 (not mapNonEmpty!15143) b_and!185375 (not b_next!71141) (not b!2359420) (not b!2359419) (not b!2359423) tp_is_empty!11205 (not b_next!71143) (not b!2359422))
(check-sat b_and!185373 b_and!185375 (not b_next!71141) (not b_next!71143))
(get-model)

(declare-fun d!693557 () Bool)

(declare-fun choose!13683 (MutableMap!3156 K!4987) Bool)

(assert (=> d!693557 (= (choose!13682 thiss!47711 key!7154) (choose!13683 thiss!47711 key!7154))))

(declare-fun bs!460470 () Bool)

(assert (= bs!460470 d!693557))

(declare-fun m!2772019 () Bool)

(assert (=> bs!460470 m!2772019))

(assert (=> b!2359423 d!693557))

(declare-fun b!2359444 () Bool)

(declare-fun e!1507105 () Bool)

(declare-datatypes ((List!27998 0))(
  ( (Nil!27900) (Cons!27900 (h!33301 K!4987) (t!207875 List!27998)) )
))
(declare-fun contains!4873 (List!27998 K!4987) Bool)

(declare-fun keys!8767 (ListMap!917) List!27998)

(assert (=> b!2359444 (= e!1507105 (contains!4873 (keys!8767 (abstractMap!106 thiss!47711)) key!7154))))

(declare-fun b!2359445 () Bool)

(declare-fun e!1507107 () List!27998)

(declare-fun getKeysList!15 (List!27997) List!27998)

(assert (=> b!2359445 (= e!1507107 (getKeysList!15 (toList!1429 (abstractMap!106 thiss!47711))))))

(declare-fun b!2359446 () Bool)

(declare-datatypes ((Unit!40821 0))(
  ( (Unit!40822) )
))
(declare-fun e!1507108 () Unit!40821)

(declare-fun e!1507106 () Unit!40821)

(assert (=> b!2359446 (= e!1507108 e!1507106)))

(declare-fun c!375062 () Bool)

(declare-fun call!143630 () Bool)

(assert (=> b!2359446 (= c!375062 call!143630)))

(declare-fun b!2359447 () Bool)

(declare-fun lt!864017 () Unit!40821)

(assert (=> b!2359447 (= e!1507108 lt!864017)))

(declare-fun lt!864021 () Unit!40821)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!76 (List!27997 K!4987) Unit!40821)

(assert (=> b!2359447 (= lt!864021 (lemmaContainsKeyImpliesGetValueByKeyDefined!76 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(declare-datatypes ((Option!5446 0))(
  ( (None!5445) (Some!5445 (v!30846 V!5189)) )
))
(declare-fun isDefined!4276 (Option!5446) Bool)

(declare-fun getValueByKey!119 (List!27997 K!4987) Option!5446)

(assert (=> b!2359447 (isDefined!4276 (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(declare-fun lt!864023 () Unit!40821)

(assert (=> b!2359447 (= lt!864023 lt!864021)))

(declare-fun lemmaInListThenGetKeysListContains!12 (List!27997 K!4987) Unit!40821)

(assert (=> b!2359447 (= lt!864017 (lemmaInListThenGetKeysListContains!12 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(assert (=> b!2359447 call!143630))

(declare-fun b!2359448 () Bool)

(declare-fun e!1507104 () Bool)

(assert (=> b!2359448 (= e!1507104 (not (contains!4873 (keys!8767 (abstractMap!106 thiss!47711)) key!7154)))))

(declare-fun b!2359449 () Bool)

(assert (=> b!2359449 (= e!1507107 (keys!8767 (abstractMap!106 thiss!47711)))))

(declare-fun d!693559 () Bool)

(declare-fun e!1507103 () Bool)

(assert (=> d!693559 e!1507103))

(declare-fun res!1001320 () Bool)

(assert (=> d!693559 (=> res!1001320 e!1507103)))

(assert (=> d!693559 (= res!1001320 e!1507104)))

(declare-fun res!1001321 () Bool)

(assert (=> d!693559 (=> (not res!1001321) (not e!1507104))))

(declare-fun lt!864018 () Bool)

(assert (=> d!693559 (= res!1001321 (not lt!864018))))

(declare-fun lt!864019 () Bool)

(assert (=> d!693559 (= lt!864018 lt!864019)))

(declare-fun lt!864022 () Unit!40821)

(assert (=> d!693559 (= lt!864022 e!1507108)))

(declare-fun c!375064 () Bool)

(assert (=> d!693559 (= c!375064 lt!864019)))

(declare-fun containsKey!109 (List!27997 K!4987) Bool)

(assert (=> d!693559 (= lt!864019 (containsKey!109 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(assert (=> d!693559 (= (contains!4872 (abstractMap!106 thiss!47711) key!7154) lt!864018)))

(declare-fun bm!143625 () Bool)

(assert (=> bm!143625 (= call!143630 (contains!4873 e!1507107 key!7154))))

(declare-fun c!375063 () Bool)

(assert (=> bm!143625 (= c!375063 c!375064)))

(declare-fun b!2359450 () Bool)

(assert (=> b!2359450 false))

(declare-fun lt!864020 () Unit!40821)

(declare-fun lt!864016 () Unit!40821)

(assert (=> b!2359450 (= lt!864020 lt!864016)))

(assert (=> b!2359450 (containsKey!109 (toList!1429 (abstractMap!106 thiss!47711)) key!7154)))

(declare-fun lemmaInGetKeysListThenContainsKey!12 (List!27997 K!4987) Unit!40821)

(assert (=> b!2359450 (= lt!864016 (lemmaInGetKeysListThenContainsKey!12 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(declare-fun Unit!40823 () Unit!40821)

(assert (=> b!2359450 (= e!1507106 Unit!40823)))

(declare-fun b!2359451 () Bool)

(assert (=> b!2359451 (= e!1507103 e!1507105)))

(declare-fun res!1001319 () Bool)

(assert (=> b!2359451 (=> (not res!1001319) (not e!1507105))))

(assert (=> b!2359451 (= res!1001319 (isDefined!4276 (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154)))))

(declare-fun b!2359452 () Bool)

(declare-fun Unit!40824 () Unit!40821)

(assert (=> b!2359452 (= e!1507106 Unit!40824)))

(assert (= (and d!693559 c!375064) b!2359447))

(assert (= (and d!693559 (not c!375064)) b!2359446))

(assert (= (and b!2359446 c!375062) b!2359450))

(assert (= (and b!2359446 (not c!375062)) b!2359452))

(assert (= (or b!2359447 b!2359446) bm!143625))

(assert (= (and bm!143625 c!375063) b!2359445))

(assert (= (and bm!143625 (not c!375063)) b!2359449))

(assert (= (and d!693559 res!1001321) b!2359448))

(assert (= (and d!693559 (not res!1001320)) b!2359451))

(assert (= (and b!2359451 res!1001319) b!2359444))

(assert (=> b!2359449 m!2772015))

(declare-fun m!2772021 () Bool)

(assert (=> b!2359449 m!2772021))

(declare-fun m!2772023 () Bool)

(assert (=> b!2359445 m!2772023))

(declare-fun m!2772025 () Bool)

(assert (=> b!2359451 m!2772025))

(assert (=> b!2359451 m!2772025))

(declare-fun m!2772027 () Bool)

(assert (=> b!2359451 m!2772027))

(assert (=> b!2359448 m!2772015))

(assert (=> b!2359448 m!2772021))

(assert (=> b!2359448 m!2772021))

(declare-fun m!2772029 () Bool)

(assert (=> b!2359448 m!2772029))

(declare-fun m!2772031 () Bool)

(assert (=> b!2359450 m!2772031))

(declare-fun m!2772033 () Bool)

(assert (=> b!2359450 m!2772033))

(assert (=> d!693559 m!2772031))

(declare-fun m!2772035 () Bool)

(assert (=> b!2359447 m!2772035))

(assert (=> b!2359447 m!2772025))

(assert (=> b!2359447 m!2772025))

(assert (=> b!2359447 m!2772027))

(declare-fun m!2772037 () Bool)

(assert (=> b!2359447 m!2772037))

(assert (=> b!2359444 m!2772015))

(assert (=> b!2359444 m!2772021))

(assert (=> b!2359444 m!2772021))

(assert (=> b!2359444 m!2772029))

(declare-fun m!2772039 () Bool)

(assert (=> bm!143625 m!2772039))

(assert (=> b!2359423 d!693559))

(declare-fun d!693561 () Bool)

(declare-fun c!375067 () Bool)

(assert (=> d!693561 (= c!375067 ((_ is MutableMapExt!3155) thiss!47711))))

(declare-fun e!1507111 () ListMap!917)

(assert (=> d!693561 (= (abstractMap!106 thiss!47711) e!1507111)))

(declare-fun b!2359457 () Bool)

(declare-fun abstractMap!107 (MutableMap!3156) ListMap!917)

(assert (=> b!2359457 (= e!1507111 (abstractMap!107 thiss!47711))))

(declare-fun b!2359458 () Bool)

(declare-fun abstractMap!108 (MutableMap!3156) ListMap!917)

(assert (=> b!2359458 (= e!1507111 (abstractMap!108 thiss!47711))))

(assert (= (and d!693561 c!375067) b!2359457))

(assert (= (and d!693561 (not c!375067)) b!2359458))

(declare-fun m!2772041 () Bool)

(assert (=> b!2359457 m!2772041))

(declare-fun m!2772043 () Bool)

(assert (=> b!2359458 m!2772043))

(assert (=> b!2359423 d!693561))

(declare-fun d!693563 () Bool)

(declare-fun c!375070 () Bool)

(assert (=> d!693563 (= c!375070 ((_ is MutableMapExt!3155) thiss!47711))))

(declare-fun e!1507114 () Bool)

(assert (=> d!693563 (= (valid!2441 thiss!47711) e!1507114)))

(declare-fun b!2359463 () Bool)

(declare-fun valid!2442 (MutableMap!3156) Bool)

(assert (=> b!2359463 (= e!1507114 (valid!2442 thiss!47711))))

(declare-fun b!2359464 () Bool)

(declare-fun valid!2443 (MutableMap!3156) Bool)

(assert (=> b!2359464 (= e!1507114 (valid!2443 thiss!47711))))

(assert (= (and d!693563 c!375070) b!2359463))

(assert (= (and d!693563 (not c!375070)) b!2359464))

(declare-fun m!2772045 () Bool)

(assert (=> b!2359463 m!2772045))

(declare-fun m!2772047 () Bool)

(assert (=> b!2359464 m!2772047))

(assert (=> b!2359419 d!693563))

(declare-fun d!693565 () Bool)

(assert (=> d!693565 (= (array_inv!3643 (_keys!3543 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) (bvsge (size!22106 (_keys!3543 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) #b00000000000000000000000000000000))))

(assert (=> b!2359420 d!693565))

(declare-fun d!693567 () Bool)

(assert (=> d!693567 (= (array_inv!3644 (_values!3526 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) (bvsge (size!22107 (_values!3526 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))) #b00000000000000000000000000000000))))

(assert (=> b!2359420 d!693567))

(declare-fun e!1507117 () Bool)

(declare-fun tp_is_empty!11207 () Bool)

(declare-fun b!2359469 () Bool)

(declare-fun tp!754506 () Bool)

(assert (=> b!2359469 (= e!1507117 (and tp_is_empty!11205 tp_is_empty!11207 tp!754506))))

(assert (=> b!2359422 (= tp!754498 e!1507117)))

(assert (= (and b!2359422 ((_ is Cons!27899) mapDefault!15143)) b!2359469))

(declare-fun e!1507123 () Bool)

(declare-fun tp!754514 () Bool)

(declare-fun b!2359476 () Bool)

(assert (=> b!2359476 (= e!1507123 (and tp_is_empty!11205 tp_is_empty!11207 tp!754514))))

(declare-fun b!2359477 () Bool)

(declare-fun e!1507122 () Bool)

(declare-fun tp!754515 () Bool)

(assert (=> b!2359477 (= e!1507122 (and tp_is_empty!11205 tp_is_empty!11207 tp!754515))))

(declare-fun mapIsEmpty!15146 () Bool)

(declare-fun mapRes!15146 () Bool)

(assert (=> mapIsEmpty!15146 mapRes!15146))

(declare-fun condMapEmpty!15146 () Bool)

(declare-fun mapDefault!15146 () List!27997)

(assert (=> mapNonEmpty!15143 (= condMapEmpty!15146 (= mapRest!15143 ((as const (Array (_ BitVec 32) List!27997)) mapDefault!15146)))))

(assert (=> mapNonEmpty!15143 (= tp!754497 (and e!1507122 mapRes!15146))))

(declare-fun mapNonEmpty!15146 () Bool)

(declare-fun tp!754513 () Bool)

(assert (=> mapNonEmpty!15146 (= mapRes!15146 (and tp!754513 e!1507123))))

(declare-fun mapValue!15146 () List!27997)

(declare-fun mapRest!15146 () (Array (_ BitVec 32) List!27997))

(declare-fun mapKey!15146 () (_ BitVec 32))

(assert (=> mapNonEmpty!15146 (= mapRest!15143 (store mapRest!15146 mapKey!15146 mapValue!15146))))

(assert (= (and mapNonEmpty!15143 condMapEmpty!15146) mapIsEmpty!15146))

(assert (= (and mapNonEmpty!15143 (not condMapEmpty!15146)) mapNonEmpty!15146))

(assert (= (and mapNonEmpty!15146 ((_ is Cons!27899) mapValue!15146)) b!2359476))

(assert (= (and mapNonEmpty!15143 ((_ is Cons!27899) mapDefault!15146)) b!2359477))

(declare-fun m!2772049 () Bool)

(assert (=> mapNonEmpty!15146 m!2772049))

(declare-fun e!1507124 () Bool)

(declare-fun b!2359478 () Bool)

(declare-fun tp!754516 () Bool)

(assert (=> b!2359478 (= e!1507124 (and tp_is_empty!11205 tp_is_empty!11207 tp!754516))))

(assert (=> mapNonEmpty!15143 (= tp!754500 e!1507124)))

(assert (= (and mapNonEmpty!15143 ((_ is Cons!27899) mapValue!15143)) b!2359478))

(declare-fun e!1507125 () Bool)

(declare-fun tp!754517 () Bool)

(declare-fun b!2359479 () Bool)

(assert (=> b!2359479 (= e!1507125 (and tp_is_empty!11205 tp_is_empty!11207 tp!754517))))

(assert (=> b!2359420 (= tp!754501 e!1507125)))

(assert (= (and b!2359420 ((_ is Cons!27899) (zeroValue!3504 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711))))))) b!2359479))

(declare-fun tp!754518 () Bool)

(declare-fun e!1507126 () Bool)

(declare-fun b!2359480 () Bool)

(assert (=> b!2359480 (= e!1507126 (and tp_is_empty!11205 tp_is_empty!11207 tp!754518))))

(assert (=> b!2359420 (= tp!754502 e!1507126)))

(assert (= (and b!2359420 ((_ is Cons!27899) (minValue!3504 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711))))))) b!2359480))

(check-sat (not b!2359450) (not b!2359469) tp_is_empty!11207 (not b!2359458) (not b!2359447) (not b!2359480) (not d!693557) (not b!2359445) (not b!2359449) (not b!2359457) (not d!693559) (not b_next!71143) (not b!2359463) (not bm!143625) b_and!185373 (not b!2359444) b_and!185375 (not b_next!71141) (not mapNonEmpty!15146) tp_is_empty!11205 (not b!2359479) (not b!2359477) (not b!2359451) (not b!2359476) (not b!2359464) (not b!2359478) (not b!2359448))
(check-sat b_and!185373 b_and!185375 (not b_next!71141) (not b_next!71143))
(get-model)

(declare-fun d!693569 () Bool)

(declare-fun lt!864026 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3787 (List!27998) (InoxSet K!4987))

(assert (=> d!693569 (= lt!864026 (select (content!3787 (keys!8767 (abstractMap!106 thiss!47711))) key!7154))))

(declare-fun e!1507132 () Bool)

(assert (=> d!693569 (= lt!864026 e!1507132)))

(declare-fun res!1001327 () Bool)

(assert (=> d!693569 (=> (not res!1001327) (not e!1507132))))

(assert (=> d!693569 (= res!1001327 ((_ is Cons!27900) (keys!8767 (abstractMap!106 thiss!47711))))))

(assert (=> d!693569 (= (contains!4873 (keys!8767 (abstractMap!106 thiss!47711)) key!7154) lt!864026)))

(declare-fun b!2359485 () Bool)

(declare-fun e!1507131 () Bool)

(assert (=> b!2359485 (= e!1507132 e!1507131)))

(declare-fun res!1001326 () Bool)

(assert (=> b!2359485 (=> res!1001326 e!1507131)))

(assert (=> b!2359485 (= res!1001326 (= (h!33301 (keys!8767 (abstractMap!106 thiss!47711))) key!7154))))

(declare-fun b!2359486 () Bool)

(assert (=> b!2359486 (= e!1507131 (contains!4873 (t!207875 (keys!8767 (abstractMap!106 thiss!47711))) key!7154))))

(assert (= (and d!693569 res!1001327) b!2359485))

(assert (= (and b!2359485 (not res!1001326)) b!2359486))

(assert (=> d!693569 m!2772021))

(declare-fun m!2772051 () Bool)

(assert (=> d!693569 m!2772051))

(declare-fun m!2772053 () Bool)

(assert (=> d!693569 m!2772053))

(declare-fun m!2772055 () Bool)

(assert (=> b!2359486 m!2772055))

(assert (=> b!2359448 d!693569))

(declare-fun b!2359494 () Bool)

(assert (=> b!2359494 true))

(declare-fun d!693571 () Bool)

(declare-fun e!1507135 () Bool)

(assert (=> d!693571 e!1507135))

(declare-fun res!1001335 () Bool)

(assert (=> d!693571 (=> (not res!1001335) (not e!1507135))))

(declare-fun lt!864029 () List!27998)

(declare-fun noDuplicate!319 (List!27998) Bool)

(assert (=> d!693571 (= res!1001335 (noDuplicate!319 lt!864029))))

(assert (=> d!693571 (= lt!864029 (getKeysList!15 (toList!1429 (abstractMap!106 thiss!47711))))))

(assert (=> d!693571 (= (keys!8767 (abstractMap!106 thiss!47711)) lt!864029)))

(declare-fun b!2359493 () Bool)

(declare-fun res!1001336 () Bool)

(assert (=> b!2359493 (=> (not res!1001336) (not e!1507135))))

(declare-fun length!20 (List!27998) Int)

(declare-fun length!21 (List!27997) Int)

(assert (=> b!2359493 (= res!1001336 (= (length!20 lt!864029) (length!21 (toList!1429 (abstractMap!106 thiss!47711)))))))

(declare-fun res!1001334 () Bool)

(assert (=> b!2359494 (=> (not res!1001334) (not e!1507135))))

(declare-fun lambda!86765 () Int)

(declare-fun forall!5532 (List!27998 Int) Bool)

(assert (=> b!2359494 (= res!1001334 (forall!5532 lt!864029 lambda!86765))))

(declare-fun lambda!86766 () Int)

(declare-fun b!2359495 () Bool)

(declare-fun map!5782 (List!27997 Int) List!27998)

(assert (=> b!2359495 (= e!1507135 (= (content!3787 lt!864029) (content!3787 (map!5782 (toList!1429 (abstractMap!106 thiss!47711)) lambda!86766))))))

(assert (= (and d!693571 res!1001335) b!2359493))

(assert (= (and b!2359493 res!1001336) b!2359494))

(assert (= (and b!2359494 res!1001334) b!2359495))

(declare-fun m!2772057 () Bool)

(assert (=> d!693571 m!2772057))

(assert (=> d!693571 m!2772023))

(declare-fun m!2772059 () Bool)

(assert (=> b!2359493 m!2772059))

(declare-fun m!2772061 () Bool)

(assert (=> b!2359493 m!2772061))

(declare-fun m!2772063 () Bool)

(assert (=> b!2359494 m!2772063))

(declare-fun m!2772065 () Bool)

(assert (=> b!2359495 m!2772065))

(declare-fun m!2772067 () Bool)

(assert (=> b!2359495 m!2772067))

(assert (=> b!2359495 m!2772067))

(declare-fun m!2772069 () Bool)

(assert (=> b!2359495 m!2772069))

(assert (=> b!2359448 d!693571))

(declare-fun d!693573 () Bool)

(declare-fun map!5783 (MutableMap!3156) ListMap!917)

(assert (=> d!693573 (= (abstractMap!108 thiss!47711) (map!5783 thiss!47711))))

(declare-fun bs!460471 () Bool)

(assert (= bs!460471 d!693573))

(declare-fun m!2772071 () Bool)

(assert (=> bs!460471 m!2772071))

(assert (=> b!2359458 d!693573))

(assert (=> b!2359449 d!693571))

(declare-fun d!693575 () Bool)

(declare-fun res!1001341 () Bool)

(declare-fun e!1507140 () Bool)

(assert (=> d!693575 (=> res!1001341 e!1507140)))

(assert (=> d!693575 (= res!1001341 (and ((_ is Cons!27899) (toList!1429 (abstractMap!106 thiss!47711))) (= (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711)))) key!7154)))))

(assert (=> d!693575 (= (containsKey!109 (toList!1429 (abstractMap!106 thiss!47711)) key!7154) e!1507140)))

(declare-fun b!2359502 () Bool)

(declare-fun e!1507141 () Bool)

(assert (=> b!2359502 (= e!1507140 e!1507141)))

(declare-fun res!1001342 () Bool)

(assert (=> b!2359502 (=> (not res!1001342) (not e!1507141))))

(assert (=> b!2359502 (= res!1001342 ((_ is Cons!27899) (toList!1429 (abstractMap!106 thiss!47711))))))

(declare-fun b!2359503 () Bool)

(assert (=> b!2359503 (= e!1507141 (containsKey!109 (t!207874 (toList!1429 (abstractMap!106 thiss!47711))) key!7154))))

(assert (= (and d!693575 (not res!1001341)) b!2359502))

(assert (= (and b!2359502 res!1001342) b!2359503))

(declare-fun m!2772073 () Bool)

(assert (=> b!2359503 m!2772073))

(assert (=> b!2359450 d!693575))

(declare-fun d!693577 () Bool)

(assert (=> d!693577 (containsKey!109 (toList!1429 (abstractMap!106 thiss!47711)) key!7154)))

(declare-fun lt!864032 () Unit!40821)

(declare-fun choose!13684 (List!27997 K!4987) Unit!40821)

(assert (=> d!693577 (= lt!864032 (choose!13684 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(declare-fun invariantList!399 (List!27997) Bool)

(assert (=> d!693577 (invariantList!399 (toList!1429 (abstractMap!106 thiss!47711)))))

(assert (=> d!693577 (= (lemmaInGetKeysListThenContainsKey!12 (toList!1429 (abstractMap!106 thiss!47711)) key!7154) lt!864032)))

(declare-fun bs!460472 () Bool)

(assert (= bs!460472 d!693577))

(assert (=> bs!460472 m!2772031))

(declare-fun m!2772075 () Bool)

(assert (=> bs!460472 m!2772075))

(declare-fun m!2772077 () Bool)

(assert (=> bs!460472 m!2772077))

(assert (=> b!2359450 d!693577))

(declare-fun d!693579 () Bool)

(declare-fun lt!864033 () Bool)

(assert (=> d!693579 (= lt!864033 (select (content!3787 e!1507107) key!7154))))

(declare-fun e!1507143 () Bool)

(assert (=> d!693579 (= lt!864033 e!1507143)))

(declare-fun res!1001344 () Bool)

(assert (=> d!693579 (=> (not res!1001344) (not e!1507143))))

(assert (=> d!693579 (= res!1001344 ((_ is Cons!27900) e!1507107))))

(assert (=> d!693579 (= (contains!4873 e!1507107 key!7154) lt!864033)))

(declare-fun b!2359504 () Bool)

(declare-fun e!1507142 () Bool)

(assert (=> b!2359504 (= e!1507143 e!1507142)))

(declare-fun res!1001343 () Bool)

(assert (=> b!2359504 (=> res!1001343 e!1507142)))

(assert (=> b!2359504 (= res!1001343 (= (h!33301 e!1507107) key!7154))))

(declare-fun b!2359505 () Bool)

(assert (=> b!2359505 (= e!1507142 (contains!4873 (t!207875 e!1507107) key!7154))))

(assert (= (and d!693579 res!1001344) b!2359504))

(assert (= (and b!2359504 (not res!1001343)) b!2359505))

(declare-fun m!2772079 () Bool)

(assert (=> d!693579 m!2772079))

(declare-fun m!2772081 () Bool)

(assert (=> d!693579 m!2772081))

(declare-fun m!2772083 () Bool)

(assert (=> b!2359505 m!2772083))

(assert (=> bm!143625 d!693579))

(assert (=> d!693559 d!693575))

(declare-fun d!693581 () Bool)

(declare-fun isEmpty!15853 (Option!5446) Bool)

(assert (=> d!693581 (= (isDefined!4276 (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154)) (not (isEmpty!15853 (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))))

(declare-fun bs!460473 () Bool)

(assert (= bs!460473 d!693581))

(assert (=> bs!460473 m!2772025))

(declare-fun m!2772085 () Bool)

(assert (=> bs!460473 m!2772085))

(assert (=> b!2359451 d!693581))

(declare-fun b!2359515 () Bool)

(declare-fun e!1507148 () Option!5446)

(declare-fun e!1507149 () Option!5446)

(assert (=> b!2359515 (= e!1507148 e!1507149)))

(declare-fun c!375076 () Bool)

(assert (=> b!2359515 (= c!375076 (and ((_ is Cons!27899) (toList!1429 (abstractMap!106 thiss!47711))) (not (= (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711)))) key!7154))))))

(declare-fun b!2359514 () Bool)

(assert (=> b!2359514 (= e!1507148 (Some!5445 (_2!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))))))))

(declare-fun b!2359517 () Bool)

(assert (=> b!2359517 (= e!1507149 None!5445)))

(declare-fun d!693583 () Bool)

(declare-fun c!375075 () Bool)

(assert (=> d!693583 (= c!375075 (and ((_ is Cons!27899) (toList!1429 (abstractMap!106 thiss!47711))) (= (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711)))) key!7154)))))

(assert (=> d!693583 (= (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154) e!1507148)))

(declare-fun b!2359516 () Bool)

(assert (=> b!2359516 (= e!1507149 (getValueByKey!119 (t!207874 (toList!1429 (abstractMap!106 thiss!47711))) key!7154))))

(assert (= (and d!693583 c!375075) b!2359514))

(assert (= (and d!693583 (not c!375075)) b!2359515))

(assert (= (and b!2359515 c!375076) b!2359516))

(assert (= (and b!2359515 (not c!375076)) b!2359517))

(declare-fun m!2772087 () Bool)

(assert (=> b!2359516 m!2772087))

(assert (=> b!2359451 d!693583))

(declare-fun d!693585 () Bool)

(declare-fun e!1507152 () Bool)

(assert (=> d!693585 e!1507152))

(declare-fun res!1001350 () Bool)

(assert (=> d!693585 (=> (not res!1001350) (not e!1507152))))

(assert (=> d!693585 (= res!1001350 (valid!2441 thiss!47711))))

(assert (=> d!693585 true))

(declare-fun res!1001349 () Bool)

(assert (=> d!693585 (= (choose!13683 thiss!47711 key!7154) res!1001349)))

(declare-fun b!2359520 () Bool)

(assert (=> b!2359520 (= e!1507152 (= res!1001349 (contains!4872 (abstractMap!106 thiss!47711) key!7154)))))

(assert (= (and d!693585 res!1001350) b!2359520))

(assert (=> d!693585 m!2772007))

(assert (=> b!2359520 m!2772015))

(assert (=> b!2359520 m!2772015))

(assert (=> b!2359520 m!2772017))

(assert (=> d!693557 d!693585))

(assert (=> b!2359444 d!693569))

(assert (=> b!2359444 d!693571))

(declare-fun bs!460474 () Bool)

(declare-fun b!2359544 () Bool)

(assert (= bs!460474 (and b!2359544 b!2359494)))

(declare-fun lambda!86775 () Int)

(assert (=> bs!460474 (= (= (t!207874 (toList!1429 (abstractMap!106 thiss!47711))) (toList!1429 (abstractMap!106 thiss!47711))) (= lambda!86775 lambda!86765))))

(assert (=> b!2359544 true))

(declare-fun bs!460475 () Bool)

(declare-fun b!2359541 () Bool)

(assert (= bs!460475 (and b!2359541 b!2359494)))

(declare-fun lambda!86776 () Int)

(assert (=> bs!460475 (= (= (Cons!27899 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))) (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) (toList!1429 (abstractMap!106 thiss!47711))) (= lambda!86776 lambda!86765))))

(declare-fun bs!460476 () Bool)

(assert (= bs!460476 (and b!2359541 b!2359544)))

(assert (=> bs!460476 (= (= (Cons!27899 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))) (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) (= lambda!86776 lambda!86775))))

(assert (=> b!2359541 true))

(declare-fun bs!460477 () Bool)

(declare-fun b!2359539 () Bool)

(assert (= bs!460477 (and b!2359539 b!2359494)))

(declare-fun lambda!86777 () Int)

(assert (=> bs!460477 (= lambda!86777 lambda!86765)))

(declare-fun bs!460478 () Bool)

(assert (= bs!460478 (and b!2359539 b!2359544)))

(assert (=> bs!460478 (= (= (toList!1429 (abstractMap!106 thiss!47711)) (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) (= lambda!86777 lambda!86775))))

(declare-fun bs!460479 () Bool)

(assert (= bs!460479 (and b!2359539 b!2359541)))

(assert (=> bs!460479 (= (= (toList!1429 (abstractMap!106 thiss!47711)) (Cons!27899 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))) (t!207874 (toList!1429 (abstractMap!106 thiss!47711))))) (= lambda!86777 lambda!86776))))

(assert (=> b!2359539 true))

(declare-fun bs!460480 () Bool)

(declare-fun b!2359540 () Bool)

(assert (= bs!460480 (and b!2359540 b!2359495)))

(declare-fun lambda!86778 () Int)

(assert (=> bs!460480 (= lambda!86778 lambda!86766)))

(declare-fun d!693587 () Bool)

(declare-fun e!1507161 () Bool)

(assert (=> d!693587 e!1507161))

(declare-fun res!1001359 () Bool)

(assert (=> d!693587 (=> (not res!1001359) (not e!1507161))))

(declare-fun lt!864049 () List!27998)

(assert (=> d!693587 (= res!1001359 (noDuplicate!319 lt!864049))))

(declare-fun e!1507163 () List!27998)

(assert (=> d!693587 (= lt!864049 e!1507163)))

(declare-fun c!375083 () Bool)

(assert (=> d!693587 (= c!375083 ((_ is Cons!27899) (toList!1429 (abstractMap!106 thiss!47711))))))

(assert (=> d!693587 (invariantList!399 (toList!1429 (abstractMap!106 thiss!47711)))))

(assert (=> d!693587 (= (getKeysList!15 (toList!1429 (abstractMap!106 thiss!47711))) lt!864049)))

(declare-fun res!1001358 () Bool)

(assert (=> b!2359539 (=> (not res!1001358) (not e!1507161))))

(assert (=> b!2359539 (= res!1001358 (forall!5532 lt!864049 lambda!86777))))

(assert (=> b!2359540 (= e!1507161 (= (content!3787 lt!864049) (content!3787 (map!5782 (toList!1429 (abstractMap!106 thiss!47711)) lambda!86778))))))

(assert (=> b!2359541 (= e!1507163 (Cons!27900 (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711)))) (getKeysList!15 (t!207874 (toList!1429 (abstractMap!106 thiss!47711))))))))

(declare-fun c!375084 () Bool)

(assert (=> b!2359541 (= c!375084 (containsKey!109 (t!207874 (toList!1429 (abstractMap!106 thiss!47711))) (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))))))))

(declare-fun lt!864052 () Unit!40821)

(declare-fun e!1507164 () Unit!40821)

(assert (=> b!2359541 (= lt!864052 e!1507164)))

(declare-fun c!375085 () Bool)

(assert (=> b!2359541 (= c!375085 (contains!4873 (getKeysList!15 (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))))))))

(declare-fun lt!864051 () Unit!40821)

(declare-fun e!1507162 () Unit!40821)

(assert (=> b!2359541 (= lt!864051 e!1507162)))

(declare-fun lt!864048 () List!27998)

(assert (=> b!2359541 (= lt!864048 (getKeysList!15 (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))))))

(declare-fun lt!864050 () Unit!40821)

(declare-fun lemmaForallContainsAddHeadPreserves!6 (List!27997 List!27998 tuple2!27648) Unit!40821)

(assert (=> b!2359541 (= lt!864050 (lemmaForallContainsAddHeadPreserves!6 (t!207874 (toList!1429 (abstractMap!106 thiss!47711))) lt!864048 (h!33300 (toList!1429 (abstractMap!106 thiss!47711)))))))

(assert (=> b!2359541 (forall!5532 lt!864048 lambda!86776)))

(declare-fun lt!864053 () Unit!40821)

(assert (=> b!2359541 (= lt!864053 lt!864050)))

(declare-fun b!2359542 () Bool)

(assert (=> b!2359542 false))

(declare-fun Unit!40825 () Unit!40821)

(assert (=> b!2359542 (= e!1507164 Unit!40825)))

(declare-fun b!2359543 () Bool)

(declare-fun Unit!40826 () Unit!40821)

(assert (=> b!2359543 (= e!1507162 Unit!40826)))

(assert (=> b!2359544 false))

(declare-fun lt!864054 () Unit!40821)

(declare-fun forallContained!802 (List!27998 Int K!4987) Unit!40821)

(assert (=> b!2359544 (= lt!864054 (forallContained!802 (getKeysList!15 (t!207874 (toList!1429 (abstractMap!106 thiss!47711)))) lambda!86775 (_1!16365 (h!33300 (toList!1429 (abstractMap!106 thiss!47711))))))))

(declare-fun Unit!40827 () Unit!40821)

(assert (=> b!2359544 (= e!1507162 Unit!40827)))

(declare-fun b!2359545 () Bool)

(assert (=> b!2359545 (= e!1507163 Nil!27900)))

(declare-fun b!2359546 () Bool)

(declare-fun Unit!40828 () Unit!40821)

(assert (=> b!2359546 (= e!1507164 Unit!40828)))

(declare-fun b!2359547 () Bool)

(declare-fun res!1001357 () Bool)

(assert (=> b!2359547 (=> (not res!1001357) (not e!1507161))))

(assert (=> b!2359547 (= res!1001357 (= (length!20 lt!864049) (length!21 (toList!1429 (abstractMap!106 thiss!47711)))))))

(assert (= (and d!693587 c!375083) b!2359541))

(assert (= (and d!693587 (not c!375083)) b!2359545))

(assert (= (and b!2359541 c!375084) b!2359542))

(assert (= (and b!2359541 (not c!375084)) b!2359546))

(assert (= (and b!2359541 c!375085) b!2359544))

(assert (= (and b!2359541 (not c!375085)) b!2359543))

(assert (= (and d!693587 res!1001359) b!2359547))

(assert (= (and b!2359547 res!1001357) b!2359539))

(assert (= (and b!2359539 res!1001358) b!2359540))

(declare-fun m!2772089 () Bool)

(assert (=> d!693587 m!2772089))

(assert (=> d!693587 m!2772077))

(declare-fun m!2772091 () Bool)

(assert (=> b!2359541 m!2772091))

(declare-fun m!2772093 () Bool)

(assert (=> b!2359541 m!2772093))

(declare-fun m!2772095 () Bool)

(assert (=> b!2359541 m!2772095))

(declare-fun m!2772097 () Bool)

(assert (=> b!2359541 m!2772097))

(assert (=> b!2359541 m!2772093))

(declare-fun m!2772099 () Bool)

(assert (=> b!2359541 m!2772099))

(declare-fun m!2772101 () Bool)

(assert (=> b!2359539 m!2772101))

(declare-fun m!2772103 () Bool)

(assert (=> b!2359540 m!2772103))

(declare-fun m!2772105 () Bool)

(assert (=> b!2359540 m!2772105))

(assert (=> b!2359540 m!2772105))

(declare-fun m!2772107 () Bool)

(assert (=> b!2359540 m!2772107))

(declare-fun m!2772109 () Bool)

(assert (=> b!2359547 m!2772109))

(assert (=> b!2359547 m!2772061))

(assert (=> b!2359544 m!2772093))

(assert (=> b!2359544 m!2772093))

(declare-fun m!2772111 () Bool)

(assert (=> b!2359544 m!2772111))

(assert (=> b!2359445 d!693587))

(declare-fun d!693589 () Bool)

(assert (=> d!693589 (isDefined!4276 (getValueByKey!119 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(declare-fun lt!864057 () Unit!40821)

(declare-fun choose!13685 (List!27997 K!4987) Unit!40821)

(assert (=> d!693589 (= lt!864057 (choose!13685 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(assert (=> d!693589 (invariantList!399 (toList!1429 (abstractMap!106 thiss!47711)))))

(assert (=> d!693589 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!76 (toList!1429 (abstractMap!106 thiss!47711)) key!7154) lt!864057)))

(declare-fun bs!460481 () Bool)

(assert (= bs!460481 d!693589))

(assert (=> bs!460481 m!2772025))

(assert (=> bs!460481 m!2772025))

(assert (=> bs!460481 m!2772027))

(declare-fun m!2772113 () Bool)

(assert (=> bs!460481 m!2772113))

(assert (=> bs!460481 m!2772077))

(assert (=> b!2359447 d!693589))

(assert (=> b!2359447 d!693581))

(assert (=> b!2359447 d!693583))

(declare-fun d!693591 () Bool)

(assert (=> d!693591 (contains!4873 (getKeysList!15 (toList!1429 (abstractMap!106 thiss!47711))) key!7154)))

(declare-fun lt!864060 () Unit!40821)

(declare-fun choose!13686 (List!27997 K!4987) Unit!40821)

(assert (=> d!693591 (= lt!864060 (choose!13686 (toList!1429 (abstractMap!106 thiss!47711)) key!7154))))

(assert (=> d!693591 (invariantList!399 (toList!1429 (abstractMap!106 thiss!47711)))))

(assert (=> d!693591 (= (lemmaInListThenGetKeysListContains!12 (toList!1429 (abstractMap!106 thiss!47711)) key!7154) lt!864060)))

(declare-fun bs!460482 () Bool)

(assert (= bs!460482 d!693591))

(assert (=> bs!460482 m!2772023))

(assert (=> bs!460482 m!2772023))

(declare-fun m!2772115 () Bool)

(assert (=> bs!460482 m!2772115))

(declare-fun m!2772117 () Bool)

(assert (=> bs!460482 m!2772117))

(assert (=> bs!460482 m!2772077))

(assert (=> b!2359447 d!693591))

(declare-fun d!693593 () Bool)

(declare-fun res!1001364 () Bool)

(declare-fun e!1507167 () Bool)

(assert (=> d!693593 (=> (not res!1001364) (not e!1507167))))

(declare-fun valid!2444 (MutLongMap!3246) Bool)

(assert (=> d!693593 (= res!1001364 (valid!2444 (v!30845 (underlying!6698 thiss!47711))))))

(assert (=> d!693593 (= (valid!2443 thiss!47711) e!1507167)))

(declare-fun b!2359554 () Bool)

(declare-fun res!1001365 () Bool)

(assert (=> b!2359554 (=> (not res!1001365) (not e!1507167))))

(declare-fun lambda!86781 () Int)

(declare-datatypes ((tuple2!27650 0))(
  ( (tuple2!27651 (_1!16366 (_ BitVec 64)) (_2!16366 List!27997)) )
))
(declare-datatypes ((List!27999 0))(
  ( (Nil!27901) (Cons!27901 (h!33302 tuple2!27650) (t!207876 List!27999)) )
))
(declare-fun forall!5533 (List!27999 Int) Bool)

(declare-datatypes ((ListLongMap!379 0))(
  ( (ListLongMap!380 (toList!1430 List!27999)) )
))
(declare-fun map!5784 (MutLongMap!3246) ListLongMap!379)

(assert (=> b!2359554 (= res!1001365 (forall!5533 (toList!1430 (map!5784 (v!30845 (underlying!6698 thiss!47711)))) lambda!86781))))

(declare-fun b!2359555 () Bool)

(declare-fun allKeysSameHashInMap!123 (ListLongMap!379 Hashable!3156) Bool)

(assert (=> b!2359555 (= e!1507167 (allKeysSameHashInMap!123 (map!5784 (v!30845 (underlying!6698 thiss!47711))) (hashF!5087 thiss!47711)))))

(assert (= (and d!693593 res!1001364) b!2359554))

(assert (= (and b!2359554 res!1001365) b!2359555))

(declare-fun m!2772119 () Bool)

(assert (=> d!693593 m!2772119))

(declare-fun m!2772121 () Bool)

(assert (=> b!2359554 m!2772121))

(declare-fun m!2772123 () Bool)

(assert (=> b!2359554 m!2772123))

(assert (=> b!2359555 m!2772121))

(assert (=> b!2359555 m!2772121))

(declare-fun m!2772125 () Bool)

(assert (=> b!2359555 m!2772125))

(assert (=> b!2359464 d!693593))

(declare-fun d!693595 () Bool)

(declare-fun choose!13687 (MutableMap!3156) Bool)

(assert (=> d!693595 (= (valid!2442 thiss!47711) (choose!13687 thiss!47711))))

(declare-fun bs!460483 () Bool)

(assert (= bs!460483 d!693595))

(declare-fun m!2772127 () Bool)

(assert (=> bs!460483 m!2772127))

(assert (=> b!2359463 d!693595))

(declare-fun d!693597 () Bool)

(declare-fun choose!13688 (MutableMap!3156) ListMap!917)

(assert (=> d!693597 (= (abstractMap!107 thiss!47711) (choose!13688 thiss!47711))))

(declare-fun bs!460484 () Bool)

(assert (= bs!460484 d!693597))

(declare-fun m!2772129 () Bool)

(assert (=> bs!460484 m!2772129))

(assert (=> b!2359457 d!693597))

(declare-fun tp!754519 () Bool)

(declare-fun b!2359556 () Bool)

(declare-fun e!1507168 () Bool)

(assert (=> b!2359556 (= e!1507168 (and tp_is_empty!11205 tp_is_empty!11207 tp!754519))))

(assert (=> b!2359476 (= tp!754514 e!1507168)))

(assert (= (and b!2359476 ((_ is Cons!27899) (t!207874 mapValue!15146))) b!2359556))

(declare-fun tp!754520 () Bool)

(declare-fun b!2359557 () Bool)

(declare-fun e!1507169 () Bool)

(assert (=> b!2359557 (= e!1507169 (and tp_is_empty!11205 tp_is_empty!11207 tp!754520))))

(assert (=> b!2359480 (= tp!754518 e!1507169)))

(assert (= (and b!2359480 ((_ is Cons!27899) (t!207874 (minValue!3504 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))))) b!2359557))

(declare-fun tp!754521 () Bool)

(declare-fun b!2359558 () Bool)

(declare-fun e!1507170 () Bool)

(assert (=> b!2359558 (= e!1507170 (and tp_is_empty!11205 tp_is_empty!11207 tp!754521))))

(assert (=> b!2359478 (= tp!754516 e!1507170)))

(assert (= (and b!2359478 ((_ is Cons!27899) (t!207874 mapValue!15143))) b!2359558))

(declare-fun tp!754522 () Bool)

(declare-fun b!2359559 () Bool)

(declare-fun e!1507171 () Bool)

(assert (=> b!2359559 (= e!1507171 (and tp_is_empty!11205 tp_is_empty!11207 tp!754522))))

(assert (=> b!2359477 (= tp!754515 e!1507171)))

(assert (= (and b!2359477 ((_ is Cons!27899) (t!207874 mapDefault!15146))) b!2359559))

(declare-fun b!2359560 () Bool)

(declare-fun tp!754524 () Bool)

(declare-fun e!1507173 () Bool)

(assert (=> b!2359560 (= e!1507173 (and tp_is_empty!11205 tp_is_empty!11207 tp!754524))))

(declare-fun tp!754525 () Bool)

(declare-fun b!2359561 () Bool)

(declare-fun e!1507172 () Bool)

(assert (=> b!2359561 (= e!1507172 (and tp_is_empty!11205 tp_is_empty!11207 tp!754525))))

(declare-fun mapIsEmpty!15147 () Bool)

(declare-fun mapRes!15147 () Bool)

(assert (=> mapIsEmpty!15147 mapRes!15147))

(declare-fun condMapEmpty!15147 () Bool)

(declare-fun mapDefault!15147 () List!27997)

(assert (=> mapNonEmpty!15146 (= condMapEmpty!15147 (= mapRest!15146 ((as const (Array (_ BitVec 32) List!27997)) mapDefault!15147)))))

(assert (=> mapNonEmpty!15146 (= tp!754513 (and e!1507172 mapRes!15147))))

(declare-fun mapNonEmpty!15147 () Bool)

(declare-fun tp!754523 () Bool)

(assert (=> mapNonEmpty!15147 (= mapRes!15147 (and tp!754523 e!1507173))))

(declare-fun mapValue!15147 () List!27997)

(declare-fun mapKey!15147 () (_ BitVec 32))

(declare-fun mapRest!15147 () (Array (_ BitVec 32) List!27997))

(assert (=> mapNonEmpty!15147 (= mapRest!15146 (store mapRest!15147 mapKey!15147 mapValue!15147))))

(assert (= (and mapNonEmpty!15146 condMapEmpty!15147) mapIsEmpty!15147))

(assert (= (and mapNonEmpty!15146 (not condMapEmpty!15147)) mapNonEmpty!15147))

(assert (= (and mapNonEmpty!15147 ((_ is Cons!27899) mapValue!15147)) b!2359560))

(assert (= (and mapNonEmpty!15146 ((_ is Cons!27899) mapDefault!15147)) b!2359561))

(declare-fun m!2772131 () Bool)

(assert (=> mapNonEmpty!15147 m!2772131))

(declare-fun tp!754526 () Bool)

(declare-fun e!1507174 () Bool)

(declare-fun b!2359562 () Bool)

(assert (=> b!2359562 (= e!1507174 (and tp_is_empty!11205 tp_is_empty!11207 tp!754526))))

(assert (=> b!2359469 (= tp!754506 e!1507174)))

(assert (= (and b!2359469 ((_ is Cons!27899) (t!207874 mapDefault!15143))) b!2359562))

(declare-fun tp!754527 () Bool)

(declare-fun b!2359563 () Bool)

(declare-fun e!1507175 () Bool)

(assert (=> b!2359563 (= e!1507175 (and tp_is_empty!11205 tp_is_empty!11207 tp!754527))))

(assert (=> b!2359479 (= tp!754517 e!1507175)))

(assert (= (and b!2359479 ((_ is Cons!27899) (t!207874 (zeroValue!3504 (v!30844 (underlying!6697 (v!30845 (underlying!6698 thiss!47711)))))))) b!2359563))

(check-sat (not b!2359554) b_and!185373 (not b!2359516) b_and!185375 (not b!2359562) (not d!693585) (not mapNonEmpty!15147) (not d!693569) (not b!2359556) (not d!693577) tp_is_empty!11207 (not b!2359559) (not d!693593) (not d!693573) (not d!693581) (not b!2359495) (not b_next!71141) (not d!693587) (not d!693589) (not d!693595) (not b!2359558) (not b!2359547) (not b!2359505) (not d!693579) (not b!2359555) (not b!2359557) tp_is_empty!11205 (not d!693571) (not b!2359486) (not b!2359520) (not b!2359540) (not b!2359561) (not b!2359503) (not b!2359541) (not b_next!71143) (not b!2359544) (not b!2359493) (not b!2359494) (not b!2359563) (not d!693591) (not b!2359560) (not d!693597) (not b!2359539))
(check-sat b_and!185373 b_and!185375 (not b_next!71141) (not b_next!71143))
