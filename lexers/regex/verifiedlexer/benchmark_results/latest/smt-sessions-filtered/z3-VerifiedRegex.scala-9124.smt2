; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487392 () Bool)

(assert start!487392)

(declare-fun b!4765138 () Bool)

(declare-fun b_free!129571 () Bool)

(declare-fun b_next!130361 () Bool)

(assert (=> b!4765138 (= b_free!129571 (not b_next!130361))))

(declare-fun tp!1355017 () Bool)

(declare-fun b_and!341267 () Bool)

(assert (=> b!4765138 (= tp!1355017 b_and!341267)))

(declare-fun b!4765134 () Bool)

(declare-fun b_free!129573 () Bool)

(declare-fun b_next!130363 () Bool)

(assert (=> b!4765134 (= b_free!129573 (not b_next!130363))))

(declare-fun tp!1355016 () Bool)

(declare-fun b_and!341269 () Bool)

(assert (=> b!4765134 (= tp!1355016 b_and!341269)))

(declare-fun e!2974119 () Bool)

(declare-fun e!2974118 () Bool)

(assert (=> b!4765134 (= e!2974119 (and e!2974118 tp!1355016))))

(declare-fun b!4765135 () Bool)

(declare-fun res!2020979 () Bool)

(declare-fun e!2974117 () Bool)

(assert (=> b!4765135 (=> (not res!2020979) (not e!2974117))))

