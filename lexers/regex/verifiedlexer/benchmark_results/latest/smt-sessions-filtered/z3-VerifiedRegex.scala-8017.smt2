; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415158 () Bool)

(assert start!415158)

(declare-fun b!4315774 () Bool)

(declare-fun b_free!128819 () Bool)

(declare-fun b_next!129523 () Bool)

(assert (=> b!4315774 (= b_free!128819 (not b_next!129523))))

(declare-fun tp!1325919 () Bool)

(declare-fun b_and!340299 () Bool)

(assert (=> b!4315774 (= tp!1325919 b_and!340299)))

(declare-fun b!4315768 () Bool)

(declare-fun b_free!128821 () Bool)

(declare-fun b_next!129525 () Bool)

(assert (=> b!4315768 (= b_free!128821 (not b_next!129525))))

(declare-fun tp!1325924 () Bool)

(declare-fun b_and!340301 () Bool)

(assert (=> b!4315768 (= tp!1325924 b_and!340301)))

(declare-fun b!4315766 () Bool)

(declare-fun e!2684670 () Bool)

(declare-fun e!2684664 () Bool)

(declare-datatypes ((V!9736 0))(
  ( (V!9737 (val!15885 Int)) )
))
(declare-datatypes ((K!9534 0))(
  ( (K!9535 (val!15886 Int)) )
))
(declare-datatypes ((tuple2!46950 0))(
  ( (tuple2!46951 (_1!26757 K!9534) (_2!26757 V!9736)) )
))
(declare-datatypes ((List!48425 0))(
  ( (Nil!48301) (Cons!48301 (h!53753 tuple2!46950) (t!355272 List!48425)) )
))
(declare-datatypes ((array!17058 0))(
  ( (array!17059 (arr!7615 (Array (_ BitVec 32) (_ BitVec 64))) (size!35654 (_ BitVec 32))) )
))
(declare-datatypes ((array!17060 0))(
  ( (array!17061 (arr!7616 (Array (_ BitVec 32) List!48425)) (size!35655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9430 0))(
  ( (LongMapFixedSize!9431 (defaultEntry!5100 Int) (mask!13301 (_ BitVec 32)) (extraKeys!4964 (_ BitVec 32)) (zeroValue!4974 List!48425) (minValue!4974 List!48425) (_size!9473 (_ BitVec 32)) (_keys!5015 array!17058) (_values!4996 array!17060) (_vacant!4776 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18669 0))(
  ( (Cell!18670 (v!42576 LongMapFixedSize!9430)) )
))
(declare-datatypes ((MutLongMap!4715 0))(
  ( (LongMap!4715 (underlying!9659 Cell!18669)) (MutLongMapExt!4714 (__x!30170 Int)) )
))
(declare-fun lt!1535308 () MutLongMap!4715)

(get-info :version)

(assert (=> b!4315766 (= e!2684670 (and e!2684664 ((_ is LongMap!4715) lt!1535308)))))

(declare-datatypes ((Hashable!4631 0))(
  ( (HashableExt!4630 (__x!30171 Int)) )
))
(declare-datatypes ((Cell!18671 0))(
  ( (Cell!18672 (v!42577 MutLongMap!4715)) )
))
(declare-datatypes ((MutableMap!4621 0))(
  ( (MutableMapExt!4620 (__x!30172 Int)) (HashMap!4621 (underlying!9660 Cell!18671) (hashF!6836 Hashable!4631) (_size!9474 (_ BitVec 32)) (defaultValue!4792 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4621)

(assert (=> b!4315766 (= lt!1535308 (v!42577 (underlying!9660 thiss!42308)))))

(declare-fun b!4315767 () Bool)

(declare-fun res!1768942 () Bool)

(declare-fun e!2684668 () Bool)

(assert (=> b!4315767 (=> (not res!1768942) (not e!2684668))))

(declare-fun valid!3715 (MutableMap!4621) Bool)

(assert (=> b!4315767 (= res!1768942 (valid!3715 thiss!42308))))

(declare-fun e!2684669 () Bool)

(assert (=> b!4315768 (= e!2684669 (and e!2684670 tp!1325924))))

(declare-fun mapIsEmpty!21034 () Bool)

(declare-fun mapRes!21034 () Bool)

(assert (=> mapIsEmpty!21034 mapRes!21034))

(declare-fun b!4315769 () Bool)

(declare-fun e!2684661 () Bool)

(declare-fun e!2684663 () Bool)

(assert (=> b!4315769 (= e!2684661 e!2684663)))

(declare-fun b!4315770 () Bool)

(assert (=> b!4315770 (= e!2684664 e!2684661)))

(declare-fun b!4315771 () Bool)

(declare-fun e!2684667 () Bool)

(declare-fun tp!1325920 () Bool)

(assert (=> b!4315771 (= e!2684667 (and tp!1325920 mapRes!21034))))

(declare-fun condMapEmpty!21034 () Bool)

(declare-fun mapDefault!21034 () List!48425)

(assert (=> b!4315771 (= condMapEmpty!21034 (= (arr!7616 (_values!4996 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48425)) mapDefault!21034)))))

(declare-fun res!1768943 () Bool)

(assert (=> start!415158 (=> (not res!1768943) (not e!2684668))))

(assert (=> start!415158 (= res!1768943 ((_ is HashMap!4621) thiss!42308))))

(assert (=> start!415158 e!2684668))

(assert (=> start!415158 e!2684669))

(declare-fun tp_is_empty!23965 () Bool)

(assert (=> start!415158 tp_is_empty!23965))

(declare-fun tp_is_empty!23967 () Bool)

(assert (=> start!415158 tp_is_empty!23967))

(declare-fun mapNonEmpty!21034 () Bool)

(declare-fun tp!1325918 () Bool)

(declare-fun tp!1325923 () Bool)

(assert (=> mapNonEmpty!21034 (= mapRes!21034 (and tp!1325918 tp!1325923))))

(declare-fun mapKey!21034 () (_ BitVec 32))

(declare-fun mapRest!21034 () (Array (_ BitVec 32) List!48425))

(declare-fun mapValue!21034 () List!48425)

(assert (=> mapNonEmpty!21034 (= (arr!7616 (_values!4996 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) (store mapRest!21034 mapKey!21034 mapValue!21034))))

(declare-fun b!4315772 () Bool)

(declare-fun e!2684666 () Bool)

(assert (=> b!4315772 (= e!2684668 e!2684666)))

(declare-fun res!1768941 () Bool)

(assert (=> b!4315772 (=> (not res!1768941) (not e!2684666))))

(declare-fun key!2048 () K!9534)

(declare-fun contains!10311 (MutableMap!4621 K!9534) Bool)

(assert (=> b!4315772 (= res!1768941 (contains!10311 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46952 0))(
  ( (tuple2!46953 (_1!26758 (_ BitVec 64)) (_2!26758 List!48425)) )
))
(declare-datatypes ((List!48426 0))(
  ( (Nil!48302) (Cons!48302 (h!53754 tuple2!46952) (t!355273 List!48426)) )
))
(declare-datatypes ((ListLongMap!1103 0))(
  ( (ListLongMap!1104 (toList!2490 List!48426)) )
))
(declare-fun lt!1535306 () ListLongMap!1103)

(declare-fun map!10314 (MutLongMap!4715) ListLongMap!1103)

(assert (=> b!4315772 (= lt!1535306 (map!10314 (v!42577 (underlying!9660 thiss!42308))))))

(declare-datatypes ((ListMap!1771 0))(
  ( (ListMap!1772 (toList!2491 List!48425)) )
))
(declare-fun lt!1535310 () ListMap!1771)

(declare-fun map!10315 (MutableMap!4621) ListMap!1771)

(assert (=> b!4315772 (= lt!1535310 (map!10315 thiss!42308))))

(declare-fun b!4315773 () Bool)

(declare-fun e!2684665 () Bool)

(declare-fun lt!1535307 () MutableMap!4621)

(assert (=> b!4315773 (= e!2684665 (not (= (map!10315 lt!1535307) lt!1535310)))))

(assert (=> b!4315773 (valid!3715 lt!1535307)))

(declare-fun tp!1325921 () Bool)

(declare-fun tp!1325922 () Bool)

(declare-fun array_inv!5477 (array!17058) Bool)

(declare-fun array_inv!5478 (array!17060) Bool)

(assert (=> b!4315774 (= e!2684663 (and tp!1325919 tp!1325921 tp!1325922 (array_inv!5477 (_keys!5015 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) (array_inv!5478 (_values!4996 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) e!2684667))))

(declare-fun b!4315775 () Bool)

(assert (=> b!4315775 (= e!2684666 e!2684665)))

(declare-fun res!1768944 () Bool)

(assert (=> b!4315775 (=> (not res!1768944) (not e!2684665))))

(declare-datatypes ((tuple2!46954 0))(
  ( (tuple2!46955 (_1!26759 Bool) (_2!26759 MutLongMap!4715)) )
))
(declare-fun lt!1535311 () tuple2!46954)

(assert (=> b!4315775 (= res!1768944 (not (_1!26759 lt!1535311)))))

(assert (=> b!4315775 (= lt!1535307 (HashMap!4621 (Cell!18672 (_2!26759 lt!1535311)) (hashF!6836 thiss!42308) (_size!9474 thiss!42308) (defaultValue!4792 thiss!42308)))))

(declare-fun lt!1535309 () (_ BitVec 64))

(declare-fun v!9179 () V!9736)

(declare-fun update!491 (MutLongMap!4715 (_ BitVec 64) List!48425) tuple2!46954)

(declare-fun removePairForKey!249 (List!48425 K!9534) List!48425)

(declare-fun apply!11089 (MutLongMap!4715 (_ BitVec 64)) List!48425)

(assert (=> b!4315775 (= lt!1535311 (update!491 (v!42577 (underlying!9660 thiss!42308)) lt!1535309 (Cons!48301 (tuple2!46951 key!2048 v!9179) (removePairForKey!249 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) key!2048))))))

(declare-fun hash!1113 (Hashable!4631 K!9534) (_ BitVec 64))

(assert (=> b!4315775 (= lt!1535309 (hash!1113 (hashF!6836 thiss!42308) key!2048))))

(assert (= (and start!415158 res!1768943) b!4315767))

(assert (= (and b!4315767 res!1768942) b!4315772))

(assert (= (and b!4315772 res!1768941) b!4315775))

(assert (= (and b!4315775 res!1768944) b!4315773))

(assert (= (and b!4315771 condMapEmpty!21034) mapIsEmpty!21034))

(assert (= (and b!4315771 (not condMapEmpty!21034)) mapNonEmpty!21034))

(assert (= b!4315774 b!4315771))

(assert (= b!4315769 b!4315774))

(assert (= b!4315770 b!4315769))

(assert (= (and b!4315766 ((_ is LongMap!4715) (v!42577 (underlying!9660 thiss!42308)))) b!4315770))

(assert (= b!4315768 b!4315766))

(assert (= (and start!415158 ((_ is HashMap!4621) thiss!42308)) b!4315768))

(declare-fun m!4909623 () Bool)

(assert (=> b!4315772 m!4909623))

(declare-fun m!4909625 () Bool)

(assert (=> b!4315772 m!4909625))

(declare-fun m!4909627 () Bool)

(assert (=> b!4315772 m!4909627))

(declare-fun m!4909629 () Bool)

(assert (=> b!4315775 m!4909629))

(assert (=> b!4315775 m!4909629))

(declare-fun m!4909631 () Bool)

(assert (=> b!4315775 m!4909631))

(declare-fun m!4909633 () Bool)

(assert (=> b!4315775 m!4909633))

(declare-fun m!4909635 () Bool)

(assert (=> b!4315775 m!4909635))

(declare-fun m!4909637 () Bool)

(assert (=> b!4315767 m!4909637))

(declare-fun m!4909639 () Bool)

(assert (=> b!4315773 m!4909639))

(declare-fun m!4909641 () Bool)

(assert (=> b!4315773 m!4909641))

(declare-fun m!4909643 () Bool)

(assert (=> b!4315774 m!4909643))

(declare-fun m!4909645 () Bool)

(assert (=> b!4315774 m!4909645))

(declare-fun m!4909647 () Bool)

(assert (=> mapNonEmpty!21034 m!4909647))

(check-sat tp_is_empty!23967 (not b!4315775) (not b_next!129523) (not b!4315771) (not b!4315767) b_and!340301 b_and!340299 (not b!4315774) (not b_next!129525) tp_is_empty!23965 (not b!4315773) (not mapNonEmpty!21034) (not b!4315772))
(check-sat b_and!340299 b_and!340301 (not b_next!129525) (not b_next!129523))
(get-model)

(declare-fun d!1269266 () Bool)

(declare-fun res!1768949 () Bool)

(declare-fun e!2684673 () Bool)

(assert (=> d!1269266 (=> (not res!1768949) (not e!2684673))))

(declare-fun valid!3716 (MutLongMap!4715) Bool)

(assert (=> d!1269266 (= res!1768949 (valid!3716 (v!42577 (underlying!9660 thiss!42308))))))

(assert (=> d!1269266 (= (valid!3715 thiss!42308) e!2684673)))

(declare-fun b!4315780 () Bool)

(declare-fun res!1768950 () Bool)

(assert (=> b!4315780 (=> (not res!1768950) (not e!2684673))))

(declare-fun lambda!133473 () Int)

(declare-fun forall!8781 (List!48426 Int) Bool)

(assert (=> b!4315780 (= res!1768950 (forall!8781 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))) lambda!133473))))

(declare-fun b!4315781 () Bool)

(declare-fun allKeysSameHashInMap!370 (ListLongMap!1103 Hashable!4631) Bool)

(assert (=> b!4315781 (= e!2684673 (allKeysSameHashInMap!370 (map!10314 (v!42577 (underlying!9660 thiss!42308))) (hashF!6836 thiss!42308)))))

(assert (= (and d!1269266 res!1768949) b!4315780))

(assert (= (and b!4315780 res!1768950) b!4315781))

(declare-fun m!4909649 () Bool)

(assert (=> d!1269266 m!4909649))

(assert (=> b!4315780 m!4909625))

(declare-fun m!4909651 () Bool)

(assert (=> b!4315780 m!4909651))

(assert (=> b!4315781 m!4909625))

(assert (=> b!4315781 m!4909625))

(declare-fun m!4909653 () Bool)

(assert (=> b!4315781 m!4909653))

(assert (=> b!4315767 d!1269266))

(declare-fun bm!298586 () Bool)

(declare-fun call!298592 () ListLongMap!1103)

(assert (=> bm!298586 (= call!298592 (map!10314 (v!42577 (underlying!9660 thiss!42308))))))

(declare-fun b!4315800 () Bool)

(declare-fun e!2684686 () tuple2!46954)

(assert (=> b!4315800 (= e!2684686 (tuple2!46955 true (v!42577 (underlying!9660 thiss!42308))))))

(declare-fun b!4315801 () Bool)

(declare-fun call!298591 () ListLongMap!1103)

(declare-fun e!2684684 () Bool)

(declare-fun +!308 (ListLongMap!1103 tuple2!46952) ListLongMap!1103)

(assert (=> b!4315801 (= e!2684684 (= call!298591 (+!308 call!298592 (tuple2!46953 lt!1535309 (Cons!48301 (tuple2!46951 key!2048 v!9179) (removePairForKey!249 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) key!2048))))))))

(declare-fun b!4315802 () Bool)

(declare-fun e!2684685 () Bool)

(assert (=> b!4315802 (= e!2684685 (= call!298591 call!298592))))

(declare-fun b!4315803 () Bool)

(declare-fun e!2684687 () tuple2!46954)

(declare-datatypes ((tuple2!46956 0))(
  ( (tuple2!46957 (_1!26760 Bool) (_2!26760 LongMapFixedSize!9430)) )
))
(declare-fun lt!1535321 () tuple2!46956)

(assert (=> b!4315803 (= e!2684687 (tuple2!46955 (_1!26760 lt!1535321) (LongMap!4715 (Cell!18670 (_2!26760 lt!1535321)))))))

(declare-fun lt!1535323 () tuple2!46954)

(declare-fun update!492 (LongMapFixedSize!9430 (_ BitVec 64) List!48425) tuple2!46956)

(assert (=> b!4315803 (= lt!1535321 (update!492 (v!42576 (underlying!9659 (_2!26759 lt!1535323))) lt!1535309 (Cons!48301 (tuple2!46951 key!2048 v!9179) (removePairForKey!249 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) key!2048))))))

(declare-fun b!4315804 () Bool)

(assert (=> b!4315804 (= e!2684687 (tuple2!46955 false (_2!26759 lt!1535323)))))

(declare-fun b!4315805 () Bool)

(declare-fun lt!1535322 () tuple2!46954)

(assert (=> b!4315805 (= e!2684686 (tuple2!46955 (_1!26759 lt!1535322) (_2!26759 lt!1535322)))))

(declare-fun repack!73 (MutLongMap!4715) tuple2!46954)

(assert (=> b!4315805 (= lt!1535322 (repack!73 (v!42577 (underlying!9660 thiss!42308))))))

(declare-fun b!4315806 () Bool)

(declare-fun e!2684688 () Bool)

(assert (=> b!4315806 (= e!2684688 e!2684685)))

(declare-fun c!733708 () Bool)

(declare-fun lt!1535320 () tuple2!46954)

(assert (=> b!4315806 (= c!733708 (_1!26759 lt!1535320))))

(declare-fun b!4315807 () Bool)

(assert (=> b!4315807 (= e!2684685 e!2684684)))

(declare-fun res!1768959 () Bool)

(declare-fun contains!10312 (ListLongMap!1103 (_ BitVec 64)) Bool)

(assert (=> b!4315807 (= res!1768959 (contains!10312 call!298591 lt!1535309))))

(assert (=> b!4315807 (=> (not res!1768959) (not e!2684684))))

(declare-fun d!1269268 () Bool)

(assert (=> d!1269268 e!2684688))

(declare-fun res!1768958 () Bool)

(assert (=> d!1269268 (=> (not res!1768958) (not e!2684688))))

(assert (=> d!1269268 (= res!1768958 ((_ is LongMap!4715) (_2!26759 lt!1535320)))))

(assert (=> d!1269268 (= lt!1535320 e!2684687)))

(declare-fun c!733707 () Bool)

(assert (=> d!1269268 (= c!733707 (_1!26759 lt!1535323))))

(assert (=> d!1269268 (= lt!1535323 e!2684686)))

(declare-fun c!733709 () Bool)

(declare-fun imbalanced!69 (MutLongMap!4715) Bool)

(assert (=> d!1269268 (= c!733709 (imbalanced!69 (v!42577 (underlying!9660 thiss!42308))))))

(assert (=> d!1269268 (valid!3716 (v!42577 (underlying!9660 thiss!42308)))))

(assert (=> d!1269268 (= (update!491 (v!42577 (underlying!9660 thiss!42308)) lt!1535309 (Cons!48301 (tuple2!46951 key!2048 v!9179) (removePairForKey!249 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) key!2048))) lt!1535320)))

(declare-fun bm!298587 () Bool)

(assert (=> bm!298587 (= call!298591 (map!10314 (_2!26759 lt!1535320)))))

(declare-fun b!4315808 () Bool)

(declare-fun res!1768957 () Bool)

(assert (=> b!4315808 (=> (not res!1768957) (not e!2684688))))

(assert (=> b!4315808 (= res!1768957 (valid!3716 (_2!26759 lt!1535320)))))

(assert (= (and d!1269268 c!733709) b!4315805))

(assert (= (and d!1269268 (not c!733709)) b!4315800))

(assert (= (and d!1269268 c!733707) b!4315803))

(assert (= (and d!1269268 (not c!733707)) b!4315804))

(assert (= (and d!1269268 res!1768958) b!4315808))

(assert (= (and b!4315808 res!1768957) b!4315806))

(assert (= (and b!4315806 c!733708) b!4315807))

(assert (= (and b!4315806 (not c!733708)) b!4315802))

(assert (= (and b!4315807 res!1768959) b!4315801))

(assert (= (or b!4315807 b!4315801 b!4315802) bm!298587))

(assert (= (or b!4315801 b!4315802) bm!298586))

(declare-fun m!4909655 () Bool)

(assert (=> b!4315805 m!4909655))

(declare-fun m!4909657 () Bool)

(assert (=> b!4315807 m!4909657))

(declare-fun m!4909659 () Bool)

(assert (=> d!1269268 m!4909659))

(assert (=> d!1269268 m!4909649))

(declare-fun m!4909661 () Bool)

(assert (=> b!4315808 m!4909661))

(assert (=> bm!298586 m!4909625))

(declare-fun m!4909663 () Bool)

(assert (=> b!4315803 m!4909663))

(declare-fun m!4909665 () Bool)

(assert (=> b!4315801 m!4909665))

(declare-fun m!4909667 () Bool)

(assert (=> bm!298587 m!4909667))

(assert (=> b!4315775 d!1269268))

(declare-fun b!4315819 () Bool)

(declare-fun e!2684693 () List!48425)

(assert (=> b!4315819 (= e!2684693 (Cons!48301 (h!53753 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309)) (removePairForKey!249 (t!355272 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309)) key!2048)))))

(declare-fun b!4315817 () Bool)

(declare-fun e!2684694 () List!48425)

(assert (=> b!4315817 (= e!2684694 (t!355272 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309)))))

(declare-fun d!1269270 () Bool)

(declare-fun lt!1535326 () List!48425)

(declare-fun containsKey!373 (List!48425 K!9534) Bool)

(assert (=> d!1269270 (not (containsKey!373 lt!1535326 key!2048))))

(assert (=> d!1269270 (= lt!1535326 e!2684694)))

(declare-fun c!733715 () Bool)

(assert (=> d!1269270 (= c!733715 (and ((_ is Cons!48301) (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309)) (= (_1!26757 (h!53753 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309))) key!2048)))))

