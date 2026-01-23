; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487210 () Bool)

(assert start!487210)

(declare-fun b!4763882 () Bool)

(declare-fun b_free!129475 () Bool)

(declare-fun b_next!130265 () Bool)

(assert (=> b!4763882 (= b_free!129475 (not b_next!130265))))

(declare-fun tp!1354425 () Bool)

(declare-fun b_and!341161 () Bool)

(assert (=> b!4763882 (= tp!1354425 b_and!341161)))

(declare-fun b!4763885 () Bool)

(declare-fun b_free!129477 () Bool)

(declare-fun b_next!130267 () Bool)

(assert (=> b!4763885 (= b_free!129477 (not b_next!130267))))

(declare-fun tp!1354419 () Bool)

(declare-fun b_and!341163 () Bool)

(assert (=> b!4763885 (= tp!1354419 b_and!341163)))

(declare-fun mapIsEmpty!21695 () Bool)

(declare-fun mapRes!21695 () Bool)

(assert (=> mapIsEmpty!21695 mapRes!21695))

(declare-fun b!4763881 () Bool)

(declare-fun e!2973134 () Bool)

(declare-fun e!2973133 () Bool)

(assert (=> b!4763881 (= e!2973134 e!2973133)))

(declare-fun res!2020548 () Bool)

(assert (=> b!4763881 (=> (not res!2020548) (not e!2973133))))

