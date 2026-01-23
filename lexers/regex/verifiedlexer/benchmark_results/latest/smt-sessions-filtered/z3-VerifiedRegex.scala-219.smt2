; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3438 () Bool)

(assert start!3438)

(declare-fun b!48861 () Bool)

(declare-fun b_free!1397 () Bool)

(declare-fun b_next!1397 () Bool)

(assert (=> b!48861 (= b_free!1397 (not b_next!1397))))

(declare-fun tp!32879 () Bool)

(declare-fun b_and!1433 () Bool)

(assert (=> b!48861 (= tp!32879 b_and!1433)))

(declare-fun b!48859 () Bool)

(declare-fun b_free!1399 () Bool)

(declare-fun b_next!1399 () Bool)

(assert (=> b!48859 (= b_free!1399 (not b_next!1399))))

(declare-fun tp!32876 () Bool)

(declare-fun b_and!1435 () Bool)

(assert (=> b!48859 (= tp!32876 b_and!1435)))

(declare-fun bm!3191 () Bool)

(declare-datatypes ((K!620 0))(
  ( (K!621 (val!296 Int)) )
))
(declare-datatypes ((V!674 0))(
  ( (V!675 (val!297 Int)) )
))
(declare-datatypes ((tuple2!1116 0))(
  ( (tuple2!1117 (_1!765 K!620) (_2!765 V!674)) )
))
(declare-datatypes ((List!849 0))(
  ( (Nil!843) (Cons!843 (h!6239 tuple2!1116) (t!17046 List!849)) )
))
(declare-datatypes ((ListMap!79 0))(
  ( (ListMap!80 (toList!195 List!849)) )
))
(declare-fun call!3196 () ListMap!79)

(declare-datatypes ((array!1058 0))(
  ( (array!1059 (arr!496 (Array (_ BitVec 32) (_ BitVec 64))) (size!845 (_ BitVec 32))) )
))
(declare-datatypes ((array!1060 0))(
  ( (array!1061 (arr!497 (Array (_ BitVec 32) List!849)) (size!846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!610 0))(
  ( (LongMapFixedSize!611 (defaultEntry!644 Int) (mask!1049 (_ BitVec 32)) (extraKeys!551 (_ BitVec 32)) (zeroValue!561 List!849) (minValue!561 List!849) (_size!743 (_ BitVec 32)) (_keys!596 array!1058) (_values!583 array!1060) (_vacant!366 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1209 0))(
  ( (Cell!1210 (v!12629 LongMapFixedSize!610)) )
))
(declare-datatypes ((MutLongMap!305 0))(
  ( (LongMap!305 (underlying!809 Cell!1209)) (MutLongMapExt!304 (__x!1428 Int)) )
))
(declare-datatypes ((Hashable!301 0))(
  ( (HashableExt!300 (__x!1429 Int)) )
))
(declare-datatypes ((Cell!1211 0))(
  ( (Cell!1212 (v!12630 MutLongMap!305)) )
))
(declare-datatypes ((MutableMap!301 0))(
  ( (MutableMapExt!300 (__x!1430 Int)) (HashMap!301 (underlying!810 Cell!1211) (hashF!2170 Hashable!301) (_size!744 (_ BitVec 32)) (defaultValue!450 Int)) )
))
(declare-fun thiss!47822 () MutableMap!301)

(declare-fun abstractMap!17 (MutableMap!301) ListMap!79)

(assert (=> bm!3191 (= call!3196 (abstractMap!17 thiss!47822))))

(declare-fun e!28513 () Bool)

(declare-fun e!28515 () Bool)

(assert (=> b!48859 (= e!28513 (and e!28515 tp!32876))))

(declare-fun b!48860 () Bool)

(declare-fun e!28516 () Bool)

(declare-fun e!28521 () Bool)

(assert (=> b!48860 (= e!28516 e!28521)))

(declare-fun lt!7224 () ListMap!79)

(declare-fun call!3197 () ListMap!79)

(assert (=> b!48860 (= lt!7224 call!3197)))

(declare-fun res!32244 () Bool)

(declare-fun key!7227 () K!620)

(declare-fun contains!44 (ListMap!79 K!620) Bool)

(assert (=> b!48860 (= res!32244 (not (contains!44 lt!7224 key!7227)))))

(assert (=> b!48860 (=> res!32244 e!28521)))

(declare-fun mapIsEmpty!1198 () Bool)

(declare-fun mapRes!1198 () Bool)

(assert (=> mapIsEmpty!1198 mapRes!1198))

(declare-fun tp!32882 () Bool)

(declare-fun tp!32881 () Bool)

(declare-fun e!28520 () Bool)

(declare-fun e!28510 () Bool)

(declare-fun array_inv!339 (array!1058) Bool)

(declare-fun array_inv!340 (array!1060) Bool)

(assert (=> b!48861 (= e!28510 (and tp!32879 tp!32881 tp!32882 (array_inv!339 (_keys!596 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) (array_inv!340 (_values!583 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) e!28520))))

(declare-fun res!32246 () Bool)

(declare-fun e!28518 () Bool)

(assert (=> start!3438 (=> (not res!32246) (not e!28518))))

(declare-fun valid!285 (MutableMap!301) Bool)

(assert (=> start!3438 (= res!32246 (valid!285 thiss!47822))))

(assert (=> start!3438 e!28518))

(assert (=> start!3438 e!28513))

(declare-fun tp_is_empty!503 () Bool)

(assert (=> start!3438 tp_is_empty!503))

(declare-fun tp_is_empty!505 () Bool)

(assert (=> start!3438 tp_is_empty!505))

(declare-fun v!11804 () V!674)

(declare-fun b!48862 () Bool)

(declare-fun e!28512 () ListMap!79)

(declare-fun +!9 (ListMap!79 tuple2!1116) ListMap!79)

(assert (=> b!48862 (= e!28512 (+!9 call!3196 (tuple2!1117 key!7227 v!11804)))))

(declare-fun b!48863 () Bool)

(assert (=> b!48863 (= e!28512 call!3196)))

(declare-fun b!48864 () Bool)

(declare-fun e!28514 () Bool)

(declare-fun lt!7225 () MutLongMap!305)

(get-info :version)

(assert (=> b!48864 (= e!28515 (and e!28514 ((_ is LongMap!305) lt!7225)))))

(assert (=> b!48864 (= lt!7225 (v!12630 (underlying!810 thiss!47822)))))

(declare-fun b!48865 () Bool)

(declare-fun call!3198 () Bool)

(assert (=> b!48865 (= e!28516 (not call!3198))))

(declare-fun bm!3192 () Bool)

(declare-fun c!16392 () Bool)

(declare-fun eq!6 (ListMap!79 ListMap!79) Bool)

(assert (=> bm!3192 (= call!3198 (eq!6 (ite c!16392 lt!7224 call!3197) e!28512))))

(declare-fun c!16393 () Bool)

(assert (=> bm!3192 (= c!16393 c!16392)))

(declare-fun mapNonEmpty!1198 () Bool)

(declare-fun tp!32880 () Bool)

(declare-fun tp!32877 () Bool)

(assert (=> mapNonEmpty!1198 (= mapRes!1198 (and tp!32880 tp!32877))))

(declare-fun mapRest!1198 () (Array (_ BitVec 32) List!849))

(declare-fun mapValue!1198 () List!849)

(declare-fun mapKey!1198 () (_ BitVec 32))

(assert (=> mapNonEmpty!1198 (= (arr!497 (_values!583 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) (store mapRest!1198 mapKey!1198 mapValue!1198))))

(declare-fun bm!3193 () Bool)

(declare-datatypes ((tuple2!1118 0))(
  ( (tuple2!1119 (_1!766 Bool) (_2!766 MutableMap!301)) )
))
(declare-fun lt!7223 () tuple2!1118)

(assert (=> bm!3193 (= call!3197 (abstractMap!17 (_2!766 lt!7223)))))

(declare-fun b!48866 () Bool)

(declare-fun e!28517 () Bool)

(assert (=> b!48866 (= e!28518 e!28517)))

(declare-fun res!32243 () Bool)

(assert (=> b!48866 (=> res!32243 e!28517)))

(assert (=> b!48866 (= res!32243 (not (valid!285 (_2!766 lt!7223))))))

(declare-fun update!39 (MutableMap!301 K!620 V!674) tuple2!1118)

(assert (=> b!48866 (= lt!7223 (update!39 thiss!47822 key!7227 v!11804))))

(declare-fun b!48867 () Bool)

(assert (=> b!48867 (= e!28521 (not call!3198))))

(declare-fun b!48868 () Bool)

(assert (=> b!48868 (= e!28517 e!28516)))

(assert (=> b!48868 (= c!16392 (_1!766 lt!7223))))

(declare-fun b!48869 () Bool)

(declare-fun res!32245 () Bool)

(assert (=> b!48869 (=> (not res!32245) (not e!28518))))

(assert (=> b!48869 (= res!32245 (not ((_ is MutableMapExt!300) thiss!47822)))))

(declare-fun b!48870 () Bool)

(declare-fun e!28511 () Bool)

(assert (=> b!48870 (= e!28514 e!28511)))

(declare-fun b!48871 () Bool)

(assert (=> b!48871 (= e!28511 e!28510)))

(declare-fun b!48872 () Bool)

(declare-fun tp!32878 () Bool)

(assert (=> b!48872 (= e!28520 (and tp!32878 mapRes!1198))))

(declare-fun condMapEmpty!1198 () Bool)

(declare-fun mapDefault!1198 () List!849)

(assert (=> b!48872 (= condMapEmpty!1198 (= (arr!497 (_values!583 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!849)) mapDefault!1198)))))

(assert (= (and start!3438 res!32246) b!48869))

(assert (= (and b!48869 res!32245) b!48866))

(assert (= (and b!48866 (not res!32243)) b!48868))

(assert (= (and b!48868 c!16392) b!48860))

(assert (= (and b!48868 (not c!16392)) b!48865))

(assert (= (and b!48860 (not res!32244)) b!48867))

(assert (= (or b!48867 b!48865) bm!3191))

(assert (= (or b!48860 b!48865) bm!3193))

(assert (= (or b!48867 b!48865) bm!3192))

(assert (= (and bm!3192 c!16393) b!48862))

(assert (= (and bm!3192 (not c!16393)) b!48863))

(assert (= (and b!48872 condMapEmpty!1198) mapIsEmpty!1198))

(assert (= (and b!48872 (not condMapEmpty!1198)) mapNonEmpty!1198))

(assert (= b!48861 b!48872))

(assert (= b!48871 b!48861))

(assert (= b!48870 b!48871))

(assert (= (and b!48864 ((_ is LongMap!305) (v!12630 (underlying!810 thiss!47822)))) b!48870))

(assert (= b!48859 b!48864))

(assert (= (and start!3438 ((_ is HashMap!301) thiss!47822)) b!48859))

(declare-fun m!22458 () Bool)

(assert (=> start!3438 m!22458))

(declare-fun m!22460 () Bool)

(assert (=> bm!3193 m!22460))

(declare-fun m!22462 () Bool)

(assert (=> b!48862 m!22462))

(declare-fun m!22464 () Bool)

(assert (=> mapNonEmpty!1198 m!22464))

(declare-fun m!22466 () Bool)

(assert (=> bm!3192 m!22466))

(declare-fun m!22468 () Bool)

(assert (=> b!48861 m!22468))

(declare-fun m!22470 () Bool)

(assert (=> b!48861 m!22470))

(declare-fun m!22472 () Bool)

(assert (=> bm!3191 m!22472))

(declare-fun m!22474 () Bool)

(assert (=> b!48860 m!22474))

(declare-fun m!22476 () Bool)

(assert (=> b!48866 m!22476))

(declare-fun m!22478 () Bool)

(assert (=> b!48866 m!22478))

(check-sat (not bm!3193) (not start!3438) tp_is_empty!503 (not bm!3191) (not bm!3192) b_and!1433 (not b!48862) (not b!48872) (not b_next!1397) tp_is_empty!505 (not b_next!1399) (not b!48861) (not b!48860) (not mapNonEmpty!1198) b_and!1435 (not b!48866))
(check-sat b_and!1433 b_and!1435 (not b_next!1399) (not b_next!1397))
(get-model)

(declare-fun bm!3196 () Bool)

(declare-fun call!3201 () Bool)

(declare-datatypes ((List!850 0))(
  ( (Nil!844) (Cons!844 (h!6240 K!620) (t!17047 List!850)) )
))
(declare-fun e!28536 () List!850)

(declare-fun contains!45 (List!850 K!620) Bool)

(assert (=> bm!3196 (= call!3201 (contains!45 e!28536 key!7227))))

(declare-fun c!16401 () Bool)

(declare-fun c!16400 () Bool)

(assert (=> bm!3196 (= c!16401 c!16400)))

(declare-fun d!5848 () Bool)

(declare-fun e!28538 () Bool)

(assert (=> d!5848 e!28538))

(declare-fun res!32253 () Bool)

(assert (=> d!5848 (=> res!32253 e!28538)))

(declare-fun e!28539 () Bool)

(assert (=> d!5848 (= res!32253 e!28539)))

(declare-fun res!32254 () Bool)

(assert (=> d!5848 (=> (not res!32254) (not e!28539))))

(declare-fun lt!7248 () Bool)

(assert (=> d!5848 (= res!32254 (not lt!7248))))

(declare-fun lt!7245 () Bool)

(assert (=> d!5848 (= lt!7248 lt!7245)))

(declare-datatypes ((Unit!403 0))(
  ( (Unit!404) )
))
(declare-fun lt!7242 () Unit!403)

(declare-fun e!28534 () Unit!403)

(assert (=> d!5848 (= lt!7242 e!28534)))

(assert (=> d!5848 (= c!16400 lt!7245)))

(declare-fun containsKey!7 (List!849 K!620) Bool)

(assert (=> d!5848 (= lt!7245 (containsKey!7 (toList!195 lt!7224) key!7227))))

(assert (=> d!5848 (= (contains!44 lt!7224 key!7227) lt!7248)))

(declare-fun b!48891 () Bool)

(declare-fun keys!478 (ListMap!79) List!850)

(assert (=> b!48891 (= e!28536 (keys!478 lt!7224))))

(declare-fun b!48892 () Bool)

(declare-fun e!28537 () Unit!403)

(assert (=> b!48892 (= e!28534 e!28537)))

(declare-fun c!16402 () Bool)

(assert (=> b!48892 (= c!16402 call!3201)))

(declare-fun b!48893 () Bool)

(declare-fun e!28535 () Bool)

(assert (=> b!48893 (= e!28535 (contains!45 (keys!478 lt!7224) key!7227))))

(declare-fun b!48894 () Bool)

(assert (=> b!48894 (= e!28538 e!28535)))

(declare-fun res!32255 () Bool)

(assert (=> b!48894 (=> (not res!32255) (not e!28535))))

(declare-datatypes ((Option!58 0))(
  ( (None!57) (Some!57 (v!12632 V!674)) )
))
(declare-fun isDefined!9 (Option!58) Bool)

(declare-fun getValueByKey!3 (List!849 K!620) Option!58)

(assert (=> b!48894 (= res!32255 (isDefined!9 (getValueByKey!3 (toList!195 lt!7224) key!7227)))))

(declare-fun b!48895 () Bool)

(assert (=> b!48895 (= e!28539 (not (contains!45 (keys!478 lt!7224) key!7227)))))

(declare-fun b!48896 () Bool)

(declare-fun getKeysList!3 (List!849) List!850)

(assert (=> b!48896 (= e!28536 (getKeysList!3 (toList!195 lt!7224)))))

(declare-fun b!48897 () Bool)

(declare-fun Unit!405 () Unit!403)

(assert (=> b!48897 (= e!28537 Unit!405)))

(declare-fun b!48898 () Bool)

(declare-fun lt!7247 () Unit!403)

(assert (=> b!48898 (= e!28534 lt!7247)))

(declare-fun lt!7244 () Unit!403)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!3 (List!849 K!620) Unit!403)

(assert (=> b!48898 (= lt!7244 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 lt!7224) key!7227))))

(assert (=> b!48898 (isDefined!9 (getValueByKey!3 (toList!195 lt!7224) key!7227))))

(declare-fun lt!7249 () Unit!403)

(assert (=> b!48898 (= lt!7249 lt!7244)))

(declare-fun lemmaInListThenGetKeysListContains!2 (List!849 K!620) Unit!403)

(assert (=> b!48898 (= lt!7247 (lemmaInListThenGetKeysListContains!2 (toList!195 lt!7224) key!7227))))

(assert (=> b!48898 call!3201))

(declare-fun b!48899 () Bool)

(assert (=> b!48899 false))

(declare-fun lt!7243 () Unit!403)

(declare-fun lt!7246 () Unit!403)

(assert (=> b!48899 (= lt!7243 lt!7246)))

(assert (=> b!48899 (containsKey!7 (toList!195 lt!7224) key!7227)))

(declare-fun lemmaInGetKeysListThenContainsKey!2 (List!849 K!620) Unit!403)

(assert (=> b!48899 (= lt!7246 (lemmaInGetKeysListThenContainsKey!2 (toList!195 lt!7224) key!7227))))

(declare-fun Unit!406 () Unit!403)

(assert (=> b!48899 (= e!28537 Unit!406)))

(assert (= (and d!5848 c!16400) b!48898))

(assert (= (and d!5848 (not c!16400)) b!48892))

(assert (= (and b!48892 c!16402) b!48899))

(assert (= (and b!48892 (not c!16402)) b!48897))

(assert (= (or b!48898 b!48892) bm!3196))

(assert (= (and bm!3196 c!16401) b!48896))

(assert (= (and bm!3196 (not c!16401)) b!48891))

(assert (= (and d!5848 res!32254) b!48895))

(assert (= (and d!5848 (not res!32253)) b!48894))

(assert (= (and b!48894 res!32255) b!48893))

(declare-fun m!22480 () Bool)

(assert (=> b!48895 m!22480))

(assert (=> b!48895 m!22480))

(declare-fun m!22482 () Bool)

(assert (=> b!48895 m!22482))

(assert (=> b!48893 m!22480))

(assert (=> b!48893 m!22480))

(assert (=> b!48893 m!22482))

(declare-fun m!22484 () Bool)

(assert (=> d!5848 m!22484))

(declare-fun m!22486 () Bool)

(assert (=> b!48898 m!22486))

(declare-fun m!22488 () Bool)

(assert (=> b!48898 m!22488))

(assert (=> b!48898 m!22488))

(declare-fun m!22490 () Bool)

(assert (=> b!48898 m!22490))

(declare-fun m!22492 () Bool)

(assert (=> b!48898 m!22492))

(declare-fun m!22494 () Bool)

(assert (=> bm!3196 m!22494))

(assert (=> b!48894 m!22488))

(assert (=> b!48894 m!22488))

(assert (=> b!48894 m!22490))

(assert (=> b!48899 m!22484))

(declare-fun m!22496 () Bool)

(assert (=> b!48899 m!22496))

(declare-fun m!22498 () Bool)

(assert (=> b!48896 m!22498))

(assert (=> b!48891 m!22480))

(assert (=> b!48860 d!5848))

(declare-fun d!5850 () Bool)

(declare-fun c!16405 () Bool)

(assert (=> d!5850 (= c!16405 ((_ is MutableMapExt!300) thiss!47822))))

(declare-fun e!28542 () Bool)

(assert (=> d!5850 (= (valid!285 thiss!47822) e!28542)))

(declare-fun b!48904 () Bool)

(declare-fun valid!286 (MutableMap!301) Bool)

(assert (=> b!48904 (= e!28542 (valid!286 thiss!47822))))

(declare-fun b!48905 () Bool)

(declare-fun valid!287 (MutableMap!301) Bool)

(assert (=> b!48905 (= e!28542 (valid!287 thiss!47822))))

(assert (= (and d!5850 c!16405) b!48904))

(assert (= (and d!5850 (not c!16405)) b!48905))

(declare-fun m!22500 () Bool)

(assert (=> b!48904 m!22500))

(declare-fun m!22502 () Bool)

(assert (=> b!48905 m!22502))

(assert (=> start!3438 d!5850))

(declare-fun d!5852 () Bool)

(declare-fun c!16406 () Bool)

(assert (=> d!5852 (= c!16406 ((_ is MutableMapExt!300) (_2!766 lt!7223)))))

(declare-fun e!28543 () Bool)

(assert (=> d!5852 (= (valid!285 (_2!766 lt!7223)) e!28543)))

(declare-fun b!48906 () Bool)

(assert (=> b!48906 (= e!28543 (valid!286 (_2!766 lt!7223)))))

(declare-fun b!48907 () Bool)

(assert (=> b!48907 (= e!28543 (valid!287 (_2!766 lt!7223)))))

(assert (= (and d!5852 c!16406) b!48906))

(assert (= (and d!5852 (not c!16406)) b!48907))

(declare-fun m!22504 () Bool)

(assert (=> b!48906 m!22504))

(declare-fun m!22506 () Bool)

(assert (=> b!48907 m!22506))

(assert (=> b!48866 d!5852))

(declare-fun bs!6449 () Bool)

(declare-fun b!48959 () Bool)

(declare-fun b!48949 () Bool)

(assert (= bs!6449 (and b!48959 b!48949)))

(declare-fun lambda!923 () Int)

(declare-fun lambda!922 () Int)

(assert (=> bs!6449 (= lambda!923 lambda!922)))

(declare-datatypes ((tuple2!1120 0))(
  ( (tuple2!1121 (_1!767 Bool) (_2!767 MutLongMap!305)) )
))
(declare-fun lt!7384 () tuple2!1120)

(declare-fun bm!3259 () Bool)

(declare-fun c!16422 () Bool)

(declare-fun lt!7402 () tuple2!1120)

(declare-datatypes ((tuple2!1122 0))(
  ( (tuple2!1123 (_1!768 (_ BitVec 64)) (_2!768 List!849)) )
))
(declare-datatypes ((List!851 0))(
  ( (Nil!845) (Cons!845 (h!6241 tuple2!1122) (t!17048 List!851)) )
))
(declare-datatypes ((ListLongMap!27 0))(
  ( (ListLongMap!28 (toList!196 List!851)) )
))
(declare-fun call!3294 () ListLongMap!27)

(declare-fun map!286 (MutLongMap!305) ListLongMap!27)

(assert (=> bm!3259 (= call!3294 (map!286 (ite c!16422 (_2!767 lt!7384) (_2!767 lt!7402))))))

(declare-fun lt!7398 () MutableMap!301)

(declare-fun bm!3260 () Bool)

(declare-fun call!3287 () ListMap!79)

(declare-fun lt!7381 () MutableMap!301)

(declare-fun map!287 (MutableMap!301) ListMap!79)

(assert (=> bm!3260 (= call!3287 (map!287 (ite c!16422 lt!7381 lt!7398)))))

(declare-fun call!3280 () Unit!403)

(declare-fun lt!7403 () ListMap!79)

(declare-fun bm!3261 () Bool)

(declare-fun lt!7404 () ListMap!79)

(declare-fun lt!7411 () ListMap!79)

(declare-fun lt!7400 () ListMap!79)

(declare-fun lemmaEquivalentThenSameContains!2 (ListMap!79 ListMap!79 K!620) Unit!403)

(assert (=> bm!3261 (= call!3280 (lemmaEquivalentThenSameContains!2 (ite c!16422 lt!7400 lt!7404) (ite c!16422 lt!7403 lt!7411) key!7227))))

(declare-fun bm!3262 () Bool)

(declare-fun lt!7366 () (_ BitVec 64))

(declare-fun lt!7375 () List!849)

(declare-fun call!3271 () ListLongMap!27)

(declare-fun lt!7395 () ListLongMap!27)

(declare-fun lt!7382 () List!849)

(declare-fun lt!7387 () (_ BitVec 64))

(declare-fun +!10 (ListLongMap!27 tuple2!1122) ListLongMap!27)

(assert (=> bm!3262 (= call!3271 (+!10 lt!7395 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))))))

(declare-fun b!48947 () Bool)

(declare-fun call!3274 () ListMap!79)

(declare-fun lt!7388 () ListMap!79)

(assert (=> b!48947 (= call!3274 lt!7388)))

(declare-fun lt!7365 () Unit!403)

(declare-fun Unit!407 () Unit!403)

(assert (=> b!48947 (= lt!7365 Unit!407)))

(declare-fun call!3290 () Bool)

(assert (=> b!48947 call!3290))

(declare-fun e!28569 () Unit!403)

(declare-fun Unit!408 () Unit!403)

(assert (=> b!48947 (= e!28569 Unit!408)))

(declare-fun b!48948 () Bool)

(declare-fun res!32268 () Bool)

(declare-fun e!28574 () Bool)

(assert (=> b!48948 (=> (not res!32268) (not e!28574))))

(declare-fun lt!7385 () tuple2!1118)

(assert (=> b!48948 (= res!32268 (valid!287 (_2!766 lt!7385)))))

(declare-fun call!3289 () tuple2!1120)

(declare-fun bm!3263 () Bool)

(declare-fun update!40 (MutLongMap!305 (_ BitVec 64) List!849) tuple2!1120)

(assert (=> bm!3263 (= call!3289 (update!40 (v!12630 (underlying!810 thiss!47822)) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375)))))

(declare-fun bm!3264 () Bool)

(declare-fun call!3285 () ListMap!79)

(assert (=> bm!3264 (= call!3285 call!3287)))

(declare-fun call!3268 () Bool)

(assert (=> b!48949 call!3268))

(declare-fun lt!7409 () Unit!403)

(declare-fun Unit!409 () Unit!403)

(assert (=> b!48949 (= lt!7409 Unit!409)))

(declare-fun call!3275 () Bool)

(assert (=> b!48949 call!3275))

(declare-fun lt!7392 () Unit!403)

(declare-fun Unit!410 () Unit!403)

(assert (=> b!48949 (= lt!7392 Unit!410)))

(declare-fun call!3267 () Bool)

(assert (=> b!48949 call!3267))

(declare-fun lt!7390 () Unit!403)

(declare-fun lt!7401 () Unit!403)

(assert (=> b!48949 (= lt!7390 lt!7401)))

(declare-fun call!3279 () Bool)

(declare-fun call!3276 () Bool)

(assert (=> b!48949 (= call!3279 call!3276)))

(assert (=> b!48949 (= lt!7401 call!3280)))

(declare-fun call!3270 () ListMap!79)

(assert (=> b!48949 (= lt!7403 call!3270)))

(assert (=> b!48949 (= lt!7400 call!3274)))

(declare-fun lt!7407 () Unit!403)

(declare-fun lt!7408 () Unit!403)

(assert (=> b!48949 (= lt!7407 lt!7408)))

(declare-fun call!3281 () Bool)

(assert (=> b!48949 call!3281))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!2 (ListLongMap!27 (_ BitVec 64) List!849 K!620 V!674 Hashable!301) Unit!403)

(assert (=> b!48949 (= lt!7408 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!2 lt!7395 lt!7366 lt!7382 key!7227 v!11804 (hashF!2170 thiss!47822)))))

(declare-fun lt!7377 () Unit!403)

(declare-fun lt!7393 () Unit!403)

(assert (=> b!48949 (= lt!7377 lt!7393)))

(declare-fun e!28575 () Bool)

(assert (=> b!48949 e!28575))

(declare-fun res!32270 () Bool)

(assert (=> b!48949 (=> (not res!32270) (not e!28575))))

(declare-fun call!3283 () Bool)

(assert (=> b!48949 (= res!32270 call!3283)))

(declare-fun lt!7386 () ListLongMap!27)

(assert (=> b!48949 (= lt!7386 call!3271)))

(declare-fun call!3282 () Unit!403)

(assert (=> b!48949 (= lt!7393 call!3282)))

(declare-fun lt!7413 () Unit!403)

(declare-fun Unit!411 () Unit!403)

(assert (=> b!48949 (= lt!7413 Unit!411)))

(declare-fun noDuplicateKeys!4 (List!849) Bool)

(assert (=> b!48949 (noDuplicateKeys!4 lt!7382)))

(declare-fun lt!7374 () Unit!403)

(declare-fun Unit!412 () Unit!403)

(assert (=> b!48949 (= lt!7374 Unit!412)))

(declare-fun call!3284 () List!849)

(declare-fun containsKey!8 (List!849 K!620) Bool)

(assert (=> b!48949 (not (containsKey!8 call!3284 key!7227))))

(declare-fun lt!7396 () Unit!403)

(declare-fun Unit!413 () Unit!403)

(assert (=> b!48949 (= lt!7396 Unit!413)))

(declare-fun lt!7410 () Unit!403)

(declare-fun lt!7362 () Unit!403)

(assert (=> b!48949 (= lt!7410 lt!7362)))

(assert (=> b!48949 (noDuplicateKeys!4 call!3284)))

(declare-fun lt!7376 () List!849)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!2 (List!849 K!620) Unit!403)

(assert (=> b!48949 (= lt!7362 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!2 lt!7376 key!7227))))

(declare-fun lt!7364 () Unit!403)

(declare-fun lt!7414 () Unit!403)

(assert (=> b!48949 (= lt!7364 lt!7414)))

(declare-fun call!3293 () Bool)

(assert (=> b!48949 call!3293))

(declare-fun call!3278 () Unit!403)

(assert (=> b!48949 (= lt!7414 call!3278)))

(declare-fun lt!7406 () Unit!403)

(declare-fun lt!7405 () Unit!403)

(assert (=> b!48949 (= lt!7406 lt!7405)))

(declare-fun call!3265 () Bool)

(assert (=> b!48949 call!3265))

