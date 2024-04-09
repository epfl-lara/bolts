; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75530 () Bool)

(assert start!75530)

(declare-fun b!888293 () Bool)

(declare-fun b_free!15573 () Bool)

(declare-fun b_next!15573 () Bool)

(assert (=> b!888293 (= b_free!15573 (not b_next!15573))))

(declare-fun tp!54670 () Bool)

(declare-fun b_and!25829 () Bool)

(assert (=> b!888293 (= tp!54670 b_and!25829)))

(declare-fun b!888292 () Bool)

(declare-fun e!494999 () Bool)

(declare-fun e!495002 () Bool)

(declare-fun mapRes!28388 () Bool)

(assert (=> b!888292 (= e!494999 (and e!495002 mapRes!28388))))

(declare-fun condMapEmpty!28388 () Bool)

(declare-datatypes ((array!51758 0))(
  ( (array!51759 (arr!24886 (Array (_ BitVec 32) (_ BitVec 64))) (size!25328 (_ BitVec 32))) )
))
(declare-datatypes ((V!28833 0))(
  ( (V!28834 (val!9001 Int)) )
))
(declare-datatypes ((ValueCell!8469 0))(
  ( (ValueCellFull!8469 (v!11470 V!28833)) (EmptyCell!8469) )
))
(declare-datatypes ((array!51760 0))(
  ( (array!51761 (arr!24887 (Array (_ BitVec 32) ValueCell!8469)) (size!25329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3954 0))(
  ( (LongMapFixedSize!3955 (defaultEntry!5171 Int) (mask!25586 (_ BitVec 32)) (extraKeys!4865 (_ BitVec 32)) (zeroValue!4969 V!28833) (minValue!4969 V!28833) (_size!2032 (_ BitVec 32)) (_keys!9846 array!51758) (_values!5156 array!51760) (_vacant!2032 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3954)

(declare-fun mapDefault!28388 () ValueCell!8469)

(assert (=> b!888292 (= condMapEmpty!28388 (= (arr!24887 (_values!5156 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8469)) mapDefault!28388)))))

(declare-fun e!495003 () Bool)

(declare-fun tp_is_empty!17901 () Bool)

(declare-fun array_inv!19552 (array!51758) Bool)

(declare-fun array_inv!19553 (array!51760) Bool)

(assert (=> b!888293 (= e!495003 (and tp!54670 tp_is_empty!17901 (array_inv!19552 (_keys!9846 thiss!1181)) (array_inv!19553 (_values!5156 thiss!1181)) e!494999))))

(declare-fun mapIsEmpty!28388 () Bool)

(assert (=> mapIsEmpty!28388 mapRes!28388))

(declare-fun b!888294 () Bool)

(declare-fun res!602392 () Bool)

(declare-fun e!495001 () Bool)

(assert (=> b!888294 (=> (not res!602392) (not e!495001))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4319 (LongMapFixedSize!3954 (_ BitVec 64)) Bool)

(assert (=> b!888294 (= res!602392 (contains!4319 thiss!1181 key!785))))

(declare-fun b!888295 () Bool)

(declare-fun res!602393 () Bool)

(assert (=> b!888295 (=> (not res!602393) (not e!495001))))

(assert (=> b!888295 (= res!602393 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888296 () Bool)

(assert (=> b!888296 (= e!495002 tp_is_empty!17901)))

(declare-fun b!888297 () Bool)

(declare-fun e!495000 () Bool)

(assert (=> b!888297 (= e!495000 tp_is_empty!17901)))

(declare-fun b!888298 () Bool)

(declare-datatypes ((Option!445 0))(
  ( (Some!444 (v!11471 V!28833)) (None!443) )
))
(declare-fun isDefined!320 (Option!445) Bool)

(declare-datatypes ((tuple2!11958 0))(
  ( (tuple2!11959 (_1!5989 (_ BitVec 64)) (_2!5989 V!28833)) )
))
(declare-datatypes ((List!17773 0))(
  ( (Nil!17770) (Cons!17769 (h!18900 tuple2!11958) (t!25078 List!17773)) )
))
(declare-fun getValueByKey!439 (List!17773 (_ BitVec 64)) Option!445)

(declare-datatypes ((ListLongMap!10669 0))(
  ( (ListLongMap!10670 (toList!5350 List!17773)) )
))
(declare-fun map!12112 (LongMapFixedSize!3954) ListLongMap!10669)

(assert (=> b!888298 (= e!495001 (not (isDefined!320 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785))))))

(declare-fun mapNonEmpty!28388 () Bool)

(declare-fun tp!54671 () Bool)

(assert (=> mapNonEmpty!28388 (= mapRes!28388 (and tp!54671 e!495000))))

(declare-fun mapRest!28388 () (Array (_ BitVec 32) ValueCell!8469))

(declare-fun mapValue!28388 () ValueCell!8469)

(declare-fun mapKey!28388 () (_ BitVec 32))

(assert (=> mapNonEmpty!28388 (= (arr!24887 (_values!5156 thiss!1181)) (store mapRest!28388 mapKey!28388 mapValue!28388))))

(declare-fun res!602394 () Bool)

(assert (=> start!75530 (=> (not res!602394) (not e!495001))))

(declare-fun valid!1530 (LongMapFixedSize!3954) Bool)

(assert (=> start!75530 (= res!602394 (valid!1530 thiss!1181))))

(assert (=> start!75530 e!495001))

(assert (=> start!75530 e!495003))

(assert (=> start!75530 true))

(assert (= (and start!75530 res!602394) b!888295))

(assert (= (and b!888295 res!602393) b!888294))

(assert (= (and b!888294 res!602392) b!888298))

(assert (= (and b!888292 condMapEmpty!28388) mapIsEmpty!28388))

(assert (= (and b!888292 (not condMapEmpty!28388)) mapNonEmpty!28388))

(get-info :version)

(assert (= (and mapNonEmpty!28388 ((_ is ValueCellFull!8469) mapValue!28388)) b!888297))

(assert (= (and b!888292 ((_ is ValueCellFull!8469) mapDefault!28388)) b!888296))

(assert (= b!888293 b!888292))

(assert (= start!75530 b!888293))

(declare-fun m!827701 () Bool)

(assert (=> mapNonEmpty!28388 m!827701))

(declare-fun m!827703 () Bool)

(assert (=> b!888298 m!827703))

(declare-fun m!827705 () Bool)

(assert (=> b!888298 m!827705))

(assert (=> b!888298 m!827705))

(declare-fun m!827707 () Bool)

(assert (=> b!888298 m!827707))

(declare-fun m!827709 () Bool)

(assert (=> b!888294 m!827709))

(declare-fun m!827711 () Bool)

(assert (=> b!888293 m!827711))

(declare-fun m!827713 () Bool)

(assert (=> b!888293 m!827713))

(declare-fun m!827715 () Bool)

(assert (=> start!75530 m!827715))

(check-sat (not mapNonEmpty!28388) (not start!75530) tp_is_empty!17901 (not b_next!15573) (not b!888294) (not b!888298) b_and!25829 (not b!888293))
(check-sat b_and!25829 (not b_next!15573))
(get-model)

(declare-fun d!109969 () Bool)

(assert (=> d!109969 (= (array_inv!19552 (_keys!9846 thiss!1181)) (bvsge (size!25328 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888293 d!109969))

(declare-fun d!109971 () Bool)

(assert (=> d!109971 (= (array_inv!19553 (_values!5156 thiss!1181)) (bvsge (size!25329 (_values!5156 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888293 d!109971))

(declare-fun d!109973 () Bool)

(declare-fun isEmpty!681 (Option!445) Bool)

(assert (=> d!109973 (= (isDefined!320 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785)) (not (isEmpty!681 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785))))))

(declare-fun bs!24911 () Bool)

(assert (= bs!24911 d!109973))

(assert (=> bs!24911 m!827705))

(declare-fun m!827733 () Bool)

(assert (=> bs!24911 m!827733))

(assert (=> b!888298 d!109973))

(declare-fun b!888331 () Bool)

(declare-fun e!495028 () Option!445)

(assert (=> b!888331 (= e!495028 None!443)))

(declare-fun b!888330 () Bool)

(assert (=> b!888330 (= e!495028 (getValueByKey!439 (t!25078 (toList!5350 (map!12112 thiss!1181))) key!785))))

(declare-fun b!888329 () Bool)

(declare-fun e!495027 () Option!445)

(assert (=> b!888329 (= e!495027 e!495028)))

(declare-fun c!93751 () Bool)

(assert (=> b!888329 (= c!93751 (and ((_ is Cons!17769) (toList!5350 (map!12112 thiss!1181))) (not (= (_1!5989 (h!18900 (toList!5350 (map!12112 thiss!1181)))) key!785))))))

(declare-fun b!888328 () Bool)

(assert (=> b!888328 (= e!495027 (Some!444 (_2!5989 (h!18900 (toList!5350 (map!12112 thiss!1181))))))))

(declare-fun d!109975 () Bool)

(declare-fun c!93750 () Bool)

(assert (=> d!109975 (= c!93750 (and ((_ is Cons!17769) (toList!5350 (map!12112 thiss!1181))) (= (_1!5989 (h!18900 (toList!5350 (map!12112 thiss!1181)))) key!785)))))

(assert (=> d!109975 (= (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785) e!495027)))

(assert (= (and d!109975 c!93750) b!888328))

(assert (= (and d!109975 (not c!93750)) b!888329))

(assert (= (and b!888329 c!93751) b!888330))

(assert (= (and b!888329 (not c!93751)) b!888331))

(declare-fun m!827735 () Bool)

(assert (=> b!888330 m!827735))

(assert (=> b!888298 d!109975))

(declare-fun d!109977 () Bool)

(declare-fun getCurrentListMap!2605 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 32) Int) ListLongMap!10669)

(assert (=> d!109977 (= (map!12112 thiss!1181) (getCurrentListMap!2605 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun bs!24912 () Bool)

(assert (= bs!24912 d!109977))

(declare-fun m!827737 () Bool)

(assert (=> bs!24912 m!827737))

(assert (=> b!888298 d!109977))

(declare-fun d!109979 () Bool)

(declare-fun res!602410 () Bool)

(declare-fun e!495031 () Bool)

(assert (=> d!109979 (=> (not res!602410) (not e!495031))))

(declare-fun simpleValid!289 (LongMapFixedSize!3954) Bool)

(assert (=> d!109979 (= res!602410 (simpleValid!289 thiss!1181))))

(assert (=> d!109979 (= (valid!1530 thiss!1181) e!495031)))

(declare-fun b!888338 () Bool)

(declare-fun res!602411 () Bool)

(assert (=> b!888338 (=> (not res!602411) (not e!495031))))

(declare-fun arrayCountValidKeys!0 (array!51758 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888338 (= res!602411 (= (arrayCountValidKeys!0 (_keys!9846 thiss!1181) #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))) (_size!2032 thiss!1181)))))

(declare-fun b!888339 () Bool)

(declare-fun res!602412 () Bool)

(assert (=> b!888339 (=> (not res!602412) (not e!495031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51758 (_ BitVec 32)) Bool)

(assert (=> b!888339 (= res!602412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun b!888340 () Bool)

(declare-datatypes ((List!17774 0))(
  ( (Nil!17771) (Cons!17770 (h!18901 (_ BitVec 64)) (t!25079 List!17774)) )
))
(declare-fun arrayNoDuplicates!0 (array!51758 (_ BitVec 32) List!17774) Bool)

(assert (=> b!888340 (= e!495031 (arrayNoDuplicates!0 (_keys!9846 thiss!1181) #b00000000000000000000000000000000 Nil!17771))))

(assert (= (and d!109979 res!602410) b!888338))

(assert (= (and b!888338 res!602411) b!888339))

(assert (= (and b!888339 res!602412) b!888340))

(declare-fun m!827739 () Bool)

(assert (=> d!109979 m!827739))

(declare-fun m!827741 () Bool)

(assert (=> b!888338 m!827741))

(declare-fun m!827743 () Bool)

(assert (=> b!888339 m!827743))

(declare-fun m!827745 () Bool)

(assert (=> b!888340 m!827745))

(assert (=> start!75530 d!109979))

(declare-fun b!888361 () Bool)

(declare-datatypes ((Unit!30232 0))(
  ( (Unit!30233) )
))
(declare-fun e!495042 () Unit!30232)

(declare-fun Unit!30234 () Unit!30232)

(assert (=> b!888361 (= e!495042 Unit!30234)))

(declare-fun b!888362 () Bool)

(declare-fun e!495044 () Bool)

(assert (=> b!888362 (= e!495044 true)))

(declare-datatypes ((SeekEntryResult!8756 0))(
  ( (MissingZero!8756 (index!37394 (_ BitVec 32))) (Found!8756 (index!37395 (_ BitVec 32))) (Intermediate!8756 (undefined!9568 Bool) (index!37396 (_ BitVec 32)) (x!75369 (_ BitVec 32))) (Undefined!8756) (MissingVacant!8756 (index!37397 (_ BitVec 32))) )
))
(declare-fun lt!401708 () SeekEntryResult!8756)

(declare-fun lt!401710 () Unit!30232)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51758 (_ BitVec 64) (_ BitVec 32)) Unit!30232)

(assert (=> b!888362 (= lt!401710 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9846 thiss!1181) key!785 (index!37395 lt!401708)))))

(declare-fun call!39451 () Bool)

(assert (=> b!888362 call!39451))

(declare-fun lt!401712 () Unit!30232)

(assert (=> b!888362 (= lt!401712 lt!401710)))

(declare-fun lt!401706 () Unit!30232)

(declare-fun lemmaValidKeyInArrayIsInListMap!198 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 32) Int) Unit!30232)

(assert (=> b!888362 (= lt!401706 (lemmaValidKeyInArrayIsInListMap!198 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) (index!37395 lt!401708) (defaultEntry!5171 thiss!1181)))))

(declare-fun call!39452 () Bool)

(assert (=> b!888362 call!39452))

(declare-fun lt!401713 () Unit!30232)

(assert (=> b!888362 (= lt!401713 lt!401706)))

(declare-fun b!888363 () Bool)

(declare-fun c!93765 () Bool)

(assert (=> b!888363 (= c!93765 ((_ is Found!8756) lt!401708))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51758 (_ BitVec 32)) SeekEntryResult!8756)

(assert (=> b!888363 (= lt!401708 (seekEntry!0 key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun e!495046 () Bool)

(assert (=> b!888363 (= e!495046 e!495044)))

(declare-fun b!888364 () Bool)

(assert (=> b!888364 (= e!495044 false)))

(declare-fun c!93763 () Bool)

(assert (=> b!888364 (= c!93763 call!39452)))

(declare-fun lt!401720 () Unit!30232)

(assert (=> b!888364 (= lt!401720 e!495042)))

(declare-fun b!888365 () Bool)

(assert (=> b!888365 false))

(declare-fun lt!401709 () Unit!30232)

(declare-fun lt!401715 () Unit!30232)

(assert (=> b!888365 (= lt!401709 lt!401715)))

(declare-fun lt!401714 () SeekEntryResult!8756)

(declare-fun lt!401716 () (_ BitVec 32))

(assert (=> b!888365 (and ((_ is Found!8756) lt!401714) (= (index!37395 lt!401714) lt!401716))))

(assert (=> b!888365 (= lt!401714 (seekEntry!0 key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!51758 (_ BitVec 32)) Unit!30232)

(assert (=> b!888365 (= lt!401715 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun lt!401718 () Unit!30232)

(declare-fun lt!401711 () Unit!30232)

(assert (=> b!888365 (= lt!401718 lt!401711)))

(assert (=> b!888365 (arrayForallSeekEntryOrOpenFound!0 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!51758 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30232)

(assert (=> b!888365 (= lt!401711 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9846 thiss!1181) (mask!25586 thiss!1181) #b00000000000000000000000000000000 lt!401716))))

(declare-fun arrayScanForKey!0 (array!51758 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888365 (= lt!401716 (arrayScanForKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!401719 () Unit!30232)

(declare-fun lt!401707 () Unit!30232)

(assert (=> b!888365 (= lt!401719 lt!401707)))

(declare-fun e!495045 () Bool)

(assert (=> b!888365 e!495045))

(declare-fun c!93766 () Bool)

(assert (=> b!888365 (= c!93766 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!160 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 64) Int) Unit!30232)

(assert (=> b!888365 (= lt!401707 (lemmaKeyInListMapIsInArray!160 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) key!785 (defaultEntry!5171 thiss!1181)))))

(declare-fun Unit!30235 () Unit!30232)

(assert (=> b!888365 (= e!495042 Unit!30235)))

(declare-fun b!888366 () Bool)

(assert (=> b!888366 (= e!495046 (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39447 () Bool)

(declare-fun call!39450 () ListLongMap!10669)

(assert (=> bm!39447 (= call!39450 (getCurrentListMap!2605 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun b!888367 () Bool)

(declare-fun e!495043 () Bool)

(assert (=> b!888367 (= e!495043 (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!888368 () Bool)

(assert (=> b!888368 (= e!495043 e!495046)))

(declare-fun c!93764 () Bool)

(assert (=> b!888368 (= c!93764 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!888369 () Bool)

(assert (=> b!888369 (= e!495045 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888370 () Bool)

(assert (=> b!888370 (= e!495045 call!39451)))

(declare-fun bm!39449 () Bool)

(declare-fun arrayContainsKey!0 (array!51758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39449 (= call!39451 (arrayContainsKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun d!109981 () Bool)

(declare-fun lt!401717 () Bool)

(declare-fun contains!4321 (ListLongMap!10669 (_ BitVec 64)) Bool)

(assert (=> d!109981 (= lt!401717 (contains!4321 (map!12112 thiss!1181) key!785))))

(assert (=> d!109981 (= lt!401717 e!495043)))

(declare-fun c!93762 () Bool)

(assert (=> d!109981 (= c!93762 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!109981 (valid!1530 thiss!1181)))

(assert (=> d!109981 (= (contains!4319 thiss!1181 key!785) lt!401717)))

(declare-fun bm!39448 () Bool)

(assert (=> bm!39448 (= call!39452 (contains!4321 call!39450 (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785)))))

(assert (= (and d!109981 c!93762) b!888367))

(assert (= (and d!109981 (not c!93762)) b!888368))

(assert (= (and b!888368 c!93764) b!888366))

(assert (= (and b!888368 (not c!93764)) b!888363))

(assert (= (and b!888363 c!93765) b!888362))

(assert (= (and b!888363 (not c!93765)) b!888364))

(assert (= (and b!888364 c!93763) b!888365))

(assert (= (and b!888364 (not c!93763)) b!888361))

(assert (= (and b!888365 c!93766) b!888370))

(assert (= (and b!888365 (not c!93766)) b!888369))

(assert (= (or b!888362 b!888370) bm!39449))

(assert (= (or b!888362 b!888364) bm!39447))

(assert (= (or b!888362 b!888364) bm!39448))

(declare-fun m!827747 () Bool)

(assert (=> b!888365 m!827747))

(declare-fun m!827749 () Bool)

(assert (=> b!888365 m!827749))

(declare-fun m!827751 () Bool)

(assert (=> b!888365 m!827751))

(declare-fun m!827753 () Bool)

(assert (=> b!888365 m!827753))

(declare-fun m!827755 () Bool)

(assert (=> b!888365 m!827755))

(declare-fun m!827757 () Bool)

(assert (=> b!888365 m!827757))

(declare-fun m!827759 () Bool)

(assert (=> bm!39449 m!827759))

(assert (=> d!109981 m!827703))

(assert (=> d!109981 m!827703))

(declare-fun m!827761 () Bool)

(assert (=> d!109981 m!827761))

(assert (=> d!109981 m!827715))

(assert (=> bm!39447 m!827737))

(declare-fun m!827763 () Bool)

(assert (=> b!888362 m!827763))

(declare-fun m!827765 () Bool)

(assert (=> b!888362 m!827765))

(declare-fun m!827767 () Bool)

(assert (=> bm!39448 m!827767))

(declare-fun m!827769 () Bool)

(assert (=> bm!39448 m!827769))

(assert (=> b!888363 m!827753))

(assert (=> b!888294 d!109981))

(declare-fun condMapEmpty!28394 () Bool)

(declare-fun mapDefault!28394 () ValueCell!8469)

(assert (=> mapNonEmpty!28388 (= condMapEmpty!28394 (= mapRest!28388 ((as const (Array (_ BitVec 32) ValueCell!8469)) mapDefault!28394)))))

(declare-fun e!495052 () Bool)

(declare-fun mapRes!28394 () Bool)

(assert (=> mapNonEmpty!28388 (= tp!54671 (and e!495052 mapRes!28394))))

(declare-fun b!888377 () Bool)

(declare-fun e!495051 () Bool)

(assert (=> b!888377 (= e!495051 tp_is_empty!17901)))

(declare-fun mapIsEmpty!28394 () Bool)

(assert (=> mapIsEmpty!28394 mapRes!28394))

(declare-fun mapNonEmpty!28394 () Bool)

(declare-fun tp!54680 () Bool)

(assert (=> mapNonEmpty!28394 (= mapRes!28394 (and tp!54680 e!495051))))

(declare-fun mapKey!28394 () (_ BitVec 32))

(declare-fun mapValue!28394 () ValueCell!8469)

(declare-fun mapRest!28394 () (Array (_ BitVec 32) ValueCell!8469))

(assert (=> mapNonEmpty!28394 (= mapRest!28388 (store mapRest!28394 mapKey!28394 mapValue!28394))))

(declare-fun b!888378 () Bool)

(assert (=> b!888378 (= e!495052 tp_is_empty!17901)))

(assert (= (and mapNonEmpty!28388 condMapEmpty!28394) mapIsEmpty!28394))

(assert (= (and mapNonEmpty!28388 (not condMapEmpty!28394)) mapNonEmpty!28394))

(assert (= (and mapNonEmpty!28394 ((_ is ValueCellFull!8469) mapValue!28394)) b!888377))

(assert (= (and mapNonEmpty!28388 ((_ is ValueCellFull!8469) mapDefault!28394)) b!888378))

(declare-fun m!827771 () Bool)

(assert (=> mapNonEmpty!28394 m!827771))

(check-sat (not b!888365) (not b!888339) (not d!109977) b_and!25829 (not b!888362) (not bm!39447) tp_is_empty!17901 (not mapNonEmpty!28394) (not b!888363) (not bm!39448) (not b!888338) (not bm!39449) (not b!888330) (not d!109979) (not d!109981) (not d!109973) (not b_next!15573) (not b!888340))
(check-sat b_and!25829 (not b_next!15573))
(get-model)

(declare-fun d!109983 () Bool)

(declare-fun e!495055 () Bool)

(assert (=> d!109983 e!495055))

(declare-fun c!93769 () Bool)

(assert (=> d!109983 (= c!93769 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!401723 () Unit!30232)

(declare-fun choose!1466 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 64) Int) Unit!30232)

(assert (=> d!109983 (= lt!401723 (choose!1466 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) key!785 (defaultEntry!5171 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!109983 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!109983 (= (lemmaKeyInListMapIsInArray!160 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) key!785 (defaultEntry!5171 thiss!1181)) lt!401723)))

(declare-fun b!888383 () Bool)

(assert (=> b!888383 (= e!495055 (arrayContainsKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!888384 () Bool)

(assert (=> b!888384 (= e!495055 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!109983 c!93769) b!888383))

(assert (= (and d!109983 (not c!93769)) b!888384))

(declare-fun m!827773 () Bool)

(assert (=> d!109983 m!827773))

(declare-fun m!827775 () Bool)

(assert (=> d!109983 m!827775))

(assert (=> b!888383 m!827759))

(assert (=> b!888365 d!109983))

(declare-fun b!888397 () Bool)

(declare-fun e!495064 () SeekEntryResult!8756)

(declare-fun e!495062 () SeekEntryResult!8756)

(assert (=> b!888397 (= e!495064 e!495062)))

(declare-fun lt!401735 () (_ BitVec 64))

(declare-fun lt!401734 () SeekEntryResult!8756)

(assert (=> b!888397 (= lt!401735 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37396 lt!401734)))))

(declare-fun c!93777 () Bool)

(assert (=> b!888397 (= c!93777 (= lt!401735 key!785))))

(declare-fun b!888398 () Bool)

(declare-fun e!495063 () SeekEntryResult!8756)

(declare-fun lt!401732 () SeekEntryResult!8756)

(assert (=> b!888398 (= e!495063 (ite ((_ is MissingVacant!8756) lt!401732) (MissingZero!8756 (index!37397 lt!401732)) lt!401732))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51758 (_ BitVec 32)) SeekEntryResult!8756)

(assert (=> b!888398 (= lt!401732 (seekKeyOrZeroReturnVacant!0 (x!75369 lt!401734) (index!37396 lt!401734) (index!37396 lt!401734) key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun b!888399 () Bool)

(assert (=> b!888399 (= e!495064 Undefined!8756)))

(declare-fun b!888400 () Bool)

(declare-fun c!93778 () Bool)

(assert (=> b!888400 (= c!93778 (= lt!401735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!888400 (= e!495062 e!495063)))

(declare-fun d!109985 () Bool)

(declare-fun lt!401733 () SeekEntryResult!8756)

(assert (=> d!109985 (and (or ((_ is MissingVacant!8756) lt!401733) (not ((_ is Found!8756) lt!401733)) (and (bvsge (index!37395 lt!401733) #b00000000000000000000000000000000) (bvslt (index!37395 lt!401733) (size!25328 (_keys!9846 thiss!1181))))) (not ((_ is MissingVacant!8756) lt!401733)) (or (not ((_ is Found!8756) lt!401733)) (= (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401733)) key!785)))))

(assert (=> d!109985 (= lt!401733 e!495064)))

(declare-fun c!93776 () Bool)

(assert (=> d!109985 (= c!93776 (and ((_ is Intermediate!8756) lt!401734) (undefined!9568 lt!401734)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51758 (_ BitVec 32)) SeekEntryResult!8756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!109985 (= lt!401734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25586 thiss!1181)) key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(assert (=> d!109985 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!109985 (= (seekEntry!0 key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) lt!401733)))

(declare-fun b!888401 () Bool)

(assert (=> b!888401 (= e!495063 (MissingZero!8756 (index!37396 lt!401734)))))

(declare-fun b!888402 () Bool)

(assert (=> b!888402 (= e!495062 (Found!8756 (index!37396 lt!401734)))))

(assert (= (and d!109985 c!93776) b!888399))

(assert (= (and d!109985 (not c!93776)) b!888397))

(assert (= (and b!888397 c!93777) b!888402))

(assert (= (and b!888397 (not c!93777)) b!888400))

(assert (= (and b!888400 c!93778) b!888401))

(assert (= (and b!888400 (not c!93778)) b!888398))

(declare-fun m!827777 () Bool)

(assert (=> b!888397 m!827777))

(declare-fun m!827779 () Bool)

(assert (=> b!888398 m!827779))

(declare-fun m!827781 () Bool)

(assert (=> d!109985 m!827781))

(declare-fun m!827783 () Bool)

(assert (=> d!109985 m!827783))

(assert (=> d!109985 m!827783))

(declare-fun m!827785 () Bool)

(assert (=> d!109985 m!827785))

(assert (=> d!109985 m!827775))

(assert (=> b!888365 d!109985))

(declare-fun d!109987 () Bool)

(declare-fun lt!401741 () SeekEntryResult!8756)

(assert (=> d!109987 (and ((_ is Found!8756) lt!401741) (= (index!37395 lt!401741) lt!401716))))

(assert (=> d!109987 (= lt!401741 (seekEntry!0 key!785 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun lt!401740 () Unit!30232)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!51758 (_ BitVec 32)) Unit!30232)

(assert (=> d!109987 (= lt!401740 (choose!0 key!785 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(assert (=> d!109987 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!109987 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) lt!401740)))

(declare-fun bs!24913 () Bool)

(assert (= bs!24913 d!109987))

(assert (=> bs!24913 m!827753))

(declare-fun m!827787 () Bool)

(assert (=> bs!24913 m!827787))

(assert (=> bs!24913 m!827775))

(assert (=> b!888365 d!109987))

(declare-fun d!109989 () Bool)

(assert (=> d!109989 (arrayForallSeekEntryOrOpenFound!0 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181))))

(declare-fun lt!401744 () Unit!30232)

(declare-fun choose!38 (array!51758 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30232)

(assert (=> d!109989 (= lt!401744 (choose!38 (_keys!9846 thiss!1181) (mask!25586 thiss!1181) #b00000000000000000000000000000000 lt!401716))))

(assert (=> d!109989 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!109989 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9846 thiss!1181) (mask!25586 thiss!1181) #b00000000000000000000000000000000 lt!401716) lt!401744)))

(declare-fun bs!24914 () Bool)

(assert (= bs!24914 d!109989))

(assert (=> bs!24914 m!827757))

(declare-fun m!827789 () Bool)

(assert (=> bs!24914 m!827789))

(assert (=> bs!24914 m!827775))

(assert (=> b!888365 d!109989))

(declare-fun d!109991 () Bool)

(declare-fun res!602417 () Bool)

(declare-fun e!495073 () Bool)

(assert (=> d!109991 (=> res!602417 e!495073)))

(assert (=> d!109991 (= res!602417 (bvsge lt!401716 (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!109991 (= (arrayForallSeekEntryOrOpenFound!0 lt!401716 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) e!495073)))

(declare-fun b!888411 () Bool)

(declare-fun e!495072 () Bool)

(declare-fun e!495071 () Bool)

(assert (=> b!888411 (= e!495072 e!495071)))

(declare-fun lt!401751 () (_ BitVec 64))

(assert (=> b!888411 (= lt!401751 (select (arr!24886 (_keys!9846 thiss!1181)) lt!401716))))

(declare-fun lt!401752 () Unit!30232)

(assert (=> b!888411 (= lt!401752 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9846 thiss!1181) lt!401751 lt!401716))))

(assert (=> b!888411 (arrayContainsKey!0 (_keys!9846 thiss!1181) lt!401751 #b00000000000000000000000000000000)))

(declare-fun lt!401753 () Unit!30232)

(assert (=> b!888411 (= lt!401753 lt!401752)))

(declare-fun res!602418 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51758 (_ BitVec 32)) SeekEntryResult!8756)

(assert (=> b!888411 (= res!602418 (= (seekEntryOrOpen!0 (select (arr!24886 (_keys!9846 thiss!1181)) lt!401716) (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) (Found!8756 lt!401716)))))

(assert (=> b!888411 (=> (not res!602418) (not e!495071))))

(declare-fun b!888412 () Bool)

(declare-fun call!39455 () Bool)

(assert (=> b!888412 (= e!495072 call!39455)))

(declare-fun bm!39452 () Bool)

(assert (=> bm!39452 (= call!39455 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!401716 #b00000000000000000000000000000001) (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun b!888413 () Bool)

(assert (=> b!888413 (= e!495073 e!495072)))

(declare-fun c!93781 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!888413 (= c!93781 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) lt!401716)))))

(declare-fun b!888414 () Bool)

(assert (=> b!888414 (= e!495071 call!39455)))

(assert (= (and d!109991 (not res!602417)) b!888413))

(assert (= (and b!888413 c!93781) b!888411))

(assert (= (and b!888413 (not c!93781)) b!888412))

(assert (= (and b!888411 res!602418) b!888414))

(assert (= (or b!888414 b!888412) bm!39452))

(declare-fun m!827791 () Bool)

(assert (=> b!888411 m!827791))

(declare-fun m!827793 () Bool)

(assert (=> b!888411 m!827793))

(declare-fun m!827795 () Bool)

(assert (=> b!888411 m!827795))

(assert (=> b!888411 m!827791))

(declare-fun m!827797 () Bool)

(assert (=> b!888411 m!827797))

(declare-fun m!827799 () Bool)

(assert (=> bm!39452 m!827799))

(assert (=> b!888413 m!827791))

(assert (=> b!888413 m!827791))

(declare-fun m!827801 () Bool)

(assert (=> b!888413 m!827801))

(assert (=> b!888365 d!109991))

(declare-fun d!109993 () Bool)

(declare-fun lt!401756 () (_ BitVec 32))

(assert (=> d!109993 (and (or (bvslt lt!401756 #b00000000000000000000000000000000) (bvsge lt!401756 (size!25328 (_keys!9846 thiss!1181))) (and (bvsge lt!401756 #b00000000000000000000000000000000) (bvslt lt!401756 (size!25328 (_keys!9846 thiss!1181))))) (bvsge lt!401756 #b00000000000000000000000000000000) (bvslt lt!401756 (size!25328 (_keys!9846 thiss!1181))) (= (select (arr!24886 (_keys!9846 thiss!1181)) lt!401756) key!785))))

(declare-fun e!495076 () (_ BitVec 32))

(assert (=> d!109993 (= lt!401756 e!495076)))

(declare-fun c!93784 () Bool)

(assert (=> d!109993 (= c!93784 (= (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!109993 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))) (bvslt (size!25328 (_keys!9846 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!109993 (= (arrayScanForKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000) lt!401756)))

(declare-fun b!888419 () Bool)

(assert (=> b!888419 (= e!495076 #b00000000000000000000000000000000)))

(declare-fun b!888420 () Bool)

(assert (=> b!888420 (= e!495076 (arrayScanForKey!0 (_keys!9846 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!109993 c!93784) b!888419))

(assert (= (and d!109993 (not c!93784)) b!888420))

(declare-fun m!827803 () Bool)

(assert (=> d!109993 m!827803))

(declare-fun m!827805 () Bool)

(assert (=> d!109993 m!827805))

(declare-fun m!827807 () Bool)

(assert (=> b!888420 m!827807))

(assert (=> b!888365 d!109993))

(declare-fun b!888431 () Bool)

(declare-fun e!495087 () Bool)

(declare-fun e!495086 () Bool)

(assert (=> b!888431 (= e!495087 e!495086)))

(declare-fun res!602426 () Bool)

(assert (=> b!888431 (=> (not res!602426) (not e!495086))))

(declare-fun e!495088 () Bool)

(assert (=> b!888431 (= res!602426 (not e!495088))))

(declare-fun res!602425 () Bool)

(assert (=> b!888431 (=> (not res!602425) (not e!495088))))

(assert (=> b!888431 (= res!602425 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!109995 () Bool)

(declare-fun res!602427 () Bool)

(assert (=> d!109995 (=> res!602427 e!495087)))

(assert (=> d!109995 (= res!602427 (bvsge #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!109995 (= (arrayNoDuplicates!0 (_keys!9846 thiss!1181) #b00000000000000000000000000000000 Nil!17771) e!495087)))

(declare-fun b!888432 () Bool)

(declare-fun e!495085 () Bool)

(declare-fun call!39458 () Bool)

(assert (=> b!888432 (= e!495085 call!39458)))

(declare-fun b!888433 () Bool)

(assert (=> b!888433 (= e!495086 e!495085)))

(declare-fun c!93787 () Bool)

(assert (=> b!888433 (= c!93787 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888434 () Bool)

(declare-fun contains!4322 (List!17774 (_ BitVec 64)) Bool)

(assert (=> b!888434 (= e!495088 (contains!4322 Nil!17771 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888435 () Bool)

(assert (=> b!888435 (= e!495085 call!39458)))

(declare-fun bm!39455 () Bool)

(assert (=> bm!39455 (= call!39458 (arrayNoDuplicates!0 (_keys!9846 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93787 (Cons!17770 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000) Nil!17771) Nil!17771)))))

(assert (= (and d!109995 (not res!602427)) b!888431))

(assert (= (and b!888431 res!602425) b!888434))

(assert (= (and b!888431 res!602426) b!888433))

(assert (= (and b!888433 c!93787) b!888435))

(assert (= (and b!888433 (not c!93787)) b!888432))

(assert (= (or b!888435 b!888432) bm!39455))

(assert (=> b!888431 m!827805))

(assert (=> b!888431 m!827805))

(declare-fun m!827809 () Bool)

(assert (=> b!888431 m!827809))

(assert (=> b!888433 m!827805))

(assert (=> b!888433 m!827805))

(assert (=> b!888433 m!827809))

(assert (=> b!888434 m!827805))

(assert (=> b!888434 m!827805))

(declare-fun m!827811 () Bool)

(assert (=> b!888434 m!827811))

(assert (=> bm!39455 m!827805))

(declare-fun m!827813 () Bool)

(assert (=> bm!39455 m!827813))

(assert (=> b!888340 d!109995))

(declare-fun b!888478 () Bool)

(declare-fun e!495119 () ListLongMap!10669)

(declare-fun e!495127 () ListLongMap!10669)

(assert (=> b!888478 (= e!495119 e!495127)))

(declare-fun c!93801 () Bool)

(assert (=> b!888478 (= c!93801 (and (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39470 () Bool)

(declare-fun call!39479 () ListLongMap!10669)

(declare-fun call!39475 () ListLongMap!10669)

(assert (=> bm!39470 (= call!39479 call!39475)))

(declare-fun b!888479 () Bool)

(declare-fun call!39478 () ListLongMap!10669)

(declare-fun +!2541 (ListLongMap!10669 tuple2!11958) ListLongMap!10669)

(assert (=> b!888479 (= e!495119 (+!2541 call!39478 (tuple2!11959 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4969 thiss!1181))))))

(declare-fun b!888480 () Bool)

(declare-fun e!495123 () Bool)

(declare-fun e!495120 () Bool)

(assert (=> b!888480 (= e!495123 e!495120)))

(declare-fun res!602446 () Bool)

(declare-fun call!39474 () Bool)

(assert (=> b!888480 (= res!602446 call!39474)))

(assert (=> b!888480 (=> (not res!602446) (not e!495120))))

(declare-fun b!888481 () Bool)

(declare-fun c!93802 () Bool)

(assert (=> b!888481 (= c!93802 (and (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!495116 () ListLongMap!10669)

(assert (=> b!888481 (= e!495127 e!495116)))

(declare-fun d!109997 () Bool)

(declare-fun e!495125 () Bool)

(assert (=> d!109997 e!495125))

(declare-fun res!602452 () Bool)

(assert (=> d!109997 (=> (not res!602452) (not e!495125))))

(assert (=> d!109997 (= res!602452 (or (bvsge #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))))

(declare-fun lt!401816 () ListLongMap!10669)

(declare-fun lt!401806 () ListLongMap!10669)

(assert (=> d!109997 (= lt!401816 lt!401806)))

(declare-fun lt!401811 () Unit!30232)

(declare-fun e!495124 () Unit!30232)

(assert (=> d!109997 (= lt!401811 e!495124)))

(declare-fun c!93805 () Bool)

(declare-fun e!495117 () Bool)

(assert (=> d!109997 (= c!93805 e!495117)))

(declare-fun res!602447 () Bool)

(assert (=> d!109997 (=> (not res!602447) (not e!495117))))

(assert (=> d!109997 (= res!602447 (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!109997 (= lt!401806 e!495119)))

(declare-fun c!93803 () Bool)

(assert (=> d!109997 (= c!93803 (and (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!109997 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!109997 (= (getCurrentListMap!2605 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)) lt!401816)))

(declare-fun bm!39471 () Bool)

(declare-fun call!39476 () ListLongMap!10669)

(assert (=> bm!39471 (= call!39475 call!39476)))

(declare-fun b!888482 () Bool)

(declare-fun Unit!30236 () Unit!30232)

(assert (=> b!888482 (= e!495124 Unit!30236)))

(declare-fun bm!39472 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3289 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 32) Int) ListLongMap!10669)

(assert (=> bm!39472 (= call!39476 (getCurrentListMapNoExtraKeys!3289 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun b!888483 () Bool)

(declare-fun e!495122 () Bool)

(declare-fun apply!398 (ListLongMap!10669 (_ BitVec 64)) V!28833)

(assert (=> b!888483 (= e!495122 (= (apply!398 lt!401816 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4969 thiss!1181)))))

(declare-fun b!888484 () Bool)

(declare-fun res!602449 () Bool)

(assert (=> b!888484 (=> (not res!602449) (not e!495125))))

(declare-fun e!495126 () Bool)

(assert (=> b!888484 (= res!602449 e!495126)))

(declare-fun c!93804 () Bool)

(assert (=> b!888484 (= c!93804 (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!39473 () Bool)

(declare-fun call!39473 () ListLongMap!10669)

(assert (=> bm!39473 (= call!39473 call!39478)))

(declare-fun bm!39474 () Bool)

(declare-fun call!39477 () Bool)

(assert (=> bm!39474 (= call!39477 (contains!4321 lt!401816 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!888485 () Bool)

(declare-fun e!495121 () Bool)

(declare-fun get!13151 (ValueCell!8469 V!28833) V!28833)

(declare-fun dynLambda!1286 (Int (_ BitVec 64)) V!28833)

(assert (=> b!888485 (= e!495121 (= (apply!398 lt!401816 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)) (get!13151 (select (arr!24887 (_values!5156 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1286 (defaultEntry!5171 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!888485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25329 (_values!5156 thiss!1181))))))

(assert (=> b!888485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(declare-fun b!888486 () Bool)

(assert (=> b!888486 (= e!495126 (not call!39477))))

(declare-fun b!888487 () Bool)

(declare-fun lt!401815 () Unit!30232)

(assert (=> b!888487 (= e!495124 lt!401815)))

(declare-fun lt!401819 () ListLongMap!10669)

(assert (=> b!888487 (= lt!401819 (getCurrentListMapNoExtraKeys!3289 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun lt!401817 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401817 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401809 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401809 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401814 () Unit!30232)

(declare-fun addStillContains!327 (ListLongMap!10669 (_ BitVec 64) V!28833 (_ BitVec 64)) Unit!30232)

(assert (=> b!888487 (= lt!401814 (addStillContains!327 lt!401819 lt!401817 (zeroValue!4969 thiss!1181) lt!401809))))

(assert (=> b!888487 (contains!4321 (+!2541 lt!401819 (tuple2!11959 lt!401817 (zeroValue!4969 thiss!1181))) lt!401809)))

(declare-fun lt!401818 () Unit!30232)

(assert (=> b!888487 (= lt!401818 lt!401814)))

(declare-fun lt!401805 () ListLongMap!10669)

(assert (=> b!888487 (= lt!401805 (getCurrentListMapNoExtraKeys!3289 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun lt!401807 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401807 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401820 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401820 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401801 () Unit!30232)

(declare-fun addApplyDifferent!327 (ListLongMap!10669 (_ BitVec 64) V!28833 (_ BitVec 64)) Unit!30232)

(assert (=> b!888487 (= lt!401801 (addApplyDifferent!327 lt!401805 lt!401807 (minValue!4969 thiss!1181) lt!401820))))

(assert (=> b!888487 (= (apply!398 (+!2541 lt!401805 (tuple2!11959 lt!401807 (minValue!4969 thiss!1181))) lt!401820) (apply!398 lt!401805 lt!401820))))

(declare-fun lt!401802 () Unit!30232)

(assert (=> b!888487 (= lt!401802 lt!401801)))

(declare-fun lt!401813 () ListLongMap!10669)

(assert (=> b!888487 (= lt!401813 (getCurrentListMapNoExtraKeys!3289 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun lt!401803 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401803 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401810 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401810 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401822 () Unit!30232)

(assert (=> b!888487 (= lt!401822 (addApplyDifferent!327 lt!401813 lt!401803 (zeroValue!4969 thiss!1181) lt!401810))))

(assert (=> b!888487 (= (apply!398 (+!2541 lt!401813 (tuple2!11959 lt!401803 (zeroValue!4969 thiss!1181))) lt!401810) (apply!398 lt!401813 lt!401810))))

(declare-fun lt!401804 () Unit!30232)

(assert (=> b!888487 (= lt!401804 lt!401822)))

(declare-fun lt!401812 () ListLongMap!10669)

(assert (=> b!888487 (= lt!401812 (getCurrentListMapNoExtraKeys!3289 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)))))

(declare-fun lt!401808 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401808 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401821 () (_ BitVec 64))

(assert (=> b!888487 (= lt!401821 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888487 (= lt!401815 (addApplyDifferent!327 lt!401812 lt!401808 (minValue!4969 thiss!1181) lt!401821))))

(assert (=> b!888487 (= (apply!398 (+!2541 lt!401812 (tuple2!11959 lt!401808 (minValue!4969 thiss!1181))) lt!401821) (apply!398 lt!401812 lt!401821))))

(declare-fun b!888488 () Bool)

(declare-fun e!495118 () Bool)

(assert (=> b!888488 (= e!495118 e!495121)))

(declare-fun res!602448 () Bool)

(assert (=> b!888488 (=> (not res!602448) (not e!495121))))

(assert (=> b!888488 (= res!602448 (contains!4321 lt!401816 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!888488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(declare-fun b!888489 () Bool)

(assert (=> b!888489 (= e!495123 (not call!39474))))

(declare-fun b!888490 () Bool)

(assert (=> b!888490 (= e!495116 call!39473)))

(declare-fun bm!39475 () Bool)

(assert (=> bm!39475 (= call!39474 (contains!4321 lt!401816 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!888491 () Bool)

(assert (=> b!888491 (= e!495125 e!495123)))

(declare-fun c!93800 () Bool)

(assert (=> b!888491 (= c!93800 (not (= (bvand (extraKeys!4865 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!888492 () Bool)

(declare-fun e!495115 () Bool)

(assert (=> b!888492 (= e!495115 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39476 () Bool)

(assert (=> bm!39476 (= call!39478 (+!2541 (ite c!93803 call!39476 (ite c!93801 call!39475 call!39479)) (ite (or c!93803 c!93801) (tuple2!11959 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4969 thiss!1181)) (tuple2!11959 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4969 thiss!1181)))))))

(declare-fun b!888493 () Bool)

(assert (=> b!888493 (= e!495126 e!495122)))

(declare-fun res!602453 () Bool)

(assert (=> b!888493 (= res!602453 call!39477)))

(assert (=> b!888493 (=> (not res!602453) (not e!495122))))

(declare-fun b!888494 () Bool)

(assert (=> b!888494 (= e!495127 call!39473)))

(declare-fun b!888495 () Bool)

(declare-fun res!602454 () Bool)

(assert (=> b!888495 (=> (not res!602454) (not e!495125))))

(assert (=> b!888495 (= res!602454 e!495118)))

(declare-fun res!602450 () Bool)

(assert (=> b!888495 (=> res!602450 e!495118)))

(assert (=> b!888495 (= res!602450 (not e!495115))))

(declare-fun res!602451 () Bool)

(assert (=> b!888495 (=> (not res!602451) (not e!495115))))

(assert (=> b!888495 (= res!602451 (bvslt #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(declare-fun b!888496 () Bool)

(assert (=> b!888496 (= e!495120 (= (apply!398 lt!401816 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4969 thiss!1181)))))

(declare-fun b!888497 () Bool)

(assert (=> b!888497 (= e!495117 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888498 () Bool)

(assert (=> b!888498 (= e!495116 call!39479)))

(assert (= (and d!109997 c!93803) b!888479))

(assert (= (and d!109997 (not c!93803)) b!888478))

(assert (= (and b!888478 c!93801) b!888494))

(assert (= (and b!888478 (not c!93801)) b!888481))

(assert (= (and b!888481 c!93802) b!888490))

(assert (= (and b!888481 (not c!93802)) b!888498))

(assert (= (or b!888490 b!888498) bm!39470))

(assert (= (or b!888494 bm!39470) bm!39471))

(assert (= (or b!888494 b!888490) bm!39473))

(assert (= (or b!888479 bm!39471) bm!39472))

(assert (= (or b!888479 bm!39473) bm!39476))

(assert (= (and d!109997 res!602447) b!888497))

(assert (= (and d!109997 c!93805) b!888487))

(assert (= (and d!109997 (not c!93805)) b!888482))

(assert (= (and d!109997 res!602452) b!888495))

(assert (= (and b!888495 res!602451) b!888492))

(assert (= (and b!888495 (not res!602450)) b!888488))

(assert (= (and b!888488 res!602448) b!888485))

(assert (= (and b!888495 res!602454) b!888484))

(assert (= (and b!888484 c!93804) b!888493))

(assert (= (and b!888484 (not c!93804)) b!888486))

(assert (= (and b!888493 res!602453) b!888483))

(assert (= (or b!888493 b!888486) bm!39474))

(assert (= (and b!888484 res!602449) b!888491))

(assert (= (and b!888491 c!93800) b!888480))

(assert (= (and b!888491 (not c!93800)) b!888489))

(assert (= (and b!888480 res!602446) b!888496))

(assert (= (or b!888480 b!888489) bm!39475))

(declare-fun b_lambda!12909 () Bool)

(assert (=> (not b_lambda!12909) (not b!888485)))

(declare-fun t!25081 () Bool)

(declare-fun tb!5157 () Bool)

(assert (=> (and b!888293 (= (defaultEntry!5171 thiss!1181) (defaultEntry!5171 thiss!1181)) t!25081) tb!5157))

(declare-fun result!10009 () Bool)

(assert (=> tb!5157 (= result!10009 tp_is_empty!17901)))

(assert (=> b!888485 t!25081))

(declare-fun b_and!25833 () Bool)

(assert (= b_and!25829 (and (=> t!25081 result!10009) b_and!25833)))

(assert (=> b!888497 m!827805))

(assert (=> b!888497 m!827805))

(assert (=> b!888497 m!827809))

(declare-fun m!827815 () Bool)

(assert (=> b!888487 m!827815))

(declare-fun m!827817 () Bool)

(assert (=> b!888487 m!827817))

(declare-fun m!827819 () Bool)

(assert (=> b!888487 m!827819))

(declare-fun m!827821 () Bool)

(assert (=> b!888487 m!827821))

(declare-fun m!827823 () Bool)

(assert (=> b!888487 m!827823))

(assert (=> b!888487 m!827805))

(declare-fun m!827825 () Bool)

(assert (=> b!888487 m!827825))

(declare-fun m!827827 () Bool)

(assert (=> b!888487 m!827827))

(declare-fun m!827829 () Bool)

(assert (=> b!888487 m!827829))

(declare-fun m!827831 () Bool)

(assert (=> b!888487 m!827831))

(assert (=> b!888487 m!827829))

(assert (=> b!888487 m!827825))

(declare-fun m!827833 () Bool)

(assert (=> b!888487 m!827833))

(declare-fun m!827835 () Bool)

(assert (=> b!888487 m!827835))

(declare-fun m!827837 () Bool)

(assert (=> b!888487 m!827837))

(assert (=> b!888487 m!827817))

(declare-fun m!827839 () Bool)

(assert (=> b!888487 m!827839))

(declare-fun m!827841 () Bool)

(assert (=> b!888487 m!827841))

(assert (=> b!888487 m!827821))

(declare-fun m!827843 () Bool)

(assert (=> b!888487 m!827843))

(declare-fun m!827845 () Bool)

(assert (=> b!888487 m!827845))

(assert (=> d!109997 m!827775))

(declare-fun m!827847 () Bool)

(assert (=> b!888483 m!827847))

(declare-fun m!827849 () Bool)

(assert (=> b!888485 m!827849))

(declare-fun m!827851 () Bool)

(assert (=> b!888485 m!827851))

(declare-fun m!827853 () Bool)

(assert (=> b!888485 m!827853))

(assert (=> b!888485 m!827805))

(declare-fun m!827855 () Bool)

(assert (=> b!888485 m!827855))

(assert (=> b!888485 m!827805))

(assert (=> b!888485 m!827849))

(assert (=> b!888485 m!827851))

(assert (=> bm!39472 m!827839))

(declare-fun m!827857 () Bool)

(assert (=> b!888479 m!827857))

(declare-fun m!827859 () Bool)

(assert (=> bm!39475 m!827859))

(declare-fun m!827861 () Bool)

(assert (=> b!888496 m!827861))

(assert (=> b!888488 m!827805))

(assert (=> b!888488 m!827805))

(declare-fun m!827863 () Bool)

(assert (=> b!888488 m!827863))

(declare-fun m!827865 () Bool)

(assert (=> bm!39476 m!827865))

(assert (=> b!888492 m!827805))

(assert (=> b!888492 m!827805))

(assert (=> b!888492 m!827809))

(declare-fun m!827867 () Bool)

(assert (=> bm!39474 m!827867))

(assert (=> d!109977 d!109997))

(assert (=> bm!39447 d!109997))

(declare-fun d!109999 () Bool)

(assert (=> d!109999 (= (isEmpty!681 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785)) (not ((_ is Some!444) (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785))))))

(assert (=> d!109973 d!109999))

(declare-fun b!888504 () Bool)

(declare-fun e!495129 () Option!445)

(assert (=> b!888504 (= e!495129 None!443)))

(declare-fun b!888503 () Bool)

(assert (=> b!888503 (= e!495129 (getValueByKey!439 (t!25078 (t!25078 (toList!5350 (map!12112 thiss!1181)))) key!785))))

(declare-fun b!888502 () Bool)

(declare-fun e!495128 () Option!445)

(assert (=> b!888502 (= e!495128 e!495129)))

(declare-fun c!93807 () Bool)

(assert (=> b!888502 (= c!93807 (and ((_ is Cons!17769) (t!25078 (toList!5350 (map!12112 thiss!1181)))) (not (= (_1!5989 (h!18900 (t!25078 (toList!5350 (map!12112 thiss!1181))))) key!785))))))

(declare-fun b!888501 () Bool)

(assert (=> b!888501 (= e!495128 (Some!444 (_2!5989 (h!18900 (t!25078 (toList!5350 (map!12112 thiss!1181)))))))))

(declare-fun d!110001 () Bool)

(declare-fun c!93806 () Bool)

(assert (=> d!110001 (= c!93806 (and ((_ is Cons!17769) (t!25078 (toList!5350 (map!12112 thiss!1181)))) (= (_1!5989 (h!18900 (t!25078 (toList!5350 (map!12112 thiss!1181))))) key!785)))))

(assert (=> d!110001 (= (getValueByKey!439 (t!25078 (toList!5350 (map!12112 thiss!1181))) key!785) e!495128)))

(assert (= (and d!110001 c!93806) b!888501))

(assert (= (and d!110001 (not c!93806)) b!888502))

(assert (= (and b!888502 c!93807) b!888503))

(assert (= (and b!888502 (not c!93807)) b!888504))

(declare-fun m!827869 () Bool)

(assert (=> b!888503 m!827869))

(assert (=> b!888330 d!110001))

(declare-fun d!110003 () Bool)

(declare-fun e!495134 () Bool)

(assert (=> d!110003 e!495134))

(declare-fun res!602457 () Bool)

(assert (=> d!110003 (=> res!602457 e!495134)))

(declare-fun lt!401834 () Bool)

(assert (=> d!110003 (= res!602457 (not lt!401834))))

(declare-fun lt!401831 () Bool)

(assert (=> d!110003 (= lt!401834 lt!401831)))

(declare-fun lt!401832 () Unit!30232)

(declare-fun e!495135 () Unit!30232)

(assert (=> d!110003 (= lt!401832 e!495135)))

(declare-fun c!93810 () Bool)

(assert (=> d!110003 (= c!93810 lt!401831)))

(declare-fun containsKey!421 (List!17773 (_ BitVec 64)) Bool)

(assert (=> d!110003 (= lt!401831 (containsKey!421 (toList!5350 call!39450) (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785)))))

(assert (=> d!110003 (= (contains!4321 call!39450 (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785)) lt!401834)))

(declare-fun b!888511 () Bool)

(declare-fun lt!401833 () Unit!30232)

(assert (=> b!888511 (= e!495135 lt!401833)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!316 (List!17773 (_ BitVec 64)) Unit!30232)

(assert (=> b!888511 (= lt!401833 (lemmaContainsKeyImpliesGetValueByKeyDefined!316 (toList!5350 call!39450) (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785)))))

(assert (=> b!888511 (isDefined!320 (getValueByKey!439 (toList!5350 call!39450) (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785)))))

(declare-fun b!888512 () Bool)

(declare-fun Unit!30237 () Unit!30232)

(assert (=> b!888512 (= e!495135 Unit!30237)))

(declare-fun b!888513 () Bool)

(assert (=> b!888513 (= e!495134 (isDefined!320 (getValueByKey!439 (toList!5350 call!39450) (ite c!93765 (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708)) key!785))))))

(assert (= (and d!110003 c!93810) b!888511))

(assert (= (and d!110003 (not c!93810)) b!888512))

(assert (= (and d!110003 (not res!602457)) b!888513))

(declare-fun m!827871 () Bool)

(assert (=> d!110003 m!827871))

(declare-fun m!827873 () Bool)

(assert (=> b!888511 m!827873))

(declare-fun m!827875 () Bool)

(assert (=> b!888511 m!827875))

(assert (=> b!888511 m!827875))

(declare-fun m!827877 () Bool)

(assert (=> b!888511 m!827877))

(assert (=> b!888513 m!827875))

(assert (=> b!888513 m!827875))

(assert (=> b!888513 m!827877))

(assert (=> bm!39448 d!110003))

(declare-fun d!110005 () Bool)

(declare-fun res!602462 () Bool)

(declare-fun e!495140 () Bool)

(assert (=> d!110005 (=> res!602462 e!495140)))

(assert (=> d!110005 (= res!602462 (= (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110005 (= (arrayContainsKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000) e!495140)))

(declare-fun b!888518 () Bool)

(declare-fun e!495141 () Bool)

(assert (=> b!888518 (= e!495140 e!495141)))

(declare-fun res!602463 () Bool)

(assert (=> b!888518 (=> (not res!602463) (not e!495141))))

(assert (=> b!888518 (= res!602463 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25328 (_keys!9846 thiss!1181))))))

(declare-fun b!888519 () Bool)

(assert (=> b!888519 (= e!495141 (arrayContainsKey!0 (_keys!9846 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110005 (not res!602462)) b!888518))

(assert (= (and b!888518 res!602463) b!888519))

(assert (=> d!110005 m!827805))

(declare-fun m!827879 () Bool)

(assert (=> b!888519 m!827879))

(assert (=> bm!39449 d!110005))

(declare-fun d!110007 () Bool)

(assert (=> d!110007 (arrayContainsKey!0 (_keys!9846 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!401837 () Unit!30232)

(declare-fun choose!13 (array!51758 (_ BitVec 64) (_ BitVec 32)) Unit!30232)

(assert (=> d!110007 (= lt!401837 (choose!13 (_keys!9846 thiss!1181) key!785 (index!37395 lt!401708)))))

(assert (=> d!110007 (bvsge (index!37395 lt!401708) #b00000000000000000000000000000000)))

(assert (=> d!110007 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9846 thiss!1181) key!785 (index!37395 lt!401708)) lt!401837)))

(declare-fun bs!24915 () Bool)

(assert (= bs!24915 d!110007))

(assert (=> bs!24915 m!827759))

(declare-fun m!827881 () Bool)

(assert (=> bs!24915 m!827881))

(assert (=> b!888362 d!110007))

(declare-fun d!110009 () Bool)

(declare-fun e!495144 () Bool)

(assert (=> d!110009 e!495144))

(declare-fun res!602466 () Bool)

(assert (=> d!110009 (=> (not res!602466) (not e!495144))))

(assert (=> d!110009 (= res!602466 (and (bvsge (index!37395 lt!401708) #b00000000000000000000000000000000) (bvslt (index!37395 lt!401708) (size!25328 (_keys!9846 thiss!1181)))))))

(declare-fun lt!401840 () Unit!30232)

(declare-fun choose!1467 (array!51758 array!51760 (_ BitVec 32) (_ BitVec 32) V!28833 V!28833 (_ BitVec 32) Int) Unit!30232)

(assert (=> d!110009 (= lt!401840 (choose!1467 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) (index!37395 lt!401708) (defaultEntry!5171 thiss!1181)))))

(assert (=> d!110009 (validMask!0 (mask!25586 thiss!1181))))

(assert (=> d!110009 (= (lemmaValidKeyInArrayIsInListMap!198 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) (index!37395 lt!401708) (defaultEntry!5171 thiss!1181)) lt!401840)))

(declare-fun b!888522 () Bool)

(assert (=> b!888522 (= e!495144 (contains!4321 (getCurrentListMap!2605 (_keys!9846 thiss!1181) (_values!5156 thiss!1181) (mask!25586 thiss!1181) (extraKeys!4865 thiss!1181) (zeroValue!4969 thiss!1181) (minValue!4969 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5171 thiss!1181)) (select (arr!24886 (_keys!9846 thiss!1181)) (index!37395 lt!401708))))))

(assert (= (and d!110009 res!602466) b!888522))

(declare-fun m!827883 () Bool)

(assert (=> d!110009 m!827883))

(assert (=> d!110009 m!827775))

(assert (=> b!888522 m!827737))

(assert (=> b!888522 m!827767))

(assert (=> b!888522 m!827737))

(assert (=> b!888522 m!827767))

(declare-fun m!827885 () Bool)

(assert (=> b!888522 m!827885))

(assert (=> b!888362 d!110009))

(declare-fun b!888531 () Bool)

(declare-fun e!495149 () (_ BitVec 32))

(declare-fun call!39482 () (_ BitVec 32))

(assert (=> b!888531 (= e!495149 call!39482)))

(declare-fun bm!39479 () Bool)

(assert (=> bm!39479 (= call!39482 (arrayCountValidKeys!0 (_keys!9846 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25328 (_keys!9846 thiss!1181))))))

(declare-fun b!888533 () Bool)

(declare-fun e!495150 () (_ BitVec 32))

(assert (=> b!888533 (= e!495150 #b00000000000000000000000000000000)))

(declare-fun b!888534 () Bool)

(assert (=> b!888534 (= e!495149 (bvadd #b00000000000000000000000000000001 call!39482))))

(declare-fun d!110011 () Bool)

(declare-fun lt!401843 () (_ BitVec 32))

(assert (=> d!110011 (and (bvsge lt!401843 #b00000000000000000000000000000000) (bvsle lt!401843 (bvsub (size!25328 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110011 (= lt!401843 e!495150)))

(declare-fun c!93815 () Bool)

(assert (=> d!110011 (= c!93815 (bvsge #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!110011 (and (bvsle #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25328 (_keys!9846 thiss!1181)) (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!110011 (= (arrayCountValidKeys!0 (_keys!9846 thiss!1181) #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))) lt!401843)))

(declare-fun b!888532 () Bool)

(assert (=> b!888532 (= e!495150 e!495149)))

(declare-fun c!93816 () Bool)

(assert (=> b!888532 (= c!93816 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110011 c!93815) b!888533))

(assert (= (and d!110011 (not c!93815)) b!888532))

(assert (= (and b!888532 c!93816) b!888534))

(assert (= (and b!888532 (not c!93816)) b!888531))

(assert (= (or b!888534 b!888531) bm!39479))

(declare-fun m!827887 () Bool)

(assert (=> bm!39479 m!827887))

(assert (=> b!888532 m!827805))

(assert (=> b!888532 m!827805))

(assert (=> b!888532 m!827809))

(assert (=> b!888338 d!110011))

(declare-fun d!110013 () Bool)

(declare-fun res!602475 () Bool)

(declare-fun e!495153 () Bool)

(assert (=> d!110013 (=> (not res!602475) (not e!495153))))

(assert (=> d!110013 (= res!602475 (validMask!0 (mask!25586 thiss!1181)))))

(assert (=> d!110013 (= (simpleValid!289 thiss!1181) e!495153)))

(declare-fun b!888543 () Bool)

(declare-fun res!602476 () Bool)

(assert (=> b!888543 (=> (not res!602476) (not e!495153))))

(assert (=> b!888543 (= res!602476 (and (= (size!25329 (_values!5156 thiss!1181)) (bvadd (mask!25586 thiss!1181) #b00000000000000000000000000000001)) (= (size!25328 (_keys!9846 thiss!1181)) (size!25329 (_values!5156 thiss!1181))) (bvsge (_size!2032 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2032 thiss!1181) (bvadd (mask!25586 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!888546 () Bool)

(assert (=> b!888546 (= e!495153 (and (bvsge (extraKeys!4865 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4865 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2032 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!888544 () Bool)

(declare-fun res!602477 () Bool)

(assert (=> b!888544 (=> (not res!602477) (not e!495153))))

(declare-fun size!25332 (LongMapFixedSize!3954) (_ BitVec 32))

(assert (=> b!888544 (= res!602477 (bvsge (size!25332 thiss!1181) (_size!2032 thiss!1181)))))

(declare-fun b!888545 () Bool)

(declare-fun res!602478 () Bool)

(assert (=> b!888545 (=> (not res!602478) (not e!495153))))

(assert (=> b!888545 (= res!602478 (= (size!25332 thiss!1181) (bvadd (_size!2032 thiss!1181) (bvsdiv (bvadd (extraKeys!4865 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!110013 res!602475) b!888543))

(assert (= (and b!888543 res!602476) b!888544))

(assert (= (and b!888544 res!602477) b!888545))

(assert (= (and b!888545 res!602478) b!888546))

(assert (=> d!110013 m!827775))

(declare-fun m!827889 () Bool)

(assert (=> b!888544 m!827889))

(assert (=> b!888545 m!827889))

(assert (=> d!109979 d!110013))

(declare-fun d!110015 () Bool)

(declare-fun e!495154 () Bool)

(assert (=> d!110015 e!495154))

(declare-fun res!602479 () Bool)

(assert (=> d!110015 (=> res!602479 e!495154)))

(declare-fun lt!401847 () Bool)

(assert (=> d!110015 (= res!602479 (not lt!401847))))

(declare-fun lt!401844 () Bool)

(assert (=> d!110015 (= lt!401847 lt!401844)))

(declare-fun lt!401845 () Unit!30232)

(declare-fun e!495155 () Unit!30232)

(assert (=> d!110015 (= lt!401845 e!495155)))

(declare-fun c!93817 () Bool)

(assert (=> d!110015 (= c!93817 lt!401844)))

(assert (=> d!110015 (= lt!401844 (containsKey!421 (toList!5350 (map!12112 thiss!1181)) key!785))))

(assert (=> d!110015 (= (contains!4321 (map!12112 thiss!1181) key!785) lt!401847)))

(declare-fun b!888547 () Bool)

(declare-fun lt!401846 () Unit!30232)

(assert (=> b!888547 (= e!495155 lt!401846)))

(assert (=> b!888547 (= lt!401846 (lemmaContainsKeyImpliesGetValueByKeyDefined!316 (toList!5350 (map!12112 thiss!1181)) key!785))))

(assert (=> b!888547 (isDefined!320 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785))))

(declare-fun b!888548 () Bool)

(declare-fun Unit!30238 () Unit!30232)

(assert (=> b!888548 (= e!495155 Unit!30238)))

(declare-fun b!888549 () Bool)

(assert (=> b!888549 (= e!495154 (isDefined!320 (getValueByKey!439 (toList!5350 (map!12112 thiss!1181)) key!785)))))

(assert (= (and d!110015 c!93817) b!888547))

(assert (= (and d!110015 (not c!93817)) b!888548))

(assert (= (and d!110015 (not res!602479)) b!888549))

(declare-fun m!827891 () Bool)

(assert (=> d!110015 m!827891))

(declare-fun m!827893 () Bool)

(assert (=> b!888547 m!827893))

(assert (=> b!888547 m!827705))

(assert (=> b!888547 m!827705))

(assert (=> b!888547 m!827707))

(assert (=> b!888549 m!827705))

(assert (=> b!888549 m!827705))

(assert (=> b!888549 m!827707))

(assert (=> d!109981 d!110015))

(assert (=> d!109981 d!109977))

(assert (=> d!109981 d!109979))

(assert (=> b!888363 d!109985))

(declare-fun d!110017 () Bool)

(declare-fun res!602480 () Bool)

(declare-fun e!495158 () Bool)

(assert (=> d!110017 (=> res!602480 e!495158)))

(assert (=> d!110017 (= res!602480 (bvsge #b00000000000000000000000000000000 (size!25328 (_keys!9846 thiss!1181))))))

(assert (=> d!110017 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) e!495158)))

(declare-fun b!888550 () Bool)

(declare-fun e!495157 () Bool)

(declare-fun e!495156 () Bool)

(assert (=> b!888550 (= e!495157 e!495156)))

(declare-fun lt!401848 () (_ BitVec 64))

(assert (=> b!888550 (= lt!401848 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!401849 () Unit!30232)

(assert (=> b!888550 (= lt!401849 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9846 thiss!1181) lt!401848 #b00000000000000000000000000000000))))

(assert (=> b!888550 (arrayContainsKey!0 (_keys!9846 thiss!1181) lt!401848 #b00000000000000000000000000000000)))

(declare-fun lt!401850 () Unit!30232)

(assert (=> b!888550 (= lt!401850 lt!401849)))

(declare-fun res!602481 () Bool)

(assert (=> b!888550 (= res!602481 (= (seekEntryOrOpen!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000) (_keys!9846 thiss!1181) (mask!25586 thiss!1181)) (Found!8756 #b00000000000000000000000000000000)))))

(assert (=> b!888550 (=> (not res!602481) (not e!495156))))

(declare-fun b!888551 () Bool)

(declare-fun call!39483 () Bool)

(assert (=> b!888551 (= e!495157 call!39483)))

(declare-fun bm!39480 () Bool)

(assert (=> bm!39480 (= call!39483 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!9846 thiss!1181) (mask!25586 thiss!1181)))))

(declare-fun b!888552 () Bool)

(assert (=> b!888552 (= e!495158 e!495157)))

(declare-fun c!93818 () Bool)

(assert (=> b!888552 (= c!93818 (validKeyInArray!0 (select (arr!24886 (_keys!9846 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888553 () Bool)

(assert (=> b!888553 (= e!495156 call!39483)))

(assert (= (and d!110017 (not res!602480)) b!888552))

(assert (= (and b!888552 c!93818) b!888550))

(assert (= (and b!888552 (not c!93818)) b!888551))

(assert (= (and b!888550 res!602481) b!888553))

(assert (= (or b!888553 b!888551) bm!39480))

(assert (=> b!888550 m!827805))

(declare-fun m!827895 () Bool)

(assert (=> b!888550 m!827895))

(declare-fun m!827897 () Bool)

(assert (=> b!888550 m!827897))

(assert (=> b!888550 m!827805))

(declare-fun m!827899 () Bool)

(assert (=> b!888550 m!827899))

(declare-fun m!827901 () Bool)

(assert (=> bm!39480 m!827901))

(assert (=> b!888552 m!827805))

(assert (=> b!888552 m!827805))

(assert (=> b!888552 m!827809))

(assert (=> b!888339 d!110017))

(declare-fun condMapEmpty!28395 () Bool)

(declare-fun mapDefault!28395 () ValueCell!8469)

(assert (=> mapNonEmpty!28394 (= condMapEmpty!28395 (= mapRest!28394 ((as const (Array (_ BitVec 32) ValueCell!8469)) mapDefault!28395)))))

(declare-fun e!495160 () Bool)

(declare-fun mapRes!28395 () Bool)

(assert (=> mapNonEmpty!28394 (= tp!54680 (and e!495160 mapRes!28395))))

(declare-fun b!888554 () Bool)

(declare-fun e!495159 () Bool)

(assert (=> b!888554 (= e!495159 tp_is_empty!17901)))

(declare-fun mapIsEmpty!28395 () Bool)

(assert (=> mapIsEmpty!28395 mapRes!28395))

(declare-fun mapNonEmpty!28395 () Bool)

(declare-fun tp!54681 () Bool)

(assert (=> mapNonEmpty!28395 (= mapRes!28395 (and tp!54681 e!495159))))

(declare-fun mapKey!28395 () (_ BitVec 32))

(declare-fun mapValue!28395 () ValueCell!8469)

(declare-fun mapRest!28395 () (Array (_ BitVec 32) ValueCell!8469))

(assert (=> mapNonEmpty!28395 (= mapRest!28394 (store mapRest!28395 mapKey!28395 mapValue!28395))))

(declare-fun b!888555 () Bool)

(assert (=> b!888555 (= e!495160 tp_is_empty!17901)))

(assert (= (and mapNonEmpty!28394 condMapEmpty!28395) mapIsEmpty!28395))

(assert (= (and mapNonEmpty!28394 (not condMapEmpty!28395)) mapNonEmpty!28395))

(assert (= (and mapNonEmpty!28395 ((_ is ValueCellFull!8469) mapValue!28395)) b!888554))

(assert (= (and mapNonEmpty!28394 ((_ is ValueCellFull!8469) mapDefault!28395)) b!888555))

(declare-fun m!827903 () Bool)

(assert (=> mapNonEmpty!28395 m!827903))

(declare-fun b_lambda!12911 () Bool)

(assert (= b_lambda!12909 (or (and b!888293 b_free!15573) b_lambda!12911)))

(check-sat (not d!109987) (not bm!39452) (not b!888483) (not b!888488) (not b!888479) (not bm!39472) (not b!888552) (not bm!39455) (not d!110013) (not bm!39475) (not b!888434) (not b!888544) (not b!888431) (not mapNonEmpty!28395) (not b!888411) (not b!888511) (not b!888492) (not b!888497) (not d!109983) (not b!888549) (not d!110015) (not b!888420) (not b!888485) (not b!888487) (not b!888433) (not d!109997) (not bm!39474) (not d!109989) (not bm!39476) (not b!888550) (not d!110007) b_and!25833 (not b!888413) (not d!110009) tp_is_empty!17901 (not b!888545) (not b_lambda!12911) (not b!888547) (not b!888519) (not b!888532) (not b!888496) (not b!888503) (not b_next!15573) (not d!110003) (not d!109985) (not b!888513) (not b!888398) (not b!888383) (not bm!39480) (not b!888522) (not bm!39479))
(check-sat b_and!25833 (not b_next!15573))