(declare-fun noDuplicateKeys!250 (List!48425) Bool)

(assert (=> d!1269270 (noDuplicateKeys!250 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309))))

(assert (=> d!1269270 (= (removePairForKey!249 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) key!2048) lt!1535326)))

(declare-fun b!4315820 () Bool)

(assert (=> b!4315820 (= e!2684693 Nil!48301)))

(declare-fun b!4315818 () Bool)

(assert (=> b!4315818 (= e!2684694 e!2684693)))

(declare-fun c!733714 () Bool)

(assert (=> b!4315818 (= c!733714 ((_ is Cons!48301) (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309)))))

(assert (= (and d!1269270 c!733715) b!4315817))

(assert (= (and d!1269270 (not c!733715)) b!4315818))

(assert (= (and b!4315818 c!733714) b!4315819))

(assert (= (and b!4315818 (not c!733714)) b!4315820))

(declare-fun m!4909669 () Bool)

(assert (=> b!4315819 m!4909669))

(declare-fun m!4909671 () Bool)

(assert (=> d!1269270 m!4909671))

(assert (=> d!1269270 m!4909629))

(declare-fun m!4909673 () Bool)

(assert (=> d!1269270 m!4909673))

(assert (=> b!4315775 d!1269270))

(declare-fun d!1269272 () Bool)

