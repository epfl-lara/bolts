; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75942 () Bool)

(assert start!75942)

(declare-fun b!893049 () Bool)

(declare-fun b_free!15849 () Bool)

(declare-fun b_next!15849 () Bool)

(assert (=> b!893049 (= b_free!15849 (not b_next!15849))))

(declare-fun tp!55519 () Bool)

(declare-fun b_and!26129 () Bool)

(assert (=> b!893049 (= tp!55519 b_and!26129)))

(declare-fun mapIsEmpty!28823 () Bool)

(declare-fun mapRes!28823 () Bool)

(assert (=> mapIsEmpty!28823 mapRes!28823))

(declare-fun b!893046 () Bool)

(declare-fun res!604955 () Bool)

(declare-fun e!498741 () Bool)

(assert (=> b!893046 (=> res!604955 e!498741)))

(declare-datatypes ((array!52322 0))(
  ( (array!52323 (arr!25162 (Array (_ BitVec 32) (_ BitVec 64))) (size!25607 (_ BitVec 32))) )
))
(declare-datatypes ((V!29201 0))(
  ( (V!29202 (val!9139 Int)) )
))
(declare-datatypes ((ValueCell!8607 0))(
  ( (ValueCellFull!8607 (v!11615 V!29201)) (EmptyCell!8607) )
))
(declare-datatypes ((array!52324 0))(
  ( (array!52325 (arr!25163 (Array (_ BitVec 32) ValueCell!8607)) (size!25608 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4230 0))(
  ( (LongMapFixedSize!4231 (defaultEntry!5315 Int) (mask!25834 (_ BitVec 32)) (extraKeys!5010 (_ BitVec 32)) (zeroValue!5114 V!29201) (minValue!5114 V!29201) (_size!2170 (_ BitVec 32)) (_keys!9996 array!52322) (_values!5301 array!52324) (_vacant!2170 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4230)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4366 (LongMapFixedSize!4230 (_ BitVec 64)) Bool)

(assert (=> b!893046 (= res!604955 (not (contains!4366 thiss!1181 key!785)))))

(declare-fun b!893047 () Bool)

(declare-fun e!498745 () Bool)

(declare-datatypes ((SeekEntryResult!8856 0))(
  ( (MissingZero!8856 (index!37794 (_ BitVec 32))) (Found!8856 (index!37795 (_ BitVec 32))) (Intermediate!8856 (undefined!9668 Bool) (index!37796 (_ BitVec 32)) (x!75917 (_ BitVec 32))) (Undefined!8856) (MissingVacant!8856 (index!37797 (_ BitVec 32))) )
))
(declare-fun lt!403502 () SeekEntryResult!8856)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!893047 (= e!498745 (inRange!0 (index!37795 lt!403502) (mask!25834 thiss!1181)))))

(declare-fun b!893048 () Bool)

(declare-fun e!498742 () Bool)

(declare-fun e!498744 () Bool)

(assert (=> b!893048 (= e!498742 (and e!498744 mapRes!28823))))

(declare-fun condMapEmpty!28823 () Bool)

(declare-fun mapDefault!28823 () ValueCell!8607)

(assert (=> b!893048 (= condMapEmpty!28823 (= (arr!25163 (_values!5301 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8607)) mapDefault!28823)))))

(declare-fun tp_is_empty!18177 () Bool)

(declare-fun e!498740 () Bool)

(declare-fun array_inv!19736 (array!52322) Bool)

(declare-fun array_inv!19737 (array!52324) Bool)

(assert (=> b!893049 (= e!498740 (and tp!55519 tp_is_empty!18177 (array_inv!19736 (_keys!9996 thiss!1181)) (array_inv!19737 (_values!5301 thiss!1181)) e!498742))))

(declare-fun b!893050 () Bool)

(declare-fun res!604953 () Bool)

(declare-fun e!498743 () Bool)

(assert (=> b!893050 (=> (not res!604953) (not e!498743))))

(assert (=> b!893050 (= res!604953 (not (= key!785 (bvneg key!785))))))

(declare-fun res!604956 () Bool)

(assert (=> start!75942 (=> (not res!604956) (not e!498743))))

(declare-fun valid!1624 (LongMapFixedSize!4230) Bool)

(assert (=> start!75942 (= res!604956 (valid!1624 thiss!1181))))

(assert (=> start!75942 e!498743))

(assert (=> start!75942 e!498740))

(assert (=> start!75942 true))

(declare-fun b!893051 () Bool)

(assert (=> b!893051 (= e!498743 (not e!498741))))

(declare-fun res!604954 () Bool)

(assert (=> b!893051 (=> res!604954 e!498741)))

(get-info :version)

(assert (=> b!893051 (= res!604954 ((_ is Found!8856) lt!403502))))

(assert (=> b!893051 e!498745))

(declare-fun res!604952 () Bool)

(assert (=> b!893051 (=> res!604952 e!498745)))

(assert (=> b!893051 (= res!604952 (not ((_ is Found!8856) lt!403502)))))

(declare-datatypes ((Unit!30393 0))(
  ( (Unit!30394) )
))
(declare-fun lt!403503 () Unit!30393)

(declare-fun lemmaSeekEntryGivesInRangeIndex!68 (array!52322 array!52324 (_ BitVec 32) (_ BitVec 32) V!29201 V!29201 (_ BitVec 64)) Unit!30393)

(assert (=> b!893051 (= lt!403503 (lemmaSeekEntryGivesInRangeIndex!68 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52322 (_ BitVec 32)) SeekEntryResult!8856)

(assert (=> b!893051 (= lt!403502 (seekEntry!0 key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun mapNonEmpty!28823 () Bool)

(declare-fun tp!55520 () Bool)

(declare-fun e!498739 () Bool)

(assert (=> mapNonEmpty!28823 (= mapRes!28823 (and tp!55520 e!498739))))

(declare-fun mapValue!28823 () ValueCell!8607)

(declare-fun mapRest!28823 () (Array (_ BitVec 32) ValueCell!8607))

(declare-fun mapKey!28823 () (_ BitVec 32))

(assert (=> mapNonEmpty!28823 (= (arr!25163 (_values!5301 thiss!1181)) (store mapRest!28823 mapKey!28823 mapValue!28823))))

(declare-fun b!893052 () Bool)

(assert (=> b!893052 (= e!498739 tp_is_empty!18177)))

(declare-fun b!893053 () Bool)

(assert (=> b!893053 (= e!498744 tp_is_empty!18177)))

(declare-fun b!893054 () Bool)

(declare-datatypes ((Option!452 0))(
  ( (Some!451 (v!11616 V!29201)) (None!450) )
))
(declare-fun isDefined!327 (Option!452) Bool)

(declare-datatypes ((tuple2!12034 0))(
  ( (tuple2!12035 (_1!6027 (_ BitVec 64)) (_2!6027 V!29201)) )
))
(declare-datatypes ((List!17874 0))(
  ( (Nil!17871) (Cons!17870 (h!19001 tuple2!12034) (t!25199 List!17874)) )
))
(declare-fun getValueByKey!446 (List!17874 (_ BitVec 64)) Option!452)

(declare-datatypes ((ListLongMap!10745 0))(
  ( (ListLongMap!10746 (toList!5388 List!17874)) )
))
(declare-fun map!12211 (LongMapFixedSize!4230) ListLongMap!10745)

(assert (=> b!893054 (= e!498741 (isDefined!327 (getValueByKey!446 (toList!5388 (map!12211 thiss!1181)) key!785)))))

(assert (= (and start!75942 res!604956) b!893050))

(assert (= (and b!893050 res!604953) b!893051))

(assert (= (and b!893051 (not res!604952)) b!893047))

(assert (= (and b!893051 (not res!604954)) b!893046))

(assert (= (and b!893046 (not res!604955)) b!893054))

(assert (= (and b!893048 condMapEmpty!28823) mapIsEmpty!28823))

(assert (= (and b!893048 (not condMapEmpty!28823)) mapNonEmpty!28823))

(assert (= (and mapNonEmpty!28823 ((_ is ValueCellFull!8607) mapValue!28823)) b!893052))

(assert (= (and b!893048 ((_ is ValueCellFull!8607) mapDefault!28823)) b!893053))

(assert (= b!893049 b!893048))

(assert (= start!75942 b!893049))

(declare-fun m!831259 () Bool)

(assert (=> start!75942 m!831259))

(declare-fun m!831261 () Bool)

(assert (=> b!893054 m!831261))

(declare-fun m!831263 () Bool)

(assert (=> b!893054 m!831263))

(assert (=> b!893054 m!831263))

(declare-fun m!831265 () Bool)

(assert (=> b!893054 m!831265))

(declare-fun m!831267 () Bool)

(assert (=> b!893049 m!831267))

(declare-fun m!831269 () Bool)

(assert (=> b!893049 m!831269))

(declare-fun m!831271 () Bool)

(assert (=> b!893047 m!831271))

(declare-fun m!831273 () Bool)

(assert (=> b!893051 m!831273))

(declare-fun m!831275 () Bool)

(assert (=> b!893051 m!831275))

(declare-fun m!831277 () Bool)

(assert (=> mapNonEmpty!28823 m!831277))

(declare-fun m!831279 () Bool)

(assert (=> b!893046 m!831279))

(check-sat (not mapNonEmpty!28823) (not b!893047) (not b_next!15849) (not start!75942) (not b!893054) (not b!893046) tp_is_empty!18177 (not b!893049) b_and!26129 (not b!893051))
(check-sat b_and!26129 (not b_next!15849))
(get-model)

(declare-fun bm!39610 () Bool)

(declare-fun call!39613 () ListLongMap!10745)

(declare-fun getCurrentListMap!2636 (array!52322 array!52324 (_ BitVec 32) (_ BitVec 32) V!29201 V!29201 (_ BitVec 32) Int) ListLongMap!10745)

(assert (=> bm!39610 (= call!39613 (getCurrentListMap!2636 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5315 thiss!1181)))))

(declare-fun b!893102 () Bool)

(declare-fun e!498781 () Unit!30393)

(declare-fun Unit!30395 () Unit!30393)

(assert (=> b!893102 (= e!498781 Unit!30395)))

(declare-fun b!893103 () Bool)

(declare-fun e!498784 () Bool)

(assert (=> b!893103 (= e!498784 (not (= (bvand (extraKeys!5010 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!110203 () Bool)

(declare-fun lt!403554 () Bool)

(declare-fun contains!4367 (ListLongMap!10745 (_ BitVec 64)) Bool)

(assert (=> d!110203 (= lt!403554 (contains!4367 (map!12211 thiss!1181) key!785))))

(declare-fun e!498782 () Bool)

(assert (=> d!110203 (= lt!403554 e!498782)))

(declare-fun c!93990 () Bool)

(assert (=> d!110203 (= c!93990 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110203 (valid!1624 thiss!1181)))

(assert (=> d!110203 (= (contains!4366 thiss!1181 key!785) lt!403554)))

(declare-fun b!893104 () Bool)

(declare-fun e!498785 () Bool)

(assert (=> b!893104 (= e!498785 false)))

(declare-fun c!93991 () Bool)

(declare-fun call!39615 () Bool)

(assert (=> b!893104 (= c!93991 call!39615)))

(declare-fun lt!403545 () Unit!30393)

(assert (=> b!893104 (= lt!403545 e!498781)))

(declare-fun b!893105 () Bool)

(assert (=> b!893105 (= e!498782 e!498784)))

(declare-fun c!93988 () Bool)

(assert (=> b!893105 (= c!93988 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!403540 () SeekEntryResult!8856)

(declare-fun bm!39611 () Bool)

(declare-fun c!93992 () Bool)

(assert (=> bm!39611 (= call!39615 (contains!4367 call!39613 (ite c!93992 (select (arr!25162 (_keys!9996 thiss!1181)) (index!37795 lt!403540)) key!785)))))

(declare-fun b!893106 () Bool)

(assert (=> b!893106 (= c!93992 ((_ is Found!8856) lt!403540))))

(assert (=> b!893106 (= lt!403540 (seekEntry!0 key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(assert (=> b!893106 (= e!498784 e!498785)))

(declare-fun b!893107 () Bool)

(assert (=> b!893107 false))

(declare-fun lt!403547 () Unit!30393)

(declare-fun lt!403544 () Unit!30393)

(assert (=> b!893107 (= lt!403547 lt!403544)))

(declare-fun lt!403548 () SeekEntryResult!8856)

(declare-fun lt!403551 () (_ BitVec 32))

(assert (=> b!893107 (and ((_ is Found!8856) lt!403548) (= (index!37795 lt!403548) lt!403551))))

(assert (=> b!893107 (= lt!403548 (seekEntry!0 key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52322 (_ BitVec 32)) Unit!30393)

(assert (=> b!893107 (= lt!403544 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403551 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun lt!403541 () Unit!30393)

(declare-fun lt!403542 () Unit!30393)

(assert (=> b!893107 (= lt!403541 lt!403542)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52322 (_ BitVec 32)) Bool)

(assert (=> b!893107 (arrayForallSeekEntryOrOpenFound!0 lt!403551 (_keys!9996 thiss!1181) (mask!25834 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30393)

(assert (=> b!893107 (= lt!403542 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9996 thiss!1181) (mask!25834 thiss!1181) #b00000000000000000000000000000000 lt!403551))))

(declare-fun arrayScanForKey!0 (array!52322 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893107 (= lt!403551 (arrayScanForKey!0 (_keys!9996 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!403553 () Unit!30393)

(declare-fun lt!403549 () Unit!30393)

(assert (=> b!893107 (= lt!403553 lt!403549)))

(declare-fun e!498783 () Bool)

(assert (=> b!893107 e!498783))

(declare-fun c!93989 () Bool)

(assert (=> b!893107 (= c!93989 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!163 (array!52322 array!52324 (_ BitVec 32) (_ BitVec 32) V!29201 V!29201 (_ BitVec 64) Int) Unit!30393)

(assert (=> b!893107 (= lt!403549 (lemmaKeyInListMapIsInArray!163 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) key!785 (defaultEntry!5315 thiss!1181)))))

(declare-fun Unit!30396 () Unit!30393)

(assert (=> b!893107 (= e!498781 Unit!30396)))

(declare-fun bm!39612 () Bool)

(declare-fun call!39614 () Bool)

(declare-fun arrayContainsKey!0 (array!52322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39612 (= call!39614 (arrayContainsKey!0 (_keys!9996 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!893108 () Bool)

(assert (=> b!893108 (= e!498782 (not (= (bvand (extraKeys!5010 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!893109 () Bool)

(assert (=> b!893109 (= e!498783 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!893110 () Bool)

(assert (=> b!893110 (= e!498785 true)))

(declare-fun lt!403550 () Unit!30393)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52322 (_ BitVec 64) (_ BitVec 32)) Unit!30393)

(assert (=> b!893110 (= lt!403550 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9996 thiss!1181) key!785 (index!37795 lt!403540)))))

(assert (=> b!893110 call!39614))

(declare-fun lt!403552 () Unit!30393)

(assert (=> b!893110 (= lt!403552 lt!403550)))

(declare-fun lt!403543 () Unit!30393)

(declare-fun lemmaValidKeyInArrayIsInListMap!229 (array!52322 array!52324 (_ BitVec 32) (_ BitVec 32) V!29201 V!29201 (_ BitVec 32) Int) Unit!30393)

(assert (=> b!893110 (= lt!403543 (lemmaValidKeyInArrayIsInListMap!229 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) (index!37795 lt!403540) (defaultEntry!5315 thiss!1181)))))

(assert (=> b!893110 call!39615))

(declare-fun lt!403546 () Unit!30393)

(assert (=> b!893110 (= lt!403546 lt!403543)))

(declare-fun b!893111 () Bool)

(assert (=> b!893111 (= e!498783 call!39614)))

(assert (= (and d!110203 c!93990) b!893108))

(assert (= (and d!110203 (not c!93990)) b!893105))

(assert (= (and b!893105 c!93988) b!893103))

(assert (= (and b!893105 (not c!93988)) b!893106))

(assert (= (and b!893106 c!93992) b!893110))

(assert (= (and b!893106 (not c!93992)) b!893104))

(assert (= (and b!893104 c!93991) b!893107))

(assert (= (and b!893104 (not c!93991)) b!893102))

(assert (= (and b!893107 c!93989) b!893111))

(assert (= (and b!893107 (not c!93989)) b!893109))

(assert (= (or b!893110 b!893111) bm!39612))

(assert (= (or b!893110 b!893104) bm!39610))

(assert (= (or b!893110 b!893104) bm!39611))

(declare-fun m!831303 () Bool)

(assert (=> b!893110 m!831303))

(declare-fun m!831305 () Bool)

(assert (=> b!893110 m!831305))

(declare-fun m!831307 () Bool)

(assert (=> bm!39610 m!831307))

(assert (=> d!110203 m!831261))

(assert (=> d!110203 m!831261))

(declare-fun m!831309 () Bool)

(assert (=> d!110203 m!831309))

(assert (=> d!110203 m!831259))

(declare-fun m!831311 () Bool)

(assert (=> bm!39611 m!831311))

(declare-fun m!831313 () Bool)

(assert (=> bm!39611 m!831313))

(declare-fun m!831315 () Bool)

(assert (=> bm!39612 m!831315))

(declare-fun m!831317 () Bool)

(assert (=> b!893107 m!831317))

(declare-fun m!831319 () Bool)

(assert (=> b!893107 m!831319))

(declare-fun m!831321 () Bool)

(assert (=> b!893107 m!831321))

(declare-fun m!831323 () Bool)

(assert (=> b!893107 m!831323))

(declare-fun m!831325 () Bool)

(assert (=> b!893107 m!831325))

(assert (=> b!893107 m!831275))

(assert (=> b!893106 m!831275))

(assert (=> b!893046 d!110203))

(declare-fun d!110205 () Bool)

(declare-fun e!498788 () Bool)

(assert (=> d!110205 e!498788))

(declare-fun res!604974 () Bool)

(assert (=> d!110205 (=> res!604974 e!498788)))

(declare-fun lt!403560 () SeekEntryResult!8856)

(assert (=> d!110205 (= res!604974 (not ((_ is Found!8856) lt!403560)))))

(assert (=> d!110205 (= lt!403560 (seekEntry!0 key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun lt!403559 () Unit!30393)

(declare-fun choose!1471 (array!52322 array!52324 (_ BitVec 32) (_ BitVec 32) V!29201 V!29201 (_ BitVec 64)) Unit!30393)

(assert (=> d!110205 (= lt!403559 (choose!1471 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110205 (validMask!0 (mask!25834 thiss!1181))))

(assert (=> d!110205 (= (lemmaSeekEntryGivesInRangeIndex!68 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) key!785) lt!403559)))

(declare-fun b!893114 () Bool)

(assert (=> b!893114 (= e!498788 (inRange!0 (index!37795 lt!403560) (mask!25834 thiss!1181)))))

(assert (= (and d!110205 (not res!604974)) b!893114))

(assert (=> d!110205 m!831275))

(declare-fun m!831327 () Bool)

(assert (=> d!110205 m!831327))

(declare-fun m!831329 () Bool)

(assert (=> d!110205 m!831329))

(declare-fun m!831331 () Bool)

(assert (=> b!893114 m!831331))

(assert (=> b!893051 d!110205))

(declare-fun b!893127 () Bool)

(declare-fun e!498797 () SeekEntryResult!8856)

(declare-fun e!498796 () SeekEntryResult!8856)

(assert (=> b!893127 (= e!498797 e!498796)))

(declare-fun lt!403571 () (_ BitVec 64))

(declare-fun lt!403569 () SeekEntryResult!8856)

(assert (=> b!893127 (= lt!403571 (select (arr!25162 (_keys!9996 thiss!1181)) (index!37796 lt!403569)))))

(declare-fun c!94000 () Bool)

(assert (=> b!893127 (= c!94000 (= lt!403571 key!785))))

(declare-fun b!893128 () Bool)

(declare-fun c!93999 () Bool)

(assert (=> b!893128 (= c!93999 (= lt!403571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!498795 () SeekEntryResult!8856)

(assert (=> b!893128 (= e!498796 e!498795)))

(declare-fun b!893129 () Bool)

(assert (=> b!893129 (= e!498796 (Found!8856 (index!37796 lt!403569)))))

(declare-fun b!893130 () Bool)

(assert (=> b!893130 (= e!498795 (MissingZero!8856 (index!37796 lt!403569)))))

(declare-fun b!893131 () Bool)

(declare-fun lt!403572 () SeekEntryResult!8856)

(assert (=> b!893131 (= e!498795 (ite ((_ is MissingVacant!8856) lt!403572) (MissingZero!8856 (index!37797 lt!403572)) lt!403572))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52322 (_ BitVec 32)) SeekEntryResult!8856)

(assert (=> b!893131 (= lt!403572 (seekKeyOrZeroReturnVacant!0 (x!75917 lt!403569) (index!37796 lt!403569) (index!37796 lt!403569) key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun b!893132 () Bool)

(assert (=> b!893132 (= e!498797 Undefined!8856)))

(declare-fun d!110207 () Bool)

(declare-fun lt!403570 () SeekEntryResult!8856)

(assert (=> d!110207 (and (or ((_ is MissingVacant!8856) lt!403570) (not ((_ is Found!8856) lt!403570)) (and (bvsge (index!37795 lt!403570) #b00000000000000000000000000000000) (bvslt (index!37795 lt!403570) (size!25607 (_keys!9996 thiss!1181))))) (not ((_ is MissingVacant!8856) lt!403570)) (or (not ((_ is Found!8856) lt!403570)) (= (select (arr!25162 (_keys!9996 thiss!1181)) (index!37795 lt!403570)) key!785)))))

(assert (=> d!110207 (= lt!403570 e!498797)))

(declare-fun c!94001 () Bool)

(assert (=> d!110207 (= c!94001 (and ((_ is Intermediate!8856) lt!403569) (undefined!9668 lt!403569)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52322 (_ BitVec 32)) SeekEntryResult!8856)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110207 (= lt!403569 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25834 thiss!1181)) key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(assert (=> d!110207 (validMask!0 (mask!25834 thiss!1181))))

(assert (=> d!110207 (= (seekEntry!0 key!785 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)) lt!403570)))

(assert (= (and d!110207 c!94001) b!893132))

(assert (= (and d!110207 (not c!94001)) b!893127))

(assert (= (and b!893127 c!94000) b!893129))

(assert (= (and b!893127 (not c!94000)) b!893128))

(assert (= (and b!893128 c!93999) b!893130))

(assert (= (and b!893128 (not c!93999)) b!893131))

(declare-fun m!831333 () Bool)

(assert (=> b!893127 m!831333))

(declare-fun m!831335 () Bool)

(assert (=> b!893131 m!831335))

(declare-fun m!831337 () Bool)

(assert (=> d!110207 m!831337))

(declare-fun m!831339 () Bool)

(assert (=> d!110207 m!831339))

(assert (=> d!110207 m!831339))

(declare-fun m!831341 () Bool)

(assert (=> d!110207 m!831341))

(assert (=> d!110207 m!831329))

(assert (=> b!893051 d!110207))

(declare-fun d!110209 () Bool)

(assert (=> d!110209 (= (inRange!0 (index!37795 lt!403502) (mask!25834 thiss!1181)) (and (bvsge (index!37795 lt!403502) #b00000000000000000000000000000000) (bvslt (index!37795 lt!403502) (bvadd (mask!25834 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!893047 d!110209))

(declare-fun d!110211 () Bool)

(declare-fun res!604981 () Bool)

(declare-fun e!498800 () Bool)

(assert (=> d!110211 (=> (not res!604981) (not e!498800))))

(declare-fun simpleValid!295 (LongMapFixedSize!4230) Bool)

(assert (=> d!110211 (= res!604981 (simpleValid!295 thiss!1181))))

(assert (=> d!110211 (= (valid!1624 thiss!1181) e!498800)))

(declare-fun b!893139 () Bool)

(declare-fun res!604982 () Bool)

(assert (=> b!893139 (=> (not res!604982) (not e!498800))))

(declare-fun arrayCountValidKeys!0 (array!52322 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893139 (= res!604982 (= (arrayCountValidKeys!0 (_keys!9996 thiss!1181) #b00000000000000000000000000000000 (size!25607 (_keys!9996 thiss!1181))) (_size!2170 thiss!1181)))))

(declare-fun b!893140 () Bool)

(declare-fun res!604983 () Bool)

(assert (=> b!893140 (=> (not res!604983) (not e!498800))))

(assert (=> b!893140 (= res!604983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9996 thiss!1181) (mask!25834 thiss!1181)))))

(declare-fun b!893141 () Bool)

(declare-datatypes ((List!17875 0))(
  ( (Nil!17872) (Cons!17871 (h!19002 (_ BitVec 64)) (t!25200 List!17875)) )
))
(declare-fun arrayNoDuplicates!0 (array!52322 (_ BitVec 32) List!17875) Bool)

(assert (=> b!893141 (= e!498800 (arrayNoDuplicates!0 (_keys!9996 thiss!1181) #b00000000000000000000000000000000 Nil!17872))))

(assert (= (and d!110211 res!604981) b!893139))

(assert (= (and b!893139 res!604982) b!893140))

(assert (= (and b!893140 res!604983) b!893141))

(declare-fun m!831343 () Bool)

(assert (=> d!110211 m!831343))

(declare-fun m!831345 () Bool)

(assert (=> b!893139 m!831345))

(declare-fun m!831347 () Bool)

(assert (=> b!893140 m!831347))

(declare-fun m!831349 () Bool)

(assert (=> b!893141 m!831349))

(assert (=> start!75942 d!110211))

(declare-fun d!110213 () Bool)

(assert (=> d!110213 (= (array_inv!19736 (_keys!9996 thiss!1181)) (bvsge (size!25607 (_keys!9996 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893049 d!110213))

(declare-fun d!110215 () Bool)

(assert (=> d!110215 (= (array_inv!19737 (_values!5301 thiss!1181)) (bvsge (size!25608 (_values!5301 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893049 d!110215))

(declare-fun d!110217 () Bool)

(declare-fun isEmpty!684 (Option!452) Bool)

(assert (=> d!110217 (= (isDefined!327 (getValueByKey!446 (toList!5388 (map!12211 thiss!1181)) key!785)) (not (isEmpty!684 (getValueByKey!446 (toList!5388 (map!12211 thiss!1181)) key!785))))))

(declare-fun bs!25060 () Bool)

(assert (= bs!25060 d!110217))

(assert (=> bs!25060 m!831263))

(declare-fun m!831351 () Bool)

(assert (=> bs!25060 m!831351))

(assert (=> b!893054 d!110217))

(declare-fun b!893153 () Bool)

(declare-fun e!498806 () Option!452)

(assert (=> b!893153 (= e!498806 None!450)))

(declare-fun d!110219 () Bool)

(declare-fun c!94006 () Bool)

(assert (=> d!110219 (= c!94006 (and ((_ is Cons!17870) (toList!5388 (map!12211 thiss!1181))) (= (_1!6027 (h!19001 (toList!5388 (map!12211 thiss!1181)))) key!785)))))

(declare-fun e!498805 () Option!452)

(assert (=> d!110219 (= (getValueByKey!446 (toList!5388 (map!12211 thiss!1181)) key!785) e!498805)))

(declare-fun b!893152 () Bool)

(assert (=> b!893152 (= e!498806 (getValueByKey!446 (t!25199 (toList!5388 (map!12211 thiss!1181))) key!785))))

(declare-fun b!893150 () Bool)

(assert (=> b!893150 (= e!498805 (Some!451 (_2!6027 (h!19001 (toList!5388 (map!12211 thiss!1181))))))))

(declare-fun b!893151 () Bool)

(assert (=> b!893151 (= e!498805 e!498806)))

(declare-fun c!94007 () Bool)

(assert (=> b!893151 (= c!94007 (and ((_ is Cons!17870) (toList!5388 (map!12211 thiss!1181))) (not (= (_1!6027 (h!19001 (toList!5388 (map!12211 thiss!1181)))) key!785))))))

(assert (= (and d!110219 c!94006) b!893150))

(assert (= (and d!110219 (not c!94006)) b!893151))

(assert (= (and b!893151 c!94007) b!893152))

(assert (= (and b!893151 (not c!94007)) b!893153))

(declare-fun m!831353 () Bool)

(assert (=> b!893152 m!831353))

(assert (=> b!893054 d!110219))

(declare-fun d!110221 () Bool)

(assert (=> d!110221 (= (map!12211 thiss!1181) (getCurrentListMap!2636 (_keys!9996 thiss!1181) (_values!5301 thiss!1181) (mask!25834 thiss!1181) (extraKeys!5010 thiss!1181) (zeroValue!5114 thiss!1181) (minValue!5114 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5315 thiss!1181)))))

(declare-fun bs!25061 () Bool)

(assert (= bs!25061 d!110221))

(assert (=> bs!25061 m!831307))

(assert (=> b!893054 d!110221))

(declare-fun b!893161 () Bool)

(declare-fun e!498812 () Bool)

(assert (=> b!893161 (= e!498812 tp_is_empty!18177)))

(declare-fun mapIsEmpty!28829 () Bool)

(declare-fun mapRes!28829 () Bool)

(assert (=> mapIsEmpty!28829 mapRes!28829))

(declare-fun condMapEmpty!28829 () Bool)

(declare-fun mapDefault!28829 () ValueCell!8607)

(assert (=> mapNonEmpty!28823 (= condMapEmpty!28829 (= mapRest!28823 ((as const (Array (_ BitVec 32) ValueCell!8607)) mapDefault!28829)))))

(assert (=> mapNonEmpty!28823 (= tp!55520 (and e!498812 mapRes!28829))))

(declare-fun b!893160 () Bool)

(declare-fun e!498811 () Bool)

(assert (=> b!893160 (= e!498811 tp_is_empty!18177)))

(declare-fun mapNonEmpty!28829 () Bool)

(declare-fun tp!55529 () Bool)

(assert (=> mapNonEmpty!28829 (= mapRes!28829 (and tp!55529 e!498811))))

(declare-fun mapRest!28829 () (Array (_ BitVec 32) ValueCell!8607))

(declare-fun mapValue!28829 () ValueCell!8607)

(declare-fun mapKey!28829 () (_ BitVec 32))

(assert (=> mapNonEmpty!28829 (= mapRest!28823 (store mapRest!28829 mapKey!28829 mapValue!28829))))

(assert (= (and mapNonEmpty!28823 condMapEmpty!28829) mapIsEmpty!28829))

(assert (= (and mapNonEmpty!28823 (not condMapEmpty!28829)) mapNonEmpty!28829))

(assert (= (and mapNonEmpty!28829 ((_ is ValueCellFull!8607) mapValue!28829)) b!893160))

(assert (= (and mapNonEmpty!28823 ((_ is ValueCellFull!8607) mapDefault!28829)) b!893161))

(declare-fun m!831355 () Bool)

(assert (=> mapNonEmpty!28829 m!831355))

(check-sat (not bm!39610) tp_is_empty!18177 (not b!893131) (not bm!39611) (not bm!39612) (not b!893106) (not b!893139) (not mapNonEmpty!28829) (not d!110221) (not b!893141) (not b!893110) (not d!110217) (not b!893107) (not d!110203) (not b_next!15849) (not b!893140) (not d!110205) (not d!110211) (not d!110207) (not b!893114) (not b!893152) b_and!26129)
(check-sat b_and!26129 (not b_next!15849))
