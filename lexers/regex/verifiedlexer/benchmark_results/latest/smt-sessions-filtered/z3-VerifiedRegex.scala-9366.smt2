; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497178 () Bool)

(assert start!497178)

(declare-fun b!4809857 () Bool)

(declare-fun b_free!130107 () Bool)

(declare-fun b_next!130897 () Bool)

(assert (=> b!4809857 (= b_free!130107 (not b_next!130897))))

(declare-fun tp!1360336 () Bool)

(declare-fun b_and!341887 () Bool)

(assert (=> b!4809857 (= tp!1360336 b_and!341887)))

(declare-fun b!4809872 () Bool)

(declare-fun b_free!130109 () Bool)

(declare-fun b_next!130899 () Bool)

(assert (=> b!4809872 (= b_free!130109 (not b_next!130899))))

(declare-fun tp!1360334 () Bool)

(declare-fun b_and!341889 () Bool)

(assert (=> b!4809872 (= tp!1360334 b_and!341889)))

(declare-datatypes ((K!16119 0))(
  ( (K!16120 (val!21201 Int)) )
))
(declare-datatypes ((array!18534 0))(
  ( (array!18535 (arr!8267 (Array (_ BitVec 32) (_ BitVec 64))) (size!36513 (_ BitVec 32))) )
))
(declare-datatypes ((V!16365 0))(
  ( (V!16366 (val!21202 Int)) )
))
(declare-datatypes ((tuple2!57354 0))(
  ( (tuple2!57355 (_1!31971 K!16119) (_2!31971 V!16365)) )
))
(declare-datatypes ((List!54636 0))(
  ( (Nil!54512) (Cons!54512 (h!60944 tuple2!57354) (t!362112 List!54636)) )
))
(declare-datatypes ((array!18536 0))(
  ( (array!18537 (arr!8268 (Array (_ BitVec 32) List!54636)) (size!36514 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10082 0))(
  ( (LongMapFixedSize!10083 (defaultEntry!5459 Int) (mask!15032 (_ BitVec 32)) (extraKeys!5316 (_ BitVec 32)) (zeroValue!5329 List!54636) (minValue!5329 List!54636) (_size!10107 (_ BitVec 32)) (_keys!5383 array!18534) (_values!5354 array!18536) (_vacant!5106 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19929 0))(
  ( (Cell!19930 (v!48806 LongMapFixedSize!10082)) )
))
(declare-datatypes ((MutLongMap!5041 0))(
  ( (LongMap!5041 (underlying!10289 Cell!19929)) (MutLongMapExt!5040 (__x!33221 Int)) )
))
(declare-datatypes ((Hashable!7052 0))(
  ( (HashableExt!7051 (__x!33222 Int)) )
))
(declare-datatypes ((Cell!19931 0))(
  ( (Cell!19932 (v!48807 MutLongMap!5041)) )
))
(declare-datatypes ((MutableMap!4925 0))(
  ( (MutableMapExt!4924 (__x!33223 Int)) (HashMap!4925 (underlying!10290 Cell!19931) (hashF!13322 Hashable!7052) (_size!10108 (_ BitVec 32)) (defaultValue!5096 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4925)

(declare-fun tp!1360335 () Bool)

(declare-fun e!3004551 () Bool)

(declare-fun tp!1360332 () Bool)

(declare-fun e!3004549 () Bool)

(declare-fun array_inv!5971 (array!18534) Bool)

(declare-fun array_inv!5972 (array!18536) Bool)

(assert (=> b!4809857 (= e!3004549 (and tp!1360336 tp!1360332 tp!1360335 (array_inv!5971 (_keys!5383 (v!48806 (underlying!10289 (v!48807 (underlying!10290 thiss!41921)))))) (array_inv!5972 (_values!5354 (v!48806 (underlying!10289 (v!48807 (underlying!10290 thiss!41921)))))) e!3004551))))

(declare-fun b!4809858 () Bool)

(declare-datatypes ((Unit!141507 0))(
  ( (Unit!141508) )
))
(declare-fun e!3004541 () Unit!141507)

(declare-fun Unit!141509 () Unit!141507)

(assert (=> b!4809858 (= e!3004541 Unit!141509)))

(declare-fun b!4809859 () Bool)

(declare-fun e!3004553 () Bool)

(declare-fun lt!1962182 () Bool)

(get-info :version)

(assert (=> b!4809859 (= e!3004553 (and lt!1962182 (not ((_ is LongMap!5041) (v!48807 (underlying!10290 thiss!41921))))))))

(declare-fun lt!1962188 () Unit!141507)

(declare-fun e!3004552 () Unit!141507)

(assert (=> b!4809859 (= lt!1962188 e!3004552)))

(declare-fun c!819784 () Bool)

(declare-datatypes ((tuple2!57356 0))(
  ( (tuple2!57357 (_1!31972 (_ BitVec 64)) (_2!31972 List!54636)) )
))
(declare-datatypes ((List!54637 0))(
  ( (Nil!54513) (Cons!54513 (h!60945 tuple2!57356) (t!362113 List!54637)) )
))
(declare-datatypes ((ListLongMap!5583 0))(
  ( (ListLongMap!5584 (toList!7128 List!54637)) )
))
(declare-fun lt!1962179 () ListLongMap!5583)

(declare-fun key!1652 () K!16119)

(declare-datatypes ((ListMap!6567 0))(
  ( (ListMap!6568 (toList!7129 List!54636)) )
))
(declare-fun contains!18230 (ListMap!6567 K!16119) Bool)

(declare-fun extractMap!2535 (List!54637) ListMap!6567)

(assert (=> b!4809859 (= c!819784 (contains!18230 (extractMap!2535 (toList!7128 lt!1962179)) key!1652))))

(declare-fun map!12400 (MutLongMap!5041) ListLongMap!5583)

(assert (=> b!4809859 (= lt!1962179 (map!12400 (v!48807 (underlying!10290 thiss!41921))))))

(declare-fun lt!1962190 () Unit!141507)

(declare-fun e!3004545 () Unit!141507)

(assert (=> b!4809859 (= lt!1962190 e!3004545)))

(declare-fun c!819783 () Bool)

(assert (=> b!4809859 (= c!819783 lt!1962182)))

(declare-fun lt!1962193 () (_ BitVec 64))

(declare-fun contains!18231 (MutLongMap!5041 (_ BitVec 64)) Bool)

(assert (=> b!4809859 (= lt!1962182 (contains!18231 (v!48807 (underlying!10290 thiss!41921)) lt!1962193))))

(declare-fun hash!5122 (Hashable!7052 K!16119) (_ BitVec 64))

(assert (=> b!4809859 (= lt!1962193 (hash!5122 (hashF!13322 thiss!41921) key!1652))))

(declare-fun b!4809860 () Bool)

(declare-fun tp!1360331 () Bool)

(declare-fun mapRes!22286 () Bool)

(assert (=> b!4809860 (= e!3004551 (and tp!1360331 mapRes!22286))))

(declare-fun condMapEmpty!22286 () Bool)

(declare-fun mapDefault!22286 () List!54636)

(assert (=> b!4809860 (= condMapEmpty!22286 (= (arr!8268 (_values!5354 (v!48806 (underlying!10289 (v!48807 (underlying!10290 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54636)) mapDefault!22286)))))

(declare-fun bm!335680 () Bool)

(declare-fun call!335688 () List!54636)

(declare-fun apply!13138 (ListLongMap!5583 (_ BitVec 64)) List!54636)

(assert (=> bm!335680 (= call!335688 (apply!13138 lt!1962179 lt!1962193))))

(declare-fun b!4809861 () Bool)

(declare-fun res!2046035 () Bool)

(assert (=> b!4809861 (=> (not res!2046035) (not e!3004553))))

(declare-fun valid!4064 (MutableMap!4925) Bool)

(assert (=> b!4809861 (= res!2046035 (valid!4064 thiss!41921))))

(declare-fun b!4809862 () Bool)

(declare-fun e!3004546 () Bool)

(declare-fun call!335687 () Bool)

(assert (=> b!4809862 (= e!3004546 call!335687)))

(declare-fun b!4809863 () Bool)

(declare-fun Unit!141510 () Unit!141507)

(assert (=> b!4809863 (= e!3004545 Unit!141510)))

(declare-fun lt!1962186 () tuple2!57356)

(declare-fun b!4809864 () Bool)

(declare-fun lt!1962187 () ListLongMap!5583)

(declare-fun lambda!233718 () Int)

(declare-fun forallContained!4264 (List!54637 Int tuple2!57356) Unit!141507)

(assert (=> b!4809864 (= e!3004545 (forallContained!4264 (toList!7128 lt!1962187) lambda!233718 lt!1962186))))

(assert (=> b!4809864 (= lt!1962187 (map!12400 (v!48807 (underlying!10290 thiss!41921))))))

(declare-fun lt!1962192 () List!54636)

(declare-fun apply!13139 (MutLongMap!5041 (_ BitVec 64)) List!54636)

(assert (=> b!4809864 (= lt!1962192 (apply!13139 (v!48807 (underlying!10290 thiss!41921)) lt!1962193))))

(assert (=> b!4809864 (= lt!1962186 (tuple2!57357 lt!1962193 lt!1962192))))

(declare-fun c!819786 () Bool)

(declare-fun contains!18232 (List!54637 tuple2!57356) Bool)

(assert (=> b!4809864 (= c!819786 (not (contains!18232 (toList!7128 lt!1962187) lt!1962186)))))

(declare-fun lt!1962184 () Unit!141507)

(declare-fun e!3004547 () Unit!141507)

(assert (=> b!4809864 (= lt!1962184 e!3004547)))

(declare-fun bm!335681 () Bool)

(declare-fun call!335686 () Bool)

(declare-fun contains!18233 (ListLongMap!5583 (_ BitVec 64)) Bool)

(assert (=> bm!335681 (= call!335686 (contains!18233 lt!1962179 lt!1962193))))

(declare-fun b!4809866 () Bool)

(declare-fun e!3004542 () Bool)

(assert (=> b!4809866 (= e!3004542 e!3004549)))

(declare-fun b!4809867 () Bool)

(assert (=> b!4809867 false))

(declare-fun lt!1962191 () Unit!141507)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!995 (List!54637 (_ BitVec 64) List!54636) Unit!141507)

(assert (=> b!4809867 (= lt!1962191 (lemmaGetValueByKeyImpliesContainsTuple!995 (toList!7128 lt!1962187) lt!1962193 lt!1962192))))

(declare-datatypes ((Option!13297 0))(
  ( (None!13296) (Some!13296 (v!48808 List!54636)) )
))
(declare-fun isDefined!10435 (Option!13297) Bool)

(declare-fun getValueByKey!2482 (List!54637 (_ BitVec 64)) Option!13297)

(assert (=> b!4809867 (isDefined!10435 (getValueByKey!2482 (toList!7128 lt!1962187) lt!1962193))))

(declare-fun lt!1962180 () Unit!141507)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2270 (List!54637 (_ BitVec 64)) Unit!141507)

(assert (=> b!4809867 (= lt!1962180 (lemmaContainsKeyImpliesGetValueByKeyDefined!2270 (toList!7128 lt!1962187) lt!1962193))))

(declare-fun containsKey!4140 (List!54637 (_ BitVec 64)) Bool)

(assert (=> b!4809867 (containsKey!4140 (toList!7128 lt!1962187) lt!1962193)))

(declare-fun lt!1962183 () Unit!141507)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!266 (List!54637 (_ BitVec 64)) Unit!141507)

(assert (=> b!4809867 (= lt!1962183 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!266 (toList!7128 lt!1962187) lt!1962193))))

(declare-fun Unit!141511 () Unit!141507)

(assert (=> b!4809867 (= e!3004547 Unit!141511)))

(declare-fun bm!335682 () Bool)

(declare-datatypes ((Option!13298 0))(
  ( (None!13297) (Some!13297 (v!48809 tuple2!57354)) )
))
(declare-fun call!335685 () Option!13298)

(declare-fun isDefined!10436 (Option!13298) Bool)

(assert (=> bm!335682 (= call!335687 (isDefined!10436 call!335685))))

(declare-fun b!4809868 () Bool)

(declare-fun e!3004550 () Bool)

(declare-fun e!3004543 () Bool)

(declare-fun lt!1962189 () MutLongMap!5041)

(assert (=> b!4809868 (= e!3004550 (and e!3004543 ((_ is LongMap!5041) lt!1962189)))))

(assert (=> b!4809868 (= lt!1962189 (v!48807 (underlying!10290 thiss!41921)))))

(declare-fun bm!335683 () Bool)

(declare-fun getPair!963 (List!54636 K!16119) Option!13298)

(assert (=> bm!335683 (= call!335685 (getPair!963 call!335688 key!1652))))

(declare-fun b!4809869 () Bool)

(declare-fun lt!1962185 () Unit!141507)

(assert (=> b!4809869 (= e!3004552 lt!1962185)))

(declare-fun lemmaInGenericMapThenInLongMap!387 (ListLongMap!5583 K!16119 Hashable!7052) Unit!141507)

(assert (=> b!4809869 (= lt!1962185 (lemmaInGenericMapThenInLongMap!387 lt!1962179 key!1652 (hashF!13322 thiss!41921)))))

(declare-fun res!2046038 () Bool)

(assert (=> b!4809869 (= res!2046038 call!335686)))

(declare-fun e!3004548 () Bool)

(assert (=> b!4809869 (=> (not res!2046038) (not e!3004548))))

(assert (=> b!4809869 e!3004548))

(declare-fun b!4809870 () Bool)

(assert (=> b!4809870 (= e!3004548 call!335687)))

(declare-fun b!4809871 () Bool)

(assert (=> b!4809871 (= e!3004552 e!3004541)))

(declare-fun res!2046036 () Bool)

(assert (=> b!4809871 (= res!2046036 call!335686)))

(assert (=> b!4809871 (=> (not res!2046036) (not e!3004546))))

(declare-fun c!819785 () Bool)

(assert (=> b!4809871 (= c!819785 e!3004546)))

(declare-fun e!3004544 () Bool)

(assert (=> b!4809872 (= e!3004544 (and e!3004550 tp!1360334))))

(declare-fun mapIsEmpty!22286 () Bool)

(assert (=> mapIsEmpty!22286 mapRes!22286))

(declare-fun b!4809873 () Bool)

(assert (=> b!4809873 false))

(declare-fun lt!1962181 () Unit!141507)

(declare-fun lemmaInLongMapThenInGenericMap!217 (ListLongMap!5583 K!16119 Hashable!7052) Unit!141507)

(assert (=> b!4809873 (= lt!1962181 (lemmaInLongMapThenInGenericMap!217 lt!1962179 key!1652 (hashF!13322 thiss!41921)))))

(declare-fun Unit!141512 () Unit!141507)

(assert (=> b!4809873 (= e!3004541 Unit!141512)))

(declare-fun b!4809874 () Bool)

(declare-fun Unit!141513 () Unit!141507)

(assert (=> b!4809874 (= e!3004547 Unit!141513)))

(declare-fun mapNonEmpty!22286 () Bool)

(declare-fun tp!1360333 () Bool)

(declare-fun tp!1360337 () Bool)

(assert (=> mapNonEmpty!22286 (= mapRes!22286 (and tp!1360333 tp!1360337))))

(declare-fun mapKey!22286 () (_ BitVec 32))

(declare-fun mapRest!22286 () (Array (_ BitVec 32) List!54636))

(declare-fun mapValue!22286 () List!54636)

(assert (=> mapNonEmpty!22286 (= (arr!8268 (_values!5354 (v!48806 (underlying!10289 (v!48807 (underlying!10290 thiss!41921)))))) (store mapRest!22286 mapKey!22286 mapValue!22286))))

(declare-fun res!2046037 () Bool)

(assert (=> start!497178 (=> (not res!2046037) (not e!3004553))))

(assert (=> start!497178 (= res!2046037 ((_ is HashMap!4925) thiss!41921))))

(assert (=> start!497178 e!3004553))

(assert (=> start!497178 e!3004544))

(declare-fun tp_is_empty!33953 () Bool)

(assert (=> start!497178 tp_is_empty!33953))

(declare-fun b!4809865 () Bool)

(assert (=> b!4809865 (= e!3004543 e!3004542)))

(assert (= (and start!497178 res!2046037) b!4809861))

(assert (= (and b!4809861 res!2046035) b!4809859))

(assert (= (and b!4809859 c!819783) b!4809864))

(assert (= (and b!4809859 (not c!819783)) b!4809863))

(assert (= (and b!4809864 c!819786) b!4809867))

(assert (= (and b!4809864 (not c!819786)) b!4809874))

(assert (= (and b!4809859 c!819784) b!4809869))

(assert (= (and b!4809859 (not c!819784)) b!4809871))

(assert (= (and b!4809869 res!2046038) b!4809870))

(assert (= (and b!4809871 res!2046036) b!4809862))

(assert (= (and b!4809871 c!819785) b!4809873))

(assert (= (and b!4809871 (not c!819785)) b!4809858))

(assert (= (or b!4809870 b!4809862) bm!335680))

(assert (= (or b!4809869 b!4809871) bm!335681))

(assert (= (or b!4809870 b!4809862) bm!335683))

(assert (= (or b!4809870 b!4809862) bm!335682))

(assert (= (and b!4809860 condMapEmpty!22286) mapIsEmpty!22286))

(assert (= (and b!4809860 (not condMapEmpty!22286)) mapNonEmpty!22286))

(assert (= b!4809857 b!4809860))

(assert (= b!4809866 b!4809857))

(assert (= b!4809865 b!4809866))

(assert (= (and b!4809868 ((_ is LongMap!5041) (v!48807 (underlying!10290 thiss!41921)))) b!4809865))

(assert (= b!4809872 b!4809868))

(assert (= (and start!497178 ((_ is HashMap!4925) thiss!41921)) b!4809872))

(declare-fun m!5795846 () Bool)

(assert (=> bm!335680 m!5795846))

(declare-fun m!5795848 () Bool)

(assert (=> bm!335683 m!5795848))

(declare-fun m!5795850 () Bool)

(assert (=> bm!335682 m!5795850))

(declare-fun m!5795852 () Bool)

(assert (=> b!4809864 m!5795852))

(declare-fun m!5795854 () Bool)

(assert (=> b!4809864 m!5795854))

(declare-fun m!5795856 () Bool)

(assert (=> b!4809864 m!5795856))

(declare-fun m!5795858 () Bool)

(assert (=> b!4809864 m!5795858))

(declare-fun m!5795860 () Bool)

(assert (=> bm!335681 m!5795860))

(declare-fun m!5795862 () Bool)

(assert (=> b!4809869 m!5795862))

(declare-fun m!5795864 () Bool)

(assert (=> b!4809859 m!5795864))

(declare-fun m!5795866 () Bool)

(assert (=> b!4809859 m!5795866))

(assert (=> b!4809859 m!5795864))

(declare-fun m!5795868 () Bool)

(assert (=> b!4809859 m!5795868))

(declare-fun m!5795870 () Bool)

(assert (=> b!4809859 m!5795870))

(assert (=> b!4809859 m!5795854))

(declare-fun m!5795872 () Bool)

(assert (=> b!4809861 m!5795872))

(declare-fun m!5795874 () Bool)

(assert (=> mapNonEmpty!22286 m!5795874))

(declare-fun m!5795876 () Bool)

(assert (=> b!4809873 m!5795876))

(declare-fun m!5795878 () Bool)

(assert (=> b!4809867 m!5795878))

(declare-fun m!5795880 () Bool)

(assert (=> b!4809867 m!5795880))

(declare-fun m!5795882 () Bool)

(assert (=> b!4809867 m!5795882))

(declare-fun m!5795884 () Bool)

(assert (=> b!4809867 m!5795884))

(declare-fun m!5795886 () Bool)

(assert (=> b!4809867 m!5795886))

(assert (=> b!4809867 m!5795880))

(declare-fun m!5795888 () Bool)

(assert (=> b!4809867 m!5795888))

(declare-fun m!5795890 () Bool)

(assert (=> b!4809857 m!5795890))

(declare-fun m!5795892 () Bool)

(assert (=> b!4809857 m!5795892))

(check-sat (not b!4809860) (not b_next!130899) (not b!4809861) b_and!341887 b_and!341889 (not b_next!130897) tp_is_empty!33953 (not b!4809859) (not b!4809869) (not bm!335680) (not b!4809873) (not b!4809857) (not b!4809867) (not b!4809864) (not mapNonEmpty!22286) (not bm!335683) (not bm!335681) (not bm!335682))
(check-sat b_and!341887 b_and!341889 (not b_next!130897) (not b_next!130899))
