; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110782 () Bool)

(assert start!110782)

(declare-fun b!1256622 () Bool)

(declare-fun b_free!29735 () Bool)

(declare-fun b_next!30439 () Bool)

(assert (=> b!1256622 (= b_free!29735 (not b_next!30439))))

(declare-fun tp!370546 () Bool)

(declare-fun b_and!84879 () Bool)

(assert (=> b!1256622 (= tp!370546 b_and!84879)))

(declare-fun b!1256620 () Bool)

(declare-fun e!799820 () Bool)

(declare-fun e!799818 () Bool)

(assert (=> b!1256620 (= e!799820 e!799818)))

(declare-datatypes ((V!2938 0))(
  ( (V!2939 (val!4180 Int)) )
))
(declare-datatypes ((tuple2!12462 0))(
  ( (tuple2!12463 (_1!7078 (_ BitVec 64)) (_2!7078 V!2938)) )
))
(declare-datatypes ((List!12627 0))(
  ( (Nil!12563) (Cons!12563 (h!17964 tuple2!12462) (t!115759 List!12627)) )
))
(declare-datatypes ((ListLongMap!137 0))(
  ( (ListLongMap!138 (toList!700 List!12627)) )
))
(declare-fun lt!420584 () ListLongMap!137)

(declare-fun call!88102 () ListLongMap!137)

(assert (=> b!1256620 (= lt!420584 call!88102)))

(declare-fun res!556408 () Bool)

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun contains!2120 (ListLongMap!137 (_ BitVec 64)) Bool)

(assert (=> b!1256620 (= res!556408 (not (contains!2120 lt!420584 key!7099)))))

(assert (=> b!1256620 (=> res!556408 e!799818)))

(declare-fun bm!88097 () Bool)

(declare-fun call!88103 () ListLongMap!137)