(declare-datatypes ((K!14909 0))(
  ( (K!14910 (val!20233 Int)) )
))
(declare-datatypes ((V!15155 0))(
  ( (V!15156 (val!20234 Int)) )
))
(declare-datatypes ((tuple2!55462 0))(
  ( (tuple2!55463 (_1!31025 K!14909) (_2!31025 V!15155)) )
))
(declare-datatypes ((array!17934 0))(
  ( (array!17935 (arr!7999 (Array (_ BitVec 32) (_ BitVec 64))) (size!36229 (_ BitVec 32))) )
))
(declare-datatypes ((List!53575 0))(
  ( (Nil!53451) (Cons!53451 (h!59863 tuple2!55462) (t!360985 List!53575)) )
))
(declare-datatypes ((array!17936 0))(
  ( (array!17937 (arr!8000 (Array (_ BitVec 32) List!53575)) (size!36230 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6568 0))(
  ( (HashableExt!6567 (__x!32469 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9814 0))(
  ( (LongMapFixedSize!9815 (defaultEntry!5325 Int) (mask!14656 (_ BitVec 32)) (extraKeys!5182 (_ BitVec 32)) (zeroValue!5195 List!53575) (minValue!5195 List!53575) (_size!9839 (_ BitVec 32)) (_keys!5249 array!17934) (_values!5220 array!17936) (_vacant!4972 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19393 0))(
  ( (Cell!19394 (v!47561 LongMapFixedSize!9814)) )
))
(declare-datatypes ((MutLongMap!4907 0))(
  ( (LongMap!4907 (underlying!10021 Cell!19393)) (MutLongMapExt!4906 (__x!32470 Int)) )
))
(declare-datatypes ((Cell!19395 0))(
  ( (Cell!19396 (v!47562 MutLongMap!4907)) )
))
(declare-datatypes ((MutableMap!4791 0))(
  ( (MutableMapExt!4790 (__x!32471 Int)) (HashMap!4791 (underlying!10022 Cell!19395) (hashF!12393 Hashable!6568) (_size!9840 (_ BitVec 32)) (defaultValue!4962 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4791)

(declare-fun valid!3906 (MutableMap!4791) Bool)

(assert (=> b!4765135 (= res!2020979 (valid!3906 thiss!42052))))

(declare-fun b!4765136 () Bool)

(declare-fun e!2974120 () Bool)

(declare-fun e!2974115 () Bool)

(assert (=> b!4765136 (= e!2974120 e!2974115)))

(declare-fun b!4765137 () Bool)

(declare-fun res!2020981 () Bool)

(assert (=> b!4765137 (=> (not res!2020981) (not e!2974117))))

(declare-fun key!1776 () K!14909)

(declare-fun contains!16772 (MutableMap!4791 K!14909) Bool)

(assert (=> b!4765137 (= res!2020981 (contains!16772 thiss!42052 key!1776))))

(declare-fun tp!1355015 () Bool)

(declare-fun e!2974114 () Bool)

(declare-fun tp!1355019 () Bool)

(declare-fun array_inv!5757 (array!17934) Bool)

(declare-fun array_inv!5758 (array!17936) Bool)

(assert (=> b!4765138 (= e!2974115 (and tp!1355017 tp!1355015 tp!1355019 (array_inv!5757 (_keys!5249 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) (array_inv!5758 (_values!5220 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) e!2974114))))

(declare-fun b!4765139 () Bool)

(declare-fun e!2974121 () Bool)

(declare-fun lt!1927833 () MutLongMap!4907)

(get-info :version)

(assert (=> b!4765139 (= e!2974118 (and e!2974121 ((_ is LongMap!4907) lt!1927833)))))

(assert (=> b!4765139 (= lt!1927833 (v!47562 (underlying!10022 thiss!42052)))))

(declare-fun b!4765140 () Bool)

(declare-fun tp!1355014 () Bool)

(declare-fun mapRes!21785 () Bool)

(assert (=> b!4765140 (= e!2974114 (and tp!1355014 mapRes!21785))))

(declare-fun condMapEmpty!21785 () Bool)

(declare-fun mapDefault!21785 () List!53575)

(assert (=> b!4765140 (= condMapEmpty!21785 (= (arr!8000 (_values!5220 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53575)) mapDefault!21785)))))

(declare-fun res!2020980 () Bool)

(assert (=> start!487392 (=> (not res!2020980) (not e!2974117))))

(assert (=> start!487392 (= res!2020980 ((_ is HashMap!4791) thiss!42052))))

(assert (=> start!487392 e!2974117))

(assert (=> start!487392 e!2974119))

(declare-fun tp_is_empty!32397 () Bool)

(assert (=> start!487392 tp_is_empty!32397))

(declare-fun mapIsEmpty!21785 () Bool)

(assert (=> mapIsEmpty!21785 mapRes!21785))

(declare-fun b!4765141 () Bool)

(declare-datatypes ((Unit!138144 0))(
  ( (Unit!138145) )
))
(declare-fun e!2974116 () Unit!138144)

(declare-fun Unit!138146 () Unit!138144)

(assert (=> b!4765141 (= e!2974116 Unit!138146)))

(declare-fun mapNonEmpty!21785 () Bool)

(declare-fun tp!1355013 () Bool)

(declare-fun tp!1355018 () Bool)

(assert (=> mapNonEmpty!21785 (= mapRes!21785 (and tp!1355013 tp!1355018))))

(declare-fun mapKey!21785 () (_ BitVec 32))

(declare-fun mapRest!21785 () (Array (_ BitVec 32) List!53575))

(declare-fun mapValue!21785 () List!53575)

(assert (=> mapNonEmpty!21785 (= (arr!8000 (_values!5220 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) (store mapRest!21785 mapKey!21785 mapValue!21785))))

(declare-fun b!4765142 () Bool)

(declare-fun lt!1927830 () List!53575)

(declare-fun noDuplicateKeys!2248 (List!53575) Bool)

(assert (=> b!4765142 (= e!2974117 (not (noDuplicateKeys!2248 lt!1927830)))))

(declare-fun lt!1927831 () Unit!138144)

(declare-fun lambda!224105 () Int)

(declare-datatypes ((tuple2!55464 0))(
  ( (tuple2!55465 (_1!31026 (_ BitVec 64)) (_2!31026 List!53575)) )
))
(declare-fun lt!1927832 () tuple2!55464)

(declare-datatypes ((List!53576 0))(
  ( (Nil!53452) (Cons!53452 (h!59864 tuple2!55464) (t!360986 List!53576)) )
))
(declare-datatypes ((ListLongMap!4659 0))(
  ( (ListLongMap!4660 (toList!6262 List!53576)) )
))
(declare-fun lt!1927829 () ListLongMap!4659)

(declare-fun forallContained!3848 (List!53576 Int tuple2!55464) Unit!138144)

(assert (=> b!4765142 (= lt!1927831 (forallContained!3848 (toList!6262 lt!1927829) lambda!224105 lt!1927832))))

(declare-fun lt!1927834 () Unit!138144)

(assert (=> b!4765142 (= lt!1927834 e!2974116)))

(declare-fun c!812839 () Bool)

(declare-fun contains!16773 (List!53576 tuple2!55464) Bool)

(assert (=> b!4765142 (= c!812839 (not (contains!16773 (toList!6262 lt!1927829) lt!1927832)))))

(declare-fun lt!1927828 () (_ BitVec 64))

(assert (=> b!4765142 (= lt!1927832 (tuple2!55465 lt!1927828 lt!1927830))))

(declare-fun apply!12595 (MutLongMap!4907 (_ BitVec 64)) List!53575)

(assert (=> b!4765142 (= lt!1927830 (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927828))))

(declare-fun map!11952 (MutLongMap!4907) ListLongMap!4659)

(assert (=> b!4765142 (= lt!1927829 (map!11952 (v!47562 (underlying!10022 thiss!42052))))))

(declare-fun hash!4551 (Hashable!6568 K!14909) (_ BitVec 64))

(assert (=> b!4765142 (= lt!1927828 (hash!4551 (hashF!12393 thiss!42052) key!1776))))

(declare-fun b!4765143 () Bool)

(declare-fun Unit!138147 () Unit!138144)

(assert (=> b!4765143 (= e!2974116 Unit!138147)))

(declare-fun lt!1927827 () Unit!138144)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1974 (List!53576 (_ BitVec 64)) Unit!138144)

(assert (=> b!4765143 (= lt!1927827 (lemmaContainsKeyImpliesGetValueByKeyDefined!1974 (toList!6262 lt!1927829) lt!1927828))))

(declare-datatypes ((Option!12639 0))(
  ( (None!12638) (Some!12638 (v!47563 List!53575)) )
))
(declare-fun isDefined!9812 (Option!12639) Bool)

(declare-fun getValueByKey!2160 (List!53576 (_ BitVec 64)) Option!12639)

(assert (=> b!4765143 (isDefined!9812 (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828))))

(declare-fun lt!1927835 () Unit!138144)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!918 (List!53576 (_ BitVec 64) List!53575) Unit!138144)

(assert (=> b!4765143 (= lt!1927835 (lemmaGetValueByKeyImpliesContainsTuple!918 (toList!6262 lt!1927829) lt!1927828 lt!1927830))))

(assert (=> b!4765143 false))

(declare-fun b!4765144 () Bool)

(assert (=> b!4765144 (= e!2974121 e!2974120)))

(assert (= (and start!487392 res!2020980) b!4765135))

(assert (= (and b!4765135 res!2020979) b!4765137))

(assert (= (and b!4765137 res!2020981) b!4765142))

(assert (= (and b!4765142 c!812839) b!4765143))

(assert (= (and b!4765142 (not c!812839)) b!4765141))

(assert (= (and b!4765140 condMapEmpty!21785) mapIsEmpty!21785))

(assert (= (and b!4765140 (not condMapEmpty!21785)) mapNonEmpty!21785))

(assert (= b!4765138 b!4765140))

(assert (= b!4765136 b!4765138))

(assert (= b!4765144 b!4765136))

(assert (= (and b!4765139 ((_ is LongMap!4907) (v!47562 (underlying!10022 thiss!42052)))) b!4765144))

(assert (= b!4765134 b!4765139))

(assert (= (and start!487392 ((_ is HashMap!4791) thiss!42052)) b!4765134))

(declare-fun m!5735588 () Bool)

(assert (=> b!4765143 m!5735588))

(declare-fun m!5735590 () Bool)

(assert (=> b!4765143 m!5735590))

(assert (=> b!4765143 m!5735590))

(declare-fun m!5735592 () Bool)

(assert (=> b!4765143 m!5735592))

(declare-fun m!5735594 () Bool)

(assert (=> b!4765143 m!5735594))

(declare-fun m!5735596 () Bool)

(assert (=> b!4765138 m!5735596))

(declare-fun m!5735598 () Bool)

(assert (=> b!4765138 m!5735598))

(declare-fun m!5735600 () Bool)

(assert (=> mapNonEmpty!21785 m!5735600))

(declare-fun m!5735602 () Bool)

(assert (=> b!4765142 m!5735602))

(declare-fun m!5735604 () Bool)

(assert (=> b!4765142 m!5735604))

(declare-fun m!5735606 () Bool)

(assert (=> b!4765142 m!5735606))

(declare-fun m!5735608 () Bool)

(assert (=> b!4765142 m!5735608))

(declare-fun m!5735610 () Bool)

(assert (=> b!4765142 m!5735610))

(declare-fun m!5735612 () Bool)

(assert (=> b!4765142 m!5735612))

(declare-fun m!5735614 () Bool)

(assert (=> b!4765135 m!5735614))

(declare-fun m!5735616 () Bool)

(assert (=> b!4765137 m!5735616))

(check-sat (not b!4765142) (not b!4765140) b_and!341269 tp_is_empty!32397 (not mapNonEmpty!21785) (not b!4765138) (not b!4765135) (not b_next!130363) b_and!341267 (not b!4765137) (not b!4765143) (not b_next!130361))
(check-sat b_and!341269 b_and!341267 (not b_next!130363) (not b_next!130361))
(get-model)

(declare-fun d!1523345 () Bool)

(assert (=> d!1523345 (= (array_inv!5757 (_keys!5249 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) (bvsge (size!36229 (_keys!5249 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765138 d!1523345))

(declare-fun d!1523347 () Bool)

(assert (=> d!1523347 (= (array_inv!5758 (_values!5220 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) (bvsge (size!36230 (_values!5220 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765138 d!1523347))

(declare-fun bs!1148754 () Bool)

(declare-fun b!4765176 () Bool)

(assert (= bs!1148754 (and b!4765176 b!4765142)))

(declare-fun lambda!224108 () Int)

(assert (=> bs!1148754 (= lambda!224108 lambda!224105)))

(declare-fun bm!334100 () Bool)

(declare-fun call!334105 () (_ BitVec 64))

(assert (=> bm!334100 (= call!334105 (hash!4551 (hashF!12393 thiss!42052) key!1776))))

(declare-fun b!4765167 () Bool)

(declare-fun e!2974139 () Bool)

(declare-fun call!334108 () Bool)

(assert (=> b!4765167 (= e!2974139 call!334108)))

(declare-fun b!4765168 () Bool)

(assert (=> b!4765168 false))

(declare-fun lt!1927880 () Unit!138144)

(declare-fun lt!1927891 () Unit!138144)

(assert (=> b!4765168 (= lt!1927880 lt!1927891)))

(declare-fun lt!1927877 () ListLongMap!4659)

(declare-datatypes ((ListMap!5759 0))(
  ( (ListMap!5760 (toList!6263 List!53575)) )
))
(declare-fun contains!16774 (ListMap!5759 K!14909) Bool)

(declare-fun extractMap!2132 (List!53576) ListMap!5759)

(assert (=> b!4765168 (contains!16774 (extractMap!2132 (toList!6262 lt!1927877)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!196 (ListLongMap!4659 K!14909 Hashable!6568) Unit!138144)

(assert (=> b!4765168 (= lt!1927891 (lemmaInLongMapThenInGenericMap!196 lt!1927877 key!1776 (hashF!12393 thiss!42052)))))

(declare-fun call!334106 () ListLongMap!4659)

(assert (=> b!4765168 (= lt!1927877 call!334106)))

(declare-fun e!2974138 () Unit!138144)

(declare-fun Unit!138148 () Unit!138144)

(assert (=> b!4765168 (= e!2974138 Unit!138148)))

(declare-fun lt!1927881 () ListLongMap!4659)

(declare-fun call!334109 () List!53575)

(declare-fun bm!334101 () Bool)

(declare-fun c!812850 () Bool)

(declare-fun apply!12596 (ListLongMap!4659 (_ BitVec 64)) List!53575)

(assert (=> bm!334101 (= call!334109 (apply!12596 (ite c!812850 lt!1927881 call!334106) call!334105))))

(declare-fun bm!334102 () Bool)

(assert (=> bm!334102 (= call!334106 (map!11952 (v!47562 (underlying!10022 thiss!42052))))))

(declare-fun b!4765169 () Bool)

(declare-fun lt!1927882 () (_ BitVec 64))

(declare-fun e!2974141 () Bool)

(declare-datatypes ((Option!12640 0))(
  ( (None!12639) (Some!12639 (v!47566 tuple2!55462)) )
))
(declare-fun isDefined!9813 (Option!12640) Bool)

(declare-fun getPair!632 (List!53575 K!14909) Option!12640)

(assert (=> b!4765169 (= e!2974141 (isDefined!9813 (getPair!632 (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927882) key!1776)))))

(declare-fun b!4765170 () Bool)

(assert (=> b!4765170 false))

(declare-fun lt!1927895 () Unit!138144)

(declare-fun lt!1927884 () Unit!138144)

(assert (=> b!4765170 (= lt!1927895 lt!1927884)))

(declare-fun lt!1927893 () List!53576)

(declare-fun lt!1927886 () List!53575)

(assert (=> b!4765170 (contains!16773 lt!1927893 (tuple2!55465 lt!1927882 lt!1927886))))

(assert (=> b!4765170 (= lt!1927884 (lemmaGetValueByKeyImpliesContainsTuple!918 lt!1927893 lt!1927882 lt!1927886))))

(assert (=> b!4765170 (= lt!1927886 (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927882))))

(assert (=> b!4765170 (= lt!1927893 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))))))

(declare-fun lt!1927876 () Unit!138144)

(declare-fun lt!1927889 () Unit!138144)

(assert (=> b!4765170 (= lt!1927876 lt!1927889)))

(declare-fun lt!1927879 () List!53576)

(assert (=> b!4765170 (isDefined!9812 (getValueByKey!2160 lt!1927879 lt!1927882))))

(assert (=> b!4765170 (= lt!1927889 (lemmaContainsKeyImpliesGetValueByKeyDefined!1974 lt!1927879 lt!1927882))))

(assert (=> b!4765170 (= lt!1927879 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))))))

(declare-fun lt!1927878 () Unit!138144)

(declare-fun lt!1927894 () Unit!138144)

(assert (=> b!4765170 (= lt!1927878 lt!1927894)))

(declare-fun lt!1927888 () List!53576)

(declare-fun containsKey!3653 (List!53576 (_ BitVec 64)) Bool)

(assert (=> b!4765170 (containsKey!3653 lt!1927888 lt!1927882)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!197 (List!53576 (_ BitVec 64)) Unit!138144)

(assert (=> b!4765170 (= lt!1927894 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!197 lt!1927888 lt!1927882))))

(assert (=> b!4765170 (= lt!1927888 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))))))

(declare-fun e!2974140 () Unit!138144)

(declare-fun Unit!138149 () Unit!138144)

(assert (=> b!4765170 (= e!2974140 Unit!138149)))

(declare-fun b!4765171 () Bool)

(declare-fun Unit!138150 () Unit!138144)

(assert (=> b!4765171 (= e!2974138 Unit!138150)))

(declare-fun b!4765172 () Bool)

(declare-fun Unit!138151 () Unit!138144)

(assert (=> b!4765172 (= e!2974140 Unit!138151)))

(declare-fun b!4765173 () Bool)

(declare-fun e!2974137 () Bool)

(assert (=> b!4765173 (= e!2974137 call!334108)))

(declare-fun call!334107 () Bool)

(declare-fun bm!334104 () Bool)

(declare-fun contains!16775 (ListLongMap!4659 (_ BitVec 64)) Bool)

(assert (=> bm!334104 (= call!334107 (contains!16775 (ite c!812850 lt!1927881 call!334106) call!334105))))

(declare-fun b!4765174 () Bool)

(declare-fun e!2974143 () Unit!138144)

(assert (=> b!4765174 (= e!2974143 e!2974138)))

(declare-fun res!2020990 () Bool)

(assert (=> b!4765174 (= res!2020990 call!334107)))

(assert (=> b!4765174 (=> (not res!2020990) (not e!2974137))))

(declare-fun c!812849 () Bool)

(assert (=> b!4765174 (= c!812849 e!2974137)))

(declare-fun b!4765175 () Bool)

(declare-fun e!2974142 () Unit!138144)

(declare-fun Unit!138152 () Unit!138144)

(assert (=> b!4765175 (= e!2974142 Unit!138152)))

(declare-fun bm!334105 () Bool)

(declare-fun call!334110 () Option!12640)

(assert (=> bm!334105 (= call!334110 (getPair!632 call!334109 key!1776))))

(declare-fun bm!334103 () Bool)

(assert (=> bm!334103 (= call!334108 (isDefined!9813 call!334110))))

(declare-fun d!1523349 () Bool)

(declare-fun lt!1927892 () Bool)

(declare-fun map!11953 (MutableMap!4791) ListMap!5759)

(assert (=> d!1523349 (= lt!1927892 (contains!16774 (map!11953 thiss!42052) key!1776))))

(assert (=> d!1523349 (= lt!1927892 e!2974141)))

(declare-fun res!2020989 () Bool)

(assert (=> d!1523349 (=> (not res!2020989) (not e!2974141))))

(declare-fun contains!16776 (MutLongMap!4907 (_ BitVec 64)) Bool)

(assert (=> d!1523349 (= res!2020989 (contains!16776 (v!47562 (underlying!10022 thiss!42052)) lt!1927882))))

(declare-fun lt!1927885 () Unit!138144)

(assert (=> d!1523349 (= lt!1927885 e!2974143)))

(assert (=> d!1523349 (= c!812850 (contains!16774 (extractMap!2132 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052))))) key!1776))))

(declare-fun lt!1927887 () Unit!138144)

(assert (=> d!1523349 (= lt!1927887 e!2974142)))

(declare-fun c!812851 () Bool)

(assert (=> d!1523349 (= c!812851 (contains!16776 (v!47562 (underlying!10022 thiss!42052)) lt!1927882))))

(assert (=> d!1523349 (= lt!1927882 (hash!4551 (hashF!12393 thiss!42052) key!1776))))

(assert (=> d!1523349 (valid!3906 thiss!42052)))

(assert (=> d!1523349 (= (contains!16772 thiss!42052 key!1776) lt!1927892)))

(assert (=> b!4765176 (= e!2974142 (forallContained!3848 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))) lambda!224108 (tuple2!55465 lt!1927882 (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927882))))))

(declare-fun c!812848 () Bool)

(assert (=> b!4765176 (= c!812848 (not (contains!16773 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))) (tuple2!55465 lt!1927882 (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927882)))))))

(declare-fun lt!1927883 () Unit!138144)

(assert (=> b!4765176 (= lt!1927883 e!2974140)))

(declare-fun b!4765177 () Bool)

(declare-fun lt!1927890 () Unit!138144)

(assert (=> b!4765177 (= e!2974143 lt!1927890)))

(assert (=> b!4765177 (= lt!1927881 call!334106)))

(declare-fun lemmaInGenericMapThenInLongMap!196 (ListLongMap!4659 K!14909 Hashable!6568) Unit!138144)

(assert (=> b!4765177 (= lt!1927890 (lemmaInGenericMapThenInLongMap!196 lt!1927881 key!1776 (hashF!12393 thiss!42052)))))

(declare-fun res!2020988 () Bool)

(assert (=> b!4765177 (= res!2020988 call!334107)))

(assert (=> b!4765177 (=> (not res!2020988) (not e!2974139))))

(assert (=> b!4765177 e!2974139))

(assert (= (and d!1523349 c!812851) b!4765176))

(assert (= (and d!1523349 (not c!812851)) b!4765175))

(assert (= (and b!4765176 c!812848) b!4765170))

(assert (= (and b!4765176 (not c!812848)) b!4765172))

(assert (= (and d!1523349 c!812850) b!4765177))

(assert (= (and d!1523349 (not c!812850)) b!4765174))

(assert (= (and b!4765177 res!2020988) b!4765167))

(assert (= (and b!4765174 res!2020990) b!4765173))

(assert (= (and b!4765174 c!812849) b!4765168))

(assert (= (and b!4765174 (not c!812849)) b!4765171))

(assert (= (or b!4765177 b!4765167 b!4765174 b!4765173) bm!334100))

(assert (= (or b!4765177 b!4765174 b!4765173 b!4765168) bm!334102))

(assert (= (or b!4765167 b!4765173) bm!334101))

(assert (= (or b!4765177 b!4765174) bm!334104))

(assert (= (or b!4765167 b!4765173) bm!334105))

(assert (= (or b!4765167 b!4765173) bm!334103))

(assert (= (and d!1523349 res!2020989) b!4765169))

(assert (=> bm!334102 m!5735604))

(declare-fun m!5735618 () Bool)

(assert (=> bm!334104 m!5735618))

(declare-fun m!5735620 () Bool)

(assert (=> b!4765168 m!5735620))

(assert (=> b!4765168 m!5735620))

(declare-fun m!5735622 () Bool)

(assert (=> b!4765168 m!5735622))

(declare-fun m!5735624 () Bool)

(assert (=> b!4765168 m!5735624))

(declare-fun m!5735626 () Bool)

(assert (=> d!1523349 m!5735626))

(declare-fun m!5735628 () Bool)

(assert (=> d!1523349 m!5735628))

(assert (=> d!1523349 m!5735628))

(declare-fun m!5735630 () Bool)

(assert (=> d!1523349 m!5735630))

(declare-fun m!5735632 () Bool)

(assert (=> d!1523349 m!5735632))

(assert (=> d!1523349 m!5735608))

(assert (=> d!1523349 m!5735614))

(assert (=> d!1523349 m!5735604))

(assert (=> d!1523349 m!5735626))

(declare-fun m!5735634 () Bool)

(assert (=> d!1523349 m!5735634))

(declare-fun m!5735636 () Bool)

(assert (=> b!4765170 m!5735636))

(declare-fun m!5735638 () Bool)

(assert (=> b!4765170 m!5735638))

(declare-fun m!5735640 () Bool)

(assert (=> b!4765170 m!5735640))

(declare-fun m!5735642 () Bool)

(assert (=> b!4765170 m!5735642))

(assert (=> b!4765170 m!5735604))

(assert (=> b!4765170 m!5735640))

(declare-fun m!5735644 () Bool)

(assert (=> b!4765170 m!5735644))

(declare-fun m!5735646 () Bool)

(assert (=> b!4765170 m!5735646))

(declare-fun m!5735648 () Bool)

(assert (=> b!4765170 m!5735648))

(declare-fun m!5735650 () Bool)

(assert (=> b!4765170 m!5735650))

(assert (=> bm!334100 m!5735608))

(declare-fun m!5735652 () Bool)

(assert (=> bm!334105 m!5735652))

(declare-fun m!5735654 () Bool)

(assert (=> bm!334101 m!5735654))

(declare-fun m!5735656 () Bool)

(assert (=> bm!334103 m!5735656))

(declare-fun m!5735658 () Bool)

(assert (=> b!4765177 m!5735658))

(assert (=> b!4765169 m!5735636))

(assert (=> b!4765169 m!5735636))

(declare-fun m!5735660 () Bool)

(assert (=> b!4765169 m!5735660))

(assert (=> b!4765169 m!5735660))

(declare-fun m!5735662 () Bool)

(assert (=> b!4765169 m!5735662))

(assert (=> b!4765176 m!5735604))

(assert (=> b!4765176 m!5735636))

(declare-fun m!5735664 () Bool)

(assert (=> b!4765176 m!5735664))

(declare-fun m!5735666 () Bool)

(assert (=> b!4765176 m!5735666))

(assert (=> b!4765137 d!1523349))

(declare-fun bs!1148755 () Bool)

(declare-fun b!4765182 () Bool)

(assert (= bs!1148755 (and b!4765182 b!4765142)))

(declare-fun lambda!224111 () Int)

(assert (=> bs!1148755 (= lambda!224111 lambda!224105)))

(declare-fun bs!1148756 () Bool)

(assert (= bs!1148756 (and b!4765182 b!4765176)))

(assert (=> bs!1148756 (= lambda!224111 lambda!224108)))

(declare-fun d!1523351 () Bool)

(declare-fun res!2020995 () Bool)

(declare-fun e!2974146 () Bool)

(assert (=> d!1523351 (=> (not res!2020995) (not e!2974146))))

(declare-fun valid!3907 (MutLongMap!4907) Bool)

(assert (=> d!1523351 (= res!2020995 (valid!3907 (v!47562 (underlying!10022 thiss!42052))))))

(assert (=> d!1523351 (= (valid!3906 thiss!42052) e!2974146)))

(declare-fun res!2020996 () Bool)

(assert (=> b!4765182 (=> (not res!2020996) (not e!2974146))))

(declare-fun forall!11866 (List!53576 Int) Bool)

(assert (=> b!4765182 (= res!2020996 (forall!11866 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))) lambda!224111))))

(declare-fun b!4765183 () Bool)

(declare-fun allKeysSameHashInMap!2013 (ListLongMap!4659 Hashable!6568) Bool)

(assert (=> b!4765183 (= e!2974146 (allKeysSameHashInMap!2013 (map!11952 (v!47562 (underlying!10022 thiss!42052))) (hashF!12393 thiss!42052)))))

(assert (= (and d!1523351 res!2020995) b!4765182))

(assert (= (and b!4765182 res!2020996) b!4765183))

(declare-fun m!5735668 () Bool)

(assert (=> d!1523351 m!5735668))

(assert (=> b!4765182 m!5735604))

(declare-fun m!5735670 () Bool)

(assert (=> b!4765182 m!5735670))

(assert (=> b!4765183 m!5735604))

(assert (=> b!4765183 m!5735604))

(declare-fun m!5735672 () Bool)

(assert (=> b!4765183 m!5735672))

(assert (=> b!4765135 d!1523351))

(declare-fun d!1523353 () Bool)

(declare-fun lt!1927898 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9581 (List!53576) (InoxSet tuple2!55464))

(assert (=> d!1523353 (= lt!1927898 (select (content!9581 (toList!6262 lt!1927829)) lt!1927832))))

(declare-fun e!2974152 () Bool)

(assert (=> d!1523353 (= lt!1927898 e!2974152)))

(declare-fun res!2021001 () Bool)

(assert (=> d!1523353 (=> (not res!2021001) (not e!2974152))))

(assert (=> d!1523353 (= res!2021001 ((_ is Cons!53452) (toList!6262 lt!1927829)))))

(assert (=> d!1523353 (= (contains!16773 (toList!6262 lt!1927829) lt!1927832) lt!1927898)))

(declare-fun b!4765188 () Bool)

(declare-fun e!2974151 () Bool)

(assert (=> b!4765188 (= e!2974152 e!2974151)))

(declare-fun res!2021002 () Bool)

(assert (=> b!4765188 (=> res!2021002 e!2974151)))

(assert (=> b!4765188 (= res!2021002 (= (h!59864 (toList!6262 lt!1927829)) lt!1927832))))

(declare-fun b!4765189 () Bool)

(assert (=> b!4765189 (= e!2974151 (contains!16773 (t!360986 (toList!6262 lt!1927829)) lt!1927832))))

(assert (= (and d!1523353 res!2021001) b!4765188))

(assert (= (and b!4765188 (not res!2021002)) b!4765189))

(declare-fun m!5735674 () Bool)

(assert (=> d!1523353 m!5735674))

(declare-fun m!5735676 () Bool)

(assert (=> d!1523353 m!5735676))

(declare-fun m!5735678 () Bool)

(assert (=> b!4765189 m!5735678))

(assert (=> b!4765142 d!1523353))

(declare-fun d!1523355 () Bool)

(declare-fun map!11954 (LongMapFixedSize!9814) ListLongMap!4659)

(assert (=> d!1523355 (= (map!11952 (v!47562 (underlying!10022 thiss!42052))) (map!11954 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052))))))))