(declare-fun call!3277 () Unit!403)

(assert (=> b!48949 (= lt!7405 call!3277)))

(declare-fun Unit!414 () Unit!403)

(assert (=> b!48949 (= e!28569 Unit!414)))

(declare-fun bm!3265 () Bool)

(assert (=> bm!3265 (= call!3274 call!3287)))

(declare-fun bm!3266 () Bool)

(assert (=> bm!3266 (= call!3279 (contains!44 (ite c!16422 lt!7400 lt!7411) key!7227))))

(declare-fun bm!3267 () Bool)

(declare-fun call!3269 () ListMap!79)

(assert (=> bm!3267 (= call!3269 (map!287 thiss!47822))))

(declare-fun lt!7380 () List!849)

(declare-fun bm!3268 () Bool)

(declare-fun removePairForKey!2 (List!849 K!620) List!849)

(assert (=> bm!3268 (= call!3284 (removePairForKey!2 (ite c!16422 lt!7376 lt!7380) key!7227))))

(declare-fun b!48946 () Bool)

(declare-fun e!28570 () ListMap!79)

(assert (=> b!48946 (= e!28570 call!3269)))

(declare-fun d!5854 () Bool)

(assert (=> d!5854 e!28574))

(declare-fun res!32269 () Bool)

(assert (=> d!5854 (=> (not res!32269) (not e!28574))))

(assert (=> d!5854 (= res!32269 ((_ is HashMap!301) (_2!766 lt!7385)))))

(declare-fun lt!7383 () tuple2!1118)

(assert (=> d!5854 (= lt!7385 (tuple2!1119 (_1!766 lt!7383) (_2!766 lt!7383)))))

(declare-fun e!28572 () tuple2!1118)

(assert (=> d!5854 (= lt!7383 e!28572)))

(declare-fun contains!46 (MutableMap!301 K!620) Bool)

(assert (=> d!5854 (= c!16422 (contains!46 thiss!47822 key!7227))))

(assert (=> d!5854 (= lt!7395 (map!286 (v!12630 (underlying!810 thiss!47822))))))

(assert (=> d!5854 (= lt!7388 (map!287 thiss!47822))))

(assert (=> d!5854 (valid!287 thiss!47822)))

(assert (=> d!5854 (= (update!39 thiss!47822 key!7227 v!11804) lt!7385)))

(declare-fun bm!3269 () Bool)

(declare-fun allKeysSameHash!3 (List!849 (_ BitVec 64) Hashable!301) Bool)

(assert (=> bm!3269 (= call!3265 (allKeysSameHash!3 (ite c!16422 lt!7376 lt!7380) (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)))))

(declare-fun bm!3270 () Bool)

(declare-fun call!3292 () ListMap!79)

(assert (=> bm!3270 (= call!3292 (map!287 (_2!766 lt!7385)))))

(declare-fun b!48950 () Bool)

(declare-datatypes ((tuple2!1124 0))(
  ( (tuple2!1125 (_1!769 Unit!403) (_2!769 MutableMap!301)) )
))
(declare-fun Unit!415 () Unit!403)

(declare-fun Unit!416 () Unit!403)