(declare-datatypes ((K!14849 0))(
  ( (K!14850 (val!20185 Int)) )
))
(declare-datatypes ((V!15095 0))(
  ( (V!15096 (val!20186 Int)) )
))
(declare-datatypes ((tuple2!55378 0))(
  ( (tuple2!55379 (_1!30983 K!14849) (_2!30983 V!15095)) )
))
(declare-datatypes ((array!17826 0))(
  ( (array!17827 (arr!7951 (Array (_ BitVec 32) (_ BitVec 64))) (size!36181 (_ BitVec 32))) )
))
(declare-datatypes ((List!53533 0))(
  ( (Nil!53409) (Cons!53409 (h!59821 tuple2!55378) (t!360933 List!53533)) )
))
(declare-datatypes ((array!17828 0))(
  ( (array!17829 (arr!7952 (Array (_ BitVec 32) List!53533)) (size!36182 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6544 0))(
  ( (HashableExt!6543 (__x!32397 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9766 0))(
  ( (LongMapFixedSize!9767 (defaultEntry!5301 Int) (mask!14620 (_ BitVec 32)) (extraKeys!5158 (_ BitVec 32)) (zeroValue!5171 List!53533) (minValue!5171 List!53533) (_size!9791 (_ BitVec 32)) (_keys!5225 array!17826) (_values!5196 array!17828) (_vacant!4948 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19297 0))(
  ( (Cell!19298 (v!47488 LongMapFixedSize!9766)) )
))
(declare-datatypes ((MutLongMap!4883 0))(
  ( (LongMap!4883 (underlying!9973 Cell!19297)) (MutLongMapExt!4882 (__x!32398 Int)) )
))
(declare-datatypes ((Cell!19299 0))(
  ( (Cell!19300 (v!47489 MutLongMap!4883)) )
))
(declare-datatypes ((MutableMap!4767 0))(
  ( (MutableMapExt!4766 (__x!32399 Int)) (HashMap!4767 (underlying!9974 Cell!19299) (hashF!12369 Hashable!6544) (_size!9792 (_ BitVec 32)) (defaultValue!4938 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4767)

(get-info :version)

(assert (=> b!4763881 (= res!2020548 ((_ is LongMap!4883) (v!47489 (underlying!9974 thiss!42052))))))

(declare-datatypes ((tuple2!55380 0))(
  ( (tuple2!55381 (_1!30984 (_ BitVec 64)) (_2!30984 List!53533)) )
))
(declare-datatypes ((List!53534 0))(
  ( (Nil!53410) (Cons!53410 (h!59822 tuple2!55380) (t!360934 List!53534)) )
))
(declare-datatypes ((ListLongMap!4623 0))(
  ( (ListLongMap!4624 (toList!6238 List!53534)) )
))
(declare-fun lt!1927019 () ListLongMap!4623)

(declare-fun map!11910 (MutLongMap!4883) ListLongMap!4623)

(assert (=> b!4763881 (= lt!1927019 (map!11910 (v!47489 (underlying!9974 thiss!42052))))))

(declare-fun e!2973128 () Bool)

(declare-fun tp!1354423 () Bool)

(declare-fun tp!1354424 () Bool)

(declare-fun e!2973131 () Bool)

(declare-fun array_inv!5721 (array!17826) Bool)

(declare-fun array_inv!5722 (array!17828) Bool)

(assert (=> b!4763882 (= e!2973131 (and tp!1354425 tp!1354423 tp!1354424 (array_inv!5721 (_keys!5225 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) (array_inv!5722 (_values!5196 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) e!2973128))))

(declare-fun b!4763883 () Bool)

(declare-fun tp!1354422 () Bool)

(assert (=> b!4763883 (= e!2973128 (and tp!1354422 mapRes!21695))))

(declare-fun condMapEmpty!21695 () Bool)

(declare-fun mapDefault!21695 () List!53533)

(assert (=> b!4763883 (= condMapEmpty!21695 (= (arr!7952 (_values!5196 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53533)) mapDefault!21695)))))

(declare-fun b!4763884 () Bool)

(declare-fun e!2973127 () Bool)

(declare-fun e!2973135 () Bool)

(assert (=> b!4763884 (= e!2973127 e!2973135)))

(declare-fun e!2973132 () Bool)

(declare-fun e!2973129 () Bool)

(assert (=> b!4763885 (= e!2973132 (and e!2973129 tp!1354419))))

(declare-fun b!4763886 () Bool)

(declare-fun lt!1927018 () MutLongMap!4883)

(assert (=> b!4763886 (= e!2973129 (and e!2973127 ((_ is LongMap!4883) lt!1927018)))))

(assert (=> b!4763886 (= lt!1927018 (v!47489 (underlying!9974 thiss!42052)))))

(declare-fun res!2020546 () Bool)

(assert (=> start!487210 (=> (not res!2020546) (not e!2973134))))

(assert (=> start!487210 (= res!2020546 ((_ is HashMap!4767) thiss!42052))))

(assert (=> start!487210 e!2973134))

(assert (=> start!487210 e!2973132))

(declare-fun tp_is_empty!32337 () Bool)

(assert (=> start!487210 tp_is_empty!32337))

(declare-fun b!4763887 () Bool)

(declare-fun res!2020549 () Bool)

(assert (=> b!4763887 (=> (not res!2020549) (not e!2973134))))

(declare-fun key!1776 () K!14849)

(declare-fun contains!16719 (MutableMap!4767 K!14849) Bool)

(assert (=> b!4763887 (= res!2020549 (contains!16719 thiss!42052 key!1776))))

(declare-fun b!4763888 () Bool)

(declare-fun res!2020547 () Bool)

(assert (=> b!4763888 (=> (not res!2020547) (not e!2973134))))

(declare-fun valid!3878 (MutableMap!4767) Bool)

(assert (=> b!4763888 (= res!2020547 (valid!3878 thiss!42052))))

(declare-fun mapNonEmpty!21695 () Bool)

(declare-fun tp!1354421 () Bool)

(declare-fun tp!1354420 () Bool)

(assert (=> mapNonEmpty!21695 (= mapRes!21695 (and tp!1354421 tp!1354420))))

(declare-fun mapValue!21695 () List!53533)

(declare-fun mapRest!21695 () (Array (_ BitVec 32) List!53533))

(declare-fun mapKey!21695 () (_ BitVec 32))

(assert (=> mapNonEmpty!21695 (= (arr!7952 (_values!5196 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) (store mapRest!21695 mapKey!21695 mapValue!21695))))

(declare-fun b!4763889 () Bool)

(declare-fun valid!3879 (MutLongMap!4883) Bool)

(assert (=> b!4763889 (= e!2973133 (not (valid!3879 (v!47489 (underlying!9974 thiss!42052)))))))

(declare-fun b!4763890 () Bool)

(assert (=> b!4763890 (= e!2973135 e!2973131)))

(assert (= (and start!487210 res!2020546) b!4763888))

(assert (= (and b!4763888 res!2020547) b!4763887))

(assert (= (and b!4763887 res!2020549) b!4763881))

(assert (= (and b!4763881 res!2020548) b!4763889))

(assert (= (and b!4763883 condMapEmpty!21695) mapIsEmpty!21695))

(assert (= (and b!4763883 (not condMapEmpty!21695)) mapNonEmpty!21695))

(assert (= b!4763882 b!4763883))

(assert (= b!4763890 b!4763882))

(assert (= b!4763884 b!4763890))

(assert (= (and b!4763886 ((_ is LongMap!4883) (v!47489 (underlying!9974 thiss!42052)))) b!4763884))

(assert (= b!4763885 b!4763886))

(assert (= (and start!487210 ((_ is HashMap!4767) thiss!42052)) b!4763885))

(declare-fun m!5734490 () Bool)

(assert (=> mapNonEmpty!21695 m!5734490))

(declare-fun m!5734492 () Bool)

(assert (=> b!4763882 m!5734492))

(declare-fun m!5734494 () Bool)

(assert (=> b!4763882 m!5734494))

(declare-fun m!5734496 () Bool)

(assert (=> b!4763887 m!5734496))

(declare-fun m!5734498 () Bool)

(assert (=> b!4763881 m!5734498))

(declare-fun m!5734500 () Bool)

(assert (=> b!4763889 m!5734500))

(declare-fun m!5734502 () Bool)

(assert (=> b!4763888 m!5734502))

(check-sat (not b_next!130267) (not b!4763887) (not b!4763881) (not b_next!130265) (not b!4763883) (not b!4763882) (not b!4763888) (not mapNonEmpty!21695) tp_is_empty!32337 b_and!341161 (not b!4763889) b_and!341163)
(check-sat b_and!341163 b_and!341161 (not b_next!130267) (not b_next!130265))
(get-model)

(declare-fun b!4763913 () Bool)

(declare-fun e!2973150 () Bool)

(declare-fun call!334002 () Bool)

(assert (=> b!4763913 (= e!2973150 call!334002)))

(declare-fun b!4763914 () Bool)

(assert (=> b!4763914 false))

(declare-datatypes ((Unit!138071 0))(
  ( (Unit!138072) )
))
(declare-fun lt!1927078 () Unit!138071)

(declare-fun lt!1927071 () Unit!138071)

(assert (=> b!4763914 (= lt!1927078 lt!1927071)))

(declare-fun lt!1927070 () ListLongMap!4623)

(declare-datatypes ((ListMap!5747 0))(
  ( (ListMap!5748 (toList!6239 List!53533)) )
))
(declare-fun contains!16720 (ListMap!5747 K!14849) Bool)

(declare-fun extractMap!2126 (List!53534) ListMap!5747)

(assert (=> b!4763914 (contains!16720 (extractMap!2126 (toList!6238 lt!1927070)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!190 (ListLongMap!4623 K!14849 Hashable!6544) Unit!138071)

(assert (=> b!4763914 (= lt!1927071 (lemmaInLongMapThenInGenericMap!190 lt!1927070 key!1776 (hashF!12369 thiss!42052)))))

(declare-fun call!333999 () ListLongMap!4623)

(assert (=> b!4763914 (= lt!1927070 call!333999)))

(declare-fun e!2973153 () Unit!138071)

(declare-fun Unit!138073 () Unit!138071)

(assert (=> b!4763914 (= e!2973153 Unit!138073)))

(declare-fun b!4763915 () Bool)

(declare-fun e!2973155 () Bool)

(assert (=> b!4763915 (= e!2973155 call!334002)))

(declare-fun d!1523195 () Bool)

(declare-fun lt!1927069 () Bool)

(declare-fun map!11911 (MutableMap!4767) ListMap!5747)

(assert (=> d!1523195 (= lt!1927069 (contains!16720 (map!11911 thiss!42052) key!1776))))

(declare-fun e!2973152 () Bool)

(assert (=> d!1523195 (= lt!1927069 e!2973152)))

(declare-fun res!2020556 () Bool)

(assert (=> d!1523195 (=> (not res!2020556) (not e!2973152))))

(declare-fun lt!1927066 () (_ BitVec 64))

(declare-fun contains!16721 (MutLongMap!4883 (_ BitVec 64)) Bool)

(assert (=> d!1523195 (= res!2020556 (contains!16721 (v!47489 (underlying!9974 thiss!42052)) lt!1927066))))

(declare-fun lt!1927067 () Unit!138071)

(declare-fun e!2973156 () Unit!138071)

(assert (=> d!1523195 (= lt!1927067 e!2973156)))

(declare-fun c!812704 () Bool)

(assert (=> d!1523195 (= c!812704 (contains!16720 (extractMap!2126 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052))))) key!1776))))

(declare-fun lt!1927072 () Unit!138071)

(declare-fun e!2973154 () Unit!138071)

(assert (=> d!1523195 (= lt!1927072 e!2973154)))

(declare-fun c!812702 () Bool)

(assert (=> d!1523195 (= c!812702 (contains!16721 (v!47489 (underlying!9974 thiss!42052)) lt!1927066))))

(declare-fun hash!4528 (Hashable!6544 K!14849) (_ BitVec 64))

(assert (=> d!1523195 (= lt!1927066 (hash!4528 (hashF!12369 thiss!42052) key!1776))))

(assert (=> d!1523195 (valid!3878 thiss!42052)))

(assert (=> d!1523195 (= (contains!16719 thiss!42052 key!1776) lt!1927069)))

(declare-fun b!4763916 () Bool)

(declare-fun e!2973151 () Unit!138071)

(declare-fun Unit!138074 () Unit!138071)

(assert (=> b!4763916 (= e!2973151 Unit!138074)))

(declare-fun bm!333992 () Bool)

(assert (=> bm!333992 (= call!333999 (map!11910 (v!47489 (underlying!9974 thiss!42052))))))

(declare-fun bm!333993 () Bool)

(declare-datatypes ((Option!12622 0))(
  ( (None!12621) (Some!12621 (v!47490 tuple2!55378)) )
))
(declare-fun call!333997 () Option!12622)

(declare-fun isDefined!9795 (Option!12622) Bool)

(assert (=> bm!333993 (= call!334002 (isDefined!9795 call!333997))))

(declare-fun b!4763917 () Bool)

(declare-fun Unit!138075 () Unit!138071)

(assert (=> b!4763917 (= e!2973153 Unit!138075)))

(declare-fun bm!333994 () Bool)

(declare-fun call!334000 () (_ BitVec 64))

(assert (=> bm!333994 (= call!334000 (hash!4528 (hashF!12369 thiss!42052) key!1776))))

(declare-fun b!4763918 () Bool)

(declare-fun lt!1927062 () Unit!138071)

(assert (=> b!4763918 (= e!2973156 lt!1927062)))

(declare-fun lt!1927064 () ListLongMap!4623)

(assert (=> b!4763918 (= lt!1927064 call!333999)))

(declare-fun lemmaInGenericMapThenInLongMap!190 (ListLongMap!4623 K!14849 Hashable!6544) Unit!138071)

(assert (=> b!4763918 (= lt!1927062 (lemmaInGenericMapThenInLongMap!190 lt!1927064 key!1776 (hashF!12369 thiss!42052)))))

(declare-fun res!2020557 () Bool)

(declare-fun call!334001 () Bool)

(assert (=> b!4763918 (= res!2020557 call!334001)))

(assert (=> b!4763918 (=> (not res!2020557) (not e!2973155))))

(assert (=> b!4763918 e!2973155))

(declare-fun b!4763919 () Bool)

(assert (=> b!4763919 false))

(declare-fun lt!1927074 () Unit!138071)

(declare-fun lt!1927075 () Unit!138071)

(assert (=> b!4763919 (= lt!1927074 lt!1927075)))

(declare-fun lt!1927065 () List!53534)

(declare-fun lt!1927073 () List!53533)

(declare-fun contains!16722 (List!53534 tuple2!55380) Bool)

(assert (=> b!4763919 (contains!16722 lt!1927065 (tuple2!55381 lt!1927066 lt!1927073))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!909 (List!53534 (_ BitVec 64) List!53533) Unit!138071)

(assert (=> b!4763919 (= lt!1927075 (lemmaGetValueByKeyImpliesContainsTuple!909 lt!1927065 lt!1927066 lt!1927073))))

(declare-fun apply!12566 (MutLongMap!4883 (_ BitVec 64)) List!53533)

(assert (=> b!4763919 (= lt!1927073 (apply!12566 (v!47489 (underlying!9974 thiss!42052)) lt!1927066))))

(assert (=> b!4763919 (= lt!1927065 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))))))

(declare-fun lt!1927077 () Unit!138071)

(declare-fun lt!1927063 () Unit!138071)

(assert (=> b!4763919 (= lt!1927077 lt!1927063)))

(declare-fun lt!1927076 () List!53534)

(declare-datatypes ((Option!12623 0))(
  ( (None!12622) (Some!12622 (v!47491 List!53533)) )
))
(declare-fun isDefined!9796 (Option!12623) Bool)

(declare-fun getValueByKey!2149 (List!53534 (_ BitVec 64)) Option!12623)

(assert (=> b!4763919 (isDefined!9796 (getValueByKey!2149 lt!1927076 lt!1927066))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1963 (List!53534 (_ BitVec 64)) Unit!138071)

(assert (=> b!4763919 (= lt!1927063 (lemmaContainsKeyImpliesGetValueByKeyDefined!1963 lt!1927076 lt!1927066))))

(assert (=> b!4763919 (= lt!1927076 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))))))

(declare-fun lt!1927079 () Unit!138071)

(declare-fun lt!1927060 () Unit!138071)

(assert (=> b!4763919 (= lt!1927079 lt!1927060)))

(declare-fun lt!1927061 () List!53534)

(declare-fun containsKey!3647 (List!53534 (_ BitVec 64)) Bool)

(assert (=> b!4763919 (containsKey!3647 lt!1927061 lt!1927066)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!191 (List!53534 (_ BitVec 64)) Unit!138071)

(assert (=> b!4763919 (= lt!1927060 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!191 lt!1927061 lt!1927066))))

(assert (=> b!4763919 (= lt!1927061 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))))))

(declare-fun Unit!138076 () Unit!138071)

(assert (=> b!4763919 (= e!2973151 Unit!138076)))

(declare-fun call!333998 () List!53533)

(declare-fun bm!333995 () Bool)

(declare-fun apply!12567 (ListLongMap!4623 (_ BitVec 64)) List!53533)

(assert (=> bm!333995 (= call!333998 (apply!12567 (ite c!812704 lt!1927064 call!333999) call!334000))))

(declare-fun bm!333996 () Bool)

(declare-fun contains!16723 (ListLongMap!4623 (_ BitVec 64)) Bool)

(assert (=> bm!333996 (= call!334001 (contains!16723 (ite c!812704 lt!1927064 call!333999) call!334000))))

(declare-fun bm!333997 () Bool)

(declare-fun getPair!626 (List!53533 K!14849) Option!12622)

(assert (=> bm!333997 (= call!333997 (getPair!626 call!333998 key!1776))))

(declare-fun b!4763920 () Bool)

(assert (=> b!4763920 (= e!2973156 e!2973153)))

(declare-fun res!2020558 () Bool)

(assert (=> b!4763920 (= res!2020558 call!334001)))

(assert (=> b!4763920 (=> (not res!2020558) (not e!2973150))))

(declare-fun c!812701 () Bool)

(assert (=> b!4763920 (= c!812701 e!2973150)))

(declare-fun b!4763921 () Bool)

(declare-fun lambda!224048 () Int)

(declare-fun forallContained!3841 (List!53534 Int tuple2!55380) Unit!138071)

(assert (=> b!4763921 (= e!2973154 (forallContained!3841 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))) lambda!224048 (tuple2!55381 lt!1927066 (apply!12566 (v!47489 (underlying!9974 thiss!42052)) lt!1927066))))))

(declare-fun c!812703 () Bool)

(assert (=> b!4763921 (= c!812703 (not (contains!16722 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))) (tuple2!55381 lt!1927066 (apply!12566 (v!47489 (underlying!9974 thiss!42052)) lt!1927066)))))))

