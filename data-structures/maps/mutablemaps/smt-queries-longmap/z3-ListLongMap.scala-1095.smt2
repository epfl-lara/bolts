; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22494 () Bool)

(assert start!22494)

(declare-fun b!235041 () Bool)

(declare-fun b_free!6321 () Bool)

(declare-fun b_next!6321 () Bool)

(assert (=> b!235041 (= b_free!6321 (not b_next!6321))))

(declare-fun tp!22127 () Bool)

(declare-fun b_and!13265 () Bool)

(assert (=> b!235041 (= tp!22127 b_and!13265)))

(declare-fun b!235032 () Bool)

(declare-fun e!152661 () Bool)

(declare-fun tp_is_empty!6183 () Bool)

(assert (=> b!235032 (= e!152661 tp_is_empty!6183)))

(declare-fun b!235033 () Bool)

(declare-fun res!115273 () Bool)

(declare-fun e!152659 () Bool)

(assert (=> b!235033 (=> (not res!115273) (not e!152659))))

(declare-datatypes ((V!7891 0))(
  ( (V!7892 (val!3136 Int)) )
))
(declare-datatypes ((ValueCell!2748 0))(
  ( (ValueCellFull!2748 (v!5158 V!7891)) (EmptyCell!2748) )
))
(declare-datatypes ((array!11620 0))(
  ( (array!11621 (arr!5523 (Array (_ BitVec 32) ValueCell!2748)) (size!5860 (_ BitVec 32))) )
))
(declare-datatypes ((array!11622 0))(
  ( (array!11623 (arr!5524 (Array (_ BitVec 32) (_ BitVec 64))) (size!5861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3396 0))(
  ( (LongMapFixedSize!3397 (defaultEntry!4367 Int) (mask!10329 (_ BitVec 32)) (extraKeys!4104 (_ BitVec 32)) (zeroValue!4208 V!7891) (minValue!4208 V!7891) (_size!1747 (_ BitVec 32)) (_keys!6439 array!11622) (_values!4350 array!11620) (_vacant!1747 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3396)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4618 0))(
  ( (tuple2!4619 (_1!2319 (_ BitVec 64)) (_2!2319 V!7891)) )
))
(declare-datatypes ((List!3550 0))(
  ( (Nil!3547) (Cons!3546 (h!4198 tuple2!4618) (t!8529 List!3550)) )
))
(declare-datatypes ((ListLongMap!3545 0))(
  ( (ListLongMap!3546 (toList!1788 List!3550)) )
))
(declare-fun contains!1658 (ListLongMap!3545 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1311 (array!11622 array!11620 (_ BitVec 32) (_ BitVec 32) V!7891 V!7891 (_ BitVec 32) Int) ListLongMap!3545)

(assert (=> b!235033 (= res!115273 (contains!1658 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)) key!932))))

(declare-fun b!235034 () Bool)

(declare-fun res!115274 () Bool)

(assert (=> b!235034 (=> (not res!115274) (not e!152659))))

(assert (=> b!235034 (= res!115274 (and (= (size!5860 (_values!4350 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10329 thiss!1504))) (= (size!5861 (_keys!6439 thiss!1504)) (size!5860 (_values!4350 thiss!1504))) (bvsge (mask!10329 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4104 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4104 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10466 () Bool)

(declare-fun mapRes!10466 () Bool)

(assert (=> mapIsEmpty!10466 mapRes!10466))

(declare-fun res!115271 () Bool)

(declare-fun e!152658 () Bool)

(assert (=> start!22494 (=> (not res!115271) (not e!152658))))

(declare-fun valid!1332 (LongMapFixedSize!3396) Bool)

(assert (=> start!22494 (= res!115271 (valid!1332 thiss!1504))))

(assert (=> start!22494 e!152658))

(declare-fun e!152660 () Bool)

(assert (=> start!22494 e!152660))

(assert (=> start!22494 true))

(declare-fun b!235035 () Bool)

(assert (=> b!235035 (= e!152658 e!152659)))

(declare-fun res!115270 () Bool)

(assert (=> b!235035 (=> (not res!115270) (not e!152659))))

(declare-datatypes ((SeekEntryResult!994 0))(
  ( (MissingZero!994 (index!6146 (_ BitVec 32))) (Found!994 (index!6147 (_ BitVec 32))) (Intermediate!994 (undefined!1806 Bool) (index!6148 (_ BitVec 32)) (x!23762 (_ BitVec 32))) (Undefined!994) (MissingVacant!994 (index!6149 (_ BitVec 32))) )
))
(declare-fun lt!118949 () SeekEntryResult!994)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235035 (= res!115270 (or (= lt!118949 (MissingZero!994 index!297)) (= lt!118949 (MissingVacant!994 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11622 (_ BitVec 32)) SeekEntryResult!994)

(assert (=> b!235035 (= lt!118949 (seekEntryOrOpen!0 key!932 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)))))

(declare-fun b!235036 () Bool)

(declare-fun res!115275 () Bool)

(assert (=> b!235036 (=> (not res!115275) (not e!152658))))

(assert (=> b!235036 (= res!115275 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235037 () Bool)

(declare-fun e!152656 () Bool)

(declare-fun e!152657 () Bool)

(assert (=> b!235037 (= e!152656 (and e!152657 mapRes!10466))))

(declare-fun condMapEmpty!10466 () Bool)

(declare-fun mapDefault!10466 () ValueCell!2748)

(assert (=> b!235037 (= condMapEmpty!10466 (= (arr!5523 (_values!4350 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2748)) mapDefault!10466)))))

(declare-fun b!235038 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11622 (_ BitVec 32)) Bool)

(assert (=> b!235038 (= e!152659 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6439 thiss!1504) (mask!10329 thiss!1504))))))

(declare-fun mapNonEmpty!10466 () Bool)

(declare-fun tp!22126 () Bool)

(assert (=> mapNonEmpty!10466 (= mapRes!10466 (and tp!22126 e!152661))))

(declare-fun mapRest!10466 () (Array (_ BitVec 32) ValueCell!2748))

(declare-fun mapKey!10466 () (_ BitVec 32))

(declare-fun mapValue!10466 () ValueCell!2748)

(assert (=> mapNonEmpty!10466 (= (arr!5523 (_values!4350 thiss!1504)) (store mapRest!10466 mapKey!10466 mapValue!10466))))

(declare-fun b!235039 () Bool)

(declare-fun res!115272 () Bool)

(assert (=> b!235039 (=> (not res!115272) (not e!152659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235039 (= res!115272 (validMask!0 (mask!10329 thiss!1504)))))

(declare-fun b!235040 () Bool)

(assert (=> b!235040 (= e!152657 tp_is_empty!6183)))

(declare-fun array_inv!3631 (array!11622) Bool)

(declare-fun array_inv!3632 (array!11620) Bool)

(assert (=> b!235041 (= e!152660 (and tp!22127 tp_is_empty!6183 (array_inv!3631 (_keys!6439 thiss!1504)) (array_inv!3632 (_values!4350 thiss!1504)) e!152656))))

(assert (= (and start!22494 res!115271) b!235036))

(assert (= (and b!235036 res!115275) b!235035))

(assert (= (and b!235035 res!115270) b!235033))

(assert (= (and b!235033 res!115273) b!235039))

(assert (= (and b!235039 res!115272) b!235034))

(assert (= (and b!235034 res!115274) b!235038))

(assert (= (and b!235037 condMapEmpty!10466) mapIsEmpty!10466))

(assert (= (and b!235037 (not condMapEmpty!10466)) mapNonEmpty!10466))

(get-info :version)

(assert (= (and mapNonEmpty!10466 ((_ is ValueCellFull!2748) mapValue!10466)) b!235032))

(assert (= (and b!235037 ((_ is ValueCellFull!2748) mapDefault!10466)) b!235040))

(assert (= b!235041 b!235037))

(assert (= start!22494 b!235041))

(declare-fun m!256281 () Bool)

(assert (=> b!235033 m!256281))

(assert (=> b!235033 m!256281))

(declare-fun m!256283 () Bool)

(assert (=> b!235033 m!256283))

(declare-fun m!256285 () Bool)

(assert (=> b!235038 m!256285))

(declare-fun m!256287 () Bool)

(assert (=> b!235039 m!256287))

(declare-fun m!256289 () Bool)

(assert (=> mapNonEmpty!10466 m!256289))

(declare-fun m!256291 () Bool)

(assert (=> start!22494 m!256291))

(declare-fun m!256293 () Bool)

(assert (=> b!235035 m!256293))

(declare-fun m!256295 () Bool)

(assert (=> b!235041 m!256295))

(declare-fun m!256297 () Bool)

(assert (=> b!235041 m!256297))

(check-sat (not b!235038) (not start!22494) (not b!235033) (not b_next!6321) (not b!235039) (not b!235035) tp_is_empty!6183 b_and!13265 (not b!235041) (not mapNonEmpty!10466))
(check-sat b_and!13265 (not b_next!6321))
(get-model)

(declare-fun bm!21850 () Bool)

(declare-fun call!21853 () Bool)

(assert (=> bm!21850 (= call!21853 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6439 thiss!1504) (mask!10329 thiss!1504)))))

(declare-fun d!59171 () Bool)

(declare-fun res!115298 () Bool)

(declare-fun e!152691 () Bool)

(assert (=> d!59171 (=> res!115298 e!152691)))

(assert (=> d!59171 (= res!115298 (bvsge #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))

(assert (=> d!59171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)) e!152691)))

(declare-fun b!235080 () Bool)

(declare-fun e!152689 () Bool)

(assert (=> b!235080 (= e!152689 call!21853)))

(declare-fun b!235081 () Bool)

(declare-fun e!152690 () Bool)

(assert (=> b!235081 (= e!152690 call!21853)))

(declare-fun b!235082 () Bool)

(assert (=> b!235082 (= e!152689 e!152690)))

(declare-fun lt!118960 () (_ BitVec 64))

(assert (=> b!235082 (= lt!118960 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!7247 0))(
  ( (Unit!7248) )
))
(declare-fun lt!118959 () Unit!7247)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11622 (_ BitVec 64) (_ BitVec 32)) Unit!7247)

(assert (=> b!235082 (= lt!118959 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6439 thiss!1504) lt!118960 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!235082 (arrayContainsKey!0 (_keys!6439 thiss!1504) lt!118960 #b00000000000000000000000000000000)))

(declare-fun lt!118961 () Unit!7247)

(assert (=> b!235082 (= lt!118961 lt!118959)))

(declare-fun res!115299 () Bool)

(assert (=> b!235082 (= res!115299 (= (seekEntryOrOpen!0 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000) (_keys!6439 thiss!1504) (mask!10329 thiss!1504)) (Found!994 #b00000000000000000000000000000000)))))

(assert (=> b!235082 (=> (not res!115299) (not e!152690))))

(declare-fun b!235083 () Bool)

(assert (=> b!235083 (= e!152691 e!152689)))

(declare-fun c!39159 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!235083 (= c!39159 (validKeyInArray!0 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59171 (not res!115298)) b!235083))

(assert (= (and b!235083 c!39159) b!235082))

(assert (= (and b!235083 (not c!39159)) b!235080))

(assert (= (and b!235082 res!115299) b!235081))

(assert (= (or b!235081 b!235080) bm!21850))

(declare-fun m!256317 () Bool)

(assert (=> bm!21850 m!256317))

(declare-fun m!256319 () Bool)

(assert (=> b!235082 m!256319))

(declare-fun m!256321 () Bool)

(assert (=> b!235082 m!256321))

(declare-fun m!256323 () Bool)

(assert (=> b!235082 m!256323))

(assert (=> b!235082 m!256319))

(declare-fun m!256325 () Bool)

(assert (=> b!235082 m!256325))

(assert (=> b!235083 m!256319))

(assert (=> b!235083 m!256319))

(declare-fun m!256327 () Bool)

(assert (=> b!235083 m!256327))

(assert (=> b!235038 d!59171))

(declare-fun d!59173 () Bool)

(declare-fun e!152696 () Bool)

(assert (=> d!59173 e!152696))

(declare-fun res!115302 () Bool)

(assert (=> d!59173 (=> res!115302 e!152696)))

(declare-fun lt!118971 () Bool)

(assert (=> d!59173 (= res!115302 (not lt!118971))))

(declare-fun lt!118972 () Bool)

(assert (=> d!59173 (= lt!118971 lt!118972)))

(declare-fun lt!118973 () Unit!7247)

(declare-fun e!152697 () Unit!7247)

(assert (=> d!59173 (= lt!118973 e!152697)))

(declare-fun c!39162 () Bool)

(assert (=> d!59173 (= c!39162 lt!118972)))

(declare-fun containsKey!258 (List!3550 (_ BitVec 64)) Bool)

(assert (=> d!59173 (= lt!118972 (containsKey!258 (toList!1788 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504))) key!932))))

(assert (=> d!59173 (= (contains!1658 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)) key!932) lt!118971)))

(declare-fun b!235090 () Bool)

(declare-fun lt!118970 () Unit!7247)

(assert (=> b!235090 (= e!152697 lt!118970)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!207 (List!3550 (_ BitVec 64)) Unit!7247)

(assert (=> b!235090 (= lt!118970 (lemmaContainsKeyImpliesGetValueByKeyDefined!207 (toList!1788 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504))) key!932))))

(declare-datatypes ((Option!272 0))(
  ( (Some!271 (v!5160 V!7891)) (None!270) )
))
(declare-fun isDefined!208 (Option!272) Bool)

(declare-fun getValueByKey!266 (List!3550 (_ BitVec 64)) Option!272)

(assert (=> b!235090 (isDefined!208 (getValueByKey!266 (toList!1788 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504))) key!932))))

(declare-fun b!235091 () Bool)

(declare-fun Unit!7249 () Unit!7247)

(assert (=> b!235091 (= e!152697 Unit!7249)))

(declare-fun b!235092 () Bool)

(assert (=> b!235092 (= e!152696 (isDefined!208 (getValueByKey!266 (toList!1788 (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504))) key!932)))))

(assert (= (and d!59173 c!39162) b!235090))

(assert (= (and d!59173 (not c!39162)) b!235091))

(assert (= (and d!59173 (not res!115302)) b!235092))

(declare-fun m!256329 () Bool)

(assert (=> d!59173 m!256329))

(declare-fun m!256331 () Bool)

(assert (=> b!235090 m!256331))

(declare-fun m!256333 () Bool)

(assert (=> b!235090 m!256333))

(assert (=> b!235090 m!256333))

(declare-fun m!256335 () Bool)

(assert (=> b!235090 m!256335))

(assert (=> b!235092 m!256333))

(assert (=> b!235092 m!256333))

(assert (=> b!235092 m!256335))

(assert (=> b!235033 d!59173))

(declare-fun b!235135 () Bool)

(declare-fun e!152730 () Bool)

(declare-fun e!152728 () Bool)

(assert (=> b!235135 (= e!152730 e!152728)))

(declare-fun c!39179 () Bool)

(assert (=> b!235135 (= c!39179 (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!235136 () Bool)

(declare-fun e!152735 () ListLongMap!3545)

(declare-fun e!152725 () ListLongMap!3545)

(assert (=> b!235136 (= e!152735 e!152725)))

(declare-fun c!39180 () Bool)

(assert (=> b!235136 (= c!39180 (and (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!235137 () Bool)

(declare-fun e!152727 () Bool)

(declare-fun lt!119029 () ListLongMap!3545)

(declare-fun apply!209 (ListLongMap!3545 (_ BitVec 64)) V!7891)

(assert (=> b!235137 (= e!152727 (= (apply!209 lt!119029 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4208 thiss!1504)))))

(declare-fun b!235138 () Bool)

(declare-fun e!152731 () Bool)

(declare-fun e!152734 () Bool)

(assert (=> b!235138 (= e!152731 e!152734)))

(declare-fun res!115321 () Bool)

(declare-fun call!21873 () Bool)

(assert (=> b!235138 (= res!115321 call!21873)))

(assert (=> b!235138 (=> (not res!115321) (not e!152734))))

(declare-fun b!235139 () Bool)

(declare-fun e!152736 () Unit!7247)

(declare-fun Unit!7250 () Unit!7247)

(assert (=> b!235139 (= e!152736 Unit!7250)))

(declare-fun bm!21865 () Bool)

(declare-fun call!21869 () ListLongMap!3545)

(declare-fun call!21872 () ListLongMap!3545)

(assert (=> bm!21865 (= call!21869 call!21872)))

(declare-fun bm!21866 () Bool)

(declare-fun call!21870 () Bool)

(assert (=> bm!21866 (= call!21870 (contains!1658 lt!119029 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!59175 () Bool)

(assert (=> d!59175 e!152730))

(declare-fun res!115328 () Bool)

(assert (=> d!59175 (=> (not res!115328) (not e!152730))))

(assert (=> d!59175 (= res!115328 (or (bvsge #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))))

(declare-fun lt!119021 () ListLongMap!3545)

(assert (=> d!59175 (= lt!119029 lt!119021)))

(declare-fun lt!119020 () Unit!7247)

(assert (=> d!59175 (= lt!119020 e!152736)))

(declare-fun c!39175 () Bool)

(declare-fun e!152724 () Bool)

(assert (=> d!59175 (= c!39175 e!152724)))

(declare-fun res!115329 () Bool)

(assert (=> d!59175 (=> (not res!115329) (not e!152724))))

(assert (=> d!59175 (= res!115329 (bvslt #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))

(assert (=> d!59175 (= lt!119021 e!152735)))

(declare-fun c!39176 () Bool)

(assert (=> d!59175 (= c!39176 (and (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59175 (validMask!0 (mask!10329 thiss!1504))))

(assert (=> d!59175 (= (getCurrentListMap!1311 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)) lt!119029)))

(declare-fun bm!21867 () Bool)

(declare-fun call!21874 () ListLongMap!3545)

(assert (=> bm!21867 (= call!21872 call!21874)))

(declare-fun b!235140 () Bool)

(declare-fun e!152726 () ListLongMap!3545)

(declare-fun call!21868 () ListLongMap!3545)

(assert (=> b!235140 (= e!152726 call!21868)))

(declare-fun b!235141 () Bool)

(assert (=> b!235141 (= e!152731 (not call!21873))))

(declare-fun b!235142 () Bool)

(assert (=> b!235142 (= e!152728 e!152727)))

(declare-fun res!115323 () Bool)

(assert (=> b!235142 (= res!115323 call!21870)))

(assert (=> b!235142 (=> (not res!115323) (not e!152727))))

(declare-fun b!235143 () Bool)

(declare-fun e!152729 () Bool)

(declare-fun get!2841 (ValueCell!2748 V!7891) V!7891)

(declare-fun dynLambda!547 (Int (_ BitVec 64)) V!7891)

(assert (=> b!235143 (= e!152729 (= (apply!209 lt!119029 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000)) (get!2841 (select (arr!5523 (_values!4350 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!547 (defaultEntry!4367 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!235143 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5860 (_values!4350 thiss!1504))))))

(assert (=> b!235143 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))

(declare-fun b!235144 () Bool)

(declare-fun lt!119025 () Unit!7247)

(assert (=> b!235144 (= e!152736 lt!119025)))

(declare-fun lt!119033 () ListLongMap!3545)

(declare-fun getCurrentListMapNoExtraKeys!528 (array!11622 array!11620 (_ BitVec 32) (_ BitVec 32) V!7891 V!7891 (_ BitVec 32) Int) ListLongMap!3545)

(assert (=> b!235144 (= lt!119033 (getCurrentListMapNoExtraKeys!528 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)))))

(declare-fun lt!119018 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119018 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119030 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119030 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119023 () Unit!7247)

(declare-fun addStillContains!185 (ListLongMap!3545 (_ BitVec 64) V!7891 (_ BitVec 64)) Unit!7247)

(assert (=> b!235144 (= lt!119023 (addStillContains!185 lt!119033 lt!119018 (zeroValue!4208 thiss!1504) lt!119030))))

(declare-fun +!631 (ListLongMap!3545 tuple2!4618) ListLongMap!3545)

(assert (=> b!235144 (contains!1658 (+!631 lt!119033 (tuple2!4619 lt!119018 (zeroValue!4208 thiss!1504))) lt!119030)))

(declare-fun lt!119027 () Unit!7247)

(assert (=> b!235144 (= lt!119027 lt!119023)))

(declare-fun lt!119031 () ListLongMap!3545)

(assert (=> b!235144 (= lt!119031 (getCurrentListMapNoExtraKeys!528 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)))))

(declare-fun lt!119026 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119026 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119019 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119019 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119036 () Unit!7247)

(declare-fun addApplyDifferent!185 (ListLongMap!3545 (_ BitVec 64) V!7891 (_ BitVec 64)) Unit!7247)

(assert (=> b!235144 (= lt!119036 (addApplyDifferent!185 lt!119031 lt!119026 (minValue!4208 thiss!1504) lt!119019))))

(assert (=> b!235144 (= (apply!209 (+!631 lt!119031 (tuple2!4619 lt!119026 (minValue!4208 thiss!1504))) lt!119019) (apply!209 lt!119031 lt!119019))))

(declare-fun lt!119032 () Unit!7247)

(assert (=> b!235144 (= lt!119032 lt!119036)))

(declare-fun lt!119028 () ListLongMap!3545)

(assert (=> b!235144 (= lt!119028 (getCurrentListMapNoExtraKeys!528 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)))))

(declare-fun lt!119022 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119022 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119039 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119039 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119038 () Unit!7247)

(assert (=> b!235144 (= lt!119038 (addApplyDifferent!185 lt!119028 lt!119022 (zeroValue!4208 thiss!1504) lt!119039))))

(assert (=> b!235144 (= (apply!209 (+!631 lt!119028 (tuple2!4619 lt!119022 (zeroValue!4208 thiss!1504))) lt!119039) (apply!209 lt!119028 lt!119039))))

(declare-fun lt!119035 () Unit!7247)

(assert (=> b!235144 (= lt!119035 lt!119038)))

(declare-fun lt!119034 () ListLongMap!3545)

(assert (=> b!235144 (= lt!119034 (getCurrentListMapNoExtraKeys!528 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)))))

(declare-fun lt!119037 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119037 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119024 () (_ BitVec 64))

(assert (=> b!235144 (= lt!119024 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235144 (= lt!119025 (addApplyDifferent!185 lt!119034 lt!119037 (minValue!4208 thiss!1504) lt!119024))))

(assert (=> b!235144 (= (apply!209 (+!631 lt!119034 (tuple2!4619 lt!119037 (minValue!4208 thiss!1504))) lt!119024) (apply!209 lt!119034 lt!119024))))

(declare-fun b!235145 () Bool)

(declare-fun e!152733 () Bool)

(assert (=> b!235145 (= e!152733 e!152729)))

(declare-fun res!115325 () Bool)

(assert (=> b!235145 (=> (not res!115325) (not e!152729))))

(assert (=> b!235145 (= res!115325 (contains!1658 lt!119029 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!235145 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))

(declare-fun b!235146 () Bool)

(assert (=> b!235146 (= e!152725 call!21868)))

(declare-fun b!235147 () Bool)

(declare-fun res!115324 () Bool)

(assert (=> b!235147 (=> (not res!115324) (not e!152730))))

(assert (=> b!235147 (= res!115324 e!152731)))

(declare-fun c!39178 () Bool)

(assert (=> b!235147 (= c!39178 (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!235148 () Bool)

(assert (=> b!235148 (= e!152724 (validKeyInArray!0 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235149 () Bool)

(assert (=> b!235149 (= e!152734 (= (apply!209 lt!119029 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4208 thiss!1504)))))

(declare-fun b!235150 () Bool)

(declare-fun res!115327 () Bool)

(assert (=> b!235150 (=> (not res!115327) (not e!152730))))

(assert (=> b!235150 (= res!115327 e!152733)))

(declare-fun res!115322 () Bool)

(assert (=> b!235150 (=> res!115322 e!152733)))

(declare-fun e!152732 () Bool)

(assert (=> b!235150 (= res!115322 (not e!152732))))

(declare-fun res!115326 () Bool)

(assert (=> b!235150 (=> (not res!115326) (not e!152732))))

(assert (=> b!235150 (= res!115326 (bvslt #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))))))

(declare-fun b!235151 () Bool)

(assert (=> b!235151 (= e!152728 (not call!21870))))

(declare-fun call!21871 () ListLongMap!3545)

(declare-fun bm!21868 () Bool)

(assert (=> bm!21868 (= call!21871 (+!631 (ite c!39176 call!21874 (ite c!39180 call!21872 call!21869)) (ite (or c!39176 c!39180) (tuple2!4619 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4208 thiss!1504)) (tuple2!4619 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4208 thiss!1504)))))))

(declare-fun b!235152 () Bool)

(assert (=> b!235152 (= e!152732 (validKeyInArray!0 (select (arr!5524 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21869 () Bool)

(assert (=> bm!21869 (= call!21874 (getCurrentListMapNoExtraKeys!528 (_keys!6439 thiss!1504) (_values!4350 thiss!1504) (mask!10329 thiss!1504) (extraKeys!4104 thiss!1504) (zeroValue!4208 thiss!1504) (minValue!4208 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4367 thiss!1504)))))

(declare-fun b!235153 () Bool)

(declare-fun c!39177 () Bool)

(assert (=> b!235153 (= c!39177 (and (not (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4104 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!235153 (= e!152725 e!152726)))

(declare-fun b!235154 () Bool)

(assert (=> b!235154 (= e!152726 call!21869)))

(declare-fun b!235155 () Bool)

(assert (=> b!235155 (= e!152735 (+!631 call!21871 (tuple2!4619 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4208 thiss!1504))))))

(declare-fun bm!21870 () Bool)

(assert (=> bm!21870 (= call!21868 call!21871)))

(declare-fun bm!21871 () Bool)

(assert (=> bm!21871 (= call!21873 (contains!1658 lt!119029 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59175 c!39176) b!235155))

(assert (= (and d!59175 (not c!39176)) b!235136))

(assert (= (and b!235136 c!39180) b!235146))

(assert (= (and b!235136 (not c!39180)) b!235153))

(assert (= (and b!235153 c!39177) b!235140))

(assert (= (and b!235153 (not c!39177)) b!235154))

(assert (= (or b!235140 b!235154) bm!21865))

(assert (= (or b!235146 bm!21865) bm!21867))

(assert (= (or b!235146 b!235140) bm!21870))

(assert (= (or b!235155 bm!21867) bm!21869))

(assert (= (or b!235155 bm!21870) bm!21868))

(assert (= (and d!59175 res!115329) b!235148))

(assert (= (and d!59175 c!39175) b!235144))

(assert (= (and d!59175 (not c!39175)) b!235139))

(assert (= (and d!59175 res!115328) b!235150))

(assert (= (and b!235150 res!115326) b!235152))

(assert (= (and b!235150 (not res!115322)) b!235145))

(assert (= (and b!235145 res!115325) b!235143))

(assert (= (and b!235150 res!115327) b!235147))

(assert (= (and b!235147 c!39178) b!235138))

(assert (= (and b!235147 (not c!39178)) b!235141))

(assert (= (and b!235138 res!115321) b!235149))

(assert (= (or b!235138 b!235141) bm!21871))

(assert (= (and b!235147 res!115324) b!235135))

(assert (= (and b!235135 c!39179) b!235142))

(assert (= (and b!235135 (not c!39179)) b!235151))

(assert (= (and b!235142 res!115323) b!235137))

(assert (= (or b!235142 b!235151) bm!21866))

(declare-fun b_lambda!7929 () Bool)

(assert (=> (not b_lambda!7929) (not b!235143)))

(declare-fun t!8531 () Bool)

(declare-fun tb!2939 () Bool)

(assert (=> (and b!235041 (= (defaultEntry!4367 thiss!1504) (defaultEntry!4367 thiss!1504)) t!8531) tb!2939))

(declare-fun result!5123 () Bool)

(assert (=> tb!2939 (= result!5123 tp_is_empty!6183)))

(assert (=> b!235143 t!8531))

(declare-fun b_and!13269 () Bool)

(assert (= b_and!13265 (and (=> t!8531 result!5123) b_and!13269)))

(declare-fun m!256337 () Bool)

(assert (=> bm!21868 m!256337))

(declare-fun m!256339 () Bool)

(assert (=> bm!21866 m!256339))

(assert (=> b!235152 m!256319))

(assert (=> b!235152 m!256319))

(assert (=> b!235152 m!256327))

(declare-fun m!256341 () Bool)

(assert (=> b!235143 m!256341))

(assert (=> b!235143 m!256341))

(declare-fun m!256343 () Bool)

(assert (=> b!235143 m!256343))

(declare-fun m!256345 () Bool)

(assert (=> b!235143 m!256345))

(assert (=> b!235143 m!256319))

(declare-fun m!256347 () Bool)

(assert (=> b!235143 m!256347))

(assert (=> b!235143 m!256319))

(assert (=> b!235143 m!256343))

(declare-fun m!256349 () Bool)

(assert (=> b!235155 m!256349))

(assert (=> d!59175 m!256287))

(assert (=> b!235145 m!256319))

(assert (=> b!235145 m!256319))

(declare-fun m!256351 () Bool)

(assert (=> b!235145 m!256351))

(declare-fun m!256353 () Bool)

(assert (=> b!235144 m!256353))

(declare-fun m!256355 () Bool)

(assert (=> b!235144 m!256355))

(declare-fun m!256357 () Bool)

(assert (=> b!235144 m!256357))

(declare-fun m!256359 () Bool)

(assert (=> b!235144 m!256359))

(declare-fun m!256361 () Bool)

(assert (=> b!235144 m!256361))

(declare-fun m!256363 () Bool)

(assert (=> b!235144 m!256363))

(assert (=> b!235144 m!256355))

(declare-fun m!256365 () Bool)

(assert (=> b!235144 m!256365))

(declare-fun m!256367 () Bool)

(assert (=> b!235144 m!256367))

(declare-fun m!256369 () Bool)

(assert (=> b!235144 m!256369))

(declare-fun m!256371 () Bool)

(assert (=> b!235144 m!256371))

(assert (=> b!235144 m!256319))

(declare-fun m!256373 () Bool)

(assert (=> b!235144 m!256373))

(assert (=> b!235144 m!256365))

(declare-fun m!256375 () Bool)

(assert (=> b!235144 m!256375))

(declare-fun m!256377 () Bool)

(assert (=> b!235144 m!256377))

(declare-fun m!256379 () Bool)

(assert (=> b!235144 m!256379))

(declare-fun m!256381 () Bool)

(assert (=> b!235144 m!256381))

(assert (=> b!235144 m!256369))

(declare-fun m!256383 () Bool)

(assert (=> b!235144 m!256383))

(assert (=> b!235144 m!256377))

(assert (=> b!235148 m!256319))

(assert (=> b!235148 m!256319))

(assert (=> b!235148 m!256327))

(declare-fun m!256385 () Bool)

(assert (=> bm!21871 m!256385))

(declare-fun m!256387 () Bool)

(assert (=> b!235137 m!256387))

(assert (=> bm!21869 m!256381))

(declare-fun m!256389 () Bool)

(assert (=> b!235149 m!256389))

(assert (=> b!235033 d!59175))

(declare-fun d!59177 () Bool)

(assert (=> d!59177 (= (array_inv!3631 (_keys!6439 thiss!1504)) (bvsge (size!5861 (_keys!6439 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235041 d!59177))

(declare-fun d!59179 () Bool)

(assert (=> d!59179 (= (array_inv!3632 (_values!4350 thiss!1504)) (bvsge (size!5860 (_values!4350 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235041 d!59179))

(declare-fun d!59181 () Bool)

(assert (=> d!59181 (= (validMask!0 (mask!10329 thiss!1504)) (and (or (= (mask!10329 thiss!1504) #b00000000000000000000000000000111) (= (mask!10329 thiss!1504) #b00000000000000000000000000001111) (= (mask!10329 thiss!1504) #b00000000000000000000000000011111) (= (mask!10329 thiss!1504) #b00000000000000000000000000111111) (= (mask!10329 thiss!1504) #b00000000000000000000000001111111) (= (mask!10329 thiss!1504) #b00000000000000000000000011111111) (= (mask!10329 thiss!1504) #b00000000000000000000000111111111) (= (mask!10329 thiss!1504) #b00000000000000000000001111111111) (= (mask!10329 thiss!1504) #b00000000000000000000011111111111) (= (mask!10329 thiss!1504) #b00000000000000000000111111111111) (= (mask!10329 thiss!1504) #b00000000000000000001111111111111) (= (mask!10329 thiss!1504) #b00000000000000000011111111111111) (= (mask!10329 thiss!1504) #b00000000000000000111111111111111) (= (mask!10329 thiss!1504) #b00000000000000001111111111111111) (= (mask!10329 thiss!1504) #b00000000000000011111111111111111) (= (mask!10329 thiss!1504) #b00000000000000111111111111111111) (= (mask!10329 thiss!1504) #b00000000000001111111111111111111) (= (mask!10329 thiss!1504) #b00000000000011111111111111111111) (= (mask!10329 thiss!1504) #b00000000000111111111111111111111) (= (mask!10329 thiss!1504) #b00000000001111111111111111111111) (= (mask!10329 thiss!1504) #b00000000011111111111111111111111) (= (mask!10329 thiss!1504) #b00000000111111111111111111111111) (= (mask!10329 thiss!1504) #b00000001111111111111111111111111) (= (mask!10329 thiss!1504) #b00000011111111111111111111111111) (= (mask!10329 thiss!1504) #b00000111111111111111111111111111) (= (mask!10329 thiss!1504) #b00001111111111111111111111111111) (= (mask!10329 thiss!1504) #b00011111111111111111111111111111) (= (mask!10329 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10329 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!235039 d!59181))

(declare-fun b!235170 () Bool)

(declare-fun c!39188 () Bool)

(declare-fun lt!119047 () (_ BitVec 64))

(assert (=> b!235170 (= c!39188 (= lt!119047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!152744 () SeekEntryResult!994)

(declare-fun e!152743 () SeekEntryResult!994)

(assert (=> b!235170 (= e!152744 e!152743)))

(declare-fun b!235171 () Bool)

(declare-fun lt!119046 () SeekEntryResult!994)

(assert (=> b!235171 (= e!152744 (Found!994 (index!6148 lt!119046)))))

(declare-fun b!235173 () Bool)

(declare-fun e!152745 () SeekEntryResult!994)

(assert (=> b!235173 (= e!152745 Undefined!994)))

(declare-fun b!235174 () Bool)

(assert (=> b!235174 (= e!152743 (MissingZero!994 (index!6148 lt!119046)))))

(declare-fun b!235175 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11622 (_ BitVec 32)) SeekEntryResult!994)

(assert (=> b!235175 (= e!152743 (seekKeyOrZeroReturnVacant!0 (x!23762 lt!119046) (index!6148 lt!119046) (index!6148 lt!119046) key!932 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)))))

(declare-fun b!235172 () Bool)

(assert (=> b!235172 (= e!152745 e!152744)))

(assert (=> b!235172 (= lt!119047 (select (arr!5524 (_keys!6439 thiss!1504)) (index!6148 lt!119046)))))

(declare-fun c!39189 () Bool)

(assert (=> b!235172 (= c!39189 (= lt!119047 key!932))))

(declare-fun d!59183 () Bool)

(declare-fun lt!119048 () SeekEntryResult!994)

(assert (=> d!59183 (and (or ((_ is Undefined!994) lt!119048) (not ((_ is Found!994) lt!119048)) (and (bvsge (index!6147 lt!119048) #b00000000000000000000000000000000) (bvslt (index!6147 lt!119048) (size!5861 (_keys!6439 thiss!1504))))) (or ((_ is Undefined!994) lt!119048) ((_ is Found!994) lt!119048) (not ((_ is MissingZero!994) lt!119048)) (and (bvsge (index!6146 lt!119048) #b00000000000000000000000000000000) (bvslt (index!6146 lt!119048) (size!5861 (_keys!6439 thiss!1504))))) (or ((_ is Undefined!994) lt!119048) ((_ is Found!994) lt!119048) ((_ is MissingZero!994) lt!119048) (not ((_ is MissingVacant!994) lt!119048)) (and (bvsge (index!6149 lt!119048) #b00000000000000000000000000000000) (bvslt (index!6149 lt!119048) (size!5861 (_keys!6439 thiss!1504))))) (or ((_ is Undefined!994) lt!119048) (ite ((_ is Found!994) lt!119048) (= (select (arr!5524 (_keys!6439 thiss!1504)) (index!6147 lt!119048)) key!932) (ite ((_ is MissingZero!994) lt!119048) (= (select (arr!5524 (_keys!6439 thiss!1504)) (index!6146 lt!119048)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!994) lt!119048) (= (select (arr!5524 (_keys!6439 thiss!1504)) (index!6149 lt!119048)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59183 (= lt!119048 e!152745)))

(declare-fun c!39187 () Bool)

(assert (=> d!59183 (= c!39187 (and ((_ is Intermediate!994) lt!119046) (undefined!1806 lt!119046)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11622 (_ BitVec 32)) SeekEntryResult!994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59183 (= lt!119046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10329 thiss!1504)) key!932 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)))))

(assert (=> d!59183 (validMask!0 (mask!10329 thiss!1504))))

(assert (=> d!59183 (= (seekEntryOrOpen!0 key!932 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)) lt!119048)))

(assert (= (and d!59183 c!39187) b!235173))

(assert (= (and d!59183 (not c!39187)) b!235172))

(assert (= (and b!235172 c!39189) b!235171))

(assert (= (and b!235172 (not c!39189)) b!235170))

(assert (= (and b!235170 c!39188) b!235174))

(assert (= (and b!235170 (not c!39188)) b!235175))

(declare-fun m!256391 () Bool)

(assert (=> b!235175 m!256391))

(declare-fun m!256393 () Bool)

(assert (=> b!235172 m!256393))

(declare-fun m!256395 () Bool)

(assert (=> d!59183 m!256395))

(declare-fun m!256397 () Bool)

(assert (=> d!59183 m!256397))

(declare-fun m!256399 () Bool)

(assert (=> d!59183 m!256399))

(assert (=> d!59183 m!256287))

(declare-fun m!256401 () Bool)

(assert (=> d!59183 m!256401))

(assert (=> d!59183 m!256397))

(declare-fun m!256403 () Bool)

(assert (=> d!59183 m!256403))

(assert (=> b!235035 d!59183))

(declare-fun d!59185 () Bool)

(declare-fun res!115336 () Bool)

(declare-fun e!152748 () Bool)

(assert (=> d!59185 (=> (not res!115336) (not e!152748))))

(declare-fun simpleValid!231 (LongMapFixedSize!3396) Bool)

(assert (=> d!59185 (= res!115336 (simpleValid!231 thiss!1504))))

(assert (=> d!59185 (= (valid!1332 thiss!1504) e!152748)))

(declare-fun b!235182 () Bool)

(declare-fun res!115337 () Bool)

(assert (=> b!235182 (=> (not res!115337) (not e!152748))))

(declare-fun arrayCountValidKeys!0 (array!11622 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!235182 (= res!115337 (= (arrayCountValidKeys!0 (_keys!6439 thiss!1504) #b00000000000000000000000000000000 (size!5861 (_keys!6439 thiss!1504))) (_size!1747 thiss!1504)))))

(declare-fun b!235183 () Bool)

(declare-fun res!115338 () Bool)

(assert (=> b!235183 (=> (not res!115338) (not e!152748))))

(assert (=> b!235183 (= res!115338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6439 thiss!1504) (mask!10329 thiss!1504)))))

(declare-fun b!235184 () Bool)

(declare-datatypes ((List!3551 0))(
  ( (Nil!3548) (Cons!3547 (h!4199 (_ BitVec 64)) (t!8532 List!3551)) )
))
(declare-fun arrayNoDuplicates!0 (array!11622 (_ BitVec 32) List!3551) Bool)

(assert (=> b!235184 (= e!152748 (arrayNoDuplicates!0 (_keys!6439 thiss!1504) #b00000000000000000000000000000000 Nil!3548))))

(assert (= (and d!59185 res!115336) b!235182))

(assert (= (and b!235182 res!115337) b!235183))

(assert (= (and b!235183 res!115338) b!235184))

(declare-fun m!256405 () Bool)

(assert (=> d!59185 m!256405))

(declare-fun m!256407 () Bool)

(assert (=> b!235182 m!256407))

(assert (=> b!235183 m!256285))

(declare-fun m!256409 () Bool)

(assert (=> b!235184 m!256409))

(assert (=> start!22494 d!59185))

(declare-fun mapIsEmpty!10472 () Bool)

(declare-fun mapRes!10472 () Bool)

(assert (=> mapIsEmpty!10472 mapRes!10472))

(declare-fun mapNonEmpty!10472 () Bool)

(declare-fun tp!22136 () Bool)

(declare-fun e!152753 () Bool)

(assert (=> mapNonEmpty!10472 (= mapRes!10472 (and tp!22136 e!152753))))

(declare-fun mapRest!10472 () (Array (_ BitVec 32) ValueCell!2748))

(declare-fun mapValue!10472 () ValueCell!2748)

(declare-fun mapKey!10472 () (_ BitVec 32))

(assert (=> mapNonEmpty!10472 (= mapRest!10466 (store mapRest!10472 mapKey!10472 mapValue!10472))))

(declare-fun condMapEmpty!10472 () Bool)

(declare-fun mapDefault!10472 () ValueCell!2748)

(assert (=> mapNonEmpty!10466 (= condMapEmpty!10472 (= mapRest!10466 ((as const (Array (_ BitVec 32) ValueCell!2748)) mapDefault!10472)))))

(declare-fun e!152754 () Bool)

(assert (=> mapNonEmpty!10466 (= tp!22126 (and e!152754 mapRes!10472))))

(declare-fun b!235192 () Bool)

(assert (=> b!235192 (= e!152754 tp_is_empty!6183)))

(declare-fun b!235191 () Bool)

(assert (=> b!235191 (= e!152753 tp_is_empty!6183)))

(assert (= (and mapNonEmpty!10466 condMapEmpty!10472) mapIsEmpty!10472))

(assert (= (and mapNonEmpty!10466 (not condMapEmpty!10472)) mapNonEmpty!10472))

(assert (= (and mapNonEmpty!10472 ((_ is ValueCellFull!2748) mapValue!10472)) b!235191))

(assert (= (and mapNonEmpty!10466 ((_ is ValueCellFull!2748) mapDefault!10472)) b!235192))

(declare-fun m!256411 () Bool)

(assert (=> mapNonEmpty!10472 m!256411))

(declare-fun b_lambda!7931 () Bool)

(assert (= b_lambda!7929 (or (and b!235041 b_free!6321) b_lambda!7931)))

(check-sat (not b!235143) (not b!235183) (not b_next!6321) (not b_lambda!7931) (not bm!21868) (not b!235137) (not b!235182) (not b!235145) (not b!235144) (not d!59185) (not b!235083) (not b!235184) (not d!59173) (not b!235090) (not mapNonEmpty!10472) b_and!13269 (not b!235092) (not b!235148) (not bm!21866) (not bm!21869) (not b!235082) (not d!59183) (not b!235149) (not b!235152) (not bm!21871) (not b!235175) (not b!235155) tp_is_empty!6183 (not d!59175) (not bm!21850))
(check-sat b_and!13269 (not b_next!6321))