(assert (=> b!48950 (= e!28572 (tuple2!1119 (_1!767 lt!7384) (_2!769 (ite false (tuple2!1125 Unit!415 (HashMap!301 (Cell!1212 (_2!767 lt!7384)) (hashF!2170 thiss!47822) (bvadd (_size!744 thiss!47822) #b00000000000000000000000000000001) (defaultValue!450 thiss!47822))) (tuple2!1125 Unit!416 lt!7381)))))))

(declare-fun call!3264 () (_ BitVec 64))

(assert (=> b!48950 (= lt!7366 call!3264)))

(declare-fun call!3273 () List!849)

(assert (=> b!48950 (= lt!7376 call!3273)))

(assert (=> b!48950 (= lt!7382 (Cons!843 (tuple2!1117 key!7227 v!11804) call!3284))))

(assert (=> b!48950 (= lt!7384 call!3289)))

(assert (=> b!48950 (= lt!7381 (HashMap!301 (Cell!1212 (_2!767 lt!7384)) (hashF!2170 thiss!47822) (_size!744 thiss!47822) (defaultValue!450 thiss!47822)))))

(declare-fun c!16427 () Bool)

(assert (=> b!48950 (= c!16427 (_1!767 lt!7384))))

(declare-fun lt!7394 () Unit!403)

(assert (=> b!48950 (= lt!7394 e!28569)))

(declare-fun b!48951 () Bool)

(assert (=> b!48951 (= e!28570 (+!9 call!3269 (tuple2!1117 key!7227 v!11804)))))

(declare-fun bm!3271 () Bool)

(declare-fun call!3288 () Bool)

(assert (=> bm!3271 (= call!3288 (eq!6 call!3292 e!28570))))

(declare-fun c!16421 () Bool)

(declare-fun c!16426 () Bool)

(assert (=> bm!3271 (= c!16421 c!16426)))

(declare-fun b!48952 () Bool)

(declare-fun e!28571 () Unit!403)

(declare-fun Unit!417 () Unit!403)

(assert (=> b!48952 (= e!28571 Unit!417)))

(declare-fun b!48953 () Bool)

(declare-fun e!28566 () Bool)

(assert (=> b!48953 (= e!28566 call!3288)))

(declare-fun bm!3272 () Bool)

(assert (=> bm!3272 (= call!3293 (allKeysSameHash!3 call!3284 (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)))))

(declare-fun bm!3273 () Bool)

(assert (=> bm!3273 (= call!3276 (contains!44 (ite c!16422 lt!7403 lt!7404) key!7227))))

(declare-fun b!48954 () Bool)

(declare-fun e!28568 () List!849)

(assert (=> b!48954 (= e!28568 call!3273)))

(declare-fun b!48955 () Bool)

(assert (=> b!48955 (= call!3285 lt!7388)))

(declare-fun lt!7369 () Unit!403)

(declare-fun Unit!418 () Unit!403)

(assert (=> b!48955 (= lt!7369 Unit!418)))

(assert (=> b!48955 call!3290))

(declare-fun e!28573 () Unit!403)

(declare-fun Unit!419 () Unit!403)

(assert (=> b!48955 (= e!28573 Unit!419)))

(declare-fun bm!3274 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!2 (ListLongMap!27 (_ BitVec 64) List!849 Hashable!301) Unit!403)

(assert (=> bm!3274 (= call!3282 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!2 lt!7395 (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375) (hashF!2170 thiss!47822)))))

(declare-fun b!48956 () Bool)

(declare-fun Unit!420 () Unit!403)

(declare-fun Unit!421 () Unit!403)

(assert (=> b!48956 (= e!28572 (tuple2!1119 (_1!767 lt!7402) (_2!769 (ite (_1!767 lt!7402) (tuple2!1125 Unit!420 (HashMap!301 (Cell!1212 (_2!767 lt!7402)) (hashF!2170 thiss!47822) (bvadd (_size!744 thiss!47822) #b00000000000000000000000000000001) (defaultValue!450 thiss!47822))) (tuple2!1125 Unit!421 lt!7398)))))))

(assert (=> b!48956 (= lt!7387 call!3264)))

(declare-fun c!16424 () Bool)

(declare-fun contains!47 (MutLongMap!305 (_ BitVec 64)) Bool)

(assert (=> b!48956 (= c!16424 (contains!47 (v!12630 (underlying!810 thiss!47822)) lt!7387))))

(assert (=> b!48956 (= lt!7380 e!28568)))

(assert (=> b!48956 (= lt!7375 (Cons!843 (tuple2!1117 key!7227 v!11804) lt!7380))))

(assert (=> b!48956 (= lt!7402 call!3289)))

(assert (=> b!48956 (= lt!7398 (HashMap!301 (Cell!1212 (_2!767 lt!7402)) (hashF!2170 thiss!47822) (_size!744 thiss!47822) (defaultValue!450 thiss!47822)))))

(declare-fun c!16425 () Bool)

(assert (=> b!48956 (= c!16425 (_1!767 lt!7402))))

(declare-fun lt!7372 () Unit!403)

(assert (=> b!48956 (= lt!7372 e!28573)))

(declare-fun bm!3275 () Bool)

(declare-fun call!3272 () ListMap!79)

(declare-fun call!3266 () ListMap!79)

(assert (=> bm!3275 (= call!3272 (+!9 call!3266 (tuple2!1117 key!7227 v!11804)))))

(declare-fun b!48957 () Bool)

(declare-fun e!28576 () Bool)

(declare-fun call!3291 () Bool)

(assert (=> b!48957 (= e!28576 call!3291)))

(declare-fun b!48958 () Bool)

(declare-fun e!28567 () Bool)

(assert (=> b!48958 (= e!28574 e!28567)))

(assert (=> b!48958 (= c!16426 (_1!766 lt!7385))))

(assert (=> b!48959 (contains!44 call!3285 key!7227)))

(declare-fun lt!7391 () Unit!403)

(declare-fun Unit!422 () Unit!403)

(assert (=> b!48959 (= lt!7391 Unit!422)))

(assert (=> b!48959 (contains!44 call!3270 key!7227)))

(declare-fun lt!7397 () Unit!403)

(declare-fun lt!7412 () Unit!403)

(assert (=> b!48959 (= lt!7397 lt!7412)))

(assert (=> b!48959 (= call!3276 call!3279)))

(assert (=> b!48959 (= lt!7412 call!3280)))

(assert (=> b!48959 (= lt!7411 call!3270)))

(assert (=> b!48959 (= lt!7404 call!3285)))

(declare-fun lt!7360 () Unit!403)

(declare-fun Unit!423 () Unit!403)

(assert (=> b!48959 (= lt!7360 Unit!423)))

(assert (=> b!48959 call!3268))

(declare-fun lt!7361 () Unit!403)

(declare-fun Unit!424 () Unit!403)

(assert (=> b!48959 (= lt!7361 Unit!424)))

(assert (=> b!48959 call!3275))

(declare-fun lt!7363 () Unit!403)

(declare-fun Unit!425 () Unit!403)

(assert (=> b!48959 (= lt!7363 Unit!425)))

(assert (=> b!48959 call!3267))

(declare-fun lt!7371 () Unit!403)

(declare-fun lt!7370 () Unit!403)

(assert (=> b!48959 (= lt!7371 lt!7370)))

(assert (=> b!48959 call!3281))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!2 (ListLongMap!27 (_ BitVec 64) List!849 K!620 V!674 Hashable!301) Unit!403)

(assert (=> b!48959 (= lt!7370 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!2 lt!7395 lt!7387 lt!7375 key!7227 v!11804 (hashF!2170 thiss!47822)))))

(declare-fun lt!7378 () Unit!403)

(declare-fun lt!7389 () Unit!403)

(assert (=> b!48959 (= lt!7378 lt!7389)))

(assert (=> b!48959 e!28576))

(declare-fun res!32267 () Bool)

(assert (=> b!48959 (=> (not res!32267) (not e!28576))))

(assert (=> b!48959 (= res!32267 call!3283)))

(declare-fun lt!7367 () ListLongMap!27)

(assert (=> b!48959 (= lt!7367 call!3271)))

(assert (=> b!48959 (= lt!7389 call!3282)))

(declare-fun lt!7368 () Unit!403)

(assert (=> b!48959 (= lt!7368 e!28571)))

(declare-fun c!16423 () Bool)

(declare-fun isEmpty!164 (List!849) Bool)

(assert (=> b!48959 (= c!16423 (not (isEmpty!164 lt!7380)))))

(declare-fun Unit!426 () Unit!403)

(assert (=> b!48959 (= e!28573 Unit!426)))

(declare-fun b!48960 () Bool)

(assert (=> b!48960 (= e!28567 call!3288)))

(declare-fun bm!3276 () Bool)

(declare-fun apply!23 (MutLongMap!305 (_ BitVec 64)) List!849)

(assert (=> bm!3276 (= call!3273 (apply!23 (v!12630 (underlying!810 thiss!47822)) (ite c!16422 lt!7366 lt!7387)))))

(declare-fun bm!3277 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!2 (List!851 (_ BitVec 64) List!849 Hashable!301) Unit!403)

(assert (=> bm!3277 (= call!3277 (lemmaInLongMapAllKeySameHashThenForTuple!2 (toList!196 lt!7395) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7376 lt!7380) (hashF!2170 thiss!47822)))))

(declare-fun bm!3278 () Bool)

(declare-fun call!3286 () ListMap!79)

(declare-fun extractMap!8 (List!851) ListMap!79)

(assert (=> bm!3278 (= call!3286 (extractMap!8 (toList!196 call!3271)))))

(declare-fun bm!3279 () Bool)

(declare-fun allKeysSameHashInMap!12 (ListLongMap!27 Hashable!301) Bool)

(assert (=> bm!3279 (= call!3275 (allKeysSameHashInMap!12 call!3294 (hashF!2170 thiss!47822)))))

(declare-fun b!48961 () Bool)

(assert (=> b!48961 (= e!28575 call!3291)))

(declare-fun b!48962 () Bool)

(assert (=> b!48962 (= e!28568 Nil!843)))

(declare-fun bm!3280 () Bool)

(declare-fun forall!106 (List!851 Int) Bool)

(assert (=> bm!3280 (= call!3267 (forall!106 (toList!196 call!3294) (ite c!16422 lambda!922 lambda!923)))))

(declare-fun bm!3281 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!2 (List!849 K!620 (_ BitVec 64) Hashable!301) Unit!403)

(assert (=> bm!3281 (= call!3278 (lemmaRemovePairForKeyPreservesHash!2 (ite c!16422 lt!7376 lt!7380) key!7227 (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)))))

(declare-fun bm!3282 () Bool)

(assert (=> bm!3282 (= call!3270 (+!9 lt!7388 (tuple2!1117 key!7227 v!11804)))))

(declare-fun bm!3283 () Bool)

(assert (=> bm!3283 (= call!3283 (forall!106 (ite c!16422 (toList!196 lt!7386) (toList!196 lt!7367)) (ite c!16422 lambda!922 lambda!923)))))

(declare-fun b!48963 () Bool)

(assert (=> b!48963 (= e!28567 e!28566)))

(declare-fun res!32266 () Bool)

(assert (=> b!48963 (= res!32266 (contains!44 call!3292 key!7227))))

(assert (=> b!48963 (=> (not res!32266) (not e!28566))))

(declare-fun bm!3284 () Bool)

(assert (=> bm!3284 (= call!3290 (valid!287 (ite c!16422 lt!7381 lt!7398)))))

(declare-fun bm!3285 () Bool)

(assert (=> bm!3285 (= call!3281 (eq!6 call!3286 call!3272))))

(declare-fun bm!3286 () Bool)

(assert (=> bm!3286 (= call!3268 (eq!6 (ite c!16422 call!3274 call!3285) call!3270))))

(declare-fun bm!3287 () Bool)

(declare-fun hash!495 (Hashable!301 K!620) (_ BitVec 64))

(assert (=> bm!3287 (= call!3264 (hash!495 (hashF!2170 thiss!47822) key!7227))))

(declare-fun bm!3288 () Bool)

(assert (=> bm!3288 (= call!3266 (extractMap!8 (toList!196 lt!7395)))))

(declare-fun bm!3289 () Bool)

(assert (=> bm!3289 (= call!3291 (allKeysSameHashInMap!12 (ite c!16422 lt!7386 lt!7367) (hashF!2170 thiss!47822)))))

(declare-fun b!48964 () Bool)

(declare-fun lt!7373 () Unit!403)

(assert (=> b!48964 (= e!28571 lt!7373)))

(declare-fun lt!7379 () Unit!403)

(assert (=> b!48964 (= lt!7379 call!3277)))

(assert (=> b!48964 call!3265))

(declare-fun lt!7399 () Unit!403)

(assert (=> b!48964 (= lt!7399 lt!7379)))

(assert (=> b!48964 (= lt!7373 call!3278)))

(assert (=> b!48964 call!3293))

(assert (= (and d!5854 c!16422) b!48950))

(assert (= (and d!5854 (not c!16422)) b!48956))

(assert (= (and b!48950 c!16427) b!48949))

(assert (= (and b!48950 (not c!16427)) b!48947))

(assert (= (and b!48949 res!32270) b!48961))

(assert (= (or b!48949 b!48947) bm!3265))

(assert (= (and b!48956 c!16424) b!48954))

(assert (= (and b!48956 (not c!16424)) b!48962))

(assert (= (and b!48956 c!16425) b!48959))

(assert (= (and b!48956 (not c!16425)) b!48955))

(assert (= (and b!48959 c!16423) b!48964))

(assert (= (and b!48959 (not c!16423)) b!48952))

(assert (= (and b!48959 res!32267) b!48957))

(assert (= (or b!48959 b!48955) bm!3264))

(assert (= (or b!48949 b!48959) bm!3283))

(assert (= (or b!48949 b!48959) bm!3288))

(assert (= (or b!48950 b!48954) bm!3276))

(assert (= (or b!48961 b!48957) bm!3289))

(assert (= (or bm!3265 bm!3264) bm!3260))

(assert (= (or b!48949 b!48964) bm!3269))

(assert (= (or b!48950 b!48956) bm!3287))

(assert (= (or b!48947 b!48955) bm!3284))

(assert (= (or b!48949 b!48959) bm!3282))

(assert (= (or b!48949 b!48959) bm!3274))

(assert (= (or b!48950 b!48949 b!48964) bm!3268))

(assert (= (or b!48949 b!48959) bm!3266))

(assert (= (or b!48949 b!48959) bm!3273))

(assert (= (or b!48949 b!48959) bm!3259))

(assert (= (or b!48949 b!48959) bm!3261))

(assert (= (or b!48949 b!48964) bm!3281))

(assert (= (or b!48950 b!48956) bm!3263))

(assert (= (or b!48949 b!48959) bm!3262))

(assert (= (or b!48949 b!48964) bm!3277))

(assert (= (or b!48949 b!48959) bm!3278))

(assert (= (or b!48949 b!48959) bm!3275))

(assert (= (or b!48949 b!48959) bm!3280))

(assert (= (or b!48949 b!48964) bm!3272))

(assert (= (or b!48949 b!48959) bm!3286))

(assert (= (or b!48949 b!48959) bm!3279))

(assert (= (or b!48949 b!48959) bm!3285))

(assert (= (and d!5854 res!32269) b!48948))

(assert (= (and b!48948 res!32268) b!48958))

(assert (= (and b!48958 c!16426) b!48963))

(assert (= (and b!48958 (not c!16426)) b!48960))

(assert (= (and b!48963 res!32266) b!48953))

(assert (= (or b!48953 b!48960) bm!3267))

(assert (= (or b!48963 b!48953 b!48960) bm!3270))

(assert (= (or b!48953 b!48960) bm!3271))

(assert (= (and bm!3271 c!16421) b!48951))

(assert (= (and bm!3271 (not c!16421)) b!48946))

(declare-fun m!22508 () Bool)

(assert (=> bm!3285 m!22508))

(declare-fun m!22510 () Bool)

(assert (=> bm!3275 m!22510))

(declare-fun m!22512 () Bool)

(assert (=> bm!3269 m!22512))

(declare-fun m!22514 () Bool)

(assert (=> b!48948 m!22514))

(declare-fun m!22516 () Bool)

(assert (=> bm!3283 m!22516))

(declare-fun m!22518 () Bool)

(assert (=> bm!3266 m!22518))

(declare-fun m!22520 () Bool)

(assert (=> bm!3271 m!22520))

(declare-fun m!22522 () Bool)

(assert (=> bm!3289 m!22522))

(declare-fun m!22524 () Bool)

(assert (=> bm!3288 m!22524))

(declare-fun m!22526 () Bool)

(assert (=> b!48959 m!22526))

(declare-fun m!22528 () Bool)

(assert (=> b!48959 m!22528))

(declare-fun m!22530 () Bool)

(assert (=> b!48959 m!22530))

(declare-fun m!22532 () Bool)

(assert (=> b!48959 m!22532))

(declare-fun m!22534 () Bool)

(assert (=> bm!3279 m!22534))

(declare-fun m!22536 () Bool)

(assert (=> bm!3276 m!22536))

(declare-fun m!22538 () Bool)

(assert (=> bm!3280 m!22538))

(declare-fun m!22540 () Bool)

(assert (=> bm!3278 m!22540))

(declare-fun m!22542 () Bool)

(assert (=> bm!3281 m!22542))

(declare-fun m!22544 () Bool)

(assert (=> bm!3287 m!22544))

(declare-fun m!22546 () Bool)

(assert (=> bm!3261 m!22546))

(declare-fun m!22548 () Bool)

(assert (=> bm!3267 m!22548))

(declare-fun m!22550 () Bool)

(assert (=> bm!3260 m!22550))

(declare-fun m!22552 () Bool)

(assert (=> bm!3277 m!22552))

(declare-fun m!22554 () Bool)

(assert (=> b!48949 m!22554))

(declare-fun m!22556 () Bool)

(assert (=> b!48949 m!22556))

(declare-fun m!22558 () Bool)

(assert (=> b!48949 m!22558))

(declare-fun m!22560 () Bool)

(assert (=> b!48949 m!22560))

(declare-fun m!22562 () Bool)

(assert (=> b!48949 m!22562))

(declare-fun m!22564 () Bool)

(assert (=> d!5854 m!22564))

(declare-fun m!22566 () Bool)

(assert (=> d!5854 m!22566))

(assert (=> d!5854 m!22548))

(assert (=> d!5854 m!22502))

(declare-fun m!22568 () Bool)

(assert (=> bm!3263 m!22568))

(declare-fun m!22570 () Bool)

(assert (=> b!48963 m!22570))

(declare-fun m!22572 () Bool)

(assert (=> bm!3268 m!22572))

(declare-fun m!22574 () Bool)

(assert (=> bm!3282 m!22574))

(declare-fun m!22576 () Bool)

(assert (=> bm!3270 m!22576))

(declare-fun m!22578 () Bool)

(assert (=> bm!3272 m!22578))

(declare-fun m!22580 () Bool)

(assert (=> bm!3274 m!22580))

(declare-fun m!22582 () Bool)

(assert (=> b!48956 m!22582))

(declare-fun m!22584 () Bool)

(assert (=> bm!3262 m!22584))

(declare-fun m!22586 () Bool)

(assert (=> b!48951 m!22586))

(declare-fun m!22588 () Bool)

(assert (=> bm!3273 m!22588))

(declare-fun m!22590 () Bool)

(assert (=> bm!3284 m!22590))

(declare-fun m!22592 () Bool)

(assert (=> bm!3259 m!22592))

(declare-fun m!22594 () Bool)

(assert (=> bm!3286 m!22594))

(assert (=> b!48866 d!5854))

(declare-fun d!5856 () Bool)

(declare-fun e!28579 () Bool)

(assert (=> d!5856 e!28579))

(declare-fun res!32276 () Bool)

(assert (=> d!5856 (=> (not res!32276) (not e!28579))))

(declare-fun lt!7426 () ListMap!79)

(assert (=> d!5856 (= res!32276 (contains!44 lt!7426 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7423 () List!849)

(assert (=> d!5856 (= lt!7426 (ListMap!80 lt!7423))))

(declare-fun lt!7424 () Unit!403)

(declare-fun lt!7425 () Unit!403)

(assert (=> d!5856 (= lt!7424 lt!7425)))

(assert (=> d!5856 (= (getValueByKey!3 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lemmaContainsTupThenGetReturnValue!3 (List!849 K!620 V!674) Unit!403)

(assert (=> d!5856 (= lt!7425 (lemmaContainsTupThenGetReturnValue!3 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun insertNoDuplicatedKeys!2 (List!849 K!620 V!674) List!849)

(assert (=> d!5856 (= lt!7423 (insertNoDuplicatedKeys!2 (toList!195 call!3196) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5856 (= (+!9 call!3196 (tuple2!1117 key!7227 v!11804)) lt!7426)))

(declare-fun b!48969 () Bool)

(declare-fun res!32275 () Bool)

(assert (=> b!48969 (=> (not res!32275) (not e!28579))))

(assert (=> b!48969 (= res!32275 (= (getValueByKey!3 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!48970 () Bool)

(declare-fun contains!48 (List!849 tuple2!1116) Bool)

(assert (=> b!48970 (= e!28579 (contains!48 (toList!195 lt!7426) (tuple2!1117 key!7227 v!11804)))))

(assert (= (and d!5856 res!32276) b!48969))

(assert (= (and b!48969 res!32275) b!48970))

(declare-fun m!22596 () Bool)

(assert (=> d!5856 m!22596))

(declare-fun m!22598 () Bool)

(assert (=> d!5856 m!22598))

(declare-fun m!22600 () Bool)

(assert (=> d!5856 m!22600))

(declare-fun m!22602 () Bool)

(assert (=> d!5856 m!22602))

(declare-fun m!22604 () Bool)

(assert (=> b!48969 m!22604))

(declare-fun m!22606 () Bool)

(assert (=> b!48970 m!22606))

(assert (=> b!48862 d!5856))

(declare-fun d!5858 () Bool)

(declare-fun c!16430 () Bool)

(assert (=> d!5858 (= c!16430 ((_ is MutableMapExt!300) thiss!47822))))

(declare-fun e!28582 () ListMap!79)

(assert (=> d!5858 (= (abstractMap!17 thiss!47822) e!28582)))

(declare-fun b!48975 () Bool)

(declare-fun abstractMap!18 (MutableMap!301) ListMap!79)

(assert (=> b!48975 (= e!28582 (abstractMap!18 thiss!47822))))

(declare-fun b!48976 () Bool)

(declare-fun abstractMap!19 (MutableMap!301) ListMap!79)

(assert (=> b!48976 (= e!28582 (abstractMap!19 thiss!47822))))

(assert (= (and d!5858 c!16430) b!48975))

(assert (= (and d!5858 (not c!16430)) b!48976))

(declare-fun m!22608 () Bool)

(assert (=> b!48975 m!22608))

(declare-fun m!22610 () Bool)

(assert (=> b!48976 m!22610))

(assert (=> bm!3191 d!5858))

(declare-fun d!5860 () Bool)

(declare-fun c!16431 () Bool)

(assert (=> d!5860 (= c!16431 ((_ is MutableMapExt!300) (_2!766 lt!7223)))))

(declare-fun e!28583 () ListMap!79)

(assert (=> d!5860 (= (abstractMap!17 (_2!766 lt!7223)) e!28583)))

(declare-fun b!48977 () Bool)

(assert (=> b!48977 (= e!28583 (abstractMap!18 (_2!766 lt!7223)))))

(declare-fun b!48978 () Bool)

(assert (=> b!48978 (= e!28583 (abstractMap!19 (_2!766 lt!7223)))))

(assert (= (and d!5860 c!16431) b!48977))

(assert (= (and d!5860 (not c!16431)) b!48978))

(declare-fun m!22612 () Bool)

(assert (=> b!48977 m!22612))

(declare-fun m!22614 () Bool)

(assert (=> b!48978 m!22614))

(assert (=> bm!3193 d!5860))

(declare-fun d!5862 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!22 (List!849) (InoxSet tuple2!1116))

(assert (=> d!5862 (= (eq!6 (ite c!16392 lt!7224 call!3197) e!28512) (= (content!22 (toList!195 (ite c!16392 lt!7224 call!3197))) (content!22 (toList!195 e!28512))))))

(declare-fun bs!6450 () Bool)

(assert (= bs!6450 d!5862))

(declare-fun m!22616 () Bool)

(assert (=> bs!6450 m!22616))

(declare-fun m!22618 () Bool)

(assert (=> bs!6450 m!22618))

(assert (=> bm!3192 d!5862))

(declare-fun d!5864 () Bool)

(assert (=> d!5864 (= (array_inv!339 (_keys!596 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) (bvsge (size!845 (_keys!596 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48861 d!5864))

(declare-fun d!5866 () Bool)

(assert (=> d!5866 (= (array_inv!340 (_values!583 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) (bvsge (size!846 (_values!583 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48861 d!5866))

(declare-fun tp!32885 () Bool)

(declare-fun e!28586 () Bool)

(declare-fun b!48983 () Bool)

(assert (=> b!48983 (= e!28586 (and tp_is_empty!503 tp_is_empty!505 tp!32885))))

(assert (=> b!48872 (= tp!32878 e!28586)))

(assert (= (and b!48872 ((_ is Cons!843) mapDefault!1198)) b!48983))

(declare-fun b!48991 () Bool)

(declare-fun e!28592 () Bool)

(declare-fun tp!32893 () Bool)

(assert (=> b!48991 (= e!28592 (and tp_is_empty!503 tp_is_empty!505 tp!32893))))

(declare-fun condMapEmpty!1201 () Bool)

(declare-fun mapDefault!1201 () List!849)

(assert (=> mapNonEmpty!1198 (= condMapEmpty!1201 (= mapRest!1198 ((as const (Array (_ BitVec 32) List!849)) mapDefault!1201)))))

(declare-fun mapRes!1201 () Bool)

(assert (=> mapNonEmpty!1198 (= tp!32880 (and e!28592 mapRes!1201))))

(declare-fun e!28591 () Bool)

(declare-fun tp!32894 () Bool)

(declare-fun b!48990 () Bool)

(assert (=> b!48990 (= e!28591 (and tp_is_empty!503 tp_is_empty!505 tp!32894))))

(declare-fun mapIsEmpty!1201 () Bool)

(assert (=> mapIsEmpty!1201 mapRes!1201))

(declare-fun mapNonEmpty!1201 () Bool)

(declare-fun tp!32892 () Bool)

(assert (=> mapNonEmpty!1201 (= mapRes!1201 (and tp!32892 e!28591))))

(declare-fun mapValue!1201 () List!849)

(declare-fun mapRest!1201 () (Array (_ BitVec 32) List!849))

(declare-fun mapKey!1201 () (_ BitVec 32))

(assert (=> mapNonEmpty!1201 (= mapRest!1198 (store mapRest!1201 mapKey!1201 mapValue!1201))))

(assert (= (and mapNonEmpty!1198 condMapEmpty!1201) mapIsEmpty!1201))

(assert (= (and mapNonEmpty!1198 (not condMapEmpty!1201)) mapNonEmpty!1201))

(assert (= (and mapNonEmpty!1201 ((_ is Cons!843) mapValue!1201)) b!48990))

(assert (= (and mapNonEmpty!1198 ((_ is Cons!843) mapDefault!1201)) b!48991))

(declare-fun m!22620 () Bool)

(assert (=> mapNonEmpty!1201 m!22620))

(declare-fun tp!32895 () Bool)

(declare-fun b!48992 () Bool)

(declare-fun e!28593 () Bool)

(assert (=> b!48992 (= e!28593 (and tp_is_empty!503 tp_is_empty!505 tp!32895))))

(assert (=> mapNonEmpty!1198 (= tp!32877 e!28593)))

(assert (= (and mapNonEmpty!1198 ((_ is Cons!843) mapValue!1198)) b!48992))

(declare-fun e!28594 () Bool)

(declare-fun b!48993 () Bool)

(declare-fun tp!32896 () Bool)

(assert (=> b!48993 (= e!28594 (and tp_is_empty!503 tp_is_empty!505 tp!32896))))

(assert (=> b!48861 (= tp!32881 e!28594)))

(assert (= (and b!48861 ((_ is Cons!843) (zeroValue!561 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822))))))) b!48993))

(declare-fun tp!32897 () Bool)

(declare-fun b!48994 () Bool)

(declare-fun e!28595 () Bool)

(assert (=> b!48994 (= e!28595 (and tp_is_empty!503 tp_is_empty!505 tp!32897))))

(assert (=> b!48861 (= tp!32882 e!28595)))

(assert (= (and b!48861 ((_ is Cons!843) (minValue!561 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822))))))) b!48994))

(check-sat (not bm!3289) (not bm!3273) (not bm!3275) (not bm!3269) (not bm!3285) b_and!1435 (not bm!3260) (not b!48992) (not b!48975) (not b!48990) (not b!48893) (not bm!3267) (not b!48948) (not bm!3278) (not b!48905) (not d!5848) (not d!5854) (not bm!3268) (not b!48969) (not b!48906) (not d!5856) (not b!48896) (not bm!3259) (not b!48963) (not bm!3262) (not bm!3287) (not b!48970) (not b!48983) (not b!48904) (not b!48993) (not b!48895) tp_is_empty!503 (not b!48977) (not b!48991) (not bm!3279) (not bm!3276) (not bm!3272) (not bm!3266) (not b!48951) (not b_next!1397) tp_is_empty!505 (not b!48976) (not bm!3261) (not b_next!1399) (not bm!3283) (not mapNonEmpty!1201) (not bm!3270) (not bm!3284) (not bm!3281) (not bm!3288) (not b!48894) (not bm!3274) (not d!5862) (not bm!3282) (not bm!3286) (not b!48949) (not bm!3263) (not b!48959) (not bm!3280) (not bm!3196) (not bm!3277) (not b!48891) (not b!48978) (not bm!3271) (not b!48994) (not b!48907) (not b!48899) (not b!48956) b_and!1433 (not b!48898))
(check-sat b_and!1433 b_and!1435 (not b_next!1399) (not b_next!1397))
(get-model)

(declare-fun d!5868 () Bool)

(declare-fun lt!7429 () Bool)

(declare-fun contains!49 (ListLongMap!27 (_ BitVec 64)) Bool)

(assert (=> d!5868 (= lt!7429 (contains!49 (map!286 (v!12630 (underlying!810 thiss!47822))) lt!7387))))

(declare-fun contains!50 (LongMapFixedSize!610 (_ BitVec 64)) Bool)

(assert (=> d!5868 (= lt!7429 (contains!50 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))) lt!7387))))

(declare-fun valid!288 (MutLongMap!305) Bool)

(assert (=> d!5868 (valid!288 (v!12630 (underlying!810 thiss!47822)))))

(assert (=> d!5868 (= (contains!47 (v!12630 (underlying!810 thiss!47822)) lt!7387) lt!7429)))

(declare-fun bs!6451 () Bool)

(assert (= bs!6451 d!5868))

(assert (=> bs!6451 m!22566))

(assert (=> bs!6451 m!22566))

(declare-fun m!22622 () Bool)

(assert (=> bs!6451 m!22622))

(declare-fun m!22624 () Bool)

(assert (=> bs!6451 m!22624))

(declare-fun m!22626 () Bool)

(assert (=> bs!6451 m!22626))

(assert (=> b!48956 d!5868))

(declare-fun bs!6452 () Bool)

(declare-fun d!5870 () Bool)

(assert (= bs!6452 (and d!5870 b!48949)))

(declare-fun lambda!926 () Int)

(assert (=> bs!6452 (= lambda!926 lambda!922)))

(declare-fun bs!6453 () Bool)

(assert (= bs!6453 (and d!5870 b!48959)))

(assert (=> bs!6453 (= lambda!926 lambda!923)))

(declare-fun lt!7432 () ListMap!79)

(declare-fun invariantList!28 (List!849) Bool)

(assert (=> d!5870 (invariantList!28 (toList!195 lt!7432))))

(declare-fun e!28598 () ListMap!79)

(assert (=> d!5870 (= lt!7432 e!28598)))

(declare-fun c!16434 () Bool)

(assert (=> d!5870 (= c!16434 ((_ is Cons!845) (toList!196 lt!7395)))))

(assert (=> d!5870 (forall!106 (toList!196 lt!7395) lambda!926)))

(assert (=> d!5870 (= (extractMap!8 (toList!196 lt!7395)) lt!7432)))

(declare-fun b!48999 () Bool)

(declare-fun addToMapMapFromBucket!2 (List!849 ListMap!79) ListMap!79)

(assert (=> b!48999 (= e!28598 (addToMapMapFromBucket!2 (_2!768 (h!6241 (toList!196 lt!7395))) (extractMap!8 (t!17048 (toList!196 lt!7395)))))))

(declare-fun b!49000 () Bool)

(assert (=> b!49000 (= e!28598 (ListMap!80 Nil!843))))

(assert (= (and d!5870 c!16434) b!48999))

(assert (= (and d!5870 (not c!16434)) b!49000))

(declare-fun m!22628 () Bool)

(assert (=> d!5870 m!22628))

(declare-fun m!22630 () Bool)

(assert (=> d!5870 m!22630))

(declare-fun m!22632 () Bool)

(assert (=> b!48999 m!22632))

(assert (=> b!48999 m!22632))

(declare-fun m!22634 () Bool)

(assert (=> b!48999 m!22634))

(assert (=> bm!3288 d!5870))

(declare-fun bs!6454 () Bool)

(declare-fun b!49005 () Bool)

(assert (= bs!6454 (and b!49005 b!48949)))

(declare-fun lambda!929 () Int)

(assert (=> bs!6454 (= lambda!929 lambda!922)))

(declare-fun bs!6455 () Bool)

(assert (= bs!6455 (and b!49005 b!48959)))

(assert (=> bs!6455 (= lambda!929 lambda!923)))

(declare-fun bs!6456 () Bool)

(assert (= bs!6456 (and b!49005 d!5870)))

(assert (=> bs!6456 (= lambda!929 lambda!926)))

(declare-fun d!5872 () Bool)

(declare-fun res!32281 () Bool)

(declare-fun e!28601 () Bool)

(assert (=> d!5872 (=> (not res!32281) (not e!28601))))

(assert (=> d!5872 (= res!32281 (valid!288 (v!12630 (underlying!810 (_2!766 lt!7223)))))))

(assert (=> d!5872 (= (valid!287 (_2!766 lt!7223)) e!28601)))

(declare-fun res!32282 () Bool)

(assert (=> b!49005 (=> (not res!32282) (not e!28601))))

(assert (=> b!49005 (= res!32282 (forall!106 (toList!196 (map!286 (v!12630 (underlying!810 (_2!766 lt!7223))))) lambda!929))))

(declare-fun b!49006 () Bool)

(assert (=> b!49006 (= e!28601 (allKeysSameHashInMap!12 (map!286 (v!12630 (underlying!810 (_2!766 lt!7223)))) (hashF!2170 (_2!766 lt!7223))))))

(assert (= (and d!5872 res!32281) b!49005))

(assert (= (and b!49005 res!32282) b!49006))

(declare-fun m!22636 () Bool)

(assert (=> d!5872 m!22636))

(declare-fun m!22638 () Bool)

(assert (=> b!49005 m!22638))

(declare-fun m!22640 () Bool)

(assert (=> b!49005 m!22640))

(assert (=> b!49006 m!22638))

(assert (=> b!49006 m!22638))

(declare-fun m!22642 () Bool)

(assert (=> b!49006 m!22642))

(assert (=> b!48907 d!5872))

(declare-fun b!49025 () Bool)

(declare-fun e!28616 () Bool)

(declare-fun e!28614 () Bool)

(assert (=> b!49025 (= e!28616 e!28614)))

(declare-fun call!3300 () ListLongMap!27)

(declare-fun res!32290 () Bool)

(assert (=> b!49025 (= res!32290 (contains!49 call!3300 (ite c!16422 lt!7366 lt!7387)))))

(assert (=> b!49025 (=> (not res!32290) (not e!28614))))

(declare-fun b!49026 () Bool)

(declare-fun e!28615 () Bool)

(assert (=> b!49026 (= e!28615 e!28616)))

(declare-fun c!16442 () Bool)

(declare-fun lt!7442 () tuple2!1120)

(assert (=> b!49026 (= c!16442 (_1!767 lt!7442))))

(declare-fun b!49028 () Bool)

(declare-fun res!32291 () Bool)

(assert (=> b!49028 (=> (not res!32291) (not e!28615))))

(assert (=> b!49028 (= res!32291 (valid!288 (_2!767 lt!7442)))))

(declare-fun bm!3294 () Bool)

(assert (=> bm!3294 (= call!3300 (map!286 (_2!767 lt!7442)))))

(declare-fun b!49029 () Bool)

(declare-fun e!28612 () tuple2!1120)

(declare-fun lt!7441 () tuple2!1120)

(assert (=> b!49029 (= e!28612 (tuple2!1121 (_1!767 lt!7441) (_2!767 lt!7441)))))

(declare-fun repack!7 (MutLongMap!305) tuple2!1120)

(assert (=> b!49029 (= lt!7441 (repack!7 (v!12630 (underlying!810 thiss!47822))))))

(declare-fun b!49030 () Bool)

(declare-fun e!28613 () tuple2!1120)

(declare-datatypes ((tuple2!1126 0))(
  ( (tuple2!1127 (_1!770 Bool) (_2!770 LongMapFixedSize!610)) )
))
(declare-fun lt!7443 () tuple2!1126)

(assert (=> b!49030 (= e!28613 (tuple2!1121 (_1!770 lt!7443) (LongMap!305 (Cell!1210 (_2!770 lt!7443)))))))

(declare-fun lt!7444 () tuple2!1120)

(declare-fun update!41 (LongMapFixedSize!610 (_ BitVec 64) List!849) tuple2!1126)

(assert (=> b!49030 (= lt!7443 (update!41 (v!12629 (underlying!809 (_2!767 lt!7444))) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375)))))

(declare-fun b!49031 () Bool)

(assert (=> b!49031 (= e!28613 (tuple2!1121 false (_2!767 lt!7444)))))

(declare-fun bm!3295 () Bool)

(declare-fun call!3299 () ListLongMap!27)

(assert (=> bm!3295 (= call!3299 (map!286 (v!12630 (underlying!810 thiss!47822))))))

(declare-fun b!49032 () Bool)

(assert (=> b!49032 (= e!28616 (= call!3300 call!3299))))

(declare-fun b!49033 () Bool)

(assert (=> b!49033 (= e!28612 (tuple2!1121 true (v!12630 (underlying!810 thiss!47822))))))

(declare-fun b!49027 () Bool)

(assert (=> b!49027 (= e!28614 (= call!3300 (+!10 call!3299 (tuple2!1123 (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375)))))))

(declare-fun d!5874 () Bool)

(assert (=> d!5874 e!28615))

(declare-fun res!32289 () Bool)

(assert (=> d!5874 (=> (not res!32289) (not e!28615))))

(assert (=> d!5874 (= res!32289 ((_ is LongMap!305) (_2!767 lt!7442)))))

(assert (=> d!5874 (= lt!7442 e!28613)))

(declare-fun c!16441 () Bool)

(assert (=> d!5874 (= c!16441 (_1!767 lt!7444))))

(assert (=> d!5874 (= lt!7444 e!28612)))

(declare-fun c!16443 () Bool)

(declare-fun imbalanced!3 (MutLongMap!305) Bool)

(assert (=> d!5874 (= c!16443 (imbalanced!3 (v!12630 (underlying!810 thiss!47822))))))

(assert (=> d!5874 (valid!288 (v!12630 (underlying!810 thiss!47822)))))

(assert (=> d!5874 (= (update!40 (v!12630 (underlying!810 thiss!47822)) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375)) lt!7442)))

(assert (= (and d!5874 c!16443) b!49029))

(assert (= (and d!5874 (not c!16443)) b!49033))

(assert (= (and d!5874 c!16441) b!49030))

(assert (= (and d!5874 (not c!16441)) b!49031))

(assert (= (and d!5874 res!32289) b!49028))

(assert (= (and b!49028 res!32291) b!49026))

(assert (= (and b!49026 c!16442) b!49025))

(assert (= (and b!49026 (not c!16442)) b!49032))

(assert (= (and b!49025 res!32290) b!49027))

(assert (= (or b!49025 b!49027 b!49032) bm!3294))

(assert (= (or b!49027 b!49032) bm!3295))

(declare-fun m!22644 () Bool)

(assert (=> b!49030 m!22644))

(declare-fun m!22646 () Bool)

(assert (=> b!49028 m!22646))

(declare-fun m!22648 () Bool)

(assert (=> b!49029 m!22648))

(declare-fun m!22650 () Bool)

(assert (=> bm!3294 m!22650))

(declare-fun m!22652 () Bool)

(assert (=> d!5874 m!22652))

(assert (=> d!5874 m!22626))

(declare-fun m!22654 () Bool)

(assert (=> b!49027 m!22654))

(assert (=> bm!3295 m!22566))

(declare-fun m!22656 () Bool)

(assert (=> b!49025 m!22656))

(assert (=> bm!3263 d!5874))

(declare-fun d!5876 () Bool)

(declare-fun res!32296 () Bool)

(declare-fun e!28621 () Bool)

(assert (=> d!5876 (=> res!32296 e!28621)))

(assert (=> d!5876 (= res!32296 (not ((_ is Cons!843) lt!7382)))))

(assert (=> d!5876 (= (noDuplicateKeys!4 lt!7382) e!28621)))

(declare-fun b!49038 () Bool)

(declare-fun e!28622 () Bool)

(assert (=> b!49038 (= e!28621 e!28622)))

(declare-fun res!32297 () Bool)

(assert (=> b!49038 (=> (not res!32297) (not e!28622))))

(assert (=> b!49038 (= res!32297 (not (containsKey!8 (t!17046 lt!7382) (_1!765 (h!6239 lt!7382)))))))

(declare-fun b!49039 () Bool)

(assert (=> b!49039 (= e!28622 (noDuplicateKeys!4 (t!17046 lt!7382)))))

(assert (= (and d!5876 (not res!32296)) b!49038))

(assert (= (and b!49038 res!32297) b!49039))

(declare-fun m!22658 () Bool)

(assert (=> b!49038 m!22658))

(declare-fun m!22660 () Bool)

(assert (=> b!49039 m!22660))

(assert (=> b!48949 d!5876))

(declare-fun d!5878 () Bool)

(declare-fun res!32302 () Bool)

(declare-fun e!28627 () Bool)

(assert (=> d!5878 (=> res!32302 e!28627)))

(assert (=> d!5878 (= res!32302 (and ((_ is Cons!843) call!3284) (= (_1!765 (h!6239 call!3284)) key!7227)))))

(assert (=> d!5878 (= (containsKey!8 call!3284 key!7227) e!28627)))

(declare-fun b!49044 () Bool)

(declare-fun e!28628 () Bool)

(assert (=> b!49044 (= e!28627 e!28628)))

(declare-fun res!32303 () Bool)

(assert (=> b!49044 (=> (not res!32303) (not e!28628))))

(assert (=> b!49044 (= res!32303 ((_ is Cons!843) call!3284))))

(declare-fun b!49045 () Bool)

(assert (=> b!49045 (= e!28628 (containsKey!8 (t!17046 call!3284) key!7227))))

(assert (= (and d!5878 (not res!32302)) b!49044))

(assert (= (and b!49044 res!32303) b!49045))

(declare-fun m!22662 () Bool)

(assert (=> b!49045 m!22662))

(assert (=> b!48949 d!5878))

(declare-fun d!5880 () Bool)

(declare-fun res!32304 () Bool)

(declare-fun e!28629 () Bool)

(assert (=> d!5880 (=> res!32304 e!28629)))

(assert (=> d!5880 (= res!32304 (not ((_ is Cons!843) call!3284)))))

(assert (=> d!5880 (= (noDuplicateKeys!4 call!3284) e!28629)))

(declare-fun b!49046 () Bool)

(declare-fun e!28630 () Bool)

(assert (=> b!49046 (= e!28629 e!28630)))

(declare-fun res!32305 () Bool)

(assert (=> b!49046 (=> (not res!32305) (not e!28630))))

(assert (=> b!49046 (= res!32305 (not (containsKey!8 (t!17046 call!3284) (_1!765 (h!6239 call!3284)))))))

(declare-fun b!49047 () Bool)

(assert (=> b!49047 (= e!28630 (noDuplicateKeys!4 (t!17046 call!3284)))))

(assert (= (and d!5880 (not res!32304)) b!49046))

(assert (= (and b!49046 res!32305) b!49047))

(declare-fun m!22664 () Bool)

(assert (=> b!49046 m!22664))

(declare-fun m!22666 () Bool)

(assert (=> b!49047 m!22666))

(assert (=> b!48949 d!5880))

(declare-fun d!5882 () Bool)

(assert (=> d!5882 (noDuplicateKeys!4 (removePairForKey!2 lt!7376 key!7227))))

(declare-fun lt!7447 () Unit!403)

(declare-fun choose!1159 (List!849 K!620) Unit!403)

(assert (=> d!5882 (= lt!7447 (choose!1159 lt!7376 key!7227))))

(assert (=> d!5882 (noDuplicateKeys!4 lt!7376)))

(assert (=> d!5882 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!2 lt!7376 key!7227) lt!7447)))

(declare-fun bs!6457 () Bool)

(assert (= bs!6457 d!5882))

(declare-fun m!22668 () Bool)

(assert (=> bs!6457 m!22668))

(assert (=> bs!6457 m!22668))

(declare-fun m!22670 () Bool)

(assert (=> bs!6457 m!22670))

(declare-fun m!22672 () Bool)

(assert (=> bs!6457 m!22672))

(declare-fun m!22674 () Bool)

(assert (=> bs!6457 m!22674))

(assert (=> b!48949 d!5882))

(declare-fun bs!6458 () Bool)

(declare-fun d!5884 () Bool)

(assert (= bs!6458 (and d!5884 b!48949)))

(declare-fun lambda!932 () Int)

(assert (=> bs!6458 (= lambda!932 lambda!922)))

(declare-fun bs!6459 () Bool)

(assert (= bs!6459 (and d!5884 b!48959)))

(assert (=> bs!6459 (= lambda!932 lambda!923)))

(declare-fun bs!6460 () Bool)

(assert (= bs!6460 (and d!5884 d!5870)))

(assert (=> bs!6460 (= lambda!932 lambda!926)))

(declare-fun bs!6461 () Bool)

(assert (= bs!6461 (and d!5884 b!49005)))

(assert (=> bs!6461 (= lambda!932 lambda!929)))

(assert (=> d!5884 (eq!6 (extractMap!8 (toList!196 (+!10 lt!7395 (tuple2!1123 lt!7366 lt!7382)))) (+!9 (extractMap!8 (toList!196 lt!7395)) (tuple2!1117 key!7227 v!11804)))))

(declare-fun lt!7450 () Unit!403)

(declare-fun choose!1160 (ListLongMap!27 (_ BitVec 64) List!849 K!620 V!674 Hashable!301) Unit!403)

(assert (=> d!5884 (= lt!7450 (choose!1160 lt!7395 lt!7366 lt!7382 key!7227 v!11804 (hashF!2170 thiss!47822)))))

(assert (=> d!5884 (forall!106 (toList!196 lt!7395) lambda!932)))

(assert (=> d!5884 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!2 lt!7395 lt!7366 lt!7382 key!7227 v!11804 (hashF!2170 thiss!47822)) lt!7450)))

(declare-fun bs!6462 () Bool)

(assert (= bs!6462 d!5884))

(assert (=> bs!6462 m!22524))

(declare-fun m!22676 () Bool)

(assert (=> bs!6462 m!22676))

(declare-fun m!22678 () Bool)

(assert (=> bs!6462 m!22678))

(declare-fun m!22680 () Bool)

(assert (=> bs!6462 m!22680))

(declare-fun m!22682 () Bool)

(assert (=> bs!6462 m!22682))

(assert (=> bs!6462 m!22524))

(assert (=> bs!6462 m!22682))

(assert (=> bs!6462 m!22676))

(declare-fun m!22684 () Bool)

(assert (=> bs!6462 m!22684))

(declare-fun m!22686 () Bool)

(assert (=> bs!6462 m!22686))

(assert (=> b!48949 d!5884))

(declare-fun bm!3296 () Bool)

(declare-fun call!3301 () Bool)

(declare-fun e!28633 () List!850)

(assert (=> bm!3296 (= call!3301 (contains!45 e!28633 key!7227))))

(declare-fun c!16445 () Bool)

(declare-fun c!16444 () Bool)

(assert (=> bm!3296 (= c!16445 c!16444)))

(declare-fun d!5886 () Bool)

(declare-fun e!28635 () Bool)

(assert (=> d!5886 e!28635))

(declare-fun res!32306 () Bool)

(assert (=> d!5886 (=> res!32306 e!28635)))

(declare-fun e!28636 () Bool)

(assert (=> d!5886 (= res!32306 e!28636)))

(declare-fun res!32307 () Bool)

(assert (=> d!5886 (=> (not res!32307) (not e!28636))))

(declare-fun lt!7457 () Bool)

(assert (=> d!5886 (= res!32307 (not lt!7457))))

(declare-fun lt!7454 () Bool)

(assert (=> d!5886 (= lt!7457 lt!7454)))

(declare-fun lt!7451 () Unit!403)

(declare-fun e!28631 () Unit!403)

(assert (=> d!5886 (= lt!7451 e!28631)))

(assert (=> d!5886 (= c!16444 lt!7454)))

(assert (=> d!5886 (= lt!7454 (containsKey!7 (toList!195 call!3285) key!7227))))

(assert (=> d!5886 (= (contains!44 call!3285 key!7227) lt!7457)))

(declare-fun b!49048 () Bool)

(assert (=> b!49048 (= e!28633 (keys!478 call!3285))))

(declare-fun b!49049 () Bool)

(declare-fun e!28634 () Unit!403)

(assert (=> b!49049 (= e!28631 e!28634)))

(declare-fun c!16446 () Bool)

(assert (=> b!49049 (= c!16446 call!3301)))

(declare-fun b!49050 () Bool)

(declare-fun e!28632 () Bool)

(assert (=> b!49050 (= e!28632 (contains!45 (keys!478 call!3285) key!7227))))

(declare-fun b!49051 () Bool)

(assert (=> b!49051 (= e!28635 e!28632)))

(declare-fun res!32308 () Bool)

(assert (=> b!49051 (=> (not res!32308) (not e!28632))))

(assert (=> b!49051 (= res!32308 (isDefined!9 (getValueByKey!3 (toList!195 call!3285) key!7227)))))

(declare-fun b!49052 () Bool)

(assert (=> b!49052 (= e!28636 (not (contains!45 (keys!478 call!3285) key!7227)))))

(declare-fun b!49053 () Bool)

(assert (=> b!49053 (= e!28633 (getKeysList!3 (toList!195 call!3285)))))

(declare-fun b!49054 () Bool)

(declare-fun Unit!427 () Unit!403)

(assert (=> b!49054 (= e!28634 Unit!427)))

(declare-fun b!49055 () Bool)

(declare-fun lt!7456 () Unit!403)

(assert (=> b!49055 (= e!28631 lt!7456)))

(declare-fun lt!7453 () Unit!403)

(assert (=> b!49055 (= lt!7453 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 call!3285) key!7227))))

(assert (=> b!49055 (isDefined!9 (getValueByKey!3 (toList!195 call!3285) key!7227))))

(declare-fun lt!7458 () Unit!403)

(assert (=> b!49055 (= lt!7458 lt!7453)))

(assert (=> b!49055 (= lt!7456 (lemmaInListThenGetKeysListContains!2 (toList!195 call!3285) key!7227))))

(assert (=> b!49055 call!3301))

(declare-fun b!49056 () Bool)

(assert (=> b!49056 false))

(declare-fun lt!7452 () Unit!403)

(declare-fun lt!7455 () Unit!403)

(assert (=> b!49056 (= lt!7452 lt!7455)))

(assert (=> b!49056 (containsKey!7 (toList!195 call!3285) key!7227)))

(assert (=> b!49056 (= lt!7455 (lemmaInGetKeysListThenContainsKey!2 (toList!195 call!3285) key!7227))))

(declare-fun Unit!428 () Unit!403)

(assert (=> b!49056 (= e!28634 Unit!428)))

(assert (= (and d!5886 c!16444) b!49055))

(assert (= (and d!5886 (not c!16444)) b!49049))

(assert (= (and b!49049 c!16446) b!49056))

(assert (= (and b!49049 (not c!16446)) b!49054))

(assert (= (or b!49055 b!49049) bm!3296))

(assert (= (and bm!3296 c!16445) b!49053))

(assert (= (and bm!3296 (not c!16445)) b!49048))

(assert (= (and d!5886 res!32307) b!49052))

(assert (= (and d!5886 (not res!32306)) b!49051))

(assert (= (and b!49051 res!32308) b!49050))

(declare-fun m!22688 () Bool)

(assert (=> b!49052 m!22688))

(assert (=> b!49052 m!22688))

(declare-fun m!22690 () Bool)

(assert (=> b!49052 m!22690))

(assert (=> b!49050 m!22688))

(assert (=> b!49050 m!22688))

(assert (=> b!49050 m!22690))

(declare-fun m!22692 () Bool)

(assert (=> d!5886 m!22692))

(declare-fun m!22694 () Bool)

(assert (=> b!49055 m!22694))

(declare-fun m!22696 () Bool)

(assert (=> b!49055 m!22696))

(assert (=> b!49055 m!22696))

(declare-fun m!22698 () Bool)

(assert (=> b!49055 m!22698))

(declare-fun m!22700 () Bool)

(assert (=> b!49055 m!22700))

(declare-fun m!22702 () Bool)

(assert (=> bm!3296 m!22702))

(assert (=> b!49051 m!22696))

(assert (=> b!49051 m!22696))

(assert (=> b!49051 m!22698))

(assert (=> b!49056 m!22692))

(declare-fun m!22704 () Bool)

(assert (=> b!49056 m!22704))

(declare-fun m!22706 () Bool)

(assert (=> b!49053 m!22706))

(assert (=> b!49048 m!22688))

(assert (=> b!48959 d!5886))

(declare-fun bm!3297 () Bool)

(declare-fun call!3302 () Bool)

(declare-fun e!28639 () List!850)

(assert (=> bm!3297 (= call!3302 (contains!45 e!28639 key!7227))))

(declare-fun c!16448 () Bool)

(declare-fun c!16447 () Bool)

(assert (=> bm!3297 (= c!16448 c!16447)))

(declare-fun d!5888 () Bool)

(declare-fun e!28641 () Bool)

(assert (=> d!5888 e!28641))

(declare-fun res!32309 () Bool)

(assert (=> d!5888 (=> res!32309 e!28641)))

(declare-fun e!28642 () Bool)

(assert (=> d!5888 (= res!32309 e!28642)))

(declare-fun res!32310 () Bool)

(assert (=> d!5888 (=> (not res!32310) (not e!28642))))

(declare-fun lt!7465 () Bool)

(assert (=> d!5888 (= res!32310 (not lt!7465))))

(declare-fun lt!7462 () Bool)

(assert (=> d!5888 (= lt!7465 lt!7462)))

(declare-fun lt!7459 () Unit!403)

(declare-fun e!28637 () Unit!403)

(assert (=> d!5888 (= lt!7459 e!28637)))

(assert (=> d!5888 (= c!16447 lt!7462)))

(assert (=> d!5888 (= lt!7462 (containsKey!7 (toList!195 call!3270) key!7227))))

(assert (=> d!5888 (= (contains!44 call!3270 key!7227) lt!7465)))

(declare-fun b!49057 () Bool)

(assert (=> b!49057 (= e!28639 (keys!478 call!3270))))

(declare-fun b!49058 () Bool)

(declare-fun e!28640 () Unit!403)

(assert (=> b!49058 (= e!28637 e!28640)))

(declare-fun c!16449 () Bool)

(assert (=> b!49058 (= c!16449 call!3302)))

(declare-fun b!49059 () Bool)

(declare-fun e!28638 () Bool)

(assert (=> b!49059 (= e!28638 (contains!45 (keys!478 call!3270) key!7227))))

(declare-fun b!49060 () Bool)

(assert (=> b!49060 (= e!28641 e!28638)))

(declare-fun res!32311 () Bool)

(assert (=> b!49060 (=> (not res!32311) (not e!28638))))

(assert (=> b!49060 (= res!32311 (isDefined!9 (getValueByKey!3 (toList!195 call!3270) key!7227)))))

(declare-fun b!49061 () Bool)

(assert (=> b!49061 (= e!28642 (not (contains!45 (keys!478 call!3270) key!7227)))))

(declare-fun b!49062 () Bool)

(assert (=> b!49062 (= e!28639 (getKeysList!3 (toList!195 call!3270)))))

(declare-fun b!49063 () Bool)

(declare-fun Unit!429 () Unit!403)

(assert (=> b!49063 (= e!28640 Unit!429)))

(declare-fun b!49064 () Bool)

(declare-fun lt!7464 () Unit!403)

(assert (=> b!49064 (= e!28637 lt!7464)))

(declare-fun lt!7461 () Unit!403)

(assert (=> b!49064 (= lt!7461 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 call!3270) key!7227))))

(assert (=> b!49064 (isDefined!9 (getValueByKey!3 (toList!195 call!3270) key!7227))))

(declare-fun lt!7466 () Unit!403)

(assert (=> b!49064 (= lt!7466 lt!7461)))

(assert (=> b!49064 (= lt!7464 (lemmaInListThenGetKeysListContains!2 (toList!195 call!3270) key!7227))))

(assert (=> b!49064 call!3302))

(declare-fun b!49065 () Bool)

(assert (=> b!49065 false))

(declare-fun lt!7460 () Unit!403)

(declare-fun lt!7463 () Unit!403)

(assert (=> b!49065 (= lt!7460 lt!7463)))

(assert (=> b!49065 (containsKey!7 (toList!195 call!3270) key!7227)))

(assert (=> b!49065 (= lt!7463 (lemmaInGetKeysListThenContainsKey!2 (toList!195 call!3270) key!7227))))

(declare-fun Unit!430 () Unit!403)

(assert (=> b!49065 (= e!28640 Unit!430)))

(assert (= (and d!5888 c!16447) b!49064))

(assert (= (and d!5888 (not c!16447)) b!49058))

(assert (= (and b!49058 c!16449) b!49065))

(assert (= (and b!49058 (not c!16449)) b!49063))

(assert (= (or b!49064 b!49058) bm!3297))

(assert (= (and bm!3297 c!16448) b!49062))

(assert (= (and bm!3297 (not c!16448)) b!49057))

(assert (= (and d!5888 res!32310) b!49061))

(assert (= (and d!5888 (not res!32309)) b!49060))

(assert (= (and b!49060 res!32311) b!49059))

(declare-fun m!22708 () Bool)

(assert (=> b!49061 m!22708))

(assert (=> b!49061 m!22708))

(declare-fun m!22710 () Bool)

(assert (=> b!49061 m!22710))

(assert (=> b!49059 m!22708))

(assert (=> b!49059 m!22708))

(assert (=> b!49059 m!22710))

(declare-fun m!22712 () Bool)

(assert (=> d!5888 m!22712))

(declare-fun m!22714 () Bool)

(assert (=> b!49064 m!22714))

(declare-fun m!22716 () Bool)

(assert (=> b!49064 m!22716))

(assert (=> b!49064 m!22716))

(declare-fun m!22718 () Bool)

(assert (=> b!49064 m!22718))

(declare-fun m!22720 () Bool)

(assert (=> b!49064 m!22720))

(declare-fun m!22722 () Bool)

(assert (=> bm!3297 m!22722))

(assert (=> b!49060 m!22716))

(assert (=> b!49060 m!22716))

(assert (=> b!49060 m!22718))

(assert (=> b!49065 m!22712))

(declare-fun m!22724 () Bool)

(assert (=> b!49065 m!22724))

(declare-fun m!22726 () Bool)

(assert (=> b!49062 m!22726))

(assert (=> b!49057 m!22708))

(assert (=> b!48959 d!5888))

(declare-fun bs!6463 () Bool)

(declare-fun d!5890 () Bool)

(assert (= bs!6463 (and d!5890 d!5884)))

(declare-fun lambda!935 () Int)

(assert (=> bs!6463 (= lambda!935 lambda!932)))

(declare-fun bs!6464 () Bool)

(assert (= bs!6464 (and d!5890 b!48959)))

(assert (=> bs!6464 (= lambda!935 lambda!923)))

(declare-fun bs!6465 () Bool)

(assert (= bs!6465 (and d!5890 d!5870)))

(assert (=> bs!6465 (= lambda!935 lambda!926)))

(declare-fun bs!6466 () Bool)

(assert (= bs!6466 (and d!5890 b!48949)))

(assert (=> bs!6466 (= lambda!935 lambda!922)))

(declare-fun bs!6467 () Bool)

(assert (= bs!6467 (and d!5890 b!49005)))

(assert (=> bs!6467 (= lambda!935 lambda!929)))

(assert (=> d!5890 (eq!6 (extractMap!8 (toList!196 (+!10 lt!7395 (tuple2!1123 lt!7387 lt!7375)))) (+!9 (extractMap!8 (toList!196 lt!7395)) (tuple2!1117 key!7227 v!11804)))))

(declare-fun lt!7469 () Unit!403)

(declare-fun choose!1161 (ListLongMap!27 (_ BitVec 64) List!849 K!620 V!674 Hashable!301) Unit!403)

(assert (=> d!5890 (= lt!7469 (choose!1161 lt!7395 lt!7387 lt!7375 key!7227 v!11804 (hashF!2170 thiss!47822)))))

(assert (=> d!5890 (forall!106 (toList!196 lt!7395) lambda!935)))

(assert (=> d!5890 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!2 lt!7395 lt!7387 lt!7375 key!7227 v!11804 (hashF!2170 thiss!47822)) lt!7469)))

(declare-fun bs!6468 () Bool)

(assert (= bs!6468 d!5890))

(declare-fun m!22728 () Bool)

(assert (=> bs!6468 m!22728))

(assert (=> bs!6468 m!22676))

(declare-fun m!22730 () Bool)

(assert (=> bs!6468 m!22730))

(assert (=> bs!6468 m!22524))

(assert (=> bs!6468 m!22676))

(assert (=> bs!6468 m!22728))

(declare-fun m!22732 () Bool)

(assert (=> bs!6468 m!22732))

(declare-fun m!22734 () Bool)

(assert (=> bs!6468 m!22734))

(assert (=> bs!6468 m!22524))

(declare-fun m!22736 () Bool)

(assert (=> bs!6468 m!22736))

(assert (=> b!48959 d!5890))

(declare-fun d!5892 () Bool)

(assert (=> d!5892 (= (isEmpty!164 lt!7380) ((_ is Nil!843) lt!7380))))

(assert (=> b!48959 d!5892))

(declare-fun bs!6469 () Bool)

(declare-fun b!49088 () Bool)

(assert (= bs!6469 (and b!49088 d!5884)))

(declare-fun lambda!938 () Int)

(assert (=> bs!6469 (= lambda!938 lambda!932)))

(declare-fun bs!6470 () Bool)

(assert (= bs!6470 (and b!49088 d!5890)))

(assert (=> bs!6470 (= lambda!938 lambda!935)))

(declare-fun bs!6471 () Bool)

(assert (= bs!6471 (and b!49088 b!48959)))

(assert (=> bs!6471 (= lambda!938 lambda!923)))

(declare-fun bs!6472 () Bool)

(assert (= bs!6472 (and b!49088 d!5870)))

(assert (=> bs!6472 (= lambda!938 lambda!926)))

(declare-fun bs!6473 () Bool)

(assert (= bs!6473 (and b!49088 b!48949)))

(assert (=> bs!6473 (= lambda!938 lambda!922)))

(declare-fun bs!6474 () Bool)

(assert (= bs!6474 (and b!49088 b!49005)))

(assert (=> bs!6474 (= lambda!938 lambda!929)))

(declare-fun e!28661 () Unit!403)

(declare-fun lt!7527 () (_ BitVec 64))

(declare-fun forallContained!1 (List!851 Int tuple2!1122) Unit!403)

(assert (=> b!49088 (= e!28661 (forallContained!1 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))) lambda!938 (tuple2!1123 lt!7527 (apply!23 (v!12630 (underlying!810 thiss!47822)) lt!7527))))))

(declare-fun c!16459 () Bool)

(declare-fun contains!51 (List!851 tuple2!1122) Bool)

(assert (=> b!49088 (= c!16459 (not (contains!51 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))) (tuple2!1123 lt!7527 (apply!23 (v!12630 (underlying!810 thiss!47822)) lt!7527)))))))

(declare-fun lt!7515 () Unit!403)

(declare-fun e!28659 () Unit!403)

(assert (=> b!49088 (= lt!7515 e!28659)))

(declare-fun b!49090 () Bool)

(declare-fun Unit!431 () Unit!403)

(assert (=> b!49090 (= e!28659 Unit!431)))

(declare-fun b!49091 () Bool)

(assert (=> b!49091 false))

(declare-fun lt!7519 () Unit!403)

(declare-fun lt!7526 () Unit!403)

(assert (=> b!49091 (= lt!7519 lt!7526)))

(declare-fun lt!7525 () List!851)

(declare-fun lt!7511 () List!849)

(assert (=> b!49091 (contains!51 lt!7525 (tuple2!1123 lt!7527 lt!7511))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!2 (List!851 (_ BitVec 64) List!849) Unit!403)

(assert (=> b!49091 (= lt!7526 (lemmaGetValueByKeyImpliesContainsTuple!2 lt!7525 lt!7527 lt!7511))))

(assert (=> b!49091 (= lt!7511 (apply!23 (v!12630 (underlying!810 thiss!47822)) lt!7527))))

(assert (=> b!49091 (= lt!7525 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))))))

(declare-fun lt!7528 () Unit!403)

(declare-fun lt!7512 () Unit!403)

(assert (=> b!49091 (= lt!7528 lt!7512)))

(declare-fun lt!7529 () List!851)

(declare-datatypes ((Option!59 0))(
  ( (None!58) (Some!58 (v!12639 List!849)) )
))
(declare-fun isDefined!10 (Option!59) Bool)

(declare-fun getValueByKey!4 (List!851 (_ BitVec 64)) Option!59)

(assert (=> b!49091 (isDefined!10 (getValueByKey!4 lt!7529 lt!7527))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!4 (List!851 (_ BitVec 64)) Unit!403)

(assert (=> b!49091 (= lt!7512 (lemmaContainsKeyImpliesGetValueByKeyDefined!4 lt!7529 lt!7527))))

(assert (=> b!49091 (= lt!7529 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))))))

(declare-fun lt!7513 () Unit!403)

(declare-fun lt!7524 () Unit!403)

(assert (=> b!49091 (= lt!7513 lt!7524)))

(declare-fun lt!7518 () List!851)

(declare-fun containsKey!9 (List!851 (_ BitVec 64)) Bool)

(assert (=> b!49091 (containsKey!9 lt!7518 lt!7527)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!2 (List!851 (_ BitVec 64)) Unit!403)

(assert (=> b!49091 (= lt!7524 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!2 lt!7518 lt!7527))))

(assert (=> b!49091 (= lt!7518 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))))))

(declare-fun Unit!432 () Unit!403)

(assert (=> b!49091 (= e!28659 Unit!432)))

(declare-fun call!3317 () ListLongMap!27)

(declare-fun bm!3310 () Bool)

(declare-fun c!16461 () Bool)

(declare-fun call!3316 () (_ BitVec 64))

(declare-fun call!3320 () List!849)

(declare-fun lt!7510 () ListLongMap!27)

(declare-fun apply!24 (ListLongMap!27 (_ BitVec 64)) List!849)

(assert (=> bm!3310 (= call!3320 (apply!24 (ite c!16461 lt!7510 call!3317) call!3316))))

(declare-fun bm!3311 () Bool)

(assert (=> bm!3311 (= call!3316 (hash!495 (hashF!2170 thiss!47822) key!7227))))

(declare-fun b!49092 () Bool)

(declare-fun Unit!433 () Unit!403)

(assert (=> b!49092 (= e!28661 Unit!433)))

(declare-fun b!49093 () Bool)

(declare-fun e!28663 () Bool)

(declare-fun call!3315 () Bool)

(assert (=> b!49093 (= e!28663 call!3315)))

(declare-fun b!49094 () Bool)

(declare-fun e!28662 () Unit!403)

(declare-fun e!28658 () Unit!403)

(assert (=> b!49094 (= e!28662 e!28658)))

(declare-fun res!32319 () Bool)

(declare-fun call!3318 () Bool)

(assert (=> b!49094 (= res!32319 call!3318)))

(assert (=> b!49094 (=> (not res!32319) (not e!28663))))

(declare-fun c!16460 () Bool)

(assert (=> b!49094 (= c!16460 e!28663)))

(declare-fun b!49095 () Bool)

(declare-fun lt!7522 () Unit!403)

(assert (=> b!49095 (= e!28662 lt!7522)))

(assert (=> b!49095 (= lt!7510 call!3317)))

(declare-fun lemmaInGenericMapThenInLongMap!1 (ListLongMap!27 K!620 Hashable!301) Unit!403)

(assert (=> b!49095 (= lt!7522 (lemmaInGenericMapThenInLongMap!1 lt!7510 key!7227 (hashF!2170 thiss!47822)))))

(declare-fun res!32318 () Bool)

(assert (=> b!49095 (= res!32318 call!3318)))

(declare-fun e!28657 () Bool)

(assert (=> b!49095 (=> (not res!32318) (not e!28657))))

(assert (=> b!49095 e!28657))

(declare-fun bm!3312 () Bool)

(declare-datatypes ((Option!60 0))(
  ( (None!59) (Some!59 (v!12640 tuple2!1116)) )
))
(declare-fun call!3319 () Option!60)

(declare-fun getPair!1 (List!849 K!620) Option!60)

(assert (=> bm!3312 (= call!3319 (getPair!1 call!3320 key!7227))))

(declare-fun d!5894 () Bool)

(declare-fun lt!7521 () Bool)

(assert (=> d!5894 (= lt!7521 (contains!44 (map!287 thiss!47822) key!7227))))

(declare-fun e!28660 () Bool)

(assert (=> d!5894 (= lt!7521 e!28660)))

(declare-fun res!32320 () Bool)

(assert (=> d!5894 (=> (not res!32320) (not e!28660))))

(assert (=> d!5894 (= res!32320 (contains!47 (v!12630 (underlying!810 thiss!47822)) lt!7527))))

(declare-fun lt!7517 () Unit!403)

(assert (=> d!5894 (= lt!7517 e!28662)))

(assert (=> d!5894 (= c!16461 (contains!44 (extractMap!8 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822))))) key!7227))))