(declare-fun bs!1148757 () Bool)

(assert (= bs!1148757 d!1523355))

(declare-fun m!5735680 () Bool)

(assert (=> bs!1148757 m!5735680))

(assert (=> b!4765142 d!1523355))

(declare-fun d!1523357 () Bool)

(declare-fun dynLambda!21940 (Int tuple2!55464) Bool)

(assert (=> d!1523357 (dynLambda!21940 lambda!224105 lt!1927832)))

(declare-fun lt!1927901 () Unit!138144)

(declare-fun choose!33937 (List!53576 Int tuple2!55464) Unit!138144)

(assert (=> d!1523357 (= lt!1927901 (choose!33937 (toList!6262 lt!1927829) lambda!224105 lt!1927832))))

(declare-fun e!2974155 () Bool)

(assert (=> d!1523357 e!2974155))

(declare-fun res!2021005 () Bool)

(assert (=> d!1523357 (=> (not res!2021005) (not e!2974155))))

(assert (=> d!1523357 (= res!2021005 (forall!11866 (toList!6262 lt!1927829) lambda!224105))))

(assert (=> d!1523357 (= (forallContained!3848 (toList!6262 lt!1927829) lambda!224105 lt!1927832) lt!1927901)))

(declare-fun b!4765192 () Bool)