(declare-fun e!2684697 () Bool)

(assert (=> d!1269272 e!2684697))

(declare-fun c!733718 () Bool)

(declare-fun contains!10313 (MutLongMap!4715 (_ BitVec 64)) Bool)

(assert (=> d!1269272 (= c!733718 (contains!10313 (v!42577 (underlying!9660 thiss!42308)) lt!1535309))))

(declare-fun lt!1535329 () List!48425)

(declare-fun apply!11090 (LongMapFixedSize!9430 (_ BitVec 64)) List!48425)

(assert (=> d!1269272 (= lt!1535329 (apply!11090 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))) lt!1535309))))

(assert (=> d!1269272 (valid!3716 (v!42577 (underlying!9660 thiss!42308)))))

(assert (=> d!1269272 (= (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535309) lt!1535329)))

(declare-fun b!4315825 () Bool)

(declare-datatypes ((Option!10274 0))(
  ( (None!10273) (Some!10273 (v!42582 List!48425)) )
))
(declare-fun get!15641 (Option!10274) List!48425)

(declare-fun getValueByKey!282 (List!48426 (_ BitVec 64)) Option!10274)

(assert (=> b!4315825 (= e!2684697 (= lt!1535329 (get!15641 (getValueByKey!282 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))) lt!1535309))))))

