; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3294 () Bool)

(assert start!3294)

(declare-fun b!47845 () Bool)

(declare-fun b_free!1317 () Bool)

(declare-fun b_next!1317 () Bool)

(assert (=> b!47845 (= b_free!1317 (not b_next!1317))))

(declare-fun tp!32312 () Bool)

(declare-fun b_and!1353 () Bool)

(assert (=> b!47845 (= tp!32312 b_and!1353)))

(declare-fun b!47851 () Bool)

(declare-fun b_free!1319 () Bool)

(declare-fun b_next!1319 () Bool)

(assert (=> b!47851 (= b_free!1319 (not b_next!1319))))

(declare-fun tp!32315 () Bool)

(declare-fun b_and!1355 () Bool)

(assert (=> b!47851 (= tp!32315 b_and!1355)))

(declare-fun b!47843 () Bool)

(declare-fun res!31955 () Bool)

(declare-fun e!27694 () Bool)

(assert (=> b!47843 (=> (not res!31955) (not e!27694))))

(declare-datatypes ((K!568 0))(
  ( (K!569 (val!252 Int)) )
))
(declare-datatypes ((V!622 0))(
  ( (V!623 (val!253 Int)) )
))
(declare-datatypes ((tuple2!1026 0))(
  ( (tuple2!1027 (_1!719 K!568) (_2!719 V!622)) )
))
(declare-datatypes ((List!814 0))(
  ( (Nil!812) (Cons!812 (h!6208 tuple2!1026) (t!17015 List!814)) )
))
(declare-datatypes ((array!970 0))(
  ( (array!971 (arr!456 (Array (_ BitVec 32) List!814)) (size!797 (_ BitVec 32))) )
))
(declare-datatypes ((array!972 0))(
  ( (array!973 (arr!457 (Array (_ BitVec 32) (_ BitVec 64))) (size!798 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!570 0))(
  ( (LongMapFixedSize!571 (defaultEntry!624 Int) (mask!1017 (_ BitVec 32)) (extraKeys!531 (_ BitVec 32)) (zeroValue!541 List!814) (minValue!541 List!814) (_size!703 (_ BitVec 32)) (_keys!576 array!972) (_values!563 array!970) (_vacant!346 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1129 0))(
  ( (Cell!1130 (v!12582 LongMapFixedSize!570)) )
))
(declare-datatypes ((MutLongMap!285 0))(
  ( (LongMap!285 (underlying!765 Cell!1129)) (MutLongMapExt!284 (__x!1368 Int)) )
))
(declare-datatypes ((Cell!1131 0))(
  ( (Cell!1132 (v!12583 MutLongMap!285)) )
))
(declare-datatypes ((Hashable!281 0))(
  ( (HashableExt!280 (__x!1369 Int)) )
))
(declare-datatypes ((MutableMap!281 0))(
  ( (MutableMapExt!280 (__x!1370 Int)) (HashMap!281 (underlying!766 Cell!1131) (hashF!2150 Hashable!281) (_size!704 (_ BitVec 32)) (defaultValue!430 Int)) )
))
(declare-fun thiss!42687 () MutableMap!281)

(declare-fun valid!259 (MutableMap!281) Bool)

(assert (=> b!47843 (= res!31955 (valid!259 thiss!42687))))

(declare-fun b!47844 () Bool)

(declare-fun e!27699 () Bool)

(declare-fun e!27691 () Bool)

(assert (=> b!47844 (= e!27699 e!27691)))

(declare-fun e!27692 () Bool)

(declare-fun tp!32310 () Bool)

(declare-fun e!27695 () Bool)

(declare-fun tp!32314 () Bool)

(declare-fun array_inv!309 (array!972) Bool)

(declare-fun array_inv!310 (array!970) Bool)

(assert (=> b!47845 (= e!27695 (and tp!32312 tp!32310 tp!32314 (array_inv!309 (_keys!576 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) (array_inv!310 (_values!563 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) e!27692))))

(declare-fun b!47846 () Bool)

(assert (=> b!47846 (= e!27691 e!27695)))

(declare-fun mapNonEmpty!1126 () Bool)

(declare-fun mapRes!1126 () Bool)

(declare-fun tp!32316 () Bool)

(declare-fun tp!32313 () Bool)

(assert (=> mapNonEmpty!1126 (= mapRes!1126 (and tp!32316 tp!32313))))

(declare-fun mapRest!1126 () (Array (_ BitVec 32) List!814))

(declare-fun mapKey!1126 () (_ BitVec 32))

(declare-fun mapValue!1126 () List!814)

(assert (=> mapNonEmpty!1126 (= (arr!456 (_values!563 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) (store mapRest!1126 mapKey!1126 mapValue!1126))))

(declare-fun b!47847 () Bool)

(declare-fun e!27696 () Bool)

(declare-datatypes ((tuple2!1028 0))(
  ( (tuple2!1029 (_1!720 Bool) (_2!720 MutLongMap!285)) )
))
(declare-fun lt!6783 () tuple2!1028)

(declare-datatypes ((ListMap!57 0))(
  ( (ListMap!58 (toList!182 List!814)) )
))
(declare-fun map!270 (MutableMap!281) ListMap!57)

(assert (=> b!47847 (= e!27696 (not (= (map!270 (HashMap!281 (Cell!1132 (_2!720 lt!6783)) (hashF!2150 thiss!42687) (_size!704 thiss!42687) (defaultValue!430 thiss!42687))) (map!270 thiss!42687))))))

(declare-fun b!47848 () Bool)

(declare-fun e!27693 () Bool)

(declare-fun lt!6784 () MutLongMap!285)

(get-info :version)

(assert (=> b!47848 (= e!27693 (and e!27699 ((_ is LongMap!285) lt!6784)))))

(assert (=> b!47848 (= lt!6784 (v!12583 (underlying!766 thiss!42687)))))

(declare-fun b!47849 () Bool)

(declare-fun tp!32311 () Bool)

(assert (=> b!47849 (= e!27692 (and tp!32311 mapRes!1126))))

(declare-fun condMapEmpty!1126 () Bool)

(declare-fun mapDefault!1126 () List!814)

(assert (=> b!47849 (= condMapEmpty!1126 (= (arr!456 (_values!563 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!814)) mapDefault!1126)))))

(declare-fun res!31957 () Bool)

(assert (=> start!3294 (=> (not res!31957) (not e!27694))))

(assert (=> start!3294 (= res!31957 ((_ is HashMap!281) thiss!42687))))

(assert (=> start!3294 e!27694))

(declare-fun e!27697 () Bool)

(assert (=> start!3294 e!27697))

(declare-fun b!47850 () Bool)

(assert (=> b!47850 (= e!27694 e!27696)))

(declare-fun res!31956 () Bool)

(assert (=> b!47850 (=> (not res!31956) (not e!27696))))

(assert (=> b!47850 (= res!31956 (_1!720 lt!6783))))

(declare-fun repack!6 (MutLongMap!285) tuple2!1028)

(assert (=> b!47850 (= lt!6783 (repack!6 (v!12583 (underlying!766 thiss!42687))))))

(declare-fun mapIsEmpty!1126 () Bool)

(assert (=> mapIsEmpty!1126 mapRes!1126))

(assert (=> b!47851 (= e!27697 (and e!27693 tp!32315))))

(assert (= (and start!3294 res!31957) b!47843))

(assert (= (and b!47843 res!31955) b!47850))

(assert (= (and b!47850 res!31956) b!47847))

(assert (= (and b!47849 condMapEmpty!1126) mapIsEmpty!1126))

(assert (= (and b!47849 (not condMapEmpty!1126)) mapNonEmpty!1126))

(assert (= b!47845 b!47849))

(assert (= b!47846 b!47845))

(assert (= b!47844 b!47846))

(assert (= (and b!47848 ((_ is LongMap!285) (v!12583 (underlying!766 thiss!42687)))) b!47844))

(assert (= b!47851 b!47848))

(assert (= (and start!3294 ((_ is HashMap!281) thiss!42687)) b!47851))

(declare-fun m!21824 () Bool)

(assert (=> b!47845 m!21824))

(declare-fun m!21826 () Bool)

(assert (=> b!47845 m!21826))

(declare-fun m!21828 () Bool)

(assert (=> b!47847 m!21828))

(declare-fun m!21830 () Bool)

(assert (=> b!47847 m!21830))

(declare-fun m!21832 () Bool)

(assert (=> mapNonEmpty!1126 m!21832))

(declare-fun m!21834 () Bool)

(assert (=> b!47850 m!21834))

(declare-fun m!21836 () Bool)

(assert (=> b!47843 m!21836))

(check-sat b_and!1355 (not mapNonEmpty!1126) (not b!47847) (not b_next!1319) (not b!47849) (not b!47845) (not b!47850) (not b_next!1317) (not b!47843) b_and!1353)
(check-sat b_and!1355 b_and!1353 (not b_next!1317) (not b_next!1319))
(get-model)

(declare-fun b!47872 () Bool)

(declare-datatypes ((tuple2!1030 0))(
  ( (tuple2!1031 (_1!721 Bool) (_2!721 Cell!1129)) )
))
(declare-fun e!27715 () tuple2!1030)

(declare-datatypes ((tuple2!1032 0))(
  ( (tuple2!1033 (_1!722 Bool) (_2!722 LongMapFixedSize!570)) )
))
(declare-fun lt!6810 () tuple2!1032)

(declare-fun lt!6813 () tuple2!1032)

(assert (=> b!47872 (= e!27715 (tuple2!1031 (and (_1!722 lt!6810) (_1!722 lt!6813)) (Cell!1130 (_2!722 lt!6813))))))

(declare-fun call!3046 () LongMapFixedSize!570)

(declare-fun update!21 (LongMapFixedSize!570 (_ BitVec 64) List!814) tuple2!1032)

(assert (=> b!47872 (= lt!6810 (update!21 call!3046 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))))))

(declare-fun call!3047 () tuple2!1032)

(assert (=> b!47872 (= lt!6813 call!3047)))

(declare-fun b!47873 () Bool)

(declare-fun e!27716 () Bool)

(declare-fun lt!6806 () tuple2!1028)

(declare-datatypes ((tuple2!1034 0))(
  ( (tuple2!1035 (_1!723 (_ BitVec 64)) (_2!723 List!814)) )
))
(declare-datatypes ((List!815 0))(
  ( (Nil!813) (Cons!813 (h!6209 tuple2!1034) (t!17016 List!815)) )
))
(declare-datatypes ((ListLongMap!23 0))(
  ( (ListLongMap!24 (toList!183 List!815)) )
))
(declare-fun map!271 (MutLongMap!285) ListLongMap!23)

(assert (=> b!47873 (= e!27716 (= (map!271 (_2!720 lt!6806)) (map!271 (v!12583 (underlying!766 thiss!42687)))))))

(declare-fun b!47874 () Bool)

(declare-fun e!27717 () Bool)

(assert (=> b!47874 (= e!27717 e!27716)))

(declare-fun res!31963 () Bool)

(assert (=> b!47874 (=> res!31963 e!27716)))

(assert (=> b!47874 (= res!31963 (= (_1!720 lt!6806) false))))

(declare-fun bm!3040 () Bool)

(declare-fun call!3048 () tuple2!1032)

(assert (=> bm!3040 (= call!3048 call!3047)))

(declare-fun b!47875 () Bool)

(declare-fun c!16291 () Bool)

(assert (=> b!47875 (= c!16291 (and (not (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!27714 () tuple2!1030)

(declare-fun e!27712 () tuple2!1030)

(assert (=> b!47875 (= e!27714 e!27712)))

(declare-fun d!5724 () Bool)

(assert (=> d!5724 e!27717))

(declare-fun res!31962 () Bool)

(assert (=> d!5724 (=> (not res!31962) (not e!27717))))

(assert (=> d!5724 (= res!31962 ((_ is LongMap!285) (_2!720 lt!6806)))))

(declare-datatypes ((tuple3!322 0))(
  ( (tuple3!323 (_1!724 Bool) (_2!724 Cell!1129) (_3!206 MutLongMap!285)) )
))
(declare-fun lt!6807 () tuple3!322)

(assert (=> d!5724 (= lt!6806 (tuple2!1029 (_1!724 lt!6807) (_3!206 lt!6807)))))

(declare-fun e!27713 () tuple3!322)

(assert (=> d!5724 (= lt!6807 e!27713)))

(declare-fun c!16290 () Bool)

(declare-fun lt!6808 () tuple2!1030)

(assert (=> d!5724 (= c!16290 (not (_1!721 lt!6808)))))

(assert (=> d!5724 (= lt!6808 e!27715)))

(declare-fun c!16289 () Bool)

(assert (=> d!5724 (= c!16289 (and (not (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!6809 () Cell!1129)

(declare-fun lt!6811 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!5 ((_ BitVec 32) Int) LongMapFixedSize!570)

(assert (=> d!5724 (= lt!6809 (Cell!1130 (getNewLongMapFixedSize!5 lt!6811 (defaultEntry!624 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))))))))

(declare-fun computeNewMask!3 (MutLongMap!285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5724 (= lt!6811 (computeNewMask!3 (v!12583 (underlying!766 thiss!42687)) (mask!1017 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) (_vacant!346 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) (_size!703 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))))))

(declare-fun valid!260 (MutLongMap!285) Bool)

(assert (=> d!5724 (valid!260 (v!12583 (underlying!766 thiss!42687)))))

(assert (=> d!5724 (= (repack!6 (v!12583 (underlying!766 thiss!42687))) lt!6806)))

(declare-fun b!47876 () Bool)

(assert (=> b!47876 (= e!27715 e!27714)))

(declare-fun c!16292 () Bool)

(assert (=> b!47876 (= c!16292 (and (not (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!531 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!47877 () Bool)

(assert (=> b!47877 (= e!27713 (tuple3!323 false (_2!721 lt!6808) (v!12583 (underlying!766 thiss!42687))))))

(declare-fun b!47878 () Bool)

(declare-fun lt!6814 () tuple2!1032)

(assert (=> b!47878 (= e!27712 (tuple2!1031 (_1!722 lt!6814) (Cell!1130 (_2!722 lt!6814))))))

(assert (=> b!47878 (= lt!6814 call!3048)))

(declare-fun bm!3041 () Bool)

(declare-fun call!3045 () LongMapFixedSize!570)

(assert (=> bm!3041 (= call!3045 call!3046)))

(declare-fun bm!3042 () Bool)

(assert (=> bm!3042 (= call!3047 (update!21 (ite c!16289 (_2!722 lt!6810) call!3045) (ite c!16289 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16292 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16289 (minValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) (ite c!16292 (zeroValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))) (minValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))))))))

(declare-fun b!47879 () Bool)

(declare-fun lt!6812 () tuple2!1032)

(assert (=> b!47879 (= lt!6812 call!3048)))

(assert (=> b!47879 (= e!27714 (tuple2!1031 (_1!722 lt!6812) (Cell!1130 (_2!722 lt!6812))))))

(declare-fun bm!3043 () Bool)

(assert (=> bm!3043 (= call!3046 (getNewLongMapFixedSize!5 lt!6811 (defaultEntry!624 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))))))

(declare-fun b!47880 () Bool)

(declare-fun lt!6805 () tuple2!1032)

(assert (=> b!47880 (= e!27713 (ite (_1!722 lt!6805) (tuple3!323 true (underlying!765 (v!12583 (underlying!766 thiss!42687))) (LongMap!285 (Cell!1130 (_2!722 lt!6805)))) (tuple3!323 false (Cell!1130 (_2!722 lt!6805)) (v!12583 (underlying!766 thiss!42687)))))))

(declare-fun repackFrom!3 (MutLongMap!285 LongMapFixedSize!570 (_ BitVec 32)) tuple2!1032)

(assert (=> b!47880 (= lt!6805 (repackFrom!3 (v!12583 (underlying!766 thiss!42687)) (v!12582 (_2!721 lt!6808)) (bvsub (size!798 (_keys!576 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) #b00000000000000000000000000000001)))))

(declare-fun b!47881 () Bool)

(assert (=> b!47881 (= e!27712 (tuple2!1031 true lt!6809))))

(assert (= (and d!5724 c!16289) b!47872))

(assert (= (and d!5724 (not c!16289)) b!47876))

(assert (= (and b!47876 c!16292) b!47879))

(assert (= (and b!47876 (not c!16292)) b!47875))

(assert (= (and b!47875 c!16291) b!47878))

(assert (= (and b!47875 (not c!16291)) b!47881))

(assert (= (or b!47879 b!47878) bm!3041))

(assert (= (or b!47879 b!47878) bm!3040))

(assert (= (or b!47872 bm!3041) bm!3043))

(assert (= (or b!47872 bm!3040) bm!3042))

(assert (= (and d!5724 c!16290) b!47877))

(assert (= (and d!5724 (not c!16290)) b!47880))

(assert (= (and d!5724 res!31962) b!47874))

(assert (= (and b!47874 (not res!31963)) b!47873))

(declare-fun m!21838 () Bool)

(assert (=> bm!3043 m!21838))

(declare-fun m!21840 () Bool)

(assert (=> bm!3042 m!21840))

(declare-fun m!21842 () Bool)

(assert (=> b!47880 m!21842))

(declare-fun m!21844 () Bool)

(assert (=> b!47873 m!21844))

(declare-fun m!21846 () Bool)

(assert (=> b!47873 m!21846))

(assert (=> d!5724 m!21838))

(declare-fun m!21848 () Bool)

(assert (=> d!5724 m!21848))

(declare-fun m!21850 () Bool)

(assert (=> d!5724 m!21850))

(declare-fun m!21852 () Bool)

(assert (=> b!47872 m!21852))

(assert (=> b!47850 d!5724))

(declare-fun d!5726 () Bool)

(assert (=> d!5726 (= (array_inv!309 (_keys!576 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) (bvsge (size!798 (_keys!576 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47845 d!5726))

(declare-fun d!5728 () Bool)

(assert (=> d!5728 (= (array_inv!310 (_values!563 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) (bvsge (size!797 (_values!563 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47845 d!5728))

(declare-fun d!5730 () Bool)

(declare-fun res!31968 () Bool)

(declare-fun e!27720 () Bool)

(assert (=> d!5730 (=> (not res!31968) (not e!27720))))

(assert (=> d!5730 (= res!31968 (valid!260 (v!12583 (underlying!766 thiss!42687))))))

(assert (=> d!5730 (= (valid!259 thiss!42687) e!27720)))

(declare-fun b!47886 () Bool)

(declare-fun res!31969 () Bool)

(assert (=> b!47886 (=> (not res!31969) (not e!27720))))

(declare-fun lambda!903 () Int)

(declare-fun forall!104 (List!815 Int) Bool)

(assert (=> b!47886 (= res!31969 (forall!104 (toList!183 (map!271 (v!12583 (underlying!766 thiss!42687)))) lambda!903))))

(declare-fun b!47887 () Bool)

(declare-fun allKeysSameHashInMap!10 (ListLongMap!23 Hashable!281) Bool)

(assert (=> b!47887 (= e!27720 (allKeysSameHashInMap!10 (map!271 (v!12583 (underlying!766 thiss!42687))) (hashF!2150 thiss!42687)))))

(assert (= (and d!5730 res!31968) b!47886))

(assert (= (and b!47886 res!31969) b!47887))

(assert (=> d!5730 m!21850))

(assert (=> b!47886 m!21846))

(declare-fun m!21854 () Bool)

(assert (=> b!47886 m!21854))

(assert (=> b!47887 m!21846))

(assert (=> b!47887 m!21846))

(declare-fun m!21856 () Bool)

(assert (=> b!47887 m!21856))

(assert (=> b!47843 d!5730))

(declare-fun d!5732 () Bool)

(declare-fun lt!6817 () ListMap!57)

(declare-fun invariantList!27 (List!814) Bool)

(assert (=> d!5732 (invariantList!27 (toList!182 lt!6817))))

(declare-fun extractMap!6 (List!815) ListMap!57)

(assert (=> d!5732 (= lt!6817 (extractMap!6 (toList!183 (map!271 (v!12583 (underlying!766 (HashMap!281 (Cell!1132 (_2!720 lt!6783)) (hashF!2150 thiss!42687) (_size!704 thiss!42687) (defaultValue!430 thiss!42687))))))))))

(assert (=> d!5732 (valid!259 (HashMap!281 (Cell!1132 (_2!720 lt!6783)) (hashF!2150 thiss!42687) (_size!704 thiss!42687) (defaultValue!430 thiss!42687)))))

(assert (=> d!5732 (= (map!270 (HashMap!281 (Cell!1132 (_2!720 lt!6783)) (hashF!2150 thiss!42687) (_size!704 thiss!42687) (defaultValue!430 thiss!42687))) lt!6817)))

(declare-fun bs!6405 () Bool)

(assert (= bs!6405 d!5732))

(declare-fun m!21858 () Bool)

(assert (=> bs!6405 m!21858))

(declare-fun m!21860 () Bool)

(assert (=> bs!6405 m!21860))

(declare-fun m!21862 () Bool)

(assert (=> bs!6405 m!21862))

(declare-fun m!21864 () Bool)

(assert (=> bs!6405 m!21864))

(assert (=> b!47847 d!5732))

(declare-fun d!5734 () Bool)

(declare-fun lt!6818 () ListMap!57)

(assert (=> d!5734 (invariantList!27 (toList!182 lt!6818))))

(assert (=> d!5734 (= lt!6818 (extractMap!6 (toList!183 (map!271 (v!12583 (underlying!766 thiss!42687))))))))

(assert (=> d!5734 (valid!259 thiss!42687)))

(assert (=> d!5734 (= (map!270 thiss!42687) lt!6818)))

(declare-fun bs!6406 () Bool)

(assert (= bs!6406 d!5734))

(declare-fun m!21866 () Bool)

(assert (=> bs!6406 m!21866))

(assert (=> bs!6406 m!21846))

(declare-fun m!21868 () Bool)

(assert (=> bs!6406 m!21868))

(assert (=> bs!6406 m!21836))

(assert (=> b!47847 d!5734))

(declare-fun tp_is_empty!417 () Bool)

(declare-fun tp_is_empty!415 () Bool)

(declare-fun e!27723 () Bool)

(declare-fun tp!32319 () Bool)

(declare-fun b!47892 () Bool)

(assert (=> b!47892 (= e!27723 (and tp_is_empty!415 tp_is_empty!417 tp!32319))))

(assert (=> b!47849 (= tp!32311 e!27723)))

(assert (= (and b!47849 ((_ is Cons!812) mapDefault!1126)) b!47892))

(declare-fun tp!32320 () Bool)

(declare-fun b!47893 () Bool)

(declare-fun e!27724 () Bool)

(assert (=> b!47893 (= e!27724 (and tp_is_empty!415 tp_is_empty!417 tp!32320))))

(assert (=> b!47845 (= tp!32310 e!27724)))

(assert (= (and b!47845 ((_ is Cons!812) (zeroValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))))) b!47893))

(declare-fun b!47894 () Bool)

(declare-fun tp!32321 () Bool)

(declare-fun e!27725 () Bool)

(assert (=> b!47894 (= e!27725 (and tp_is_empty!415 tp_is_empty!417 tp!32321))))

(assert (=> b!47845 (= tp!32314 e!27725)))

(assert (= (and b!47845 ((_ is Cons!812) (minValue!541 (v!12582 (underlying!765 (v!12583 (underlying!766 thiss!42687))))))) b!47894))

(declare-fun b!47902 () Bool)

(declare-fun tp!32329 () Bool)

(declare-fun e!27730 () Bool)

(assert (=> b!47902 (= e!27730 (and tp_is_empty!415 tp_is_empty!417 tp!32329))))

(declare-fun mapNonEmpty!1129 () Bool)

(declare-fun mapRes!1129 () Bool)

(declare-fun tp!32330 () Bool)

(declare-fun e!27731 () Bool)

(assert (=> mapNonEmpty!1129 (= mapRes!1129 (and tp!32330 e!27731))))

(declare-fun mapRest!1129 () (Array (_ BitVec 32) List!814))

(declare-fun mapKey!1129 () (_ BitVec 32))

(declare-fun mapValue!1129 () List!814)

(assert (=> mapNonEmpty!1129 (= mapRest!1126 (store mapRest!1129 mapKey!1129 mapValue!1129))))

(declare-fun tp!32328 () Bool)

(declare-fun b!47901 () Bool)

(assert (=> b!47901 (= e!27731 (and tp_is_empty!415 tp_is_empty!417 tp!32328))))

(declare-fun mapIsEmpty!1129 () Bool)

(assert (=> mapIsEmpty!1129 mapRes!1129))

(declare-fun condMapEmpty!1129 () Bool)

(declare-fun mapDefault!1129 () List!814)

(assert (=> mapNonEmpty!1126 (= condMapEmpty!1129 (= mapRest!1126 ((as const (Array (_ BitVec 32) List!814)) mapDefault!1129)))))

(assert (=> mapNonEmpty!1126 (= tp!32316 (and e!27730 mapRes!1129))))

(assert (= (and mapNonEmpty!1126 condMapEmpty!1129) mapIsEmpty!1129))

(assert (= (and mapNonEmpty!1126 (not condMapEmpty!1129)) mapNonEmpty!1129))

(assert (= (and mapNonEmpty!1129 ((_ is Cons!812) mapValue!1129)) b!47901))

(assert (= (and mapNonEmpty!1126 ((_ is Cons!812) mapDefault!1129)) b!47902))

(declare-fun m!21870 () Bool)

(assert (=> mapNonEmpty!1129 m!21870))

(declare-fun b!47903 () Bool)

(declare-fun tp!32331 () Bool)

(declare-fun e!27732 () Bool)

(assert (=> b!47903 (= e!27732 (and tp_is_empty!415 tp_is_empty!417 tp!32331))))

(assert (=> mapNonEmpty!1126 (= tp!32313 e!27732)))

(assert (= (and mapNonEmpty!1126 ((_ is Cons!812) mapValue!1126)) b!47903))

(check-sat b_and!1355 (not d!5724) tp_is_empty!417 (not b!47901) (not b!47872) (not b!47903) (not b!47887) (not b!47886) b_and!1353 (not b!47873) (not b!47892) (not mapNonEmpty!1129) (not b_next!1319) (not b!47894) (not d!5730) (not d!5732) (not b!47893) (not b!47902) (not b_next!1317) (not d!5734) tp_is_empty!415 (not bm!3043) (not bm!3042) (not b!47880))
(check-sat b_and!1355 b_and!1353 (not b_next!1317) (not b_next!1319))