(assert (=> b!4765192 (= e!2974155 (contains!16773 (toList!6262 lt!1927829) lt!1927832))))

(assert (= (and d!1523357 res!2021005) b!4765192))

(declare-fun b_lambda!184291 () Bool)

(assert (=> (not b_lambda!184291) (not d!1523357)))

(declare-fun m!5735682 () Bool)

(assert (=> d!1523357 m!5735682))

(declare-fun m!5735684 () Bool)

(assert (=> d!1523357 m!5735684))

(declare-fun m!5735686 () Bool)

(assert (=> d!1523357 m!5735686))

(assert (=> b!4765192 m!5735606))

(assert (=> b!4765142 d!1523357))

(declare-fun d!1523359 () Bool)

(declare-fun e!2974158 () Bool)

(assert (=> d!1523359 e!2974158))

(declare-fun c!812854 () Bool)

(assert (=> d!1523359 (= c!812854 (contains!16776 (v!47562 (underlying!10022 thiss!42052)) lt!1927828))))

(declare-fun lt!1927904 () List!53575)

(declare-fun apply!12597 (LongMapFixedSize!9814 (_ BitVec 64)) List!53575)

(assert (=> d!1523359 (= lt!1927904 (apply!12597 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))) lt!1927828))))

(assert (=> d!1523359 (valid!3907 (v!47562 (underlying!10022 thiss!42052)))))