(declare-fun lt!1927068 () Unit!138071)

(assert (=> b!4763921 (= lt!1927068 e!2973151)))

(declare-fun b!4763922 () Bool)

(assert (=> b!4763922 (= e!2973152 (isDefined!9795 (getPair!626 (apply!12566 (v!47489 (underlying!9974 thiss!42052)) lt!1927066) key!1776)))))

(declare-fun b!4763923 () Bool)

(declare-fun Unit!138077 () Unit!138071)

(assert (=> b!4763923 (= e!2973154 Unit!138077)))

(assert (= (and d!1523195 c!812702) b!4763921))

(assert (= (and d!1523195 (not c!812702)) b!4763923))

(assert (= (and b!4763921 c!812703) b!4763919))

(assert (= (and b!4763921 (not c!812703)) b!4763916))

(assert (= (and d!1523195 c!812704) b!4763918))

(assert (= (and d!1523195 (not c!812704)) b!4763920))

(assert (= (and b!4763918 res!2020557) b!4763915))

(assert (= (and b!4763920 res!2020558) b!4763913))

(assert (= (and b!4763920 c!812701) b!4763914))

(assert (= (and b!4763920 (not c!812701)) b!4763917))

(assert (= (or b!4763918 b!4763915 b!4763920 b!4763913) bm!333994))