(declare-fun b!4315826 () Bool)

(declare-fun dynLambda!20471 (Int (_ BitVec 64)) List!48425)

(assert (=> b!4315826 (= e!2684697 (= lt!1535329 (dynLambda!20471 (defaultEntry!5100 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308))))) lt!1535309)))))

(assert (=> b!4315826 ((_ is LongMap!4715) (v!42577 (underlying!9660 thiss!42308)))))

(assert (= (and d!1269272 c!733718) b!4315825))

(assert (= (and d!1269272 (not c!733718)) b!4315826))

(declare-fun b_lambda!126907 () Bool)

(assert (=> (not b_lambda!126907) (not b!4315826)))

(declare-fun t!355275 () Bool)

(declare-fun tb!257333 () Bool)

(assert (=> (and b!4315774 (= (defaultEntry!5100 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308))))) (defaultEntry!5100 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) t!355275) tb!257333))

(assert (=> b!4315826 t!355275))

(declare-fun result!314802 () Bool)

(declare-fun b_and!340303 () Bool)

(assert (= b_and!340299 (and (=> t!355275 result!314802) b_and!340303)))

(declare-fun m!4909675 () Bool)

(assert (=> d!1269272 m!4909675))

(declare-fun m!4909677 () Bool)

(assert (=> d!1269272 m!4909677))