(assert (=> d!1523359 (= (apply!12595 (v!47562 (underlying!10022 thiss!42052)) lt!1927828) lt!1927904)))

(declare-fun b!4765197 () Bool)

(declare-fun get!17999 (Option!12639) List!53575)

(assert (=> b!4765197 (= e!2974158 (= lt!1927904 (get!17999 (getValueByKey!2160 (toList!6262 (map!11952 (v!47562 (underlying!10022 thiss!42052)))) lt!1927828))))))

(declare-fun b!4765198 () Bool)

(declare-fun dynLambda!21941 (Int (_ BitVec 64)) List!53575)

(assert (=> b!4765198 (= e!2974158 (= lt!1927904 (dynLambda!21941 (defaultEntry!5325 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052))))) lt!1927828)))))

(assert (=> b!4765198 ((_ is LongMap!4907) (v!47562 (underlying!10022 thiss!42052)))))

(assert (= (and d!1523359 c!812854) b!4765197))

(assert (= (and d!1523359 (not c!812854)) b!4765198))

(declare-fun b_lambda!184293 () Bool)

(assert (=> (not b_lambda!184293) (not b!4765198)))

(declare-fun t!360988 () Bool)

(declare-fun tb!257463 () Bool)

(assert (=> (and b!4765138 (= (defaultEntry!5325 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052))))) (defaultEntry!5325 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052)))))) t!360988) tb!257463))

