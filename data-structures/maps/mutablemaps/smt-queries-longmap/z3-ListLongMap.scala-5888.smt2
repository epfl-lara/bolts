; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75888 () Bool)

(assert start!75888)

(declare-fun b!892614 () Bool)

(declare-fun b_free!15831 () Bool)

(declare-fun b_next!15831 () Bool)

(assert (=> b!892614 (= b_free!15831 (not b_next!15831))))

(declare-fun tp!55463 () Bool)

(declare-fun b_and!26103 () Bool)

(assert (=> b!892614 (= tp!55463 b_and!26103)))

(declare-fun tp_is_empty!18159 () Bool)

(declare-datatypes ((array!52284 0))(
  ( (array!52285 (arr!25144 (Array (_ BitVec 32) (_ BitVec 64))) (size!25589 (_ BitVec 32))) )
))
(declare-datatypes ((V!29177 0))(
  ( (V!29178 (val!9130 Int)) )
))
(declare-datatypes ((ValueCell!8598 0))(
  ( (ValueCellFull!8598 (v!11603 V!29177)) (EmptyCell!8598) )
))
(declare-datatypes ((array!52286 0))(
  ( (array!52287 (arr!25145 (Array (_ BitVec 32) ValueCell!8598)) (size!25590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4212 0))(
  ( (LongMapFixedSize!4213 (defaultEntry!5303 Int) (mask!25813 (_ BitVec 32)) (extraKeys!4997 (_ BitVec 32)) (zeroValue!5101 V!29177) (minValue!5101 V!29177) (_size!2161 (_ BitVec 32)) (_keys!9982 array!52284) (_values!5288 array!52286) (_vacant!2161 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4212)

(declare-fun e!498407 () Bool)

(declare-fun e!498410 () Bool)

(declare-fun array_inv!19728 (array!52284) Bool)

(declare-fun array_inv!19729 (array!52286) Bool)

(assert (=> b!892614 (= e!498407 (and tp!55463 tp_is_empty!18159 (array_inv!19728 (_keys!9982 thiss!1181)) (array_inv!19729 (_values!5288 thiss!1181)) e!498410))))

(declare-fun call!39557 () V!29177)

(declare-fun b!892615 () Bool)

(declare-datatypes ((SeekEntryResult!8847 0))(
  ( (MissingZero!8847 (index!37758 (_ BitVec 32))) (Found!8847 (index!37759 (_ BitVec 32))) (Intermediate!8847 (undefined!9659 Bool) (index!37760 (_ BitVec 32)) (x!75872 (_ BitVec 32))) (Undefined!8847) (MissingVacant!8847 (index!37761 (_ BitVec 32))) )
))
(declare-fun lt!403274 () SeekEntryResult!8847)

(declare-fun e!498405 () Bool)

(declare-fun get!13245 (ValueCell!8598 V!29177) V!29177)

(declare-fun dynLambda!1294 (Int (_ BitVec 64)) V!29177)

(assert (=> b!892615 (= e!498405 (= call!39557 (get!13245 (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274)) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892616 () Bool)

(declare-fun e!498399 () Bool)

(declare-fun call!39558 () V!29177)

(assert (=> b!892616 (= e!498399 (= call!39558 (zeroValue!5101 thiss!1181)))))

(declare-fun b!892617 () Bool)

(declare-fun res!604779 () Bool)

(declare-fun e!498398 () Bool)

(assert (=> b!892617 (=> (not res!604779) (not e!498398))))

(assert (=> b!892617 (= res!604779 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!892617 (= e!498405 e!498398)))

(declare-fun bm!39554 () Bool)

(declare-datatypes ((tuple2!12028 0))(
  ( (tuple2!12029 (_1!6024 (_ BitVec 64)) (_2!6024 V!29177)) )
))
(declare-datatypes ((List!17870 0))(
  ( (Nil!17867) (Cons!17866 (h!18997 tuple2!12028) (t!25193 List!17870)) )
))
(declare-datatypes ((ListLongMap!10739 0))(
  ( (ListLongMap!10740 (toList!5385 List!17870)) )
))
(declare-fun lt!403276 () ListLongMap!10739)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!405 (ListLongMap!10739 (_ BitVec 64)) V!29177)

(assert (=> bm!39554 (= call!39558 (apply!405 lt!403276 key!785))))

(declare-fun res!604780 () Bool)

(declare-fun e!498408 () Bool)

(assert (=> start!75888 (=> (not res!604780) (not e!498408))))

(declare-fun valid!1618 (LongMapFixedSize!4212) Bool)

(assert (=> start!75888 (= res!604780 (valid!1618 thiss!1181))))

(assert (=> start!75888 e!498408))

(assert (=> start!75888 e!498407))

(assert (=> start!75888 true))

(declare-fun b!892618 () Bool)

(declare-fun e!498409 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892618 (= e!498409 (inRange!0 (index!37759 lt!403274) (mask!25813 thiss!1181)))))

(declare-fun b!892619 () Bool)

(declare-fun e!498406 () Bool)

(assert (=> b!892619 (= e!498406 tp_is_empty!18159)))

(declare-fun b!892620 () Bool)

(declare-fun e!498401 () Bool)

(declare-fun e!498400 () Bool)

(assert (=> b!892620 (= e!498401 e!498400)))

(declare-fun res!604776 () Bool)

(assert (=> b!892620 (=> res!604776 e!498400)))

(declare-fun contains!4363 (LongMapFixedSize!4212 (_ BitVec 64)) Bool)

(assert (=> b!892620 (= res!604776 (not (contains!4363 thiss!1181 key!785)))))

(declare-fun e!498404 () Bool)

(assert (=> b!892620 e!498404))

(declare-fun c!93910 () Bool)

(assert (=> b!892620 (= c!93910 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!30375 0))(
  ( (Unit!30376) )
))
(declare-fun lt!403278 () Unit!30375)

(declare-fun lemmaKeyInListMapThenSameValueInArray!8 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 64) (_ BitVec 32) Int) Unit!30375)

(assert (=> b!892620 (= lt!403278 (lemmaKeyInListMapThenSameValueInArray!8 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785 (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)))))

(declare-fun contains!4364 (ListLongMap!10739 (_ BitVec 64)) Bool)

(assert (=> b!892620 (contains!4364 lt!403276 (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274)))))

(declare-fun getCurrentListMap!2635 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 32) Int) ListLongMap!10739)

(assert (=> b!892620 (= lt!403276 (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun lt!403273 () Unit!30375)

(declare-fun lemmaValidKeyInArrayIsInListMap!228 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 32) Int) Unit!30375)

(assert (=> b!892620 (= lt!403273 (lemmaValidKeyInArrayIsInListMap!228 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892620 (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403277 () Unit!30375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52284 (_ BitVec 64) (_ BitVec 32)) Unit!30375)

(assert (=> b!892620 (= lt!403277 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9982 thiss!1181) key!785 (index!37759 lt!403274)))))

(declare-fun mapIsEmpty!28793 () Bool)

(declare-fun mapRes!28793 () Bool)

(assert (=> mapIsEmpty!28793 mapRes!28793))

(declare-fun b!892621 () Bool)

(assert (=> b!892621 (= e!498410 (and e!498406 mapRes!28793))))

(declare-fun condMapEmpty!28793 () Bool)

(declare-fun mapDefault!28793 () ValueCell!8598)

(assert (=> b!892621 (= condMapEmpty!28793 (= (arr!25145 (_values!5288 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8598)) mapDefault!28793)))))

(declare-fun b!892622 () Bool)

(assert (=> b!892622 (= e!498404 e!498399)))

(declare-fun res!604777 () Bool)

(assert (=> b!892622 (= res!604777 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892622 (=> (not res!604777) (not e!498399))))

(declare-fun b!892623 () Bool)

(declare-datatypes ((Option!449 0))(
  ( (Some!448 (v!11604 V!29177)) (None!447) )
))
(declare-fun isDefined!324 (Option!449) Bool)

(declare-fun getValueByKey!443 (List!17870 (_ BitVec 64)) Option!449)

(declare-fun map!12202 (LongMapFixedSize!4212) ListLongMap!10739)

(assert (=> b!892623 (= e!498400 (isDefined!324 (getValueByKey!443 (toList!5385 (map!12202 thiss!1181)) key!785)))))

(declare-fun b!892624 () Bool)

(assert (=> b!892624 (= e!498398 (= call!39557 (minValue!5101 thiss!1181)))))

(declare-fun b!892625 () Bool)

(declare-fun res!604778 () Bool)

(assert (=> b!892625 (=> (not res!604778) (not e!498408))))

(assert (=> b!892625 (= res!604778 (not (= key!785 (bvneg key!785))))))

(declare-fun bm!39555 () Bool)

(assert (=> bm!39555 (= call!39557 call!39558)))

(declare-fun b!892626 () Bool)

(declare-fun e!498402 () Bool)

(assert (=> b!892626 (= e!498402 tp_is_empty!18159)))

(declare-fun b!892627 () Bool)

(assert (=> b!892627 (= e!498408 (not e!498401))))

(declare-fun res!604782 () Bool)

(assert (=> b!892627 (=> res!604782 e!498401)))

(get-info :version)

(assert (=> b!892627 (= res!604782 (not ((_ is Found!8847) lt!403274)))))

(assert (=> b!892627 e!498409))

(declare-fun res!604781 () Bool)

(assert (=> b!892627 (=> res!604781 e!498409)))

(assert (=> b!892627 (= res!604781 (not ((_ is Found!8847) lt!403274)))))

(declare-fun lt!403275 () Unit!30375)

(declare-fun lemmaSeekEntryGivesInRangeIndex!61 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 64)) Unit!30375)

(assert (=> b!892627 (= lt!403275 (lemmaSeekEntryGivesInRangeIndex!61 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52284 (_ BitVec 32)) SeekEntryResult!8847)

(assert (=> b!892627 (= lt!403274 (seekEntry!0 key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun b!892628 () Bool)

(assert (=> b!892628 (= e!498404 e!498405)))

(declare-fun c!93911 () Bool)

(assert (=> b!892628 (= c!93911 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!28793 () Bool)

(declare-fun tp!55462 () Bool)

(assert (=> mapNonEmpty!28793 (= mapRes!28793 (and tp!55462 e!498402))))

(declare-fun mapRest!28793 () (Array (_ BitVec 32) ValueCell!8598))

(declare-fun mapKey!28793 () (_ BitVec 32))

(declare-fun mapValue!28793 () ValueCell!8598)

(assert (=> mapNonEmpty!28793 (= (arr!25145 (_values!5288 thiss!1181)) (store mapRest!28793 mapKey!28793 mapValue!28793))))

(assert (= (and start!75888 res!604780) b!892625))

(assert (= (and b!892625 res!604778) b!892627))

(assert (= (and b!892627 (not res!604781)) b!892618))

(assert (= (and b!892627 (not res!604782)) b!892620))

(assert (= (and b!892620 c!93910) b!892622))

(assert (= (and b!892620 (not c!93910)) b!892628))

(assert (= (and b!892622 res!604777) b!892616))

(assert (= (and b!892628 c!93911) b!892617))

(assert (= (and b!892628 (not c!93911)) b!892615))

(assert (= (and b!892617 res!604779) b!892624))

(assert (= (or b!892624 b!892615) bm!39555))

(assert (= (or b!892616 bm!39555) bm!39554))

(assert (= (and b!892620 (not res!604776)) b!892623))

(assert (= (and b!892621 condMapEmpty!28793) mapIsEmpty!28793))

(assert (= (and b!892621 (not condMapEmpty!28793)) mapNonEmpty!28793))

(assert (= (and mapNonEmpty!28793 ((_ is ValueCellFull!8598) mapValue!28793)) b!892626))

(assert (= (and b!892621 ((_ is ValueCellFull!8598) mapDefault!28793)) b!892619))

(assert (= b!892614 b!892621))

(assert (= start!75888 b!892614))

(declare-fun b_lambda!12927 () Bool)

(assert (=> (not b_lambda!12927) (not b!892615)))

(declare-fun t!25192 () Bool)

(declare-fun tb!5173 () Bool)

(assert (=> (and b!892614 (= (defaultEntry!5303 thiss!1181) (defaultEntry!5303 thiss!1181)) t!25192) tb!5173))

(declare-fun result!10049 () Bool)

(assert (=> tb!5173 (= result!10049 tp_is_empty!18159)))

(assert (=> b!892615 t!25192))

(declare-fun b_and!26105 () Bool)

(assert (= b_and!26103 (and (=> t!25192 result!10049) b_and!26105)))

(declare-fun m!830925 () Bool)

(assert (=> b!892615 m!830925))

(declare-fun m!830927 () Bool)

(assert (=> b!892615 m!830927))

(assert (=> b!892615 m!830925))

(assert (=> b!892615 m!830927))

(declare-fun m!830929 () Bool)

(assert (=> b!892615 m!830929))

(declare-fun m!830931 () Bool)

(assert (=> mapNonEmpty!28793 m!830931))

(declare-fun m!830933 () Bool)

(assert (=> b!892623 m!830933))

(declare-fun m!830935 () Bool)

(assert (=> b!892623 m!830935))

(assert (=> b!892623 m!830935))

(declare-fun m!830937 () Bool)

(assert (=> b!892623 m!830937))

(declare-fun m!830939 () Bool)

(assert (=> b!892614 m!830939))

(declare-fun m!830941 () Bool)

(assert (=> b!892614 m!830941))

(declare-fun m!830943 () Bool)

(assert (=> b!892627 m!830943))

(declare-fun m!830945 () Bool)

(assert (=> b!892627 m!830945))

(declare-fun m!830947 () Bool)

(assert (=> start!75888 m!830947))

(declare-fun m!830949 () Bool)

(assert (=> b!892620 m!830949))

(declare-fun m!830951 () Bool)

(assert (=> b!892620 m!830951))

(declare-fun m!830953 () Bool)

(assert (=> b!892620 m!830953))

(assert (=> b!892620 m!830949))

(declare-fun m!830955 () Bool)

(assert (=> b!892620 m!830955))

(declare-fun m!830957 () Bool)

(assert (=> b!892620 m!830957))

(declare-fun m!830959 () Bool)

(assert (=> b!892620 m!830959))

(declare-fun m!830961 () Bool)

(assert (=> b!892620 m!830961))

(declare-fun m!830963 () Bool)

(assert (=> b!892620 m!830963))

(declare-fun m!830965 () Bool)

(assert (=> bm!39554 m!830965))

(declare-fun m!830967 () Bool)

(assert (=> b!892618 m!830967))

(check-sat (not start!75888) (not b!892618) (not b!892620) b_and!26105 (not b!892627) (not b!892623) (not b_next!15831) (not b!892614) tp_is_empty!18159 (not mapNonEmpty!28793) (not b_lambda!12927) (not b!892615) (not bm!39554))
(check-sat b_and!26105 (not b_next!15831))
(get-model)

(declare-fun b_lambda!12931 () Bool)

(assert (= b_lambda!12927 (or (and b!892614 b_free!15831) b_lambda!12931)))

(check-sat (not start!75888) (not b_lambda!12931) (not mapNonEmpty!28793) (not b!892618) (not b!892620) b_and!26105 (not b!892627) (not b!892623) (not b_next!15831) (not b!892614) tp_is_empty!18159 (not b!892615) (not bm!39554))
(check-sat b_and!26105 (not b_next!15831))
(get-model)

(declare-fun d!110161 () Bool)

(declare-fun get!13247 (Option!449) V!29177)

(assert (=> d!110161 (= (apply!405 lt!403276 key!785) (get!13247 (getValueByKey!443 (toList!5385 lt!403276) key!785)))))

(declare-fun bs!25047 () Bool)

(assert (= bs!25047 d!110161))

(declare-fun m!831013 () Bool)

(assert (=> bs!25047 m!831013))

(assert (=> bs!25047 m!831013))

(declare-fun m!831015 () Bool)

(assert (=> bs!25047 m!831015))

(assert (=> bm!39554 d!110161))

(declare-fun d!110163 () Bool)

(declare-fun c!93920 () Bool)

(assert (=> d!110163 (= c!93920 ((_ is ValueCellFull!8598) (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274))))))

(declare-fun e!498452 () V!29177)

(assert (=> d!110163 (= (get!13245 (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274)) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!498452)))

(declare-fun b!892682 () Bool)

(declare-fun get!13248 (ValueCell!8598 V!29177) V!29177)

(assert (=> b!892682 (= e!498452 (get!13248 (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274)) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!892683 () Bool)

(declare-fun get!13249 (ValueCell!8598 V!29177) V!29177)

(assert (=> b!892683 (= e!498452 (get!13249 (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274)) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110163 c!93920) b!892682))

(assert (= (and d!110163 (not c!93920)) b!892683))

(assert (=> b!892682 m!830925))

(assert (=> b!892682 m!830927))

(declare-fun m!831017 () Bool)

(assert (=> b!892682 m!831017))

(assert (=> b!892683 m!830925))

(assert (=> b!892683 m!830927))

(declare-fun m!831019 () Bool)

(assert (=> b!892683 m!831019))

(assert (=> b!892615 d!110163))

(declare-fun b!892698 () Bool)

(declare-fun e!498466 () Bool)

(declare-fun e!498465 () Bool)

(assert (=> b!892698 (= e!498466 e!498465)))

(declare-fun res!604811 () Bool)

(assert (=> b!892698 (= res!604811 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892698 (=> (not res!604811) (not e!498465))))

(declare-fun b!892699 () Bool)

(declare-fun e!498463 () Bool)

(declare-fun call!39576 () V!29177)

(assert (=> b!892699 (= e!498463 (= call!39576 (minValue!5101 thiss!1181)))))

(declare-fun call!39574 () V!29177)

(declare-fun call!39573 () ListLongMap!10739)

(declare-fun call!39575 () ListLongMap!10739)

(declare-fun c!93925 () Bool)

(declare-fun bm!39570 () Bool)

(assert (=> bm!39570 (= call!39574 (apply!405 (ite c!93925 call!39575 call!39573) key!785))))

(declare-fun b!892700 () Bool)

(declare-fun res!604812 () Bool)

(assert (=> b!892700 (=> (not res!604812) (not e!498463))))

(assert (=> b!892700 (= res!604812 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!498467 () Bool)

(assert (=> b!892700 (= e!498467 e!498463)))

(declare-fun b!892701 () Bool)

(declare-fun e!498464 () Bool)

(assert (=> b!892701 (= e!498464 (= call!39576 (get!13245 (select (arr!25145 (_values!5288 thiss!1181)) (index!37759 lt!403274)) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!892701 (and (bvsge (index!37759 lt!403274) #b00000000000000000000000000000000) (bvslt (index!37759 lt!403274) (size!25590 (_values!5288 thiss!1181))))))

(declare-fun bm!39571 () Bool)

(assert (=> bm!39571 (= call!39573 call!39575)))

(declare-fun d!110165 () Bool)

(assert (=> d!110165 e!498466))

(assert (=> d!110165 (= c!93925 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!403299 () Unit!30375)

(declare-fun choose!1468 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 64) (_ BitVec 32) Int) Unit!30375)

(assert (=> d!110165 (= lt!403299 (choose!1468 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785 (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110165 (validMask!0 (mask!25813 thiss!1181))))

(assert (=> d!110165 (= (lemmaKeyInListMapThenSameValueInArray!8 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785 (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)) lt!403299)))

(declare-fun bm!39572 () Bool)

(assert (=> bm!39572 (= call!39575 (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun b!892702 () Bool)

(assert (=> b!892702 (= e!498465 (= call!39574 (zeroValue!5101 thiss!1181)))))

(declare-fun bm!39573 () Bool)

(assert (=> bm!39573 (= call!39576 call!39574)))

(declare-fun b!892703 () Bool)

(assert (=> b!892703 (= e!498466 e!498467)))

(declare-fun c!93926 () Bool)

(assert (=> b!892703 (= c!93926 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892704 () Bool)

(declare-fun res!604810 () Bool)

(assert (=> b!892704 (=> (not res!604810) (not e!498464))))

(assert (=> b!892704 (= res!604810 (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000))))

(assert (=> b!892704 (= e!498467 e!498464)))

(assert (= (and d!110165 c!93925) b!892698))

(assert (= (and d!110165 (not c!93925)) b!892703))

(assert (= (and b!892698 res!604811) b!892702))

(assert (= (and b!892703 c!93926) b!892700))

(assert (= (and b!892703 (not c!93926)) b!892704))

(assert (= (and b!892700 res!604812) b!892699))

(assert (= (and b!892704 res!604810) b!892701))

(assert (= (or b!892699 b!892701) bm!39571))

(assert (= (or b!892699 b!892701) bm!39573))

(assert (= (or b!892702 bm!39571) bm!39572))

(assert (= (or b!892702 bm!39573) bm!39570))

(declare-fun b_lambda!12933 () Bool)

(assert (=> (not b_lambda!12933) (not b!892701)))

(assert (=> b!892701 t!25192))

(declare-fun b_and!26111 () Bool)

(assert (= b_and!26105 (and (=> t!25192 result!10049) b_and!26111)))

(assert (=> bm!39572 m!830957))

(assert (=> b!892701 m!830925))

(assert (=> b!892701 m!830927))

(assert (=> b!892701 m!830925))

(assert (=> b!892701 m!830927))

(assert (=> b!892701 m!830929))

(declare-fun m!831021 () Bool)

(assert (=> bm!39570 m!831021))

(declare-fun m!831023 () Bool)

(assert (=> d!110165 m!831023))

(declare-fun m!831025 () Bool)

(assert (=> d!110165 m!831025))

(assert (=> b!892704 m!830951))

(assert (=> b!892620 d!110165))

(declare-fun d!110167 () Bool)

(declare-fun res!604817 () Bool)

(declare-fun e!498472 () Bool)

(assert (=> d!110167 (=> res!604817 e!498472)))

(assert (=> d!110167 (= res!604817 (= (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110167 (= (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000) e!498472)))

(declare-fun b!892709 () Bool)

(declare-fun e!498473 () Bool)

(assert (=> b!892709 (= e!498472 e!498473)))

(declare-fun res!604818 () Bool)

(assert (=> b!892709 (=> (not res!604818) (not e!498473))))

(assert (=> b!892709 (= res!604818 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25589 (_keys!9982 thiss!1181))))))

(declare-fun b!892710 () Bool)

(assert (=> b!892710 (= e!498473 (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110167 (not res!604817)) b!892709))

(assert (= (and b!892709 res!604818) b!892710))

(declare-fun m!831027 () Bool)

(assert (=> d!110167 m!831027))

(declare-fun m!831029 () Bool)

(assert (=> b!892710 m!831029))

(assert (=> b!892620 d!110167))

(declare-fun d!110169 () Bool)

(assert (=> d!110169 (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403302 () Unit!30375)

(declare-fun choose!13 (array!52284 (_ BitVec 64) (_ BitVec 32)) Unit!30375)

(assert (=> d!110169 (= lt!403302 (choose!13 (_keys!9982 thiss!1181) key!785 (index!37759 lt!403274)))))

(assert (=> d!110169 (bvsge (index!37759 lt!403274) #b00000000000000000000000000000000)))

(assert (=> d!110169 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9982 thiss!1181) key!785 (index!37759 lt!403274)) lt!403302)))

(declare-fun bs!25048 () Bool)

(assert (= bs!25048 d!110169))

(assert (=> bs!25048 m!830951))

(declare-fun m!831031 () Bool)

(assert (=> bs!25048 m!831031))

(assert (=> b!892620 d!110169))

(declare-fun bm!39588 () Bool)

(declare-fun call!39592 () ListLongMap!10739)

(declare-fun call!39595 () ListLongMap!10739)

(assert (=> bm!39588 (= call!39592 call!39595)))

(declare-fun bm!39589 () Bool)

(declare-fun call!39594 () ListLongMap!10739)

(declare-fun getCurrentListMapNoExtraKeys!3290 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 32) Int) ListLongMap!10739)

(assert (=> bm!39589 (= call!39594 (getCurrentListMapNoExtraKeys!3290 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun b!892753 () Bool)

(declare-fun e!498501 () Bool)

(declare-fun lt!403353 () ListLongMap!10739)

(assert (=> b!892753 (= e!498501 (= (apply!405 lt!403353 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5101 thiss!1181)))))

(declare-fun b!892754 () Bool)

(declare-fun e!498500 () ListLongMap!10739)

(declare-fun call!39593 () ListLongMap!10739)

(assert (=> b!892754 (= e!498500 call!39593)))

(declare-fun b!892755 () Bool)

(declare-fun e!498508 () Bool)

(declare-fun call!39597 () Bool)

(assert (=> b!892755 (= e!498508 (not call!39597))))

(declare-fun b!892756 () Bool)

(declare-fun e!498505 () Bool)

(declare-fun e!498512 () Bool)

(assert (=> b!892756 (= e!498505 e!498512)))

(declare-fun res!604843 () Bool)

(declare-fun call!39596 () Bool)

(assert (=> b!892756 (= res!604843 call!39596)))

(assert (=> b!892756 (=> (not res!604843) (not e!498512))))

(declare-fun b!892757 () Bool)

(assert (=> b!892757 (= e!498512 (= (apply!405 lt!403353 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5101 thiss!1181)))))

(declare-fun b!892758 () Bool)

(assert (=> b!892758 (= e!498508 e!498501)))

(declare-fun res!604837 () Bool)

(assert (=> b!892758 (= res!604837 call!39597)))

(assert (=> b!892758 (=> (not res!604837) (not e!498501))))

(declare-fun b!892759 () Bool)

(assert (=> b!892759 (= e!498505 (not call!39596))))

(declare-fun bm!39590 () Bool)

(assert (=> bm!39590 (= call!39597 (contains!4364 lt!403353 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892760 () Bool)

(declare-fun e!498503 () ListLongMap!10739)

(assert (=> b!892760 (= e!498503 e!498500)))

(declare-fun c!93939 () Bool)

(assert (=> b!892760 (= c!93939 (and (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!892761 () Bool)

(declare-fun e!498511 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!892761 (= e!498511 (validKeyInArray!0 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!892762 () Bool)

(declare-fun e!498506 () Bool)

(assert (=> b!892762 (= e!498506 e!498505)))

(declare-fun c!93942 () Bool)

(assert (=> b!892762 (= c!93942 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!892763 () Bool)

(declare-fun e!498502 () Bool)

(assert (=> b!892763 (= e!498502 (validKeyInArray!0 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!892764 () Bool)

(declare-fun res!604840 () Bool)

(assert (=> b!892764 (=> (not res!604840) (not e!498506))))

(assert (=> b!892764 (= res!604840 e!498508)))

(declare-fun c!93941 () Bool)

(assert (=> b!892764 (= c!93941 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!892765 () Bool)

(declare-fun e!498504 () Unit!30375)

(declare-fun lt!403348 () Unit!30375)

(assert (=> b!892765 (= e!498504 lt!403348)))

(declare-fun lt!403360 () ListLongMap!10739)

(assert (=> b!892765 (= lt!403360 (getCurrentListMapNoExtraKeys!3290 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun lt!403354 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403354 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403350 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403350 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403349 () Unit!30375)

(declare-fun addStillContains!328 (ListLongMap!10739 (_ BitVec 64) V!29177 (_ BitVec 64)) Unit!30375)

(assert (=> b!892765 (= lt!403349 (addStillContains!328 lt!403360 lt!403354 (zeroValue!5101 thiss!1181) lt!403350))))

(declare-fun +!2542 (ListLongMap!10739 tuple2!12028) ListLongMap!10739)

(assert (=> b!892765 (contains!4364 (+!2542 lt!403360 (tuple2!12029 lt!403354 (zeroValue!5101 thiss!1181))) lt!403350)))

(declare-fun lt!403351 () Unit!30375)

(assert (=> b!892765 (= lt!403351 lt!403349)))

(declare-fun lt!403366 () ListLongMap!10739)

(assert (=> b!892765 (= lt!403366 (getCurrentListMapNoExtraKeys!3290 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun lt!403359 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403358 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403358 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403357 () Unit!30375)

(declare-fun addApplyDifferent!328 (ListLongMap!10739 (_ BitVec 64) V!29177 (_ BitVec 64)) Unit!30375)

(assert (=> b!892765 (= lt!403357 (addApplyDifferent!328 lt!403366 lt!403359 (minValue!5101 thiss!1181) lt!403358))))

(assert (=> b!892765 (= (apply!405 (+!2542 lt!403366 (tuple2!12029 lt!403359 (minValue!5101 thiss!1181))) lt!403358) (apply!405 lt!403366 lt!403358))))

(declare-fun lt!403347 () Unit!30375)

(assert (=> b!892765 (= lt!403347 lt!403357)))

(declare-fun lt!403363 () ListLongMap!10739)

(assert (=> b!892765 (= lt!403363 (getCurrentListMapNoExtraKeys!3290 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun lt!403352 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403352 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403355 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403355 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403362 () Unit!30375)

(assert (=> b!892765 (= lt!403362 (addApplyDifferent!328 lt!403363 lt!403352 (zeroValue!5101 thiss!1181) lt!403355))))

(assert (=> b!892765 (= (apply!405 (+!2542 lt!403363 (tuple2!12029 lt!403352 (zeroValue!5101 thiss!1181))) lt!403355) (apply!405 lt!403363 lt!403355))))

(declare-fun lt!403368 () Unit!30375)

(assert (=> b!892765 (= lt!403368 lt!403362)))

(declare-fun lt!403364 () ListLongMap!10739)

(assert (=> b!892765 (= lt!403364 (getCurrentListMapNoExtraKeys!3290 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun lt!403367 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403367 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403361 () (_ BitVec 64))

(assert (=> b!892765 (= lt!403361 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!892765 (= lt!403348 (addApplyDifferent!328 lt!403364 lt!403367 (minValue!5101 thiss!1181) lt!403361))))

(assert (=> b!892765 (= (apply!405 (+!2542 lt!403364 (tuple2!12029 lt!403367 (minValue!5101 thiss!1181))) lt!403361) (apply!405 lt!403364 lt!403361))))

(declare-fun bm!39591 () Bool)

(declare-fun call!39591 () ListLongMap!10739)

(assert (=> bm!39591 (= call!39593 call!39591)))

(declare-fun b!892766 () Bool)

(declare-fun c!93944 () Bool)

(assert (=> b!892766 (= c!93944 (and (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!498510 () ListLongMap!10739)

(assert (=> b!892766 (= e!498500 e!498510)))

(declare-fun bm!39592 () Bool)

(assert (=> bm!39592 (= call!39595 call!39594)))

(declare-fun b!892767 () Bool)

(declare-fun e!498507 () Bool)

(assert (=> b!892767 (= e!498507 (= (apply!405 lt!403353 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000)) (get!13245 (select (arr!25145 (_values!5288 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1294 (defaultEntry!5303 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!892767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25590 (_values!5288 thiss!1181))))))

(assert (=> b!892767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))))))

(declare-fun b!892768 () Bool)

(assert (=> b!892768 (= e!498510 call!39593)))

(declare-fun bm!39593 () Bool)

(assert (=> bm!39593 (= call!39596 (contains!4364 lt!403353 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892769 () Bool)

(declare-fun res!604844 () Bool)

(assert (=> b!892769 (=> (not res!604844) (not e!498506))))

(declare-fun e!498509 () Bool)

(assert (=> b!892769 (= res!604844 e!498509)))

(declare-fun res!604839 () Bool)

(assert (=> b!892769 (=> res!604839 e!498509)))

(assert (=> b!892769 (= res!604839 (not e!498511))))

(declare-fun res!604841 () Bool)

(assert (=> b!892769 (=> (not res!604841) (not e!498511))))

(assert (=> b!892769 (= res!604841 (bvslt #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))))))

(declare-fun d!110171 () Bool)

(assert (=> d!110171 e!498506))

(declare-fun res!604845 () Bool)

(assert (=> d!110171 (=> (not res!604845) (not e!498506))))

(assert (=> d!110171 (= res!604845 (or (bvsge #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))))))))

(declare-fun lt!403365 () ListLongMap!10739)

(assert (=> d!110171 (= lt!403353 lt!403365)))

(declare-fun lt!403356 () Unit!30375)

(assert (=> d!110171 (= lt!403356 e!498504)))

(declare-fun c!93943 () Bool)

(assert (=> d!110171 (= c!93943 e!498502)))

(declare-fun res!604842 () Bool)

(assert (=> d!110171 (=> (not res!604842) (not e!498502))))

(assert (=> d!110171 (= res!604842 (bvslt #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))))))

(assert (=> d!110171 (= lt!403365 e!498503)))

(declare-fun c!93940 () Bool)

(assert (=> d!110171 (= c!93940 (and (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!110171 (validMask!0 (mask!25813 thiss!1181))))

(assert (=> d!110171 (= (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)) lt!403353)))

(declare-fun b!892770 () Bool)

(assert (=> b!892770 (= e!498503 (+!2542 call!39591 (tuple2!12029 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5101 thiss!1181))))))

(declare-fun b!892771 () Bool)

(assert (=> b!892771 (= e!498510 call!39592)))

(declare-fun bm!39594 () Bool)

(assert (=> bm!39594 (= call!39591 (+!2542 (ite c!93940 call!39594 (ite c!93939 call!39595 call!39592)) (ite (or c!93940 c!93939) (tuple2!12029 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5101 thiss!1181)) (tuple2!12029 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5101 thiss!1181)))))))

(declare-fun b!892772 () Bool)

(declare-fun Unit!30379 () Unit!30375)

(assert (=> b!892772 (= e!498504 Unit!30379)))

(declare-fun b!892773 () Bool)

(assert (=> b!892773 (= e!498509 e!498507)))

(declare-fun res!604838 () Bool)

(assert (=> b!892773 (=> (not res!604838) (not e!498507))))

(assert (=> b!892773 (= res!604838 (contains!4364 lt!403353 (select (arr!25144 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!892773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))))))

(assert (= (and d!110171 c!93940) b!892770))

(assert (= (and d!110171 (not c!93940)) b!892760))

(assert (= (and b!892760 c!93939) b!892754))

(assert (= (and b!892760 (not c!93939)) b!892766))

(assert (= (and b!892766 c!93944) b!892768))

(assert (= (and b!892766 (not c!93944)) b!892771))

(assert (= (or b!892768 b!892771) bm!39588))

(assert (= (or b!892754 bm!39588) bm!39592))

(assert (= (or b!892754 b!892768) bm!39591))

(assert (= (or b!892770 bm!39592) bm!39589))

(assert (= (or b!892770 bm!39591) bm!39594))

(assert (= (and d!110171 res!604842) b!892763))

(assert (= (and d!110171 c!93943) b!892765))

(assert (= (and d!110171 (not c!93943)) b!892772))

(assert (= (and d!110171 res!604845) b!892769))

(assert (= (and b!892769 res!604841) b!892761))

(assert (= (and b!892769 (not res!604839)) b!892773))

(assert (= (and b!892773 res!604838) b!892767))

(assert (= (and b!892769 res!604844) b!892764))

(assert (= (and b!892764 c!93941) b!892758))

(assert (= (and b!892764 (not c!93941)) b!892755))

(assert (= (and b!892758 res!604837) b!892753))

(assert (= (or b!892758 b!892755) bm!39590))

(assert (= (and b!892764 res!604840) b!892762))

(assert (= (and b!892762 c!93942) b!892756))

(assert (= (and b!892762 (not c!93942)) b!892759))

(assert (= (and b!892756 res!604843) b!892757))

(assert (= (or b!892756 b!892759) bm!39593))

(declare-fun b_lambda!12935 () Bool)

(assert (=> (not b_lambda!12935) (not b!892767)))

(assert (=> b!892767 t!25192))

(declare-fun b_and!26113 () Bool)

(assert (= b_and!26111 (and (=> t!25192 result!10049) b_and!26113)))

(assert (=> b!892773 m!831027))

(assert (=> b!892773 m!831027))

(declare-fun m!831033 () Bool)

(assert (=> b!892773 m!831033))

(declare-fun m!831035 () Bool)

(assert (=> b!892753 m!831035))

(declare-fun m!831037 () Bool)

(assert (=> b!892765 m!831037))

(declare-fun m!831039 () Bool)

(assert (=> b!892765 m!831039))

(declare-fun m!831041 () Bool)

(assert (=> b!892765 m!831041))

(declare-fun m!831043 () Bool)

(assert (=> b!892765 m!831043))

(declare-fun m!831045 () Bool)

(assert (=> b!892765 m!831045))

(declare-fun m!831047 () Bool)

(assert (=> b!892765 m!831047))

(declare-fun m!831049 () Bool)

(assert (=> b!892765 m!831049))

(assert (=> b!892765 m!831037))

(declare-fun m!831051 () Bool)

(assert (=> b!892765 m!831051))

(assert (=> b!892765 m!831047))

(declare-fun m!831053 () Bool)

(assert (=> b!892765 m!831053))

(declare-fun m!831055 () Bool)

(assert (=> b!892765 m!831055))

(declare-fun m!831057 () Bool)

(assert (=> b!892765 m!831057))

(declare-fun m!831059 () Bool)

(assert (=> b!892765 m!831059))

(declare-fun m!831061 () Bool)

(assert (=> b!892765 m!831061))

(declare-fun m!831063 () Bool)

(assert (=> b!892765 m!831063))

(assert (=> b!892765 m!831027))

(declare-fun m!831065 () Bool)

(assert (=> b!892765 m!831065))

(assert (=> b!892765 m!831059))

(declare-fun m!831067 () Bool)

(assert (=> b!892765 m!831067))

(assert (=> b!892765 m!831053))

(assert (=> b!892763 m!831027))

(assert (=> b!892763 m!831027))

(declare-fun m!831069 () Bool)

(assert (=> b!892763 m!831069))

(declare-fun m!831071 () Bool)

(assert (=> b!892767 m!831071))

(assert (=> b!892767 m!831071))

(assert (=> b!892767 m!830927))

(declare-fun m!831073 () Bool)

(assert (=> b!892767 m!831073))

(assert (=> b!892767 m!831027))

(declare-fun m!831075 () Bool)

(assert (=> b!892767 m!831075))

(assert (=> b!892767 m!831027))

(assert (=> b!892767 m!830927))

(assert (=> d!110171 m!831025))

(declare-fun m!831077 () Bool)

(assert (=> bm!39593 m!831077))

(declare-fun m!831079 () Bool)

(assert (=> b!892770 m!831079))

(declare-fun m!831081 () Bool)

(assert (=> bm!39590 m!831081))

(assert (=> b!892761 m!831027))

(assert (=> b!892761 m!831027))

(assert (=> b!892761 m!831069))

(assert (=> bm!39589 m!831043))

(declare-fun m!831083 () Bool)

(assert (=> bm!39594 m!831083))

(declare-fun m!831085 () Bool)

(assert (=> b!892757 m!831085))

(assert (=> b!892620 d!110171))

(declare-fun b!892794 () Bool)

(declare-fun e!498526 () Bool)

(declare-fun call!39605 () Bool)

(assert (=> b!892794 (= e!498526 call!39605)))

(declare-fun c!93955 () Bool)

(declare-fun lt!403408 () SeekEntryResult!8847)

(declare-fun bm!39601 () Bool)

(declare-fun call!39604 () Bool)

(declare-fun call!39606 () ListLongMap!10739)

(assert (=> bm!39601 (= call!39604 (contains!4364 call!39606 (ite c!93955 (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403408)) key!785)))))

(declare-fun b!892795 () Bool)

(assert (=> b!892795 (= c!93955 ((_ is Found!8847) lt!403408))))

(assert (=> b!892795 (= lt!403408 (seekEntry!0 key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun e!498523 () Bool)

(declare-fun e!498527 () Bool)

(assert (=> b!892795 (= e!498523 e!498527)))

(declare-fun b!892796 () Bool)

(declare-fun e!498524 () Bool)

(assert (=> b!892796 (= e!498524 e!498523)))

(declare-fun c!93958 () Bool)

(assert (=> b!892796 (= c!93958 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39602 () Bool)

(assert (=> bm!39602 (= call!39606 (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun b!892797 () Bool)

(assert (=> b!892797 (= e!498524 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!892798 () Bool)

(assert (=> b!892798 (= e!498526 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!39603 () Bool)

(assert (=> bm!39603 (= call!39605 (arrayContainsKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!892799 () Bool)

(assert (=> b!892799 false))

(declare-fun lt!403404 () Unit!30375)

(declare-fun lt!403409 () Unit!30375)

(assert (=> b!892799 (= lt!403404 lt!403409)))

(declare-fun lt!403399 () SeekEntryResult!8847)

(declare-fun lt!403411 () (_ BitVec 32))

(assert (=> b!892799 (and ((_ is Found!8847) lt!403399) (= (index!37759 lt!403399) lt!403411))))

(assert (=> b!892799 (= lt!403399 (seekEntry!0 key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52284 (_ BitVec 32)) Unit!30375)

(assert (=> b!892799 (= lt!403409 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403411 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun lt!403413 () Unit!30375)

(declare-fun lt!403407 () Unit!30375)

(assert (=> b!892799 (= lt!403413 lt!403407)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52284 (_ BitVec 32)) Bool)

(assert (=> b!892799 (arrayForallSeekEntryOrOpenFound!0 lt!403411 (_keys!9982 thiss!1181) (mask!25813 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30375)

(assert (=> b!892799 (= lt!403407 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9982 thiss!1181) (mask!25813 thiss!1181) #b00000000000000000000000000000000 lt!403411))))

(declare-fun arrayScanForKey!0 (array!52284 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!892799 (= lt!403411 (arrayScanForKey!0 (_keys!9982 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!403410 () Unit!30375)

(declare-fun lt!403405 () Unit!30375)

(assert (=> b!892799 (= lt!403410 lt!403405)))

(assert (=> b!892799 e!498526))

(declare-fun c!93959 () Bool)

(assert (=> b!892799 (= c!93959 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!162 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 64) Int) Unit!30375)

(assert (=> b!892799 (= lt!403405 (lemmaKeyInListMapIsInArray!162 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785 (defaultEntry!5303 thiss!1181)))))

(declare-fun e!498525 () Unit!30375)

(declare-fun Unit!30380 () Unit!30375)

(assert (=> b!892799 (= e!498525 Unit!30380)))

(declare-fun b!892800 () Bool)

(assert (=> b!892800 (= e!498527 false)))

(declare-fun c!93956 () Bool)

(assert (=> b!892800 (= c!93956 call!39604)))

(declare-fun lt!403403 () Unit!30375)

(assert (=> b!892800 (= lt!403403 e!498525)))

(declare-fun d!110173 () Bool)

(declare-fun lt!403406 () Bool)

(assert (=> d!110173 (= lt!403406 (contains!4364 (map!12202 thiss!1181) key!785))))

(assert (=> d!110173 (= lt!403406 e!498524)))

(declare-fun c!93957 () Bool)

(assert (=> d!110173 (= c!93957 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110173 (valid!1618 thiss!1181)))

(assert (=> d!110173 (= (contains!4363 thiss!1181 key!785) lt!403406)))

(declare-fun b!892801 () Bool)

(assert (=> b!892801 (= e!498527 true)))

(declare-fun lt!403400 () Unit!30375)

(assert (=> b!892801 (= lt!403400 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9982 thiss!1181) key!785 (index!37759 lt!403408)))))

(assert (=> b!892801 call!39605))

(declare-fun lt!403402 () Unit!30375)

(assert (=> b!892801 (= lt!403402 lt!403400)))

(declare-fun lt!403401 () Unit!30375)

(assert (=> b!892801 (= lt!403401 (lemmaValidKeyInArrayIsInListMap!228 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) (index!37759 lt!403408) (defaultEntry!5303 thiss!1181)))))

(assert (=> b!892801 call!39604))

(declare-fun lt!403412 () Unit!30375)

(assert (=> b!892801 (= lt!403412 lt!403401)))

(declare-fun b!892802 () Bool)

(assert (=> b!892802 (= e!498523 (not (= (bvand (extraKeys!4997 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!892803 () Bool)

(declare-fun Unit!30381 () Unit!30375)

(assert (=> b!892803 (= e!498525 Unit!30381)))

(assert (= (and d!110173 c!93957) b!892797))

(assert (= (and d!110173 (not c!93957)) b!892796))

(assert (= (and b!892796 c!93958) b!892802))

(assert (= (and b!892796 (not c!93958)) b!892795))

(assert (= (and b!892795 c!93955) b!892801))

(assert (= (and b!892795 (not c!93955)) b!892800))

(assert (= (and b!892800 c!93956) b!892799))

(assert (= (and b!892800 (not c!93956)) b!892803))

(assert (= (and b!892799 c!93959) b!892794))

(assert (= (and b!892799 (not c!93959)) b!892798))

(assert (= (or b!892801 b!892794) bm!39603))

(assert (= (or b!892801 b!892800) bm!39602))

(assert (= (or b!892801 b!892800) bm!39601))

(declare-fun m!831087 () Bool)

(assert (=> b!892799 m!831087))

(declare-fun m!831089 () Bool)

(assert (=> b!892799 m!831089))

(declare-fun m!831091 () Bool)

(assert (=> b!892799 m!831091))

(declare-fun m!831093 () Bool)

(assert (=> b!892799 m!831093))

(assert (=> b!892799 m!830945))

(declare-fun m!831095 () Bool)

(assert (=> b!892799 m!831095))

(declare-fun m!831097 () Bool)

(assert (=> b!892801 m!831097))

(declare-fun m!831099 () Bool)

(assert (=> b!892801 m!831099))

(assert (=> bm!39603 m!830951))

(assert (=> bm!39602 m!830957))

(declare-fun m!831101 () Bool)

(assert (=> bm!39601 m!831101))

(declare-fun m!831103 () Bool)

(assert (=> bm!39601 m!831103))

(assert (=> b!892795 m!830945))

(assert (=> d!110173 m!830933))

(assert (=> d!110173 m!830933))

(declare-fun m!831105 () Bool)

(assert (=> d!110173 m!831105))

(assert (=> d!110173 m!830947))

(assert (=> b!892620 d!110173))

(declare-fun d!110175 () Bool)

(declare-fun e!498530 () Bool)

(assert (=> d!110175 e!498530))

(declare-fun res!604848 () Bool)

(assert (=> d!110175 (=> (not res!604848) (not e!498530))))

(assert (=> d!110175 (= res!604848 (and (bvsge (index!37759 lt!403274) #b00000000000000000000000000000000) (bvslt (index!37759 lt!403274) (size!25589 (_keys!9982 thiss!1181)))))))

(declare-fun lt!403416 () Unit!30375)

(declare-fun choose!1469 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 32) Int) Unit!30375)

(assert (=> d!110175 (= lt!403416 (choose!1469 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)))))

(assert (=> d!110175 (validMask!0 (mask!25813 thiss!1181))))

(assert (=> d!110175 (= (lemmaValidKeyInArrayIsInListMap!228 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) (index!37759 lt!403274) (defaultEntry!5303 thiss!1181)) lt!403416)))

(declare-fun b!892806 () Bool)

(assert (=> b!892806 (= e!498530 (contains!4364 (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)) (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274))))))

(assert (= (and d!110175 res!604848) b!892806))

(declare-fun m!831107 () Bool)

(assert (=> d!110175 m!831107))

(assert (=> d!110175 m!831025))

(assert (=> b!892806 m!830957))

(assert (=> b!892806 m!830949))

(assert (=> b!892806 m!830957))

(assert (=> b!892806 m!830949))

(declare-fun m!831109 () Bool)

(assert (=> b!892806 m!831109))

(assert (=> b!892620 d!110175))

(declare-fun d!110177 () Bool)

(declare-fun e!498535 () Bool)

(assert (=> d!110177 e!498535))

(declare-fun res!604851 () Bool)

(assert (=> d!110177 (=> res!604851 e!498535)))

(declare-fun lt!403426 () Bool)

(assert (=> d!110177 (= res!604851 (not lt!403426))))

(declare-fun lt!403428 () Bool)

(assert (=> d!110177 (= lt!403426 lt!403428)))

(declare-fun lt!403425 () Unit!30375)

(declare-fun e!498536 () Unit!30375)

(assert (=> d!110177 (= lt!403425 e!498536)))

(declare-fun c!93962 () Bool)

(assert (=> d!110177 (= c!93962 lt!403428)))

(declare-fun containsKey!422 (List!17870 (_ BitVec 64)) Bool)

(assert (=> d!110177 (= lt!403428 (containsKey!422 (toList!5385 lt!403276) (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274))))))

(assert (=> d!110177 (= (contains!4364 lt!403276 (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274))) lt!403426)))

(declare-fun b!892813 () Bool)

(declare-fun lt!403427 () Unit!30375)

(assert (=> b!892813 (= e!498536 lt!403427)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!317 (List!17870 (_ BitVec 64)) Unit!30375)

(assert (=> b!892813 (= lt!403427 (lemmaContainsKeyImpliesGetValueByKeyDefined!317 (toList!5385 lt!403276) (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274))))))

(assert (=> b!892813 (isDefined!324 (getValueByKey!443 (toList!5385 lt!403276) (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274))))))

(declare-fun b!892814 () Bool)

(declare-fun Unit!30382 () Unit!30375)

(assert (=> b!892814 (= e!498536 Unit!30382)))

(declare-fun b!892815 () Bool)

(assert (=> b!892815 (= e!498535 (isDefined!324 (getValueByKey!443 (toList!5385 lt!403276) (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403274)))))))

(assert (= (and d!110177 c!93962) b!892813))

(assert (= (and d!110177 (not c!93962)) b!892814))

(assert (= (and d!110177 (not res!604851)) b!892815))

(assert (=> d!110177 m!830949))

(declare-fun m!831111 () Bool)

(assert (=> d!110177 m!831111))

(assert (=> b!892813 m!830949))

(declare-fun m!831113 () Bool)

(assert (=> b!892813 m!831113))

(assert (=> b!892813 m!830949))

(declare-fun m!831115 () Bool)

(assert (=> b!892813 m!831115))

(assert (=> b!892813 m!831115))

(declare-fun m!831117 () Bool)

(assert (=> b!892813 m!831117))

(assert (=> b!892815 m!830949))

(assert (=> b!892815 m!831115))

(assert (=> b!892815 m!831115))

(assert (=> b!892815 m!831117))

(assert (=> b!892620 d!110177))

(declare-fun d!110179 () Bool)

(assert (=> d!110179 (= (inRange!0 (index!37759 lt!403274) (mask!25813 thiss!1181)) (and (bvsge (index!37759 lt!403274) #b00000000000000000000000000000000) (bvslt (index!37759 lt!403274) (bvadd (mask!25813 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!892618 d!110179))

(declare-fun d!110181 () Bool)

(declare-fun res!604858 () Bool)

(declare-fun e!498539 () Bool)

(assert (=> d!110181 (=> (not res!604858) (not e!498539))))

(declare-fun simpleValid!294 (LongMapFixedSize!4212) Bool)

(assert (=> d!110181 (= res!604858 (simpleValid!294 thiss!1181))))

(assert (=> d!110181 (= (valid!1618 thiss!1181) e!498539)))

(declare-fun b!892822 () Bool)

(declare-fun res!604859 () Bool)

(assert (=> b!892822 (=> (not res!604859) (not e!498539))))

(declare-fun arrayCountValidKeys!0 (array!52284 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!892822 (= res!604859 (= (arrayCountValidKeys!0 (_keys!9982 thiss!1181) #b00000000000000000000000000000000 (size!25589 (_keys!9982 thiss!1181))) (_size!2161 thiss!1181)))))

(declare-fun b!892823 () Bool)

(declare-fun res!604860 () Bool)

(assert (=> b!892823 (=> (not res!604860) (not e!498539))))

(assert (=> b!892823 (= res!604860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun b!892824 () Bool)

(declare-datatypes ((List!17872 0))(
  ( (Nil!17869) (Cons!17868 (h!18999 (_ BitVec 64)) (t!25197 List!17872)) )
))
(declare-fun arrayNoDuplicates!0 (array!52284 (_ BitVec 32) List!17872) Bool)

(assert (=> b!892824 (= e!498539 (arrayNoDuplicates!0 (_keys!9982 thiss!1181) #b00000000000000000000000000000000 Nil!17869))))

(assert (= (and d!110181 res!604858) b!892822))

(assert (= (and b!892822 res!604859) b!892823))

(assert (= (and b!892823 res!604860) b!892824))

(declare-fun m!831119 () Bool)

(assert (=> d!110181 m!831119))

(declare-fun m!831121 () Bool)

(assert (=> b!892822 m!831121))

(declare-fun m!831123 () Bool)

(assert (=> b!892823 m!831123))

(declare-fun m!831125 () Bool)

(assert (=> b!892824 m!831125))

(assert (=> start!75888 d!110181))

(declare-fun d!110183 () Bool)

(declare-fun e!498542 () Bool)

(assert (=> d!110183 e!498542))

(declare-fun res!604863 () Bool)

(assert (=> d!110183 (=> res!604863 e!498542)))

(declare-fun lt!403434 () SeekEntryResult!8847)

(assert (=> d!110183 (= res!604863 (not ((_ is Found!8847) lt!403434)))))

(assert (=> d!110183 (= lt!403434 (seekEntry!0 key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun lt!403433 () Unit!30375)

(declare-fun choose!1470 (array!52284 array!52286 (_ BitVec 32) (_ BitVec 32) V!29177 V!29177 (_ BitVec 64)) Unit!30375)

(assert (=> d!110183 (= lt!403433 (choose!1470 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785))))

(assert (=> d!110183 (validMask!0 (mask!25813 thiss!1181))))

(assert (=> d!110183 (= (lemmaSeekEntryGivesInRangeIndex!61 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) key!785) lt!403433)))

(declare-fun b!892827 () Bool)

(assert (=> b!892827 (= e!498542 (inRange!0 (index!37759 lt!403434) (mask!25813 thiss!1181)))))

(assert (= (and d!110183 (not res!604863)) b!892827))

(assert (=> d!110183 m!830945))

(declare-fun m!831127 () Bool)

(assert (=> d!110183 m!831127))

(assert (=> d!110183 m!831025))

(declare-fun m!831129 () Bool)

(assert (=> b!892827 m!831129))

(assert (=> b!892627 d!110183))

(declare-fun b!892840 () Bool)

(declare-fun e!498551 () SeekEntryResult!8847)

(declare-fun lt!403444 () SeekEntryResult!8847)

(assert (=> b!892840 (= e!498551 (MissingZero!8847 (index!37760 lt!403444)))))

(declare-fun b!892841 () Bool)

(declare-fun c!93969 () Bool)

(declare-fun lt!403446 () (_ BitVec 64))

(assert (=> b!892841 (= c!93969 (= lt!403446 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!498550 () SeekEntryResult!8847)

(assert (=> b!892841 (= e!498550 e!498551)))

(declare-fun b!892842 () Bool)

(declare-fun e!498549 () SeekEntryResult!8847)

(assert (=> b!892842 (= e!498549 Undefined!8847)))

(declare-fun b!892843 () Bool)

(assert (=> b!892843 (= e!498549 e!498550)))

(assert (=> b!892843 (= lt!403446 (select (arr!25144 (_keys!9982 thiss!1181)) (index!37760 lt!403444)))))

(declare-fun c!93971 () Bool)

(assert (=> b!892843 (= c!93971 (= lt!403446 key!785))))

(declare-fun b!892844 () Bool)

(assert (=> b!892844 (= e!498550 (Found!8847 (index!37760 lt!403444)))))

(declare-fun b!892845 () Bool)

(declare-fun lt!403443 () SeekEntryResult!8847)

(assert (=> b!892845 (= e!498551 (ite ((_ is MissingVacant!8847) lt!403443) (MissingZero!8847 (index!37761 lt!403443)) lt!403443))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52284 (_ BitVec 32)) SeekEntryResult!8847)

(assert (=> b!892845 (= lt!403443 (seekKeyOrZeroReturnVacant!0 (x!75872 lt!403444) (index!37760 lt!403444) (index!37760 lt!403444) key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(declare-fun d!110185 () Bool)

(declare-fun lt!403445 () SeekEntryResult!8847)

(assert (=> d!110185 (and (or ((_ is MissingVacant!8847) lt!403445) (not ((_ is Found!8847) lt!403445)) (and (bvsge (index!37759 lt!403445) #b00000000000000000000000000000000) (bvslt (index!37759 lt!403445) (size!25589 (_keys!9982 thiss!1181))))) (not ((_ is MissingVacant!8847) lt!403445)) (or (not ((_ is Found!8847) lt!403445)) (= (select (arr!25144 (_keys!9982 thiss!1181)) (index!37759 lt!403445)) key!785)))))

(assert (=> d!110185 (= lt!403445 e!498549)))

(declare-fun c!93970 () Bool)

(assert (=> d!110185 (= c!93970 (and ((_ is Intermediate!8847) lt!403444) (undefined!9659 lt!403444)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52284 (_ BitVec 32)) SeekEntryResult!8847)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110185 (= lt!403444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25813 thiss!1181)) key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)))))

(assert (=> d!110185 (validMask!0 (mask!25813 thiss!1181))))

(assert (=> d!110185 (= (seekEntry!0 key!785 (_keys!9982 thiss!1181) (mask!25813 thiss!1181)) lt!403445)))

(assert (= (and d!110185 c!93970) b!892842))

(assert (= (and d!110185 (not c!93970)) b!892843))

(assert (= (and b!892843 c!93971) b!892844))

(assert (= (and b!892843 (not c!93971)) b!892841))

(assert (= (and b!892841 c!93969) b!892840))

(assert (= (and b!892841 (not c!93969)) b!892845))

(declare-fun m!831131 () Bool)

(assert (=> b!892843 m!831131))

(declare-fun m!831133 () Bool)

(assert (=> b!892845 m!831133))

(declare-fun m!831135 () Bool)

(assert (=> d!110185 m!831135))

(declare-fun m!831137 () Bool)

(assert (=> d!110185 m!831137))

(assert (=> d!110185 m!831137))

(declare-fun m!831139 () Bool)

(assert (=> d!110185 m!831139))

(assert (=> d!110185 m!831025))

(assert (=> b!892627 d!110185))

(declare-fun d!110187 () Bool)

(assert (=> d!110187 (= (array_inv!19728 (_keys!9982 thiss!1181)) (bvsge (size!25589 (_keys!9982 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!892614 d!110187))

(declare-fun d!110189 () Bool)

(assert (=> d!110189 (= (array_inv!19729 (_values!5288 thiss!1181)) (bvsge (size!25590 (_values!5288 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!892614 d!110189))

(declare-fun d!110191 () Bool)

(declare-fun isEmpty!683 (Option!449) Bool)

(assert (=> d!110191 (= (isDefined!324 (getValueByKey!443 (toList!5385 (map!12202 thiss!1181)) key!785)) (not (isEmpty!683 (getValueByKey!443 (toList!5385 (map!12202 thiss!1181)) key!785))))))

(declare-fun bs!25049 () Bool)

(assert (= bs!25049 d!110191))

(assert (=> bs!25049 m!830935))

(declare-fun m!831141 () Bool)

(assert (=> bs!25049 m!831141))

(assert (=> b!892623 d!110191))

(declare-fun d!110193 () Bool)

(declare-fun c!93976 () Bool)

(assert (=> d!110193 (= c!93976 (and ((_ is Cons!17866) (toList!5385 (map!12202 thiss!1181))) (= (_1!6024 (h!18997 (toList!5385 (map!12202 thiss!1181)))) key!785)))))

(declare-fun e!498556 () Option!449)

(assert (=> d!110193 (= (getValueByKey!443 (toList!5385 (map!12202 thiss!1181)) key!785) e!498556)))

(declare-fun b!892854 () Bool)

(assert (=> b!892854 (= e!498556 (Some!448 (_2!6024 (h!18997 (toList!5385 (map!12202 thiss!1181))))))))

(declare-fun b!892855 () Bool)

(declare-fun e!498557 () Option!449)

(assert (=> b!892855 (= e!498556 e!498557)))

(declare-fun c!93977 () Bool)

(assert (=> b!892855 (= c!93977 (and ((_ is Cons!17866) (toList!5385 (map!12202 thiss!1181))) (not (= (_1!6024 (h!18997 (toList!5385 (map!12202 thiss!1181)))) key!785))))))

(declare-fun b!892856 () Bool)

(assert (=> b!892856 (= e!498557 (getValueByKey!443 (t!25193 (toList!5385 (map!12202 thiss!1181))) key!785))))

(declare-fun b!892857 () Bool)

(assert (=> b!892857 (= e!498557 None!447)))

(assert (= (and d!110193 c!93976) b!892854))

(assert (= (and d!110193 (not c!93976)) b!892855))

(assert (= (and b!892855 c!93977) b!892856))

(assert (= (and b!892855 (not c!93977)) b!892857))

(declare-fun m!831143 () Bool)

(assert (=> b!892856 m!831143))

(assert (=> b!892623 d!110193))

(declare-fun d!110195 () Bool)

(assert (=> d!110195 (= (map!12202 thiss!1181) (getCurrentListMap!2635 (_keys!9982 thiss!1181) (_values!5288 thiss!1181) (mask!25813 thiss!1181) (extraKeys!4997 thiss!1181) (zeroValue!5101 thiss!1181) (minValue!5101 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5303 thiss!1181)))))

(declare-fun bs!25050 () Bool)

(assert (= bs!25050 d!110195))

(assert (=> bs!25050 m!830957))

(assert (=> b!892623 d!110195))

(declare-fun b!892864 () Bool)

(declare-fun e!498563 () Bool)

(assert (=> b!892864 (= e!498563 tp_is_empty!18159)))

(declare-fun mapNonEmpty!28799 () Bool)

(declare-fun mapRes!28799 () Bool)

(declare-fun tp!55472 () Bool)

(assert (=> mapNonEmpty!28799 (= mapRes!28799 (and tp!55472 e!498563))))

(declare-fun mapValue!28799 () ValueCell!8598)

(declare-fun mapRest!28799 () (Array (_ BitVec 32) ValueCell!8598))

(declare-fun mapKey!28799 () (_ BitVec 32))

(assert (=> mapNonEmpty!28799 (= mapRest!28793 (store mapRest!28799 mapKey!28799 mapValue!28799))))

(declare-fun mapIsEmpty!28799 () Bool)

(assert (=> mapIsEmpty!28799 mapRes!28799))

(declare-fun condMapEmpty!28799 () Bool)

(declare-fun mapDefault!28799 () ValueCell!8598)

(assert (=> mapNonEmpty!28793 (= condMapEmpty!28799 (= mapRest!28793 ((as const (Array (_ BitVec 32) ValueCell!8598)) mapDefault!28799)))))

(declare-fun e!498562 () Bool)

(assert (=> mapNonEmpty!28793 (= tp!55462 (and e!498562 mapRes!28799))))

(declare-fun b!892865 () Bool)

(assert (=> b!892865 (= e!498562 tp_is_empty!18159)))

(assert (= (and mapNonEmpty!28793 condMapEmpty!28799) mapIsEmpty!28799))

(assert (= (and mapNonEmpty!28793 (not condMapEmpty!28799)) mapNonEmpty!28799))

(assert (= (and mapNonEmpty!28799 ((_ is ValueCellFull!8598) mapValue!28799)) b!892864))

(assert (= (and mapNonEmpty!28793 ((_ is ValueCellFull!8598) mapDefault!28799)) b!892865))

(declare-fun m!831145 () Bool)

(assert (=> mapNonEmpty!28799 m!831145))

(declare-fun b_lambda!12937 () Bool)

(assert (= b_lambda!12935 (or (and b!892614 b_free!15831) b_lambda!12937)))

(declare-fun b_lambda!12939 () Bool)

(assert (= b_lambda!12933 (or (and b!892614 b_free!15831) b_lambda!12939)))

(check-sat (not d!110177) tp_is_empty!18159 (not b!892757) (not b!892682) (not b!892827) (not b!892770) (not bm!39602) (not d!110181) (not bm!39572) (not b!892813) (not b!892823) b_and!26113 (not bm!39601) (not b!892795) (not b_lambda!12939) (not b!892701) (not b!892822) (not b!892765) (not d!110161) (not b!892753) (not d!110195) (not d!110185) (not d!110191) (not b_next!15831) (not b!892704) (not b_lambda!12931) (not b!892806) (not bm!39570) (not b!892856) (not bm!39603) (not bm!39593) (not b!892824) (not bm!39589) (not b!892815) (not bm!39594) (not mapNonEmpty!28799) (not b!892763) (not b!892773) (not d!110171) (not d!110173) (not b!892761) (not d!110165) (not b_lambda!12937) (not d!110175) (not d!110169) (not b!892767) (not bm!39590) (not d!110183) (not b!892845) (not b!892710) (not b!892799) (not b!892683) (not b!892801))
(check-sat b_and!26113 (not b_next!15831))
