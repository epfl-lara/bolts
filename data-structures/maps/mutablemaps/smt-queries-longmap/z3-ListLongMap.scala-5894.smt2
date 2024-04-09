; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76152 () Bool)

(assert start!76152)

(declare-fun b!894245 () Bool)

(declare-fun b_free!15867 () Bool)

(declare-fun b_next!15867 () Bool)

(assert (=> b!894245 (= b_free!15867 (not b_next!15867))))

(declare-fun tp!55587 () Bool)

(declare-fun b_and!26173 () Bool)

(assert (=> b!894245 (= tp!55587 b_and!26173)))

(declare-fun b!894239 () Bool)

(declare-fun e!499504 () Bool)

(declare-datatypes ((array!52364 0))(
  ( (array!52365 (arr!25180 (Array (_ BitVec 32) (_ BitVec 64))) (size!25627 (_ BitVec 32))) )
))
(declare-datatypes ((V!29225 0))(
  ( (V!29226 (val!9148 Int)) )
))
(declare-datatypes ((ValueCell!8616 0))(
  ( (ValueCellFull!8616 (v!11633 V!29225)) (EmptyCell!8616) )
))
(declare-datatypes ((array!52366 0))(
  ( (array!52367 (arr!25181 (Array (_ BitVec 32) ValueCell!8616)) (size!25628 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4248 0))(
  ( (LongMapFixedSize!4249 (defaultEntry!5336 Int) (mask!25886 (_ BitVec 32)) (extraKeys!5032 (_ BitVec 32)) (zeroValue!5136 V!29225) (minValue!5136 V!29225) (_size!2179 (_ BitVec 32)) (_keys!10029 array!52364) (_values!5323 array!52366) (_vacant!2179 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4248)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun dynLambda!1302 (Int (_ BitVec 64)) V!29225)

(declare-datatypes ((Option!459 0))(
  ( (Some!458 (v!11634 V!29225)) (None!457) )
))
(declare-fun get!13274 (Option!459) V!29225)

(declare-datatypes ((tuple2!12048 0))(
  ( (tuple2!12049 (_1!6034 (_ BitVec 64)) (_2!6034 V!29225)) )
))
(declare-datatypes ((List!17884 0))(
  ( (Nil!17881) (Cons!17880 (h!19013 tuple2!12048) (t!25229 List!17884)) )
))
(declare-fun getValueByKey!453 (List!17884 (_ BitVec 64)) Option!459)

(declare-datatypes ((ListLongMap!10759 0))(
  ( (ListLongMap!10760 (toList!5395 List!17884)) )
))
(declare-fun map!12224 (LongMapFixedSize!4248) ListLongMap!10759)

(assert (=> b!894239 (= e!499504 (not (= (dynLambda!1302 (defaultEntry!5336 thiss!1181) key!785) (get!13274 (getValueByKey!453 (toList!5395 (map!12224 thiss!1181)) key!785)))))))

(declare-fun b!894240 () Bool)

(declare-fun e!499506 () Bool)

(declare-fun tp_is_empty!18195 () Bool)

(assert (=> b!894240 (= e!499506 tp_is_empty!18195)))

(declare-fun mapNonEmpty!28863 () Bool)

(declare-fun mapRes!28863 () Bool)

(declare-fun tp!55586 () Bool)

(declare-fun e!499505 () Bool)

(assert (=> mapNonEmpty!28863 (= mapRes!28863 (and tp!55586 e!499505))))

(declare-fun mapRest!28863 () (Array (_ BitVec 32) ValueCell!8616))

(declare-fun mapKey!28863 () (_ BitVec 32))

(declare-fun mapValue!28863 () ValueCell!8616)

(assert (=> mapNonEmpty!28863 (= (arr!25181 (_values!5323 thiss!1181)) (store mapRest!28863 mapKey!28863 mapValue!28863))))

(declare-fun b!894241 () Bool)

(declare-fun e!499508 () Bool)

(assert (=> b!894241 (= e!499508 (and e!499506 mapRes!28863))))

(declare-fun condMapEmpty!28863 () Bool)

(declare-fun mapDefault!28863 () ValueCell!8616)

(assert (=> b!894241 (= condMapEmpty!28863 (= (arr!25181 (_values!5323 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8616)) mapDefault!28863)))))

(declare-fun res!605349 () Bool)

(assert (=> start!76152 (=> (not res!605349) (not e!499504))))

(declare-fun valid!1632 (LongMapFixedSize!4248) Bool)

(assert (=> start!76152 (= res!605349 (valid!1632 thiss!1181))))

(assert (=> start!76152 e!499504))

(declare-fun e!499503 () Bool)

(assert (=> start!76152 e!499503))

(assert (=> start!76152 true))

(declare-fun b!894242 () Bool)

(declare-fun res!605350 () Bool)

(assert (=> b!894242 (=> (not res!605350) (not e!499504))))

(assert (=> b!894242 (= res!605350 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (or (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!894243 () Bool)

(declare-fun res!605351 () Bool)

(assert (=> b!894243 (=> (not res!605351) (not e!499504))))

(declare-fun contains!4379 (LongMapFixedSize!4248 (_ BitVec 64)) Bool)

(assert (=> b!894243 (= res!605351 (contains!4379 thiss!1181 key!785))))

(declare-fun b!894244 () Bool)

(assert (=> b!894244 (= e!499505 tp_is_empty!18195)))

(declare-fun mapIsEmpty!28863 () Bool)

(assert (=> mapIsEmpty!28863 mapRes!28863))

(declare-fun array_inv!19752 (array!52364) Bool)

(declare-fun array_inv!19753 (array!52366) Bool)

(assert (=> b!894245 (= e!499503 (and tp!55587 tp_is_empty!18195 (array_inv!19752 (_keys!10029 thiss!1181)) (array_inv!19753 (_values!5323 thiss!1181)) e!499508))))

(assert (= (and start!76152 res!605349) b!894242))

(assert (= (and b!894242 res!605350) b!894243))

(assert (= (and b!894243 res!605351) b!894239))

(assert (= (and b!894241 condMapEmpty!28863) mapIsEmpty!28863))

(assert (= (and b!894241 (not condMapEmpty!28863)) mapNonEmpty!28863))

(get-info :version)

(assert (= (and mapNonEmpty!28863 ((_ is ValueCellFull!8616) mapValue!28863)) b!894244))

(assert (= (and b!894241 ((_ is ValueCellFull!8616) mapDefault!28863)) b!894240))

(assert (= b!894245 b!894241))

(assert (= start!76152 b!894245))

(declare-fun b_lambda!12983 () Bool)

(assert (=> (not b_lambda!12983) (not b!894239)))

(declare-fun t!25228 () Bool)

(declare-fun tb!5195 () Bool)

(assert (=> (and b!894245 (= (defaultEntry!5336 thiss!1181) (defaultEntry!5336 thiss!1181)) t!25228) tb!5195))

(declare-fun result!10097 () Bool)

(assert (=> tb!5195 (= result!10097 tp_is_empty!18195)))

(assert (=> b!894239 t!25228))

(declare-fun b_and!26175 () Bool)

(assert (= b_and!26173 (and (=> t!25228 result!10097) b_and!26175)))

(declare-fun m!832423 () Bool)

(assert (=> b!894243 m!832423))

(declare-fun m!832425 () Bool)

(assert (=> b!894245 m!832425))

(declare-fun m!832427 () Bool)

(assert (=> b!894245 m!832427))

(declare-fun m!832429 () Bool)

(assert (=> b!894239 m!832429))

(declare-fun m!832431 () Bool)

(assert (=> b!894239 m!832431))

(declare-fun m!832433 () Bool)

(assert (=> b!894239 m!832433))

(assert (=> b!894239 m!832433))

(declare-fun m!832435 () Bool)

(assert (=> b!894239 m!832435))

(declare-fun m!832437 () Bool)

(assert (=> mapNonEmpty!28863 m!832437))

(declare-fun m!832439 () Bool)

(assert (=> start!76152 m!832439))

(check-sat (not b_lambda!12983) (not mapNonEmpty!28863) (not b!894245) tp_is_empty!18195 b_and!26175 (not start!76152) (not b_next!15867) (not b!894239) (not b!894243))
(check-sat b_and!26175 (not b_next!15867))
(get-model)

(declare-fun b_lambda!12987 () Bool)

(assert (= b_lambda!12983 (or (and b!894245 b_free!15867) b_lambda!12987)))

(check-sat (not mapNonEmpty!28863) (not b!894245) tp_is_empty!18195 b_and!26175 (not start!76152) (not b_next!15867) (not b!894239) (not b!894243) (not b_lambda!12987))
(check-sat b_and!26175 (not b_next!15867))
(get-model)

(declare-fun b!894291 () Bool)

(declare-fun e!499539 () Bool)

(assert (=> b!894291 (= e!499539 true)))

(declare-datatypes ((SeekEntryResult!8859 0))(
  ( (MissingZero!8859 (index!37806 (_ BitVec 32))) (Found!8859 (index!37807 (_ BitVec 32))) (Intermediate!8859 (undefined!9671 Bool) (index!37808 (_ BitVec 32)) (x!76024 (_ BitVec 32))) (Undefined!8859) (MissingVacant!8859 (index!37809 (_ BitVec 32))) )
))
(declare-fun lt!404229 () SeekEntryResult!8859)

(declare-datatypes ((Unit!30421 0))(
  ( (Unit!30422) )
))
(declare-fun lt!404228 () Unit!30421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52364 (_ BitVec 64) (_ BitVec 32)) Unit!30421)

(assert (=> b!894291 (= lt!404228 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10029 thiss!1181) key!785 (index!37807 lt!404229)))))

(declare-fun call!39718 () Bool)

(assert (=> b!894291 call!39718))

(declare-fun lt!404215 () Unit!30421)

(assert (=> b!894291 (= lt!404215 lt!404228)))

(declare-fun lt!404224 () Unit!30421)

(declare-fun lemmaValidKeyInArrayIsInListMap!232 (array!52364 array!52366 (_ BitVec 32) (_ BitVec 32) V!29225 V!29225 (_ BitVec 32) Int) Unit!30421)

(assert (=> b!894291 (= lt!404224 (lemmaValidKeyInArrayIsInListMap!232 (_keys!10029 thiss!1181) (_values!5323 thiss!1181) (mask!25886 thiss!1181) (extraKeys!5032 thiss!1181) (zeroValue!5136 thiss!1181) (minValue!5136 thiss!1181) (index!37807 lt!404229) (defaultEntry!5336 thiss!1181)))))

(declare-fun call!39717 () Bool)

(assert (=> b!894291 call!39717))

(declare-fun lt!404222 () Unit!30421)

(assert (=> b!894291 (= lt!404222 lt!404224)))

(declare-fun d!110561 () Bool)

(declare-fun lt!404226 () Bool)

(declare-fun contains!4381 (ListLongMap!10759 (_ BitVec 64)) Bool)

(assert (=> d!110561 (= lt!404226 (contains!4381 (map!12224 thiss!1181) key!785))))

(declare-fun e!499537 () Bool)

(assert (=> d!110561 (= lt!404226 e!499537)))

(declare-fun c!94309 () Bool)

(assert (=> d!110561 (= c!94309 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110561 (valid!1632 thiss!1181)))

(assert (=> d!110561 (= (contains!4379 thiss!1181 key!785) lt!404226)))

(declare-fun b!894292 () Bool)

(declare-fun e!499538 () Bool)

(assert (=> b!894292 (= e!499537 e!499538)))

(declare-fun c!94308 () Bool)

(assert (=> b!894292 (= c!94308 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!894293 () Bool)

(declare-fun e!499540 () Bool)

(assert (=> b!894293 (= e!499540 call!39718)))

(declare-fun bm!39713 () Bool)

(declare-fun call!39716 () ListLongMap!10759)

(declare-fun c!94311 () Bool)

(assert (=> bm!39713 (= call!39717 (contains!4381 call!39716 (ite c!94311 (select (arr!25180 (_keys!10029 thiss!1181)) (index!37807 lt!404229)) key!785)))))

(declare-fun b!894294 () Bool)

(assert (=> b!894294 (= e!499537 (not (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!894295 () Bool)

(assert (=> b!894295 (= e!499539 false)))

(declare-fun c!94310 () Bool)

(assert (=> b!894295 (= c!94310 call!39717)))

(declare-fun lt!404217 () Unit!30421)

(declare-fun e!499541 () Unit!30421)

(assert (=> b!894295 (= lt!404217 e!499541)))

(declare-fun bm!39714 () Bool)

(declare-fun arrayContainsKey!0 (array!52364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39714 (= call!39718 (arrayContainsKey!0 (_keys!10029 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!894296 () Bool)

(assert (=> b!894296 false))

(declare-fun lt!404218 () Unit!30421)

(declare-fun lt!404219 () Unit!30421)

(assert (=> b!894296 (= lt!404218 lt!404219)))

(declare-fun lt!404227 () SeekEntryResult!8859)

(declare-fun lt!404225 () (_ BitVec 32))

(assert (=> b!894296 (and ((_ is Found!8859) lt!404227) (= (index!37807 lt!404227) lt!404225))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52364 (_ BitVec 32)) SeekEntryResult!8859)

(assert (=> b!894296 (= lt!404227 (seekEntry!0 key!785 (_keys!10029 thiss!1181) (mask!25886 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52364 (_ BitVec 32)) Unit!30421)

(assert (=> b!894296 (= lt!404219 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!404225 (_keys!10029 thiss!1181) (mask!25886 thiss!1181)))))

(declare-fun lt!404220 () Unit!30421)

(declare-fun lt!404221 () Unit!30421)

(assert (=> b!894296 (= lt!404220 lt!404221)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52364 (_ BitVec 32)) Bool)

(assert (=> b!894296 (arrayForallSeekEntryOrOpenFound!0 lt!404225 (_keys!10029 thiss!1181) (mask!25886 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30421)

(assert (=> b!894296 (= lt!404221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10029 thiss!1181) (mask!25886 thiss!1181) #b00000000000000000000000000000000 lt!404225))))

(declare-fun arrayScanForKey!0 (array!52364 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894296 (= lt!404225 (arrayScanForKey!0 (_keys!10029 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!404216 () Unit!30421)

(declare-fun lt!404223 () Unit!30421)

(assert (=> b!894296 (= lt!404216 lt!404223)))

(assert (=> b!894296 e!499540))

(declare-fun c!94312 () Bool)

(assert (=> b!894296 (= c!94312 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!166 (array!52364 array!52366 (_ BitVec 32) (_ BitVec 32) V!29225 V!29225 (_ BitVec 64) Int) Unit!30421)

(assert (=> b!894296 (= lt!404223 (lemmaKeyInListMapIsInArray!166 (_keys!10029 thiss!1181) (_values!5323 thiss!1181) (mask!25886 thiss!1181) (extraKeys!5032 thiss!1181) (zeroValue!5136 thiss!1181) (minValue!5136 thiss!1181) key!785 (defaultEntry!5336 thiss!1181)))))

(declare-fun Unit!30423 () Unit!30421)

(assert (=> b!894296 (= e!499541 Unit!30423)))

(declare-fun b!894297 () Bool)

(assert (=> b!894297 (= e!499540 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!894298 () Bool)

(declare-fun Unit!30424 () Unit!30421)

(assert (=> b!894298 (= e!499541 Unit!30424)))

(declare-fun b!894299 () Bool)

(assert (=> b!894299 (= e!499538 (not (= (bvand (extraKeys!5032 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!894300 () Bool)

(assert (=> b!894300 (= c!94311 ((_ is Found!8859) lt!404229))))

(assert (=> b!894300 (= lt!404229 (seekEntry!0 key!785 (_keys!10029 thiss!1181) (mask!25886 thiss!1181)))))

(assert (=> b!894300 (= e!499538 e!499539)))

(declare-fun bm!39715 () Bool)

(declare-fun getCurrentListMap!2639 (array!52364 array!52366 (_ BitVec 32) (_ BitVec 32) V!29225 V!29225 (_ BitVec 32) Int) ListLongMap!10759)

(assert (=> bm!39715 (= call!39716 (getCurrentListMap!2639 (_keys!10029 thiss!1181) (_values!5323 thiss!1181) (mask!25886 thiss!1181) (extraKeys!5032 thiss!1181) (zeroValue!5136 thiss!1181) (minValue!5136 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5336 thiss!1181)))))

(assert (= (and d!110561 c!94309) b!894294))

(assert (= (and d!110561 (not c!94309)) b!894292))

(assert (= (and b!894292 c!94308) b!894299))

(assert (= (and b!894292 (not c!94308)) b!894300))

(assert (= (and b!894300 c!94311) b!894291))

(assert (= (and b!894300 (not c!94311)) b!894295))

(assert (= (and b!894295 c!94310) b!894296))

(assert (= (and b!894295 (not c!94310)) b!894298))

(assert (= (and b!894296 c!94312) b!894293))

(assert (= (and b!894296 (not c!94312)) b!894297))

(assert (= (or b!894291 b!894293) bm!39714))

(assert (= (or b!894291 b!894295) bm!39715))

(assert (= (or b!894291 b!894295) bm!39713))

(assert (=> d!110561 m!832431))

(assert (=> d!110561 m!832431))

(declare-fun m!832459 () Bool)

(assert (=> d!110561 m!832459))

(assert (=> d!110561 m!832439))

(declare-fun m!832461 () Bool)

(assert (=> bm!39713 m!832461))

(declare-fun m!832463 () Bool)

(assert (=> bm!39713 m!832463))

(declare-fun m!832465 () Bool)

(assert (=> b!894300 m!832465))

(declare-fun m!832467 () Bool)

(assert (=> bm!39714 m!832467))

(declare-fun m!832469 () Bool)

(assert (=> bm!39715 m!832469))

(declare-fun m!832471 () Bool)

(assert (=> b!894291 m!832471))

(declare-fun m!832473 () Bool)

(assert (=> b!894291 m!832473))

(assert (=> b!894296 m!832465))

(declare-fun m!832475 () Bool)

(assert (=> b!894296 m!832475))

(declare-fun m!832477 () Bool)

(assert (=> b!894296 m!832477))

(declare-fun m!832479 () Bool)

(assert (=> b!894296 m!832479))

(declare-fun m!832481 () Bool)

(assert (=> b!894296 m!832481))

(declare-fun m!832483 () Bool)

(assert (=> b!894296 m!832483))

(assert (=> b!894243 d!110561))

(declare-fun d!110563 () Bool)

(assert (=> d!110563 (= (get!13274 (getValueByKey!453 (toList!5395 (map!12224 thiss!1181)) key!785)) (v!11634 (getValueByKey!453 (toList!5395 (map!12224 thiss!1181)) key!785)))))

(assert (=> b!894239 d!110563))

(declare-fun b!894309 () Bool)

(declare-fun e!499546 () Option!459)

(assert (=> b!894309 (= e!499546 (Some!458 (_2!6034 (h!19013 (toList!5395 (map!12224 thiss!1181))))))))

(declare-fun b!894310 () Bool)

(declare-fun e!499547 () Option!459)

(assert (=> b!894310 (= e!499546 e!499547)))

(declare-fun c!94318 () Bool)

(assert (=> b!894310 (= c!94318 (and ((_ is Cons!17880) (toList!5395 (map!12224 thiss!1181))) (not (= (_1!6034 (h!19013 (toList!5395 (map!12224 thiss!1181)))) key!785))))))

(declare-fun b!894312 () Bool)

(assert (=> b!894312 (= e!499547 None!457)))

(declare-fun d!110565 () Bool)

(declare-fun c!94317 () Bool)

(assert (=> d!110565 (= c!94317 (and ((_ is Cons!17880) (toList!5395 (map!12224 thiss!1181))) (= (_1!6034 (h!19013 (toList!5395 (map!12224 thiss!1181)))) key!785)))))

(assert (=> d!110565 (= (getValueByKey!453 (toList!5395 (map!12224 thiss!1181)) key!785) e!499546)))

(declare-fun b!894311 () Bool)

(assert (=> b!894311 (= e!499547 (getValueByKey!453 (t!25229 (toList!5395 (map!12224 thiss!1181))) key!785))))

(assert (= (and d!110565 c!94317) b!894309))

(assert (= (and d!110565 (not c!94317)) b!894310))

(assert (= (and b!894310 c!94318) b!894311))

(assert (= (and b!894310 (not c!94318)) b!894312))

(declare-fun m!832485 () Bool)

(assert (=> b!894311 m!832485))

(assert (=> b!894239 d!110565))

(declare-fun d!110567 () Bool)

(assert (=> d!110567 (= (map!12224 thiss!1181) (getCurrentListMap!2639 (_keys!10029 thiss!1181) (_values!5323 thiss!1181) (mask!25886 thiss!1181) (extraKeys!5032 thiss!1181) (zeroValue!5136 thiss!1181) (minValue!5136 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5336 thiss!1181)))))

(declare-fun bs!25115 () Bool)

(assert (= bs!25115 d!110567))

(assert (=> bs!25115 m!832469))

(assert (=> b!894239 d!110567))

(declare-fun d!110569 () Bool)

(assert (=> d!110569 (= (array_inv!19752 (_keys!10029 thiss!1181)) (bvsge (size!25627 (_keys!10029 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894245 d!110569))

(declare-fun d!110571 () Bool)

(assert (=> d!110571 (= (array_inv!19753 (_values!5323 thiss!1181)) (bvsge (size!25628 (_values!5323 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894245 d!110571))

(declare-fun d!110573 () Bool)

(declare-fun res!605367 () Bool)

(declare-fun e!499550 () Bool)

(assert (=> d!110573 (=> (not res!605367) (not e!499550))))

(declare-fun simpleValid!298 (LongMapFixedSize!4248) Bool)

(assert (=> d!110573 (= res!605367 (simpleValid!298 thiss!1181))))

(assert (=> d!110573 (= (valid!1632 thiss!1181) e!499550)))

(declare-fun b!894319 () Bool)

(declare-fun res!605368 () Bool)

(assert (=> b!894319 (=> (not res!605368) (not e!499550))))

(declare-fun arrayCountValidKeys!0 (array!52364 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894319 (= res!605368 (= (arrayCountValidKeys!0 (_keys!10029 thiss!1181) #b00000000000000000000000000000000 (size!25627 (_keys!10029 thiss!1181))) (_size!2179 thiss!1181)))))

(declare-fun b!894320 () Bool)

(declare-fun res!605369 () Bool)

(assert (=> b!894320 (=> (not res!605369) (not e!499550))))

(assert (=> b!894320 (= res!605369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10029 thiss!1181) (mask!25886 thiss!1181)))))

(declare-fun b!894321 () Bool)

(declare-datatypes ((List!17886 0))(
  ( (Nil!17883) (Cons!17882 (h!19015 (_ BitVec 64)) (t!25233 List!17886)) )
))
(declare-fun arrayNoDuplicates!0 (array!52364 (_ BitVec 32) List!17886) Bool)

(assert (=> b!894321 (= e!499550 (arrayNoDuplicates!0 (_keys!10029 thiss!1181) #b00000000000000000000000000000000 Nil!17883))))

(assert (= (and d!110573 res!605367) b!894319))

(assert (= (and b!894319 res!605368) b!894320))

(assert (= (and b!894320 res!605369) b!894321))

(declare-fun m!832487 () Bool)

(assert (=> d!110573 m!832487))

(declare-fun m!832489 () Bool)

(assert (=> b!894319 m!832489))

(declare-fun m!832491 () Bool)

(assert (=> b!894320 m!832491))

(declare-fun m!832493 () Bool)

(assert (=> b!894321 m!832493))

(assert (=> start!76152 d!110573))

(declare-fun mapNonEmpty!28869 () Bool)

(declare-fun mapRes!28869 () Bool)

(declare-fun tp!55596 () Bool)

(declare-fun e!499556 () Bool)

(assert (=> mapNonEmpty!28869 (= mapRes!28869 (and tp!55596 e!499556))))

(declare-fun mapKey!28869 () (_ BitVec 32))

(declare-fun mapValue!28869 () ValueCell!8616)

(declare-fun mapRest!28869 () (Array (_ BitVec 32) ValueCell!8616))

(assert (=> mapNonEmpty!28869 (= mapRest!28863 (store mapRest!28869 mapKey!28869 mapValue!28869))))

(declare-fun condMapEmpty!28869 () Bool)

(declare-fun mapDefault!28869 () ValueCell!8616)

(assert (=> mapNonEmpty!28863 (= condMapEmpty!28869 (= mapRest!28863 ((as const (Array (_ BitVec 32) ValueCell!8616)) mapDefault!28869)))))

(declare-fun e!499555 () Bool)

(assert (=> mapNonEmpty!28863 (= tp!55586 (and e!499555 mapRes!28869))))

(declare-fun mapIsEmpty!28869 () Bool)

(assert (=> mapIsEmpty!28869 mapRes!28869))

(declare-fun b!894329 () Bool)

(assert (=> b!894329 (= e!499555 tp_is_empty!18195)))

(declare-fun b!894328 () Bool)

(assert (=> b!894328 (= e!499556 tp_is_empty!18195)))

(assert (= (and mapNonEmpty!28863 condMapEmpty!28869) mapIsEmpty!28869))

(assert (= (and mapNonEmpty!28863 (not condMapEmpty!28869)) mapNonEmpty!28869))

(assert (= (and mapNonEmpty!28869 ((_ is ValueCellFull!8616) mapValue!28869)) b!894328))

(assert (= (and mapNonEmpty!28863 ((_ is ValueCellFull!8616) mapDefault!28869)) b!894329))

(declare-fun m!832495 () Bool)

(assert (=> mapNonEmpty!28869 m!832495))

(check-sat (not b!894300) (not mapNonEmpty!28869) tp_is_empty!18195 (not b!894311) (not b_next!15867) (not bm!39713) (not b!894291) (not d!110567) (not d!110561) (not b_lambda!12987) b_and!26175 (not d!110573) (not b!894319) (not bm!39715) (not b!894320) (not bm!39714) (not b!894321) (not b!894296))
(check-sat b_and!26175 (not b_next!15867))