(assert (= (or b!4763918 b!4763920 b!4763913 b!4763914) bm!333992))

(assert (= (or b!4763915 b!4763913) bm!333995))

(assert (= (or b!4763918 b!4763920) bm!333996))

(assert (= (or b!4763915 b!4763913) bm!333997))

(assert (= (or b!4763915 b!4763913) bm!333993))

(assert (= (and d!1523195 res!2020556) b!4763922))

(assert (=> bm!333992 m!5734498))

(assert (=> b!4763921 m!5734498))

(declare-fun m!5734504 () Bool)

(assert (=> b!4763921 m!5734504))

(declare-fun m!5734506 () Bool)

(assert (=> b!4763921 m!5734506))

(declare-fun m!5734508 () Bool)

(assert (=> b!4763921 m!5734508))

(declare-fun m!5734510 () Bool)

(assert (=> b!4763914 m!5734510))

(assert (=> b!4763914 m!5734510))

(declare-fun m!5734512 () Bool)

(assert (=> b!4763914 m!5734512))

(declare-fun m!5734514 () Bool)

(assert (=> b!4763914 m!5734514))

(assert (=> b!4763922 m!5734504))

(assert (=> b!4763922 m!5734504))

(declare-fun m!5734516 () Bool)

(assert (=> b!4763922 m!5734516))