(assert (=> b!4765198 t!360988))

(declare-fun result!319078 () Bool)

(declare-fun b_and!341271 () Bool)

(assert (= b_and!341267 (and (=> t!360988 result!319078) b_and!341271)))

(declare-fun m!5735688 () Bool)

(assert (=> d!1523359 m!5735688))

(declare-fun m!5735690 () Bool)

(assert (=> d!1523359 m!5735690))

(assert (=> d!1523359 m!5735668))

(assert (=> b!4765197 m!5735604))

(declare-fun m!5735692 () Bool)

(assert (=> b!4765197 m!5735692))

(assert (=> b!4765197 m!5735692))

(declare-fun m!5735694 () Bool)

(assert (=> b!4765197 m!5735694))

(declare-fun m!5735696 () Bool)

(assert (=> b!4765198 m!5735696))

(assert (=> b!4765142 d!1523359))

(declare-fun d!1523361 () Bool)

(declare-fun hash!4552 (Hashable!6568 K!14909) (_ BitVec 64))

(assert (=> d!1523361 (= (hash!4551 (hashF!12393 thiss!42052) key!1776) (hash!4552 (hashF!12393 thiss!42052) key!1776))))

(declare-fun bs!1148758 () Bool)

(assert (= bs!1148758 d!1523361))

(declare-fun m!5735698 () Bool)

(assert (=> bs!1148758 m!5735698))

(assert (=> b!4765142 d!1523361))

(declare-fun d!1523363 () Bool)

(declare-fun res!2021010 () Bool)

