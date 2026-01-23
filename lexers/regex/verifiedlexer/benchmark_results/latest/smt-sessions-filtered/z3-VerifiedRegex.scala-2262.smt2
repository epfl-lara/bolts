; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110770 () Bool)

(assert start!110770)

(declare-fun b!1256529 () Bool)

(declare-fun b_free!29731 () Bool)

(declare-fun b_next!30435 () Bool)

(assert (=> b!1256529 (= b_free!29731 (not b_next!30435))))

(declare-fun tp!370531 () Bool)

(declare-fun b_and!84875 () Bool)

(assert (=> b!1256529 (= tp!370531 b_and!84875)))

(declare-datatypes ((V!2933 0))(
  ( (V!2934 (val!4178 Int)) )
))
(declare-datatypes ((array!4602 0))(
  ( (array!4603 (arr!2053 (Array (_ BitVec 32) (_ BitVec 64))) (size!9944 (_ BitVec 32))) )
))
(declare-datatypes ((array!4604 0))(
  ( (array!4605 (arr!2054 (Array (_ BitVec 32) V!2933)) (size!9945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2600 0))(
  ( (LongMapFixedSize!2601 (defaultEntry!1660 Int) (mask!4106 (_ BitVec 32)) (extraKeys!1547 (_ BitVec 32)) (zeroValue!1557 V!2933) (minValue!1557 V!2933) (_size!2694 (_ BitVec 32)) (_keys!1594 array!4602) (_values!1579 array!4604) (_vacant!1361 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5111 0))(
  ( (Cell!5112 (v!20755 LongMapFixedSize!2600)) )
))
(declare-datatypes ((MutLongMap!1300 0))(
  ( (LongMap!1300 (underlying!2818 Cell!5111)) (MutLongMapExt!1299 (__x!8194 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1300)

(declare-fun tp_is_empty!6495 () Bool)

(declare-fun e!799747 () Bool)

(declare-fun e!799746 () Bool)

(declare-fun array_inv!1493 (array!4602) Bool)

(declare-fun array_inv!1494 (array!4604) Bool)

(assert (=> b!1256529 (= e!799746 (and tp!370531 tp_is_empty!6495 (array_inv!1493 (_keys!1594 (v!20755 (underlying!2818 thiss!47531)))) (array_inv!1494 (_values!1579 (v!20755 (underlying!2818 thiss!47531)))) e!799747))))

(declare-fun mapNonEmpty!6246 () Bool)

(declare-fun mapRes!6246 () Bool)

(declare-fun tp!370530 () Bool)

(assert (=> mapNonEmpty!6246 (= mapRes!6246 (and tp!370530 tp_is_empty!6495))))

(declare-fun mapKey!6246 () (_ BitVec 32))

(declare-fun mapValue!6246 () V!2933)

(declare-fun mapRest!6246 () (Array (_ BitVec 32) V!2933))

(assert (=> mapNonEmpty!6246 (= (arr!2054 (_values!1579 (v!20755 (underlying!2818 thiss!47531)))) (store mapRest!6246 mapKey!6246 mapValue!6246))))

(declare-fun mapIsEmpty!6246 () Bool)

(assert (=> mapIsEmpty!6246 mapRes!6246))

(declare-fun res!556374 () Bool)

(declare-fun e!799749 () Bool)

(assert (=> start!110770 (=> (not res!556374) (not e!799749))))

(declare-fun valid!1032 (MutLongMap!1300) Bool)

(assert (=> start!110770 (= res!556374 (valid!1032 thiss!47531))))

(assert (=> start!110770 e!799749))

(declare-fun e!799745 () Bool)

(assert (=> start!110770 e!799745))

(assert (=> start!110770 true))

(assert (=> start!110770 tp_is_empty!6495))

(declare-fun b!1256530 () Bool)

(declare-fun e!799744 () Bool)

(assert (=> b!1256530 (= e!799745 e!799744)))

(declare-fun b!1256531 () Bool)

(assert (=> b!1256531 (= e!799744 e!799746)))

(declare-fun b!1256532 () Bool)

(assert (=> b!1256532 (= e!799747 (and tp_is_empty!6495 mapRes!6246))))

(declare-fun condMapEmpty!6246 () Bool)

(declare-fun mapDefault!6246 () V!2933)

(assert (=> b!1256532 (= condMapEmpty!6246 (= (arr!2054 (_values!1579 (v!20755 (underlying!2818 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2933)) mapDefault!6246)))))

(declare-fun b!1256533 () Bool)

(declare-fun res!556375 () Bool)

(assert (=> b!1256533 (=> (not res!556375) (not e!799749))))

(get-info :version)

(assert (=> b!1256533 (= res!556375 ((_ is LongMap!1300) thiss!47531))))

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun b!1256534 () Bool)

(declare-fun v!11775 () V!2933)

(declare-datatypes ((tuple2!12452 0))(
  ( (tuple2!12453 (_1!7073 Bool) (_2!7073 MutLongMap!1300)) )
))
(declare-fun update!74 (MutLongMap!1300 (_ BitVec 64) V!2933) tuple2!12452)

(assert (=> b!1256534 (= e!799749 (not ((_ is LongMap!1300) (_2!7073 (update!74 thiss!47531 key!7099 v!11775)))))))

(assert (= (and start!110770 res!556374) b!1256533))

(assert (= (and b!1256533 res!556375) b!1256534))

(assert (= (and b!1256532 condMapEmpty!6246) mapIsEmpty!6246))

(assert (= (and b!1256532 (not condMapEmpty!6246)) mapNonEmpty!6246))

(assert (= b!1256529 b!1256532))

(assert (= b!1256531 b!1256529))

(assert (= b!1256530 b!1256531))

(assert (= (and start!110770 ((_ is LongMap!1300) thiss!47531)) b!1256530))

(declare-fun m!1414877 () Bool)

(assert (=> b!1256529 m!1414877))

(declare-fun m!1414879 () Bool)

(assert (=> b!1256529 m!1414879))

(declare-fun m!1414881 () Bool)

(assert (=> mapNonEmpty!6246 m!1414881))

(declare-fun m!1414883 () Bool)

(assert (=> start!110770 m!1414883))

(declare-fun m!1414885 () Bool)

(assert (=> b!1256534 m!1414885))

(check-sat (not b_next!30435) (not b!1256529) tp_is_empty!6495 (not start!110770) (not mapNonEmpty!6246) (not b!1256534) b_and!84875)
(check-sat b_and!84875 (not b_next!30435))
(get-model)

(declare-fun d!355141 () Bool)

(declare-fun c!208583 () Bool)

(assert (=> d!355141 (= c!208583 ((_ is LongMap!1300) thiss!47531))))

(declare-fun e!799752 () Bool)

(assert (=> d!355141 (= (valid!1032 thiss!47531) e!799752)))

(declare-fun b!1256539 () Bool)

(declare-fun valid!1033 (MutLongMap!1300) Bool)

(assert (=> b!1256539 (= e!799752 (valid!1033 thiss!47531))))

(declare-fun b!1256540 () Bool)

(declare-fun valid!1034 (MutLongMap!1300) Bool)

(assert (=> b!1256540 (= e!799752 (valid!1034 thiss!47531))))

(assert (= (and d!355141 c!208583) b!1256539))

(assert (= (and d!355141 (not c!208583)) b!1256540))

(declare-fun m!1414887 () Bool)

(assert (=> b!1256539 m!1414887))

(declare-fun m!1414889 () Bool)

(assert (=> b!1256540 m!1414889))

(assert (=> start!110770 d!355141))

(declare-fun b!1256559 () Bool)

(declare-fun e!799766 () Bool)

(declare-fun e!799763 () Bool)

(assert (=> b!1256559 (= e!799766 e!799763)))

(declare-fun c!208590 () Bool)

(declare-fun lt!420573 () tuple2!12452)

(assert (=> b!1256559 (= c!208590 (_1!7073 lt!420573))))

(declare-fun b!1256560 () Bool)

(declare-fun res!556382 () Bool)

(assert (=> b!1256560 (=> (not res!556382) (not e!799766))))

(assert (=> b!1256560 (= res!556382 (valid!1033 (_2!7073 lt!420573)))))

(declare-fun d!355143 () Bool)

(assert (=> d!355143 e!799766))

(declare-fun res!556383 () Bool)

(assert (=> d!355143 (=> (not res!556383) (not e!799766))))

(assert (=> d!355143 (= res!556383 ((_ is LongMap!1300) (_2!7073 lt!420573)))))

(declare-fun e!799767 () tuple2!12452)

(assert (=> d!355143 (= lt!420573 e!799767)))

(declare-fun c!208592 () Bool)

(declare-fun lt!420570 () tuple2!12452)

(assert (=> d!355143 (= c!208592 (_1!7073 lt!420570))))

(declare-fun e!799764 () tuple2!12452)

(assert (=> d!355143 (= lt!420570 e!799764)))

(declare-fun c!208591 () Bool)

(declare-fun imbalanced!8 (MutLongMap!1300) Bool)

(assert (=> d!355143 (= c!208591 (imbalanced!8 thiss!47531))))

(assert (=> d!355143 (valid!1033 thiss!47531)))

(assert (=> d!355143 (= (update!74 thiss!47531 key!7099 v!11775) lt!420573)))

(declare-fun b!1256561 () Bool)

(declare-datatypes ((tuple2!12454 0))(
  ( (tuple2!12455 (_1!7074 (_ BitVec 64)) (_2!7074 V!2933)) )
))
(declare-datatypes ((List!12625 0))(
  ( (Nil!12561) (Cons!12561 (h!17962 tuple2!12454) (t!115757 List!12625)) )
))
(declare-datatypes ((ListLongMap!133 0))(
  ( (ListLongMap!134 (toList!698 List!12625)) )
))
(declare-fun call!88090 () ListLongMap!133)

(declare-fun call!88091 () ListLongMap!133)

(assert (=> b!1256561 (= e!799763 (= call!88090 call!88091))))

(declare-fun bm!88085 () Bool)

(declare-fun map!2741 (MutLongMap!1300) ListLongMap!133)

(assert (=> bm!88085 (= call!88090 (map!2741 (_2!7073 lt!420573)))))

(declare-fun bm!88086 () Bool)

(assert (=> bm!88086 (= call!88091 (map!2741 thiss!47531))))

(declare-fun b!1256562 () Bool)

(declare-fun e!799765 () Bool)

(declare-fun +!32 (ListLongMap!133 tuple2!12454) ListLongMap!133)

(assert (=> b!1256562 (= e!799765 (= call!88090 (+!32 call!88091 (tuple2!12455 key!7099 v!11775))))))

(declare-fun b!1256563 () Bool)

(assert (=> b!1256563 (= e!799767 (tuple2!12453 false (_2!7073 lt!420570)))))

(declare-fun b!1256564 () Bool)

(assert (=> b!1256564 (= e!799764 (tuple2!12453 true thiss!47531))))

(declare-fun b!1256565 () Bool)

(assert (=> b!1256565 (= e!799763 e!799765)))

(declare-fun res!556384 () Bool)

(declare-fun contains!2118 (ListLongMap!133 (_ BitVec 64)) Bool)

(assert (=> b!1256565 (= res!556384 (contains!2118 call!88090 key!7099))))

(assert (=> b!1256565 (=> (not res!556384) (not e!799765))))

(declare-fun b!1256566 () Bool)

(declare-fun lt!420571 () tuple2!12452)

(assert (=> b!1256566 (= e!799764 (tuple2!12453 (_1!7073 lt!420571) (_2!7073 lt!420571)))))

(declare-fun repack!12 (MutLongMap!1300) tuple2!12452)

(assert (=> b!1256566 (= lt!420571 (repack!12 thiss!47531))))

(declare-fun b!1256567 () Bool)

(declare-datatypes ((tuple2!12456 0))(
  ( (tuple2!12457 (_1!7075 Bool) (_2!7075 LongMapFixedSize!2600)) )
))
(declare-fun lt!420572 () tuple2!12456)

(assert (=> b!1256567 (= e!799767 (tuple2!12453 (_1!7075 lt!420572) (LongMap!1300 (Cell!5112 (_2!7075 lt!420572)))))))

(declare-fun update!75 (LongMapFixedSize!2600 (_ BitVec 64) V!2933) tuple2!12456)

(assert (=> b!1256567 (= lt!420572 (update!75 (v!20755 (underlying!2818 (_2!7073 lt!420570))) key!7099 v!11775))))

(assert (= (and d!355143 c!208591) b!1256566))

(assert (= (and d!355143 (not c!208591)) b!1256564))

(assert (= (and d!355143 c!208592) b!1256567))

(assert (= (and d!355143 (not c!208592)) b!1256563))

(assert (= (and d!355143 res!556383) b!1256560))

(assert (= (and b!1256560 res!556382) b!1256559))

(assert (= (and b!1256559 c!208590) b!1256565))

(assert (= (and b!1256559 (not c!208590)) b!1256561))

(assert (= (and b!1256565 res!556384) b!1256562))

(assert (= (or b!1256562 b!1256561) bm!88086))

(assert (= (or b!1256565 b!1256562 b!1256561) bm!88085))

(declare-fun m!1414891 () Bool)

(assert (=> b!1256567 m!1414891))

(declare-fun m!1414893 () Bool)

(assert (=> bm!88085 m!1414893))

(declare-fun m!1414895 () Bool)

(assert (=> b!1256565 m!1414895))

(declare-fun m!1414897 () Bool)

(assert (=> b!1256562 m!1414897))

(declare-fun m!1414899 () Bool)

(assert (=> bm!88086 m!1414899))

(declare-fun m!1414901 () Bool)

(assert (=> b!1256566 m!1414901))

(declare-fun m!1414903 () Bool)

(assert (=> b!1256560 m!1414903))

(declare-fun m!1414905 () Bool)

(assert (=> d!355143 m!1414905))

(assert (=> d!355143 m!1414887))

(assert (=> b!1256534 d!355143))

(declare-fun d!355145 () Bool)

(assert (=> d!355145 (= (array_inv!1493 (_keys!1594 (v!20755 (underlying!2818 thiss!47531)))) (bvsge (size!9944 (_keys!1594 (v!20755 (underlying!2818 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256529 d!355145))

(declare-fun d!355147 () Bool)

(assert (=> d!355147 (= (array_inv!1494 (_values!1579 (v!20755 (underlying!2818 thiss!47531)))) (bvsge (size!9945 (_values!1579 (v!20755 (underlying!2818 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256529 d!355147))

(declare-fun condMapEmpty!6249 () Bool)

(declare-fun mapDefault!6249 () V!2933)

(assert (=> mapNonEmpty!6246 (= condMapEmpty!6249 (= mapRest!6246 ((as const (Array (_ BitVec 32) V!2933)) mapDefault!6249)))))

(declare-fun mapRes!6249 () Bool)

(assert (=> mapNonEmpty!6246 (= tp!370530 (and tp_is_empty!6495 mapRes!6249))))

(declare-fun mapIsEmpty!6249 () Bool)

(assert (=> mapIsEmpty!6249 mapRes!6249))

(declare-fun mapNonEmpty!6249 () Bool)

(declare-fun tp!370534 () Bool)

(assert (=> mapNonEmpty!6249 (= mapRes!6249 (and tp!370534 tp_is_empty!6495))))

(declare-fun mapKey!6249 () (_ BitVec 32))

(declare-fun mapValue!6249 () V!2933)

(declare-fun mapRest!6249 () (Array (_ BitVec 32) V!2933))

(assert (=> mapNonEmpty!6249 (= mapRest!6246 (store mapRest!6249 mapKey!6249 mapValue!6249))))

(assert (= (and mapNonEmpty!6246 condMapEmpty!6249) mapIsEmpty!6249))

(assert (= (and mapNonEmpty!6246 (not condMapEmpty!6249)) mapNonEmpty!6249))

(declare-fun m!1414907 () Bool)

(assert (=> mapNonEmpty!6249 m!1414907))

(check-sat (not b_next!30435) (not b!1256562) tp_is_empty!6495 (not mapNonEmpty!6249) (not bm!88085) (not b!1256565) (not b!1256566) (not b!1256539) (not d!355143) (not bm!88086) (not b!1256567) (not b!1256540) b_and!84875 (not b!1256560))
(check-sat b_and!84875 (not b_next!30435))