(assert (=> b!4763922 m!5734516))

(declare-fun m!5734518 () Bool)

(assert (=> b!4763922 m!5734518))

(declare-fun m!5734520 () Bool)

(assert (=> b!4763919 m!5734520))

(declare-fun m!5734522 () Bool)

(assert (=> b!4763919 m!5734522))

(declare-fun m!5734524 () Bool)

(assert (=> b!4763919 m!5734524))

(assert (=> b!4763919 m!5734504))

(assert (=> b!4763919 m!5734520))

(declare-fun m!5734526 () Bool)

(assert (=> b!4763919 m!5734526))

(declare-fun m!5734528 () Bool)

(assert (=> b!4763919 m!5734528))

(declare-fun m!5734530 () Bool)

(assert (=> b!4763919 m!5734530))

(assert (=> b!4763919 m!5734498))

(declare-fun m!5734532 () Bool)

(assert (=> b!4763919 m!5734532))

(declare-fun m!5734534 () Bool)

(assert (=> d!1523195 m!5734534))

(declare-fun m!5734536 () Bool)

(assert (=> d!1523195 m!5734536))

(declare-fun m!5734538 () Bool)

(assert (=> d!1523195 m!5734538))

(declare-fun m!5734540 () Bool)

(assert (=> d!1523195 m!5734540))