(assert (=> d!1269272 m!4909649))

(assert (=> b!4315825 m!4909625))

(declare-fun m!4909679 () Bool)

(assert (=> b!4315825 m!4909679))

(assert (=> b!4315825 m!4909679))

(declare-fun m!4909681 () Bool)

(assert (=> b!4315825 m!4909681))

(declare-fun m!4909683 () Bool)

(assert (=> b!4315826 m!4909683))

(assert (=> b!4315775 d!1269272))

(declare-fun d!1269274 () Bool)

(declare-fun hash!1114 (Hashable!4631 K!9534) (_ BitVec 64))

(assert (=> d!1269274 (= (hash!1113 (hashF!6836 thiss!42308) key!2048) (hash!1114 (hashF!6836 thiss!42308) key!2048))))

(declare-fun bs!605844 () Bool)

(assert (= bs!605844 d!1269274))

(declare-fun m!4909685 () Bool)

(assert (=> bs!605844 m!4909685))

(assert (=> b!4315775 d!1269274))

(declare-fun bs!605845 () Bool)

(declare-fun b!4315856 () Bool)

(assert (= bs!605845 (and b!4315856 b!4315780)))

(declare-fun lambda!133476 () Int)

(assert (=> bs!605845 (= lambda!133476 lambda!133473)))

(declare-fun b!4315849 () Bool)

(declare-datatypes ((Unit!67521 0))(
  ( (Unit!67522) )
))
(declare-fun e!2684712 () Unit!67521)

(declare-fun Unit!67523 () Unit!67521)

(assert (=> b!4315849 (= e!2684712 Unit!67523)))

(declare-fun call!298605 () (_ BitVec 64))

(declare-fun call!298609 () Bool)

(declare-fun lt!1535384 () ListLongMap!1103)

(declare-fun c!733727 () Bool)

(declare-fun bm!298600 () Bool)

(declare-fun call!298607 () ListLongMap!1103)

(assert (=> bm!298600 (= call!298609 (contains!10312 (ite c!733727 lt!1535384 call!298607) call!298605))))

(declare-fun bm!298601 () Bool)

(assert (=> bm!298601 (= call!298605 (hash!1113 (hashF!6836 thiss!42308) key!2048))))

(declare-fun b!4315850 () Bool)

(assert (=> b!4315850 false))

(declare-fun lt!1535376 () Unit!67521)

(declare-fun lt!1535373 () Unit!67521)

(assert (=> b!4315850 (= lt!1535376 lt!1535373)))

(declare-fun lt!1535385 () ListLongMap!1103)

(declare-fun contains!10314 (ListMap!1771 K!9534) Bool)

(declare-fun extractMap!354 (List!48426) ListMap!1771)

(assert (=> b!4315850 (contains!10314 (extractMap!354 (toList!2490 lt!1535385)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!151 (ListLongMap!1103 K!9534 Hashable!4631) Unit!67521)

(assert (=> b!4315850 (= lt!1535373 (lemmaInLongMapThenInGenericMap!151 lt!1535385 key!2048 (hashF!6836 thiss!42308)))))

(assert (=> b!4315850 (= lt!1535385 call!298607)))

(declare-fun e!2684717 () Unit!67521)

(declare-fun Unit!67524 () Unit!67521)

(assert (=> b!4315850 (= e!2684717 Unit!67524)))

(declare-fun b!4315851 () Bool)

(declare-fun e!2684716 () Bool)

(declare-fun lt!1535382 () (_ BitVec 64))

(declare-datatypes ((Option!10275 0))(
  ( (None!10274) (Some!10274 (v!42583 tuple2!46950)) )
))
(declare-fun isDefined!7575 (Option!10275) Bool)

(declare-fun getPair!151 (List!48425 K!9534) Option!10275)

(assert (=> b!4315851 (= e!2684716 (isDefined!7575 (getPair!151 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535382) key!2048)))))

(declare-fun b!4315852 () Bool)

(declare-fun e!2684713 () Bool)

(declare-fun call!298608 () Bool)

(assert (=> b!4315852 (= e!2684713 call!298608)))

(declare-fun b!4315854 () Bool)

(declare-fun e!2684714 () Unit!67521)

(assert (=> b!4315854 (= e!2684714 e!2684717)))

(declare-fun res!1768967 () Bool)

(assert (=> b!4315854 (= res!1768967 call!298609)))

(assert (=> b!4315854 (=> (not res!1768967) (not e!2684713))))

(declare-fun c!733729 () Bool)

(assert (=> b!4315854 (= c!733729 e!2684713)))

(declare-fun b!4315855 () Bool)

(declare-fun Unit!67525 () Unit!67521)

(assert (=> b!4315855 (= e!2684717 Unit!67525)))

(declare-fun forallContained!1519 (List!48426 Int tuple2!46952) Unit!67521)

(assert (=> b!4315856 (= e!2684712 (forallContained!1519 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))) lambda!133476 (tuple2!46953 lt!1535382 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535382))))))

(declare-fun c!733728 () Bool)

(declare-fun contains!10315 (List!48426 tuple2!46952) Bool)

(assert (=> b!4315856 (= c!733728 (not (contains!10315 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))) (tuple2!46953 lt!1535382 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535382)))))))

(declare-fun lt!1535383 () Unit!67521)

(declare-fun e!2684718 () Unit!67521)

(assert (=> b!4315856 (= lt!1535383 e!2684718)))

(declare-fun b!4315857 () Bool)

(declare-fun lt!1535377 () Unit!67521)

(assert (=> b!4315857 (= e!2684714 lt!1535377)))

(assert (=> b!4315857 (= lt!1535384 call!298607)))

(declare-fun lemmaInGenericMapThenInLongMap!151 (ListLongMap!1103 K!9534 Hashable!4631) Unit!67521)

(assert (=> b!4315857 (= lt!1535377 (lemmaInGenericMapThenInLongMap!151 lt!1535384 key!2048 (hashF!6836 thiss!42308)))))

(declare-fun res!1768966 () Bool)

(assert (=> b!4315857 (= res!1768966 call!298609)))