(declare-fun e!2974163 () Bool)

(assert (=> d!1523363 (=> res!2021010 e!2974163)))

(assert (=> d!1523363 (= res!2021010 (not ((_ is Cons!53451) lt!1927830)))))

(assert (=> d!1523363 (= (noDuplicateKeys!2248 lt!1927830) e!2974163)))

(declare-fun b!4765203 () Bool)

(declare-fun e!2974164 () Bool)

(assert (=> b!4765203 (= e!2974163 e!2974164)))

(declare-fun res!2021011 () Bool)

(assert (=> b!4765203 (=> (not res!2021011) (not e!2974164))))

(declare-fun containsKey!3654 (List!53575 K!14909) Bool)

(assert (=> b!4765203 (= res!2021011 (not (containsKey!3654 (t!360985 lt!1927830) (_1!31025 (h!59863 lt!1927830)))))))

(declare-fun b!4765204 () Bool)

(assert (=> b!4765204 (= e!2974164 (noDuplicateKeys!2248 (t!360985 lt!1927830)))))

(assert (= (and d!1523363 (not res!2021010)) b!4765203))

(assert (= (and b!4765203 res!2021011) b!4765204))

(declare-fun m!5735700 () Bool)

(assert (=> b!4765203 m!5735700))

(declare-fun m!5735702 () Bool)

(assert (=> b!4765204 m!5735702))

(assert (=> b!4765142 d!1523363))

(declare-fun d!1523365 () Bool)

(assert (=> d!1523365 (isDefined!9812 (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828))))

(declare-fun lt!1927907 () Unit!138144)

(declare-fun choose!33938 (List!53576 (_ BitVec 64)) Unit!138144)

(assert (=> d!1523365 (= lt!1927907 (choose!33938 (toList!6262 lt!1927829) lt!1927828))))

(declare-fun e!2974167 () Bool)

(assert (=> d!1523365 e!2974167))

(declare-fun res!2021014 () Bool)

(assert (=> d!1523365 (=> (not res!2021014) (not e!2974167))))

(declare-fun isStrictlySorted!802 (List!53576) Bool)

(assert (=> d!1523365 (= res!2021014 (isStrictlySorted!802 (toList!6262 lt!1927829)))))

(assert (=> d!1523365 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1974 (toList!6262 lt!1927829) lt!1927828) lt!1927907)))

(declare-fun b!4765207 () Bool)

(assert (=> b!4765207 (= e!2974167 (containsKey!3653 (toList!6262 lt!1927829) lt!1927828))))

(assert (= (and d!1523365 res!2021014) b!4765207))

(assert (=> d!1523365 m!5735590))

(assert (=> d!1523365 m!5735590))

(assert (=> d!1523365 m!5735592))

(declare-fun m!5735704 () Bool)

(assert (=> d!1523365 m!5735704))

(declare-fun m!5735706 () Bool)

(assert (=> d!1523365 m!5735706))

(declare-fun m!5735708 () Bool)

(assert (=> b!4765207 m!5735708))

(assert (=> b!4765143 d!1523365))

(declare-fun d!1523367 () Bool)

(declare-fun isEmpty!29269 (Option!12639) Bool)

(assert (=> d!1523367 (= (isDefined!9812 (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828)) (not (isEmpty!29269 (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828))))))

(declare-fun bs!1148759 () Bool)

(assert (= bs!1148759 d!1523367))

(assert (=> bs!1148759 m!5735590))

(declare-fun m!5735710 () Bool)

(assert (=> bs!1148759 m!5735710))

(assert (=> b!4765143 d!1523367))

(declare-fun b!4765216 () Bool)

(declare-fun e!2974172 () Option!12639)

(assert (=> b!4765216 (= e!2974172 (Some!12638 (_2!31026 (h!59864 (toList!6262 lt!1927829)))))))

(declare-fun b!4765217 () Bool)

(declare-fun e!2974173 () Option!12639)

(assert (=> b!4765217 (= e!2974172 e!2974173)))

(declare-fun c!812860 () Bool)

(assert (=> b!4765217 (= c!812860 (and ((_ is Cons!53452) (toList!6262 lt!1927829)) (not (= (_1!31026 (h!59864 (toList!6262 lt!1927829))) lt!1927828))))))

(declare-fun b!4765219 () Bool)

(assert (=> b!4765219 (= e!2974173 None!12638)))

(declare-fun d!1523369 () Bool)

(declare-fun c!812859 () Bool)

(assert (=> d!1523369 (= c!812859 (and ((_ is Cons!53452) (toList!6262 lt!1927829)) (= (_1!31026 (h!59864 (toList!6262 lt!1927829))) lt!1927828)))))

(assert (=> d!1523369 (= (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828) e!2974172)))

(declare-fun b!4765218 () Bool)

(assert (=> b!4765218 (= e!2974173 (getValueByKey!2160 (t!360986 (toList!6262 lt!1927829)) lt!1927828))))

(assert (= (and d!1523369 c!812859) b!4765216))

(assert (= (and d!1523369 (not c!812859)) b!4765217))

(assert (= (and b!4765217 c!812860) b!4765218))

(assert (= (and b!4765217 (not c!812860)) b!4765219))

(declare-fun m!5735712 () Bool)

(assert (=> b!4765218 m!5735712))

(assert (=> b!4765143 d!1523369))

(declare-fun d!1523371 () Bool)

(assert (=> d!1523371 (contains!16773 (toList!6262 lt!1927829) (tuple2!55465 lt!1927828 lt!1927830))))

(declare-fun lt!1927910 () Unit!138144)

(declare-fun choose!33939 (List!53576 (_ BitVec 64) List!53575) Unit!138144)

(assert (=> d!1523371 (= lt!1927910 (choose!33939 (toList!6262 lt!1927829) lt!1927828 lt!1927830))))

(declare-fun e!2974176 () Bool)

(assert (=> d!1523371 e!2974176))

(declare-fun res!2021017 () Bool)

(assert (=> d!1523371 (=> (not res!2021017) (not e!2974176))))

(assert (=> d!1523371 (= res!2021017 (isStrictlySorted!802 (toList!6262 lt!1927829)))))

(assert (=> d!1523371 (= (lemmaGetValueByKeyImpliesContainsTuple!918 (toList!6262 lt!1927829) lt!1927828 lt!1927830) lt!1927910)))

(declare-fun b!4765222 () Bool)