(declare-fun m!5734542 () Bool)

(assert (=> d!1523195 m!5734542))

(assert (=> d!1523195 m!5734502))

(assert (=> d!1523195 m!5734534))

(assert (=> d!1523195 m!5734538))

(declare-fun m!5734544 () Bool)

(assert (=> d!1523195 m!5734544))

(assert (=> d!1523195 m!5734498))

(declare-fun m!5734546 () Bool)

(assert (=> bm!333993 m!5734546))

(declare-fun m!5734548 () Bool)

(assert (=> bm!333997 m!5734548))

(assert (=> bm!333994 m!5734542))

(declare-fun m!5734550 () Bool)

(assert (=> bm!333995 m!5734550))

(declare-fun m!5734552 () Bool)

(assert (=> bm!333996 m!5734552))

(declare-fun m!5734554 () Bool)

(assert (=> b!4763918 m!5734554))

(assert (=> b!4763887 d!1523195))

(declare-fun d!1523197 () Bool)

(declare-fun map!11912 (LongMapFixedSize!9766) ListLongMap!4623)

(assert (=> d!1523197 (= (map!11910 (v!47489 (underlying!9974 thiss!42052))) (map!11912 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052))))))))

(declare-fun bs!1148698 () Bool)

(assert (= bs!1148698 d!1523197))