(declare-fun lt!7520 () Unit!403)

(assert (=> d!5894 (= lt!7520 e!28661)))

(declare-fun c!16458 () Bool)

(assert (=> d!5894 (= c!16458 (contains!47 (v!12630 (underlying!810 thiss!47822)) lt!7527))))

(assert (=> d!5894 (= lt!7527 (hash!495 (hashF!2170 thiss!47822) key!7227))))

(assert (=> d!5894 (valid!287 thiss!47822)))

(assert (=> d!5894 (= (contains!46 thiss!47822 key!7227) lt!7521)))

(declare-fun b!49089 () Bool)

(assert (=> b!49089 (= e!28657 call!3315)))

(declare-fun bm!3313 () Bool)

(assert (=> bm!3313 (= call!3318 (contains!49 (ite c!16461 lt!7510 call!3317) call!3316))))

(declare-fun b!49096 () Bool)

(assert (=> b!49096 false))

(declare-fun lt!7514 () Unit!403)

(declare-fun lt!7516 () Unit!403)

(assert (=> b!49096 (= lt!7514 lt!7516)))

(declare-fun lt!7523 () ListLongMap!27)

(assert (=> b!49096 (contains!44 (extractMap!8 (toList!196 lt!7523)) key!7227)))

(declare-fun lemmaInLongMapThenInGenericMap!1 (ListLongMap!27 K!620 Hashable!301) Unit!403)

(assert (=> b!49096 (= lt!7516 (lemmaInLongMapThenInGenericMap!1 lt!7523 key!7227 (hashF!2170 thiss!47822)))))

(assert (=> b!49096 (= lt!7523 call!3317)))

(declare-fun Unit!434 () Unit!403)

(assert (=> b!49096 (= e!28658 Unit!434)))

(declare-fun bm!3314 () Bool)

(declare-fun isDefined!11 (Option!60) Bool)

(assert (=> bm!3314 (= call!3315 (isDefined!11 call!3319))))

(declare-fun b!49097 () Bool)

(assert (=> b!49097 (= e!28660 (isDefined!11 (getPair!1 (apply!23 (v!12630 (underlying!810 thiss!47822)) lt!7527) key!7227)))))

(declare-fun b!49098 () Bool)

(declare-fun Unit!435 () Unit!403)

(assert (=> b!49098 (= e!28658 Unit!435)))

(declare-fun bm!3315 () Bool)

(assert (=> bm!3315 (= call!3317 (map!286 (v!12630 (underlying!810 thiss!47822))))))

(assert (= (and d!5894 c!16458) b!49088))

(assert (= (and d!5894 (not c!16458)) b!49092))

(assert (= (and b!49088 c!16459) b!49091))

(assert (= (and b!49088 (not c!16459)) b!49090))

(assert (= (and d!5894 c!16461) b!49095))

(assert (= (and d!5894 (not c!16461)) b!49094))

(assert (= (and b!49095 res!32318) b!49089))

(assert (= (and b!49094 res!32319) b!49093))

(assert (= (and b!49094 c!16460) b!49096))

(assert (= (and b!49094 (not c!16460)) b!49098))

(assert (= (or b!49095 b!49089 b!49094 b!49093) bm!3311))

(assert (= (or b!49095 b!49094 b!49093 b!49096) bm!3315))

(assert (= (or b!49089 b!49093) bm!3310))

(assert (= (or b!49095 b!49094) bm!3313))

(assert (= (or b!49089 b!49093) bm!3312))

(assert (= (or b!49089 b!49093) bm!3314))

(assert (= (and d!5894 res!32320) b!49097))

(declare-fun m!22738 () Bool)

(assert (=> bm!3313 m!22738))

(declare-fun m!22740 () Bool)

(assert (=> b!49091 m!22740))

(declare-fun m!22742 () Bool)

(assert (=> b!49091 m!22742))

(declare-fun m!22744 () Bool)

(assert (=> b!49091 m!22744))

(declare-fun m!22746 () Bool)

(assert (=> b!49091 m!22746))

(declare-fun m!22748 () Bool)

(assert (=> b!49091 m!22748))

(assert (=> b!49091 m!22566))

(assert (=> b!49091 m!22746))

(declare-fun m!22750 () Bool)

(assert (=> b!49091 m!22750))

(declare-fun m!22752 () Bool)

(assert (=> b!49091 m!22752))

(declare-fun m!22754 () Bool)

(assert (=> b!49091 m!22754))

(declare-fun m!22756 () Bool)

(assert (=> b!49096 m!22756))

(assert (=> b!49096 m!22756))

(declare-fun m!22758 () Bool)

(assert (=> b!49096 m!22758))

(declare-fun m!22760 () Bool)

(assert (=> b!49096 m!22760))

(declare-fun m!22762 () Bool)

(assert (=> d!5894 m!22762))

(declare-fun m!22764 () Bool)

(assert (=> d!5894 m!22764))

(assert (=> d!5894 m!22548))

(declare-fun m!22766 () Bool)

(assert (=> d!5894 m!22766))

(assert (=> d!5894 m!22566))

(assert (=> d!5894 m!22544))

(assert (=> d!5894 m!22548))

(declare-fun m!22768 () Bool)

(assert (=> d!5894 m!22768))

(assert (=> d!5894 m!22502))

(assert (=> d!5894 m!22762))

(assert (=> b!49088 m!22566))

(assert (=> b!49088 m!22742))

(declare-fun m!22770 () Bool)

(assert (=> b!49088 m!22770))

(declare-fun m!22772 () Bool)

(assert (=> b!49088 m!22772))

(declare-fun m!22774 () Bool)

(assert (=> bm!3314 m!22774))

(assert (=> bm!3315 m!22566))

(declare-fun m!22776 () Bool)

(assert (=> bm!3312 m!22776))

(assert (=> b!49097 m!22742))

(assert (=> b!49097 m!22742))

(declare-fun m!22778 () Bool)

(assert (=> b!49097 m!22778))

(assert (=> b!49097 m!22778))

(declare-fun m!22780 () Bool)

(assert (=> b!49097 m!22780))

(assert (=> bm!3311 m!22544))

(declare-fun m!22782 () Bool)

(assert (=> bm!3310 m!22782))

(declare-fun m!22784 () Bool)

(assert (=> b!49095 m!22784))

(assert (=> d!5854 d!5894))

(declare-fun d!5896 () Bool)

(declare-fun map!288 (LongMapFixedSize!610) ListLongMap!27)

(assert (=> d!5896 (= (map!286 (v!12630 (underlying!810 thiss!47822))) (map!288 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822))))))))

(declare-fun bs!6475 () Bool)

(assert (= bs!6475 d!5896))

(declare-fun m!22786 () Bool)

(assert (=> bs!6475 m!22786))

(assert (=> d!5854 d!5896))

(declare-fun d!5898 () Bool)

(declare-fun lt!7532 () ListMap!79)

(assert (=> d!5898 (invariantList!28 (toList!195 lt!7532))))

(assert (=> d!5898 (= lt!7532 (extractMap!8 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822))))))))

(assert (=> d!5898 (valid!287 thiss!47822)))

(assert (=> d!5898 (= (map!287 thiss!47822) lt!7532)))

(declare-fun bs!6476 () Bool)

(assert (= bs!6476 d!5898))

(declare-fun m!22788 () Bool)

(assert (=> bs!6476 m!22788))

(assert (=> bs!6476 m!22566))

(assert (=> bs!6476 m!22762))

(assert (=> bs!6476 m!22502))

(assert (=> d!5854 d!5898))

(declare-fun bs!6477 () Bool)

(declare-fun b!49099 () Bool)

(assert (= bs!6477 (and b!49099 b!49088)))

(declare-fun lambda!939 () Int)

(assert (=> bs!6477 (= lambda!939 lambda!938)))

(declare-fun bs!6478 () Bool)

(assert (= bs!6478 (and b!49099 d!5884)))

(assert (=> bs!6478 (= lambda!939 lambda!932)))

(declare-fun bs!6479 () Bool)

(assert (= bs!6479 (and b!49099 d!5890)))

(assert (=> bs!6479 (= lambda!939 lambda!935)))

(declare-fun bs!6480 () Bool)

(assert (= bs!6480 (and b!49099 b!48959)))

(assert (=> bs!6480 (= lambda!939 lambda!923)))

(declare-fun bs!6481 () Bool)

(assert (= bs!6481 (and b!49099 d!5870)))

(assert (=> bs!6481 (= lambda!939 lambda!926)))

(declare-fun bs!6482 () Bool)

(assert (= bs!6482 (and b!49099 b!48949)))

(assert (=> bs!6482 (= lambda!939 lambda!922)))

(declare-fun bs!6483 () Bool)

(assert (= bs!6483 (and b!49099 b!49005)))

(assert (=> bs!6483 (= lambda!939 lambda!929)))

(declare-fun d!5900 () Bool)

(declare-fun res!32321 () Bool)

(declare-fun e!28664 () Bool)

(assert (=> d!5900 (=> (not res!32321) (not e!28664))))

(assert (=> d!5900 (= res!32321 (valid!288 (v!12630 (underlying!810 thiss!47822))))))

(assert (=> d!5900 (= (valid!287 thiss!47822) e!28664)))

(declare-fun res!32322 () Bool)

(assert (=> b!49099 (=> (not res!32322) (not e!28664))))

(assert (=> b!49099 (= res!32322 (forall!106 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))) lambda!939))))

(declare-fun b!49100 () Bool)

(assert (=> b!49100 (= e!28664 (allKeysSameHashInMap!12 (map!286 (v!12630 (underlying!810 thiss!47822))) (hashF!2170 thiss!47822)))))

(assert (= (and d!5900 res!32321) b!49099))

(assert (= (and b!49099 res!32322) b!49100))

(assert (=> d!5900 m!22626))

(assert (=> b!49099 m!22566))

(declare-fun m!22790 () Bool)

(assert (=> b!49099 m!22790))

(assert (=> b!49100 m!22566))

(assert (=> b!49100 m!22566))

(declare-fun m!22792 () Bool)

(assert (=> b!49100 m!22792))

(assert (=> d!5854 d!5900))

(declare-fun d!5902 () Bool)

(assert (=> d!5902 (= (abstractMap!19 thiss!47822) (map!287 thiss!47822))))

(declare-fun bs!6484 () Bool)

(assert (= bs!6484 d!5902))

(assert (=> bs!6484 m!22548))

(assert (=> b!48976 d!5902))

(declare-fun bm!3316 () Bool)

(declare-fun call!3321 () Bool)

(declare-fun e!28667 () List!850)

(assert (=> bm!3316 (= call!3321 (contains!45 e!28667 key!7227))))

(declare-fun c!16463 () Bool)

(declare-fun c!16462 () Bool)

(assert (=> bm!3316 (= c!16463 c!16462)))

(declare-fun d!5904 () Bool)

(declare-fun e!28669 () Bool)

(assert (=> d!5904 e!28669))

(declare-fun res!32323 () Bool)

(assert (=> d!5904 (=> res!32323 e!28669)))

(declare-fun e!28670 () Bool)

(assert (=> d!5904 (= res!32323 e!28670)))

(declare-fun res!32324 () Bool)

(assert (=> d!5904 (=> (not res!32324) (not e!28670))))

(declare-fun lt!7539 () Bool)

(assert (=> d!5904 (= res!32324 (not lt!7539))))

(declare-fun lt!7536 () Bool)

(assert (=> d!5904 (= lt!7539 lt!7536)))

(declare-fun lt!7533 () Unit!403)

(declare-fun e!28665 () Unit!403)

(assert (=> d!5904 (= lt!7533 e!28665)))

(assert (=> d!5904 (= c!16462 lt!7536)))