(declare-fun e!2684715 () Bool)

(assert (=> b!4315857 (=> (not res!1768966) (not e!2684715))))

(assert (=> b!4315857 e!2684715))

(declare-fun bm!298602 () Bool)

(declare-fun call!298606 () Option!10275)

(assert (=> bm!298602 (= call!298608 (isDefined!7575 call!298606))))

(declare-fun bm!298603 () Bool)

(assert (=> bm!298603 (= call!298607 (map!10314 (v!42577 (underlying!9660 thiss!42308))))))

(declare-fun b!4315853 () Bool)

(declare-fun Unit!67526 () Unit!67521)

(assert (=> b!4315853 (= e!2684718 Unit!67526)))

(declare-fun d!1269276 () Bool)

(declare-fun lt!1535372 () Bool)

(assert (=> d!1269276 (= lt!1535372 (contains!10314 (map!10315 thiss!42308) key!2048))))

(assert (=> d!1269276 (= lt!1535372 e!2684716)))

(declare-fun res!1768968 () Bool)

(assert (=> d!1269276 (=> (not res!1768968) (not e!2684716))))

(assert (=> d!1269276 (= res!1768968 (contains!10313 (v!42577 (underlying!9660 thiss!42308)) lt!1535382))))

(declare-fun lt!1535379 () Unit!67521)

(assert (=> d!1269276 (= lt!1535379 e!2684714)))

(assert (=> d!1269276 (= c!733727 (contains!10314 (extractMap!354 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308))))) key!2048))))

(declare-fun lt!1535389 () Unit!67521)

(assert (=> d!1269276 (= lt!1535389 e!2684712)))

(declare-fun c!733730 () Bool)

(assert (=> d!1269276 (= c!733730 (contains!10313 (v!42577 (underlying!9660 thiss!42308)) lt!1535382))))

(assert (=> d!1269276 (= lt!1535382 (hash!1113 (hashF!6836 thiss!42308) key!2048))))

(assert (=> d!1269276 (valid!3715 thiss!42308)))

(assert (=> d!1269276 (= (contains!10311 thiss!42308 key!2048) lt!1535372)))

(declare-fun call!298610 () List!48425)

(declare-fun bm!298604 () Bool)

(declare-fun apply!11091 (ListLongMap!1103 (_ BitVec 64)) List!48425)

(assert (=> bm!298604 (= call!298610 (apply!11091 (ite c!733727 lt!1535384 call!298607) call!298605))))

(declare-fun b!4315858 () Bool)

(assert (=> b!4315858 (= e!2684715 call!298608)))

(declare-fun bm!298605 () Bool)

(assert (=> bm!298605 (= call!298606 (getPair!151 call!298610 key!2048))))

(declare-fun b!4315859 () Bool)

(assert (=> b!4315859 false))

(declare-fun lt!1535370 () Unit!67521)

(declare-fun lt!1535380 () Unit!67521)

(assert (=> b!4315859 (= lt!1535370 lt!1535380)))

(declare-fun lt!1535386 () List!48426)

(declare-fun lt!1535371 () List!48425)

(assert (=> b!4315859 (contains!10315 lt!1535386 (tuple2!46953 lt!1535382 lt!1535371))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!163 (List!48426 (_ BitVec 64) List!48425) Unit!67521)

(assert (=> b!4315859 (= lt!1535380 (lemmaGetValueByKeyImpliesContainsTuple!163 lt!1535386 lt!1535382 lt!1535371))))

(assert (=> b!4315859 (= lt!1535371 (apply!11089 (v!42577 (underlying!9660 thiss!42308)) lt!1535382))))

(assert (=> b!4315859 (= lt!1535386 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))))))

(declare-fun lt!1535388 () Unit!67521)

(declare-fun lt!1535374 () Unit!67521)

(assert (=> b!4315859 (= lt!1535388 lt!1535374)))

(declare-fun lt!1535378 () List!48426)

(declare-fun isDefined!7576 (Option!10274) Bool)

(assert (=> b!4315859 (isDefined!7576 (getValueByKey!282 lt!1535378 lt!1535382))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!201 (List!48426 (_ BitVec 64)) Unit!67521)

(assert (=> b!4315859 (= lt!1535374 (lemmaContainsKeyImpliesGetValueByKeyDefined!201 lt!1535378 lt!1535382))))

(assert (=> b!4315859 (= lt!1535378 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))))))

(declare-fun lt!1535375 () Unit!67521)

(declare-fun lt!1535381 () Unit!67521)

(assert (=> b!4315859 (= lt!1535375 lt!1535381)))

(declare-fun lt!1535387 () List!48426)

(declare-fun containsKey!374 (List!48426 (_ BitVec 64)) Bool)

(assert (=> b!4315859 (containsKey!374 lt!1535387 lt!1535382)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!152 (List!48426 (_ BitVec 64)) Unit!67521)

(assert (=> b!4315859 (= lt!1535381 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!152 lt!1535387 lt!1535382))))

(assert (=> b!4315859 (= lt!1535387 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308)))))))

(declare-fun Unit!67527 () Unit!67521)

(assert (=> b!4315859 (= e!2684718 Unit!67527)))

(assert (= (and d!1269276 c!733730) b!4315856))

(assert (= (and d!1269276 (not c!733730)) b!4315849))

(assert (= (and b!4315856 c!733728) b!4315859))

(assert (= (and b!4315856 (not c!733728)) b!4315853))

(assert (= (and d!1269276 c!733727) b!4315857))

(assert (= (and d!1269276 (not c!733727)) b!4315854))

(assert (= (and b!4315857 res!1768966) b!4315858))

(assert (= (and b!4315854 res!1768967) b!4315852))

(assert (= (and b!4315854 c!733729) b!4315850))

(assert (= (and b!4315854 (not c!733729)) b!4315855))

(assert (= (or b!4315857 b!4315854 b!4315852 b!4315850) bm!298603))

(assert (= (or b!4315857 b!4315858 b!4315854 b!4315852) bm!298601))

(assert (= (or b!4315857 b!4315854) bm!298600))

(assert (= (or b!4315858 b!4315852) bm!298604))

(assert (= (or b!4315858 b!4315852) bm!298605))

(assert (= (or b!4315858 b!4315852) bm!298602))

(assert (= (and d!1269276 res!1768968) b!4315851))

(declare-fun m!4909687 () Bool)

(assert (=> bm!298605 m!4909687))

(declare-fun m!4909689 () Bool)