(declare-fun m!5734556 () Bool)

(assert (=> bs!1148698 m!5734556))

(assert (=> b!4763881 d!1523197))

(declare-fun d!1523199 () Bool)

(declare-fun valid!3880 (LongMapFixedSize!9766) Bool)

(assert (=> d!1523199 (= (valid!3879 (v!47489 (underlying!9974 thiss!42052))) (valid!3880 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052))))))))

(declare-fun bs!1148699 () Bool)

(assert (= bs!1148699 d!1523199))

(declare-fun m!5734558 () Bool)

(assert (=> bs!1148699 m!5734558))

(assert (=> b!4763889 d!1523199))

(declare-fun bs!1148700 () Bool)

(declare-fun b!4763928 () Bool)

(assert (= bs!1148700 (and b!4763928 b!4763921)))

(declare-fun lambda!224051 () Int)

(assert (=> bs!1148700 (= lambda!224051 lambda!224048)))

(declare-fun d!1523201 () Bool)

(declare-fun res!2020563 () Bool)

(declare-fun e!2973159 () Bool)

(assert (=> d!1523201 (=> (not res!2020563) (not e!2973159))))

(assert (=> d!1523201 (= res!2020563 (valid!3879 (v!47489 (underlying!9974 thiss!42052))))))

(assert (=> d!1523201 (= (valid!3878 thiss!42052) e!2973159)))

(declare-fun res!2020564 () Bool)

(assert (=> b!4763928 (=> (not res!2020564) (not e!2973159))))

(declare-fun forall!11859 (List!53534 Int) Bool)

(assert (=> b!4763928 (= res!2020564 (forall!11859 (toList!6238 (map!11910 (v!47489 (underlying!9974 thiss!42052)))) lambda!224051))))

(declare-fun b!4763929 () Bool)

(declare-fun allKeysSameHashInMap!2007 (ListLongMap!4623 Hashable!6544) Bool)

(assert (=> b!4763929 (= e!2973159 (allKeysSameHashInMap!2007 (map!11910 (v!47489 (underlying!9974 thiss!42052))) (hashF!12369 thiss!42052)))))

(assert (= (and d!1523201 res!2020563) b!4763928))

(assert (= (and b!4763928 res!2020564) b!4763929))

(assert (=> d!1523201 m!5734500))

(assert (=> b!4763928 m!5734498))

(declare-fun m!5734560 () Bool)

(assert (=> b!4763928 m!5734560))

(assert (=> b!4763929 m!5734498))

(assert (=> b!4763929 m!5734498))

(declare-fun m!5734562 () Bool)

(assert (=> b!4763929 m!5734562))

(assert (=> b!4763888 d!1523201))

(declare-fun d!1523203 () Bool)