(assert (=> b!4765222 (= e!2974176 (= (getValueByKey!2160 (toList!6262 lt!1927829) lt!1927828) (Some!12638 lt!1927830)))))

(assert (= (and d!1523371 res!2021017) b!4765222))

(declare-fun m!5735714 () Bool)

(assert (=> d!1523371 m!5735714))

(declare-fun m!5735716 () Bool)

(assert (=> d!1523371 m!5735716))

(assert (=> d!1523371 m!5735706))

(assert (=> b!4765222 m!5735590))

(assert (=> b!4765143 d!1523371))

(declare-fun condMapEmpty!21788 () Bool)

(declare-fun mapDefault!21788 () List!53575)

(assert (=> mapNonEmpty!21785 (= condMapEmpty!21788 (= mapRest!21785 ((as const (Array (_ BitVec 32) List!53575)) mapDefault!21788)))))

(declare-fun e!2974182 () Bool)

(declare-fun mapRes!21788 () Bool)

(assert (=> mapNonEmpty!21785 (= tp!1355013 (and e!2974182 mapRes!21788))))

(declare-fun mapNonEmpty!21788 () Bool)

(declare-fun tp!1355027 () Bool)

(declare-fun e!2974181 () Bool)

(assert (=> mapNonEmpty!21788 (= mapRes!21788 (and tp!1355027 e!2974181))))

(declare-fun mapKey!21788 () (_ BitVec 32))

(declare-fun mapRest!21788 () (Array (_ BitVec 32) List!53575))

(declare-fun mapValue!21788 () List!53575)

(assert (=> mapNonEmpty!21788 (= mapRest!21785 (store mapRest!21788 mapKey!21788 mapValue!21788))))

(declare-fun mapIsEmpty!21788 () Bool)

(assert (=> mapIsEmpty!21788 mapRes!21788))

(declare-fun tp!1355026 () Bool)

(declare-fun tp_is_empty!32399 () Bool)

(declare-fun b!4765229 () Bool)

(assert (=> b!4765229 (= e!2974181 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355026))))

(declare-fun tp!1355028 () Bool)

(declare-fun b!4765230 () Bool)

(assert (=> b!4765230 (= e!2974182 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355028))))

(assert (= (and mapNonEmpty!21785 condMapEmpty!21788) mapIsEmpty!21788))

(assert (= (and mapNonEmpty!21785 (not condMapEmpty!21788)) mapNonEmpty!21788))

(assert (= (and mapNonEmpty!21788 ((_ is Cons!53451) mapValue!21788)) b!4765229))

(assert (= (and mapNonEmpty!21785 ((_ is Cons!53451) mapDefault!21788)) b!4765230))

(declare-fun m!5735718 () Bool)

(assert (=> mapNonEmpty!21788 m!5735718))

(declare-fun tp!1355031 () Bool)

(declare-fun e!2974185 () Bool)

(declare-fun b!4765235 () Bool)

(assert (=> b!4765235 (= e!2974185 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355031))))

(assert (=> mapNonEmpty!21785 (= tp!1355018 e!2974185)))

(assert (= (and mapNonEmpty!21785 ((_ is Cons!53451) mapValue!21785)) b!4765235))

(declare-fun b!4765236 () Bool)

(declare-fun tp!1355032 () Bool)

(declare-fun e!2974186 () Bool)

(assert (=> b!4765236 (= e!2974186 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355032))))

(assert (=> b!4765138 (= tp!1355015 e!2974186)))

(assert (= (and b!4765138 ((_ is Cons!53451) (zeroValue!5195 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052))))))) b!4765236))

(declare-fun e!2974187 () Bool)

(declare-fun tp!1355033 () Bool)

(declare-fun b!4765237 () Bool)

(assert (=> b!4765237 (= e!2974187 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355033))))

(assert (=> b!4765138 (= tp!1355019 e!2974187)))

(assert (= (and b!4765138 ((_ is Cons!53451) (minValue!5195 (v!47561 (underlying!10021 (v!47562 (underlying!10022 thiss!42052))))))) b!4765237))

(declare-fun tp!1355034 () Bool)

(declare-fun b!4765238 () Bool)

(declare-fun e!2974188 () Bool)

(assert (=> b!4765238 (= e!2974188 (and tp_is_empty!32397 tp_is_empty!32399 tp!1355034))))

(assert (=> b!4765140 (= tp!1355014 e!2974188)))

(assert (= (and b!4765140 ((_ is Cons!53451) mapDefault!21785)) b!4765238))

(declare-fun b_lambda!184295 () Bool)

(assert (= b_lambda!184293 (or (and b!4765138 b_free!129571) b_lambda!184295)))

(declare-fun b_lambda!184297 () Bool)

(assert (= b_lambda!184291 (or b!4765142 b_lambda!184297)))

(declare-fun bs!1148760 () Bool)

(declare-fun d!1523373 () Bool)

(assert (= bs!1148760 (and d!1523373 b!4765142)))

(assert (=> bs!1148760 (= (dynLambda!21940 lambda!224105 lt!1927832) (noDuplicateKeys!2248 (_2!31026 lt!1927832)))))

(declare-fun m!5735720 () Bool)

(assert (=> bs!1148760 m!5735720))

(assert (=> d!1523357 d!1523373))

(check-sat (not d!1523349) (not d!1523353) (not b!4765189) (not b!4765176) (not b!4765168) (not bm!334105) (not b!4765222) (not d!1523359) (not b!4765169) (not b!4765203) (not b!4765230) (not b_next!130363) (not b!4765197) (not b!4765192) (not d!1523367) (not b!4765204) (not tb!257463) (not d!1523371) (not bm!334102) (not b!4765218) b_and!341269 (not b!4765207) (not d!1523365) (not bm!334100) (not b!4765182) (not mapNonEmpty!21788) (not b_lambda!184297) (not b!4765170) (not d!1523361) tp_is_empty!32397 (not b!4765177) (not d!1523355) (not b!4765183) (not d!1523351) (not b!4765236) tp_is_empty!32399 (not b_lambda!184295) b_and!341271 (not bs!1148760) (not b!4765229) (not b!4765237) (not b_next!130361) (not bm!334103) (not b!4765235) (not bm!334101) (not b!4765238) (not d!1523357) (not bm!334104))
(check-sat b_and!341269 b_and!341271 (not b_next!130363) (not b_next!130361))