(assert (=> b!4315851 m!4909689))

(assert (=> b!4315851 m!4909689))

(declare-fun m!4909691 () Bool)

(assert (=> b!4315851 m!4909691))

(assert (=> b!4315851 m!4909691))

(declare-fun m!4909693 () Bool)

(assert (=> b!4315851 m!4909693))

(assert (=> bm!298601 m!4909635))

(assert (=> bm!298603 m!4909625))

(declare-fun m!4909695 () Bool)

(assert (=> bm!298600 m!4909695))

(declare-fun m!4909697 () Bool)

(assert (=> d!1269276 m!4909697))

(assert (=> d!1269276 m!4909625))

(assert (=> d!1269276 m!4909627))

(declare-fun m!4909699 () Bool)

(assert (=> d!1269276 m!4909699))

(assert (=> d!1269276 m!4909627))

(declare-fun m!4909701 () Bool)

(assert (=> d!1269276 m!4909701))

(declare-fun m!4909703 () Bool)

(assert (=> d!1269276 m!4909703))

(assert (=> d!1269276 m!4909637))

(assert (=> d!1269276 m!4909635))

(assert (=> d!1269276 m!4909701))

(declare-fun m!4909705 () Bool)

(assert (=> bm!298604 m!4909705))

(declare-fun m!4909707 () Bool)

(assert (=> b!4315857 m!4909707))

(assert (=> b!4315856 m!4909625))

(assert (=> b!4315856 m!4909689))

(declare-fun m!4909709 () Bool)

(assert (=> b!4315856 m!4909709))

(declare-fun m!4909711 () Bool)

(assert (=> b!4315856 m!4909711))

(declare-fun m!4909713 () Bool)

(assert (=> b!4315850 m!4909713))

(assert (=> b!4315850 m!4909713))

(declare-fun m!4909715 () Bool)

(assert (=> b!4315850 m!4909715))

(declare-fun m!4909717 () Bool)

(assert (=> b!4315850 m!4909717))

(declare-fun m!4909719 () Bool)

(assert (=> bm!298602 m!4909719))

(declare-fun m!4909721 () Bool)

(assert (=> b!4315859 m!4909721))

(assert (=> b!4315859 m!4909689))

(assert (=> b!4315859 m!4909625))

(declare-fun m!4909723 () Bool)

(assert (=> b!4315859 m!4909723))

(assert (=> b!4315859 m!4909721))

(declare-fun m!4909725 () Bool)

(assert (=> b!4315859 m!4909725))

(declare-fun m!4909727 () Bool)

(assert (=> b!4315859 m!4909727))

(declare-fun m!4909729 () Bool)

(assert (=> b!4315859 m!4909729))

(declare-fun m!4909731 () Bool)

(assert (=> b!4315859 m!4909731))

(declare-fun m!4909733 () Bool)

(assert (=> b!4315859 m!4909733))

(assert (=> b!4315772 d!1269276))

(declare-fun d!1269278 () Bool)

(declare-fun map!10316 (LongMapFixedSize!9430) ListLongMap!1103)

(assert (=> d!1269278 (= (map!10314 (v!42577 (underlying!9660 thiss!42308))) (map!10316 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308))))))))

(declare-fun bs!605846 () Bool)

(assert (= bs!605846 d!1269278))

(declare-fun m!4909735 () Bool)

(assert (=> bs!605846 m!4909735))

(assert (=> b!4315772 d!1269278))

(declare-fun d!1269280 () Bool)

(declare-fun lt!1535392 () ListMap!1771)

(declare-fun invariantList!590 (List!48425) Bool)

(assert (=> d!1269280 (invariantList!590 (toList!2491 lt!1535392))))

(assert (=> d!1269280 (= lt!1535392 (extractMap!354 (toList!2490 (map!10314 (v!42577 (underlying!9660 thiss!42308))))))))

(assert (=> d!1269280 (valid!3715 thiss!42308)))

(assert (=> d!1269280 (= (map!10315 thiss!42308) lt!1535392)))

(declare-fun bs!605847 () Bool)

(assert (= bs!605847 d!1269280))

(declare-fun m!4909737 () Bool)

(assert (=> bs!605847 m!4909737))

(assert (=> bs!605847 m!4909625))

(assert (=> bs!605847 m!4909701))

(assert (=> bs!605847 m!4909637))

(assert (=> b!4315772 d!1269280))

(declare-fun d!1269282 () Bool)

(declare-fun lt!1535393 () ListMap!1771)

(assert (=> d!1269282 (invariantList!590 (toList!2491 lt!1535393))))

(assert (=> d!1269282 (= lt!1535393 (extractMap!354 (toList!2490 (map!10314 (v!42577 (underlying!9660 lt!1535307))))))))

(assert (=> d!1269282 (valid!3715 lt!1535307)))

(assert (=> d!1269282 (= (map!10315 lt!1535307) lt!1535393)))

(declare-fun bs!605848 () Bool)

(assert (= bs!605848 d!1269282))

(declare-fun m!4909739 () Bool)

(assert (=> bs!605848 m!4909739))

(declare-fun m!4909741 () Bool)

(assert (=> bs!605848 m!4909741))

(declare-fun m!4909743 () Bool)

(assert (=> bs!605848 m!4909743))

(assert (=> bs!605848 m!4909641))

(assert (=> b!4315773 d!1269282))

(declare-fun bs!605849 () Bool)

(declare-fun b!4315860 () Bool)

(assert (= bs!605849 (and b!4315860 b!4315780)))

(declare-fun lambda!133477 () Int)

(assert (=> bs!605849 (= lambda!133477 lambda!133473)))

(declare-fun bs!605850 () Bool)

(assert (= bs!605850 (and b!4315860 b!4315856)))

(assert (=> bs!605850 (= lambda!133477 lambda!133476)))

(declare-fun d!1269284 () Bool)

(declare-fun res!1768969 () Bool)

(declare-fun e!2684719 () Bool)

(assert (=> d!1269284 (=> (not res!1768969) (not e!2684719))))

(assert (=> d!1269284 (= res!1768969 (valid!3716 (v!42577 (underlying!9660 lt!1535307))))))

(assert (=> d!1269284 (= (valid!3715 lt!1535307) e!2684719)))

(declare-fun res!1768970 () Bool)

(assert (=> b!4315860 (=> (not res!1768970) (not e!2684719))))

(assert (=> b!4315860 (= res!1768970 (forall!8781 (toList!2490 (map!10314 (v!42577 (underlying!9660 lt!1535307)))) lambda!133477))))