(assert (=> d!1523203 (= (array_inv!5721 (_keys!5225 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) (bvsge (size!36181 (_keys!5225 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4763882 d!1523203))

(declare-fun d!1523205 () Bool)

(assert (=> d!1523205 (= (array_inv!5722 (_values!5196 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) (bvsge (size!36182 (_values!5196 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4763882 d!1523205))

(declare-fun mapIsEmpty!21698 () Bool)

(declare-fun mapRes!21698 () Bool)

(assert (=> mapIsEmpty!21698 mapRes!21698))

(declare-fun tp_is_empty!32339 () Bool)

(declare-fun e!2973165 () Bool)

(declare-fun b!4763937 () Bool)

(declare-fun tp!1354433 () Bool)

(assert (=> b!4763937 (= e!2973165 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354433))))

(declare-fun mapNonEmpty!21698 () Bool)

(declare-fun tp!1354432 () Bool)

(declare-fun e!2973164 () Bool)

(assert (=> mapNonEmpty!21698 (= mapRes!21698 (and tp!1354432 e!2973164))))

(declare-fun mapKey!21698 () (_ BitVec 32))

(declare-fun mapValue!21698 () List!53533)

(declare-fun mapRest!21698 () (Array (_ BitVec 32) List!53533))

(assert (=> mapNonEmpty!21698 (= mapRest!21695 (store mapRest!21698 mapKey!21698 mapValue!21698))))

(declare-fun b!4763936 () Bool)

(declare-fun tp!1354434 () Bool)

(assert (=> b!4763936 (= e!2973164 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354434))))

(declare-fun condMapEmpty!21698 () Bool)

(declare-fun mapDefault!21698 () List!53533)

(assert (=> mapNonEmpty!21695 (= condMapEmpty!21698 (= mapRest!21695 ((as const (Array (_ BitVec 32) List!53533)) mapDefault!21698)))))

(assert (=> mapNonEmpty!21695 (= tp!1354421 (and e!2973165 mapRes!21698))))

(assert (= (and mapNonEmpty!21695 condMapEmpty!21698) mapIsEmpty!21698))

(assert (= (and mapNonEmpty!21695 (not condMapEmpty!21698)) mapNonEmpty!21698))

(assert (= (and mapNonEmpty!21698 ((_ is Cons!53409) mapValue!21698)) b!4763936))

(assert (= (and mapNonEmpty!21695 ((_ is Cons!53409) mapDefault!21698)) b!4763937))

(declare-fun m!5734564 () Bool)

(assert (=> mapNonEmpty!21698 m!5734564))

(declare-fun tp!1354437 () Bool)

(declare-fun e!2973168 () Bool)

(declare-fun b!4763942 () Bool)

(assert (=> b!4763942 (= e!2973168 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354437))))

(assert (=> mapNonEmpty!21695 (= tp!1354420 e!2973168)))

(assert (= (and mapNonEmpty!21695 ((_ is Cons!53409) mapValue!21695)) b!4763942))

(declare-fun tp!1354438 () Bool)

(declare-fun b!4763943 () Bool)

(declare-fun e!2973169 () Bool)

(assert (=> b!4763943 (= e!2973169 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354438))))

(assert (=> b!4763883 (= tp!1354422 e!2973169)))

(assert (= (and b!4763883 ((_ is Cons!53409) mapDefault!21695)) b!4763943))

(declare-fun tp!1354439 () Bool)

(declare-fun b!4763944 () Bool)

(declare-fun e!2973170 () Bool)

(assert (=> b!4763944 (= e!2973170 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354439))))

(assert (=> b!4763882 (= tp!1354423 e!2973170)))

(assert (= (and b!4763882 ((_ is Cons!53409) (zeroValue!5171 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052))))))) b!4763944))

(declare-fun b!4763945 () Bool)

(declare-fun e!2973171 () Bool)

(declare-fun tp!1354440 () Bool)

(assert (=> b!4763945 (= e!2973171 (and tp_is_empty!32337 tp_is_empty!32339 tp!1354440))))

(assert (=> b!4763882 (= tp!1354424 e!2973171)))

(assert (= (and b!4763882 ((_ is Cons!53409) (minValue!5171 (v!47488 (underlying!9973 (v!47489 (underlying!9974 thiss!42052))))))) b!4763945))

(check-sat (not b!4763922) (not b_next!130267) (not d!1523201) (not d!1523197) (not b!4763943) tp_is_empty!32339 (not b!4763918) (not b!4763928) (not bm!333992) (not bm!333993) (not b!4763937) (not bm!333994) (not b!4763929) (not bm!333995) (not b!4763944) (not mapNonEmpty!21698) (not b!4763921) (not b!4763919) (not bm!333996) (not b_next!130265) tp_is_empty!32337 b_and!341161 (not b!4763942) (not b!4763914) b_and!341163 (not b!4763945) (not d!1523195) (not b!4763936) (not bm!333997) (not d!1523199))
(check-sat b_and!341163 b_and!341161 (not b_next!130267) (not b_next!130265))