(declare-datatypes ((array!4612 0))(
  ( (array!4613 (arr!2057 (Array (_ BitVec 32) (_ BitVec 64))) (size!9948 (_ BitVec 32))) )
))
(declare-datatypes ((array!4614 0))(
  ( (array!4615 (arr!2058 (Array (_ BitVec 32) V!2938)) (size!9949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2604 0))(
  ( (LongMapFixedSize!2605 (defaultEntry!1662 Int) (mask!4109 (_ BitVec 32)) (extraKeys!1549 (_ BitVec 32)) (zeroValue!1559 V!2938) (minValue!1559 V!2938) (_size!2696 (_ BitVec 32)) (_keys!1596 array!4612) (_values!1581 array!4614) (_vacant!1363 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5115 0))(
  ( (Cell!5116 (v!20761 LongMapFixedSize!2604)) )
))
(declare-datatypes ((MutLongMap!1302 0))(
  ( (LongMap!1302 (underlying!2820 Cell!5115)) (MutLongMapExt!1301 (__x!8196 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1302)

(declare-fun abstractMap!47 (MutLongMap!1302) ListLongMap!137)

(assert (=> bm!88097 (= call!88103 (abstractMap!47 thiss!47531))))

(declare-fun b!1256621 () Bool)

(declare-fun res!556406 () Bool)

(declare-fun e!799819 () Bool)

(assert (=> b!1256621 (=> (not res!556406) (not e!799819))))

(get-info :version)

(assert (=> b!1256621 (= res!556406 ((_ is LongMap!1302) thiss!47531))))

(declare-fun res!556405 () Bool)

(assert (=> start!110782 (=> (not res!556405) (not e!799819))))

(declare-fun valid!1036 (MutLongMap!1302) Bool)

(assert (=> start!110782 (= res!556405 (valid!1036 thiss!47531))))

(assert (=> start!110782 e!799819))

(declare-fun e!799817 () Bool)

(assert (=> start!110782 e!799817))

(assert (=> start!110782 true))

(declare-fun tp_is_empty!6499 () Bool)

(assert (=> start!110782 tp_is_empty!6499))

(declare-fun e!799821 () Bool)

(declare-fun e!799813 () Bool)

(declare-fun array_inv!1497 (array!4612) Bool)

(declare-fun array_inv!1498 (array!4614) Bool)

(assert (=> b!1256622 (= e!799813 (and tp!370546 tp_is_empty!6499 (array_inv!1497 (_keys!1596 (v!20761 (underlying!2820 thiss!47531)))) (array_inv!1498 (_values!1581 (v!20761 (underlying!2820 thiss!47531)))) e!799821))))

(declare-fun b!1256623 () Bool)

(declare-fun mapRes!6255 () Bool)

(assert (=> b!1256623 (= e!799821 (and tp_is_empty!6499 mapRes!6255))))

(declare-fun condMapEmpty!6255 () Bool)

(declare-fun mapDefault!6255 () V!2938)

(assert (=> b!1256623 (= condMapEmpty!6255 (= (arr!2058 (_values!1581 (v!20761 (underlying!2820 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2938)) mapDefault!6255)))))

(declare-fun b!1256624 () Bool)

(assert (=> b!1256624 (= e!799820 (not (= call!88102 call!88103)))))

(declare-fun b!1256625 () Bool)

(declare-fun e!799814 () Bool)

(assert (=> b!1256625 (= e!799814 e!799820)))

(declare-fun c!208598 () Bool)

(declare-datatypes ((tuple2!12464 0))(
  ( (tuple2!12465 (_1!7079 Bool) (_2!7079 MutLongMap!1302)) )
))
(declare-fun lt!420585 () tuple2!12464)

(assert (=> b!1256625 (= c!208598 (_1!7079 lt!420585))))

(declare-fun mapIsEmpty!6255 () Bool)

(assert (=> mapIsEmpty!6255 mapRes!6255))

(declare-fun b!1256626 () Bool)

(declare-fun e!799815 () Bool)

(assert (=> b!1256626 (= e!799817 e!799815)))

(declare-fun bm!88098 () Bool)

(assert (=> bm!88098 (= call!88102 (abstractMap!47 (_2!7079 lt!420585)))))

(declare-fun v!11775 () V!2938)

(declare-fun b!1256627 () Bool)

(declare-fun +!33 (ListLongMap!137 tuple2!12462) ListLongMap!137)

(assert (=> b!1256627 (= e!799818 (not (= lt!420584 (+!33 call!88103 (tuple2!12463 key!7099 v!11775)))))))

(declare-fun b!1256628 () Bool)

(assert (=> b!1256628 (= e!799819 e!799814)))

(declare-fun res!556407 () Bool)

(assert (=> b!1256628 (=> res!556407 e!799814)))

(assert (=> b!1256628 (= res!556407 (not (valid!1036 (_2!7079 lt!420585))))))

(declare-fun update!77 (MutLongMap!1302 (_ BitVec 64) V!2938) tuple2!12464)

(assert (=> b!1256628 (= lt!420585 (update!77 thiss!47531 key!7099 v!11775))))

(declare-fun b!1256629 () Bool)

(assert (=> b!1256629 (= e!799815 e!799813)))

(declare-fun mapNonEmpty!6255 () Bool)

(declare-fun tp!370545 () Bool)

(assert (=> mapNonEmpty!6255 (= mapRes!6255 (and tp!370545 tp_is_empty!6499))))

(declare-fun mapKey!6255 () (_ BitVec 32))

(declare-fun mapValue!6255 () V!2938)

(declare-fun mapRest!6255 () (Array (_ BitVec 32) V!2938))

(assert (=> mapNonEmpty!6255 (= (arr!2058 (_values!1581 (v!20761 (underlying!2820 thiss!47531)))) (store mapRest!6255 mapKey!6255 mapValue!6255))))

(assert (= (and start!110782 res!556405) b!1256621))

(assert (= (and b!1256621 res!556406) b!1256628))

(assert (= (and b!1256628 (not res!556407)) b!1256625))

(assert (= (and b!1256625 c!208598) b!1256620))

(assert (= (and b!1256625 (not c!208598)) b!1256624))

(assert (= (and b!1256620 (not res!556408)) b!1256627))

(assert (= (or b!1256627 b!1256624) bm!88097))

(assert (= (or b!1256620 b!1256624) bm!88098))

(assert (= (and b!1256623 condMapEmpty!6255) mapIsEmpty!6255))

(assert (= (and b!1256623 (not condMapEmpty!6255)) mapNonEmpty!6255))

(assert (= b!1256622 b!1256623))

(assert (= b!1256629 b!1256622))

(assert (= b!1256626 b!1256629))

(assert (= (and start!110782 ((_ is LongMap!1302) thiss!47531)) b!1256626))

(declare-fun m!1414929 () Bool)

(assert (=> mapNonEmpty!6255 m!1414929))

(declare-fun m!1414931 () Bool)

(assert (=> b!1256620 m!1414931))

(declare-fun m!1414933 () Bool)

(assert (=> b!1256622 m!1414933))

(declare-fun m!1414935 () Bool)

(assert (=> b!1256622 m!1414935))

(declare-fun m!1414937 () Bool)

(assert (=> b!1256627 m!1414937))

(declare-fun m!1414939 () Bool)

(assert (=> start!110782 m!1414939))

(declare-fun m!1414941 () Bool)

(assert (=> b!1256628 m!1414941))

(declare-fun m!1414943 () Bool)

(assert (=> b!1256628 m!1414943))

(declare-fun m!1414945 () Bool)

(assert (=> bm!88098 m!1414945))

(declare-fun m!1414947 () Bool)

(assert (=> bm!88097 m!1414947))

(check-sat (not mapNonEmpty!6255) (not bm!88097) (not b_next!30439) (not b!1256628) (not start!110782) (not bm!88098) (not b!1256622) tp_is_empty!6499 b_and!84879 (not b!1256627) (not b!1256620))
(check-sat b_and!84879 (not b_next!30439))
(get-model)

(declare-fun d!355150 () Bool)

(declare-fun c!208601 () Bool)

(assert (=> d!355150 (= c!208601 ((_ is LongMap!1302) thiss!47531))))

(declare-fun e!799824 () Bool)

(assert (=> d!355150 (= (valid!1036 thiss!47531) e!799824)))

(declare-fun b!1256634 () Bool)

(declare-fun valid!1037 (MutLongMap!1302) Bool)

(assert (=> b!1256634 (= e!799824 (valid!1037 thiss!47531))))

(declare-fun b!1256635 () Bool)

(declare-fun valid!1038 (MutLongMap!1302) Bool)

(assert (=> b!1256635 (= e!799824 (valid!1038 thiss!47531))))

(assert (= (and d!355150 c!208601) b!1256634))

(assert (= (and d!355150 (not c!208601)) b!1256635))

(declare-fun m!1414949 () Bool)

(assert (=> b!1256634 m!1414949))

(declare-fun m!1414951 () Bool)

(assert (=> b!1256635 m!1414951))

(assert (=> start!110782 d!355150))

(declare-fun d!355152 () Bool)

(assert (=> d!355152 (= (array_inv!1497 (_keys!1596 (v!20761 (underlying!2820 thiss!47531)))) (bvsge (size!9948 (_keys!1596 (v!20761 (underlying!2820 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256622 d!355152))

(declare-fun d!355154 () Bool)

(assert (=> d!355154 (= (array_inv!1498 (_values!1581 (v!20761 (underlying!2820 thiss!47531)))) (bvsge (size!9949 (_values!1581 (v!20761 (underlying!2820 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256622 d!355154))

(declare-fun d!355156 () Bool)

(declare-fun e!799827 () Bool)

(assert (=> d!355156 e!799827))

(declare-fun res!556413 () Bool)

(assert (=> d!355156 (=> (not res!556413) (not e!799827))))

(declare-fun lt!420594 () ListLongMap!137)

(assert (=> d!355156 (= res!556413 (contains!2120 lt!420594 (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun lt!420597 () List!12627)

(assert (=> d!355156 (= lt!420594 (ListLongMap!138 lt!420597))))

(declare-datatypes ((Unit!18842 0))(
  ( (Unit!18843) )
))
(declare-fun lt!420596 () Unit!18842)

(declare-fun lt!420595 () Unit!18842)

(assert (=> d!355156 (= lt!420596 lt!420595)))

(declare-datatypes ((Option!2526 0))(
  ( (None!2525) (Some!2525 (v!20766 V!2938)) )
))
(declare-fun getValueByKey!24 (List!12627 (_ BitVec 64)) Option!2526)

(assert (=> d!355156 (= (getValueByKey!24 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775))) (Some!2525 (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun lemmaContainsTupThenGetReturnValue!10 (List!12627 (_ BitVec 64) V!2938) Unit!18842)

(assert (=> d!355156 (= lt!420595 (lemmaContainsTupThenGetReturnValue!10 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun insertStrictlySorted!6 (List!12627 (_ BitVec 64) V!2938) List!12627)

(assert (=> d!355156 (= lt!420597 (insertStrictlySorted!6 (toList!700 call!88103) (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> d!355156 (= (+!33 call!88103 (tuple2!12463 key!7099 v!11775)) lt!420594)))

(declare-fun b!1256640 () Bool)

(declare-fun res!556414 () Bool)

(assert (=> b!1256640 (=> (not res!556414) (not e!799827))))

(assert (=> b!1256640 (= res!556414 (= (getValueByKey!24 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775))) (Some!2525 (_2!7078 (tuple2!12463 key!7099 v!11775)))))))

(declare-fun b!1256641 () Bool)

(declare-fun contains!2121 (List!12627 tuple2!12462) Bool)

(assert (=> b!1256641 (= e!799827 (contains!2121 (toList!700 lt!420594) (tuple2!12463 key!7099 v!11775)))))

(assert (= (and d!355156 res!556413) b!1256640))

(assert (= (and b!1256640 res!556414) b!1256641))

(declare-fun m!1414953 () Bool)

(assert (=> d!355156 m!1414953))

(declare-fun m!1414955 () Bool)

(assert (=> d!355156 m!1414955))

(declare-fun m!1414957 () Bool)

(assert (=> d!355156 m!1414957))

(declare-fun m!1414959 () Bool)

(assert (=> d!355156 m!1414959))

(declare-fun m!1414961 () Bool)

(assert (=> b!1256640 m!1414961))

(declare-fun m!1414963 () Bool)

(assert (=> b!1256641 m!1414963))

(assert (=> b!1256627 d!355156))

(declare-fun d!355158 () Bool)

(declare-fun c!208604 () Bool)

(assert (=> d!355158 (= c!208604 ((_ is LongMap!1302) (_2!7079 lt!420585)))))

(declare-fun e!799830 () ListLongMap!137)

(assert (=> d!355158 (= (abstractMap!47 (_2!7079 lt!420585)) e!799830)))

(declare-fun b!1256646 () Bool)

(declare-fun abstractMap!48 (MutLongMap!1302) ListLongMap!137)

(assert (=> b!1256646 (= e!799830 (abstractMap!48 (_2!7079 lt!420585)))))

(declare-fun b!1256647 () Bool)

(declare-fun abstractMap!49 (MutLongMap!1302) ListLongMap!137)

(assert (=> b!1256647 (= e!799830 (abstractMap!49 (_2!7079 lt!420585)))))

(assert (= (and d!355158 c!208604) b!1256646))

(assert (= (and d!355158 (not c!208604)) b!1256647))

(declare-fun m!1414965 () Bool)

(assert (=> b!1256646 m!1414965))

(declare-fun m!1414967 () Bool)

(assert (=> b!1256647 m!1414967))

(assert (=> bm!88098 d!355158))

(declare-fun d!355160 () Bool)

(declare-fun c!208605 () Bool)

(assert (=> d!355160 (= c!208605 ((_ is LongMap!1302) (_2!7079 lt!420585)))))

(declare-fun e!799831 () Bool)

(assert (=> d!355160 (= (valid!1036 (_2!7079 lt!420585)) e!799831)))

(declare-fun b!1256648 () Bool)

(assert (=> b!1256648 (= e!799831 (valid!1037 (_2!7079 lt!420585)))))

(declare-fun b!1256649 () Bool)

(assert (=> b!1256649 (= e!799831 (valid!1038 (_2!7079 lt!420585)))))

(assert (= (and d!355160 c!208605) b!1256648))

(assert (= (and d!355160 (not c!208605)) b!1256649))

(declare-fun m!1414969 () Bool)

(assert (=> b!1256648 m!1414969))

(declare-fun m!1414971 () Bool)

(assert (=> b!1256649 m!1414971))

(assert (=> b!1256628 d!355160))

(declare-fun b!1256668 () Bool)

(declare-fun call!88108 () ListLongMap!137)

(declare-fun e!799846 () Bool)

(declare-fun call!88109 () ListLongMap!137)

(assert (=> b!1256668 (= e!799846 (= call!88109 (+!33 call!88108 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256669 () Bool)

(declare-fun e!799843 () tuple2!12464)

(declare-datatypes ((tuple2!12466 0))(
  ( (tuple2!12467 (_1!7080 Bool) (_2!7080 LongMapFixedSize!2604)) )
))
(declare-fun lt!420609 () tuple2!12466)

(assert (=> b!1256669 (= e!799843 (tuple2!12465 (_1!7080 lt!420609) (LongMap!1302 (Cell!5116 (_2!7080 lt!420609)))))))

(declare-fun lt!420606 () tuple2!12464)

(declare-fun update!78 (LongMapFixedSize!2604 (_ BitVec 64) V!2938) tuple2!12466)

(assert (=> b!1256669 (= lt!420609 (update!78 (v!20761 (underlying!2820 (_2!7079 lt!420606))) key!7099 v!11775))))

(declare-fun b!1256670 () Bool)

(assert (=> b!1256670 (= e!799843 (tuple2!12465 false (_2!7079 lt!420606)))))

(declare-fun b!1256671 () Bool)

(declare-fun e!799845 () Bool)

(assert (=> b!1256671 (= e!799845 e!799846)))

(declare-fun res!556421 () Bool)

(assert (=> b!1256671 (= res!556421 (contains!2120 call!88109 key!7099))))

(assert (=> b!1256671 (=> (not res!556421) (not e!799846))))

(declare-fun b!1256672 () Bool)

(declare-fun e!799844 () tuple2!12464)

(declare-fun lt!420608 () tuple2!12464)

(assert (=> b!1256672 (= e!799844 (tuple2!12465 (_1!7079 lt!420608) (_2!7079 lt!420608)))))

(declare-fun repack!13 (MutLongMap!1302) tuple2!12464)

(assert (=> b!1256672 (= lt!420608 (repack!13 thiss!47531))))

(declare-fun d!355162 () Bool)

(declare-fun e!799842 () Bool)

(assert (=> d!355162 e!799842))

(declare-fun res!556423 () Bool)

(assert (=> d!355162 (=> (not res!556423) (not e!799842))))

(declare-fun lt!420607 () tuple2!12464)

(assert (=> d!355162 (= res!556423 ((_ is LongMap!1302) (_2!7079 lt!420607)))))

(assert (=> d!355162 (= lt!420607 e!799843)))

(declare-fun c!208614 () Bool)

(assert (=> d!355162 (= c!208614 (_1!7079 lt!420606))))

(assert (=> d!355162 (= lt!420606 e!799844)))

(declare-fun c!208613 () Bool)

(declare-fun imbalanced!9 (MutLongMap!1302) Bool)

(assert (=> d!355162 (= c!208613 (imbalanced!9 thiss!47531))))

(assert (=> d!355162 (valid!1037 thiss!47531)))

(assert (=> d!355162 (= (update!77 thiss!47531 key!7099 v!11775) lt!420607)))

(declare-fun b!1256673 () Bool)

(declare-fun res!556422 () Bool)

(assert (=> b!1256673 (=> (not res!556422) (not e!799842))))

(assert (=> b!1256673 (= res!556422 (valid!1037 (_2!7079 lt!420607)))))

(declare-fun b!1256674 () Bool)

(assert (=> b!1256674 (= e!799845 (= call!88109 call!88108))))

(declare-fun b!1256675 () Bool)

(assert (=> b!1256675 (= e!799844 (tuple2!12465 true thiss!47531))))

(declare-fun b!1256676 () Bool)

(assert (=> b!1256676 (= e!799842 e!799845)))

(declare-fun c!208612 () Bool)

(assert (=> b!1256676 (= c!208612 (_1!7079 lt!420607))))

(declare-fun bm!88103 () Bool)

(declare-fun map!2743 (MutLongMap!1302) ListLongMap!137)

(assert (=> bm!88103 (= call!88109 (map!2743 (_2!7079 lt!420607)))))

(declare-fun bm!88104 () Bool)

(assert (=> bm!88104 (= call!88108 (map!2743 thiss!47531))))

(assert (= (and d!355162 c!208613) b!1256672))

(assert (= (and d!355162 (not c!208613)) b!1256675))

(assert (= (and d!355162 c!208614) b!1256669))

(assert (= (and d!355162 (not c!208614)) b!1256670))

(assert (= (and d!355162 res!556423) b!1256673))

(assert (= (and b!1256673 res!556422) b!1256676))

(assert (= (and b!1256676 c!208612) b!1256671))

(assert (= (and b!1256676 (not c!208612)) b!1256674))

(assert (= (and b!1256671 res!556421) b!1256668))

(assert (= (or b!1256668 b!1256674) bm!88104))

(assert (= (or b!1256671 b!1256668 b!1256674) bm!88103))

(declare-fun m!1414973 () Bool)

(assert (=> b!1256668 m!1414973))

(declare-fun m!1414975 () Bool)

(assert (=> b!1256671 m!1414975))

(declare-fun m!1414977 () Bool)

(assert (=> b!1256673 m!1414977))

(declare-fun m!1414979 () Bool)

(assert (=> bm!88103 m!1414979))

(declare-fun m!1414981 () Bool)

(assert (=> b!1256672 m!1414981))

(declare-fun m!1414983 () Bool)

(assert (=> b!1256669 m!1414983))

(declare-fun m!1414985 () Bool)

(assert (=> d!355162 m!1414985))

(assert (=> d!355162 m!1414949))

(declare-fun m!1414987 () Bool)

(assert (=> bm!88104 m!1414987))

(assert (=> b!1256628 d!355162))

(declare-fun d!355164 () Bool)

(declare-fun e!799851 () Bool)

(assert (=> d!355164 e!799851))

(declare-fun res!556426 () Bool)

(assert (=> d!355164 (=> res!556426 e!799851)))

(declare-fun lt!420619 () Bool)

(assert (=> d!355164 (= res!556426 (not lt!420619))))

(declare-fun lt!420620 () Bool)

(assert (=> d!355164 (= lt!420619 lt!420620)))

(declare-fun lt!420618 () Unit!18842)

(declare-fun e!799852 () Unit!18842)

(assert (=> d!355164 (= lt!420618 e!799852)))

(declare-fun c!208617 () Bool)

(assert (=> d!355164 (= c!208617 lt!420620)))

(declare-fun containsKey!33 (List!12627 (_ BitVec 64)) Bool)

(assert (=> d!355164 (= lt!420620 (containsKey!33 (toList!700 lt!420584) key!7099))))

(assert (=> d!355164 (= (contains!2120 lt!420584 key!7099) lt!420619)))

(declare-fun b!1256683 () Bool)

(declare-fun lt!420621 () Unit!18842)

(assert (=> b!1256683 (= e!799852 lt!420621)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!16 (List!12627 (_ BitVec 64)) Unit!18842)

(assert (=> b!1256683 (= lt!420621 (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!700 lt!420584) key!7099))))

(declare-fun isDefined!2162 (Option!2526) Bool)

(assert (=> b!1256683 (isDefined!2162 (getValueByKey!24 (toList!700 lt!420584) key!7099))))

(declare-fun b!1256684 () Bool)

(declare-fun Unit!18844 () Unit!18842)

(assert (=> b!1256684 (= e!799852 Unit!18844)))

(declare-fun b!1256685 () Bool)

(assert (=> b!1256685 (= e!799851 (isDefined!2162 (getValueByKey!24 (toList!700 lt!420584) key!7099)))))

(assert (= (and d!355164 c!208617) b!1256683))

(assert (= (and d!355164 (not c!208617)) b!1256684))

(assert (= (and d!355164 (not res!556426)) b!1256685))

(declare-fun m!1414989 () Bool)

(assert (=> d!355164 m!1414989))

(declare-fun m!1414991 () Bool)

(assert (=> b!1256683 m!1414991))

(declare-fun m!1414993 () Bool)

(assert (=> b!1256683 m!1414993))

(assert (=> b!1256683 m!1414993))

(declare-fun m!1414995 () Bool)

(assert (=> b!1256683 m!1414995))

(assert (=> b!1256685 m!1414993))

(assert (=> b!1256685 m!1414993))

(assert (=> b!1256685 m!1414995))

(assert (=> b!1256620 d!355164))

(declare-fun d!355166 () Bool)

(declare-fun c!208618 () Bool)

(assert (=> d!355166 (= c!208618 ((_ is LongMap!1302) thiss!47531))))

(declare-fun e!799853 () ListLongMap!137)

(assert (=> d!355166 (= (abstractMap!47 thiss!47531) e!799853)))

(declare-fun b!1256686 () Bool)

(assert (=> b!1256686 (= e!799853 (abstractMap!48 thiss!47531))))

(declare-fun b!1256687 () Bool)

(assert (=> b!1256687 (= e!799853 (abstractMap!49 thiss!47531))))

(assert (= (and d!355166 c!208618) b!1256686))

(assert (= (and d!355166 (not c!208618)) b!1256687))

(declare-fun m!1414997 () Bool)

(assert (=> b!1256686 m!1414997))

(declare-fun m!1414999 () Bool)

(assert (=> b!1256687 m!1414999))

(assert (=> bm!88097 d!355166))

(declare-fun condMapEmpty!6258 () Bool)

(declare-fun mapDefault!6258 () V!2938)

(assert (=> mapNonEmpty!6255 (= condMapEmpty!6258 (= mapRest!6255 ((as const (Array (_ BitVec 32) V!2938)) mapDefault!6258)))))

(declare-fun mapRes!6258 () Bool)

(assert (=> mapNonEmpty!6255 (= tp!370545 (and tp_is_empty!6499 mapRes!6258))))

(declare-fun mapIsEmpty!6258 () Bool)

(assert (=> mapIsEmpty!6258 mapRes!6258))

(declare-fun mapNonEmpty!6258 () Bool)

(declare-fun tp!370549 () Bool)

(assert (=> mapNonEmpty!6258 (= mapRes!6258 (and tp!370549 tp_is_empty!6499))))

(declare-fun mapValue!6258 () V!2938)

(declare-fun mapRest!6258 () (Array (_ BitVec 32) V!2938))

(declare-fun mapKey!6258 () (_ BitVec 32))

(assert (=> mapNonEmpty!6258 (= mapRest!6255 (store mapRest!6258 mapKey!6258 mapValue!6258))))

(assert (= (and mapNonEmpty!6255 condMapEmpty!6258) mapIsEmpty!6258))

(assert (= (and mapNonEmpty!6255 (not condMapEmpty!6258)) mapNonEmpty!6258))

(declare-fun m!1415001 () Bool)

(assert (=> mapNonEmpty!6258 m!1415001))

(check-sat (not mapNonEmpty!6258) (not bm!88104) (not b!1256673) (not b!1256685) (not b_next!30439) (not b!1256635) (not b!1256683) (not b!1256646) (not b!1256648) (not b!1256641) (not d!355162) (not bm!88103) (not d!355164) (not b!1256640) (not b!1256672) (not b!1256649) (not b!1256686) (not b!1256634) (not b!1256669) (not d!355156) (not b!1256671) (not b!1256687) (not b!1256647) (not b!1256668) tp_is_empty!6499 b_and!84879)
(check-sat b_and!84879 (not b_next!30439))
(get-model)

(declare-fun b!1256701 () Bool)

(declare-fun e!799859 () Option!2526)

(assert (=> b!1256701 (= e!799859 None!2525)))

(declare-fun b!1256698 () Bool)

(declare-fun e!799858 () Option!2526)

(assert (=> b!1256698 (= e!799858 (Some!2525 (_2!7078 (h!17964 (toList!700 lt!420594)))))))

(declare-fun b!1256699 () Bool)

(assert (=> b!1256699 (= e!799858 e!799859)))

(declare-fun c!208624 () Bool)

(assert (=> b!1256699 (= c!208624 (and ((_ is Cons!12563) (toList!700 lt!420594)) (not (= (_1!7078 (h!17964 (toList!700 lt!420594))) (_1!7078 (tuple2!12463 key!7099 v!11775))))))))

(declare-fun b!1256700 () Bool)

(assert (=> b!1256700 (= e!799859 (getValueByKey!24 (t!115759 (toList!700 lt!420594)) (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun c!208623 () Bool)

(declare-fun d!355168 () Bool)

(assert (=> d!355168 (= c!208623 (and ((_ is Cons!12563) (toList!700 lt!420594)) (= (_1!7078 (h!17964 (toList!700 lt!420594))) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (=> d!355168 (= (getValueByKey!24 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775))) e!799858)))

(assert (= (and d!355168 c!208623) b!1256698))

(assert (= (and d!355168 (not c!208623)) b!1256699))

(assert (= (and b!1256699 c!208624) b!1256700))

(assert (= (and b!1256699 (not c!208624)) b!1256701))

(declare-fun m!1415003 () Bool)

(assert (=> b!1256700 m!1415003))

(assert (=> b!1256640 d!355168))

(declare-fun d!355170 () Bool)

(declare-fun e!799860 () Bool)

(assert (=> d!355170 e!799860))

(declare-fun res!556427 () Bool)

(assert (=> d!355170 (=> (not res!556427) (not e!799860))))

(declare-fun lt!420622 () ListLongMap!137)

(assert (=> d!355170 (= res!556427 (contains!2120 lt!420622 (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun lt!420625 () List!12627)

(assert (=> d!355170 (= lt!420622 (ListLongMap!138 lt!420625))))

(declare-fun lt!420624 () Unit!18842)

(declare-fun lt!420623 () Unit!18842)

(assert (=> d!355170 (= lt!420624 lt!420623)))

(assert (=> d!355170 (= (getValueByKey!24 lt!420625 (_1!7078 (tuple2!12463 key!7099 v!11775))) (Some!2525 (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> d!355170 (= lt!420623 (lemmaContainsTupThenGetReturnValue!10 lt!420625 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> d!355170 (= lt!420625 (insertStrictlySorted!6 (toList!700 call!88108) (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> d!355170 (= (+!33 call!88108 (tuple2!12463 key!7099 v!11775)) lt!420622)))

(declare-fun b!1256702 () Bool)

(declare-fun res!556428 () Bool)

(assert (=> b!1256702 (=> (not res!556428) (not e!799860))))

(assert (=> b!1256702 (= res!556428 (= (getValueByKey!24 (toList!700 lt!420622) (_1!7078 (tuple2!12463 key!7099 v!11775))) (Some!2525 (_2!7078 (tuple2!12463 key!7099 v!11775)))))))

(declare-fun b!1256703 () Bool)

(assert (=> b!1256703 (= e!799860 (contains!2121 (toList!700 lt!420622) (tuple2!12463 key!7099 v!11775)))))

(assert (= (and d!355170 res!556427) b!1256702))

(assert (= (and b!1256702 res!556428) b!1256703))

(declare-fun m!1415005 () Bool)

(assert (=> d!355170 m!1415005))

(declare-fun m!1415007 () Bool)

(assert (=> d!355170 m!1415007))

(declare-fun m!1415009 () Bool)

(assert (=> d!355170 m!1415009))

(declare-fun m!1415011 () Bool)

(assert (=> d!355170 m!1415011))

(declare-fun m!1415013 () Bool)

(assert (=> b!1256702 m!1415013))

(declare-fun m!1415015 () Bool)

(assert (=> b!1256703 m!1415015))

(assert (=> b!1256668 d!355170))

(declare-fun d!355172 () Bool)

(declare-fun map!2744 (LongMapFixedSize!2604) ListLongMap!137)

(assert (=> d!355172 (= (map!2743 thiss!47531) (map!2744 (v!20761 (underlying!2820 thiss!47531))))))

(declare-fun bs!290359 () Bool)

(assert (= bs!290359 d!355172))

(declare-fun m!1415017 () Bool)

(assert (=> bs!290359 m!1415017))

(assert (=> bm!88104 d!355172))

(declare-fun d!355174 () Bool)

(declare-fun lt!420628 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1800 (List!12627) (InoxSet tuple2!12462))

(assert (=> d!355174 (= lt!420628 (select (content!1800 (toList!700 lt!420594)) (tuple2!12463 key!7099 v!11775)))))

(declare-fun e!799865 () Bool)

(assert (=> d!355174 (= lt!420628 e!799865)))

(declare-fun res!556433 () Bool)

(assert (=> d!355174 (=> (not res!556433) (not e!799865))))

(assert (=> d!355174 (= res!556433 ((_ is Cons!12563) (toList!700 lt!420594)))))

(assert (=> d!355174 (= (contains!2121 (toList!700 lt!420594) (tuple2!12463 key!7099 v!11775)) lt!420628)))

(declare-fun b!1256708 () Bool)

(declare-fun e!799866 () Bool)

(assert (=> b!1256708 (= e!799865 e!799866)))

(declare-fun res!556434 () Bool)

(assert (=> b!1256708 (=> res!556434 e!799866)))

(assert (=> b!1256708 (= res!556434 (= (h!17964 (toList!700 lt!420594)) (tuple2!12463 key!7099 v!11775)))))

(declare-fun b!1256709 () Bool)

(assert (=> b!1256709 (= e!799866 (contains!2121 (t!115759 (toList!700 lt!420594)) (tuple2!12463 key!7099 v!11775)))))

(assert (= (and d!355174 res!556433) b!1256708))

(assert (= (and b!1256708 (not res!556434)) b!1256709))

(declare-fun m!1415019 () Bool)

(assert (=> d!355174 m!1415019))

(declare-fun m!1415021 () Bool)

(assert (=> d!355174 m!1415021))

(declare-fun m!1415023 () Bool)

(assert (=> b!1256709 m!1415023))

(assert (=> b!1256641 d!355174))

(declare-datatypes ((SeekEntryResult!6 0))(
  ( (Found!6 (index!890 (_ BitVec 32))) (Undefined!6) (MissingZero!6 (index!891 (_ BitVec 32))) (MissingVacant!6 (index!892 (_ BitVec 32))) (Intermediate!6 (undefined!87 Bool) (index!893 (_ BitVec 32)) (x!244106 (_ BitVec 32))) )
))
(declare-fun lt!420699 () SeekEntryResult!6)

(declare-fun e!799918 () Bool)

(declare-fun b!1256790 () Bool)

(assert (=> b!1256790 (= e!799918 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420699)) key!7099))))

(declare-fun b!1256791 () Bool)

(declare-fun res!556463 () Bool)

(declare-fun call!88162 () Bool)

(assert (=> b!1256791 (= res!556463 call!88162)))

(declare-fun e!799911 () Bool)

(assert (=> b!1256791 (=> (not res!556463) (not e!799911))))

(declare-fun lt!420693 () SeekEntryResult!6)

(declare-fun b!1256792 () Bool)

(assert (=> b!1256792 (= e!799911 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420693)) key!7099))))

(declare-fun b!1256793 () Bool)

(declare-fun e!799915 () ListLongMap!137)

(declare-fun call!88170 () ListLongMap!137)

(assert (=> b!1256793 (= e!799915 call!88170)))

(declare-fun b!1256794 () Bool)

(declare-fun e!799919 () Bool)

(declare-fun call!88172 () Bool)

(assert (=> b!1256794 (= e!799919 (not call!88172))))

(declare-fun bm!88153 () Bool)

(declare-fun call!88167 () Unit!18842)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 (_ BitVec 64) Int) Unit!18842)

(assert (=> bm!88153 (= call!88167 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!2 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) key!7099 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun bm!88154 () Bool)

(declare-fun call!88175 () SeekEntryResult!6)

(declare-fun call!88158 () SeekEntryResult!6)

(assert (=> bm!88154 (= call!88175 call!88158)))

(declare-fun b!1256795 () Bool)

(declare-fun res!556469 () Bool)

(declare-fun lt!420684 () SeekEntryResult!6)

(assert (=> b!1256795 (= res!556469 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!892 lt!420684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1256795 (=> (not res!556469) (not e!799919))))

(declare-fun b!1256796 () Bool)

(declare-fun e!799926 () Bool)

(declare-fun call!88179 () Bool)

(assert (=> b!1256796 (= e!799926 (not call!88179))))

(declare-fun b!1256797 () Bool)

(declare-fun e!799909 () Bool)

(declare-fun lt!420683 () SeekEntryResult!6)

(assert (=> b!1256797 (= e!799909 ((_ is Undefined!6) lt!420683))))

(declare-fun b!1256798 () Bool)

(declare-fun res!556467 () Bool)

(assert (=> b!1256798 (= res!556467 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!892 lt!420683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799917 () Bool)

(assert (=> b!1256798 (=> (not res!556467) (not e!799917))))

(declare-fun b!1256799 () Bool)

(declare-fun call!88161 () ListLongMap!137)

(assert (=> b!1256799 (= e!799915 call!88161)))

(declare-fun b!1256800 () Bool)

(declare-fun e!799920 () Bool)

(declare-fun e!799927 () Bool)

(assert (=> b!1256800 (= e!799920 e!799927)))

(declare-fun res!556470 () Bool)

(declare-fun call!88178 () ListLongMap!137)

(assert (=> b!1256800 (= res!556470 (contains!2120 call!88178 key!7099))))

(assert (=> b!1256800 (=> (not res!556470) (not e!799927))))

(declare-fun b!1256801 () Bool)

(declare-fun lt!420688 () Unit!18842)

(declare-fun e!799914 () Unit!18842)

(assert (=> b!1256801 (= lt!420688 e!799914)))

(declare-fun c!208653 () Bool)

(declare-fun call!88174 () Bool)

(assert (=> b!1256801 (= c!208653 call!88174)))

(declare-fun e!799913 () tuple2!12466)

(assert (=> b!1256801 (= e!799913 (tuple2!12467 false (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))

(declare-fun c!208660 () Bool)

(declare-fun call!88173 () Bool)

(declare-fun c!208661 () Bool)

(declare-fun c!208663 () Bool)

(declare-fun bm!88155 () Bool)

(declare-fun c!208651 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!88155 (= call!88173 (inRange!0 (ite c!208661 (ite c!208653 (index!890 lt!420699) (ite c!208663 (index!891 lt!420683) (index!892 lt!420683))) (ite c!208651 (index!890 lt!420693) (ite c!208660 (index!891 lt!420684) (index!892 lt!420684)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun bm!88156 () Bool)

(declare-fun c!208662 () Bool)

(assert (=> bm!88156 (= c!208662 c!208661)))

(assert (=> bm!88156 (= call!88174 (contains!2120 e!799915 key!7099))))

(declare-fun bm!88157 () Bool)

(declare-fun call!88169 () Unit!18842)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 (_ BitVec 64) Int) Unit!18842)

(assert (=> bm!88157 (= call!88169 (lemmaInListMapThenSeekEntryOrOpenFindsIt!2 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) key!7099 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun b!1256802 () Bool)

(declare-fun e!799916 () Bool)

(assert (=> b!1256802 (= e!799916 e!799920)))

(declare-fun c!208657 () Bool)

(declare-fun lt!420708 () tuple2!12466)

(assert (=> b!1256802 (= c!208657 (_1!7080 lt!420708))))

(declare-fun bm!88158 () Bool)

(declare-fun call!88168 () Bool)

(assert (=> bm!88158 (= call!88168 call!88173)))

(declare-fun b!1256803 () Bool)

(declare-fun res!556475 () Bool)

(declare-fun e!799922 () Bool)

(assert (=> b!1256803 (=> (not res!556475) (not e!799922))))

(declare-fun call!88177 () Bool)

(assert (=> b!1256803 (= res!556475 call!88177)))

(declare-fun e!799928 () Bool)

(assert (=> b!1256803 (= e!799928 e!799922)))

(declare-fun b!1256804 () Bool)

(declare-fun res!556471 () Bool)

(assert (=> b!1256804 (=> (not res!556471) (not e!799926))))

(declare-fun call!88163 () Bool)

(assert (=> b!1256804 (= res!556471 call!88163)))

(declare-fun e!799923 () Bool)

(assert (=> b!1256804 (= e!799923 e!799926)))

(declare-fun b!1256805 () Bool)

(declare-fun e!799924 () Bool)

(assert (=> b!1256805 (= e!799924 e!799919)))

(declare-fun res!556466 () Bool)

(assert (=> b!1256805 (= res!556466 call!88177)))

(assert (=> b!1256805 (=> (not res!556466) (not e!799919))))

(declare-fun b!1256806 () Bool)

(assert (=> b!1256806 (= e!799922 (not call!88172))))

(declare-fun bm!88159 () Bool)

(assert (=> bm!88159 (= call!88162 call!88173)))

(declare-fun b!1256807 () Bool)

(declare-fun res!556476 () Bool)

(assert (=> b!1256807 (=> (not res!556476) (not e!799922))))

(assert (=> b!1256807 (= res!556476 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!891 lt!420684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!88160 () Bool)

(declare-fun call!88165 () SeekEntryResult!6)

(assert (=> bm!88160 (= call!88165 call!88158)))

(declare-fun d!355176 () Bool)

(assert (=> d!355176 e!799916))

(declare-fun res!556473 () Bool)

(assert (=> d!355176 (=> (not res!556473) (not e!799916))))

(declare-fun valid!1039 (LongMapFixedSize!2604) Bool)

(assert (=> d!355176 (= res!556473 (valid!1039 (_2!7080 lt!420708)))))

(declare-fun e!799929 () tuple2!12466)

(assert (=> d!355176 (= lt!420708 e!799929)))

(declare-fun c!208659 () Bool)

(assert (=> d!355176 (= c!208659 (= key!7099 (bvneg key!7099)))))

(assert (=> d!355176 (valid!1039 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))

(assert (=> d!355176 (= (update!78 (v!20761 (underlying!2820 (_2!7079 lt!420606))) key!7099 v!11775) lt!420708)))

(declare-fun b!1256808 () Bool)

(declare-fun e!799912 () tuple2!12466)

(declare-fun e!799910 () tuple2!12466)

(assert (=> b!1256808 (= e!799912 e!799910)))

(declare-fun c!208652 () Bool)

(declare-fun lt!420702 () SeekEntryResult!6)

(assert (=> b!1256808 (= c!208652 ((_ is MissingZero!6) lt!420702))))

(declare-fun b!1256809 () Bool)

(assert (=> b!1256809 (= e!799909 e!799917)))

(declare-fun res!556468 () Bool)

(assert (=> b!1256809 (= res!556468 call!88163)))

(assert (=> b!1256809 (=> (not res!556468) (not e!799917))))

(declare-fun b!1256810 () Bool)

(declare-fun lt!420706 () Unit!18842)

(declare-fun lt!420697 () Unit!18842)

(assert (=> b!1256810 (= lt!420706 lt!420697)))

(assert (=> b!1256810 (contains!2120 call!88170 (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420702)))))

(declare-fun lt!420686 () array!4614)

(declare-fun lemmaValidKeyInArrayIsInListMap!3 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 (_ BitVec 32) Int) Unit!18842)

(assert (=> b!1256810 (= lt!420697 (lemmaValidKeyInArrayIsInListMap!3 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) lt!420686 (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (index!890 lt!420702) (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(assert (=> b!1256810 (= lt!420686 (array!4615 (store (arr!2058 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420702) v!11775) (size!9949 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))))

(declare-fun lt!420703 () Unit!18842)

(declare-fun lt!420704 () Unit!18842)

(assert (=> b!1256810 (= lt!420703 lt!420704)))

(declare-fun call!88180 () ListLongMap!137)

(declare-fun call!88176 () ListLongMap!137)

(assert (=> b!1256810 (= call!88180 call!88176)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 (_ BitVec 32) (_ BitVec 64) V!2938 Int) Unit!18842)

(assert (=> b!1256810 (= lt!420704 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!2 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (index!890 lt!420702) key!7099 v!11775 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun lt!420709 () Unit!18842)

(declare-fun e!799925 () Unit!18842)

(assert (=> b!1256810 (= lt!420709 e!799925)))

(assert (=> b!1256810 (= c!208651 call!88174)))

(assert (=> b!1256810 (= e!799910 (tuple2!12467 true (LongMapFixedSize!2605 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_size!2696 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (array!4615 (store (arr!2058 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420702) v!11775) (size!9949 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))) (_vacant!1363 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))))

(declare-fun call!88166 () tuple2!12466)

(declare-fun c!208656 () Bool)

(declare-fun bm!88161 () Bool)

(declare-fun updateHelperNewKey!2 (LongMapFixedSize!2604 (_ BitVec 64) V!2938 (_ BitVec 32)) tuple2!12466)

(assert (=> bm!88161 (= call!88166 (updateHelperNewKey!2 (v!20761 (underlying!2820 (_2!7079 lt!420606))) key!7099 v!11775 (ite c!208656 (index!892 lt!420702) (index!891 lt!420702))))))

(declare-fun bm!88162 () Bool)

(declare-fun call!88159 () ListLongMap!137)

(declare-fun c!208654 () Bool)

(assert (=> bm!88162 (= call!88180 (+!33 (ite c!208659 call!88159 call!88161) (ite c!208659 (ite c!208654 (tuple2!12463 #b0000000000000000000000000000000000000000000000000000000000000000 v!11775) (tuple2!12463 #b1000000000000000000000000000000000000000000000000000000000000000 v!11775)) (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256811 () Bool)

(assert (=> b!1256811 (= e!799917 (not call!88179))))

(declare-fun lt!420691 () (_ BitVec 32))

(declare-fun lt!420687 () (_ BitVec 32))

(declare-fun bm!88163 () Bool)

(declare-fun getCurrentListMap!7 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 (_ BitVec 32) Int) ListLongMap!137)

(assert (=> bm!88163 (= call!88176 (getCurrentListMap!7 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (ite c!208659 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (array!4615 (store (arr!2058 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!890 lt!420702) v!11775) (size!9949 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (ite c!208659 (ite c!208654 lt!420691 lt!420687) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (ite (and c!208659 c!208654) v!11775 (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (ite c!208659 (ite c!208654 (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) v!11775) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun bm!88164 () Bool)

(declare-fun call!88171 () ListLongMap!137)

(assert (=> bm!88164 (= call!88171 (map!2744 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))

(declare-fun b!1256812 () Bool)

(assert (=> b!1256812 (= e!799920 (= call!88178 call!88171))))

(declare-fun bm!88165 () Bool)

(assert (=> bm!88165 (= call!88163 call!88168)))

(declare-fun b!1256813 () Bool)

(declare-fun lt!420698 () Unit!18842)

(assert (=> b!1256813 (= e!799925 lt!420698)))

(assert (=> b!1256813 (= lt!420698 call!88169)))

(assert (=> b!1256813 (= lt!420693 call!88165)))

(declare-fun res!556472 () Bool)

(assert (=> b!1256813 (= res!556472 ((_ is Found!6) lt!420693))))

(assert (=> b!1256813 (=> (not res!556472) (not e!799911))))

(assert (=> b!1256813 e!799911))

(declare-fun b!1256814 () Bool)

(declare-fun lt!420700 () Unit!18842)

(declare-fun lt!420689 () Unit!18842)

(assert (=> b!1256814 (= lt!420700 lt!420689)))

(declare-fun call!88160 () ListLongMap!137)

(declare-fun call!88181 () ListLongMap!137)

(assert (=> b!1256814 (= call!88160 call!88181)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!2 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 V!2938 Int) Unit!18842)

(assert (=> b!1256814 (= lt!420689 (lemmaChangeZeroKeyThenAddPairToListMap!2 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) lt!420691 (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) v!11775 (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(assert (=> b!1256814 (= lt!420691 (bvor (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000001))))

(declare-fun e!799921 () tuple2!12466)

(assert (=> b!1256814 (= e!799921 (tuple2!12467 true (LongMapFixedSize!2605 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (bvor (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000001) v!11775 (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_size!2696 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_vacant!1363 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))))

(declare-fun bm!88166 () Bool)

(assert (=> bm!88166 (= call!88177 call!88162)))

(declare-fun b!1256815 () Bool)

(declare-fun lt!420690 () tuple2!12466)

(assert (=> b!1256815 (= lt!420690 call!88166)))

(assert (=> b!1256815 (= e!799910 (tuple2!12467 (_1!7080 lt!420690) (_2!7080 lt!420690)))))

(declare-fun b!1256816 () Bool)

(declare-fun Unit!18845 () Unit!18842)

(assert (=> b!1256816 (= e!799925 Unit!18845)))

(declare-fun lt!420696 () Unit!18842)

(assert (=> b!1256816 (= lt!420696 call!88167)))

(assert (=> b!1256816 (= lt!420684 call!88165)))

(assert (=> b!1256816 (= c!208660 ((_ is MissingZero!6) lt!420684))))

(assert (=> b!1256816 e!799928))

(declare-fun lt!420695 () Unit!18842)

(assert (=> b!1256816 (= lt!420695 lt!420696)))

(assert (=> b!1256816 false))

(declare-fun bm!88167 () Bool)

(assert (=> bm!88167 (= call!88160 call!88180)))

(declare-fun b!1256817 () Bool)

(declare-fun c!208658 () Bool)

(assert (=> b!1256817 (= c!208658 ((_ is MissingVacant!6) lt!420683))))

(assert (=> b!1256817 (= e!799923 e!799909)))

(declare-fun bm!88168 () Bool)

(assert (=> bm!88168 (= call!88181 call!88176)))

(declare-fun b!1256818 () Bool)

(assert (=> b!1256818 (= c!208656 ((_ is MissingVacant!6) lt!420702))))

(assert (=> b!1256818 (= e!799913 e!799912)))

(declare-fun bm!88169 () Bool)

(declare-fun call!88164 () Bool)

(declare-fun arrayContainsKey!0 (array!4612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!88169 (= call!88164 (arrayContainsKey!0 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) key!7099 #b00000000000000000000000000000000))))

(declare-fun bm!88170 () Bool)

(assert (=> bm!88170 (= call!88178 (map!2744 (_2!7080 lt!420708)))))

(declare-fun bm!88171 () Bool)

(assert (=> bm!88171 (= call!88159 call!88161)))

(declare-fun b!1256819 () Bool)

(assert (=> b!1256819 (= e!799929 e!799913)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4612 (_ BitVec 32)) SeekEntryResult!6)

(assert (=> b!1256819 (= lt!420702 (seekEntryOrOpen!0 key!7099 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(assert (=> b!1256819 (= c!208661 ((_ is Undefined!6) lt!420702))))

(declare-fun bm!88172 () Bool)

(assert (=> bm!88172 (= call!88161 (getCurrentListMap!7 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun b!1256820 () Bool)

(declare-fun lt!420685 () Unit!18842)

(declare-fun lt!420705 () Unit!18842)

(assert (=> b!1256820 (= lt!420685 lt!420705)))

(assert (=> b!1256820 (= call!88160 call!88181)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (array!4612 array!4614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2938 V!2938 V!2938 Int) Unit!18842)

(assert (=> b!1256820 (= lt!420705 (lemmaChangeLongMinValueKeyThenAddPairToListMap!2 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) lt!420687 (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) v!11775 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(assert (=> b!1256820 (= lt!420687 (bvor (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000010))))

(assert (=> b!1256820 (= e!799921 (tuple2!12467 true (LongMapFixedSize!2605 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (bvor (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000010) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) v!11775 (_size!2696 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (_vacant!1363 (v!20761 (underlying!2820 (_2!7079 lt!420606)))))))))

(declare-fun bm!88173 () Bool)

(assert (=> bm!88173 (= call!88158 (seekEntryOrOpen!0 key!7099 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun b!1256821 () Bool)

(declare-fun Unit!18846 () Unit!18842)

(assert (=> b!1256821 (= e!799914 Unit!18846)))

(declare-fun lt!420694 () Unit!18842)

(assert (=> b!1256821 (= lt!420694 call!88169)))

(assert (=> b!1256821 (= lt!420699 call!88175)))

(declare-fun res!556464 () Bool)

(assert (=> b!1256821 (= res!556464 ((_ is Found!6) lt!420699))))

(assert (=> b!1256821 (=> (not res!556464) (not e!799918))))

(assert (=> b!1256821 e!799918))

(declare-fun lt!420701 () Unit!18842)

(assert (=> b!1256821 (= lt!420701 lt!420694)))

(assert (=> b!1256821 false))

(declare-fun b!1256822 () Bool)

(assert (=> b!1256822 (= e!799929 e!799921)))

(assert (=> b!1256822 (= c!208654 (= key!7099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256823 () Bool)

(declare-fun res!556474 () Bool)

(assert (=> b!1256823 (=> (not res!556474) (not e!799926))))

(assert (=> b!1256823 (= res!556474 (= (select (arr!2057 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606))))) (index!891 lt!420683)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256824 () Bool)

(assert (=> b!1256824 (= e!799927 (= call!88178 (+!33 call!88171 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256825 () Bool)

(declare-fun lt!420707 () tuple2!12466)

(assert (=> b!1256825 (= e!799912 (tuple2!12467 (_1!7080 lt!420707) (_2!7080 lt!420707)))))

(assert (=> b!1256825 (= lt!420707 call!88166)))

(declare-fun bm!88174 () Bool)

(assert (=> bm!88174 (= call!88179 call!88164)))

(declare-fun bm!88175 () Bool)

(assert (=> bm!88175 (= call!88172 call!88164)))

(declare-fun bm!88176 () Bool)

(assert (=> bm!88176 (= call!88170 (getCurrentListMap!7 (_keys!1596 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (ite c!208661 (_values!1581 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) lt!420686) (mask!4109 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (extraKeys!1549 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (zeroValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) (minValue!1559 (v!20761 (underlying!2820 (_2!7079 lt!420606)))) #b00000000000000000000000000000000 (defaultEntry!1662 (v!20761 (underlying!2820 (_2!7079 lt!420606))))))))

(declare-fun b!1256826 () Bool)

(declare-fun res!556465 () Bool)

(assert (=> b!1256826 (= res!556465 call!88168)))

(assert (=> b!1256826 (=> (not res!556465) (not e!799918))))

(declare-fun b!1256827 () Bool)

(assert (=> b!1256827 (= e!799924 ((_ is Undefined!6) lt!420684))))

(declare-fun b!1256828 () Bool)

(declare-fun lt!420692 () Unit!18842)

(assert (=> b!1256828 (= e!799914 lt!420692)))

(assert (=> b!1256828 (= lt!420692 call!88167)))

(assert (=> b!1256828 (= lt!420683 call!88175)))

(assert (=> b!1256828 (= c!208663 ((_ is MissingZero!6) lt!420683))))

(assert (=> b!1256828 e!799923))

(declare-fun b!1256829 () Bool)

(declare-fun c!208655 () Bool)

(assert (=> b!1256829 (= c!208655 ((_ is MissingVacant!6) lt!420684))))

(assert (=> b!1256829 (= e!799928 e!799924)))

(assert (= (and d!355176 c!208659) b!1256822))

(assert (= (and d!355176 (not c!208659)) b!1256819))

(assert (= (and b!1256822 c!208654) b!1256814))

(assert (= (and b!1256822 (not c!208654)) b!1256820))

(assert (= (or b!1256814 b!1256820) bm!88171))

(assert (= (or b!1256814 b!1256820) bm!88168))

(assert (= (or b!1256814 b!1256820) bm!88167))

(assert (= (and b!1256819 c!208661) b!1256801))

(assert (= (and b!1256819 (not c!208661)) b!1256818))

(assert (= (and b!1256801 c!208653) b!1256821))

(assert (= (and b!1256801 (not c!208653)) b!1256828))

(assert (= (and b!1256821 res!556464) b!1256826))

(assert (= (and b!1256826 res!556465) b!1256790))

(assert (= (and b!1256828 c!208663) b!1256804))

(assert (= (and b!1256828 (not c!208663)) b!1256817))

(assert (= (and b!1256804 res!556471) b!1256823))

(assert (= (and b!1256823 res!556474) b!1256796))

(assert (= (and b!1256817 c!208658) b!1256809))

(assert (= (and b!1256817 (not c!208658)) b!1256797))

(assert (= (and b!1256809 res!556468) b!1256798))

(assert (= (and b!1256798 res!556467) b!1256811))

(assert (= (or b!1256796 b!1256811) bm!88174))

(assert (= (or b!1256804 b!1256809) bm!88165))

(assert (= (or b!1256826 bm!88165) bm!88158))

(assert (= (or b!1256821 b!1256828) bm!88154))

(assert (= (and b!1256818 c!208656) b!1256825))

(assert (= (and b!1256818 (not c!208656)) b!1256808))

(assert (= (and b!1256808 c!208652) b!1256815))

(assert (= (and b!1256808 (not c!208652)) b!1256810))

(assert (= (and b!1256810 c!208651) b!1256813))

(assert (= (and b!1256810 (not c!208651)) b!1256816))

(assert (= (and b!1256813 res!556472) b!1256791))

(assert (= (and b!1256791 res!556463) b!1256792))

(assert (= (and b!1256816 c!208660) b!1256803))

(assert (= (and b!1256816 (not c!208660)) b!1256829))

(assert (= (and b!1256803 res!556475) b!1256807))

(assert (= (and b!1256807 res!556476) b!1256806))

(assert (= (and b!1256829 c!208655) b!1256805))

(assert (= (and b!1256829 (not c!208655)) b!1256827))

(assert (= (and b!1256805 res!556466) b!1256795))

(assert (= (and b!1256795 res!556469) b!1256794))

(assert (= (or b!1256806 b!1256794) bm!88175))

(assert (= (or b!1256803 b!1256805) bm!88166))

(assert (= (or b!1256791 bm!88166) bm!88159))

(assert (= (or b!1256813 b!1256816) bm!88160))

(assert (= (or b!1256825 b!1256815) bm!88161))

(assert (= (or b!1256801 b!1256810) bm!88176))

(assert (= (or bm!88158 bm!88159) bm!88155))

(assert (= (or b!1256821 b!1256813) bm!88157))

(assert (= (or b!1256828 b!1256816) bm!88153))

(assert (= (or bm!88154 bm!88160) bm!88173))

(assert (= (or bm!88174 bm!88175) bm!88169))

(assert (= (or b!1256801 b!1256810) bm!88156))

(assert (= (and bm!88156 c!208662) b!1256793))

(assert (= (and bm!88156 (not c!208662)) b!1256799))

(assert (= (or bm!88171 b!1256799 b!1256810) bm!88172))

(assert (= (or bm!88168 b!1256810) bm!88163))

(assert (= (or bm!88167 b!1256810) bm!88162))

(assert (= (and d!355176 res!556473) b!1256802))

(assert (= (and b!1256802 c!208657) b!1256800))

(assert (= (and b!1256802 (not c!208657)) b!1256812))

(assert (= (and b!1256800 res!556470) b!1256824))

(assert (= (or b!1256800 b!1256824 b!1256812) bm!88170))

(assert (= (or b!1256824 b!1256812) bm!88164))

(declare-fun m!1415025 () Bool)

(assert (=> b!1256798 m!1415025))

(declare-fun m!1415027 () Bool)

(assert (=> bm!88164 m!1415027))

(declare-fun m!1415029 () Bool)

(assert (=> b!1256824 m!1415029))

(declare-fun m!1415031 () Bool)

(assert (=> b!1256814 m!1415031))

(declare-fun m!1415033 () Bool)

(assert (=> bm!88170 m!1415033))

(declare-fun m!1415035 () Bool)

(assert (=> bm!88169 m!1415035))

(declare-fun m!1415037 () Bool)

(assert (=> bm!88155 m!1415037))

(declare-fun m!1415039 () Bool)

(assert (=> b!1256807 m!1415039))

(declare-fun m!1415041 () Bool)

(assert (=> bm!88163 m!1415041))

(declare-fun m!1415043 () Bool)

(assert (=> bm!88163 m!1415043))

(declare-fun m!1415045 () Bool)

(assert (=> bm!88161 m!1415045))

(declare-fun m!1415047 () Bool)

(assert (=> bm!88173 m!1415047))

(declare-fun m!1415049 () Bool)

(assert (=> bm!88157 m!1415049))

(declare-fun m!1415051 () Bool)

(assert (=> b!1256792 m!1415051))

(declare-fun m!1415053 () Bool)

(assert (=> bm!88172 m!1415053))

(declare-fun m!1415055 () Bool)

(assert (=> b!1256820 m!1415055))

(declare-fun m!1415057 () Bool)

(assert (=> d!355176 m!1415057))

(declare-fun m!1415059 () Bool)

(assert (=> d!355176 m!1415059))

(assert (=> b!1256810 m!1415041))

(declare-fun m!1415061 () Bool)

(assert (=> b!1256810 m!1415061))

(declare-fun m!1415063 () Bool)

(assert (=> b!1256810 m!1415063))

(declare-fun m!1415065 () Bool)

(assert (=> b!1256810 m!1415065))

(assert (=> b!1256810 m!1415063))

(declare-fun m!1415067 () Bool)

(assert (=> b!1256810 m!1415067))

(declare-fun m!1415069 () Bool)

(assert (=> b!1256823 m!1415069))

(declare-fun m!1415071 () Bool)

(assert (=> bm!88162 m!1415071))

(declare-fun m!1415073 () Bool)

(assert (=> bm!88156 m!1415073))

(declare-fun m!1415075 () Bool)

(assert (=> b!1256790 m!1415075))

(declare-fun m!1415077 () Bool)

(assert (=> b!1256800 m!1415077))

(assert (=> b!1256819 m!1415047))

(declare-fun m!1415079 () Bool)

(assert (=> b!1256795 m!1415079))

(declare-fun m!1415081 () Bool)

(assert (=> bm!88176 m!1415081))

(declare-fun m!1415083 () Bool)

(assert (=> bm!88153 m!1415083))

(assert (=> b!1256669 d!355176))

(declare-fun d!355178 () Bool)

(declare-fun isEmpty!7499 (Option!2526) Bool)

(assert (=> d!355178 (= (isDefined!2162 (getValueByKey!24 (toList!700 lt!420584) key!7099)) (not (isEmpty!7499 (getValueByKey!24 (toList!700 lt!420584) key!7099))))))

(declare-fun bs!290360 () Bool)

(assert (= bs!290360 d!355178))

(assert (=> bs!290360 m!1414993))

(declare-fun m!1415085 () Bool)

(assert (=> bs!290360 m!1415085))

(assert (=> b!1256685 d!355178))

(declare-fun b!1256833 () Bool)

(declare-fun e!799931 () Option!2526)

(assert (=> b!1256833 (= e!799931 None!2525)))

(declare-fun b!1256830 () Bool)

(declare-fun e!799930 () Option!2526)

(assert (=> b!1256830 (= e!799930 (Some!2525 (_2!7078 (h!17964 (toList!700 lt!420584)))))))

(declare-fun b!1256831 () Bool)

(assert (=> b!1256831 (= e!799930 e!799931)))

(declare-fun c!208665 () Bool)

(assert (=> b!1256831 (= c!208665 (and ((_ is Cons!12563) (toList!700 lt!420584)) (not (= (_1!7078 (h!17964 (toList!700 lt!420584))) key!7099))))))

(declare-fun b!1256832 () Bool)

(assert (=> b!1256832 (= e!799931 (getValueByKey!24 (t!115759 (toList!700 lt!420584)) key!7099))))

(declare-fun d!355180 () Bool)

(declare-fun c!208664 () Bool)

(assert (=> d!355180 (= c!208664 (and ((_ is Cons!12563) (toList!700 lt!420584)) (= (_1!7078 (h!17964 (toList!700 lt!420584))) key!7099)))))

(assert (=> d!355180 (= (getValueByKey!24 (toList!700 lt!420584) key!7099) e!799930)))

(assert (= (and d!355180 c!208664) b!1256830))

(assert (= (and d!355180 (not c!208664)) b!1256831))

(assert (= (and b!1256831 c!208665) b!1256832))

(assert (= (and b!1256831 (not c!208665)) b!1256833))

(declare-fun m!1415087 () Bool)

(assert (=> b!1256832 m!1415087))

(assert (=> b!1256685 d!355180))

(declare-fun d!355182 () Bool)

(declare-fun e!799932 () Bool)

(assert (=> d!355182 e!799932))

(declare-fun res!556477 () Bool)

(assert (=> d!355182 (=> res!556477 e!799932)))

(declare-fun lt!420711 () Bool)

(assert (=> d!355182 (= res!556477 (not lt!420711))))

(declare-fun lt!420712 () Bool)

(assert (=> d!355182 (= lt!420711 lt!420712)))

(declare-fun lt!420710 () Unit!18842)

(declare-fun e!799933 () Unit!18842)

(assert (=> d!355182 (= lt!420710 e!799933)))

(declare-fun c!208666 () Bool)

(assert (=> d!355182 (= c!208666 lt!420712)))

(assert (=> d!355182 (= lt!420712 (containsKey!33 (toList!700 call!88109) key!7099))))

(assert (=> d!355182 (= (contains!2120 call!88109 key!7099) lt!420711)))

(declare-fun b!1256834 () Bool)

(declare-fun lt!420713 () Unit!18842)

(assert (=> b!1256834 (= e!799933 lt!420713)))

(assert (=> b!1256834 (= lt!420713 (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!700 call!88109) key!7099))))

(assert (=> b!1256834 (isDefined!2162 (getValueByKey!24 (toList!700 call!88109) key!7099))))

(declare-fun b!1256835 () Bool)

(declare-fun Unit!18847 () Unit!18842)

(assert (=> b!1256835 (= e!799933 Unit!18847)))

(declare-fun b!1256836 () Bool)

(assert (=> b!1256836 (= e!799932 (isDefined!2162 (getValueByKey!24 (toList!700 call!88109) key!7099)))))

(assert (= (and d!355182 c!208666) b!1256834))

(assert (= (and d!355182 (not c!208666)) b!1256835))

(assert (= (and d!355182 (not res!556477)) b!1256836))

(declare-fun m!1415089 () Bool)

(assert (=> d!355182 m!1415089))

(declare-fun m!1415091 () Bool)

(assert (=> b!1256834 m!1415091))

(declare-fun m!1415093 () Bool)

(assert (=> b!1256834 m!1415093))

(assert (=> b!1256834 m!1415093))

(declare-fun m!1415095 () Bool)

(assert (=> b!1256834 m!1415095))

(assert (=> b!1256836 m!1415093))

(assert (=> b!1256836 m!1415093))

(assert (=> b!1256836 m!1415095))

(assert (=> b!1256671 d!355182))

(declare-fun d!355184 () Bool)

(declare-fun e!799934 () Bool)

(assert (=> d!355184 e!799934))

(declare-fun res!556478 () Bool)

(assert (=> d!355184 (=> res!556478 e!799934)))

(declare-fun lt!420715 () Bool)

(assert (=> d!355184 (= res!556478 (not lt!420715))))

(declare-fun lt!420716 () Bool)

(assert (=> d!355184 (= lt!420715 lt!420716)))

(declare-fun lt!420714 () Unit!18842)

(declare-fun e!799935 () Unit!18842)

(assert (=> d!355184 (= lt!420714 e!799935)))

(declare-fun c!208667 () Bool)

(assert (=> d!355184 (= c!208667 lt!420716)))

(assert (=> d!355184 (= lt!420716 (containsKey!33 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> d!355184 (= (contains!2120 lt!420594 (_1!7078 (tuple2!12463 key!7099 v!11775))) lt!420715)))

(declare-fun b!1256837 () Bool)

(declare-fun lt!420717 () Unit!18842)

(assert (=> b!1256837 (= e!799935 lt!420717)))

(assert (=> b!1256837 (= lt!420717 (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(assert (=> b!1256837 (isDefined!2162 (getValueByKey!24 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256838 () Bool)

(declare-fun Unit!18848 () Unit!18842)

(assert (=> b!1256838 (= e!799935 Unit!18848)))

(declare-fun b!1256839 () Bool)

(assert (=> b!1256839 (= e!799934 (isDefined!2162 (getValueByKey!24 (toList!700 lt!420594) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (= (and d!355184 c!208667) b!1256837))

(assert (= (and d!355184 (not c!208667)) b!1256838))

(assert (= (and d!355184 (not res!556478)) b!1256839))

(declare-fun m!1415097 () Bool)

(assert (=> d!355184 m!1415097))

(declare-fun m!1415099 () Bool)

(assert (=> b!1256837 m!1415099))

(assert (=> b!1256837 m!1414961))

(assert (=> b!1256837 m!1414961))

(declare-fun m!1415101 () Bool)

(assert (=> b!1256837 m!1415101))

(assert (=> b!1256839 m!1414961))

(assert (=> b!1256839 m!1414961))

(assert (=> b!1256839 m!1415101))

(assert (=> d!355156 d!355184))

(declare-fun b!1256843 () Bool)

(declare-fun e!799937 () Option!2526)

(assert (=> b!1256843 (= e!799937 None!2525)))

(declare-fun b!1256840 () Bool)

(declare-fun e!799936 () Option!2526)

(assert (=> b!1256840 (= e!799936 (Some!2525 (_2!7078 (h!17964 lt!420597))))))

(declare-fun b!1256841 () Bool)

(assert (=> b!1256841 (= e!799936 e!799937)))

(declare-fun c!208669 () Bool)

(assert (=> b!1256841 (= c!208669 (and ((_ is Cons!12563) lt!420597) (not (= (_1!7078 (h!17964 lt!420597)) (_1!7078 (tuple2!12463 key!7099 v!11775))))))))

(declare-fun b!1256842 () Bool)

(assert (=> b!1256842 (= e!799937 (getValueByKey!24 (t!115759 lt!420597) (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun d!355186 () Bool)

(declare-fun c!208668 () Bool)

(assert (=> d!355186 (= c!208668 (and ((_ is Cons!12563) lt!420597) (= (_1!7078 (h!17964 lt!420597)) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (=> d!355186 (= (getValueByKey!24 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775))) e!799936)))

(assert (= (and d!355186 c!208668) b!1256840))

(assert (= (and d!355186 (not c!208668)) b!1256841))

(assert (= (and b!1256841 c!208669) b!1256842))

(assert (= (and b!1256841 (not c!208669)) b!1256843))

(declare-fun m!1415103 () Bool)

(assert (=> b!1256842 m!1415103))

(assert (=> d!355156 d!355186))

(declare-fun d!355188 () Bool)

(assert (=> d!355188 (= (getValueByKey!24 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775))) (Some!2525 (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun lt!420720 () Unit!18842)

(declare-fun choose!7867 (List!12627 (_ BitVec 64) V!2938) Unit!18842)

(assert (=> d!355188 (= lt!420720 (choose!7867 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun e!799940 () Bool)

(assert (=> d!355188 e!799940))

(declare-fun res!556483 () Bool)

(assert (=> d!355188 (=> (not res!556483) (not e!799940))))

(declare-fun isStrictlySorted!1 (List!12627) Bool)

(assert (=> d!355188 (= res!556483 (isStrictlySorted!1 lt!420597))))

(assert (=> d!355188 (= (lemmaContainsTupThenGetReturnValue!10 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))) lt!420720)))

(declare-fun b!1256848 () Bool)

(declare-fun res!556484 () Bool)

(assert (=> b!1256848 (=> (not res!556484) (not e!799940))))

(assert (=> b!1256848 (= res!556484 (containsKey!33 lt!420597 (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256849 () Bool)

(assert (=> b!1256849 (= e!799940 (contains!2121 lt!420597 (tuple2!12463 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (= (and d!355188 res!556483) b!1256848))

(assert (= (and b!1256848 res!556484) b!1256849))

(assert (=> d!355188 m!1414955))

(declare-fun m!1415105 () Bool)

(assert (=> d!355188 m!1415105))

(declare-fun m!1415107 () Bool)

(assert (=> d!355188 m!1415107))

(declare-fun m!1415109 () Bool)

(assert (=> b!1256848 m!1415109))

(declare-fun m!1415111 () Bool)

(assert (=> b!1256849 m!1415111))

(assert (=> d!355156 d!355188))

(declare-fun b!1256870 () Bool)

(declare-fun e!799952 () List!12627)

(declare-fun call!88190 () List!12627)

(assert (=> b!1256870 (= e!799952 call!88190)))

(declare-fun b!1256871 () Bool)

(declare-fun e!799955 () List!12627)

(declare-fun call!88189 () List!12627)

(assert (=> b!1256871 (= e!799955 call!88189)))

(declare-fun c!208680 () Bool)

(declare-fun e!799953 () List!12627)

(declare-fun b!1256872 () Bool)

(declare-fun c!208679 () Bool)

(assert (=> b!1256872 (= e!799953 (ite c!208679 (t!115759 (toList!700 call!88103)) (ite c!208680 (Cons!12563 (h!17964 (toList!700 call!88103)) (t!115759 (toList!700 call!88103))) Nil!12563)))))

(declare-fun bm!88183 () Bool)

(assert (=> bm!88183 (= call!88190 call!88189)))

(declare-fun b!1256873 () Bool)

(declare-fun res!556490 () Bool)

(declare-fun e!799951 () Bool)

(assert (=> b!1256873 (=> (not res!556490) (not e!799951))))

(declare-fun lt!420723 () List!12627)

(assert (=> b!1256873 (= res!556490 (containsKey!33 lt!420723 (_1!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256874 () Bool)

(assert (=> b!1256874 (= e!799953 (insertStrictlySorted!6 (t!115759 (toList!700 call!88103)) (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))

(declare-fun b!1256875 () Bool)

(declare-fun e!799954 () List!12627)

(assert (=> b!1256875 (= e!799954 e!799955)))

(assert (=> b!1256875 (= c!208679 (and ((_ is Cons!12563) (toList!700 call!88103)) (= (_1!7078 (h!17964 (toList!700 call!88103))) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(declare-fun bm!88184 () Bool)

(declare-fun call!88188 () List!12627)

(assert (=> bm!88184 (= call!88189 call!88188)))

(declare-fun bm!88185 () Bool)

(declare-fun c!208678 () Bool)

(declare-fun $colon$colon!122 (List!12627 tuple2!12462) List!12627)

(assert (=> bm!88185 (= call!88188 ($colon$colon!122 e!799953 (ite c!208678 (h!17964 (toList!700 call!88103)) (tuple2!12463 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))))))))

(declare-fun c!208681 () Bool)

(assert (=> bm!88185 (= c!208681 c!208678)))

(declare-fun b!1256876 () Bool)

(assert (=> b!1256876 (= e!799951 (contains!2121 lt!420723 (tuple2!12463 (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775)))))))

(declare-fun b!1256877 () Bool)

(assert (=> b!1256877 (= c!208680 (and ((_ is Cons!12563) (toList!700 call!88103)) (bvsgt (_1!7078 (h!17964 (toList!700 call!88103))) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (=> b!1256877 (= e!799955 e!799952)))

(declare-fun b!1256878 () Bool)

(assert (=> b!1256878 (= e!799954 call!88188)))

(declare-fun b!1256879 () Bool)

(assert (=> b!1256879 (= e!799952 call!88190)))

(declare-fun d!355190 () Bool)

(assert (=> d!355190 e!799951))

(declare-fun res!556489 () Bool)

(assert (=> d!355190 (=> (not res!556489) (not e!799951))))

(assert (=> d!355190 (= res!556489 (isStrictlySorted!1 lt!420723))))

(assert (=> d!355190 (= lt!420723 e!799954)))

(assert (=> d!355190 (= c!208678 (and ((_ is Cons!12563) (toList!700 call!88103)) (bvslt (_1!7078 (h!17964 (toList!700 call!88103))) (_1!7078 (tuple2!12463 key!7099 v!11775)))))))

(assert (=> d!355190 (isStrictlySorted!1 (toList!700 call!88103))))

(assert (=> d!355190 (= (insertStrictlySorted!6 (toList!700 call!88103) (_1!7078 (tuple2!12463 key!7099 v!11775)) (_2!7078 (tuple2!12463 key!7099 v!11775))) lt!420723)))

(assert (= (and d!355190 c!208678) b!1256878))

(assert (= (and d!355190 (not c!208678)) b!1256875))

(assert (= (and b!1256875 c!208679) b!1256871))

(assert (= (and b!1256875 (not c!208679)) b!1256877))

(assert (= (and b!1256877 c!208680) b!1256870))

(assert (= (and b!1256877 (not c!208680)) b!1256879))

(assert (= (or b!1256870 b!1256879) bm!88183))

(assert (= (or b!1256871 bm!88183) bm!88184))

(assert (= (or b!1256878 bm!88184) bm!88185))

(assert (= (and bm!88185 c!208681) b!1256874))

(assert (= (and bm!88185 (not c!208681)) b!1256872))

(assert (= (and d!355190 res!556489) b!1256873))

(assert (= (and b!1256873 res!556490) b!1256876))

(declare-fun m!1415113 () Bool)

(assert (=> b!1256873 m!1415113))

(declare-fun m!1415115 () Bool)

(assert (=> bm!88185 m!1415115))

(declare-fun m!1415117 () Bool)

(assert (=> b!1256874 m!1415117))

(declare-fun m!1415119 () Bool)

(assert (=> b!1256876 m!1415119))

(declare-fun m!1415121 () Bool)

(assert (=> d!355190 m!1415121))

(declare-fun m!1415123 () Bool)

(assert (=> d!355190 m!1415123))

(assert (=> d!355156 d!355190))

(declare-fun d!355192 () Bool)

(declare-fun choose!7868 (MutLongMap!1302) ListLongMap!137)

(assert (=> d!355192 (= (abstractMap!49 thiss!47531) (choose!7868 thiss!47531))))

(declare-fun bs!290361 () Bool)

(assert (= bs!290361 d!355192))

(declare-fun m!1415125 () Bool)

(assert (=> bs!290361 m!1415125))

(assert (=> b!1256687 d!355192))

(declare-fun c!208693 () Bool)

(declare-fun c!208691 () Bool)

(declare-fun bm!88194 () Bool)

(declare-fun call!88202 () LongMapFixedSize!2604)

(declare-fun call!88201 () tuple2!12466)

(declare-fun lt!420750 () tuple2!12466)

(assert (=> bm!88194 (= call!88201 (update!78 (ite c!208691 (_2!7080 lt!420750) call!88202) (ite c!208691 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!208693 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!208691 (minValue!1559 (v!20761 (underlying!2820 thiss!47531))) (ite c!208693 (zeroValue!1559 (v!20761 (underlying!2820 thiss!47531))) (minValue!1559 (v!20761 (underlying!2820 thiss!47531)))))))))

(declare-fun b!1256900 () Bool)

(declare-datatypes ((tuple3!1112 0))(
  ( (tuple3!1113 (_1!7081 Bool) (_2!7081 Cell!5115) (_3!847 MutLongMap!1302)) )
))
(declare-fun e!799973 () tuple3!1112)

(declare-fun lt!420744 () tuple2!12466)

(assert (=> b!1256900 (= e!799973 (ite (_1!7080 lt!420744) (tuple3!1113 true (underlying!2820 thiss!47531) (LongMap!1302 (Cell!5116 (_2!7080 lt!420744)))) (tuple3!1113 false (Cell!5116 (_2!7080 lt!420744)) thiss!47531)))))

(declare-datatypes ((tuple2!12468 0))(
  ( (tuple2!12469 (_1!7082 Bool) (_2!7082 Cell!5115)) )
))
(declare-fun lt!420749 () tuple2!12468)

(declare-fun repackFrom!4 (MutLongMap!1302 LongMapFixedSize!2604 (_ BitVec 32)) tuple2!12466)

(assert (=> b!1256900 (= lt!420744 (repackFrom!4 thiss!47531 (v!20761 (_2!7082 lt!420749)) (bvsub (size!9948 (_keys!1596 (v!20761 (underlying!2820 thiss!47531)))) #b00000000000000000000000000000001)))))

(declare-fun b!1256901 () Bool)

(declare-fun lt!420746 () tuple2!12466)

(declare-fun call!88199 () tuple2!12466)

(assert (=> b!1256901 (= lt!420746 call!88199)))

(declare-fun e!799968 () tuple2!12468)

(assert (=> b!1256901 (= e!799968 (tuple2!12469 (_1!7080 lt!420746) (Cell!5116 (_2!7080 lt!420746))))))

(declare-fun bm!88195 () Bool)

(declare-fun call!88200 () LongMapFixedSize!2604)

(declare-fun lt!420752 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!10 ((_ BitVec 32) Int) LongMapFixedSize!2604)

(assert (=> bm!88195 (= call!88200 (getNewLongMapFixedSize!10 lt!420752 (defaultEntry!1662 (v!20761 (underlying!2820 thiss!47531)))))))

(declare-fun b!1256902 () Bool)

(declare-fun e!799970 () Bool)

(declare-fun lt!420753 () tuple2!12464)

(assert (=> b!1256902 (= e!799970 (= (map!2743 (_2!7079 lt!420753)) (map!2743 thiss!47531)))))

(declare-fun bm!88196 () Bool)

(assert (=> bm!88196 (= call!88202 call!88200)))

(declare-fun b!1256903 () Bool)

(declare-fun e!799971 () tuple2!12468)

(declare-fun lt!420745 () tuple2!12466)

(assert (=> b!1256903 (= e!799971 (tuple2!12469 (_1!7080 lt!420745) (Cell!5116 (_2!7080 lt!420745))))))

(assert (=> b!1256903 (= lt!420745 call!88199)))

(declare-fun b!1256904 () Bool)

(declare-fun e!799972 () tuple2!12468)

(declare-fun lt!420751 () tuple2!12466)

(assert (=> b!1256904 (= e!799972 (tuple2!12469 (and (_1!7080 lt!420750) (_1!7080 lt!420751)) (Cell!5116 (_2!7080 lt!420751))))))

(assert (=> b!1256904 (= lt!420750 (update!78 call!88200 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1559 (v!20761 (underlying!2820 thiss!47531)))))))

(assert (=> b!1256904 (= lt!420751 call!88201)))

(declare-fun b!1256905 () Bool)

(assert (=> b!1256905 (= e!799973 (tuple3!1113 false (_2!7082 lt!420749) thiss!47531))))

(declare-fun b!1256906 () Bool)

(declare-fun c!208692 () Bool)

(assert (=> b!1256906 (= c!208692 (and (not (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1256906 (= e!799968 e!799971)))

(declare-fun b!1256907 () Bool)

(declare-fun lt!420748 () Cell!5115)

(assert (=> b!1256907 (= e!799971 (tuple2!12469 true lt!420748))))

(declare-fun b!1256908 () Bool)

(declare-fun e!799969 () Bool)

(assert (=> b!1256908 (= e!799969 e!799970)))

(declare-fun res!556495 () Bool)

(assert (=> b!1256908 (=> res!556495 e!799970)))

(assert (=> b!1256908 (= res!556495 (= (_1!7079 lt!420753) false))))

(declare-fun b!1256909 () Bool)

(assert (=> b!1256909 (= e!799972 e!799968)))

(assert (=> b!1256909 (= c!208693 (and (not (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!88197 () Bool)

(assert (=> bm!88197 (= call!88199 call!88201)))

(declare-fun d!355194 () Bool)

(assert (=> d!355194 e!799969))

(declare-fun res!556496 () Bool)

(assert (=> d!355194 (=> (not res!556496) (not e!799969))))

(assert (=> d!355194 (= res!556496 ((_ is LongMap!1302) (_2!7079 lt!420753)))))

(declare-fun lt!420747 () tuple3!1112)

(assert (=> d!355194 (= lt!420753 (tuple2!12465 (_1!7081 lt!420747) (_3!847 lt!420747)))))

(assert (=> d!355194 (= lt!420747 e!799973)))

(declare-fun c!208690 () Bool)

(assert (=> d!355194 (= c!208690 (not (_1!7082 lt!420749)))))

(assert (=> d!355194 (= lt!420749 e!799972)))

(assert (=> d!355194 (= c!208691 (and (not (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1549 (v!20761 (underlying!2820 thiss!47531))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!355194 (= lt!420748 (Cell!5116 (getNewLongMapFixedSize!10 lt!420752 (defaultEntry!1662 (v!20761 (underlying!2820 thiss!47531))))))))

(declare-fun computeNewMask!4 (MutLongMap!1302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!355194 (= lt!420752 (computeNewMask!4 thiss!47531 (mask!4109 (v!20761 (underlying!2820 thiss!47531))) (_vacant!1363 (v!20761 (underlying!2820 thiss!47531))) (_size!2696 (v!20761 (underlying!2820 thiss!47531)))))))

(assert (=> d!355194 (valid!1037 thiss!47531)))

(assert (=> d!355194 (= (repack!13 thiss!47531) lt!420753)))

(assert (= (and d!355194 c!208691) b!1256904))

(assert (= (and d!355194 (not c!208691)) b!1256909))

(assert (= (and b!1256909 c!208693) b!1256901))

(assert (= (and b!1256909 (not c!208693)) b!1256906))

(assert (= (and b!1256906 c!208692) b!1256903))

(assert (= (and b!1256906 (not c!208692)) b!1256907))

(assert (= (or b!1256901 b!1256903) bm!88196))

(assert (= (or b!1256901 b!1256903) bm!88197))

(assert (= (or b!1256904 bm!88196) bm!88195))

(assert (= (or b!1256904 bm!88197) bm!88194))

(assert (= (and d!355194 c!208690) b!1256905))

(assert (= (and d!355194 (not c!208690)) b!1256900))

(assert (= (and d!355194 res!556496) b!1256908))

(assert (= (and b!1256908 (not res!556495)) b!1256902))

(declare-fun m!1415127 () Bool)

(assert (=> bm!88194 m!1415127))

(declare-fun m!1415129 () Bool)

(assert (=> b!1256904 m!1415129))

(declare-fun m!1415131 () Bool)

(assert (=> d!355194 m!1415131))

(declare-fun m!1415133 () Bool)

(assert (=> d!355194 m!1415133))

(assert (=> d!355194 m!1414949))

(assert (=> bm!88195 m!1415131))

(declare-fun m!1415135 () Bool)

(assert (=> b!1256900 m!1415135))

(declare-fun m!1415137 () Bool)

(assert (=> b!1256902 m!1415137))

(assert (=> b!1256902 m!1414987))

(assert (=> b!1256672 d!355194))

(declare-fun d!355196 () Bool)

(assert (=> d!355196 (= (imbalanced!9 thiss!47531) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!2696 (v!20761 (underlying!2820 thiss!47531))) (_vacant!1363 (v!20761 (underlying!2820 thiss!47531))))) (mask!4109 (v!20761 (underlying!2820 thiss!47531)))) (bvsgt (_vacant!1363 (v!20761 (underlying!2820 thiss!47531))) (_size!2696 (v!20761 (underlying!2820 thiss!47531))))))))

(assert (=> d!355162 d!355196))

(declare-fun d!355198 () Bool)

(assert (=> d!355198 (= (valid!1037 thiss!47531) (valid!1039 (v!20761 (underlying!2820 thiss!47531))))))

(declare-fun bs!290362 () Bool)

(assert (= bs!290362 d!355198))

(declare-fun m!1415139 () Bool)

(assert (=> bs!290362 m!1415139))

(assert (=> d!355162 d!355198))

(declare-fun d!355200 () Bool)

(assert (=> d!355200 (= (abstractMap!48 thiss!47531) (map!2743 thiss!47531))))

(declare-fun bs!290363 () Bool)

(assert (= bs!290363 d!355200))

(assert (=> bs!290363 m!1414987))

(assert (=> b!1256686 d!355200))

(declare-fun d!355202 () Bool)

(assert (=> d!355202 (= (valid!1037 (_2!7079 lt!420607)) (valid!1039 (v!20761 (underlying!2820 (_2!7079 lt!420607)))))))

(declare-fun bs!290364 () Bool)

(assert (= bs!290364 d!355202))

(declare-fun m!1415141 () Bool)

(assert (=> bs!290364 m!1415141))

(assert (=> b!1256673 d!355202))

(declare-fun d!355204 () Bool)

(assert (=> d!355204 (= (valid!1037 (_2!7079 lt!420585)) (valid!1039 (v!20761 (underlying!2820 (_2!7079 lt!420585)))))))

(declare-fun bs!290365 () Bool)

(assert (= bs!290365 d!355204))

(declare-fun m!1415143 () Bool)

(assert (=> bs!290365 m!1415143))

(assert (=> b!1256648 d!355204))

(declare-fun d!355206 () Bool)

(declare-fun res!556501 () Bool)

(declare-fun e!799978 () Bool)

(assert (=> d!355206 (=> res!556501 e!799978)))

(assert (=> d!355206 (= res!556501 (and ((_ is Cons!12563) (toList!700 lt!420584)) (= (_1!7078 (h!17964 (toList!700 lt!420584))) key!7099)))))

(assert (=> d!355206 (= (containsKey!33 (toList!700 lt!420584) key!7099) e!799978)))

(declare-fun b!1256914 () Bool)

(declare-fun e!799979 () Bool)

(assert (=> b!1256914 (= e!799978 e!799979)))

(declare-fun res!556502 () Bool)

(assert (=> b!1256914 (=> (not res!556502) (not e!799979))))

(assert (=> b!1256914 (= res!556502 (and (or (not ((_ is Cons!12563) (toList!700 lt!420584))) (bvsle (_1!7078 (h!17964 (toList!700 lt!420584))) key!7099)) ((_ is Cons!12563) (toList!700 lt!420584)) (bvslt (_1!7078 (h!17964 (toList!700 lt!420584))) key!7099)))))

(declare-fun b!1256915 () Bool)

(assert (=> b!1256915 (= e!799979 (containsKey!33 (t!115759 (toList!700 lt!420584)) key!7099))))

(assert (= (and d!355206 (not res!556501)) b!1256914))

(assert (= (and b!1256914 res!556502) b!1256915))

(declare-fun m!1415145 () Bool)

(assert (=> b!1256915 m!1415145))

(assert (=> d!355164 d!355206))

(assert (=> b!1256634 d!355198))

(declare-fun d!355208 () Bool)

(declare-fun choose!7869 (MutLongMap!1302) Bool)

(assert (=> d!355208 (= (valid!1038 (_2!7079 lt!420585)) (choose!7869 (_2!7079 lt!420585)))))

(declare-fun bs!290366 () Bool)

(assert (= bs!290366 d!355208))

(declare-fun m!1415147 () Bool)

(assert (=> bs!290366 m!1415147))

(assert (=> b!1256649 d!355208))

(declare-fun d!355210 () Bool)

(assert (=> d!355210 (= (abstractMap!48 (_2!7079 lt!420585)) (map!2743 (_2!7079 lt!420585)))))

(declare-fun bs!290367 () Bool)

(assert (= bs!290367 d!355210))

(declare-fun m!1415149 () Bool)

(assert (=> bs!290367 m!1415149))

(assert (=> b!1256646 d!355210))

(declare-fun d!355212 () Bool)

(assert (=> d!355212 (= (valid!1038 thiss!47531) (choose!7869 thiss!47531))))

(declare-fun bs!290368 () Bool)

(assert (= bs!290368 d!355212))

(declare-fun m!1415151 () Bool)

(assert (=> bs!290368 m!1415151))

(assert (=> b!1256635 d!355212))

(declare-fun d!355214 () Bool)

(assert (=> d!355214 (isDefined!2162 (getValueByKey!24 (toList!700 lt!420584) key!7099))))

(declare-fun lt!420756 () Unit!18842)

(declare-fun choose!7870 (List!12627 (_ BitVec 64)) Unit!18842)

(assert (=> d!355214 (= lt!420756 (choose!7870 (toList!700 lt!420584) key!7099))))

(declare-fun e!799982 () Bool)

(assert (=> d!355214 e!799982))

(declare-fun res!556505 () Bool)

(assert (=> d!355214 (=> (not res!556505) (not e!799982))))

(assert (=> d!355214 (= res!556505 (isStrictlySorted!1 (toList!700 lt!420584)))))

(assert (=> d!355214 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!700 lt!420584) key!7099) lt!420756)))

(declare-fun b!1256918 () Bool)

(assert (=> b!1256918 (= e!799982 (containsKey!33 (toList!700 lt!420584) key!7099))))

(assert (= (and d!355214 res!556505) b!1256918))

(assert (=> d!355214 m!1414993))

(assert (=> d!355214 m!1414993))

(assert (=> d!355214 m!1414995))

(declare-fun m!1415153 () Bool)

(assert (=> d!355214 m!1415153))

(declare-fun m!1415155 () Bool)

(assert (=> d!355214 m!1415155))

(assert (=> b!1256918 m!1414989))

(assert (=> b!1256683 d!355214))

(assert (=> b!1256683 d!355178))

(assert (=> b!1256683 d!355180))

(declare-fun d!355216 () Bool)

(assert (=> d!355216 (= (map!2743 (_2!7079 lt!420607)) (map!2744 (v!20761 (underlying!2820 (_2!7079 lt!420607)))))))

(declare-fun bs!290369 () Bool)

(assert (= bs!290369 d!355216))

(declare-fun m!1415157 () Bool)

(assert (=> bs!290369 m!1415157))

(assert (=> bm!88103 d!355216))

(declare-fun d!355218 () Bool)

(assert (=> d!355218 (= (abstractMap!49 (_2!7079 lt!420585)) (choose!7868 (_2!7079 lt!420585)))))

(declare-fun bs!290370 () Bool)

(assert (= bs!290370 d!355218))

(declare-fun m!1415159 () Bool)

(assert (=> bs!290370 m!1415159))

(assert (=> b!1256647 d!355218))

(declare-fun condMapEmpty!6259 () Bool)

(declare-fun mapDefault!6259 () V!2938)

(assert (=> mapNonEmpty!6258 (= condMapEmpty!6259 (= mapRest!6258 ((as const (Array (_ BitVec 32) V!2938)) mapDefault!6259)))))

(declare-fun mapRes!6259 () Bool)

(assert (=> mapNonEmpty!6258 (= tp!370549 (and tp_is_empty!6499 mapRes!6259))))

(declare-fun mapIsEmpty!6259 () Bool)

(assert (=> mapIsEmpty!6259 mapRes!6259))

(declare-fun mapNonEmpty!6259 () Bool)

(declare-fun tp!370550 () Bool)

(assert (=> mapNonEmpty!6259 (= mapRes!6259 (and tp!370550 tp_is_empty!6499))))

(declare-fun mapRest!6259 () (Array (_ BitVec 32) V!2938))

(declare-fun mapValue!6259 () V!2938)

(declare-fun mapKey!6259 () (_ BitVec 32))

(assert (=> mapNonEmpty!6259 (= mapRest!6258 (store mapRest!6259 mapKey!6259 mapValue!6259))))

(assert (= (and mapNonEmpty!6258 condMapEmpty!6259) mapIsEmpty!6259))

(assert (= (and mapNonEmpty!6258 (not condMapEmpty!6259)) mapNonEmpty!6259))

(declare-fun m!1415161 () Bool)

(assert (=> mapNonEmpty!6259 m!1415161))

(check-sat (not bm!88170) (not bm!88169) (not b!1256874) (not d!355170) (not d!355194) (not d!355188) (not mapNonEmpty!6259) (not d!355216) (not b!1256915) (not b!1256837) (not b!1256820) (not bm!88153) (not b!1256800) (not d!355198) (not d!355184) (not b!1256849) (not d!355212) (not d!355178) (not d!355202) (not b!1256904) (not b!1256876) (not d!355192) (not bm!88161) (not d!355176) (not bm!88164) (not b!1256819) (not d!355190) (not b!1256832) (not b!1256848) (not d!355208) (not bm!88162) (not d!355172) (not b!1256900) (not d!355204) (not b!1256700) (not b!1256902) (not b!1256873) (not bm!88157) (not b!1256824) (not b!1256918) (not b_next!30439) (not bm!88156) (not b!1256810) (not d!355218) (not d!355174) (not bm!88172) (not d!355214) (not bm!88163) (not b!1256836) (not b!1256834) (not b!1256842) (not bm!88155) (not b!1256839) (not bm!88185) (not b!1256814) (not d!355210) (not bm!88173) tp_is_empty!6499 b_and!84879 (not d!355200) (not bm!88195) (not b!1256702) (not b!1256703) (not bm!88194) (not d!355182) (not bm!88176) (not b!1256709))
(check-sat b_and!84879 (not b_next!30439))