(assert (=> d!5904 (= lt!7536 (containsKey!7 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(assert (=> d!5904 (= (contains!44 (ite c!16422 lt!7400 lt!7411) key!7227) lt!7539)))

(declare-fun b!49101 () Bool)

(assert (=> b!49101 (= e!28667 (keys!478 (ite c!16422 lt!7400 lt!7411)))))

(declare-fun b!49102 () Bool)

(declare-fun e!28668 () Unit!403)

(assert (=> b!49102 (= e!28665 e!28668)))

(declare-fun c!16464 () Bool)

(assert (=> b!49102 (= c!16464 call!3321)))

(declare-fun e!28666 () Bool)

(declare-fun b!49103 () Bool)

(assert (=> b!49103 (= e!28666 (contains!45 (keys!478 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(declare-fun b!49104 () Bool)

(assert (=> b!49104 (= e!28669 e!28666)))

(declare-fun res!32325 () Bool)

(assert (=> b!49104 (=> (not res!32325) (not e!28666))))

(assert (=> b!49104 (= res!32325 (isDefined!9 (getValueByKey!3 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227)))))

(declare-fun b!49105 () Bool)

(assert (=> b!49105 (= e!28670 (not (contains!45 (keys!478 (ite c!16422 lt!7400 lt!7411)) key!7227)))))

(declare-fun b!49106 () Bool)

(assert (=> b!49106 (= e!28667 (getKeysList!3 (toList!195 (ite c!16422 lt!7400 lt!7411))))))

(declare-fun b!49107 () Bool)

(declare-fun Unit!436 () Unit!403)

(assert (=> b!49107 (= e!28668 Unit!436)))

(declare-fun b!49108 () Bool)

(declare-fun lt!7538 () Unit!403)

(assert (=> b!49108 (= e!28665 lt!7538)))

(declare-fun lt!7535 () Unit!403)

(assert (=> b!49108 (= lt!7535 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(assert (=> b!49108 (isDefined!9 (getValueByKey!3 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(declare-fun lt!7540 () Unit!403)

(assert (=> b!49108 (= lt!7540 lt!7535)))

(assert (=> b!49108 (= lt!7538 (lemmaInListThenGetKeysListContains!2 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(assert (=> b!49108 call!3321))

(declare-fun b!49109 () Bool)

(assert (=> b!49109 false))

(declare-fun lt!7534 () Unit!403)

(declare-fun lt!7537 () Unit!403)

(assert (=> b!49109 (= lt!7534 lt!7537)))

(assert (=> b!49109 (containsKey!7 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227)))

(assert (=> b!49109 (= lt!7537 (lemmaInGetKeysListThenContainsKey!2 (toList!195 (ite c!16422 lt!7400 lt!7411)) key!7227))))

(declare-fun Unit!437 () Unit!403)

(assert (=> b!49109 (= e!28668 Unit!437)))

(assert (= (and d!5904 c!16462) b!49108))

(assert (= (and d!5904 (not c!16462)) b!49102))

(assert (= (and b!49102 c!16464) b!49109))

(assert (= (and b!49102 (not c!16464)) b!49107))

(assert (= (or b!49108 b!49102) bm!3316))

(assert (= (and bm!3316 c!16463) b!49106))

(assert (= (and bm!3316 (not c!16463)) b!49101))

(assert (= (and d!5904 res!32324) b!49105))

(assert (= (and d!5904 (not res!32323)) b!49104))

(assert (= (and b!49104 res!32325) b!49103))

(declare-fun m!22794 () Bool)

(assert (=> b!49105 m!22794))

(assert (=> b!49105 m!22794))

(declare-fun m!22796 () Bool)

(assert (=> b!49105 m!22796))

(assert (=> b!49103 m!22794))

(assert (=> b!49103 m!22794))

(assert (=> b!49103 m!22796))

(declare-fun m!22798 () Bool)

(assert (=> d!5904 m!22798))

(declare-fun m!22800 () Bool)

(assert (=> b!49108 m!22800))

(declare-fun m!22802 () Bool)

(assert (=> b!49108 m!22802))

(assert (=> b!49108 m!22802))

(declare-fun m!22804 () Bool)

(assert (=> b!49108 m!22804))

(declare-fun m!22806 () Bool)

(assert (=> b!49108 m!22806))

(declare-fun m!22808 () Bool)

(assert (=> bm!3316 m!22808))

(assert (=> b!49104 m!22802))

(assert (=> b!49104 m!22802))

(assert (=> b!49104 m!22804))

(assert (=> b!49109 m!22798))

(declare-fun m!22810 () Bool)

(assert (=> b!49109 m!22810))

(declare-fun m!22812 () Bool)

(assert (=> b!49106 m!22812))

(assert (=> b!49101 m!22794))

(assert (=> bm!3266 d!5904))

(declare-fun d!5906 () Bool)

(declare-fun e!28673 () Bool)

(assert (=> d!5906 e!28673))

(declare-fun c!16467 () Bool)

(assert (=> d!5906 (= c!16467 (contains!47 (v!12630 (underlying!810 thiss!47822)) (ite c!16422 lt!7366 lt!7387)))))

(declare-fun lt!7543 () List!849)

(declare-fun apply!25 (LongMapFixedSize!610 (_ BitVec 64)) List!849)

(assert (=> d!5906 (= lt!7543 (apply!25 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))) (ite c!16422 lt!7366 lt!7387)))))

(assert (=> d!5906 (valid!288 (v!12630 (underlying!810 thiss!47822)))))

(assert (=> d!5906 (= (apply!23 (v!12630 (underlying!810 thiss!47822)) (ite c!16422 lt!7366 lt!7387)) lt!7543)))

(declare-fun b!49114 () Bool)

(declare-fun get!250 (Option!59) List!849)

(assert (=> b!49114 (= e!28673 (= lt!7543 (get!250 (getValueByKey!4 (toList!196 (map!286 (v!12630 (underlying!810 thiss!47822)))) (ite c!16422 lt!7366 lt!7387)))))))

(declare-fun b!49115 () Bool)

(declare-fun dynLambda!137 (Int (_ BitVec 64)) List!849)

(assert (=> b!49115 (= e!28673 (= lt!7543 (dynLambda!137 (defaultEntry!644 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822))))) (ite c!16422 lt!7366 lt!7387))))))

(assert (=> b!49115 ((_ is LongMap!305) (v!12630 (underlying!810 thiss!47822)))))

(assert (= (and d!5906 c!16467) b!49114))

(assert (= (and d!5906 (not c!16467)) b!49115))

(declare-fun b_lambda!289 () Bool)

(assert (=> (not b_lambda!289) (not b!49115)))

(declare-fun t!17050 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and b!48861 (= (defaultEntry!644 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822))))) (defaultEntry!644 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))) t!17050) tb!37))

(assert (=> b!49115 t!17050))

(declare-fun result!768 () Bool)

(declare-fun b_and!1437 () Bool)

(assert (= b_and!1433 (and (=> t!17050 result!768) b_and!1437)))

(declare-fun m!22814 () Bool)

(assert (=> d!5906 m!22814))

(declare-fun m!22816 () Bool)

(assert (=> d!5906 m!22816))

(assert (=> d!5906 m!22626))

(assert (=> b!49114 m!22566))

(declare-fun m!22818 () Bool)

(assert (=> b!49114 m!22818))

(assert (=> b!49114 m!22818))

(declare-fun m!22820 () Bool)

(assert (=> b!49114 m!22820))

(declare-fun m!22822 () Bool)

(assert (=> b!49115 m!22822))

(assert (=> bm!3276 d!5906))

(declare-fun b!49123 () Bool)

(assert (=> b!49123 true))

(declare-fun d!5908 () Bool)

(declare-fun e!28676 () Bool)

(assert (=> d!5908 e!28676))

(declare-fun res!32333 () Bool)

(assert (=> d!5908 (=> (not res!32333) (not e!28676))))

(declare-fun lt!7546 () List!850)

(declare-fun noDuplicate!2 (List!850) Bool)

(assert (=> d!5908 (= res!32333 (noDuplicate!2 lt!7546))))

(assert (=> d!5908 (= lt!7546 (getKeysList!3 (toList!195 lt!7224)))))

(assert (=> d!5908 (= (keys!478 lt!7224) lt!7546)))

(declare-fun b!49122 () Bool)

(declare-fun res!32334 () Bool)

(assert (=> b!49122 (=> (not res!32334) (not e!28676))))

(declare-fun length!2 (List!850) Int)

(declare-fun length!3 (List!849) Int)

(assert (=> b!49122 (= res!32334 (= (length!2 lt!7546) (length!3 (toList!195 lt!7224))))))

(declare-fun res!32332 () Bool)

(assert (=> b!49123 (=> (not res!32332) (not e!28676))))

(declare-fun lambda!944 () Int)

(declare-fun forall!107 (List!850 Int) Bool)

(assert (=> b!49123 (= res!32332 (forall!107 lt!7546 lambda!944))))

(declare-fun lambda!945 () Int)

(declare-fun b!49124 () Bool)

(declare-fun content!23 (List!850) (InoxSet K!620))

(declare-fun map!289 (List!849 Int) List!850)

(assert (=> b!49124 (= e!28676 (= (content!23 lt!7546) (content!23 (map!289 (toList!195 lt!7224) lambda!945))))))

(assert (= (and d!5908 res!32333) b!49122))

(assert (= (and b!49122 res!32334) b!49123))

(assert (= (and b!49123 res!32332) b!49124))

(declare-fun m!22824 () Bool)

(assert (=> d!5908 m!22824))

(assert (=> d!5908 m!22498))

(declare-fun m!22826 () Bool)

(assert (=> b!49122 m!22826))

(declare-fun m!22828 () Bool)

(assert (=> b!49122 m!22828))

(declare-fun m!22830 () Bool)

(assert (=> b!49123 m!22830))

(declare-fun m!22832 () Bool)

(assert (=> b!49124 m!22832))

(declare-fun m!22834 () Bool)

(assert (=> b!49124 m!22834))

(assert (=> b!49124 m!22834))

(declare-fun m!22836 () Bool)

(assert (=> b!49124 m!22836))

(assert (=> b!48891 d!5908))

(declare-fun b!49136 () Bool)

(declare-fun e!28682 () List!849)

(declare-fun e!28681 () List!849)

(assert (=> b!49136 (= e!28682 e!28681)))

(declare-fun c!16473 () Bool)

(assert (=> b!49136 (= c!16473 ((_ is Cons!843) (ite c!16422 lt!7376 lt!7380)))))

(declare-fun d!5910 () Bool)

(declare-fun lt!7549 () List!849)

(assert (=> d!5910 (not (containsKey!8 lt!7549 key!7227))))

(assert (=> d!5910 (= lt!7549 e!28682)))

(declare-fun c!16472 () Bool)

(assert (=> d!5910 (= c!16472 (and ((_ is Cons!843) (ite c!16422 lt!7376 lt!7380)) (= (_1!765 (h!6239 (ite c!16422 lt!7376 lt!7380))) key!7227)))))

(assert (=> d!5910 (noDuplicateKeys!4 (ite c!16422 lt!7376 lt!7380))))

(assert (=> d!5910 (= (removePairForKey!2 (ite c!16422 lt!7376 lt!7380) key!7227) lt!7549)))

(declare-fun b!49137 () Bool)

(assert (=> b!49137 (= e!28681 (Cons!843 (h!6239 (ite c!16422 lt!7376 lt!7380)) (removePairForKey!2 (t!17046 (ite c!16422 lt!7376 lt!7380)) key!7227)))))

(declare-fun b!49135 () Bool)

(assert (=> b!49135 (= e!28682 (t!17046 (ite c!16422 lt!7376 lt!7380)))))

(declare-fun b!49138 () Bool)

(assert (=> b!49138 (= e!28681 Nil!843)))

(assert (= (and d!5910 c!16472) b!49135))

(assert (= (and d!5910 (not c!16472)) b!49136))

(assert (= (and b!49136 c!16473) b!49137))

(assert (= (and b!49136 (not c!16473)) b!49138))

(declare-fun m!22838 () Bool)

(assert (=> d!5910 m!22838))

(declare-fun m!22840 () Bool)

(assert (=> d!5910 m!22840))

(declare-fun m!22842 () Bool)

(assert (=> b!49137 m!22842))

(assert (=> bm!3268 d!5910))

(declare-fun bs!6485 () Bool)

(declare-fun d!5912 () Bool)

(assert (= bs!6485 (and d!5912 b!49099)))

(declare-fun lambda!946 () Int)

(assert (=> bs!6485 (= lambda!946 lambda!939)))

(declare-fun bs!6486 () Bool)

(assert (= bs!6486 (and d!5912 b!49088)))

(assert (=> bs!6486 (= lambda!946 lambda!938)))

(declare-fun bs!6487 () Bool)

(assert (= bs!6487 (and d!5912 d!5884)))

(assert (=> bs!6487 (= lambda!946 lambda!932)))

(declare-fun bs!6488 () Bool)

(assert (= bs!6488 (and d!5912 d!5890)))

(assert (=> bs!6488 (= lambda!946 lambda!935)))

(declare-fun bs!6489 () Bool)

(assert (= bs!6489 (and d!5912 b!48959)))

(assert (=> bs!6489 (= lambda!946 lambda!923)))

(declare-fun bs!6490 () Bool)

(assert (= bs!6490 (and d!5912 d!5870)))

(assert (=> bs!6490 (= lambda!946 lambda!926)))

(declare-fun bs!6491 () Bool)

(assert (= bs!6491 (and d!5912 b!48949)))

(assert (=> bs!6491 (= lambda!946 lambda!922)))

(declare-fun bs!6492 () Bool)

(assert (= bs!6492 (and d!5912 b!49005)))

(assert (=> bs!6492 (= lambda!946 lambda!929)))

(declare-fun lt!7550 () ListMap!79)

(assert (=> d!5912 (invariantList!28 (toList!195 lt!7550))))

(declare-fun e!28683 () ListMap!79)

(assert (=> d!5912 (= lt!7550 e!28683)))

(declare-fun c!16474 () Bool)

(assert (=> d!5912 (= c!16474 ((_ is Cons!845) (toList!196 call!3271)))))

(assert (=> d!5912 (forall!106 (toList!196 call!3271) lambda!946)))

(assert (=> d!5912 (= (extractMap!8 (toList!196 call!3271)) lt!7550)))

(declare-fun b!49139 () Bool)

(assert (=> b!49139 (= e!28683 (addToMapMapFromBucket!2 (_2!768 (h!6241 (toList!196 call!3271))) (extractMap!8 (t!17048 (toList!196 call!3271)))))))

(declare-fun b!49140 () Bool)

(assert (=> b!49140 (= e!28683 (ListMap!80 Nil!843))))

(assert (= (and d!5912 c!16474) b!49139))

(assert (= (and d!5912 (not c!16474)) b!49140))

(declare-fun m!22844 () Bool)

(assert (=> d!5912 m!22844))

(declare-fun m!22846 () Bool)

(assert (=> d!5912 m!22846))

(declare-fun m!22848 () Bool)

(assert (=> b!49139 m!22848))

(assert (=> b!49139 m!22848))

(declare-fun m!22850 () Bool)

(assert (=> b!49139 m!22850))

(assert (=> bm!3278 d!5912))

(declare-fun d!5914 () Bool)

(declare-fun lt!7551 () ListMap!79)

(assert (=> d!5914 (invariantList!28 (toList!195 lt!7551))))

(assert (=> d!5914 (= lt!7551 (extractMap!8 (toList!196 (map!286 (v!12630 (underlying!810 (_2!766 lt!7385)))))))))

(assert (=> d!5914 (valid!287 (_2!766 lt!7385))))

(assert (=> d!5914 (= (map!287 (_2!766 lt!7385)) lt!7551)))

(declare-fun bs!6493 () Bool)

(assert (= bs!6493 d!5914))

(declare-fun m!22852 () Bool)

(assert (=> bs!6493 m!22852))

(declare-fun m!22854 () Bool)

(assert (=> bs!6493 m!22854))

(declare-fun m!22856 () Bool)

(assert (=> bs!6493 m!22856))

(assert (=> bs!6493 m!22514))

(assert (=> bm!3270 d!5914))

(declare-fun d!5916 () Bool)

(declare-fun choose!1162 (MutableMap!301) Bool)

(assert (=> d!5916 (= (valid!286 thiss!47822) (choose!1162 thiss!47822))))

(declare-fun bs!6494 () Bool)

(assert (= bs!6494 d!5916))

(declare-fun m!22858 () Bool)

(assert (=> bs!6494 m!22858))

(assert (=> b!48904 d!5916))

(declare-fun d!5918 () Bool)

(declare-fun e!28684 () Bool)

(assert (=> d!5918 e!28684))

(declare-fun res!32336 () Bool)

(assert (=> d!5918 (=> (not res!32336) (not e!28684))))

(declare-fun lt!7555 () ListMap!79)

(assert (=> d!5918 (= res!32336 (contains!44 lt!7555 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7552 () List!849)

(assert (=> d!5918 (= lt!7555 (ListMap!80 lt!7552))))

(declare-fun lt!7553 () Unit!403)

(declare-fun lt!7554 () Unit!403)

(assert (=> d!5918 (= lt!7553 lt!7554)))

(assert (=> d!5918 (= (getValueByKey!3 lt!7552 (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5918 (= lt!7554 (lemmaContainsTupThenGetReturnValue!3 lt!7552 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5918 (= lt!7552 (insertNoDuplicatedKeys!2 (toList!195 call!3269) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5918 (= (+!9 call!3269 (tuple2!1117 key!7227 v!11804)) lt!7555)))

(declare-fun b!49141 () Bool)

(declare-fun res!32335 () Bool)

(assert (=> b!49141 (=> (not res!32335) (not e!28684))))

(assert (=> b!49141 (= res!32335 (= (getValueByKey!3 (toList!195 lt!7555) (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49142 () Bool)

(assert (=> b!49142 (= e!28684 (contains!48 (toList!195 lt!7555) (tuple2!1117 key!7227 v!11804)))))

(assert (= (and d!5918 res!32336) b!49141))

(assert (= (and b!49141 res!32335) b!49142))

(declare-fun m!22860 () Bool)

(assert (=> d!5918 m!22860))

(declare-fun m!22862 () Bool)

(assert (=> d!5918 m!22862))

(declare-fun m!22864 () Bool)

(assert (=> d!5918 m!22864))

(declare-fun m!22866 () Bool)

(assert (=> d!5918 m!22866))

(declare-fun m!22868 () Bool)

(assert (=> b!49141 m!22868))

(declare-fun m!22870 () Bool)

(assert (=> b!49142 m!22870))

(assert (=> b!48951 d!5918))

(declare-fun d!5920 () Bool)

(declare-fun res!32341 () Bool)

(declare-fun e!28689 () Bool)

(assert (=> d!5920 (=> res!32341 e!28689)))

(assert (=> d!5920 (= res!32341 ((_ is Nil!845) (toList!196 call!3294)))))

(assert (=> d!5920 (= (forall!106 (toList!196 call!3294) (ite c!16422 lambda!922 lambda!923)) e!28689)))

(declare-fun b!49147 () Bool)

(declare-fun e!28690 () Bool)

(assert (=> b!49147 (= e!28689 e!28690)))

(declare-fun res!32342 () Bool)

(assert (=> b!49147 (=> (not res!32342) (not e!28690))))

(declare-fun dynLambda!138 (Int tuple2!1122) Bool)

(assert (=> b!49147 (= res!32342 (dynLambda!138 (ite c!16422 lambda!922 lambda!923) (h!6241 (toList!196 call!3294))))))

(declare-fun b!49148 () Bool)

(assert (=> b!49148 (= e!28690 (forall!106 (t!17048 (toList!196 call!3294)) (ite c!16422 lambda!922 lambda!923)))))

(assert (= (and d!5920 (not res!32341)) b!49147))

(assert (= (and b!49147 res!32342) b!49148))

(declare-fun b_lambda!291 () Bool)

(assert (=> (not b_lambda!291) (not b!49147)))

(declare-fun m!22872 () Bool)

(assert (=> b!49147 m!22872))

(declare-fun m!22874 () Bool)

(assert (=> b!49148 m!22874))

(assert (=> bm!3280 d!5920))

(declare-fun d!5922 () Bool)

(declare-fun lt!7558 () Bool)

(assert (=> d!5922 (= lt!7558 (select (content!23 (keys!478 lt!7224)) key!7227))))

(declare-fun e!28695 () Bool)

(assert (=> d!5922 (= lt!7558 e!28695)))

(declare-fun res!32347 () Bool)

(assert (=> d!5922 (=> (not res!32347) (not e!28695))))

(assert (=> d!5922 (= res!32347 ((_ is Cons!844) (keys!478 lt!7224)))))

(assert (=> d!5922 (= (contains!45 (keys!478 lt!7224) key!7227) lt!7558)))

(declare-fun b!49153 () Bool)

(declare-fun e!28696 () Bool)

(assert (=> b!49153 (= e!28695 e!28696)))

(declare-fun res!32348 () Bool)

(assert (=> b!49153 (=> res!32348 e!28696)))

(assert (=> b!49153 (= res!32348 (= (h!6240 (keys!478 lt!7224)) key!7227))))

(declare-fun b!49154 () Bool)

(assert (=> b!49154 (= e!28696 (contains!45 (t!17047 (keys!478 lt!7224)) key!7227))))

(assert (= (and d!5922 res!32347) b!49153))

(assert (= (and b!49153 (not res!32348)) b!49154))

(assert (=> d!5922 m!22480))

(declare-fun m!22876 () Bool)

(assert (=> d!5922 m!22876))

(declare-fun m!22878 () Bool)

(assert (=> d!5922 m!22878))

(declare-fun m!22880 () Bool)

(assert (=> b!49154 m!22880))

(assert (=> b!48893 d!5922))

(assert (=> b!48893 d!5908))

(assert (=> b!48895 d!5922))

(assert (=> b!48895 d!5908))

(declare-fun d!5924 () Bool)

(declare-fun e!28697 () Bool)

(assert (=> d!5924 e!28697))

(declare-fun res!32350 () Bool)

(assert (=> d!5924 (=> (not res!32350) (not e!28697))))

(declare-fun lt!7562 () ListMap!79)

(assert (=> d!5924 (= res!32350 (contains!44 lt!7562 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7559 () List!849)

(assert (=> d!5924 (= lt!7562 (ListMap!80 lt!7559))))

(declare-fun lt!7560 () Unit!403)

(declare-fun lt!7561 () Unit!403)

(assert (=> d!5924 (= lt!7560 lt!7561)))

(assert (=> d!5924 (= (getValueByKey!3 lt!7559 (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5924 (= lt!7561 (lemmaContainsTupThenGetReturnValue!3 lt!7559 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5924 (= lt!7559 (insertNoDuplicatedKeys!2 (toList!195 lt!7388) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5924 (= (+!9 lt!7388 (tuple2!1117 key!7227 v!11804)) lt!7562)))

(declare-fun b!49155 () Bool)

(declare-fun res!32349 () Bool)

(assert (=> b!49155 (=> (not res!32349) (not e!28697))))

(assert (=> b!49155 (= res!32349 (= (getValueByKey!3 (toList!195 lt!7562) (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49156 () Bool)

(assert (=> b!49156 (= e!28697 (contains!48 (toList!195 lt!7562) (tuple2!1117 key!7227 v!11804)))))

(assert (= (and d!5924 res!32350) b!49155))

(assert (= (and b!49155 res!32349) b!49156))

(declare-fun m!22882 () Bool)

(assert (=> d!5924 m!22882))

(declare-fun m!22884 () Bool)

(assert (=> d!5924 m!22884))

(declare-fun m!22886 () Bool)

(assert (=> d!5924 m!22886))

(declare-fun m!22888 () Bool)

(assert (=> d!5924 m!22888))

(declare-fun m!22890 () Bool)

(assert (=> b!49155 m!22890))

(declare-fun m!22892 () Bool)

(assert (=> b!49156 m!22892))

(assert (=> bm!3282 d!5924))

(declare-fun d!5926 () Bool)

(declare-fun res!32355 () Bool)

(declare-fun e!28702 () Bool)

(assert (=> d!5926 (=> res!32355 e!28702)))

(assert (=> d!5926 (= res!32355 (and ((_ is Cons!843) (toList!195 lt!7224)) (= (_1!765 (h!6239 (toList!195 lt!7224))) key!7227)))))

(assert (=> d!5926 (= (containsKey!7 (toList!195 lt!7224) key!7227) e!28702)))

(declare-fun b!49161 () Bool)

(declare-fun e!28703 () Bool)

(assert (=> b!49161 (= e!28702 e!28703)))

(declare-fun res!32356 () Bool)

(assert (=> b!49161 (=> (not res!32356) (not e!28703))))

(assert (=> b!49161 (= res!32356 ((_ is Cons!843) (toList!195 lt!7224)))))

(declare-fun b!49162 () Bool)

(assert (=> b!49162 (= e!28703 (containsKey!7 (t!17046 (toList!195 lt!7224)) key!7227))))

(assert (= (and d!5926 (not res!32355)) b!49161))

(assert (= (and b!49161 res!32356) b!49162))

(declare-fun m!22894 () Bool)

(assert (=> b!49162 m!22894))

(assert (=> b!48899 d!5926))

(declare-fun d!5928 () Bool)

(assert (=> d!5928 (containsKey!7 (toList!195 lt!7224) key!7227)))

(declare-fun lt!7565 () Unit!403)

(declare-fun choose!1163 (List!849 K!620) Unit!403)

(assert (=> d!5928 (= lt!7565 (choose!1163 (toList!195 lt!7224) key!7227))))

(assert (=> d!5928 (invariantList!28 (toList!195 lt!7224))))

(assert (=> d!5928 (= (lemmaInGetKeysListThenContainsKey!2 (toList!195 lt!7224) key!7227) lt!7565)))

(declare-fun bs!6495 () Bool)

(assert (= bs!6495 d!5928))

(assert (=> bs!6495 m!22484))

(declare-fun m!22896 () Bool)

(assert (=> bs!6495 m!22896))

(declare-fun m!22898 () Bool)

(assert (=> bs!6495 m!22898))

(assert (=> b!48899 d!5928))

(declare-fun d!5930 () Bool)

(assert (=> d!5930 true))

(assert (=> d!5930 true))

(declare-fun lambda!949 () Int)

(declare-fun forall!108 (List!849 Int) Bool)

(assert (=> d!5930 (= (allKeysSameHash!3 call!3284 (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)) (forall!108 call!3284 lambda!949))))

(declare-fun bs!6496 () Bool)

(assert (= bs!6496 d!5930))

(declare-fun m!22900 () Bool)

(assert (=> bs!6496 m!22900))

(assert (=> bm!3272 d!5930))

(declare-fun bm!3317 () Bool)

(declare-fun call!3322 () Bool)

(declare-fun e!28706 () List!850)

(assert (=> bm!3317 (= call!3322 (contains!45 e!28706 key!7227))))

(declare-fun c!16476 () Bool)

(declare-fun c!16475 () Bool)

(assert (=> bm!3317 (= c!16476 c!16475)))

(declare-fun d!5932 () Bool)

(declare-fun e!28708 () Bool)

(assert (=> d!5932 e!28708))

(declare-fun res!32357 () Bool)

(assert (=> d!5932 (=> res!32357 e!28708)))

(declare-fun e!28709 () Bool)

(assert (=> d!5932 (= res!32357 e!28709)))

(declare-fun res!32358 () Bool)

(assert (=> d!5932 (=> (not res!32358) (not e!28709))))

(declare-fun lt!7572 () Bool)

(assert (=> d!5932 (= res!32358 (not lt!7572))))

(declare-fun lt!7569 () Bool)

(assert (=> d!5932 (= lt!7572 lt!7569)))

(declare-fun lt!7566 () Unit!403)

(declare-fun e!28704 () Unit!403)

(assert (=> d!5932 (= lt!7566 e!28704)))

(assert (=> d!5932 (= c!16475 lt!7569)))

(assert (=> d!5932 (= lt!7569 (containsKey!7 (toList!195 call!3292) key!7227))))

(assert (=> d!5932 (= (contains!44 call!3292 key!7227) lt!7572)))

(declare-fun b!49167 () Bool)

(assert (=> b!49167 (= e!28706 (keys!478 call!3292))))

(declare-fun b!49168 () Bool)

(declare-fun e!28707 () Unit!403)

(assert (=> b!49168 (= e!28704 e!28707)))

(declare-fun c!16477 () Bool)

(assert (=> b!49168 (= c!16477 call!3322)))

(declare-fun b!49169 () Bool)

(declare-fun e!28705 () Bool)

(assert (=> b!49169 (= e!28705 (contains!45 (keys!478 call!3292) key!7227))))

(declare-fun b!49170 () Bool)

(assert (=> b!49170 (= e!28708 e!28705)))

(declare-fun res!32359 () Bool)

(assert (=> b!49170 (=> (not res!32359) (not e!28705))))

(assert (=> b!49170 (= res!32359 (isDefined!9 (getValueByKey!3 (toList!195 call!3292) key!7227)))))

(declare-fun b!49171 () Bool)

(assert (=> b!49171 (= e!28709 (not (contains!45 (keys!478 call!3292) key!7227)))))

(declare-fun b!49172 () Bool)

(assert (=> b!49172 (= e!28706 (getKeysList!3 (toList!195 call!3292)))))

(declare-fun b!49173 () Bool)

(declare-fun Unit!438 () Unit!403)

(assert (=> b!49173 (= e!28707 Unit!438)))

(declare-fun b!49174 () Bool)

(declare-fun lt!7571 () Unit!403)

(assert (=> b!49174 (= e!28704 lt!7571)))

(declare-fun lt!7568 () Unit!403)

(assert (=> b!49174 (= lt!7568 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 call!3292) key!7227))))

(assert (=> b!49174 (isDefined!9 (getValueByKey!3 (toList!195 call!3292) key!7227))))

(declare-fun lt!7573 () Unit!403)

(assert (=> b!49174 (= lt!7573 lt!7568)))

(assert (=> b!49174 (= lt!7571 (lemmaInListThenGetKeysListContains!2 (toList!195 call!3292) key!7227))))

(assert (=> b!49174 call!3322))

(declare-fun b!49175 () Bool)

(assert (=> b!49175 false))

(declare-fun lt!7567 () Unit!403)

(declare-fun lt!7570 () Unit!403)

(assert (=> b!49175 (= lt!7567 lt!7570)))

(assert (=> b!49175 (containsKey!7 (toList!195 call!3292) key!7227)))

(assert (=> b!49175 (= lt!7570 (lemmaInGetKeysListThenContainsKey!2 (toList!195 call!3292) key!7227))))

(declare-fun Unit!439 () Unit!403)

(assert (=> b!49175 (= e!28707 Unit!439)))

(assert (= (and d!5932 c!16475) b!49174))

(assert (= (and d!5932 (not c!16475)) b!49168))

(assert (= (and b!49168 c!16477) b!49175))

(assert (= (and b!49168 (not c!16477)) b!49173))

(assert (= (or b!49174 b!49168) bm!3317))

(assert (= (and bm!3317 c!16476) b!49172))

(assert (= (and bm!3317 (not c!16476)) b!49167))

(assert (= (and d!5932 res!32358) b!49171))

(assert (= (and d!5932 (not res!32357)) b!49170))

(assert (= (and b!49170 res!32359) b!49169))

(declare-fun m!22902 () Bool)

(assert (=> b!49171 m!22902))

(assert (=> b!49171 m!22902))

(declare-fun m!22904 () Bool)

(assert (=> b!49171 m!22904))

(assert (=> b!49169 m!22902))

(assert (=> b!49169 m!22902))

(assert (=> b!49169 m!22904))

(declare-fun m!22906 () Bool)

(assert (=> d!5932 m!22906))

(declare-fun m!22908 () Bool)

(assert (=> b!49174 m!22908))

(declare-fun m!22910 () Bool)

(assert (=> b!49174 m!22910))

(assert (=> b!49174 m!22910))

(declare-fun m!22912 () Bool)

(assert (=> b!49174 m!22912))

(declare-fun m!22914 () Bool)

(assert (=> b!49174 m!22914))

(declare-fun m!22916 () Bool)

(assert (=> bm!3317 m!22916))

(assert (=> b!49170 m!22910))

(assert (=> b!49170 m!22910))

(assert (=> b!49170 m!22912))

(assert (=> b!49175 m!22906))

(declare-fun m!22918 () Bool)

(assert (=> b!49175 m!22918))

(declare-fun m!22920 () Bool)

(assert (=> b!49172 m!22920))

(assert (=> b!49167 m!22902))

(assert (=> b!48963 d!5932))

(declare-fun d!5934 () Bool)

(assert (=> d!5934 (= (abstractMap!19 (_2!766 lt!7223)) (map!287 (_2!766 lt!7223)))))

(declare-fun bs!6497 () Bool)

(assert (= bs!6497 d!5934))

(declare-fun m!22922 () Bool)

(assert (=> bs!6497 m!22922))

(assert (=> b!48978 d!5934))

(declare-fun d!5936 () Bool)

(assert (=> d!5936 (= (map!286 (ite c!16422 (_2!767 lt!7384) (_2!767 lt!7402))) (map!288 (v!12629 (underlying!809 (ite c!16422 (_2!767 lt!7384) (_2!767 lt!7402))))))))

(declare-fun bs!6498 () Bool)

(assert (= bs!6498 d!5936))

(declare-fun m!22924 () Bool)

(assert (=> bs!6498 m!22924))

(assert (=> bm!3259 d!5936))

(declare-fun d!5938 () Bool)

(assert (=> d!5938 (= (contains!44 (ite c!16422 lt!7400 lt!7404) key!7227) (contains!44 (ite c!16422 lt!7403 lt!7411) key!7227))))

(declare-fun lt!7576 () Unit!403)

(declare-fun choose!1164 (ListMap!79 ListMap!79 K!620) Unit!403)

(assert (=> d!5938 (= lt!7576 (choose!1164 (ite c!16422 lt!7400 lt!7404) (ite c!16422 lt!7403 lt!7411) key!7227))))

(assert (=> d!5938 (eq!6 (ite c!16422 lt!7400 lt!7404) (ite c!16422 lt!7403 lt!7411))))

(assert (=> d!5938 (= (lemmaEquivalentThenSameContains!2 (ite c!16422 lt!7400 lt!7404) (ite c!16422 lt!7403 lt!7411) key!7227) lt!7576)))

(declare-fun bs!6499 () Bool)

(assert (= bs!6499 d!5938))

(declare-fun m!22926 () Bool)

(assert (=> bs!6499 m!22926))

(declare-fun m!22928 () Bool)

(assert (=> bs!6499 m!22928))

(declare-fun m!22930 () Bool)

(assert (=> bs!6499 m!22930))

(declare-fun m!22932 () Bool)

(assert (=> bs!6499 m!22932))

(assert (=> bm!3261 d!5938))

(declare-fun b!49186 () Bool)

(declare-fun e!28715 () Option!58)

(assert (=> b!49186 (= e!28715 (getValueByKey!3 (t!17046 (toList!195 lt!7426)) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49187 () Bool)

(assert (=> b!49187 (= e!28715 None!57)))

(declare-fun b!49185 () Bool)

(declare-fun e!28714 () Option!58)

(assert (=> b!49185 (= e!28714 e!28715)))

(declare-fun c!16483 () Bool)

(assert (=> b!49185 (= c!16483 (and ((_ is Cons!843) (toList!195 lt!7426)) (not (= (_1!765 (h!6239 (toList!195 lt!7426))) (_1!765 (tuple2!1117 key!7227 v!11804))))))))

(declare-fun d!5940 () Bool)

(declare-fun c!16482 () Bool)

(assert (=> d!5940 (= c!16482 (and ((_ is Cons!843) (toList!195 lt!7426)) (= (_1!765 (h!6239 (toList!195 lt!7426))) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(assert (=> d!5940 (= (getValueByKey!3 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))) e!28714)))

(declare-fun b!49184 () Bool)

(assert (=> b!49184 (= e!28714 (Some!57 (_2!765 (h!6239 (toList!195 lt!7426)))))))

(assert (= (and d!5940 c!16482) b!49184))

(assert (= (and d!5940 (not c!16482)) b!49185))

(assert (= (and b!49185 c!16483) b!49186))

(assert (= (and b!49185 (not c!16483)) b!49187))

(declare-fun m!22934 () Bool)

(assert (=> b!49186 m!22934))

(assert (=> b!48969 d!5940))

(declare-fun d!5942 () Bool)

(assert (=> d!5942 (= (eq!6 call!3286 call!3272) (= (content!22 (toList!195 call!3286)) (content!22 (toList!195 call!3272))))))

(declare-fun bs!6500 () Bool)

(assert (= bs!6500 d!5942))

(declare-fun m!22936 () Bool)

(assert (=> bs!6500 m!22936))

(declare-fun m!22938 () Bool)

(assert (=> bs!6500 m!22938))

(assert (=> bm!3285 d!5942))

(declare-fun bs!6501 () Bool)

(declare-fun d!5944 () Bool)

(assert (= bs!6501 (and d!5944 b!49099)))

(declare-fun lambda!954 () Int)

(assert (=> bs!6501 (= lambda!954 lambda!939)))

(declare-fun bs!6502 () Bool)

(assert (= bs!6502 (and d!5944 b!49088)))

(assert (=> bs!6502 (= lambda!954 lambda!938)))

(declare-fun bs!6503 () Bool)

(assert (= bs!6503 (and d!5944 d!5884)))

(assert (=> bs!6503 (= lambda!954 lambda!932)))

(declare-fun bs!6504 () Bool)

(assert (= bs!6504 (and d!5944 d!5912)))

(assert (=> bs!6504 (= lambda!954 lambda!946)))

(declare-fun bs!6505 () Bool)

(assert (= bs!6505 (and d!5944 d!5890)))

(assert (=> bs!6505 (= lambda!954 lambda!935)))

(declare-fun bs!6506 () Bool)

(assert (= bs!6506 (and d!5944 b!48959)))

(assert (=> bs!6506 (= lambda!954 lambda!923)))

(declare-fun bs!6507 () Bool)

(assert (= bs!6507 (and d!5944 d!5870)))

(assert (=> bs!6507 (= lambda!954 lambda!926)))

(declare-fun bs!6508 () Bool)

(assert (= bs!6508 (and d!5944 b!48949)))

(assert (=> bs!6508 (= lambda!954 lambda!922)))

(declare-fun bs!6509 () Bool)

(assert (= bs!6509 (and d!5944 b!49005)))

(assert (=> bs!6509 (= lambda!954 lambda!929)))

(declare-fun e!28718 () Bool)

(assert (=> d!5944 e!28718))

(declare-fun res!32362 () Bool)

(assert (=> d!5944 (=> (not res!32362) (not e!28718))))

(declare-fun lt!7582 () ListLongMap!27)

(assert (=> d!5944 (= res!32362 (forall!106 (toList!196 lt!7582) lambda!954))))

(assert (=> d!5944 (= lt!7582 (+!10 lt!7395 (tuple2!1123 (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375))))))

(declare-fun lt!7581 () Unit!403)

(declare-fun choose!1165 (ListLongMap!27 (_ BitVec 64) List!849 Hashable!301) Unit!403)

(assert (=> d!5944 (= lt!7581 (choose!1165 lt!7395 (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375) (hashF!2170 thiss!47822)))))

(assert (=> d!5944 (forall!106 (toList!196 lt!7395) lambda!954)))

(assert (=> d!5944 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!2 lt!7395 (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7382 lt!7375) (hashF!2170 thiss!47822)) lt!7581)))

(declare-fun b!49190 () Bool)

(assert (=> b!49190 (= e!28718 (allKeysSameHashInMap!12 lt!7582 (hashF!2170 thiss!47822)))))

(assert (= (and d!5944 res!32362) b!49190))

(declare-fun m!22940 () Bool)

(assert (=> d!5944 m!22940))

(declare-fun m!22942 () Bool)

(assert (=> d!5944 m!22942))

(declare-fun m!22944 () Bool)

(assert (=> d!5944 m!22944))

(declare-fun m!22946 () Bool)

(assert (=> d!5944 m!22946))

(declare-fun m!22948 () Bool)

(assert (=> b!49190 m!22948))

(assert (=> bm!3274 d!5944))

(declare-fun d!5946 () Bool)

(declare-fun hash!501 (Hashable!301 K!620) (_ BitVec 64))

(assert (=> d!5946 (= (hash!495 (hashF!2170 thiss!47822) key!7227) (hash!501 (hashF!2170 thiss!47822) key!7227))))

(declare-fun bs!6510 () Bool)

(assert (= bs!6510 d!5946))

(declare-fun m!22950 () Bool)

(assert (=> bs!6510 m!22950))

(assert (=> bm!3287 d!5946))

(declare-fun d!5948 () Bool)

(assert (=> d!5948 (= (valid!286 (_2!766 lt!7223)) (choose!1162 (_2!766 lt!7223)))))

(declare-fun bs!6511 () Bool)

(assert (= bs!6511 d!5948))

(declare-fun m!22952 () Bool)

(assert (=> bs!6511 m!22952))

(assert (=> b!48906 d!5948))

(declare-fun d!5950 () Bool)

(declare-fun c!16486 () Bool)

(assert (=> d!5950 (= c!16486 ((_ is Nil!843) (toList!195 (ite c!16392 lt!7224 call!3197))))))

(declare-fun e!28721 () (InoxSet tuple2!1116))

(assert (=> d!5950 (= (content!22 (toList!195 (ite c!16392 lt!7224 call!3197))) e!28721)))

(declare-fun b!49195 () Bool)

(assert (=> b!49195 (= e!28721 ((as const (Array tuple2!1116 Bool)) false))))

(declare-fun b!49196 () Bool)

(assert (=> b!49196 (= e!28721 ((_ map or) (store ((as const (Array tuple2!1116 Bool)) false) (h!6239 (toList!195 (ite c!16392 lt!7224 call!3197))) true) (content!22 (t!17046 (toList!195 (ite c!16392 lt!7224 call!3197))))))))

(assert (= (and d!5950 c!16486) b!49195))

(assert (= (and d!5950 (not c!16486)) b!49196))

(declare-fun m!22954 () Bool)

(assert (=> b!49196 m!22954))

(declare-fun m!22956 () Bool)

(assert (=> b!49196 m!22956))

(assert (=> d!5862 d!5950))

(declare-fun d!5952 () Bool)

(declare-fun c!16487 () Bool)

(assert (=> d!5952 (= c!16487 ((_ is Nil!843) (toList!195 e!28512)))))

(declare-fun e!28722 () (InoxSet tuple2!1116))

(assert (=> d!5952 (= (content!22 (toList!195 e!28512)) e!28722)))

(declare-fun b!49197 () Bool)

(assert (=> b!49197 (= e!28722 ((as const (Array tuple2!1116 Bool)) false))))

(declare-fun b!49198 () Bool)

(assert (=> b!49198 (= e!28722 ((_ map or) (store ((as const (Array tuple2!1116 Bool)) false) (h!6239 (toList!195 e!28512)) true) (content!22 (t!17046 (toList!195 e!28512)))))))

(assert (= (and d!5952 c!16487) b!49197))

(assert (= (and d!5952 (not c!16487)) b!49198))

(declare-fun m!22958 () Bool)

(assert (=> b!49198 m!22958))

(declare-fun m!22960 () Bool)

(assert (=> b!49198 m!22960))

(assert (=> d!5862 d!5952))

(declare-fun d!5954 () Bool)

(declare-fun e!28725 () Bool)

(assert (=> d!5954 e!28725))

(declare-fun res!32367 () Bool)

(assert (=> d!5954 (=> (not res!32367) (not e!28725))))

(declare-fun lt!7592 () ListLongMap!27)

(assert (=> d!5954 (= res!32367 (contains!49 lt!7592 (_1!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))))))

(declare-fun lt!7591 () List!851)

(assert (=> d!5954 (= lt!7592 (ListLongMap!28 lt!7591))))

(declare-fun lt!7593 () Unit!403)

(declare-fun lt!7594 () Unit!403)

(assert (=> d!5954 (= lt!7593 lt!7594)))

(assert (=> d!5954 (= (getValueByKey!4 lt!7591 (_1!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))) (Some!58 (_2!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!4 (List!851 (_ BitVec 64) List!849) Unit!403)

(assert (=> d!5954 (= lt!7594 (lemmaContainsTupThenGetReturnValue!4 lt!7591 (_1!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))) (_2!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))))))

(declare-fun insertStrictlySorted!1 (List!851 (_ BitVec 64) List!849) List!851)

(assert (=> d!5954 (= lt!7591 (insertStrictlySorted!1 (toList!196 lt!7395) (_1!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))) (_2!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))))))

(assert (=> d!5954 (= (+!10 lt!7395 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))) lt!7592)))

(declare-fun b!49203 () Bool)

(declare-fun res!32368 () Bool)

(assert (=> b!49203 (=> (not res!32368) (not e!28725))))

(assert (=> b!49203 (= res!32368 (= (getValueByKey!4 (toList!196 lt!7592) (_1!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375)))) (Some!58 (_2!768 (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))))))))

(declare-fun b!49204 () Bool)

(assert (=> b!49204 (= e!28725 (contains!51 (toList!196 lt!7592) (ite c!16422 (tuple2!1123 lt!7366 lt!7382) (tuple2!1123 lt!7387 lt!7375))))))

(assert (= (and d!5954 res!32367) b!49203))

(assert (= (and b!49203 res!32368) b!49204))

(declare-fun m!22962 () Bool)

(assert (=> d!5954 m!22962))

(declare-fun m!22964 () Bool)

(assert (=> d!5954 m!22964))

(declare-fun m!22966 () Bool)

(assert (=> d!5954 m!22966))

(declare-fun m!22968 () Bool)

(assert (=> d!5954 m!22968))

(declare-fun m!22970 () Bool)

(assert (=> b!49203 m!22970))

(declare-fun m!22972 () Bool)

(assert (=> b!49204 m!22972))

(assert (=> bm!3262 d!5954))

(declare-fun bs!6512 () Bool)

(declare-fun b!49205 () Bool)

(assert (= bs!6512 (and b!49205 b!49099)))

(declare-fun lambda!955 () Int)

(assert (=> bs!6512 (= lambda!955 lambda!939)))

(declare-fun bs!6513 () Bool)

(assert (= bs!6513 (and b!49205 b!49088)))

(assert (=> bs!6513 (= lambda!955 lambda!938)))

(declare-fun bs!6514 () Bool)

(assert (= bs!6514 (and b!49205 d!5884)))

(assert (=> bs!6514 (= lambda!955 lambda!932)))

(declare-fun bs!6515 () Bool)

(assert (= bs!6515 (and b!49205 d!5912)))

(assert (=> bs!6515 (= lambda!955 lambda!946)))

(declare-fun bs!6516 () Bool)

(assert (= bs!6516 (and b!49205 d!5944)))

(assert (=> bs!6516 (= lambda!955 lambda!954)))

(declare-fun bs!6517 () Bool)

(assert (= bs!6517 (and b!49205 d!5890)))

(assert (=> bs!6517 (= lambda!955 lambda!935)))

(declare-fun bs!6518 () Bool)

(assert (= bs!6518 (and b!49205 b!48959)))

(assert (=> bs!6518 (= lambda!955 lambda!923)))

(declare-fun bs!6519 () Bool)

(assert (= bs!6519 (and b!49205 d!5870)))

(assert (=> bs!6519 (= lambda!955 lambda!926)))

(declare-fun bs!6520 () Bool)

(assert (= bs!6520 (and b!49205 b!48949)))

(assert (=> bs!6520 (= lambda!955 lambda!922)))

(declare-fun bs!6521 () Bool)

(assert (= bs!6521 (and b!49205 b!49005)))

(assert (=> bs!6521 (= lambda!955 lambda!929)))

(declare-fun d!5956 () Bool)

(declare-fun res!32369 () Bool)

(declare-fun e!28726 () Bool)

(assert (=> d!5956 (=> (not res!32369) (not e!28726))))

(assert (=> d!5956 (= res!32369 (valid!288 (v!12630 (underlying!810 (_2!766 lt!7385)))))))

(assert (=> d!5956 (= (valid!287 (_2!766 lt!7385)) e!28726)))

(declare-fun res!32370 () Bool)

(assert (=> b!49205 (=> (not res!32370) (not e!28726))))

(assert (=> b!49205 (= res!32370 (forall!106 (toList!196 (map!286 (v!12630 (underlying!810 (_2!766 lt!7385))))) lambda!955))))

(declare-fun b!49206 () Bool)

(assert (=> b!49206 (= e!28726 (allKeysSameHashInMap!12 (map!286 (v!12630 (underlying!810 (_2!766 lt!7385)))) (hashF!2170 (_2!766 lt!7385))))))

(assert (= (and d!5956 res!32369) b!49205))

(assert (= (and b!49205 res!32370) b!49206))

(declare-fun m!22974 () Bool)

(assert (=> d!5956 m!22974))

(assert (=> b!49205 m!22854))

(declare-fun m!22976 () Bool)

(assert (=> b!49205 m!22976))

(assert (=> b!49206 m!22854))

(assert (=> b!49206 m!22854))

(declare-fun m!22978 () Bool)

(assert (=> b!49206 m!22978))

(assert (=> b!48948 d!5956))

(declare-fun d!5958 () Bool)

(declare-fun e!28727 () Bool)

(assert (=> d!5958 e!28727))

(declare-fun res!32372 () Bool)

(assert (=> d!5958 (=> (not res!32372) (not e!28727))))

(declare-fun lt!7598 () ListMap!79)

(assert (=> d!5958 (= res!32372 (contains!44 lt!7598 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7595 () List!849)

(assert (=> d!5958 (= lt!7598 (ListMap!80 lt!7595))))

(declare-fun lt!7596 () Unit!403)

(declare-fun lt!7597 () Unit!403)

(assert (=> d!5958 (= lt!7596 lt!7597)))

(assert (=> d!5958 (= (getValueByKey!3 lt!7595 (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5958 (= lt!7597 (lemmaContainsTupThenGetReturnValue!3 lt!7595 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5958 (= lt!7595 (insertNoDuplicatedKeys!2 (toList!195 call!3266) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5958 (= (+!9 call!3266 (tuple2!1117 key!7227 v!11804)) lt!7598)))

(declare-fun b!49207 () Bool)

(declare-fun res!32371 () Bool)

(assert (=> b!49207 (=> (not res!32371) (not e!28727))))

(assert (=> b!49207 (= res!32371 (= (getValueByKey!3 (toList!195 lt!7598) (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49208 () Bool)

(assert (=> b!49208 (= e!28727 (contains!48 (toList!195 lt!7598) (tuple2!1117 key!7227 v!11804)))))

(assert (= (and d!5958 res!32372) b!49207))

(assert (= (and b!49207 res!32371) b!49208))

(declare-fun m!22980 () Bool)

(assert (=> d!5958 m!22980))

(declare-fun m!22982 () Bool)

(assert (=> d!5958 m!22982))

(declare-fun m!22984 () Bool)

(assert (=> d!5958 m!22984))

(declare-fun m!22986 () Bool)

(assert (=> d!5958 m!22986))

(declare-fun m!22988 () Bool)

(assert (=> b!49207 m!22988))

(declare-fun m!22990 () Bool)

(assert (=> b!49208 m!22990))

(assert (=> bm!3275 d!5958))

(declare-fun bs!6522 () Bool)

(declare-fun d!5960 () Bool)

(assert (= bs!6522 (and d!5960 b!49099)))

(declare-fun lambda!958 () Int)

(assert (=> bs!6522 (not (= lambda!958 lambda!939))))

(declare-fun bs!6523 () Bool)

(assert (= bs!6523 (and d!5960 b!49088)))

(assert (=> bs!6523 (not (= lambda!958 lambda!938))))

(declare-fun bs!6524 () Bool)

(assert (= bs!6524 (and d!5960 d!5884)))

(assert (=> bs!6524 (not (= lambda!958 lambda!932))))

(declare-fun bs!6525 () Bool)

(assert (= bs!6525 (and d!5960 d!5912)))

(assert (=> bs!6525 (not (= lambda!958 lambda!946))))

(declare-fun bs!6526 () Bool)

(assert (= bs!6526 (and d!5960 d!5944)))

(assert (=> bs!6526 (not (= lambda!958 lambda!954))))

(declare-fun bs!6527 () Bool)

(assert (= bs!6527 (and d!5960 d!5890)))

(assert (=> bs!6527 (not (= lambda!958 lambda!935))))

(declare-fun bs!6528 () Bool)

(assert (= bs!6528 (and d!5960 b!48959)))

(assert (=> bs!6528 (not (= lambda!958 lambda!923))))

(declare-fun bs!6529 () Bool)

(assert (= bs!6529 (and d!5960 b!49205)))

(assert (=> bs!6529 (not (= lambda!958 lambda!955))))

(declare-fun bs!6530 () Bool)

(assert (= bs!6530 (and d!5960 d!5870)))

(assert (=> bs!6530 (not (= lambda!958 lambda!926))))

(declare-fun bs!6531 () Bool)

(assert (= bs!6531 (and d!5960 b!48949)))

(assert (=> bs!6531 (not (= lambda!958 lambda!922))))

(declare-fun bs!6532 () Bool)

(assert (= bs!6532 (and d!5960 b!49005)))

(assert (=> bs!6532 (not (= lambda!958 lambda!929))))

(assert (=> d!5960 true))

(assert (=> d!5960 (= (allKeysSameHashInMap!12 (ite c!16422 lt!7386 lt!7367) (hashF!2170 thiss!47822)) (forall!106 (toList!196 (ite c!16422 lt!7386 lt!7367)) lambda!958))))

(declare-fun bs!6533 () Bool)

(assert (= bs!6533 d!5960))

(declare-fun m!22992 () Bool)

(assert (=> bs!6533 m!22992))

(assert (=> bm!3289 d!5960))

(declare-fun d!5962 () Bool)

(declare-fun choose!1166 (MutableMap!301) ListMap!79)

(assert (=> d!5962 (= (abstractMap!18 thiss!47822) (choose!1166 thiss!47822))))

(declare-fun bs!6534 () Bool)

(assert (= bs!6534 d!5962))

(declare-fun m!22994 () Bool)

(assert (=> bs!6534 m!22994))

(assert (=> b!48975 d!5962))

(declare-fun bs!6535 () Bool)

(declare-fun d!5964 () Bool)

(assert (= bs!6535 (and d!5964 b!49099)))

(declare-fun lambda!961 () Int)

(assert (=> bs!6535 (not (= lambda!961 lambda!939))))

(declare-fun bs!6536 () Bool)

(assert (= bs!6536 (and d!5964 b!49088)))

(assert (=> bs!6536 (not (= lambda!961 lambda!938))))

(declare-fun bs!6537 () Bool)

(assert (= bs!6537 (and d!5964 d!5884)))

(assert (=> bs!6537 (not (= lambda!961 lambda!932))))

(declare-fun bs!6538 () Bool)

(assert (= bs!6538 (and d!5964 d!5912)))

(assert (=> bs!6538 (not (= lambda!961 lambda!946))))

(declare-fun bs!6539 () Bool)

(assert (= bs!6539 (and d!5964 d!5944)))

(assert (=> bs!6539 (not (= lambda!961 lambda!954))))

(declare-fun bs!6540 () Bool)

(assert (= bs!6540 (and d!5964 d!5890)))

(assert (=> bs!6540 (not (= lambda!961 lambda!935))))

(declare-fun bs!6541 () Bool)

(assert (= bs!6541 (and d!5964 d!5960)))

(assert (=> bs!6541 (= lambda!961 lambda!958)))

(declare-fun bs!6542 () Bool)

(assert (= bs!6542 (and d!5964 b!48959)))

(assert (=> bs!6542 (not (= lambda!961 lambda!923))))

(declare-fun bs!6543 () Bool)

(assert (= bs!6543 (and d!5964 b!49205)))

(assert (=> bs!6543 (not (= lambda!961 lambda!955))))

(declare-fun bs!6544 () Bool)

(assert (= bs!6544 (and d!5964 d!5870)))

(assert (=> bs!6544 (not (= lambda!961 lambda!926))))

(declare-fun bs!6545 () Bool)

(assert (= bs!6545 (and d!5964 b!48949)))

(assert (=> bs!6545 (not (= lambda!961 lambda!922))))

(declare-fun bs!6546 () Bool)

(assert (= bs!6546 (and d!5964 b!49005)))

(assert (=> bs!6546 (not (= lambda!961 lambda!929))))

(assert (=> d!5964 true))

(assert (=> d!5964 (allKeysSameHash!3 (ite c!16422 lt!7376 lt!7380) (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822))))

(declare-fun lt!7601 () Unit!403)

(declare-fun choose!1167 (List!851 (_ BitVec 64) List!849 Hashable!301) Unit!403)

(assert (=> d!5964 (= lt!7601 (choose!1167 (toList!196 lt!7395) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7376 lt!7380) (hashF!2170 thiss!47822)))))

(assert (=> d!5964 (forall!106 (toList!196 lt!7395) lambda!961)))

(assert (=> d!5964 (= (lemmaInLongMapAllKeySameHashThenForTuple!2 (toList!196 lt!7395) (ite c!16422 lt!7366 lt!7387) (ite c!16422 lt!7376 lt!7380) (hashF!2170 thiss!47822)) lt!7601)))

(declare-fun bs!6547 () Bool)

(assert (= bs!6547 d!5964))

(assert (=> bs!6547 m!22512))

(declare-fun m!22996 () Bool)

(assert (=> bs!6547 m!22996))

(declare-fun m!22998 () Bool)

(assert (=> bs!6547 m!22998))

(assert (=> bm!3277 d!5964))

(assert (=> d!5848 d!5926))

(assert (=> bm!3267 d!5898))

(declare-fun d!5966 () Bool)

(declare-fun lt!7602 () Bool)

(assert (=> d!5966 (= lt!7602 (select (content!23 e!28536) key!7227))))

(declare-fun e!28728 () Bool)

(assert (=> d!5966 (= lt!7602 e!28728)))

(declare-fun res!32373 () Bool)

(assert (=> d!5966 (=> (not res!32373) (not e!28728))))

(assert (=> d!5966 (= res!32373 ((_ is Cons!844) e!28536))))

(assert (=> d!5966 (= (contains!45 e!28536 key!7227) lt!7602)))

(declare-fun b!49211 () Bool)

(declare-fun e!28729 () Bool)

(assert (=> b!49211 (= e!28728 e!28729)))

(declare-fun res!32374 () Bool)

(assert (=> b!49211 (=> res!32374 e!28729)))

(assert (=> b!49211 (= res!32374 (= (h!6240 e!28536) key!7227))))

(declare-fun b!49212 () Bool)

(assert (=> b!49212 (= e!28729 (contains!45 (t!17047 e!28536) key!7227))))

(assert (= (and d!5966 res!32373) b!49211))

(assert (= (and b!49211 (not res!32374)) b!49212))

(declare-fun m!23000 () Bool)

(assert (=> d!5966 m!23000))

(declare-fun m!23002 () Bool)

(assert (=> d!5966 m!23002))

(declare-fun m!23004 () Bool)

(assert (=> b!49212 m!23004))

(assert (=> bm!3196 d!5966))

(declare-fun e!28732 () List!850)

(declare-fun call!3323 () Bool)

(declare-fun bm!3318 () Bool)

(assert (=> bm!3318 (= call!3323 (contains!45 e!28732 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun c!16489 () Bool)

(declare-fun c!16488 () Bool)

(assert (=> bm!3318 (= c!16489 c!16488)))

(declare-fun d!5968 () Bool)

(declare-fun e!28734 () Bool)

(assert (=> d!5968 e!28734))

(declare-fun res!32375 () Bool)

(assert (=> d!5968 (=> res!32375 e!28734)))

(declare-fun e!28735 () Bool)

(assert (=> d!5968 (= res!32375 e!28735)))

(declare-fun res!32376 () Bool)

(assert (=> d!5968 (=> (not res!32376) (not e!28735))))

(declare-fun lt!7609 () Bool)

(assert (=> d!5968 (= res!32376 (not lt!7609))))

(declare-fun lt!7606 () Bool)

(assert (=> d!5968 (= lt!7609 lt!7606)))

(declare-fun lt!7603 () Unit!403)

(declare-fun e!28730 () Unit!403)

(assert (=> d!5968 (= lt!7603 e!28730)))

(assert (=> d!5968 (= c!16488 lt!7606)))

(assert (=> d!5968 (= lt!7606 (containsKey!7 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> d!5968 (= (contains!44 lt!7426 (_1!765 (tuple2!1117 key!7227 v!11804))) lt!7609)))

(declare-fun b!49213 () Bool)

(assert (=> b!49213 (= e!28732 (keys!478 lt!7426))))

(declare-fun b!49214 () Bool)

(declare-fun e!28733 () Unit!403)

(assert (=> b!49214 (= e!28730 e!28733)))

(declare-fun c!16490 () Bool)

(assert (=> b!49214 (= c!16490 call!3323)))

(declare-fun e!28731 () Bool)

(declare-fun b!49215 () Bool)

(assert (=> b!49215 (= e!28731 (contains!45 (keys!478 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49216 () Bool)

(assert (=> b!49216 (= e!28734 e!28731)))

(declare-fun res!32377 () Bool)

(assert (=> b!49216 (=> (not res!32377) (not e!28731))))

(assert (=> b!49216 (= res!32377 (isDefined!9 (getValueByKey!3 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49217 () Bool)

(assert (=> b!49217 (= e!28735 (not (contains!45 (keys!478 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49218 () Bool)

(assert (=> b!49218 (= e!28732 (getKeysList!3 (toList!195 lt!7426)))))

(declare-fun b!49219 () Bool)

(declare-fun Unit!440 () Unit!403)

(assert (=> b!49219 (= e!28733 Unit!440)))

(declare-fun b!49220 () Bool)

(declare-fun lt!7608 () Unit!403)

(assert (=> b!49220 (= e!28730 lt!7608)))

(declare-fun lt!7605 () Unit!403)

(assert (=> b!49220 (= lt!7605 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> b!49220 (isDefined!9 (getValueByKey!3 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7610 () Unit!403)

(assert (=> b!49220 (= lt!7610 lt!7605)))

(assert (=> b!49220 (= lt!7608 (lemmaInListThenGetKeysListContains!2 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(assert (=> b!49220 call!3323))

(declare-fun b!49221 () Bool)

(assert (=> b!49221 false))

(declare-fun lt!7604 () Unit!403)

(declare-fun lt!7607 () Unit!403)

(assert (=> b!49221 (= lt!7604 lt!7607)))

(assert (=> b!49221 (containsKey!7 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804)))))

(assert (=> b!49221 (= lt!7607 (lemmaInGetKeysListThenContainsKey!2 (toList!195 lt!7426) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun Unit!441 () Unit!403)

(assert (=> b!49221 (= e!28733 Unit!441)))

(assert (= (and d!5968 c!16488) b!49220))

(assert (= (and d!5968 (not c!16488)) b!49214))

(assert (= (and b!49214 c!16490) b!49221))

(assert (= (and b!49214 (not c!16490)) b!49219))

(assert (= (or b!49220 b!49214) bm!3318))

(assert (= (and bm!3318 c!16489) b!49218))

(assert (= (and bm!3318 (not c!16489)) b!49213))

(assert (= (and d!5968 res!32376) b!49217))

(assert (= (and d!5968 (not res!32375)) b!49216))

(assert (= (and b!49216 res!32377) b!49215))

(declare-fun m!23006 () Bool)

(assert (=> b!49217 m!23006))

(assert (=> b!49217 m!23006))

(declare-fun m!23008 () Bool)

(assert (=> b!49217 m!23008))

(assert (=> b!49215 m!23006))

(assert (=> b!49215 m!23006))

(assert (=> b!49215 m!23008))

(declare-fun m!23010 () Bool)

(assert (=> d!5968 m!23010))

(declare-fun m!23012 () Bool)

(assert (=> b!49220 m!23012))

(assert (=> b!49220 m!22604))

(assert (=> b!49220 m!22604))

(declare-fun m!23014 () Bool)

(assert (=> b!49220 m!23014))

(declare-fun m!23016 () Bool)

(assert (=> b!49220 m!23016))

(declare-fun m!23018 () Bool)

(assert (=> bm!3318 m!23018))

(assert (=> b!49216 m!22604))

(assert (=> b!49216 m!22604))

(assert (=> b!49216 m!23014))

(assert (=> b!49221 m!23010))

(declare-fun m!23020 () Bool)

(assert (=> b!49221 m!23020))

(declare-fun m!23022 () Bool)

(assert (=> b!49218 m!23022))

(assert (=> b!49213 m!23006))

(assert (=> d!5856 d!5968))

(declare-fun b!49224 () Bool)

(declare-fun e!28737 () Option!58)

(assert (=> b!49224 (= e!28737 (getValueByKey!3 (t!17046 lt!7423) (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49225 () Bool)

(assert (=> b!49225 (= e!28737 None!57)))

(declare-fun b!49223 () Bool)

(declare-fun e!28736 () Option!58)

(assert (=> b!49223 (= e!28736 e!28737)))

(declare-fun c!16492 () Bool)

(assert (=> b!49223 (= c!16492 (and ((_ is Cons!843) lt!7423) (not (= (_1!765 (h!6239 lt!7423)) (_1!765 (tuple2!1117 key!7227 v!11804))))))))

(declare-fun c!16491 () Bool)

(declare-fun d!5970 () Bool)

(assert (=> d!5970 (= c!16491 (and ((_ is Cons!843) lt!7423) (= (_1!765 (h!6239 lt!7423)) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(assert (=> d!5970 (= (getValueByKey!3 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804))) e!28736)))

(declare-fun b!49222 () Bool)

(assert (=> b!49222 (= e!28736 (Some!57 (_2!765 (h!6239 lt!7423))))))

(assert (= (and d!5970 c!16491) b!49222))

(assert (= (and d!5970 (not c!16491)) b!49223))

(assert (= (and b!49223 c!16492) b!49224))

(assert (= (and b!49223 (not c!16492)) b!49225))

(declare-fun m!23024 () Bool)

(assert (=> b!49224 m!23024))

(assert (=> d!5856 d!5970))

(declare-fun d!5972 () Bool)

(assert (=> d!5972 (= (getValueByKey!3 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804))) (Some!57 (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun lt!7613 () Unit!403)

(declare-fun choose!1168 (List!849 K!620 V!674) Unit!403)

(assert (=> d!5972 (= lt!7613 (choose!1168 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun e!28740 () Bool)

(assert (=> d!5972 e!28740))

(declare-fun res!32382 () Bool)

(assert (=> d!5972 (=> (not res!32382) (not e!28740))))

(assert (=> d!5972 (= res!32382 (invariantList!28 lt!7423))))

(assert (=> d!5972 (= (lemmaContainsTupThenGetReturnValue!3 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))) lt!7613)))

(declare-fun b!49230 () Bool)

(declare-fun res!32383 () Bool)

(assert (=> b!49230 (=> (not res!32383) (not e!28740))))

(assert (=> b!49230 (= res!32383 (containsKey!7 lt!7423 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49231 () Bool)

(assert (=> b!49231 (= e!28740 (contains!48 lt!7423 (tuple2!1117 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(assert (= (and d!5972 res!32382) b!49230))

(assert (= (and b!49230 res!32383) b!49231))

(assert (=> d!5972 m!22598))

(declare-fun m!23026 () Bool)

(assert (=> d!5972 m!23026))

(declare-fun m!23028 () Bool)

(assert (=> d!5972 m!23028))

(declare-fun m!23030 () Bool)

(assert (=> b!49230 m!23030))

(declare-fun m!23032 () Bool)

(assert (=> b!49231 m!23032))

(assert (=> d!5856 d!5972))

(declare-fun b!49260 () Bool)

(declare-fun e!28759 () List!849)

(declare-fun call!3334 () List!849)

(assert (=> b!49260 (= e!28759 call!3334)))

(declare-fun lt!7643 () List!850)

(declare-fun call!3333 () List!850)

(assert (=> b!49260 (= lt!7643 call!3333)))

(declare-fun lt!7640 () Unit!403)

(declare-fun lemmaSubseqRefl!2 (List!850) Unit!403)

(assert (=> b!49260 (= lt!7640 (lemmaSubseqRefl!2 lt!7643))))

(declare-fun subseq!1 (List!850 List!850) Bool)

(assert (=> b!49260 (subseq!1 lt!7643 lt!7643)))

(declare-fun lt!7646 () Unit!403)

(assert (=> b!49260 (= lt!7646 lt!7640)))

(declare-fun b!49261 () Bool)

(declare-fun e!28758 () List!849)

(declare-fun lt!7636 () List!849)

(assert (=> b!49261 (= e!28758 lt!7636)))

(declare-fun call!3332 () List!849)

(assert (=> b!49261 (= lt!7636 call!3332)))

(declare-fun c!16507 () Bool)

(assert (=> b!49261 (= c!16507 (containsKey!7 (insertNoDuplicatedKeys!2 (t!17046 (toList!195 call!3196)) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))) (_1!765 (h!6239 (toList!195 call!3196)))))))

(declare-fun lt!7642 () Unit!403)

(declare-fun e!28756 () Unit!403)

(assert (=> b!49261 (= lt!7642 e!28756)))

(declare-fun d!5974 () Bool)

(declare-fun e!28760 () Bool)

(assert (=> d!5974 e!28760))

(declare-fun res!32394 () Bool)

(assert (=> d!5974 (=> (not res!32394) (not e!28760))))

(declare-fun lt!7645 () List!849)

(assert (=> d!5974 (= res!32394 (invariantList!28 lt!7645))))

(assert (=> d!5974 (= lt!7645 e!28759)))

(declare-fun c!16504 () Bool)

(assert (=> d!5974 (= c!16504 (and ((_ is Cons!843) (toList!195 call!3196)) (= (_1!765 (h!6239 (toList!195 call!3196))) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(assert (=> d!5974 (invariantList!28 (toList!195 call!3196))))

(assert (=> d!5974 (= (insertNoDuplicatedKeys!2 (toList!195 call!3196) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))) lt!7645)))

(declare-fun b!49262 () Bool)

(assert (=> b!49262 false))

(declare-fun lt!7644 () Unit!403)

(declare-fun lt!7637 () Unit!403)

(assert (=> b!49262 (= lt!7644 lt!7637)))

(assert (=> b!49262 (containsKey!7 (t!17046 (toList!195 call!3196)) (_1!765 (h!6239 (toList!195 call!3196))))))

(assert (=> b!49262 (= lt!7637 (lemmaInGetKeysListThenContainsKey!2 (t!17046 (toList!195 call!3196)) (_1!765 (h!6239 (toList!195 call!3196)))))))

(declare-fun lt!7639 () Unit!403)

(declare-fun lt!7638 () Unit!403)

(assert (=> b!49262 (= lt!7639 lt!7638)))

(assert (=> b!49262 (contains!45 call!3333 (_1!765 (h!6239 (toList!195 call!3196))))))

(declare-fun lt!7641 () List!849)

(assert (=> b!49262 (= lt!7638 (lemmaInListThenGetKeysListContains!2 lt!7641 (_1!765 (h!6239 (toList!195 call!3196)))))))

(assert (=> b!49262 (= lt!7641 (insertNoDuplicatedKeys!2 (t!17046 (toList!195 call!3196)) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun Unit!442 () Unit!403)

(assert (=> b!49262 (= e!28756 Unit!442)))

(declare-fun b!49263 () Bool)

(declare-fun res!32393 () Bool)

(assert (=> b!49263 (=> (not res!32393) (not e!28760))))

(assert (=> b!49263 (= res!32393 (contains!48 lt!7645 (tuple2!1117 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun bm!3327 () Bool)

(declare-fun call!3335 () List!849)

(assert (=> bm!3327 (= call!3332 call!3335)))

(declare-fun c!16503 () Bool)

(declare-fun c!16505 () Bool)

(assert (=> bm!3327 (= c!16503 c!16505)))

(declare-fun b!49264 () Bool)

(assert (=> b!49264 (= e!28760 (= (content!23 (getKeysList!3 lt!7645)) ((_ map or) (content!23 (getKeysList!3 (toList!195 call!3196))) (store ((as const (Array K!620 Bool)) false) (_1!765 (tuple2!1117 key!7227 v!11804)) true))))))

(declare-fun bm!3328 () Bool)

(assert (=> bm!3328 (= call!3335 call!3334)))

(declare-fun b!49265 () Bool)

(assert (=> b!49265 (= c!16505 ((_ is Cons!843) (toList!195 call!3196)))))

(declare-fun e!28755 () List!849)

(assert (=> b!49265 (= e!28755 e!28758)))

(declare-fun c!16506 () Bool)

(declare-fun bm!3329 () Bool)

(declare-fun e!28757 () List!849)

(declare-fun $colon$colon!6 (List!849 tuple2!1116) List!849)

(assert (=> bm!3329 (= call!3334 ($colon$colon!6 (ite c!16504 (t!17046 (toList!195 call!3196)) (ite c!16506 (toList!195 call!3196) e!28757)) (ite (or c!16504 c!16506) (tuple2!1117 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))) (ite c!16505 (h!6239 (toList!195 call!3196)) (tuple2!1117 (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804)))))))))

(declare-fun b!49266 () Bool)

(declare-fun res!32392 () Bool)

(assert (=> b!49266 (=> (not res!32392) (not e!28760))))

(assert (=> b!49266 (= res!32392 (containsKey!7 lt!7645 (_1!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49267 () Bool)

(assert (=> b!49267 (= e!28755 call!3335)))

(declare-fun b!49268 () Bool)

(assert (=> b!49268 (= e!28757 Nil!843)))

(declare-fun bm!3330 () Bool)

(assert (=> bm!3330 (= call!3333 (getKeysList!3 (ite c!16504 (toList!195 call!3196) lt!7641)))))

(declare-fun b!49269 () Bool)

(declare-fun Unit!443 () Unit!403)

(assert (=> b!49269 (= e!28756 Unit!443)))

(declare-fun b!49270 () Bool)

(assert (=> b!49270 (= e!28758 call!3332)))

(declare-fun e!28761 () Bool)

(declare-fun b!49271 () Bool)

(assert (=> b!49271 (= e!28761 (not (containsKey!7 (toList!195 call!3196) (_1!765 (tuple2!1117 key!7227 v!11804)))))))

(declare-fun b!49272 () Bool)

(assert (=> b!49272 (= e!28757 (insertNoDuplicatedKeys!2 (t!17046 (toList!195 call!3196)) (_1!765 (tuple2!1117 key!7227 v!11804)) (_2!765 (tuple2!1117 key!7227 v!11804))))))

(declare-fun b!49273 () Bool)

(assert (=> b!49273 (= e!28759 e!28755)))

(declare-fun res!32395 () Bool)

(assert (=> b!49273 (= res!32395 ((_ is Cons!843) (toList!195 call!3196)))))

(assert (=> b!49273 (=> (not res!32395) (not e!28761))))

(assert (=> b!49273 (= c!16506 e!28761)))

(assert (= (and d!5974 c!16504) b!49260))

(assert (= (and d!5974 (not c!16504)) b!49273))

(assert (= (and b!49273 res!32395) b!49271))

(assert (= (and b!49273 c!16506) b!49267))

(assert (= (and b!49273 (not c!16506)) b!49265))

(assert (= (and b!49265 c!16505) b!49261))

(assert (= (and b!49265 (not c!16505)) b!49270))

(assert (= (and b!49261 c!16507) b!49262))

(assert (= (and b!49261 (not c!16507)) b!49269))

(assert (= (or b!49261 b!49270) bm!3327))

(assert (= (and bm!3327 c!16503) b!49272))

(assert (= (and bm!3327 (not c!16503)) b!49268))

(assert (= (or b!49267 bm!3327) bm!3328))

(assert (= (or b!49260 bm!3328) bm!3329))

(assert (= (or b!49260 b!49262) bm!3330))

(assert (= (and d!5974 res!32394) b!49266))

(assert (= (and b!49266 res!32392) b!49263))

(assert (= (and b!49263 res!32393) b!49264))

(declare-fun m!23034 () Bool)

(assert (=> b!49264 m!23034))

(declare-fun m!23036 () Bool)

(assert (=> b!49264 m!23036))

(declare-fun m!23038 () Bool)

(assert (=> b!49264 m!23038))

(declare-fun m!23040 () Bool)

(assert (=> b!49264 m!23040))

(declare-fun m!23042 () Bool)

(assert (=> b!49264 m!23042))

(assert (=> b!49264 m!23040))

(assert (=> b!49264 m!23034))

(declare-fun m!23044 () Bool)

(assert (=> bm!3329 m!23044))

(declare-fun m!23046 () Bool)

(assert (=> b!49271 m!23046))

(declare-fun m!23048 () Bool)

(assert (=> b!49263 m!23048))

(declare-fun m!23050 () Bool)

(assert (=> b!49266 m!23050))

(declare-fun m!23052 () Bool)

(assert (=> b!49260 m!23052))

(declare-fun m!23054 () Bool)

(assert (=> b!49260 m!23054))

(declare-fun m!23056 () Bool)

(assert (=> b!49261 m!23056))

(assert (=> b!49261 m!23056))

(declare-fun m!23058 () Bool)

(assert (=> b!49261 m!23058))

(declare-fun m!23060 () Bool)

(assert (=> bm!3330 m!23060))

(declare-fun m!23062 () Bool)

(assert (=> b!49262 m!23062))

(declare-fun m!23064 () Bool)

(assert (=> b!49262 m!23064))

(assert (=> b!49262 m!23056))

(declare-fun m!23066 () Bool)

(assert (=> b!49262 m!23066))

(declare-fun m!23068 () Bool)

(assert (=> b!49262 m!23068))

(declare-fun m!23070 () Bool)

(assert (=> d!5974 m!23070))

(declare-fun m!23072 () Bool)

(assert (=> d!5974 m!23072))

(assert (=> b!49272 m!23056))

(assert (=> d!5856 d!5974))

(declare-fun bs!6548 () Bool)

(declare-fun d!5976 () Bool)

(assert (= bs!6548 (and d!5976 d!5930)))

(declare-fun lambda!962 () Int)

(assert (=> bs!6548 (= lambda!962 lambda!949)))

(assert (=> d!5976 true))

(assert (=> d!5976 true))

(assert (=> d!5976 (= (allKeysSameHash!3 (ite c!16422 lt!7376 lt!7380) (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)) (forall!108 (ite c!16422 lt!7376 lt!7380) lambda!962))))

(declare-fun bs!6549 () Bool)

(assert (= bs!6549 d!5976))

(declare-fun m!23074 () Bool)

(assert (=> bs!6549 m!23074))

(assert (=> bm!3269 d!5976))

(declare-fun bs!6550 () Bool)

(declare-fun d!5978 () Bool)

(assert (= bs!6550 (and d!5978 b!49099)))

(declare-fun lambda!963 () Int)

(assert (=> bs!6550 (not (= lambda!963 lambda!939))))

(declare-fun bs!6551 () Bool)

(assert (= bs!6551 (and d!5978 b!49088)))

(assert (=> bs!6551 (not (= lambda!963 lambda!938))))

(declare-fun bs!6552 () Bool)

(assert (= bs!6552 (and d!5978 d!5884)))

(assert (=> bs!6552 (not (= lambda!963 lambda!932))))

(declare-fun bs!6553 () Bool)

(assert (= bs!6553 (and d!5978 d!5912)))

(assert (=> bs!6553 (not (= lambda!963 lambda!946))))

(declare-fun bs!6554 () Bool)

(assert (= bs!6554 (and d!5978 d!5944)))

(assert (=> bs!6554 (not (= lambda!963 lambda!954))))

(declare-fun bs!6555 () Bool)

(assert (= bs!6555 (and d!5978 d!5890)))

(assert (=> bs!6555 (not (= lambda!963 lambda!935))))

(declare-fun bs!6556 () Bool)

(assert (= bs!6556 (and d!5978 d!5960)))

(assert (=> bs!6556 (= lambda!963 lambda!958)))

(declare-fun bs!6557 () Bool)

(assert (= bs!6557 (and d!5978 b!48959)))

(assert (=> bs!6557 (not (= lambda!963 lambda!923))))

(declare-fun bs!6558 () Bool)

(assert (= bs!6558 (and d!5978 b!49205)))

(assert (=> bs!6558 (not (= lambda!963 lambda!955))))

(declare-fun bs!6559 () Bool)

(assert (= bs!6559 (and d!5978 d!5964)))

(assert (=> bs!6559 (= lambda!963 lambda!961)))

(declare-fun bs!6560 () Bool)

(assert (= bs!6560 (and d!5978 d!5870)))

(assert (=> bs!6560 (not (= lambda!963 lambda!926))))

(declare-fun bs!6561 () Bool)

(assert (= bs!6561 (and d!5978 b!48949)))

(assert (=> bs!6561 (not (= lambda!963 lambda!922))))

(declare-fun bs!6562 () Bool)

(assert (= bs!6562 (and d!5978 b!49005)))

(assert (=> bs!6562 (not (= lambda!963 lambda!929))))

(assert (=> d!5978 true))

(assert (=> d!5978 (= (allKeysSameHashInMap!12 call!3294 (hashF!2170 thiss!47822)) (forall!106 (toList!196 call!3294) lambda!963))))

(declare-fun bs!6563 () Bool)

(assert (= bs!6563 d!5978))

(declare-fun m!23076 () Bool)

(assert (=> bs!6563 m!23076))

(assert (=> bm!3279 d!5978))

(assert (=> b!48905 d!5900))

(declare-fun d!5980 () Bool)

(declare-fun isEmpty!165 (Option!58) Bool)

(assert (=> d!5980 (= (isDefined!9 (getValueByKey!3 (toList!195 lt!7224) key!7227)) (not (isEmpty!165 (getValueByKey!3 (toList!195 lt!7224) key!7227))))))

(declare-fun bs!6564 () Bool)

(assert (= bs!6564 d!5980))

(assert (=> bs!6564 m!22488))

(declare-fun m!23078 () Bool)

(assert (=> bs!6564 m!23078))

(assert (=> b!48894 d!5980))

(declare-fun b!49276 () Bool)

(declare-fun e!28763 () Option!58)

(assert (=> b!49276 (= e!28763 (getValueByKey!3 (t!17046 (toList!195 lt!7224)) key!7227))))

(declare-fun b!49277 () Bool)

(assert (=> b!49277 (= e!28763 None!57)))

(declare-fun b!49275 () Bool)

(declare-fun e!28762 () Option!58)

(assert (=> b!49275 (= e!28762 e!28763)))

(declare-fun c!16509 () Bool)

(assert (=> b!49275 (= c!16509 (and ((_ is Cons!843) (toList!195 lt!7224)) (not (= (_1!765 (h!6239 (toList!195 lt!7224))) key!7227))))))

(declare-fun d!5982 () Bool)

(declare-fun c!16508 () Bool)

(assert (=> d!5982 (= c!16508 (and ((_ is Cons!843) (toList!195 lt!7224)) (= (_1!765 (h!6239 (toList!195 lt!7224))) key!7227)))))

(assert (=> d!5982 (= (getValueByKey!3 (toList!195 lt!7224) key!7227) e!28762)))

(declare-fun b!49274 () Bool)

(assert (=> b!49274 (= e!28762 (Some!57 (_2!765 (h!6239 (toList!195 lt!7224)))))))

(assert (= (and d!5982 c!16508) b!49274))

(assert (= (and d!5982 (not c!16508)) b!49275))

(assert (= (and b!49275 c!16509) b!49276))

(assert (= (and b!49275 (not c!16509)) b!49277))

(declare-fun m!23080 () Bool)

(assert (=> b!49276 m!23080))

(assert (=> b!48894 d!5982))

(declare-fun d!5984 () Bool)

(assert (=> d!5984 (= (eq!6 call!3292 e!28570) (= (content!22 (toList!195 call!3292)) (content!22 (toList!195 e!28570))))))

(declare-fun bs!6565 () Bool)

(assert (= bs!6565 d!5984))

(declare-fun m!23082 () Bool)

(assert (=> bs!6565 m!23082))

(declare-fun m!23084 () Bool)

(assert (=> bs!6565 m!23084))

(assert (=> bm!3271 d!5984))

(declare-fun d!5986 () Bool)

(assert (=> d!5986 (allKeysSameHash!3 (removePairForKey!2 (ite c!16422 lt!7376 lt!7380) key!7227) (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822))))

(declare-fun lt!7649 () Unit!403)

(declare-fun choose!1169 (List!849 K!620 (_ BitVec 64) Hashable!301) Unit!403)

(assert (=> d!5986 (= lt!7649 (choose!1169 (ite c!16422 lt!7376 lt!7380) key!7227 (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)))))

(assert (=> d!5986 (noDuplicateKeys!4 (ite c!16422 lt!7376 lt!7380))))

(assert (=> d!5986 (= (lemmaRemovePairForKeyPreservesHash!2 (ite c!16422 lt!7376 lt!7380) key!7227 (ite c!16422 lt!7366 lt!7387) (hashF!2170 thiss!47822)) lt!7649)))

(declare-fun bs!6566 () Bool)

(assert (= bs!6566 d!5986))

(assert (=> bs!6566 m!22572))

(assert (=> bs!6566 m!22572))

(declare-fun m!23086 () Bool)

(assert (=> bs!6566 m!23086))

(declare-fun m!23088 () Bool)

(assert (=> bs!6566 m!23088))

(assert (=> bs!6566 m!22840))

(assert (=> bm!3281 d!5986))

(declare-fun d!5988 () Bool)

(declare-fun res!32396 () Bool)

(declare-fun e!28764 () Bool)

(assert (=> d!5988 (=> res!32396 e!28764)))

(assert (=> d!5988 (= res!32396 ((_ is Nil!845) (ite c!16422 (toList!196 lt!7386) (toList!196 lt!7367))))))

(assert (=> d!5988 (= (forall!106 (ite c!16422 (toList!196 lt!7386) (toList!196 lt!7367)) (ite c!16422 lambda!922 lambda!923)) e!28764)))

(declare-fun b!49278 () Bool)

(declare-fun e!28765 () Bool)

(assert (=> b!49278 (= e!28764 e!28765)))

(declare-fun res!32397 () Bool)

(assert (=> b!49278 (=> (not res!32397) (not e!28765))))

(assert (=> b!49278 (= res!32397 (dynLambda!138 (ite c!16422 lambda!922 lambda!923) (h!6241 (ite c!16422 (toList!196 lt!7386) (toList!196 lt!7367)))))))

(declare-fun b!49279 () Bool)

(assert (=> b!49279 (= e!28765 (forall!106 (t!17048 (ite c!16422 (toList!196 lt!7386) (toList!196 lt!7367))) (ite c!16422 lambda!922 lambda!923)))))

(assert (= (and d!5988 (not res!32396)) b!49278))

(assert (= (and b!49278 res!32397) b!49279))

(declare-fun b_lambda!293 () Bool)

(assert (=> (not b_lambda!293) (not b!49278)))

(declare-fun m!23090 () Bool)

(assert (=> b!49278 m!23090))

(declare-fun m!23092 () Bool)

(assert (=> b!49279 m!23092))

(assert (=> bm!3283 d!5988))

(declare-fun d!5990 () Bool)

(assert (=> d!5990 (= (abstractMap!18 (_2!766 lt!7223)) (choose!1166 (_2!766 lt!7223)))))

(declare-fun bs!6567 () Bool)

(assert (= bs!6567 d!5990))

(declare-fun m!23094 () Bool)

(assert (=> bs!6567 m!23094))

(assert (=> b!48977 d!5990))

(declare-fun bs!6568 () Bool)

(declare-fun b!49304 () Bool)

(assert (= bs!6568 (and b!49304 b!49123)))

(declare-fun lambda!972 () Int)

(assert (=> bs!6568 (= (= (t!17046 (toList!195 lt!7224)) (toList!195 lt!7224)) (= lambda!972 lambda!944))))

(assert (=> b!49304 true))

(declare-fun bs!6569 () Bool)

(declare-fun b!49305 () Bool)

(assert (= bs!6569 (and b!49305 b!49123)))

(declare-fun lambda!973 () Int)

(assert (=> bs!6569 (= (= (Cons!843 (h!6239 (toList!195 lt!7224)) (t!17046 (toList!195 lt!7224))) (toList!195 lt!7224)) (= lambda!973 lambda!944))))

(declare-fun bs!6570 () Bool)

(assert (= bs!6570 (and b!49305 b!49304)))

(assert (=> bs!6570 (= (= (Cons!843 (h!6239 (toList!195 lt!7224)) (t!17046 (toList!195 lt!7224))) (t!17046 (toList!195 lt!7224))) (= lambda!973 lambda!972))))

(assert (=> b!49305 true))

(declare-fun bs!6571 () Bool)

(declare-fun b!49298 () Bool)

(assert (= bs!6571 (and b!49298 b!49123)))

(declare-fun lambda!974 () Int)

(assert (=> bs!6571 (= lambda!974 lambda!944)))

(declare-fun bs!6572 () Bool)

(assert (= bs!6572 (and b!49298 b!49304)))

(assert (=> bs!6572 (= (= (toList!195 lt!7224) (t!17046 (toList!195 lt!7224))) (= lambda!974 lambda!972))))

(declare-fun bs!6573 () Bool)

(assert (= bs!6573 (and b!49298 b!49305)))

(assert (=> bs!6573 (= (= (toList!195 lt!7224) (Cons!843 (h!6239 (toList!195 lt!7224)) (t!17046 (toList!195 lt!7224)))) (= lambda!974 lambda!973))))

(assert (=> b!49298 true))

(declare-fun bs!6574 () Bool)

(declare-fun b!49299 () Bool)

(assert (= bs!6574 (and b!49299 b!49124)))

(declare-fun lambda!975 () Int)

(assert (=> bs!6574 (= lambda!975 lambda!945)))

(declare-fun d!5992 () Bool)

(declare-fun e!28776 () Bool)

(assert (=> d!5992 e!28776))

(declare-fun res!32405 () Bool)

(assert (=> d!5992 (=> (not res!32405) (not e!28776))))

(declare-fun lt!7670 () List!850)

(assert (=> d!5992 (= res!32405 (noDuplicate!2 lt!7670))))

(declare-fun e!28777 () List!850)

(assert (=> d!5992 (= lt!7670 e!28777)))

(declare-fun c!16517 () Bool)

(assert (=> d!5992 (= c!16517 ((_ is Cons!843) (toList!195 lt!7224)))))

(assert (=> d!5992 (invariantList!28 (toList!195 lt!7224))))

(assert (=> d!5992 (= (getKeysList!3 (toList!195 lt!7224)) lt!7670)))

(declare-fun res!32404 () Bool)

(assert (=> b!49298 (=> (not res!32404) (not e!28776))))

(assert (=> b!49298 (= res!32404 (forall!107 lt!7670 lambda!974))))

(assert (=> b!49299 (= e!28776 (= (content!23 lt!7670) (content!23 (map!289 (toList!195 lt!7224) lambda!975))))))

(declare-fun b!49300 () Bool)

(declare-fun res!32406 () Bool)

(assert (=> b!49300 (=> (not res!32406) (not e!28776))))

(assert (=> b!49300 (= res!32406 (= (length!2 lt!7670) (length!3 (toList!195 lt!7224))))))

(declare-fun b!49301 () Bool)

(declare-fun e!28775 () Unit!403)

(declare-fun Unit!444 () Unit!403)

(assert (=> b!49301 (= e!28775 Unit!444)))

(declare-fun b!49302 () Bool)

(assert (=> b!49302 false))

(declare-fun e!28774 () Unit!403)

(declare-fun Unit!445 () Unit!403)

(assert (=> b!49302 (= e!28774 Unit!445)))

(declare-fun b!49303 () Bool)

(declare-fun Unit!446 () Unit!403)

(assert (=> b!49303 (= e!28774 Unit!446)))

(assert (=> b!49304 false))

(declare-fun lt!7669 () Unit!403)

(declare-fun forallContained!2 (List!850 Int K!620) Unit!403)

(assert (=> b!49304 (= lt!7669 (forallContained!2 (getKeysList!3 (t!17046 (toList!195 lt!7224))) lambda!972 (_1!765 (h!6239 (toList!195 lt!7224)))))))

(declare-fun Unit!447 () Unit!403)

(assert (=> b!49304 (= e!28775 Unit!447)))

(assert (=> b!49305 (= e!28777 (Cons!844 (_1!765 (h!6239 (toList!195 lt!7224))) (getKeysList!3 (t!17046 (toList!195 lt!7224)))))))

(declare-fun c!16516 () Bool)

(assert (=> b!49305 (= c!16516 (containsKey!7 (t!17046 (toList!195 lt!7224)) (_1!765 (h!6239 (toList!195 lt!7224)))))))

(declare-fun lt!7666 () Unit!403)

(assert (=> b!49305 (= lt!7666 e!28774)))

(declare-fun c!16518 () Bool)

(assert (=> b!49305 (= c!16518 (contains!45 (getKeysList!3 (t!17046 (toList!195 lt!7224))) (_1!765 (h!6239 (toList!195 lt!7224)))))))

(declare-fun lt!7665 () Unit!403)

(assert (=> b!49305 (= lt!7665 e!28775)))

(declare-fun lt!7668 () List!850)

(assert (=> b!49305 (= lt!7668 (getKeysList!3 (t!17046 (toList!195 lt!7224))))))

(declare-fun lt!7667 () Unit!403)

(declare-fun lemmaForallContainsAddHeadPreserves!1 (List!849 List!850 tuple2!1116) Unit!403)

(assert (=> b!49305 (= lt!7667 (lemmaForallContainsAddHeadPreserves!1 (t!17046 (toList!195 lt!7224)) lt!7668 (h!6239 (toList!195 lt!7224))))))

(assert (=> b!49305 (forall!107 lt!7668 lambda!973)))

(declare-fun lt!7664 () Unit!403)

(assert (=> b!49305 (= lt!7664 lt!7667)))

(declare-fun b!49306 () Bool)

(assert (=> b!49306 (= e!28777 Nil!844)))

(assert (= (and d!5992 c!16517) b!49305))

(assert (= (and d!5992 (not c!16517)) b!49306))

(assert (= (and b!49305 c!16516) b!49302))

(assert (= (and b!49305 (not c!16516)) b!49303))

(assert (= (and b!49305 c!16518) b!49304))

(assert (= (and b!49305 (not c!16518)) b!49301))

(assert (= (and d!5992 res!32405) b!49300))

(assert (= (and b!49300 res!32406) b!49298))

(assert (= (and b!49298 res!32404) b!49299))

(declare-fun m!23096 () Bool)

(assert (=> b!49298 m!23096))

(declare-fun m!23098 () Bool)

(assert (=> b!49305 m!23098))

(declare-fun m!23100 () Bool)

(assert (=> b!49305 m!23100))

(assert (=> b!49305 m!23098))

(declare-fun m!23102 () Bool)

(assert (=> b!49305 m!23102))

(declare-fun m!23104 () Bool)

(assert (=> b!49305 m!23104))

(declare-fun m!23106 () Bool)

(assert (=> b!49305 m!23106))

(declare-fun m!23108 () Bool)

(assert (=> b!49299 m!23108))

(declare-fun m!23110 () Bool)

(assert (=> b!49299 m!23110))

(assert (=> b!49299 m!23110))

(declare-fun m!23112 () Bool)

(assert (=> b!49299 m!23112))

(declare-fun m!23114 () Bool)

(assert (=> d!5992 m!23114))

(assert (=> d!5992 m!22898))

(declare-fun m!23116 () Bool)

(assert (=> b!49300 m!23116))

(assert (=> b!49300 m!22828))

(assert (=> b!49304 m!23098))

(assert (=> b!49304 m!23098))

(declare-fun m!23118 () Bool)

(assert (=> b!49304 m!23118))

(assert (=> b!48896 d!5992))

(declare-fun d!5994 () Bool)

(declare-fun lt!7671 () ListMap!79)

(assert (=> d!5994 (invariantList!28 (toList!195 lt!7671))))

(assert (=> d!5994 (= lt!7671 (extractMap!8 (toList!196 (map!286 (v!12630 (underlying!810 (ite c!16422 lt!7381 lt!7398)))))))))

(assert (=> d!5994 (valid!287 (ite c!16422 lt!7381 lt!7398))))

(assert (=> d!5994 (= (map!287 (ite c!16422 lt!7381 lt!7398)) lt!7671)))

(declare-fun bs!6575 () Bool)

(assert (= bs!6575 d!5994))

(declare-fun m!23120 () Bool)

(assert (=> bs!6575 m!23120))

(declare-fun m!23122 () Bool)

(assert (=> bs!6575 m!23122))

(declare-fun m!23124 () Bool)

(assert (=> bs!6575 m!23124))

(assert (=> bs!6575 m!22590))

(assert (=> bm!3260 d!5994))

(declare-fun d!5996 () Bool)

(assert (=> d!5996 (isDefined!9 (getValueByKey!3 (toList!195 lt!7224) key!7227))))

(declare-fun lt!7674 () Unit!403)

(declare-fun choose!1170 (List!849 K!620) Unit!403)

(assert (=> d!5996 (= lt!7674 (choose!1170 (toList!195 lt!7224) key!7227))))

(assert (=> d!5996 (invariantList!28 (toList!195 lt!7224))))

(assert (=> d!5996 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 lt!7224) key!7227) lt!7674)))

(declare-fun bs!6576 () Bool)

(assert (= bs!6576 d!5996))

(assert (=> bs!6576 m!22488))

(assert (=> bs!6576 m!22488))

(assert (=> bs!6576 m!22490))

(declare-fun m!23126 () Bool)

(assert (=> bs!6576 m!23126))

(assert (=> bs!6576 m!22898))

(assert (=> b!48898 d!5996))

(assert (=> b!48898 d!5980))

(assert (=> b!48898 d!5982))

(declare-fun d!5998 () Bool)

(assert (=> d!5998 (contains!45 (getKeysList!3 (toList!195 lt!7224)) key!7227)))

(declare-fun lt!7677 () Unit!403)

(declare-fun choose!1171 (List!849 K!620) Unit!403)

(assert (=> d!5998 (= lt!7677 (choose!1171 (toList!195 lt!7224) key!7227))))

(assert (=> d!5998 (invariantList!28 (toList!195 lt!7224))))

(assert (=> d!5998 (= (lemmaInListThenGetKeysListContains!2 (toList!195 lt!7224) key!7227) lt!7677)))

(declare-fun bs!6577 () Bool)

(assert (= bs!6577 d!5998))

(assert (=> bs!6577 m!22498))

(assert (=> bs!6577 m!22498))

(declare-fun m!23128 () Bool)

(assert (=> bs!6577 m!23128))

(declare-fun m!23130 () Bool)

(assert (=> bs!6577 m!23130))

(assert (=> bs!6577 m!22898))

(assert (=> b!48898 d!5998))

(declare-fun bm!3331 () Bool)

(declare-fun call!3336 () Bool)

(declare-fun e!28780 () List!850)

(assert (=> bm!3331 (= call!3336 (contains!45 e!28780 key!7227))))

(declare-fun c!16520 () Bool)

(declare-fun c!16519 () Bool)

(assert (=> bm!3331 (= c!16520 c!16519)))

(declare-fun d!6000 () Bool)

(declare-fun e!28782 () Bool)

(assert (=> d!6000 e!28782))

(declare-fun res!32407 () Bool)

(assert (=> d!6000 (=> res!32407 e!28782)))

(declare-fun e!28783 () Bool)

(assert (=> d!6000 (= res!32407 e!28783)))

(declare-fun res!32408 () Bool)

(assert (=> d!6000 (=> (not res!32408) (not e!28783))))

(declare-fun lt!7684 () Bool)

(assert (=> d!6000 (= res!32408 (not lt!7684))))

(declare-fun lt!7681 () Bool)

(assert (=> d!6000 (= lt!7684 lt!7681)))

(declare-fun lt!7678 () Unit!403)

(declare-fun e!28778 () Unit!403)

(assert (=> d!6000 (= lt!7678 e!28778)))

(assert (=> d!6000 (= c!16519 lt!7681)))

(assert (=> d!6000 (= lt!7681 (containsKey!7 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(assert (=> d!6000 (= (contains!44 (ite c!16422 lt!7403 lt!7404) key!7227) lt!7684)))

(declare-fun b!49309 () Bool)

(assert (=> b!49309 (= e!28780 (keys!478 (ite c!16422 lt!7403 lt!7404)))))

(declare-fun b!49310 () Bool)

(declare-fun e!28781 () Unit!403)

(assert (=> b!49310 (= e!28778 e!28781)))

(declare-fun c!16521 () Bool)

(assert (=> b!49310 (= c!16521 call!3336)))

(declare-fun b!49311 () Bool)

(declare-fun e!28779 () Bool)

(assert (=> b!49311 (= e!28779 (contains!45 (keys!478 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(declare-fun b!49312 () Bool)

(assert (=> b!49312 (= e!28782 e!28779)))

(declare-fun res!32409 () Bool)

(assert (=> b!49312 (=> (not res!32409) (not e!28779))))

(assert (=> b!49312 (= res!32409 (isDefined!9 (getValueByKey!3 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227)))))

(declare-fun b!49313 () Bool)

(assert (=> b!49313 (= e!28783 (not (contains!45 (keys!478 (ite c!16422 lt!7403 lt!7404)) key!7227)))))

(declare-fun b!49314 () Bool)

(assert (=> b!49314 (= e!28780 (getKeysList!3 (toList!195 (ite c!16422 lt!7403 lt!7404))))))

(declare-fun b!49315 () Bool)

(declare-fun Unit!448 () Unit!403)

(assert (=> b!49315 (= e!28781 Unit!448)))

(declare-fun b!49316 () Bool)

(declare-fun lt!7683 () Unit!403)

(assert (=> b!49316 (= e!28778 lt!7683)))

(declare-fun lt!7680 () Unit!403)

(assert (=> b!49316 (= lt!7680 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(assert (=> b!49316 (isDefined!9 (getValueByKey!3 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(declare-fun lt!7685 () Unit!403)

(assert (=> b!49316 (= lt!7685 lt!7680)))

(assert (=> b!49316 (= lt!7683 (lemmaInListThenGetKeysListContains!2 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(assert (=> b!49316 call!3336))

(declare-fun b!49317 () Bool)

(assert (=> b!49317 false))

(declare-fun lt!7679 () Unit!403)

(declare-fun lt!7682 () Unit!403)

(assert (=> b!49317 (= lt!7679 lt!7682)))

(assert (=> b!49317 (containsKey!7 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227)))

(assert (=> b!49317 (= lt!7682 (lemmaInGetKeysListThenContainsKey!2 (toList!195 (ite c!16422 lt!7403 lt!7404)) key!7227))))

(declare-fun Unit!449 () Unit!403)

(assert (=> b!49317 (= e!28781 Unit!449)))

(assert (= (and d!6000 c!16519) b!49316))

(assert (= (and d!6000 (not c!16519)) b!49310))

(assert (= (and b!49310 c!16521) b!49317))

(assert (= (and b!49310 (not c!16521)) b!49315))

(assert (= (or b!49316 b!49310) bm!3331))

(assert (= (and bm!3331 c!16520) b!49314))

(assert (= (and bm!3331 (not c!16520)) b!49309))

(assert (= (and d!6000 res!32408) b!49313))

(assert (= (and d!6000 (not res!32407)) b!49312))

(assert (= (and b!49312 res!32409) b!49311))

(declare-fun m!23132 () Bool)

(assert (=> b!49313 m!23132))

(assert (=> b!49313 m!23132))

(declare-fun m!23134 () Bool)

(assert (=> b!49313 m!23134))

(assert (=> b!49311 m!23132))

(assert (=> b!49311 m!23132))

(assert (=> b!49311 m!23134))

(declare-fun m!23136 () Bool)

(assert (=> d!6000 m!23136))

(declare-fun m!23138 () Bool)

(assert (=> b!49316 m!23138))

(declare-fun m!23140 () Bool)

(assert (=> b!49316 m!23140))

(assert (=> b!49316 m!23140))

(declare-fun m!23142 () Bool)

(assert (=> b!49316 m!23142))

(declare-fun m!23144 () Bool)

(assert (=> b!49316 m!23144))

(declare-fun m!23146 () Bool)

(assert (=> bm!3331 m!23146))

(assert (=> b!49312 m!23140))

(assert (=> b!49312 m!23140))

(assert (=> b!49312 m!23142))

(assert (=> b!49317 m!23136))

(declare-fun m!23148 () Bool)

(assert (=> b!49317 m!23148))

(declare-fun m!23150 () Bool)

(assert (=> b!49314 m!23150))

(assert (=> b!49309 m!23132))

(assert (=> bm!3273 d!6000))

(declare-fun bs!6578 () Bool)

(declare-fun b!49318 () Bool)

(assert (= bs!6578 (and b!49318 b!49099)))

(declare-fun lambda!976 () Int)

(assert (=> bs!6578 (= lambda!976 lambda!939)))

(declare-fun bs!6579 () Bool)

(assert (= bs!6579 (and b!49318 b!49088)))

(assert (=> bs!6579 (= lambda!976 lambda!938)))

(declare-fun bs!6580 () Bool)

(assert (= bs!6580 (and b!49318 d!5884)))

(assert (=> bs!6580 (= lambda!976 lambda!932)))

(declare-fun bs!6581 () Bool)

(assert (= bs!6581 (and b!49318 d!5978)))

(assert (=> bs!6581 (not (= lambda!976 lambda!963))))

(declare-fun bs!6582 () Bool)

(assert (= bs!6582 (and b!49318 d!5912)))

(assert (=> bs!6582 (= lambda!976 lambda!946)))

(declare-fun bs!6583 () Bool)

(assert (= bs!6583 (and b!49318 d!5944)))

(assert (=> bs!6583 (= lambda!976 lambda!954)))

(declare-fun bs!6584 () Bool)

(assert (= bs!6584 (and b!49318 d!5890)))

(assert (=> bs!6584 (= lambda!976 lambda!935)))

(declare-fun bs!6585 () Bool)

(assert (= bs!6585 (and b!49318 d!5960)))

(assert (=> bs!6585 (not (= lambda!976 lambda!958))))

(declare-fun bs!6586 () Bool)

(assert (= bs!6586 (and b!49318 b!48959)))

(assert (=> bs!6586 (= lambda!976 lambda!923)))

(declare-fun bs!6587 () Bool)

(assert (= bs!6587 (and b!49318 b!49205)))

(assert (=> bs!6587 (= lambda!976 lambda!955)))

(declare-fun bs!6588 () Bool)

(assert (= bs!6588 (and b!49318 d!5964)))

(assert (=> bs!6588 (not (= lambda!976 lambda!961))))

(declare-fun bs!6589 () Bool)

(assert (= bs!6589 (and b!49318 d!5870)))

(assert (=> bs!6589 (= lambda!976 lambda!926)))

(declare-fun bs!6590 () Bool)

(assert (= bs!6590 (and b!49318 b!48949)))

(assert (=> bs!6590 (= lambda!976 lambda!922)))

(declare-fun bs!6591 () Bool)

(assert (= bs!6591 (and b!49318 b!49005)))

(assert (=> bs!6591 (= lambda!976 lambda!929)))

(declare-fun d!6002 () Bool)

(declare-fun res!32410 () Bool)

(declare-fun e!28784 () Bool)

(assert (=> d!6002 (=> (not res!32410) (not e!28784))))

(assert (=> d!6002 (= res!32410 (valid!288 (v!12630 (underlying!810 (ite c!16422 lt!7381 lt!7398)))))))

(assert (=> d!6002 (= (valid!287 (ite c!16422 lt!7381 lt!7398)) e!28784)))

(declare-fun res!32411 () Bool)

(assert (=> b!49318 (=> (not res!32411) (not e!28784))))

(assert (=> b!49318 (= res!32411 (forall!106 (toList!196 (map!286 (v!12630 (underlying!810 (ite c!16422 lt!7381 lt!7398))))) lambda!976))))

(declare-fun b!49319 () Bool)

(assert (=> b!49319 (= e!28784 (allKeysSameHashInMap!12 (map!286 (v!12630 (underlying!810 (ite c!16422 lt!7381 lt!7398)))) (hashF!2170 (ite c!16422 lt!7381 lt!7398))))))

(assert (= (and d!6002 res!32410) b!49318))

(assert (= (and b!49318 res!32411) b!49319))

(declare-fun m!23152 () Bool)

(assert (=> d!6002 m!23152))

(assert (=> b!49318 m!23122))

(declare-fun m!23154 () Bool)

(assert (=> b!49318 m!23154))

(assert (=> b!49319 m!23122))

(assert (=> b!49319 m!23122))

(declare-fun m!23156 () Bool)

(assert (=> b!49319 m!23156))

(assert (=> bm!3284 d!6002))

(declare-fun d!6004 () Bool)

(declare-fun lt!7688 () Bool)

(assert (=> d!6004 (= lt!7688 (select (content!22 (toList!195 lt!7426)) (tuple2!1117 key!7227 v!11804)))))

(declare-fun e!28789 () Bool)

(assert (=> d!6004 (= lt!7688 e!28789)))

(declare-fun res!32417 () Bool)

(assert (=> d!6004 (=> (not res!32417) (not e!28789))))

(assert (=> d!6004 (= res!32417 ((_ is Cons!843) (toList!195 lt!7426)))))

(assert (=> d!6004 (= (contains!48 (toList!195 lt!7426) (tuple2!1117 key!7227 v!11804)) lt!7688)))

(declare-fun b!49324 () Bool)

(declare-fun e!28790 () Bool)

(assert (=> b!49324 (= e!28789 e!28790)))

(declare-fun res!32416 () Bool)

(assert (=> b!49324 (=> res!32416 e!28790)))

(assert (=> b!49324 (= res!32416 (= (h!6239 (toList!195 lt!7426)) (tuple2!1117 key!7227 v!11804)))))

(declare-fun b!49325 () Bool)

(assert (=> b!49325 (= e!28790 (contains!48 (t!17046 (toList!195 lt!7426)) (tuple2!1117 key!7227 v!11804)))))

(assert (= (and d!6004 res!32417) b!49324))

(assert (= (and b!49324 (not res!32416)) b!49325))

(declare-fun m!23158 () Bool)

(assert (=> d!6004 m!23158))

(declare-fun m!23160 () Bool)

(assert (=> d!6004 m!23160))

(declare-fun m!23162 () Bool)

(assert (=> b!49325 m!23162))

(assert (=> b!48970 d!6004))

(declare-fun d!6006 () Bool)

(assert (=> d!6006 (= (eq!6 (ite c!16422 call!3274 call!3285) call!3270) (= (content!22 (toList!195 (ite c!16422 call!3274 call!3285))) (content!22 (toList!195 call!3270))))))

(declare-fun bs!6592 () Bool)

(assert (= bs!6592 d!6006))

(declare-fun m!23164 () Bool)

(assert (=> bs!6592 m!23164))

(declare-fun m!23166 () Bool)

(assert (=> bs!6592 m!23166))

(assert (=> bm!3286 d!6006))

(declare-fun b!49333 () Bool)

(declare-fun e!28796 () Bool)

(declare-fun lt!7691 () MutLongMap!305)

(assert (=> b!49333 (= e!28796 ((_ is LongMap!305) lt!7691))))

(assert (=> b!49333 (= lt!7691 (v!12630 (underlying!810 (_2!766 (update!39 thiss!47822 key!7227 v!11804)))))))

(declare-fun b!49332 () Bool)

(declare-fun e!28795 () Bool)

(assert (=> b!49332 (= e!28795 e!28796)))

(assert (=> d!5854 (= true e!28795)))

(assert (= b!49332 b!49333))

(assert (= (and d!5854 ((_ is HashMap!301) (_2!766 (update!39 thiss!47822 key!7227 v!11804)))) b!49332))

(declare-fun e!28797 () Bool)

(declare-fun tp!32898 () Bool)

(declare-fun b!49334 () Bool)

(assert (=> b!49334 (= e!28797 (and tp_is_empty!503 tp_is_empty!505 tp!32898))))

(assert (=> b!48994 (= tp!32897 e!28797)))

(assert (= (and b!48994 ((_ is Cons!843) (t!17046 (minValue!561 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))))) b!49334))

(declare-fun b!49335 () Bool)

(declare-fun tp!32899 () Bool)

(declare-fun e!28798 () Bool)

(assert (=> b!49335 (= e!28798 (and tp_is_empty!503 tp_is_empty!505 tp!32899))))

(assert (=> b!48991 (= tp!32893 e!28798)))

(assert (= (and b!48991 ((_ is Cons!843) (t!17046 mapDefault!1201))) b!49335))

(declare-fun e!28799 () Bool)

(declare-fun b!49336 () Bool)

(declare-fun tp!32900 () Bool)

(assert (=> b!49336 (= e!28799 (and tp_is_empty!503 tp_is_empty!505 tp!32900))))

(assert (=> b!48992 (= tp!32895 e!28799)))

(assert (= (and b!48992 ((_ is Cons!843) (t!17046 mapValue!1198))) b!49336))

(declare-fun b!49338 () Bool)

(declare-fun e!28801 () Bool)

(declare-fun tp!32902 () Bool)

(assert (=> b!49338 (= e!28801 (and tp_is_empty!503 tp_is_empty!505 tp!32902))))

(declare-fun condMapEmpty!1202 () Bool)

(declare-fun mapDefault!1202 () List!849)

(assert (=> mapNonEmpty!1201 (= condMapEmpty!1202 (= mapRest!1201 ((as const (Array (_ BitVec 32) List!849)) mapDefault!1202)))))

(declare-fun mapRes!1202 () Bool)

(assert (=> mapNonEmpty!1201 (= tp!32892 (and e!28801 mapRes!1202))))

(declare-fun tp!32903 () Bool)

(declare-fun b!49337 () Bool)

(declare-fun e!28800 () Bool)

(assert (=> b!49337 (= e!28800 (and tp_is_empty!503 tp_is_empty!505 tp!32903))))

(declare-fun mapIsEmpty!1202 () Bool)

(assert (=> mapIsEmpty!1202 mapRes!1202))

(declare-fun mapNonEmpty!1202 () Bool)

(declare-fun tp!32901 () Bool)

(assert (=> mapNonEmpty!1202 (= mapRes!1202 (and tp!32901 e!28800))))

(declare-fun mapKey!1202 () (_ BitVec 32))

(declare-fun mapValue!1202 () List!849)

(declare-fun mapRest!1202 () (Array (_ BitVec 32) List!849))

(assert (=> mapNonEmpty!1202 (= mapRest!1201 (store mapRest!1202 mapKey!1202 mapValue!1202))))

(assert (= (and mapNonEmpty!1201 condMapEmpty!1202) mapIsEmpty!1202))

(assert (= (and mapNonEmpty!1201 (not condMapEmpty!1202)) mapNonEmpty!1202))

(assert (= (and mapNonEmpty!1202 ((_ is Cons!843) mapValue!1202)) b!49337))

(assert (= (and mapNonEmpty!1201 ((_ is Cons!843) mapDefault!1202)) b!49338))

(declare-fun m!23168 () Bool)

(assert (=> mapNonEmpty!1202 m!23168))

(declare-fun tp!32904 () Bool)

(declare-fun b!49339 () Bool)

(declare-fun e!28802 () Bool)

(assert (=> b!49339 (= e!28802 (and tp_is_empty!503 tp_is_empty!505 tp!32904))))

(assert (=> b!48993 (= tp!32896 e!28802)))

(assert (= (and b!48993 ((_ is Cons!843) (t!17046 (zeroValue!561 (v!12629 (underlying!809 (v!12630 (underlying!810 thiss!47822)))))))) b!49339))

(declare-fun b!49340 () Bool)

(declare-fun e!28803 () Bool)

(declare-fun tp!32905 () Bool)

(assert (=> b!49340 (= e!28803 (and tp_is_empty!503 tp_is_empty!505 tp!32905))))

(assert (=> b!48983 (= tp!32885 e!28803)))

(assert (= (and b!48983 ((_ is Cons!843) (t!17046 mapDefault!1198))) b!49340))

(declare-fun tp!32906 () Bool)

(declare-fun b!49341 () Bool)

(declare-fun e!28804 () Bool)

(assert (=> b!49341 (= e!28804 (and tp_is_empty!503 tp_is_empty!505 tp!32906))))

(assert (=> b!48990 (= tp!32894 e!28804)))

(assert (= (and b!48990 ((_ is Cons!843) (t!17046 mapValue!1201))) b!49341))

(declare-fun b_lambda!295 () Bool)

(assert (= b_lambda!289 (or (and b!48861 b_free!1397) b_lambda!295)))

(check-sat (not d!5902) (not b!49218) (not d!5936) (not b!49231) (not b!49101) (not b!49123) (not bm!3295) (not b!49097) (not d!5958) b_and!1437 (not d!5946) (not b!49057) (not tb!37) (not d!5976) (not b!49056) (not b!49272) (not d!5872) (not b!49220) (not b!49065) (not d!5998) (not d!5890) (not b!49338) (not b!48999) (not b!49172) (not b!49062) (not b!49311) (not d!5870) (not d!6004) (not d!5882) (not b!49304) (not b!49124) (not d!5908) (not bm!3296) (not d!5888) (not mapNonEmpty!1202) (not d!6006) (not b!49260) (not d!5886) (not b!49215) (not b!49204) (not d!5996) (not b!49335) (not d!5904) (not b!49099) (not d!6002) (not b!49203) (not b!49339) (not d!5942) (not b!49122) (not b_lambda!295) (not b!49305) (not b!49142) (not d!5906) (not d!5944) (not b!49217) (not b!49206) (not b!49207) (not b!49213) (not b!49030) (not d!5918) (not b!49005) (not b!49262) (not b!49051) (not b!49095) (not b_lambda!291) (not b!49155) (not b!49325) (not b!49148) (not b!49048) (not b_lambda!293) (not b!49060) (not b!49141) (not bm!3316) (not d!5964) (not b!49309) (not b!49055) (not b!49318) (not b!49162) (not d!5980) (not b!49298) (not d!5962) tp_is_empty!503 (not bm!3297) (not b!49337) (not b!49103) (not d!5974) (not b!49341) (not b!49205) (not b!49106) (not b!49208) (not d!5992) (not b!49212) (not b!49104) (not b!49045) (not d!6000) (not bm!3318) (not b!49340) (not d!5898) (not d!5930) (not bm!3329) (not d!5916) (not b!49174) (not b!49064) (not b_next!1397) (not b!49170) tp_is_empty!505 (not b!49266) (not b!49025) (not b_next!1399) (not b!49156) (not b!49319) (not b!49053) (not b!49088) (not bm!3312) (not b!49224) (not b!49109) (not d!5922) (not b!49300) (not b!49190) (not d!5934) (not d!5994) (not b!49091) (not d!5954) (not b!49105) (not b!49279) (not b!49096) (not d!5914) (not b!49169) (not b!49108) (not b!49276) (not b!49261) (not b!49137) (not d!5896) (not d!5932) (not b!49271) (not b!49336) (not b!49050) (not b!49154) (not b!49314) (not d!5874) (not b!49029) (not bm!3314) (not d!5968) (not d!5900) (not bm!3317) (not d!5938) (not b!49317) (not b!49047) (not b!49139) (not bm!3313) (not d!5966) (not b!49312) (not b!49167) (not d!5894) (not b!49175) (not b!49046) (not d!5910) (not b!49264) (not bm!3331) (not bm!3311) (not b!49198) (not d!5960) (not b!49334) (not b!49028) (not b!49171) (not b!49196) (not d!5986) (not d!5912) b_and!1435 (not d!5990) (not d!5924) (not d!5956) (not b!49230) (not d!5948) (not b!49038) (not d!5984) (not b!49221) (not d!5868) (not b!49186) (not b!49100) (not b!49316) (not b!49114) (not b!49052) (not b!49039) (not d!5928) (not bm!3315) (not b!49216) (not b!49027) (not d!5972) (not b!49263) (not b!49299) (not b!49313) (not b!49061) (not b!49059) (not bm!3330) (not d!5884) (not d!5978) (not b!49006) (not bm!3310) (not bm!3294))
(check-sat b_and!1437 b_and!1435 (not b_next!1399) (not b_next!1397))