(declare-fun b!4315861 () Bool)

(assert (=> b!4315861 (= e!2684719 (allKeysSameHashInMap!370 (map!10314 (v!42577 (underlying!9660 lt!1535307))) (hashF!6836 lt!1535307)))))

(assert (= (and d!1269284 res!1768969) b!4315860))

(assert (= (and b!4315860 res!1768970) b!4315861))

(declare-fun m!4909745 () Bool)

(assert (=> d!1269284 m!4909745))

(assert (=> b!4315860 m!4909741))

(declare-fun m!4909747 () Bool)

(assert (=> b!4315860 m!4909747))

(assert (=> b!4315861 m!4909741))

(assert (=> b!4315861 m!4909741))

(declare-fun m!4909749 () Bool)

(assert (=> b!4315861 m!4909749))

(assert (=> b!4315773 d!1269284))

(declare-fun d!1269286 () Bool)

(assert (=> d!1269286 (= (array_inv!5477 (_keys!5015 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) (bvsge (size!35654 (_keys!5015 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315774 d!1269286))

(declare-fun d!1269288 () Bool)

(assert (=> d!1269288 (= (array_inv!5478 (_values!4996 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) (bvsge (size!35655 (_values!4996 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315774 d!1269288))

(declare-fun e!2684722 () Bool)

(declare-fun tp!1325927 () Bool)

(declare-fun b!4315866 () Bool)

(assert (=> b!4315866 (= e!2684722 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325927))))

(assert (=> b!4315771 (= tp!1325920 e!2684722)))

(assert (= (and b!4315771 ((_ is Cons!48301) mapDefault!21034)) b!4315866))

(declare-fun b!4315874 () Bool)

(declare-fun tp!1325934 () Bool)

(declare-fun e!2684728 () Bool)

(assert (=> b!4315874 (= e!2684728 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325934))))

(declare-fun tp!1325936 () Bool)

(declare-fun e!2684727 () Bool)

(declare-fun b!4315873 () Bool)

(assert (=> b!4315873 (= e!2684727 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325936))))

(declare-fun condMapEmpty!21037 () Bool)

(declare-fun mapDefault!21037 () List!48425)

(assert (=> mapNonEmpty!21034 (= condMapEmpty!21037 (= mapRest!21034 ((as const (Array (_ BitVec 32) List!48425)) mapDefault!21037)))))

(declare-fun mapRes!21037 () Bool)

(assert (=> mapNonEmpty!21034 (= tp!1325918 (and e!2684728 mapRes!21037))))

(declare-fun mapIsEmpty!21037 () Bool)

(assert (=> mapIsEmpty!21037 mapRes!21037))

(declare-fun mapNonEmpty!21037 () Bool)

(declare-fun tp!1325935 () Bool)

(assert (=> mapNonEmpty!21037 (= mapRes!21037 (and tp!1325935 e!2684727))))

(declare-fun mapRest!21037 () (Array (_ BitVec 32) List!48425))

(declare-fun mapValue!21037 () List!48425)

(declare-fun mapKey!21037 () (_ BitVec 32))

(assert (=> mapNonEmpty!21037 (= mapRest!21034 (store mapRest!21037 mapKey!21037 mapValue!21037))))

(assert (= (and mapNonEmpty!21034 condMapEmpty!21037) mapIsEmpty!21037))

(assert (= (and mapNonEmpty!21034 (not condMapEmpty!21037)) mapNonEmpty!21037))

(assert (= (and mapNonEmpty!21037 ((_ is Cons!48301) mapValue!21037)) b!4315873))

(assert (= (and mapNonEmpty!21034 ((_ is Cons!48301) mapDefault!21037)) b!4315874))

(declare-fun m!4909751 () Bool)

(assert (=> mapNonEmpty!21037 m!4909751))

(declare-fun e!2684729 () Bool)

(declare-fun b!4315875 () Bool)

(declare-fun tp!1325937 () Bool)

(assert (=> b!4315875 (= e!2684729 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325937))))

(assert (=> mapNonEmpty!21034 (= tp!1325923 e!2684729)))

(assert (= (and mapNonEmpty!21034 ((_ is Cons!48301) mapValue!21034)) b!4315875))

(declare-fun e!2684730 () Bool)

(declare-fun b!4315876 () Bool)

(declare-fun tp!1325938 () Bool)

(assert (=> b!4315876 (= e!2684730 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325938))))

(assert (=> b!4315774 (= tp!1325921 e!2684730)))

(assert (= (and b!4315774 ((_ is Cons!48301) (zeroValue!4974 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308))))))) b!4315876))

(declare-fun tp!1325939 () Bool)

(declare-fun e!2684731 () Bool)

(declare-fun b!4315877 () Bool)

(assert (=> b!4315877 (= e!2684731 (and tp_is_empty!23965 tp_is_empty!23967 tp!1325939))))

(assert (=> b!4315774 (= tp!1325922 e!2684731)))

(assert (= (and b!4315774 ((_ is Cons!48301) (minValue!4974 (v!42576 (underlying!9659 (v!42577 (underlying!9660 thiss!42308))))))) b!4315877))

(declare-fun b_lambda!126909 () Bool)

(assert (= b_lambda!126907 (or (and b!4315774 b_free!128819) b_lambda!126909)))

(check-sat (not d!1269276) (not d!1269278) tp_is_empty!23967 (not d!1269280) (not b!4315857) (not b!4315873) (not b!4315805) (not b!4315780) (not b!4315876) (not b_lambda!126909) (not b_next!129525) (not bm!298605) (not bm!298600) (not d!1269284) (not tb!257333) (not d!1269282) (not b!4315850) (not b!4315866) (not b!4315851) (not b!4315808) b_and!340303 (not b!4315803) (not b!4315860) (not b!4315877) (not b!4315801) (not bm!298587) (not b_next!129523) (not bm!298602) (not d!1269268) (not b!4315819) (not b!4315807) b_and!340301 (not b!4315781) (not b!4315861) (not bm!298604) (not d!1269274) (not b!4315856) (not d!1269270) (not bm!298586) (not b!4315875) (not bm!298603) (not d!1269266) (not b!4315874) (not b!4315825) (not bm!298601) tp_is_empty!23965 (not b!4315859) (not mapNonEmpty!21037) (not d!1269272))
(check-sat b_and!340303 b_and!340301 (not b_next!129525) (not b_next!129523))
